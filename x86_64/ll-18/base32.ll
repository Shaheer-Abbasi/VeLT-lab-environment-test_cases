; ModuleID = 'src/base32.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], ptr, ptr }
%struct.slotvec = type { i64, ptr }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.base32_decode_context = type { i32, [8 x i8] }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

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
@long_options = internal constant [6 x %struct.option] [%struct.option { ptr @.str.59, i32 0, ptr null, i32 100 }, %struct.option { ptr @.str.60, i32 1, ptr null, i32 119 }, %struct.option { ptr @.str.61, i32 0, ptr null, i32 105 }, %struct.option { ptr @.str.62, i32 0, ptr null, i32 -130 }, %struct.option { ptr @.str.63, i32 0, ptr null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !72
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
@base32_to_int = dso_local local_unnamed_addr constant [256 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\1A\1B\1C\1D\1E\1F\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16, !dbg !426
@base32_encode.b32str = internal unnamed_addr constant [32 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZ234567", align 16, !dbg !432
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !453
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !466
@.str.37 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !458
@.str.1.38 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !460
@.str.2.39 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !462
@.str.3.40 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !464
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !468
@stderr = external local_unnamed_addr global ptr, align 8
@.str.51 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !474
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !505
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !476
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !495
@.str.1.57 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !497
@.str.2.59 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !499
@.str.3.58 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !501
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !503
@.str.4.52 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !507
@.str.5.53 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !509
@.str.6.54 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !514
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !519
@.str.78 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !524
@.str.1.79 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !526
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !528
@.str.82 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !559
@.str.1.83 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !562
@.str.2.84 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !564
@.str.3.85 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !566
@.str.4.86 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !568
@.str.5.87 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !570
@.str.6.88 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !572
@.str.7.89 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !574
@.str.8.90 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !576
@.str.9.91 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !578
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.82, ptr @.str.1.83, ptr @.str.2.84, ptr @.str.3.85, ptr @.str.4.86, ptr @.str.5.87, ptr @.str.6.88, ptr @.str.7.89, ptr @.str.8.90, ptr @.str.9.91, ptr null], align 16, !dbg !580
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !593
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !607
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !643
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !650
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !609
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !652
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !597
@.str.10.94 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !612
@.str.11.92 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !614
@.str.12.95 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !616
@.str.13.93 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !618
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !620
@.str.102 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !656
@.str.1.103 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !659
@.str.2.104 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !661
@.str.3.105 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !663
@.str.4.106 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !665
@.str.5.107 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !667
@.str.6.108 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !672
@.str.7.109 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !677
@.str.8.110 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !679
@.str.9.111 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !681
@.str.10.112 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !686
@.str.11.113 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !688
@.str.12.114 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !693
@.str.13.115 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !695
@.str.14.116 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !700
@.str.15.117 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !705
@.str.16.118 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !710
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.123 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !715
@.str.18.124 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !717
@.str.19.125 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !719
@.str.20.126 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !721
@.str.21.127 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !723
@.str.22.128 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !725
@.str.23.129 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !727
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !732
@exit_failure = dso_local global i32 1, align 4, !dbg !740
@.str.144 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !746
@.str.1.142 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !749
@.str.2.143 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !751
@.str.153 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !753
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !756
@.str.1.158 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !771

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !862 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !866, metadata !DIExpression()), !dbg !867
  %2 = icmp eq i32 %0, 0, !dbg !868
  br i1 %2, label %8, label %3, !dbg !870

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !871, !tbaa !873
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #44, !dbg !871
  %6 = load ptr, ptr @program_name, align 8, !dbg !871, !tbaa !873
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #44, !dbg !871
  br label %41, !dbg !871

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #44, !dbg !877
  %10 = load ptr, ptr @program_name, align 8, !dbg !877, !tbaa !873
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #44, !dbg !877
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #44, !dbg !879
  %13 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %12, i32 noundef 32) #44, !dbg !879
  %14 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.22, i32 noundef 5) #44, !dbg !880
  %15 = load ptr, ptr @stdout, align 8, !dbg !880, !tbaa !873
  %16 = tail call i32 @fputs_unlocked(ptr noundef %14, ptr noundef %15), !dbg !880
  %17 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.23, i32 noundef 5) #44, !dbg !883
  %18 = load ptr, ptr @stdout, align 8, !dbg !883, !tbaa !873
  %19 = tail call i32 @fputs_unlocked(ptr noundef %17, ptr noundef %18), !dbg !883
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #44, !dbg !886
  tail call fastcc void @oputs_(ptr noundef %20), !dbg !886
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #44, !dbg !887
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !887
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #44, !dbg !888
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !888
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #44, !dbg !889
  tail call fastcc void @oputs_(ptr noundef %23), !dbg !889
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #44, !dbg !890
  tail call fastcc void @oputs_(ptr noundef %24), !dbg !890
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #44, !dbg !891
  %26 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %25, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3) #44, !dbg !891
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !892, metadata !DIExpression()), !dbg !909
  call void @llvm.dbg.value(metadata !911, metadata !905, metadata !DIExpression()), !dbg !909
  call void @llvm.dbg.value(metadata ptr poison, metadata !904, metadata !DIExpression()), !dbg !909
  tail call void @emit_bug_reporting_address() #44, !dbg !912
  %27 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #44, !dbg !913
  call void @llvm.dbg.value(metadata ptr %27, metadata !907, metadata !DIExpression()), !dbg !909
  %28 = icmp eq ptr %27, null, !dbg !914
  br i1 %28, label %36, label %29, !dbg !916

29:                                               ; preds = %8
  %30 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %27, ptr noundef nonnull dereferenceable(4) @.str.54, i64 noundef 3) #45, !dbg !917
  %31 = icmp eq i32 %30, 0, !dbg !917
  br i1 %31, label %36, label %32, !dbg !918

32:                                               ; preds = %29
  %33 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.55, i32 noundef 5) #44, !dbg !919
  %34 = load ptr, ptr @stdout, align 8, !dbg !919, !tbaa !873
  %35 = tail call i32 @fputs_unlocked(ptr noundef %33, ptr noundef %34), !dbg !919
  br label %36, !dbg !921

36:                                               ; preds = %8, %29, %32
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !904, metadata !DIExpression()), !dbg !909
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !908, metadata !DIExpression()), !dbg !909
  %37 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.56, i32 noundef 5) #44, !dbg !922
  %38 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %37, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.3) #44, !dbg !922
  %39 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.57, i32 noundef 5) #44, !dbg !923
  %40 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %39, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.58) #44, !dbg !923
  br label %41

41:                                               ; preds = %36, %3
  tail call void @exit(i32 noundef %0) #46, !dbg !924
  unreachable, !dbg !924
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !925 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !929 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !934 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !937 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !186 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !190, metadata !DIExpression()), !dbg !941
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !191, metadata !DIExpression()), !dbg !941
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !942, !tbaa !943
  %3 = icmp eq i32 %2, -1, !dbg !945
  br i1 %3, label %4, label %16, !dbg !946

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.24) #44, !dbg !947
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !192, metadata !DIExpression()), !dbg !948
  %6 = icmp eq ptr %5, null, !dbg !949
  br i1 %6, label %14, label %7, !dbg !950

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !951, !tbaa !952
  %9 = icmp eq i8 %8, 0, !dbg !951
  br i1 %9, label %14, label %10, !dbg !953

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !954, metadata !DIExpression()), !dbg !961
  call void @llvm.dbg.value(metadata ptr @.str.25, metadata !960, metadata !DIExpression()), !dbg !961
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.25) #45, !dbg !963
  %12 = icmp eq i32 %11, 0, !dbg !964
  %13 = zext i1 %12 to i32, !dbg !953
  br label %14, !dbg !953

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !965, !tbaa !943
  br label %16, !dbg !966

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !967
  %18 = icmp eq i32 %17, 0, !dbg !967
  br i1 %18, label %22, label %19, !dbg !969

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !970, !tbaa !873
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !970
  br label %124, !dbg !972

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !195, metadata !DIExpression()), !dbg !941
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.26) #45, !dbg !973
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !974
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !197, metadata !DIExpression()), !dbg !941
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #45, !dbg !975
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !198, metadata !DIExpression()), !dbg !941
  %26 = icmp eq ptr %25, null, !dbg !976
  br i1 %26, label %54, label %27, !dbg !977

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !978
  br i1 %28, label %54, label %29, !dbg !979

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !199, metadata !DIExpression()), !dbg !980
  tail call void @llvm.dbg.value(metadata i64 0, metadata !203, metadata !DIExpression()), !dbg !980
  %30 = icmp ult ptr %24, %25, !dbg !981
  br i1 %30, label %31, label %54, !dbg !982

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #47, !dbg !941
  %33 = load ptr, ptr %32, align 8, !tbaa !873
  br label %34, !dbg !982

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !199, metadata !DIExpression()), !dbg !980
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !203, metadata !DIExpression()), !dbg !980
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !983
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !199, metadata !DIExpression()), !dbg !980
  %38 = load i8, ptr %35, align 1, !dbg !983, !tbaa !952
  %39 = sext i8 %38 to i64, !dbg !983
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !983
  %41 = load i16, ptr %40, align 2, !dbg !983, !tbaa !984
  %42 = freeze i16 %41, !dbg !986
  %43 = lshr i16 %42, 13, !dbg !986
  %44 = and i16 %43, 1, !dbg !986
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !987
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !203, metadata !DIExpression()), !dbg !980
  %47 = icmp ult ptr %37, %25, !dbg !981
  %48 = icmp ult i64 %46, 2, !dbg !988
  %49 = select i1 %47, i1 %48, i1 false, !dbg !988
  br i1 %49, label %34, label %50, !dbg !982, !llvm.loop !989

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !991
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !993
  %53 = zext i1 %51 to i8, !dbg !993
  br label %54, !dbg !993

54:                                               ; preds = %29, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !941
  %56 = phi i8 [ 1, %27 ], [ 0, %22 ], [ 1, %29 ], [ %53, %50 ], !dbg !941
  tail call void @llvm.dbg.value(metadata i8 %56, metadata !195, metadata !DIExpression()), !dbg !941
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !198, metadata !DIExpression()), !dbg !941
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.27) #45, !dbg !994
  tail call void @llvm.dbg.value(metadata i64 %57, metadata !204, metadata !DIExpression()), !dbg !941
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !995
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !205, metadata !DIExpression()), !dbg !941
  br label %59, !dbg !996

59:                                               ; preds = %92, %54
  %60 = phi ptr [ %58, %54 ], [ %93, %92 ], !dbg !941
  %61 = phi i8 [ %56, %54 ], [ %69, %92 ], !dbg !941
  tail call void @llvm.dbg.value(metadata i8 %61, metadata !195, metadata !DIExpression()), !dbg !941
  tail call void @llvm.dbg.value(metadata ptr %60, metadata !205, metadata !DIExpression()), !dbg !941
  %62 = load i8, ptr %60, align 1, !dbg !997, !tbaa !952
  switch i8 %62, label %68 [
    i8 0, label %94
    i8 10, label %94
    i8 45, label %63
  ], !dbg !998

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !999
  %65 = load i8, ptr %64, align 1, !dbg !1002, !tbaa !952
  %66 = icmp eq i8 %65, 45, !dbg !1003
  %67 = select i1 %66, i8 0, i8 %61, !dbg !1004
  br label %68, !dbg !1004

68:                                               ; preds = %63, %59
  %69 = phi i8 [ %61, %59 ], [ %67, %63 ], !dbg !941
  tail call void @llvm.dbg.value(metadata i8 %69, metadata !195, metadata !DIExpression()), !dbg !941
  %70 = tail call ptr @__ctype_b_loc() #47, !dbg !1005
  %71 = load ptr, ptr %70, align 8, !dbg !1005, !tbaa !873
  %72 = sext i8 %62 to i64, !dbg !1005
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !1005
  %74 = load i16, ptr %73, align 2, !dbg !1005, !tbaa !984
  %75 = and i16 %74, 8192, !dbg !1005
  %76 = icmp eq i16 %75, 0, !dbg !1005
  br i1 %76, label %92, label %77, !dbg !1007

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !1008
  br i1 %78, label %94, label %79, !dbg !1011

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1012
  %81 = load i8, ptr %80, align 1, !dbg !1012, !tbaa !952
  %82 = sext i8 %81 to i64, !dbg !1012
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !1012
  %84 = load i16, ptr %83, align 2, !dbg !1012, !tbaa !984
  %85 = and i16 %84, 8192, !dbg !1012
  %86 = icmp eq i16 %85, 0, !dbg !1012
  br i1 %86, label %87, label %94, !dbg !1013

87:                                               ; preds = %79
  %88 = and i8 %69, 1, !dbg !1014
  %89 = icmp ne i8 %88, 0, !dbg !1014
  %90 = icmp eq i8 %81, 45
  %91 = or i1 %89, %90, !dbg !1016
  br i1 %91, label %92, label %94, !dbg !1016

92:                                               ; preds = %87, %68
  %93 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1017
  tail call void @llvm.dbg.value(metadata ptr %93, metadata !205, metadata !DIExpression()), !dbg !941
  br label %59, !dbg !996, !llvm.loop !1018

94:                                               ; preds = %87, %59, %59, %77, %79
  %95 = ptrtoint ptr %24 to i64, !dbg !1020
  %96 = load ptr, ptr @stdout, align 8, !dbg !1020, !tbaa !873
  %97 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %96), !dbg !1020
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !954, metadata !DIExpression()), !dbg !1021
  call void @llvm.dbg.value(metadata !911, metadata !960, metadata !DIExpression()), !dbg !1021
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !954, metadata !DIExpression()), !dbg !1023
  call void @llvm.dbg.value(metadata !911, metadata !960, metadata !DIExpression()), !dbg !1023
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !954, metadata !DIExpression()), !dbg !1025
  call void @llvm.dbg.value(metadata !911, metadata !960, metadata !DIExpression()), !dbg !1025
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !954, metadata !DIExpression()), !dbg !1027
  call void @llvm.dbg.value(metadata !911, metadata !960, metadata !DIExpression()), !dbg !1027
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !954, metadata !DIExpression()), !dbg !1029
  call void @llvm.dbg.value(metadata !911, metadata !960, metadata !DIExpression()), !dbg !1029
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !954, metadata !DIExpression()), !dbg !1031
  call void @llvm.dbg.value(metadata !911, metadata !960, metadata !DIExpression()), !dbg !1031
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !954, metadata !DIExpression()), !dbg !1033
  call void @llvm.dbg.value(metadata !911, metadata !960, metadata !DIExpression()), !dbg !1033
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !954, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata !911, metadata !960, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !954, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata !911, metadata !960, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !954, metadata !DIExpression()), !dbg !1039
  call void @llvm.dbg.value(metadata !911, metadata !960, metadata !DIExpression()), !dbg !1039
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !262, metadata !DIExpression()), !dbg !941
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.41, i64 noundef 6) #45, !dbg !1041
  %99 = icmp eq i32 %98, 0, !dbg !1041
  br i1 %99, label %103, label %100, !dbg !1043

100:                                              ; preds = %94
  %101 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.42, i64 noundef 9) #45, !dbg !1044
  %102 = icmp eq i32 %101, 0, !dbg !1044
  br i1 %102, label %103, label %106, !dbg !1045

103:                                              ; preds = %100, %94
  %104 = trunc i64 %57 to i32, !dbg !1046
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %104, ptr noundef %55) #44, !dbg !1046
  br label %109, !dbg !1048

106:                                              ; preds = %100
  %107 = trunc i64 %57 to i32, !dbg !1049
  %108 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.3, i32 noundef %107, ptr noundef %55) #44, !dbg !1049
  br label %109

109:                                              ; preds = %106, %103
  %110 = load ptr, ptr @stdout, align 8, !dbg !1051, !tbaa !873
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.47, ptr noundef %110), !dbg !1051
  %112 = load ptr, ptr @stdout, align 8, !dbg !1052, !tbaa !873
  %113 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.48, ptr noundef %112), !dbg !1052
  %114 = ptrtoint ptr %60 to i64, !dbg !1053
  %115 = sub i64 %114, %95, !dbg !1053
  %116 = load ptr, ptr @stdout, align 8, !dbg !1053, !tbaa !873
  %117 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %115, ptr noundef %116), !dbg !1053
  %118 = load ptr, ptr @stdout, align 8, !dbg !1054, !tbaa !873
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.49, ptr noundef %118), !dbg !1054
  %120 = load ptr, ptr @stdout, align 8, !dbg !1055, !tbaa !873
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.50, ptr noundef %120), !dbg !1055
  %122 = load ptr, ptr @stdout, align 8, !dbg !1056, !tbaa !873
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %122), !dbg !1056
  br label %124, !dbg !1057

124:                                              ; preds = %109, %19
  ret void, !dbg !1057
}

; Function Attrs: nounwind
declare !dbg !1058 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1062 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1066 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1068 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1071 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1074 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1077 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1080 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1086 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1087 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: noreturn nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 !dbg !1093 {
  %3 = alloca i64, align 8, !DIAssignID !1111
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1106, metadata !DIExpression(), metadata !1111, metadata ptr %3, metadata !DIExpression()), !dbg !1112
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1098, metadata !DIExpression()), !dbg !1113
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1099, metadata !DIExpression()), !dbg !1113
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1103, metadata !DIExpression()), !dbg !1113
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1104, metadata !DIExpression()), !dbg !1113
  tail call void @llvm.dbg.value(metadata i64 76, metadata !1105, metadata !DIExpression()), !dbg !1113
  %4 = load ptr, ptr %1, align 8, !dbg !1114, !tbaa !873
  tail call void @set_program_name(ptr noundef %4) #44, !dbg !1115
  %5 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.10) #44, !dbg !1116
  %6 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #44, !dbg !1117
  %7 = tail call ptr @textdomain(ptr noundef nonnull @.str.11) #44, !dbg !1118
  %8 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #44, !dbg !1119
  br label %9, !dbg !1120

9:                                                ; preds = %16, %2
  %10 = phi i1 [ true, %2 ], [ false, %16 ]
  %11 = phi i8 [ 0, %2 ], [ %14, %16 ]
  %12 = phi i64 [ 76, %2 ], [ %17, %16 ]
  br label %13, !dbg !1120

13:                                               ; preds = %9, %33
  %14 = phi i8 [ %11, %9 ], [ 1, %33 ]
  %15 = phi i64 [ %12, %9 ], [ %17, %33 ]
  br label %16, !dbg !1120

16:                                               ; preds = %13, %30
  %17 = phi i64 [ %32, %30 ], [ %15, %13 ], !dbg !1121
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !1105, metadata !DIExpression()), !dbg !1113
  tail call void @llvm.dbg.value(metadata i8 %14, metadata !1104, metadata !DIExpression()), !dbg !1113
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1103, metadata !DIExpression()), !dbg !1113
  %18 = call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.13, ptr noundef nonnull @long_options, ptr noundef null) #44, !dbg !1122
  tail call void @llvm.dbg.value(metadata i32 %18, metadata !1100, metadata !DIExpression()), !dbg !1113
  switch i32 %18, label %39 [
    i32 -1, label %40
    i32 100, label %9
    i32 119, label %19
    i32 105, label %33
    i32 -130, label %34
    i32 -131, label %35
  ], !dbg !1120, !llvm.loop !1123

19:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #44, !dbg !1125
  %20 = load ptr, ptr @optarg, align 8, !dbg !1126, !tbaa !873
  %21 = call i32 @xstrtoimax(ptr noundef %20, ptr noundef null, i32 noundef 10, ptr noundef nonnull %3, ptr noundef nonnull @.str.10) #44, !dbg !1127
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !1109, metadata !DIExpression()), !dbg !1112
  %22 = icmp ugt i32 %21, 1, !dbg !1128
  %23 = load i64, ptr %3, align 8
  %24 = icmp slt i64 %23, 0
  %25 = select i1 %22, i1 true, i1 %24, !dbg !1130
  br i1 %25, label %26, label %30, !dbg !1130

26:                                               ; preds = %19
  %27 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #44, !dbg !1131
  %28 = load ptr, ptr @optarg, align 8, !dbg !1131, !tbaa !873
  %29 = call ptr @quote(ptr noundef %28) #44, !dbg !1131
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef nonnull @.str.14, ptr noundef %27, ptr noundef %29) #44, !dbg !1131
  unreachable, !dbg !1131

30:                                               ; preds = %19
  %31 = icmp eq i32 %21, 1, !dbg !1132
  %32 = select i1 %31, i64 0, i64 %23, !dbg !1133
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !1105, metadata !DIExpression()), !dbg !1113
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #44, !dbg !1134
  br label %16, !dbg !1135, !llvm.loop !1123

33:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1104, metadata !DIExpression()), !dbg !1113
  br label %13, !dbg !1136, !llvm.loop !1123

34:                                               ; preds = %16
  call void @usage(i32 noundef 0) #48, !dbg !1137
  unreachable, !dbg !1137

35:                                               ; preds = %16
  %36 = load ptr, ptr @stdout, align 8, !dbg !1138, !tbaa !873
  %37 = load ptr, ptr @Version, align 8, !dbg !1138, !tbaa !873
  %38 = call ptr @proper_name_lite(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.17) #44, !dbg !1138
  call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %36, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.16, ptr noundef %37, ptr noundef %38, ptr noundef null) #44, !dbg !1138
  call void @exit(i32 noundef 0) #46, !dbg !1138
  unreachable, !dbg !1138

39:                                               ; preds = %16
  call void @usage(i32 noundef 1) #48, !dbg !1139
  unreachable, !dbg !1139

40:                                               ; preds = %16
  %41 = load i32, ptr @optind, align 4, !dbg !1140, !tbaa !943
  %42 = sub nsw i32 %0, %41, !dbg !1142
  %43 = icmp sgt i32 %42, 1, !dbg !1143
  br i1 %43, label %44, label %52, !dbg !1144

44:                                               ; preds = %40
  %45 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.18, i32 noundef 5) #44, !dbg !1145
  %46 = load i32, ptr @optind, align 4, !dbg !1145, !tbaa !943
  %47 = sext i32 %46 to i64, !dbg !1145
  %48 = getelementptr ptr, ptr %1, i64 %47, !dbg !1145
  %49 = getelementptr ptr, ptr %48, i64 1, !dbg !1145
  %50 = load ptr, ptr %49, align 8, !dbg !1145, !tbaa !873
  %51 = call ptr @quote(ptr noundef %50) #44, !dbg !1145
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %45, ptr noundef %51) #44, !dbg !1145
  call void @usage(i32 noundef 1) #48, !dbg !1147
  unreachable, !dbg !1147

52:                                               ; preds = %40
  %53 = icmp slt i32 %41, %0, !dbg !1148
  br i1 %53, label %54, label %58, !dbg !1150

54:                                               ; preds = %52
  %55 = sext i32 %41 to i64, !dbg !1151
  %56 = getelementptr inbounds ptr, ptr %1, i64 %55, !dbg !1151
  %57 = load ptr, ptr %56, align 8, !dbg !1151, !tbaa !873
  tail call void @llvm.dbg.value(metadata ptr %57, metadata !1102, metadata !DIExpression()), !dbg !1113
  br label %58, !dbg !1152

58:                                               ; preds = %52, %54
  %59 = phi ptr [ %57, %54 ], [ @.str.19, %52 ], !dbg !1153
  tail call void @llvm.dbg.value(metadata ptr %59, metadata !1102, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata ptr %59, metadata !954, metadata !DIExpression()), !dbg !1154
  call void @llvm.dbg.value(metadata ptr @.str.19, metadata !960, metadata !DIExpression()), !dbg !1154
  %60 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(2) @.str.19) #45, !dbg !1157
  %61 = icmp eq i32 %60, 0, !dbg !1158
  br i1 %61, label %62, label %64, !dbg !1159

62:                                               ; preds = %58
  %63 = load ptr, ptr @stdin, align 8, !dbg !1160, !tbaa !873
  tail call void @llvm.dbg.value(metadata ptr %63, metadata !1101, metadata !DIExpression()), !dbg !1113
  br label %71, !dbg !1162

64:                                               ; preds = %58
  %65 = call noalias ptr @rpl_fopen(ptr noundef %59, ptr noundef nonnull @.str.20) #44, !dbg !1163
  tail call void @llvm.dbg.value(metadata ptr %65, metadata !1101, metadata !DIExpression()), !dbg !1113
  %66 = icmp eq ptr %65, null, !dbg !1165
  br i1 %66, label %67, label %71, !dbg !1167

67:                                               ; preds = %64
  %68 = tail call ptr @__errno_location() #47, !dbg !1168
  %69 = load i32, ptr %68, align 4, !dbg !1168, !tbaa !943
  %70 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %59) #44, !dbg !1168
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %69, ptr noundef nonnull @.str.21, ptr noundef %70) #44, !dbg !1168
  unreachable, !dbg !1168

71:                                               ; preds = %64, %62
  %72 = phi ptr [ %63, %62 ], [ %65, %64 ], !dbg !1169
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !1101, metadata !DIExpression()), !dbg !1113
  call void @fadvise(ptr noundef %72, i32 noundef 2) #44, !dbg !1170
  %73 = load ptr, ptr @stdout, align 8, !dbg !1171, !tbaa !873
  br i1 %10, label %76, label %74, !dbg !1173

74:                                               ; preds = %71
  %75 = icmp ne i8 %14, 0, !dbg !1174
  call fastcc void @do_decode(ptr noundef %72, ptr noundef %59, ptr noundef %73, i1 noundef zeroext %75) #48, !dbg !1175
  unreachable, !dbg !1175

76:                                               ; preds = %71
  call fastcc void @do_encode(ptr noundef %72, ptr noundef %59, ptr noundef %73, i64 noundef %17) #48, !dbg !1176
  unreachable, !dbg !1176
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1177 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1180 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1181 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1184 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #10

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1190 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @do_decode(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #0 !dbg !1194 {
  %5 = alloca [8 x i8], align 8, !DIAssignID !1226
  %6 = alloca i64, align 8, !DIAssignID !1227
  %7 = alloca %struct.base32_decode_context, align 4, !DIAssignID !1228
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1205, metadata !DIExpression(), metadata !1228, metadata ptr %7, metadata !DIExpression()), !dbg !1229
  %8 = alloca i64, align 8, !DIAssignID !1230
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1219, metadata !DIExpression(), metadata !1230, metadata ptr %8, metadata !DIExpression()), !dbg !1231
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1198, metadata !DIExpression()), !dbg !1229
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1199, metadata !DIExpression()), !dbg !1229
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1200, metadata !DIExpression()), !dbg !1229
  tail call void @llvm.dbg.value(metadata i1 %3, metadata !1201, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1229
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #44, !dbg !1232
  %9 = tail call noalias nonnull dereferenceable(8192) ptr @xmalloc(i64 noundef 8192) #49, !dbg !1233
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1202, metadata !DIExpression()), !dbg !1229
  %10 = tail call noalias nonnull dereferenceable(5120) ptr @xmalloc(i64 noundef 5120) #49, !dbg !1234
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !1203, metadata !DIExpression()), !dbg !1229
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1235, metadata !DIExpression()), !dbg !1241
  store i32 0, ptr %7, align 4, !dbg !1243, !tbaa !1244, !DIAssignID !1246
  call void @llvm.dbg.assign(metadata i32 0, metadata !1205, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !1246, metadata ptr %7, metadata !DIExpression()), !dbg !1229
  br label %11, !dbg !1247

11:                                               ; preds = %56, %4
  %12 = phi i64 [ 0, %4 ], [ %57, %56 ], !dbg !1248
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !1204, metadata !DIExpression()), !dbg !1229
  %13 = getelementptr inbounds i8, ptr %9, i64 %12, !dbg !1249
  %14 = sub nsw i64 8192, %12, !dbg !1249
  %15 = call i64 @fread_unlocked(ptr noundef nonnull %13, i64 noundef 1, i64 noundef %14, ptr noundef %0), !dbg !1249
  tail call void @llvm.dbg.value(metadata i64 %15, metadata !1213, metadata !DIExpression()), !dbg !1250
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1215, metadata !DIExpression()), !dbg !1251
  tail call void @llvm.dbg.value(metadata i64 %15, metadata !1213, metadata !DIExpression()), !dbg !1250
  %16 = icmp sgt i64 %15, 0
  %17 = and i1 %16, %3, !dbg !1252
  br i1 %17, label %18, label %41, !dbg !1252

18:                                               ; preds = %11, %35
  %19 = phi i64 [ %37, %35 ], [ 0, %11 ]
  %20 = phi i64 [ %36, %35 ], [ %15, %11 ]
  tail call void @llvm.dbg.value(metadata i64 %19, metadata !1215, metadata !DIExpression()), !dbg !1251
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !1213, metadata !DIExpression()), !dbg !1250
  %21 = getelementptr i8, ptr %13, i64 %19, !dbg !1253
  %22 = load i8, ptr %21, align 1, !dbg !1253, !tbaa !952
  tail call void @llvm.dbg.value(metadata i8 %22, metadata !1257, metadata !DIExpression()), !dbg !1262
  %23 = zext i8 %22 to i64, !dbg !1264
  %24 = getelementptr inbounds [256 x i8], ptr @base32_to_int, i64 0, i64 %23, !dbg !1265
  %25 = load i8, ptr %24, align 1, !dbg !1265, !tbaa !952
  %26 = icmp sgt i8 %25, -1, !dbg !1266
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1267, metadata !DIExpression()), !dbg !1273
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1272, metadata !DIExpression()), !dbg !1273
  %27 = icmp eq i8 %22, 61
  %28 = or i1 %27, %26, !dbg !1275
  br i1 %28, label %29, label %31, !dbg !1275

29:                                               ; preds = %18
  %30 = add nsw i64 %19, 1, !dbg !1276
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !1215, metadata !DIExpression()), !dbg !1251
  br label %35, !dbg !1277

31:                                               ; preds = %18
  %32 = getelementptr inbounds i8, ptr %21, i64 1, !dbg !1278
  %33 = add nsw i64 %20, -1, !dbg !1279
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !1213, metadata !DIExpression()), !dbg !1250
  %34 = sub nsw i64 %33, %19, !dbg !1280
  call void @llvm.dbg.value(metadata ptr %21, metadata !1281, metadata !DIExpression()), !dbg !1289
  call void @llvm.dbg.value(metadata ptr %32, metadata !1287, metadata !DIExpression()), !dbg !1289
  call void @llvm.dbg.value(metadata i64 %34, metadata !1288, metadata !DIExpression()), !dbg !1289
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %21, ptr noundef nonnull align 1 %32, i64 noundef %34, i1 noundef false) #44, !dbg !1291
  br label %35

35:                                               ; preds = %31, %29
  %36 = phi i64 [ %20, %29 ], [ %33, %31 ], !dbg !1250
  %37 = phi i64 [ %30, %29 ], [ %19, %31 ], !dbg !1251
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !1215, metadata !DIExpression()), !dbg !1251
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !1213, metadata !DIExpression()), !dbg !1250
  %38 = icmp sgt i64 %36, 0, !dbg !1292
  %39 = icmp slt i64 %37, %36, !dbg !1293
  %40 = select i1 %38, i1 %39, i1 false, !dbg !1293
  br i1 %40, label %18, label %41, !dbg !1294, !llvm.loop !1295

41:                                               ; preds = %35, %11
  %42 = phi i64 [ %15, %11 ], [ %36, %35 ], !dbg !1297
  tail call void @llvm.dbg.value(metadata i64 %42, metadata !1213, metadata !DIExpression()), !dbg !1250
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 %42, i64 %12), metadata !1204, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !1229
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1298, metadata !DIExpression()), !dbg !1304
  %43 = load i32, ptr %0, align 8, !dbg !1307, !tbaa !1308
  %44 = and i32 %43, 32, !dbg !1311
  %45 = icmp eq i32 %44, 0, !dbg !1311
  br i1 %45, label %50, label %46, !dbg !1312

46:                                               ; preds = %41
  %47 = tail call ptr @__errno_location() #47, !dbg !1313
  %48 = load i32, ptr %47, align 4, !dbg !1313, !tbaa !943
  %49 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.64, i32 noundef 5) #44, !dbg !1313
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %48, ptr noundef %49) #44, !dbg !1313
  unreachable, !dbg !1313

50:                                               ; preds = %41
  %51 = add nsw i64 %42, %12, !dbg !1314
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !1204, metadata !DIExpression()), !dbg !1229
  %52 = icmp slt i64 %51, 8192, !dbg !1315
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1316, metadata !DIExpression()), !dbg !1319
  %53 = and i32 %43, 16
  %54 = icmp eq i32 %53, 0
  %55 = and i1 %52, %54, !dbg !1321
  br i1 %55, label %56, label %58, !dbg !1321

56:                                               ; preds = %50, %154
  %57 = phi i64 [ %51, %50 ], [ 0, %154 ]
  br label %11, !dbg !1229, !llvm.loop !1322

58:                                               ; preds = %50
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !1204, metadata !DIExpression()), !dbg !1229
  %59 = icmp eq i64 %51, 0, !dbg !1324
  br i1 %59, label %63, label %60, !dbg !1325

60:                                               ; preds = %58
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #44, !dbg !1326
  store i64 5120, ptr %8, align 8, !dbg !1327, !tbaa !1328, !DIAssignID !1329
  call void @llvm.dbg.assign(metadata i64 5120, metadata !1219, metadata !DIExpression(), metadata !1329, metadata ptr %8, metadata !DIExpression()), !dbg !1231
  %61 = call zeroext i1 @base32_decode_ctx(ptr noundef nonnull %7, ptr noundef nonnull %9, i64 noundef %51, ptr noundef nonnull %10, ptr noundef nonnull %8) #44, !dbg !1330
  tail call void @llvm.dbg.value(metadata i1 %61, metadata !1211, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1248
  %62 = load i64, ptr %8, align 8, !dbg !1332
  br label %93, !dbg !1333

63:                                               ; preds = %58
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1316, metadata !DIExpression()), !dbg !1334
  %64 = load i32, ptr %0, align 8, !dbg !1336, !tbaa !1308
  %65 = and i32 %64, 16, !dbg !1325
  %66 = icmp eq i32 %65, 0, !dbg !1325
  br i1 %66, label %154, label %67, !dbg !1337

67:                                               ; preds = %63
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #44, !dbg !1326
  store i64 5120, ptr %8, align 8, !dbg !1327, !tbaa !1328, !DIAssignID !1329
  call void @llvm.dbg.assign(metadata i64 5120, metadata !1219, metadata !DIExpression(), metadata !1329, metadata ptr %8, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1338, metadata !DIExpression(), metadata !1226, metadata ptr %5, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1350, metadata !DIExpression(), metadata !1227, metadata ptr %6, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata ptr %7, metadata !1345, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata ptr undef, metadata !1346, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata ptr %8, metadata !1347, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata ptr %7, metadata !1354, metadata !DIExpression()), !dbg !1359
  %68 = load i32, ptr %7, align 4, !dbg !1362, !tbaa !1244
  %69 = icmp eq i32 %68, 0, !dbg !1363
  br i1 %69, label %92, label %70, !dbg !1364

70:                                               ; preds = %67
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #44, !dbg !1365
  store i64 4412750543122677053, ptr %5, align 8, !dbg !1366, !DIAssignID !1367
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1338, metadata !DIExpression(), metadata !1367, metadata ptr %5, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata ptr %7, metadata !1354, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.value(metadata i32 %68, metadata !1348, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !1352
  call void @llvm.dbg.value(metadata i32 %68, metadata !1267, metadata !DIExpression()), !dbg !1370
  %71 = srem i32 %68, 8, !dbg !1372
  call void @llvm.dbg.value(metadata i32 %71, metadata !1272, metadata !DIExpression()), !dbg !1370
  %72 = icmp eq i32 %71, 0, !dbg !1373
  %73 = sub nsw i32 8, %71, !dbg !1373
  %74 = select i1 %72, i32 0, i32 %73, !dbg !1373
  %75 = zext nneg i32 %74 to i64
  call void @llvm.dbg.value(metadata i64 %75, metadata !1349, metadata !DIExpression()), !dbg !1352
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #44, !dbg !1374
  store i64 5120, ptr %6, align 8, !dbg !1375, !tbaa !1328, !DIAssignID !1376
  call void @llvm.dbg.assign(metadata i64 5120, metadata !1350, metadata !DIExpression(), metadata !1376, metadata ptr %6, metadata !DIExpression()), !dbg !1352
  %76 = icmp eq i32 %74, 0, !dbg !1377
  br i1 %76, label %87, label %77, !dbg !1379

77:                                               ; preds = %70
  call void @llvm.dbg.value(metadata ptr %7, metadata !1380, metadata !DIExpression()), !dbg !1385
  %78 = add nsw i32 %68, -1, !dbg !1387
  %79 = sext i32 %78 to i64, !dbg !1388
  %80 = getelementptr inbounds %struct.base32_decode_context, ptr %7, i64 0, i32 1, i64 %79, !dbg !1388
  %81 = load i8, ptr %80, align 1, !dbg !1388, !tbaa !952
  %82 = icmp eq i8 %81, 61, !dbg !1389
  br i1 %82, label %87, label %83, !dbg !1390

83:                                               ; preds = %77
  %84 = icmp ult i32 %74, 9, !dbg !1391
  br i1 %84, label %85, label %124, !dbg !1395

85:                                               ; preds = %83
  %86 = call zeroext i1 @base32_decode_ctx(ptr noundef nonnull %7, ptr noundef nonnull %5, i64 noundef %75, ptr noundef nonnull %10, ptr noundef nonnull %6) #44, !dbg !1396
  call void @llvm.dbg.value(metadata i1 %86, metadata !1351, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1352
  br label %89, !dbg !1397

87:                                               ; preds = %77, %70
  %88 = call zeroext i1 @base32_decode_ctx(ptr noundef nonnull %7, ptr noundef nonnull @.str.10, i64 noundef 0, ptr noundef nonnull %10, ptr noundef nonnull %6) #44, !dbg !1398
  call void @llvm.dbg.value(metadata i1 %88, metadata !1351, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1352
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi i1 [ %88, %87 ], [ %86, %85 ]
  call void @llvm.dbg.value(metadata i1 %90, metadata !1351, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1352
  %91 = load i64, ptr %6, align 8, !dbg !1400, !tbaa !1328
  store i64 %91, ptr %8, align 8, !dbg !1401, !tbaa !1328, !DIAssignID !1402
  call void @llvm.dbg.assign(metadata i64 %91, metadata !1219, metadata !DIExpression(), metadata !1402, metadata ptr %8, metadata !DIExpression()), !dbg !1231
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #44, !dbg !1403
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #44, !dbg !1403
  br label %93

92:                                               ; preds = %67
  store i64 0, ptr %8, align 8, !dbg !1404, !tbaa !1328, !DIAssignID !1406
  call void @llvm.dbg.assign(metadata i64 0, metadata !1219, metadata !DIExpression(), metadata !1406, metadata ptr %8, metadata !DIExpression()), !dbg !1231
  br label %93, !dbg !1407

93:                                               ; preds = %92, %89, %60
  %94 = phi i64 [ %62, %60 ], [ 0, %92 ], [ %91, %89 ], !dbg !1332
  %95 = phi i1 [ %61, %60 ], [ true, %92 ], [ %90, %89 ]
  tail call void @llvm.dbg.value(metadata i1 %95, metadata !1211, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1248
  %96 = call i64 @fwrite_unlocked(ptr noundef nonnull %10, i64 noundef 1, i64 noundef %94, ptr noundef %2), !dbg !1332
  %97 = load i64, ptr %8, align 8, !dbg !1408, !tbaa !1328
  %98 = icmp ult i64 %96, %97, !dbg !1409
  br i1 %98, label %138, label %99, !dbg !1410

99:                                               ; preds = %93
  br i1 %95, label %100, label %148, !dbg !1411

100:                                              ; preds = %99
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1204, metadata !DIExpression()), !dbg !1229
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #44, !dbg !1412
  br i1 %59, label %151, label %101

101:                                              ; preds = %100
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1204, metadata !DIExpression()), !dbg !1229
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1316, metadata !DIExpression()), !dbg !1334
  %102 = load i32, ptr %0, align 8, !dbg !1336, !tbaa !1308
  %103 = and i32 %102, 16, !dbg !1325
  %104 = icmp eq i32 %103, 0, !dbg !1325
  br i1 %104, label %154, label %105, !dbg !1337

105:                                              ; preds = %101
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #44, !dbg !1326
  store i64 5120, ptr %8, align 8, !dbg !1327, !tbaa !1328, !DIAssignID !1329
  call void @llvm.dbg.assign(metadata i64 5120, metadata !1219, metadata !DIExpression(), metadata !1329, metadata ptr %8, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1338, metadata !DIExpression(), metadata !1226, metadata ptr %5, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1350, metadata !DIExpression(), metadata !1227, metadata ptr %6, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata ptr %7, metadata !1345, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata ptr undef, metadata !1346, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata ptr %8, metadata !1347, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata ptr %7, metadata !1354, metadata !DIExpression()), !dbg !1359
  %106 = load i32, ptr %7, align 4, !dbg !1362, !tbaa !1244
  %107 = icmp eq i32 %106, 0, !dbg !1363
  br i1 %107, label %108, label %109, !dbg !1364

108:                                              ; preds = %105
  store i64 0, ptr %8, align 8, !dbg !1404, !tbaa !1328, !DIAssignID !1406
  call void @llvm.dbg.assign(metadata i64 0, metadata !1219, metadata !DIExpression(), metadata !1406, metadata ptr %8, metadata !DIExpression()), !dbg !1231
  br label %132, !dbg !1407

109:                                              ; preds = %105
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #44, !dbg !1365
  store i64 4412750543122677053, ptr %5, align 8, !dbg !1366, !DIAssignID !1367
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1338, metadata !DIExpression(), metadata !1367, metadata ptr %5, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata ptr %7, metadata !1354, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.value(metadata i32 %106, metadata !1348, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !1352
  call void @llvm.dbg.value(metadata i32 %106, metadata !1267, metadata !DIExpression()), !dbg !1370
  %110 = srem i32 %106, 8, !dbg !1372
  call void @llvm.dbg.value(metadata i32 %110, metadata !1272, metadata !DIExpression()), !dbg !1370
  %111 = icmp eq i32 %110, 0, !dbg !1373
  %112 = sub nsw i32 8, %110, !dbg !1373
  %113 = select i1 %111, i32 0, i32 %112, !dbg !1373
  %114 = zext nneg i32 %113 to i64
  call void @llvm.dbg.value(metadata i64 %114, metadata !1349, metadata !DIExpression()), !dbg !1352
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #44, !dbg !1374
  store i64 5120, ptr %6, align 8, !dbg !1375, !tbaa !1328, !DIAssignID !1376
  call void @llvm.dbg.assign(metadata i64 5120, metadata !1350, metadata !DIExpression(), metadata !1376, metadata ptr %6, metadata !DIExpression()), !dbg !1352
  %115 = icmp eq i32 %113, 0, !dbg !1377
  br i1 %115, label %127, label %116, !dbg !1379

116:                                              ; preds = %109
  call void @llvm.dbg.value(metadata ptr %7, metadata !1380, metadata !DIExpression()), !dbg !1385
  %117 = add nsw i32 %106, -1, !dbg !1387
  %118 = sext i32 %117 to i64, !dbg !1388
  %119 = getelementptr inbounds %struct.base32_decode_context, ptr %7, i64 0, i32 1, i64 %118, !dbg !1388
  %120 = load i8, ptr %119, align 1, !dbg !1388, !tbaa !952
  %121 = icmp eq i8 %120, 61, !dbg !1389
  br i1 %121, label %127, label %122, !dbg !1390

122:                                              ; preds = %116
  %123 = icmp ult i32 %113, 9, !dbg !1391
  br i1 %123, label %125, label %124, !dbg !1395

124:                                              ; preds = %83, %122
  call void @__assert_fail(ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.67, i32 noundef 432, ptr noundef nonnull @__PRETTY_FUNCTION__.decode_ctx_finalize) #46, !dbg !1391
  unreachable, !dbg !1391

125:                                              ; preds = %122
  %126 = call zeroext i1 @base32_decode_ctx(ptr noundef nonnull %7, ptr noundef nonnull %5, i64 noundef %114, ptr noundef nonnull %10, ptr noundef nonnull %6) #44, !dbg !1396
  call void @llvm.dbg.value(metadata i1 %126, metadata !1351, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1352
  br label %129, !dbg !1397

127:                                              ; preds = %116, %109
  %128 = call zeroext i1 @base32_decode_ctx(ptr noundef nonnull %7, ptr noundef nonnull @.str.10, i64 noundef 0, ptr noundef nonnull %10, ptr noundef nonnull %6) #44, !dbg !1398
  call void @llvm.dbg.value(metadata i1 %128, metadata !1351, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1352
  br label %129

129:                                              ; preds = %127, %125
  %130 = phi i1 [ %128, %127 ], [ %126, %125 ]
  call void @llvm.dbg.value(metadata i1 %130, metadata !1351, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1352
  %131 = load i64, ptr %6, align 8, !dbg !1400, !tbaa !1328
  store i64 %131, ptr %8, align 8, !dbg !1401, !tbaa !1328, !DIAssignID !1402
  call void @llvm.dbg.assign(metadata i64 %131, metadata !1219, metadata !DIExpression(), metadata !1402, metadata ptr %8, metadata !DIExpression()), !dbg !1231
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #44, !dbg !1403
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #44, !dbg !1403
  br label %132

132:                                              ; preds = %129, %108
  %133 = phi i64 [ 0, %108 ], [ %131, %129 ], !dbg !1332
  %134 = phi i1 [ true, %108 ], [ %130, %129 ]
  tail call void @llvm.dbg.value(metadata i1 %134, metadata !1211, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1248
  %135 = call i64 @fwrite_unlocked(ptr noundef nonnull %10, i64 noundef 1, i64 noundef %133, ptr noundef %2), !dbg !1332
  %136 = load i64, ptr %8, align 8, !dbg !1408, !tbaa !1328
  %137 = icmp ult i64 %135, %136, !dbg !1409
  br i1 %137, label %138, label %147, !dbg !1410

138:                                              ; preds = %93, %132
  %139 = tail call ptr @__errno_location() #47, !dbg !1413
  %140 = load i32, ptr %139, align 4, !dbg !1413, !tbaa !943
  call void @llvm.dbg.value(metadata i32 %140, metadata !1416, metadata !DIExpression()), !dbg !1418
  %141 = load ptr, ptr @stdout, align 8, !dbg !1419, !tbaa !873
  %142 = call i32 @fflush_unlocked(ptr noundef %141) #44, !dbg !1419
  %143 = load ptr, ptr @stdout, align 8, !dbg !1420, !tbaa !873
  %144 = call i32 @fpurge(ptr noundef %143) #44, !dbg !1421
  %145 = load ptr, ptr @stdout, align 8, !dbg !1422, !tbaa !873
  call void @clearerr_unlocked(ptr noundef %145) #44, !dbg !1422
  %146 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.68, i32 noundef 5) #44, !dbg !1423
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %140, ptr noundef %146) #44, !dbg !1423
  unreachable, !dbg !1423

147:                                              ; preds = %132
  br i1 %134, label %150, label %148, !dbg !1411

148:                                              ; preds = %99, %147
  %149 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.65, i32 noundef 5) #44, !dbg !1424
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %149) #44, !dbg !1424
  unreachable, !dbg !1424

150:                                              ; preds = %147
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1204, metadata !DIExpression()), !dbg !1229
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #44, !dbg !1412
  br label %151, !dbg !1426

151:                                              ; preds = %150, %100
  %152 = load i32, ptr %0, align 8, !dbg !1426, !tbaa !1308
  %153 = and i32 %152, 16, !dbg !1428
  br label %154

154:                                              ; preds = %63, %101, %151
  %155 = phi i32 [ %153, %151 ], [ 0, %101 ], [ 0, %63 ], !dbg !1428
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1316, metadata !DIExpression()), !dbg !1429
  %156 = icmp eq i32 %155, 0, !dbg !1428
  br i1 %156, label %56, label %157, !dbg !1430

157:                                              ; preds = %154
  call fastcc void @finish_and_exit(ptr noundef nonnull %0, ptr noundef %1) #48, !dbg !1431
  unreachable, !dbg !1431
}

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @do_encode(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 !dbg !1432 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1436, metadata !DIExpression()), !dbg !1446
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1437, metadata !DIExpression()), !dbg !1446
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1438, metadata !DIExpression()), !dbg !1446
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1439, metadata !DIExpression()), !dbg !1446
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1440, metadata !DIExpression()), !dbg !1446
  %5 = tail call noalias nonnull dereferenceable(30720) ptr @xmalloc(i64 noundef 30720) #49, !dbg !1447
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1441, metadata !DIExpression()), !dbg !1446
  %6 = tail call noalias nonnull dereferenceable(49152) ptr @xmalloc(i64 noundef 49152) #49, !dbg !1448
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1442, metadata !DIExpression()), !dbg !1446
  %7 = icmp eq i64 %3, 0
  %8 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %9 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  br label %10, !dbg !1449

10:                                               ; preds = %96, %4
  %11 = phi i64 [ 0, %4 ], [ %92, %96 ], !dbg !1450
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !1440, metadata !DIExpression()), !dbg !1446
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1443, metadata !DIExpression()), !dbg !1446
  br label %12, !dbg !1451

12:                                               ; preds = %21, %10
  %13 = phi i64 [ 0, %10 ], [ %17, %21 ], !dbg !1452
  tail call void @llvm.dbg.value(metadata i64 %13, metadata !1443, metadata !DIExpression()), !dbg !1446
  %14 = getelementptr inbounds i8, ptr %5, i64 %13, !dbg !1453
  %15 = sub nsw i64 30720, %13, !dbg !1453
  %16 = tail call i64 @fread_unlocked(ptr noundef nonnull %14, i64 noundef 1, i64 noundef %15, ptr noundef %0), !dbg !1453
  tail call void @llvm.dbg.value(metadata i64 %16, metadata !1444, metadata !DIExpression()), !dbg !1452
  %17 = add nsw i64 %16, %13, !dbg !1455
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !1443, metadata !DIExpression()), !dbg !1446
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1316, metadata !DIExpression()), !dbg !1456
  %18 = load i32, ptr %0, align 8, !dbg !1458, !tbaa !1308
  %19 = and i32 %18, 16, !dbg !1459
  %20 = icmp eq i32 %19, 0, !dbg !1459
  br i1 %20, label %21, label %26, !dbg !1460

21:                                               ; preds = %12
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1298, metadata !DIExpression()), !dbg !1461
  %22 = and i32 %18, 32, !dbg !1463
  %23 = icmp eq i32 %22, 0, !dbg !1463
  %24 = icmp slt i64 %17, 30720
  %25 = select i1 %23, i1 %24, i1 false, !dbg !1464
  br i1 %25, label %12, label %26, !dbg !1464, !llvm.loop !1465

26:                                               ; preds = %21, %12
  %27 = icmp sgt i64 %17, 0, !dbg !1467
  br i1 %27, label %28, label %91, !dbg !1469

28:                                               ; preds = %26
  %29 = add nuw nsw i64 %17, 4, !dbg !1470
  %30 = udiv i64 %29, 5, !dbg !1470
  %31 = shl nuw nsw i64 %30, 3, !dbg !1470
  tail call void @base32_encode(ptr noundef nonnull %5, i64 noundef %17, ptr noundef nonnull %6, i64 noundef %31) #44, !dbg !1473
  call void @llvm.dbg.value(metadata ptr %6, metadata !1474, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata i64 %31, metadata !1479, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata i64 %3, metadata !1480, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata ptr undef, metadata !1481, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata ptr %2, metadata !1482, metadata !DIExpression()), !dbg !1502
  br i1 %7, label %32, label %45, !dbg !1504

32:                                               ; preds = %28
  %33 = load ptr, ptr @stdout, align 8, !dbg !1505, !tbaa !873
  %34 = tail call i64 @fwrite_unlocked(ptr noundef nonnull %6, i64 noundef 1, i64 noundef %31, ptr noundef %33), !dbg !1505
  %35 = icmp ult i64 %34, %31, !dbg !1506
  br i1 %35, label %36, label %91, !dbg !1507

36:                                               ; preds = %32
  %37 = tail call ptr @__errno_location() #47, !dbg !1508
  %38 = load i32, ptr %37, align 4, !dbg !1508, !tbaa !943
  call void @llvm.dbg.value(metadata i32 %38, metadata !1416, metadata !DIExpression()), !dbg !1510
  %39 = load ptr, ptr @stdout, align 8, !dbg !1511, !tbaa !873
  %40 = tail call i32 @fflush_unlocked(ptr noundef %39) #44, !dbg !1511
  %41 = load ptr, ptr @stdout, align 8, !dbg !1512, !tbaa !873
  %42 = tail call i32 @fpurge(ptr noundef %41) #44, !dbg !1513
  %43 = load ptr, ptr @stdout, align 8, !dbg !1514, !tbaa !873
  tail call void @clearerr_unlocked(ptr noundef %43) #44, !dbg !1514
  %44 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.68, i32 noundef 5) #44, !dbg !1515
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %38, ptr noundef %44) #44, !dbg !1515
  unreachable, !dbg !1515

45:                                               ; preds = %28, %87
  %46 = phi i64 [ %88, %87 ], [ %11, %28 ], !dbg !1446
  %47 = phi i64 [ %89, %87 ], [ 0, %28 ]
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !1440, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %47, metadata !1490, metadata !DIExpression()), !dbg !1516
  %48 = sub nsw i64 %3, %46, !dbg !1517
  %49 = sub nsw i64 %31, %47, !dbg !1517
  %50 = tail call i64 @llvm.smin.i64(i64 %48, i64 %49), !dbg !1517
  call void @llvm.dbg.value(metadata i64 %50, metadata !1492, metadata !DIExpression()), !dbg !1518
  %51 = icmp eq i64 %50, 0, !dbg !1519
  br i1 %51, label %52, label %70, !dbg !1520

52:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i32 10, metadata !1521, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata ptr %2, metadata !1526, metadata !DIExpression()), !dbg !1527
  %53 = load ptr, ptr %8, align 8, !dbg !1531, !tbaa !1532
  %54 = load ptr, ptr %9, align 8, !dbg !1531, !tbaa !1533
  %55 = icmp ult ptr %53, %54, !dbg !1531
  br i1 %55, label %56, label %58, !dbg !1531, !prof !1534

56:                                               ; preds = %52
  %57 = getelementptr inbounds i8, ptr %53, i64 1, !dbg !1531
  store ptr %57, ptr %8, align 8, !dbg !1531, !tbaa !1532
  store i8 10, ptr %53, align 1, !dbg !1531, !tbaa !952
  br label %87, !dbg !1535

58:                                               ; preds = %52
  %59 = tail call i32 @__overflow(ptr noundef nonnull %2, i32 noundef 10) #44, !dbg !1531
  %60 = icmp eq i32 %59, -1, !dbg !1536
  br i1 %60, label %61, label %87, !dbg !1535

61:                                               ; preds = %58
  %62 = tail call ptr @__errno_location() #47, !dbg !1537
  %63 = load i32, ptr %62, align 4, !dbg !1537, !tbaa !943
  call void @llvm.dbg.value(metadata i32 %63, metadata !1416, metadata !DIExpression()), !dbg !1539
  %64 = load ptr, ptr @stdout, align 8, !dbg !1540, !tbaa !873
  %65 = tail call i32 @fflush_unlocked(ptr noundef %64) #44, !dbg !1540
  %66 = load ptr, ptr @stdout, align 8, !dbg !1541, !tbaa !873
  %67 = tail call i32 @fpurge(ptr noundef %66) #44, !dbg !1542
  %68 = load ptr, ptr @stdout, align 8, !dbg !1543, !tbaa !873
  tail call void @clearerr_unlocked(ptr noundef %68) #44, !dbg !1543
  %69 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.68, i32 noundef 5) #44, !dbg !1544
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %63, ptr noundef %69) #44, !dbg !1544
  unreachable, !dbg !1544

70:                                               ; preds = %45
  %71 = load ptr, ptr @stdout, align 8, !dbg !1545, !tbaa !873
  %72 = getelementptr inbounds i8, ptr %6, i64 %47, !dbg !1545
  %73 = tail call i64 @fwrite_unlocked(ptr noundef nonnull %72, i64 noundef 1, i64 noundef %50, ptr noundef %71), !dbg !1545
  %74 = icmp ult i64 %73, %50, !dbg !1546
  br i1 %74, label %75, label %84, !dbg !1547

75:                                               ; preds = %70
  %76 = tail call ptr @__errno_location() #47, !dbg !1548
  %77 = load i32, ptr %76, align 4, !dbg !1548, !tbaa !943
  call void @llvm.dbg.value(metadata i32 %77, metadata !1416, metadata !DIExpression()), !dbg !1550
  %78 = load ptr, ptr @stdout, align 8, !dbg !1551, !tbaa !873
  %79 = tail call i32 @fflush_unlocked(ptr noundef %78) #44, !dbg !1551
  %80 = load ptr, ptr @stdout, align 8, !dbg !1552, !tbaa !873
  %81 = tail call i32 @fpurge(ptr noundef %80) #44, !dbg !1553
  %82 = load ptr, ptr @stdout, align 8, !dbg !1554, !tbaa !873
  tail call void @clearerr_unlocked(ptr noundef %82) #44, !dbg !1554
  %83 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.68, i32 noundef 5) #44, !dbg !1555
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %77, ptr noundef %83) #44, !dbg !1555
  unreachable, !dbg !1555

84:                                               ; preds = %70
  %85 = add nsw i64 %50, %46, !dbg !1556
  tail call void @llvm.dbg.value(metadata i64 %85, metadata !1440, metadata !DIExpression()), !dbg !1446
  %86 = add nsw i64 %50, %47, !dbg !1557
  call void @llvm.dbg.value(metadata i64 %86, metadata !1490, metadata !DIExpression()), !dbg !1516
  br label %87

87:                                               ; preds = %56, %58, %84
  %88 = phi i64 [ %85, %84 ], [ 0, %58 ], [ 0, %56 ], !dbg !1558
  %89 = phi i64 [ %86, %84 ], [ %47, %58 ], [ %47, %56 ], !dbg !1516
  tail call void @llvm.dbg.value(metadata i64 %88, metadata !1440, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %89, metadata !1490, metadata !DIExpression()), !dbg !1516
  %90 = icmp slt i64 %89, %31, !dbg !1559
  br i1 %90, label %45, label %91, !dbg !1560, !llvm.loop !1561

91:                                               ; preds = %87, %32, %26
  %92 = phi i64 [ %11, %26 ], [ %11, %32 ], [ %88, %87 ], !dbg !1450
  tail call void @llvm.dbg.value(metadata i64 %92, metadata !1440, metadata !DIExpression()), !dbg !1446
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1316, metadata !DIExpression()), !dbg !1563
  %93 = load i32, ptr %0, align 8, !dbg !1565, !tbaa !1308
  %94 = and i32 %93, 16, !dbg !1566
  %95 = icmp eq i32 %94, 0, !dbg !1566
  br i1 %95, label %96, label %101, !dbg !1567

96:                                               ; preds = %91
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1298, metadata !DIExpression()), !dbg !1568
  %97 = and i32 %93, 32, !dbg !1570
  %98 = icmp eq i32 %97, 0, !dbg !1570
  %99 = icmp eq i64 %17, 30720
  %100 = select i1 %98, i1 %99, i1 false, !dbg !1571
  br i1 %100, label %10, label %101, !dbg !1571, !llvm.loop !1572

101:                                              ; preds = %96, %91
  %102 = icmp ne i64 %3, 0, !dbg !1574
  %103 = icmp sgt i64 %92, 0
  %104 = select i1 %102, i1 %103, i1 false, !dbg !1576
  br i1 %104, label %105, label %123, !dbg !1576

105:                                              ; preds = %101
  call void @llvm.dbg.value(metadata i32 10, metadata !1521, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata ptr %2, metadata !1526, metadata !DIExpression()), !dbg !1577
  %106 = load ptr, ptr %8, align 8, !dbg !1579, !tbaa !1532
  %107 = load ptr, ptr %9, align 8, !dbg !1579, !tbaa !1533
  %108 = icmp ult ptr %106, %107, !dbg !1579
  br i1 %108, label %109, label %111, !dbg !1579, !prof !1534

109:                                              ; preds = %105
  %110 = getelementptr inbounds i8, ptr %106, i64 1, !dbg !1579
  store ptr %110, ptr %8, align 8, !dbg !1579, !tbaa !1532
  store i8 10, ptr %106, align 1, !dbg !1579, !tbaa !952
  br label %123, !dbg !1580

111:                                              ; preds = %105
  %112 = tail call i32 @__overflow(ptr noundef nonnull %2, i32 noundef 10) #44, !dbg !1579
  %113 = icmp eq i32 %112, -1, !dbg !1581
  br i1 %113, label %114, label %123, !dbg !1580

114:                                              ; preds = %111
  %115 = tail call ptr @__errno_location() #47, !dbg !1582
  %116 = load i32, ptr %115, align 4, !dbg !1582, !tbaa !943
  call void @llvm.dbg.value(metadata i32 %116, metadata !1416, metadata !DIExpression()), !dbg !1584
  %117 = load ptr, ptr @stdout, align 8, !dbg !1585, !tbaa !873
  %118 = tail call i32 @fflush_unlocked(ptr noundef %117) #44, !dbg !1585
  %119 = load ptr, ptr @stdout, align 8, !dbg !1586, !tbaa !873
  %120 = tail call i32 @fpurge(ptr noundef %119) #44, !dbg !1587
  %121 = load ptr, ptr @stdout, align 8, !dbg !1588, !tbaa !873
  tail call void @clearerr_unlocked(ptr noundef %121) #44, !dbg !1588
  %122 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.68, i32 noundef 5) #44, !dbg !1589
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %116, ptr noundef %122) #44, !dbg !1589
  unreachable, !dbg !1589

123:                                              ; preds = %109, %111, %101
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1298, metadata !DIExpression()), !dbg !1590
  %124 = load i32, ptr %0, align 8, !dbg !1593, !tbaa !1308
  %125 = and i32 %124, 32, !dbg !1594
  %126 = icmp eq i32 %125, 0, !dbg !1594
  br i1 %126, label %131, label %127, !dbg !1595

127:                                              ; preds = %123
  %128 = tail call ptr @__errno_location() #47, !dbg !1596
  %129 = load i32, ptr %128, align 4, !dbg !1596, !tbaa !943
  %130 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.64, i32 noundef 5) #44, !dbg !1596
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %129, ptr noundef %130) #44, !dbg !1596
  unreachable, !dbg !1596

131:                                              ; preds = %123
  tail call fastcc void @finish_and_exit(ptr noundef nonnull %0, ptr noundef %1) #48, !dbg !1597
  unreachable, !dbg !1597
}

; Function Attrs: nofree nounwind
declare noundef i64 @fread_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

declare !dbg !1598 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1599 void @clearerr_unlocked(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

declare !dbg !1602 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @finish_and_exit(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !dbg !1605 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1609, metadata !DIExpression()), !dbg !1611
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1610, metadata !DIExpression()), !dbg !1611
  %3 = tail call i32 @rpl_fclose(ptr noundef %0) #44, !dbg !1612
  %4 = icmp eq i32 %3, 0, !dbg !1614
  br i1 %4, label %14, label %5, !dbg !1615

5:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %1, metadata !954, metadata !DIExpression()), !dbg !1616
  call void @llvm.dbg.value(metadata ptr @.str.19, metadata !960, metadata !DIExpression()), !dbg !1616
  %6 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(2) @.str.19) #45, !dbg !1620
  %7 = icmp eq i32 %6, 0, !dbg !1621
  %8 = tail call ptr @__errno_location() #47, !dbg !1622
  %9 = load i32, ptr %8, align 4, !dbg !1622, !tbaa !943
  br i1 %7, label %10, label %12, !dbg !1623

10:                                               ; preds = %5
  %11 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.69, i32 noundef 5) #44, !dbg !1624
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %9, ptr noundef %11) #44, !dbg !1624
  unreachable, !dbg !1624

12:                                               ; preds = %5
  %13 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %1) #44, !dbg !1625
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %9, ptr noundef nonnull @.str.21, ptr noundef %13) #44, !dbg !1625
  unreachable, !dbg !1625

14:                                               ; preds = %2
  tail call void @exit(i32 noundef 0) #46, !dbg !1626
  unreachable, !dbg !1626
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #11

; Function Attrs: noreturn nounwind
declare !dbg !1627 void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @isubase32(i8 noundef zeroext %0) local_unnamed_addr #12 !dbg !1631 {
  tail call void @llvm.dbg.value(metadata i8 %0, metadata !1634, metadata !DIExpression()), !dbg !1635
  %2 = zext i8 %0 to i64, !dbg !1636
  %3 = getelementptr inbounds [256 x i8], ptr @base32_to_int, i64 0, i64 %2, !dbg !1637
  %4 = load i8, ptr %3, align 1, !dbg !1637, !tbaa !952
  %5 = icmp sgt i8 %4, -1, !dbg !1638
  ret i1 %5, !dbg !1639
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @isbase32(i8 noundef signext %0) local_unnamed_addr #12 !dbg !1640 {
  tail call void @llvm.dbg.value(metadata i8 %0, metadata !1644, metadata !DIExpression()), !dbg !1645
  tail call void @llvm.dbg.value(metadata i8 %0, metadata !1634, metadata !DIExpression()), !dbg !1646
  %2 = zext i8 %0 to i64, !dbg !1648
  %3 = getelementptr inbounds [256 x i8], ptr @base32_to_int, i64 0, i64 %2, !dbg !1649
  %4 = load i8, ptr %3, align 1, !dbg !1649, !tbaa !952
  %5 = icmp sgt i8 %4, -1, !dbg !1650
  ret i1 %5, !dbg !1651
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @base32_decode_ctx_init(ptr nocapture noundef writeonly %0) local_unnamed_addr #13 !dbg !1652 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1661, metadata !DIExpression()), !dbg !1662
  store i32 0, ptr %0, align 4, !dbg !1663, !tbaa !1244
  ret void, !dbg !1664
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @base32_encode(ptr noalias nocapture noundef readonly %0, i64 noundef %1, ptr noalias nocapture noundef writeonly %2, i64 noundef %3) local_unnamed_addr #14 !dbg !434 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !444, metadata !DIExpression()), !dbg !1665
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !445, metadata !DIExpression()), !dbg !1665
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !446, metadata !DIExpression()), !dbg !1665
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !447, metadata !DIExpression()), !dbg !1665
  %5 = icmp ne i64 %1, 0, !dbg !1666
  %6 = icmp ne i64 %3, 0, !dbg !1667
  %7 = and i1 %5, %6, !dbg !1667
  br i1 %7, label %8, label %155, !dbg !1668

8:                                                ; preds = %4, %148
  %9 = phi i64 [ %146, %148 ], [ %3, %4 ]
  %10 = phi ptr [ %149, %148 ], [ %2, %4 ]
  %11 = phi i64 [ %151, %148 ], [ %1, %4 ]
  %12 = phi ptr [ %154, %148 ], [ %0, %4 ]
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !447, metadata !DIExpression()), !dbg !1665
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !446, metadata !DIExpression()), !dbg !1665
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !445, metadata !DIExpression()), !dbg !1665
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !444, metadata !DIExpression()), !dbg !1665
  %13 = load i8, ptr %12, align 1, !dbg !1669, !tbaa !952
  %14 = lshr i8 %13, 3
  %15 = zext nneg i8 %14 to i64
  %16 = getelementptr inbounds [32 x i8], ptr @base32_encode.b32str, i64 0, i64 %15, !dbg !1671
  %17 = load i8, ptr %16, align 1, !dbg !1671, !tbaa !952
  %18 = getelementptr inbounds i8, ptr %10, i64 1, !dbg !1672
  tail call void @llvm.dbg.value(metadata ptr %18, metadata !446, metadata !DIExpression()), !dbg !1665
  store i8 %17, ptr %10, align 1, !dbg !1673, !tbaa !952
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !447, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1665
  %19 = icmp eq i64 %9, 1, !dbg !1674
  br i1 %19, label %159, label %20, !dbg !1676

20:                                               ; preds = %8
  %21 = zext i8 %13 to i64, !dbg !1677
  %22 = shl nuw nsw i64 %21, 2, !dbg !1678
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !445, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1665
  %23 = icmp eq i64 %11, 1, !dbg !1679
  br i1 %23, label %24, label %29, !dbg !1679

24:                                               ; preds = %20
  %25 = and i64 %22, 28, !dbg !1680
  %26 = getelementptr inbounds [32 x i8], ptr @base32_encode.b32str, i64 0, i64 %25, !dbg !1681
  %27 = load i8, ptr %26, align 4, !dbg !1681, !tbaa !952
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !446, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !1665
  store i8 %27, ptr %18, align 1, !dbg !1682, !tbaa !952
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !447, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !1665
  %28 = icmp eq i64 %9, 2, !dbg !1683
  br i1 %28, label %159, label %39, !dbg !1685

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %12, i64 1, !dbg !1686
  %31 = load i8, ptr %30, align 1, !dbg !1686, !tbaa !952
  %32 = lshr i8 %31, 6
  %33 = zext nneg i8 %32 to i64
  %34 = and i64 %22, 28, !dbg !1680
  %35 = or disjoint i64 %34, %33, !dbg !1680
  %36 = getelementptr inbounds [32 x i8], ptr @base32_encode.b32str, i64 0, i64 %35, !dbg !1681
  %37 = load i8, ptr %36, align 1, !dbg !1681, !tbaa !952
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !446, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !1665
  store i8 %37, ptr %18, align 1, !dbg !1682, !tbaa !952
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !447, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !1665
  %38 = icmp eq i64 %9, 2, !dbg !1683
  br i1 %38, label %159, label %42, !dbg !1685

39:                                               ; preds = %24
  %40 = getelementptr inbounds i8, ptr %10, i64 2, !dbg !1687
  tail call void @llvm.dbg.value(metadata ptr %40, metadata !446, metadata !DIExpression()), !dbg !1665
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !446, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !1665
  store i8 61, ptr %40, align 1, !dbg !1688, !tbaa !952
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !447, metadata !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value)), !dbg !1665
  %41 = icmp eq i64 %9, 3, !dbg !1689
  br i1 %41, label %159, label %70, !dbg !1691

42:                                               ; preds = %29
  %43 = getelementptr inbounds i8, ptr %10, i64 2, !dbg !1687
  tail call void @llvm.dbg.value(metadata ptr %43, metadata !446, metadata !DIExpression()), !dbg !1665
  %44 = lshr i8 %31, 1
  %45 = and i8 %44, 31, !dbg !1692
  %46 = zext nneg i8 %45 to i64
  %47 = getelementptr inbounds [32 x i8], ptr @base32_encode.b32str, i64 0, i64 %46, !dbg !1693
  %48 = load i8, ptr %47, align 1, !dbg !1693, !tbaa !952
  %49 = getelementptr inbounds i8, ptr %10, i64 3, !dbg !1694
  tail call void @llvm.dbg.value(metadata ptr %49, metadata !446, metadata !DIExpression()), !dbg !1665
  store i8 %48, ptr %43, align 1, !dbg !1688, !tbaa !952
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !447, metadata !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value)), !dbg !1665
  %50 = icmp eq i64 %9, 3, !dbg !1689
  br i1 %50, label %159, label %51, !dbg !1691

51:                                               ; preds = %42
  %52 = zext i8 %31 to i64, !dbg !1695
  %53 = shl nuw nsw i64 %52, 4, !dbg !1696
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !445, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !1665
  %54 = icmp eq i64 %11, 2, !dbg !1697
  br i1 %54, label %55, label %60, !dbg !1697

55:                                               ; preds = %51
  %56 = and i64 %53, 16, !dbg !1698
  %57 = getelementptr inbounds [32 x i8], ptr @base32_encode.b32str, i64 0, i64 %56, !dbg !1699
  %58 = load i8, ptr %57, align 16, !dbg !1699, !tbaa !952
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !445, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !1665
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !446, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !1665
  store i8 %58, ptr %49, align 1, !dbg !1700, !tbaa !952
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !447, metadata !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value)), !dbg !1665
  %59 = icmp eq i64 %9, 4, !dbg !1701
  br i1 %59, label %159, label %91, !dbg !1703

60:                                               ; preds = %51
  %61 = getelementptr inbounds i8, ptr %12, i64 2, !dbg !1704
  %62 = load i8, ptr %61, align 1, !dbg !1704, !tbaa !952
  %63 = lshr i8 %62, 4
  %64 = zext nneg i8 %63 to i64
  %65 = and i64 %53, 16, !dbg !1698
  %66 = or disjoint i64 %65, %64, !dbg !1698
  %67 = getelementptr inbounds [32 x i8], ptr @base32_encode.b32str, i64 0, i64 %66, !dbg !1699
  %68 = load i8, ptr %67, align 1, !dbg !1699, !tbaa !952
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !445, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !1665
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !446, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !1665
  store i8 %68, ptr %49, align 1, !dbg !1700, !tbaa !952
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !447, metadata !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value)), !dbg !1665
  %69 = icmp eq i64 %9, 4, !dbg !1701
  br i1 %69, label %159, label %73, !dbg !1703

70:                                               ; preds = %39
  %71 = getelementptr inbounds i8, ptr %10, i64 3, !dbg !1694
  tail call void @llvm.dbg.value(metadata i64 0, metadata !445, metadata !DIExpression()), !dbg !1665
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !446, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !1665
  store i8 61, ptr %71, align 1, !dbg !1700, !tbaa !952
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !447, metadata !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value)), !dbg !1665
  %72 = icmp eq i64 %9, 4, !dbg !1701
  br i1 %72, label %159, label %91, !dbg !1703

73:                                               ; preds = %60
  %74 = getelementptr inbounds i8, ptr %12, i64 2, !dbg !1705
  %75 = load i8, ptr %74, align 1, !dbg !1705, !tbaa !952
  %76 = zext i8 %75 to i64, !dbg !1706
  %77 = shl nuw nsw i64 %76, 1, !dbg !1707
  %78 = add nsw i64 %11, -3, !dbg !1708
  tail call void @llvm.dbg.value(metadata i64 %78, metadata !445, metadata !DIExpression()), !dbg !1665
  %79 = icmp eq i64 %78, 0, !dbg !1708
  br i1 %79, label %85, label %80, !dbg !1708

80:                                               ; preds = %73
  %81 = getelementptr inbounds i8, ptr %12, i64 3, !dbg !1709
  %82 = load i8, ptr %81, align 1, !dbg !1709, !tbaa !952
  %83 = lshr i8 %82, 7
  %84 = zext nneg i8 %83 to i64
  br label %85, !dbg !1708

85:                                               ; preds = %73, %80
  %86 = phi i64 [ %84, %80 ], [ 0, %73 ], !dbg !1708
  %87 = add nuw nsw i64 %86, %77, !dbg !1710
  %88 = and i64 %87, 31, !dbg !1711
  %89 = getelementptr inbounds [32 x i8], ptr @base32_encode.b32str, i64 0, i64 %88, !dbg !1712
  %90 = load i8, ptr %89, align 1, !dbg !1712, !tbaa !952
  br label %91, !dbg !1713

91:                                               ; preds = %55, %70, %85
  %92 = phi i64 [ %78, %85 ], [ 0, %70 ], [ 0, %55 ], !dbg !1714
  %93 = phi i8 [ %90, %85 ], [ 61, %70 ], [ 61, %55 ], !dbg !1713
  %94 = getelementptr inbounds i8, ptr %10, i64 4, !dbg !1715
  tail call void @llvm.dbg.value(metadata i64 %92, metadata !445, metadata !DIExpression()), !dbg !1665
  %95 = getelementptr inbounds i8, ptr %10, i64 5, !dbg !1716
  tail call void @llvm.dbg.value(metadata ptr %95, metadata !446, metadata !DIExpression()), !dbg !1665
  store i8 %93, ptr %94, align 1, !dbg !1717, !tbaa !952
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !447, metadata !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value)), !dbg !1665
  %96 = icmp eq i64 %9, 5, !dbg !1718
  br i1 %96, label %159, label %97, !dbg !1720

97:                                               ; preds = %91
  %98 = icmp eq i64 %92, 0, !dbg !1721
  br i1 %98, label %99, label %101, !dbg !1721

99:                                               ; preds = %97
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !446, metadata !DIExpression(DW_OP_plus_uconst, 6, DW_OP_stack_value)), !dbg !1665
  store i8 61, ptr %95, align 1, !dbg !1722, !tbaa !952
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !447, metadata !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value)), !dbg !1665
  %100 = icmp eq i64 %9, 6, !dbg !1723
  br i1 %100, label %159, label %131, !dbg !1725

101:                                              ; preds = %97
  %102 = getelementptr inbounds i8, ptr %12, i64 3, !dbg !1726
  %103 = load i8, ptr %102, align 1, !dbg !1726, !tbaa !952
  %104 = lshr i8 %103, 2
  %105 = and i8 %104, 31, !dbg !1727
  %106 = zext nneg i8 %105 to i64
  %107 = getelementptr inbounds [32 x i8], ptr @base32_encode.b32str, i64 0, i64 %106, !dbg !1728
  %108 = load i8, ptr %107, align 1, !dbg !1728, !tbaa !952
  %109 = getelementptr inbounds i8, ptr %10, i64 6, !dbg !1729
  tail call void @llvm.dbg.value(metadata ptr %109, metadata !446, metadata !DIExpression()), !dbg !1665
  store i8 %108, ptr %95, align 1, !dbg !1722, !tbaa !952
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !447, metadata !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value)), !dbg !1665
  %110 = icmp eq i64 %9, 6, !dbg !1723
  br i1 %110, label %159, label %111, !dbg !1725

111:                                              ; preds = %101
  %112 = zext i8 %103 to i64, !dbg !1730
  %113 = shl nuw nsw i64 %112, 3, !dbg !1731
  %114 = add nsw i64 %92, -1, !dbg !1732
  tail call void @llvm.dbg.value(metadata i64 %114, metadata !445, metadata !DIExpression()), !dbg !1665
  %115 = icmp eq i64 %114, 0, !dbg !1732
  br i1 %115, label %116, label %121, !dbg !1732

116:                                              ; preds = %111
  %117 = and i64 %113, 24, !dbg !1733
  %118 = getelementptr inbounds [32 x i8], ptr @base32_encode.b32str, i64 0, i64 %117, !dbg !1734
  %119 = load i8, ptr %118, align 8, !dbg !1734, !tbaa !952
  tail call void @llvm.dbg.value(metadata i64 %114, metadata !445, metadata !DIExpression()), !dbg !1665
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !446, metadata !DIExpression(DW_OP_plus_uconst, 7, DW_OP_stack_value)), !dbg !1665
  store i8 %119, ptr %109, align 1, !dbg !1735, !tbaa !952
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !447, metadata !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value)), !dbg !1665
  %120 = icmp eq i64 %9, 7, !dbg !1736
  br i1 %120, label %159, label %141, !dbg !1738

121:                                              ; preds = %111
  %122 = getelementptr inbounds i8, ptr %12, i64 4, !dbg !1739
  %123 = load i8, ptr %122, align 1, !dbg !1739, !tbaa !952
  %124 = lshr i8 %123, 5
  %125 = zext nneg i8 %124 to i64
  %126 = and i64 %113, 24, !dbg !1733
  %127 = or disjoint i64 %126, %125, !dbg !1733
  %128 = getelementptr inbounds [32 x i8], ptr @base32_encode.b32str, i64 0, i64 %127, !dbg !1734
  %129 = load i8, ptr %128, align 1, !dbg !1734, !tbaa !952
  tail call void @llvm.dbg.value(metadata i64 %114, metadata !445, metadata !DIExpression()), !dbg !1665
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !446, metadata !DIExpression(DW_OP_plus_uconst, 7, DW_OP_stack_value)), !dbg !1665
  store i8 %129, ptr %109, align 1, !dbg !1735, !tbaa !952
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !447, metadata !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value)), !dbg !1665
  %130 = icmp eq i64 %9, 7, !dbg !1736
  br i1 %130, label %159, label %134, !dbg !1738

131:                                              ; preds = %99
  %132 = getelementptr inbounds i8, ptr %10, i64 6, !dbg !1729
  tail call void @llvm.dbg.value(metadata i64 0, metadata !445, metadata !DIExpression()), !dbg !1665
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !446, metadata !DIExpression(DW_OP_plus_uconst, 7, DW_OP_stack_value)), !dbg !1665
  store i8 61, ptr %132, align 1, !dbg !1735, !tbaa !952
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !447, metadata !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value)), !dbg !1665
  %133 = icmp eq i64 %9, 7, !dbg !1736
  br i1 %133, label %159, label %141, !dbg !1738

134:                                              ; preds = %121
  %135 = getelementptr inbounds i8, ptr %12, i64 4, !dbg !1740
  %136 = load i8, ptr %135, align 1, !dbg !1740, !tbaa !952
  %137 = and i8 %136, 31, !dbg !1741
  %138 = zext nneg i8 %137 to i64
  %139 = getelementptr inbounds [32 x i8], ptr @base32_encode.b32str, i64 0, i64 %138, !dbg !1742
  %140 = load i8, ptr %139, align 1, !dbg !1742, !tbaa !952
  br label %141, !dbg !1743

141:                                              ; preds = %116, %131, %134
  %142 = phi i1 [ false, %134 ], [ true, %131 ], [ true, %116 ]
  %143 = phi i64 [ %114, %134 ], [ 0, %131 ], [ 0, %116 ]
  %144 = phi i8 [ %140, %134 ], [ 61, %131 ], [ 61, %116 ], !dbg !1743
  %145 = getelementptr inbounds i8, ptr %10, i64 7, !dbg !1744
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !446, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !1665
  store i8 %144, ptr %145, align 1, !dbg !1745, !tbaa !952
  %146 = add nsw i64 %9, -8, !dbg !1746
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !447, metadata !DIExpression()), !dbg !1665
  %147 = icmp eq i64 %146, 0, !dbg !1746
  br i1 %147, label %159, label %148, !dbg !1748

148:                                              ; preds = %141
  %149 = getelementptr inbounds i8, ptr %10, i64 8, !dbg !1749
  tail call void @llvm.dbg.value(metadata ptr %149, metadata !446, metadata !DIExpression()), !dbg !1665
  %150 = add nsw i64 %143, -1
  %151 = select i1 %142, i64 0, i64 %150, !dbg !1750
  tail call void @llvm.dbg.value(metadata i64 %151, metadata !445, metadata !DIExpression()), !dbg !1665
  %152 = icmp eq i64 %151, 0, !dbg !1751
  %153 = select i1 %152, i64 0, i64 5, !dbg !1753
  %154 = getelementptr inbounds i8, ptr %12, i64 %153, !dbg !1753
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !447, metadata !DIExpression()), !dbg !1665
  tail call void @llvm.dbg.value(metadata ptr %154, metadata !444, metadata !DIExpression()), !dbg !1665
  br i1 %152, label %157, label %8, !dbg !1668, !llvm.loop !1754

155:                                              ; preds = %4
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !447, metadata !DIExpression()), !dbg !1665
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !446, metadata !DIExpression()), !dbg !1665
  %156 = icmp eq i64 %3, 0, !dbg !1756
  br i1 %156, label %159, label %157, !dbg !1758

157:                                              ; preds = %148, %155
  %158 = phi ptr [ %2, %155 ], [ %149, %148 ]
  store i8 0, ptr %158, align 1, !dbg !1759, !tbaa !952
  br label %159, !dbg !1760

159:                                              ; preds = %131, %101, %70, %42, %29, %8, %24, %39, %55, %91, %99, %116, %141, %60, %121, %157, %155
  ret void, !dbg !1761
}

; Function Attrs: nofree nounwind uwtable
define dso_local i64 @base32_encode_alloc(ptr nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #15 !dbg !1762 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1766, metadata !DIExpression()), !dbg !1771
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1767, metadata !DIExpression()), !dbg !1771
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1768, metadata !DIExpression()), !dbg !1771
  %4 = sdiv i64 %1, 5, !dbg !1772
  %5 = srem i64 %1, 5, !dbg !1773
  %6 = icmp ne i64 %5, 0, !dbg !1774
  %7 = zext i1 %6 to i64
  %8 = add nsw i64 %4, %7, !dbg !1775
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !1769, metadata !DIExpression()), !dbg !1771
  %9 = add nsw i64 %8, -1152921504606846976, !dbg !1776
  %10 = icmp ult i64 %9, -2305843009213693952, !dbg !1776
  %11 = shl i64 %8, 3, !dbg !1776
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !1770, metadata !DIExpression()), !dbg !1771
  %12 = icmp slt i64 %1, 0
  %13 = or i1 %12, %10, !dbg !1778
  br i1 %13, label %14, label %15, !dbg !1778

14:                                               ; preds = %3
  store ptr null, ptr %2, align 8, !dbg !1779, !tbaa !873
  br label %20, !dbg !1781

15:                                               ; preds = %3
  %16 = or disjoint i64 %11, 1, !dbg !1782
  tail call void @llvm.dbg.value(metadata i64 %16, metadata !1770, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i64 %16, metadata !1783, metadata !DIExpression()), !dbg !1789
  %17 = tail call noalias ptr @malloc(i64 noundef %16) #49, !dbg !1791
  store ptr %17, ptr %2, align 8, !dbg !1792, !tbaa !873
  %18 = icmp eq ptr %17, null, !dbg !1793
  br i1 %18, label %20, label %19, !dbg !1795

19:                                               ; preds = %15
  tail call void @base32_encode(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %17, i64 noundef %16), !dbg !1796
  br label %20, !dbg !1797

20:                                               ; preds = %15, %19, %14
  %21 = phi i64 [ 0, %14 ], [ %11, %19 ], [ %16, %15 ], !dbg !1771
  ret i64 %21, !dbg !1798
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !1799 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @base32_decode_ctx(ptr noundef %0, ptr noalias noundef %1, i64 noundef %2, ptr noalias noundef %3, ptr nocapture noundef %4) local_unnamed_addr #17 !dbg !1802 {
  %6 = alloca ptr, align 8, !DIAssignID !1822
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1809, metadata !DIExpression(), metadata !1822, metadata ptr %6, metadata !DIExpression()), !dbg !1823
  %7 = alloca i64, align 8, !DIAssignID !1824
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1814, metadata !DIExpression(), metadata !1824, metadata ptr %7, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1806, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1807, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !1808, metadata !DIExpression()), !dbg !1823
  store ptr %3, ptr %6, align 8, !tbaa !873, !DIAssignID !1825
  call void @llvm.dbg.assign(metadata ptr %3, metadata !1809, metadata !DIExpression(), metadata !1825, metadata ptr %6, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1810, metadata !DIExpression()), !dbg !1823
  %8 = icmp eq ptr %0, null, !dbg !1826
  tail call void @llvm.dbg.value(metadata i1 %8, metadata !1811, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1823
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1812, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1813, metadata !DIExpression()), !dbg !1823
  br i1 %8, label %13, label %9, !dbg !1827

9:                                                ; preds = %5
  %10 = load i32, ptr %0, align 4, !dbg !1828, !tbaa !1244
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1813, metadata !DIExpression()), !dbg !1823
  %11 = icmp eq i64 %2, 0, !dbg !1831
  tail call void @llvm.dbg.value(metadata i1 %11, metadata !1812, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1823
  %12 = icmp ne i32 %10, 0, !dbg !1832
  br label %13, !dbg !1834

13:                                               ; preds = %9, %5
  %14 = phi i1 [ %12, %9 ], [ false, %5 ], !dbg !1823
  %15 = phi i1 [ %11, %9 ], [ false, %5 ], !dbg !1823
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1812, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i1 %14, metadata !1813, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1823
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #44, !dbg !1835
  %16 = load i64, ptr %4, align 8, !dbg !1836, !tbaa !1328
  store i64 %16, ptr %7, align 8, !dbg !1837, !tbaa !1328, !DIAssignID !1838
  call void @llvm.dbg.assign(metadata i64 %16, metadata !1814, metadata !DIExpression(), metadata !1838, metadata ptr %7, metadata !DIExpression()), !dbg !1823
  %17 = or i1 %14, %15
  %18 = getelementptr inbounds %struct.base32_decode_context, ptr %0, i64 0, i32 1
  br label %19, !dbg !1839

19:                                               ; preds = %107, %13
  %20 = phi i64 [ %16, %13 ], [ %110, %107 ], !dbg !1840
  %21 = phi ptr [ %1, %13 ], [ %108, %107 ]
  %22 = phi i64 [ %2, %13 ], [ %109, %107 ]
  tail call void @llvm.dbg.value(metadata i64 %22, metadata !1808, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !1807, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !1815, metadata !DIExpression()), !dbg !1841
  br i1 %17, label %32, label %23, !dbg !1842

23:                                               ; preds = %19
  tail call void @llvm.dbg.value(metadata i64 %22, metadata !1808, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !1807, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !1815, metadata !DIExpression()), !dbg !1841
  %24 = call fastcc zeroext i1 @decode_8(ptr noundef %21, i64 noundef %22, ptr noundef nonnull %6, ptr noundef nonnull %7), !dbg !1843
  br i1 %24, label %25, label %32, !dbg !1847

25:                                               ; preds = %23, %25
  %26 = phi i64 [ %29, %25 ], [ %22, %23 ]
  %27 = phi ptr [ %28, %25 ], [ %21, %23 ]
  tail call void @llvm.dbg.value(metadata i64 %26, metadata !1808, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata ptr %27, metadata !1807, metadata !DIExpression()), !dbg !1823
  %28 = getelementptr inbounds i8, ptr %27, i64 8, !dbg !1848
  tail call void @llvm.dbg.value(metadata ptr %28, metadata !1807, metadata !DIExpression()), !dbg !1823
  %29 = add nsw i64 %26, -8, !dbg !1849
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !1808, metadata !DIExpression()), !dbg !1823
  %30 = load i64, ptr %7, align 8, !dbg !1850, !tbaa !1328
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !1815, metadata !DIExpression()), !dbg !1841
  %31 = call fastcc zeroext i1 @decode_8(ptr noundef nonnull %28, i64 noundef %29, ptr noundef nonnull %6, ptr noundef nonnull %7), !dbg !1843
  br i1 %31, label %25, label %32, !dbg !1847, !llvm.loop !1851

32:                                               ; preds = %25, %23, %19
  %33 = phi ptr [ %21, %19 ], [ %21, %23 ], [ %28, %25 ]
  %34 = phi i64 [ %22, %19 ], [ %22, %23 ], [ %29, %25 ]
  %35 = phi i64 [ %20, %19 ], [ %20, %23 ], [ %30, %25 ], !dbg !1841
  tail call void @llvm.dbg.value(metadata i64 %34, metadata !1808, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !1807, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !1815, metadata !DIExpression()), !dbg !1841
  %36 = icmp ne i64 %34, 0, !dbg !1854
  %37 = or i1 %15, %36, !dbg !1856
  br i1 %37, label %38, label %111, !dbg !1856

38:                                               ; preds = %32
  br i1 %36, label %39, label %46, !dbg !1857

39:                                               ; preds = %38
  %40 = load i8, ptr %33, align 1, !dbg !1858, !tbaa !952
  %41 = icmp ne i8 %40, 10, !dbg !1859
  %42 = or i1 %8, %41, !dbg !1860
  br i1 %42, label %46, label %43, !dbg !1860

43:                                               ; preds = %39
  %44 = getelementptr inbounds i8, ptr %33, i64 1, !dbg !1861
  tail call void @llvm.dbg.value(metadata ptr %44, metadata !1807, metadata !DIExpression()), !dbg !1823
  %45 = add nsw i64 %34, -1, !dbg !1863
  tail call void @llvm.dbg.value(metadata i64 %45, metadata !1808, metadata !DIExpression()), !dbg !1823
  br label %107, !dbg !1864

46:                                               ; preds = %39, %38
  %47 = load i64, ptr %7, align 8, !dbg !1865, !tbaa !1328
  %48 = sub i64 %47, %35, !dbg !1866
  %49 = load ptr, ptr %6, align 8, !dbg !1867, !tbaa !873
  %50 = getelementptr inbounds i8, ptr %49, i64 %48, !dbg !1867
  store ptr %50, ptr %6, align 8, !dbg !1867, !tbaa !873, !DIAssignID !1868
  call void @llvm.dbg.assign(metadata ptr %50, metadata !1809, metadata !DIExpression(), metadata !1868, metadata ptr %6, metadata !DIExpression()), !dbg !1823
  store i64 %35, ptr %7, align 8, !dbg !1869, !tbaa !1328, !DIAssignID !1870
  call void @llvm.dbg.assign(metadata i64 %35, metadata !1814, metadata !DIExpression(), metadata !1870, metadata ptr %7, metadata !DIExpression()), !dbg !1823
  %51 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !1871
  tail call void @llvm.dbg.value(metadata ptr %51, metadata !1817, metadata !DIExpression()), !dbg !1872
  br i1 %8, label %89, label %52, !dbg !1873

52:                                               ; preds = %46
  call void @llvm.dbg.value(metadata ptr %0, metadata !1874, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata ptr undef, metadata !1880, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata ptr %51, metadata !1881, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata ptr undef, metadata !1882, metadata !DIExpression()), !dbg !1890
  %53 = load i32, ptr %0, align 4, !dbg !1893, !tbaa !1244, !noalias !1895
  switch i32 %53, label %62 [
    i32 8, label %54
    i32 0, label %55
  ], !dbg !1898

54:                                               ; preds = %52
  store i32 0, ptr %0, align 4, !dbg !1899, !tbaa !1244, !noalias !1895
  br label %55, !dbg !1900

55:                                               ; preds = %54, %52
  call void @llvm.dbg.value(metadata ptr %33, metadata !1883, metadata !DIExpression()), !dbg !1901
  %56 = icmp sgt i64 %34, 7, !dbg !1902
  br i1 %56, label %57, label %62, !dbg !1904

57:                                               ; preds = %55
  %58 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) %33, i32 noundef 10, i64 noundef 8) #45, !dbg !1905
  %59 = icmp eq ptr %58, null, !dbg !1906
  br i1 %59, label %60, label %65, !dbg !1907

60:                                               ; preds = %57
  %61 = getelementptr inbounds i8, ptr %33, i64 8, !dbg !1908
  tail call void @llvm.dbg.value(metadata i64 8, metadata !1808, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !1807, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !1821, metadata !DIExpression()), !dbg !1872
  br label %98, !dbg !1910

62:                                               ; preds = %52, %55
  %63 = phi i32 [ 0, %55 ], [ %53, %52 ]
  call void @llvm.dbg.value(metadata ptr %33, metadata !1886, metadata !DIExpression()), !dbg !1912
  %64 = icmp sgt i64 %34, 0, !dbg !1913
  br i1 %64, label %65, label %85, !dbg !1914

65:                                               ; preds = %57, %62
  %66 = phi i32 [ 0, %57 ], [ %63, %62 ]
  br label %67, !dbg !1915

67:                                               ; preds = %65, %75
  %68 = phi i32 [ %66, %65 ], [ %79, %75 ]
  %69 = phi ptr [ %33, %65 ], [ %72, %75 ]
  br label %70, !dbg !1915

70:                                               ; preds = %67, %83
  %71 = phi ptr [ %72, %83 ], [ %69, %67 ]
  call void @llvm.dbg.value(metadata ptr %71, metadata !1886, metadata !DIExpression()), !dbg !1912
  %72 = getelementptr inbounds i8, ptr %71, i64 1, !dbg !1916
  call void @llvm.dbg.value(metadata ptr %72, metadata !1886, metadata !DIExpression()), !dbg !1912
  %73 = load i8, ptr %71, align 1, !dbg !1917, !tbaa !952
  call void @llvm.dbg.value(metadata i8 %73, metadata !1888, metadata !DIExpression()), !dbg !1918
  %74 = icmp eq i8 %73, 10, !dbg !1919
  br i1 %74, label %83, label %75, !dbg !1915

75:                                               ; preds = %70
  %76 = add nsw i32 %68, 1, !dbg !1921
  store i32 %76, ptr %0, align 4, !dbg !1921, !tbaa !1244, !noalias !1895
  %77 = sext i32 %68 to i64, !dbg !1923
  %78 = getelementptr inbounds %struct.base32_decode_context, ptr %0, i64 0, i32 1, i64 %77, !dbg !1923
  store i8 %73, ptr %78, align 1, !dbg !1924, !tbaa !952, !noalias !1895
  %79 = load i32, ptr %0, align 4, !dbg !1925, !tbaa !1244, !noalias !1895
  %80 = icmp ne i32 %79, 8, !dbg !1927
  call void @llvm.dbg.value(metadata ptr %72, metadata !1886, metadata !DIExpression()), !dbg !1912
  %81 = icmp ult ptr %72, %51
  %82 = select i1 %80, i1 %81, i1 false, !dbg !1928
  br i1 %82, label %67, label %85, !dbg !1928

83:                                               ; preds = %70
  call void @llvm.dbg.value(metadata ptr %72, metadata !1886, metadata !DIExpression()), !dbg !1912
  %84 = icmp ult ptr %72, %51, !dbg !1913
  br i1 %84, label %70, label %85, !dbg !1914

85:                                               ; preds = %83, %75, %62
  %86 = phi i32 [ %63, %62 ], [ %68, %83 ], [ %79, %75 ], !dbg !1929
  %87 = phi ptr [ %33, %62 ], [ %72, %75 ], [ %72, %83 ], !dbg !1912
  call void @llvm.dbg.value(metadata ptr %87, metadata !1886, metadata !DIExpression()), !dbg !1912
  tail call void @llvm.dbg.value(metadata ptr %87, metadata !1807, metadata !DIExpression()), !dbg !1823
  %88 = sext i32 %86 to i64, !dbg !1930
  tail call void @llvm.dbg.value(metadata i64 %88, metadata !1808, metadata !DIExpression()), !dbg !1823
  br label %89

89:                                               ; preds = %85, %46
  %90 = phi ptr [ %33, %46 ], [ %87, %85 ]
  %91 = phi i64 [ %34, %46 ], [ %88, %85 ]
  %92 = phi ptr [ %33, %46 ], [ %18, %85 ], !dbg !1931
  tail call void @llvm.dbg.value(metadata i64 %91, metadata !1808, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !1807, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata ptr %92, metadata !1821, metadata !DIExpression()), !dbg !1872
  %93 = icmp eq i64 %91, 0, !dbg !1932
  br i1 %93, label %111, label %94, !dbg !1933

94:                                               ; preds = %89
  %95 = icmp sgt i64 %91, 7, !dbg !1934
  %96 = or i1 %15, %95, !dbg !1910
  %97 = or i1 %8, %96, !dbg !1910
  br i1 %97, label %98, label %111, !dbg !1910

98:                                               ; preds = %60, %94
  %99 = phi ptr [ %61, %60 ], [ %90, %94 ]
  %100 = phi i64 [ 8, %60 ], [ %91, %94 ]
  %101 = phi ptr [ %33, %60 ], [ %92, %94 ]
  %102 = call fastcc zeroext i1 @decode_8(ptr noundef %101, i64 noundef %100, ptr noundef nonnull %6, ptr noundef nonnull %7), !dbg !1935
  br i1 %102, label %103, label %111, !dbg !1937

103:                                              ; preds = %98
  %104 = ptrtoint ptr %51 to i64, !dbg !1938
  %105 = ptrtoint ptr %99 to i64, !dbg !1938
  %106 = sub i64 %104, %105, !dbg !1938
  tail call void @llvm.dbg.value(metadata i64 %106, metadata !1808, metadata !DIExpression()), !dbg !1823
  br label %107

107:                                              ; preds = %43, %103
  %108 = phi ptr [ %99, %103 ], [ %44, %43 ]
  %109 = phi i64 [ %106, %103 ], [ %45, %43 ]
  tail call void @llvm.dbg.value(metadata i64 %109, metadata !1808, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata ptr %108, metadata !1807, metadata !DIExpression()), !dbg !1823
  %110 = load i64, ptr %7, align 8, !dbg !1840, !tbaa !1328
  br label %19

111:                                              ; preds = %89, %94, %98, %32
  %112 = phi i1 [ true, %32 ], [ true, %89 ], [ true, %94 ], [ false, %98 ]
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !1808, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata ptr poison, metadata !1807, metadata !DIExpression()), !dbg !1823
  %113 = load i64, ptr %7, align 8, !dbg !1939, !tbaa !1328
  %114 = load i64, ptr %4, align 8, !dbg !1940, !tbaa !1328
  %115 = sub nsw i64 %114, %113, !dbg !1940
  store i64 %115, ptr %4, align 8, !dbg !1940, !tbaa !1328
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #44, !dbg !1941
  ret i1 %112, !dbg !1942
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i1 @decode_8(ptr noalias nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) unnamed_addr #18 !dbg !1943 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1947, metadata !DIExpression()), !dbg !1952
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1948, metadata !DIExpression()), !dbg !1952
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1949, metadata !DIExpression()), !dbg !1952
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1950, metadata !DIExpression()), !dbg !1952
  %5 = icmp slt i64 %1, 8, !dbg !1953
  br i1 %5, label %184, label %6, !dbg !1955

6:                                                ; preds = %4
  %7 = load i8, ptr %0, align 1, !dbg !1956, !tbaa !952
  tail call void @llvm.dbg.value(metadata i8 %7, metadata !1644, metadata !DIExpression()), !dbg !1958
  tail call void @llvm.dbg.value(metadata i8 %7, metadata !1634, metadata !DIExpression()), !dbg !1960
  %8 = zext i8 %7 to i64, !dbg !1962
  %9 = getelementptr inbounds [256 x i8], ptr @base32_to_int, i64 0, i64 %8, !dbg !1963
  %10 = load i8, ptr %9, align 1, !dbg !1963, !tbaa !952
  %11 = icmp sgt i8 %10, -1, !dbg !1964
  br i1 %11, label %12, label %184, !dbg !1965

12:                                               ; preds = %6
  %13 = getelementptr inbounds i8, ptr %0, i64 1, !dbg !1966
  %14 = load i8, ptr %13, align 1, !dbg !1966, !tbaa !952
  tail call void @llvm.dbg.value(metadata i8 %14, metadata !1644, metadata !DIExpression()), !dbg !1967
  tail call void @llvm.dbg.value(metadata i8 %14, metadata !1634, metadata !DIExpression()), !dbg !1969
  %15 = zext i8 %14 to i64, !dbg !1971
  %16 = getelementptr inbounds [256 x i8], ptr @base32_to_int, i64 0, i64 %15, !dbg !1972
  %17 = load i8, ptr %16, align 1, !dbg !1972, !tbaa !952
  %18 = icmp sgt i8 %17, -1, !dbg !1973
  br i1 %18, label %19, label %184, !dbg !1974

19:                                               ; preds = %12
  %20 = load ptr, ptr %2, align 8, !dbg !1975, !tbaa !873
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !1951, metadata !DIExpression()), !dbg !1952
  %21 = load i64, ptr %3, align 8, !dbg !1976, !tbaa !1328
  %22 = icmp eq i64 %21, 0, !dbg !1976
  br i1 %22, label %30, label %23, !dbg !1978

23:                                               ; preds = %19
  %24 = shl i8 %10, 3, !dbg !1979
  %25 = lshr i8 %17, 2, !dbg !1981
  %26 = or i8 %25, %24, !dbg !1982
  %27 = getelementptr inbounds i8, ptr %20, i64 1, !dbg !1983
  tail call void @llvm.dbg.value(metadata ptr %27, metadata !1951, metadata !DIExpression()), !dbg !1952
  store i8 %26, ptr %20, align 1, !dbg !1984, !tbaa !952
  %28 = load i64, ptr %3, align 8, !dbg !1985, !tbaa !1328
  %29 = add nsw i64 %28, -1, !dbg !1985
  store i64 %29, ptr %3, align 8, !dbg !1985, !tbaa !1328
  br label %30, !dbg !1986

30:                                               ; preds = %23, %19
  %31 = phi i64 [ %29, %23 ], [ 0, %19 ]
  %32 = phi ptr [ %27, %23 ], [ %20, %19 ], !dbg !1952
  tail call void @llvm.dbg.value(metadata ptr %32, metadata !1951, metadata !DIExpression()), !dbg !1952
  %33 = getelementptr inbounds i8, ptr %0, i64 2, !dbg !1987
  %34 = load i8, ptr %33, align 1, !dbg !1987, !tbaa !952
  %35 = icmp eq i8 %34, 61, !dbg !1989
  br i1 %35, label %36, label %59, !dbg !1990

36:                                               ; preds = %30
  %37 = getelementptr inbounds i8, ptr %0, i64 3, !dbg !1991
  %38 = load i8, ptr %37, align 1, !dbg !1991, !tbaa !952
  %39 = icmp eq i8 %38, 61, !dbg !1994
  br i1 %39, label %40, label %181, !dbg !1995

40:                                               ; preds = %36
  %41 = getelementptr inbounds i8, ptr %0, i64 4, !dbg !1996
  %42 = load i8, ptr %41, align 1, !dbg !1996, !tbaa !952
  %43 = icmp eq i8 %42, 61, !dbg !1997
  br i1 %43, label %44, label %181, !dbg !1998

44:                                               ; preds = %40
  %45 = getelementptr inbounds i8, ptr %0, i64 5, !dbg !1999
  %46 = load i8, ptr %45, align 1, !dbg !1999, !tbaa !952
  %47 = icmp eq i8 %46, 61, !dbg !2000
  br i1 %47, label %48, label %181, !dbg !2001

48:                                               ; preds = %44
  %49 = getelementptr inbounds i8, ptr %0, i64 6, !dbg !2002
  %50 = load i8, ptr %49, align 1, !dbg !2002, !tbaa !952
  %51 = icmp eq i8 %50, 61, !dbg !2003
  br i1 %51, label %52, label %181, !dbg !2004

52:                                               ; preds = %48
  %53 = getelementptr inbounds i8, ptr %0, i64 7, !dbg !2005
  %54 = load i8, ptr %53, align 1, !dbg !2005, !tbaa !952
  %55 = icmp eq i8 %54, 61, !dbg !2006
  %56 = and i8 %17, 3
  %57 = icmp eq i8 %56, 0
  %58 = and i1 %55, %57, !dbg !2007
  br i1 %58, label %179, label %181, !dbg !2007

59:                                               ; preds = %30
  tail call void @llvm.dbg.value(metadata i8 %34, metadata !1644, metadata !DIExpression()), !dbg !2008
  tail call void @llvm.dbg.value(metadata i8 %34, metadata !1634, metadata !DIExpression()), !dbg !2012
  %60 = zext i8 %34 to i64, !dbg !2014
  %61 = getelementptr inbounds [256 x i8], ptr @base32_to_int, i64 0, i64 %60, !dbg !2015
  %62 = load i8, ptr %61, align 1, !dbg !2015, !tbaa !952
  %63 = icmp sgt i8 %62, -1, !dbg !2016
  br i1 %63, label %64, label %181, !dbg !2017

64:                                               ; preds = %59
  %65 = getelementptr inbounds i8, ptr %0, i64 3, !dbg !2018
  %66 = load i8, ptr %65, align 1, !dbg !2018, !tbaa !952
  tail call void @llvm.dbg.value(metadata i8 %66, metadata !1644, metadata !DIExpression()), !dbg !2019
  tail call void @llvm.dbg.value(metadata i8 %66, metadata !1634, metadata !DIExpression()), !dbg !2021
  %67 = zext i8 %66 to i64, !dbg !2023
  %68 = getelementptr inbounds [256 x i8], ptr @base32_to_int, i64 0, i64 %67, !dbg !2024
  %69 = load i8, ptr %68, align 1, !dbg !2024, !tbaa !952
  %70 = icmp sgt i8 %69, -1, !dbg !2025
  br i1 %70, label %71, label %181, !dbg !2026

71:                                               ; preds = %64
  %72 = icmp eq i64 %31, 0, !dbg !2027
  br i1 %72, label %83, label %73, !dbg !2029

73:                                               ; preds = %71
  %74 = shl i8 %17, 6, !dbg !2030
  %75 = shl nuw i8 %62, 1, !dbg !2032
  %76 = or i8 %75, %74, !dbg !2033
  %77 = lshr i8 %69, 4, !dbg !2034
  %78 = or i8 %76, %77, !dbg !2035
  %79 = getelementptr inbounds i8, ptr %32, i64 1, !dbg !2036
  tail call void @llvm.dbg.value(metadata ptr %79, metadata !1951, metadata !DIExpression()), !dbg !1952
  store i8 %78, ptr %32, align 1, !dbg !2037, !tbaa !952
  %80 = load i64, ptr %3, align 8, !dbg !2038, !tbaa !1328
  %81 = add nsw i64 %80, -1, !dbg !2038
  store i64 %81, ptr %3, align 8, !dbg !2038, !tbaa !1328
  %82 = icmp eq i64 %81, 0, !dbg !2039
  br label %83, !dbg !2043

83:                                               ; preds = %73, %71
  %84 = phi i1 [ %82, %73 ], [ true, %71 ]
  %85 = phi ptr [ %79, %73 ], [ %32, %71 ], !dbg !1952
  tail call void @llvm.dbg.value(metadata ptr %85, metadata !1951, metadata !DIExpression()), !dbg !1952
  %86 = getelementptr inbounds i8, ptr %0, i64 4, !dbg !2044
  %87 = load i8, ptr %86, align 1, !dbg !2044, !tbaa !952
  %88 = icmp eq i8 %87, 61, !dbg !2045
  br i1 %88, label %89, label %104, !dbg !2046

89:                                               ; preds = %83
  %90 = getelementptr inbounds i8, ptr %0, i64 5, !dbg !2047
  %91 = load i8, ptr %90, align 1, !dbg !2047, !tbaa !952
  %92 = icmp eq i8 %91, 61, !dbg !2050
  br i1 %92, label %93, label %181, !dbg !2051

93:                                               ; preds = %89
  %94 = getelementptr inbounds i8, ptr %0, i64 6, !dbg !2052
  %95 = load i8, ptr %94, align 1, !dbg !2052, !tbaa !952
  %96 = icmp eq i8 %95, 61, !dbg !2053
  br i1 %96, label %97, label %181, !dbg !2054

97:                                               ; preds = %93
  %98 = getelementptr inbounds i8, ptr %0, i64 7, !dbg !2055
  %99 = load i8, ptr %98, align 1, !dbg !2055, !tbaa !952
  %100 = icmp eq i8 %99, 61, !dbg !2056
  %101 = and i8 %66, -17
  %102 = icmp eq i8 %101, 65
  %103 = and i1 %100, %102, !dbg !2057
  br i1 %103, label %179, label %181, !dbg !2057

104:                                              ; preds = %83
  tail call void @llvm.dbg.value(metadata i8 %87, metadata !1644, metadata !DIExpression()), !dbg !2058
  tail call void @llvm.dbg.value(metadata i8 %87, metadata !1634, metadata !DIExpression()), !dbg !2061
  %105 = zext i8 %87 to i64, !dbg !2063
  %106 = getelementptr inbounds [256 x i8], ptr @base32_to_int, i64 0, i64 %105, !dbg !2064
  %107 = load i8, ptr %106, align 1, !dbg !2064, !tbaa !952
  %108 = icmp sgt i8 %107, -1, !dbg !2065
  br i1 %108, label %109, label %181, !dbg !2066

109:                                              ; preds = %104
  br i1 %84, label %118, label %110, !dbg !2067

110:                                              ; preds = %109
  %111 = shl i8 %69, 4, !dbg !2068
  %112 = lshr i8 %107, 1, !dbg !2070
  %113 = or i8 %112, %111, !dbg !2071
  %114 = getelementptr inbounds i8, ptr %85, i64 1, !dbg !2072
  tail call void @llvm.dbg.value(metadata ptr %114, metadata !1951, metadata !DIExpression()), !dbg !1952
  store i8 %113, ptr %85, align 1, !dbg !2073, !tbaa !952
  %115 = load i64, ptr %3, align 8, !dbg !2074, !tbaa !1328
  %116 = add nsw i64 %115, -1, !dbg !2074
  store i64 %116, ptr %3, align 8, !dbg !2074, !tbaa !1328
  %117 = icmp eq i64 %116, 0, !dbg !2075
  br label %118, !dbg !2079

118:                                              ; preds = %110, %109
  %119 = phi i1 [ %117, %110 ], [ true, %109 ]
  %120 = phi ptr [ %114, %110 ], [ %85, %109 ], !dbg !2080
  tail call void @llvm.dbg.value(metadata ptr %120, metadata !1951, metadata !DIExpression()), !dbg !1952
  %121 = getelementptr inbounds i8, ptr %0, i64 5, !dbg !2081
  %122 = load i8, ptr %121, align 1, !dbg !2081, !tbaa !952
  %123 = icmp eq i8 %122, 61, !dbg !2082
  br i1 %123, label %124, label %135, !dbg !2083

124:                                              ; preds = %118
  %125 = getelementptr inbounds i8, ptr %0, i64 6, !dbg !2084
  %126 = load i8, ptr %125, align 1, !dbg !2084, !tbaa !952
  %127 = icmp eq i8 %126, 61, !dbg !2087
  br i1 %127, label %128, label %181, !dbg !2088

128:                                              ; preds = %124
  %129 = getelementptr inbounds i8, ptr %0, i64 7, !dbg !2089
  %130 = load i8, ptr %129, align 1, !dbg !2089, !tbaa !952
  %131 = icmp eq i8 %130, 61, !dbg !2090
  %132 = and i8 %107, 1
  %133 = icmp eq i8 %132, 0
  %134 = and i1 %131, %133, !dbg !2091
  br i1 %134, label %179, label %181, !dbg !2091

135:                                              ; preds = %118
  tail call void @llvm.dbg.value(metadata i8 %122, metadata !1644, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i8 %122, metadata !1634, metadata !DIExpression()), !dbg !2095
  %136 = zext i8 %122 to i64, !dbg !2097
  %137 = getelementptr inbounds [256 x i8], ptr @base32_to_int, i64 0, i64 %136, !dbg !2098
  %138 = load i8, ptr %137, align 1, !dbg !2098, !tbaa !952
  %139 = icmp sgt i8 %138, -1, !dbg !2099
  br i1 %139, label %140, label %181, !dbg !2100

140:                                              ; preds = %135
  %141 = getelementptr inbounds i8, ptr %0, i64 6, !dbg !2101
  %142 = load i8, ptr %141, align 1, !dbg !2101, !tbaa !952
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !1644, metadata !DIExpression()), !dbg !2102
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !1634, metadata !DIExpression()), !dbg !2104
  %143 = zext i8 %142 to i64, !dbg !2106
  %144 = getelementptr inbounds [256 x i8], ptr @base32_to_int, i64 0, i64 %143, !dbg !2107
  %145 = load i8, ptr %144, align 1, !dbg !2107, !tbaa !952
  %146 = icmp sgt i8 %145, -1, !dbg !2108
  br i1 %146, label %147, label %181, !dbg !2109

147:                                              ; preds = %140
  br i1 %119, label %158, label %148, !dbg !2110

148:                                              ; preds = %147
  %149 = shl i8 %107, 7, !dbg !2111
  %150 = shl i8 %138, 2, !dbg !2113
  %151 = or i8 %150, %149, !dbg !2114
  %152 = lshr i8 %145, 3, !dbg !2115
  %153 = or i8 %151, %152, !dbg !2116
  %154 = getelementptr inbounds i8, ptr %120, i64 1, !dbg !2117
  tail call void @llvm.dbg.value(metadata ptr %154, metadata !1951, metadata !DIExpression()), !dbg !1952
  store i8 %153, ptr %120, align 1, !dbg !2118, !tbaa !952
  %155 = load i64, ptr %3, align 8, !dbg !2119, !tbaa !1328
  %156 = add nsw i64 %155, -1, !dbg !2119
  store i64 %156, ptr %3, align 8, !dbg !2119, !tbaa !1328
  %157 = icmp eq i64 %156, 0, !dbg !2120
  br label %158, !dbg !2124

158:                                              ; preds = %148, %147
  %159 = phi i1 [ %157, %148 ], [ true, %147 ]
  %160 = phi ptr [ %154, %148 ], [ %120, %147 ], !dbg !2125
  tail call void @llvm.dbg.value(metadata ptr %160, metadata !1951, metadata !DIExpression()), !dbg !1952
  %161 = getelementptr inbounds i8, ptr %0, i64 7, !dbg !2126
  %162 = load i8, ptr %161, align 1, !dbg !2126, !tbaa !952
  %163 = icmp eq i8 %162, 61, !dbg !2127
  br i1 %163, label %176, label %164, !dbg !2128

164:                                              ; preds = %158
  tail call void @llvm.dbg.value(metadata i8 %162, metadata !1644, metadata !DIExpression()), !dbg !2129
  tail call void @llvm.dbg.value(metadata i8 %162, metadata !1634, metadata !DIExpression()), !dbg !2132
  %165 = zext i8 %162 to i64, !dbg !2134
  %166 = getelementptr inbounds [256 x i8], ptr @base32_to_int, i64 0, i64 %165, !dbg !2135
  %167 = load i8, ptr %166, align 1, !dbg !2135, !tbaa !952
  %168 = icmp sgt i8 %167, -1, !dbg !2136
  br i1 %168, label %169, label %181, !dbg !2137

169:                                              ; preds = %164
  br i1 %159, label %179, label %170, !dbg !2138

170:                                              ; preds = %169
  %171 = shl i8 %145, 5, !dbg !2139
  %172 = or i8 %167, %171, !dbg !2141
  %173 = getelementptr inbounds i8, ptr %160, i64 1, !dbg !2142
  tail call void @llvm.dbg.value(metadata ptr %173, metadata !1951, metadata !DIExpression()), !dbg !1952
  store i8 %172, ptr %160, align 1, !dbg !2143, !tbaa !952
  %174 = load i64, ptr %3, align 8, !dbg !2144, !tbaa !1328
  %175 = add nsw i64 %174, -1, !dbg !2144
  store i64 %175, ptr %3, align 8, !dbg !2144, !tbaa !1328
  br label %179, !dbg !2145

176:                                              ; preds = %158
  %177 = and i8 %145, 7, !dbg !2146
  %178 = icmp eq i8 %177, 0, !dbg !2146
  br i1 %178, label %179, label %181, !dbg !2149

179:                                              ; preds = %128, %97, %52, %170, %169, %176
  %180 = phi ptr [ %173, %170 ], [ %160, %169 ], [ %160, %176 ], [ %32, %52 ], [ %85, %97 ], [ %120, %128 ], !dbg !1952
  tail call void @llvm.dbg.value(metadata ptr %180, metadata !1951, metadata !DIExpression()), !dbg !1952
  br label %181, !dbg !2150

181:                                              ; preds = %176, %164, %140, %135, %128, %124, %104, %97, %93, %89, %64, %59, %52, %48, %44, %40, %36, %179
  %182 = phi ptr [ %180, %179 ], [ %32, %36 ], [ %32, %40 ], [ %32, %44 ], [ %32, %48 ], [ %32, %52 ], [ %32, %59 ], [ %32, %64 ], [ %85, %89 ], [ %85, %93 ], [ %85, %97 ], [ %85, %104 ], [ %120, %124 ], [ %120, %128 ], [ %120, %135 ], [ %120, %140 ], [ %160, %164 ], [ %160, %176 ]
  %183 = phi i1 [ true, %179 ], [ false, %36 ], [ false, %40 ], [ false, %44 ], [ false, %48 ], [ false, %52 ], [ false, %59 ], [ false, %64 ], [ false, %89 ], [ false, %93 ], [ false, %97 ], [ false, %104 ], [ false, %124 ], [ false, %128 ], [ false, %135 ], [ false, %140 ], [ false, %164 ], [ false, %176 ]
  store ptr %182, ptr %2, align 8, !dbg !1952, !tbaa !873
  br label %184, !dbg !2151

184:                                              ; preds = %181, %6, %12, %4
  %185 = phi i1 [ false, %4 ], [ false, %12 ], [ false, %6 ], [ %183, %181 ], !dbg !1952
  ret i1 %185, !dbg !2151
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2152 ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @base32_decode_alloc_ctx(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nocapture noundef %3, ptr noundef writeonly %4) local_unnamed_addr #19 !dbg !2155 {
  %6 = alloca i64, align 8, !DIAssignID !2165
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2164, metadata !DIExpression(), metadata !2165, metadata ptr %6, metadata !DIExpression()), !dbg !2166
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2159, metadata !DIExpression()), !dbg !2166
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2160, metadata !DIExpression()), !dbg !2166
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2161, metadata !DIExpression()), !dbg !2166
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2162, metadata !DIExpression()), !dbg !2166
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2163, metadata !DIExpression()), !dbg !2166
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #44, !dbg !2167
  %7 = ashr i64 %2, 3, !dbg !2168
  %8 = mul nsw i64 %7, 5, !dbg !2169
  %9 = add nsw i64 %8, 5, !dbg !2169
  store i64 %9, ptr %6, align 8, !dbg !2170, !tbaa !1328, !DIAssignID !2171
  call void @llvm.dbg.assign(metadata i64 %9, metadata !2164, metadata !DIExpression(), metadata !2171, metadata ptr %6, metadata !DIExpression()), !dbg !2166
  call void @llvm.dbg.value(metadata i64 %9, metadata !1783, metadata !DIExpression()), !dbg !2172
  %10 = tail call noalias ptr @malloc(i64 noundef %9) #49, !dbg !2174
  store ptr %10, ptr %3, align 8, !dbg !2175, !tbaa !873
  %11 = icmp eq ptr %10, null, !dbg !2176
  br i1 %11, label %20, label %12, !dbg !2178

12:                                               ; preds = %5
  %13 = call zeroext i1 @base32_decode_ctx(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %10, ptr noundef nonnull %6), !dbg !2179
  br i1 %13, label %16, label %14, !dbg !2181

14:                                               ; preds = %12
  %15 = load ptr, ptr %3, align 8, !dbg !2182, !tbaa !873
  tail call void @free(ptr noundef %15) #44, !dbg !2184
  store ptr null, ptr %3, align 8, !dbg !2185, !tbaa !873
  br label %20, !dbg !2186

16:                                               ; preds = %12
  %17 = icmp eq ptr %4, null, !dbg !2187
  br i1 %17, label %20, label %18, !dbg !2189

18:                                               ; preds = %16
  %19 = load i64, ptr %6, align 8, !dbg !2190, !tbaa !1328
  store i64 %19, ptr %4, align 8, !dbg !2191, !tbaa !1328
  br label %20, !dbg !2192

20:                                               ; preds = %16, %18, %5, %14
  %21 = phi i1 [ false, %14 ], [ true, %5 ], [ true, %18 ], [ true, %16 ], !dbg !2166
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #44, !dbg !2193
  ret i1 %21, !dbg !2193
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2194 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #20

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #21 !dbg !2197 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2199, metadata !DIExpression()), !dbg !2200
  store ptr %0, ptr @file_name, align 8, !dbg !2201, !tbaa !873
  ret void, !dbg !2202
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #21 !dbg !2203 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2207, metadata !DIExpression()), !dbg !2208
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !2209, !tbaa !2210
  ret void, !dbg !2212
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #19 !dbg !2213 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !2218, !tbaa !873
  %2 = tail call i32 @close_stream(ptr noundef %1) #44, !dbg !2219
  %3 = icmp eq i32 %2, 0, !dbg !2220
  br i1 %3, label %22, label %4, !dbg !2221

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !2222, !tbaa !2210, !range !2223, !noundef !911
  %6 = icmp eq i8 %5, 0, !dbg !2222
  br i1 %6, label %11, label %7, !dbg !2224

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #47, !dbg !2225
  %9 = load i32, ptr %8, align 4, !dbg !2225, !tbaa !943
  %10 = icmp eq i32 %9, 32, !dbg !2226
  br i1 %10, label %22, label %11, !dbg !2227

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.1.38, i32 noundef 5) #44, !dbg !2228
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !2215, metadata !DIExpression()), !dbg !2229
  %13 = load ptr, ptr @file_name, align 8, !dbg !2230, !tbaa !873
  %14 = icmp eq ptr %13, null, !dbg !2230
  %15 = tail call ptr @__errno_location() #47, !dbg !2232
  %16 = load i32, ptr %15, align 4, !dbg !2232, !tbaa !943
  br i1 %14, label %19, label %17, !dbg !2233

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #44, !dbg !2234
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.39, ptr noundef %18, ptr noundef %12) #44, !dbg !2234
  br label %20, !dbg !2234

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.40, ptr noundef %12) #44, !dbg !2235
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !2236, !tbaa !943
  tail call void @_exit(i32 noundef %21) #46, !dbg !2237
  unreachable, !dbg !2237

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !2238, !tbaa !873
  %24 = tail call i32 @close_stream(ptr noundef %23) #44, !dbg !2240
  %25 = icmp eq i32 %24, 0, !dbg !2241
  br i1 %25, label %28, label %26, !dbg !2242

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !2243, !tbaa !943
  tail call void @_exit(i32 noundef %27) #46, !dbg !2244
  unreachable, !dbg !2244

28:                                               ; preds = %22
  ret void, !dbg !2245
}

; Function Attrs: noreturn
declare !dbg !2246 void @_exit(i32 noundef) local_unnamed_addr #22

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #23 !dbg !2248 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2252, metadata !DIExpression()), !dbg !2256
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2253, metadata !DIExpression()), !dbg !2256
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2254, metadata !DIExpression()), !dbg !2256
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2255, metadata !DIExpression()), !dbg !2256
  tail call fastcc void @flush_stdout(), !dbg !2257
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !2258, !tbaa !873
  %6 = icmp eq ptr %5, null, !dbg !2258
  br i1 %6, label %8, label %7, !dbg !2260

7:                                                ; preds = %4
  tail call void %5() #44, !dbg !2261
  br label %12, !dbg !2261

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !2262, !tbaa !873
  %10 = tail call ptr @getprogname() #45, !dbg !2262
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.51, ptr noundef %10) #44, !dbg !2262
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !2264
  ret void, !dbg !2265
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #19 !dbg !2266 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2268, metadata !DIExpression()), !dbg !2269
  call void @llvm.dbg.value(metadata i32 1, metadata !2270, metadata !DIExpression()), !dbg !2273
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #44, !dbg !2276
  %2 = icmp slt i32 %1, 0, !dbg !2277
  br i1 %2, label %6, label %3, !dbg !2278

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !2279, !tbaa !873
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #44, !dbg !2279
  br label %6, !dbg !2279

6:                                                ; preds = %3, %0
  ret void, !dbg !2280
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #19 !dbg !2281 {
  %5 = alloca [1024 x i8], align 16, !DIAssignID !2287
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2283, metadata !DIExpression()), !dbg !2288
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2284, metadata !DIExpression()), !dbg !2288
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2285, metadata !DIExpression()), !dbg !2288
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2286, metadata !DIExpression()), !dbg !2288
  %6 = load ptr, ptr @stderr, align 8, !dbg !2289, !tbaa !873
  call void @llvm.dbg.value(metadata ptr %6, metadata !2290, metadata !DIExpression()), !dbg !2332
  call void @llvm.dbg.value(metadata ptr %2, metadata !2330, metadata !DIExpression()), !dbg !2332
  call void @llvm.dbg.value(metadata ptr %3, metadata !2331, metadata !DIExpression()), !dbg !2332
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #44, !dbg !2334
  %8 = load i32, ptr @error_message_count, align 4, !dbg !2335, !tbaa !943
  %9 = add i32 %8, 1, !dbg !2335
  store i32 %9, ptr @error_message_count, align 4, !dbg !2335, !tbaa !943
  %10 = icmp eq i32 %1, 0, !dbg !2336
  br i1 %10, label %20, label %11, !dbg !2338

11:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2339, metadata !DIExpression(), metadata !2287, metadata ptr %5, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i32 %1, metadata !2342, metadata !DIExpression()), !dbg !2347
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #44, !dbg !2349
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #44, !dbg !2350
  call void @llvm.dbg.value(metadata ptr %12, metadata !2343, metadata !DIExpression()), !dbg !2347
  %13 = icmp eq ptr %12, null, !dbg !2351
  br i1 %13, label %14, label %16, !dbg !2353

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.52, ptr noundef nonnull @.str.5.53, i32 noundef 5) #44, !dbg !2354
  call void @llvm.dbg.value(metadata ptr %15, metadata !2343, metadata !DIExpression()), !dbg !2347
  br label %16, !dbg !2355

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !2347
  call void @llvm.dbg.value(metadata ptr %17, metadata !2343, metadata !DIExpression()), !dbg !2347
  %18 = load ptr, ptr @stderr, align 8, !dbg !2356, !tbaa !873
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.54, ptr noundef %17) #44, !dbg !2356
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #44, !dbg !2357
  br label %20, !dbg !2358

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !2359, !tbaa !873
  call void @llvm.dbg.value(metadata i32 10, metadata !2360, metadata !DIExpression()), !dbg !2366
  call void @llvm.dbg.value(metadata ptr %21, metadata !2365, metadata !DIExpression()), !dbg !2366
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !2368
  %23 = load ptr, ptr %22, align 8, !dbg !2368, !tbaa !1532
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !2368
  %25 = load ptr, ptr %24, align 8, !dbg !2368, !tbaa !1533
  %26 = icmp ult ptr %23, %25, !dbg !2368
  br i1 %26, label %29, label %27, !dbg !2368, !prof !1534

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #44, !dbg !2368
  br label %31, !dbg !2368

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !2368
  store ptr %30, ptr %22, align 8, !dbg !2368, !tbaa !1532
  store i8 10, ptr %23, align 1, !dbg !2368, !tbaa !952
  br label %31, !dbg !2368

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !2369, !tbaa !873
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #44, !dbg !2369
  %34 = icmp eq i32 %0, 0, !dbg !2370
  br i1 %34, label %36, label %35, !dbg !2372

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #46, !dbg !2373
  unreachable, !dbg !2373

36:                                               ; preds = %31
  ret void, !dbg !2374
}

declare !dbg !2375 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !2378 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !2381 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #19 !dbg !2385 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !2398
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2392, metadata !DIExpression(), metadata !2398, metadata ptr %4, metadata !DIExpression()), !dbg !2399
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2389, metadata !DIExpression()), !dbg !2399
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2390, metadata !DIExpression()), !dbg !2399
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2391, metadata !DIExpression()), !dbg !2399
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #44, !dbg !2400
  call void @llvm.va_start(ptr nonnull %4), !dbg !2401
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #50, !dbg !2402
  call void @llvm.va_end(ptr nonnull %4), !dbg !2403
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #44, !dbg !2404
  ret void, !dbg !2404
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #24

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #23 !dbg !478 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !489, metadata !DIExpression()), !dbg !2405
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !490, metadata !DIExpression()), !dbg !2405
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !491, metadata !DIExpression()), !dbg !2405
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !492, metadata !DIExpression()), !dbg !2405
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !493, metadata !DIExpression()), !dbg !2405
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !494, metadata !DIExpression()), !dbg !2405
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !2406, !tbaa !943
  %8 = icmp eq i32 %7, 0, !dbg !2406
  br i1 %8, label %23, label %9, !dbg !2408

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !2409, !tbaa !943
  %11 = icmp eq i32 %10, %3, !dbg !2412
  br i1 %11, label %12, label %22, !dbg !2413

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !2414, !tbaa !873
  %14 = icmp eq ptr %13, %2, !dbg !2415
  br i1 %14, label %36, label %15, !dbg !2416

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !2417
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !2418
  br i1 %18, label %19, label %22, !dbg !2418

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #45, !dbg !2419
  %21 = icmp eq i32 %20, 0, !dbg !2420
  br i1 %21, label %36, label %22, !dbg !2421

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !2422, !tbaa !873
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !2423, !tbaa !943
  br label %23, !dbg !2424

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !2425
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !2426, !tbaa !873
  %25 = icmp eq ptr %24, null, !dbg !2426
  br i1 %25, label %27, label %26, !dbg !2428

26:                                               ; preds = %23
  tail call void %24() #44, !dbg !2429
  br label %31, !dbg !2429

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !2430, !tbaa !873
  %29 = tail call ptr @getprogname() #45, !dbg !2430
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.57, ptr noundef %29) #44, !dbg !2430
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !2432, !tbaa !873
  %33 = icmp eq ptr %2, null, !dbg !2432
  %34 = select i1 %33, ptr @.str.3.58, ptr @.str.2.59, !dbg !2432
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #44, !dbg !2432
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !2433
  br label %36, !dbg !2434

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !2434
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #19 !dbg !2435 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !2445
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2444, metadata !DIExpression(), metadata !2445, metadata ptr %6, metadata !DIExpression()), !dbg !2446
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2439, metadata !DIExpression()), !dbg !2446
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2440, metadata !DIExpression()), !dbg !2446
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2441, metadata !DIExpression()), !dbg !2446
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2442, metadata !DIExpression()), !dbg !2446
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2443, metadata !DIExpression()), !dbg !2446
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #44, !dbg !2447
  call void @llvm.va_start(ptr nonnull %6), !dbg !2448
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #50, !dbg !2449
  call void @llvm.va_end(ptr nonnull %6), !dbg !2450
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #44, !dbg !2451
  ret void, !dbg !2451
}

; Function Attrs: nounwind uwtable
define dso_local void @fdadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #19 !dbg !2452 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2458, metadata !DIExpression()), !dbg !2462
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2459, metadata !DIExpression()), !dbg !2462
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2460, metadata !DIExpression()), !dbg !2462
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2461, metadata !DIExpression()), !dbg !2462
  %5 = tail call i32 @posix_fadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #44, !dbg !2463
  ret void, !dbg !2464
}

; Function Attrs: nounwind
declare !dbg !2465 i32 @posix_fadvise(i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @fadvise(ptr noundef %0, i32 noundef %1) local_unnamed_addr #19 !dbg !2468 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2506, metadata !DIExpression()), !dbg !2508
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2507, metadata !DIExpression()), !dbg !2508
  %3 = icmp eq ptr %0, null, !dbg !2509
  br i1 %3, label %7, label %4, !dbg !2511

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(ptr noundef nonnull %0) #44, !dbg !2512
  call void @llvm.dbg.value(metadata i32 %5, metadata !2458, metadata !DIExpression()), !dbg !2513
  call void @llvm.dbg.value(metadata i64 0, metadata !2459, metadata !DIExpression()), !dbg !2513
  call void @llvm.dbg.value(metadata i64 0, metadata !2460, metadata !DIExpression()), !dbg !2513
  call void @llvm.dbg.value(metadata i32 %1, metadata !2461, metadata !DIExpression()), !dbg !2513
  %6 = tail call i32 @posix_fadvise(i32 noundef %5, i64 noundef 0, i64 noundef 0, i32 noundef %1) #44, !dbg !2515
  br label %7, !dbg !2516

7:                                                ; preds = %4, %2
  ret void, !dbg !2517
}

; Function Attrs: nofree nounwind
declare !dbg !2518 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #19 !dbg !2521 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2559, metadata !DIExpression()), !dbg !2563
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2560, metadata !DIExpression()), !dbg !2563
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #44, !dbg !2564
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !2561, metadata !DIExpression()), !dbg !2563
  %3 = icmp slt i32 %2, 0, !dbg !2565
  br i1 %3, label %4, label %6, !dbg !2567

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2568
  br label %24, !dbg !2569

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #44, !dbg !2570
  %8 = icmp eq i32 %7, 0, !dbg !2570
  br i1 %8, label %13, label %9, !dbg !2572

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #44, !dbg !2573
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #44, !dbg !2574
  %12 = icmp eq i64 %11, -1, !dbg !2575
  br i1 %12, label %16, label %13, !dbg !2576

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #44, !dbg !2577
  %15 = icmp eq i32 %14, 0, !dbg !2577
  br i1 %15, label %16, label %18, !dbg !2578

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2560, metadata !DIExpression()), !dbg !2563
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2562, metadata !DIExpression()), !dbg !2563
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2579
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !2562, metadata !DIExpression()), !dbg !2563
  br label %24, !dbg !2580

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #47, !dbg !2581
  %20 = load i32, ptr %19, align 4, !dbg !2581, !tbaa !943
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !2560, metadata !DIExpression()), !dbg !2563
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2562, metadata !DIExpression()), !dbg !2563
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2579
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !2562, metadata !DIExpression()), !dbg !2563
  %22 = icmp eq i32 %20, 0, !dbg !2582
  br i1 %22, label %24, label %23, !dbg !2580

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !2584, !tbaa !943
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !2562, metadata !DIExpression()), !dbg !2563
  br label %24, !dbg !2586

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !2563
  ret i32 %25, !dbg !2587
}

; Function Attrs: nofree nounwind
declare !dbg !2588 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !2589 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2591 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #19 !dbg !2594 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2632, metadata !DIExpression()), !dbg !2633
  %2 = icmp eq ptr %0, null, !dbg !2634
  br i1 %2, label %6, label %3, !dbg !2636

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #44, !dbg !2637
  %5 = icmp eq i32 %4, 0, !dbg !2637
  br i1 %5, label %6, label %8, !dbg !2638

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !2639
  br label %16, !dbg !2640

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !2641, metadata !DIExpression()), !dbg !2646
  %9 = load i32, ptr %0, align 8, !dbg !2648, !tbaa !1308
  %10 = and i32 %9, 256, !dbg !2650
  %11 = icmp eq i32 %10, 0, !dbg !2650
  br i1 %11, label %14, label %12, !dbg !2651

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #44, !dbg !2652
  br label %14, !dbg !2652

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !2653
  br label %16, !dbg !2654

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !2633
  ret i32 %17, !dbg !2655
}

; Function Attrs: nofree nounwind
declare !dbg !2656 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @fpurge(ptr noundef nonnull %0) local_unnamed_addr #19 !dbg !2657 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2695, metadata !DIExpression()), !dbg !2696
  tail call void @__fpurge(ptr noundef nonnull %0) #44, !dbg !2697
  ret i32 0, !dbg !2698
}

; Function Attrs: nounwind
declare !dbg !2699 void @__fpurge(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #19 !dbg !2702 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2740, metadata !DIExpression()), !dbg !2746
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2741, metadata !DIExpression()), !dbg !2746
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !2742, metadata !DIExpression()), !dbg !2746
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !2747
  %5 = load ptr, ptr %4, align 8, !dbg !2747, !tbaa !2748
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !2749
  %7 = load ptr, ptr %6, align 8, !dbg !2749, !tbaa !2750
  %8 = icmp eq ptr %5, %7, !dbg !2751
  br i1 %8, label %9, label %27, !dbg !2752

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !2753
  %11 = load ptr, ptr %10, align 8, !dbg !2753, !tbaa !1532
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !2754
  %13 = load ptr, ptr %12, align 8, !dbg !2754, !tbaa !2755
  %14 = icmp eq ptr %11, %13, !dbg !2756
  br i1 %14, label %15, label %27, !dbg !2757

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !2758
  %17 = load ptr, ptr %16, align 8, !dbg !2758, !tbaa !2759
  %18 = icmp eq ptr %17, null, !dbg !2760
  br i1 %18, label %19, label %27, !dbg !2761

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #44, !dbg !2762
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #44, !dbg !2763
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2743, metadata !DIExpression()), !dbg !2764
  %22 = icmp eq i64 %21, -1, !dbg !2765
  br i1 %22, label %29, label %23, !dbg !2767

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !2768, !tbaa !1308
  %25 = and i32 %24, -17, !dbg !2768
  store i32 %25, ptr %0, align 8, !dbg !2768, !tbaa !1308
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !2769
  store i64 %21, ptr %26, align 8, !dbg !2770, !tbaa !2771
  br label %29, !dbg !2772

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !2773
  br label %29, !dbg !2774

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !2746
  ret i32 %30, !dbg !2775
}

; Function Attrs: nofree nounwind
declare !dbg !2776 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #25 !dbg !2779 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !2782, !tbaa !873
  ret ptr %1, !dbg !2783
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #26 !dbg !2784 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2786, metadata !DIExpression()), !dbg !2789
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #45, !dbg !2790
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2787, metadata !DIExpression()), !dbg !2789
  %3 = icmp eq ptr %2, null, !dbg !2791
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2791
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2791
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2788, metadata !DIExpression()), !dbg !2789
  %6 = ptrtoint ptr %5 to i64, !dbg !2792
  %7 = ptrtoint ptr %0 to i64, !dbg !2792
  %8 = sub i64 %6, %7, !dbg !2792
  %9 = icmp sgt i64 %8, 6, !dbg !2794
  br i1 %9, label %10, label %19, !dbg !2795

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !2796
  call void @llvm.dbg.value(metadata ptr %11, metadata !2797, metadata !DIExpression()), !dbg !2804
  call void @llvm.dbg.value(metadata ptr @.str.78, metadata !2802, metadata !DIExpression()), !dbg !2804
  call void @llvm.dbg.value(metadata i64 7, metadata !2803, metadata !DIExpression()), !dbg !2804
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.78, i64 7), !dbg !2806
  %13 = icmp eq i32 %12, 0, !dbg !2807
  br i1 %13, label %14, label %19, !dbg !2808

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2786, metadata !DIExpression()), !dbg !2789
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.79, i64 noundef 3) #45, !dbg !2809
  %16 = icmp eq i32 %15, 0, !dbg !2812
  %17 = select i1 %16, i64 3, i64 0, !dbg !2813
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !2813
  br label %19, !dbg !2813

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2789
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2788, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !2786, metadata !DIExpression()), !dbg !2789
  store ptr %20, ptr @program_name, align 8, !dbg !2814, !tbaa !873
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2815, !tbaa !873
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2816, !tbaa !873
  ret void, !dbg !2817
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2818 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #27

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #19 !dbg !530 {
  %3 = alloca i32, align 4, !DIAssignID !2819
  call void @llvm.dbg.assign(metadata i1 undef, metadata !540, metadata !DIExpression(), metadata !2819, metadata ptr %3, metadata !DIExpression()), !dbg !2820
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2821
  call void @llvm.dbg.assign(metadata i1 undef, metadata !545, metadata !DIExpression(), metadata !2821, metadata ptr %4, metadata !DIExpression()), !dbg !2820
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !537, metadata !DIExpression()), !dbg !2820
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !538, metadata !DIExpression()), !dbg !2820
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #44, !dbg !2822
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !539, metadata !DIExpression()), !dbg !2820
  %6 = icmp eq ptr %5, %0, !dbg !2823
  br i1 %6, label %7, label %14, !dbg !2825

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #44, !dbg !2826
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #44, !dbg !2827
  call void @llvm.dbg.value(metadata ptr %4, metadata !2828, metadata !DIExpression()), !dbg !2835
  call void @llvm.dbg.value(metadata ptr %4, metadata !2837, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i32 0, metadata !2842, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i64 8, metadata !2843, metadata !DIExpression()), !dbg !2844
  store i64 0, ptr %4, align 8, !dbg !2846
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #44, !dbg !2847
  %9 = icmp eq i64 %8, 2, !dbg !2849
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2850
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !2820
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #44, !dbg !2851
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #44, !dbg !2851
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !2820
  ret ptr %15, !dbg !2851
}

; Function Attrs: nounwind
declare !dbg !2852 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #19 !dbg !2858 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2863, metadata !DIExpression()), !dbg !2866
  %2 = tail call ptr @__errno_location() #47, !dbg !2867
  %3 = load i32, ptr %2, align 4, !dbg !2867, !tbaa !943
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2864, metadata !DIExpression()), !dbg !2866
  %4 = icmp eq ptr %0, null, !dbg !2868
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2868
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #51, !dbg !2869
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2865, metadata !DIExpression()), !dbg !2866
  store i32 %3, ptr %2, align 4, !dbg !2870, !tbaa !943
  ret ptr %6, !dbg !2871
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #28 !dbg !2872 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2878, metadata !DIExpression()), !dbg !2879
  %2 = icmp eq ptr %0, null, !dbg !2880
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2880
  %4 = load i32, ptr %3, align 8, !dbg !2881, !tbaa !2882
  ret i32 %4, !dbg !2884
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #29 !dbg !2885 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2889, metadata !DIExpression()), !dbg !2891
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2890, metadata !DIExpression()), !dbg !2891
  %3 = icmp eq ptr %0, null, !dbg !2892
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2892
  store i32 %1, ptr %4, align 8, !dbg !2893, !tbaa !2882
  ret void, !dbg !2894
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #30 !dbg !2895 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2899, metadata !DIExpression()), !dbg !2907
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2900, metadata !DIExpression()), !dbg !2907
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !2901, metadata !DIExpression()), !dbg !2907
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2902, metadata !DIExpression()), !dbg !2907
  %4 = icmp eq ptr %0, null, !dbg !2908
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2908
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2909
  %7 = lshr i8 %1, 5, !dbg !2910
  %8 = zext nneg i8 %7 to i64, !dbg !2910
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !2911
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2903, metadata !DIExpression()), !dbg !2907
  %10 = and i8 %1, 31, !dbg !2912
  %11 = zext nneg i8 %10 to i32, !dbg !2912
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !2905, metadata !DIExpression()), !dbg !2907
  %12 = load i32, ptr %9, align 4, !dbg !2913, !tbaa !943
  %13 = lshr i32 %12, %11, !dbg !2914
  %14 = and i32 %13, 1, !dbg !2915
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !2906, metadata !DIExpression()), !dbg !2907
  %15 = xor i32 %13, %2, !dbg !2916
  %16 = and i32 %15, 1, !dbg !2916
  %17 = shl nuw i32 %16, %11, !dbg !2917
  %18 = xor i32 %17, %12, !dbg !2918
  store i32 %18, ptr %9, align 4, !dbg !2918, !tbaa !943
  ret i32 %14, !dbg !2919
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #30 !dbg !2920 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2924, metadata !DIExpression()), !dbg !2927
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2925, metadata !DIExpression()), !dbg !2927
  %3 = icmp eq ptr %0, null, !dbg !2928
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2930
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2924, metadata !DIExpression()), !dbg !2927
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !2931
  %6 = load i32, ptr %5, align 4, !dbg !2931, !tbaa !2932
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !2926, metadata !DIExpression()), !dbg !2927
  store i32 %1, ptr %5, align 4, !dbg !2933, !tbaa !2932
  ret i32 %6, !dbg !2934
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #19 !dbg !2935 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2939, metadata !DIExpression()), !dbg !2942
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2940, metadata !DIExpression()), !dbg !2942
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2941, metadata !DIExpression()), !dbg !2942
  %4 = icmp eq ptr %0, null, !dbg !2943
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2945
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2939, metadata !DIExpression()), !dbg !2942
  store i32 10, ptr %5, align 8, !dbg !2946, !tbaa !2882
  %6 = icmp ne ptr %1, null, !dbg !2947
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2949
  br i1 %8, label %10, label %9, !dbg !2949

9:                                                ; preds = %3
  tail call void @abort() #46, !dbg !2950
  unreachable, !dbg !2950

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2951
  store ptr %1, ptr %11, align 8, !dbg !2952, !tbaa !2953
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2954
  store ptr %2, ptr %12, align 8, !dbg !2955, !tbaa !2956
  ret void, !dbg !2957
}

; Function Attrs: noreturn nounwind
declare !dbg !2958 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #19 !dbg !2959 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2963, metadata !DIExpression()), !dbg !2971
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2964, metadata !DIExpression()), !dbg !2971
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2965, metadata !DIExpression()), !dbg !2971
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2966, metadata !DIExpression()), !dbg !2971
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2967, metadata !DIExpression()), !dbg !2971
  %6 = icmp eq ptr %4, null, !dbg !2972
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !2972
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2968, metadata !DIExpression()), !dbg !2971
  %8 = tail call ptr @__errno_location() #47, !dbg !2973
  %9 = load i32, ptr %8, align 4, !dbg !2973, !tbaa !943
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !2969, metadata !DIExpression()), !dbg !2971
  %10 = load i32, ptr %7, align 8, !dbg !2974, !tbaa !2882
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !2975
  %12 = load i32, ptr %11, align 4, !dbg !2975, !tbaa !2932
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !2976
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !2977
  %15 = load ptr, ptr %14, align 8, !dbg !2977, !tbaa !2953
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !2978
  %17 = load ptr, ptr %16, align 8, !dbg !2978, !tbaa !2956
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !2979
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !2970, metadata !DIExpression()), !dbg !2971
  store i32 %9, ptr %8, align 4, !dbg !2980, !tbaa !943
  ret i64 %18, !dbg !2981
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #19 !dbg !2982 {
  %10 = alloca i32, align 4, !DIAssignID !3050
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !3051
  %12 = alloca i32, align 4, !DIAssignID !3052
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !3053
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !3054
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3028, metadata !DIExpression(), metadata !3054, metadata ptr %14, metadata !DIExpression()), !dbg !3055
  %15 = alloca i32, align 4, !DIAssignID !3056
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3031, metadata !DIExpression(), metadata !3056, metadata ptr %15, metadata !DIExpression()), !dbg !3057
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2988, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2989, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2990, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2991, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !2992, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !2993, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2994, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2995, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2996, metadata !DIExpression()), !dbg !3058
  %16 = tail call i64 @__ctype_get_mb_cur_max() #44, !dbg !3059
  %17 = icmp eq i64 %16, 1, !dbg !3060
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !2997, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3058
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2998, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2999, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata ptr null, metadata !3000, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3001, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3002, metadata !DIExpression()), !dbg !3058
  %18 = trunc i32 %5 to i8, !dbg !3061
  %19 = lshr i8 %18, 1, !dbg !3061
  %20 = and i8 %19, 1, !dbg !3061
  tail call void @llvm.dbg.value(metadata i8 %20, metadata !3003, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3004, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3005, metadata !DIExpression()), !dbg !3058
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !3062

28:                                               ; preds = %627, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %627 ]
  %30 = phi ptr [ %7, %9 ], [ %116, %627 ]
  %31 = phi ptr [ %8, %9 ], [ %117, %627 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %627 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %627 ], !dbg !3063
  %34 = phi ptr [ null, %9 ], [ %119, %627 ], !dbg !3064
  %35 = phi i64 [ 0, %9 ], [ %120, %627 ], !dbg !3065
  %36 = phi i8 [ 0, %9 ], [ %121, %627 ], !dbg !3066
  %37 = phi i8 [ %20, %9 ], [ %122, %627 ], !dbg !3058
  %38 = phi i8 [ 0, %9 ], [ %142, %627 ], !dbg !3067
  %39 = phi i8 [ 1, %9 ], [ %143, %627 ], !dbg !3068
  %40 = phi i64 [ %1, %9 ], [ %141, %627 ]
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !2989, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i8 %39, metadata !3005, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i8 %38, metadata !3004, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !3003, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i8 %36, metadata !3002, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !3001, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata ptr %34, metadata !3000, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !2999, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2998, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !2991, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata ptr %31, metadata !2996, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !2995, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !2992, metadata !DIExpression()), !dbg !3058
  call void @llvm.dbg.label(metadata !3006), !dbg !3069
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3007, metadata !DIExpression()), !dbg !3058
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
  ], !dbg !3070

41:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3003, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2992, metadata !DIExpression()), !dbg !3058
  br label %114, !dbg !3071

42:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !3003, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2992, metadata !DIExpression()), !dbg !3058
  %43 = and i8 %37, 1, !dbg !3072
  %44 = icmp eq i8 %43, 0, !dbg !3072
  br i1 %44, label %45, label %114, !dbg !3071

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !3074
  br i1 %46, label %114, label %47, !dbg !3077

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !3074, !tbaa !952
  br label %114, !dbg !3074

48:                                               ; preds = %28, %28
  call void @llvm.dbg.assign(metadata i1 undef, metadata !629, metadata !DIExpression(), metadata !3052, metadata ptr %12, metadata !DIExpression()), !dbg !3078
  call void @llvm.dbg.assign(metadata i1 undef, metadata !630, metadata !DIExpression(), metadata !3053, metadata ptr %13, metadata !DIExpression()), !dbg !3078
  call void @llvm.dbg.value(metadata ptr @.str.11.92, metadata !626, metadata !DIExpression()), !dbg !3078
  call void @llvm.dbg.value(metadata i32 %29, metadata !627, metadata !DIExpression()), !dbg !3078
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.93, ptr noundef nonnull @.str.11.92, i32 noundef 5) #44, !dbg !3082
  call void @llvm.dbg.value(metadata ptr %49, metadata !628, metadata !DIExpression()), !dbg !3078
  %50 = icmp eq ptr %49, @.str.11.92, !dbg !3083
  br i1 %50, label %51, label %60, !dbg !3085

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #44, !dbg !3086
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #44, !dbg !3087
  call void @llvm.dbg.value(metadata ptr %13, metadata !3088, metadata !DIExpression()), !dbg !3094
  call void @llvm.dbg.value(metadata ptr %13, metadata !3096, metadata !DIExpression()), !dbg !3101
  call void @llvm.dbg.value(metadata i32 0, metadata !3099, metadata !DIExpression()), !dbg !3101
  call void @llvm.dbg.value(metadata i64 8, metadata !3100, metadata !DIExpression()), !dbg !3101
  store i64 0, ptr %13, align 8, !dbg !3103
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #44, !dbg !3104
  %53 = icmp eq i64 %52, 3, !dbg !3106
  %54 = load i32, ptr %12, align 4
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !3107
  %57 = icmp eq i32 %29, 9, !dbg !3107
  %58 = select i1 %57, ptr @.str.10.94, ptr @.str.12.95, !dbg !3107
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !3107
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #44, !dbg !3108
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #44, !dbg !3108
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !3078
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !2995, metadata !DIExpression()), !dbg !3058
  call void @llvm.dbg.assign(metadata i1 undef, metadata !629, metadata !DIExpression(), metadata !3050, metadata ptr %10, metadata !DIExpression()), !dbg !3109
  call void @llvm.dbg.assign(metadata i1 undef, metadata !630, metadata !DIExpression(), metadata !3051, metadata ptr %11, metadata !DIExpression()), !dbg !3109
  call void @llvm.dbg.value(metadata ptr @.str.12.95, metadata !626, metadata !DIExpression()), !dbg !3109
  call void @llvm.dbg.value(metadata i32 %29, metadata !627, metadata !DIExpression()), !dbg !3109
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.93, ptr noundef nonnull @.str.12.95, i32 noundef 5) #44, !dbg !3111
  call void @llvm.dbg.value(metadata ptr %62, metadata !628, metadata !DIExpression()), !dbg !3109
  %63 = icmp eq ptr %62, @.str.12.95, !dbg !3112
  br i1 %63, label %64, label %73, !dbg !3113

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #44, !dbg !3114
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #44, !dbg !3115
  call void @llvm.dbg.value(metadata ptr %11, metadata !3088, metadata !DIExpression()), !dbg !3116
  call void @llvm.dbg.value(metadata ptr %11, metadata !3096, metadata !DIExpression()), !dbg !3118
  call void @llvm.dbg.value(metadata i32 0, metadata !3099, metadata !DIExpression()), !dbg !3118
  call void @llvm.dbg.value(metadata i64 8, metadata !3100, metadata !DIExpression()), !dbg !3118
  store i64 0, ptr %11, align 8, !dbg !3120
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #44, !dbg !3121
  %66 = icmp eq i64 %65, 3, !dbg !3122
  %67 = load i32, ptr %10, align 4
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !3123
  %70 = icmp eq i32 %29, 9, !dbg !3123
  %71 = select i1 %70, ptr @.str.10.94, ptr @.str.12.95, !dbg !3123
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !3123
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #44, !dbg !3124
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #44, !dbg !3124
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !2996, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !2995, metadata !DIExpression()), !dbg !3058
  %76 = and i8 %37, 1, !dbg !3125
  %77 = icmp eq i8 %76, 0, !dbg !3125
  br i1 %77, label %78, label %93, !dbg !3126

78:                                               ; preds = %73
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !3008, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2998, metadata !DIExpression()), !dbg !3058
  %79 = load i8, ptr %74, align 1, !dbg !3128, !tbaa !952
  %80 = icmp eq i8 %79, 0, !dbg !3130
  br i1 %80, label %93, label %81, !dbg !3130

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  tail call void @llvm.dbg.value(metadata ptr %83, metadata !3008, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !2998, metadata !DIExpression()), !dbg !3058
  %85 = icmp ult i64 %84, %40, !dbg !3131
  br i1 %85, label %86, label %88, !dbg !3134

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !3131
  store i8 %82, ptr %87, align 1, !dbg !3131, !tbaa !952
  br label %88, !dbg !3131

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !3134
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !2998, metadata !DIExpression()), !dbg !3058
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !3135
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !3008, metadata !DIExpression()), !dbg !3127
  %91 = load i8, ptr %90, align 1, !dbg !3128, !tbaa !952
  %92 = icmp eq i8 %91, 0, !dbg !3130
  br i1 %92, label %93, label %81, !dbg !3130, !llvm.loop !3136

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !3138
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !2998, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3002, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !3000, metadata !DIExpression()), !dbg !3058
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #45, !dbg !3139
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !3001, metadata !DIExpression()), !dbg !3058
  br label %114, !dbg !3140

96:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3002, metadata !DIExpression()), !dbg !3058
  br label %98, !dbg !3141

97:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 undef, metadata !3002, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3003, metadata !DIExpression()), !dbg !3058
  br label %98, !dbg !3142

98:                                               ; preds = %96, %28, %97
  %99 = phi i8 [ %36, %28 ], [ 1, %96 ], [ %36, %97 ], !dbg !3066
  %100 = phi i8 [ %37, %28 ], [ 1, %96 ], [ 1, %97 ], !dbg !3058
  tail call void @llvm.dbg.value(metadata i8 %100, metadata !3003, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i8 %99, metadata !3002, metadata !DIExpression()), !dbg !3058
  %101 = and i8 %100, 1, !dbg !3143
  %102 = icmp eq i8 %101, 0, !dbg !3143
  %103 = select i1 %102, i8 1, i8 %99, !dbg !3145
  br label %104, !dbg !3145

104:                                              ; preds = %98, %28
  %105 = phi i8 [ %36, %28 ], [ %103, %98 ], !dbg !3058
  %106 = phi i8 [ %37, %28 ], [ %100, %98 ], !dbg !3061
  tail call void @llvm.dbg.value(metadata i8 %106, metadata !3003, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i8 %105, metadata !3002, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i32 2, metadata !2992, metadata !DIExpression()), !dbg !3058
  %107 = and i8 %106, 1, !dbg !3146
  %108 = icmp eq i8 %107, 0, !dbg !3146
  br i1 %108, label %109, label %114, !dbg !3148

109:                                              ; preds = %104
  %110 = icmp eq i64 %40, 0, !dbg !3149
  br i1 %110, label %114, label %111, !dbg !3152

111:                                              ; preds = %109
  store i8 39, ptr %0, align 1, !dbg !3149, !tbaa !952
  br label %114, !dbg !3149

112:                                              ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3003, metadata !DIExpression()), !dbg !3058
  br label %114, !dbg !3153

113:                                              ; preds = %28
  call void @abort() #46, !dbg !3154
  unreachable, !dbg !3154

114:                                              ; preds = %41, %104, %111, %109, %28, %42, %47, %45, %112, %93
  %115 = phi i32 [ 0, %112 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %109 ], [ 2, %111 ], [ 2, %104 ], [ 5, %41 ]
  %116 = phi ptr [ %30, %112 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %109 ], [ %30, %111 ], [ %30, %104 ], [ %30, %41 ]
  %117 = phi ptr [ %31, %112 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %109 ], [ %31, %111 ], [ %31, %104 ], [ %31, %41 ]
  %118 = phi i64 [ 0, %112 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %109 ], [ 1, %111 ], [ 0, %104 ], [ 0, %41 ], !dbg !3138
  %119 = phi ptr [ %34, %112 ], [ %75, %93 ], [ @.str.10.94, %45 ], [ @.str.10.94, %47 ], [ @.str.10.94, %42 ], [ %34, %28 ], [ @.str.12.95, %109 ], [ @.str.12.95, %111 ], [ @.str.12.95, %104 ], [ @.str.10.94, %41 ], !dbg !3058
  %120 = phi i64 [ %35, %112 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %109 ], [ 1, %111 ], [ 1, %104 ], [ 1, %41 ], !dbg !3058
  %121 = phi i8 [ %36, %112 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %105, %109 ], [ %105, %111 ], [ %105, %104 ], [ 1, %41 ], !dbg !3058
  %122 = phi i8 [ 0, %112 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %106, %109 ], [ %106, %111 ], [ %106, %104 ], [ 1, %41 ], !dbg !3058
  tail call void @llvm.dbg.value(metadata i8 %122, metadata !3003, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i8 %121, metadata !3002, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i64 %120, metadata !3001, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !3000, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i64 %118, metadata !2998, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata ptr %117, metadata !2996, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata ptr %116, metadata !2995, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i32 %115, metadata !2992, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3013, metadata !DIExpression()), !dbg !3155
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
  br label %138, !dbg !3156

138:                                              ; preds = %602, %114
  %139 = phi i64 [ %32, %114 ], [ %603, %602 ]
  %140 = phi i64 [ %118, %114 ], [ %604, %602 ], !dbg !3138
  %141 = phi i64 [ %33, %114 ], [ %605, %602 ], !dbg !3063
  %142 = phi i8 [ %38, %114 ], [ %606, %602 ], !dbg !3067
  %143 = phi i8 [ %39, %114 ], [ %607, %602 ], !dbg !3068
  %144 = phi i8 [ 0, %114 ], [ %608, %602 ], !dbg !3157
  %145 = phi i64 [ 0, %114 ], [ %611, %602 ], !dbg !3158
  %146 = phi i64 [ %40, %114 ], [ %610, %602 ]
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !2989, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !3013, metadata !DIExpression()), !dbg !3155
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !3007, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !3005, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !3004, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !2999, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2998, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !2991, metadata !DIExpression()), !dbg !3058
  %147 = icmp eq i64 %139, -1, !dbg !3159
  br i1 %147, label %148, label %152, !dbg !3160

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !3161
  %150 = load i8, ptr %149, align 1, !dbg !3161, !tbaa !952
  %151 = icmp eq i8 %150, 0, !dbg !3162
  br i1 %151, label %612, label %154, !dbg !3163

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !3164
  br i1 %153, label %612, label %154, !dbg !3163

154:                                              ; preds = %148, %152
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3015, metadata !DIExpression()), !dbg !3165
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3018, metadata !DIExpression()), !dbg !3165
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3019, metadata !DIExpression()), !dbg !3165
  br i1 %128, label %155, label %170, !dbg !3166

155:                                              ; preds = %154
  %156 = add i64 %145, %120, !dbg !3168
  %157 = select i1 %147, i1 %129, i1 false, !dbg !3169
  br i1 %157, label %158, label %160, !dbg !3169

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #45, !dbg !3170
  tail call void @llvm.dbg.value(metadata i64 %159, metadata !2991, metadata !DIExpression()), !dbg !3058
  br label %160, !dbg !3171

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !3171
  tail call void @llvm.dbg.value(metadata i64 %161, metadata !2991, metadata !DIExpression()), !dbg !3058
  %162 = icmp ugt i64 %156, %161, !dbg !3172
  br i1 %162, label %170, label %163, !dbg !3173

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !3174
  call void @llvm.dbg.value(metadata ptr %164, metadata !3175, metadata !DIExpression()), !dbg !3180
  call void @llvm.dbg.value(metadata ptr %119, metadata !3178, metadata !DIExpression()), !dbg !3180
  call void @llvm.dbg.value(metadata i64 %120, metadata !3179, metadata !DIExpression()), !dbg !3180
  %165 = call i32 @bcmp(ptr %164, ptr %119, i64 %120), !dbg !3182
  %166 = icmp ne i32 %165, 0, !dbg !3183
  %167 = select i1 %166, i1 true, i1 %131, !dbg !3184
  %168 = xor i1 %166, true, !dbg !3184
  %169 = zext i1 %168 to i8, !dbg !3184
  br i1 %167, label %170, label %666, !dbg !3184

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !3165
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !3165
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !3015, metadata !DIExpression()), !dbg !3165
  tail call void @llvm.dbg.value(metadata i64 %171, metadata !2991, metadata !DIExpression()), !dbg !3058
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !3185
  %175 = load i8, ptr %174, align 1, !dbg !3185, !tbaa !952
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !3020, metadata !DIExpression()), !dbg !3165
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
  ], !dbg !3186

176:                                              ; preds = %170
  br i1 %124, label %177, label %225, !dbg !3187

177:                                              ; preds = %176
  br i1 %131, label %178, label %659, !dbg !3188

178:                                              ; preds = %177
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3018, metadata !DIExpression()), !dbg !3165
  %179 = and i8 %144, 1, !dbg !3192
  %180 = icmp eq i8 %179, 0, !dbg !3192
  %181 = select i1 %132, i1 %180, i1 false, !dbg !3192
  br i1 %181, label %182, label %198, !dbg !3192

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !3194
  br i1 %183, label %184, label %186, !dbg !3198

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !3194
  store i8 39, ptr %185, align 1, !dbg !3194, !tbaa !952
  br label %186, !dbg !3194

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !3198
  tail call void @llvm.dbg.value(metadata i64 %187, metadata !2998, metadata !DIExpression()), !dbg !3058
  %188 = icmp ult i64 %187, %146, !dbg !3199
  br i1 %188, label %189, label %191, !dbg !3202

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !3199
  store i8 36, ptr %190, align 1, !dbg !3199, !tbaa !952
  br label %191, !dbg !3199

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !3202
  tail call void @llvm.dbg.value(metadata i64 %192, metadata !2998, metadata !DIExpression()), !dbg !3058
  %193 = icmp ult i64 %192, %146, !dbg !3203
  br i1 %193, label %194, label %196, !dbg !3206

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !3203
  store i8 39, ptr %195, align 1, !dbg !3203, !tbaa !952
  br label %196, !dbg !3203

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !3206
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !2998, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3007, metadata !DIExpression()), !dbg !3058
  br label %198, !dbg !3207

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !3058
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !3058
  tail call void @llvm.dbg.value(metadata i8 %200, metadata !3007, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i64 %199, metadata !2998, metadata !DIExpression()), !dbg !3058
  %201 = icmp ult i64 %199, %146, !dbg !3208
  br i1 %201, label %202, label %204, !dbg !3211

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !3208
  store i8 92, ptr %203, align 1, !dbg !3208, !tbaa !952
  br label %204, !dbg !3208

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !3211
  tail call void @llvm.dbg.value(metadata i64 %205, metadata !2998, metadata !DIExpression()), !dbg !3058
  br i1 %125, label %206, label %476, !dbg !3212

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !3214
  %208 = icmp ult i64 %207, %171, !dbg !3215
  br i1 %208, label %209, label %465, !dbg !3216

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !3217
  %211 = load i8, ptr %210, align 1, !dbg !3217, !tbaa !952
  %212 = add i8 %211, -48, !dbg !3218
  %213 = icmp ult i8 %212, 10, !dbg !3218
  br i1 %213, label %214, label %465, !dbg !3218

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !3219
  br i1 %215, label %216, label %218, !dbg !3223

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !3219
  store i8 48, ptr %217, align 1, !dbg !3219, !tbaa !952
  br label %218, !dbg !3219

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !3223
  tail call void @llvm.dbg.value(metadata i64 %219, metadata !2998, metadata !DIExpression()), !dbg !3058
  %220 = icmp ult i64 %219, %146, !dbg !3224
  br i1 %220, label %221, label %223, !dbg !3227

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !3224
  store i8 48, ptr %222, align 1, !dbg !3224, !tbaa !952
  br label %223, !dbg !3224

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !3227
  tail call void @llvm.dbg.value(metadata i64 %224, metadata !2998, metadata !DIExpression()), !dbg !3058
  br label %465, !dbg !3228

225:                                              ; preds = %176
  br i1 %25, label %476, label %602, !dbg !3229

226:                                              ; preds = %170
  switch i32 %115, label %465 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !3230

227:                                              ; preds = %226
  br i1 %131, label %465, label %655, !dbg !3231

228:                                              ; preds = %226
  br i1 %23, label %465, label %229, !dbg !3233

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !3235
  %231 = icmp ult i64 %230, %171, !dbg !3236
  br i1 %231, label %232, label %465, !dbg !3237

232:                                              ; preds = %229
  %233 = getelementptr i8, ptr %174, i64 1, !dbg !3238
  %234 = load i8, ptr %233, align 1, !dbg !3238, !tbaa !952
  %235 = icmp eq i8 %234, 63, !dbg !3239
  br i1 %235, label %236, label %465, !dbg !3240

236:                                              ; preds = %232
  %237 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !3241
  %238 = load i8, ptr %237, align 1, !dbg !3241, !tbaa !952
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
  ], !dbg !3242

239:                                              ; preds = %236, %236, %236, %236, %236, %236, %236, %236, %236
  br i1 %131, label %240, label %666, !dbg !3243

240:                                              ; preds = %239
  tail call void @llvm.dbg.value(metadata i8 %238, metadata !3020, metadata !DIExpression()), !dbg !3165
  tail call void @llvm.dbg.value(metadata i64 %230, metadata !3013, metadata !DIExpression()), !dbg !3155
  %241 = icmp ult i64 %140, %146, !dbg !3245
  br i1 %241, label %242, label %244, !dbg !3248

242:                                              ; preds = %240
  %243 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !3245
  store i8 63, ptr %243, align 1, !dbg !3245, !tbaa !952
  br label %244, !dbg !3245

244:                                              ; preds = %242, %240
  %245 = add i64 %140, 1, !dbg !3248
  tail call void @llvm.dbg.value(metadata i64 %245, metadata !2998, metadata !DIExpression()), !dbg !3058
  %246 = icmp ult i64 %245, %146, !dbg !3249
  br i1 %246, label %247, label %249, !dbg !3252

247:                                              ; preds = %244
  %248 = getelementptr inbounds i8, ptr %0, i64 %245, !dbg !3249
  store i8 34, ptr %248, align 1, !dbg !3249, !tbaa !952
  br label %249, !dbg !3249

249:                                              ; preds = %247, %244
  %250 = add i64 %140, 2, !dbg !3252
  tail call void @llvm.dbg.value(metadata i64 %250, metadata !2998, metadata !DIExpression()), !dbg !3058
  %251 = icmp ult i64 %250, %146, !dbg !3253
  br i1 %251, label %252, label %254, !dbg !3256

252:                                              ; preds = %249
  %253 = getelementptr inbounds i8, ptr %0, i64 %250, !dbg !3253
  store i8 34, ptr %253, align 1, !dbg !3253, !tbaa !952
  br label %254, !dbg !3253

254:                                              ; preds = %252, %249
  %255 = add i64 %140, 3, !dbg !3256
  tail call void @llvm.dbg.value(metadata i64 %255, metadata !2998, metadata !DIExpression()), !dbg !3058
  %256 = icmp ult i64 %255, %146, !dbg !3257
  br i1 %256, label %257, label %259, !dbg !3260

257:                                              ; preds = %254
  %258 = getelementptr inbounds i8, ptr %0, i64 %255, !dbg !3257
  store i8 63, ptr %258, align 1, !dbg !3257, !tbaa !952
  br label %259, !dbg !3257

259:                                              ; preds = %257, %254
  %260 = add i64 %140, 4, !dbg !3260
  tail call void @llvm.dbg.value(metadata i64 %260, metadata !2998, metadata !DIExpression()), !dbg !3058
  br label %465, !dbg !3261

261:                                              ; preds = %170
  br label %272, !dbg !3262

262:                                              ; preds = %170
  br label %272, !dbg !3263

263:                                              ; preds = %170
  br label %270, !dbg !3264

264:                                              ; preds = %170
  br label %270, !dbg !3265

265:                                              ; preds = %170
  br label %272, !dbg !3266

266:                                              ; preds = %170
  br i1 %132, label %267, label %268, !dbg !3267

267:                                              ; preds = %266
  br i1 %131, label %558, label %655, !dbg !3268

268:                                              ; preds = %266
  br i1 %124, label %269, label %476, !dbg !3271

269:                                              ; preds = %268
  br i1 %135, label %558, label %520, !dbg !3273

270:                                              ; preds = %170, %264, %263
  %271 = phi i8 [ 116, %264 ], [ 114, %263 ], [ 110, %170 ], !dbg !3274
  call void @llvm.dbg.label(metadata !3021), !dbg !3275
  br i1 %133, label %272, label %655, !dbg !3276

272:                                              ; preds = %170, %270, %265, %262, %261
  %273 = phi i8 [ %271, %270 ], [ 118, %265 ], [ 102, %262 ], [ 98, %261 ], [ 97, %170 ], !dbg !3274
  call void @llvm.dbg.label(metadata !3024), !dbg !3278
  br i1 %124, label %520, label %476, !dbg !3279

274:                                              ; preds = %170, %170
  switch i64 %171, label %465 [
    i64 -1, label %275
    i64 1, label %278
  ], !dbg !3280

275:                                              ; preds = %274
  %276 = load i8, ptr %21, align 1, !dbg !3281, !tbaa !952
  %277 = icmp eq i8 %276, 0, !dbg !3283
  br i1 %277, label %278, label %465, !dbg !3284

278:                                              ; preds = %274, %275, %170, %170
  %279 = icmp eq i64 %145, 0, !dbg !3285
  br i1 %279, label %280, label %465, !dbg !3287

280:                                              ; preds = %278, %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3019, metadata !DIExpression()), !dbg !3165
  br label %281, !dbg !3288

281:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %280
  %282 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %280 ], !dbg !3165
  tail call void @llvm.dbg.value(metadata i8 %282, metadata !3019, metadata !DIExpression()), !dbg !3165
  br i1 %133, label %465, label %655, !dbg !3289

283:                                              ; preds = %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3004, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3019, metadata !DIExpression()), !dbg !3165
  br i1 %132, label %284, label %465, !dbg !3291

284:                                              ; preds = %283
  br i1 %131, label %285, label %655, !dbg !3292

285:                                              ; preds = %284
  %286 = icmp eq i64 %146, 0, !dbg !3295
  %287 = icmp ne i64 %141, 0
  %288 = select i1 %286, i1 true, i1 %287, !dbg !3297
  %289 = select i1 %288, i64 %141, i64 %146, !dbg !3297
  %290 = select i1 %288, i64 %146, i64 0, !dbg !3297
  tail call void @llvm.dbg.value(metadata i64 %290, metadata !2989, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i64 %289, metadata !2999, metadata !DIExpression()), !dbg !3058
  %291 = icmp ult i64 %140, %290, !dbg !3298
  br i1 %291, label %292, label %294, !dbg !3301

292:                                              ; preds = %285
  %293 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !3298
  store i8 39, ptr %293, align 1, !dbg !3298, !tbaa !952
  br label %294, !dbg !3298

294:                                              ; preds = %292, %285
  %295 = add i64 %140, 1, !dbg !3301
  tail call void @llvm.dbg.value(metadata i64 %295, metadata !2998, metadata !DIExpression()), !dbg !3058
  %296 = icmp ult i64 %295, %290, !dbg !3302
  br i1 %296, label %297, label %299, !dbg !3305

297:                                              ; preds = %294
  %298 = getelementptr inbounds i8, ptr %0, i64 %295, !dbg !3302
  store i8 92, ptr %298, align 1, !dbg !3302, !tbaa !952
  br label %299, !dbg !3302

299:                                              ; preds = %297, %294
  %300 = add i64 %140, 2, !dbg !3305
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !2998, metadata !DIExpression()), !dbg !3058
  %301 = icmp ult i64 %300, %290, !dbg !3306
  br i1 %301, label %302, label %304, !dbg !3309

302:                                              ; preds = %299
  %303 = getelementptr inbounds i8, ptr %0, i64 %300, !dbg !3306
  store i8 39, ptr %303, align 1, !dbg !3306, !tbaa !952
  br label %304, !dbg !3306

304:                                              ; preds = %302, %299
  %305 = add i64 %140, 3, !dbg !3309
  tail call void @llvm.dbg.value(metadata i64 %305, metadata !2998, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3007, metadata !DIExpression()), !dbg !3058
  br label %465, !dbg !3310

306:                                              ; preds = %170
  br i1 %17, label %307, label %315, !dbg !3311

307:                                              ; preds = %306
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3025, metadata !DIExpression()), !dbg !3312
  %308 = tail call ptr @__ctype_b_loc() #47, !dbg !3313
  %309 = load ptr, ptr %308, align 8, !dbg !3313, !tbaa !873
  %310 = zext i8 %175 to i64
  %311 = getelementptr inbounds i16, ptr %309, i64 %310, !dbg !3313
  %312 = load i16, ptr %311, align 2, !dbg !3313, !tbaa !984
  %313 = and i16 %312, 16384, !dbg !3315
  %314 = icmp ne i16 %313, 0, !dbg !3315
  tail call void @llvm.dbg.value(metadata i16 %312, metadata !3027, metadata !DIExpression(DW_OP_constu, 14, DW_OP_shr, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3312
  br label %355, !dbg !3316

315:                                              ; preds = %306
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #44, !dbg !3317
  call void @llvm.dbg.value(metadata ptr %14, metadata !3088, metadata !DIExpression()), !dbg !3318
  call void @llvm.dbg.value(metadata ptr %14, metadata !3096, metadata !DIExpression()), !dbg !3320
  call void @llvm.dbg.value(metadata i32 0, metadata !3099, metadata !DIExpression()), !dbg !3320
  call void @llvm.dbg.value(metadata i64 8, metadata !3100, metadata !DIExpression()), !dbg !3320
  store i64 0, ptr %14, align 8, !dbg !3322
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3025, metadata !DIExpression()), !dbg !3312
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3027, metadata !DIExpression()), !dbg !3312
  %316 = icmp eq i64 %171, -1, !dbg !3323
  br i1 %316, label %317, label %319, !dbg !3325

317:                                              ; preds = %315
  %318 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #45, !dbg !3326
  tail call void @llvm.dbg.value(metadata i64 %318, metadata !2991, metadata !DIExpression()), !dbg !3058
  br label %319, !dbg !3327

319:                                              ; preds = %315, %317
  %320 = phi i64 [ %318, %317 ], [ %171, %315 ], !dbg !3165
  tail call void @llvm.dbg.value(metadata i64 %320, metadata !2991, metadata !DIExpression()), !dbg !3058
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #44, !dbg !3328
  %321 = sub i64 %320, %145, !dbg !3329
  %322 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %321, ptr noundef nonnull %14) #44, !dbg !3330
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !3035, metadata !DIExpression()), !dbg !3057
  switch i64 %322, label %336 [
    i64 0, label %351
    i64 -1, label %325
    i64 -2, label %323
  ], !dbg !3331

323:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3025, metadata !DIExpression()), !dbg !3312
  %324 = icmp ult i64 %145, %320, !dbg !3332
  br i1 %324, label %326, label %351, !dbg !3334

325:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3027, metadata !DIExpression()), !dbg !3312
  br label %351, !dbg !3335

326:                                              ; preds = %323, %332
  %327 = phi i64 [ %334, %332 ], [ %145, %323 ]
  %328 = phi i64 [ %333, %332 ], [ 0, %323 ]
  tail call void @llvm.dbg.value(metadata i64 %328, metadata !3025, metadata !DIExpression()), !dbg !3312
  %329 = getelementptr inbounds i8, ptr %2, i64 %327, !dbg !3337
  %330 = load i8, ptr %329, align 1, !dbg !3337, !tbaa !952
  %331 = icmp eq i8 %330, 0, !dbg !3334
  br i1 %331, label %351, label %332, !dbg !3338

332:                                              ; preds = %326
  %333 = add i64 %328, 1, !dbg !3339
  tail call void @llvm.dbg.value(metadata i64 %333, metadata !3025, metadata !DIExpression()), !dbg !3312
  %334 = add i64 %333, %145, !dbg !3340
  %335 = icmp eq i64 %333, %321, !dbg !3332
  br i1 %335, label %351, label %326, !dbg !3334, !llvm.loop !3341

336:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3036, metadata !DIExpression()), !dbg !3342
  %337 = icmp ugt i64 %322, 1
  %338 = and i1 %134, %337, !dbg !3343
  %339 = and i1 %338, %132, !dbg !3343
  br i1 %339, label %340, label %347, !dbg !3343

340:                                              ; preds = %336, %344
  %341 = phi i64 [ %345, %344 ], [ 1, %336 ]
  tail call void @llvm.dbg.value(metadata i64 %341, metadata !3036, metadata !DIExpression()), !dbg !3342
  %342 = getelementptr i8, ptr %174, i64 %341, !dbg !3344
  %343 = load i8, ptr %342, align 1, !dbg !3344, !tbaa !952
  switch i8 %343, label %344 [
    i8 91, label %354
    i8 92, label %354
    i8 94, label %354
    i8 96, label %354
    i8 124, label %354
  ], !dbg !3346

344:                                              ; preds = %340
  %345 = add nuw i64 %341, 1, !dbg !3347
  tail call void @llvm.dbg.value(metadata i64 %345, metadata !3036, metadata !DIExpression()), !dbg !3342
  %346 = icmp eq i64 %345, %322, !dbg !3348
  br i1 %346, label %347, label %340, !dbg !3349, !llvm.loop !3350

347:                                              ; preds = %344, %336
  %348 = load i32, ptr %15, align 4, !dbg !3352, !tbaa !943
  call void @llvm.dbg.value(metadata i32 %348, metadata !3354, metadata !DIExpression()), !dbg !3362
  %349 = call i32 @iswprint(i32 noundef %348) #44, !dbg !3364
  %350 = icmp ne i32 %349, 0, !dbg !3365
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3027, metadata !DIExpression()), !dbg !3312
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !3025, metadata !DIExpression()), !dbg !3312
  br label %351, !dbg !3366

351:                                              ; preds = %326, %332, %323, %325, %347, %319
  %352 = phi i64 [ %322, %319 ], [ %322, %347 ], [ 0, %325 ], [ 0, %323 ], [ %328, %326 ], [ %321, %332 ]
  %353 = phi i1 [ true, %319 ], [ %350, %347 ], [ false, %325 ], [ false, %323 ], [ false, %332 ], [ false, %326 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3027, metadata !DIExpression()), !dbg !3312
  tail call void @llvm.dbg.value(metadata i64 %352, metadata !3025, metadata !DIExpression()), !dbg !3312
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #44, !dbg !3367
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #44, !dbg !3368
  br label %355

354:                                              ; preds = %340, %340, %340, %340, %340
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3027, metadata !DIExpression()), !dbg !3312
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3025, metadata !DIExpression()), !dbg !3312
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #44, !dbg !3367
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #44, !dbg !3368
  br label %655

355:                                              ; preds = %351, %307
  %356 = phi i64 [ %171, %307 ], [ %320, %351 ], !dbg !3165
  %357 = phi i64 [ 1, %307 ], [ %352, %351 ], !dbg !3369
  %358 = phi i1 [ %314, %307 ], [ %353, %351 ], !dbg !3369
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3027, metadata !DIExpression()), !dbg !3312
  tail call void @llvm.dbg.value(metadata i64 %357, metadata !3025, metadata !DIExpression()), !dbg !3312
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !2991, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i1 %358, metadata !3019, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3165
  %359 = icmp ult i64 %357, 2, !dbg !3370
  %360 = select i1 %136, i1 true, i1 %358
  %361 = select i1 %359, i1 %360, i1 false, !dbg !3371
  br i1 %361, label %461, label %362, !dbg !3371

362:                                              ; preds = %355
  %363 = add i64 %357, %145, !dbg !3372
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !3044, metadata !DIExpression()), !dbg !3373
  br label %364, !dbg !3374

364:                                              ; preds = %457, %362
  %365 = phi i64 [ %140, %362 ], [ %458, %457 ], !dbg !3058
  %366 = phi i8 [ %144, %362 ], [ %453, %457 ], !dbg !3157
  %367 = phi i64 [ %145, %362 ], [ %432, %457 ], !dbg !3155
  %368 = phi i8 [ %173, %362 ], [ %429, %457 ], !dbg !3165
  %369 = phi i8 [ 0, %362 ], [ %430, %457 ], !dbg !3375
  %370 = phi i8 [ %175, %362 ], [ %460, %457 ], !dbg !3165
  tail call void @llvm.dbg.value(metadata i8 %370, metadata !3020, metadata !DIExpression()), !dbg !3165
  tail call void @llvm.dbg.value(metadata i8 %369, metadata !3018, metadata !DIExpression()), !dbg !3165
  tail call void @llvm.dbg.value(metadata i8 %368, metadata !3015, metadata !DIExpression()), !dbg !3165
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !3013, metadata !DIExpression()), !dbg !3155
  tail call void @llvm.dbg.value(metadata i8 %366, metadata !3007, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i64 %365, metadata !2998, metadata !DIExpression()), !dbg !3058
  br i1 %360, label %417, label %371, !dbg !3376

371:                                              ; preds = %364
  br i1 %131, label %372, label %659, !dbg !3381

372:                                              ; preds = %371
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3018, metadata !DIExpression()), !dbg !3165
  %373 = and i8 %366, 1, !dbg !3384
  %374 = icmp eq i8 %373, 0, !dbg !3384
  %375 = select i1 %132, i1 %374, i1 false, !dbg !3384
  br i1 %375, label %376, label %392, !dbg !3384

376:                                              ; preds = %372
  %377 = icmp ult i64 %365, %146, !dbg !3386
  br i1 %377, label %378, label %380, !dbg !3390

378:                                              ; preds = %376
  %379 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !3386
  store i8 39, ptr %379, align 1, !dbg !3386, !tbaa !952
  br label %380, !dbg !3386

380:                                              ; preds = %378, %376
  %381 = add i64 %365, 1, !dbg !3390
  tail call void @llvm.dbg.value(metadata i64 %381, metadata !2998, metadata !DIExpression()), !dbg !3058
  %382 = icmp ult i64 %381, %146, !dbg !3391
  br i1 %382, label %383, label %385, !dbg !3394

383:                                              ; preds = %380
  %384 = getelementptr inbounds i8, ptr %0, i64 %381, !dbg !3391
  store i8 36, ptr %384, align 1, !dbg !3391, !tbaa !952
  br label %385, !dbg !3391

385:                                              ; preds = %383, %380
  %386 = add i64 %365, 2, !dbg !3394
  tail call void @llvm.dbg.value(metadata i64 %386, metadata !2998, metadata !DIExpression()), !dbg !3058
  %387 = icmp ult i64 %386, %146, !dbg !3395
  br i1 %387, label %388, label %390, !dbg !3398

388:                                              ; preds = %385
  %389 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !3395
  store i8 39, ptr %389, align 1, !dbg !3395, !tbaa !952
  br label %390, !dbg !3395

390:                                              ; preds = %388, %385
  %391 = add i64 %365, 3, !dbg !3398
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !2998, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3007, metadata !DIExpression()), !dbg !3058
  br label %392, !dbg !3399

392:                                              ; preds = %372, %390
  %393 = phi i64 [ %391, %390 ], [ %365, %372 ], !dbg !3058
  %394 = phi i8 [ 1, %390 ], [ %366, %372 ], !dbg !3058
  tail call void @llvm.dbg.value(metadata i8 %394, metadata !3007, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i64 %393, metadata !2998, metadata !DIExpression()), !dbg !3058
  %395 = icmp ult i64 %393, %146, !dbg !3400
  br i1 %395, label %396, label %398, !dbg !3403

396:                                              ; preds = %392
  %397 = getelementptr inbounds i8, ptr %0, i64 %393, !dbg !3400
  store i8 92, ptr %397, align 1, !dbg !3400, !tbaa !952
  br label %398, !dbg !3400

398:                                              ; preds = %396, %392
  %399 = add i64 %393, 1, !dbg !3403
  tail call void @llvm.dbg.value(metadata i64 %399, metadata !2998, metadata !DIExpression()), !dbg !3058
  %400 = icmp ult i64 %399, %146, !dbg !3404
  br i1 %400, label %401, label %405, !dbg !3407

401:                                              ; preds = %398
  %402 = lshr i8 %370, 6
  %403 = or disjoint i8 %402, 48, !dbg !3404
  %404 = getelementptr inbounds i8, ptr %0, i64 %399, !dbg !3404
  store i8 %403, ptr %404, align 1, !dbg !3404, !tbaa !952
  br label %405, !dbg !3404

405:                                              ; preds = %401, %398
  %406 = add i64 %393, 2, !dbg !3407
  tail call void @llvm.dbg.value(metadata i64 %406, metadata !2998, metadata !DIExpression()), !dbg !3058
  %407 = icmp ult i64 %406, %146, !dbg !3408
  br i1 %407, label %408, label %413, !dbg !3411

408:                                              ; preds = %405
  %409 = lshr i8 %370, 3
  %410 = and i8 %409, 7, !dbg !3408
  %411 = or disjoint i8 %410, 48, !dbg !3408
  %412 = getelementptr inbounds i8, ptr %0, i64 %406, !dbg !3408
  store i8 %411, ptr %412, align 1, !dbg !3408, !tbaa !952
  br label %413, !dbg !3408

413:                                              ; preds = %408, %405
  %414 = add i64 %393, 3, !dbg !3411
  tail call void @llvm.dbg.value(metadata i64 %414, metadata !2998, metadata !DIExpression()), !dbg !3058
  %415 = and i8 %370, 7, !dbg !3412
  %416 = or disjoint i8 %415, 48, !dbg !3413
  tail call void @llvm.dbg.value(metadata i8 %416, metadata !3020, metadata !DIExpression()), !dbg !3165
  br label %426, !dbg !3414

417:                                              ; preds = %364
  %418 = and i8 %368, 1, !dbg !3415
  %419 = icmp eq i8 %418, 0, !dbg !3415
  br i1 %419, label %426, label %420, !dbg !3417

420:                                              ; preds = %417
  %421 = icmp ult i64 %365, %146, !dbg !3418
  br i1 %421, label %422, label %424, !dbg !3422

422:                                              ; preds = %420
  %423 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !3418
  store i8 92, ptr %423, align 1, !dbg !3418, !tbaa !952
  br label %424, !dbg !3418

424:                                              ; preds = %422, %420
  %425 = add i64 %365, 1, !dbg !3422
  tail call void @llvm.dbg.value(metadata i64 %425, metadata !2998, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3015, metadata !DIExpression()), !dbg !3165
  br label %426, !dbg !3423

426:                                              ; preds = %417, %424, %413
  %427 = phi i64 [ %425, %424 ], [ %365, %417 ], [ %414, %413 ], !dbg !3058
  %428 = phi i8 [ %366, %424 ], [ %366, %417 ], [ %394, %413 ], !dbg !3157
  %429 = phi i8 [ 0, %424 ], [ %368, %417 ], [ %368, %413 ], !dbg !3165
  %430 = phi i8 [ %369, %424 ], [ %369, %417 ], [ 1, %413 ], !dbg !3165
  %431 = phi i8 [ %370, %424 ], [ %370, %417 ], [ %416, %413 ], !dbg !3165
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !3020, metadata !DIExpression()), !dbg !3165
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !3018, metadata !DIExpression()), !dbg !3165
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !3015, metadata !DIExpression()), !dbg !3165
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !3007, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !2998, metadata !DIExpression()), !dbg !3058
  %432 = add i64 %367, 1, !dbg !3424
  %433 = icmp ugt i64 %363, %432, !dbg !3426
  br i1 %433, label %434, label %463, !dbg !3427

434:                                              ; preds = %426
  %435 = and i8 %428, 1, !dbg !3428
  %436 = icmp ne i8 %435, 0, !dbg !3428
  %437 = and i8 %430, 1, !dbg !3428
  %438 = icmp eq i8 %437, 0, !dbg !3428
  %439 = select i1 %436, i1 %438, i1 false, !dbg !3428
  br i1 %439, label %440, label %451, !dbg !3428

440:                                              ; preds = %434
  %441 = icmp ult i64 %427, %146, !dbg !3431
  br i1 %441, label %442, label %444, !dbg !3435

442:                                              ; preds = %440
  %443 = getelementptr inbounds i8, ptr %0, i64 %427, !dbg !3431
  store i8 39, ptr %443, align 1, !dbg !3431, !tbaa !952
  br label %444, !dbg !3431

444:                                              ; preds = %442, %440
  %445 = add i64 %427, 1, !dbg !3435
  tail call void @llvm.dbg.value(metadata i64 %445, metadata !2998, metadata !DIExpression()), !dbg !3058
  %446 = icmp ult i64 %445, %146, !dbg !3436
  br i1 %446, label %447, label %449, !dbg !3439

447:                                              ; preds = %444
  %448 = getelementptr inbounds i8, ptr %0, i64 %445, !dbg !3436
  store i8 39, ptr %448, align 1, !dbg !3436, !tbaa !952
  br label %449, !dbg !3436

449:                                              ; preds = %447, %444
  %450 = add i64 %427, 2, !dbg !3439
  tail call void @llvm.dbg.value(metadata i64 %450, metadata !2998, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3007, metadata !DIExpression()), !dbg !3058
  br label %451, !dbg !3440

451:                                              ; preds = %434, %449
  %452 = phi i64 [ %450, %449 ], [ %427, %434 ], !dbg !3441
  %453 = phi i8 [ 0, %449 ], [ %428, %434 ], !dbg !3058
  tail call void @llvm.dbg.value(metadata i8 %453, metadata !3007, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i64 %452, metadata !2998, metadata !DIExpression()), !dbg !3058
  %454 = icmp ult i64 %452, %146, !dbg !3442
  br i1 %454, label %455, label %457, !dbg !3445

455:                                              ; preds = %451
  %456 = getelementptr inbounds i8, ptr %0, i64 %452, !dbg !3442
  store i8 %431, ptr %456, align 1, !dbg !3442, !tbaa !952
  br label %457, !dbg !3442

457:                                              ; preds = %455, %451
  %458 = add i64 %452, 1, !dbg !3445
  tail call void @llvm.dbg.value(metadata i64 %458, metadata !2998, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i64 %432, metadata !3013, metadata !DIExpression()), !dbg !3155
  %459 = getelementptr inbounds i8, ptr %2, i64 %432, !dbg !3446
  %460 = load i8, ptr %459, align 1, !dbg !3446, !tbaa !952
  tail call void @llvm.dbg.value(metadata i8 %460, metadata !3020, metadata !DIExpression()), !dbg !3165
  br label %364, !dbg !3447, !llvm.loop !3448

461:                                              ; preds = %355
  %462 = zext i1 %358 to i8, !dbg !3165
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !3020, metadata !DIExpression()), !dbg !3165
  tail call void @llvm.dbg.value(metadata i8 %462, metadata !3019, metadata !DIExpression()), !dbg !3165
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3018, metadata !DIExpression()), !dbg !3165
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !3015, metadata !DIExpression()), !dbg !3165
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !3013, metadata !DIExpression()), !dbg !3155
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !3007, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2998, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !2991, metadata !DIExpression()), !dbg !3058
  br label %465

463:                                              ; preds = %426
  %464 = zext i1 %358 to i8, !dbg !3165
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !3020, metadata !DIExpression()), !dbg !3165
  tail call void @llvm.dbg.value(metadata i8 %464, metadata !3019, metadata !DIExpression()), !dbg !3165
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !3018, metadata !DIExpression()), !dbg !3165
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !3015, metadata !DIExpression()), !dbg !3165
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !3013, metadata !DIExpression()), !dbg !3155
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !3007, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !2998, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !2991, metadata !DIExpression()), !dbg !3058
  br label %558

465:                                              ; preds = %461, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %274, %206, %209, %223, %283, %304, %281, %278, %275, %226, %227, %259, %236, %232, %229, %228
  %466 = phi i64 [ %171, %304 ], [ %171, %283 ], [ %171, %281 ], [ %171, %278 ], [ -1, %275 ], [ %171, %226 ], [ %171, %236 ], [ %171, %259 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %274 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %356, %461 ], !dbg !3451
  %467 = phi i64 [ %305, %304 ], [ %140, %283 ], [ %140, %281 ], [ %140, %278 ], [ %140, %275 ], [ %140, %226 ], [ %140, %236 ], [ %260, %259 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %274 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %461 ], !dbg !3058
  %468 = phi i64 [ %289, %304 ], [ %141, %283 ], [ %141, %281 ], [ %141, %278 ], [ %141, %275 ], [ %141, %226 ], [ %141, %236 ], [ %141, %259 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %274 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %461 ], !dbg !3063
  %469 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %142, %281 ], [ %142, %278 ], [ %142, %275 ], [ %142, %226 ], [ %142, %236 ], [ %142, %259 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %274 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %461 ], !dbg !3058
  %470 = phi i8 [ 0, %304 ], [ %144, %283 ], [ %144, %281 ], [ %144, %278 ], [ %144, %275 ], [ %144, %226 ], [ %144, %236 ], [ %144, %259 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %274 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %461 ], !dbg !3058
  %471 = phi i64 [ %145, %304 ], [ %145, %283 ], [ %145, %281 ], [ %145, %278 ], [ %145, %275 ], [ %145, %226 ], [ %145, %236 ], [ %230, %259 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %274 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %461 ], !dbg !3155
  %472 = phi i8 [ 0, %304 ], [ 0, %283 ], [ 0, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %274 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %461 ], !dbg !3165
  %473 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %282, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %274 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %462, %461 ], !dbg !3165
  %474 = phi i8 [ 39, %304 ], [ 39, %283 ], [ %175, %281 ], [ %175, %278 ], [ %175, %275 ], [ 63, %226 ], [ 63, %236 ], [ %238, %259 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %274 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %461 ], !dbg !3165
  %475 = phi i64 [ %290, %304 ], [ %146, %283 ], [ %146, %281 ], [ %146, %278 ], [ %146, %275 ], [ %146, %226 ], [ %146, %236 ], [ %146, %259 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %274 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %461 ]
  tail call void @llvm.dbg.value(metadata i64 %475, metadata !2989, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i8 %474, metadata !3020, metadata !DIExpression()), !dbg !3165
  tail call void @llvm.dbg.value(metadata i8 %473, metadata !3019, metadata !DIExpression()), !dbg !3165
  tail call void @llvm.dbg.value(metadata i8 %472, metadata !3018, metadata !DIExpression()), !dbg !3165
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !3015, metadata !DIExpression()), !dbg !3165
  tail call void @llvm.dbg.value(metadata i64 %471, metadata !3013, metadata !DIExpression()), !dbg !3155
  tail call void @llvm.dbg.value(metadata i8 %470, metadata !3007, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i8 %469, metadata !3004, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i64 %468, metadata !2999, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i64 %467, metadata !2998, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i64 %466, metadata !2991, metadata !DIExpression()), !dbg !3058
  br i1 %126, label %487, label %476, !dbg !3452

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
  br i1 %137, label %488, label %509, !dbg !3454

487:                                              ; preds = %465
  br i1 %27, label %509, label %488, !dbg !3455

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
  %499 = lshr i8 %490, 5, !dbg !3456
  %500 = zext nneg i8 %499 to i64, !dbg !3456
  %501 = getelementptr inbounds i32, ptr %6, i64 %500, !dbg !3457
  %502 = load i32, ptr %501, align 4, !dbg !3457, !tbaa !943
  %503 = and i8 %490, 31, !dbg !3458
  %504 = zext nneg i8 %503 to i32, !dbg !3458
  %505 = shl nuw i32 1, %504, !dbg !3459
  %506 = and i32 %502, %505, !dbg !3459
  %507 = icmp eq i32 %506, 0, !dbg !3459
  %508 = and i1 %172, %507, !dbg !3460
  br i1 %508, label %558, label %520, !dbg !3460

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
  br i1 %172, label %558, label %520, !dbg !3461

520:                                              ; preds = %269, %272, %509, %488
  %521 = phi i64 [ %498, %488 ], [ %519, %509 ], [ %171, %272 ], [ %171, %269 ], !dbg !3451
  %522 = phi i64 [ %497, %488 ], [ %518, %509 ], [ %140, %272 ], [ %140, %269 ], !dbg !3058
  %523 = phi i64 [ %496, %488 ], [ %517, %509 ], [ %141, %272 ], [ %141, %269 ], !dbg !3063
  %524 = phi i8 [ %495, %488 ], [ %516, %509 ], [ %142, %272 ], [ %142, %269 ], !dbg !3067
  %525 = phi i8 [ %494, %488 ], [ %515, %509 ], [ %144, %272 ], [ %144, %269 ], !dbg !3157
  %526 = phi i64 [ %493, %488 ], [ %514, %509 ], [ %145, %272 ], [ %145, %269 ], !dbg !3462
  %527 = phi i8 [ %491, %488 ], [ %512, %509 ], [ 0, %272 ], [ 0, %269 ], !dbg !3165
  %528 = phi i8 [ %490, %488 ], [ %511, %509 ], [ %273, %272 ], [ 92, %269 ], !dbg !3165
  %529 = phi i64 [ %489, %488 ], [ %510, %509 ], [ %146, %272 ], [ %146, %269 ]
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !2989, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !3020, metadata !DIExpression()), !dbg !3165
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !3019, metadata !DIExpression()), !dbg !3165
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !3013, metadata !DIExpression()), !dbg !3155
  tail call void @llvm.dbg.value(metadata i8 %525, metadata !3007, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !3004, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !2999, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !2998, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !2991, metadata !DIExpression()), !dbg !3058
  call void @llvm.dbg.label(metadata !3047), !dbg !3463
  br i1 %131, label %530, label %659, !dbg !3464

530:                                              ; preds = %520
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3018, metadata !DIExpression()), !dbg !3165
  %531 = and i8 %525, 1, !dbg !3466
  %532 = icmp eq i8 %531, 0, !dbg !3466
  %533 = select i1 %132, i1 %532, i1 false, !dbg !3466
  br i1 %533, label %534, label %550, !dbg !3466

534:                                              ; preds = %530
  %535 = icmp ult i64 %522, %529, !dbg !3468
  br i1 %535, label %536, label %538, !dbg !3472

536:                                              ; preds = %534
  %537 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !3468
  store i8 39, ptr %537, align 1, !dbg !3468, !tbaa !952
  br label %538, !dbg !3468

538:                                              ; preds = %536, %534
  %539 = add i64 %522, 1, !dbg !3472
  tail call void @llvm.dbg.value(metadata i64 %539, metadata !2998, metadata !DIExpression()), !dbg !3058
  %540 = icmp ult i64 %539, %529, !dbg !3473
  br i1 %540, label %541, label %543, !dbg !3476

541:                                              ; preds = %538
  %542 = getelementptr inbounds i8, ptr %0, i64 %539, !dbg !3473
  store i8 36, ptr %542, align 1, !dbg !3473, !tbaa !952
  br label %543, !dbg !3473

543:                                              ; preds = %541, %538
  %544 = add i64 %522, 2, !dbg !3476
  tail call void @llvm.dbg.value(metadata i64 %544, metadata !2998, metadata !DIExpression()), !dbg !3058
  %545 = icmp ult i64 %544, %529, !dbg !3477
  br i1 %545, label %546, label %548, !dbg !3480

546:                                              ; preds = %543
  %547 = getelementptr inbounds i8, ptr %0, i64 %544, !dbg !3477
  store i8 39, ptr %547, align 1, !dbg !3477, !tbaa !952
  br label %548, !dbg !3477

548:                                              ; preds = %546, %543
  %549 = add i64 %522, 3, !dbg !3480
  tail call void @llvm.dbg.value(metadata i64 %549, metadata !2998, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3007, metadata !DIExpression()), !dbg !3058
  br label %550, !dbg !3481

550:                                              ; preds = %530, %548
  %551 = phi i64 [ %549, %548 ], [ %522, %530 ], !dbg !3165
  %552 = phi i8 [ 1, %548 ], [ %525, %530 ], !dbg !3058
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !3007, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i64 %551, metadata !2998, metadata !DIExpression()), !dbg !3058
  %553 = icmp ult i64 %551, %529, !dbg !3482
  br i1 %553, label %554, label %556, !dbg !3485

554:                                              ; preds = %550
  %555 = getelementptr inbounds i8, ptr %0, i64 %551, !dbg !3482
  store i8 92, ptr %555, align 1, !dbg !3482, !tbaa !952
  br label %556, !dbg !3482

556:                                              ; preds = %550, %554
  %557 = add i64 %551, 1, !dbg !3485
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !2989, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !3020, metadata !DIExpression()), !dbg !3165
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !3019, metadata !DIExpression()), !dbg !3165
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3018, metadata !DIExpression()), !dbg !3165
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !3013, metadata !DIExpression()), !dbg !3155
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !3007, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !3004, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !2999, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i64 %557, metadata !2998, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !2991, metadata !DIExpression()), !dbg !3058
  call void @llvm.dbg.label(metadata !3048), !dbg !3486
  br label %585, !dbg !3487

558:                                              ; preds = %463, %488, %267, %269, %509
  %559 = phi i64 [ %356, %463 ], [ %519, %509 ], [ %171, %267 ], [ %171, %269 ], [ %498, %488 ], !dbg !3451
  %560 = phi i64 [ %427, %463 ], [ %518, %509 ], [ %140, %267 ], [ %140, %269 ], [ %497, %488 ], !dbg !3058
  %561 = phi i64 [ %141, %463 ], [ %517, %509 ], [ %141, %267 ], [ %141, %269 ], [ %496, %488 ], !dbg !3063
  %562 = phi i8 [ %142, %463 ], [ %516, %509 ], [ %142, %267 ], [ %142, %269 ], [ %495, %488 ], !dbg !3067
  %563 = phi i8 [ %428, %463 ], [ %515, %509 ], [ %144, %267 ], [ %144, %269 ], [ %494, %488 ], !dbg !3157
  %564 = phi i64 [ %367, %463 ], [ %514, %509 ], [ %145, %267 ], [ %145, %269 ], [ %493, %488 ], !dbg !3462
  %565 = phi i8 [ %430, %463 ], [ %513, %509 ], [ 0, %267 ], [ 0, %269 ], [ %492, %488 ], !dbg !3165
  %566 = phi i8 [ %464, %463 ], [ %512, %509 ], [ 0, %267 ], [ 0, %269 ], [ %491, %488 ], !dbg !3165
  %567 = phi i8 [ %431, %463 ], [ %511, %509 ], [ 92, %267 ], [ 92, %269 ], [ %490, %488 ], !dbg !3490
  %568 = phi i64 [ %146, %463 ], [ %510, %509 ], [ %146, %267 ], [ %146, %269 ], [ %489, %488 ]
  tail call void @llvm.dbg.value(metadata i64 %568, metadata !2989, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i8 %567, metadata !3020, metadata !DIExpression()), !dbg !3165
  tail call void @llvm.dbg.value(metadata i8 %566, metadata !3019, metadata !DIExpression()), !dbg !3165
  tail call void @llvm.dbg.value(metadata i8 %565, metadata !3018, metadata !DIExpression()), !dbg !3165
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !3013, metadata !DIExpression()), !dbg !3155
  tail call void @llvm.dbg.value(metadata i8 %563, metadata !3007, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i8 %562, metadata !3004, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !2999, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i64 %560, metadata !2998, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i64 %559, metadata !2991, metadata !DIExpression()), !dbg !3058
  call void @llvm.dbg.label(metadata !3048), !dbg !3486
  %569 = and i8 %563, 1, !dbg !3487
  %570 = icmp ne i8 %569, 0, !dbg !3487
  %571 = and i8 %565, 1, !dbg !3487
  %572 = icmp eq i8 %571, 0, !dbg !3487
  %573 = select i1 %570, i1 %572, i1 false, !dbg !3487
  br i1 %573, label %574, label %585, !dbg !3487

574:                                              ; preds = %558
  %575 = icmp ult i64 %560, %568, !dbg !3491
  br i1 %575, label %576, label %578, !dbg !3495

576:                                              ; preds = %574
  %577 = getelementptr inbounds i8, ptr %0, i64 %560, !dbg !3491
  store i8 39, ptr %577, align 1, !dbg !3491, !tbaa !952
  br label %578, !dbg !3491

578:                                              ; preds = %576, %574
  %579 = add i64 %560, 1, !dbg !3495
  tail call void @llvm.dbg.value(metadata i64 %579, metadata !2998, metadata !DIExpression()), !dbg !3058
  %580 = icmp ult i64 %579, %568, !dbg !3496
  br i1 %580, label %581, label %583, !dbg !3499

581:                                              ; preds = %578
  %582 = getelementptr inbounds i8, ptr %0, i64 %579, !dbg !3496
  store i8 39, ptr %582, align 1, !dbg !3496, !tbaa !952
  br label %583, !dbg !3496

583:                                              ; preds = %581, %578
  %584 = add i64 %560, 2, !dbg !3499
  tail call void @llvm.dbg.value(metadata i64 %584, metadata !2998, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3007, metadata !DIExpression()), !dbg !3058
  br label %585, !dbg !3500

585:                                              ; preds = %556, %558, %583
  %586 = phi i64 [ %568, %583 ], [ %568, %558 ], [ %529, %556 ]
  %587 = phi i8 [ %567, %583 ], [ %567, %558 ], [ %528, %556 ]
  %588 = phi i8 [ %566, %583 ], [ %566, %558 ], [ %527, %556 ]
  %589 = phi i64 [ %564, %583 ], [ %564, %558 ], [ %526, %556 ]
  %590 = phi i8 [ %562, %583 ], [ %562, %558 ], [ %524, %556 ]
  %591 = phi i64 [ %561, %583 ], [ %561, %558 ], [ %523, %556 ]
  %592 = phi i64 [ %559, %583 ], [ %559, %558 ], [ %521, %556 ]
  %593 = phi i64 [ %584, %583 ], [ %560, %558 ], [ %557, %556 ], !dbg !3165
  %594 = phi i8 [ 0, %583 ], [ %563, %558 ], [ %552, %556 ], !dbg !3058
  tail call void @llvm.dbg.value(metadata i8 %594, metadata !3007, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i64 %593, metadata !2998, metadata !DIExpression()), !dbg !3058
  %595 = icmp ult i64 %593, %586, !dbg !3501
  br i1 %595, label %596, label %598, !dbg !3504

596:                                              ; preds = %585
  %597 = getelementptr inbounds i8, ptr %0, i64 %593, !dbg !3501
  store i8 %587, ptr %597, align 1, !dbg !3501, !tbaa !952
  br label %598, !dbg !3501

598:                                              ; preds = %596, %585
  %599 = add i64 %593, 1, !dbg !3504
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !2998, metadata !DIExpression()), !dbg !3058
  %600 = icmp eq i8 %588, 0, !dbg !3505
  %601 = select i1 %600, i8 0, i8 %143, !dbg !3507
  tail call void @llvm.dbg.value(metadata i8 %601, metadata !3005, metadata !DIExpression()), !dbg !3058
  br label %602, !dbg !3508

602:                                              ; preds = %225, %598
  %603 = phi i64 [ %592, %598 ], [ %171, %225 ], !dbg !3451
  %604 = phi i64 [ %599, %598 ], [ %140, %225 ], !dbg !3058
  %605 = phi i64 [ %591, %598 ], [ %141, %225 ], !dbg !3063
  %606 = phi i8 [ %590, %598 ], [ %142, %225 ], !dbg !3067
  %607 = phi i8 [ %601, %598 ], [ %143, %225 ], !dbg !3068
  %608 = phi i8 [ %594, %598 ], [ %144, %225 ], !dbg !3157
  %609 = phi i64 [ %589, %598 ], [ %145, %225 ], !dbg !3462
  %610 = phi i64 [ %586, %598 ], [ %146, %225 ]
  tail call void @llvm.dbg.value(metadata i64 %610, metadata !2989, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !3013, metadata !DIExpression()), !dbg !3155
  tail call void @llvm.dbg.value(metadata i8 %608, metadata !3007, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i8 %607, metadata !3005, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i8 %606, metadata !3004, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i64 %605, metadata !2999, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !2998, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i64 %603, metadata !2991, metadata !DIExpression()), !dbg !3058
  %611 = add i64 %609, 1, !dbg !3509
  tail call void @llvm.dbg.value(metadata i64 %611, metadata !3013, metadata !DIExpression()), !dbg !3155
  br label %138, !dbg !3510, !llvm.loop !3511

612:                                              ; preds = %152, %148
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !2989, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !3005, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !3004, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !2999, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2998, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !2991, metadata !DIExpression()), !dbg !3058
  %613 = icmp eq i64 %140, 0, !dbg !3513
  %614 = and i1 %132, %613, !dbg !3515
  %615 = xor i1 %614, true, !dbg !3515
  %616 = select i1 %615, i1 true, i1 %131, !dbg !3515
  br i1 %616, label %617, label %655, !dbg !3515

617:                                              ; preds = %612
  %618 = select i1 %132, i1 %131, i1 false, !dbg !3516
  %619 = and i8 %142, 1
  %620 = icmp ne i8 %619, 0
  %621 = select i1 %618, i1 %620, i1 false, !dbg !3516
  br i1 %621, label %622, label %631, !dbg !3516

622:                                              ; preds = %617
  %623 = and i8 %143, 1, !dbg !3518
  %624 = icmp eq i8 %623, 0, !dbg !3518
  br i1 %624, label %627, label %625, !dbg !3521

625:                                              ; preds = %622
  %626 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %116, ptr noundef %117), !dbg !3522
  br label %672, !dbg !3523

627:                                              ; preds = %622
  %628 = icmp eq i64 %146, 0, !dbg !3524
  %629 = icmp ne i64 %141, 0
  %630 = select i1 %628, i1 %629, i1 false, !dbg !3526
  br i1 %630, label %28, label %631, !dbg !3526

631:                                              ; preds = %627, %617
  %632 = phi i1 [ true, %627 ], [ %131, %617 ]
  %633 = icmp ne ptr %119, null, !dbg !3527
  %634 = select i1 %633, i1 %632, i1 false, !dbg !3529
  br i1 %634, label %635, label %650, !dbg !3529

635:                                              ; preds = %631
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !3000, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2998, metadata !DIExpression()), !dbg !3058
  %636 = load i8, ptr %119, align 1, !dbg !3530, !tbaa !952
  %637 = icmp eq i8 %636, 0, !dbg !3533
  br i1 %637, label %650, label %638, !dbg !3533

638:                                              ; preds = %635, %645
  %639 = phi i8 [ %648, %645 ], [ %636, %635 ]
  %640 = phi ptr [ %647, %645 ], [ %119, %635 ]
  %641 = phi i64 [ %646, %645 ], [ %140, %635 ]
  tail call void @llvm.dbg.value(metadata ptr %640, metadata !3000, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i64 %641, metadata !2998, metadata !DIExpression()), !dbg !3058
  %642 = icmp ult i64 %641, %146, !dbg !3534
  br i1 %642, label %643, label %645, !dbg !3537

643:                                              ; preds = %638
  %644 = getelementptr inbounds i8, ptr %0, i64 %641, !dbg !3534
  store i8 %639, ptr %644, align 1, !dbg !3534, !tbaa !952
  br label %645, !dbg !3534

645:                                              ; preds = %643, %638
  %646 = add i64 %641, 1, !dbg !3537
  tail call void @llvm.dbg.value(metadata i64 %646, metadata !2998, metadata !DIExpression()), !dbg !3058
  %647 = getelementptr inbounds i8, ptr %640, i64 1, !dbg !3538
  tail call void @llvm.dbg.value(metadata ptr %647, metadata !3000, metadata !DIExpression()), !dbg !3058
  %648 = load i8, ptr %647, align 1, !dbg !3530, !tbaa !952
  %649 = icmp eq i8 %648, 0, !dbg !3533
  br i1 %649, label %650, label %638, !dbg !3533, !llvm.loop !3539

650:                                              ; preds = %645, %635, %631
  %651 = phi i64 [ %140, %631 ], [ %140, %635 ], [ %646, %645 ], !dbg !3138
  tail call void @llvm.dbg.value(metadata i64 %651, metadata !2998, metadata !DIExpression()), !dbg !3058
  %652 = icmp ult i64 %651, %146, !dbg !3541
  br i1 %652, label %653, label %672, !dbg !3543

653:                                              ; preds = %650
  %654 = getelementptr inbounds i8, ptr %0, i64 %651, !dbg !3544
  store i8 0, ptr %654, align 1, !dbg !3545, !tbaa !952
  br label %672, !dbg !3544

655:                                              ; preds = %612, %227, %267, %270, %281, %284, %354
  %656 = phi i64 [ %320, %354 ], [ %171, %284 ], [ %171, %281 ], [ %171, %270 ], [ %171, %267 ], [ %171, %227 ], [ %139, %612 ]
  call void @llvm.dbg.label(metadata !3049), !dbg !3546
  %657 = icmp eq i8 %123, 0, !dbg !3547
  %658 = select i1 %657, i32 2, i32 4, !dbg !3547
  br label %666, !dbg !3547

659:                                              ; preds = %520, %177, %371
  %660 = phi i64 [ %146, %371 ], [ %529, %520 ], [ %146, %177 ]
  %661 = phi i64 [ %356, %371 ], [ %521, %520 ], [ %171, %177 ]
  call void @llvm.dbg.label(metadata !3049), !dbg !3546
  %662 = icmp eq i32 %115, 2, !dbg !3549
  %663 = icmp eq i8 %123, 0, !dbg !3547
  %664 = select i1 %663, i32 2, i32 4, !dbg !3547
  %665 = select i1 %662, i32 %664, i32 %115, !dbg !3547
  br label %666, !dbg !3547

666:                                              ; preds = %239, %163, %659, %655
  %667 = phi i64 [ %656, %655 ], [ %661, %659 ], [ %161, %163 ], [ %171, %239 ]
  %668 = phi i64 [ %146, %655 ], [ %660, %659 ], [ %146, %163 ], [ %146, %239 ]
  %669 = phi i32 [ %658, %655 ], [ %665, %659 ], [ %115, %163 ], [ 5, %239 ]
  tail call void @llvm.dbg.value(metadata i32 %669, metadata !2992, metadata !DIExpression()), !dbg !3058
  %670 = and i32 %5, -3, !dbg !3550
  %671 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %668, ptr noundef %2, i64 noundef %667, i32 noundef %669, i32 noundef %670, ptr noundef null, ptr noundef %116, ptr noundef %117), !dbg !3551
  br label %672, !dbg !3552

672:                                              ; preds = %650, %653, %666, %625
  %673 = phi i64 [ %671, %666 ], [ %626, %625 ], [ %651, %653 ], [ %651, %650 ]
  ret i64 %673, !dbg !3553
}

; Function Attrs: nounwind
declare !dbg !3554 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !3557 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !3560 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #19 !dbg !3562 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3566, metadata !DIExpression()), !dbg !3569
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3567, metadata !DIExpression()), !dbg !3569
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3568, metadata !DIExpression()), !dbg !3569
  call void @llvm.dbg.value(metadata ptr %0, metadata !3570, metadata !DIExpression()), !dbg !3583
  call void @llvm.dbg.value(metadata i64 %1, metadata !3575, metadata !DIExpression()), !dbg !3583
  call void @llvm.dbg.value(metadata ptr null, metadata !3576, metadata !DIExpression()), !dbg !3583
  call void @llvm.dbg.value(metadata ptr %2, metadata !3577, metadata !DIExpression()), !dbg !3583
  %4 = icmp eq ptr %2, null, !dbg !3585
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !3585
  call void @llvm.dbg.value(metadata ptr %5, metadata !3578, metadata !DIExpression()), !dbg !3583
  %6 = tail call ptr @__errno_location() #47, !dbg !3586
  %7 = load i32, ptr %6, align 4, !dbg !3586, !tbaa !943
  call void @llvm.dbg.value(metadata i32 %7, metadata !3579, metadata !DIExpression()), !dbg !3583
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !3587
  %9 = load i32, ptr %8, align 4, !dbg !3587, !tbaa !2932
  %10 = or i32 %9, 1, !dbg !3588
  call void @llvm.dbg.value(metadata i32 %10, metadata !3580, metadata !DIExpression()), !dbg !3583
  %11 = load i32, ptr %5, align 8, !dbg !3589, !tbaa !2882
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3590
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3591
  %14 = load ptr, ptr %13, align 8, !dbg !3591, !tbaa !2953
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3592
  %16 = load ptr, ptr %15, align 8, !dbg !3592, !tbaa !2956
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !3593
  %18 = add i64 %17, 1, !dbg !3594
  call void @llvm.dbg.value(metadata i64 %18, metadata !3581, metadata !DIExpression()), !dbg !3583
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #49, !dbg !3595
  call void @llvm.dbg.value(metadata ptr %19, metadata !3582, metadata !DIExpression()), !dbg !3583
  %20 = load i32, ptr %5, align 8, !dbg !3596, !tbaa !2882
  %21 = load ptr, ptr %13, align 8, !dbg !3597, !tbaa !2953
  %22 = load ptr, ptr %15, align 8, !dbg !3598, !tbaa !2956
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !3599
  store i32 %7, ptr %6, align 4, !dbg !3600, !tbaa !943
  ret ptr %19, !dbg !3601
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #19 !dbg !3571 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3570, metadata !DIExpression()), !dbg !3602
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3575, metadata !DIExpression()), !dbg !3602
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3576, metadata !DIExpression()), !dbg !3602
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3577, metadata !DIExpression()), !dbg !3602
  %5 = icmp eq ptr %3, null, !dbg !3603
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !3603
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3578, metadata !DIExpression()), !dbg !3602
  %7 = tail call ptr @__errno_location() #47, !dbg !3604
  %8 = load i32, ptr %7, align 4, !dbg !3604, !tbaa !943
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !3579, metadata !DIExpression()), !dbg !3602
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !3605
  %10 = load i32, ptr %9, align 4, !dbg !3605, !tbaa !2932
  %11 = icmp eq ptr %2, null, !dbg !3606
  %12 = zext i1 %11 to i32, !dbg !3606
  %13 = or i32 %10, %12, !dbg !3607
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !3580, metadata !DIExpression()), !dbg !3602
  %14 = load i32, ptr %6, align 8, !dbg !3608, !tbaa !2882
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !3609
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3610
  %17 = load ptr, ptr %16, align 8, !dbg !3610, !tbaa !2953
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3611
  %19 = load ptr, ptr %18, align 8, !dbg !3611, !tbaa !2956
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !3612
  %21 = add i64 %20, 1, !dbg !3613
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !3581, metadata !DIExpression()), !dbg !3602
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #49, !dbg !3614
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !3582, metadata !DIExpression()), !dbg !3602
  %23 = load i32, ptr %6, align 8, !dbg !3615, !tbaa !2882
  %24 = load ptr, ptr %16, align 8, !dbg !3616, !tbaa !2953
  %25 = load ptr, ptr %18, align 8, !dbg !3617, !tbaa !2956
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !3618
  store i32 %8, ptr %7, align 4, !dbg !3619, !tbaa !943
  br i1 %11, label %28, label %27, !dbg !3620

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !3621, !tbaa !1328
  br label %28, !dbg !3623

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !3624
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #19 !dbg !3625 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !3630, !tbaa !873
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3627, metadata !DIExpression()), !dbg !3631
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3628, metadata !DIExpression()), !dbg !3632
  %2 = load i32, ptr @nslots, align 4, !tbaa !943
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3628, metadata !DIExpression()), !dbg !3632
  %3 = icmp sgt i32 %2, 1, !dbg !3633
  br i1 %3, label %4, label %6, !dbg !3635

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !3633
  br label %10, !dbg !3635

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !3636
  %8 = load ptr, ptr %7, align 8, !dbg !3636, !tbaa !3638
  %9 = icmp eq ptr %8, @slot0, !dbg !3640
  br i1 %9, label %17, label %16, !dbg !3641

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3628, metadata !DIExpression()), !dbg !3632
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !3642
  %13 = load ptr, ptr %12, align 8, !dbg !3642, !tbaa !3638
  tail call void @free(ptr noundef %13) #44, !dbg !3643
  %14 = add nuw nsw i64 %11, 1, !dbg !3644
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !3628, metadata !DIExpression()), !dbg !3632
  %15 = icmp eq i64 %14, %5, !dbg !3633
  br i1 %15, label %6, label %10, !dbg !3635, !llvm.loop !3645

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #44, !dbg !3647
  store i64 256, ptr @slotvec0, align 8, !dbg !3649, !tbaa !3650
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !3651, !tbaa !3638
  br label %17, !dbg !3652

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !3653
  br i1 %18, label %20, label %19, !dbg !3655

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #44, !dbg !3656
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !3658, !tbaa !873
  br label %20, !dbg !3659

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !3660, !tbaa !943
  ret void, !dbg !3661
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #19 !dbg !3662 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3664, metadata !DIExpression()), !dbg !3666
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3665, metadata !DIExpression()), !dbg !3666
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3667
  ret ptr %3, !dbg !3668
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #19 !dbg !3669 {
  %5 = alloca i64, align 8, !DIAssignID !3689
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3683, metadata !DIExpression(), metadata !3689, metadata ptr %5, metadata !DIExpression()), !dbg !3690
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3673, metadata !DIExpression()), !dbg !3691
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3674, metadata !DIExpression()), !dbg !3691
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3675, metadata !DIExpression()), !dbg !3691
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3676, metadata !DIExpression()), !dbg !3691
  %6 = tail call ptr @__errno_location() #47, !dbg !3692
  %7 = load i32, ptr %6, align 4, !dbg !3692, !tbaa !943
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !3677, metadata !DIExpression()), !dbg !3691
  %8 = load ptr, ptr @slotvec, align 8, !dbg !3693, !tbaa !873
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !3678, metadata !DIExpression()), !dbg !3691
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !3679, metadata !DIExpression()), !dbg !3691
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3694
  br i1 %9, label %10, label %11, !dbg !3694

10:                                               ; preds = %4
  tail call void @abort() #46, !dbg !3696
  unreachable, !dbg !3696

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !3697, !tbaa !943
  %13 = icmp sgt i32 %12, %0, !dbg !3698
  br i1 %13, label %32, label %14, !dbg !3699

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3700
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !3680, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3690
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #44, !dbg !3701
  %16 = sext i32 %12 to i64, !dbg !3702
  store i64 %16, ptr %5, align 8, !dbg !3703, !tbaa !1328, !DIAssignID !3704
  call void @llvm.dbg.assign(metadata i64 %16, metadata !3683, metadata !DIExpression(), metadata !3704, metadata ptr %5, metadata !DIExpression()), !dbg !3690
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3705
  %18 = add nuw nsw i32 %0, 1, !dbg !3706
  %19 = sub i32 %18, %12, !dbg !3707
  %20 = sext i32 %19 to i64, !dbg !3708
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #44, !dbg !3709
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !3678, metadata !DIExpression()), !dbg !3691
  store ptr %21, ptr @slotvec, align 8, !dbg !3710, !tbaa !873
  br i1 %15, label %22, label %23, !dbg !3711

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3712, !tbaa.struct !3714
  br label %23, !dbg !3715

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3716, !tbaa !943
  %25 = sext i32 %24 to i64, !dbg !3717
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !3717
  %27 = load i64, ptr %5, align 8, !dbg !3718, !tbaa !1328
  %28 = sub nsw i64 %27, %25, !dbg !3719
  %29 = shl i64 %28, 4, !dbg !3720
  call void @llvm.dbg.value(metadata ptr %26, metadata !3096, metadata !DIExpression()), !dbg !3721
  call void @llvm.dbg.value(metadata i32 0, metadata !3099, metadata !DIExpression()), !dbg !3721
  call void @llvm.dbg.value(metadata i64 %29, metadata !3100, metadata !DIExpression()), !dbg !3721
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #44, !dbg !3723
  %30 = load i64, ptr %5, align 8, !dbg !3724, !tbaa !1328
  %31 = trunc i64 %30 to i32, !dbg !3724
  store i32 %31, ptr @nslots, align 4, !dbg !3725, !tbaa !943
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #44, !dbg !3726
  br label %32, !dbg !3727

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !3691
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !3678, metadata !DIExpression()), !dbg !3691
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3728
  %36 = load i64, ptr %35, align 8, !dbg !3729, !tbaa !3650
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !3684, metadata !DIExpression()), !dbg !3730
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3731
  %38 = load ptr, ptr %37, align 8, !dbg !3731, !tbaa !3638
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !3686, metadata !DIExpression()), !dbg !3730
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3732
  %40 = load i32, ptr %39, align 4, !dbg !3732, !tbaa !2932
  %41 = or i32 %40, 1, !dbg !3733
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !3687, metadata !DIExpression()), !dbg !3730
  %42 = load i32, ptr %3, align 8, !dbg !3734, !tbaa !2882
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3735
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3736
  %45 = load ptr, ptr %44, align 8, !dbg !3736, !tbaa !2953
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3737
  %47 = load ptr, ptr %46, align 8, !dbg !3737, !tbaa !2956
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3738
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !3688, metadata !DIExpression()), !dbg !3730
  %49 = icmp ugt i64 %36, %48, !dbg !3739
  br i1 %49, label %60, label %50, !dbg !3741

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3742
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !3684, metadata !DIExpression()), !dbg !3730
  store i64 %51, ptr %35, align 8, !dbg !3744, !tbaa !3650
  %52 = icmp eq ptr %38, @slot0, !dbg !3745
  br i1 %52, label %54, label %53, !dbg !3747

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #44, !dbg !3748
  br label %54, !dbg !3748

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #49, !dbg !3749
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !3686, metadata !DIExpression()), !dbg !3730
  store ptr %55, ptr %37, align 8, !dbg !3750, !tbaa !3638
  %56 = load i32, ptr %3, align 8, !dbg !3751, !tbaa !2882
  %57 = load ptr, ptr %44, align 8, !dbg !3752, !tbaa !2953
  %58 = load ptr, ptr %46, align 8, !dbg !3753, !tbaa !2956
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3754
  br label %60, !dbg !3755

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3730
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !3686, metadata !DIExpression()), !dbg !3730
  store i32 %7, ptr %6, align 4, !dbg !3756, !tbaa !943
  ret ptr %61, !dbg !3757
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #31

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #19 !dbg !3758 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3762, metadata !DIExpression()), !dbg !3765
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3763, metadata !DIExpression()), !dbg !3765
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3764, metadata !DIExpression()), !dbg !3765
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3766
  ret ptr %4, !dbg !3767
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #19 !dbg !3768 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3770, metadata !DIExpression()), !dbg !3771
  call void @llvm.dbg.value(metadata i32 0, metadata !3664, metadata !DIExpression()), !dbg !3772
  call void @llvm.dbg.value(metadata ptr %0, metadata !3665, metadata !DIExpression()), !dbg !3772
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3774
  ret ptr %2, !dbg !3775
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #19 !dbg !3776 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3780, metadata !DIExpression()), !dbg !3782
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3781, metadata !DIExpression()), !dbg !3782
  call void @llvm.dbg.value(metadata i32 0, metadata !3762, metadata !DIExpression()), !dbg !3783
  call void @llvm.dbg.value(metadata ptr %0, metadata !3763, metadata !DIExpression()), !dbg !3783
  call void @llvm.dbg.value(metadata i64 %1, metadata !3764, metadata !DIExpression()), !dbg !3783
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3785
  ret ptr %3, !dbg !3786
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #19 !dbg !3787 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3795
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3794, metadata !DIExpression(), metadata !3795, metadata ptr %4, metadata !DIExpression()), !dbg !3796
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3791, metadata !DIExpression()), !dbg !3796
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3792, metadata !DIExpression()), !dbg !3796
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3793, metadata !DIExpression()), !dbg !3796
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #44, !dbg !3797
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3798), !dbg !3801
  call void @llvm.dbg.value(metadata i32 %1, metadata !3802, metadata !DIExpression()), !dbg !3808
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3807, metadata !DIExpression()), !dbg !3810
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3810, !alias.scope !3798, !DIAssignID !3811
  call void @llvm.dbg.assign(metadata i8 0, metadata !3794, metadata !DIExpression(), metadata !3811, metadata ptr %4, metadata !DIExpression()), !dbg !3796
  %5 = icmp eq i32 %1, 10, !dbg !3812
  br i1 %5, label %6, label %7, !dbg !3814

6:                                                ; preds = %3
  tail call void @abort() #46, !dbg !3815, !noalias !3798
  unreachable, !dbg !3815

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3816, !tbaa !2882, !alias.scope !3798, !DIAssignID !3817
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3794, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3817, metadata ptr %4, metadata !DIExpression()), !dbg !3796
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3818
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #44, !dbg !3819
  ret ptr %8, !dbg !3820
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #32

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #19 !dbg !3821 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3830
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3829, metadata !DIExpression(), metadata !3830, metadata ptr %5, metadata !DIExpression()), !dbg !3831
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3825, metadata !DIExpression()), !dbg !3831
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3826, metadata !DIExpression()), !dbg !3831
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3827, metadata !DIExpression()), !dbg !3831
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3828, metadata !DIExpression()), !dbg !3831
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #44, !dbg !3832
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3833), !dbg !3836
  call void @llvm.dbg.value(metadata i32 %1, metadata !3802, metadata !DIExpression()), !dbg !3837
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3807, metadata !DIExpression()), !dbg !3839
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3839, !alias.scope !3833, !DIAssignID !3840
  call void @llvm.dbg.assign(metadata i8 0, metadata !3829, metadata !DIExpression(), metadata !3840, metadata ptr %5, metadata !DIExpression()), !dbg !3831
  %6 = icmp eq i32 %1, 10, !dbg !3841
  br i1 %6, label %7, label %8, !dbg !3842

7:                                                ; preds = %4
  tail call void @abort() #46, !dbg !3843, !noalias !3833
  unreachable, !dbg !3843

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3844, !tbaa !2882, !alias.scope !3833, !DIAssignID !3845
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3829, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3845, metadata ptr %5, metadata !DIExpression()), !dbg !3831
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3846
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #44, !dbg !3847
  ret ptr %9, !dbg !3848
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #19 !dbg !3849 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3855
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3853, metadata !DIExpression()), !dbg !3856
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3854, metadata !DIExpression()), !dbg !3856
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3794, metadata !DIExpression(), metadata !3855, metadata ptr %3, metadata !DIExpression()), !dbg !3857
  call void @llvm.dbg.value(metadata i32 0, metadata !3791, metadata !DIExpression()), !dbg !3857
  call void @llvm.dbg.value(metadata i32 %0, metadata !3792, metadata !DIExpression()), !dbg !3857
  call void @llvm.dbg.value(metadata ptr %1, metadata !3793, metadata !DIExpression()), !dbg !3857
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #44, !dbg !3859
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3860), !dbg !3863
  call void @llvm.dbg.value(metadata i32 %0, metadata !3802, metadata !DIExpression()), !dbg !3864
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3807, metadata !DIExpression()), !dbg !3866
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3866, !alias.scope !3860, !DIAssignID !3867
  call void @llvm.dbg.assign(metadata i8 0, metadata !3794, metadata !DIExpression(), metadata !3867, metadata ptr %3, metadata !DIExpression()), !dbg !3857
  %4 = icmp eq i32 %0, 10, !dbg !3868
  br i1 %4, label %5, label %6, !dbg !3869

5:                                                ; preds = %2
  tail call void @abort() #46, !dbg !3870, !noalias !3860
  unreachable, !dbg !3870

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3871, !tbaa !2882, !alias.scope !3860, !DIAssignID !3872
  call void @llvm.dbg.assign(metadata i32 %0, metadata !3794, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3872, metadata ptr %3, metadata !DIExpression()), !dbg !3857
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3873
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #44, !dbg !3874
  ret ptr %7, !dbg !3875
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #19 !dbg !3876 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3883
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3880, metadata !DIExpression()), !dbg !3884
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3881, metadata !DIExpression()), !dbg !3884
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3882, metadata !DIExpression()), !dbg !3884
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3829, metadata !DIExpression(), metadata !3883, metadata ptr %4, metadata !DIExpression()), !dbg !3885
  call void @llvm.dbg.value(metadata i32 0, metadata !3825, metadata !DIExpression()), !dbg !3885
  call void @llvm.dbg.value(metadata i32 %0, metadata !3826, metadata !DIExpression()), !dbg !3885
  call void @llvm.dbg.value(metadata ptr %1, metadata !3827, metadata !DIExpression()), !dbg !3885
  call void @llvm.dbg.value(metadata i64 %2, metadata !3828, metadata !DIExpression()), !dbg !3885
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #44, !dbg !3887
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3888), !dbg !3891
  call void @llvm.dbg.value(metadata i32 %0, metadata !3802, metadata !DIExpression()), !dbg !3892
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3807, metadata !DIExpression()), !dbg !3894
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3894, !alias.scope !3888, !DIAssignID !3895
  call void @llvm.dbg.assign(metadata i8 0, metadata !3829, metadata !DIExpression(), metadata !3895, metadata ptr %4, metadata !DIExpression()), !dbg !3885
  %5 = icmp eq i32 %0, 10, !dbg !3896
  br i1 %5, label %6, label %7, !dbg !3897

6:                                                ; preds = %3
  tail call void @abort() #46, !dbg !3898, !noalias !3888
  unreachable, !dbg !3898

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3899, !tbaa !2882, !alias.scope !3888, !DIAssignID !3900
  call void @llvm.dbg.assign(metadata i32 %0, metadata !3829, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3900, metadata ptr %4, metadata !DIExpression()), !dbg !3885
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3901
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #44, !dbg !3902
  ret ptr %8, !dbg !3903
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #19 !dbg !3904 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3912
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3911, metadata !DIExpression(), metadata !3912, metadata ptr %4, metadata !DIExpression()), !dbg !3913
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3908, metadata !DIExpression()), !dbg !3913
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3909, metadata !DIExpression()), !dbg !3913
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !3910, metadata !DIExpression()), !dbg !3913
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #44, !dbg !3914
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3915, !tbaa.struct !3916, !DIAssignID !3917
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3911, metadata !DIExpression(), metadata !3917, metadata ptr %4, metadata !DIExpression()), !dbg !3913
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2899, metadata !DIExpression()), !dbg !3918
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2900, metadata !DIExpression()), !dbg !3918
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2901, metadata !DIExpression()), !dbg !3918
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2902, metadata !DIExpression()), !dbg !3918
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !3920
  %6 = lshr i8 %2, 5, !dbg !3921
  %7 = zext nneg i8 %6 to i64, !dbg !3921
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !3922
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2903, metadata !DIExpression()), !dbg !3918
  %9 = and i8 %2, 31, !dbg !3923
  %10 = zext nneg i8 %9 to i32, !dbg !3923
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !2905, metadata !DIExpression()), !dbg !3918
  %11 = load i32, ptr %8, align 4, !dbg !3924, !tbaa !943
  %12 = lshr i32 %11, %10, !dbg !3925
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !2906, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3918
  %13 = and i32 %12, 1, !dbg !3926
  %14 = xor i32 %13, 1, !dbg !3926
  %15 = shl nuw i32 %14, %10, !dbg !3927
  %16 = xor i32 %15, %11, !dbg !3928
  store i32 %16, ptr %8, align 4, !dbg !3928, !tbaa !943
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !3929
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #44, !dbg !3930
  ret ptr %17, !dbg !3931
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #19 !dbg !3932 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3938
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3936, metadata !DIExpression()), !dbg !3939
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !3937, metadata !DIExpression()), !dbg !3939
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3911, metadata !DIExpression(), metadata !3938, metadata ptr %3, metadata !DIExpression()), !dbg !3940
  call void @llvm.dbg.value(metadata ptr %0, metadata !3908, metadata !DIExpression()), !dbg !3940
  call void @llvm.dbg.value(metadata i64 -1, metadata !3909, metadata !DIExpression()), !dbg !3940
  call void @llvm.dbg.value(metadata i8 %1, metadata !3910, metadata !DIExpression()), !dbg !3940
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #44, !dbg !3942
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3943, !tbaa.struct !3916, !DIAssignID !3944
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3911, metadata !DIExpression(), metadata !3944, metadata ptr %3, metadata !DIExpression()), !dbg !3940
  call void @llvm.dbg.value(metadata ptr %3, metadata !2899, metadata !DIExpression()), !dbg !3945
  call void @llvm.dbg.value(metadata i8 %1, metadata !2900, metadata !DIExpression()), !dbg !3945
  call void @llvm.dbg.value(metadata i32 1, metadata !2901, metadata !DIExpression()), !dbg !3945
  call void @llvm.dbg.value(metadata i8 %1, metadata !2902, metadata !DIExpression()), !dbg !3945
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3947
  %5 = lshr i8 %1, 5, !dbg !3948
  %6 = zext nneg i8 %5 to i64, !dbg !3948
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !3949
  call void @llvm.dbg.value(metadata ptr %7, metadata !2903, metadata !DIExpression()), !dbg !3945
  %8 = and i8 %1, 31, !dbg !3950
  %9 = zext nneg i8 %8 to i32, !dbg !3950
  call void @llvm.dbg.value(metadata i32 %9, metadata !2905, metadata !DIExpression()), !dbg !3945
  %10 = load i32, ptr %7, align 4, !dbg !3951, !tbaa !943
  %11 = lshr i32 %10, %9, !dbg !3952
  call void @llvm.dbg.value(metadata i32 %11, metadata !2906, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3945
  %12 = and i32 %11, 1, !dbg !3953
  %13 = xor i32 %12, 1, !dbg !3953
  %14 = shl nuw i32 %13, %9, !dbg !3954
  %15 = xor i32 %14, %10, !dbg !3955
  store i32 %15, ptr %7, align 4, !dbg !3955, !tbaa !943
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !3956
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #44, !dbg !3957
  ret ptr %16, !dbg !3958
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #19 !dbg !3959 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !3962
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3961, metadata !DIExpression()), !dbg !3963
  call void @llvm.dbg.value(metadata ptr %0, metadata !3936, metadata !DIExpression()), !dbg !3964
  call void @llvm.dbg.value(metadata i8 58, metadata !3937, metadata !DIExpression()), !dbg !3964
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3911, metadata !DIExpression(), metadata !3962, metadata ptr %2, metadata !DIExpression()), !dbg !3966
  call void @llvm.dbg.value(metadata ptr %0, metadata !3908, metadata !DIExpression()), !dbg !3966
  call void @llvm.dbg.value(metadata i64 -1, metadata !3909, metadata !DIExpression()), !dbg !3966
  call void @llvm.dbg.value(metadata i8 58, metadata !3910, metadata !DIExpression()), !dbg !3966
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #44, !dbg !3968
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3969, !tbaa.struct !3916, !DIAssignID !3970
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3911, metadata !DIExpression(), metadata !3970, metadata ptr %2, metadata !DIExpression()), !dbg !3966
  call void @llvm.dbg.value(metadata ptr %2, metadata !2899, metadata !DIExpression()), !dbg !3971
  call void @llvm.dbg.value(metadata i8 58, metadata !2900, metadata !DIExpression()), !dbg !3971
  call void @llvm.dbg.value(metadata i32 1, metadata !2901, metadata !DIExpression()), !dbg !3971
  call void @llvm.dbg.value(metadata i8 58, metadata !2902, metadata !DIExpression()), !dbg !3971
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !3973
  call void @llvm.dbg.value(metadata ptr %3, metadata !2903, metadata !DIExpression()), !dbg !3971
  call void @llvm.dbg.value(metadata i32 26, metadata !2905, metadata !DIExpression()), !dbg !3971
  %4 = load i32, ptr %3, align 4, !dbg !3974, !tbaa !943
  call void @llvm.dbg.value(metadata i32 %4, metadata !2906, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3971
  %5 = or i32 %4, 67108864, !dbg !3975
  store i32 %5, ptr %3, align 4, !dbg !3975, !tbaa !943
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !3976
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #44, !dbg !3977
  ret ptr %6, !dbg !3978
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #19 !dbg !3979 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3983
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3981, metadata !DIExpression()), !dbg !3984
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3982, metadata !DIExpression()), !dbg !3984
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3911, metadata !DIExpression(), metadata !3983, metadata ptr %3, metadata !DIExpression()), !dbg !3985
  call void @llvm.dbg.value(metadata ptr %0, metadata !3908, metadata !DIExpression()), !dbg !3985
  call void @llvm.dbg.value(metadata i64 %1, metadata !3909, metadata !DIExpression()), !dbg !3985
  call void @llvm.dbg.value(metadata i8 58, metadata !3910, metadata !DIExpression()), !dbg !3985
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #44, !dbg !3987
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3988, !tbaa.struct !3916, !DIAssignID !3989
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3911, metadata !DIExpression(), metadata !3989, metadata ptr %3, metadata !DIExpression()), !dbg !3985
  call void @llvm.dbg.value(metadata ptr %3, metadata !2899, metadata !DIExpression()), !dbg !3990
  call void @llvm.dbg.value(metadata i8 58, metadata !2900, metadata !DIExpression()), !dbg !3990
  call void @llvm.dbg.value(metadata i32 1, metadata !2901, metadata !DIExpression()), !dbg !3990
  call void @llvm.dbg.value(metadata i8 58, metadata !2902, metadata !DIExpression()), !dbg !3990
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3992
  call void @llvm.dbg.value(metadata ptr %4, metadata !2903, metadata !DIExpression()), !dbg !3990
  call void @llvm.dbg.value(metadata i32 26, metadata !2905, metadata !DIExpression()), !dbg !3990
  %5 = load i32, ptr %4, align 4, !dbg !3993, !tbaa !943
  call void @llvm.dbg.value(metadata i32 %5, metadata !2906, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3990
  %6 = or i32 %5, 67108864, !dbg !3994
  store i32 %6, ptr %4, align 4, !dbg !3994, !tbaa !943
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3995
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #44, !dbg !3996
  ret ptr %7, !dbg !3997
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #19 !dbg !3998 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !4004
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4003, metadata !DIExpression(), metadata !4004, metadata ptr %4, metadata !DIExpression()), !dbg !4005
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3807, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !4006
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4000, metadata !DIExpression()), !dbg !4005
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !4001, metadata !DIExpression()), !dbg !4005
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4002, metadata !DIExpression()), !dbg !4005
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #44, !dbg !4008
  call void @llvm.dbg.value(metadata i32 %1, metadata !3802, metadata !DIExpression()), !dbg !4009
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3807, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4009
  %5 = icmp eq i32 %1, 10, !dbg !4010
  br i1 %5, label %6, label %7, !dbg !4011

6:                                                ; preds = %3
  tail call void @abort() #46, !dbg !4012, !noalias !4013
  unreachable, !dbg !4012

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3807, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4009
  store i32 %1, ptr %4, align 8, !dbg !4016, !tbaa.struct !3916, !DIAssignID !4017
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !4016
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !4016
  call void @llvm.dbg.assign(metadata i32 %1, metadata !4003, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4017, metadata ptr %4, metadata !DIExpression()), !dbg !4005
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4003, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !4018, metadata ptr %8, metadata !DIExpression()), !dbg !4005
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2899, metadata !DIExpression()), !dbg !4019
  tail call void @llvm.dbg.value(metadata i8 58, metadata !2900, metadata !DIExpression()), !dbg !4019
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2901, metadata !DIExpression()), !dbg !4019
  tail call void @llvm.dbg.value(metadata i8 58, metadata !2902, metadata !DIExpression()), !dbg !4019
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !4021
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2903, metadata !DIExpression()), !dbg !4019
  tail call void @llvm.dbg.value(metadata i32 26, metadata !2905, metadata !DIExpression()), !dbg !4019
  %10 = load i32, ptr %9, align 4, !dbg !4022, !tbaa !943
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !2906, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4019
  %11 = or i32 %10, 67108864, !dbg !4023
  store i32 %11, ptr %9, align 4, !dbg !4023, !tbaa !943, !DIAssignID !4024
  call void @llvm.dbg.assign(metadata i32 %11, metadata !4003, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !4024, metadata ptr %9, metadata !DIExpression()), !dbg !4005
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !4025
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #44, !dbg !4026
  ret ptr %12, !dbg !4027
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #19 !dbg !4028 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !4036
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4032, metadata !DIExpression()), !dbg !4037
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4033, metadata !DIExpression()), !dbg !4037
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4034, metadata !DIExpression()), !dbg !4037
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4035, metadata !DIExpression()), !dbg !4037
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4038, metadata !DIExpression(), metadata !4036, metadata ptr %5, metadata !DIExpression()), !dbg !4048
  call void @llvm.dbg.value(metadata i32 %0, metadata !4043, metadata !DIExpression()), !dbg !4048
  call void @llvm.dbg.value(metadata ptr %1, metadata !4044, metadata !DIExpression()), !dbg !4048
  call void @llvm.dbg.value(metadata ptr %2, metadata !4045, metadata !DIExpression()), !dbg !4048
  call void @llvm.dbg.value(metadata ptr %3, metadata !4046, metadata !DIExpression()), !dbg !4048
  call void @llvm.dbg.value(metadata i64 -1, metadata !4047, metadata !DIExpression()), !dbg !4048
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #44, !dbg !4050
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4051, !tbaa.struct !3916, !DIAssignID !4052
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4038, metadata !DIExpression(), metadata !4052, metadata ptr %5, metadata !DIExpression()), !dbg !4048
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4038, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !4053, metadata ptr undef, metadata !DIExpression()), !dbg !4048
  call void @llvm.dbg.value(metadata ptr %5, metadata !2939, metadata !DIExpression()), !dbg !4054
  call void @llvm.dbg.value(metadata ptr %1, metadata !2940, metadata !DIExpression()), !dbg !4054
  call void @llvm.dbg.value(metadata ptr %2, metadata !2941, metadata !DIExpression()), !dbg !4054
  call void @llvm.dbg.value(metadata ptr %5, metadata !2939, metadata !DIExpression()), !dbg !4054
  store i32 10, ptr %5, align 8, !dbg !4056, !tbaa !2882, !DIAssignID !4057
  call void @llvm.dbg.assign(metadata i32 10, metadata !4038, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4057, metadata ptr %5, metadata !DIExpression()), !dbg !4048
  %6 = icmp ne ptr %1, null, !dbg !4058
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !4059
  br i1 %8, label %10, label %9, !dbg !4059

9:                                                ; preds = %4
  tail call void @abort() #46, !dbg !4060
  unreachable, !dbg !4060

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !4061
  store ptr %1, ptr %11, align 8, !dbg !4062, !tbaa !2953, !DIAssignID !4063
  call void @llvm.dbg.assign(metadata ptr %1, metadata !4038, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !4063, metadata ptr %11, metadata !DIExpression()), !dbg !4048
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !4064
  store ptr %2, ptr %12, align 8, !dbg !4065, !tbaa !2956, !DIAssignID !4066
  call void @llvm.dbg.assign(metadata ptr %2, metadata !4038, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !4066, metadata ptr %12, metadata !DIExpression()), !dbg !4048
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !4067
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #44, !dbg !4068
  ret ptr %13, !dbg !4069
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #19 !dbg !4039 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !4070
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4038, metadata !DIExpression(), metadata !4070, metadata ptr %6, metadata !DIExpression()), !dbg !4071
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4043, metadata !DIExpression()), !dbg !4071
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4044, metadata !DIExpression()), !dbg !4071
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4045, metadata !DIExpression()), !dbg !4071
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4046, metadata !DIExpression()), !dbg !4071
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !4047, metadata !DIExpression()), !dbg !4071
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #44, !dbg !4072
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4073, !tbaa.struct !3916, !DIAssignID !4074
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4038, metadata !DIExpression(), metadata !4074, metadata ptr %6, metadata !DIExpression()), !dbg !4071
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4038, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !4075, metadata ptr undef, metadata !DIExpression()), !dbg !4071
  call void @llvm.dbg.value(metadata ptr %6, metadata !2939, metadata !DIExpression()), !dbg !4076
  call void @llvm.dbg.value(metadata ptr %1, metadata !2940, metadata !DIExpression()), !dbg !4076
  call void @llvm.dbg.value(metadata ptr %2, metadata !2941, metadata !DIExpression()), !dbg !4076
  call void @llvm.dbg.value(metadata ptr %6, metadata !2939, metadata !DIExpression()), !dbg !4076
  store i32 10, ptr %6, align 8, !dbg !4078, !tbaa !2882, !DIAssignID !4079
  call void @llvm.dbg.assign(metadata i32 10, metadata !4038, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4079, metadata ptr %6, metadata !DIExpression()), !dbg !4071
  %7 = icmp ne ptr %1, null, !dbg !4080
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !4081
  br i1 %9, label %11, label %10, !dbg !4081

10:                                               ; preds = %5
  tail call void @abort() #46, !dbg !4082
  unreachable, !dbg !4082

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !4083
  store ptr %1, ptr %12, align 8, !dbg !4084, !tbaa !2953, !DIAssignID !4085
  call void @llvm.dbg.assign(metadata ptr %1, metadata !4038, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !4085, metadata ptr %12, metadata !DIExpression()), !dbg !4071
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !4086
  store ptr %2, ptr %13, align 8, !dbg !4087, !tbaa !2956, !DIAssignID !4088
  call void @llvm.dbg.assign(metadata ptr %2, metadata !4038, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !4088, metadata ptr %13, metadata !DIExpression()), !dbg !4071
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !4089
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #44, !dbg !4090
  ret ptr %14, !dbg !4091
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #19 !dbg !4092 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !4099
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4096, metadata !DIExpression()), !dbg !4100
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4097, metadata !DIExpression()), !dbg !4100
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4098, metadata !DIExpression()), !dbg !4100
  call void @llvm.dbg.value(metadata i32 0, metadata !4032, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata ptr %0, metadata !4033, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata ptr %1, metadata !4034, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata ptr %2, metadata !4035, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4038, metadata !DIExpression(), metadata !4099, metadata ptr %4, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata i32 0, metadata !4043, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata ptr %0, metadata !4044, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata ptr %1, metadata !4045, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata ptr %2, metadata !4046, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata i64 -1, metadata !4047, metadata !DIExpression()), !dbg !4103
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #44, !dbg !4105
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4106, !tbaa.struct !3916, !DIAssignID !4107
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4038, metadata !DIExpression(), metadata !4107, metadata ptr %4, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4038, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !4108, metadata ptr undef, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata ptr %4, metadata !2939, metadata !DIExpression()), !dbg !4109
  call void @llvm.dbg.value(metadata ptr %0, metadata !2940, metadata !DIExpression()), !dbg !4109
  call void @llvm.dbg.value(metadata ptr %1, metadata !2941, metadata !DIExpression()), !dbg !4109
  call void @llvm.dbg.value(metadata ptr %4, metadata !2939, metadata !DIExpression()), !dbg !4109
  store i32 10, ptr %4, align 8, !dbg !4111, !tbaa !2882, !DIAssignID !4112
  call void @llvm.dbg.assign(metadata i32 10, metadata !4038, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4112, metadata ptr %4, metadata !DIExpression()), !dbg !4103
  %5 = icmp ne ptr %0, null, !dbg !4113
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !4114
  br i1 %7, label %9, label %8, !dbg !4114

8:                                                ; preds = %3
  tail call void @abort() #46, !dbg !4115
  unreachable, !dbg !4115

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !4116
  store ptr %0, ptr %10, align 8, !dbg !4117, !tbaa !2953, !DIAssignID !4118
  call void @llvm.dbg.assign(metadata ptr %0, metadata !4038, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !4118, metadata ptr %10, metadata !DIExpression()), !dbg !4103
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !4119
  store ptr %1, ptr %11, align 8, !dbg !4120, !tbaa !2956, !DIAssignID !4121
  call void @llvm.dbg.assign(metadata ptr %1, metadata !4038, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !4121, metadata ptr %11, metadata !DIExpression()), !dbg !4103
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !4122
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #44, !dbg !4123
  ret ptr %12, !dbg !4124
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #19 !dbg !4125 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !4133
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4129, metadata !DIExpression()), !dbg !4134
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4130, metadata !DIExpression()), !dbg !4134
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4131, metadata !DIExpression()), !dbg !4134
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !4132, metadata !DIExpression()), !dbg !4134
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4038, metadata !DIExpression(), metadata !4133, metadata ptr %5, metadata !DIExpression()), !dbg !4135
  call void @llvm.dbg.value(metadata i32 0, metadata !4043, metadata !DIExpression()), !dbg !4135
  call void @llvm.dbg.value(metadata ptr %0, metadata !4044, metadata !DIExpression()), !dbg !4135
  call void @llvm.dbg.value(metadata ptr %1, metadata !4045, metadata !DIExpression()), !dbg !4135
  call void @llvm.dbg.value(metadata ptr %2, metadata !4046, metadata !DIExpression()), !dbg !4135
  call void @llvm.dbg.value(metadata i64 %3, metadata !4047, metadata !DIExpression()), !dbg !4135
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #44, !dbg !4137
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4138, !tbaa.struct !3916, !DIAssignID !4139
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4038, metadata !DIExpression(), metadata !4139, metadata ptr %5, metadata !DIExpression()), !dbg !4135
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4038, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !4140, metadata ptr undef, metadata !DIExpression()), !dbg !4135
  call void @llvm.dbg.value(metadata ptr %5, metadata !2939, metadata !DIExpression()), !dbg !4141
  call void @llvm.dbg.value(metadata ptr %0, metadata !2940, metadata !DIExpression()), !dbg !4141
  call void @llvm.dbg.value(metadata ptr %1, metadata !2941, metadata !DIExpression()), !dbg !4141
  call void @llvm.dbg.value(metadata ptr %5, metadata !2939, metadata !DIExpression()), !dbg !4141
  store i32 10, ptr %5, align 8, !dbg !4143, !tbaa !2882, !DIAssignID !4144
  call void @llvm.dbg.assign(metadata i32 10, metadata !4038, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4144, metadata ptr %5, metadata !DIExpression()), !dbg !4135
  %6 = icmp ne ptr %0, null, !dbg !4145
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !4146
  br i1 %8, label %10, label %9, !dbg !4146

9:                                                ; preds = %4
  tail call void @abort() #46, !dbg !4147
  unreachable, !dbg !4147

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !4148
  store ptr %0, ptr %11, align 8, !dbg !4149, !tbaa !2953, !DIAssignID !4150
  call void @llvm.dbg.assign(metadata ptr %0, metadata !4038, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !4150, metadata ptr %11, metadata !DIExpression()), !dbg !4135
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !4151
  store ptr %1, ptr %12, align 8, !dbg !4152, !tbaa !2956, !DIAssignID !4153
  call void @llvm.dbg.assign(metadata ptr %1, metadata !4038, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !4153, metadata ptr %12, metadata !DIExpression()), !dbg !4135
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !4154
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #44, !dbg !4155
  ret ptr %13, !dbg !4156
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #19 !dbg !4157 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4161, metadata !DIExpression()), !dbg !4164
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4162, metadata !DIExpression()), !dbg !4164
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4163, metadata !DIExpression()), !dbg !4164
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !4165
  ret ptr %4, !dbg !4166
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #19 !dbg !4167 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4171, metadata !DIExpression()), !dbg !4173
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4172, metadata !DIExpression()), !dbg !4173
  call void @llvm.dbg.value(metadata i32 0, metadata !4161, metadata !DIExpression()), !dbg !4174
  call void @llvm.dbg.value(metadata ptr %0, metadata !4162, metadata !DIExpression()), !dbg !4174
  call void @llvm.dbg.value(metadata i64 %1, metadata !4163, metadata !DIExpression()), !dbg !4174
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !4176
  ret ptr %3, !dbg !4177
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #19 !dbg !4178 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4182, metadata !DIExpression()), !dbg !4184
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4183, metadata !DIExpression()), !dbg !4184
  call void @llvm.dbg.value(metadata i32 %0, metadata !4161, metadata !DIExpression()), !dbg !4185
  call void @llvm.dbg.value(metadata ptr %1, metadata !4162, metadata !DIExpression()), !dbg !4185
  call void @llvm.dbg.value(metadata i64 -1, metadata !4163, metadata !DIExpression()), !dbg !4185
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !4187
  ret ptr %3, !dbg !4188
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #19 !dbg !4189 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4193, metadata !DIExpression()), !dbg !4194
  call void @llvm.dbg.value(metadata i32 0, metadata !4182, metadata !DIExpression()), !dbg !4195
  call void @llvm.dbg.value(metadata ptr %0, metadata !4183, metadata !DIExpression()), !dbg !4195
  call void @llvm.dbg.value(metadata i32 0, metadata !4161, metadata !DIExpression()), !dbg !4197
  call void @llvm.dbg.value(metadata ptr %0, metadata !4162, metadata !DIExpression()), !dbg !4197
  call void @llvm.dbg.value(metadata i64 -1, metadata !4163, metadata !DIExpression()), !dbg !4197
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !4199
  ret ptr %2, !dbg !4200
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #19 !dbg !4201 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4240, metadata !DIExpression()), !dbg !4246
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4241, metadata !DIExpression()), !dbg !4246
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4242, metadata !DIExpression()), !dbg !4246
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4243, metadata !DIExpression()), !dbg !4246
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4244, metadata !DIExpression()), !dbg !4246
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !4245, metadata !DIExpression()), !dbg !4246
  %7 = icmp eq ptr %1, null, !dbg !4247
  br i1 %7, label %10, label %8, !dbg !4249

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.102, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #44, !dbg !4250
  br label %12, !dbg !4250

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.103, ptr noundef %2, ptr noundef %3) #44, !dbg !4251
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.3.105, i32 noundef 5) #44, !dbg !4252
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #44, !dbg !4252
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.106, ptr noundef %0), !dbg !4253
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.5.107, i32 noundef 5) #44, !dbg !4254
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.108) #44, !dbg !4254
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.106, ptr noundef %0), !dbg !4255
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
  ], !dbg !4256

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.7.109, i32 noundef 5) #44, !dbg !4257
  %21 = load ptr, ptr %4, align 8, !dbg !4257, !tbaa !873
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #44, !dbg !4257
  br label %147, !dbg !4259

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.8.110, i32 noundef 5) #44, !dbg !4260
  %25 = load ptr, ptr %4, align 8, !dbg !4260, !tbaa !873
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4260
  %27 = load ptr, ptr %26, align 8, !dbg !4260, !tbaa !873
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #44, !dbg !4260
  br label %147, !dbg !4261

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.9.111, i32 noundef 5) #44, !dbg !4262
  %31 = load ptr, ptr %4, align 8, !dbg !4262, !tbaa !873
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4262
  %33 = load ptr, ptr %32, align 8, !dbg !4262, !tbaa !873
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4262
  %35 = load ptr, ptr %34, align 8, !dbg !4262, !tbaa !873
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #44, !dbg !4262
  br label %147, !dbg !4263

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.10.112, i32 noundef 5) #44, !dbg !4264
  %39 = load ptr, ptr %4, align 8, !dbg !4264, !tbaa !873
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4264
  %41 = load ptr, ptr %40, align 8, !dbg !4264, !tbaa !873
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4264
  %43 = load ptr, ptr %42, align 8, !dbg !4264, !tbaa !873
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4264
  %45 = load ptr, ptr %44, align 8, !dbg !4264, !tbaa !873
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #44, !dbg !4264
  br label %147, !dbg !4265

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.11.113, i32 noundef 5) #44, !dbg !4266
  %49 = load ptr, ptr %4, align 8, !dbg !4266, !tbaa !873
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4266
  %51 = load ptr, ptr %50, align 8, !dbg !4266, !tbaa !873
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4266
  %53 = load ptr, ptr %52, align 8, !dbg !4266, !tbaa !873
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4266
  %55 = load ptr, ptr %54, align 8, !dbg !4266, !tbaa !873
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4266
  %57 = load ptr, ptr %56, align 8, !dbg !4266, !tbaa !873
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #44, !dbg !4266
  br label %147, !dbg !4267

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.12.114, i32 noundef 5) #44, !dbg !4268
  %61 = load ptr, ptr %4, align 8, !dbg !4268, !tbaa !873
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4268
  %63 = load ptr, ptr %62, align 8, !dbg !4268, !tbaa !873
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4268
  %65 = load ptr, ptr %64, align 8, !dbg !4268, !tbaa !873
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4268
  %67 = load ptr, ptr %66, align 8, !dbg !4268, !tbaa !873
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4268
  %69 = load ptr, ptr %68, align 8, !dbg !4268, !tbaa !873
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4268
  %71 = load ptr, ptr %70, align 8, !dbg !4268, !tbaa !873
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #44, !dbg !4268
  br label %147, !dbg !4269

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.13.115, i32 noundef 5) #44, !dbg !4270
  %75 = load ptr, ptr %4, align 8, !dbg !4270, !tbaa !873
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4270
  %77 = load ptr, ptr %76, align 8, !dbg !4270, !tbaa !873
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4270
  %79 = load ptr, ptr %78, align 8, !dbg !4270, !tbaa !873
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4270
  %81 = load ptr, ptr %80, align 8, !dbg !4270, !tbaa !873
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4270
  %83 = load ptr, ptr %82, align 8, !dbg !4270, !tbaa !873
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4270
  %85 = load ptr, ptr %84, align 8, !dbg !4270, !tbaa !873
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4270
  %87 = load ptr, ptr %86, align 8, !dbg !4270, !tbaa !873
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #44, !dbg !4270
  br label %147, !dbg !4271

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.14.116, i32 noundef 5) #44, !dbg !4272
  %91 = load ptr, ptr %4, align 8, !dbg !4272, !tbaa !873
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4272
  %93 = load ptr, ptr %92, align 8, !dbg !4272, !tbaa !873
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4272
  %95 = load ptr, ptr %94, align 8, !dbg !4272, !tbaa !873
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4272
  %97 = load ptr, ptr %96, align 8, !dbg !4272, !tbaa !873
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4272
  %99 = load ptr, ptr %98, align 8, !dbg !4272, !tbaa !873
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4272
  %101 = load ptr, ptr %100, align 8, !dbg !4272, !tbaa !873
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4272
  %103 = load ptr, ptr %102, align 8, !dbg !4272, !tbaa !873
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4272
  %105 = load ptr, ptr %104, align 8, !dbg !4272, !tbaa !873
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #44, !dbg !4272
  br label %147, !dbg !4273

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.15.117, i32 noundef 5) #44, !dbg !4274
  %109 = load ptr, ptr %4, align 8, !dbg !4274, !tbaa !873
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4274
  %111 = load ptr, ptr %110, align 8, !dbg !4274, !tbaa !873
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4274
  %113 = load ptr, ptr %112, align 8, !dbg !4274, !tbaa !873
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4274
  %115 = load ptr, ptr %114, align 8, !dbg !4274, !tbaa !873
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4274
  %117 = load ptr, ptr %116, align 8, !dbg !4274, !tbaa !873
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4274
  %119 = load ptr, ptr %118, align 8, !dbg !4274, !tbaa !873
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4274
  %121 = load ptr, ptr %120, align 8, !dbg !4274, !tbaa !873
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4274
  %123 = load ptr, ptr %122, align 8, !dbg !4274, !tbaa !873
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4274
  %125 = load ptr, ptr %124, align 8, !dbg !4274, !tbaa !873
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #44, !dbg !4274
  br label %147, !dbg !4275

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.16.118, i32 noundef 5) #44, !dbg !4276
  %129 = load ptr, ptr %4, align 8, !dbg !4276, !tbaa !873
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4276
  %131 = load ptr, ptr %130, align 8, !dbg !4276, !tbaa !873
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4276
  %133 = load ptr, ptr %132, align 8, !dbg !4276, !tbaa !873
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4276
  %135 = load ptr, ptr %134, align 8, !dbg !4276, !tbaa !873
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4276
  %137 = load ptr, ptr %136, align 8, !dbg !4276, !tbaa !873
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4276
  %139 = load ptr, ptr %138, align 8, !dbg !4276, !tbaa !873
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4276
  %141 = load ptr, ptr %140, align 8, !dbg !4276, !tbaa !873
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4276
  %143 = load ptr, ptr %142, align 8, !dbg !4276, !tbaa !873
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4276
  %145 = load ptr, ptr %144, align 8, !dbg !4276, !tbaa !873
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #44, !dbg !4276
  br label %147, !dbg !4277

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !4278
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #19 !dbg !4279 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4283, metadata !DIExpression()), !dbg !4289
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4284, metadata !DIExpression()), !dbg !4289
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4285, metadata !DIExpression()), !dbg !4289
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4286, metadata !DIExpression()), !dbg !4289
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4287, metadata !DIExpression()), !dbg !4289
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4288, metadata !DIExpression()), !dbg !4289
  br label %6, !dbg !4290

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4292
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !4288, metadata !DIExpression()), !dbg !4289
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !4293
  %9 = load ptr, ptr %8, align 8, !dbg !4293, !tbaa !873
  %10 = icmp eq ptr %9, null, !dbg !4295
  %11 = add i64 %7, 1, !dbg !4296
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !4288, metadata !DIExpression()), !dbg !4289
  br i1 %10, label %12, label %6, !dbg !4295, !llvm.loop !4297

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !4299
  ret void, !dbg !4300
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #19 !dbg !4301 {
  %6 = alloca [10 x ptr], align 16, !DIAssignID !4320
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4318, metadata !DIExpression(), metadata !4320, metadata ptr %6, metadata !DIExpression()), !dbg !4321
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4312, metadata !DIExpression()), !dbg !4321
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4313, metadata !DIExpression()), !dbg !4321
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4314, metadata !DIExpression()), !dbg !4321
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4315, metadata !DIExpression()), !dbg !4321
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4316, metadata !DIExpression()), !dbg !4321
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #44, !dbg !4322
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4317, metadata !DIExpression()), !dbg !4321
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4317, metadata !DIExpression()), !dbg !4321
  %10 = icmp ult i32 %9, 41, !dbg !4323
  br i1 %10, label %11, label %16, !dbg !4323

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !4323
  %13 = zext nneg i32 %9 to i64, !dbg !4323
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !4323
  %15 = add nuw nsw i32 %9, 8, !dbg !4323
  store i32 %15, ptr %4, align 8, !dbg !4323
  br label %19, !dbg !4323

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !4323
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !4323
  store ptr %18, ptr %7, align 8, !dbg !4323
  br label %19, !dbg !4323

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !4323
  %22 = load ptr, ptr %21, align 8, !dbg !4323
  store ptr %22, ptr %6, align 16, !dbg !4326, !tbaa !873
  %23 = icmp eq ptr %22, null, !dbg !4327
  br i1 %23, label %128, label %24, !dbg !4328

24:                                               ; preds = %19
  tail call void @llvm.dbg.value(metadata i64 1, metadata !4317, metadata !DIExpression()), !dbg !4321
  tail call void @llvm.dbg.value(metadata i64 1, metadata !4317, metadata !DIExpression()), !dbg !4321
  %25 = icmp ult i32 %20, 41, !dbg !4323
  br i1 %25, label %29, label %26, !dbg !4323

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !4323
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !4323
  store ptr %28, ptr %7, align 8, !dbg !4323
  br label %34, !dbg !4323

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !4323
  %31 = zext nneg i32 %20 to i64, !dbg !4323
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !4323
  %33 = add nuw nsw i32 %20, 8, !dbg !4323
  store i32 %33, ptr %4, align 8, !dbg !4323
  br label %34, !dbg !4323

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !4323
  %37 = load ptr, ptr %36, align 8, !dbg !4323
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !4329
  store ptr %37, ptr %38, align 8, !dbg !4326, !tbaa !873
  %39 = icmp eq ptr %37, null, !dbg !4327
  br i1 %39, label %128, label %40, !dbg !4328

40:                                               ; preds = %34
  tail call void @llvm.dbg.value(metadata i64 2, metadata !4317, metadata !DIExpression()), !dbg !4321
  tail call void @llvm.dbg.value(metadata i64 2, metadata !4317, metadata !DIExpression()), !dbg !4321
  %41 = icmp ult i32 %35, 41, !dbg !4323
  br i1 %41, label %45, label %42, !dbg !4323

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !4323
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !4323
  store ptr %44, ptr %7, align 8, !dbg !4323
  br label %50, !dbg !4323

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !4323
  %47 = zext nneg i32 %35 to i64, !dbg !4323
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !4323
  %49 = add nuw nsw i32 %35, 8, !dbg !4323
  store i32 %49, ptr %4, align 8, !dbg !4323
  br label %50, !dbg !4323

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !4323
  %53 = load ptr, ptr %52, align 8, !dbg !4323
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !4329
  store ptr %53, ptr %54, align 16, !dbg !4326, !tbaa !873
  %55 = icmp eq ptr %53, null, !dbg !4327
  br i1 %55, label %128, label %56, !dbg !4328

56:                                               ; preds = %50
  tail call void @llvm.dbg.value(metadata i64 3, metadata !4317, metadata !DIExpression()), !dbg !4321
  tail call void @llvm.dbg.value(metadata i64 3, metadata !4317, metadata !DIExpression()), !dbg !4321
  %57 = icmp ult i32 %51, 41, !dbg !4323
  br i1 %57, label %61, label %58, !dbg !4323

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !4323
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !4323
  store ptr %60, ptr %7, align 8, !dbg !4323
  br label %66, !dbg !4323

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !4323
  %63 = zext nneg i32 %51 to i64, !dbg !4323
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !4323
  %65 = add nuw nsw i32 %51, 8, !dbg !4323
  store i32 %65, ptr %4, align 8, !dbg !4323
  br label %66, !dbg !4323

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !4323
  %69 = load ptr, ptr %68, align 8, !dbg !4323
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !4329
  store ptr %69, ptr %70, align 8, !dbg !4326, !tbaa !873
  %71 = icmp eq ptr %69, null, !dbg !4327
  br i1 %71, label %128, label %72, !dbg !4328

72:                                               ; preds = %66
  tail call void @llvm.dbg.value(metadata i64 4, metadata !4317, metadata !DIExpression()), !dbg !4321
  tail call void @llvm.dbg.value(metadata i64 4, metadata !4317, metadata !DIExpression()), !dbg !4321
  %73 = icmp ult i32 %67, 41, !dbg !4323
  br i1 %73, label %77, label %74, !dbg !4323

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !4323
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !4323
  store ptr %76, ptr %7, align 8, !dbg !4323
  br label %82, !dbg !4323

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !4323
  %79 = zext nneg i32 %67 to i64, !dbg !4323
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !4323
  %81 = add nuw nsw i32 %67, 8, !dbg !4323
  store i32 %81, ptr %4, align 8, !dbg !4323
  br label %82, !dbg !4323

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !4323
  %85 = load ptr, ptr %84, align 8, !dbg !4323
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !4329
  store ptr %85, ptr %86, align 16, !dbg !4326, !tbaa !873
  %87 = icmp eq ptr %85, null, !dbg !4327
  br i1 %87, label %128, label %88, !dbg !4328

88:                                               ; preds = %82
  tail call void @llvm.dbg.value(metadata i64 5, metadata !4317, metadata !DIExpression()), !dbg !4321
  tail call void @llvm.dbg.value(metadata i64 5, metadata !4317, metadata !DIExpression()), !dbg !4321
  %89 = icmp ult i32 %83, 41, !dbg !4323
  br i1 %89, label %93, label %90, !dbg !4323

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !4323
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !4323
  store ptr %92, ptr %7, align 8, !dbg !4323
  br label %98, !dbg !4323

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !4323
  %95 = zext nneg i32 %83 to i64, !dbg !4323
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !4323
  %97 = add nuw nsw i32 %83, 8, !dbg !4323
  store i32 %97, ptr %4, align 8, !dbg !4323
  br label %98, !dbg !4323

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !4323
  %100 = load ptr, ptr %99, align 8, !dbg !4323
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !4329
  store ptr %100, ptr %101, align 8, !dbg !4326, !tbaa !873
  %102 = icmp eq ptr %100, null, !dbg !4327
  br i1 %102, label %128, label %103, !dbg !4328

103:                                              ; preds = %98
  tail call void @llvm.dbg.value(metadata i64 6, metadata !4317, metadata !DIExpression()), !dbg !4321
  %104 = load ptr, ptr %7, align 8, !dbg !4323
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !4323
  store ptr %105, ptr %7, align 8, !dbg !4323
  %106 = load ptr, ptr %104, align 8, !dbg !4323
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !4329
  store ptr %106, ptr %107, align 16, !dbg !4326, !tbaa !873
  %108 = icmp eq ptr %106, null, !dbg !4327
  br i1 %108, label %128, label %109, !dbg !4328

109:                                              ; preds = %103
  tail call void @llvm.dbg.value(metadata i64 7, metadata !4317, metadata !DIExpression()), !dbg !4321
  %110 = load ptr, ptr %7, align 8, !dbg !4323
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !4323
  store ptr %111, ptr %7, align 8, !dbg !4323
  %112 = load ptr, ptr %110, align 8, !dbg !4323
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !4329
  store ptr %112, ptr %113, align 8, !dbg !4326, !tbaa !873
  %114 = icmp eq ptr %112, null, !dbg !4327
  br i1 %114, label %128, label %115, !dbg !4328

115:                                              ; preds = %109
  tail call void @llvm.dbg.value(metadata i64 8, metadata !4317, metadata !DIExpression()), !dbg !4321
  %116 = load ptr, ptr %7, align 8, !dbg !4323
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !4323
  store ptr %117, ptr %7, align 8, !dbg !4323
  %118 = load ptr, ptr %116, align 8, !dbg !4323
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !4329
  store ptr %118, ptr %119, align 16, !dbg !4326, !tbaa !873
  %120 = icmp eq ptr %118, null, !dbg !4327
  br i1 %120, label %128, label %121, !dbg !4328

121:                                              ; preds = %115
  tail call void @llvm.dbg.value(metadata i64 9, metadata !4317, metadata !DIExpression()), !dbg !4321
  %122 = load ptr, ptr %7, align 8, !dbg !4323
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !4323
  store ptr %123, ptr %7, align 8, !dbg !4323
  %124 = load ptr, ptr %122, align 8, !dbg !4323
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !4329
  store ptr %124, ptr %125, align 8, !dbg !4326, !tbaa !873
  %126 = icmp eq ptr %124, null, !dbg !4327
  %127 = select i1 %126, i64 9, i64 10, !dbg !4328
  br label %128, !dbg !4328

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !4330
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !4331
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #44, !dbg !4332
  ret void, !dbg !4332
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #19 !dbg !4333 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !4346
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4341, metadata !DIExpression(), metadata !4346, metadata ptr %5, metadata !DIExpression()), !dbg !4347
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4337, metadata !DIExpression()), !dbg !4347
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4338, metadata !DIExpression()), !dbg !4347
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4339, metadata !DIExpression()), !dbg !4347
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4340, metadata !DIExpression()), !dbg !4347
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #44, !dbg !4348
  call void @llvm.va_start(ptr nonnull %5), !dbg !4349
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !4350
  call void @llvm.va_end(ptr nonnull %5), !dbg !4351
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #44, !dbg !4352
  ret void, !dbg !4352
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #19 !dbg !4353 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !4354, !tbaa !873
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.106, ptr noundef %1), !dbg !4354
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.17.123, i32 noundef 5) #44, !dbg !4355
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.124) #44, !dbg !4355
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.19.125, i32 noundef 5) #44, !dbg !4356
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.126, ptr noundef nonnull @.str.21.127) #44, !dbg !4356
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.22.128, i32 noundef 5) #44, !dbg !4357
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.129) #44, !dbg !4357
  ret void, !dbg !4358
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #33 !dbg !4359 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4364, metadata !DIExpression()), !dbg !4367
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4365, metadata !DIExpression()), !dbg !4367
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4366, metadata !DIExpression()), !dbg !4367
  call void @llvm.dbg.value(metadata ptr %0, metadata !4368, metadata !DIExpression()), !dbg !4373
  call void @llvm.dbg.value(metadata i64 %1, metadata !4371, metadata !DIExpression()), !dbg !4373
  call void @llvm.dbg.value(metadata i64 %2, metadata !4372, metadata !DIExpression()), !dbg !4373
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #44, !dbg !4375
  call void @llvm.dbg.value(metadata ptr %4, metadata !4376, metadata !DIExpression()), !dbg !4381
  %5 = icmp eq ptr %4, null, !dbg !4383
  br i1 %5, label %6, label %7, !dbg !4385

6:                                                ; preds = %3
  tail call void @xalloc_die() #46, !dbg !4386
  unreachable, !dbg !4386

7:                                                ; preds = %3
  ret ptr %4, !dbg !4387
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #34 !dbg !4369 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4368, metadata !DIExpression()), !dbg !4388
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4371, metadata !DIExpression()), !dbg !4388
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4372, metadata !DIExpression()), !dbg !4388
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #44, !dbg !4389
  call void @llvm.dbg.value(metadata ptr %4, metadata !4376, metadata !DIExpression()), !dbg !4390
  %5 = icmp eq ptr %4, null, !dbg !4392
  br i1 %5, label %6, label %7, !dbg !4393

6:                                                ; preds = %3
  tail call void @xalloc_die() #46, !dbg !4394
  unreachable, !dbg !4394

7:                                                ; preds = %3
  ret ptr %4, !dbg !4395
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #35 !dbg !4396 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4398, metadata !DIExpression()), !dbg !4399
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #49, !dbg !4400
  call void @llvm.dbg.value(metadata ptr %2, metadata !4376, metadata !DIExpression()), !dbg !4401
  %3 = icmp eq ptr %2, null, !dbg !4403
  br i1 %3, label %4, label %5, !dbg !4404

4:                                                ; preds = %1
  tail call void @xalloc_die() #46, !dbg !4405
  unreachable, !dbg !4405

5:                                                ; preds = %1
  ret ptr %2, !dbg !4406
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #35 !dbg !4407 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4411, metadata !DIExpression()), !dbg !4412
  call void @llvm.dbg.value(metadata i64 %0, metadata !4413, metadata !DIExpression()), !dbg !4417
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #49, !dbg !4419
  call void @llvm.dbg.value(metadata ptr %2, metadata !4376, metadata !DIExpression()), !dbg !4420
  %3 = icmp eq ptr %2, null, !dbg !4422
  br i1 %3, label %4, label %5, !dbg !4423

4:                                                ; preds = %1
  tail call void @xalloc_die() #46, !dbg !4424
  unreachable, !dbg !4424

5:                                                ; preds = %1
  ret ptr %2, !dbg !4425
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #35 !dbg !4426 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4430, metadata !DIExpression()), !dbg !4431
  call void @llvm.dbg.value(metadata i64 %0, metadata !4398, metadata !DIExpression()), !dbg !4432
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #49, !dbg !4434
  call void @llvm.dbg.value(metadata ptr %2, metadata !4376, metadata !DIExpression()), !dbg !4435
  %3 = icmp eq ptr %2, null, !dbg !4437
  br i1 %3, label %4, label %5, !dbg !4438

4:                                                ; preds = %1
  tail call void @xalloc_die() #46, !dbg !4439
  unreachable, !dbg !4439

5:                                                ; preds = %1
  ret ptr %2, !dbg !4440
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4441 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4445, metadata !DIExpression()), !dbg !4447
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4446, metadata !DIExpression()), !dbg !4447
  call void @llvm.dbg.value(metadata ptr %0, metadata !4448, metadata !DIExpression()), !dbg !4453
  call void @llvm.dbg.value(metadata i64 %1, metadata !4452, metadata !DIExpression()), !dbg !4453
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4455
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #51, !dbg !4456
  call void @llvm.dbg.value(metadata ptr %4, metadata !4376, metadata !DIExpression()), !dbg !4457
  %5 = icmp eq ptr %4, null, !dbg !4459
  br i1 %5, label %6, label %7, !dbg !4460

6:                                                ; preds = %2
  tail call void @xalloc_die() #46, !dbg !4461
  unreachable, !dbg !4461

7:                                                ; preds = %2
  ret ptr %4, !dbg !4462
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !4463 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #37

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4464 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4468, metadata !DIExpression()), !dbg !4470
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4469, metadata !DIExpression()), !dbg !4470
  call void @llvm.dbg.value(metadata ptr %0, metadata !4471, metadata !DIExpression()), !dbg !4475
  call void @llvm.dbg.value(metadata i64 %1, metadata !4474, metadata !DIExpression()), !dbg !4475
  call void @llvm.dbg.value(metadata ptr %0, metadata !4448, metadata !DIExpression()), !dbg !4477
  call void @llvm.dbg.value(metadata i64 %1, metadata !4452, metadata !DIExpression()), !dbg !4477
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4479
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #51, !dbg !4480
  call void @llvm.dbg.value(metadata ptr %4, metadata !4376, metadata !DIExpression()), !dbg !4481
  %5 = icmp eq ptr %4, null, !dbg !4483
  br i1 %5, label %6, label %7, !dbg !4484

6:                                                ; preds = %2
  tail call void @xalloc_die() #46, !dbg !4485
  unreachable, !dbg !4485

7:                                                ; preds = %2
  ret ptr %4, !dbg !4486
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #34 !dbg !4487 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4491, metadata !DIExpression()), !dbg !4494
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4492, metadata !DIExpression()), !dbg !4494
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4493, metadata !DIExpression()), !dbg !4494
  call void @llvm.dbg.value(metadata ptr %0, metadata !4495, metadata !DIExpression()), !dbg !4500
  call void @llvm.dbg.value(metadata i64 %1, metadata !4498, metadata !DIExpression()), !dbg !4500
  call void @llvm.dbg.value(metadata i64 %2, metadata !4499, metadata !DIExpression()), !dbg !4500
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #44, !dbg !4502
  call void @llvm.dbg.value(metadata ptr %4, metadata !4376, metadata !DIExpression()), !dbg !4503
  %5 = icmp eq ptr %4, null, !dbg !4505
  br i1 %5, label %6, label %7, !dbg !4506

6:                                                ; preds = %3
  tail call void @xalloc_die() #46, !dbg !4507
  unreachable, !dbg !4507

7:                                                ; preds = %3
  ret ptr %4, !dbg !4508
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #38 !dbg !4509 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4513, metadata !DIExpression()), !dbg !4515
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4514, metadata !DIExpression()), !dbg !4515
  call void @llvm.dbg.value(metadata ptr null, metadata !4368, metadata !DIExpression()), !dbg !4516
  call void @llvm.dbg.value(metadata i64 %0, metadata !4371, metadata !DIExpression()), !dbg !4516
  call void @llvm.dbg.value(metadata i64 %1, metadata !4372, metadata !DIExpression()), !dbg !4516
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #44, !dbg !4518
  call void @llvm.dbg.value(metadata ptr %3, metadata !4376, metadata !DIExpression()), !dbg !4519
  %4 = icmp eq ptr %3, null, !dbg !4521
  br i1 %4, label %5, label %6, !dbg !4522

5:                                                ; preds = %2
  tail call void @xalloc_die() #46, !dbg !4523
  unreachable, !dbg !4523

6:                                                ; preds = %2
  ret ptr %3, !dbg !4524
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #38 !dbg !4525 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4529, metadata !DIExpression()), !dbg !4531
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4530, metadata !DIExpression()), !dbg !4531
  call void @llvm.dbg.value(metadata ptr null, metadata !4491, metadata !DIExpression()), !dbg !4532
  call void @llvm.dbg.value(metadata i64 %0, metadata !4492, metadata !DIExpression()), !dbg !4532
  call void @llvm.dbg.value(metadata i64 %1, metadata !4493, metadata !DIExpression()), !dbg !4532
  call void @llvm.dbg.value(metadata ptr null, metadata !4495, metadata !DIExpression()), !dbg !4534
  call void @llvm.dbg.value(metadata i64 %0, metadata !4498, metadata !DIExpression()), !dbg !4534
  call void @llvm.dbg.value(metadata i64 %1, metadata !4499, metadata !DIExpression()), !dbg !4534
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #44, !dbg !4536
  call void @llvm.dbg.value(metadata ptr %3, metadata !4376, metadata !DIExpression()), !dbg !4537
  %4 = icmp eq ptr %3, null, !dbg !4539
  br i1 %4, label %5, label %6, !dbg !4540

5:                                                ; preds = %2
  tail call void @xalloc_die() #46, !dbg !4541
  unreachable, !dbg !4541

6:                                                ; preds = %2
  ret ptr %3, !dbg !4542
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #19 !dbg !4543 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4547, metadata !DIExpression()), !dbg !4549
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4548, metadata !DIExpression()), !dbg !4549
  call void @llvm.dbg.value(metadata ptr %0, metadata !805, metadata !DIExpression()), !dbg !4550
  call void @llvm.dbg.value(metadata ptr %1, metadata !806, metadata !DIExpression()), !dbg !4550
  call void @llvm.dbg.value(metadata i64 1, metadata !807, metadata !DIExpression()), !dbg !4550
  %3 = load i64, ptr %1, align 8, !dbg !4552, !tbaa !1328
  call void @llvm.dbg.value(metadata i64 %3, metadata !808, metadata !DIExpression()), !dbg !4550
  %4 = icmp eq ptr %0, null, !dbg !4553
  br i1 %4, label %5, label %8, !dbg !4555

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4556
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4559
  br label %15, !dbg !4559

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4560
  %10 = add nuw i64 %9, 1, !dbg !4560
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4560
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4560
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4560
  call void @llvm.dbg.value(metadata i64 %13, metadata !808, metadata !DIExpression()), !dbg !4550
  br i1 %12, label %14, label %15, !dbg !4563

14:                                               ; preds = %8
  tail call void @xalloc_die() #46, !dbg !4564
  unreachable, !dbg !4564

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4550
  call void @llvm.dbg.value(metadata i64 %16, metadata !808, metadata !DIExpression()), !dbg !4550
  call void @llvm.dbg.value(metadata ptr %0, metadata !4368, metadata !DIExpression()), !dbg !4565
  call void @llvm.dbg.value(metadata i64 %16, metadata !4371, metadata !DIExpression()), !dbg !4565
  call void @llvm.dbg.value(metadata i64 1, metadata !4372, metadata !DIExpression()), !dbg !4565
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #44, !dbg !4567
  call void @llvm.dbg.value(metadata ptr %17, metadata !4376, metadata !DIExpression()), !dbg !4568
  %18 = icmp eq ptr %17, null, !dbg !4570
  br i1 %18, label %19, label %20, !dbg !4571

19:                                               ; preds = %15
  tail call void @xalloc_die() #46, !dbg !4572
  unreachable, !dbg !4572

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !805, metadata !DIExpression()), !dbg !4550
  store i64 %16, ptr %1, align 8, !dbg !4573, !tbaa !1328
  ret ptr %17, !dbg !4574
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #19 !dbg !800 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !805, metadata !DIExpression()), !dbg !4575
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !806, metadata !DIExpression()), !dbg !4575
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !807, metadata !DIExpression()), !dbg !4575
  %4 = load i64, ptr %1, align 8, !dbg !4576, !tbaa !1328
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !808, metadata !DIExpression()), !dbg !4575
  %5 = icmp eq ptr %0, null, !dbg !4577
  br i1 %5, label %6, label %13, !dbg !4578

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4579
  br i1 %7, label %8, label %20, !dbg !4580

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4581
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !808, metadata !DIExpression()), !dbg !4575
  %10 = icmp ugt i64 %2, 128, !dbg !4583
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4584
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !808, metadata !DIExpression()), !dbg !4575
  br label %20, !dbg !4585

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4586
  %15 = add nuw i64 %14, 1, !dbg !4586
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4586
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4586
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4586
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !808, metadata !DIExpression()), !dbg !4575
  br i1 %17, label %19, label %20, !dbg !4587

19:                                               ; preds = %13
  tail call void @xalloc_die() #46, !dbg !4588
  unreachable, !dbg !4588

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4575
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !808, metadata !DIExpression()), !dbg !4575
  call void @llvm.dbg.value(metadata ptr %0, metadata !4368, metadata !DIExpression()), !dbg !4589
  call void @llvm.dbg.value(metadata i64 %21, metadata !4371, metadata !DIExpression()), !dbg !4589
  call void @llvm.dbg.value(metadata i64 %2, metadata !4372, metadata !DIExpression()), !dbg !4589
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #44, !dbg !4591
  call void @llvm.dbg.value(metadata ptr %22, metadata !4376, metadata !DIExpression()), !dbg !4592
  %23 = icmp eq ptr %22, null, !dbg !4594
  br i1 %23, label %24, label %25, !dbg !4595

24:                                               ; preds = %20
  tail call void @xalloc_die() #46, !dbg !4596
  unreachable, !dbg !4596

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !805, metadata !DIExpression()), !dbg !4575
  store i64 %21, ptr %1, align 8, !dbg !4597, !tbaa !1328
  ret ptr %22, !dbg !4598
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #19 !dbg !812 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !819, metadata !DIExpression()), !dbg !4599
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !820, metadata !DIExpression()), !dbg !4599
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !821, metadata !DIExpression()), !dbg !4599
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !822, metadata !DIExpression()), !dbg !4599
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !823, metadata !DIExpression()), !dbg !4599
  %6 = load i64, ptr %1, align 8, !dbg !4600, !tbaa !1328
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !824, metadata !DIExpression()), !dbg !4599
  %7 = ashr i64 %6, 1, !dbg !4601
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4601
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4601
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4601
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !825, metadata !DIExpression()), !dbg !4599
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4603
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !825, metadata !DIExpression()), !dbg !4599
  %12 = icmp sgt i64 %3, -1, !dbg !4604
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !4606
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !4606
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !825, metadata !DIExpression()), !dbg !4599
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !4607
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !4607
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !4607
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !826, metadata !DIExpression()), !dbg !4599
  %18 = icmp slt i64 %17, 128, !dbg !4607
  %19 = select i1 %18, i64 128, i64 0, !dbg !4607
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !4607
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !827, metadata !DIExpression()), !dbg !4599
  %21 = icmp eq i64 %20, 0, !dbg !4608
  br i1 %21, label %26, label %22, !dbg !4610

22:                                               ; preds = %5
  %23 = sdiv i64 %20, %4, !dbg !4611
  tail call void @llvm.dbg.value(metadata i64 %23, metadata !825, metadata !DIExpression()), !dbg !4599
  %24 = srem i64 %20, %4, !dbg !4613
  %25 = sub nsw i64 %20, %24, !dbg !4614
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !826, metadata !DIExpression()), !dbg !4599
  br label %26, !dbg !4615

26:                                               ; preds = %22, %5
  %27 = phi i64 [ %23, %22 ], [ %14, %5 ], !dbg !4599
  %28 = phi i64 [ %25, %22 ], [ %17, %5 ], !dbg !4599
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !826, metadata !DIExpression()), !dbg !4599
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !825, metadata !DIExpression()), !dbg !4599
  %29 = icmp eq ptr %0, null, !dbg !4616
  br i1 %29, label %30, label %31, !dbg !4618

30:                                               ; preds = %26
  store i64 0, ptr %1, align 8, !dbg !4619, !tbaa !1328
  br label %31, !dbg !4620

31:                                               ; preds = %30, %26
  %32 = sub nsw i64 %27, %6, !dbg !4621
  %33 = icmp slt i64 %32, %2, !dbg !4623
  br i1 %33, label %34, label %46, !dbg !4624

34:                                               ; preds = %31
  %35 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4625
  %36 = extractvalue { i64, i1 } %35, 1, !dbg !4625
  %37 = extractvalue { i64, i1 } %35, 0, !dbg !4625
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !825, metadata !DIExpression()), !dbg !4599
  %38 = icmp sgt i64 %37, %3
  %39 = select i1 %12, i1 %38, i1 false
  %40 = or i1 %36, %39, !dbg !4626
  br i1 %40, label %45, label %41, !dbg !4626

41:                                               ; preds = %34
  %42 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %37, i64 %4), !dbg !4627
  %43 = extractvalue { i64, i1 } %42, 1, !dbg !4627
  %44 = extractvalue { i64, i1 } %42, 0, !dbg !4627
  tail call void @llvm.dbg.value(metadata i64 %44, metadata !826, metadata !DIExpression()), !dbg !4599
  br i1 %43, label %45, label %46, !dbg !4628

45:                                               ; preds = %41, %34
  tail call void @xalloc_die() #46, !dbg !4629
  unreachable, !dbg !4629

46:                                               ; preds = %41, %31
  %47 = phi i64 [ %37, %41 ], [ %27, %31 ], !dbg !4599
  %48 = phi i64 [ %44, %41 ], [ %28, %31 ], !dbg !4599
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !826, metadata !DIExpression()), !dbg !4599
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !825, metadata !DIExpression()), !dbg !4599
  call void @llvm.dbg.value(metadata ptr %0, metadata !4445, metadata !DIExpression()), !dbg !4630
  call void @llvm.dbg.value(metadata i64 %48, metadata !4446, metadata !DIExpression()), !dbg !4630
  call void @llvm.dbg.value(metadata ptr %0, metadata !4448, metadata !DIExpression()), !dbg !4632
  call void @llvm.dbg.value(metadata i64 %48, metadata !4452, metadata !DIExpression()), !dbg !4632
  %49 = tail call i64 @llvm.umax.i64(i64 %48, i64 1), !dbg !4634
  %50 = tail call ptr @realloc(ptr noundef %0, i64 noundef %49) #51, !dbg !4635
  call void @llvm.dbg.value(metadata ptr %50, metadata !4376, metadata !DIExpression()), !dbg !4636
  %51 = icmp eq ptr %50, null, !dbg !4638
  br i1 %51, label %52, label %53, !dbg !4639

52:                                               ; preds = %46
  tail call void @xalloc_die() #46, !dbg !4640
  unreachable, !dbg !4640

53:                                               ; preds = %46
  tail call void @llvm.dbg.value(metadata ptr %50, metadata !819, metadata !DIExpression()), !dbg !4599
  store i64 %47, ptr %1, align 8, !dbg !4641, !tbaa !1328
  ret ptr %50, !dbg !4642
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #35 !dbg !4643 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4645, metadata !DIExpression()), !dbg !4646
  call void @llvm.dbg.value(metadata i64 %0, metadata !4647, metadata !DIExpression()), !dbg !4651
  call void @llvm.dbg.value(metadata i64 1, metadata !4650, metadata !DIExpression()), !dbg !4651
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #52, !dbg !4653
  call void @llvm.dbg.value(metadata ptr %2, metadata !4376, metadata !DIExpression()), !dbg !4654
  %3 = icmp eq ptr %2, null, !dbg !4656
  br i1 %3, label %4, label %5, !dbg !4657

4:                                                ; preds = %1
  tail call void @xalloc_die() #46, !dbg !4658
  unreachable, !dbg !4658

5:                                                ; preds = %1
  ret ptr %2, !dbg !4659
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4660 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #39

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #38 !dbg !4648 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4647, metadata !DIExpression()), !dbg !4661
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4650, metadata !DIExpression()), !dbg !4661
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #52, !dbg !4662
  call void @llvm.dbg.value(metadata ptr %3, metadata !4376, metadata !DIExpression()), !dbg !4663
  %4 = icmp eq ptr %3, null, !dbg !4665
  br i1 %4, label %5, label %6, !dbg !4666

5:                                                ; preds = %2
  tail call void @xalloc_die() #46, !dbg !4667
  unreachable, !dbg !4667

6:                                                ; preds = %2
  ret ptr %3, !dbg !4668
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #35 !dbg !4669 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4671, metadata !DIExpression()), !dbg !4672
  call void @llvm.dbg.value(metadata i64 %0, metadata !4673, metadata !DIExpression()), !dbg !4677
  call void @llvm.dbg.value(metadata i64 1, metadata !4676, metadata !DIExpression()), !dbg !4677
  call void @llvm.dbg.value(metadata i64 %0, metadata !4679, metadata !DIExpression()), !dbg !4683
  call void @llvm.dbg.value(metadata i64 1, metadata !4682, metadata !DIExpression()), !dbg !4683
  call void @llvm.dbg.value(metadata i64 %0, metadata !4679, metadata !DIExpression()), !dbg !4683
  call void @llvm.dbg.value(metadata i64 1, metadata !4682, metadata !DIExpression()), !dbg !4683
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #52, !dbg !4685
  call void @llvm.dbg.value(metadata ptr %2, metadata !4376, metadata !DIExpression()), !dbg !4686
  %3 = icmp eq ptr %2, null, !dbg !4688
  br i1 %3, label %4, label %5, !dbg !4689

4:                                                ; preds = %1
  tail call void @xalloc_die() #46, !dbg !4690
  unreachable, !dbg !4690

5:                                                ; preds = %1
  ret ptr %2, !dbg !4691
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #38 !dbg !4674 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4673, metadata !DIExpression()), !dbg !4692
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4676, metadata !DIExpression()), !dbg !4692
  call void @llvm.dbg.value(metadata i64 %0, metadata !4679, metadata !DIExpression()), !dbg !4693
  call void @llvm.dbg.value(metadata i64 %1, metadata !4682, metadata !DIExpression()), !dbg !4693
  call void @llvm.dbg.value(metadata i64 %0, metadata !4679, metadata !DIExpression()), !dbg !4693
  call void @llvm.dbg.value(metadata i64 %1, metadata !4682, metadata !DIExpression()), !dbg !4693
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #52, !dbg !4695
  call void @llvm.dbg.value(metadata ptr %3, metadata !4376, metadata !DIExpression()), !dbg !4696
  %4 = icmp eq ptr %3, null, !dbg !4698
  br i1 %4, label %5, label %6, !dbg !4699

5:                                                ; preds = %2
  tail call void @xalloc_die() #46, !dbg !4700
  unreachable, !dbg !4700

6:                                                ; preds = %2
  ret ptr %3, !dbg !4701
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4702 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4706, metadata !DIExpression()), !dbg !4708
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4707, metadata !DIExpression()), !dbg !4708
  call void @llvm.dbg.value(metadata i64 %1, metadata !4398, metadata !DIExpression()), !dbg !4709
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #49, !dbg !4711
  call void @llvm.dbg.value(metadata ptr %3, metadata !4376, metadata !DIExpression()), !dbg !4712
  %4 = icmp eq ptr %3, null, !dbg !4714
  br i1 %4, label %5, label %6, !dbg !4715

5:                                                ; preds = %2
  tail call void @xalloc_die() #46, !dbg !4716
  unreachable, !dbg !4716

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4717, metadata !DIExpression()), !dbg !4725
  call void @llvm.dbg.value(metadata ptr %0, metadata !4723, metadata !DIExpression()), !dbg !4725
  call void @llvm.dbg.value(metadata i64 %1, metadata !4724, metadata !DIExpression()), !dbg !4725
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #44, !dbg !4727
  ret ptr %3, !dbg !4728
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4729 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4733, metadata !DIExpression()), !dbg !4735
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4734, metadata !DIExpression()), !dbg !4735
  call void @llvm.dbg.value(metadata i64 %1, metadata !4411, metadata !DIExpression()), !dbg !4736
  call void @llvm.dbg.value(metadata i64 %1, metadata !4413, metadata !DIExpression()), !dbg !4738
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #49, !dbg !4740
  call void @llvm.dbg.value(metadata ptr %3, metadata !4376, metadata !DIExpression()), !dbg !4741
  %4 = icmp eq ptr %3, null, !dbg !4743
  br i1 %4, label %5, label %6, !dbg !4744

5:                                                ; preds = %2
  tail call void @xalloc_die() #46, !dbg !4745
  unreachable, !dbg !4745

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4717, metadata !DIExpression()), !dbg !4746
  call void @llvm.dbg.value(metadata ptr %0, metadata !4723, metadata !DIExpression()), !dbg !4746
  call void @llvm.dbg.value(metadata i64 %1, metadata !4724, metadata !DIExpression()), !dbg !4746
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #44, !dbg !4748
  ret ptr %3, !dbg !4749
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #19 !dbg !4750 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4754, metadata !DIExpression()), !dbg !4757
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4755, metadata !DIExpression()), !dbg !4757
  %3 = add nsw i64 %1, 1, !dbg !4758
  call void @llvm.dbg.value(metadata i64 %3, metadata !4411, metadata !DIExpression()), !dbg !4759
  call void @llvm.dbg.value(metadata i64 %3, metadata !4413, metadata !DIExpression()), !dbg !4761
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #49, !dbg !4763
  call void @llvm.dbg.value(metadata ptr %4, metadata !4376, metadata !DIExpression()), !dbg !4764
  %5 = icmp eq ptr %4, null, !dbg !4766
  br i1 %5, label %6, label %7, !dbg !4767

6:                                                ; preds = %2
  tail call void @xalloc_die() #46, !dbg !4768
  unreachable, !dbg !4768

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4756, metadata !DIExpression()), !dbg !4757
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4769
  store i8 0, ptr %8, align 1, !dbg !4770, !tbaa !952
  call void @llvm.dbg.value(metadata ptr %4, metadata !4717, metadata !DIExpression()), !dbg !4771
  call void @llvm.dbg.value(metadata ptr %0, metadata !4723, metadata !DIExpression()), !dbg !4771
  call void @llvm.dbg.value(metadata i64 %1, metadata !4724, metadata !DIExpression()), !dbg !4771
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #44, !dbg !4773
  ret ptr %4, !dbg !4774
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #19 !dbg !4775 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4777, metadata !DIExpression()), !dbg !4778
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #45, !dbg !4779
  %3 = add i64 %2, 1, !dbg !4780
  call void @llvm.dbg.value(metadata ptr %0, metadata !4706, metadata !DIExpression()), !dbg !4781
  call void @llvm.dbg.value(metadata i64 %3, metadata !4707, metadata !DIExpression()), !dbg !4781
  call void @llvm.dbg.value(metadata i64 %3, metadata !4398, metadata !DIExpression()), !dbg !4783
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #49, !dbg !4785
  call void @llvm.dbg.value(metadata ptr %4, metadata !4376, metadata !DIExpression()), !dbg !4786
  %5 = icmp eq ptr %4, null, !dbg !4788
  br i1 %5, label %6, label %7, !dbg !4789

6:                                                ; preds = %1
  tail call void @xalloc_die() #46, !dbg !4790
  unreachable, !dbg !4790

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4717, metadata !DIExpression()), !dbg !4791
  call void @llvm.dbg.value(metadata ptr %0, metadata !4723, metadata !DIExpression()), !dbg !4791
  call void @llvm.dbg.value(metadata i64 %3, metadata !4724, metadata !DIExpression()), !dbg !4791
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #44, !dbg !4793
  ret ptr %4, !dbg !4794
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4795 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4800, !tbaa !943
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !4797, metadata !DIExpression()), !dbg !4801
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.142, ptr noundef nonnull @.str.2.143, i32 noundef 5) #44, !dbg !4800
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.144, ptr noundef %2) #44, !dbg !4800
  %3 = icmp eq i32 %1, 0, !dbg !4800
  tail call void @llvm.assume(i1 %3), !dbg !4800
  tail call void @abort() #46, !dbg !4802
  unreachable, !dbg !4802
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #40

; Function Attrs: nounwind uwtable
define dso_local i32 @xstrtoimax(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr noundef readonly %4) local_unnamed_addr #19 !dbg !4803 {
  %6 = alloca ptr, align 8, !DIAssignID !4824
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4815, metadata !DIExpression(), metadata !4824, metadata ptr %6, metadata !DIExpression()), !dbg !4825
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4810, metadata !DIExpression()), !dbg !4825
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4811, metadata !DIExpression()), !dbg !4825
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !4812, metadata !DIExpression()), !dbg !4825
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4813, metadata !DIExpression()), !dbg !4825
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4814, metadata !DIExpression()), !dbg !4825
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #44, !dbg !4826
  %7 = icmp eq ptr %1, null, !dbg !4827
  %8 = select i1 %7, ptr %6, ptr %1, !dbg !4827
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !4816, metadata !DIExpression()), !dbg !4825
  %9 = tail call ptr @__errno_location() #47, !dbg !4828
  store i32 0, ptr %9, align 4, !dbg !4829, !tbaa !943
  %10 = call i64 @strtoimax(ptr noundef %0, ptr noundef nonnull %8, i32 noundef %2) #44, !dbg !4830
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !4817, metadata !DIExpression()), !dbg !4825
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4818, metadata !DIExpression()), !dbg !4825
  %11 = load ptr, ptr %8, align 8, !dbg !4831, !tbaa !873
  %12 = icmp eq ptr %11, %0, !dbg !4833
  br i1 %12, label %13, label %22, !dbg !4834

13:                                               ; preds = %5
  %14 = icmp eq ptr %4, null, !dbg !4835
  br i1 %14, label %490, label %15, !dbg !4838

15:                                               ; preds = %13
  %16 = load i8, ptr %0, align 1, !dbg !4839, !tbaa !952
  %17 = icmp eq i8 %16, 0, !dbg !4839
  br i1 %17, label %490, label %18, !dbg !4840

18:                                               ; preds = %15
  %19 = sext i8 %16 to i32, !dbg !4839
  %20 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %19) #45, !dbg !4841
  %21 = icmp eq ptr %20, null, !dbg !4841
  br i1 %21, label %490, label %29, !dbg !4842

22:                                               ; preds = %5
  %23 = load i32, ptr %9, align 4, !dbg !4843, !tbaa !943
  switch i32 %23, label %490 [
    i32 0, label %25
    i32 34, label %24
  ], !dbg !4845

24:                                               ; preds = %22
  tail call void @llvm.dbg.value(metadata i32 1, metadata !4818, metadata !DIExpression()), !dbg !4825
  br label %25, !dbg !4846

25:                                               ; preds = %22, %24
  %26 = phi i32 [ 1, %24 ], [ %23, %22 ], !dbg !4825
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !4817, metadata !DIExpression()), !dbg !4825
  tail call void @llvm.dbg.value(metadata i32 %26, metadata !4818, metadata !DIExpression()), !dbg !4825
  %27 = icmp eq ptr %4, null, !dbg !4848
  br i1 %27, label %28, label %29, !dbg !4850

28:                                               ; preds = %25
  store i64 %10, ptr %3, align 8, !dbg !4851, !tbaa !1328
  br label %490, !dbg !4853

29:                                               ; preds = %18, %25
  %30 = phi i32 [ %26, %25 ], [ 0, %18 ]
  %31 = phi i64 [ %10, %25 ], [ 1, %18 ]
  %32 = load i8, ptr %11, align 1, !dbg !4854, !tbaa !952
  %33 = icmp eq i8 %32, 0, !dbg !4855
  br i1 %33, label %487, label %34, !dbg !4856

34:                                               ; preds = %29
  %35 = sext i8 %32 to i32, !dbg !4854
  %36 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %35) #45, !dbg !4857
  %37 = icmp eq ptr %36, null, !dbg !4857
  br i1 %37, label %38, label %40, !dbg !4859

38:                                               ; preds = %34
  store i64 %31, ptr %3, align 8, !dbg !4860, !tbaa !1328
  %39 = or disjoint i32 %30, 2, !dbg !4862
  br label %490, !dbg !4863

40:                                               ; preds = %34
  tail call void @llvm.dbg.value(metadata i32 1024, metadata !4819, metadata !DIExpression()), !dbg !4864
  tail call void @llvm.dbg.value(metadata i32 1, metadata !4822, metadata !DIExpression()), !dbg !4864
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
  ], !dbg !4865

41:                                               ; preds = %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40
  %42 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef 48) #45, !dbg !4866
  %43 = icmp eq ptr %42, null, !dbg !4866
  br i1 %43, label %53, label %44, !dbg !4869

44:                                               ; preds = %41
  %45 = getelementptr inbounds i8, ptr %11, i64 1, !dbg !4870
  %46 = load i8, ptr %45, align 1, !dbg !4870, !tbaa !952
  switch i8 %46, label %53 [
    i8 105, label %47
    i8 66, label %52
    i8 68, label %52
  ], !dbg !4871

47:                                               ; preds = %44
  %48 = getelementptr inbounds i8, ptr %11, i64 2, !dbg !4872
  %49 = load i8, ptr %48, align 1, !dbg !4872, !tbaa !952
  %50 = icmp eq i8 %49, 66, !dbg !4875
  %51 = select i1 %50, i64 3, i64 1, !dbg !4876
  br label %53, !dbg !4876

52:                                               ; preds = %44, %44
  tail call void @llvm.dbg.value(metadata i32 1000, metadata !4819, metadata !DIExpression()), !dbg !4864
  tail call void @llvm.dbg.value(metadata i32 2, metadata !4822, metadata !DIExpression()), !dbg !4864
  br label %53, !dbg !4877

53:                                               ; preds = %47, %41, %44, %52, %40
  %54 = phi i64 [ 1024, %40 ], [ 1024, %44 ], [ 1000, %52 ], [ 1024, %41 ], [ 1024, %47 ], !dbg !4864
  %55 = phi i64 [ 1, %40 ], [ 1, %44 ], [ 2, %52 ], [ 1, %41 ], [ %51, %47 ], !dbg !4864
  tail call void @llvm.dbg.value(metadata i64 %55, metadata !4822, metadata !DIExpression()), !dbg !4864
  tail call void @llvm.dbg.value(metadata i64 %54, metadata !4819, metadata !DIExpression()), !dbg !4864
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
  ], !dbg !4878

56:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !4879, metadata !DIExpression()), !dbg !4887
  call void @llvm.dbg.value(metadata i32 7, metadata !4886, metadata !DIExpression()), !dbg !4887
  call void @llvm.dbg.value(metadata i32 6, metadata !4886, metadata !DIExpression()), !dbg !4887
  call void @llvm.dbg.value(metadata ptr undef, metadata !4890, metadata !DIExpression()), !dbg !4897
  call void @llvm.dbg.value(metadata i64 %54, metadata !4895, metadata !DIExpression()), !dbg !4897
  %57 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !4899
  %58 = extractvalue { i64, i1 } %57, 1, !dbg !4899
  call void @llvm.dbg.value(metadata i64 poison, metadata !4896, metadata !DIExpression()), !dbg !4897
  %59 = extractvalue { i64, i1 } %57, 0, !dbg !4901
  %60 = icmp slt i64 %31, 0, !dbg !4901
  %61 = select i1 %60, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4901
  %62 = select i1 %58, i64 %61, i64 %59, !dbg !4901
  call void @llvm.dbg.value(metadata i1 %58, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4887
  call void @llvm.dbg.value(metadata i32 6, metadata !4886, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4887
  call void @llvm.dbg.value(metadata i1 %58, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4887
  call void @llvm.dbg.value(metadata i32 6, metadata !4886, metadata !DIExpression()), !dbg !4887
  call void @llvm.dbg.value(metadata i32 5, metadata !4886, metadata !DIExpression()), !dbg !4887
  call void @llvm.dbg.value(metadata ptr undef, metadata !4890, metadata !DIExpression()), !dbg !4897
  call void @llvm.dbg.value(metadata i64 %54, metadata !4895, metadata !DIExpression()), !dbg !4897
  %63 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %62, i64 %54), !dbg !4899
  %64 = extractvalue { i64, i1 } %63, 1, !dbg !4899
  call void @llvm.dbg.value(metadata i64 poison, metadata !4896, metadata !DIExpression()), !dbg !4897
  %65 = extractvalue { i64, i1 } %63, 0, !dbg !4901
  %66 = icmp slt i64 %62, 0, !dbg !4901
  %67 = select i1 %66, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4901
  %68 = select i1 %64, i64 %67, i64 %65, !dbg !4901
  %69 = or i1 %58, %64, !dbg !4902
  call void @llvm.dbg.value(metadata i1 %69, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4887
  call void @llvm.dbg.value(metadata i32 5, metadata !4886, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4887
  call void @llvm.dbg.value(metadata i1 %69, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4887
  call void @llvm.dbg.value(metadata i32 5, metadata !4886, metadata !DIExpression()), !dbg !4887
  call void @llvm.dbg.value(metadata i32 4, metadata !4886, metadata !DIExpression()), !dbg !4887
  call void @llvm.dbg.value(metadata ptr undef, metadata !4890, metadata !DIExpression()), !dbg !4897
  call void @llvm.dbg.value(metadata i64 %54, metadata !4895, metadata !DIExpression()), !dbg !4897
  %70 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %68, i64 %54), !dbg !4899
  %71 = extractvalue { i64, i1 } %70, 1, !dbg !4899
  call void @llvm.dbg.value(metadata i64 poison, metadata !4896, metadata !DIExpression()), !dbg !4897
  %72 = extractvalue { i64, i1 } %70, 0, !dbg !4901
  %73 = icmp slt i64 %68, 0, !dbg !4901
  %74 = select i1 %73, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4901
  %75 = select i1 %71, i64 %74, i64 %72, !dbg !4901
  %76 = or i1 %69, %71, !dbg !4902
  call void @llvm.dbg.value(metadata i1 %76, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4887
  call void @llvm.dbg.value(metadata i32 4, metadata !4886, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4887
  call void @llvm.dbg.value(metadata i1 %76, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4887
  call void @llvm.dbg.value(metadata i32 4, metadata !4886, metadata !DIExpression()), !dbg !4887
  call void @llvm.dbg.value(metadata i32 3, metadata !4886, metadata !DIExpression()), !dbg !4887
  call void @llvm.dbg.value(metadata ptr undef, metadata !4890, metadata !DIExpression()), !dbg !4897
  call void @llvm.dbg.value(metadata i64 %54, metadata !4895, metadata !DIExpression()), !dbg !4897
  %77 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %75, i64 %54), !dbg !4899
  %78 = extractvalue { i64, i1 } %77, 1, !dbg !4899
  call void @llvm.dbg.value(metadata i64 poison, metadata !4896, metadata !DIExpression()), !dbg !4897
  %79 = extractvalue { i64, i1 } %77, 0, !dbg !4901
  %80 = icmp slt i64 %75, 0, !dbg !4901
  %81 = select i1 %80, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4901
  %82 = select i1 %78, i64 %81, i64 %79, !dbg !4901
  %83 = or i1 %76, %78, !dbg !4902
  call void @llvm.dbg.value(metadata i1 %83, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4887
  call void @llvm.dbg.value(metadata i32 3, metadata !4886, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4887
  call void @llvm.dbg.value(metadata i1 %83, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4887
  call void @llvm.dbg.value(metadata i32 3, metadata !4886, metadata !DIExpression()), !dbg !4887
  call void @llvm.dbg.value(metadata i32 2, metadata !4886, metadata !DIExpression()), !dbg !4887
  call void @llvm.dbg.value(metadata ptr undef, metadata !4890, metadata !DIExpression()), !dbg !4897
  call void @llvm.dbg.value(metadata i64 %54, metadata !4895, metadata !DIExpression()), !dbg !4897
  %84 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %82, i64 %54), !dbg !4899
  %85 = extractvalue { i64, i1 } %84, 1, !dbg !4899
  call void @llvm.dbg.value(metadata i64 poison, metadata !4896, metadata !DIExpression()), !dbg !4897
  %86 = extractvalue { i64, i1 } %84, 0, !dbg !4901
  %87 = icmp slt i64 %82, 0, !dbg !4901
  %88 = select i1 %87, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4901
  %89 = select i1 %85, i64 %88, i64 %86, !dbg !4901
  %90 = or i1 %83, %85, !dbg !4902
  call void @llvm.dbg.value(metadata i1 %90, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4887
  call void @llvm.dbg.value(metadata i32 2, metadata !4886, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4887
  call void @llvm.dbg.value(metadata i1 %90, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4887
  call void @llvm.dbg.value(metadata i32 2, metadata !4886, metadata !DIExpression()), !dbg !4887
  call void @llvm.dbg.value(metadata i32 1, metadata !4886, metadata !DIExpression()), !dbg !4887
  call void @llvm.dbg.value(metadata ptr undef, metadata !4890, metadata !DIExpression()), !dbg !4897
  call void @llvm.dbg.value(metadata i64 %54, metadata !4895, metadata !DIExpression()), !dbg !4897
  %91 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %89, i64 %54), !dbg !4899
  %92 = extractvalue { i64, i1 } %91, 1, !dbg !4899
  call void @llvm.dbg.value(metadata i64 poison, metadata !4896, metadata !DIExpression()), !dbg !4897
  %93 = extractvalue { i64, i1 } %91, 0, !dbg !4901
  %94 = icmp slt i64 %89, 0, !dbg !4901
  %95 = select i1 %94, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4901
  %96 = select i1 %92, i64 %95, i64 %93, !dbg !4901
  %97 = or i1 %90, %92, !dbg !4902
  call void @llvm.dbg.value(metadata i1 %97, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4887
  call void @llvm.dbg.value(metadata i32 1, metadata !4886, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4887
  call void @llvm.dbg.value(metadata i1 %97, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4887
  call void @llvm.dbg.value(metadata i32 1, metadata !4886, metadata !DIExpression()), !dbg !4887
  call void @llvm.dbg.value(metadata i32 0, metadata !4886, metadata !DIExpression()), !dbg !4887
  call void @llvm.dbg.value(metadata ptr undef, metadata !4890, metadata !DIExpression()), !dbg !4897
  call void @llvm.dbg.value(metadata i64 %54, metadata !4895, metadata !DIExpression()), !dbg !4897
  %98 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %96, i64 %54), !dbg !4899
  %99 = extractvalue { i64, i1 } %98, 1, !dbg !4899
  call void @llvm.dbg.value(metadata i64 poison, metadata !4896, metadata !DIExpression()), !dbg !4897
  %100 = extractvalue { i64, i1 } %98, 0, !dbg !4901
  %101 = icmp slt i64 %96, 0, !dbg !4901
  %102 = select i1 %101, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4901
  %103 = select i1 %99, i64 %102, i64 %100, !dbg !4901
  %104 = or i1 %97, %99, !dbg !4902
  %105 = zext i1 %104 to i32, !dbg !4902
  call void @llvm.dbg.value(metadata i32 %105, metadata !4879, metadata !DIExpression()), !dbg !4887
  call void @llvm.dbg.value(metadata i32 0, metadata !4886, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4887
  br label %476, !dbg !4903

106:                                              ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !4879, metadata !DIExpression()), !dbg !4904
  call void @llvm.dbg.value(metadata i32 8, metadata !4886, metadata !DIExpression()), !dbg !4904
  call void @llvm.dbg.value(metadata i32 7, metadata !4886, metadata !DIExpression()), !dbg !4904
  call void @llvm.dbg.value(metadata ptr undef, metadata !4890, metadata !DIExpression()), !dbg !4906
  call void @llvm.dbg.value(metadata i64 %54, metadata !4895, metadata !DIExpression()), !dbg !4906
  %107 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !4908
  %108 = extractvalue { i64, i1 } %107, 1, !dbg !4908
  call void @llvm.dbg.value(metadata i64 poison, metadata !4896, metadata !DIExpression()), !dbg !4906
  %109 = extractvalue { i64, i1 } %107, 0, !dbg !4909
  %110 = icmp slt i64 %31, 0, !dbg !4909
  %111 = select i1 %110, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4909
  %112 = select i1 %108, i64 %111, i64 %109, !dbg !4909
  call void @llvm.dbg.value(metadata i1 %108, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4904
  call void @llvm.dbg.value(metadata i32 7, metadata !4886, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4904
  call void @llvm.dbg.value(metadata i1 %108, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4904
  call void @llvm.dbg.value(metadata i32 7, metadata !4886, metadata !DIExpression()), !dbg !4904
  call void @llvm.dbg.value(metadata i32 6, metadata !4886, metadata !DIExpression()), !dbg !4904
  call void @llvm.dbg.value(metadata ptr undef, metadata !4890, metadata !DIExpression()), !dbg !4906
  call void @llvm.dbg.value(metadata i64 %54, metadata !4895, metadata !DIExpression()), !dbg !4906
  %113 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %112, i64 %54), !dbg !4908
  %114 = extractvalue { i64, i1 } %113, 1, !dbg !4908
  call void @llvm.dbg.value(metadata i64 poison, metadata !4896, metadata !DIExpression()), !dbg !4906
  %115 = extractvalue { i64, i1 } %113, 0, !dbg !4909
  %116 = icmp slt i64 %112, 0, !dbg !4909
  %117 = select i1 %116, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4909
  %118 = select i1 %114, i64 %117, i64 %115, !dbg !4909
  %119 = or i1 %108, %114, !dbg !4910
  call void @llvm.dbg.value(metadata i1 %119, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4904
  call void @llvm.dbg.value(metadata i32 6, metadata !4886, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4904
  call void @llvm.dbg.value(metadata i1 %119, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4904
  call void @llvm.dbg.value(metadata i32 6, metadata !4886, metadata !DIExpression()), !dbg !4904
  call void @llvm.dbg.value(metadata i32 5, metadata !4886, metadata !DIExpression()), !dbg !4904
  call void @llvm.dbg.value(metadata ptr undef, metadata !4890, metadata !DIExpression()), !dbg !4906
  call void @llvm.dbg.value(metadata i64 %54, metadata !4895, metadata !DIExpression()), !dbg !4906
  %120 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %118, i64 %54), !dbg !4908
  %121 = extractvalue { i64, i1 } %120, 1, !dbg !4908
  call void @llvm.dbg.value(metadata i64 poison, metadata !4896, metadata !DIExpression()), !dbg !4906
  %122 = extractvalue { i64, i1 } %120, 0, !dbg !4909
  %123 = icmp slt i64 %118, 0, !dbg !4909
  %124 = select i1 %123, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4909
  %125 = select i1 %121, i64 %124, i64 %122, !dbg !4909
  %126 = or i1 %119, %121, !dbg !4910
  call void @llvm.dbg.value(metadata i1 %126, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4904
  call void @llvm.dbg.value(metadata i32 5, metadata !4886, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4904
  call void @llvm.dbg.value(metadata i1 %126, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4904
  call void @llvm.dbg.value(metadata i32 5, metadata !4886, metadata !DIExpression()), !dbg !4904
  call void @llvm.dbg.value(metadata i32 4, metadata !4886, metadata !DIExpression()), !dbg !4904
  call void @llvm.dbg.value(metadata ptr undef, metadata !4890, metadata !DIExpression()), !dbg !4906
  call void @llvm.dbg.value(metadata i64 %54, metadata !4895, metadata !DIExpression()), !dbg !4906
  %127 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %125, i64 %54), !dbg !4908
  %128 = extractvalue { i64, i1 } %127, 1, !dbg !4908
  call void @llvm.dbg.value(metadata i64 poison, metadata !4896, metadata !DIExpression()), !dbg !4906
  %129 = extractvalue { i64, i1 } %127, 0, !dbg !4909
  %130 = icmp slt i64 %125, 0, !dbg !4909
  %131 = select i1 %130, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4909
  %132 = select i1 %128, i64 %131, i64 %129, !dbg !4909
  %133 = or i1 %126, %128, !dbg !4910
  call void @llvm.dbg.value(metadata i1 %133, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4904
  call void @llvm.dbg.value(metadata i32 4, metadata !4886, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4904
  call void @llvm.dbg.value(metadata i1 %133, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4904
  call void @llvm.dbg.value(metadata i32 4, metadata !4886, metadata !DIExpression()), !dbg !4904
  call void @llvm.dbg.value(metadata i32 3, metadata !4886, metadata !DIExpression()), !dbg !4904
  call void @llvm.dbg.value(metadata ptr undef, metadata !4890, metadata !DIExpression()), !dbg !4906
  call void @llvm.dbg.value(metadata i64 %54, metadata !4895, metadata !DIExpression()), !dbg !4906
  %134 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %132, i64 %54), !dbg !4908
  %135 = extractvalue { i64, i1 } %134, 1, !dbg !4908
  call void @llvm.dbg.value(metadata i64 poison, metadata !4896, metadata !DIExpression()), !dbg !4906
  %136 = extractvalue { i64, i1 } %134, 0, !dbg !4909
  %137 = icmp slt i64 %132, 0, !dbg !4909
  %138 = select i1 %137, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4909
  %139 = select i1 %135, i64 %138, i64 %136, !dbg !4909
  %140 = or i1 %133, %135, !dbg !4910
  call void @llvm.dbg.value(metadata i1 %140, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4904
  call void @llvm.dbg.value(metadata i32 3, metadata !4886, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4904
  call void @llvm.dbg.value(metadata i1 %140, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4904
  call void @llvm.dbg.value(metadata i32 3, metadata !4886, metadata !DIExpression()), !dbg !4904
  call void @llvm.dbg.value(metadata i32 2, metadata !4886, metadata !DIExpression()), !dbg !4904
  call void @llvm.dbg.value(metadata ptr undef, metadata !4890, metadata !DIExpression()), !dbg !4906
  call void @llvm.dbg.value(metadata i64 %54, metadata !4895, metadata !DIExpression()), !dbg !4906
  %141 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %139, i64 %54), !dbg !4908
  %142 = extractvalue { i64, i1 } %141, 1, !dbg !4908
  call void @llvm.dbg.value(metadata i64 poison, metadata !4896, metadata !DIExpression()), !dbg !4906
  %143 = extractvalue { i64, i1 } %141, 0, !dbg !4909
  %144 = icmp slt i64 %139, 0, !dbg !4909
  %145 = select i1 %144, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4909
  %146 = select i1 %142, i64 %145, i64 %143, !dbg !4909
  %147 = or i1 %140, %142, !dbg !4910
  call void @llvm.dbg.value(metadata i1 %147, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4904
  call void @llvm.dbg.value(metadata i32 2, metadata !4886, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4904
  call void @llvm.dbg.value(metadata i1 %147, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4904
  call void @llvm.dbg.value(metadata i32 2, metadata !4886, metadata !DIExpression()), !dbg !4904
  call void @llvm.dbg.value(metadata i32 1, metadata !4886, metadata !DIExpression()), !dbg !4904
  call void @llvm.dbg.value(metadata ptr undef, metadata !4890, metadata !DIExpression()), !dbg !4906
  call void @llvm.dbg.value(metadata i64 %54, metadata !4895, metadata !DIExpression()), !dbg !4906
  %148 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %146, i64 %54), !dbg !4908
  %149 = extractvalue { i64, i1 } %148, 1, !dbg !4908
  call void @llvm.dbg.value(metadata i64 poison, metadata !4896, metadata !DIExpression()), !dbg !4906
  %150 = extractvalue { i64, i1 } %148, 0, !dbg !4909
  %151 = icmp slt i64 %146, 0, !dbg !4909
  %152 = select i1 %151, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4909
  %153 = select i1 %149, i64 %152, i64 %150, !dbg !4909
  %154 = or i1 %147, %149, !dbg !4910
  call void @llvm.dbg.value(metadata i1 %154, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4904
  call void @llvm.dbg.value(metadata i32 1, metadata !4886, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4904
  call void @llvm.dbg.value(metadata i1 %154, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4904
  call void @llvm.dbg.value(metadata i32 1, metadata !4886, metadata !DIExpression()), !dbg !4904
  call void @llvm.dbg.value(metadata i32 0, metadata !4886, metadata !DIExpression()), !dbg !4904
  call void @llvm.dbg.value(metadata ptr undef, metadata !4890, metadata !DIExpression()), !dbg !4906
  call void @llvm.dbg.value(metadata i64 %54, metadata !4895, metadata !DIExpression()), !dbg !4906
  %155 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %153, i64 %54), !dbg !4908
  %156 = extractvalue { i64, i1 } %155, 1, !dbg !4908
  call void @llvm.dbg.value(metadata i64 poison, metadata !4896, metadata !DIExpression()), !dbg !4906
  %157 = extractvalue { i64, i1 } %155, 0, !dbg !4909
  %158 = icmp slt i64 %153, 0, !dbg !4909
  %159 = select i1 %158, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4909
  %160 = select i1 %156, i64 %159, i64 %157, !dbg !4909
  %161 = or i1 %154, %156, !dbg !4910
  %162 = zext i1 %161 to i32, !dbg !4910
  call void @llvm.dbg.value(metadata i32 %162, metadata !4879, metadata !DIExpression()), !dbg !4904
  call void @llvm.dbg.value(metadata i32 0, metadata !4886, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4904
  br label %476, !dbg !4903

163:                                              ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !4879, metadata !DIExpression()), !dbg !4911
  call void @llvm.dbg.value(metadata i32 9, metadata !4886, metadata !DIExpression()), !dbg !4911
  call void @llvm.dbg.value(metadata i32 8, metadata !4886, metadata !DIExpression()), !dbg !4911
  call void @llvm.dbg.value(metadata ptr undef, metadata !4890, metadata !DIExpression()), !dbg !4913
  call void @llvm.dbg.value(metadata i64 %54, metadata !4895, metadata !DIExpression()), !dbg !4913
  %164 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !4915
  %165 = extractvalue { i64, i1 } %164, 1, !dbg !4915
  call void @llvm.dbg.value(metadata i64 poison, metadata !4896, metadata !DIExpression()), !dbg !4913
  %166 = extractvalue { i64, i1 } %164, 0, !dbg !4916
  %167 = icmp slt i64 %31, 0, !dbg !4916
  %168 = select i1 %167, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4916
  %169 = select i1 %165, i64 %168, i64 %166, !dbg !4916
  call void @llvm.dbg.value(metadata i1 %165, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4911
  call void @llvm.dbg.value(metadata i32 8, metadata !4886, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4911
  call void @llvm.dbg.value(metadata i1 %165, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4911
  call void @llvm.dbg.value(metadata i32 8, metadata !4886, metadata !DIExpression()), !dbg !4911
  call void @llvm.dbg.value(metadata i32 7, metadata !4886, metadata !DIExpression()), !dbg !4911
  call void @llvm.dbg.value(metadata ptr undef, metadata !4890, metadata !DIExpression()), !dbg !4913
  call void @llvm.dbg.value(metadata i64 %54, metadata !4895, metadata !DIExpression()), !dbg !4913
  %170 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %169, i64 %54), !dbg !4915
  %171 = extractvalue { i64, i1 } %170, 1, !dbg !4915
  call void @llvm.dbg.value(metadata i64 poison, metadata !4896, metadata !DIExpression()), !dbg !4913
  %172 = extractvalue { i64, i1 } %170, 0, !dbg !4916
  %173 = icmp slt i64 %169, 0, !dbg !4916
  %174 = select i1 %173, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4916
  %175 = select i1 %171, i64 %174, i64 %172, !dbg !4916
  %176 = or i1 %165, %171, !dbg !4917
  call void @llvm.dbg.value(metadata i1 %176, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4911
  call void @llvm.dbg.value(metadata i32 7, metadata !4886, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4911
  call void @llvm.dbg.value(metadata i1 %176, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4911
  call void @llvm.dbg.value(metadata i32 7, metadata !4886, metadata !DIExpression()), !dbg !4911
  call void @llvm.dbg.value(metadata i32 6, metadata !4886, metadata !DIExpression()), !dbg !4911
  call void @llvm.dbg.value(metadata ptr undef, metadata !4890, metadata !DIExpression()), !dbg !4913
  call void @llvm.dbg.value(metadata i64 %54, metadata !4895, metadata !DIExpression()), !dbg !4913
  %177 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %175, i64 %54), !dbg !4915
  %178 = extractvalue { i64, i1 } %177, 1, !dbg !4915
  call void @llvm.dbg.value(metadata i64 poison, metadata !4896, metadata !DIExpression()), !dbg !4913
  %179 = extractvalue { i64, i1 } %177, 0, !dbg !4916
  %180 = icmp slt i64 %175, 0, !dbg !4916
  %181 = select i1 %180, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4916
  %182 = select i1 %178, i64 %181, i64 %179, !dbg !4916
  %183 = or i1 %176, %178, !dbg !4917
  call void @llvm.dbg.value(metadata i1 %183, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4911
  call void @llvm.dbg.value(metadata i32 6, metadata !4886, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4911
  call void @llvm.dbg.value(metadata i1 %183, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4911
  call void @llvm.dbg.value(metadata i32 6, metadata !4886, metadata !DIExpression()), !dbg !4911
  call void @llvm.dbg.value(metadata i32 5, metadata !4886, metadata !DIExpression()), !dbg !4911
  call void @llvm.dbg.value(metadata ptr undef, metadata !4890, metadata !DIExpression()), !dbg !4913
  call void @llvm.dbg.value(metadata i64 %54, metadata !4895, metadata !DIExpression()), !dbg !4913
  %184 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %182, i64 %54), !dbg !4915
  %185 = extractvalue { i64, i1 } %184, 1, !dbg !4915
  call void @llvm.dbg.value(metadata i64 poison, metadata !4896, metadata !DIExpression()), !dbg !4913
  %186 = extractvalue { i64, i1 } %184, 0, !dbg !4916
  %187 = icmp slt i64 %182, 0, !dbg !4916
  %188 = select i1 %187, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4916
  %189 = select i1 %185, i64 %188, i64 %186, !dbg !4916
  %190 = or i1 %183, %185, !dbg !4917
  call void @llvm.dbg.value(metadata i1 %190, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4911
  call void @llvm.dbg.value(metadata i32 5, metadata !4886, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4911
  call void @llvm.dbg.value(metadata i1 %190, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4911
  call void @llvm.dbg.value(metadata i32 5, metadata !4886, metadata !DIExpression()), !dbg !4911
  call void @llvm.dbg.value(metadata i32 4, metadata !4886, metadata !DIExpression()), !dbg !4911
  call void @llvm.dbg.value(metadata ptr undef, metadata !4890, metadata !DIExpression()), !dbg !4913
  call void @llvm.dbg.value(metadata i64 %54, metadata !4895, metadata !DIExpression()), !dbg !4913
  %191 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %189, i64 %54), !dbg !4915
  %192 = extractvalue { i64, i1 } %191, 1, !dbg !4915
  call void @llvm.dbg.value(metadata i64 poison, metadata !4896, metadata !DIExpression()), !dbg !4913
  %193 = extractvalue { i64, i1 } %191, 0, !dbg !4916
  %194 = icmp slt i64 %189, 0, !dbg !4916
  %195 = select i1 %194, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4916
  %196 = select i1 %192, i64 %195, i64 %193, !dbg !4916
  %197 = or i1 %190, %192, !dbg !4917
  call void @llvm.dbg.value(metadata i1 %197, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4911
  call void @llvm.dbg.value(metadata i32 4, metadata !4886, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4911
  call void @llvm.dbg.value(metadata i1 %197, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4911
  call void @llvm.dbg.value(metadata i32 4, metadata !4886, metadata !DIExpression()), !dbg !4911
  call void @llvm.dbg.value(metadata i32 3, metadata !4886, metadata !DIExpression()), !dbg !4911
  call void @llvm.dbg.value(metadata ptr undef, metadata !4890, metadata !DIExpression()), !dbg !4913
  call void @llvm.dbg.value(metadata i64 %54, metadata !4895, metadata !DIExpression()), !dbg !4913
  %198 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %196, i64 %54), !dbg !4915
  %199 = extractvalue { i64, i1 } %198, 1, !dbg !4915
  call void @llvm.dbg.value(metadata i64 poison, metadata !4896, metadata !DIExpression()), !dbg !4913
  %200 = extractvalue { i64, i1 } %198, 0, !dbg !4916
  %201 = icmp slt i64 %196, 0, !dbg !4916
  %202 = select i1 %201, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4916
  %203 = select i1 %199, i64 %202, i64 %200, !dbg !4916
  %204 = or i1 %197, %199, !dbg !4917
  call void @llvm.dbg.value(metadata i1 %204, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4911
  call void @llvm.dbg.value(metadata i32 3, metadata !4886, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4911
  call void @llvm.dbg.value(metadata i1 %204, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4911
  call void @llvm.dbg.value(metadata i32 3, metadata !4886, metadata !DIExpression()), !dbg !4911
  call void @llvm.dbg.value(metadata i32 2, metadata !4886, metadata !DIExpression()), !dbg !4911
  call void @llvm.dbg.value(metadata ptr undef, metadata !4890, metadata !DIExpression()), !dbg !4913
  call void @llvm.dbg.value(metadata i64 %54, metadata !4895, metadata !DIExpression()), !dbg !4913
  %205 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %203, i64 %54), !dbg !4915
  %206 = extractvalue { i64, i1 } %205, 1, !dbg !4915
  call void @llvm.dbg.value(metadata i64 poison, metadata !4896, metadata !DIExpression()), !dbg !4913
  %207 = extractvalue { i64, i1 } %205, 0, !dbg !4916
  %208 = icmp slt i64 %203, 0, !dbg !4916
  %209 = select i1 %208, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4916
  %210 = select i1 %206, i64 %209, i64 %207, !dbg !4916
  %211 = or i1 %204, %206, !dbg !4917
  call void @llvm.dbg.value(metadata i1 %211, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4911
  call void @llvm.dbg.value(metadata i32 2, metadata !4886, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4911
  call void @llvm.dbg.value(metadata i1 %211, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4911
  call void @llvm.dbg.value(metadata i32 2, metadata !4886, metadata !DIExpression()), !dbg !4911
  call void @llvm.dbg.value(metadata i32 1, metadata !4886, metadata !DIExpression()), !dbg !4911
  call void @llvm.dbg.value(metadata ptr undef, metadata !4890, metadata !DIExpression()), !dbg !4913
  call void @llvm.dbg.value(metadata i64 %54, metadata !4895, metadata !DIExpression()), !dbg !4913
  %212 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %210, i64 %54), !dbg !4915
  %213 = extractvalue { i64, i1 } %212, 1, !dbg !4915
  call void @llvm.dbg.value(metadata i64 poison, metadata !4896, metadata !DIExpression()), !dbg !4913
  %214 = extractvalue { i64, i1 } %212, 0, !dbg !4916
  %215 = icmp slt i64 %210, 0, !dbg !4916
  %216 = select i1 %215, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4916
  %217 = select i1 %213, i64 %216, i64 %214, !dbg !4916
  %218 = or i1 %211, %213, !dbg !4917
  call void @llvm.dbg.value(metadata i1 %218, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4911
  call void @llvm.dbg.value(metadata i32 1, metadata !4886, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4911
  call void @llvm.dbg.value(metadata i1 %218, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4911
  call void @llvm.dbg.value(metadata i32 1, metadata !4886, metadata !DIExpression()), !dbg !4911
  call void @llvm.dbg.value(metadata i32 0, metadata !4886, metadata !DIExpression()), !dbg !4911
  call void @llvm.dbg.value(metadata ptr undef, metadata !4890, metadata !DIExpression()), !dbg !4913
  call void @llvm.dbg.value(metadata i64 %54, metadata !4895, metadata !DIExpression()), !dbg !4913
  %219 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %217, i64 %54), !dbg !4915
  %220 = extractvalue { i64, i1 } %219, 1, !dbg !4915
  call void @llvm.dbg.value(metadata i64 poison, metadata !4896, metadata !DIExpression()), !dbg !4913
  %221 = extractvalue { i64, i1 } %219, 0, !dbg !4916
  %222 = icmp slt i64 %217, 0, !dbg !4916
  %223 = select i1 %222, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4916
  %224 = select i1 %220, i64 %223, i64 %221, !dbg !4916
  %225 = or i1 %218, %220, !dbg !4917
  %226 = zext i1 %225 to i32, !dbg !4917
  call void @llvm.dbg.value(metadata i32 %226, metadata !4879, metadata !DIExpression()), !dbg !4911
  call void @llvm.dbg.value(metadata i32 0, metadata !4886, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4911
  br label %476, !dbg !4903

227:                                              ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !4879, metadata !DIExpression()), !dbg !4918
  call void @llvm.dbg.value(metadata i32 10, metadata !4886, metadata !DIExpression()), !dbg !4918
  call void @llvm.dbg.value(metadata i32 9, metadata !4886, metadata !DIExpression()), !dbg !4918
  call void @llvm.dbg.value(metadata ptr undef, metadata !4890, metadata !DIExpression()), !dbg !4920
  call void @llvm.dbg.value(metadata i64 %54, metadata !4895, metadata !DIExpression()), !dbg !4920
  %228 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !4922
  %229 = extractvalue { i64, i1 } %228, 1, !dbg !4922
  call void @llvm.dbg.value(metadata i64 poison, metadata !4896, metadata !DIExpression()), !dbg !4920
  %230 = extractvalue { i64, i1 } %228, 0, !dbg !4923
  %231 = icmp slt i64 %31, 0, !dbg !4923
  %232 = select i1 %231, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4923
  %233 = select i1 %229, i64 %232, i64 %230, !dbg !4923
  call void @llvm.dbg.value(metadata i1 %229, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4918
  call void @llvm.dbg.value(metadata i32 9, metadata !4886, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4918
  call void @llvm.dbg.value(metadata i1 %229, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4918
  call void @llvm.dbg.value(metadata i32 9, metadata !4886, metadata !DIExpression()), !dbg !4918
  call void @llvm.dbg.value(metadata i32 8, metadata !4886, metadata !DIExpression()), !dbg !4918
  call void @llvm.dbg.value(metadata ptr undef, metadata !4890, metadata !DIExpression()), !dbg !4920
  call void @llvm.dbg.value(metadata i64 %54, metadata !4895, metadata !DIExpression()), !dbg !4920
  %234 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %233, i64 %54), !dbg !4922
  %235 = extractvalue { i64, i1 } %234, 1, !dbg !4922
  call void @llvm.dbg.value(metadata i64 poison, metadata !4896, metadata !DIExpression()), !dbg !4920
  %236 = extractvalue { i64, i1 } %234, 0, !dbg !4923
  %237 = icmp slt i64 %233, 0, !dbg !4923
  %238 = select i1 %237, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4923
  %239 = select i1 %235, i64 %238, i64 %236, !dbg !4923
  %240 = or i1 %229, %235, !dbg !4924
  call void @llvm.dbg.value(metadata i1 %240, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4918
  call void @llvm.dbg.value(metadata i32 8, metadata !4886, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4918
  call void @llvm.dbg.value(metadata i1 %240, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4918
  call void @llvm.dbg.value(metadata i32 8, metadata !4886, metadata !DIExpression()), !dbg !4918
  call void @llvm.dbg.value(metadata i32 7, metadata !4886, metadata !DIExpression()), !dbg !4918
  call void @llvm.dbg.value(metadata ptr undef, metadata !4890, metadata !DIExpression()), !dbg !4920
  call void @llvm.dbg.value(metadata i64 %54, metadata !4895, metadata !DIExpression()), !dbg !4920
  %241 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %239, i64 %54), !dbg !4922
  %242 = extractvalue { i64, i1 } %241, 1, !dbg !4922
  call void @llvm.dbg.value(metadata i64 poison, metadata !4896, metadata !DIExpression()), !dbg !4920
  %243 = extractvalue { i64, i1 } %241, 0, !dbg !4923
  %244 = icmp slt i64 %239, 0, !dbg !4923
  %245 = select i1 %244, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4923
  %246 = select i1 %242, i64 %245, i64 %243, !dbg !4923
  %247 = or i1 %240, %242, !dbg !4924
  call void @llvm.dbg.value(metadata i1 %247, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4918
  call void @llvm.dbg.value(metadata i32 7, metadata !4886, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4918
  call void @llvm.dbg.value(metadata i1 %247, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4918
  call void @llvm.dbg.value(metadata i32 7, metadata !4886, metadata !DIExpression()), !dbg !4918
  call void @llvm.dbg.value(metadata i32 6, metadata !4886, metadata !DIExpression()), !dbg !4918
  call void @llvm.dbg.value(metadata ptr undef, metadata !4890, metadata !DIExpression()), !dbg !4920
  call void @llvm.dbg.value(metadata i64 %54, metadata !4895, metadata !DIExpression()), !dbg !4920
  %248 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %246, i64 %54), !dbg !4922
  %249 = extractvalue { i64, i1 } %248, 1, !dbg !4922
  call void @llvm.dbg.value(metadata i64 poison, metadata !4896, metadata !DIExpression()), !dbg !4920
  %250 = extractvalue { i64, i1 } %248, 0, !dbg !4923
  %251 = icmp slt i64 %246, 0, !dbg !4923
  %252 = select i1 %251, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4923
  %253 = select i1 %249, i64 %252, i64 %250, !dbg !4923
  %254 = or i1 %247, %249, !dbg !4924
  call void @llvm.dbg.value(metadata i1 %254, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4918
  call void @llvm.dbg.value(metadata i32 6, metadata !4886, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4918
  call void @llvm.dbg.value(metadata i1 %254, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4918
  call void @llvm.dbg.value(metadata i32 6, metadata !4886, metadata !DIExpression()), !dbg !4918
  call void @llvm.dbg.value(metadata i32 5, metadata !4886, metadata !DIExpression()), !dbg !4918
  call void @llvm.dbg.value(metadata ptr undef, metadata !4890, metadata !DIExpression()), !dbg !4920
  call void @llvm.dbg.value(metadata i64 %54, metadata !4895, metadata !DIExpression()), !dbg !4920
  %255 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %253, i64 %54), !dbg !4922
  %256 = extractvalue { i64, i1 } %255, 1, !dbg !4922
  call void @llvm.dbg.value(metadata i64 poison, metadata !4896, metadata !DIExpression()), !dbg !4920
  %257 = extractvalue { i64, i1 } %255, 0, !dbg !4923
  %258 = icmp slt i64 %253, 0, !dbg !4923
  %259 = select i1 %258, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4923
  %260 = select i1 %256, i64 %259, i64 %257, !dbg !4923
  %261 = or i1 %254, %256, !dbg !4924
  call void @llvm.dbg.value(metadata i1 %261, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4918
  call void @llvm.dbg.value(metadata i32 5, metadata !4886, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4918
  call void @llvm.dbg.value(metadata i1 %261, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4918
  call void @llvm.dbg.value(metadata i32 5, metadata !4886, metadata !DIExpression()), !dbg !4918
  call void @llvm.dbg.value(metadata i32 4, metadata !4886, metadata !DIExpression()), !dbg !4918
  call void @llvm.dbg.value(metadata ptr undef, metadata !4890, metadata !DIExpression()), !dbg !4920
  call void @llvm.dbg.value(metadata i64 %54, metadata !4895, metadata !DIExpression()), !dbg !4920
  %262 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %260, i64 %54), !dbg !4922
  %263 = extractvalue { i64, i1 } %262, 1, !dbg !4922
  call void @llvm.dbg.value(metadata i64 poison, metadata !4896, metadata !DIExpression()), !dbg !4920
  %264 = extractvalue { i64, i1 } %262, 0, !dbg !4923
  %265 = icmp slt i64 %260, 0, !dbg !4923
  %266 = select i1 %265, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4923
  %267 = select i1 %263, i64 %266, i64 %264, !dbg !4923
  %268 = or i1 %261, %263, !dbg !4924
  call void @llvm.dbg.value(metadata i1 %268, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4918
  call void @llvm.dbg.value(metadata i32 4, metadata !4886, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4918
  call void @llvm.dbg.value(metadata i1 %268, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4918
  call void @llvm.dbg.value(metadata i32 4, metadata !4886, metadata !DIExpression()), !dbg !4918
  call void @llvm.dbg.value(metadata i32 3, metadata !4886, metadata !DIExpression()), !dbg !4918
  call void @llvm.dbg.value(metadata ptr undef, metadata !4890, metadata !DIExpression()), !dbg !4920
  call void @llvm.dbg.value(metadata i64 %54, metadata !4895, metadata !DIExpression()), !dbg !4920
  %269 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %267, i64 %54), !dbg !4922
  %270 = extractvalue { i64, i1 } %269, 1, !dbg !4922
  call void @llvm.dbg.value(metadata i64 poison, metadata !4896, metadata !DIExpression()), !dbg !4920
  %271 = extractvalue { i64, i1 } %269, 0, !dbg !4923
  %272 = icmp slt i64 %267, 0, !dbg !4923
  %273 = select i1 %272, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4923
  %274 = select i1 %270, i64 %273, i64 %271, !dbg !4923
  %275 = or i1 %268, %270, !dbg !4924
  call void @llvm.dbg.value(metadata i1 %275, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4918
  call void @llvm.dbg.value(metadata i32 3, metadata !4886, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4918
  call void @llvm.dbg.value(metadata i1 %275, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4918
  call void @llvm.dbg.value(metadata i32 3, metadata !4886, metadata !DIExpression()), !dbg !4918
  call void @llvm.dbg.value(metadata i32 2, metadata !4886, metadata !DIExpression()), !dbg !4918
  call void @llvm.dbg.value(metadata ptr undef, metadata !4890, metadata !DIExpression()), !dbg !4920
  call void @llvm.dbg.value(metadata i64 %54, metadata !4895, metadata !DIExpression()), !dbg !4920
  %276 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %274, i64 %54), !dbg !4922
  %277 = extractvalue { i64, i1 } %276, 1, !dbg !4922
  call void @llvm.dbg.value(metadata i64 poison, metadata !4896, metadata !DIExpression()), !dbg !4920
  %278 = extractvalue { i64, i1 } %276, 0, !dbg !4923
  %279 = icmp slt i64 %274, 0, !dbg !4923
  %280 = select i1 %279, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4923
  %281 = select i1 %277, i64 %280, i64 %278, !dbg !4923
  %282 = or i1 %275, %277, !dbg !4924
  call void @llvm.dbg.value(metadata i1 %282, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4918
  call void @llvm.dbg.value(metadata i32 2, metadata !4886, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4918
  call void @llvm.dbg.value(metadata i1 %282, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4918
  call void @llvm.dbg.value(metadata i32 2, metadata !4886, metadata !DIExpression()), !dbg !4918
  call void @llvm.dbg.value(metadata i32 1, metadata !4886, metadata !DIExpression()), !dbg !4918
  call void @llvm.dbg.value(metadata ptr undef, metadata !4890, metadata !DIExpression()), !dbg !4920
  call void @llvm.dbg.value(metadata i64 %54, metadata !4895, metadata !DIExpression()), !dbg !4920
  %283 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %281, i64 %54), !dbg !4922
  %284 = extractvalue { i64, i1 } %283, 1, !dbg !4922
  call void @llvm.dbg.value(metadata i64 poison, metadata !4896, metadata !DIExpression()), !dbg !4920
  %285 = extractvalue { i64, i1 } %283, 0, !dbg !4923
  %286 = icmp slt i64 %281, 0, !dbg !4923
  %287 = select i1 %286, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4923
  %288 = select i1 %284, i64 %287, i64 %285, !dbg !4923
  %289 = or i1 %282, %284, !dbg !4924
  call void @llvm.dbg.value(metadata i1 %289, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4918
  call void @llvm.dbg.value(metadata i32 1, metadata !4886, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4918
  call void @llvm.dbg.value(metadata i1 %289, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4918
  call void @llvm.dbg.value(metadata i32 1, metadata !4886, metadata !DIExpression()), !dbg !4918
  call void @llvm.dbg.value(metadata i32 0, metadata !4886, metadata !DIExpression()), !dbg !4918
  call void @llvm.dbg.value(metadata ptr undef, metadata !4890, metadata !DIExpression()), !dbg !4920
  call void @llvm.dbg.value(metadata i64 %54, metadata !4895, metadata !DIExpression()), !dbg !4920
  %290 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %288, i64 %54), !dbg !4922
  %291 = extractvalue { i64, i1 } %290, 1, !dbg !4922
  call void @llvm.dbg.value(metadata i64 poison, metadata !4896, metadata !DIExpression()), !dbg !4920
  %292 = extractvalue { i64, i1 } %290, 0, !dbg !4923
  %293 = icmp slt i64 %288, 0, !dbg !4923
  %294 = select i1 %293, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4923
  %295 = select i1 %291, i64 %294, i64 %292, !dbg !4923
  %296 = or i1 %289, %291, !dbg !4924
  %297 = zext i1 %296 to i32, !dbg !4924
  call void @llvm.dbg.value(metadata i32 %297, metadata !4879, metadata !DIExpression()), !dbg !4918
  call void @llvm.dbg.value(metadata i32 0, metadata !4886, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4918
  br label %476, !dbg !4903

298:                                              ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !4879, metadata !DIExpression()), !dbg !4925
  call void @llvm.dbg.value(metadata i32 5, metadata !4886, metadata !DIExpression()), !dbg !4925
  call void @llvm.dbg.value(metadata i32 4, metadata !4886, metadata !DIExpression()), !dbg !4925
  call void @llvm.dbg.value(metadata ptr undef, metadata !4890, metadata !DIExpression()), !dbg !4927
  call void @llvm.dbg.value(metadata i64 %54, metadata !4895, metadata !DIExpression()), !dbg !4927
  %299 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !4929
  %300 = extractvalue { i64, i1 } %299, 1, !dbg !4929
  call void @llvm.dbg.value(metadata i64 poison, metadata !4896, metadata !DIExpression()), !dbg !4927
  %301 = extractvalue { i64, i1 } %299, 0, !dbg !4930
  %302 = icmp slt i64 %31, 0, !dbg !4930
  %303 = select i1 %302, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4930
  %304 = select i1 %300, i64 %303, i64 %301, !dbg !4930
  call void @llvm.dbg.value(metadata i1 %300, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4925
  call void @llvm.dbg.value(metadata i32 4, metadata !4886, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4925
  call void @llvm.dbg.value(metadata i1 %300, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4925
  call void @llvm.dbg.value(metadata i32 4, metadata !4886, metadata !DIExpression()), !dbg !4925
  call void @llvm.dbg.value(metadata i32 3, metadata !4886, metadata !DIExpression()), !dbg !4925
  call void @llvm.dbg.value(metadata ptr undef, metadata !4890, metadata !DIExpression()), !dbg !4927
  call void @llvm.dbg.value(metadata i64 %54, metadata !4895, metadata !DIExpression()), !dbg !4927
  %305 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %304, i64 %54), !dbg !4929
  %306 = extractvalue { i64, i1 } %305, 1, !dbg !4929
  call void @llvm.dbg.value(metadata i64 poison, metadata !4896, metadata !DIExpression()), !dbg !4927
  %307 = extractvalue { i64, i1 } %305, 0, !dbg !4930
  %308 = icmp slt i64 %304, 0, !dbg !4930
  %309 = select i1 %308, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4930
  %310 = select i1 %306, i64 %309, i64 %307, !dbg !4930
  %311 = or i1 %300, %306, !dbg !4931
  call void @llvm.dbg.value(metadata i1 %311, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4925
  call void @llvm.dbg.value(metadata i32 3, metadata !4886, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4925
  call void @llvm.dbg.value(metadata i1 %311, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4925
  call void @llvm.dbg.value(metadata i32 3, metadata !4886, metadata !DIExpression()), !dbg !4925
  call void @llvm.dbg.value(metadata i32 2, metadata !4886, metadata !DIExpression()), !dbg !4925
  call void @llvm.dbg.value(metadata ptr undef, metadata !4890, metadata !DIExpression()), !dbg !4927
  call void @llvm.dbg.value(metadata i64 %54, metadata !4895, metadata !DIExpression()), !dbg !4927
  %312 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %310, i64 %54), !dbg !4929
  %313 = extractvalue { i64, i1 } %312, 1, !dbg !4929
  call void @llvm.dbg.value(metadata i64 poison, metadata !4896, metadata !DIExpression()), !dbg !4927
  %314 = extractvalue { i64, i1 } %312, 0, !dbg !4930
  %315 = icmp slt i64 %310, 0, !dbg !4930
  %316 = select i1 %315, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4930
  %317 = select i1 %313, i64 %316, i64 %314, !dbg !4930
  %318 = or i1 %311, %313, !dbg !4931
  call void @llvm.dbg.value(metadata i1 %318, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4925
  call void @llvm.dbg.value(metadata i32 2, metadata !4886, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4925
  call void @llvm.dbg.value(metadata i1 %318, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4925
  call void @llvm.dbg.value(metadata i32 2, metadata !4886, metadata !DIExpression()), !dbg !4925
  call void @llvm.dbg.value(metadata i32 1, metadata !4886, metadata !DIExpression()), !dbg !4925
  call void @llvm.dbg.value(metadata ptr undef, metadata !4890, metadata !DIExpression()), !dbg !4927
  call void @llvm.dbg.value(metadata i64 %54, metadata !4895, metadata !DIExpression()), !dbg !4927
  %319 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %317, i64 %54), !dbg !4929
  %320 = extractvalue { i64, i1 } %319, 1, !dbg !4929
  call void @llvm.dbg.value(metadata i64 poison, metadata !4896, metadata !DIExpression()), !dbg !4927
  %321 = extractvalue { i64, i1 } %319, 0, !dbg !4930
  %322 = icmp slt i64 %317, 0, !dbg !4930
  %323 = select i1 %322, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4930
  %324 = select i1 %320, i64 %323, i64 %321, !dbg !4930
  %325 = or i1 %318, %320, !dbg !4931
  call void @llvm.dbg.value(metadata i1 %325, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4925
  call void @llvm.dbg.value(metadata i32 1, metadata !4886, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4925
  call void @llvm.dbg.value(metadata i1 %325, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4925
  call void @llvm.dbg.value(metadata i32 1, metadata !4886, metadata !DIExpression()), !dbg !4925
  call void @llvm.dbg.value(metadata i32 0, metadata !4886, metadata !DIExpression()), !dbg !4925
  call void @llvm.dbg.value(metadata ptr undef, metadata !4890, metadata !DIExpression()), !dbg !4927
  call void @llvm.dbg.value(metadata i64 %54, metadata !4895, metadata !DIExpression()), !dbg !4927
  %326 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %324, i64 %54), !dbg !4929
  %327 = extractvalue { i64, i1 } %326, 1, !dbg !4929
  call void @llvm.dbg.value(metadata i64 poison, metadata !4896, metadata !DIExpression()), !dbg !4927
  %328 = extractvalue { i64, i1 } %326, 0, !dbg !4930
  %329 = icmp slt i64 %324, 0, !dbg !4930
  %330 = select i1 %329, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4930
  %331 = select i1 %327, i64 %330, i64 %328, !dbg !4930
  %332 = or i1 %325, %327, !dbg !4931
  %333 = zext i1 %332 to i32, !dbg !4931
  call void @llvm.dbg.value(metadata i32 %333, metadata !4879, metadata !DIExpression()), !dbg !4925
  call void @llvm.dbg.value(metadata i32 0, metadata !4886, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4925
  br label %476, !dbg !4903

334:                                              ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !4879, metadata !DIExpression()), !dbg !4932
  call void @llvm.dbg.value(metadata i32 6, metadata !4886, metadata !DIExpression()), !dbg !4932
  call void @llvm.dbg.value(metadata i32 5, metadata !4886, metadata !DIExpression()), !dbg !4932
  call void @llvm.dbg.value(metadata ptr undef, metadata !4890, metadata !DIExpression()), !dbg !4934
  call void @llvm.dbg.value(metadata i64 %54, metadata !4895, metadata !DIExpression()), !dbg !4934
  %335 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !4936
  %336 = extractvalue { i64, i1 } %335, 1, !dbg !4936
  call void @llvm.dbg.value(metadata i64 poison, metadata !4896, metadata !DIExpression()), !dbg !4934
  %337 = extractvalue { i64, i1 } %335, 0, !dbg !4937
  %338 = icmp slt i64 %31, 0, !dbg !4937
  %339 = select i1 %338, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4937
  %340 = select i1 %336, i64 %339, i64 %337, !dbg !4937
  call void @llvm.dbg.value(metadata i1 %336, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4932
  call void @llvm.dbg.value(metadata i32 5, metadata !4886, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4932
  call void @llvm.dbg.value(metadata i1 %336, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4932
  call void @llvm.dbg.value(metadata i32 5, metadata !4886, metadata !DIExpression()), !dbg !4932
  call void @llvm.dbg.value(metadata i32 4, metadata !4886, metadata !DIExpression()), !dbg !4932
  call void @llvm.dbg.value(metadata ptr undef, metadata !4890, metadata !DIExpression()), !dbg !4934
  call void @llvm.dbg.value(metadata i64 %54, metadata !4895, metadata !DIExpression()), !dbg !4934
  %341 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %340, i64 %54), !dbg !4936
  %342 = extractvalue { i64, i1 } %341, 1, !dbg !4936
  call void @llvm.dbg.value(metadata i64 poison, metadata !4896, metadata !DIExpression()), !dbg !4934
  %343 = extractvalue { i64, i1 } %341, 0, !dbg !4937
  %344 = icmp slt i64 %340, 0, !dbg !4937
  %345 = select i1 %344, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4937
  %346 = select i1 %342, i64 %345, i64 %343, !dbg !4937
  %347 = or i1 %336, %342, !dbg !4938
  call void @llvm.dbg.value(metadata i1 %347, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4932
  call void @llvm.dbg.value(metadata i32 4, metadata !4886, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4932
  call void @llvm.dbg.value(metadata i1 %347, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4932
  call void @llvm.dbg.value(metadata i32 4, metadata !4886, metadata !DIExpression()), !dbg !4932
  call void @llvm.dbg.value(metadata i32 3, metadata !4886, metadata !DIExpression()), !dbg !4932
  call void @llvm.dbg.value(metadata ptr undef, metadata !4890, metadata !DIExpression()), !dbg !4934
  call void @llvm.dbg.value(metadata i64 %54, metadata !4895, metadata !DIExpression()), !dbg !4934
  %348 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %346, i64 %54), !dbg !4936
  %349 = extractvalue { i64, i1 } %348, 1, !dbg !4936
  call void @llvm.dbg.value(metadata i64 poison, metadata !4896, metadata !DIExpression()), !dbg !4934
  %350 = extractvalue { i64, i1 } %348, 0, !dbg !4937
  %351 = icmp slt i64 %346, 0, !dbg !4937
  %352 = select i1 %351, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4937
  %353 = select i1 %349, i64 %352, i64 %350, !dbg !4937
  %354 = or i1 %347, %349, !dbg !4938
  call void @llvm.dbg.value(metadata i1 %354, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4932
  call void @llvm.dbg.value(metadata i32 3, metadata !4886, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4932
  call void @llvm.dbg.value(metadata i1 %354, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4932
  call void @llvm.dbg.value(metadata i32 3, metadata !4886, metadata !DIExpression()), !dbg !4932
  call void @llvm.dbg.value(metadata i32 2, metadata !4886, metadata !DIExpression()), !dbg !4932
  call void @llvm.dbg.value(metadata ptr undef, metadata !4890, metadata !DIExpression()), !dbg !4934
  call void @llvm.dbg.value(metadata i64 %54, metadata !4895, metadata !DIExpression()), !dbg !4934
  %355 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %353, i64 %54), !dbg !4936
  %356 = extractvalue { i64, i1 } %355, 1, !dbg !4936
  call void @llvm.dbg.value(metadata i64 poison, metadata !4896, metadata !DIExpression()), !dbg !4934
  %357 = extractvalue { i64, i1 } %355, 0, !dbg !4937
  %358 = icmp slt i64 %353, 0, !dbg !4937
  %359 = select i1 %358, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4937
  %360 = select i1 %356, i64 %359, i64 %357, !dbg !4937
  %361 = or i1 %354, %356, !dbg !4938
  call void @llvm.dbg.value(metadata i1 %361, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4932
  call void @llvm.dbg.value(metadata i32 2, metadata !4886, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4932
  call void @llvm.dbg.value(metadata i1 %361, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4932
  call void @llvm.dbg.value(metadata i32 2, metadata !4886, metadata !DIExpression()), !dbg !4932
  call void @llvm.dbg.value(metadata i32 1, metadata !4886, metadata !DIExpression()), !dbg !4932
  call void @llvm.dbg.value(metadata ptr undef, metadata !4890, metadata !DIExpression()), !dbg !4934
  call void @llvm.dbg.value(metadata i64 %54, metadata !4895, metadata !DIExpression()), !dbg !4934
  %362 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %360, i64 %54), !dbg !4936
  %363 = extractvalue { i64, i1 } %362, 1, !dbg !4936
  call void @llvm.dbg.value(metadata i64 poison, metadata !4896, metadata !DIExpression()), !dbg !4934
  %364 = extractvalue { i64, i1 } %362, 0, !dbg !4937
  %365 = icmp slt i64 %360, 0, !dbg !4937
  %366 = select i1 %365, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4937
  %367 = select i1 %363, i64 %366, i64 %364, !dbg !4937
  %368 = or i1 %361, %363, !dbg !4938
  call void @llvm.dbg.value(metadata i1 %368, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4932
  call void @llvm.dbg.value(metadata i32 1, metadata !4886, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4932
  call void @llvm.dbg.value(metadata i1 %368, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4932
  call void @llvm.dbg.value(metadata i32 1, metadata !4886, metadata !DIExpression()), !dbg !4932
  call void @llvm.dbg.value(metadata i32 0, metadata !4886, metadata !DIExpression()), !dbg !4932
  call void @llvm.dbg.value(metadata ptr undef, metadata !4890, metadata !DIExpression()), !dbg !4934
  call void @llvm.dbg.value(metadata i64 %54, metadata !4895, metadata !DIExpression()), !dbg !4934
  %369 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %367, i64 %54), !dbg !4936
  %370 = extractvalue { i64, i1 } %369, 1, !dbg !4936
  call void @llvm.dbg.value(metadata i64 poison, metadata !4896, metadata !DIExpression()), !dbg !4934
  %371 = extractvalue { i64, i1 } %369, 0, !dbg !4937
  %372 = icmp slt i64 %367, 0, !dbg !4937
  %373 = select i1 %372, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4937
  %374 = select i1 %370, i64 %373, i64 %371, !dbg !4937
  %375 = or i1 %368, %370, !dbg !4938
  %376 = zext i1 %375 to i32, !dbg !4938
  call void @llvm.dbg.value(metadata i32 %376, metadata !4879, metadata !DIExpression()), !dbg !4932
  call void @llvm.dbg.value(metadata i32 0, metadata !4886, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4932
  br label %476, !dbg !4903

377:                                              ; preds = %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !4890, metadata !DIExpression()), !dbg !4939
  call void @llvm.dbg.value(metadata i32 512, metadata !4895, metadata !DIExpression()), !dbg !4939
  %378 = add i64 %31, -18014398509481984, !dbg !4941
  %379 = icmp ult i64 %378, -36028797018963968, !dbg !4941
  call void @llvm.dbg.value(metadata i64 poison, metadata !4896, metadata !DIExpression()), !dbg !4939
  %380 = shl i64 %31, 9, !dbg !4942
  %381 = icmp slt i64 %31, 0, !dbg !4942
  %382 = select i1 %381, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4942
  %383 = select i1 %379, i64 %382, i64 %380, !dbg !4942
  %384 = zext i1 %379 to i32, !dbg !4942
  tail call void @llvm.dbg.value(metadata i64 %383, metadata !4817, metadata !DIExpression()), !dbg !4825
  tail call void @llvm.dbg.value(metadata i32 %384, metadata !4823, metadata !DIExpression()), !dbg !4864
  br label %476, !dbg !4943

385:                                              ; preds = %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !4890, metadata !DIExpression()), !dbg !4944
  call void @llvm.dbg.value(metadata i32 1024, metadata !4895, metadata !DIExpression()), !dbg !4944
  %386 = add i64 %31, -9007199254740992, !dbg !4946
  %387 = icmp ult i64 %386, -18014398509481984, !dbg !4946
  call void @llvm.dbg.value(metadata i64 poison, metadata !4896, metadata !DIExpression()), !dbg !4944
  %388 = shl i64 %31, 10, !dbg !4947
  %389 = icmp slt i64 %31, 0, !dbg !4947
  %390 = select i1 %389, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4947
  %391 = select i1 %387, i64 %390, i64 %388, !dbg !4947
  %392 = zext i1 %387 to i32, !dbg !4947
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !4817, metadata !DIExpression()), !dbg !4825
  tail call void @llvm.dbg.value(metadata i32 %392, metadata !4823, metadata !DIExpression()), !dbg !4864
  br label %476, !dbg !4948

393:                                              ; preds = %53, %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !4884, metadata !DIExpression()), !dbg !4949
  call void @llvm.dbg.value(metadata i64 %54, metadata !4885, metadata !DIExpression()), !dbg !4949
  call void @llvm.dbg.value(metadata i32 0, metadata !4879, metadata !DIExpression()), !dbg !4949
  call void @llvm.dbg.value(metadata i32 3, metadata !4886, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4949
  call void @llvm.dbg.value(metadata i32 0, metadata !4879, metadata !DIExpression()), !dbg !4949
  call void @llvm.dbg.value(metadata i32 3, metadata !4886, metadata !DIExpression()), !dbg !4949
  call void @llvm.dbg.value(metadata i32 2, metadata !4886, metadata !DIExpression()), !dbg !4949
  call void @llvm.dbg.value(metadata ptr undef, metadata !4890, metadata !DIExpression()), !dbg !4951
  call void @llvm.dbg.value(metadata i64 %54, metadata !4895, metadata !DIExpression()), !dbg !4951
  %394 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !4953
  %395 = extractvalue { i64, i1 } %394, 1, !dbg !4953
  call void @llvm.dbg.value(metadata i64 poison, metadata !4896, metadata !DIExpression()), !dbg !4951
  %396 = extractvalue { i64, i1 } %394, 0, !dbg !4954
  %397 = icmp slt i64 %31, 0, !dbg !4954
  %398 = select i1 %397, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4954
  %399 = select i1 %395, i64 %398, i64 %396, !dbg !4954
  call void @llvm.dbg.value(metadata i1 %395, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4949
  call void @llvm.dbg.value(metadata i32 2, metadata !4886, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4949
  call void @llvm.dbg.value(metadata i1 %395, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4949
  call void @llvm.dbg.value(metadata i32 2, metadata !4886, metadata !DIExpression()), !dbg !4949
  call void @llvm.dbg.value(metadata i32 1, metadata !4886, metadata !DIExpression()), !dbg !4949
  call void @llvm.dbg.value(metadata ptr undef, metadata !4890, metadata !DIExpression()), !dbg !4951
  call void @llvm.dbg.value(metadata i64 %54, metadata !4895, metadata !DIExpression()), !dbg !4951
  %400 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %399, i64 %54), !dbg !4953
  %401 = extractvalue { i64, i1 } %400, 1, !dbg !4953
  call void @llvm.dbg.value(metadata i64 poison, metadata !4896, metadata !DIExpression()), !dbg !4951
  %402 = extractvalue { i64, i1 } %400, 0, !dbg !4954
  %403 = icmp slt i64 %399, 0, !dbg !4954
  %404 = select i1 %403, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4954
  %405 = select i1 %401, i64 %404, i64 %402, !dbg !4954
  %406 = or i1 %395, %401, !dbg !4955
  call void @llvm.dbg.value(metadata i1 %406, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4949
  call void @llvm.dbg.value(metadata i32 1, metadata !4886, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4949
  call void @llvm.dbg.value(metadata i1 %406, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4949
  call void @llvm.dbg.value(metadata i32 1, metadata !4886, metadata !DIExpression()), !dbg !4949
  call void @llvm.dbg.value(metadata i32 0, metadata !4886, metadata !DIExpression()), !dbg !4949
  call void @llvm.dbg.value(metadata ptr undef, metadata !4890, metadata !DIExpression()), !dbg !4951
  call void @llvm.dbg.value(metadata i64 %54, metadata !4895, metadata !DIExpression()), !dbg !4951
  %407 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %405, i64 %54), !dbg !4953
  %408 = extractvalue { i64, i1 } %407, 1, !dbg !4953
  call void @llvm.dbg.value(metadata i64 poison, metadata !4896, metadata !DIExpression()), !dbg !4951
  %409 = extractvalue { i64, i1 } %407, 0, !dbg !4954
  %410 = icmp slt i64 %405, 0, !dbg !4954
  %411 = select i1 %410, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4954
  %412 = select i1 %408, i64 %411, i64 %409, !dbg !4954
  %413 = or i1 %406, %408, !dbg !4955
  %414 = zext i1 %413 to i32, !dbg !4955
  call void @llvm.dbg.value(metadata i32 %414, metadata !4879, metadata !DIExpression()), !dbg !4949
  call void @llvm.dbg.value(metadata i32 0, metadata !4886, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4949
  br label %476, !dbg !4903

415:                                              ; preds = %53, %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !4884, metadata !DIExpression()), !dbg !4956
  call void @llvm.dbg.value(metadata i64 %54, metadata !4885, metadata !DIExpression()), !dbg !4956
  call void @llvm.dbg.value(metadata i32 0, metadata !4879, metadata !DIExpression()), !dbg !4956
  call void @llvm.dbg.value(metadata i32 1, metadata !4886, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4956
  %416 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !4958
  %417 = extractvalue { i64, i1 } %416, 1, !dbg !4958
  %418 = icmp slt i64 %31, 0, !dbg !4960
  %419 = select i1 %418, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4960
  %420 = extractvalue { i64, i1 } %416, 0, !dbg !4960
  %421 = select i1 %417, i64 %419, i64 %420, !dbg !4960
  %422 = zext i1 %417 to i32, !dbg !4960
  call void @llvm.dbg.value(metadata i32 0, metadata !4879, metadata !DIExpression()), !dbg !4956
  call void @llvm.dbg.value(metadata i32 1, metadata !4886, metadata !DIExpression()), !dbg !4956
  call void @llvm.dbg.value(metadata ptr undef, metadata !4890, metadata !DIExpression()), !dbg !4961
  call void @llvm.dbg.value(metadata i64 %54, metadata !4895, metadata !DIExpression()), !dbg !4961
  call void @llvm.dbg.value(metadata i64 poison, metadata !4896, metadata !DIExpression()), !dbg !4961
  br label %476, !dbg !4903

423:                                              ; preds = %53, %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !4884, metadata !DIExpression()), !dbg !4962
  call void @llvm.dbg.value(metadata i64 %54, metadata !4885, metadata !DIExpression()), !dbg !4962
  call void @llvm.dbg.value(metadata i32 0, metadata !4879, metadata !DIExpression()), !dbg !4962
  call void @llvm.dbg.value(metadata i32 2, metadata !4886, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4962
  call void @llvm.dbg.value(metadata i32 0, metadata !4879, metadata !DIExpression()), !dbg !4962
  call void @llvm.dbg.value(metadata i32 2, metadata !4886, metadata !DIExpression()), !dbg !4962
  call void @llvm.dbg.value(metadata i32 1, metadata !4886, metadata !DIExpression()), !dbg !4962
  call void @llvm.dbg.value(metadata ptr undef, metadata !4890, metadata !DIExpression()), !dbg !4964
  call void @llvm.dbg.value(metadata i64 %54, metadata !4895, metadata !DIExpression()), !dbg !4964
  %424 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !4966
  %425 = extractvalue { i64, i1 } %424, 1, !dbg !4966
  call void @llvm.dbg.value(metadata i64 poison, metadata !4896, metadata !DIExpression()), !dbg !4964
  %426 = extractvalue { i64, i1 } %424, 0, !dbg !4967
  %427 = icmp slt i64 %31, 0, !dbg !4967
  %428 = select i1 %427, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4967
  %429 = select i1 %425, i64 %428, i64 %426, !dbg !4967
  call void @llvm.dbg.value(metadata i1 %425, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4962
  call void @llvm.dbg.value(metadata i32 1, metadata !4886, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4962
  call void @llvm.dbg.value(metadata i1 %425, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4962
  call void @llvm.dbg.value(metadata i32 1, metadata !4886, metadata !DIExpression()), !dbg !4962
  call void @llvm.dbg.value(metadata i32 0, metadata !4886, metadata !DIExpression()), !dbg !4962
  call void @llvm.dbg.value(metadata ptr undef, metadata !4890, metadata !DIExpression()), !dbg !4964
  call void @llvm.dbg.value(metadata i64 %54, metadata !4895, metadata !DIExpression()), !dbg !4964
  %430 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %429, i64 %54), !dbg !4966
  %431 = extractvalue { i64, i1 } %430, 1, !dbg !4966
  call void @llvm.dbg.value(metadata i64 poison, metadata !4896, metadata !DIExpression()), !dbg !4964
  %432 = extractvalue { i64, i1 } %430, 0, !dbg !4967
  %433 = icmp slt i64 %429, 0, !dbg !4967
  %434 = select i1 %433, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4967
  %435 = select i1 %431, i64 %434, i64 %432, !dbg !4967
  %436 = or i1 %425, %431, !dbg !4968
  %437 = zext i1 %436 to i32, !dbg !4968
  call void @llvm.dbg.value(metadata i32 %437, metadata !4879, metadata !DIExpression()), !dbg !4962
  call void @llvm.dbg.value(metadata i32 0, metadata !4886, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4962
  br label %476, !dbg !4903

438:                                              ; preds = %53, %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !4884, metadata !DIExpression()), !dbg !4969
  call void @llvm.dbg.value(metadata i64 %54, metadata !4885, metadata !DIExpression()), !dbg !4969
  call void @llvm.dbg.value(metadata i32 0, metadata !4879, metadata !DIExpression()), !dbg !4969
  call void @llvm.dbg.value(metadata i32 4, metadata !4886, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4969
  call void @llvm.dbg.value(metadata i32 0, metadata !4879, metadata !DIExpression()), !dbg !4969
  call void @llvm.dbg.value(metadata i32 4, metadata !4886, metadata !DIExpression()), !dbg !4969
  call void @llvm.dbg.value(metadata i32 3, metadata !4886, metadata !DIExpression()), !dbg !4969
  call void @llvm.dbg.value(metadata ptr undef, metadata !4890, metadata !DIExpression()), !dbg !4971
  call void @llvm.dbg.value(metadata i64 %54, metadata !4895, metadata !DIExpression()), !dbg !4971
  %439 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !4973
  %440 = extractvalue { i64, i1 } %439, 1, !dbg !4973
  call void @llvm.dbg.value(metadata i64 poison, metadata !4896, metadata !DIExpression()), !dbg !4971
  %441 = extractvalue { i64, i1 } %439, 0, !dbg !4974
  %442 = icmp slt i64 %31, 0, !dbg !4974
  %443 = select i1 %442, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4974
  %444 = select i1 %440, i64 %443, i64 %441, !dbg !4974
  call void @llvm.dbg.value(metadata i1 %440, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4969
  call void @llvm.dbg.value(metadata i32 3, metadata !4886, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4969
  call void @llvm.dbg.value(metadata i1 %440, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4969
  call void @llvm.dbg.value(metadata i32 3, metadata !4886, metadata !DIExpression()), !dbg !4969
  call void @llvm.dbg.value(metadata i32 2, metadata !4886, metadata !DIExpression()), !dbg !4969
  call void @llvm.dbg.value(metadata ptr undef, metadata !4890, metadata !DIExpression()), !dbg !4971
  call void @llvm.dbg.value(metadata i64 %54, metadata !4895, metadata !DIExpression()), !dbg !4971
  %445 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %444, i64 %54), !dbg !4973
  %446 = extractvalue { i64, i1 } %445, 1, !dbg !4973
  call void @llvm.dbg.value(metadata i64 poison, metadata !4896, metadata !DIExpression()), !dbg !4971
  %447 = extractvalue { i64, i1 } %445, 0, !dbg !4974
  %448 = icmp slt i64 %444, 0, !dbg !4974
  %449 = select i1 %448, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4974
  %450 = select i1 %446, i64 %449, i64 %447, !dbg !4974
  %451 = or i1 %440, %446, !dbg !4975
  call void @llvm.dbg.value(metadata i1 %451, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4969
  call void @llvm.dbg.value(metadata i32 2, metadata !4886, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4969
  call void @llvm.dbg.value(metadata i1 %451, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4969
  call void @llvm.dbg.value(metadata i32 2, metadata !4886, metadata !DIExpression()), !dbg !4969
  call void @llvm.dbg.value(metadata i32 1, metadata !4886, metadata !DIExpression()), !dbg !4969
  call void @llvm.dbg.value(metadata ptr undef, metadata !4890, metadata !DIExpression()), !dbg !4971
  call void @llvm.dbg.value(metadata i64 %54, metadata !4895, metadata !DIExpression()), !dbg !4971
  %452 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %450, i64 %54), !dbg !4973
  %453 = extractvalue { i64, i1 } %452, 1, !dbg !4973
  call void @llvm.dbg.value(metadata i64 poison, metadata !4896, metadata !DIExpression()), !dbg !4971
  %454 = extractvalue { i64, i1 } %452, 0, !dbg !4974
  %455 = icmp slt i64 %450, 0, !dbg !4974
  %456 = select i1 %455, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4974
  %457 = select i1 %453, i64 %456, i64 %454, !dbg !4974
  %458 = or i1 %451, %453, !dbg !4975
  call void @llvm.dbg.value(metadata i1 %458, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4969
  call void @llvm.dbg.value(metadata i32 1, metadata !4886, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4969
  call void @llvm.dbg.value(metadata i1 %458, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4969
  call void @llvm.dbg.value(metadata i32 1, metadata !4886, metadata !DIExpression()), !dbg !4969
  call void @llvm.dbg.value(metadata i32 0, metadata !4886, metadata !DIExpression()), !dbg !4969
  call void @llvm.dbg.value(metadata ptr undef, metadata !4890, metadata !DIExpression()), !dbg !4971
  call void @llvm.dbg.value(metadata i64 %54, metadata !4895, metadata !DIExpression()), !dbg !4971
  %459 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %457, i64 %54), !dbg !4973
  %460 = extractvalue { i64, i1 } %459, 1, !dbg !4973
  call void @llvm.dbg.value(metadata i64 poison, metadata !4896, metadata !DIExpression()), !dbg !4971
  %461 = extractvalue { i64, i1 } %459, 0, !dbg !4974
  %462 = icmp slt i64 %457, 0, !dbg !4974
  %463 = select i1 %462, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4974
  %464 = select i1 %460, i64 %463, i64 %461, !dbg !4974
  %465 = or i1 %458, %460, !dbg !4975
  %466 = zext i1 %465 to i32, !dbg !4975
  call void @llvm.dbg.value(metadata i32 %466, metadata !4879, metadata !DIExpression()), !dbg !4969
  call void @llvm.dbg.value(metadata i32 0, metadata !4886, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4969
  br label %476, !dbg !4903

467:                                              ; preds = %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !4890, metadata !DIExpression()), !dbg !4976
  call void @llvm.dbg.value(metadata i32 2, metadata !4895, metadata !DIExpression()), !dbg !4976
  %468 = add i64 %31, 4611686018427387904, !dbg !4978
  %469 = icmp slt i64 %468, 0, !dbg !4978
  call void @llvm.dbg.value(metadata i64 poison, metadata !4896, metadata !DIExpression()), !dbg !4976
  %470 = shl i64 %31, 1, !dbg !4979
  %471 = icmp slt i64 %31, 0, !dbg !4979
  %472 = select i1 %471, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4979
  %473 = select i1 %469, i64 %472, i64 %470, !dbg !4979
  %474 = lshr i64 %468, 63, !dbg !4979
  %475 = trunc i64 %474 to i32, !dbg !4979
  tail call void @llvm.dbg.value(metadata i64 %473, metadata !4817, metadata !DIExpression()), !dbg !4825
  tail call void @llvm.dbg.value(metadata i32 %475, metadata !4823, metadata !DIExpression()), !dbg !4864
  br label %476, !dbg !4980

476:                                              ; preds = %56, %106, %438, %163, %227, %298, %423, %415, %393, %334, %377, %385, %467, %53
  %477 = phi i64 [ %473, %467 ], [ %31, %53 ], [ %391, %385 ], [ %383, %377 ], [ %374, %334 ], [ %412, %393 ], [ %421, %415 ], [ %435, %423 ], [ %331, %298 ], [ %295, %227 ], [ %224, %163 ], [ %464, %438 ], [ %160, %106 ], [ %103, %56 ], !dbg !4825
  %478 = phi i32 [ %475, %467 ], [ 0, %53 ], [ %392, %385 ], [ %384, %377 ], [ %376, %334 ], [ %414, %393 ], [ %422, %415 ], [ %437, %423 ], [ %333, %298 ], [ %297, %227 ], [ %226, %163 ], [ %466, %438 ], [ %162, %106 ], [ %105, %56 ], !dbg !4981
  tail call void @llvm.dbg.value(metadata i64 %477, metadata !4817, metadata !DIExpression()), !dbg !4825
  tail call void @llvm.dbg.value(metadata i32 %478, metadata !4823, metadata !DIExpression()), !dbg !4864
  %479 = or i32 %478, %30, !dbg !4903
  tail call void @llvm.dbg.value(metadata i32 %479, metadata !4818, metadata !DIExpression()), !dbg !4825
  %480 = getelementptr inbounds i8, ptr %11, i64 %55, !dbg !4982
  store ptr %480, ptr %8, align 8, !dbg !4982, !tbaa !873
  %481 = load i8, ptr %480, align 1, !dbg !4983, !tbaa !952
  %482 = icmp eq i8 %481, 0, !dbg !4983
  %483 = or disjoint i32 %479, 2
  %484 = select i1 %482, i32 %479, i32 %483, !dbg !4985
  tail call void @llvm.dbg.value(metadata i32 %484, metadata !4818, metadata !DIExpression()), !dbg !4825
  br label %487

485:                                              ; preds = %53
  store i64 %31, ptr %3, align 8, !dbg !4986, !tbaa !1328
  %486 = or disjoint i32 %30, 2, !dbg !4987
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !4817, metadata !DIExpression()), !dbg !4825
  tail call void @llvm.dbg.value(metadata i32 %30, metadata !4818, metadata !DIExpression()), !dbg !4825
  br label %490

487:                                              ; preds = %476, %29
  %488 = phi i64 [ %31, %29 ], [ %477, %476 ], !dbg !4988
  %489 = phi i32 [ %30, %29 ], [ %484, %476 ], !dbg !4989
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !4817, metadata !DIExpression()), !dbg !4825
  tail call void @llvm.dbg.value(metadata i32 %489, metadata !4818, metadata !DIExpression()), !dbg !4825
  store i64 %488, ptr %3, align 8, !dbg !4990, !tbaa !1328
  br label %490, !dbg !4991

490:                                              ; preds = %485, %22, %13, %15, %18, %487, %38, %28
  %491 = phi i32 [ %489, %487 ], [ %486, %485 ], [ %39, %38 ], [ %26, %28 ], [ 4, %18 ], [ 4, %15 ], [ 4, %13 ], [ 4, %22 ], !dbg !4825
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #44, !dbg !4992
  ret i32 %491, !dbg !4992
}

; Function Attrs: nounwind
declare !dbg !4993 i64 @strtoimax(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @rpl_fopen(ptr nocapture noundef nonnull readonly %0, ptr nocapture noundef nonnull readonly %1) local_unnamed_addr #19 !dbg !4998 {
  %3 = alloca [81 x i8], align 16, !DIAssignID !5060
  call void @llvm.dbg.assign(metadata i1 undef, metadata !5041, metadata !DIExpression(), metadata !5060, metadata ptr %3, metadata !DIExpression()), !dbg !5061
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5036, metadata !DIExpression()), !dbg !5061
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5037, metadata !DIExpression()), !dbg !5061
  tail call void @llvm.dbg.value(metadata i32 0, metadata !5038, metadata !DIExpression()), !dbg !5061
  tail call void @llvm.dbg.value(metadata i32 0, metadata !5039, metadata !DIExpression()), !dbg !5061
  tail call void @llvm.dbg.value(metadata i8 0, metadata !5040, metadata !DIExpression()), !dbg !5061
  call void @llvm.lifetime.start.p0(i64 81, ptr nonnull %3) #44, !dbg !5062
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5045, metadata !DIExpression()), !dbg !5063
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !5047, metadata !DIExpression()), !dbg !5063
  br label %4, !dbg !5064

4:                                                ; preds = %43, %2
  %5 = phi i8 [ 0, %2 ], [ %44, %43 ], !dbg !5061
  %6 = phi ptr [ %1, %2 ], [ %48, %43 ], !dbg !5063
  %7 = phi i64 [ 0, %2 ], [ %45, %43 ]
  %8 = phi i32 [ 0, %2 ], [ %46, %43 ], !dbg !5061
  %9 = phi i32 [ 0, %2 ], [ %47, %43 ], !dbg !5065
  %10 = getelementptr inbounds i8, ptr %3, i64 %7, !dbg !5066
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !5038, metadata !DIExpression()), !dbg !5061
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !5039, metadata !DIExpression()), !dbg !5061
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !5047, metadata !DIExpression()), !dbg !5063
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !5045, metadata !DIExpression()), !dbg !5063
  tail call void @llvm.dbg.value(metadata i8 %5, metadata !5040, metadata !DIExpression()), !dbg !5061
  %11 = load i8, ptr %6, align 1, !dbg !5066, !tbaa !952
  switch i8 %11, label %38 [
    i8 0, label %49
    i8 114, label %12
    i8 119, label %16
    i8 97, label %21
    i8 98, label %26
    i8 43, label %30
    i8 120, label %34
    i8 101, label %36
  ], !dbg !5067

12:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 0, metadata !5038, metadata !DIExpression()), !dbg !5061
  %13 = icmp slt i64 %7, 80, !dbg !5068
  br i1 %13, label %14, label %43, !dbg !5071

14:                                               ; preds = %12
  %15 = add nsw i64 %7, 1, !dbg !5072
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %15), metadata !5047, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5063
  store i8 114, ptr %10, align 1, !dbg !5073, !tbaa !952
  br label %43, !dbg !5074

16:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 1, metadata !5038, metadata !DIExpression()), !dbg !5061
  %17 = or i32 %8, 576, !dbg !5075
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !5039, metadata !DIExpression()), !dbg !5061
  %18 = icmp slt i64 %7, 80, !dbg !5076
  br i1 %18, label %19, label %43, !dbg !5078

19:                                               ; preds = %16
  %20 = add nsw i64 %7, 1, !dbg !5079
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %20), metadata !5047, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5063
  store i8 119, ptr %10, align 1, !dbg !5080, !tbaa !952
  br label %43, !dbg !5081

21:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 1, metadata !5038, metadata !DIExpression()), !dbg !5061
  %22 = or i32 %8, 1088, !dbg !5082
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !5039, metadata !DIExpression()), !dbg !5061
  %23 = icmp slt i64 %7, 80, !dbg !5083
  br i1 %23, label %24, label %43, !dbg !5085

24:                                               ; preds = %21
  %25 = add nsw i64 %7, 1, !dbg !5086
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %25), metadata !5047, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5063
  store i8 97, ptr %10, align 1, !dbg !5087, !tbaa !952
  br label %43, !dbg !5088

26:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !5039, metadata !DIExpression()), !dbg !5061
  %27 = icmp slt i64 %7, 80, !dbg !5089
  br i1 %27, label %28, label %43, !dbg !5091

28:                                               ; preds = %26
  %29 = add nsw i64 %7, 1, !dbg !5092
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %29), metadata !5047, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5063
  store i8 98, ptr %10, align 1, !dbg !5093, !tbaa !952
  br label %43, !dbg !5094

30:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 2, metadata !5038, metadata !DIExpression()), !dbg !5061
  %31 = icmp slt i64 %7, 80, !dbg !5095
  br i1 %31, label %32, label %43, !dbg !5097

32:                                               ; preds = %30
  %33 = add nsw i64 %7, 1, !dbg !5098
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %33), metadata !5047, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5063
  store i8 43, ptr %10, align 1, !dbg !5099, !tbaa !952
  br label %43, !dbg !5100

34:                                               ; preds = %4
  %35 = or i32 %8, 128, !dbg !5101
  tail call void @llvm.dbg.value(metadata i32 %35, metadata !5039, metadata !DIExpression()), !dbg !5061
  tail call void @llvm.dbg.value(metadata i8 1, metadata !5040, metadata !DIExpression()), !dbg !5061
  br label %43, !dbg !5102

36:                                               ; preds = %4
  %37 = or i32 %8, 524288, !dbg !5103
  tail call void @llvm.dbg.value(metadata i32 %37, metadata !5039, metadata !DIExpression()), !dbg !5061
  tail call void @llvm.dbg.value(metadata i8 1, metadata !5040, metadata !DIExpression()), !dbg !5061
  br label %43, !dbg !5104

38:                                               ; preds = %4
  %39 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #45, !dbg !5105
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !5048, metadata !DIExpression()), !dbg !5106
  %40 = sub nsw i64 80, %7, !dbg !5107
  %41 = tail call i64 @llvm.umin.i64(i64 %39, i64 %40), !dbg !5109
  tail call void @llvm.dbg.value(metadata i64 %41, metadata !5048, metadata !DIExpression()), !dbg !5106
  call void @llvm.dbg.value(metadata ptr %10, metadata !5110, metadata !DIExpression()), !dbg !5115
  call void @llvm.dbg.value(metadata ptr %6, metadata !5113, metadata !DIExpression()), !dbg !5115
  call void @llvm.dbg.value(metadata i64 %41, metadata !5114, metadata !DIExpression()), !dbg !5115
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %10, ptr noundef nonnull align 1 %6, i64 noundef %41, i1 noundef false) #44, !dbg !5117
  %42 = getelementptr inbounds i8, ptr %10, i64 %41, !dbg !5118
  tail call void @llvm.dbg.value(metadata ptr %42, metadata !5047, metadata !DIExpression()), !dbg !5063
  br label %49, !dbg !5119

43:                                               ; preds = %30, %32, %26, %28, %21, %24, %16, %19, %12, %14, %36, %34
  %44 = phi i8 [ 1, %36 ], [ 1, %34 ], [ %5, %32 ], [ %5, %30 ], [ %5, %28 ], [ %5, %26 ], [ %5, %24 ], [ %5, %21 ], [ %5, %19 ], [ %5, %16 ], [ %5, %14 ], [ %5, %12 ], !dbg !5061
  %45 = phi i64 [ %7, %36 ], [ %7, %34 ], [ %33, %32 ], [ %7, %30 ], [ %29, %28 ], [ %7, %26 ], [ %25, %24 ], [ %7, %21 ], [ %20, %19 ], [ %7, %16 ], [ %15, %14 ], [ %7, %12 ]
  %46 = phi i32 [ %37, %36 ], [ %35, %34 ], [ %8, %32 ], [ %8, %30 ], [ %8, %28 ], [ %8, %26 ], [ %22, %24 ], [ %22, %21 ], [ %17, %19 ], [ %17, %16 ], [ %8, %14 ], [ %8, %12 ], !dbg !5061
  %47 = phi i32 [ %9, %36 ], [ %9, %34 ], [ 2, %32 ], [ 2, %30 ], [ %9, %28 ], [ %9, %26 ], [ 1, %24 ], [ 1, %21 ], [ 1, %19 ], [ 1, %16 ], [ 0, %14 ], [ 0, %12 ], !dbg !5061
  tail call void @llvm.dbg.value(metadata i32 %47, metadata !5038, metadata !DIExpression()), !dbg !5061
  tail call void @llvm.dbg.value(metadata i32 %46, metadata !5039, metadata !DIExpression()), !dbg !5061
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %45), metadata !5047, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5063
  tail call void @llvm.dbg.value(metadata i8 %44, metadata !5040, metadata !DIExpression()), !dbg !5061
  %48 = getelementptr inbounds i8, ptr %6, i64 1, !dbg !5120
  tail call void @llvm.dbg.value(metadata ptr %48, metadata !5045, metadata !DIExpression()), !dbg !5063
  br label %4, !dbg !5121, !llvm.loop !5122

49:                                               ; preds = %4, %38
  %50 = phi ptr [ %42, %38 ], [ %10, %4 ], !dbg !5063
  tail call void @llvm.dbg.value(metadata ptr %50, metadata !5047, metadata !DIExpression()), !dbg !5063
  store i8 0, ptr %50, align 1, !dbg !5124, !tbaa !952
  %51 = and i8 %5, 1, !dbg !5125
  %52 = icmp eq i8 %51, 0, !dbg !5125
  br i1 %52, label %64, label %53, !dbg !5126

53:                                               ; preds = %49
  %54 = or i32 %9, %8, !dbg !5127
  %55 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %0, i32 noundef %54, i32 noundef 438) #44, !dbg !5128
  tail call void @llvm.dbg.value(metadata i32 %55, metadata !5053, metadata !DIExpression()), !dbg !5129
  %56 = icmp slt i32 %55, 0, !dbg !5130
  br i1 %56, label %66, label %57, !dbg !5132

57:                                               ; preds = %53
  %58 = call noalias ptr @fdopen(i32 noundef %55, ptr noundef nonnull %3) #44, !dbg !5133
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !5056, metadata !DIExpression()), !dbg !5129
  %59 = icmp eq ptr %58, null, !dbg !5134
  br i1 %59, label %60, label %66, !dbg !5135

60:                                               ; preds = %57
  %61 = tail call ptr @__errno_location() #47, !dbg !5136
  %62 = load i32, ptr %61, align 4, !dbg !5136, !tbaa !943
  tail call void @llvm.dbg.value(metadata i32 %62, metadata !5057, metadata !DIExpression()), !dbg !5137
  %63 = tail call i32 @close(i32 noundef %55) #44, !dbg !5138
  store i32 %62, ptr %61, align 4, !dbg !5139, !tbaa !943
  br label %66, !dbg !5140

64:                                               ; preds = %49
  call void @llvm.dbg.value(metadata ptr %0, metadata !5141, metadata !DIExpression()), !dbg !5145
  call void @llvm.dbg.value(metadata ptr %1, metadata !5144, metadata !DIExpression()), !dbg !5145
  %65 = tail call noalias noundef ptr @fopen(ptr noundef nonnull %0, ptr noundef nonnull %1), !dbg !5147
  br label %66, !dbg !5148

66:                                               ; preds = %53, %60, %57, %64
  %67 = phi ptr [ %65, %64 ], [ null, %53 ], [ null, %60 ], [ %58, %57 ], !dbg !5061
  call void @llvm.lifetime.end.p0(i64 81, ptr nonnull %3) #44, !dbg !5149
  ret ptr %67, !dbg !5149
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #1

; Function Attrs: nofree
declare !dbg !5150 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #41

; Function Attrs: nofree nounwind
declare !dbg !5153 noalias noundef ptr @fdopen(i32 noundef, ptr nocapture noundef readonly) local_unnamed_addr #4

declare !dbg !5156 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !5157 noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #19 !dbg !5160 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5198, metadata !DIExpression()), !dbg !5203
  %2 = tail call i64 @__fpending(ptr noundef %0) #44, !dbg !5204
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5199, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5203
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5205, metadata !DIExpression()), !dbg !5208
  %3 = load i32, ptr %0, align 8, !dbg !5210, !tbaa !1308
  %4 = and i32 %3, 32, !dbg !5211
  %5 = icmp eq i32 %4, 0, !dbg !5211
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !5201, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5203
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #44, !dbg !5212
  %7 = icmp eq i32 %6, 0, !dbg !5213
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !5202, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5203
  br i1 %5, label %8, label %18, !dbg !5214

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !5216
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !5199, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5203
  %10 = select i1 %7, i1 true, i1 %9, !dbg !5217
  %11 = xor i1 %7, true, !dbg !5217
  %12 = sext i1 %11 to i32, !dbg !5217
  br i1 %10, label %21, label %13, !dbg !5217

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #47, !dbg !5218
  %15 = load i32, ptr %14, align 4, !dbg !5218, !tbaa !943
  %16 = icmp ne i32 %15, 9, !dbg !5219
  %17 = sext i1 %16 to i32, !dbg !5220
  br label %21, !dbg !5220

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !5221

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #47, !dbg !5223
  store i32 0, ptr %20, align 4, !dbg !5225, !tbaa !943
  br label %21, !dbg !5223

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !5203
  ret i32 %22, !dbg !5226
}

; Function Attrs: nounwind
declare !dbg !5227 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #19 !dbg !5230 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5235, metadata !DIExpression()), !dbg !5240
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5236, metadata !DIExpression()), !dbg !5240
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5237, metadata !DIExpression()), !dbg !5240
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !5238, metadata !DIExpression()), !dbg !5240
  %5 = icmp eq ptr %1, null, !dbg !5241
  %6 = select i1 %5, ptr null, ptr %0, !dbg !5243
  %7 = select i1 %5, ptr @.str.153, ptr %1, !dbg !5243
  %8 = select i1 %5, i64 1, i64 %2, !dbg !5243
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !5237, metadata !DIExpression()), !dbg !5240
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !5236, metadata !DIExpression()), !dbg !5240
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !5235, metadata !DIExpression()), !dbg !5240
  %9 = icmp eq ptr %3, null, !dbg !5244
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !5246
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !5238, metadata !DIExpression()), !dbg !5240
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #44, !dbg !5247
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !5239, metadata !DIExpression()), !dbg !5240
  %12 = icmp ult i64 %11, -3, !dbg !5248
  br i1 %12, label %13, label %17, !dbg !5250

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #45, !dbg !5251
  %15 = icmp eq i32 %14, 0, !dbg !5251
  br i1 %15, label %16, label %29, !dbg !5252

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !5253, metadata !DIExpression()), !dbg !5258
  call void @llvm.dbg.value(metadata ptr %10, metadata !5260, metadata !DIExpression()), !dbg !5265
  call void @llvm.dbg.value(metadata i32 0, metadata !5263, metadata !DIExpression()), !dbg !5265
  call void @llvm.dbg.value(metadata i64 8, metadata !5264, metadata !DIExpression()), !dbg !5265
  store i64 0, ptr %10, align 1, !dbg !5267
  br label %29, !dbg !5268

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !5269
  br i1 %18, label %19, label %20, !dbg !5271

19:                                               ; preds = %17
  tail call void @abort() #46, !dbg !5272
  unreachable, !dbg !5272

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !5273

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #44, !dbg !5275
  br i1 %23, label %29, label %24, !dbg !5276

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !5277
  br i1 %25, label %29, label %26, !dbg !5280

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !5281, !tbaa !952
  %28 = zext i8 %27 to i32, !dbg !5282
  store i32 %28, ptr %6, align 4, !dbg !5283, !tbaa !943
  br label %29, !dbg !5284

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !5240
  ret i64 %30, !dbg !5285
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !5286 i32 @mbsinit(ptr noundef) local_unnamed_addr #42

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #43 !dbg !5292 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5294, metadata !DIExpression()), !dbg !5298
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !5295, metadata !DIExpression()), !dbg !5298
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5296, metadata !DIExpression()), !dbg !5298
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !5299
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !5299
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !5297, metadata !DIExpression()), !dbg !5298
  br i1 %5, label %6, label %8, !dbg !5301

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #47, !dbg !5302
  store i32 12, ptr %7, align 4, !dbg !5304, !tbaa !943
  br label %12, !dbg !5305

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !5299
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !5297, metadata !DIExpression()), !dbg !5298
  call void @llvm.dbg.value(metadata ptr %0, metadata !5306, metadata !DIExpression()), !dbg !5310
  call void @llvm.dbg.value(metadata i64 %9, metadata !5309, metadata !DIExpression()), !dbg !5310
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !5312
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #51, !dbg !5313
  br label %12, !dbg !5314

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !5298
  ret ptr %13, !dbg !5315
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #19 !dbg !5316 {
  %2 = alloca [257 x i8], align 16, !DIAssignID !5325
  call void @llvm.dbg.assign(metadata i1 undef, metadata !5321, metadata !DIExpression(), metadata !5325, metadata ptr %2, metadata !DIExpression()), !dbg !5326
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5320, metadata !DIExpression()), !dbg !5326
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #44, !dbg !5327
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #44, !dbg !5328
  %4 = icmp eq i32 %3, 0, !dbg !5328
  br i1 %4, label %5, label %12, !dbg !5330

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !5331, metadata !DIExpression()), !dbg !5335
  call void @llvm.dbg.value(metadata !911, metadata !5334, metadata !DIExpression()), !dbg !5335
  %6 = load i16, ptr %2, align 16, !dbg !5338
  %7 = icmp eq i16 %6, 67, !dbg !5338
  br i1 %7, label %11, label %8, !dbg !5339

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !5331, metadata !DIExpression()), !dbg !5340
  call void @llvm.dbg.value(metadata ptr @.str.1.158, metadata !5334, metadata !DIExpression()), !dbg !5340
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.158, i64 6), !dbg !5342
  %10 = icmp eq i32 %9, 0, !dbg !5343
  br i1 %10, label %11, label %12, !dbg !5344

11:                                               ; preds = %8, %5
  br label %12, !dbg !5345

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !5326
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #44, !dbg !5346
  ret i1 %13, !dbg !5346
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #19 !dbg !5347 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5351, metadata !DIExpression()), !dbg !5354
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5352, metadata !DIExpression()), !dbg !5354
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5353, metadata !DIExpression()), !dbg !5354
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #44, !dbg !5355
  ret i32 %4, !dbg !5356
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #19 !dbg !5357 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5361, metadata !DIExpression()), !dbg !5362
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #44, !dbg !5363
  ret ptr %2, !dbg !5364
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #19 !dbg !5365 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5367, metadata !DIExpression()), !dbg !5369
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #44, !dbg !5370
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !5368, metadata !DIExpression()), !dbg !5369
  ret ptr %2, !dbg !5371
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #19 !dbg !5372 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5374, metadata !DIExpression()), !dbg !5381
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5375, metadata !DIExpression()), !dbg !5381
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5376, metadata !DIExpression()), !dbg !5381
  call void @llvm.dbg.value(metadata i32 %0, metadata !5367, metadata !DIExpression()), !dbg !5382
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #44, !dbg !5384
  call void @llvm.dbg.value(metadata ptr %4, metadata !5368, metadata !DIExpression()), !dbg !5382
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !5377, metadata !DIExpression()), !dbg !5381
  %5 = icmp eq ptr %4, null, !dbg !5385
  br i1 %5, label %6, label %9, !dbg !5386

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !5387
  br i1 %7, label %19, label %8, !dbg !5390

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !5391, !tbaa !952
  br label %19, !dbg !5392

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #45, !dbg !5393
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !5378, metadata !DIExpression()), !dbg !5394
  %11 = icmp ult i64 %10, %2, !dbg !5395
  br i1 %11, label %12, label %14, !dbg !5397

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !5398
  call void @llvm.dbg.value(metadata ptr %1, metadata !5400, metadata !DIExpression()), !dbg !5405
  call void @llvm.dbg.value(metadata ptr %4, metadata !5403, metadata !DIExpression()), !dbg !5405
  call void @llvm.dbg.value(metadata i64 %13, metadata !5404, metadata !DIExpression()), !dbg !5405
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #44, !dbg !5407
  br label %19, !dbg !5408

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !5409
  br i1 %15, label %19, label %16, !dbg !5412

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !5413
  call void @llvm.dbg.value(metadata ptr %1, metadata !5400, metadata !DIExpression()), !dbg !5415
  call void @llvm.dbg.value(metadata ptr %4, metadata !5403, metadata !DIExpression()), !dbg !5415
  call void @llvm.dbg.value(metadata i64 %17, metadata !5404, metadata !DIExpression()), !dbg !5415
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #44, !dbg !5417
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !5418
  store i8 0, ptr %18, align 1, !dbg !5419, !tbaa !952
  br label %19, !dbg !5420

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !5421
  ret i32 %20, !dbg !5422
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
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind willreturn }
attributes #25 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nofree nounwind willreturn memory(argmem: read) }
attributes #28 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #33 = { inlinehint nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { nounwind allocsize(0) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { nounwind allocsize(1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { nounwind allocsize(0,1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #40 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #41 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #42 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #43 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #44 = { nounwind }
attributes #45 = { nounwind willreturn memory(read) }
attributes #46 = { noreturn nounwind }
attributes #47 = { nounwind willreturn memory(none) }
attributes #48 = { noreturn }
attributes #49 = { nounwind allocsize(0) }
attributes #50 = { cold }
attributes #51 = { nounwind allocsize(1) }
attributes #52 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!74, !424, !428, !455, !470, !742, !774, !779, !781, !784, !786, !788, !521, !534, !582, !790, !734, !796, !829, !831, !840, !842, !758, !844, !846, !850, !852}
!llvm.ident = !{!854, !854, !854, !854, !854, !854, !854, !854, !854, !854, !854, !854, !854, !854, !854, !854, !854, !854, !854, !854, !854, !854, !854, !854, !854, !854, !854}
!llvm.module.flags = !{!855, !856, !857, !858, !859, !860, !861}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 100, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/basenc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "0c3d15bc5cd58555d8b873e09066a687")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
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
!74 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -D BASE_TYPE=32 -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/base32-basenc.o -MD -MP -MF src/.deps/base32-basenc.Tpo -c src/basenc.c -o src/.base32-basenc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !75, retainedTypes: !129, globals: !139, splitDebugInlining: false, nameTableKind: None)
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
!89 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -130)
!90 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -131)
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
!211 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !213, line: 49, size: 1728, elements: !214)
!213 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
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
!236 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
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
!412 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
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
!427 = distinct !DIGlobalVariable(name: "base32_to_int", scope: !428, file: !429, line: 206, type: !449, isLocal: false, isDefinition: true)
!428 = distinct !DICompileUnit(language: DW_LANG_C11, file: !429, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-base32.o -MD -MP -MF lib/.deps/libcoreutils_a-base32.Tpo -c lib/base32.c -o lib/.libcoreutils_a-base32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !430, globals: !431, splitDebugInlining: false, nameTableKind: None)
!429 = !DIFile(filename: "lib/base32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "95987f1bba4d0dce67e048a4dafbe22a")
!430 = !{!131, !130}
!431 = !{!432, !426}
!432 = !DIGlobalVariableExpression(var: !433, expr: !DIExpression())
!433 = distinct !DIGlobalVariable(name: "b32str", scope: !434, file: !429, line: 68, type: !448, isLocal: true, isDefinition: true)
!434 = distinct !DISubprogram(name: "base32_encode", scope: !429, file: !429, line: 65, type: !435, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !443)
!435 = !DISubroutineType(types: !436)
!436 = !{null, !437, !438, !442, !438}
!437 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !136)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !439, line: 130, baseType: !440)
!439 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !441, line: 18, baseType: !237)
!441 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!442 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !130)
!443 = !{!444, !445, !446, !447}
!444 = !DILocalVariable(name: "in", arg: 1, scope: !434, file: !429, line: 65, type: !437)
!445 = !DILocalVariable(name: "inlen", arg: 2, scope: !434, file: !429, line: 65, type: !438)
!446 = !DILocalVariable(name: "out", arg: 3, scope: !434, file: !429, line: 66, type: !442)
!447 = !DILocalVariable(name: "outlen", arg: 4, scope: !434, file: !429, line: 66, type: !438)
!448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 256, elements: !390)
!449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !450, size: 2048, elements: !451)
!450 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !240)
!451 = !{!452}
!452 = !DISubrange(count: 256)
!453 = !DIGlobalVariableExpression(var: !454, expr: !DIExpression())
!454 = distinct !DIGlobalVariable(name: "file_name", scope: !455, file: !456, line: 45, type: !136, isLocal: true, isDefinition: true)
!455 = distinct !DICompileUnit(language: DW_LANG_C11, file: !456, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-closeout.o -MD -MP -MF lib/.deps/libcoreutils_a-closeout.Tpo -c lib/closeout.c -o lib/.libcoreutils_a-closeout.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !457, splitDebugInlining: false, nameTableKind: None)
!456 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!457 = !{!458, !460, !462, !464, !453, !466}
!458 = !DIGlobalVariableExpression(var: !459, expr: !DIExpression())
!459 = distinct !DIGlobalVariable(scope: null, file: !456, line: 121, type: !19, isLocal: true, isDefinition: true)
!460 = !DIGlobalVariableExpression(var: !461, expr: !DIExpression())
!461 = distinct !DIGlobalVariable(scope: null, file: !456, line: 121, type: !367, isLocal: true, isDefinition: true)
!462 = !DIGlobalVariableExpression(var: !463, expr: !DIExpression())
!463 = distinct !DIGlobalVariable(scope: null, file: !456, line: 123, type: !19, isLocal: true, isDefinition: true)
!464 = !DIGlobalVariableExpression(var: !465, expr: !DIExpression())
!465 = distinct !DIGlobalVariable(scope: null, file: !456, line: 126, type: !169, isLocal: true, isDefinition: true)
!466 = !DIGlobalVariableExpression(var: !467, expr: !DIExpression())
!467 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !455, file: !456, line: 55, type: !196, isLocal: true, isDefinition: true)
!468 = !DIGlobalVariableExpression(var: !469, expr: !DIExpression())
!469 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !470, file: !471, line: 66, type: !516, isLocal: false, isDefinition: true)
!470 = distinct !DICompileUnit(language: DW_LANG_C11, file: !471, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !472, globals: !473, splitDebugInlining: false, nameTableKind: None)
!471 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!472 = !{!131, !138}
!473 = !{!474, !476, !495, !497, !499, !501, !468, !503, !505, !507, !509, !514}
!474 = !DIGlobalVariableExpression(var: !475, expr: !DIExpression())
!475 = distinct !DIGlobalVariable(scope: null, file: !471, line: 272, type: !69, isLocal: true, isDefinition: true)
!476 = !DIGlobalVariableExpression(var: !477, expr: !DIExpression())
!477 = distinct !DIGlobalVariable(name: "old_file_name", scope: !478, file: !471, line: 304, type: !136, isLocal: true, isDefinition: true)
!478 = distinct !DISubprogram(name: "verror_at_line", scope: !471, file: !471, line: 298, type: !479, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !488)
!479 = !DISubroutineType(types: !480)
!480 = !{null, !87, !87, !136, !78, !136, !481}
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !483)
!483 = !{!484, !485, !486, !487}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !482, file: !471, baseType: !78, size: 32)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !482, file: !471, baseType: !78, size: 32, offset: 32)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !482, file: !471, baseType: !131, size: 64, offset: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !482, file: !471, baseType: !131, size: 64, offset: 128)
!488 = !{!489, !490, !491, !492, !493, !494}
!489 = !DILocalVariable(name: "status", arg: 1, scope: !478, file: !471, line: 298, type: !87)
!490 = !DILocalVariable(name: "errnum", arg: 2, scope: !478, file: !471, line: 298, type: !87)
!491 = !DILocalVariable(name: "file_name", arg: 3, scope: !478, file: !471, line: 298, type: !136)
!492 = !DILocalVariable(name: "line_number", arg: 4, scope: !478, file: !471, line: 298, type: !78)
!493 = !DILocalVariable(name: "message", arg: 5, scope: !478, file: !471, line: 298, type: !136)
!494 = !DILocalVariable(name: "args", arg: 6, scope: !478, file: !471, line: 298, type: !481)
!495 = !DIGlobalVariableExpression(var: !496, expr: !DIExpression())
!496 = distinct !DIGlobalVariable(name: "old_line_number", scope: !478, file: !471, line: 305, type: !78, isLocal: true, isDefinition: true)
!497 = !DIGlobalVariableExpression(var: !498, expr: !DIExpression())
!498 = distinct !DIGlobalVariable(scope: null, file: !471, line: 338, type: !273, isLocal: true, isDefinition: true)
!499 = !DIGlobalVariableExpression(var: !500, expr: !DIExpression())
!500 = distinct !DIGlobalVariable(scope: null, file: !471, line: 346, type: !299, isLocal: true, isDefinition: true)
!501 = !DIGlobalVariableExpression(var: !502, expr: !DIExpression())
!502 = distinct !DIGlobalVariable(scope: null, file: !471, line: 346, type: !164, isLocal: true, isDefinition: true)
!503 = !DIGlobalVariableExpression(var: !504, expr: !DIExpression())
!504 = distinct !DIGlobalVariable(name: "error_message_count", scope: !470, file: !471, line: 69, type: !78, isLocal: false, isDefinition: true)
!505 = !DIGlobalVariableExpression(var: !506, expr: !DIExpression())
!506 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !470, file: !471, line: 295, type: !87, isLocal: false, isDefinition: true)
!507 = !DIGlobalVariableExpression(var: !508, expr: !DIExpression())
!508 = distinct !DIGlobalVariable(scope: null, file: !471, line: 208, type: !19, isLocal: true, isDefinition: true)
!509 = !DIGlobalVariableExpression(var: !510, expr: !DIExpression())
!510 = distinct !DIGlobalVariable(scope: null, file: !471, line: 208, type: !511, isLocal: true, isDefinition: true)
!511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !512)
!512 = !{!513}
!513 = !DISubrange(count: 21)
!514 = !DIGlobalVariableExpression(var: !515, expr: !DIExpression())
!515 = distinct !DIGlobalVariable(scope: null, file: !471, line: 214, type: !69, isLocal: true, isDefinition: true)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DISubroutineType(types: !518)
!518 = !{null}
!519 = !DIGlobalVariableExpression(var: !520, expr: !DIExpression())
!520 = distinct !DIGlobalVariable(name: "program_name", scope: !521, file: !522, line: 31, type: !136, isLocal: false, isDefinition: true)
!521 = distinct !DICompileUnit(language: DW_LANG_C11, file: !522, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !430, globals: !523, splitDebugInlining: false, nameTableKind: None)
!522 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!523 = !{!519, !524, !526}
!524 = !DIGlobalVariableExpression(var: !525, expr: !DIExpression())
!525 = distinct !DIGlobalVariable(scope: null, file: !522, line: 46, type: !299, isLocal: true, isDefinition: true)
!526 = !DIGlobalVariableExpression(var: !527, expr: !DIExpression())
!527 = distinct !DIGlobalVariable(scope: null, file: !522, line: 49, type: !273, isLocal: true, isDefinition: true)
!528 = !DIGlobalVariableExpression(var: !529, expr: !DIExpression())
!529 = distinct !DIGlobalVariable(name: "utf07FF", scope: !530, file: !531, line: 46, type: !558, isLocal: true, isDefinition: true)
!530 = distinct !DISubprogram(name: "proper_name_lite", scope: !531, file: !531, line: 38, type: !532, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !534, retainedNodes: !536)
!531 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!532 = !DISubroutineType(types: !533)
!533 = !{!136, !136, !136}
!534 = distinct !DICompileUnit(language: DW_LANG_C11, file: !531, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !535, splitDebugInlining: false, nameTableKind: None)
!535 = !{!528}
!536 = !{!537, !538, !539, !540, !545}
!537 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !530, file: !531, line: 38, type: !136)
!538 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !530, file: !531, line: 38, type: !136)
!539 = !DILocalVariable(name: "translation", scope: !530, file: !531, line: 40, type: !136)
!540 = !DILocalVariable(name: "w", scope: !530, file: !531, line: 47, type: !541)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !542, line: 37, baseType: !543)
!542 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !236, line: 57, baseType: !544)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !236, line: 42, baseType: !78)
!545 = !DILocalVariable(name: "mbs", scope: !530, file: !531, line: 48, type: !546)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !547, line: 6, baseType: !548)
!547 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !549, line: 21, baseType: !550)
!549 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !549, line: 13, size: 64, elements: !551)
!551 = !{!552, !553}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !550, file: !549, line: 15, baseType: !87, size: 32)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !550, file: !549, line: 20, baseType: !554, size: 32, offset: 32)
!554 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !550, file: !549, line: 16, size: 32, elements: !555)
!555 = !{!556, !557}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !554, file: !549, line: 18, baseType: !78, size: 32)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !554, file: !549, line: 19, baseType: !273, size: 32)
!558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 16, elements: !165)
!559 = !DIGlobalVariableExpression(var: !560, expr: !DIExpression())
!560 = distinct !DIGlobalVariable(scope: null, file: !561, line: 78, type: !299, isLocal: true, isDefinition: true)
!561 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!562 = !DIGlobalVariableExpression(var: !563, expr: !DIExpression())
!563 = distinct !DIGlobalVariable(scope: null, file: !561, line: 79, type: !278, isLocal: true, isDefinition: true)
!564 = !DIGlobalVariableExpression(var: !565, expr: !DIExpression())
!565 = distinct !DIGlobalVariable(scope: null, file: !561, line: 80, type: !394, isLocal: true, isDefinition: true)
!566 = !DIGlobalVariableExpression(var: !567, expr: !DIExpression())
!567 = distinct !DIGlobalVariable(scope: null, file: !561, line: 81, type: !394, isLocal: true, isDefinition: true)
!568 = !DIGlobalVariableExpression(var: !569, expr: !DIExpression())
!569 = distinct !DIGlobalVariable(scope: null, file: !561, line: 82, type: !258, isLocal: true, isDefinition: true)
!570 = !DIGlobalVariableExpression(var: !571, expr: !DIExpression())
!571 = distinct !DIGlobalVariable(scope: null, file: !561, line: 83, type: !164, isLocal: true, isDefinition: true)
!572 = !DIGlobalVariableExpression(var: !573, expr: !DIExpression())
!573 = distinct !DIGlobalVariable(scope: null, file: !561, line: 84, type: !299, isLocal: true, isDefinition: true)
!574 = !DIGlobalVariableExpression(var: !575, expr: !DIExpression())
!575 = distinct !DIGlobalVariable(scope: null, file: !561, line: 85, type: !19, isLocal: true, isDefinition: true)
!576 = !DIGlobalVariableExpression(var: !577, expr: !DIExpression())
!577 = distinct !DIGlobalVariable(scope: null, file: !561, line: 86, type: !19, isLocal: true, isDefinition: true)
!578 = !DIGlobalVariableExpression(var: !579, expr: !DIExpression())
!579 = distinct !DIGlobalVariable(scope: null, file: !561, line: 87, type: !299, isLocal: true, isDefinition: true)
!580 = !DIGlobalVariableExpression(var: !581, expr: !DIExpression())
!581 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !582, file: !561, line: 76, type: !654, isLocal: false, isDefinition: true)
!582 = distinct !DICompileUnit(language: DW_LANG_C11, file: !561, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !583, retainedTypes: !591, globals: !592, splitDebugInlining: false, nameTableKind: None)
!583 = !{!584, !586, !114}
!584 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !585, line: 42, baseType: !78, size: 32, elements: !93)
!585 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!586 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !585, line: 254, baseType: !78, size: 32, elements: !587)
!587 = !{!588, !589, !590}
!588 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!589 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!590 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!591 = !{!131, !87, !132, !133}
!592 = !{!559, !562, !564, !566, !568, !570, !572, !574, !576, !578, !580, !593, !597, !607, !609, !612, !614, !616, !618, !620, !643, !650, !652}
!593 = !DIGlobalVariableExpression(var: !594, expr: !DIExpression())
!594 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !582, file: !561, line: 92, type: !595, isLocal: false, isDefinition: true)
!595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !596, size: 320, elements: !60)
!596 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !584)
!597 = !DIGlobalVariableExpression(var: !598, expr: !DIExpression())
!598 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !582, file: !561, line: 1040, type: !599, isLocal: false, isDefinition: true)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !561, line: 56, size: 448, elements: !600)
!600 = !{!601, !602, !603, !605, !606}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !599, file: !561, line: 59, baseType: !584, size: 32)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !599, file: !561, line: 62, baseType: !87, size: 32, offset: 32)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !599, file: !561, line: 66, baseType: !604, size: 256, offset: 64)
!604 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 256, elements: !300)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !599, file: !561, line: 69, baseType: !136, size: 64, offset: 320)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !599, file: !561, line: 72, baseType: !136, size: 64, offset: 384)
!607 = !DIGlobalVariableExpression(var: !608, expr: !DIExpression())
!608 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !582, file: !561, line: 107, type: !599, isLocal: true, isDefinition: true)
!609 = !DIGlobalVariableExpression(var: !610, expr: !DIExpression())
!610 = distinct !DIGlobalVariable(name: "slot0", scope: !582, file: !561, line: 831, type: !611, isLocal: true, isDefinition: true)
!611 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !451)
!612 = !DIGlobalVariableExpression(var: !613, expr: !DIExpression())
!613 = distinct !DIGlobalVariable(scope: null, file: !561, line: 321, type: !164, isLocal: true, isDefinition: true)
!614 = !DIGlobalVariableExpression(var: !615, expr: !DIExpression())
!615 = distinct !DIGlobalVariable(scope: null, file: !561, line: 357, type: !164, isLocal: true, isDefinition: true)
!616 = !DIGlobalVariableExpression(var: !617, expr: !DIExpression())
!617 = distinct !DIGlobalVariable(scope: null, file: !561, line: 358, type: !164, isLocal: true, isDefinition: true)
!618 = !DIGlobalVariableExpression(var: !619, expr: !DIExpression())
!619 = distinct !DIGlobalVariable(scope: null, file: !561, line: 199, type: !19, isLocal: true, isDefinition: true)
!620 = !DIGlobalVariableExpression(var: !621, expr: !DIExpression())
!621 = distinct !DIGlobalVariable(name: "quote", scope: !622, file: !561, line: 228, type: !641, isLocal: true, isDefinition: true)
!622 = distinct !DISubprogram(name: "gettext_quote", scope: !561, file: !561, line: 197, type: !623, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !582, retainedNodes: !625)
!623 = !DISubroutineType(types: !624)
!624 = !{!136, !136, !584}
!625 = !{!626, !627, !628, !629, !630}
!626 = !DILocalVariable(name: "msgid", arg: 1, scope: !622, file: !561, line: 197, type: !136)
!627 = !DILocalVariable(name: "s", arg: 2, scope: !622, file: !561, line: 197, type: !584)
!628 = !DILocalVariable(name: "translation", scope: !622, file: !561, line: 199, type: !136)
!629 = !DILocalVariable(name: "w", scope: !622, file: !561, line: 229, type: !541)
!630 = !DILocalVariable(name: "mbs", scope: !622, file: !561, line: 230, type: !631)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !547, line: 6, baseType: !632)
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !549, line: 21, baseType: !633)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !549, line: 13, size: 64, elements: !634)
!634 = !{!635, !636}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !633, file: !549, line: 15, baseType: !87, size: 32)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !633, file: !549, line: 20, baseType: !637, size: 32, offset: 32)
!637 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !633, file: !549, line: 16, size: 32, elements: !638)
!638 = !{!639, !640}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !637, file: !549, line: 18, baseType: !78, size: 32)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !637, file: !549, line: 19, baseType: !273, size: 32)
!641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 64, elements: !642)
!642 = !{!166, !275}
!643 = !DIGlobalVariableExpression(var: !644, expr: !DIExpression())
!644 = distinct !DIGlobalVariable(name: "slotvec", scope: !582, file: !561, line: 834, type: !645, isLocal: true, isDefinition: true)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !561, line: 823, size: 128, elements: !647)
!647 = !{!648, !649}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !646, file: !561, line: 825, baseType: !133, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !646, file: !561, line: 826, baseType: !130, size: 64, offset: 64)
!650 = !DIGlobalVariableExpression(var: !651, expr: !DIExpression())
!651 = distinct !DIGlobalVariable(name: "nslots", scope: !582, file: !561, line: 832, type: !87, isLocal: true, isDefinition: true)
!652 = !DIGlobalVariableExpression(var: !653, expr: !DIExpression())
!653 = distinct !DIGlobalVariable(name: "slotvec0", scope: !582, file: !561, line: 833, type: !646, isLocal: true, isDefinition: true)
!654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !655, size: 704, elements: !383)
!655 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !136)
!656 = !DIGlobalVariableExpression(var: !657, expr: !DIExpression())
!657 = distinct !DIGlobalVariable(scope: null, file: !658, line: 67, type: !367, isLocal: true, isDefinition: true)
!658 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!659 = !DIGlobalVariableExpression(var: !660, expr: !DIExpression())
!660 = distinct !DIGlobalVariable(scope: null, file: !658, line: 69, type: !19, isLocal: true, isDefinition: true)
!661 = !DIGlobalVariableExpression(var: !662, expr: !DIExpression())
!662 = distinct !DIGlobalVariable(scope: null, file: !658, line: 83, type: !19, isLocal: true, isDefinition: true)
!663 = !DIGlobalVariableExpression(var: !664, expr: !DIExpression())
!664 = distinct !DIGlobalVariable(scope: null, file: !658, line: 83, type: !273, isLocal: true, isDefinition: true)
!665 = !DIGlobalVariableExpression(var: !666, expr: !DIExpression())
!666 = distinct !DIGlobalVariable(scope: null, file: !658, line: 85, type: !164, isLocal: true, isDefinition: true)
!667 = !DIGlobalVariableExpression(var: !668, expr: !DIExpression())
!668 = distinct !DIGlobalVariable(scope: null, file: !658, line: 88, type: !669, isLocal: true, isDefinition: true)
!669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !670)
!670 = !{!671}
!671 = !DISubrange(count: 171)
!672 = !DIGlobalVariableExpression(var: !673, expr: !DIExpression())
!673 = distinct !DIGlobalVariable(scope: null, file: !658, line: 88, type: !674, isLocal: true, isDefinition: true)
!674 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !675)
!675 = !{!676}
!676 = !DISubrange(count: 34)
!677 = !DIGlobalVariableExpression(var: !678, expr: !DIExpression())
!678 = distinct !DIGlobalVariable(scope: null, file: !658, line: 105, type: !154, isLocal: true, isDefinition: true)
!679 = !DIGlobalVariableExpression(var: !680, expr: !DIExpression())
!680 = distinct !DIGlobalVariable(scope: null, file: !658, line: 109, type: !406, isLocal: true, isDefinition: true)
!681 = !DIGlobalVariableExpression(var: !682, expr: !DIExpression())
!682 = distinct !DIGlobalVariable(scope: null, file: !658, line: 113, type: !683, isLocal: true, isDefinition: true)
!683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !684)
!684 = !{!685}
!685 = !DISubrange(count: 28)
!686 = !DIGlobalVariableExpression(var: !687, expr: !DIExpression())
!687 = distinct !DIGlobalVariable(scope: null, file: !658, line: 120, type: !389, isLocal: true, isDefinition: true)
!688 = !DIGlobalVariableExpression(var: !689, expr: !DIExpression())
!689 = distinct !DIGlobalVariable(scope: null, file: !658, line: 127, type: !690, isLocal: true, isDefinition: true)
!690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !691)
!691 = !{!692}
!692 = !DISubrange(count: 36)
!693 = !DIGlobalVariableExpression(var: !694, expr: !DIExpression())
!694 = distinct !DIGlobalVariable(scope: null, file: !658, line: 134, type: !318, isLocal: true, isDefinition: true)
!695 = !DIGlobalVariableExpression(var: !696, expr: !DIExpression())
!696 = distinct !DIGlobalVariable(scope: null, file: !658, line: 142, type: !697, isLocal: true, isDefinition: true)
!697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !698)
!698 = !{!699}
!699 = !DISubrange(count: 44)
!700 = !DIGlobalVariableExpression(var: !701, expr: !DIExpression())
!701 = distinct !DIGlobalVariable(scope: null, file: !658, line: 150, type: !702, isLocal: true, isDefinition: true)
!702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !703)
!703 = !{!704}
!704 = !DISubrange(count: 48)
!705 = !DIGlobalVariableExpression(var: !706, expr: !DIExpression())
!706 = distinct !DIGlobalVariable(scope: null, file: !658, line: 159, type: !707, isLocal: true, isDefinition: true)
!707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !708)
!708 = !{!709}
!709 = !DISubrange(count: 52)
!710 = !DIGlobalVariableExpression(var: !711, expr: !DIExpression())
!711 = distinct !DIGlobalVariable(scope: null, file: !658, line: 170, type: !712, isLocal: true, isDefinition: true)
!712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !713)
!713 = !{!714}
!714 = !DISubrange(count: 60)
!715 = !DIGlobalVariableExpression(var: !716, expr: !DIExpression())
!716 = distinct !DIGlobalVariable(scope: null, file: !658, line: 248, type: !258, isLocal: true, isDefinition: true)
!717 = !DIGlobalVariableExpression(var: !718, expr: !DIExpression())
!718 = distinct !DIGlobalVariable(scope: null, file: !658, line: 248, type: !343, isLocal: true, isDefinition: true)
!719 = !DIGlobalVariableExpression(var: !720, expr: !DIExpression())
!720 = distinct !DIGlobalVariable(scope: null, file: !658, line: 254, type: !258, isLocal: true, isDefinition: true)
!721 = !DIGlobalVariableExpression(var: !722, expr: !DIExpression())
!722 = distinct !DIGlobalVariable(scope: null, file: !658, line: 254, type: !149, isLocal: true, isDefinition: true)
!723 = !DIGlobalVariableExpression(var: !724, expr: !DIExpression())
!724 = distinct !DIGlobalVariable(scope: null, file: !658, line: 254, type: !318, isLocal: true, isDefinition: true)
!725 = !DIGlobalVariableExpression(var: !726, expr: !DIExpression())
!726 = distinct !DIGlobalVariable(scope: null, file: !658, line: 259, type: !3, isLocal: true, isDefinition: true)
!727 = !DIGlobalVariableExpression(var: !728, expr: !DIExpression())
!728 = distinct !DIGlobalVariable(scope: null, file: !658, line: 259, type: !729, isLocal: true, isDefinition: true)
!729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !730)
!730 = !{!731}
!731 = !DISubrange(count: 29)
!732 = !DIGlobalVariableExpression(var: !733, expr: !DIExpression())
!733 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !734, file: !735, line: 26, type: !737, isLocal: false, isDefinition: true)
!734 = distinct !DICompileUnit(language: DW_LANG_C11, file: !735, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !736, splitDebugInlining: false, nameTableKind: None)
!735 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!736 = !{!732}
!737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 376, elements: !738)
!738 = !{!739}
!739 = !DISubrange(count: 47)
!740 = !DIGlobalVariableExpression(var: !741, expr: !DIExpression())
!741 = distinct !DIGlobalVariable(name: "exit_failure", scope: !742, file: !743, line: 24, type: !745, isLocal: false, isDefinition: true)
!742 = distinct !DICompileUnit(language: DW_LANG_C11, file: !743, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !744, splitDebugInlining: false, nameTableKind: None)
!743 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!744 = !{!740}
!745 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !87)
!746 = !DIGlobalVariableExpression(var: !747, expr: !DIExpression())
!747 = distinct !DIGlobalVariable(scope: null, file: !748, line: 34, type: !169, isLocal: true, isDefinition: true)
!748 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!749 = !DIGlobalVariableExpression(var: !750, expr: !DIExpression())
!750 = distinct !DIGlobalVariable(scope: null, file: !748, line: 34, type: !19, isLocal: true, isDefinition: true)
!751 = !DIGlobalVariableExpression(var: !752, expr: !DIExpression())
!752 = distinct !DIGlobalVariable(scope: null, file: !748, line: 34, type: !159, isLocal: true, isDefinition: true)
!753 = !DIGlobalVariableExpression(var: !754, expr: !DIExpression())
!754 = distinct !DIGlobalVariable(scope: null, file: !755, line: 108, type: !54, isLocal: true, isDefinition: true)
!755 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!756 = !DIGlobalVariableExpression(var: !757, expr: !DIExpression())
!757 = distinct !DIGlobalVariable(name: "internal_state", scope: !758, file: !755, line: 97, type: !761, isLocal: true, isDefinition: true)
!758 = distinct !DICompileUnit(language: DW_LANG_C11, file: !755, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !759, globals: !760, splitDebugInlining: false, nameTableKind: None)
!759 = !{!131, !133, !138}
!760 = !{!753, !756}
!761 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !547, line: 6, baseType: !762)
!762 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !549, line: 21, baseType: !763)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !549, line: 13, size: 64, elements: !764)
!764 = !{!765, !766}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !763, file: !549, line: 15, baseType: !87, size: 32)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !763, file: !549, line: 20, baseType: !767, size: 32, offset: 32)
!767 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !763, file: !549, line: 16, size: 32, elements: !768)
!768 = !{!769, !770}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !767, file: !549, line: 18, baseType: !78, size: 32)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !767, file: !549, line: 19, baseType: !273, size: 32)
!771 = !DIGlobalVariableExpression(var: !772, expr: !DIExpression())
!772 = distinct !DIGlobalVariable(scope: null, file: !773, line: 35, type: !278, isLocal: true, isDefinition: true)
!773 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!774 = distinct !DICompileUnit(language: DW_LANG_C11, file: !775, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fadvise.o -MD -MP -MF lib/.deps/libcoreutils_a-fadvise.Tpo -c lib/fadvise.c -o lib/.libcoreutils_a-fadvise.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !776, splitDebugInlining: false, nameTableKind: None)
!775 = !DIFile(filename: "lib/fadvise.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4f050f925b6846c8ec117ac893b2a17f")
!776 = !{!777}
!777 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !778, line: 44, baseType: !78, size: 32, elements: !107)
!778 = !DIFile(filename: "lib/fadvise.h", directory: "/src", checksumkind: CSK_MD5, checksum: "8bbfadd819a4efc4455fc2741023266a")
!779 = distinct !DICompileUnit(language: DW_LANG_C11, file: !780, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!780 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!781 = distinct !DICompileUnit(language: DW_LANG_C11, file: !782, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !783, splitDebugInlining: false, nameTableKind: None)
!782 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!783 = !{!131}
!784 = distinct !DICompileUnit(language: DW_LANG_C11, file: !785, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fpurge.o -MD -MP -MF lib/.deps/libcoreutils_a-fpurge.Tpo -c lib/fpurge.c -o lib/.libcoreutils_a-fpurge.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!785 = !DIFile(filename: "lib/fpurge.c", directory: "/src", checksumkind: CSK_MD5, checksum: "33a2be68f69b8676b8fe51ee5bacb54f")
!786 = distinct !DICompileUnit(language: DW_LANG_C11, file: !787, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !783, splitDebugInlining: false, nameTableKind: None)
!787 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!788 = distinct !DICompileUnit(language: DW_LANG_C11, file: !789, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!789 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!790 = distinct !DICompileUnit(language: DW_LANG_C11, file: !658, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !791, retainedTypes: !783, globals: !795, splitDebugInlining: false, nameTableKind: None)
!791 = !{!792}
!792 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !658, line: 40, baseType: !78, size: 32, elements: !793)
!793 = !{!794}
!794 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!795 = !{!656, !659, !661, !663, !665, !667, !672, !677, !679, !681, !686, !688, !693, !695, !700, !705, !710, !715, !717, !719, !721, !723, !725, !727}
!796 = distinct !DICompileUnit(language: DW_LANG_C11, file: !797, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !798, retainedTypes: !828, splitDebugInlining: false, nameTableKind: None)
!797 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!798 = !{!799, !811}
!799 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !800, file: !797, line: 188, baseType: !78, size: 32, elements: !809)
!800 = distinct !DISubprogram(name: "x2nrealloc", scope: !797, file: !797, line: 176, type: !801, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !796, retainedNodes: !804)
!801 = !DISubroutineType(types: !802)
!802 = !{!131, !131, !803, !133}
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!804 = !{!805, !806, !807, !808}
!805 = !DILocalVariable(name: "p", arg: 1, scope: !800, file: !797, line: 176, type: !131)
!806 = !DILocalVariable(name: "pn", arg: 2, scope: !800, file: !797, line: 176, type: !803)
!807 = !DILocalVariable(name: "s", arg: 3, scope: !800, file: !797, line: 176, type: !133)
!808 = !DILocalVariable(name: "n", scope: !800, file: !797, line: 178, type: !133)
!809 = !{!810}
!810 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!811 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !812, file: !797, line: 228, baseType: !78, size: 32, elements: !809)
!812 = distinct !DISubprogram(name: "xpalloc", scope: !797, file: !797, line: 223, type: !813, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !796, retainedNodes: !818)
!813 = !DISubroutineType(types: !814)
!814 = !{!131, !131, !815, !816, !440, !816}
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !817, line: 130, baseType: !440)
!817 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!818 = !{!819, !820, !821, !822, !823, !824, !825, !826, !827}
!819 = !DILocalVariable(name: "pa", arg: 1, scope: !812, file: !797, line: 223, type: !131)
!820 = !DILocalVariable(name: "pn", arg: 2, scope: !812, file: !797, line: 223, type: !815)
!821 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !812, file: !797, line: 223, type: !816)
!822 = !DILocalVariable(name: "n_max", arg: 4, scope: !812, file: !797, line: 223, type: !440)
!823 = !DILocalVariable(name: "s", arg: 5, scope: !812, file: !797, line: 223, type: !816)
!824 = !DILocalVariable(name: "n0", scope: !812, file: !797, line: 230, type: !816)
!825 = !DILocalVariable(name: "n", scope: !812, file: !797, line: 237, type: !816)
!826 = !DILocalVariable(name: "nbytes", scope: !812, file: !797, line: 248, type: !816)
!827 = !DILocalVariable(name: "adjusted_nbytes", scope: !812, file: !797, line: 252, type: !816)
!828 = !{!130, !131}
!829 = distinct !DICompileUnit(language: DW_LANG_C11, file: !748, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !830, splitDebugInlining: false, nameTableKind: None)
!830 = !{!746, !749, !751}
!831 = distinct !DICompileUnit(language: DW_LANG_C11, file: !832, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xstrtoimax.o -MD -MP -MF lib/.deps/libcoreutils_a-xstrtoimax.Tpo -c lib/xstrtoimax.c -o lib/.libcoreutils_a-xstrtoimax.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !833, retainedTypes: !836, splitDebugInlining: false, nameTableKind: None)
!832 = !DIFile(filename: "lib/xstrtoimax.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d613cb456542443dde992ed5c05f2acb")
!833 = !{!834}
!834 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !835, line: 30, baseType: !78, size: 32, elements: !79)
!835 = !DIFile(filename: "lib/xstrtol.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c0c36b5479e234e245bae53a387a6d92")
!836 = !{!837}
!837 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !838, line: 101, baseType: !839)
!838 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!839 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !236, line: 72, baseType: !237)
!840 = distinct !DICompileUnit(language: DW_LANG_C11, file: !841, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fopen.o -MD -MP -MF lib/.deps/libcoreutils_a-fopen.Tpo -c lib/fopen.c -o lib/.libcoreutils_a-fopen.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !783, splitDebugInlining: false, nameTableKind: None)
!841 = !DIFile(filename: "lib/fopen.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e2a73b267ffe85e9e2028d0b4278a6b8")
!842 = distinct !DICompileUnit(language: DW_LANG_C11, file: !843, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!843 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!844 = distinct !DICompileUnit(language: DW_LANG_C11, file: !845, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !783, splitDebugInlining: false, nameTableKind: None)
!845 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!846 = distinct !DICompileUnit(language: DW_LANG_C11, file: !773, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !847, splitDebugInlining: false, nameTableKind: None)
!847 = !{!848, !771}
!848 = !DIGlobalVariableExpression(var: !849, expr: !DIExpression())
!849 = distinct !DIGlobalVariable(scope: null, file: !773, line: 35, type: !164, isLocal: true, isDefinition: true)
!850 = distinct !DICompileUnit(language: DW_LANG_C11, file: !851, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!851 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!852 = distinct !DICompileUnit(language: DW_LANG_C11, file: !853, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !783, splitDebugInlining: false, nameTableKind: None)
!853 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!854 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!855 = !{i32 7, !"Dwarf Version", i32 5}
!856 = !{i32 2, !"Debug Info Version", i32 3}
!857 = !{i32 1, !"wchar_size", i32 4}
!858 = !{i32 8, !"PIC Level", i32 2}
!859 = !{i32 7, !"PIE Level", i32 2}
!860 = !{i32 7, !"uwtable", i32 2}
!861 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!862 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 97, type: !863, scopeLine: 98, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !865)
!863 = !DISubroutineType(types: !864)
!864 = !{null, !87}
!865 = !{!866}
!866 = !DILocalVariable(name: "status", arg: 1, scope: !862, file: !2, line: 97, type: !87)
!867 = !DILocation(line: 0, scope: !862)
!868 = !DILocation(line: 99, column: 14, scope: !869)
!869 = distinct !DILexicalBlock(scope: !862, file: !2, line: 99, column: 7)
!870 = !DILocation(line: 99, column: 7, scope: !862)
!871 = !DILocation(line: 100, column: 5, scope: !872)
!872 = distinct !DILexicalBlock(scope: !869, file: !2, line: 100, column: 5)
!873 = !{!874, !874, i64 0}
!874 = !{!"any pointer", !875, i64 0}
!875 = !{!"omnipotent char", !876, i64 0}
!876 = !{!"Simple C/C++ TBAA"}
!877 = !DILocation(line: 103, column: 7, scope: !878)
!878 = distinct !DILexicalBlock(scope: !869, file: !2, line: 102, column: 5)
!879 = !DILocation(line: 112, column: 7, scope: !878)
!880 = !DILocation(line: 729, column: 3, scope: !881, inlinedAt: !882)
!881 = distinct !DISubprogram(name: "emit_stdin_note", scope: !86, file: !86, line: 727, type: !517, scopeLine: 728, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74)
!882 = distinct !DILocation(line: 117, column: 7, scope: !878)
!883 = !DILocation(line: 736, column: 3, scope: !884, inlinedAt: !885)
!884 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !86, file: !86, line: 734, type: !517, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74)
!885 = distinct !DILocation(line: 118, column: 7, scope: !878)
!886 = !DILocation(line: 153, column: 7, scope: !878)
!887 = !DILocation(line: 157, column: 7, scope: !878)
!888 = !DILocation(line: 161, column: 7, scope: !878)
!889 = !DILocation(line: 174, column: 7, scope: !878)
!890 = !DILocation(line: 175, column: 7, scope: !878)
!891 = !DILocation(line: 184, column: 7, scope: !878)
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
!910 = distinct !DILocation(line: 192, column: 7, scope: !878)
!911 = !{}
!912 = !DILocation(line: 857, column: 3, scope: !893, inlinedAt: !910)
!913 = !DILocation(line: 861, column: 29, scope: !893, inlinedAt: !910)
!914 = !DILocation(line: 862, column: 7, scope: !915, inlinedAt: !910)
!915 = distinct !DILexicalBlock(scope: !893, file: !86, line: 862, column: 7)
!916 = !DILocation(line: 862, column: 19, scope: !915, inlinedAt: !910)
!917 = !DILocation(line: 862, column: 22, scope: !915, inlinedAt: !910)
!918 = !DILocation(line: 862, column: 7, scope: !893, inlinedAt: !910)
!919 = !DILocation(line: 868, column: 7, scope: !920, inlinedAt: !910)
!920 = distinct !DILexicalBlock(scope: !915, file: !86, line: 863, column: 5)
!921 = !DILocation(line: 870, column: 5, scope: !920, inlinedAt: !910)
!922 = !DILocation(line: 875, column: 3, scope: !893, inlinedAt: !910)
!923 = !DILocation(line: 877, column: 3, scope: !893, inlinedAt: !910)
!924 = !DILocation(line: 195, column: 3, scope: !862)
!925 = !DISubprogram(name: "dcgettext", scope: !926, file: !926, line: 51, type: !927, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!926 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!927 = !DISubroutineType(types: !928)
!928 = !{!130, !136, !136, !87}
!929 = !DISubprogram(name: "__fprintf_chk", scope: !930, file: !930, line: 93, type: !931, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!930 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!931 = !DISubroutineType(types: !932)
!932 = !{!87, !933, !87, !437, null}
!933 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !209)
!934 = !DISubprogram(name: "__printf_chk", scope: !930, file: !930, line: 95, type: !935, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!935 = !DISubroutineType(types: !936)
!936 = !{!87, !87, !437, null}
!937 = !DISubprogram(name: "fputs_unlocked", scope: !938, file: !938, line: 691, type: !939, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!938 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!939 = !DISubroutineType(types: !940)
!940 = !{!87, !437, !933}
!941 = !DILocation(line: 0, scope: !186)
!942 = !DILocation(line: 581, column: 7, scope: !194)
!943 = !{!944, !944, i64 0}
!944 = !{!"int", !875, i64 0}
!945 = !DILocation(line: 581, column: 19, scope: !194)
!946 = !DILocation(line: 581, column: 7, scope: !186)
!947 = !DILocation(line: 585, column: 26, scope: !193)
!948 = !DILocation(line: 0, scope: !193)
!949 = !DILocation(line: 586, column: 23, scope: !193)
!950 = !DILocation(line: 586, column: 28, scope: !193)
!951 = !DILocation(line: 586, column: 32, scope: !193)
!952 = !{!875, !875, i64 0}
!953 = !DILocation(line: 586, column: 38, scope: !193)
!954 = !DILocalVariable(name: "__s1", arg: 1, scope: !955, file: !956, line: 1359, type: !136)
!955 = distinct !DISubprogram(name: "streq", scope: !956, file: !956, line: 1359, type: !957, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !959)
!956 = !DIFile(filename: "./lib/string.h", directory: "/src")
!957 = !DISubroutineType(types: !958)
!958 = !{!196, !136, !136}
!959 = !{!954, !960}
!960 = !DILocalVariable(name: "__s2", arg: 2, scope: !955, file: !956, line: 1359, type: !136)
!961 = !DILocation(line: 0, scope: !955, inlinedAt: !962)
!962 = distinct !DILocation(line: 586, column: 41, scope: !193)
!963 = !DILocation(line: 1361, column: 11, scope: !955, inlinedAt: !962)
!964 = !DILocation(line: 1361, column: 10, scope: !955, inlinedAt: !962)
!965 = !DILocation(line: 586, column: 19, scope: !193)
!966 = !DILocation(line: 587, column: 5, scope: !193)
!967 = !DILocation(line: 588, column: 7, scope: !968)
!968 = distinct !DILexicalBlock(scope: !186, file: !86, line: 588, column: 7)
!969 = !DILocation(line: 588, column: 7, scope: !186)
!970 = !DILocation(line: 590, column: 7, scope: !971)
!971 = distinct !DILexicalBlock(scope: !968, file: !86, line: 589, column: 5)
!972 = !DILocation(line: 591, column: 7, scope: !971)
!973 = !DILocation(line: 595, column: 37, scope: !186)
!974 = !DILocation(line: 595, column: 35, scope: !186)
!975 = !DILocation(line: 596, column: 29, scope: !186)
!976 = !DILocation(line: 597, column: 8, scope: !202)
!977 = !DILocation(line: 597, column: 7, scope: !186)
!978 = !DILocation(line: 604, column: 24, scope: !201)
!979 = !DILocation(line: 604, column: 12, scope: !202)
!980 = !DILocation(line: 0, scope: !200)
!981 = !DILocation(line: 610, column: 16, scope: !200)
!982 = !DILocation(line: 610, column: 7, scope: !200)
!983 = !DILocation(line: 611, column: 21, scope: !200)
!984 = !{!985, !985, i64 0}
!985 = !{!"short", !875, i64 0}
!986 = !DILocation(line: 611, column: 19, scope: !200)
!987 = !DILocation(line: 611, column: 16, scope: !200)
!988 = !DILocation(line: 610, column: 30, scope: !200)
!989 = distinct !{!989, !982, !983, !990}
!990 = !{!"llvm.loop.mustprogress"}
!991 = !DILocation(line: 612, column: 18, scope: !992)
!992 = distinct !DILexicalBlock(scope: !200, file: !86, line: 612, column: 11)
!993 = !DILocation(line: 612, column: 11, scope: !200)
!994 = !DILocation(line: 620, column: 23, scope: !186)
!995 = !DILocation(line: 625, column: 39, scope: !186)
!996 = !DILocation(line: 626, column: 3, scope: !186)
!997 = !DILocation(line: 626, column: 10, scope: !186)
!998 = !DILocation(line: 626, column: 21, scope: !186)
!999 = !DILocation(line: 628, column: 44, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !1001, file: !86, line: 628, column: 11)
!1001 = distinct !DILexicalBlock(scope: !186, file: !86, line: 627, column: 5)
!1002 = !DILocation(line: 628, column: 32, scope: !1000)
!1003 = !DILocation(line: 628, column: 49, scope: !1000)
!1004 = !DILocation(line: 628, column: 11, scope: !1001)
!1005 = !DILocation(line: 630, column: 11, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !1001, file: !86, line: 630, column: 11)
!1007 = !DILocation(line: 630, column: 11, scope: !1001)
!1008 = !DILocation(line: 632, column: 26, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !1010, file: !86, line: 632, column: 15)
!1010 = distinct !DILexicalBlock(scope: !1006, file: !86, line: 631, column: 9)
!1011 = !DILocation(line: 632, column: 34, scope: !1009)
!1012 = !DILocation(line: 632, column: 37, scope: !1009)
!1013 = !DILocation(line: 632, column: 15, scope: !1010)
!1014 = !DILocation(line: 636, column: 16, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1010, file: !86, line: 636, column: 15)
!1016 = !DILocation(line: 636, column: 29, scope: !1015)
!1017 = !DILocation(line: 640, column: 16, scope: !1001)
!1018 = distinct !{!1018, !996, !1019, !990}
!1019 = !DILocation(line: 641, column: 5, scope: !186)
!1020 = !DILocation(line: 644, column: 3, scope: !186)
!1021 = !DILocation(line: 0, scope: !955, inlinedAt: !1022)
!1022 = distinct !DILocation(line: 648, column: 31, scope: !186)
!1023 = !DILocation(line: 0, scope: !955, inlinedAt: !1024)
!1024 = distinct !DILocation(line: 649, column: 31, scope: !186)
!1025 = !DILocation(line: 0, scope: !955, inlinedAt: !1026)
!1026 = distinct !DILocation(line: 650, column: 31, scope: !186)
!1027 = !DILocation(line: 0, scope: !955, inlinedAt: !1028)
!1028 = distinct !DILocation(line: 651, column: 31, scope: !186)
!1029 = !DILocation(line: 0, scope: !955, inlinedAt: !1030)
!1030 = distinct !DILocation(line: 652, column: 31, scope: !186)
!1031 = !DILocation(line: 0, scope: !955, inlinedAt: !1032)
!1032 = distinct !DILocation(line: 653, column: 31, scope: !186)
!1033 = !DILocation(line: 0, scope: !955, inlinedAt: !1034)
!1034 = distinct !DILocation(line: 654, column: 31, scope: !186)
!1035 = !DILocation(line: 0, scope: !955, inlinedAt: !1036)
!1036 = distinct !DILocation(line: 655, column: 31, scope: !186)
!1037 = !DILocation(line: 0, scope: !955, inlinedAt: !1038)
!1038 = distinct !DILocation(line: 656, column: 31, scope: !186)
!1039 = !DILocation(line: 0, scope: !955, inlinedAt: !1040)
!1040 = distinct !DILocation(line: 657, column: 31, scope: !186)
!1041 = !DILocation(line: 663, column: 7, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !186, file: !86, line: 663, column: 7)
!1043 = !DILocation(line: 664, column: 7, scope: !1042)
!1044 = !DILocation(line: 664, column: 10, scope: !1042)
!1045 = !DILocation(line: 663, column: 7, scope: !186)
!1046 = !DILocation(line: 669, column: 7, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1042, file: !86, line: 665, column: 5)
!1048 = !DILocation(line: 671, column: 5, scope: !1047)
!1049 = !DILocation(line: 676, column: 7, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1042, file: !86, line: 673, column: 5)
!1051 = !DILocation(line: 679, column: 3, scope: !186)
!1052 = !DILocation(line: 683, column: 3, scope: !186)
!1053 = !DILocation(line: 686, column: 3, scope: !186)
!1054 = !DILocation(line: 688, column: 3, scope: !186)
!1055 = !DILocation(line: 691, column: 3, scope: !186)
!1056 = !DILocation(line: 695, column: 3, scope: !186)
!1057 = !DILocation(line: 696, column: 1, scope: !186)
!1058 = !DISubprogram(name: "setlocale", scope: !1059, file: !1059, line: 122, type: !1060, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1059 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1060 = !DISubroutineType(types: !1061)
!1061 = !{!130, !87, !136}
!1062 = !DISubprogram(name: "strncmp", scope: !1063, file: !1063, line: 159, type: !1064, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1063 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1064 = !DISubroutineType(types: !1065)
!1065 = !{!87, !136, !136, !133}
!1066 = !DISubprogram(name: "exit", scope: !1067, file: !1067, line: 624, type: !863, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1067 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1068 = !DISubprogram(name: "getenv", scope: !1067, file: !1067, line: 641, type: !1069, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{!130, !136}
!1071 = !DISubprogram(name: "strcmp", scope: !1063, file: !1063, line: 156, type: !1072, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!87, !136, !136}
!1074 = !DISubprogram(name: "strspn", scope: !1063, file: !1063, line: 297, type: !1075, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{!135, !136, !136}
!1077 = !DISubprogram(name: "strchr", scope: !1063, file: !1063, line: 246, type: !1078, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{!130, !136, !87}
!1080 = !DISubprogram(name: "__ctype_b_loc", scope: !115, file: !115, line: 79, type: !1081, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{!1083}
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !132)
!1086 = !DISubprogram(name: "strcspn", scope: !1063, file: !1063, line: 293, type: !1075, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1087 = !DISubprogram(name: "fwrite_unlocked", scope: !938, file: !938, line: 704, type: !1088, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{!133, !1090, !133, !133, !933}
!1090 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1091)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1093 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 1630, type: !1094, scopeLine: 1631, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1097)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{!87, !87, !1096}
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!1097 = !{!1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1109}
!1098 = !DILocalVariable(name: "argc", arg: 1, scope: !1093, file: !2, line: 1630, type: !87)
!1099 = !DILocalVariable(name: "argv", arg: 2, scope: !1093, file: !2, line: 1630, type: !1096)
!1100 = !DILocalVariable(name: "opt", scope: !1093, file: !2, line: 1632, type: !87)
!1101 = !DILocalVariable(name: "input_fh", scope: !1093, file: !2, line: 1633, type: !209)
!1102 = !DILocalVariable(name: "infile", scope: !1093, file: !2, line: 1634, type: !136)
!1103 = !DILocalVariable(name: "decode", scope: !1093, file: !2, line: 1637, type: !196)
!1104 = !DILocalVariable(name: "ignore_garbage", scope: !1093, file: !2, line: 1639, type: !196)
!1105 = !DILocalVariable(name: "wrap_column", scope: !1093, file: !2, line: 1641, type: !438)
!1106 = !DILocalVariable(name: "w", scope: !1107, file: !2, line: 1664, type: !837)
!1107 = distinct !DILexicalBlock(scope: !1108, file: !2, line: 1663, column: 9)
!1108 = distinct !DILexicalBlock(scope: !1093, file: !2, line: 1657, column: 7)
!1109 = !DILocalVariable(name: "s_err", scope: !1107, file: !2, line: 1665, type: !1110)
!1110 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !77, line: 43, baseType: !76)
!1111 = distinct !DIAssignID()
!1112 = !DILocation(line: 0, scope: !1107)
!1113 = !DILocation(line: 0, scope: !1093)
!1114 = !DILocation(line: 1648, column: 21, scope: !1093)
!1115 = !DILocation(line: 1648, column: 3, scope: !1093)
!1116 = !DILocation(line: 1649, column: 3, scope: !1093)
!1117 = !DILocation(line: 1650, column: 3, scope: !1093)
!1118 = !DILocation(line: 1651, column: 3, scope: !1093)
!1119 = !DILocation(line: 1653, column: 3, scope: !1093)
!1120 = !DILocation(line: 1655, column: 3, scope: !1093)
!1121 = !DILocation(line: 1641, column: 9, scope: !1093)
!1122 = !DILocation(line: 1655, column: 17, scope: !1093)
!1123 = distinct !{!1123, !1120, !1124, !990}
!1124 = !DILocation(line: 1698, column: 7, scope: !1093)
!1125 = !DILocation(line: 1664, column: 11, scope: !1107)
!1126 = !DILocation(line: 1665, column: 44, scope: !1107)
!1127 = !DILocation(line: 1665, column: 32, scope: !1107)
!1128 = !DILocation(line: 1666, column: 32, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1107, file: !2, line: 1666, column: 15)
!1130 = !DILocation(line: 1666, column: 40, scope: !1129)
!1131 = !DILocation(line: 1667, column: 13, scope: !1129)
!1132 = !DILocation(line: 1669, column: 31, scope: !1107)
!1133 = !DILocation(line: 1669, column: 51, scope: !1107)
!1134 = !DILocation(line: 1670, column: 9, scope: !1108)
!1135 = !DILocation(line: 1671, column: 9, scope: !1108)
!1136 = !DILocation(line: 1675, column: 9, scope: !1108)
!1137 = !DILocation(line: 1691, column: 7, scope: !1108)
!1138 = !DILocation(line: 1693, column: 7, scope: !1108)
!1139 = !DILocation(line: 1696, column: 9, scope: !1108)
!1140 = !DILocation(line: 1805, column: 14, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1093, file: !2, line: 1805, column: 7)
!1142 = !DILocation(line: 1805, column: 12, scope: !1141)
!1143 = !DILocation(line: 1805, column: 21, scope: !1141)
!1144 = !DILocation(line: 1805, column: 7, scope: !1093)
!1145 = !DILocation(line: 1807, column: 7, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1141, file: !2, line: 1806, column: 5)
!1147 = !DILocation(line: 1808, column: 7, scope: !1146)
!1148 = !DILocation(line: 1811, column: 14, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1093, file: !2, line: 1811, column: 7)
!1150 = !DILocation(line: 1811, column: 7, scope: !1093)
!1151 = !DILocation(line: 1812, column: 14, scope: !1149)
!1152 = !DILocation(line: 1812, column: 5, scope: !1149)
!1153 = !DILocation(line: 0, scope: !1149)
!1154 = !DILocation(line: 0, scope: !955, inlinedAt: !1155)
!1155 = distinct !DILocation(line: 1816, column: 7, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1093, file: !2, line: 1816, column: 7)
!1157 = !DILocation(line: 1361, column: 11, scope: !955, inlinedAt: !1155)
!1158 = !DILocation(line: 1361, column: 10, scope: !955, inlinedAt: !1155)
!1159 = !DILocation(line: 1816, column: 7, scope: !1093)
!1160 = !DILocation(line: 1819, column: 18, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1156, file: !2, line: 1817, column: 5)
!1162 = !DILocation(line: 1820, column: 5, scope: !1161)
!1163 = !DILocation(line: 1823, column: 18, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1156, file: !2, line: 1822, column: 5)
!1165 = !DILocation(line: 1824, column: 20, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1164, file: !2, line: 1824, column: 11)
!1167 = !DILocation(line: 1824, column: 11, scope: !1164)
!1168 = !DILocation(line: 1825, column: 9, scope: !1166)
!1169 = !DILocation(line: 0, scope: !1156)
!1170 = !DILocation(line: 1828, column: 3, scope: !1093)
!1171 = !DILocation(line: 0, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1093, file: !2, line: 1830, column: 7)
!1173 = !DILocation(line: 1830, column: 7, scope: !1093)
!1174 = !DILocation(line: 1831, column: 42, scope: !1172)
!1175 = !DILocation(line: 1831, column: 5, scope: !1172)
!1176 = !DILocation(line: 1833, column: 5, scope: !1172)
!1177 = !DISubprogram(name: "bindtextdomain", scope: !926, file: !926, line: 86, type: !1178, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1178 = !DISubroutineType(types: !1179)
!1179 = !{!130, !136, !136}
!1180 = !DISubprogram(name: "textdomain", scope: !926, file: !926, line: 82, type: !1069, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1181 = !DISubprogram(name: "atexit", scope: !1067, file: !1067, line: 602, type: !1182, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1182 = !DISubroutineType(types: !1183)
!1183 = !{!87, !516}
!1184 = !DISubprogram(name: "getopt_long", scope: !412, file: !412, line: 66, type: !1185, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{!87, !87, !1187, !136, !1189, !417}
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!1190 = !DISubprogram(name: "__errno_location", scope: !1191, file: !1191, line: 37, type: !1192, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1191 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1192 = !DISubroutineType(types: !1193)
!1193 = !{!417}
!1194 = distinct !DISubprogram(name: "do_decode", scope: !2, file: !2, line: 1562, type: !1195, scopeLine: 1563, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1197)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{null, !209, !136, !209, !196}
!1197 = !{!1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1211, !1213, !1215, !1219, !1221, !1224, !1225}
!1198 = !DILocalVariable(name: "in", arg: 1, scope: !1194, file: !2, line: 1562, type: !209)
!1199 = !DILocalVariable(name: "infile", arg: 2, scope: !1194, file: !2, line: 1562, type: !136)
!1200 = !DILocalVariable(name: "out", arg: 3, scope: !1194, file: !2, line: 1562, type: !209)
!1201 = !DILocalVariable(name: "ignore_garbage", arg: 4, scope: !1194, file: !2, line: 1562, type: !196)
!1202 = !DILocalVariable(name: "inbuf", scope: !1194, file: !2, line: 1564, type: !130)
!1203 = !DILocalVariable(name: "outbuf", scope: !1194, file: !2, line: 1564, type: !130)
!1204 = !DILocalVariable(name: "sum", scope: !1194, file: !2, line: 1565, type: !438)
!1205 = !DILocalVariable(name: "ctx", scope: !1194, file: !2, line: 1566, type: !1206)
!1206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "base32_decode_context", file: !1207, line: 47, size: 96, elements: !1208)
!1207 = !DIFile(filename: "./lib/base32.h", directory: "/src", checksumkind: CSK_MD5, checksum: "e713a01df52addfef9645906d93b4fcb")
!1208 = !{!1209, !1210}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !1206, file: !1207, line: 49, baseType: !87, size: 32)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1206, file: !1207, line: 50, baseType: !299, size: 64, offset: 32)
!1211 = !DILocalVariable(name: "ok", scope: !1212, file: !2, line: 1578, type: !196)
!1212 = distinct !DILexicalBlock(scope: !1194, file: !2, line: 1577, column: 5)
!1213 = !DILocalVariable(name: "n", scope: !1214, file: !2, line: 1583, type: !438)
!1214 = distinct !DILexicalBlock(scope: !1212, file: !2, line: 1582, column: 9)
!1215 = !DILocalVariable(name: "i", scope: !1216, file: !2, line: 1588, type: !438)
!1216 = distinct !DILexicalBlock(scope: !1217, file: !2, line: 1588, column: 15)
!1217 = distinct !DILexicalBlock(scope: !1218, file: !2, line: 1587, column: 13)
!1218 = distinct !DILexicalBlock(scope: !1214, file: !2, line: 1586, column: 15)
!1219 = !DILocalVariable(name: "n", scope: !1220, file: !2, line: 1607, type: !438)
!1220 = distinct !DILexicalBlock(scope: !1212, file: !2, line: 1606, column: 9)
!1221 = !DILocalVariable(name: "__ptr", scope: !1222, file: !2, line: 1613, type: !136)
!1222 = distinct !DILexicalBlock(scope: !1223, file: !2, line: 1613, column: 15)
!1223 = distinct !DILexicalBlock(scope: !1220, file: !2, line: 1613, column: 15)
!1224 = !DILocalVariable(name: "__stream", scope: !1222, file: !2, line: 1613, type: !209)
!1225 = !DILocalVariable(name: "__cnt", scope: !1222, file: !2, line: 1613, type: !133)
!1226 = distinct !DIAssignID()
!1227 = distinct !DIAssignID()
!1228 = distinct !DIAssignID()
!1229 = !DILocation(line: 0, scope: !1194)
!1230 = distinct !DIAssignID()
!1231 = !DILocation(line: 0, scope: !1220)
!1232 = !DILocation(line: 1566, column: 3, scope: !1194)
!1233 = !DILocation(line: 1568, column: 11, scope: !1194)
!1234 = !DILocation(line: 1569, column: 12, scope: !1194)
!1235 = !DILocalVariable(name: "ctx", arg: 1, scope: !1236, file: !1207, line: 74, type: !1239)
!1236 = distinct !DISubprogram(name: "base32_decode_ctx_init", scope: !1207, file: !1207, line: 74, type: !1237, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1240)
!1237 = !DISubroutineType(types: !1238)
!1238 = !{null, !1239}
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1240 = !{!1235}
!1241 = !DILocation(line: 0, scope: !1236, inlinedAt: !1242)
!1242 = distinct !DILocation(line: 1574, column: 3, scope: !1194)
!1243 = !DILocation(line: 76, column: 10, scope: !1236, inlinedAt: !1242)
!1244 = !{!1245, !944, i64 0}
!1245 = !{!"base32_decode_context", !944, i64 0, !875, i64 4}
!1246 = distinct !DIAssignID()
!1247 = !DILocation(line: 1576, column: 3, scope: !1194)
!1248 = !DILocation(line: 0, scope: !1212)
!1249 = !DILocation(line: 1583, column: 21, scope: !1214)
!1250 = !DILocation(line: 0, scope: !1214)
!1251 = !DILocation(line: 0, scope: !1216)
!1252 = !DILocation(line: 1586, column: 15, scope: !1214)
!1253 = !DILocation(line: 1590, column: 32, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1255, file: !2, line: 1590, column: 23)
!1255 = distinct !DILexicalBlock(scope: !1256, file: !2, line: 1589, column: 17)
!1256 = distinct !DILexicalBlock(scope: !1216, file: !2, line: 1588, column: 15)
!1257 = !DILocalVariable(name: "ch", arg: 1, scope: !1258, file: !1207, line: 56, type: !138)
!1258 = distinct !DISubprogram(name: "isubase32", scope: !1207, file: !1207, line: 56, type: !1259, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1261)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{!196, !138}
!1261 = !{!1257}
!1262 = !DILocation(line: 0, scope: !1258, inlinedAt: !1263)
!1263 = distinct !DILocation(line: 1590, column: 23, scope: !1254)
!1264 = !DILocation(line: 58, column: 10, scope: !1258, inlinedAt: !1263)
!1265 = !DILocation(line: 58, column: 44, scope: !1258, inlinedAt: !1263)
!1266 = !DILocation(line: 58, column: 41, scope: !1258, inlinedAt: !1263)
!1267 = !DILocalVariable(name: "len", arg: 1, scope: !1268, file: !2, line: 200, type: !87)
!1268 = distinct !DISubprogram(name: "base32_required_padding", scope: !2, file: !2, line: 200, type: !1269, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1271)
!1269 = !DISubroutineType(types: !1270)
!1270 = !{!87, !87}
!1271 = !{!1267, !1272}
!1272 = !DILocalVariable(name: "partial", scope: !1268, file: !2, line: 202, type: !87)
!1273 = !DILocation(line: 0, scope: !1268, inlinedAt: !1274)
!1274 = distinct !DILocation(line: 1591, column: 27, scope: !1254)
!1275 = !DILocation(line: 1591, column: 23, scope: !1254)
!1276 = !DILocation(line: 1592, column: 22, scope: !1254)
!1277 = !DILocation(line: 1592, column: 21, scope: !1254)
!1278 = !DILocation(line: 1594, column: 63, scope: !1254)
!1279 = !DILocation(line: 1594, column: 68, scope: !1254)
!1280 = !DILocation(line: 1594, column: 72, scope: !1254)
!1281 = !DILocalVariable(name: "__dest", arg: 1, scope: !1282, file: !1283, line: 34, type: !131)
!1282 = distinct !DISubprogram(name: "memmove", scope: !1283, file: !1283, line: 34, type: !1284, scopeLine: 35, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1286)
!1283 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1284 = !DISubroutineType(types: !1285)
!1285 = !{!131, !131, !1091, !133}
!1286 = !{!1281, !1287, !1288}
!1287 = !DILocalVariable(name: "__src", arg: 2, scope: !1282, file: !1283, line: 34, type: !1091)
!1288 = !DILocalVariable(name: "__len", arg: 3, scope: !1282, file: !1283, line: 34, type: !133)
!1289 = !DILocation(line: 0, scope: !1282, inlinedAt: !1290)
!1290 = distinct !DILocation(line: 1594, column: 21, scope: !1254)
!1291 = !DILocation(line: 36, column: 10, scope: !1282, inlinedAt: !1290)
!1292 = !DILocation(line: 1588, column: 35, scope: !1256)
!1293 = !DILocation(line: 1588, column: 39, scope: !1256)
!1294 = !DILocation(line: 1588, column: 15, scope: !1216)
!1295 = distinct !{!1295, !1294, !1296, !990}
!1296 = !DILocation(line: 1595, column: 17, scope: !1216)
!1297 = !DILocation(line: 1583, column: 17, scope: !1214)
!1298 = !DILocalVariable(name: "__stream", arg: 1, scope: !1299, file: !1300, line: 135, type: !209)
!1299 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1300, file: !1300, line: 135, type: !1301, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1303)
!1300 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1301 = !DISubroutineType(types: !1302)
!1302 = !{!87, !209}
!1303 = !{!1298}
!1304 = !DILocation(line: 0, scope: !1299, inlinedAt: !1305)
!1305 = distinct !DILocation(line: 1600, column: 15, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1214, file: !2, line: 1600, column: 15)
!1307 = !DILocation(line: 137, column: 10, scope: !1299, inlinedAt: !1305)
!1308 = !{!1309, !944, i64 0}
!1309 = !{!"_IO_FILE", !944, i64 0, !874, i64 8, !874, i64 16, !874, i64 24, !874, i64 32, !874, i64 40, !874, i64 48, !874, i64 56, !874, i64 64, !874, i64 72, !874, i64 80, !874, i64 88, !874, i64 96, !874, i64 104, !944, i64 112, !944, i64 116, !1310, i64 120, !985, i64 128, !875, i64 130, !875, i64 131, !874, i64 136, !1310, i64 144, !874, i64 152, !874, i64 160, !874, i64 168, !874, i64 176, !1310, i64 184, !944, i64 192, !875, i64 196}
!1310 = !{!"long", !875, i64 0}
!1311 = !DILocation(line: 1600, column: 15, scope: !1306)
!1312 = !DILocation(line: 1600, column: 15, scope: !1214)
!1313 = !DILocation(line: 1601, column: 13, scope: !1306)
!1314 = !DILocation(line: 1598, column: 15, scope: !1214)
!1315 = !DILocation(line: 1603, column: 18, scope: !1212)
!1316 = !DILocalVariable(name: "__stream", arg: 1, scope: !1317, file: !1300, line: 128, type: !209)
!1317 = distinct !DISubprogram(name: "feof_unlocked", scope: !1300, file: !1300, line: 128, type: !1301, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1318)
!1318 = !{!1316}
!1319 = !DILocation(line: 0, scope: !1317, inlinedAt: !1320)
!1320 = distinct !DILocation(line: 1603, column: 52, scope: !1212)
!1321 = !DILocation(line: 1603, column: 48, scope: !1212)
!1322 = distinct !{!1322, !1247, !1323, !990}
!1323 = !DILocation(line: 1624, column: 20, scope: !1194)
!1324 = !DILocation(line: 1605, column: 14, scope: !1212)
!1325 = !DILocation(line: 1605, column: 18, scope: !1212)
!1326 = !DILocation(line: 1607, column: 11, scope: !1220)
!1327 = !DILocation(line: 1607, column: 17, scope: !1220)
!1328 = !{!1310, !1310, i64 0}
!1329 = distinct !DIAssignID()
!1330 = !DILocation(line: 1609, column: 18, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1220, file: !2, line: 1608, column: 15)
!1332 = !DILocation(line: 1613, column: 15, scope: !1223)
!1333 = !DILocation(line: 1609, column: 13, scope: !1331)
!1334 = !DILocation(line: 0, scope: !1317, inlinedAt: !1335)
!1335 = distinct !DILocation(line: 1605, column: 21, scope: !1212)
!1336 = !DILocation(line: 130, column: 10, scope: !1317, inlinedAt: !1335)
!1337 = !DILocation(line: 1605, column: 7, scope: !1212)
!1338 = !DILocalVariable(name: "padbuf", scope: !1339, file: !2, line: 424, type: !299)
!1339 = distinct !DISubprogram(name: "decode_ctx_finalize", scope: !2, file: !2, line: 414, type: !1340, scopeLine: 416, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1344)
!1340 = !DISubroutineType(types: !1341)
!1341 = !{!196, !1239, !1342, !1343}
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!1344 = !{!1345, !1346, !1347, !1338, !1348, !1349, !1350, !1351}
!1345 = !DILocalVariable(name: "ctx", arg: 1, scope: !1339, file: !2, line: 414, type: !1239)
!1346 = !DILocalVariable(name: "out", arg: 2, scope: !1339, file: !2, line: 415, type: !1342)
!1347 = !DILocalVariable(name: "outlen", arg: 3, scope: !1339, file: !2, line: 415, type: !1343)
!1348 = !DILocalVariable(name: "pending_len", scope: !1339, file: !2, line: 425, type: !438)
!1349 = !DILocalVariable(name: "auto_padding", scope: !1339, file: !2, line: 426, type: !438)
!1350 = !DILocalVariable(name: "n", scope: !1339, file: !2, line: 427, type: !438)
!1351 = !DILocalVariable(name: "result", scope: !1339, file: !2, line: 428, type: !196)
!1352 = !DILocation(line: 0, scope: !1339, inlinedAt: !1353)
!1353 = distinct !DILocation(line: 1611, column: 18, scope: !1331)
!1354 = !DILocalVariable(name: "ctx", arg: 1, scope: !1355, file: !2, line: 403, type: !1239)
!1355 = distinct !DISubprogram(name: "get_pending_length", scope: !2, file: !2, line: 403, type: !1356, scopeLine: 404, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1358)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{!87, !1239}
!1358 = !{!1354}
!1359 = !DILocation(line: 0, scope: !1355, inlinedAt: !1360)
!1360 = distinct !DILocation(line: 417, column: 7, scope: !1361, inlinedAt: !1353)
!1361 = distinct !DILexicalBlock(scope: !1339, file: !2, line: 417, column: 7)
!1362 = !DILocation(line: 405, column: 15, scope: !1355, inlinedAt: !1360)
!1363 = !DILocation(line: 417, column: 32, scope: !1361, inlinedAt: !1353)
!1364 = !DILocation(line: 417, column: 7, scope: !1339, inlinedAt: !1353)
!1365 = !DILocation(line: 424, column: 3, scope: !1339, inlinedAt: !1353)
!1366 = !DILocation(line: 424, column: 8, scope: !1339, inlinedAt: !1353)
!1367 = distinct !DIAssignID()
!1368 = !DILocation(line: 0, scope: !1355, inlinedAt: !1369)
!1369 = distinct !DILocation(line: 425, column: 23, scope: !1339, inlinedAt: !1353)
!1370 = !DILocation(line: 0, scope: !1268, inlinedAt: !1371)
!1371 = distinct !DILocation(line: 426, column: 24, scope: !1339, inlinedAt: !1353)
!1372 = !DILocation(line: 202, column: 21, scope: !1268, inlinedAt: !1371)
!1373 = !DILocation(line: 203, column: 10, scope: !1268, inlinedAt: !1371)
!1374 = !DILocation(line: 427, column: 3, scope: !1339, inlinedAt: !1353)
!1375 = !DILocation(line: 427, column: 9, scope: !1339, inlinedAt: !1353)
!1376 = distinct !DIAssignID()
!1377 = !DILocation(line: 430, column: 7, scope: !1378, inlinedAt: !1353)
!1378 = distinct !DILexicalBlock(scope: !1339, file: !2, line: 430, column: 7)
!1379 = !DILocation(line: 430, column: 20, scope: !1378, inlinedAt: !1353)
!1380 = !DILocalVariable(name: "ctx", arg: 1, scope: !1381, file: !2, line: 397, type: !1239)
!1381 = distinct !DISubprogram(name: "has_padding", scope: !2, file: !2, line: 397, type: !1382, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1384)
!1382 = !DISubroutineType(types: !1383)
!1383 = !{!196, !1239}
!1384 = !{!1380}
!1385 = !DILocation(line: 0, scope: !1381, inlinedAt: !1386)
!1386 = distinct !DILocation(line: 430, column: 25, scope: !1378, inlinedAt: !1353)
!1387 = !DILocation(line: 399, column: 36, scope: !1381, inlinedAt: !1386)
!1388 = !DILocation(line: 399, column: 20, scope: !1381, inlinedAt: !1386)
!1389 = !DILocation(line: 399, column: 41, scope: !1381, inlinedAt: !1386)
!1390 = !DILocation(line: 430, column: 7, scope: !1339, inlinedAt: !1353)
!1391 = !DILocation(line: 432, column: 7, scope: !1392, inlinedAt: !1353)
!1392 = distinct !DILexicalBlock(scope: !1393, file: !2, line: 432, column: 7)
!1393 = distinct !DILexicalBlock(scope: !1394, file: !2, line: 432, column: 7)
!1394 = distinct !DILexicalBlock(scope: !1378, file: !2, line: 431, column: 5)
!1395 = !DILocation(line: 432, column: 7, scope: !1393, inlinedAt: !1353)
!1396 = !DILocation(line: 433, column: 16, scope: !1394, inlinedAt: !1353)
!1397 = !DILocation(line: 434, column: 5, scope: !1394, inlinedAt: !1353)
!1398 = !DILocation(line: 437, column: 16, scope: !1399, inlinedAt: !1353)
!1399 = distinct !DILexicalBlock(scope: !1378, file: !2, line: 436, column: 5)
!1400 = !DILocation(line: 440, column: 13, scope: !1339, inlinedAt: !1353)
!1401 = !DILocation(line: 440, column: 11, scope: !1339, inlinedAt: !1353)
!1402 = distinct !DIAssignID()
!1403 = !DILocation(line: 442, column: 1, scope: !1339, inlinedAt: !1353)
!1404 = !DILocation(line: 419, column: 15, scope: !1405, inlinedAt: !1353)
!1405 = distinct !DILexicalBlock(scope: !1361, file: !2, line: 418, column: 5)
!1406 = distinct !DIAssignID()
!1407 = !DILocation(line: 420, column: 7, scope: !1405, inlinedAt: !1353)
!1408 = !DILocation(line: 1613, column: 44, scope: !1223)
!1409 = !DILocation(line: 1613, column: 42, scope: !1223)
!1410 = !DILocation(line: 1613, column: 15, scope: !1220)
!1411 = !DILocation(line: 1616, column: 15, scope: !1220)
!1412 = !DILocation(line: 1622, column: 9, scope: !1212)
!1413 = !DILocation(line: 948, column: 21, scope: !1414, inlinedAt: !1417)
!1414 = distinct !DISubprogram(name: "write_error", scope: !86, file: !86, line: 946, type: !517, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1415)
!1415 = !{!1416}
!1416 = !DILocalVariable(name: "saved_errno", scope: !1414, file: !86, line: 948, type: !87)
!1417 = distinct !DILocation(line: 1614, column: 13, scope: !1223)
!1418 = !DILocation(line: 0, scope: !1414, inlinedAt: !1417)
!1419 = !DILocation(line: 949, column: 3, scope: !1414, inlinedAt: !1417)
!1420 = !DILocation(line: 950, column: 11, scope: !1414, inlinedAt: !1417)
!1421 = !DILocation(line: 950, column: 3, scope: !1414, inlinedAt: !1417)
!1422 = !DILocation(line: 951, column: 3, scope: !1414, inlinedAt: !1417)
!1423 = !DILocation(line: 952, column: 3, scope: !1414, inlinedAt: !1417)
!1424 = !DILocation(line: 1617, column: 13, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1220, file: !2, line: 1616, column: 15)
!1426 = !DILocation(line: 130, column: 10, scope: !1317, inlinedAt: !1427)
!1427 = distinct !DILocation(line: 1624, column: 11, scope: !1194)
!1428 = !DILocation(line: 1624, column: 10, scope: !1194)
!1429 = !DILocation(line: 0, scope: !1317, inlinedAt: !1427)
!1430 = !DILocation(line: 1623, column: 5, scope: !1212)
!1431 = !DILocation(line: 1626, column: 3, scope: !1194)
!1432 = distinct !DISubprogram(name: "do_encode", scope: !2, file: !2, line: 1488, type: !1433, scopeLine: 1489, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1435)
!1433 = !DISubroutineType(types: !1434)
!1434 = !{null, !209, !136, !209, !438}
!1435 = !{!1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444}
!1436 = !DILocalVariable(name: "in", arg: 1, scope: !1432, file: !2, line: 1488, type: !209)
!1437 = !DILocalVariable(name: "infile", arg: 2, scope: !1432, file: !2, line: 1488, type: !136)
!1438 = !DILocalVariable(name: "out", arg: 3, scope: !1432, file: !2, line: 1488, type: !209)
!1439 = !DILocalVariable(name: "wrap_column", arg: 4, scope: !1432, file: !2, line: 1488, type: !438)
!1440 = !DILocalVariable(name: "current_column", scope: !1432, file: !2, line: 1490, type: !438)
!1441 = !DILocalVariable(name: "inbuf", scope: !1432, file: !2, line: 1491, type: !130)
!1442 = !DILocalVariable(name: "outbuf", scope: !1432, file: !2, line: 1491, type: !130)
!1443 = !DILocalVariable(name: "sum", scope: !1432, file: !2, line: 1492, type: !438)
!1444 = !DILocalVariable(name: "n", scope: !1445, file: !2, line: 1507, type: !438)
!1445 = distinct !DILexicalBlock(scope: !1432, file: !2, line: 1506, column: 5)
!1446 = !DILocation(line: 0, scope: !1432)
!1447 = !DILocation(line: 1494, column: 11, scope: !1432)
!1448 = !DILocation(line: 1495, column: 12, scope: !1432)
!1449 = !DILocation(line: 1505, column: 3, scope: !1432)
!1450 = !DILocation(line: 1490, column: 9, scope: !1432)
!1451 = !DILocation(line: 1510, column: 7, scope: !1445)
!1452 = !DILocation(line: 0, scope: !1445)
!1453 = !DILocation(line: 1512, column: 15, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1445, file: !2, line: 1511, column: 9)
!1455 = !DILocation(line: 1513, column: 15, scope: !1454)
!1456 = !DILocation(line: 0, scope: !1317, inlinedAt: !1457)
!1457 = distinct !DILocation(line: 1515, column: 15, scope: !1445)
!1458 = !DILocation(line: 130, column: 10, scope: !1317, inlinedAt: !1457)
!1459 = !DILocation(line: 1515, column: 15, scope: !1445)
!1460 = !DILocation(line: 1515, column: 25, scope: !1445)
!1461 = !DILocation(line: 0, scope: !1299, inlinedAt: !1462)
!1462 = distinct !DILocation(line: 1515, column: 29, scope: !1445)
!1463 = !DILocation(line: 1515, column: 29, scope: !1445)
!1464 = !DILocation(line: 1515, column: 41, scope: !1445)
!1465 = distinct !{!1465, !1451, !1466, !990}
!1466 = !DILocation(line: 1515, column: 63, scope: !1445)
!1467 = !DILocation(line: 1517, column: 15, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1445, file: !2, line: 1517, column: 11)
!1469 = !DILocation(line: 1517, column: 11, scope: !1445)
!1470 = !DILocation(line: 1532, column: 48, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1472, file: !2, line: 1529, column: 13)
!1472 = distinct !DILexicalBlock(scope: !1468, file: !2, line: 1518, column: 9)
!1473 = !DILocation(line: 1532, column: 15, scope: !1471)
!1474 = !DILocalVariable(name: "buffer", arg: 1, scope: !1475, file: !2, line: 1443, type: !136)
!1475 = distinct !DISubprogram(name: "wrap_write", scope: !2, file: !2, line: 1443, type: !1476, scopeLine: 1445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1478)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{null, !136, !438, !438, !1343, !209}
!1478 = !{!1474, !1479, !1480, !1481, !1482, !1483, !1488, !1489, !1490, !1492, !1495, !1500, !1501}
!1479 = !DILocalVariable(name: "len", arg: 2, scope: !1475, file: !2, line: 1443, type: !438)
!1480 = !DILocalVariable(name: "wrap_column", arg: 3, scope: !1475, file: !2, line: 1444, type: !438)
!1481 = !DILocalVariable(name: "current_column", arg: 4, scope: !1475, file: !2, line: 1444, type: !1343)
!1482 = !DILocalVariable(name: "out", arg: 5, scope: !1475, file: !2, line: 1444, type: !209)
!1483 = !DILocalVariable(name: "__ptr", scope: !1484, file: !2, line: 1449, type: !136)
!1484 = distinct !DILexicalBlock(scope: !1485, file: !2, line: 1449, column: 11)
!1485 = distinct !DILexicalBlock(scope: !1486, file: !2, line: 1449, column: 11)
!1486 = distinct !DILexicalBlock(scope: !1487, file: !2, line: 1447, column: 5)
!1487 = distinct !DILexicalBlock(scope: !1475, file: !2, line: 1446, column: 7)
!1488 = !DILocalVariable(name: "__stream", scope: !1484, file: !2, line: 1449, type: !209)
!1489 = !DILocalVariable(name: "__cnt", scope: !1484, file: !2, line: 1449, type: !133)
!1490 = !DILocalVariable(name: "written", scope: !1491, file: !2, line: 1453, type: !438)
!1491 = distinct !DILexicalBlock(scope: !1487, file: !2, line: 1453, column: 5)
!1492 = !DILocalVariable(name: "to_write", scope: !1493, file: !2, line: 1455, type: !438)
!1493 = distinct !DILexicalBlock(scope: !1494, file: !2, line: 1454, column: 7)
!1494 = distinct !DILexicalBlock(scope: !1491, file: !2, line: 1453, column: 5)
!1495 = !DILocalVariable(name: "__ptr", scope: !1496, file: !2, line: 1465, type: !136)
!1496 = distinct !DILexicalBlock(scope: !1497, file: !2, line: 1465, column: 17)
!1497 = distinct !DILexicalBlock(scope: !1498, file: !2, line: 1465, column: 17)
!1498 = distinct !DILexicalBlock(scope: !1499, file: !2, line: 1464, column: 11)
!1499 = distinct !DILexicalBlock(scope: !1493, file: !2, line: 1457, column: 13)
!1500 = !DILocalVariable(name: "__stream", scope: !1496, file: !2, line: 1465, type: !209)
!1501 = !DILocalVariable(name: "__cnt", scope: !1496, file: !2, line: 1465, type: !133)
!1502 = !DILocation(line: 0, scope: !1475, inlinedAt: !1503)
!1503 = distinct !DILocation(line: 1534, column: 15, scope: !1471)
!1504 = !DILocation(line: 1446, column: 7, scope: !1475, inlinedAt: !1503)
!1505 = !DILocation(line: 1449, column: 11, scope: !1485, inlinedAt: !1503)
!1506 = !DILocation(line: 1449, column: 43, scope: !1485, inlinedAt: !1503)
!1507 = !DILocation(line: 1449, column: 11, scope: !1486, inlinedAt: !1503)
!1508 = !DILocation(line: 948, column: 21, scope: !1414, inlinedAt: !1509)
!1509 = distinct !DILocation(line: 1450, column: 9, scope: !1485, inlinedAt: !1503)
!1510 = !DILocation(line: 0, scope: !1414, inlinedAt: !1509)
!1511 = !DILocation(line: 949, column: 3, scope: !1414, inlinedAt: !1509)
!1512 = !DILocation(line: 950, column: 11, scope: !1414, inlinedAt: !1509)
!1513 = !DILocation(line: 950, column: 3, scope: !1414, inlinedAt: !1509)
!1514 = !DILocation(line: 951, column: 3, scope: !1414, inlinedAt: !1509)
!1515 = !DILocation(line: 952, column: 3, scope: !1414, inlinedAt: !1509)
!1516 = !DILocation(line: 0, scope: !1491, inlinedAt: !1503)
!1517 = !DILocation(line: 1455, column: 26, scope: !1493, inlinedAt: !1503)
!1518 = !DILocation(line: 0, scope: !1493, inlinedAt: !1503)
!1519 = !DILocation(line: 1457, column: 22, scope: !1499, inlinedAt: !1503)
!1520 = !DILocation(line: 1457, column: 13, scope: !1493, inlinedAt: !1503)
!1521 = !DILocalVariable(name: "__c", arg: 1, scope: !1522, file: !1300, line: 91, type: !87)
!1522 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1300, file: !1300, line: 91, type: !1523, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1525)
!1523 = !DISubroutineType(types: !1524)
!1524 = !{!87, !87, !209}
!1525 = !{!1521, !1526}
!1526 = !DILocalVariable(name: "__stream", arg: 2, scope: !1522, file: !1300, line: 91, type: !209)
!1527 = !DILocation(line: 0, scope: !1522, inlinedAt: !1528)
!1528 = distinct !DILocation(line: 1459, column: 17, scope: !1529, inlinedAt: !1503)
!1529 = distinct !DILexicalBlock(scope: !1530, file: !2, line: 1459, column: 17)
!1530 = distinct !DILexicalBlock(scope: !1499, file: !2, line: 1458, column: 11)
!1531 = !DILocation(line: 93, column: 10, scope: !1522, inlinedAt: !1528)
!1532 = !{!1309, !874, i64 40}
!1533 = !{!1309, !874, i64 48}
!1534 = !{!"branch_weights", i32 2000, i32 1}
!1535 = !DILocation(line: 1459, column: 17, scope: !1530, inlinedAt: !1503)
!1536 = !DILocation(line: 1459, column: 35, scope: !1529, inlinedAt: !1503)
!1537 = !DILocation(line: 948, column: 21, scope: !1414, inlinedAt: !1538)
!1538 = distinct !DILocation(line: 1460, column: 15, scope: !1529, inlinedAt: !1503)
!1539 = !DILocation(line: 0, scope: !1414, inlinedAt: !1538)
!1540 = !DILocation(line: 949, column: 3, scope: !1414, inlinedAt: !1538)
!1541 = !DILocation(line: 950, column: 11, scope: !1414, inlinedAt: !1538)
!1542 = !DILocation(line: 950, column: 3, scope: !1414, inlinedAt: !1538)
!1543 = !DILocation(line: 951, column: 3, scope: !1414, inlinedAt: !1538)
!1544 = !DILocation(line: 952, column: 3, scope: !1414, inlinedAt: !1538)
!1545 = !DILocation(line: 1465, column: 17, scope: !1497, inlinedAt: !1503)
!1546 = !DILocation(line: 1465, column: 64, scope: !1497, inlinedAt: !1503)
!1547 = !DILocation(line: 1465, column: 17, scope: !1498, inlinedAt: !1503)
!1548 = !DILocation(line: 948, column: 21, scope: !1414, inlinedAt: !1549)
!1549 = distinct !DILocation(line: 1466, column: 15, scope: !1497, inlinedAt: !1503)
!1550 = !DILocation(line: 0, scope: !1414, inlinedAt: !1549)
!1551 = !DILocation(line: 949, column: 3, scope: !1414, inlinedAt: !1549)
!1552 = !DILocation(line: 950, column: 11, scope: !1414, inlinedAt: !1549)
!1553 = !DILocation(line: 950, column: 3, scope: !1414, inlinedAt: !1549)
!1554 = !DILocation(line: 951, column: 3, scope: !1414, inlinedAt: !1549)
!1555 = !DILocation(line: 952, column: 3, scope: !1414, inlinedAt: !1549)
!1556 = !DILocation(line: 1467, column: 29, scope: !1498, inlinedAt: !1503)
!1557 = !DILocation(line: 1468, column: 21, scope: !1498, inlinedAt: !1503)
!1558 = !DILocation(line: 0, scope: !1499, inlinedAt: !1503)
!1559 = !DILocation(line: 1453, column: 37, scope: !1494, inlinedAt: !1503)
!1560 = !DILocation(line: 1453, column: 5, scope: !1491, inlinedAt: !1503)
!1561 = distinct !{!1561, !1560, !1562, !990}
!1562 = !DILocation(line: 1470, column: 7, scope: !1491, inlinedAt: !1503)
!1563 = !DILocation(line: 0, scope: !1317, inlinedAt: !1564)
!1564 = distinct !DILocation(line: 1539, column: 11, scope: !1432)
!1565 = !DILocation(line: 130, column: 10, scope: !1317, inlinedAt: !1564)
!1566 = !DILocation(line: 1539, column: 11, scope: !1432)
!1567 = !DILocation(line: 1539, column: 21, scope: !1432)
!1568 = !DILocation(line: 0, scope: !1299, inlinedAt: !1569)
!1569 = distinct !DILocation(line: 1539, column: 25, scope: !1432)
!1570 = !DILocation(line: 1539, column: 25, scope: !1432)
!1571 = !DILocation(line: 1539, column: 37, scope: !1432)
!1572 = distinct !{!1572, !1449, !1573, !990}
!1573 = !DILocation(line: 1539, column: 60, scope: !1432)
!1574 = !DILocation(line: 1552, column: 7, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1432, file: !2, line: 1552, column: 7)
!1576 = !DILocation(line: 1552, column: 19, scope: !1575)
!1577 = !DILocation(line: 0, scope: !1522, inlinedAt: !1578)
!1578 = distinct !DILocation(line: 1552, column: 44, scope: !1575)
!1579 = !DILocation(line: 93, column: 10, scope: !1522, inlinedAt: !1578)
!1580 = !DILocation(line: 1552, column: 7, scope: !1432)
!1581 = !DILocation(line: 1552, column: 62, scope: !1575)
!1582 = !DILocation(line: 948, column: 21, scope: !1414, inlinedAt: !1583)
!1583 = distinct !DILocation(line: 1553, column: 5, scope: !1575)
!1584 = !DILocation(line: 0, scope: !1414, inlinedAt: !1583)
!1585 = !DILocation(line: 949, column: 3, scope: !1414, inlinedAt: !1583)
!1586 = !DILocation(line: 950, column: 11, scope: !1414, inlinedAt: !1583)
!1587 = !DILocation(line: 950, column: 3, scope: !1414, inlinedAt: !1583)
!1588 = !DILocation(line: 951, column: 3, scope: !1414, inlinedAt: !1583)
!1589 = !DILocation(line: 952, column: 3, scope: !1414, inlinedAt: !1583)
!1590 = !DILocation(line: 0, scope: !1299, inlinedAt: !1591)
!1591 = distinct !DILocation(line: 1555, column: 7, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1432, file: !2, line: 1555, column: 7)
!1593 = !DILocation(line: 137, column: 10, scope: !1299, inlinedAt: !1591)
!1594 = !DILocation(line: 1555, column: 7, scope: !1592)
!1595 = !DILocation(line: 1555, column: 7, scope: !1432)
!1596 = !DILocation(line: 1556, column: 5, scope: !1592)
!1597 = !DILocation(line: 1558, column: 3, scope: !1432)
!1598 = !DISubprogram(name: "fflush_unlocked", scope: !938, file: !938, line: 239, type: !1301, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1599 = !DISubprogram(name: "clearerr_unlocked", scope: !938, file: !938, line: 794, type: !1600, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1600 = !DISubroutineType(types: !1601)
!1601 = !{null, !209}
!1602 = !DISubprogram(name: "__overflow", scope: !938, file: !938, line: 886, type: !1603, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1603 = !DISubroutineType(types: !1604)
!1604 = !{!87, !209, !87}
!1605 = distinct !DISubprogram(name: "finish_and_exit", scope: !2, file: !2, line: 1474, type: !1606, scopeLine: 1475, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1608)
!1606 = !DISubroutineType(types: !1607)
!1607 = !{null, !209, !136}
!1608 = !{!1609, !1610}
!1609 = !DILocalVariable(name: "in", arg: 1, scope: !1605, file: !2, line: 1474, type: !209)
!1610 = !DILocalVariable(name: "infile", arg: 2, scope: !1605, file: !2, line: 1474, type: !136)
!1611 = !DILocation(line: 0, scope: !1605)
!1612 = !DILocation(line: 1476, column: 7, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1605, file: !2, line: 1476, column: 7)
!1614 = !DILocation(line: 1476, column: 19, scope: !1613)
!1615 = !DILocation(line: 1476, column: 7, scope: !1605)
!1616 = !DILocation(line: 0, scope: !955, inlinedAt: !1617)
!1617 = distinct !DILocation(line: 1478, column: 11, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1619, file: !2, line: 1478, column: 11)
!1619 = distinct !DILexicalBlock(scope: !1613, file: !2, line: 1477, column: 5)
!1620 = !DILocation(line: 1361, column: 11, scope: !955, inlinedAt: !1617)
!1621 = !DILocation(line: 1361, column: 10, scope: !955, inlinedAt: !1617)
!1622 = !DILocation(line: 0, scope: !1618)
!1623 = !DILocation(line: 1478, column: 11, scope: !1619)
!1624 = !DILocation(line: 1479, column: 9, scope: !1618)
!1625 = !DILocation(line: 1481, column: 9, scope: !1618)
!1626 = !DILocation(line: 1484, column: 3, scope: !1605)
!1627 = !DISubprogram(name: "__assert_fail", scope: !1628, file: !1628, line: 69, type: !1629, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1628 = !DIFile(filename: "/usr/include/assert.h", directory: "", checksumkind: CSK_MD5, checksum: "ab7dc6991d501750085448b20099a5a0")
!1629 = !DISubroutineType(types: !1630)
!1630 = !{null, !136, !136, !78, !136}
!1631 = distinct !DISubprogram(name: "isubase32", scope: !1632, file: !1632, line: 56, type: !1259, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !1633)
!1632 = !DIFile(filename: "lib/base32.h", directory: "/src", checksumkind: CSK_MD5, checksum: "e713a01df52addfef9645906d93b4fcb")
!1633 = !{!1634}
!1634 = !DILocalVariable(name: "ch", arg: 1, scope: !1631, file: !1632, line: 56, type: !138)
!1635 = !DILocation(line: 0, scope: !1631)
!1636 = !DILocation(line: 58, column: 10, scope: !1631)
!1637 = !DILocation(line: 58, column: 44, scope: !1631)
!1638 = !DILocation(line: 58, column: 41, scope: !1631)
!1639 = !DILocation(line: 58, column: 3, scope: !1631)
!1640 = distinct !DISubprogram(name: "isbase32", scope: !1632, file: !1632, line: 62, type: !1641, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !1643)
!1641 = !DISubroutineType(types: !1642)
!1642 = !{!196, !4}
!1643 = !{!1644}
!1644 = !DILocalVariable(name: "ch", arg: 1, scope: !1640, file: !1632, line: 62, type: !4)
!1645 = !DILocation(line: 0, scope: !1640)
!1646 = !DILocation(line: 0, scope: !1631, inlinedAt: !1647)
!1647 = distinct !DILocation(line: 64, column: 10, scope: !1640)
!1648 = !DILocation(line: 58, column: 10, scope: !1631, inlinedAt: !1647)
!1649 = !DILocation(line: 58, column: 44, scope: !1631, inlinedAt: !1647)
!1650 = !DILocation(line: 58, column: 41, scope: !1631, inlinedAt: !1647)
!1651 = !DILocation(line: 64, column: 3, scope: !1640)
!1652 = distinct !DISubprogram(name: "base32_decode_ctx_init", scope: !1632, file: !1632, line: 74, type: !1653, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !1660)
!1653 = !DISubroutineType(types: !1654)
!1654 = !{null, !1655}
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "base32_decode_context", file: !1632, line: 47, size: 96, elements: !1657)
!1657 = !{!1658, !1659}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !1656, file: !1632, line: 49, baseType: !87, size: 32)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1656, file: !1632, line: 50, baseType: !299, size: 64, offset: 32)
!1660 = !{!1661}
!1661 = !DILocalVariable(name: "ctx", arg: 1, scope: !1652, file: !1632, line: 74, type: !1655)
!1662 = !DILocation(line: 0, scope: !1652)
!1663 = !DILocation(line: 76, column: 10, scope: !1652)
!1664 = !DILocation(line: 77, column: 1, scope: !1652)
!1665 = !DILocation(line: 0, scope: !434)
!1666 = !DILocation(line: 71, column: 10, scope: !434)
!1667 = !DILocation(line: 71, column: 16, scope: !434)
!1668 = !DILocation(line: 71, column: 3, scope: !434)
!1669 = !DILocation(line: 73, column: 34, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !434, file: !429, line: 72, column: 5)
!1671 = !DILocation(line: 73, column: 16, scope: !1670)
!1672 = !DILocation(line: 73, column: 11, scope: !1670)
!1673 = !DILocation(line: 73, column: 14, scope: !1670)
!1674 = !DILocation(line: 74, column: 12, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1670, file: !429, line: 74, column: 11)
!1676 = !DILocation(line: 74, column: 11, scope: !1670)
!1677 = !DILocation(line: 76, column: 25, scope: !1670)
!1678 = !DILocation(line: 76, column: 42, scope: !1670)
!1679 = !DILocation(line: 77, column: 27, scope: !1670)
!1680 = !DILocation(line: 78, column: 23, scope: !1670)
!1681 = !DILocation(line: 76, column: 16, scope: !1670)
!1682 = !DILocation(line: 76, column: 14, scope: !1670)
!1683 = !DILocation(line: 79, column: 12, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1670, file: !429, line: 79, column: 11)
!1685 = !DILocation(line: 79, column: 11, scope: !1670)
!1686 = !DILocation(line: 77, column: 47, scope: !1670)
!1687 = !DILocation(line: 76, column: 11, scope: !1670)
!1688 = !DILocation(line: 81, column: 14, scope: !1670)
!1689 = !DILocation(line: 85, column: 12, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1670, file: !429, line: 85, column: 11)
!1691 = !DILocation(line: 85, column: 11, scope: !1670)
!1692 = !DILocation(line: 83, column: 43, scope: !1670)
!1693 = !DILocation(line: 83, column: 12, scope: !1670)
!1694 = !DILocation(line: 81, column: 11, scope: !1670)
!1695 = !DILocation(line: 89, column: 21, scope: !1670)
!1696 = !DILocation(line: 89, column: 38, scope: !1670)
!1697 = !DILocation(line: 90, column: 23, scope: !1670)
!1698 = !DILocation(line: 91, column: 19, scope: !1670)
!1699 = !DILocation(line: 89, column: 12, scope: !1670)
!1700 = !DILocation(line: 87, column: 14, scope: !1670)
!1701 = !DILocation(line: 93, column: 12, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1670, file: !429, line: 93, column: 11)
!1703 = !DILocation(line: 93, column: 11, scope: !1670)
!1704 = !DILocation(line: 90, column: 43, scope: !1670)
!1705 = !DILocation(line: 97, column: 31, scope: !1670)
!1706 = !DILocation(line: 97, column: 21, scope: !1670)
!1707 = !DILocation(line: 97, column: 38, scope: !1670)
!1708 = !DILocation(line: 98, column: 23, scope: !1670)
!1709 = !DILocation(line: 98, column: 43, scope: !1670)
!1710 = !DILocation(line: 98, column: 20, scope: !1670)
!1711 = !DILocation(line: 99, column: 19, scope: !1670)
!1712 = !DILocation(line: 97, column: 12, scope: !1670)
!1713 = !DILocation(line: 96, column: 10, scope: !1670)
!1714 = !DILocation(line: 0, scope: !1670)
!1715 = !DILocation(line: 87, column: 11, scope: !1670)
!1716 = !DILocation(line: 95, column: 11, scope: !1670)
!1717 = !DILocation(line: 95, column: 14, scope: !1670)
!1718 = !DILocation(line: 101, column: 12, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1670, file: !429, line: 101, column: 11)
!1720 = !DILocation(line: 101, column: 11, scope: !1670)
!1721 = !DILocation(line: 104, column: 10, scope: !1670)
!1722 = !DILocation(line: 103, column: 14, scope: !1670)
!1723 = !DILocation(line: 107, column: 12, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1670, file: !429, line: 107, column: 11)
!1725 = !DILocation(line: 107, column: 11, scope: !1670)
!1726 = !DILocation(line: 105, column: 30, scope: !1670)
!1727 = !DILocation(line: 105, column: 43, scope: !1670)
!1728 = !DILocation(line: 105, column: 12, scope: !1670)
!1729 = !DILocation(line: 103, column: 11, scope: !1670)
!1730 = !DILocation(line: 111, column: 21, scope: !1670)
!1731 = !DILocation(line: 111, column: 38, scope: !1670)
!1732 = !DILocation(line: 112, column: 23, scope: !1670)
!1733 = !DILocation(line: 113, column: 19, scope: !1670)
!1734 = !DILocation(line: 111, column: 12, scope: !1670)
!1735 = !DILocation(line: 109, column: 14, scope: !1670)
!1736 = !DILocation(line: 115, column: 12, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1670, file: !429, line: 115, column: 11)
!1738 = !DILocation(line: 115, column: 11, scope: !1670)
!1739 = !DILocation(line: 112, column: 43, scope: !1670)
!1740 = !DILocation(line: 117, column: 41, scope: !1670)
!1741 = !DILocation(line: 117, column: 48, scope: !1670)
!1742 = !DILocation(line: 117, column: 24, scope: !1670)
!1743 = !DILocation(line: 117, column: 16, scope: !1670)
!1744 = !DILocation(line: 109, column: 11, scope: !1670)
!1745 = !DILocation(line: 117, column: 14, scope: !1670)
!1746 = !DILocation(line: 118, column: 12, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1670, file: !429, line: 118, column: 11)
!1748 = !DILocation(line: 118, column: 11, scope: !1670)
!1749 = !DILocation(line: 117, column: 11, scope: !1670)
!1750 = !DILocation(line: 120, column: 11, scope: !1670)
!1751 = !DILocation(line: 122, column: 11, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1670, file: !429, line: 122, column: 11)
!1753 = !DILocation(line: 122, column: 11, scope: !1670)
!1754 = distinct !{!1754, !1668, !1755, !990}
!1755 = !DILocation(line: 124, column: 5, scope: !434)
!1756 = !DILocation(line: 126, column: 7, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !434, file: !429, line: 126, column: 7)
!1758 = !DILocation(line: 126, column: 7, scope: !434)
!1759 = !DILocation(line: 127, column: 10, scope: !1757)
!1760 = !DILocation(line: 127, column: 5, scope: !1757)
!1761 = !DILocation(line: 128, column: 1, scope: !434)
!1762 = distinct !DISubprogram(name: "base32_encode_alloc", scope: !429, file: !429, line: 140, type: !1763, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !1765)
!1763 = !DISubroutineType(types: !1764)
!1764 = !{!438, !136, !438, !1096}
!1765 = !{!1766, !1767, !1768, !1769, !1770}
!1766 = !DILocalVariable(name: "in", arg: 1, scope: !1762, file: !429, line: 140, type: !136)
!1767 = !DILocalVariable(name: "inlen", arg: 2, scope: !1762, file: !429, line: 140, type: !438)
!1768 = !DILocalVariable(name: "out", arg: 3, scope: !1762, file: !429, line: 140, type: !1096)
!1769 = !DILocalVariable(name: "in_over_5", scope: !1762, file: !429, line: 145, type: !438)
!1770 = !DILocalVariable(name: "outlen", scope: !1762, file: !429, line: 145, type: !438)
!1771 = !DILocation(line: 0, scope: !1762)
!1772 = !DILocation(line: 145, column: 27, scope: !1762)
!1773 = !DILocation(line: 145, column: 40, scope: !1762)
!1774 = !DILocation(line: 145, column: 44, scope: !1762)
!1775 = !DILocation(line: 145, column: 31, scope: !1762)
!1776 = !DILocation(line: 146, column: 7, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1762, file: !429, line: 146, column: 7)
!1778 = !DILocation(line: 146, column: 39, scope: !1777)
!1779 = !DILocation(line: 148, column: 12, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1777, file: !429, line: 147, column: 5)
!1781 = !DILocation(line: 149, column: 7, scope: !1780)
!1782 = !DILocation(line: 151, column: 9, scope: !1762)
!1783 = !DILocalVariable(name: "s", arg: 1, scope: !1784, file: !1785, line: 55, type: !438)
!1784 = distinct !DISubprogram(name: "imalloc", scope: !1785, file: !1785, line: 55, type: !1786, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !1788)
!1785 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!1786 = !DISubroutineType(types: !1787)
!1787 = !{!131, !438}
!1788 = !{!1783}
!1789 = !DILocation(line: 0, scope: !1784, inlinedAt: !1790)
!1790 = distinct !DILocation(line: 153, column: 10, scope: !1762)
!1791 = !DILocation(line: 57, column: 26, scope: !1784, inlinedAt: !1790)
!1792 = !DILocation(line: 153, column: 8, scope: !1762)
!1793 = !DILocation(line: 154, column: 8, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1762, file: !429, line: 154, column: 7)
!1795 = !DILocation(line: 154, column: 7, scope: !1762)
!1796 = !DILocation(line: 157, column: 3, scope: !1762)
!1797 = !DILocation(line: 159, column: 3, scope: !1762)
!1798 = !DILocation(line: 160, column: 1, scope: !1762)
!1799 = !DISubprogram(name: "malloc", scope: !1067, file: !1067, line: 540, type: !1800, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1800 = !DISubroutineType(types: !1801)
!1801 = !{!131, !133}
!1802 = distinct !DISubprogram(name: "base32_decode_ctx", scope: !429, file: !429, line: 464, type: !1803, scopeLine: 467, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !1805)
!1803 = !DISubroutineType(types: !1804)
!1804 = !{!196, !1655, !437, !438, !442, !1343}
!1805 = !{!1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1817, !1821}
!1806 = !DILocalVariable(name: "ctx", arg: 1, scope: !1802, file: !429, line: 464, type: !1655)
!1807 = !DILocalVariable(name: "in", arg: 2, scope: !1802, file: !429, line: 465, type: !437)
!1808 = !DILocalVariable(name: "inlen", arg: 3, scope: !1802, file: !429, line: 465, type: !438)
!1809 = !DILocalVariable(name: "out", arg: 4, scope: !1802, file: !429, line: 466, type: !442)
!1810 = !DILocalVariable(name: "outlen", arg: 5, scope: !1802, file: !429, line: 466, type: !1343)
!1811 = !DILocalVariable(name: "ignore_newlines", scope: !1802, file: !429, line: 468, type: !196)
!1812 = !DILocalVariable(name: "flush_ctx", scope: !1802, file: !429, line: 469, type: !196)
!1813 = !DILocalVariable(name: "ctx_i", scope: !1802, file: !429, line: 470, type: !78)
!1814 = !DILocalVariable(name: "outleft", scope: !1802, file: !429, line: 478, type: !438)
!1815 = !DILocalVariable(name: "outleft_save", scope: !1816, file: !429, line: 482, type: !438)
!1816 = distinct !DILexicalBlock(scope: !1802, file: !429, line: 481, column: 5)
!1817 = !DILocalVariable(name: "in_end", scope: !1818, file: !429, line: 515, type: !136)
!1818 = distinct !DILexicalBlock(scope: !1819, file: !429, line: 514, column: 11)
!1819 = distinct !DILexicalBlock(scope: !1820, file: !429, line: 509, column: 9)
!1820 = distinct !DILexicalBlock(scope: !1816, file: !429, line: 503, column: 11)
!1821 = !DILocalVariable(name: "non_nl", scope: !1818, file: !429, line: 517, type: !136)
!1822 = distinct !DIAssignID()
!1823 = !DILocation(line: 0, scope: !1802)
!1824 = distinct !DIAssignID()
!1825 = distinct !DIAssignID()
!1826 = !DILocation(line: 468, column: 30, scope: !1802)
!1827 = !DILocation(line: 472, column: 7, scope: !1802)
!1828 = !DILocation(line: 474, column: 20, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1830, file: !429, line: 473, column: 5)
!1830 = distinct !DILexicalBlock(scope: !1802, file: !429, line: 472, column: 7)
!1831 = !DILocation(line: 475, column: 25, scope: !1829)
!1832 = !DILocation(line: 483, column: 17, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1816, file: !429, line: 483, column: 11)
!1834 = !DILocation(line: 476, column: 5, scope: !1829)
!1835 = !DILocation(line: 478, column: 3, scope: !1802)
!1836 = !DILocation(line: 478, column: 19, scope: !1802)
!1837 = !DILocation(line: 478, column: 9, scope: !1802)
!1838 = distinct !DIAssignID()
!1839 = !DILocation(line: 480, column: 3, scope: !1802)
!1840 = !DILocation(line: 482, column: 28, scope: !1816)
!1841 = !DILocation(line: 0, scope: !1816)
!1842 = !DILocation(line: 483, column: 22, scope: !1833)
!1843 = !DILocation(line: 490, column: 20, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1845, file: !429, line: 490, column: 19)
!1845 = distinct !DILexicalBlock(scope: !1846, file: !429, line: 486, column: 13)
!1846 = distinct !DILexicalBlock(scope: !1833, file: !429, line: 484, column: 9)
!1847 = !DILocation(line: 490, column: 19, scope: !1845)
!1848 = !DILocation(line: 493, column: 18, scope: !1845)
!1849 = !DILocation(line: 494, column: 21, scope: !1845)
!1850 = !DILocation(line: 489, column: 30, scope: !1845)
!1851 = distinct !{!1851, !1852, !1853}
!1852 = !DILocation(line: 485, column: 11, scope: !1846)
!1853 = !DILocation(line: 495, column: 13, scope: !1846)
!1854 = !DILocation(line: 498, column: 17, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1816, file: !429, line: 498, column: 11)
!1856 = !DILocation(line: 498, column: 22, scope: !1855)
!1857 = !DILocation(line: 503, column: 17, scope: !1820)
!1858 = !DILocation(line: 503, column: 20, scope: !1820)
!1859 = !DILocation(line: 503, column: 24, scope: !1820)
!1860 = !DILocation(line: 503, column: 32, scope: !1820)
!1861 = !DILocation(line: 505, column: 11, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1820, file: !429, line: 504, column: 9)
!1863 = !DILocation(line: 506, column: 11, scope: !1862)
!1864 = !DILocation(line: 507, column: 9, scope: !1862)
!1865 = !DILocation(line: 511, column: 33, scope: !1819)
!1866 = !DILocation(line: 511, column: 31, scope: !1819)
!1867 = !DILocation(line: 511, column: 15, scope: !1819)
!1868 = distinct !DIAssignID()
!1869 = !DILocation(line: 512, column: 19, scope: !1819)
!1870 = distinct !DIAssignID()
!1871 = !DILocation(line: 515, column: 37, scope: !1818)
!1872 = !DILocation(line: 0, scope: !1818)
!1873 = !DILocation(line: 518, column: 17, scope: !1818)
!1874 = !DILocalVariable(name: "ctx", arg: 1, scope: !1875, file: !429, line: 281, type: !1655)
!1875 = distinct !DISubprogram(name: "get_8", scope: !429, file: !429, line: 281, type: !1876, scopeLine: 284, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !1879)
!1876 = !DISubroutineType(types: !1877)
!1877 = !{!130, !1655, !1878, !437, !1343}
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!1879 = !{!1874, !1880, !1881, !1882, !1883, !1886, !1888}
!1880 = !DILocalVariable(name: "in", arg: 2, scope: !1875, file: !429, line: 282, type: !1878)
!1881 = !DILocalVariable(name: "in_end", arg: 3, scope: !1875, file: !429, line: 282, type: !437)
!1882 = !DILocalVariable(name: "n_non_newline", arg: 4, scope: !1875, file: !429, line: 283, type: !1343)
!1883 = !DILocalVariable(name: "t", scope: !1884, file: !429, line: 290, type: !136)
!1884 = distinct !DILexicalBlock(scope: !1885, file: !429, line: 289, column: 5)
!1885 = distinct !DILexicalBlock(scope: !1875, file: !429, line: 288, column: 7)
!1886 = !DILocalVariable(name: "p", scope: !1887, file: !429, line: 302, type: !136)
!1887 = distinct !DILexicalBlock(scope: !1875, file: !429, line: 300, column: 3)
!1888 = !DILocalVariable(name: "c", scope: !1889, file: !429, line: 305, type: !4)
!1889 = distinct !DILexicalBlock(scope: !1887, file: !429, line: 304, column: 7)
!1890 = !DILocation(line: 0, scope: !1875, inlinedAt: !1891)
!1891 = distinct !DILocation(line: 519, column: 24, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1818, file: !429, line: 518, column: 17)
!1893 = !DILocation(line: 285, column: 12, scope: !1894, inlinedAt: !1891)
!1894 = distinct !DILexicalBlock(scope: !1875, file: !429, line: 285, column: 7)
!1895 = !{!1896}
!1896 = distinct !{!1896, !1897, !"get_8: argument 0"}
!1897 = distinct !{!1897, !"get_8"}
!1898 = !DILocation(line: 285, column: 7, scope: !1875, inlinedAt: !1891)
!1899 = !DILocation(line: 286, column: 12, scope: !1894, inlinedAt: !1891)
!1900 = !DILocation(line: 288, column: 7, scope: !1875, inlinedAt: !1891)
!1901 = !DILocation(line: 0, scope: !1884, inlinedAt: !1891)
!1902 = !DILocation(line: 291, column: 13, scope: !1903, inlinedAt: !1891)
!1903 = distinct !DILexicalBlock(scope: !1884, file: !429, line: 291, column: 11)
!1904 = !DILocation(line: 291, column: 29, scope: !1903, inlinedAt: !1891)
!1905 = !DILocation(line: 291, column: 32, scope: !1903, inlinedAt: !1891)
!1906 = !DILocation(line: 291, column: 52, scope: !1903, inlinedAt: !1891)
!1907 = !DILocation(line: 291, column: 11, scope: !1884, inlinedAt: !1891)
!1908 = !DILocation(line: 294, column: 15, scope: !1909, inlinedAt: !1891)
!1909 = distinct !DILexicalBlock(scope: !1903, file: !429, line: 292, column: 9)
!1910 = !DILocation(line: 526, column: 42, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1818, file: !429, line: 526, column: 17)
!1912 = !DILocation(line: 0, scope: !1887, inlinedAt: !1891)
!1913 = !DILocation(line: 303, column: 14, scope: !1887, inlinedAt: !1891)
!1914 = !DILocation(line: 303, column: 5, scope: !1887, inlinedAt: !1891)
!1915 = !DILocation(line: 306, column: 13, scope: !1889, inlinedAt: !1891)
!1916 = !DILocation(line: 305, column: 20, scope: !1889, inlinedAt: !1891)
!1917 = !DILocation(line: 305, column: 18, scope: !1889, inlinedAt: !1891)
!1918 = !DILocation(line: 0, scope: !1889, inlinedAt: !1891)
!1919 = !DILocation(line: 306, column: 15, scope: !1920, inlinedAt: !1891)
!1920 = distinct !DILexicalBlock(scope: !1889, file: !429, line: 306, column: 13)
!1921 = !DILocation(line: 308, column: 28, scope: !1922, inlinedAt: !1891)
!1922 = distinct !DILexicalBlock(scope: !1920, file: !429, line: 307, column: 11)
!1923 = !DILocation(line: 308, column: 13, scope: !1922, inlinedAt: !1891)
!1924 = !DILocation(line: 308, column: 32, scope: !1922, inlinedAt: !1891)
!1925 = !DILocation(line: 309, column: 22, scope: !1926, inlinedAt: !1891)
!1926 = distinct !DILexicalBlock(scope: !1922, file: !429, line: 309, column: 17)
!1927 = !DILocation(line: 309, column: 24, scope: !1926, inlinedAt: !1891)
!1928 = !DILocation(line: 309, column: 17, scope: !1922, inlinedAt: !1891)
!1929 = !DILocation(line: 315, column: 27, scope: !1887, inlinedAt: !1891)
!1930 = !DILocation(line: 315, column: 22, scope: !1887, inlinedAt: !1891)
!1931 = !DILocation(line: 0, scope: !1892)
!1932 = !DILocation(line: 526, column: 23, scope: !1911)
!1933 = !DILocation(line: 526, column: 28, scope: !1911)
!1934 = !DILocation(line: 526, column: 38, scope: !1911)
!1935 = !DILocation(line: 531, column: 18, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1818, file: !429, line: 531, column: 17)
!1937 = !DILocation(line: 531, column: 17, scope: !1818)
!1938 = !DILocation(line: 534, column: 28, scope: !1818)
!1939 = !DILocation(line: 539, column: 14, scope: !1802)
!1940 = !DILocation(line: 539, column: 11, scope: !1802)
!1941 = !DILocation(line: 542, column: 1, scope: !1802)
!1942 = !DILocation(line: 541, column: 3, scope: !1802)
!1943 = distinct !DISubprogram(name: "decode_8", scope: !429, file: !429, line: 335, type: !1944, scopeLine: 337, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !1946)
!1944 = !DISubroutineType(types: !1945)
!1945 = !{!196, !437, !438, !1342, !1343}
!1946 = !{!1947, !1948, !1949, !1950, !1951}
!1947 = !DILocalVariable(name: "in", arg: 1, scope: !1943, file: !429, line: 335, type: !437)
!1948 = !DILocalVariable(name: "inlen", arg: 2, scope: !1943, file: !429, line: 335, type: !438)
!1949 = !DILocalVariable(name: "outp", arg: 3, scope: !1943, file: !429, line: 336, type: !1342)
!1950 = !DILocalVariable(name: "outleft", arg: 4, scope: !1943, file: !429, line: 336, type: !1343)
!1951 = !DILocalVariable(name: "out", scope: !1943, file: !429, line: 344, type: !130)
!1952 = !DILocation(line: 0, scope: !1943)
!1953 = !DILocation(line: 338, column: 13, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1943, file: !429, line: 338, column: 7)
!1955 = !DILocation(line: 338, column: 7, scope: !1943)
!1956 = !DILocation(line: 341, column: 18, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1943, file: !429, line: 341, column: 7)
!1958 = !DILocation(line: 0, scope: !1640, inlinedAt: !1959)
!1959 = distinct !DILocation(line: 341, column: 8, scope: !1957)
!1960 = !DILocation(line: 0, scope: !1631, inlinedAt: !1961)
!1961 = distinct !DILocation(line: 64, column: 10, scope: !1640, inlinedAt: !1959)
!1962 = !DILocation(line: 58, column: 10, scope: !1631, inlinedAt: !1961)
!1963 = !DILocation(line: 58, column: 44, scope: !1631, inlinedAt: !1961)
!1964 = !DILocation(line: 58, column: 41, scope: !1631, inlinedAt: !1961)
!1965 = !DILocation(line: 341, column: 25, scope: !1957)
!1966 = !DILocation(line: 341, column: 39, scope: !1957)
!1967 = !DILocation(line: 0, scope: !1640, inlinedAt: !1968)
!1968 = distinct !DILocation(line: 341, column: 29, scope: !1957)
!1969 = !DILocation(line: 0, scope: !1631, inlinedAt: !1970)
!1970 = distinct !DILocation(line: 64, column: 10, scope: !1640, inlinedAt: !1968)
!1971 = !DILocation(line: 58, column: 10, scope: !1631, inlinedAt: !1970)
!1972 = !DILocation(line: 58, column: 44, scope: !1631, inlinedAt: !1970)
!1973 = !DILocation(line: 58, column: 41, scope: !1631, inlinedAt: !1970)
!1974 = !DILocation(line: 341, column: 7, scope: !1943)
!1975 = !DILocation(line: 344, column: 15, scope: !1943)
!1976 = !DILocation(line: 346, column: 7, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1943, file: !429, line: 346, column: 7)
!1978 = !DILocation(line: 346, column: 7, scope: !1943)
!1979 = !DILocation(line: 348, column: 50, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1977, file: !429, line: 347, column: 5)
!1981 = !DILocation(line: 349, column: 52, scope: !1980)
!1982 = !DILocation(line: 349, column: 17, scope: !1980)
!1983 = !DILocation(line: 348, column: 11, scope: !1980)
!1984 = !DILocation(line: 348, column: 14, scope: !1980)
!1985 = !DILocation(line: 350, column: 7, scope: !1980)
!1986 = !DILocation(line: 351, column: 5, scope: !1980)
!1987 = !DILocation(line: 353, column: 7, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1943, file: !429, line: 353, column: 7)
!1989 = !DILocation(line: 353, column: 13, scope: !1988)
!1990 = !DILocation(line: 353, column: 7, scope: !1943)
!1991 = !DILocation(line: 355, column: 11, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1993, file: !429, line: 355, column: 11)
!1993 = distinct !DILexicalBlock(scope: !1988, file: !429, line: 354, column: 5)
!1994 = !DILocation(line: 355, column: 17, scope: !1992)
!1995 = !DILocation(line: 355, column: 24, scope: !1992)
!1996 = !DILocation(line: 355, column: 27, scope: !1992)
!1997 = !DILocation(line: 355, column: 33, scope: !1992)
!1998 = !DILocation(line: 355, column: 40, scope: !1992)
!1999 = !DILocation(line: 355, column: 43, scope: !1992)
!2000 = !DILocation(line: 355, column: 49, scope: !1992)
!2001 = !DILocation(line: 356, column: 11, scope: !1992)
!2002 = !DILocation(line: 356, column: 14, scope: !1992)
!2003 = !DILocation(line: 356, column: 20, scope: !1992)
!2004 = !DILocation(line: 356, column: 27, scope: !1992)
!2005 = !DILocation(line: 356, column: 30, scope: !1992)
!2006 = !DILocation(line: 356, column: 36, scope: !1992)
!2007 = !DILocation(line: 355, column: 11, scope: !1993)
!2008 = !DILocation(line: 0, scope: !1640, inlinedAt: !2009)
!2009 = distinct !DILocation(line: 365, column: 12, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !2011, file: !429, line: 365, column: 11)
!2011 = distinct !DILexicalBlock(scope: !1988, file: !429, line: 364, column: 5)
!2012 = !DILocation(line: 0, scope: !1631, inlinedAt: !2013)
!2013 = distinct !DILocation(line: 64, column: 10, scope: !1640, inlinedAt: !2009)
!2014 = !DILocation(line: 58, column: 10, scope: !1631, inlinedAt: !2013)
!2015 = !DILocation(line: 58, column: 44, scope: !1631, inlinedAt: !2013)
!2016 = !DILocation(line: 58, column: 41, scope: !1631, inlinedAt: !2013)
!2017 = !DILocation(line: 365, column: 29, scope: !2010)
!2018 = !DILocation(line: 365, column: 43, scope: !2010)
!2019 = !DILocation(line: 0, scope: !1640, inlinedAt: !2020)
!2020 = distinct !DILocation(line: 365, column: 33, scope: !2010)
!2021 = !DILocation(line: 0, scope: !1631, inlinedAt: !2022)
!2022 = distinct !DILocation(line: 64, column: 10, scope: !1640, inlinedAt: !2020)
!2023 = !DILocation(line: 58, column: 10, scope: !1631, inlinedAt: !2022)
!2024 = !DILocation(line: 58, column: 44, scope: !1631, inlinedAt: !2022)
!2025 = !DILocation(line: 58, column: 41, scope: !1631, inlinedAt: !2022)
!2026 = !DILocation(line: 365, column: 11, scope: !2011)
!2027 = !DILocation(line: 368, column: 11, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !2011, file: !429, line: 368, column: 11)
!2029 = !DILocation(line: 368, column: 11, scope: !2011)
!2030 = !DILocation(line: 370, column: 54, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !2028, file: !429, line: 369, column: 9)
!2032 = !DILocation(line: 371, column: 56, scope: !2031)
!2033 = !DILocation(line: 371, column: 21, scope: !2031)
!2034 = !DILocation(line: 372, column: 56, scope: !2031)
!2035 = !DILocation(line: 372, column: 21, scope: !2031)
!2036 = !DILocation(line: 370, column: 15, scope: !2031)
!2037 = !DILocation(line: 370, column: 18, scope: !2031)
!2038 = !DILocation(line: 373, column: 11, scope: !2031)
!2039 = !DILocation(line: 390, column: 15, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !2041, file: !429, line: 390, column: 15)
!2041 = distinct !DILexicalBlock(scope: !2042, file: !429, line: 386, column: 9)
!2042 = distinct !DILexicalBlock(scope: !2011, file: !429, line: 376, column: 11)
!2043 = !DILocation(line: 374, column: 9, scope: !2031)
!2044 = !DILocation(line: 376, column: 11, scope: !2042)
!2045 = !DILocation(line: 376, column: 17, scope: !2042)
!2046 = !DILocation(line: 376, column: 11, scope: !2011)
!2047 = !DILocation(line: 378, column: 15, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2049, file: !429, line: 378, column: 15)
!2049 = distinct !DILexicalBlock(scope: !2042, file: !429, line: 377, column: 9)
!2050 = !DILocation(line: 378, column: 21, scope: !2048)
!2051 = !DILocation(line: 378, column: 28, scope: !2048)
!2052 = !DILocation(line: 378, column: 31, scope: !2048)
!2053 = !DILocation(line: 378, column: 37, scope: !2048)
!2054 = !DILocation(line: 378, column: 44, scope: !2048)
!2055 = !DILocation(line: 378, column: 47, scope: !2048)
!2056 = !DILocation(line: 378, column: 53, scope: !2048)
!2057 = !DILocation(line: 378, column: 15, scope: !2049)
!2058 = !DILocation(line: 0, scope: !1640, inlinedAt: !2059)
!2059 = distinct !DILocation(line: 387, column: 16, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2041, file: !429, line: 387, column: 15)
!2061 = !DILocation(line: 0, scope: !1631, inlinedAt: !2062)
!2062 = distinct !DILocation(line: 64, column: 10, scope: !1640, inlinedAt: !2059)
!2063 = !DILocation(line: 58, column: 10, scope: !1631, inlinedAt: !2062)
!2064 = !DILocation(line: 58, column: 44, scope: !1631, inlinedAt: !2062)
!2065 = !DILocation(line: 58, column: 41, scope: !1631, inlinedAt: !2062)
!2066 = !DILocation(line: 387, column: 15, scope: !2041)
!2067 = !DILocation(line: 390, column: 15, scope: !2041)
!2068 = !DILocation(line: 392, column: 58, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2040, file: !429, line: 391, column: 13)
!2070 = !DILocation(line: 393, column: 60, scope: !2069)
!2071 = !DILocation(line: 393, column: 25, scope: !2069)
!2072 = !DILocation(line: 392, column: 19, scope: !2069)
!2073 = !DILocation(line: 392, column: 22, scope: !2069)
!2074 = !DILocation(line: 394, column: 15, scope: !2069)
!2075 = !DILocation(line: 411, column: 19, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2077, file: !429, line: 411, column: 19)
!2077 = distinct !DILexicalBlock(scope: !2078, file: !429, line: 407, column: 13)
!2078 = distinct !DILexicalBlock(scope: !2041, file: !429, line: 397, column: 15)
!2079 = !DILocation(line: 395, column: 13, scope: !2069)
!2080 = !DILocation(line: 0, scope: !2011)
!2081 = !DILocation(line: 397, column: 15, scope: !2078)
!2082 = !DILocation(line: 397, column: 21, scope: !2078)
!2083 = !DILocation(line: 397, column: 15, scope: !2041)
!2084 = !DILocation(line: 399, column: 19, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2086, file: !429, line: 399, column: 19)
!2086 = distinct !DILexicalBlock(scope: !2078, file: !429, line: 398, column: 13)
!2087 = !DILocation(line: 399, column: 25, scope: !2085)
!2088 = !DILocation(line: 399, column: 32, scope: !2085)
!2089 = !DILocation(line: 399, column: 35, scope: !2085)
!2090 = !DILocation(line: 399, column: 41, scope: !2085)
!2091 = !DILocation(line: 399, column: 19, scope: !2086)
!2092 = !DILocation(line: 0, scope: !1640, inlinedAt: !2093)
!2093 = distinct !DILocation(line: 408, column: 20, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2077, file: !429, line: 408, column: 19)
!2095 = !DILocation(line: 0, scope: !1631, inlinedAt: !2096)
!2096 = distinct !DILocation(line: 64, column: 10, scope: !1640, inlinedAt: !2093)
!2097 = !DILocation(line: 58, column: 10, scope: !1631, inlinedAt: !2096)
!2098 = !DILocation(line: 58, column: 44, scope: !1631, inlinedAt: !2096)
!2099 = !DILocation(line: 58, column: 41, scope: !1631, inlinedAt: !2096)
!2100 = !DILocation(line: 408, column: 37, scope: !2094)
!2101 = !DILocation(line: 408, column: 51, scope: !2094)
!2102 = !DILocation(line: 0, scope: !1640, inlinedAt: !2103)
!2103 = distinct !DILocation(line: 408, column: 41, scope: !2094)
!2104 = !DILocation(line: 0, scope: !1631, inlinedAt: !2105)
!2105 = distinct !DILocation(line: 64, column: 10, scope: !1640, inlinedAt: !2103)
!2106 = !DILocation(line: 58, column: 10, scope: !1631, inlinedAt: !2105)
!2107 = !DILocation(line: 58, column: 44, scope: !1631, inlinedAt: !2105)
!2108 = !DILocation(line: 58, column: 41, scope: !1631, inlinedAt: !2105)
!2109 = !DILocation(line: 408, column: 19, scope: !2077)
!2110 = !DILocation(line: 411, column: 19, scope: !2077)
!2111 = !DILocation(line: 413, column: 62, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2076, file: !429, line: 412, column: 17)
!2113 = !DILocation(line: 414, column: 64, scope: !2112)
!2114 = !DILocation(line: 414, column: 29, scope: !2112)
!2115 = !DILocation(line: 415, column: 64, scope: !2112)
!2116 = !DILocation(line: 415, column: 29, scope: !2112)
!2117 = !DILocation(line: 413, column: 23, scope: !2112)
!2118 = !DILocation(line: 413, column: 26, scope: !2112)
!2119 = !DILocation(line: 416, column: 19, scope: !2112)
!2120 = !DILocation(line: 424, column: 23, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2122, file: !429, line: 424, column: 23)
!2122 = distinct !DILexicalBlock(scope: !2123, file: !429, line: 420, column: 17)
!2123 = distinct !DILexicalBlock(scope: !2077, file: !429, line: 419, column: 19)
!2124 = !DILocation(line: 417, column: 17, scope: !2112)
!2125 = !DILocation(line: 0, scope: !2041)
!2126 = !DILocation(line: 419, column: 19, scope: !2123)
!2127 = !DILocation(line: 419, column: 25, scope: !2123)
!2128 = !DILocation(line: 419, column: 19, scope: !2077)
!2129 = !DILocation(line: 0, scope: !1640, inlinedAt: !2130)
!2130 = distinct !DILocation(line: 421, column: 24, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2122, file: !429, line: 421, column: 23)
!2132 = !DILocation(line: 0, scope: !1631, inlinedAt: !2133)
!2133 = distinct !DILocation(line: 64, column: 10, scope: !1640, inlinedAt: !2130)
!2134 = !DILocation(line: 58, column: 10, scope: !1631, inlinedAt: !2133)
!2135 = !DILocation(line: 58, column: 44, scope: !1631, inlinedAt: !2133)
!2136 = !DILocation(line: 58, column: 41, scope: !1631, inlinedAt: !2133)
!2137 = !DILocation(line: 421, column: 23, scope: !2122)
!2138 = !DILocation(line: 424, column: 23, scope: !2122)
!2139 = !DILocation(line: 426, column: 66, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2121, file: !429, line: 425, column: 21)
!2141 = !DILocation(line: 427, column: 33, scope: !2140)
!2142 = !DILocation(line: 426, column: 27, scope: !2140)
!2143 = !DILocation(line: 426, column: 30, scope: !2140)
!2144 = !DILocation(line: 428, column: 23, scope: !2140)
!2145 = !DILocation(line: 429, column: 21, scope: !2140)
!2146 = !DILocation(line: 434, column: 55, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2148, file: !429, line: 434, column: 23)
!2148 = distinct !DILexicalBlock(scope: !2123, file: !429, line: 432, column: 17)
!2149 = !DILocation(line: 434, column: 23, scope: !2148)
!2150 = !DILocation(line: 442, column: 3, scope: !1943)
!2151 = !DILocation(line: 443, column: 1, scope: !1943)
!2152 = !DISubprogram(name: "memchr", scope: !1063, file: !1063, line: 107, type: !2153, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2153 = !DISubroutineType(types: !2154)
!2154 = !{!131, !1091, !87, !133}
!2155 = distinct !DISubprogram(name: "base32_decode_alloc_ctx", scope: !429, file: !429, line: 556, type: !2156, scopeLine: 559, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !2158)
!2156 = !DISubroutineType(types: !2157)
!2157 = !{!196, !1655, !136, !438, !1096, !1343}
!2158 = !{!2159, !2160, !2161, !2162, !2163, !2164}
!2159 = !DILocalVariable(name: "ctx", arg: 1, scope: !2155, file: !429, line: 556, type: !1655)
!2160 = !DILocalVariable(name: "in", arg: 2, scope: !2155, file: !429, line: 557, type: !136)
!2161 = !DILocalVariable(name: "inlen", arg: 3, scope: !2155, file: !429, line: 557, type: !438)
!2162 = !DILocalVariable(name: "out", arg: 4, scope: !2155, file: !429, line: 557, type: !1096)
!2163 = !DILocalVariable(name: "outlen", arg: 5, scope: !2155, file: !429, line: 558, type: !1343)
!2164 = !DILocalVariable(name: "needlen", scope: !2155, file: !429, line: 565, type: !438)
!2165 = distinct !DIAssignID()
!2166 = !DILocation(line: 0, scope: !2155)
!2167 = !DILocation(line: 565, column: 3, scope: !2155)
!2168 = !DILocation(line: 565, column: 31, scope: !2155)
!2169 = !DILocation(line: 565, column: 21, scope: !2155)
!2170 = !DILocation(line: 565, column: 9, scope: !2155)
!2171 = distinct !DIAssignID()
!2172 = !DILocation(line: 0, scope: !1784, inlinedAt: !2173)
!2173 = distinct !DILocation(line: 567, column: 10, scope: !2155)
!2174 = !DILocation(line: 57, column: 26, scope: !1784, inlinedAt: !2173)
!2175 = !DILocation(line: 567, column: 8, scope: !2155)
!2176 = !DILocation(line: 568, column: 8, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2155, file: !429, line: 568, column: 7)
!2178 = !DILocation(line: 568, column: 7, scope: !2155)
!2179 = !DILocation(line: 571, column: 8, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2155, file: !429, line: 571, column: 7)
!2181 = !DILocation(line: 571, column: 7, scope: !2155)
!2182 = !DILocation(line: 573, column: 13, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2180, file: !429, line: 572, column: 5)
!2184 = !DILocation(line: 573, column: 7, scope: !2183)
!2185 = !DILocation(line: 574, column: 12, scope: !2183)
!2186 = !DILocation(line: 575, column: 7, scope: !2183)
!2187 = !DILocation(line: 578, column: 7, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2155, file: !429, line: 578, column: 7)
!2189 = !DILocation(line: 578, column: 7, scope: !2155)
!2190 = !DILocation(line: 579, column: 15, scope: !2188)
!2191 = !DILocation(line: 579, column: 13, scope: !2188)
!2192 = !DILocation(line: 579, column: 5, scope: !2188)
!2193 = !DILocation(line: 582, column: 1, scope: !2155)
!2194 = !DISubprogram(name: "free", scope: !956, file: !956, line: 752, type: !2195, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2195 = !DISubroutineType(types: !2196)
!2196 = !{null, !131}
!2197 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !456, file: !456, line: 50, type: !894, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !455, retainedNodes: !2198)
!2198 = !{!2199}
!2199 = !DILocalVariable(name: "file", arg: 1, scope: !2197, file: !456, line: 50, type: !136)
!2200 = !DILocation(line: 0, scope: !2197)
!2201 = !DILocation(line: 52, column: 13, scope: !2197)
!2202 = !DILocation(line: 53, column: 1, scope: !2197)
!2203 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !456, file: !456, line: 87, type: !2204, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !455, retainedNodes: !2206)
!2204 = !DISubroutineType(types: !2205)
!2205 = !{null, !196}
!2206 = !{!2207}
!2207 = !DILocalVariable(name: "ignore", arg: 1, scope: !2203, file: !456, line: 87, type: !196)
!2208 = !DILocation(line: 0, scope: !2203)
!2209 = !DILocation(line: 89, column: 16, scope: !2203)
!2210 = !{!2211, !2211, i64 0}
!2211 = !{!"_Bool", !875, i64 0}
!2212 = !DILocation(line: 90, column: 1, scope: !2203)
!2213 = distinct !DISubprogram(name: "close_stdout", scope: !456, file: !456, line: 116, type: !517, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !455, retainedNodes: !2214)
!2214 = !{!2215}
!2215 = !DILocalVariable(name: "write_error", scope: !2216, file: !456, line: 121, type: !136)
!2216 = distinct !DILexicalBlock(scope: !2217, file: !456, line: 120, column: 5)
!2217 = distinct !DILexicalBlock(scope: !2213, file: !456, line: 118, column: 7)
!2218 = !DILocation(line: 118, column: 21, scope: !2217)
!2219 = !DILocation(line: 118, column: 7, scope: !2217)
!2220 = !DILocation(line: 118, column: 29, scope: !2217)
!2221 = !DILocation(line: 119, column: 7, scope: !2217)
!2222 = !DILocation(line: 119, column: 12, scope: !2217)
!2223 = !{i8 0, i8 2}
!2224 = !DILocation(line: 119, column: 25, scope: !2217)
!2225 = !DILocation(line: 119, column: 28, scope: !2217)
!2226 = !DILocation(line: 119, column: 34, scope: !2217)
!2227 = !DILocation(line: 118, column: 7, scope: !2213)
!2228 = !DILocation(line: 121, column: 33, scope: !2216)
!2229 = !DILocation(line: 0, scope: !2216)
!2230 = !DILocation(line: 122, column: 11, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2216, file: !456, line: 122, column: 11)
!2232 = !DILocation(line: 0, scope: !2231)
!2233 = !DILocation(line: 122, column: 11, scope: !2216)
!2234 = !DILocation(line: 123, column: 9, scope: !2231)
!2235 = !DILocation(line: 126, column: 9, scope: !2231)
!2236 = !DILocation(line: 128, column: 14, scope: !2216)
!2237 = !DILocation(line: 128, column: 7, scope: !2216)
!2238 = !DILocation(line: 133, column: 42, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2213, file: !456, line: 133, column: 7)
!2240 = !DILocation(line: 133, column: 28, scope: !2239)
!2241 = !DILocation(line: 133, column: 50, scope: !2239)
!2242 = !DILocation(line: 133, column: 7, scope: !2213)
!2243 = !DILocation(line: 134, column: 12, scope: !2239)
!2244 = !DILocation(line: 134, column: 5, scope: !2239)
!2245 = !DILocation(line: 135, column: 1, scope: !2213)
!2246 = !DISubprogram(name: "_exit", scope: !2247, file: !2247, line: 624, type: !863, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2247 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!2248 = distinct !DISubprogram(name: "verror", scope: !471, file: !471, line: 251, type: !2249, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2251)
!2249 = !DISubroutineType(types: !2250)
!2250 = !{null, !87, !87, !136, !481}
!2251 = !{!2252, !2253, !2254, !2255}
!2252 = !DILocalVariable(name: "status", arg: 1, scope: !2248, file: !471, line: 251, type: !87)
!2253 = !DILocalVariable(name: "errnum", arg: 2, scope: !2248, file: !471, line: 251, type: !87)
!2254 = !DILocalVariable(name: "message", arg: 3, scope: !2248, file: !471, line: 251, type: !136)
!2255 = !DILocalVariable(name: "args", arg: 4, scope: !2248, file: !471, line: 251, type: !481)
!2256 = !DILocation(line: 0, scope: !2248)
!2257 = !DILocation(line: 261, column: 3, scope: !2248)
!2258 = !DILocation(line: 265, column: 7, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2248, file: !471, line: 265, column: 7)
!2260 = !DILocation(line: 265, column: 7, scope: !2248)
!2261 = !DILocation(line: 266, column: 5, scope: !2259)
!2262 = !DILocation(line: 272, column: 7, scope: !2263)
!2263 = distinct !DILexicalBlock(scope: !2259, file: !471, line: 268, column: 5)
!2264 = !DILocation(line: 276, column: 3, scope: !2248)
!2265 = !DILocation(line: 282, column: 1, scope: !2248)
!2266 = distinct !DISubprogram(name: "flush_stdout", scope: !471, file: !471, line: 163, type: !517, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2267)
!2267 = !{!2268}
!2268 = !DILocalVariable(name: "stdout_fd", scope: !2266, file: !471, line: 166, type: !87)
!2269 = !DILocation(line: 0, scope: !2266)
!2270 = !DILocalVariable(name: "fd", arg: 1, scope: !2271, file: !471, line: 145, type: !87)
!2271 = distinct !DISubprogram(name: "is_open", scope: !471, file: !471, line: 145, type: !1269, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2272)
!2272 = !{!2270}
!2273 = !DILocation(line: 0, scope: !2271, inlinedAt: !2274)
!2274 = distinct !DILocation(line: 182, column: 25, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2266, file: !471, line: 182, column: 7)
!2276 = !DILocation(line: 157, column: 15, scope: !2271, inlinedAt: !2274)
!2277 = !DILocation(line: 157, column: 12, scope: !2271, inlinedAt: !2274)
!2278 = !DILocation(line: 182, column: 7, scope: !2266)
!2279 = !DILocation(line: 184, column: 5, scope: !2275)
!2280 = !DILocation(line: 185, column: 1, scope: !2266)
!2281 = distinct !DISubprogram(name: "error_tail", scope: !471, file: !471, line: 219, type: !2249, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2282)
!2282 = !{!2283, !2284, !2285, !2286}
!2283 = !DILocalVariable(name: "status", arg: 1, scope: !2281, file: !471, line: 219, type: !87)
!2284 = !DILocalVariable(name: "errnum", arg: 2, scope: !2281, file: !471, line: 219, type: !87)
!2285 = !DILocalVariable(name: "message", arg: 3, scope: !2281, file: !471, line: 219, type: !136)
!2286 = !DILocalVariable(name: "args", arg: 4, scope: !2281, file: !471, line: 219, type: !481)
!2287 = distinct !DIAssignID()
!2288 = !DILocation(line: 0, scope: !2281)
!2289 = !DILocation(line: 229, column: 13, scope: !2281)
!2290 = !DILocalVariable(name: "__stream", arg: 1, scope: !2291, file: !930, line: 132, type: !2294)
!2291 = distinct !DISubprogram(name: "vfprintf", scope: !930, file: !930, line: 132, type: !2292, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2329)
!2292 = !DISubroutineType(types: !2293)
!2293 = !{!87, !2294, !437, !481}
!2294 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2295)
!2295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2296, size: 64)
!2296 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !211, line: 7, baseType: !2297)
!2297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !213, line: 49, size: 1728, elements: !2298)
!2298 = !{!2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328}
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2297, file: !213, line: 51, baseType: !87, size: 32)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2297, file: !213, line: 54, baseType: !130, size: 64, offset: 64)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2297, file: !213, line: 55, baseType: !130, size: 64, offset: 128)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2297, file: !213, line: 56, baseType: !130, size: 64, offset: 192)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2297, file: !213, line: 57, baseType: !130, size: 64, offset: 256)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2297, file: !213, line: 58, baseType: !130, size: 64, offset: 320)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2297, file: !213, line: 59, baseType: !130, size: 64, offset: 384)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2297, file: !213, line: 60, baseType: !130, size: 64, offset: 448)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2297, file: !213, line: 61, baseType: !130, size: 64, offset: 512)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2297, file: !213, line: 64, baseType: !130, size: 64, offset: 576)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2297, file: !213, line: 65, baseType: !130, size: 64, offset: 640)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2297, file: !213, line: 66, baseType: !130, size: 64, offset: 704)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2297, file: !213, line: 68, baseType: !228, size: 64, offset: 768)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2297, file: !213, line: 70, baseType: !2313, size: 64, offset: 832)
!2313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2297, size: 64)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2297, file: !213, line: 72, baseType: !87, size: 32, offset: 896)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2297, file: !213, line: 73, baseType: !87, size: 32, offset: 928)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2297, file: !213, line: 74, baseType: !235, size: 64, offset: 960)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2297, file: !213, line: 77, baseType: !132, size: 16, offset: 1024)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2297, file: !213, line: 78, baseType: !240, size: 8, offset: 1040)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2297, file: !213, line: 79, baseType: !54, size: 8, offset: 1048)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2297, file: !213, line: 81, baseType: !243, size: 64, offset: 1088)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2297, file: !213, line: 89, baseType: !246, size: 64, offset: 1152)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2297, file: !213, line: 91, baseType: !248, size: 64, offset: 1216)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2297, file: !213, line: 92, baseType: !251, size: 64, offset: 1280)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2297, file: !213, line: 93, baseType: !2313, size: 64, offset: 1344)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2297, file: !213, line: 94, baseType: !131, size: 64, offset: 1408)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2297, file: !213, line: 95, baseType: !133, size: 64, offset: 1472)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2297, file: !213, line: 96, baseType: !87, size: 32, offset: 1536)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2297, file: !213, line: 98, baseType: !258, size: 160, offset: 1568)
!2329 = !{!2290, !2330, !2331}
!2330 = !DILocalVariable(name: "__fmt", arg: 2, scope: !2291, file: !930, line: 133, type: !437)
!2331 = !DILocalVariable(name: "__ap", arg: 3, scope: !2291, file: !930, line: 133, type: !481)
!2332 = !DILocation(line: 0, scope: !2291, inlinedAt: !2333)
!2333 = distinct !DILocation(line: 229, column: 3, scope: !2281)
!2334 = !DILocation(line: 135, column: 10, scope: !2291, inlinedAt: !2333)
!2335 = !DILocation(line: 232, column: 3, scope: !2281)
!2336 = !DILocation(line: 233, column: 7, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2281, file: !471, line: 233, column: 7)
!2338 = !DILocation(line: 233, column: 7, scope: !2281)
!2339 = !DILocalVariable(name: "errbuf", scope: !2340, file: !471, line: 193, type: !2344)
!2340 = distinct !DISubprogram(name: "print_errno_message", scope: !471, file: !471, line: 188, type: !863, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2341)
!2341 = !{!2342, !2343, !2339}
!2342 = !DILocalVariable(name: "errnum", arg: 1, scope: !2340, file: !471, line: 188, type: !87)
!2343 = !DILocalVariable(name: "s", scope: !2340, file: !471, line: 190, type: !136)
!2344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !2345)
!2345 = !{!2346}
!2346 = !DISubrange(count: 1024)
!2347 = !DILocation(line: 0, scope: !2340, inlinedAt: !2348)
!2348 = distinct !DILocation(line: 234, column: 5, scope: !2337)
!2349 = !DILocation(line: 193, column: 3, scope: !2340, inlinedAt: !2348)
!2350 = !DILocation(line: 195, column: 7, scope: !2340, inlinedAt: !2348)
!2351 = !DILocation(line: 207, column: 9, scope: !2352, inlinedAt: !2348)
!2352 = distinct !DILexicalBlock(scope: !2340, file: !471, line: 207, column: 7)
!2353 = !DILocation(line: 207, column: 7, scope: !2340, inlinedAt: !2348)
!2354 = !DILocation(line: 208, column: 9, scope: !2352, inlinedAt: !2348)
!2355 = !DILocation(line: 208, column: 5, scope: !2352, inlinedAt: !2348)
!2356 = !DILocation(line: 214, column: 3, scope: !2340, inlinedAt: !2348)
!2357 = !DILocation(line: 216, column: 1, scope: !2340, inlinedAt: !2348)
!2358 = !DILocation(line: 234, column: 5, scope: !2337)
!2359 = !DILocation(line: 238, column: 3, scope: !2281)
!2360 = !DILocalVariable(name: "__c", arg: 1, scope: !2361, file: !1300, line: 101, type: !87)
!2361 = distinct !DISubprogram(name: "putc_unlocked", scope: !1300, file: !1300, line: 101, type: !2362, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2364)
!2362 = !DISubroutineType(types: !2363)
!2363 = !{!87, !87, !2295}
!2364 = !{!2360, !2365}
!2365 = !DILocalVariable(name: "__stream", arg: 2, scope: !2361, file: !1300, line: 101, type: !2295)
!2366 = !DILocation(line: 0, scope: !2361, inlinedAt: !2367)
!2367 = distinct !DILocation(line: 238, column: 3, scope: !2281)
!2368 = !DILocation(line: 103, column: 10, scope: !2361, inlinedAt: !2367)
!2369 = !DILocation(line: 240, column: 3, scope: !2281)
!2370 = !DILocation(line: 241, column: 7, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !2281, file: !471, line: 241, column: 7)
!2372 = !DILocation(line: 241, column: 7, scope: !2281)
!2373 = !DILocation(line: 242, column: 5, scope: !2371)
!2374 = !DILocation(line: 243, column: 1, scope: !2281)
!2375 = !DISubprogram(name: "__vfprintf_chk", scope: !930, file: !930, line: 96, type: !2376, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2376 = !DISubroutineType(types: !2377)
!2377 = !{!87, !2294, !87, !437, !481}
!2378 = !DISubprogram(name: "strerror_r", scope: !1063, file: !1063, line: 444, type: !2379, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2379 = !DISubroutineType(types: !2380)
!2380 = !{!130, !87, !130, !133}
!2381 = !DISubprogram(name: "fcntl", scope: !2382, file: !2382, line: 149, type: !2383, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2382 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!2383 = !DISubroutineType(types: !2384)
!2384 = !{!87, !87, !87, null}
!2385 = distinct !DISubprogram(name: "error", scope: !471, file: !471, line: 285, type: !2386, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2388)
!2386 = !DISubroutineType(types: !2387)
!2387 = !{null, !87, !87, !136, null}
!2388 = !{!2389, !2390, !2391, !2392}
!2389 = !DILocalVariable(name: "status", arg: 1, scope: !2385, file: !471, line: 285, type: !87)
!2390 = !DILocalVariable(name: "errnum", arg: 2, scope: !2385, file: !471, line: 285, type: !87)
!2391 = !DILocalVariable(name: "message", arg: 3, scope: !2385, file: !471, line: 285, type: !136)
!2392 = !DILocalVariable(name: "ap", scope: !2385, file: !471, line: 287, type: !2393)
!2393 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !938, line: 52, baseType: !2394)
!2394 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2395, line: 12, baseType: !2396)
!2395 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!2396 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !471, baseType: !2397)
!2397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !482, size: 192, elements: !55)
!2398 = distinct !DIAssignID()
!2399 = !DILocation(line: 0, scope: !2385)
!2400 = !DILocation(line: 287, column: 3, scope: !2385)
!2401 = !DILocation(line: 288, column: 3, scope: !2385)
!2402 = !DILocation(line: 289, column: 3, scope: !2385)
!2403 = !DILocation(line: 290, column: 3, scope: !2385)
!2404 = !DILocation(line: 291, column: 1, scope: !2385)
!2405 = !DILocation(line: 0, scope: !478)
!2406 = !DILocation(line: 302, column: 7, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !478, file: !471, line: 302, column: 7)
!2408 = !DILocation(line: 302, column: 7, scope: !478)
!2409 = !DILocation(line: 307, column: 11, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2411, file: !471, line: 307, column: 11)
!2411 = distinct !DILexicalBlock(scope: !2407, file: !471, line: 303, column: 5)
!2412 = !DILocation(line: 307, column: 27, scope: !2410)
!2413 = !DILocation(line: 308, column: 11, scope: !2410)
!2414 = !DILocation(line: 308, column: 28, scope: !2410)
!2415 = !DILocation(line: 308, column: 25, scope: !2410)
!2416 = !DILocation(line: 309, column: 15, scope: !2410)
!2417 = !DILocation(line: 309, column: 33, scope: !2410)
!2418 = !DILocation(line: 310, column: 19, scope: !2410)
!2419 = !DILocation(line: 311, column: 22, scope: !2410)
!2420 = !DILocation(line: 311, column: 56, scope: !2410)
!2421 = !DILocation(line: 307, column: 11, scope: !2411)
!2422 = !DILocation(line: 316, column: 21, scope: !2411)
!2423 = !DILocation(line: 317, column: 23, scope: !2411)
!2424 = !DILocation(line: 318, column: 5, scope: !2411)
!2425 = !DILocation(line: 327, column: 3, scope: !478)
!2426 = !DILocation(line: 331, column: 7, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !478, file: !471, line: 331, column: 7)
!2428 = !DILocation(line: 331, column: 7, scope: !478)
!2429 = !DILocation(line: 332, column: 5, scope: !2427)
!2430 = !DILocation(line: 338, column: 7, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2427, file: !471, line: 334, column: 5)
!2432 = !DILocation(line: 346, column: 3, scope: !478)
!2433 = !DILocation(line: 350, column: 3, scope: !478)
!2434 = !DILocation(line: 356, column: 1, scope: !478)
!2435 = distinct !DISubprogram(name: "error_at_line", scope: !471, file: !471, line: 359, type: !2436, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2438)
!2436 = !DISubroutineType(types: !2437)
!2437 = !{null, !87, !87, !136, !78, !136, null}
!2438 = !{!2439, !2440, !2441, !2442, !2443, !2444}
!2439 = !DILocalVariable(name: "status", arg: 1, scope: !2435, file: !471, line: 359, type: !87)
!2440 = !DILocalVariable(name: "errnum", arg: 2, scope: !2435, file: !471, line: 359, type: !87)
!2441 = !DILocalVariable(name: "file_name", arg: 3, scope: !2435, file: !471, line: 359, type: !136)
!2442 = !DILocalVariable(name: "line_number", arg: 4, scope: !2435, file: !471, line: 360, type: !78)
!2443 = !DILocalVariable(name: "message", arg: 5, scope: !2435, file: !471, line: 360, type: !136)
!2444 = !DILocalVariable(name: "ap", scope: !2435, file: !471, line: 362, type: !2393)
!2445 = distinct !DIAssignID()
!2446 = !DILocation(line: 0, scope: !2435)
!2447 = !DILocation(line: 362, column: 3, scope: !2435)
!2448 = !DILocation(line: 363, column: 3, scope: !2435)
!2449 = !DILocation(line: 364, column: 3, scope: !2435)
!2450 = !DILocation(line: 366, column: 3, scope: !2435)
!2451 = !DILocation(line: 367, column: 1, scope: !2435)
!2452 = distinct !DISubprogram(name: "fdadvise", scope: !775, file: !775, line: 25, type: !2453, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !2457)
!2453 = !DISubroutineType(types: !2454)
!2454 = !{null, !87, !2455, !2455, !2456}
!2455 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !938, line: 63, baseType: !235)
!2456 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !778, line: 51, baseType: !777)
!2457 = !{!2458, !2459, !2460, !2461}
!2458 = !DILocalVariable(name: "fd", arg: 1, scope: !2452, file: !775, line: 25, type: !87)
!2459 = !DILocalVariable(name: "offset", arg: 2, scope: !2452, file: !775, line: 25, type: !2455)
!2460 = !DILocalVariable(name: "len", arg: 3, scope: !2452, file: !775, line: 25, type: !2455)
!2461 = !DILocalVariable(name: "advice", arg: 4, scope: !2452, file: !775, line: 25, type: !2456)
!2462 = !DILocation(line: 0, scope: !2452)
!2463 = !DILocation(line: 28, column: 3, scope: !2452)
!2464 = !DILocation(line: 30, column: 1, scope: !2452)
!2465 = !DISubprogram(name: "posix_fadvise", scope: !2382, file: !2382, line: 273, type: !2466, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2466 = !DISubroutineType(types: !2467)
!2467 = !{!87, !87, !2455, !2455, !87}
!2468 = distinct !DISubprogram(name: "fadvise", scope: !775, file: !775, line: 33, type: !2469, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !2505)
!2469 = !DISubroutineType(types: !2470)
!2470 = !{null, !2471, !2456}
!2471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2472, size: 64)
!2472 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !211, line: 7, baseType: !2473)
!2473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !213, line: 49, size: 1728, elements: !2474)
!2474 = !{!2475, !2476, !2477, !2478, !2479, !2480, !2481, !2482, !2483, !2484, !2485, !2486, !2487, !2488, !2490, !2491, !2492, !2493, !2494, !2495, !2496, !2497, !2498, !2499, !2500, !2501, !2502, !2503, !2504}
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2473, file: !213, line: 51, baseType: !87, size: 32)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2473, file: !213, line: 54, baseType: !130, size: 64, offset: 64)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2473, file: !213, line: 55, baseType: !130, size: 64, offset: 128)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2473, file: !213, line: 56, baseType: !130, size: 64, offset: 192)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2473, file: !213, line: 57, baseType: !130, size: 64, offset: 256)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2473, file: !213, line: 58, baseType: !130, size: 64, offset: 320)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2473, file: !213, line: 59, baseType: !130, size: 64, offset: 384)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2473, file: !213, line: 60, baseType: !130, size: 64, offset: 448)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2473, file: !213, line: 61, baseType: !130, size: 64, offset: 512)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2473, file: !213, line: 64, baseType: !130, size: 64, offset: 576)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2473, file: !213, line: 65, baseType: !130, size: 64, offset: 640)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2473, file: !213, line: 66, baseType: !130, size: 64, offset: 704)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2473, file: !213, line: 68, baseType: !228, size: 64, offset: 768)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2473, file: !213, line: 70, baseType: !2489, size: 64, offset: 832)
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2473, file: !213, line: 72, baseType: !87, size: 32, offset: 896)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2473, file: !213, line: 73, baseType: !87, size: 32, offset: 928)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2473, file: !213, line: 74, baseType: !235, size: 64, offset: 960)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2473, file: !213, line: 77, baseType: !132, size: 16, offset: 1024)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2473, file: !213, line: 78, baseType: !240, size: 8, offset: 1040)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2473, file: !213, line: 79, baseType: !54, size: 8, offset: 1048)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2473, file: !213, line: 81, baseType: !243, size: 64, offset: 1088)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2473, file: !213, line: 89, baseType: !246, size: 64, offset: 1152)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2473, file: !213, line: 91, baseType: !248, size: 64, offset: 1216)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2473, file: !213, line: 92, baseType: !251, size: 64, offset: 1280)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2473, file: !213, line: 93, baseType: !2489, size: 64, offset: 1344)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2473, file: !213, line: 94, baseType: !131, size: 64, offset: 1408)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2473, file: !213, line: 95, baseType: !133, size: 64, offset: 1472)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2473, file: !213, line: 96, baseType: !87, size: 32, offset: 1536)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2473, file: !213, line: 98, baseType: !258, size: 160, offset: 1568)
!2505 = !{!2506, !2507}
!2506 = !DILocalVariable(name: "fp", arg: 1, scope: !2468, file: !775, line: 33, type: !2471)
!2507 = !DILocalVariable(name: "advice", arg: 2, scope: !2468, file: !775, line: 33, type: !2456)
!2508 = !DILocation(line: 0, scope: !2468)
!2509 = !DILocation(line: 35, column: 7, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2468, file: !775, line: 35, column: 7)
!2511 = !DILocation(line: 35, column: 7, scope: !2468)
!2512 = !DILocation(line: 36, column: 15, scope: !2510)
!2513 = !DILocation(line: 0, scope: !2452, inlinedAt: !2514)
!2514 = distinct !DILocation(line: 36, column: 5, scope: !2510)
!2515 = !DILocation(line: 28, column: 3, scope: !2452, inlinedAt: !2514)
!2516 = !DILocation(line: 36, column: 5, scope: !2510)
!2517 = !DILocation(line: 37, column: 1, scope: !2468)
!2518 = !DISubprogram(name: "fileno", scope: !938, file: !938, line: 809, type: !2519, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2519 = !DISubroutineType(types: !2520)
!2520 = !{!87, !2471}
!2521 = distinct !DISubprogram(name: "rpl_fclose", scope: !780, file: !780, line: 58, type: !2522, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !2558)
!2522 = !DISubroutineType(types: !2523)
!2523 = !{!87, !2524}
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!2525 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !211, line: 7, baseType: !2526)
!2526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !213, line: 49, size: 1728, elements: !2527)
!2527 = !{!2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2539, !2540, !2541, !2543, !2544, !2545, !2546, !2547, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557}
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2526, file: !213, line: 51, baseType: !87, size: 32)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2526, file: !213, line: 54, baseType: !130, size: 64, offset: 64)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2526, file: !213, line: 55, baseType: !130, size: 64, offset: 128)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2526, file: !213, line: 56, baseType: !130, size: 64, offset: 192)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2526, file: !213, line: 57, baseType: !130, size: 64, offset: 256)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2526, file: !213, line: 58, baseType: !130, size: 64, offset: 320)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2526, file: !213, line: 59, baseType: !130, size: 64, offset: 384)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2526, file: !213, line: 60, baseType: !130, size: 64, offset: 448)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2526, file: !213, line: 61, baseType: !130, size: 64, offset: 512)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2526, file: !213, line: 64, baseType: !130, size: 64, offset: 576)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2526, file: !213, line: 65, baseType: !130, size: 64, offset: 640)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2526, file: !213, line: 66, baseType: !130, size: 64, offset: 704)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2526, file: !213, line: 68, baseType: !228, size: 64, offset: 768)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2526, file: !213, line: 70, baseType: !2542, size: 64, offset: 832)
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2526, file: !213, line: 72, baseType: !87, size: 32, offset: 896)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2526, file: !213, line: 73, baseType: !87, size: 32, offset: 928)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2526, file: !213, line: 74, baseType: !235, size: 64, offset: 960)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2526, file: !213, line: 77, baseType: !132, size: 16, offset: 1024)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2526, file: !213, line: 78, baseType: !240, size: 8, offset: 1040)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2526, file: !213, line: 79, baseType: !54, size: 8, offset: 1048)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2526, file: !213, line: 81, baseType: !243, size: 64, offset: 1088)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2526, file: !213, line: 89, baseType: !246, size: 64, offset: 1152)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2526, file: !213, line: 91, baseType: !248, size: 64, offset: 1216)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2526, file: !213, line: 92, baseType: !251, size: 64, offset: 1280)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2526, file: !213, line: 93, baseType: !2542, size: 64, offset: 1344)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2526, file: !213, line: 94, baseType: !131, size: 64, offset: 1408)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2526, file: !213, line: 95, baseType: !133, size: 64, offset: 1472)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2526, file: !213, line: 96, baseType: !87, size: 32, offset: 1536)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2526, file: !213, line: 98, baseType: !258, size: 160, offset: 1568)
!2558 = !{!2559, !2560, !2561, !2562}
!2559 = !DILocalVariable(name: "fp", arg: 1, scope: !2521, file: !780, line: 58, type: !2524)
!2560 = !DILocalVariable(name: "saved_errno", scope: !2521, file: !780, line: 60, type: !87)
!2561 = !DILocalVariable(name: "fd", scope: !2521, file: !780, line: 63, type: !87)
!2562 = !DILocalVariable(name: "result", scope: !2521, file: !780, line: 74, type: !87)
!2563 = !DILocation(line: 0, scope: !2521)
!2564 = !DILocation(line: 63, column: 12, scope: !2521)
!2565 = !DILocation(line: 64, column: 10, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2521, file: !780, line: 64, column: 7)
!2567 = !DILocation(line: 64, column: 7, scope: !2521)
!2568 = !DILocation(line: 65, column: 12, scope: !2566)
!2569 = !DILocation(line: 65, column: 5, scope: !2566)
!2570 = !DILocation(line: 70, column: 9, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !2521, file: !780, line: 70, column: 7)
!2572 = !DILocation(line: 70, column: 23, scope: !2571)
!2573 = !DILocation(line: 70, column: 33, scope: !2571)
!2574 = !DILocation(line: 70, column: 26, scope: !2571)
!2575 = !DILocation(line: 70, column: 59, scope: !2571)
!2576 = !DILocation(line: 71, column: 7, scope: !2571)
!2577 = !DILocation(line: 71, column: 10, scope: !2571)
!2578 = !DILocation(line: 70, column: 7, scope: !2521)
!2579 = !DILocation(line: 100, column: 12, scope: !2521)
!2580 = !DILocation(line: 105, column: 7, scope: !2521)
!2581 = !DILocation(line: 72, column: 19, scope: !2571)
!2582 = !DILocation(line: 105, column: 19, scope: !2583)
!2583 = distinct !DILexicalBlock(scope: !2521, file: !780, line: 105, column: 7)
!2584 = !DILocation(line: 107, column: 13, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2583, file: !780, line: 106, column: 5)
!2586 = !DILocation(line: 109, column: 5, scope: !2585)
!2587 = !DILocation(line: 112, column: 1, scope: !2521)
!2588 = !DISubprogram(name: "fclose", scope: !938, file: !938, line: 178, type: !2522, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2589 = !DISubprogram(name: "__freading", scope: !2590, file: !2590, line: 51, type: !2522, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2590 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!2591 = !DISubprogram(name: "lseek", scope: !2247, file: !2247, line: 339, type: !2592, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2592 = !DISubroutineType(types: !2593)
!2593 = !{!235, !87, !235, !87}
!2594 = distinct !DISubprogram(name: "rpl_fflush", scope: !782, file: !782, line: 130, type: !2595, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !781, retainedNodes: !2631)
!2595 = !DISubroutineType(types: !2596)
!2596 = !{!87, !2597}
!2597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2598, size: 64)
!2598 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !211, line: 7, baseType: !2599)
!2599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !213, line: 49, size: 1728, elements: !2600)
!2600 = !{!2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608, !2609, !2610, !2611, !2612, !2613, !2614, !2616, !2617, !2618, !2619, !2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627, !2628, !2629, !2630}
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2599, file: !213, line: 51, baseType: !87, size: 32)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2599, file: !213, line: 54, baseType: !130, size: 64, offset: 64)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2599, file: !213, line: 55, baseType: !130, size: 64, offset: 128)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2599, file: !213, line: 56, baseType: !130, size: 64, offset: 192)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2599, file: !213, line: 57, baseType: !130, size: 64, offset: 256)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2599, file: !213, line: 58, baseType: !130, size: 64, offset: 320)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2599, file: !213, line: 59, baseType: !130, size: 64, offset: 384)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2599, file: !213, line: 60, baseType: !130, size: 64, offset: 448)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2599, file: !213, line: 61, baseType: !130, size: 64, offset: 512)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2599, file: !213, line: 64, baseType: !130, size: 64, offset: 576)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2599, file: !213, line: 65, baseType: !130, size: 64, offset: 640)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2599, file: !213, line: 66, baseType: !130, size: 64, offset: 704)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2599, file: !213, line: 68, baseType: !228, size: 64, offset: 768)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2599, file: !213, line: 70, baseType: !2615, size: 64, offset: 832)
!2615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2599, size: 64)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2599, file: !213, line: 72, baseType: !87, size: 32, offset: 896)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2599, file: !213, line: 73, baseType: !87, size: 32, offset: 928)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2599, file: !213, line: 74, baseType: !235, size: 64, offset: 960)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2599, file: !213, line: 77, baseType: !132, size: 16, offset: 1024)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2599, file: !213, line: 78, baseType: !240, size: 8, offset: 1040)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2599, file: !213, line: 79, baseType: !54, size: 8, offset: 1048)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2599, file: !213, line: 81, baseType: !243, size: 64, offset: 1088)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2599, file: !213, line: 89, baseType: !246, size: 64, offset: 1152)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2599, file: !213, line: 91, baseType: !248, size: 64, offset: 1216)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2599, file: !213, line: 92, baseType: !251, size: 64, offset: 1280)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2599, file: !213, line: 93, baseType: !2615, size: 64, offset: 1344)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2599, file: !213, line: 94, baseType: !131, size: 64, offset: 1408)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2599, file: !213, line: 95, baseType: !133, size: 64, offset: 1472)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2599, file: !213, line: 96, baseType: !87, size: 32, offset: 1536)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2599, file: !213, line: 98, baseType: !258, size: 160, offset: 1568)
!2631 = !{!2632}
!2632 = !DILocalVariable(name: "stream", arg: 1, scope: !2594, file: !782, line: 130, type: !2597)
!2633 = !DILocation(line: 0, scope: !2594)
!2634 = !DILocation(line: 151, column: 14, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2594, file: !782, line: 151, column: 7)
!2636 = !DILocation(line: 151, column: 22, scope: !2635)
!2637 = !DILocation(line: 151, column: 27, scope: !2635)
!2638 = !DILocation(line: 151, column: 7, scope: !2594)
!2639 = !DILocation(line: 152, column: 12, scope: !2635)
!2640 = !DILocation(line: 152, column: 5, scope: !2635)
!2641 = !DILocalVariable(name: "fp", arg: 1, scope: !2642, file: !782, line: 42, type: !2597)
!2642 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !782, file: !782, line: 42, type: !2643, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !781, retainedNodes: !2645)
!2643 = !DISubroutineType(types: !2644)
!2644 = !{null, !2597}
!2645 = !{!2641}
!2646 = !DILocation(line: 0, scope: !2642, inlinedAt: !2647)
!2647 = distinct !DILocation(line: 157, column: 3, scope: !2594)
!2648 = !DILocation(line: 44, column: 12, scope: !2649, inlinedAt: !2647)
!2649 = distinct !DILexicalBlock(scope: !2642, file: !782, line: 44, column: 7)
!2650 = !DILocation(line: 44, column: 19, scope: !2649, inlinedAt: !2647)
!2651 = !DILocation(line: 44, column: 7, scope: !2642, inlinedAt: !2647)
!2652 = !DILocation(line: 46, column: 5, scope: !2649, inlinedAt: !2647)
!2653 = !DILocation(line: 159, column: 10, scope: !2594)
!2654 = !DILocation(line: 159, column: 3, scope: !2594)
!2655 = !DILocation(line: 236, column: 1, scope: !2594)
!2656 = !DISubprogram(name: "fflush", scope: !938, file: !938, line: 230, type: !2595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2657 = distinct !DISubprogram(name: "fpurge", scope: !785, file: !785, line: 32, type: !2658, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !2694)
!2658 = !DISubroutineType(types: !2659)
!2659 = !{!87, !2660}
!2660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2661, size: 64)
!2661 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !211, line: 7, baseType: !2662)
!2662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !213, line: 49, size: 1728, elements: !2663)
!2663 = !{!2664, !2665, !2666, !2667, !2668, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689, !2690, !2691, !2692, !2693}
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2662, file: !213, line: 51, baseType: !87, size: 32)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2662, file: !213, line: 54, baseType: !130, size: 64, offset: 64)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2662, file: !213, line: 55, baseType: !130, size: 64, offset: 128)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2662, file: !213, line: 56, baseType: !130, size: 64, offset: 192)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2662, file: !213, line: 57, baseType: !130, size: 64, offset: 256)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2662, file: !213, line: 58, baseType: !130, size: 64, offset: 320)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2662, file: !213, line: 59, baseType: !130, size: 64, offset: 384)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2662, file: !213, line: 60, baseType: !130, size: 64, offset: 448)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2662, file: !213, line: 61, baseType: !130, size: 64, offset: 512)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2662, file: !213, line: 64, baseType: !130, size: 64, offset: 576)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2662, file: !213, line: 65, baseType: !130, size: 64, offset: 640)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2662, file: !213, line: 66, baseType: !130, size: 64, offset: 704)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2662, file: !213, line: 68, baseType: !228, size: 64, offset: 768)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2662, file: !213, line: 70, baseType: !2678, size: 64, offset: 832)
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2662, size: 64)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2662, file: !213, line: 72, baseType: !87, size: 32, offset: 896)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2662, file: !213, line: 73, baseType: !87, size: 32, offset: 928)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2662, file: !213, line: 74, baseType: !235, size: 64, offset: 960)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2662, file: !213, line: 77, baseType: !132, size: 16, offset: 1024)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2662, file: !213, line: 78, baseType: !240, size: 8, offset: 1040)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2662, file: !213, line: 79, baseType: !54, size: 8, offset: 1048)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2662, file: !213, line: 81, baseType: !243, size: 64, offset: 1088)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2662, file: !213, line: 89, baseType: !246, size: 64, offset: 1152)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2662, file: !213, line: 91, baseType: !248, size: 64, offset: 1216)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2662, file: !213, line: 92, baseType: !251, size: 64, offset: 1280)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2662, file: !213, line: 93, baseType: !2678, size: 64, offset: 1344)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2662, file: !213, line: 94, baseType: !131, size: 64, offset: 1408)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2662, file: !213, line: 95, baseType: !133, size: 64, offset: 1472)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2662, file: !213, line: 96, baseType: !87, size: 32, offset: 1536)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2662, file: !213, line: 98, baseType: !258, size: 160, offset: 1568)
!2694 = !{!2695}
!2695 = !DILocalVariable(name: "fp", arg: 1, scope: !2657, file: !785, line: 32, type: !2660)
!2696 = !DILocation(line: 0, scope: !2657)
!2697 = !DILocation(line: 36, column: 3, scope: !2657)
!2698 = !DILocation(line: 38, column: 3, scope: !2657)
!2699 = !DISubprogram(name: "__fpurge", scope: !2590, file: !2590, line: 72, type: !2700, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2700 = !DISubroutineType(types: !2701)
!2701 = !{null, !2660}
!2702 = distinct !DISubprogram(name: "rpl_fseeko", scope: !787, file: !787, line: 28, type: !2703, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !786, retainedNodes: !2739)
!2703 = !DISubroutineType(types: !2704)
!2704 = !{!87, !2705, !2455, !87}
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2706, size: 64)
!2706 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !211, line: 7, baseType: !2707)
!2707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !213, line: 49, size: 1728, elements: !2708)
!2708 = !{!2709, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2724, !2725, !2726, !2727, !2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2736, !2737, !2738}
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2707, file: !213, line: 51, baseType: !87, size: 32)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2707, file: !213, line: 54, baseType: !130, size: 64, offset: 64)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2707, file: !213, line: 55, baseType: !130, size: 64, offset: 128)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2707, file: !213, line: 56, baseType: !130, size: 64, offset: 192)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2707, file: !213, line: 57, baseType: !130, size: 64, offset: 256)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2707, file: !213, line: 58, baseType: !130, size: 64, offset: 320)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2707, file: !213, line: 59, baseType: !130, size: 64, offset: 384)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2707, file: !213, line: 60, baseType: !130, size: 64, offset: 448)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2707, file: !213, line: 61, baseType: !130, size: 64, offset: 512)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2707, file: !213, line: 64, baseType: !130, size: 64, offset: 576)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2707, file: !213, line: 65, baseType: !130, size: 64, offset: 640)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2707, file: !213, line: 66, baseType: !130, size: 64, offset: 704)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2707, file: !213, line: 68, baseType: !228, size: 64, offset: 768)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2707, file: !213, line: 70, baseType: !2723, size: 64, offset: 832)
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2707, size: 64)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2707, file: !213, line: 72, baseType: !87, size: 32, offset: 896)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2707, file: !213, line: 73, baseType: !87, size: 32, offset: 928)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2707, file: !213, line: 74, baseType: !235, size: 64, offset: 960)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2707, file: !213, line: 77, baseType: !132, size: 16, offset: 1024)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2707, file: !213, line: 78, baseType: !240, size: 8, offset: 1040)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2707, file: !213, line: 79, baseType: !54, size: 8, offset: 1048)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2707, file: !213, line: 81, baseType: !243, size: 64, offset: 1088)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2707, file: !213, line: 89, baseType: !246, size: 64, offset: 1152)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2707, file: !213, line: 91, baseType: !248, size: 64, offset: 1216)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2707, file: !213, line: 92, baseType: !251, size: 64, offset: 1280)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2707, file: !213, line: 93, baseType: !2723, size: 64, offset: 1344)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2707, file: !213, line: 94, baseType: !131, size: 64, offset: 1408)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2707, file: !213, line: 95, baseType: !133, size: 64, offset: 1472)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2707, file: !213, line: 96, baseType: !87, size: 32, offset: 1536)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2707, file: !213, line: 98, baseType: !258, size: 160, offset: 1568)
!2739 = !{!2740, !2741, !2742, !2743}
!2740 = !DILocalVariable(name: "fp", arg: 1, scope: !2702, file: !787, line: 28, type: !2705)
!2741 = !DILocalVariable(name: "offset", arg: 2, scope: !2702, file: !787, line: 28, type: !2455)
!2742 = !DILocalVariable(name: "whence", arg: 3, scope: !2702, file: !787, line: 28, type: !87)
!2743 = !DILocalVariable(name: "pos", scope: !2744, file: !787, line: 123, type: !2455)
!2744 = distinct !DILexicalBlock(scope: !2745, file: !787, line: 119, column: 5)
!2745 = distinct !DILexicalBlock(scope: !2702, file: !787, line: 55, column: 7)
!2746 = !DILocation(line: 0, scope: !2702)
!2747 = !DILocation(line: 55, column: 12, scope: !2745)
!2748 = !{!1309, !874, i64 16}
!2749 = !DILocation(line: 55, column: 33, scope: !2745)
!2750 = !{!1309, !874, i64 8}
!2751 = !DILocation(line: 55, column: 25, scope: !2745)
!2752 = !DILocation(line: 56, column: 7, scope: !2745)
!2753 = !DILocation(line: 56, column: 15, scope: !2745)
!2754 = !DILocation(line: 56, column: 37, scope: !2745)
!2755 = !{!1309, !874, i64 32}
!2756 = !DILocation(line: 56, column: 29, scope: !2745)
!2757 = !DILocation(line: 57, column: 7, scope: !2745)
!2758 = !DILocation(line: 57, column: 15, scope: !2745)
!2759 = !{!1309, !874, i64 72}
!2760 = !DILocation(line: 57, column: 29, scope: !2745)
!2761 = !DILocation(line: 55, column: 7, scope: !2702)
!2762 = !DILocation(line: 123, column: 26, scope: !2744)
!2763 = !DILocation(line: 123, column: 19, scope: !2744)
!2764 = !DILocation(line: 0, scope: !2744)
!2765 = !DILocation(line: 124, column: 15, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2744, file: !787, line: 124, column: 11)
!2767 = !DILocation(line: 124, column: 11, scope: !2744)
!2768 = !DILocation(line: 135, column: 19, scope: !2744)
!2769 = !DILocation(line: 136, column: 12, scope: !2744)
!2770 = !DILocation(line: 136, column: 20, scope: !2744)
!2771 = !{!1309, !1310, i64 144}
!2772 = !DILocation(line: 167, column: 7, scope: !2744)
!2773 = !DILocation(line: 169, column: 10, scope: !2702)
!2774 = !DILocation(line: 169, column: 3, scope: !2702)
!2775 = !DILocation(line: 170, column: 1, scope: !2702)
!2776 = !DISubprogram(name: "fseeko", scope: !938, file: !938, line: 736, type: !2777, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2777 = !DISubroutineType(types: !2778)
!2778 = !{!87, !2705, !235, !87}
!2779 = distinct !DISubprogram(name: "getprogname", scope: !789, file: !789, line: 54, type: !2780, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788)
!2780 = !DISubroutineType(types: !2781)
!2781 = !{!136}
!2782 = !DILocation(line: 58, column: 10, scope: !2779)
!2783 = !DILocation(line: 58, column: 3, scope: !2779)
!2784 = distinct !DISubprogram(name: "set_program_name", scope: !522, file: !522, line: 37, type: !894, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !521, retainedNodes: !2785)
!2785 = !{!2786, !2787, !2788}
!2786 = !DILocalVariable(name: "argv0", arg: 1, scope: !2784, file: !522, line: 37, type: !136)
!2787 = !DILocalVariable(name: "slash", scope: !2784, file: !522, line: 44, type: !136)
!2788 = !DILocalVariable(name: "base", scope: !2784, file: !522, line: 45, type: !136)
!2789 = !DILocation(line: 0, scope: !2784)
!2790 = !DILocation(line: 44, column: 23, scope: !2784)
!2791 = !DILocation(line: 45, column: 22, scope: !2784)
!2792 = !DILocation(line: 46, column: 17, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !2784, file: !522, line: 46, column: 7)
!2794 = !DILocation(line: 46, column: 9, scope: !2793)
!2795 = !DILocation(line: 46, column: 25, scope: !2793)
!2796 = !DILocation(line: 46, column: 40, scope: !2793)
!2797 = !DILocalVariable(name: "__s1", arg: 1, scope: !2798, file: !956, line: 974, type: !1091)
!2798 = distinct !DISubprogram(name: "memeq", scope: !956, file: !956, line: 974, type: !2799, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !521, retainedNodes: !2801)
!2799 = !DISubroutineType(types: !2800)
!2800 = !{!196, !1091, !1091, !133}
!2801 = !{!2797, !2802, !2803}
!2802 = !DILocalVariable(name: "__s2", arg: 2, scope: !2798, file: !956, line: 974, type: !1091)
!2803 = !DILocalVariable(name: "__n", arg: 3, scope: !2798, file: !956, line: 974, type: !133)
!2804 = !DILocation(line: 0, scope: !2798, inlinedAt: !2805)
!2805 = distinct !DILocation(line: 46, column: 28, scope: !2793)
!2806 = !DILocation(line: 976, column: 11, scope: !2798, inlinedAt: !2805)
!2807 = !DILocation(line: 976, column: 10, scope: !2798, inlinedAt: !2805)
!2808 = !DILocation(line: 46, column: 7, scope: !2784)
!2809 = !DILocation(line: 49, column: 11, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !2811, file: !522, line: 49, column: 11)
!2811 = distinct !DILexicalBlock(scope: !2793, file: !522, line: 47, column: 5)
!2812 = !DILocation(line: 49, column: 36, scope: !2810)
!2813 = !DILocation(line: 49, column: 11, scope: !2811)
!2814 = !DILocation(line: 65, column: 16, scope: !2784)
!2815 = !DILocation(line: 71, column: 27, scope: !2784)
!2816 = !DILocation(line: 74, column: 33, scope: !2784)
!2817 = !DILocation(line: 76, column: 1, scope: !2784)
!2818 = !DISubprogram(name: "strrchr", scope: !1063, file: !1063, line: 273, type: !1078, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2819 = distinct !DIAssignID()
!2820 = !DILocation(line: 0, scope: !530)
!2821 = distinct !DIAssignID()
!2822 = !DILocation(line: 40, column: 29, scope: !530)
!2823 = !DILocation(line: 41, column: 19, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !530, file: !531, line: 41, column: 7)
!2825 = !DILocation(line: 41, column: 7, scope: !530)
!2826 = !DILocation(line: 47, column: 3, scope: !530)
!2827 = !DILocation(line: 48, column: 3, scope: !530)
!2828 = !DILocalVariable(name: "ps", arg: 1, scope: !2829, file: !2830, line: 1135, type: !2833)
!2829 = distinct !DISubprogram(name: "mbszero", scope: !2830, file: !2830, line: 1135, type: !2831, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !534, retainedNodes: !2834)
!2830 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2831 = !DISubroutineType(types: !2832)
!2832 = !{null, !2833}
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!2834 = !{!2828}
!2835 = !DILocation(line: 0, scope: !2829, inlinedAt: !2836)
!2836 = distinct !DILocation(line: 48, column: 18, scope: !530)
!2837 = !DILocalVariable(name: "__dest", arg: 1, scope: !2838, file: !1283, line: 57, type: !131)
!2838 = distinct !DISubprogram(name: "memset", scope: !1283, file: !1283, line: 57, type: !2839, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !534, retainedNodes: !2841)
!2839 = !DISubroutineType(types: !2840)
!2840 = !{!131, !131, !87, !133}
!2841 = !{!2837, !2842, !2843}
!2842 = !DILocalVariable(name: "__ch", arg: 2, scope: !2838, file: !1283, line: 57, type: !87)
!2843 = !DILocalVariable(name: "__len", arg: 3, scope: !2838, file: !1283, line: 57, type: !133)
!2844 = !DILocation(line: 0, scope: !2838, inlinedAt: !2845)
!2845 = distinct !DILocation(line: 1137, column: 3, scope: !2829, inlinedAt: !2836)
!2846 = !DILocation(line: 59, column: 10, scope: !2838, inlinedAt: !2845)
!2847 = !DILocation(line: 49, column: 7, scope: !2848)
!2848 = distinct !DILexicalBlock(scope: !530, file: !531, line: 49, column: 7)
!2849 = !DILocation(line: 49, column: 39, scope: !2848)
!2850 = !DILocation(line: 49, column: 44, scope: !2848)
!2851 = !DILocation(line: 54, column: 1, scope: !530)
!2852 = !DISubprogram(name: "mbrtoc32", scope: !542, file: !542, line: 57, type: !2853, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2853 = !DISubroutineType(types: !2854)
!2854 = !{!133, !2855, !437, !133, !2857}
!2855 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2856)
!2856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!2857 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2833)
!2858 = distinct !DISubprogram(name: "clone_quoting_options", scope: !561, file: !561, line: 113, type: !2859, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !582, retainedNodes: !2862)
!2859 = !DISubroutineType(types: !2860)
!2860 = !{!2861, !2861}
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!2862 = !{!2863, !2864, !2865}
!2863 = !DILocalVariable(name: "o", arg: 1, scope: !2858, file: !561, line: 113, type: !2861)
!2864 = !DILocalVariable(name: "saved_errno", scope: !2858, file: !561, line: 115, type: !87)
!2865 = !DILocalVariable(name: "p", scope: !2858, file: !561, line: 116, type: !2861)
!2866 = !DILocation(line: 0, scope: !2858)
!2867 = !DILocation(line: 115, column: 21, scope: !2858)
!2868 = !DILocation(line: 116, column: 40, scope: !2858)
!2869 = !DILocation(line: 116, column: 31, scope: !2858)
!2870 = !DILocation(line: 118, column: 9, scope: !2858)
!2871 = !DILocation(line: 119, column: 3, scope: !2858)
!2872 = distinct !DISubprogram(name: "get_quoting_style", scope: !561, file: !561, line: 124, type: !2873, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !582, retainedNodes: !2877)
!2873 = !DISubroutineType(types: !2874)
!2874 = !{!584, !2875}
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2876, size: 64)
!2876 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !599)
!2877 = !{!2878}
!2878 = !DILocalVariable(name: "o", arg: 1, scope: !2872, file: !561, line: 124, type: !2875)
!2879 = !DILocation(line: 0, scope: !2872)
!2880 = !DILocation(line: 126, column: 11, scope: !2872)
!2881 = !DILocation(line: 126, column: 46, scope: !2872)
!2882 = !{!2883, !944, i64 0}
!2883 = !{!"quoting_options", !944, i64 0, !944, i64 4, !875, i64 8, !874, i64 40, !874, i64 48}
!2884 = !DILocation(line: 126, column: 3, scope: !2872)
!2885 = distinct !DISubprogram(name: "set_quoting_style", scope: !561, file: !561, line: 132, type: !2886, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !582, retainedNodes: !2888)
!2886 = !DISubroutineType(types: !2887)
!2887 = !{null, !2861, !584}
!2888 = !{!2889, !2890}
!2889 = !DILocalVariable(name: "o", arg: 1, scope: !2885, file: !561, line: 132, type: !2861)
!2890 = !DILocalVariable(name: "s", arg: 2, scope: !2885, file: !561, line: 132, type: !584)
!2891 = !DILocation(line: 0, scope: !2885)
!2892 = !DILocation(line: 134, column: 4, scope: !2885)
!2893 = !DILocation(line: 134, column: 45, scope: !2885)
!2894 = !DILocation(line: 135, column: 1, scope: !2885)
!2895 = distinct !DISubprogram(name: "set_char_quoting", scope: !561, file: !561, line: 143, type: !2896, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !582, retainedNodes: !2898)
!2896 = !DISubroutineType(types: !2897)
!2897 = !{!87, !2861, !4, !87}
!2898 = !{!2899, !2900, !2901, !2902, !2903, !2905, !2906}
!2899 = !DILocalVariable(name: "o", arg: 1, scope: !2895, file: !561, line: 143, type: !2861)
!2900 = !DILocalVariable(name: "c", arg: 2, scope: !2895, file: !561, line: 143, type: !4)
!2901 = !DILocalVariable(name: "i", arg: 3, scope: !2895, file: !561, line: 143, type: !87)
!2902 = !DILocalVariable(name: "uc", scope: !2895, file: !561, line: 145, type: !138)
!2903 = !DILocalVariable(name: "p", scope: !2895, file: !561, line: 146, type: !2904)
!2904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!2905 = !DILocalVariable(name: "shift", scope: !2895, file: !561, line: 148, type: !87)
!2906 = !DILocalVariable(name: "r", scope: !2895, file: !561, line: 149, type: !78)
!2907 = !DILocation(line: 0, scope: !2895)
!2908 = !DILocation(line: 147, column: 6, scope: !2895)
!2909 = !DILocation(line: 147, column: 41, scope: !2895)
!2910 = !DILocation(line: 147, column: 62, scope: !2895)
!2911 = !DILocation(line: 147, column: 57, scope: !2895)
!2912 = !DILocation(line: 148, column: 15, scope: !2895)
!2913 = !DILocation(line: 149, column: 21, scope: !2895)
!2914 = !DILocation(line: 149, column: 24, scope: !2895)
!2915 = !DILocation(line: 149, column: 34, scope: !2895)
!2916 = !DILocation(line: 150, column: 19, scope: !2895)
!2917 = !DILocation(line: 150, column: 24, scope: !2895)
!2918 = !DILocation(line: 150, column: 6, scope: !2895)
!2919 = !DILocation(line: 151, column: 3, scope: !2895)
!2920 = distinct !DISubprogram(name: "set_quoting_flags", scope: !561, file: !561, line: 159, type: !2921, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !582, retainedNodes: !2923)
!2921 = !DISubroutineType(types: !2922)
!2922 = !{!87, !2861, !87}
!2923 = !{!2924, !2925, !2926}
!2924 = !DILocalVariable(name: "o", arg: 1, scope: !2920, file: !561, line: 159, type: !2861)
!2925 = !DILocalVariable(name: "i", arg: 2, scope: !2920, file: !561, line: 159, type: !87)
!2926 = !DILocalVariable(name: "r", scope: !2920, file: !561, line: 163, type: !87)
!2927 = !DILocation(line: 0, scope: !2920)
!2928 = !DILocation(line: 161, column: 8, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !2920, file: !561, line: 161, column: 7)
!2930 = !DILocation(line: 161, column: 7, scope: !2920)
!2931 = !DILocation(line: 163, column: 14, scope: !2920)
!2932 = !{!2883, !944, i64 4}
!2933 = !DILocation(line: 164, column: 12, scope: !2920)
!2934 = !DILocation(line: 165, column: 3, scope: !2920)
!2935 = distinct !DISubprogram(name: "set_custom_quoting", scope: !561, file: !561, line: 169, type: !2936, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !582, retainedNodes: !2938)
!2936 = !DISubroutineType(types: !2937)
!2937 = !{null, !2861, !136, !136}
!2938 = !{!2939, !2940, !2941}
!2939 = !DILocalVariable(name: "o", arg: 1, scope: !2935, file: !561, line: 169, type: !2861)
!2940 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2935, file: !561, line: 170, type: !136)
!2941 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2935, file: !561, line: 170, type: !136)
!2942 = !DILocation(line: 0, scope: !2935)
!2943 = !DILocation(line: 172, column: 8, scope: !2944)
!2944 = distinct !DILexicalBlock(scope: !2935, file: !561, line: 172, column: 7)
!2945 = !DILocation(line: 172, column: 7, scope: !2935)
!2946 = !DILocation(line: 174, column: 12, scope: !2935)
!2947 = !DILocation(line: 175, column: 8, scope: !2948)
!2948 = distinct !DILexicalBlock(scope: !2935, file: !561, line: 175, column: 7)
!2949 = !DILocation(line: 175, column: 19, scope: !2948)
!2950 = !DILocation(line: 176, column: 5, scope: !2948)
!2951 = !DILocation(line: 177, column: 6, scope: !2935)
!2952 = !DILocation(line: 177, column: 17, scope: !2935)
!2953 = !{!2883, !874, i64 40}
!2954 = !DILocation(line: 178, column: 6, scope: !2935)
!2955 = !DILocation(line: 178, column: 18, scope: !2935)
!2956 = !{!2883, !874, i64 48}
!2957 = !DILocation(line: 179, column: 1, scope: !2935)
!2958 = !DISubprogram(name: "abort", scope: !1067, file: !1067, line: 598, type: !517, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2959 = distinct !DISubprogram(name: "quotearg_buffer", scope: !561, file: !561, line: 774, type: !2960, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !582, retainedNodes: !2962)
!2960 = !DISubroutineType(types: !2961)
!2961 = !{!133, !130, !133, !136, !133, !2875}
!2962 = !{!2963, !2964, !2965, !2966, !2967, !2968, !2969, !2970}
!2963 = !DILocalVariable(name: "buffer", arg: 1, scope: !2959, file: !561, line: 774, type: !130)
!2964 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2959, file: !561, line: 774, type: !133)
!2965 = !DILocalVariable(name: "arg", arg: 3, scope: !2959, file: !561, line: 775, type: !136)
!2966 = !DILocalVariable(name: "argsize", arg: 4, scope: !2959, file: !561, line: 775, type: !133)
!2967 = !DILocalVariable(name: "o", arg: 5, scope: !2959, file: !561, line: 776, type: !2875)
!2968 = !DILocalVariable(name: "p", scope: !2959, file: !561, line: 778, type: !2875)
!2969 = !DILocalVariable(name: "saved_errno", scope: !2959, file: !561, line: 779, type: !87)
!2970 = !DILocalVariable(name: "r", scope: !2959, file: !561, line: 780, type: !133)
!2971 = !DILocation(line: 0, scope: !2959)
!2972 = !DILocation(line: 778, column: 37, scope: !2959)
!2973 = !DILocation(line: 779, column: 21, scope: !2959)
!2974 = !DILocation(line: 781, column: 43, scope: !2959)
!2975 = !DILocation(line: 781, column: 53, scope: !2959)
!2976 = !DILocation(line: 781, column: 63, scope: !2959)
!2977 = !DILocation(line: 782, column: 43, scope: !2959)
!2978 = !DILocation(line: 782, column: 58, scope: !2959)
!2979 = !DILocation(line: 780, column: 14, scope: !2959)
!2980 = !DILocation(line: 783, column: 9, scope: !2959)
!2981 = !DILocation(line: 784, column: 3, scope: !2959)
!2982 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !561, file: !561, line: 251, type: !2983, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !582, retainedNodes: !2987)
!2983 = !DISubroutineType(types: !2984)
!2984 = !{!133, !130, !133, !136, !133, !584, !87, !2985, !136, !136}
!2985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2986, size: 64)
!2986 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!2987 = !{!2988, !2989, !2990, !2991, !2992, !2993, !2994, !2995, !2996, !2997, !2998, !2999, !3000, !3001, !3002, !3003, !3004, !3005, !3006, !3007, !3008, !3013, !3015, !3018, !3019, !3020, !3021, !3024, !3025, !3027, !3028, !3031, !3035, !3036, !3044, !3047, !3048, !3049}
!2988 = !DILocalVariable(name: "buffer", arg: 1, scope: !2982, file: !561, line: 251, type: !130)
!2989 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2982, file: !561, line: 251, type: !133)
!2990 = !DILocalVariable(name: "arg", arg: 3, scope: !2982, file: !561, line: 252, type: !136)
!2991 = !DILocalVariable(name: "argsize", arg: 4, scope: !2982, file: !561, line: 252, type: !133)
!2992 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2982, file: !561, line: 253, type: !584)
!2993 = !DILocalVariable(name: "flags", arg: 6, scope: !2982, file: !561, line: 253, type: !87)
!2994 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2982, file: !561, line: 254, type: !2985)
!2995 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2982, file: !561, line: 255, type: !136)
!2996 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2982, file: !561, line: 256, type: !136)
!2997 = !DILocalVariable(name: "unibyte_locale", scope: !2982, file: !561, line: 258, type: !196)
!2998 = !DILocalVariable(name: "len", scope: !2982, file: !561, line: 260, type: !133)
!2999 = !DILocalVariable(name: "orig_buffersize", scope: !2982, file: !561, line: 261, type: !133)
!3000 = !DILocalVariable(name: "quote_string", scope: !2982, file: !561, line: 262, type: !136)
!3001 = !DILocalVariable(name: "quote_string_len", scope: !2982, file: !561, line: 263, type: !133)
!3002 = !DILocalVariable(name: "backslash_escapes", scope: !2982, file: !561, line: 264, type: !196)
!3003 = !DILocalVariable(name: "elide_outer_quotes", scope: !2982, file: !561, line: 265, type: !196)
!3004 = !DILocalVariable(name: "encountered_single_quote", scope: !2982, file: !561, line: 266, type: !196)
!3005 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2982, file: !561, line: 267, type: !196)
!3006 = !DILabel(scope: !2982, name: "process_input", file: !561, line: 308)
!3007 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2982, file: !561, line: 309, type: !196)
!3008 = !DILocalVariable(name: "lq", scope: !3009, file: !561, line: 361, type: !136)
!3009 = distinct !DILexicalBlock(scope: !3010, file: !561, line: 361, column: 11)
!3010 = distinct !DILexicalBlock(scope: !3011, file: !561, line: 360, column: 13)
!3011 = distinct !DILexicalBlock(scope: !3012, file: !561, line: 333, column: 7)
!3012 = distinct !DILexicalBlock(scope: !2982, file: !561, line: 312, column: 5)
!3013 = !DILocalVariable(name: "i", scope: !3014, file: !561, line: 395, type: !133)
!3014 = distinct !DILexicalBlock(scope: !2982, file: !561, line: 395, column: 3)
!3015 = !DILocalVariable(name: "is_right_quote", scope: !3016, file: !561, line: 397, type: !196)
!3016 = distinct !DILexicalBlock(scope: !3017, file: !561, line: 396, column: 5)
!3017 = distinct !DILexicalBlock(scope: !3014, file: !561, line: 395, column: 3)
!3018 = !DILocalVariable(name: "escaping", scope: !3016, file: !561, line: 398, type: !196)
!3019 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !3016, file: !561, line: 399, type: !196)
!3020 = !DILocalVariable(name: "c", scope: !3016, file: !561, line: 417, type: !138)
!3021 = !DILabel(scope: !3022, name: "c_and_shell_escape", file: !561, line: 502)
!3022 = distinct !DILexicalBlock(scope: !3023, file: !561, line: 478, column: 9)
!3023 = distinct !DILexicalBlock(scope: !3016, file: !561, line: 419, column: 9)
!3024 = !DILabel(scope: !3022, name: "c_escape", file: !561, line: 507)
!3025 = !DILocalVariable(name: "m", scope: !3026, file: !561, line: 598, type: !133)
!3026 = distinct !DILexicalBlock(scope: !3023, file: !561, line: 596, column: 11)
!3027 = !DILocalVariable(name: "printable", scope: !3026, file: !561, line: 600, type: !196)
!3028 = !DILocalVariable(name: "mbs", scope: !3029, file: !561, line: 609, type: !631)
!3029 = distinct !DILexicalBlock(scope: !3030, file: !561, line: 608, column: 15)
!3030 = distinct !DILexicalBlock(scope: !3026, file: !561, line: 602, column: 17)
!3031 = !DILocalVariable(name: "w", scope: !3032, file: !561, line: 618, type: !541)
!3032 = distinct !DILexicalBlock(scope: !3033, file: !561, line: 617, column: 19)
!3033 = distinct !DILexicalBlock(scope: !3034, file: !561, line: 616, column: 17)
!3034 = distinct !DILexicalBlock(scope: !3029, file: !561, line: 616, column: 17)
!3035 = !DILocalVariable(name: "bytes", scope: !3032, file: !561, line: 619, type: !133)
!3036 = !DILocalVariable(name: "j", scope: !3037, file: !561, line: 648, type: !133)
!3037 = distinct !DILexicalBlock(scope: !3038, file: !561, line: 648, column: 29)
!3038 = distinct !DILexicalBlock(scope: !3039, file: !561, line: 647, column: 27)
!3039 = distinct !DILexicalBlock(scope: !3040, file: !561, line: 645, column: 29)
!3040 = distinct !DILexicalBlock(scope: !3041, file: !561, line: 636, column: 23)
!3041 = distinct !DILexicalBlock(scope: !3042, file: !561, line: 628, column: 30)
!3042 = distinct !DILexicalBlock(scope: !3043, file: !561, line: 623, column: 30)
!3043 = distinct !DILexicalBlock(scope: !3032, file: !561, line: 621, column: 25)
!3044 = !DILocalVariable(name: "ilim", scope: !3045, file: !561, line: 674, type: !133)
!3045 = distinct !DILexicalBlock(scope: !3046, file: !561, line: 671, column: 15)
!3046 = distinct !DILexicalBlock(scope: !3026, file: !561, line: 670, column: 17)
!3047 = !DILabel(scope: !3016, name: "store_escape", file: !561, line: 709)
!3048 = !DILabel(scope: !3016, name: "store_c", file: !561, line: 712)
!3049 = !DILabel(scope: !2982, name: "force_outer_quoting_style", file: !561, line: 753)
!3050 = distinct !DIAssignID()
!3051 = distinct !DIAssignID()
!3052 = distinct !DIAssignID()
!3053 = distinct !DIAssignID()
!3054 = distinct !DIAssignID()
!3055 = !DILocation(line: 0, scope: !3029)
!3056 = distinct !DIAssignID()
!3057 = !DILocation(line: 0, scope: !3032)
!3058 = !DILocation(line: 0, scope: !2982)
!3059 = !DILocation(line: 258, column: 25, scope: !2982)
!3060 = !DILocation(line: 258, column: 36, scope: !2982)
!3061 = !DILocation(line: 265, column: 8, scope: !2982)
!3062 = !DILocation(line: 267, column: 3, scope: !2982)
!3063 = !DILocation(line: 261, column: 10, scope: !2982)
!3064 = !DILocation(line: 262, column: 15, scope: !2982)
!3065 = !DILocation(line: 263, column: 10, scope: !2982)
!3066 = !DILocation(line: 264, column: 8, scope: !2982)
!3067 = !DILocation(line: 266, column: 8, scope: !2982)
!3068 = !DILocation(line: 267, column: 8, scope: !2982)
!3069 = !DILocation(line: 308, column: 2, scope: !2982)
!3070 = !DILocation(line: 311, column: 3, scope: !2982)
!3071 = !DILocation(line: 318, column: 11, scope: !3012)
!3072 = !DILocation(line: 318, column: 12, scope: !3073)
!3073 = distinct !DILexicalBlock(scope: !3012, file: !561, line: 318, column: 11)
!3074 = !DILocation(line: 319, column: 9, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !3076, file: !561, line: 319, column: 9)
!3076 = distinct !DILexicalBlock(scope: !3073, file: !561, line: 319, column: 9)
!3077 = !DILocation(line: 319, column: 9, scope: !3076)
!3078 = !DILocation(line: 0, scope: !622, inlinedAt: !3079)
!3079 = distinct !DILocation(line: 357, column: 26, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !3081, file: !561, line: 335, column: 11)
!3081 = distinct !DILexicalBlock(scope: !3011, file: !561, line: 334, column: 13)
!3082 = !DILocation(line: 199, column: 29, scope: !622, inlinedAt: !3079)
!3083 = !DILocation(line: 201, column: 19, scope: !3084, inlinedAt: !3079)
!3084 = distinct !DILexicalBlock(scope: !622, file: !561, line: 201, column: 7)
!3085 = !DILocation(line: 201, column: 7, scope: !622, inlinedAt: !3079)
!3086 = !DILocation(line: 229, column: 3, scope: !622, inlinedAt: !3079)
!3087 = !DILocation(line: 230, column: 3, scope: !622, inlinedAt: !3079)
!3088 = !DILocalVariable(name: "ps", arg: 1, scope: !3089, file: !2830, line: 1135, type: !3092)
!3089 = distinct !DISubprogram(name: "mbszero", scope: !2830, file: !2830, line: 1135, type: !3090, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !582, retainedNodes: !3093)
!3090 = !DISubroutineType(types: !3091)
!3091 = !{null, !3092}
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!3093 = !{!3088}
!3094 = !DILocation(line: 0, scope: !3089, inlinedAt: !3095)
!3095 = distinct !DILocation(line: 230, column: 18, scope: !622, inlinedAt: !3079)
!3096 = !DILocalVariable(name: "__dest", arg: 1, scope: !3097, file: !1283, line: 57, type: !131)
!3097 = distinct !DISubprogram(name: "memset", scope: !1283, file: !1283, line: 57, type: !2839, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !582, retainedNodes: !3098)
!3098 = !{!3096, !3099, !3100}
!3099 = !DILocalVariable(name: "__ch", arg: 2, scope: !3097, file: !1283, line: 57, type: !87)
!3100 = !DILocalVariable(name: "__len", arg: 3, scope: !3097, file: !1283, line: 57, type: !133)
!3101 = !DILocation(line: 0, scope: !3097, inlinedAt: !3102)
!3102 = distinct !DILocation(line: 1137, column: 3, scope: !3089, inlinedAt: !3095)
!3103 = !DILocation(line: 59, column: 10, scope: !3097, inlinedAt: !3102)
!3104 = !DILocation(line: 231, column: 7, scope: !3105, inlinedAt: !3079)
!3105 = distinct !DILexicalBlock(scope: !622, file: !561, line: 231, column: 7)
!3106 = !DILocation(line: 231, column: 40, scope: !3105, inlinedAt: !3079)
!3107 = !DILocation(line: 231, column: 45, scope: !3105, inlinedAt: !3079)
!3108 = !DILocation(line: 235, column: 1, scope: !622, inlinedAt: !3079)
!3109 = !DILocation(line: 0, scope: !622, inlinedAt: !3110)
!3110 = distinct !DILocation(line: 358, column: 27, scope: !3080)
!3111 = !DILocation(line: 199, column: 29, scope: !622, inlinedAt: !3110)
!3112 = !DILocation(line: 201, column: 19, scope: !3084, inlinedAt: !3110)
!3113 = !DILocation(line: 201, column: 7, scope: !622, inlinedAt: !3110)
!3114 = !DILocation(line: 229, column: 3, scope: !622, inlinedAt: !3110)
!3115 = !DILocation(line: 230, column: 3, scope: !622, inlinedAt: !3110)
!3116 = !DILocation(line: 0, scope: !3089, inlinedAt: !3117)
!3117 = distinct !DILocation(line: 230, column: 18, scope: !622, inlinedAt: !3110)
!3118 = !DILocation(line: 0, scope: !3097, inlinedAt: !3119)
!3119 = distinct !DILocation(line: 1137, column: 3, scope: !3089, inlinedAt: !3117)
!3120 = !DILocation(line: 59, column: 10, scope: !3097, inlinedAt: !3119)
!3121 = !DILocation(line: 231, column: 7, scope: !3105, inlinedAt: !3110)
!3122 = !DILocation(line: 231, column: 40, scope: !3105, inlinedAt: !3110)
!3123 = !DILocation(line: 231, column: 45, scope: !3105, inlinedAt: !3110)
!3124 = !DILocation(line: 235, column: 1, scope: !622, inlinedAt: !3110)
!3125 = !DILocation(line: 360, column: 14, scope: !3010)
!3126 = !DILocation(line: 360, column: 13, scope: !3011)
!3127 = !DILocation(line: 0, scope: !3009)
!3128 = !DILocation(line: 361, column: 45, scope: !3129)
!3129 = distinct !DILexicalBlock(scope: !3009, file: !561, line: 361, column: 11)
!3130 = !DILocation(line: 361, column: 11, scope: !3009)
!3131 = !DILocation(line: 362, column: 13, scope: !3132)
!3132 = distinct !DILexicalBlock(scope: !3133, file: !561, line: 362, column: 13)
!3133 = distinct !DILexicalBlock(scope: !3129, file: !561, line: 362, column: 13)
!3134 = !DILocation(line: 362, column: 13, scope: !3133)
!3135 = !DILocation(line: 361, column: 52, scope: !3129)
!3136 = distinct !{!3136, !3130, !3137, !990}
!3137 = !DILocation(line: 362, column: 13, scope: !3009)
!3138 = !DILocation(line: 260, column: 10, scope: !2982)
!3139 = !DILocation(line: 365, column: 28, scope: !3011)
!3140 = !DILocation(line: 367, column: 7, scope: !3012)
!3141 = !DILocation(line: 370, column: 7, scope: !3012)
!3142 = !DILocation(line: 373, column: 7, scope: !3012)
!3143 = !DILocation(line: 376, column: 12, scope: !3144)
!3144 = distinct !DILexicalBlock(scope: !3012, file: !561, line: 376, column: 11)
!3145 = !DILocation(line: 376, column: 11, scope: !3012)
!3146 = !DILocation(line: 381, column: 12, scope: !3147)
!3147 = distinct !DILexicalBlock(scope: !3012, file: !561, line: 381, column: 11)
!3148 = !DILocation(line: 381, column: 11, scope: !3012)
!3149 = !DILocation(line: 382, column: 9, scope: !3150)
!3150 = distinct !DILexicalBlock(scope: !3151, file: !561, line: 382, column: 9)
!3151 = distinct !DILexicalBlock(scope: !3147, file: !561, line: 382, column: 9)
!3152 = !DILocation(line: 382, column: 9, scope: !3151)
!3153 = !DILocation(line: 389, column: 7, scope: !3012)
!3154 = !DILocation(line: 392, column: 7, scope: !3012)
!3155 = !DILocation(line: 0, scope: !3014)
!3156 = !DILocation(line: 395, column: 8, scope: !3014)
!3157 = !DILocation(line: 309, column: 8, scope: !2982)
!3158 = !DILocation(line: 395, scope: !3014)
!3159 = !DILocation(line: 395, column: 34, scope: !3017)
!3160 = !DILocation(line: 395, column: 26, scope: !3017)
!3161 = !DILocation(line: 395, column: 48, scope: !3017)
!3162 = !DILocation(line: 395, column: 55, scope: !3017)
!3163 = !DILocation(line: 395, column: 3, scope: !3014)
!3164 = !DILocation(line: 395, column: 67, scope: !3017)
!3165 = !DILocation(line: 0, scope: !3016)
!3166 = !DILocation(line: 402, column: 11, scope: !3167)
!3167 = distinct !DILexicalBlock(scope: !3016, file: !561, line: 401, column: 11)
!3168 = !DILocation(line: 404, column: 17, scope: !3167)
!3169 = !DILocation(line: 405, column: 39, scope: !3167)
!3170 = !DILocation(line: 409, column: 32, scope: !3167)
!3171 = !DILocation(line: 405, column: 19, scope: !3167)
!3172 = !DILocation(line: 405, column: 15, scope: !3167)
!3173 = !DILocation(line: 410, column: 11, scope: !3167)
!3174 = !DILocation(line: 410, column: 25, scope: !3167)
!3175 = !DILocalVariable(name: "__s1", arg: 1, scope: !3176, file: !956, line: 974, type: !1091)
!3176 = distinct !DISubprogram(name: "memeq", scope: !956, file: !956, line: 974, type: !2799, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !582, retainedNodes: !3177)
!3177 = !{!3175, !3178, !3179}
!3178 = !DILocalVariable(name: "__s2", arg: 2, scope: !3176, file: !956, line: 974, type: !1091)
!3179 = !DILocalVariable(name: "__n", arg: 3, scope: !3176, file: !956, line: 974, type: !133)
!3180 = !DILocation(line: 0, scope: !3176, inlinedAt: !3181)
!3181 = distinct !DILocation(line: 410, column: 14, scope: !3167)
!3182 = !DILocation(line: 976, column: 11, scope: !3176, inlinedAt: !3181)
!3183 = !DILocation(line: 976, column: 10, scope: !3176, inlinedAt: !3181)
!3184 = !DILocation(line: 401, column: 11, scope: !3016)
!3185 = !DILocation(line: 417, column: 25, scope: !3016)
!3186 = !DILocation(line: 418, column: 7, scope: !3016)
!3187 = !DILocation(line: 421, column: 15, scope: !3023)
!3188 = !DILocation(line: 423, column: 15, scope: !3189)
!3189 = distinct !DILexicalBlock(scope: !3190, file: !561, line: 423, column: 15)
!3190 = distinct !DILexicalBlock(scope: !3191, file: !561, line: 422, column: 13)
!3191 = distinct !DILexicalBlock(scope: !3023, file: !561, line: 421, column: 15)
!3192 = !DILocation(line: 423, column: 15, scope: !3193)
!3193 = distinct !DILexicalBlock(scope: !3189, file: !561, line: 423, column: 15)
!3194 = !DILocation(line: 423, column: 15, scope: !3195)
!3195 = distinct !DILexicalBlock(scope: !3196, file: !561, line: 423, column: 15)
!3196 = distinct !DILexicalBlock(scope: !3197, file: !561, line: 423, column: 15)
!3197 = distinct !DILexicalBlock(scope: !3193, file: !561, line: 423, column: 15)
!3198 = !DILocation(line: 423, column: 15, scope: !3196)
!3199 = !DILocation(line: 423, column: 15, scope: !3200)
!3200 = distinct !DILexicalBlock(scope: !3201, file: !561, line: 423, column: 15)
!3201 = distinct !DILexicalBlock(scope: !3197, file: !561, line: 423, column: 15)
!3202 = !DILocation(line: 423, column: 15, scope: !3201)
!3203 = !DILocation(line: 423, column: 15, scope: !3204)
!3204 = distinct !DILexicalBlock(scope: !3205, file: !561, line: 423, column: 15)
!3205 = distinct !DILexicalBlock(scope: !3197, file: !561, line: 423, column: 15)
!3206 = !DILocation(line: 423, column: 15, scope: !3205)
!3207 = !DILocation(line: 423, column: 15, scope: !3197)
!3208 = !DILocation(line: 423, column: 15, scope: !3209)
!3209 = distinct !DILexicalBlock(scope: !3210, file: !561, line: 423, column: 15)
!3210 = distinct !DILexicalBlock(scope: !3189, file: !561, line: 423, column: 15)
!3211 = !DILocation(line: 423, column: 15, scope: !3210)
!3212 = !DILocation(line: 431, column: 19, scope: !3213)
!3213 = distinct !DILexicalBlock(scope: !3190, file: !561, line: 430, column: 19)
!3214 = !DILocation(line: 431, column: 24, scope: !3213)
!3215 = !DILocation(line: 431, column: 28, scope: !3213)
!3216 = !DILocation(line: 431, column: 38, scope: !3213)
!3217 = !DILocation(line: 431, column: 48, scope: !3213)
!3218 = !DILocation(line: 431, column: 59, scope: !3213)
!3219 = !DILocation(line: 433, column: 19, scope: !3220)
!3220 = distinct !DILexicalBlock(scope: !3221, file: !561, line: 433, column: 19)
!3221 = distinct !DILexicalBlock(scope: !3222, file: !561, line: 433, column: 19)
!3222 = distinct !DILexicalBlock(scope: !3213, file: !561, line: 432, column: 17)
!3223 = !DILocation(line: 433, column: 19, scope: !3221)
!3224 = !DILocation(line: 434, column: 19, scope: !3225)
!3225 = distinct !DILexicalBlock(scope: !3226, file: !561, line: 434, column: 19)
!3226 = distinct !DILexicalBlock(scope: !3222, file: !561, line: 434, column: 19)
!3227 = !DILocation(line: 434, column: 19, scope: !3226)
!3228 = !DILocation(line: 435, column: 17, scope: !3222)
!3229 = !DILocation(line: 442, column: 20, scope: !3191)
!3230 = !DILocation(line: 447, column: 11, scope: !3023)
!3231 = !DILocation(line: 450, column: 19, scope: !3232)
!3232 = distinct !DILexicalBlock(scope: !3023, file: !561, line: 448, column: 13)
!3233 = !DILocation(line: 456, column: 19, scope: !3234)
!3234 = distinct !DILexicalBlock(scope: !3232, file: !561, line: 455, column: 19)
!3235 = !DILocation(line: 456, column: 24, scope: !3234)
!3236 = !DILocation(line: 456, column: 28, scope: !3234)
!3237 = !DILocation(line: 456, column: 38, scope: !3234)
!3238 = !DILocation(line: 456, column: 41, scope: !3234)
!3239 = !DILocation(line: 456, column: 52, scope: !3234)
!3240 = !DILocation(line: 455, column: 19, scope: !3232)
!3241 = !DILocation(line: 457, column: 25, scope: !3234)
!3242 = !DILocation(line: 457, column: 17, scope: !3234)
!3243 = !DILocation(line: 464, column: 25, scope: !3244)
!3244 = distinct !DILexicalBlock(scope: !3234, file: !561, line: 458, column: 19)
!3245 = !DILocation(line: 468, column: 21, scope: !3246)
!3246 = distinct !DILexicalBlock(scope: !3247, file: !561, line: 468, column: 21)
!3247 = distinct !DILexicalBlock(scope: !3244, file: !561, line: 468, column: 21)
!3248 = !DILocation(line: 468, column: 21, scope: !3247)
!3249 = !DILocation(line: 469, column: 21, scope: !3250)
!3250 = distinct !DILexicalBlock(scope: !3251, file: !561, line: 469, column: 21)
!3251 = distinct !DILexicalBlock(scope: !3244, file: !561, line: 469, column: 21)
!3252 = !DILocation(line: 469, column: 21, scope: !3251)
!3253 = !DILocation(line: 470, column: 21, scope: !3254)
!3254 = distinct !DILexicalBlock(scope: !3255, file: !561, line: 470, column: 21)
!3255 = distinct !DILexicalBlock(scope: !3244, file: !561, line: 470, column: 21)
!3256 = !DILocation(line: 470, column: 21, scope: !3255)
!3257 = !DILocation(line: 471, column: 21, scope: !3258)
!3258 = distinct !DILexicalBlock(scope: !3259, file: !561, line: 471, column: 21)
!3259 = distinct !DILexicalBlock(scope: !3244, file: !561, line: 471, column: 21)
!3260 = !DILocation(line: 471, column: 21, scope: !3259)
!3261 = !DILocation(line: 472, column: 21, scope: !3244)
!3262 = !DILocation(line: 482, column: 33, scope: !3022)
!3263 = !DILocation(line: 483, column: 33, scope: !3022)
!3264 = !DILocation(line: 485, column: 33, scope: !3022)
!3265 = !DILocation(line: 486, column: 33, scope: !3022)
!3266 = !DILocation(line: 487, column: 33, scope: !3022)
!3267 = !DILocation(line: 490, column: 17, scope: !3022)
!3268 = !DILocation(line: 492, column: 21, scope: !3269)
!3269 = distinct !DILexicalBlock(scope: !3270, file: !561, line: 491, column: 15)
!3270 = distinct !DILexicalBlock(scope: !3022, file: !561, line: 490, column: 17)
!3271 = !DILocation(line: 499, column: 35, scope: !3272)
!3272 = distinct !DILexicalBlock(scope: !3022, file: !561, line: 499, column: 17)
!3273 = !DILocation(line: 499, column: 57, scope: !3272)
!3274 = !DILocation(line: 0, scope: !3022)
!3275 = !DILocation(line: 502, column: 11, scope: !3022)
!3276 = !DILocation(line: 504, column: 17, scope: !3277)
!3277 = distinct !DILexicalBlock(scope: !3022, file: !561, line: 503, column: 17)
!3278 = !DILocation(line: 507, column: 11, scope: !3022)
!3279 = !DILocation(line: 508, column: 17, scope: !3022)
!3280 = !DILocation(line: 517, column: 15, scope: !3023)
!3281 = !DILocation(line: 517, column: 40, scope: !3282)
!3282 = distinct !DILexicalBlock(scope: !3023, file: !561, line: 517, column: 15)
!3283 = !DILocation(line: 517, column: 47, scope: !3282)
!3284 = !DILocation(line: 517, column: 18, scope: !3282)
!3285 = !DILocation(line: 521, column: 17, scope: !3286)
!3286 = distinct !DILexicalBlock(scope: !3023, file: !561, line: 521, column: 15)
!3287 = !DILocation(line: 521, column: 15, scope: !3023)
!3288 = !DILocation(line: 525, column: 11, scope: !3023)
!3289 = !DILocation(line: 537, column: 15, scope: !3290)
!3290 = distinct !DILexicalBlock(scope: !3023, file: !561, line: 536, column: 15)
!3291 = !DILocation(line: 544, column: 15, scope: !3023)
!3292 = !DILocation(line: 546, column: 19, scope: !3293)
!3293 = distinct !DILexicalBlock(scope: !3294, file: !561, line: 545, column: 13)
!3294 = distinct !DILexicalBlock(scope: !3023, file: !561, line: 544, column: 15)
!3295 = !DILocation(line: 549, column: 19, scope: !3296)
!3296 = distinct !DILexicalBlock(scope: !3293, file: !561, line: 549, column: 19)
!3297 = !DILocation(line: 549, column: 30, scope: !3296)
!3298 = !DILocation(line: 558, column: 15, scope: !3299)
!3299 = distinct !DILexicalBlock(scope: !3300, file: !561, line: 558, column: 15)
!3300 = distinct !DILexicalBlock(scope: !3293, file: !561, line: 558, column: 15)
!3301 = !DILocation(line: 558, column: 15, scope: !3300)
!3302 = !DILocation(line: 559, column: 15, scope: !3303)
!3303 = distinct !DILexicalBlock(scope: !3304, file: !561, line: 559, column: 15)
!3304 = distinct !DILexicalBlock(scope: !3293, file: !561, line: 559, column: 15)
!3305 = !DILocation(line: 559, column: 15, scope: !3304)
!3306 = !DILocation(line: 560, column: 15, scope: !3307)
!3307 = distinct !DILexicalBlock(scope: !3308, file: !561, line: 560, column: 15)
!3308 = distinct !DILexicalBlock(scope: !3293, file: !561, line: 560, column: 15)
!3309 = !DILocation(line: 560, column: 15, scope: !3308)
!3310 = !DILocation(line: 562, column: 13, scope: !3293)
!3311 = !DILocation(line: 602, column: 17, scope: !3026)
!3312 = !DILocation(line: 0, scope: !3026)
!3313 = !DILocation(line: 605, column: 29, scope: !3314)
!3314 = distinct !DILexicalBlock(scope: !3030, file: !561, line: 603, column: 15)
!3315 = !DILocation(line: 605, column: 27, scope: !3314)
!3316 = !DILocation(line: 606, column: 15, scope: !3314)
!3317 = !DILocation(line: 609, column: 17, scope: !3029)
!3318 = !DILocation(line: 0, scope: !3089, inlinedAt: !3319)
!3319 = distinct !DILocation(line: 609, column: 32, scope: !3029)
!3320 = !DILocation(line: 0, scope: !3097, inlinedAt: !3321)
!3321 = distinct !DILocation(line: 1137, column: 3, scope: !3089, inlinedAt: !3319)
!3322 = !DILocation(line: 59, column: 10, scope: !3097, inlinedAt: !3321)
!3323 = !DILocation(line: 613, column: 29, scope: !3324)
!3324 = distinct !DILexicalBlock(scope: !3029, file: !561, line: 613, column: 21)
!3325 = !DILocation(line: 613, column: 21, scope: !3029)
!3326 = !DILocation(line: 614, column: 29, scope: !3324)
!3327 = !DILocation(line: 614, column: 19, scope: !3324)
!3328 = !DILocation(line: 618, column: 21, scope: !3032)
!3329 = !DILocation(line: 620, column: 54, scope: !3032)
!3330 = !DILocation(line: 619, column: 36, scope: !3032)
!3331 = !DILocation(line: 621, column: 25, scope: !3032)
!3332 = !DILocation(line: 631, column: 38, scope: !3333)
!3333 = distinct !DILexicalBlock(scope: !3041, file: !561, line: 629, column: 23)
!3334 = !DILocation(line: 631, column: 48, scope: !3333)
!3335 = !DILocation(line: 626, column: 25, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !3042, file: !561, line: 624, column: 23)
!3337 = !DILocation(line: 631, column: 51, scope: !3333)
!3338 = !DILocation(line: 631, column: 25, scope: !3333)
!3339 = !DILocation(line: 632, column: 28, scope: !3333)
!3340 = !DILocation(line: 631, column: 34, scope: !3333)
!3341 = distinct !{!3341, !3338, !3339, !990}
!3342 = !DILocation(line: 0, scope: !3037)
!3343 = !DILocation(line: 646, column: 29, scope: !3039)
!3344 = !DILocation(line: 649, column: 39, scope: !3345)
!3345 = distinct !DILexicalBlock(scope: !3037, file: !561, line: 648, column: 29)
!3346 = !DILocation(line: 649, column: 31, scope: !3345)
!3347 = !DILocation(line: 648, column: 60, scope: !3345)
!3348 = !DILocation(line: 648, column: 50, scope: !3345)
!3349 = !DILocation(line: 648, column: 29, scope: !3037)
!3350 = distinct !{!3350, !3349, !3351, !990}
!3351 = !DILocation(line: 654, column: 33, scope: !3037)
!3352 = !DILocation(line: 657, column: 43, scope: !3353)
!3353 = distinct !DILexicalBlock(scope: !3040, file: !561, line: 657, column: 29)
!3354 = !DILocalVariable(name: "wc", arg: 1, scope: !3355, file: !3356, line: 865, type: !3359)
!3355 = distinct !DISubprogram(name: "c32isprint", scope: !3356, file: !3356, line: 865, type: !3357, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !582, retainedNodes: !3361)
!3356 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!3357 = !DISubroutineType(types: !3358)
!3358 = !{!87, !3359}
!3359 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !3360, line: 20, baseType: !78)
!3360 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!3361 = !{!3354}
!3362 = !DILocation(line: 0, scope: !3355, inlinedAt: !3363)
!3363 = distinct !DILocation(line: 657, column: 31, scope: !3353)
!3364 = !DILocation(line: 871, column: 10, scope: !3355, inlinedAt: !3363)
!3365 = !DILocation(line: 657, column: 31, scope: !3353)
!3366 = !DILocation(line: 664, column: 23, scope: !3032)
!3367 = !DILocation(line: 665, column: 19, scope: !3033)
!3368 = !DILocation(line: 666, column: 15, scope: !3030)
!3369 = !DILocation(line: 0, scope: !3030)
!3370 = !DILocation(line: 670, column: 19, scope: !3046)
!3371 = !DILocation(line: 670, column: 23, scope: !3046)
!3372 = !DILocation(line: 674, column: 33, scope: !3045)
!3373 = !DILocation(line: 0, scope: !3045)
!3374 = !DILocation(line: 676, column: 17, scope: !3045)
!3375 = !DILocation(line: 398, column: 12, scope: !3016)
!3376 = !DILocation(line: 678, column: 43, scope: !3377)
!3377 = distinct !DILexicalBlock(scope: !3378, file: !561, line: 678, column: 25)
!3378 = distinct !DILexicalBlock(scope: !3379, file: !561, line: 677, column: 19)
!3379 = distinct !DILexicalBlock(scope: !3380, file: !561, line: 676, column: 17)
!3380 = distinct !DILexicalBlock(scope: !3045, file: !561, line: 676, column: 17)
!3381 = !DILocation(line: 680, column: 25, scope: !3382)
!3382 = distinct !DILexicalBlock(scope: !3383, file: !561, line: 680, column: 25)
!3383 = distinct !DILexicalBlock(scope: !3377, file: !561, line: 679, column: 23)
!3384 = !DILocation(line: 680, column: 25, scope: !3385)
!3385 = distinct !DILexicalBlock(scope: !3382, file: !561, line: 680, column: 25)
!3386 = !DILocation(line: 680, column: 25, scope: !3387)
!3387 = distinct !DILexicalBlock(scope: !3388, file: !561, line: 680, column: 25)
!3388 = distinct !DILexicalBlock(scope: !3389, file: !561, line: 680, column: 25)
!3389 = distinct !DILexicalBlock(scope: !3385, file: !561, line: 680, column: 25)
!3390 = !DILocation(line: 680, column: 25, scope: !3388)
!3391 = !DILocation(line: 680, column: 25, scope: !3392)
!3392 = distinct !DILexicalBlock(scope: !3393, file: !561, line: 680, column: 25)
!3393 = distinct !DILexicalBlock(scope: !3389, file: !561, line: 680, column: 25)
!3394 = !DILocation(line: 680, column: 25, scope: !3393)
!3395 = !DILocation(line: 680, column: 25, scope: !3396)
!3396 = distinct !DILexicalBlock(scope: !3397, file: !561, line: 680, column: 25)
!3397 = distinct !DILexicalBlock(scope: !3389, file: !561, line: 680, column: 25)
!3398 = !DILocation(line: 680, column: 25, scope: !3397)
!3399 = !DILocation(line: 680, column: 25, scope: !3389)
!3400 = !DILocation(line: 680, column: 25, scope: !3401)
!3401 = distinct !DILexicalBlock(scope: !3402, file: !561, line: 680, column: 25)
!3402 = distinct !DILexicalBlock(scope: !3382, file: !561, line: 680, column: 25)
!3403 = !DILocation(line: 680, column: 25, scope: !3402)
!3404 = !DILocation(line: 681, column: 25, scope: !3405)
!3405 = distinct !DILexicalBlock(scope: !3406, file: !561, line: 681, column: 25)
!3406 = distinct !DILexicalBlock(scope: !3383, file: !561, line: 681, column: 25)
!3407 = !DILocation(line: 681, column: 25, scope: !3406)
!3408 = !DILocation(line: 682, column: 25, scope: !3409)
!3409 = distinct !DILexicalBlock(scope: !3410, file: !561, line: 682, column: 25)
!3410 = distinct !DILexicalBlock(scope: !3383, file: !561, line: 682, column: 25)
!3411 = !DILocation(line: 682, column: 25, scope: !3410)
!3412 = !DILocation(line: 683, column: 38, scope: !3383)
!3413 = !DILocation(line: 683, column: 33, scope: !3383)
!3414 = !DILocation(line: 684, column: 23, scope: !3383)
!3415 = !DILocation(line: 685, column: 30, scope: !3416)
!3416 = distinct !DILexicalBlock(scope: !3377, file: !561, line: 685, column: 30)
!3417 = !DILocation(line: 685, column: 30, scope: !3377)
!3418 = !DILocation(line: 687, column: 25, scope: !3419)
!3419 = distinct !DILexicalBlock(scope: !3420, file: !561, line: 687, column: 25)
!3420 = distinct !DILexicalBlock(scope: !3421, file: !561, line: 687, column: 25)
!3421 = distinct !DILexicalBlock(scope: !3416, file: !561, line: 686, column: 23)
!3422 = !DILocation(line: 687, column: 25, scope: !3420)
!3423 = !DILocation(line: 689, column: 23, scope: !3421)
!3424 = !DILocation(line: 690, column: 35, scope: !3425)
!3425 = distinct !DILexicalBlock(scope: !3378, file: !561, line: 690, column: 25)
!3426 = !DILocation(line: 690, column: 30, scope: !3425)
!3427 = !DILocation(line: 690, column: 25, scope: !3378)
!3428 = !DILocation(line: 692, column: 21, scope: !3429)
!3429 = distinct !DILexicalBlock(scope: !3430, file: !561, line: 692, column: 21)
!3430 = distinct !DILexicalBlock(scope: !3378, file: !561, line: 692, column: 21)
!3431 = !DILocation(line: 692, column: 21, scope: !3432)
!3432 = distinct !DILexicalBlock(scope: !3433, file: !561, line: 692, column: 21)
!3433 = distinct !DILexicalBlock(scope: !3434, file: !561, line: 692, column: 21)
!3434 = distinct !DILexicalBlock(scope: !3429, file: !561, line: 692, column: 21)
!3435 = !DILocation(line: 692, column: 21, scope: !3433)
!3436 = !DILocation(line: 692, column: 21, scope: !3437)
!3437 = distinct !DILexicalBlock(scope: !3438, file: !561, line: 692, column: 21)
!3438 = distinct !DILexicalBlock(scope: !3434, file: !561, line: 692, column: 21)
!3439 = !DILocation(line: 692, column: 21, scope: !3438)
!3440 = !DILocation(line: 692, column: 21, scope: !3434)
!3441 = !DILocation(line: 0, scope: !3378)
!3442 = !DILocation(line: 693, column: 21, scope: !3443)
!3443 = distinct !DILexicalBlock(scope: !3444, file: !561, line: 693, column: 21)
!3444 = distinct !DILexicalBlock(scope: !3378, file: !561, line: 693, column: 21)
!3445 = !DILocation(line: 693, column: 21, scope: !3444)
!3446 = !DILocation(line: 694, column: 25, scope: !3378)
!3447 = !DILocation(line: 676, column: 17, scope: !3379)
!3448 = distinct !{!3448, !3449, !3450}
!3449 = !DILocation(line: 676, column: 17, scope: !3380)
!3450 = !DILocation(line: 695, column: 19, scope: !3380)
!3451 = !DILocation(line: 409, column: 30, scope: !3167)
!3452 = !DILocation(line: 702, column: 34, scope: !3453)
!3453 = distinct !DILexicalBlock(scope: !3016, file: !561, line: 702, column: 11)
!3454 = !DILocation(line: 704, column: 14, scope: !3453)
!3455 = !DILocation(line: 705, column: 14, scope: !3453)
!3456 = !DILocation(line: 705, column: 35, scope: !3453)
!3457 = !DILocation(line: 705, column: 17, scope: !3453)
!3458 = !DILocation(line: 705, column: 47, scope: !3453)
!3459 = !DILocation(line: 705, column: 65, scope: !3453)
!3460 = !DILocation(line: 706, column: 11, scope: !3453)
!3461 = !DILocation(line: 702, column: 11, scope: !3016)
!3462 = !DILocation(line: 395, column: 15, scope: !3014)
!3463 = !DILocation(line: 709, column: 5, scope: !3016)
!3464 = !DILocation(line: 710, column: 7, scope: !3465)
!3465 = distinct !DILexicalBlock(scope: !3016, file: !561, line: 710, column: 7)
!3466 = !DILocation(line: 710, column: 7, scope: !3467)
!3467 = distinct !DILexicalBlock(scope: !3465, file: !561, line: 710, column: 7)
!3468 = !DILocation(line: 710, column: 7, scope: !3469)
!3469 = distinct !DILexicalBlock(scope: !3470, file: !561, line: 710, column: 7)
!3470 = distinct !DILexicalBlock(scope: !3471, file: !561, line: 710, column: 7)
!3471 = distinct !DILexicalBlock(scope: !3467, file: !561, line: 710, column: 7)
!3472 = !DILocation(line: 710, column: 7, scope: !3470)
!3473 = !DILocation(line: 710, column: 7, scope: !3474)
!3474 = distinct !DILexicalBlock(scope: !3475, file: !561, line: 710, column: 7)
!3475 = distinct !DILexicalBlock(scope: !3471, file: !561, line: 710, column: 7)
!3476 = !DILocation(line: 710, column: 7, scope: !3475)
!3477 = !DILocation(line: 710, column: 7, scope: !3478)
!3478 = distinct !DILexicalBlock(scope: !3479, file: !561, line: 710, column: 7)
!3479 = distinct !DILexicalBlock(scope: !3471, file: !561, line: 710, column: 7)
!3480 = !DILocation(line: 710, column: 7, scope: !3479)
!3481 = !DILocation(line: 710, column: 7, scope: !3471)
!3482 = !DILocation(line: 710, column: 7, scope: !3483)
!3483 = distinct !DILexicalBlock(scope: !3484, file: !561, line: 710, column: 7)
!3484 = distinct !DILexicalBlock(scope: !3465, file: !561, line: 710, column: 7)
!3485 = !DILocation(line: 710, column: 7, scope: !3484)
!3486 = !DILocation(line: 712, column: 5, scope: !3016)
!3487 = !DILocation(line: 713, column: 7, scope: !3488)
!3488 = distinct !DILexicalBlock(scope: !3489, file: !561, line: 713, column: 7)
!3489 = distinct !DILexicalBlock(scope: !3016, file: !561, line: 713, column: 7)
!3490 = !DILocation(line: 417, column: 21, scope: !3016)
!3491 = !DILocation(line: 713, column: 7, scope: !3492)
!3492 = distinct !DILexicalBlock(scope: !3493, file: !561, line: 713, column: 7)
!3493 = distinct !DILexicalBlock(scope: !3494, file: !561, line: 713, column: 7)
!3494 = distinct !DILexicalBlock(scope: !3488, file: !561, line: 713, column: 7)
!3495 = !DILocation(line: 713, column: 7, scope: !3493)
!3496 = !DILocation(line: 713, column: 7, scope: !3497)
!3497 = distinct !DILexicalBlock(scope: !3498, file: !561, line: 713, column: 7)
!3498 = distinct !DILexicalBlock(scope: !3494, file: !561, line: 713, column: 7)
!3499 = !DILocation(line: 713, column: 7, scope: !3498)
!3500 = !DILocation(line: 713, column: 7, scope: !3494)
!3501 = !DILocation(line: 714, column: 7, scope: !3502)
!3502 = distinct !DILexicalBlock(scope: !3503, file: !561, line: 714, column: 7)
!3503 = distinct !DILexicalBlock(scope: !3016, file: !561, line: 714, column: 7)
!3504 = !DILocation(line: 714, column: 7, scope: !3503)
!3505 = !DILocation(line: 716, column: 13, scope: !3506)
!3506 = distinct !DILexicalBlock(scope: !3016, file: !561, line: 716, column: 11)
!3507 = !DILocation(line: 716, column: 11, scope: !3016)
!3508 = !DILocation(line: 718, column: 5, scope: !3017)
!3509 = !DILocation(line: 395, column: 82, scope: !3017)
!3510 = !DILocation(line: 395, column: 3, scope: !3017)
!3511 = distinct !{!3511, !3163, !3512, !990}
!3512 = !DILocation(line: 718, column: 5, scope: !3014)
!3513 = !DILocation(line: 720, column: 11, scope: !3514)
!3514 = distinct !DILexicalBlock(scope: !2982, file: !561, line: 720, column: 7)
!3515 = !DILocation(line: 720, column: 16, scope: !3514)
!3516 = !DILocation(line: 728, column: 51, scope: !3517)
!3517 = distinct !DILexicalBlock(scope: !2982, file: !561, line: 728, column: 7)
!3518 = !DILocation(line: 731, column: 11, scope: !3519)
!3519 = distinct !DILexicalBlock(scope: !3520, file: !561, line: 731, column: 11)
!3520 = distinct !DILexicalBlock(scope: !3517, file: !561, line: 730, column: 5)
!3521 = !DILocation(line: 731, column: 11, scope: !3520)
!3522 = !DILocation(line: 732, column: 16, scope: !3519)
!3523 = !DILocation(line: 732, column: 9, scope: !3519)
!3524 = !DILocation(line: 736, column: 18, scope: !3525)
!3525 = distinct !DILexicalBlock(scope: !3519, file: !561, line: 736, column: 16)
!3526 = !DILocation(line: 736, column: 29, scope: !3525)
!3527 = !DILocation(line: 745, column: 7, scope: !3528)
!3528 = distinct !DILexicalBlock(scope: !2982, file: !561, line: 745, column: 7)
!3529 = !DILocation(line: 745, column: 20, scope: !3528)
!3530 = !DILocation(line: 746, column: 12, scope: !3531)
!3531 = distinct !DILexicalBlock(scope: !3532, file: !561, line: 746, column: 5)
!3532 = distinct !DILexicalBlock(scope: !3528, file: !561, line: 746, column: 5)
!3533 = !DILocation(line: 746, column: 5, scope: !3532)
!3534 = !DILocation(line: 747, column: 7, scope: !3535)
!3535 = distinct !DILexicalBlock(scope: !3536, file: !561, line: 747, column: 7)
!3536 = distinct !DILexicalBlock(scope: !3531, file: !561, line: 747, column: 7)
!3537 = !DILocation(line: 747, column: 7, scope: !3536)
!3538 = !DILocation(line: 746, column: 39, scope: !3531)
!3539 = distinct !{!3539, !3533, !3540, !990}
!3540 = !DILocation(line: 747, column: 7, scope: !3532)
!3541 = !DILocation(line: 749, column: 11, scope: !3542)
!3542 = distinct !DILexicalBlock(scope: !2982, file: !561, line: 749, column: 7)
!3543 = !DILocation(line: 749, column: 7, scope: !2982)
!3544 = !DILocation(line: 750, column: 5, scope: !3542)
!3545 = !DILocation(line: 750, column: 17, scope: !3542)
!3546 = !DILocation(line: 753, column: 2, scope: !2982)
!3547 = !DILocation(line: 756, column: 51, scope: !3548)
!3548 = distinct !DILexicalBlock(scope: !2982, file: !561, line: 756, column: 7)
!3549 = !DILocation(line: 756, column: 21, scope: !3548)
!3550 = !DILocation(line: 760, column: 42, scope: !2982)
!3551 = !DILocation(line: 758, column: 10, scope: !2982)
!3552 = !DILocation(line: 758, column: 3, scope: !2982)
!3553 = !DILocation(line: 762, column: 1, scope: !2982)
!3554 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1067, file: !1067, line: 98, type: !3555, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3555 = !DISubroutineType(types: !3556)
!3556 = !{!133}
!3557 = !DISubprogram(name: "strlen", scope: !1063, file: !1063, line: 407, type: !3558, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3558 = !DISubroutineType(types: !3559)
!3559 = !{!135, !136}
!3560 = !DISubprogram(name: "iswprint", scope: !3561, file: !3561, line: 120, type: !3357, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3561 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!3562 = distinct !DISubprogram(name: "quotearg_alloc", scope: !561, file: !561, line: 788, type: !3563, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !582, retainedNodes: !3565)
!3563 = !DISubroutineType(types: !3564)
!3564 = !{!130, !136, !133, !2875}
!3565 = !{!3566, !3567, !3568}
!3566 = !DILocalVariable(name: "arg", arg: 1, scope: !3562, file: !561, line: 788, type: !136)
!3567 = !DILocalVariable(name: "argsize", arg: 2, scope: !3562, file: !561, line: 788, type: !133)
!3568 = !DILocalVariable(name: "o", arg: 3, scope: !3562, file: !561, line: 789, type: !2875)
!3569 = !DILocation(line: 0, scope: !3562)
!3570 = !DILocalVariable(name: "arg", arg: 1, scope: !3571, file: !561, line: 801, type: !136)
!3571 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !561, file: !561, line: 801, type: !3572, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !582, retainedNodes: !3574)
!3572 = !DISubroutineType(types: !3573)
!3573 = !{!130, !136, !133, !803, !2875}
!3574 = !{!3570, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582}
!3575 = !DILocalVariable(name: "argsize", arg: 2, scope: !3571, file: !561, line: 801, type: !133)
!3576 = !DILocalVariable(name: "size", arg: 3, scope: !3571, file: !561, line: 801, type: !803)
!3577 = !DILocalVariable(name: "o", arg: 4, scope: !3571, file: !561, line: 802, type: !2875)
!3578 = !DILocalVariable(name: "p", scope: !3571, file: !561, line: 804, type: !2875)
!3579 = !DILocalVariable(name: "saved_errno", scope: !3571, file: !561, line: 805, type: !87)
!3580 = !DILocalVariable(name: "flags", scope: !3571, file: !561, line: 807, type: !87)
!3581 = !DILocalVariable(name: "bufsize", scope: !3571, file: !561, line: 808, type: !133)
!3582 = !DILocalVariable(name: "buf", scope: !3571, file: !561, line: 812, type: !130)
!3583 = !DILocation(line: 0, scope: !3571, inlinedAt: !3584)
!3584 = distinct !DILocation(line: 791, column: 10, scope: !3562)
!3585 = !DILocation(line: 804, column: 37, scope: !3571, inlinedAt: !3584)
!3586 = !DILocation(line: 805, column: 21, scope: !3571, inlinedAt: !3584)
!3587 = !DILocation(line: 807, column: 18, scope: !3571, inlinedAt: !3584)
!3588 = !DILocation(line: 807, column: 24, scope: !3571, inlinedAt: !3584)
!3589 = !DILocation(line: 808, column: 72, scope: !3571, inlinedAt: !3584)
!3590 = !DILocation(line: 809, column: 56, scope: !3571, inlinedAt: !3584)
!3591 = !DILocation(line: 810, column: 49, scope: !3571, inlinedAt: !3584)
!3592 = !DILocation(line: 811, column: 49, scope: !3571, inlinedAt: !3584)
!3593 = !DILocation(line: 808, column: 20, scope: !3571, inlinedAt: !3584)
!3594 = !DILocation(line: 811, column: 62, scope: !3571, inlinedAt: !3584)
!3595 = !DILocation(line: 812, column: 15, scope: !3571, inlinedAt: !3584)
!3596 = !DILocation(line: 813, column: 60, scope: !3571, inlinedAt: !3584)
!3597 = !DILocation(line: 815, column: 32, scope: !3571, inlinedAt: !3584)
!3598 = !DILocation(line: 815, column: 47, scope: !3571, inlinedAt: !3584)
!3599 = !DILocation(line: 813, column: 3, scope: !3571, inlinedAt: !3584)
!3600 = !DILocation(line: 816, column: 9, scope: !3571, inlinedAt: !3584)
!3601 = !DILocation(line: 791, column: 3, scope: !3562)
!3602 = !DILocation(line: 0, scope: !3571)
!3603 = !DILocation(line: 804, column: 37, scope: !3571)
!3604 = !DILocation(line: 805, column: 21, scope: !3571)
!3605 = !DILocation(line: 807, column: 18, scope: !3571)
!3606 = !DILocation(line: 807, column: 27, scope: !3571)
!3607 = !DILocation(line: 807, column: 24, scope: !3571)
!3608 = !DILocation(line: 808, column: 72, scope: !3571)
!3609 = !DILocation(line: 809, column: 56, scope: !3571)
!3610 = !DILocation(line: 810, column: 49, scope: !3571)
!3611 = !DILocation(line: 811, column: 49, scope: !3571)
!3612 = !DILocation(line: 808, column: 20, scope: !3571)
!3613 = !DILocation(line: 811, column: 62, scope: !3571)
!3614 = !DILocation(line: 812, column: 15, scope: !3571)
!3615 = !DILocation(line: 813, column: 60, scope: !3571)
!3616 = !DILocation(line: 815, column: 32, scope: !3571)
!3617 = !DILocation(line: 815, column: 47, scope: !3571)
!3618 = !DILocation(line: 813, column: 3, scope: !3571)
!3619 = !DILocation(line: 816, column: 9, scope: !3571)
!3620 = !DILocation(line: 817, column: 7, scope: !3571)
!3621 = !DILocation(line: 818, column: 11, scope: !3622)
!3622 = distinct !DILexicalBlock(scope: !3571, file: !561, line: 817, column: 7)
!3623 = !DILocation(line: 818, column: 5, scope: !3622)
!3624 = !DILocation(line: 819, column: 3, scope: !3571)
!3625 = distinct !DISubprogram(name: "quotearg_free", scope: !561, file: !561, line: 837, type: !517, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !582, retainedNodes: !3626)
!3626 = !{!3627, !3628}
!3627 = !DILocalVariable(name: "sv", scope: !3625, file: !561, line: 839, type: !645)
!3628 = !DILocalVariable(name: "i", scope: !3629, file: !561, line: 840, type: !87)
!3629 = distinct !DILexicalBlock(scope: !3625, file: !561, line: 840, column: 3)
!3630 = !DILocation(line: 839, column: 24, scope: !3625)
!3631 = !DILocation(line: 0, scope: !3625)
!3632 = !DILocation(line: 0, scope: !3629)
!3633 = !DILocation(line: 840, column: 21, scope: !3634)
!3634 = distinct !DILexicalBlock(scope: !3629, file: !561, line: 840, column: 3)
!3635 = !DILocation(line: 840, column: 3, scope: !3629)
!3636 = !DILocation(line: 842, column: 13, scope: !3637)
!3637 = distinct !DILexicalBlock(scope: !3625, file: !561, line: 842, column: 7)
!3638 = !{!3639, !874, i64 8}
!3639 = !{!"slotvec", !1310, i64 0, !874, i64 8}
!3640 = !DILocation(line: 842, column: 17, scope: !3637)
!3641 = !DILocation(line: 842, column: 7, scope: !3625)
!3642 = !DILocation(line: 841, column: 17, scope: !3634)
!3643 = !DILocation(line: 841, column: 5, scope: !3634)
!3644 = !DILocation(line: 840, column: 32, scope: !3634)
!3645 = distinct !{!3645, !3635, !3646, !990}
!3646 = !DILocation(line: 841, column: 20, scope: !3629)
!3647 = !DILocation(line: 844, column: 7, scope: !3648)
!3648 = distinct !DILexicalBlock(scope: !3637, file: !561, line: 843, column: 5)
!3649 = !DILocation(line: 845, column: 21, scope: !3648)
!3650 = !{!3639, !1310, i64 0}
!3651 = !DILocation(line: 846, column: 20, scope: !3648)
!3652 = !DILocation(line: 847, column: 5, scope: !3648)
!3653 = !DILocation(line: 848, column: 10, scope: !3654)
!3654 = distinct !DILexicalBlock(scope: !3625, file: !561, line: 848, column: 7)
!3655 = !DILocation(line: 848, column: 7, scope: !3625)
!3656 = !DILocation(line: 850, column: 7, scope: !3657)
!3657 = distinct !DILexicalBlock(scope: !3654, file: !561, line: 849, column: 5)
!3658 = !DILocation(line: 851, column: 15, scope: !3657)
!3659 = !DILocation(line: 852, column: 5, scope: !3657)
!3660 = !DILocation(line: 853, column: 10, scope: !3625)
!3661 = !DILocation(line: 854, column: 1, scope: !3625)
!3662 = distinct !DISubprogram(name: "quotearg_n", scope: !561, file: !561, line: 919, type: !1060, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !582, retainedNodes: !3663)
!3663 = !{!3664, !3665}
!3664 = !DILocalVariable(name: "n", arg: 1, scope: !3662, file: !561, line: 919, type: !87)
!3665 = !DILocalVariable(name: "arg", arg: 2, scope: !3662, file: !561, line: 919, type: !136)
!3666 = !DILocation(line: 0, scope: !3662)
!3667 = !DILocation(line: 921, column: 10, scope: !3662)
!3668 = !DILocation(line: 921, column: 3, scope: !3662)
!3669 = distinct !DISubprogram(name: "quotearg_n_options", scope: !561, file: !561, line: 866, type: !3670, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !582, retainedNodes: !3672)
!3670 = !DISubroutineType(types: !3671)
!3671 = !{!130, !87, !136, !133, !2875}
!3672 = !{!3673, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3683, !3684, !3686, !3687, !3688}
!3673 = !DILocalVariable(name: "n", arg: 1, scope: !3669, file: !561, line: 866, type: !87)
!3674 = !DILocalVariable(name: "arg", arg: 2, scope: !3669, file: !561, line: 866, type: !136)
!3675 = !DILocalVariable(name: "argsize", arg: 3, scope: !3669, file: !561, line: 866, type: !133)
!3676 = !DILocalVariable(name: "options", arg: 4, scope: !3669, file: !561, line: 867, type: !2875)
!3677 = !DILocalVariable(name: "saved_errno", scope: !3669, file: !561, line: 869, type: !87)
!3678 = !DILocalVariable(name: "sv", scope: !3669, file: !561, line: 871, type: !645)
!3679 = !DILocalVariable(name: "nslots_max", scope: !3669, file: !561, line: 873, type: !87)
!3680 = !DILocalVariable(name: "preallocated", scope: !3681, file: !561, line: 879, type: !196)
!3681 = distinct !DILexicalBlock(scope: !3682, file: !561, line: 878, column: 5)
!3682 = distinct !DILexicalBlock(scope: !3669, file: !561, line: 877, column: 7)
!3683 = !DILocalVariable(name: "new_nslots", scope: !3681, file: !561, line: 880, type: !816)
!3684 = !DILocalVariable(name: "size", scope: !3685, file: !561, line: 891, type: !133)
!3685 = distinct !DILexicalBlock(scope: !3669, file: !561, line: 890, column: 3)
!3686 = !DILocalVariable(name: "val", scope: !3685, file: !561, line: 892, type: !130)
!3687 = !DILocalVariable(name: "flags", scope: !3685, file: !561, line: 894, type: !87)
!3688 = !DILocalVariable(name: "qsize", scope: !3685, file: !561, line: 895, type: !133)
!3689 = distinct !DIAssignID()
!3690 = !DILocation(line: 0, scope: !3681)
!3691 = !DILocation(line: 0, scope: !3669)
!3692 = !DILocation(line: 869, column: 21, scope: !3669)
!3693 = !DILocation(line: 871, column: 24, scope: !3669)
!3694 = !DILocation(line: 874, column: 17, scope: !3695)
!3695 = distinct !DILexicalBlock(scope: !3669, file: !561, line: 874, column: 7)
!3696 = !DILocation(line: 875, column: 5, scope: !3695)
!3697 = !DILocation(line: 877, column: 7, scope: !3682)
!3698 = !DILocation(line: 877, column: 14, scope: !3682)
!3699 = !DILocation(line: 877, column: 7, scope: !3669)
!3700 = !DILocation(line: 879, column: 31, scope: !3681)
!3701 = !DILocation(line: 880, column: 7, scope: !3681)
!3702 = !DILocation(line: 880, column: 26, scope: !3681)
!3703 = !DILocation(line: 880, column: 13, scope: !3681)
!3704 = distinct !DIAssignID()
!3705 = !DILocation(line: 882, column: 31, scope: !3681)
!3706 = !DILocation(line: 883, column: 33, scope: !3681)
!3707 = !DILocation(line: 883, column: 42, scope: !3681)
!3708 = !DILocation(line: 883, column: 31, scope: !3681)
!3709 = !DILocation(line: 882, column: 22, scope: !3681)
!3710 = !DILocation(line: 882, column: 15, scope: !3681)
!3711 = !DILocation(line: 884, column: 11, scope: !3681)
!3712 = !DILocation(line: 885, column: 15, scope: !3713)
!3713 = distinct !DILexicalBlock(scope: !3681, file: !561, line: 884, column: 11)
!3714 = !{i64 0, i64 8, !1328, i64 8, i64 8, !873}
!3715 = !DILocation(line: 885, column: 9, scope: !3713)
!3716 = !DILocation(line: 886, column: 20, scope: !3681)
!3717 = !DILocation(line: 886, column: 18, scope: !3681)
!3718 = !DILocation(line: 886, column: 32, scope: !3681)
!3719 = !DILocation(line: 886, column: 43, scope: !3681)
!3720 = !DILocation(line: 886, column: 53, scope: !3681)
!3721 = !DILocation(line: 0, scope: !3097, inlinedAt: !3722)
!3722 = distinct !DILocation(line: 886, column: 7, scope: !3681)
!3723 = !DILocation(line: 59, column: 10, scope: !3097, inlinedAt: !3722)
!3724 = !DILocation(line: 887, column: 16, scope: !3681)
!3725 = !DILocation(line: 887, column: 14, scope: !3681)
!3726 = !DILocation(line: 888, column: 5, scope: !3682)
!3727 = !DILocation(line: 888, column: 5, scope: !3681)
!3728 = !DILocation(line: 891, column: 19, scope: !3685)
!3729 = !DILocation(line: 891, column: 25, scope: !3685)
!3730 = !DILocation(line: 0, scope: !3685)
!3731 = !DILocation(line: 892, column: 23, scope: !3685)
!3732 = !DILocation(line: 894, column: 26, scope: !3685)
!3733 = !DILocation(line: 894, column: 32, scope: !3685)
!3734 = !DILocation(line: 896, column: 55, scope: !3685)
!3735 = !DILocation(line: 897, column: 55, scope: !3685)
!3736 = !DILocation(line: 898, column: 55, scope: !3685)
!3737 = !DILocation(line: 899, column: 55, scope: !3685)
!3738 = !DILocation(line: 895, column: 20, scope: !3685)
!3739 = !DILocation(line: 901, column: 14, scope: !3740)
!3740 = distinct !DILexicalBlock(scope: !3685, file: !561, line: 901, column: 9)
!3741 = !DILocation(line: 901, column: 9, scope: !3685)
!3742 = !DILocation(line: 903, column: 35, scope: !3743)
!3743 = distinct !DILexicalBlock(scope: !3740, file: !561, line: 902, column: 7)
!3744 = !DILocation(line: 903, column: 20, scope: !3743)
!3745 = !DILocation(line: 904, column: 17, scope: !3746)
!3746 = distinct !DILexicalBlock(scope: !3743, file: !561, line: 904, column: 13)
!3747 = !DILocation(line: 904, column: 13, scope: !3743)
!3748 = !DILocation(line: 905, column: 11, scope: !3746)
!3749 = !DILocation(line: 906, column: 27, scope: !3743)
!3750 = !DILocation(line: 906, column: 19, scope: !3743)
!3751 = !DILocation(line: 907, column: 69, scope: !3743)
!3752 = !DILocation(line: 909, column: 44, scope: !3743)
!3753 = !DILocation(line: 910, column: 44, scope: !3743)
!3754 = !DILocation(line: 907, column: 9, scope: !3743)
!3755 = !DILocation(line: 911, column: 7, scope: !3743)
!3756 = !DILocation(line: 913, column: 11, scope: !3685)
!3757 = !DILocation(line: 914, column: 5, scope: !3685)
!3758 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !561, file: !561, line: 925, type: !3759, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !582, retainedNodes: !3761)
!3759 = !DISubroutineType(types: !3760)
!3760 = !{!130, !87, !136, !133}
!3761 = !{!3762, !3763, !3764}
!3762 = !DILocalVariable(name: "n", arg: 1, scope: !3758, file: !561, line: 925, type: !87)
!3763 = !DILocalVariable(name: "arg", arg: 2, scope: !3758, file: !561, line: 925, type: !136)
!3764 = !DILocalVariable(name: "argsize", arg: 3, scope: !3758, file: !561, line: 925, type: !133)
!3765 = !DILocation(line: 0, scope: !3758)
!3766 = !DILocation(line: 927, column: 10, scope: !3758)
!3767 = !DILocation(line: 927, column: 3, scope: !3758)
!3768 = distinct !DISubprogram(name: "quotearg", scope: !561, file: !561, line: 931, type: !1069, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !582, retainedNodes: !3769)
!3769 = !{!3770}
!3770 = !DILocalVariable(name: "arg", arg: 1, scope: !3768, file: !561, line: 931, type: !136)
!3771 = !DILocation(line: 0, scope: !3768)
!3772 = !DILocation(line: 0, scope: !3662, inlinedAt: !3773)
!3773 = distinct !DILocation(line: 933, column: 10, scope: !3768)
!3774 = !DILocation(line: 921, column: 10, scope: !3662, inlinedAt: !3773)
!3775 = !DILocation(line: 933, column: 3, scope: !3768)
!3776 = distinct !DISubprogram(name: "quotearg_mem", scope: !561, file: !561, line: 937, type: !3777, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !582, retainedNodes: !3779)
!3777 = !DISubroutineType(types: !3778)
!3778 = !{!130, !136, !133}
!3779 = !{!3780, !3781}
!3780 = !DILocalVariable(name: "arg", arg: 1, scope: !3776, file: !561, line: 937, type: !136)
!3781 = !DILocalVariable(name: "argsize", arg: 2, scope: !3776, file: !561, line: 937, type: !133)
!3782 = !DILocation(line: 0, scope: !3776)
!3783 = !DILocation(line: 0, scope: !3758, inlinedAt: !3784)
!3784 = distinct !DILocation(line: 939, column: 10, scope: !3776)
!3785 = !DILocation(line: 927, column: 10, scope: !3758, inlinedAt: !3784)
!3786 = !DILocation(line: 939, column: 3, scope: !3776)
!3787 = distinct !DISubprogram(name: "quotearg_n_style", scope: !561, file: !561, line: 943, type: !3788, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !582, retainedNodes: !3790)
!3788 = !DISubroutineType(types: !3789)
!3789 = !{!130, !87, !584, !136}
!3790 = !{!3791, !3792, !3793, !3794}
!3791 = !DILocalVariable(name: "n", arg: 1, scope: !3787, file: !561, line: 943, type: !87)
!3792 = !DILocalVariable(name: "s", arg: 2, scope: !3787, file: !561, line: 943, type: !584)
!3793 = !DILocalVariable(name: "arg", arg: 3, scope: !3787, file: !561, line: 943, type: !136)
!3794 = !DILocalVariable(name: "o", scope: !3787, file: !561, line: 945, type: !2876)
!3795 = distinct !DIAssignID()
!3796 = !DILocation(line: 0, scope: !3787)
!3797 = !DILocation(line: 945, column: 3, scope: !3787)
!3798 = !{!3799}
!3799 = distinct !{!3799, !3800, !"quoting_options_from_style: argument 0"}
!3800 = distinct !{!3800, !"quoting_options_from_style"}
!3801 = !DILocation(line: 945, column: 36, scope: !3787)
!3802 = !DILocalVariable(name: "style", arg: 1, scope: !3803, file: !561, line: 183, type: !584)
!3803 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !561, file: !561, line: 183, type: !3804, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !582, retainedNodes: !3806)
!3804 = !DISubroutineType(types: !3805)
!3805 = !{!599, !584}
!3806 = !{!3802, !3807}
!3807 = !DILocalVariable(name: "o", scope: !3803, file: !561, line: 185, type: !599)
!3808 = !DILocation(line: 0, scope: !3803, inlinedAt: !3809)
!3809 = distinct !DILocation(line: 945, column: 36, scope: !3787)
!3810 = !DILocation(line: 185, column: 26, scope: !3803, inlinedAt: !3809)
!3811 = distinct !DIAssignID()
!3812 = !DILocation(line: 186, column: 13, scope: !3813, inlinedAt: !3809)
!3813 = distinct !DILexicalBlock(scope: !3803, file: !561, line: 186, column: 7)
!3814 = !DILocation(line: 186, column: 7, scope: !3803, inlinedAt: !3809)
!3815 = !DILocation(line: 187, column: 5, scope: !3813, inlinedAt: !3809)
!3816 = !DILocation(line: 188, column: 11, scope: !3803, inlinedAt: !3809)
!3817 = distinct !DIAssignID()
!3818 = !DILocation(line: 946, column: 10, scope: !3787)
!3819 = !DILocation(line: 947, column: 1, scope: !3787)
!3820 = !DILocation(line: 946, column: 3, scope: !3787)
!3821 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !561, file: !561, line: 950, type: !3822, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !582, retainedNodes: !3824)
!3822 = !DISubroutineType(types: !3823)
!3823 = !{!130, !87, !584, !136, !133}
!3824 = !{!3825, !3826, !3827, !3828, !3829}
!3825 = !DILocalVariable(name: "n", arg: 1, scope: !3821, file: !561, line: 950, type: !87)
!3826 = !DILocalVariable(name: "s", arg: 2, scope: !3821, file: !561, line: 950, type: !584)
!3827 = !DILocalVariable(name: "arg", arg: 3, scope: !3821, file: !561, line: 951, type: !136)
!3828 = !DILocalVariable(name: "argsize", arg: 4, scope: !3821, file: !561, line: 951, type: !133)
!3829 = !DILocalVariable(name: "o", scope: !3821, file: !561, line: 953, type: !2876)
!3830 = distinct !DIAssignID()
!3831 = !DILocation(line: 0, scope: !3821)
!3832 = !DILocation(line: 953, column: 3, scope: !3821)
!3833 = !{!3834}
!3834 = distinct !{!3834, !3835, !"quoting_options_from_style: argument 0"}
!3835 = distinct !{!3835, !"quoting_options_from_style"}
!3836 = !DILocation(line: 953, column: 36, scope: !3821)
!3837 = !DILocation(line: 0, scope: !3803, inlinedAt: !3838)
!3838 = distinct !DILocation(line: 953, column: 36, scope: !3821)
!3839 = !DILocation(line: 185, column: 26, scope: !3803, inlinedAt: !3838)
!3840 = distinct !DIAssignID()
!3841 = !DILocation(line: 186, column: 13, scope: !3813, inlinedAt: !3838)
!3842 = !DILocation(line: 186, column: 7, scope: !3803, inlinedAt: !3838)
!3843 = !DILocation(line: 187, column: 5, scope: !3813, inlinedAt: !3838)
!3844 = !DILocation(line: 188, column: 11, scope: !3803, inlinedAt: !3838)
!3845 = distinct !DIAssignID()
!3846 = !DILocation(line: 954, column: 10, scope: !3821)
!3847 = !DILocation(line: 955, column: 1, scope: !3821)
!3848 = !DILocation(line: 954, column: 3, scope: !3821)
!3849 = distinct !DISubprogram(name: "quotearg_style", scope: !561, file: !561, line: 958, type: !3850, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !582, retainedNodes: !3852)
!3850 = !DISubroutineType(types: !3851)
!3851 = !{!130, !584, !136}
!3852 = !{!3853, !3854}
!3853 = !DILocalVariable(name: "s", arg: 1, scope: !3849, file: !561, line: 958, type: !584)
!3854 = !DILocalVariable(name: "arg", arg: 2, scope: !3849, file: !561, line: 958, type: !136)
!3855 = distinct !DIAssignID()
!3856 = !DILocation(line: 0, scope: !3849)
!3857 = !DILocation(line: 0, scope: !3787, inlinedAt: !3858)
!3858 = distinct !DILocation(line: 960, column: 10, scope: !3849)
!3859 = !DILocation(line: 945, column: 3, scope: !3787, inlinedAt: !3858)
!3860 = !{!3861}
!3861 = distinct !{!3861, !3862, !"quoting_options_from_style: argument 0"}
!3862 = distinct !{!3862, !"quoting_options_from_style"}
!3863 = !DILocation(line: 945, column: 36, scope: !3787, inlinedAt: !3858)
!3864 = !DILocation(line: 0, scope: !3803, inlinedAt: !3865)
!3865 = distinct !DILocation(line: 945, column: 36, scope: !3787, inlinedAt: !3858)
!3866 = !DILocation(line: 185, column: 26, scope: !3803, inlinedAt: !3865)
!3867 = distinct !DIAssignID()
!3868 = !DILocation(line: 186, column: 13, scope: !3813, inlinedAt: !3865)
!3869 = !DILocation(line: 186, column: 7, scope: !3803, inlinedAt: !3865)
!3870 = !DILocation(line: 187, column: 5, scope: !3813, inlinedAt: !3865)
!3871 = !DILocation(line: 188, column: 11, scope: !3803, inlinedAt: !3865)
!3872 = distinct !DIAssignID()
!3873 = !DILocation(line: 946, column: 10, scope: !3787, inlinedAt: !3858)
!3874 = !DILocation(line: 947, column: 1, scope: !3787, inlinedAt: !3858)
!3875 = !DILocation(line: 960, column: 3, scope: !3849)
!3876 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !561, file: !561, line: 964, type: !3877, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !582, retainedNodes: !3879)
!3877 = !DISubroutineType(types: !3878)
!3878 = !{!130, !584, !136, !133}
!3879 = !{!3880, !3881, !3882}
!3880 = !DILocalVariable(name: "s", arg: 1, scope: !3876, file: !561, line: 964, type: !584)
!3881 = !DILocalVariable(name: "arg", arg: 2, scope: !3876, file: !561, line: 964, type: !136)
!3882 = !DILocalVariable(name: "argsize", arg: 3, scope: !3876, file: !561, line: 964, type: !133)
!3883 = distinct !DIAssignID()
!3884 = !DILocation(line: 0, scope: !3876)
!3885 = !DILocation(line: 0, scope: !3821, inlinedAt: !3886)
!3886 = distinct !DILocation(line: 966, column: 10, scope: !3876)
!3887 = !DILocation(line: 953, column: 3, scope: !3821, inlinedAt: !3886)
!3888 = !{!3889}
!3889 = distinct !{!3889, !3890, !"quoting_options_from_style: argument 0"}
!3890 = distinct !{!3890, !"quoting_options_from_style"}
!3891 = !DILocation(line: 953, column: 36, scope: !3821, inlinedAt: !3886)
!3892 = !DILocation(line: 0, scope: !3803, inlinedAt: !3893)
!3893 = distinct !DILocation(line: 953, column: 36, scope: !3821, inlinedAt: !3886)
!3894 = !DILocation(line: 185, column: 26, scope: !3803, inlinedAt: !3893)
!3895 = distinct !DIAssignID()
!3896 = !DILocation(line: 186, column: 13, scope: !3813, inlinedAt: !3893)
!3897 = !DILocation(line: 186, column: 7, scope: !3803, inlinedAt: !3893)
!3898 = !DILocation(line: 187, column: 5, scope: !3813, inlinedAt: !3893)
!3899 = !DILocation(line: 188, column: 11, scope: !3803, inlinedAt: !3893)
!3900 = distinct !DIAssignID()
!3901 = !DILocation(line: 954, column: 10, scope: !3821, inlinedAt: !3886)
!3902 = !DILocation(line: 955, column: 1, scope: !3821, inlinedAt: !3886)
!3903 = !DILocation(line: 966, column: 3, scope: !3876)
!3904 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !561, file: !561, line: 970, type: !3905, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !582, retainedNodes: !3907)
!3905 = !DISubroutineType(types: !3906)
!3906 = !{!130, !136, !133, !4}
!3907 = !{!3908, !3909, !3910, !3911}
!3908 = !DILocalVariable(name: "arg", arg: 1, scope: !3904, file: !561, line: 970, type: !136)
!3909 = !DILocalVariable(name: "argsize", arg: 2, scope: !3904, file: !561, line: 970, type: !133)
!3910 = !DILocalVariable(name: "ch", arg: 3, scope: !3904, file: !561, line: 970, type: !4)
!3911 = !DILocalVariable(name: "options", scope: !3904, file: !561, line: 972, type: !599)
!3912 = distinct !DIAssignID()
!3913 = !DILocation(line: 0, scope: !3904)
!3914 = !DILocation(line: 972, column: 3, scope: !3904)
!3915 = !DILocation(line: 973, column: 13, scope: !3904)
!3916 = !{i64 0, i64 4, !943, i64 4, i64 4, !943, i64 8, i64 32, !952, i64 40, i64 8, !873, i64 48, i64 8, !873}
!3917 = distinct !DIAssignID()
!3918 = !DILocation(line: 0, scope: !2895, inlinedAt: !3919)
!3919 = distinct !DILocation(line: 974, column: 3, scope: !3904)
!3920 = !DILocation(line: 147, column: 41, scope: !2895, inlinedAt: !3919)
!3921 = !DILocation(line: 147, column: 62, scope: !2895, inlinedAt: !3919)
!3922 = !DILocation(line: 147, column: 57, scope: !2895, inlinedAt: !3919)
!3923 = !DILocation(line: 148, column: 15, scope: !2895, inlinedAt: !3919)
!3924 = !DILocation(line: 149, column: 21, scope: !2895, inlinedAt: !3919)
!3925 = !DILocation(line: 149, column: 24, scope: !2895, inlinedAt: !3919)
!3926 = !DILocation(line: 150, column: 19, scope: !2895, inlinedAt: !3919)
!3927 = !DILocation(line: 150, column: 24, scope: !2895, inlinedAt: !3919)
!3928 = !DILocation(line: 150, column: 6, scope: !2895, inlinedAt: !3919)
!3929 = !DILocation(line: 975, column: 10, scope: !3904)
!3930 = !DILocation(line: 976, column: 1, scope: !3904)
!3931 = !DILocation(line: 975, column: 3, scope: !3904)
!3932 = distinct !DISubprogram(name: "quotearg_char", scope: !561, file: !561, line: 979, type: !3933, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !582, retainedNodes: !3935)
!3933 = !DISubroutineType(types: !3934)
!3934 = !{!130, !136, !4}
!3935 = !{!3936, !3937}
!3936 = !DILocalVariable(name: "arg", arg: 1, scope: !3932, file: !561, line: 979, type: !136)
!3937 = !DILocalVariable(name: "ch", arg: 2, scope: !3932, file: !561, line: 979, type: !4)
!3938 = distinct !DIAssignID()
!3939 = !DILocation(line: 0, scope: !3932)
!3940 = !DILocation(line: 0, scope: !3904, inlinedAt: !3941)
!3941 = distinct !DILocation(line: 981, column: 10, scope: !3932)
!3942 = !DILocation(line: 972, column: 3, scope: !3904, inlinedAt: !3941)
!3943 = !DILocation(line: 973, column: 13, scope: !3904, inlinedAt: !3941)
!3944 = distinct !DIAssignID()
!3945 = !DILocation(line: 0, scope: !2895, inlinedAt: !3946)
!3946 = distinct !DILocation(line: 974, column: 3, scope: !3904, inlinedAt: !3941)
!3947 = !DILocation(line: 147, column: 41, scope: !2895, inlinedAt: !3946)
!3948 = !DILocation(line: 147, column: 62, scope: !2895, inlinedAt: !3946)
!3949 = !DILocation(line: 147, column: 57, scope: !2895, inlinedAt: !3946)
!3950 = !DILocation(line: 148, column: 15, scope: !2895, inlinedAt: !3946)
!3951 = !DILocation(line: 149, column: 21, scope: !2895, inlinedAt: !3946)
!3952 = !DILocation(line: 149, column: 24, scope: !2895, inlinedAt: !3946)
!3953 = !DILocation(line: 150, column: 19, scope: !2895, inlinedAt: !3946)
!3954 = !DILocation(line: 150, column: 24, scope: !2895, inlinedAt: !3946)
!3955 = !DILocation(line: 150, column: 6, scope: !2895, inlinedAt: !3946)
!3956 = !DILocation(line: 975, column: 10, scope: !3904, inlinedAt: !3941)
!3957 = !DILocation(line: 976, column: 1, scope: !3904, inlinedAt: !3941)
!3958 = !DILocation(line: 981, column: 3, scope: !3932)
!3959 = distinct !DISubprogram(name: "quotearg_colon", scope: !561, file: !561, line: 985, type: !1069, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !582, retainedNodes: !3960)
!3960 = !{!3961}
!3961 = !DILocalVariable(name: "arg", arg: 1, scope: !3959, file: !561, line: 985, type: !136)
!3962 = distinct !DIAssignID()
!3963 = !DILocation(line: 0, scope: !3959)
!3964 = !DILocation(line: 0, scope: !3932, inlinedAt: !3965)
!3965 = distinct !DILocation(line: 987, column: 10, scope: !3959)
!3966 = !DILocation(line: 0, scope: !3904, inlinedAt: !3967)
!3967 = distinct !DILocation(line: 981, column: 10, scope: !3932, inlinedAt: !3965)
!3968 = !DILocation(line: 972, column: 3, scope: !3904, inlinedAt: !3967)
!3969 = !DILocation(line: 973, column: 13, scope: !3904, inlinedAt: !3967)
!3970 = distinct !DIAssignID()
!3971 = !DILocation(line: 0, scope: !2895, inlinedAt: !3972)
!3972 = distinct !DILocation(line: 974, column: 3, scope: !3904, inlinedAt: !3967)
!3973 = !DILocation(line: 147, column: 57, scope: !2895, inlinedAt: !3972)
!3974 = !DILocation(line: 149, column: 21, scope: !2895, inlinedAt: !3972)
!3975 = !DILocation(line: 150, column: 6, scope: !2895, inlinedAt: !3972)
!3976 = !DILocation(line: 975, column: 10, scope: !3904, inlinedAt: !3967)
!3977 = !DILocation(line: 976, column: 1, scope: !3904, inlinedAt: !3967)
!3978 = !DILocation(line: 987, column: 3, scope: !3959)
!3979 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !561, file: !561, line: 991, type: !3777, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !582, retainedNodes: !3980)
!3980 = !{!3981, !3982}
!3981 = !DILocalVariable(name: "arg", arg: 1, scope: !3979, file: !561, line: 991, type: !136)
!3982 = !DILocalVariable(name: "argsize", arg: 2, scope: !3979, file: !561, line: 991, type: !133)
!3983 = distinct !DIAssignID()
!3984 = !DILocation(line: 0, scope: !3979)
!3985 = !DILocation(line: 0, scope: !3904, inlinedAt: !3986)
!3986 = distinct !DILocation(line: 993, column: 10, scope: !3979)
!3987 = !DILocation(line: 972, column: 3, scope: !3904, inlinedAt: !3986)
!3988 = !DILocation(line: 973, column: 13, scope: !3904, inlinedAt: !3986)
!3989 = distinct !DIAssignID()
!3990 = !DILocation(line: 0, scope: !2895, inlinedAt: !3991)
!3991 = distinct !DILocation(line: 974, column: 3, scope: !3904, inlinedAt: !3986)
!3992 = !DILocation(line: 147, column: 57, scope: !2895, inlinedAt: !3991)
!3993 = !DILocation(line: 149, column: 21, scope: !2895, inlinedAt: !3991)
!3994 = !DILocation(line: 150, column: 6, scope: !2895, inlinedAt: !3991)
!3995 = !DILocation(line: 975, column: 10, scope: !3904, inlinedAt: !3986)
!3996 = !DILocation(line: 976, column: 1, scope: !3904, inlinedAt: !3986)
!3997 = !DILocation(line: 993, column: 3, scope: !3979)
!3998 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !561, file: !561, line: 997, type: !3788, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !582, retainedNodes: !3999)
!3999 = !{!4000, !4001, !4002, !4003}
!4000 = !DILocalVariable(name: "n", arg: 1, scope: !3998, file: !561, line: 997, type: !87)
!4001 = !DILocalVariable(name: "s", arg: 2, scope: !3998, file: !561, line: 997, type: !584)
!4002 = !DILocalVariable(name: "arg", arg: 3, scope: !3998, file: !561, line: 997, type: !136)
!4003 = !DILocalVariable(name: "options", scope: !3998, file: !561, line: 999, type: !599)
!4004 = distinct !DIAssignID()
!4005 = !DILocation(line: 0, scope: !3998)
!4006 = !DILocation(line: 185, column: 26, scope: !3803, inlinedAt: !4007)
!4007 = distinct !DILocation(line: 1000, column: 13, scope: !3998)
!4008 = !DILocation(line: 999, column: 3, scope: !3998)
!4009 = !DILocation(line: 0, scope: !3803, inlinedAt: !4007)
!4010 = !DILocation(line: 186, column: 13, scope: !3813, inlinedAt: !4007)
!4011 = !DILocation(line: 186, column: 7, scope: !3803, inlinedAt: !4007)
!4012 = !DILocation(line: 187, column: 5, scope: !3813, inlinedAt: !4007)
!4013 = !{!4014}
!4014 = distinct !{!4014, !4015, !"quoting_options_from_style: argument 0"}
!4015 = distinct !{!4015, !"quoting_options_from_style"}
!4016 = !DILocation(line: 1000, column: 13, scope: !3998)
!4017 = distinct !DIAssignID()
!4018 = distinct !DIAssignID()
!4019 = !DILocation(line: 0, scope: !2895, inlinedAt: !4020)
!4020 = distinct !DILocation(line: 1001, column: 3, scope: !3998)
!4021 = !DILocation(line: 147, column: 57, scope: !2895, inlinedAt: !4020)
!4022 = !DILocation(line: 149, column: 21, scope: !2895, inlinedAt: !4020)
!4023 = !DILocation(line: 150, column: 6, scope: !2895, inlinedAt: !4020)
!4024 = distinct !DIAssignID()
!4025 = !DILocation(line: 1002, column: 10, scope: !3998)
!4026 = !DILocation(line: 1003, column: 1, scope: !3998)
!4027 = !DILocation(line: 1002, column: 3, scope: !3998)
!4028 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !561, file: !561, line: 1006, type: !4029, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !582, retainedNodes: !4031)
!4029 = !DISubroutineType(types: !4030)
!4030 = !{!130, !87, !136, !136, !136}
!4031 = !{!4032, !4033, !4034, !4035}
!4032 = !DILocalVariable(name: "n", arg: 1, scope: !4028, file: !561, line: 1006, type: !87)
!4033 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4028, file: !561, line: 1006, type: !136)
!4034 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4028, file: !561, line: 1007, type: !136)
!4035 = !DILocalVariable(name: "arg", arg: 4, scope: !4028, file: !561, line: 1007, type: !136)
!4036 = distinct !DIAssignID()
!4037 = !DILocation(line: 0, scope: !4028)
!4038 = !DILocalVariable(name: "o", scope: !4039, file: !561, line: 1018, type: !599)
!4039 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !561, file: !561, line: 1014, type: !4040, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !582, retainedNodes: !4042)
!4040 = !DISubroutineType(types: !4041)
!4041 = !{!130, !87, !136, !136, !136, !133}
!4042 = !{!4043, !4044, !4045, !4046, !4047, !4038}
!4043 = !DILocalVariable(name: "n", arg: 1, scope: !4039, file: !561, line: 1014, type: !87)
!4044 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4039, file: !561, line: 1014, type: !136)
!4045 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4039, file: !561, line: 1015, type: !136)
!4046 = !DILocalVariable(name: "arg", arg: 4, scope: !4039, file: !561, line: 1016, type: !136)
!4047 = !DILocalVariable(name: "argsize", arg: 5, scope: !4039, file: !561, line: 1016, type: !133)
!4048 = !DILocation(line: 0, scope: !4039, inlinedAt: !4049)
!4049 = distinct !DILocation(line: 1009, column: 10, scope: !4028)
!4050 = !DILocation(line: 1018, column: 3, scope: !4039, inlinedAt: !4049)
!4051 = !DILocation(line: 1018, column: 30, scope: !4039, inlinedAt: !4049)
!4052 = distinct !DIAssignID()
!4053 = distinct !DIAssignID()
!4054 = !DILocation(line: 0, scope: !2935, inlinedAt: !4055)
!4055 = distinct !DILocation(line: 1019, column: 3, scope: !4039, inlinedAt: !4049)
!4056 = !DILocation(line: 174, column: 12, scope: !2935, inlinedAt: !4055)
!4057 = distinct !DIAssignID()
!4058 = !DILocation(line: 175, column: 8, scope: !2948, inlinedAt: !4055)
!4059 = !DILocation(line: 175, column: 19, scope: !2948, inlinedAt: !4055)
!4060 = !DILocation(line: 176, column: 5, scope: !2948, inlinedAt: !4055)
!4061 = !DILocation(line: 177, column: 6, scope: !2935, inlinedAt: !4055)
!4062 = !DILocation(line: 177, column: 17, scope: !2935, inlinedAt: !4055)
!4063 = distinct !DIAssignID()
!4064 = !DILocation(line: 178, column: 6, scope: !2935, inlinedAt: !4055)
!4065 = !DILocation(line: 178, column: 18, scope: !2935, inlinedAt: !4055)
!4066 = distinct !DIAssignID()
!4067 = !DILocation(line: 1020, column: 10, scope: !4039, inlinedAt: !4049)
!4068 = !DILocation(line: 1021, column: 1, scope: !4039, inlinedAt: !4049)
!4069 = !DILocation(line: 1009, column: 3, scope: !4028)
!4070 = distinct !DIAssignID()
!4071 = !DILocation(line: 0, scope: !4039)
!4072 = !DILocation(line: 1018, column: 3, scope: !4039)
!4073 = !DILocation(line: 1018, column: 30, scope: !4039)
!4074 = distinct !DIAssignID()
!4075 = distinct !DIAssignID()
!4076 = !DILocation(line: 0, scope: !2935, inlinedAt: !4077)
!4077 = distinct !DILocation(line: 1019, column: 3, scope: !4039)
!4078 = !DILocation(line: 174, column: 12, scope: !2935, inlinedAt: !4077)
!4079 = distinct !DIAssignID()
!4080 = !DILocation(line: 175, column: 8, scope: !2948, inlinedAt: !4077)
!4081 = !DILocation(line: 175, column: 19, scope: !2948, inlinedAt: !4077)
!4082 = !DILocation(line: 176, column: 5, scope: !2948, inlinedAt: !4077)
!4083 = !DILocation(line: 177, column: 6, scope: !2935, inlinedAt: !4077)
!4084 = !DILocation(line: 177, column: 17, scope: !2935, inlinedAt: !4077)
!4085 = distinct !DIAssignID()
!4086 = !DILocation(line: 178, column: 6, scope: !2935, inlinedAt: !4077)
!4087 = !DILocation(line: 178, column: 18, scope: !2935, inlinedAt: !4077)
!4088 = distinct !DIAssignID()
!4089 = !DILocation(line: 1020, column: 10, scope: !4039)
!4090 = !DILocation(line: 1021, column: 1, scope: !4039)
!4091 = !DILocation(line: 1020, column: 3, scope: !4039)
!4092 = distinct !DISubprogram(name: "quotearg_custom", scope: !561, file: !561, line: 1024, type: !4093, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !582, retainedNodes: !4095)
!4093 = !DISubroutineType(types: !4094)
!4094 = !{!130, !136, !136, !136}
!4095 = !{!4096, !4097, !4098}
!4096 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4092, file: !561, line: 1024, type: !136)
!4097 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4092, file: !561, line: 1024, type: !136)
!4098 = !DILocalVariable(name: "arg", arg: 3, scope: !4092, file: !561, line: 1025, type: !136)
!4099 = distinct !DIAssignID()
!4100 = !DILocation(line: 0, scope: !4092)
!4101 = !DILocation(line: 0, scope: !4028, inlinedAt: !4102)
!4102 = distinct !DILocation(line: 1027, column: 10, scope: !4092)
!4103 = !DILocation(line: 0, scope: !4039, inlinedAt: !4104)
!4104 = distinct !DILocation(line: 1009, column: 10, scope: !4028, inlinedAt: !4102)
!4105 = !DILocation(line: 1018, column: 3, scope: !4039, inlinedAt: !4104)
!4106 = !DILocation(line: 1018, column: 30, scope: !4039, inlinedAt: !4104)
!4107 = distinct !DIAssignID()
!4108 = distinct !DIAssignID()
!4109 = !DILocation(line: 0, scope: !2935, inlinedAt: !4110)
!4110 = distinct !DILocation(line: 1019, column: 3, scope: !4039, inlinedAt: !4104)
!4111 = !DILocation(line: 174, column: 12, scope: !2935, inlinedAt: !4110)
!4112 = distinct !DIAssignID()
!4113 = !DILocation(line: 175, column: 8, scope: !2948, inlinedAt: !4110)
!4114 = !DILocation(line: 175, column: 19, scope: !2948, inlinedAt: !4110)
!4115 = !DILocation(line: 176, column: 5, scope: !2948, inlinedAt: !4110)
!4116 = !DILocation(line: 177, column: 6, scope: !2935, inlinedAt: !4110)
!4117 = !DILocation(line: 177, column: 17, scope: !2935, inlinedAt: !4110)
!4118 = distinct !DIAssignID()
!4119 = !DILocation(line: 178, column: 6, scope: !2935, inlinedAt: !4110)
!4120 = !DILocation(line: 178, column: 18, scope: !2935, inlinedAt: !4110)
!4121 = distinct !DIAssignID()
!4122 = !DILocation(line: 1020, column: 10, scope: !4039, inlinedAt: !4104)
!4123 = !DILocation(line: 1021, column: 1, scope: !4039, inlinedAt: !4104)
!4124 = !DILocation(line: 1027, column: 3, scope: !4092)
!4125 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !561, file: !561, line: 1031, type: !4126, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !582, retainedNodes: !4128)
!4126 = !DISubroutineType(types: !4127)
!4127 = !{!130, !136, !136, !136, !133}
!4128 = !{!4129, !4130, !4131, !4132}
!4129 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4125, file: !561, line: 1031, type: !136)
!4130 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4125, file: !561, line: 1031, type: !136)
!4131 = !DILocalVariable(name: "arg", arg: 3, scope: !4125, file: !561, line: 1032, type: !136)
!4132 = !DILocalVariable(name: "argsize", arg: 4, scope: !4125, file: !561, line: 1032, type: !133)
!4133 = distinct !DIAssignID()
!4134 = !DILocation(line: 0, scope: !4125)
!4135 = !DILocation(line: 0, scope: !4039, inlinedAt: !4136)
!4136 = distinct !DILocation(line: 1034, column: 10, scope: !4125)
!4137 = !DILocation(line: 1018, column: 3, scope: !4039, inlinedAt: !4136)
!4138 = !DILocation(line: 1018, column: 30, scope: !4039, inlinedAt: !4136)
!4139 = distinct !DIAssignID()
!4140 = distinct !DIAssignID()
!4141 = !DILocation(line: 0, scope: !2935, inlinedAt: !4142)
!4142 = distinct !DILocation(line: 1019, column: 3, scope: !4039, inlinedAt: !4136)
!4143 = !DILocation(line: 174, column: 12, scope: !2935, inlinedAt: !4142)
!4144 = distinct !DIAssignID()
!4145 = !DILocation(line: 175, column: 8, scope: !2948, inlinedAt: !4142)
!4146 = !DILocation(line: 175, column: 19, scope: !2948, inlinedAt: !4142)
!4147 = !DILocation(line: 176, column: 5, scope: !2948, inlinedAt: !4142)
!4148 = !DILocation(line: 177, column: 6, scope: !2935, inlinedAt: !4142)
!4149 = !DILocation(line: 177, column: 17, scope: !2935, inlinedAt: !4142)
!4150 = distinct !DIAssignID()
!4151 = !DILocation(line: 178, column: 6, scope: !2935, inlinedAt: !4142)
!4152 = !DILocation(line: 178, column: 18, scope: !2935, inlinedAt: !4142)
!4153 = distinct !DIAssignID()
!4154 = !DILocation(line: 1020, column: 10, scope: !4039, inlinedAt: !4136)
!4155 = !DILocation(line: 1021, column: 1, scope: !4039, inlinedAt: !4136)
!4156 = !DILocation(line: 1034, column: 3, scope: !4125)
!4157 = distinct !DISubprogram(name: "quote_n_mem", scope: !561, file: !561, line: 1049, type: !4158, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !582, retainedNodes: !4160)
!4158 = !DISubroutineType(types: !4159)
!4159 = !{!136, !87, !136, !133}
!4160 = !{!4161, !4162, !4163}
!4161 = !DILocalVariable(name: "n", arg: 1, scope: !4157, file: !561, line: 1049, type: !87)
!4162 = !DILocalVariable(name: "arg", arg: 2, scope: !4157, file: !561, line: 1049, type: !136)
!4163 = !DILocalVariable(name: "argsize", arg: 3, scope: !4157, file: !561, line: 1049, type: !133)
!4164 = !DILocation(line: 0, scope: !4157)
!4165 = !DILocation(line: 1051, column: 10, scope: !4157)
!4166 = !DILocation(line: 1051, column: 3, scope: !4157)
!4167 = distinct !DISubprogram(name: "quote_mem", scope: !561, file: !561, line: 1055, type: !4168, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !582, retainedNodes: !4170)
!4168 = !DISubroutineType(types: !4169)
!4169 = !{!136, !136, !133}
!4170 = !{!4171, !4172}
!4171 = !DILocalVariable(name: "arg", arg: 1, scope: !4167, file: !561, line: 1055, type: !136)
!4172 = !DILocalVariable(name: "argsize", arg: 2, scope: !4167, file: !561, line: 1055, type: !133)
!4173 = !DILocation(line: 0, scope: !4167)
!4174 = !DILocation(line: 0, scope: !4157, inlinedAt: !4175)
!4175 = distinct !DILocation(line: 1057, column: 10, scope: !4167)
!4176 = !DILocation(line: 1051, column: 10, scope: !4157, inlinedAt: !4175)
!4177 = !DILocation(line: 1057, column: 3, scope: !4167)
!4178 = distinct !DISubprogram(name: "quote_n", scope: !561, file: !561, line: 1061, type: !4179, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !582, retainedNodes: !4181)
!4179 = !DISubroutineType(types: !4180)
!4180 = !{!136, !87, !136}
!4181 = !{!4182, !4183}
!4182 = !DILocalVariable(name: "n", arg: 1, scope: !4178, file: !561, line: 1061, type: !87)
!4183 = !DILocalVariable(name: "arg", arg: 2, scope: !4178, file: !561, line: 1061, type: !136)
!4184 = !DILocation(line: 0, scope: !4178)
!4185 = !DILocation(line: 0, scope: !4157, inlinedAt: !4186)
!4186 = distinct !DILocation(line: 1063, column: 10, scope: !4178)
!4187 = !DILocation(line: 1051, column: 10, scope: !4157, inlinedAt: !4186)
!4188 = !DILocation(line: 1063, column: 3, scope: !4178)
!4189 = distinct !DISubprogram(name: "quote", scope: !561, file: !561, line: 1067, type: !4190, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !582, retainedNodes: !4192)
!4190 = !DISubroutineType(types: !4191)
!4191 = !{!136, !136}
!4192 = !{!4193}
!4193 = !DILocalVariable(name: "arg", arg: 1, scope: !4189, file: !561, line: 1067, type: !136)
!4194 = !DILocation(line: 0, scope: !4189)
!4195 = !DILocation(line: 0, scope: !4178, inlinedAt: !4196)
!4196 = distinct !DILocation(line: 1069, column: 10, scope: !4189)
!4197 = !DILocation(line: 0, scope: !4157, inlinedAt: !4198)
!4198 = distinct !DILocation(line: 1063, column: 10, scope: !4178, inlinedAt: !4196)
!4199 = !DILocation(line: 1051, column: 10, scope: !4157, inlinedAt: !4198)
!4200 = !DILocation(line: 1069, column: 3, scope: !4189)
!4201 = distinct !DISubprogram(name: "version_etc_arn", scope: !658, file: !658, line: 61, type: !4202, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !790, retainedNodes: !4239)
!4202 = !DISubroutineType(types: !4203)
!4203 = !{null, !4204, !136, !136, !136, !4238, !133}
!4204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4205, size: 64)
!4205 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !211, line: 7, baseType: !4206)
!4206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !213, line: 49, size: 1728, elements: !4207)
!4207 = !{!4208, !4209, !4210, !4211, !4212, !4213, !4214, !4215, !4216, !4217, !4218, !4219, !4220, !4221, !4223, !4224, !4225, !4226, !4227, !4228, !4229, !4230, !4231, !4232, !4233, !4234, !4235, !4236, !4237}
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4206, file: !213, line: 51, baseType: !87, size: 32)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4206, file: !213, line: 54, baseType: !130, size: 64, offset: 64)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4206, file: !213, line: 55, baseType: !130, size: 64, offset: 128)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4206, file: !213, line: 56, baseType: !130, size: 64, offset: 192)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4206, file: !213, line: 57, baseType: !130, size: 64, offset: 256)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4206, file: !213, line: 58, baseType: !130, size: 64, offset: 320)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4206, file: !213, line: 59, baseType: !130, size: 64, offset: 384)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4206, file: !213, line: 60, baseType: !130, size: 64, offset: 448)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4206, file: !213, line: 61, baseType: !130, size: 64, offset: 512)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4206, file: !213, line: 64, baseType: !130, size: 64, offset: 576)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4206, file: !213, line: 65, baseType: !130, size: 64, offset: 640)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4206, file: !213, line: 66, baseType: !130, size: 64, offset: 704)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4206, file: !213, line: 68, baseType: !228, size: 64, offset: 768)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4206, file: !213, line: 70, baseType: !4222, size: 64, offset: 832)
!4222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4206, size: 64)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4206, file: !213, line: 72, baseType: !87, size: 32, offset: 896)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4206, file: !213, line: 73, baseType: !87, size: 32, offset: 928)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4206, file: !213, line: 74, baseType: !235, size: 64, offset: 960)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4206, file: !213, line: 77, baseType: !132, size: 16, offset: 1024)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4206, file: !213, line: 78, baseType: !240, size: 8, offset: 1040)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4206, file: !213, line: 79, baseType: !54, size: 8, offset: 1048)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4206, file: !213, line: 81, baseType: !243, size: 64, offset: 1088)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4206, file: !213, line: 89, baseType: !246, size: 64, offset: 1152)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4206, file: !213, line: 91, baseType: !248, size: 64, offset: 1216)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4206, file: !213, line: 92, baseType: !251, size: 64, offset: 1280)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4206, file: !213, line: 93, baseType: !4222, size: 64, offset: 1344)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4206, file: !213, line: 94, baseType: !131, size: 64, offset: 1408)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4206, file: !213, line: 95, baseType: !133, size: 64, offset: 1472)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4206, file: !213, line: 96, baseType: !87, size: 32, offset: 1536)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4206, file: !213, line: 98, baseType: !258, size: 160, offset: 1568)
!4238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!4239 = !{!4240, !4241, !4242, !4243, !4244, !4245}
!4240 = !DILocalVariable(name: "stream", arg: 1, scope: !4201, file: !658, line: 61, type: !4204)
!4241 = !DILocalVariable(name: "command_name", arg: 2, scope: !4201, file: !658, line: 62, type: !136)
!4242 = !DILocalVariable(name: "package", arg: 3, scope: !4201, file: !658, line: 62, type: !136)
!4243 = !DILocalVariable(name: "version", arg: 4, scope: !4201, file: !658, line: 63, type: !136)
!4244 = !DILocalVariable(name: "authors", arg: 5, scope: !4201, file: !658, line: 64, type: !4238)
!4245 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4201, file: !658, line: 64, type: !133)
!4246 = !DILocation(line: 0, scope: !4201)
!4247 = !DILocation(line: 66, column: 7, scope: !4248)
!4248 = distinct !DILexicalBlock(scope: !4201, file: !658, line: 66, column: 7)
!4249 = !DILocation(line: 66, column: 7, scope: !4201)
!4250 = !DILocation(line: 67, column: 5, scope: !4248)
!4251 = !DILocation(line: 69, column: 5, scope: !4248)
!4252 = !DILocation(line: 83, column: 3, scope: !4201)
!4253 = !DILocation(line: 85, column: 3, scope: !4201)
!4254 = !DILocation(line: 88, column: 3, scope: !4201)
!4255 = !DILocation(line: 95, column: 3, scope: !4201)
!4256 = !DILocation(line: 97, column: 3, scope: !4201)
!4257 = !DILocation(line: 105, column: 7, scope: !4258)
!4258 = distinct !DILexicalBlock(scope: !4201, file: !658, line: 98, column: 5)
!4259 = !DILocation(line: 106, column: 7, scope: !4258)
!4260 = !DILocation(line: 109, column: 7, scope: !4258)
!4261 = !DILocation(line: 110, column: 7, scope: !4258)
!4262 = !DILocation(line: 113, column: 7, scope: !4258)
!4263 = !DILocation(line: 115, column: 7, scope: !4258)
!4264 = !DILocation(line: 120, column: 7, scope: !4258)
!4265 = !DILocation(line: 122, column: 7, scope: !4258)
!4266 = !DILocation(line: 127, column: 7, scope: !4258)
!4267 = !DILocation(line: 129, column: 7, scope: !4258)
!4268 = !DILocation(line: 134, column: 7, scope: !4258)
!4269 = !DILocation(line: 137, column: 7, scope: !4258)
!4270 = !DILocation(line: 142, column: 7, scope: !4258)
!4271 = !DILocation(line: 145, column: 7, scope: !4258)
!4272 = !DILocation(line: 150, column: 7, scope: !4258)
!4273 = !DILocation(line: 154, column: 7, scope: !4258)
!4274 = !DILocation(line: 159, column: 7, scope: !4258)
!4275 = !DILocation(line: 163, column: 7, scope: !4258)
!4276 = !DILocation(line: 170, column: 7, scope: !4258)
!4277 = !DILocation(line: 174, column: 7, scope: !4258)
!4278 = !DILocation(line: 176, column: 1, scope: !4201)
!4279 = distinct !DISubprogram(name: "version_etc_ar", scope: !658, file: !658, line: 183, type: !4280, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !790, retainedNodes: !4282)
!4280 = !DISubroutineType(types: !4281)
!4281 = !{null, !4204, !136, !136, !136, !4238}
!4282 = !{!4283, !4284, !4285, !4286, !4287, !4288}
!4283 = !DILocalVariable(name: "stream", arg: 1, scope: !4279, file: !658, line: 183, type: !4204)
!4284 = !DILocalVariable(name: "command_name", arg: 2, scope: !4279, file: !658, line: 184, type: !136)
!4285 = !DILocalVariable(name: "package", arg: 3, scope: !4279, file: !658, line: 184, type: !136)
!4286 = !DILocalVariable(name: "version", arg: 4, scope: !4279, file: !658, line: 185, type: !136)
!4287 = !DILocalVariable(name: "authors", arg: 5, scope: !4279, file: !658, line: 185, type: !4238)
!4288 = !DILocalVariable(name: "n_authors", scope: !4279, file: !658, line: 187, type: !133)
!4289 = !DILocation(line: 0, scope: !4279)
!4290 = !DILocation(line: 189, column: 8, scope: !4291)
!4291 = distinct !DILexicalBlock(scope: !4279, file: !658, line: 189, column: 3)
!4292 = !DILocation(line: 189, scope: !4291)
!4293 = !DILocation(line: 189, column: 23, scope: !4294)
!4294 = distinct !DILexicalBlock(scope: !4291, file: !658, line: 189, column: 3)
!4295 = !DILocation(line: 189, column: 3, scope: !4291)
!4296 = !DILocation(line: 189, column: 52, scope: !4294)
!4297 = distinct !{!4297, !4295, !4298, !990}
!4298 = !DILocation(line: 190, column: 5, scope: !4291)
!4299 = !DILocation(line: 191, column: 3, scope: !4279)
!4300 = !DILocation(line: 192, column: 1, scope: !4279)
!4301 = distinct !DISubprogram(name: "version_etc_va", scope: !658, file: !658, line: 199, type: !4302, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !790, retainedNodes: !4311)
!4302 = !DISubroutineType(types: !4303)
!4303 = !{null, !4204, !136, !136, !136, !4304}
!4304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4305, size: 64)
!4305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !4306)
!4306 = !{!4307, !4308, !4309, !4310}
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4305, file: !658, line: 192, baseType: !78, size: 32)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4305, file: !658, line: 192, baseType: !78, size: 32, offset: 32)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4305, file: !658, line: 192, baseType: !131, size: 64, offset: 64)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4305, file: !658, line: 192, baseType: !131, size: 64, offset: 128)
!4311 = !{!4312, !4313, !4314, !4315, !4316, !4317, !4318}
!4312 = !DILocalVariable(name: "stream", arg: 1, scope: !4301, file: !658, line: 199, type: !4204)
!4313 = !DILocalVariable(name: "command_name", arg: 2, scope: !4301, file: !658, line: 200, type: !136)
!4314 = !DILocalVariable(name: "package", arg: 3, scope: !4301, file: !658, line: 200, type: !136)
!4315 = !DILocalVariable(name: "version", arg: 4, scope: !4301, file: !658, line: 201, type: !136)
!4316 = !DILocalVariable(name: "authors", arg: 5, scope: !4301, file: !658, line: 201, type: !4304)
!4317 = !DILocalVariable(name: "n_authors", scope: !4301, file: !658, line: 203, type: !133)
!4318 = !DILocalVariable(name: "authtab", scope: !4301, file: !658, line: 204, type: !4319)
!4319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 640, elements: !60)
!4320 = distinct !DIAssignID()
!4321 = !DILocation(line: 0, scope: !4301)
!4322 = !DILocation(line: 204, column: 3, scope: !4301)
!4323 = !DILocation(line: 208, column: 35, scope: !4324)
!4324 = distinct !DILexicalBlock(scope: !4325, file: !658, line: 206, column: 3)
!4325 = distinct !DILexicalBlock(scope: !4301, file: !658, line: 206, column: 3)
!4326 = !DILocation(line: 208, column: 33, scope: !4324)
!4327 = !DILocation(line: 208, column: 67, scope: !4324)
!4328 = !DILocation(line: 206, column: 3, scope: !4325)
!4329 = !DILocation(line: 208, column: 14, scope: !4324)
!4330 = !DILocation(line: 0, scope: !4325)
!4331 = !DILocation(line: 211, column: 3, scope: !4301)
!4332 = !DILocation(line: 213, column: 1, scope: !4301)
!4333 = distinct !DISubprogram(name: "version_etc", scope: !658, file: !658, line: 230, type: !4334, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !790, retainedNodes: !4336)
!4334 = !DISubroutineType(types: !4335)
!4335 = !{null, !4204, !136, !136, !136, null}
!4336 = !{!4337, !4338, !4339, !4340, !4341}
!4337 = !DILocalVariable(name: "stream", arg: 1, scope: !4333, file: !658, line: 230, type: !4204)
!4338 = !DILocalVariable(name: "command_name", arg: 2, scope: !4333, file: !658, line: 231, type: !136)
!4339 = !DILocalVariable(name: "package", arg: 3, scope: !4333, file: !658, line: 231, type: !136)
!4340 = !DILocalVariable(name: "version", arg: 4, scope: !4333, file: !658, line: 232, type: !136)
!4341 = !DILocalVariable(name: "authors", scope: !4333, file: !658, line: 234, type: !4342)
!4342 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !938, line: 52, baseType: !4343)
!4343 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2395, line: 12, baseType: !4344)
!4344 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !658, baseType: !4345)
!4345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4305, size: 192, elements: !55)
!4346 = distinct !DIAssignID()
!4347 = !DILocation(line: 0, scope: !4333)
!4348 = !DILocation(line: 234, column: 3, scope: !4333)
!4349 = !DILocation(line: 235, column: 3, scope: !4333)
!4350 = !DILocation(line: 236, column: 3, scope: !4333)
!4351 = !DILocation(line: 237, column: 3, scope: !4333)
!4352 = !DILocation(line: 238, column: 1, scope: !4333)
!4353 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !658, file: !658, line: 241, type: !517, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !790)
!4354 = !DILocation(line: 243, column: 3, scope: !4353)
!4355 = !DILocation(line: 248, column: 3, scope: !4353)
!4356 = !DILocation(line: 254, column: 3, scope: !4353)
!4357 = !DILocation(line: 259, column: 3, scope: !4353)
!4358 = !DILocation(line: 261, column: 1, scope: !4353)
!4359 = distinct !DISubprogram(name: "xnrealloc", scope: !4360, file: !4360, line: 147, type: !4361, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !796, retainedNodes: !4363)
!4360 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!4361 = !DISubroutineType(types: !4362)
!4362 = !{!131, !131, !133, !133}
!4363 = !{!4364, !4365, !4366}
!4364 = !DILocalVariable(name: "p", arg: 1, scope: !4359, file: !4360, line: 147, type: !131)
!4365 = !DILocalVariable(name: "n", arg: 2, scope: !4359, file: !4360, line: 147, type: !133)
!4366 = !DILocalVariable(name: "s", arg: 3, scope: !4359, file: !4360, line: 147, type: !133)
!4367 = !DILocation(line: 0, scope: !4359)
!4368 = !DILocalVariable(name: "p", arg: 1, scope: !4369, file: !797, line: 83, type: !131)
!4369 = distinct !DISubprogram(name: "xreallocarray", scope: !797, file: !797, line: 83, type: !4361, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !796, retainedNodes: !4370)
!4370 = !{!4368, !4371, !4372}
!4371 = !DILocalVariable(name: "n", arg: 2, scope: !4369, file: !797, line: 83, type: !133)
!4372 = !DILocalVariable(name: "s", arg: 3, scope: !4369, file: !797, line: 83, type: !133)
!4373 = !DILocation(line: 0, scope: !4369, inlinedAt: !4374)
!4374 = distinct !DILocation(line: 149, column: 10, scope: !4359)
!4375 = !DILocation(line: 85, column: 25, scope: !4369, inlinedAt: !4374)
!4376 = !DILocalVariable(name: "p", arg: 1, scope: !4377, file: !797, line: 37, type: !131)
!4377 = distinct !DISubprogram(name: "check_nonnull", scope: !797, file: !797, line: 37, type: !4378, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !796, retainedNodes: !4380)
!4378 = !DISubroutineType(types: !4379)
!4379 = !{!131, !131}
!4380 = !{!4376}
!4381 = !DILocation(line: 0, scope: !4377, inlinedAt: !4382)
!4382 = distinct !DILocation(line: 85, column: 10, scope: !4369, inlinedAt: !4374)
!4383 = !DILocation(line: 39, column: 8, scope: !4384, inlinedAt: !4382)
!4384 = distinct !DILexicalBlock(scope: !4377, file: !797, line: 39, column: 7)
!4385 = !DILocation(line: 39, column: 7, scope: !4377, inlinedAt: !4382)
!4386 = !DILocation(line: 40, column: 5, scope: !4384, inlinedAt: !4382)
!4387 = !DILocation(line: 149, column: 3, scope: !4359)
!4388 = !DILocation(line: 0, scope: !4369)
!4389 = !DILocation(line: 85, column: 25, scope: !4369)
!4390 = !DILocation(line: 0, scope: !4377, inlinedAt: !4391)
!4391 = distinct !DILocation(line: 85, column: 10, scope: !4369)
!4392 = !DILocation(line: 39, column: 8, scope: !4384, inlinedAt: !4391)
!4393 = !DILocation(line: 39, column: 7, scope: !4377, inlinedAt: !4391)
!4394 = !DILocation(line: 40, column: 5, scope: !4384, inlinedAt: !4391)
!4395 = !DILocation(line: 85, column: 3, scope: !4369)
!4396 = distinct !DISubprogram(name: "xmalloc", scope: !797, file: !797, line: 47, type: !1800, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !796, retainedNodes: !4397)
!4397 = !{!4398}
!4398 = !DILocalVariable(name: "s", arg: 1, scope: !4396, file: !797, line: 47, type: !133)
!4399 = !DILocation(line: 0, scope: !4396)
!4400 = !DILocation(line: 49, column: 25, scope: !4396)
!4401 = !DILocation(line: 0, scope: !4377, inlinedAt: !4402)
!4402 = distinct !DILocation(line: 49, column: 10, scope: !4396)
!4403 = !DILocation(line: 39, column: 8, scope: !4384, inlinedAt: !4402)
!4404 = !DILocation(line: 39, column: 7, scope: !4377, inlinedAt: !4402)
!4405 = !DILocation(line: 40, column: 5, scope: !4384, inlinedAt: !4402)
!4406 = !DILocation(line: 49, column: 3, scope: !4396)
!4407 = distinct !DISubprogram(name: "ximalloc", scope: !797, file: !797, line: 53, type: !4408, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !796, retainedNodes: !4410)
!4408 = !DISubroutineType(types: !4409)
!4409 = !{!131, !816}
!4410 = !{!4411}
!4411 = !DILocalVariable(name: "s", arg: 1, scope: !4407, file: !797, line: 53, type: !816)
!4412 = !DILocation(line: 0, scope: !4407)
!4413 = !DILocalVariable(name: "s", arg: 1, scope: !4414, file: !4415, line: 55, type: !816)
!4414 = distinct !DISubprogram(name: "imalloc", scope: !4415, file: !4415, line: 55, type: !4408, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !796, retainedNodes: !4416)
!4415 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4416 = !{!4413}
!4417 = !DILocation(line: 0, scope: !4414, inlinedAt: !4418)
!4418 = distinct !DILocation(line: 55, column: 25, scope: !4407)
!4419 = !DILocation(line: 57, column: 26, scope: !4414, inlinedAt: !4418)
!4420 = !DILocation(line: 0, scope: !4377, inlinedAt: !4421)
!4421 = distinct !DILocation(line: 55, column: 10, scope: !4407)
!4422 = !DILocation(line: 39, column: 8, scope: !4384, inlinedAt: !4421)
!4423 = !DILocation(line: 39, column: 7, scope: !4377, inlinedAt: !4421)
!4424 = !DILocation(line: 40, column: 5, scope: !4384, inlinedAt: !4421)
!4425 = !DILocation(line: 55, column: 3, scope: !4407)
!4426 = distinct !DISubprogram(name: "xcharalloc", scope: !797, file: !797, line: 59, type: !4427, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !796, retainedNodes: !4429)
!4427 = !DISubroutineType(types: !4428)
!4428 = !{!130, !133}
!4429 = !{!4430}
!4430 = !DILocalVariable(name: "n", arg: 1, scope: !4426, file: !797, line: 59, type: !133)
!4431 = !DILocation(line: 0, scope: !4426)
!4432 = !DILocation(line: 0, scope: !4396, inlinedAt: !4433)
!4433 = distinct !DILocation(line: 61, column: 10, scope: !4426)
!4434 = !DILocation(line: 49, column: 25, scope: !4396, inlinedAt: !4433)
!4435 = !DILocation(line: 0, scope: !4377, inlinedAt: !4436)
!4436 = distinct !DILocation(line: 49, column: 10, scope: !4396, inlinedAt: !4433)
!4437 = !DILocation(line: 39, column: 8, scope: !4384, inlinedAt: !4436)
!4438 = !DILocation(line: 39, column: 7, scope: !4377, inlinedAt: !4436)
!4439 = !DILocation(line: 40, column: 5, scope: !4384, inlinedAt: !4436)
!4440 = !DILocation(line: 61, column: 3, scope: !4426)
!4441 = distinct !DISubprogram(name: "xrealloc", scope: !797, file: !797, line: 68, type: !4442, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !796, retainedNodes: !4444)
!4442 = !DISubroutineType(types: !4443)
!4443 = !{!131, !131, !133}
!4444 = !{!4445, !4446}
!4445 = !DILocalVariable(name: "p", arg: 1, scope: !4441, file: !797, line: 68, type: !131)
!4446 = !DILocalVariable(name: "s", arg: 2, scope: !4441, file: !797, line: 68, type: !133)
!4447 = !DILocation(line: 0, scope: !4441)
!4448 = !DILocalVariable(name: "ptr", arg: 1, scope: !4449, file: !4450, line: 2057, type: !131)
!4449 = distinct !DISubprogram(name: "rpl_realloc", scope: !4450, file: !4450, line: 2057, type: !4442, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !796, retainedNodes: !4451)
!4450 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4451 = !{!4448, !4452}
!4452 = !DILocalVariable(name: "size", arg: 2, scope: !4449, file: !4450, line: 2057, type: !133)
!4453 = !DILocation(line: 0, scope: !4449, inlinedAt: !4454)
!4454 = distinct !DILocation(line: 70, column: 25, scope: !4441)
!4455 = !DILocation(line: 2059, column: 24, scope: !4449, inlinedAt: !4454)
!4456 = !DILocation(line: 2059, column: 10, scope: !4449, inlinedAt: !4454)
!4457 = !DILocation(line: 0, scope: !4377, inlinedAt: !4458)
!4458 = distinct !DILocation(line: 70, column: 10, scope: !4441)
!4459 = !DILocation(line: 39, column: 8, scope: !4384, inlinedAt: !4458)
!4460 = !DILocation(line: 39, column: 7, scope: !4377, inlinedAt: !4458)
!4461 = !DILocation(line: 40, column: 5, scope: !4384, inlinedAt: !4458)
!4462 = !DILocation(line: 70, column: 3, scope: !4441)
!4463 = !DISubprogram(name: "realloc", scope: !1067, file: !1067, line: 551, type: !4442, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4464 = distinct !DISubprogram(name: "xirealloc", scope: !797, file: !797, line: 74, type: !4465, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !796, retainedNodes: !4467)
!4465 = !DISubroutineType(types: !4466)
!4466 = !{!131, !131, !816}
!4467 = !{!4468, !4469}
!4468 = !DILocalVariable(name: "p", arg: 1, scope: !4464, file: !797, line: 74, type: !131)
!4469 = !DILocalVariable(name: "s", arg: 2, scope: !4464, file: !797, line: 74, type: !816)
!4470 = !DILocation(line: 0, scope: !4464)
!4471 = !DILocalVariable(name: "p", arg: 1, scope: !4472, file: !4415, line: 66, type: !131)
!4472 = distinct !DISubprogram(name: "irealloc", scope: !4415, file: !4415, line: 66, type: !4465, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !796, retainedNodes: !4473)
!4473 = !{!4471, !4474}
!4474 = !DILocalVariable(name: "s", arg: 2, scope: !4472, file: !4415, line: 66, type: !816)
!4475 = !DILocation(line: 0, scope: !4472, inlinedAt: !4476)
!4476 = distinct !DILocation(line: 76, column: 25, scope: !4464)
!4477 = !DILocation(line: 0, scope: !4449, inlinedAt: !4478)
!4478 = distinct !DILocation(line: 68, column: 26, scope: !4472, inlinedAt: !4476)
!4479 = !DILocation(line: 2059, column: 24, scope: !4449, inlinedAt: !4478)
!4480 = !DILocation(line: 2059, column: 10, scope: !4449, inlinedAt: !4478)
!4481 = !DILocation(line: 0, scope: !4377, inlinedAt: !4482)
!4482 = distinct !DILocation(line: 76, column: 10, scope: !4464)
!4483 = !DILocation(line: 39, column: 8, scope: !4384, inlinedAt: !4482)
!4484 = !DILocation(line: 39, column: 7, scope: !4377, inlinedAt: !4482)
!4485 = !DILocation(line: 40, column: 5, scope: !4384, inlinedAt: !4482)
!4486 = !DILocation(line: 76, column: 3, scope: !4464)
!4487 = distinct !DISubprogram(name: "xireallocarray", scope: !797, file: !797, line: 89, type: !4488, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !796, retainedNodes: !4490)
!4488 = !DISubroutineType(types: !4489)
!4489 = !{!131, !131, !816, !816}
!4490 = !{!4491, !4492, !4493}
!4491 = !DILocalVariable(name: "p", arg: 1, scope: !4487, file: !797, line: 89, type: !131)
!4492 = !DILocalVariable(name: "n", arg: 2, scope: !4487, file: !797, line: 89, type: !816)
!4493 = !DILocalVariable(name: "s", arg: 3, scope: !4487, file: !797, line: 89, type: !816)
!4494 = !DILocation(line: 0, scope: !4487)
!4495 = !DILocalVariable(name: "p", arg: 1, scope: !4496, file: !4415, line: 98, type: !131)
!4496 = distinct !DISubprogram(name: "ireallocarray", scope: !4415, file: !4415, line: 98, type: !4488, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !796, retainedNodes: !4497)
!4497 = !{!4495, !4498, !4499}
!4498 = !DILocalVariable(name: "n", arg: 2, scope: !4496, file: !4415, line: 98, type: !816)
!4499 = !DILocalVariable(name: "s", arg: 3, scope: !4496, file: !4415, line: 98, type: !816)
!4500 = !DILocation(line: 0, scope: !4496, inlinedAt: !4501)
!4501 = distinct !DILocation(line: 91, column: 25, scope: !4487)
!4502 = !DILocation(line: 101, column: 13, scope: !4496, inlinedAt: !4501)
!4503 = !DILocation(line: 0, scope: !4377, inlinedAt: !4504)
!4504 = distinct !DILocation(line: 91, column: 10, scope: !4487)
!4505 = !DILocation(line: 39, column: 8, scope: !4384, inlinedAt: !4504)
!4506 = !DILocation(line: 39, column: 7, scope: !4377, inlinedAt: !4504)
!4507 = !DILocation(line: 40, column: 5, scope: !4384, inlinedAt: !4504)
!4508 = !DILocation(line: 91, column: 3, scope: !4487)
!4509 = distinct !DISubprogram(name: "xnmalloc", scope: !797, file: !797, line: 98, type: !4510, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !796, retainedNodes: !4512)
!4510 = !DISubroutineType(types: !4511)
!4511 = !{!131, !133, !133}
!4512 = !{!4513, !4514}
!4513 = !DILocalVariable(name: "n", arg: 1, scope: !4509, file: !797, line: 98, type: !133)
!4514 = !DILocalVariable(name: "s", arg: 2, scope: !4509, file: !797, line: 98, type: !133)
!4515 = !DILocation(line: 0, scope: !4509)
!4516 = !DILocation(line: 0, scope: !4369, inlinedAt: !4517)
!4517 = distinct !DILocation(line: 100, column: 10, scope: !4509)
!4518 = !DILocation(line: 85, column: 25, scope: !4369, inlinedAt: !4517)
!4519 = !DILocation(line: 0, scope: !4377, inlinedAt: !4520)
!4520 = distinct !DILocation(line: 85, column: 10, scope: !4369, inlinedAt: !4517)
!4521 = !DILocation(line: 39, column: 8, scope: !4384, inlinedAt: !4520)
!4522 = !DILocation(line: 39, column: 7, scope: !4377, inlinedAt: !4520)
!4523 = !DILocation(line: 40, column: 5, scope: !4384, inlinedAt: !4520)
!4524 = !DILocation(line: 100, column: 3, scope: !4509)
!4525 = distinct !DISubprogram(name: "xinmalloc", scope: !797, file: !797, line: 104, type: !4526, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !796, retainedNodes: !4528)
!4526 = !DISubroutineType(types: !4527)
!4527 = !{!131, !816, !816}
!4528 = !{!4529, !4530}
!4529 = !DILocalVariable(name: "n", arg: 1, scope: !4525, file: !797, line: 104, type: !816)
!4530 = !DILocalVariable(name: "s", arg: 2, scope: !4525, file: !797, line: 104, type: !816)
!4531 = !DILocation(line: 0, scope: !4525)
!4532 = !DILocation(line: 0, scope: !4487, inlinedAt: !4533)
!4533 = distinct !DILocation(line: 106, column: 10, scope: !4525)
!4534 = !DILocation(line: 0, scope: !4496, inlinedAt: !4535)
!4535 = distinct !DILocation(line: 91, column: 25, scope: !4487, inlinedAt: !4533)
!4536 = !DILocation(line: 101, column: 13, scope: !4496, inlinedAt: !4535)
!4537 = !DILocation(line: 0, scope: !4377, inlinedAt: !4538)
!4538 = distinct !DILocation(line: 91, column: 10, scope: !4487, inlinedAt: !4533)
!4539 = !DILocation(line: 39, column: 8, scope: !4384, inlinedAt: !4538)
!4540 = !DILocation(line: 39, column: 7, scope: !4377, inlinedAt: !4538)
!4541 = !DILocation(line: 40, column: 5, scope: !4384, inlinedAt: !4538)
!4542 = !DILocation(line: 106, column: 3, scope: !4525)
!4543 = distinct !DISubprogram(name: "x2realloc", scope: !797, file: !797, line: 116, type: !4544, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !796, retainedNodes: !4546)
!4544 = !DISubroutineType(types: !4545)
!4545 = !{!131, !131, !803}
!4546 = !{!4547, !4548}
!4547 = !DILocalVariable(name: "p", arg: 1, scope: !4543, file: !797, line: 116, type: !131)
!4548 = !DILocalVariable(name: "ps", arg: 2, scope: !4543, file: !797, line: 116, type: !803)
!4549 = !DILocation(line: 0, scope: !4543)
!4550 = !DILocation(line: 0, scope: !800, inlinedAt: !4551)
!4551 = distinct !DILocation(line: 118, column: 10, scope: !4543)
!4552 = !DILocation(line: 178, column: 14, scope: !800, inlinedAt: !4551)
!4553 = !DILocation(line: 180, column: 9, scope: !4554, inlinedAt: !4551)
!4554 = distinct !DILexicalBlock(scope: !800, file: !797, line: 180, column: 7)
!4555 = !DILocation(line: 180, column: 7, scope: !800, inlinedAt: !4551)
!4556 = !DILocation(line: 182, column: 13, scope: !4557, inlinedAt: !4551)
!4557 = distinct !DILexicalBlock(scope: !4558, file: !797, line: 182, column: 11)
!4558 = distinct !DILexicalBlock(scope: !4554, file: !797, line: 181, column: 5)
!4559 = !DILocation(line: 182, column: 11, scope: !4558, inlinedAt: !4551)
!4560 = !DILocation(line: 197, column: 11, scope: !4561, inlinedAt: !4551)
!4561 = distinct !DILexicalBlock(scope: !4562, file: !797, line: 197, column: 11)
!4562 = distinct !DILexicalBlock(scope: !4554, file: !797, line: 195, column: 5)
!4563 = !DILocation(line: 197, column: 11, scope: !4562, inlinedAt: !4551)
!4564 = !DILocation(line: 198, column: 9, scope: !4561, inlinedAt: !4551)
!4565 = !DILocation(line: 0, scope: !4369, inlinedAt: !4566)
!4566 = distinct !DILocation(line: 201, column: 7, scope: !800, inlinedAt: !4551)
!4567 = !DILocation(line: 85, column: 25, scope: !4369, inlinedAt: !4566)
!4568 = !DILocation(line: 0, scope: !4377, inlinedAt: !4569)
!4569 = distinct !DILocation(line: 85, column: 10, scope: !4369, inlinedAt: !4566)
!4570 = !DILocation(line: 39, column: 8, scope: !4384, inlinedAt: !4569)
!4571 = !DILocation(line: 39, column: 7, scope: !4377, inlinedAt: !4569)
!4572 = !DILocation(line: 40, column: 5, scope: !4384, inlinedAt: !4569)
!4573 = !DILocation(line: 202, column: 7, scope: !800, inlinedAt: !4551)
!4574 = !DILocation(line: 118, column: 3, scope: !4543)
!4575 = !DILocation(line: 0, scope: !800)
!4576 = !DILocation(line: 178, column: 14, scope: !800)
!4577 = !DILocation(line: 180, column: 9, scope: !4554)
!4578 = !DILocation(line: 180, column: 7, scope: !800)
!4579 = !DILocation(line: 182, column: 13, scope: !4557)
!4580 = !DILocation(line: 182, column: 11, scope: !4558)
!4581 = !DILocation(line: 190, column: 30, scope: !4582)
!4582 = distinct !DILexicalBlock(scope: !4557, file: !797, line: 183, column: 9)
!4583 = !DILocation(line: 191, column: 16, scope: !4582)
!4584 = !DILocation(line: 191, column: 13, scope: !4582)
!4585 = !DILocation(line: 192, column: 9, scope: !4582)
!4586 = !DILocation(line: 197, column: 11, scope: !4561)
!4587 = !DILocation(line: 197, column: 11, scope: !4562)
!4588 = !DILocation(line: 198, column: 9, scope: !4561)
!4589 = !DILocation(line: 0, scope: !4369, inlinedAt: !4590)
!4590 = distinct !DILocation(line: 201, column: 7, scope: !800)
!4591 = !DILocation(line: 85, column: 25, scope: !4369, inlinedAt: !4590)
!4592 = !DILocation(line: 0, scope: !4377, inlinedAt: !4593)
!4593 = distinct !DILocation(line: 85, column: 10, scope: !4369, inlinedAt: !4590)
!4594 = !DILocation(line: 39, column: 8, scope: !4384, inlinedAt: !4593)
!4595 = !DILocation(line: 39, column: 7, scope: !4377, inlinedAt: !4593)
!4596 = !DILocation(line: 40, column: 5, scope: !4384, inlinedAt: !4593)
!4597 = !DILocation(line: 202, column: 7, scope: !800)
!4598 = !DILocation(line: 203, column: 3, scope: !800)
!4599 = !DILocation(line: 0, scope: !812)
!4600 = !DILocation(line: 230, column: 14, scope: !812)
!4601 = !DILocation(line: 238, column: 7, scope: !4602)
!4602 = distinct !DILexicalBlock(scope: !812, file: !797, line: 238, column: 7)
!4603 = !DILocation(line: 238, column: 7, scope: !812)
!4604 = !DILocation(line: 240, column: 9, scope: !4605)
!4605 = distinct !DILexicalBlock(scope: !812, file: !797, line: 240, column: 7)
!4606 = !DILocation(line: 240, column: 18, scope: !4605)
!4607 = !DILocation(line: 253, column: 8, scope: !812)
!4608 = !DILocation(line: 256, column: 7, scope: !4609)
!4609 = distinct !DILexicalBlock(scope: !812, file: !797, line: 256, column: 7)
!4610 = !DILocation(line: 256, column: 7, scope: !812)
!4611 = !DILocation(line: 258, column: 27, scope: !4612)
!4612 = distinct !DILexicalBlock(scope: !4609, file: !797, line: 257, column: 5)
!4613 = !DILocation(line: 259, column: 50, scope: !4612)
!4614 = !DILocation(line: 259, column: 32, scope: !4612)
!4615 = !DILocation(line: 260, column: 5, scope: !4612)
!4616 = !DILocation(line: 262, column: 9, scope: !4617)
!4617 = distinct !DILexicalBlock(scope: !812, file: !797, line: 262, column: 7)
!4618 = !DILocation(line: 262, column: 7, scope: !812)
!4619 = !DILocation(line: 263, column: 9, scope: !4617)
!4620 = !DILocation(line: 263, column: 5, scope: !4617)
!4621 = !DILocation(line: 264, column: 9, scope: !4622)
!4622 = distinct !DILexicalBlock(scope: !812, file: !797, line: 264, column: 7)
!4623 = !DILocation(line: 264, column: 14, scope: !4622)
!4624 = !DILocation(line: 265, column: 7, scope: !4622)
!4625 = !DILocation(line: 265, column: 11, scope: !4622)
!4626 = !DILocation(line: 266, column: 11, scope: !4622)
!4627 = !DILocation(line: 267, column: 14, scope: !4622)
!4628 = !DILocation(line: 264, column: 7, scope: !812)
!4629 = !DILocation(line: 268, column: 5, scope: !4622)
!4630 = !DILocation(line: 0, scope: !4441, inlinedAt: !4631)
!4631 = distinct !DILocation(line: 269, column: 8, scope: !812)
!4632 = !DILocation(line: 0, scope: !4449, inlinedAt: !4633)
!4633 = distinct !DILocation(line: 70, column: 25, scope: !4441, inlinedAt: !4631)
!4634 = !DILocation(line: 2059, column: 24, scope: !4449, inlinedAt: !4633)
!4635 = !DILocation(line: 2059, column: 10, scope: !4449, inlinedAt: !4633)
!4636 = !DILocation(line: 0, scope: !4377, inlinedAt: !4637)
!4637 = distinct !DILocation(line: 70, column: 10, scope: !4441, inlinedAt: !4631)
!4638 = !DILocation(line: 39, column: 8, scope: !4384, inlinedAt: !4637)
!4639 = !DILocation(line: 39, column: 7, scope: !4377, inlinedAt: !4637)
!4640 = !DILocation(line: 40, column: 5, scope: !4384, inlinedAt: !4637)
!4641 = !DILocation(line: 270, column: 7, scope: !812)
!4642 = !DILocation(line: 271, column: 3, scope: !812)
!4643 = distinct !DISubprogram(name: "xzalloc", scope: !797, file: !797, line: 279, type: !1800, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !796, retainedNodes: !4644)
!4644 = !{!4645}
!4645 = !DILocalVariable(name: "s", arg: 1, scope: !4643, file: !797, line: 279, type: !133)
!4646 = !DILocation(line: 0, scope: !4643)
!4647 = !DILocalVariable(name: "n", arg: 1, scope: !4648, file: !797, line: 294, type: !133)
!4648 = distinct !DISubprogram(name: "xcalloc", scope: !797, file: !797, line: 294, type: !4510, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !796, retainedNodes: !4649)
!4649 = !{!4647, !4650}
!4650 = !DILocalVariable(name: "s", arg: 2, scope: !4648, file: !797, line: 294, type: !133)
!4651 = !DILocation(line: 0, scope: !4648, inlinedAt: !4652)
!4652 = distinct !DILocation(line: 281, column: 10, scope: !4643)
!4653 = !DILocation(line: 296, column: 25, scope: !4648, inlinedAt: !4652)
!4654 = !DILocation(line: 0, scope: !4377, inlinedAt: !4655)
!4655 = distinct !DILocation(line: 296, column: 10, scope: !4648, inlinedAt: !4652)
!4656 = !DILocation(line: 39, column: 8, scope: !4384, inlinedAt: !4655)
!4657 = !DILocation(line: 39, column: 7, scope: !4377, inlinedAt: !4655)
!4658 = !DILocation(line: 40, column: 5, scope: !4384, inlinedAt: !4655)
!4659 = !DILocation(line: 281, column: 3, scope: !4643)
!4660 = !DISubprogram(name: "calloc", scope: !1067, file: !1067, line: 543, type: !4510, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4661 = !DILocation(line: 0, scope: !4648)
!4662 = !DILocation(line: 296, column: 25, scope: !4648)
!4663 = !DILocation(line: 0, scope: !4377, inlinedAt: !4664)
!4664 = distinct !DILocation(line: 296, column: 10, scope: !4648)
!4665 = !DILocation(line: 39, column: 8, scope: !4384, inlinedAt: !4664)
!4666 = !DILocation(line: 39, column: 7, scope: !4377, inlinedAt: !4664)
!4667 = !DILocation(line: 40, column: 5, scope: !4384, inlinedAt: !4664)
!4668 = !DILocation(line: 296, column: 3, scope: !4648)
!4669 = distinct !DISubprogram(name: "xizalloc", scope: !797, file: !797, line: 285, type: !4408, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !796, retainedNodes: !4670)
!4670 = !{!4671}
!4671 = !DILocalVariable(name: "s", arg: 1, scope: !4669, file: !797, line: 285, type: !816)
!4672 = !DILocation(line: 0, scope: !4669)
!4673 = !DILocalVariable(name: "n", arg: 1, scope: !4674, file: !797, line: 300, type: !816)
!4674 = distinct !DISubprogram(name: "xicalloc", scope: !797, file: !797, line: 300, type: !4526, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !796, retainedNodes: !4675)
!4675 = !{!4673, !4676}
!4676 = !DILocalVariable(name: "s", arg: 2, scope: !4674, file: !797, line: 300, type: !816)
!4677 = !DILocation(line: 0, scope: !4674, inlinedAt: !4678)
!4678 = distinct !DILocation(line: 287, column: 10, scope: !4669)
!4679 = !DILocalVariable(name: "n", arg: 1, scope: !4680, file: !4415, line: 77, type: !816)
!4680 = distinct !DISubprogram(name: "icalloc", scope: !4415, file: !4415, line: 77, type: !4526, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !796, retainedNodes: !4681)
!4681 = !{!4679, !4682}
!4682 = !DILocalVariable(name: "s", arg: 2, scope: !4680, file: !4415, line: 77, type: !816)
!4683 = !DILocation(line: 0, scope: !4680, inlinedAt: !4684)
!4684 = distinct !DILocation(line: 302, column: 25, scope: !4674, inlinedAt: !4678)
!4685 = !DILocation(line: 91, column: 10, scope: !4680, inlinedAt: !4684)
!4686 = !DILocation(line: 0, scope: !4377, inlinedAt: !4687)
!4687 = distinct !DILocation(line: 302, column: 10, scope: !4674, inlinedAt: !4678)
!4688 = !DILocation(line: 39, column: 8, scope: !4384, inlinedAt: !4687)
!4689 = !DILocation(line: 39, column: 7, scope: !4377, inlinedAt: !4687)
!4690 = !DILocation(line: 40, column: 5, scope: !4384, inlinedAt: !4687)
!4691 = !DILocation(line: 287, column: 3, scope: !4669)
!4692 = !DILocation(line: 0, scope: !4674)
!4693 = !DILocation(line: 0, scope: !4680, inlinedAt: !4694)
!4694 = distinct !DILocation(line: 302, column: 25, scope: !4674)
!4695 = !DILocation(line: 91, column: 10, scope: !4680, inlinedAt: !4694)
!4696 = !DILocation(line: 0, scope: !4377, inlinedAt: !4697)
!4697 = distinct !DILocation(line: 302, column: 10, scope: !4674)
!4698 = !DILocation(line: 39, column: 8, scope: !4384, inlinedAt: !4697)
!4699 = !DILocation(line: 39, column: 7, scope: !4377, inlinedAt: !4697)
!4700 = !DILocation(line: 40, column: 5, scope: !4384, inlinedAt: !4697)
!4701 = !DILocation(line: 302, column: 3, scope: !4674)
!4702 = distinct !DISubprogram(name: "xmemdup", scope: !797, file: !797, line: 310, type: !4703, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !796, retainedNodes: !4705)
!4703 = !DISubroutineType(types: !4704)
!4704 = !{!131, !1091, !133}
!4705 = !{!4706, !4707}
!4706 = !DILocalVariable(name: "p", arg: 1, scope: !4702, file: !797, line: 310, type: !1091)
!4707 = !DILocalVariable(name: "s", arg: 2, scope: !4702, file: !797, line: 310, type: !133)
!4708 = !DILocation(line: 0, scope: !4702)
!4709 = !DILocation(line: 0, scope: !4396, inlinedAt: !4710)
!4710 = distinct !DILocation(line: 312, column: 18, scope: !4702)
!4711 = !DILocation(line: 49, column: 25, scope: !4396, inlinedAt: !4710)
!4712 = !DILocation(line: 0, scope: !4377, inlinedAt: !4713)
!4713 = distinct !DILocation(line: 49, column: 10, scope: !4396, inlinedAt: !4710)
!4714 = !DILocation(line: 39, column: 8, scope: !4384, inlinedAt: !4713)
!4715 = !DILocation(line: 39, column: 7, scope: !4377, inlinedAt: !4713)
!4716 = !DILocation(line: 40, column: 5, scope: !4384, inlinedAt: !4713)
!4717 = !DILocalVariable(name: "__dest", arg: 1, scope: !4718, file: !1283, line: 26, type: !4721)
!4718 = distinct !DISubprogram(name: "memcpy", scope: !1283, file: !1283, line: 26, type: !4719, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !796, retainedNodes: !4722)
!4719 = !DISubroutineType(types: !4720)
!4720 = !{!131, !4721, !1090, !133}
!4721 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !131)
!4722 = !{!4717, !4723, !4724}
!4723 = !DILocalVariable(name: "__src", arg: 2, scope: !4718, file: !1283, line: 26, type: !1090)
!4724 = !DILocalVariable(name: "__len", arg: 3, scope: !4718, file: !1283, line: 26, type: !133)
!4725 = !DILocation(line: 0, scope: !4718, inlinedAt: !4726)
!4726 = distinct !DILocation(line: 312, column: 10, scope: !4702)
!4727 = !DILocation(line: 29, column: 10, scope: !4718, inlinedAt: !4726)
!4728 = !DILocation(line: 312, column: 3, scope: !4702)
!4729 = distinct !DISubprogram(name: "ximemdup", scope: !797, file: !797, line: 316, type: !4730, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !796, retainedNodes: !4732)
!4730 = !DISubroutineType(types: !4731)
!4731 = !{!131, !1091, !816}
!4732 = !{!4733, !4734}
!4733 = !DILocalVariable(name: "p", arg: 1, scope: !4729, file: !797, line: 316, type: !1091)
!4734 = !DILocalVariable(name: "s", arg: 2, scope: !4729, file: !797, line: 316, type: !816)
!4735 = !DILocation(line: 0, scope: !4729)
!4736 = !DILocation(line: 0, scope: !4407, inlinedAt: !4737)
!4737 = distinct !DILocation(line: 318, column: 18, scope: !4729)
!4738 = !DILocation(line: 0, scope: !4414, inlinedAt: !4739)
!4739 = distinct !DILocation(line: 55, column: 25, scope: !4407, inlinedAt: !4737)
!4740 = !DILocation(line: 57, column: 26, scope: !4414, inlinedAt: !4739)
!4741 = !DILocation(line: 0, scope: !4377, inlinedAt: !4742)
!4742 = distinct !DILocation(line: 55, column: 10, scope: !4407, inlinedAt: !4737)
!4743 = !DILocation(line: 39, column: 8, scope: !4384, inlinedAt: !4742)
!4744 = !DILocation(line: 39, column: 7, scope: !4377, inlinedAt: !4742)
!4745 = !DILocation(line: 40, column: 5, scope: !4384, inlinedAt: !4742)
!4746 = !DILocation(line: 0, scope: !4718, inlinedAt: !4747)
!4747 = distinct !DILocation(line: 318, column: 10, scope: !4729)
!4748 = !DILocation(line: 29, column: 10, scope: !4718, inlinedAt: !4747)
!4749 = !DILocation(line: 318, column: 3, scope: !4729)
!4750 = distinct !DISubprogram(name: "ximemdup0", scope: !797, file: !797, line: 325, type: !4751, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !796, retainedNodes: !4753)
!4751 = !DISubroutineType(types: !4752)
!4752 = !{!130, !1091, !816}
!4753 = !{!4754, !4755, !4756}
!4754 = !DILocalVariable(name: "p", arg: 1, scope: !4750, file: !797, line: 325, type: !1091)
!4755 = !DILocalVariable(name: "s", arg: 2, scope: !4750, file: !797, line: 325, type: !816)
!4756 = !DILocalVariable(name: "result", scope: !4750, file: !797, line: 327, type: !130)
!4757 = !DILocation(line: 0, scope: !4750)
!4758 = !DILocation(line: 327, column: 30, scope: !4750)
!4759 = !DILocation(line: 0, scope: !4407, inlinedAt: !4760)
!4760 = distinct !DILocation(line: 327, column: 18, scope: !4750)
!4761 = !DILocation(line: 0, scope: !4414, inlinedAt: !4762)
!4762 = distinct !DILocation(line: 55, column: 25, scope: !4407, inlinedAt: !4760)
!4763 = !DILocation(line: 57, column: 26, scope: !4414, inlinedAt: !4762)
!4764 = !DILocation(line: 0, scope: !4377, inlinedAt: !4765)
!4765 = distinct !DILocation(line: 55, column: 10, scope: !4407, inlinedAt: !4760)
!4766 = !DILocation(line: 39, column: 8, scope: !4384, inlinedAt: !4765)
!4767 = !DILocation(line: 39, column: 7, scope: !4377, inlinedAt: !4765)
!4768 = !DILocation(line: 40, column: 5, scope: !4384, inlinedAt: !4765)
!4769 = !DILocation(line: 328, column: 3, scope: !4750)
!4770 = !DILocation(line: 328, column: 13, scope: !4750)
!4771 = !DILocation(line: 0, scope: !4718, inlinedAt: !4772)
!4772 = distinct !DILocation(line: 329, column: 10, scope: !4750)
!4773 = !DILocation(line: 29, column: 10, scope: !4718, inlinedAt: !4772)
!4774 = !DILocation(line: 329, column: 3, scope: !4750)
!4775 = distinct !DISubprogram(name: "xstrdup", scope: !797, file: !797, line: 335, type: !1069, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !796, retainedNodes: !4776)
!4776 = !{!4777}
!4777 = !DILocalVariable(name: "string", arg: 1, scope: !4775, file: !797, line: 335, type: !136)
!4778 = !DILocation(line: 0, scope: !4775)
!4779 = !DILocation(line: 337, column: 27, scope: !4775)
!4780 = !DILocation(line: 337, column: 43, scope: !4775)
!4781 = !DILocation(line: 0, scope: !4702, inlinedAt: !4782)
!4782 = distinct !DILocation(line: 337, column: 10, scope: !4775)
!4783 = !DILocation(line: 0, scope: !4396, inlinedAt: !4784)
!4784 = distinct !DILocation(line: 312, column: 18, scope: !4702, inlinedAt: !4782)
!4785 = !DILocation(line: 49, column: 25, scope: !4396, inlinedAt: !4784)
!4786 = !DILocation(line: 0, scope: !4377, inlinedAt: !4787)
!4787 = distinct !DILocation(line: 49, column: 10, scope: !4396, inlinedAt: !4784)
!4788 = !DILocation(line: 39, column: 8, scope: !4384, inlinedAt: !4787)
!4789 = !DILocation(line: 39, column: 7, scope: !4377, inlinedAt: !4787)
!4790 = !DILocation(line: 40, column: 5, scope: !4384, inlinedAt: !4787)
!4791 = !DILocation(line: 0, scope: !4718, inlinedAt: !4792)
!4792 = distinct !DILocation(line: 312, column: 10, scope: !4702, inlinedAt: !4782)
!4793 = !DILocation(line: 29, column: 10, scope: !4718, inlinedAt: !4792)
!4794 = !DILocation(line: 337, column: 3, scope: !4775)
!4795 = distinct !DISubprogram(name: "xalloc_die", scope: !748, file: !748, line: 32, type: !517, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !829, retainedNodes: !4796)
!4796 = !{!4797}
!4797 = !DILocalVariable(name: "__errstatus", scope: !4798, file: !748, line: 34, type: !4799)
!4798 = distinct !DILexicalBlock(scope: !4795, file: !748, line: 34, column: 3)
!4799 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!4800 = !DILocation(line: 34, column: 3, scope: !4798)
!4801 = !DILocation(line: 0, scope: !4798)
!4802 = !DILocation(line: 40, column: 3, scope: !4795)
!4803 = distinct !DISubprogram(name: "xstrtoimax", scope: !4804, file: !4804, line: 71, type: !4805, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !831, retainedNodes: !4809)
!4804 = !DIFile(filename: "lib/xstrtol.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a1112be551b7ea11a9f6293a4923a73")
!4805 = !DISubroutineType(types: !4806)
!4806 = !{!4807, !136, !1096, !87, !4808, !136}
!4807 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !835, line: 43, baseType: !834)
!4808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!4809 = !{!4810, !4811, !4812, !4813, !4814, !4815, !4816, !4817, !4818, !4819, !4822, !4823}
!4810 = !DILocalVariable(name: "nptr", arg: 1, scope: !4803, file: !4804, line: 71, type: !136)
!4811 = !DILocalVariable(name: "endptr", arg: 2, scope: !4803, file: !4804, line: 71, type: !1096)
!4812 = !DILocalVariable(name: "base", arg: 3, scope: !4803, file: !4804, line: 71, type: !87)
!4813 = !DILocalVariable(name: "val", arg: 4, scope: !4803, file: !4804, line: 72, type: !4808)
!4814 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !4803, file: !4804, line: 72, type: !136)
!4815 = !DILocalVariable(name: "t_ptr", scope: !4803, file: !4804, line: 74, type: !130)
!4816 = !DILocalVariable(name: "p", scope: !4803, file: !4804, line: 75, type: !1096)
!4817 = !DILocalVariable(name: "tmp", scope: !4803, file: !4804, line: 91, type: !837)
!4818 = !DILocalVariable(name: "err", scope: !4803, file: !4804, line: 92, type: !4807)
!4819 = !DILocalVariable(name: "xbase", scope: !4820, file: !4804, line: 126, type: !87)
!4820 = distinct !DILexicalBlock(scope: !4821, file: !4804, line: 119, column: 5)
!4821 = distinct !DILexicalBlock(scope: !4803, file: !4804, line: 118, column: 7)
!4822 = !DILocalVariable(name: "suffixes", scope: !4820, file: !4804, line: 127, type: !87)
!4823 = !DILocalVariable(name: "overflow", scope: !4820, file: !4804, line: 156, type: !4807)
!4824 = distinct !DIAssignID()
!4825 = !DILocation(line: 0, scope: !4803)
!4826 = !DILocation(line: 74, column: 3, scope: !4803)
!4827 = !DILocation(line: 75, column: 14, scope: !4803)
!4828 = !DILocation(line: 90, column: 3, scope: !4803)
!4829 = !DILocation(line: 90, column: 9, scope: !4803)
!4830 = !DILocation(line: 91, column: 20, scope: !4803)
!4831 = !DILocation(line: 94, column: 7, scope: !4832)
!4832 = distinct !DILexicalBlock(scope: !4803, file: !4804, line: 94, column: 7)
!4833 = !DILocation(line: 94, column: 10, scope: !4832)
!4834 = !DILocation(line: 94, column: 7, scope: !4803)
!4835 = !DILocation(line: 98, column: 14, scope: !4836)
!4836 = distinct !DILexicalBlock(scope: !4837, file: !4804, line: 98, column: 11)
!4837 = distinct !DILexicalBlock(scope: !4832, file: !4804, line: 95, column: 5)
!4838 = !DILocation(line: 98, column: 29, scope: !4836)
!4839 = !DILocation(line: 98, column: 32, scope: !4836)
!4840 = !DILocation(line: 98, column: 38, scope: !4836)
!4841 = !DILocation(line: 98, column: 41, scope: !4836)
!4842 = !DILocation(line: 98, column: 11, scope: !4837)
!4843 = !DILocation(line: 102, column: 12, scope: !4844)
!4844 = distinct !DILexicalBlock(scope: !4832, file: !4804, line: 102, column: 12)
!4845 = !DILocation(line: 102, column: 12, scope: !4832)
!4846 = !DILocation(line: 107, column: 5, scope: !4847)
!4847 = distinct !DILexicalBlock(scope: !4844, file: !4804, line: 103, column: 5)
!4848 = !DILocation(line: 112, column: 8, scope: !4849)
!4849 = distinct !DILexicalBlock(scope: !4803, file: !4804, line: 112, column: 7)
!4850 = !DILocation(line: 112, column: 7, scope: !4803)
!4851 = !DILocation(line: 114, column: 12, scope: !4852)
!4852 = distinct !DILexicalBlock(scope: !4849, file: !4804, line: 113, column: 5)
!4853 = !DILocation(line: 115, column: 7, scope: !4852)
!4854 = !DILocation(line: 118, column: 7, scope: !4821)
!4855 = !DILocation(line: 118, column: 11, scope: !4821)
!4856 = !DILocation(line: 118, column: 7, scope: !4803)
!4857 = !DILocation(line: 120, column: 12, scope: !4858)
!4858 = distinct !DILexicalBlock(scope: !4820, file: !4804, line: 120, column: 11)
!4859 = !DILocation(line: 120, column: 11, scope: !4820)
!4860 = !DILocation(line: 122, column: 16, scope: !4861)
!4861 = distinct !DILexicalBlock(scope: !4858, file: !4804, line: 121, column: 9)
!4862 = !DILocation(line: 123, column: 22, scope: !4861)
!4863 = !DILocation(line: 123, column: 11, scope: !4861)
!4864 = !DILocation(line: 0, scope: !4820)
!4865 = !DILocation(line: 128, column: 7, scope: !4820)
!4866 = !DILocation(line: 140, column: 15, scope: !4867)
!4867 = distinct !DILexicalBlock(scope: !4868, file: !4804, line: 140, column: 15)
!4868 = distinct !DILexicalBlock(scope: !4820, file: !4804, line: 129, column: 9)
!4869 = !DILocation(line: 140, column: 15, scope: !4868)
!4870 = !DILocation(line: 141, column: 21, scope: !4867)
!4871 = !DILocation(line: 141, column: 13, scope: !4867)
!4872 = !DILocation(line: 144, column: 21, scope: !4873)
!4873 = distinct !DILexicalBlock(scope: !4874, file: !4804, line: 144, column: 21)
!4874 = distinct !DILexicalBlock(scope: !4867, file: !4804, line: 142, column: 15)
!4875 = !DILocation(line: 144, column: 29, scope: !4873)
!4876 = !DILocation(line: 144, column: 21, scope: !4874)
!4877 = !DILocation(line: 152, column: 17, scope: !4874)
!4878 = !DILocation(line: 157, column: 7, scope: !4820)
!4879 = !DILocalVariable(name: "err", scope: !4880, file: !4804, line: 64, type: !4807)
!4880 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !4804, file: !4804, line: 62, type: !4881, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !831, retainedNodes: !4883)
!4881 = !DISubroutineType(types: !4882)
!4882 = !{!4807, !4808, !87, !87}
!4883 = !{!4884, !4885, !4886, !4879}
!4884 = !DILocalVariable(name: "x", arg: 1, scope: !4880, file: !4804, line: 62, type: !4808)
!4885 = !DILocalVariable(name: "base", arg: 2, scope: !4880, file: !4804, line: 62, type: !87)
!4886 = !DILocalVariable(name: "power", arg: 3, scope: !4880, file: !4804, line: 62, type: !87)
!4887 = !DILocation(line: 0, scope: !4880, inlinedAt: !4888)
!4888 = distinct !DILocation(line: 219, column: 22, scope: !4889)
!4889 = distinct !DILexicalBlock(scope: !4820, file: !4804, line: 158, column: 9)
!4890 = !DILocalVariable(name: "x", arg: 1, scope: !4891, file: !4804, line: 47, type: !4808)
!4891 = distinct !DISubprogram(name: "bkm_scale", scope: !4804, file: !4804, line: 47, type: !4892, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !831, retainedNodes: !4894)
!4892 = !DISubroutineType(types: !4893)
!4893 = !{!4807, !4808, !87}
!4894 = !{!4890, !4895, !4896}
!4895 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !4891, file: !4804, line: 47, type: !87)
!4896 = !DILocalVariable(name: "scaled", scope: !4891, file: !4804, line: 49, type: !837)
!4897 = !DILocation(line: 0, scope: !4891, inlinedAt: !4898)
!4898 = distinct !DILocation(line: 66, column: 12, scope: !4880, inlinedAt: !4888)
!4899 = !DILocation(line: 50, column: 7, scope: !4900, inlinedAt: !4898)
!4900 = distinct !DILexicalBlock(scope: !4891, file: !4804, line: 50, column: 7)
!4901 = !DILocation(line: 50, column: 7, scope: !4891, inlinedAt: !4898)
!4902 = !DILocation(line: 66, column: 9, scope: !4880, inlinedAt: !4888)
!4903 = !DILocation(line: 227, column: 11, scope: !4820)
!4904 = !DILocation(line: 0, scope: !4880, inlinedAt: !4905)
!4905 = distinct !DILocation(line: 215, column: 22, scope: !4889)
!4906 = !DILocation(line: 0, scope: !4891, inlinedAt: !4907)
!4907 = distinct !DILocation(line: 66, column: 12, scope: !4880, inlinedAt: !4905)
!4908 = !DILocation(line: 50, column: 7, scope: !4900, inlinedAt: !4907)
!4909 = !DILocation(line: 50, column: 7, scope: !4891, inlinedAt: !4907)
!4910 = !DILocation(line: 66, column: 9, scope: !4880, inlinedAt: !4905)
!4911 = !DILocation(line: 0, scope: !4880, inlinedAt: !4912)
!4912 = distinct !DILocation(line: 202, column: 22, scope: !4889)
!4913 = !DILocation(line: 0, scope: !4891, inlinedAt: !4914)
!4914 = distinct !DILocation(line: 66, column: 12, scope: !4880, inlinedAt: !4912)
!4915 = !DILocation(line: 50, column: 7, scope: !4900, inlinedAt: !4914)
!4916 = !DILocation(line: 50, column: 7, scope: !4891, inlinedAt: !4914)
!4917 = !DILocation(line: 66, column: 9, scope: !4880, inlinedAt: !4912)
!4918 = !DILocation(line: 0, scope: !4880, inlinedAt: !4919)
!4919 = distinct !DILocation(line: 198, column: 22, scope: !4889)
!4920 = !DILocation(line: 0, scope: !4891, inlinedAt: !4921)
!4921 = distinct !DILocation(line: 66, column: 12, scope: !4880, inlinedAt: !4919)
!4922 = !DILocation(line: 50, column: 7, scope: !4900, inlinedAt: !4921)
!4923 = !DILocation(line: 50, column: 7, scope: !4891, inlinedAt: !4921)
!4924 = !DILocation(line: 66, column: 9, scope: !4880, inlinedAt: !4919)
!4925 = !DILocation(line: 0, scope: !4880, inlinedAt: !4926)
!4926 = distinct !DILocation(line: 194, column: 22, scope: !4889)
!4927 = !DILocation(line: 0, scope: !4891, inlinedAt: !4928)
!4928 = distinct !DILocation(line: 66, column: 12, scope: !4880, inlinedAt: !4926)
!4929 = !DILocation(line: 50, column: 7, scope: !4900, inlinedAt: !4928)
!4930 = !DILocation(line: 50, column: 7, scope: !4891, inlinedAt: !4928)
!4931 = !DILocation(line: 66, column: 9, scope: !4880, inlinedAt: !4926)
!4932 = !DILocation(line: 0, scope: !4880, inlinedAt: !4933)
!4933 = distinct !DILocation(line: 175, column: 22, scope: !4889)
!4934 = !DILocation(line: 0, scope: !4891, inlinedAt: !4935)
!4935 = distinct !DILocation(line: 66, column: 12, scope: !4880, inlinedAt: !4933)
!4936 = !DILocation(line: 50, column: 7, scope: !4900, inlinedAt: !4935)
!4937 = !DILocation(line: 50, column: 7, scope: !4891, inlinedAt: !4935)
!4938 = !DILocation(line: 66, column: 9, scope: !4880, inlinedAt: !4933)
!4939 = !DILocation(line: 0, scope: !4891, inlinedAt: !4940)
!4940 = distinct !DILocation(line: 160, column: 22, scope: !4889)
!4941 = !DILocation(line: 50, column: 7, scope: !4900, inlinedAt: !4940)
!4942 = !DILocation(line: 50, column: 7, scope: !4891, inlinedAt: !4940)
!4943 = !DILocation(line: 161, column: 11, scope: !4889)
!4944 = !DILocation(line: 0, scope: !4891, inlinedAt: !4945)
!4945 = distinct !DILocation(line: 167, column: 22, scope: !4889)
!4946 = !DILocation(line: 50, column: 7, scope: !4900, inlinedAt: !4945)
!4947 = !DILocation(line: 50, column: 7, scope: !4891, inlinedAt: !4945)
!4948 = !DILocation(line: 168, column: 11, scope: !4889)
!4949 = !DILocation(line: 0, scope: !4880, inlinedAt: !4950)
!4950 = distinct !DILocation(line: 180, column: 22, scope: !4889)
!4951 = !DILocation(line: 0, scope: !4891, inlinedAt: !4952)
!4952 = distinct !DILocation(line: 66, column: 12, scope: !4880, inlinedAt: !4950)
!4953 = !DILocation(line: 50, column: 7, scope: !4900, inlinedAt: !4952)
!4954 = !DILocation(line: 50, column: 7, scope: !4891, inlinedAt: !4952)
!4955 = !DILocation(line: 66, column: 9, scope: !4880, inlinedAt: !4950)
!4956 = !DILocation(line: 0, scope: !4880, inlinedAt: !4957)
!4957 = distinct !DILocation(line: 185, column: 22, scope: !4889)
!4958 = !DILocation(line: 50, column: 7, scope: !4900, inlinedAt: !4959)
!4959 = distinct !DILocation(line: 66, column: 12, scope: !4880, inlinedAt: !4957)
!4960 = !DILocation(line: 50, column: 7, scope: !4891, inlinedAt: !4959)
!4961 = !DILocation(line: 0, scope: !4891, inlinedAt: !4959)
!4962 = !DILocation(line: 0, scope: !4880, inlinedAt: !4963)
!4963 = distinct !DILocation(line: 190, column: 22, scope: !4889)
!4964 = !DILocation(line: 0, scope: !4891, inlinedAt: !4965)
!4965 = distinct !DILocation(line: 66, column: 12, scope: !4880, inlinedAt: !4963)
!4966 = !DILocation(line: 50, column: 7, scope: !4900, inlinedAt: !4965)
!4967 = !DILocation(line: 50, column: 7, scope: !4891, inlinedAt: !4965)
!4968 = !DILocation(line: 66, column: 9, scope: !4880, inlinedAt: !4963)
!4969 = !DILocation(line: 0, scope: !4880, inlinedAt: !4970)
!4970 = distinct !DILocation(line: 207, column: 22, scope: !4889)
!4971 = !DILocation(line: 0, scope: !4891, inlinedAt: !4972)
!4972 = distinct !DILocation(line: 66, column: 12, scope: !4880, inlinedAt: !4970)
!4973 = !DILocation(line: 50, column: 7, scope: !4900, inlinedAt: !4972)
!4974 = !DILocation(line: 50, column: 7, scope: !4891, inlinedAt: !4972)
!4975 = !DILocation(line: 66, column: 9, scope: !4880, inlinedAt: !4970)
!4976 = !DILocation(line: 0, scope: !4891, inlinedAt: !4977)
!4977 = distinct !DILocation(line: 211, column: 22, scope: !4889)
!4978 = !DILocation(line: 50, column: 7, scope: !4900, inlinedAt: !4977)
!4979 = !DILocation(line: 50, column: 7, scope: !4891, inlinedAt: !4977)
!4980 = !DILocation(line: 212, column: 11, scope: !4889)
!4981 = !DILocation(line: 0, scope: !4889)
!4982 = !DILocation(line: 228, column: 10, scope: !4820)
!4983 = !DILocation(line: 229, column: 11, scope: !4984)
!4984 = distinct !DILexicalBlock(scope: !4820, file: !4804, line: 229, column: 11)
!4985 = !DILocation(line: 229, column: 11, scope: !4820)
!4986 = !DILocation(line: 223, column: 16, scope: !4889)
!4987 = !DILocation(line: 224, column: 22, scope: !4889)
!4988 = !DILocation(line: 100, column: 11, scope: !4837)
!4989 = !DILocation(line: 92, column: 16, scope: !4803)
!4990 = !DILocation(line: 233, column: 8, scope: !4803)
!4991 = !DILocation(line: 234, column: 3, scope: !4803)
!4992 = !DILocation(line: 235, column: 1, scope: !4803)
!4993 = !DISubprogram(name: "strtoimax", scope: !4994, file: !4994, line: 297, type: !4995, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4994 = !DIFile(filename: "/usr/include/inttypes.h", directory: "", checksumkind: CSK_MD5, checksum: "e498a0d76716f3e3909f4b6f2cb2f20f")
!4995 = !DISubroutineType(types: !4996)
!4996 = !{!837, !437, !4997, !87}
!4997 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1096)
!4998 = distinct !DISubprogram(name: "rpl_fopen", scope: !841, file: !841, line: 46, type: !4999, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !840, retainedNodes: !5035)
!4999 = !DISubroutineType(types: !5000)
!5000 = !{!5001, !136, !136}
!5001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5002, size: 64)
!5002 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !211, line: 7, baseType: !5003)
!5003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !213, line: 49, size: 1728, elements: !5004)
!5004 = !{!5005, !5006, !5007, !5008, !5009, !5010, !5011, !5012, !5013, !5014, !5015, !5016, !5017, !5018, !5020, !5021, !5022, !5023, !5024, !5025, !5026, !5027, !5028, !5029, !5030, !5031, !5032, !5033, !5034}
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5003, file: !213, line: 51, baseType: !87, size: 32)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5003, file: !213, line: 54, baseType: !130, size: 64, offset: 64)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5003, file: !213, line: 55, baseType: !130, size: 64, offset: 128)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5003, file: !213, line: 56, baseType: !130, size: 64, offset: 192)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5003, file: !213, line: 57, baseType: !130, size: 64, offset: 256)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5003, file: !213, line: 58, baseType: !130, size: 64, offset: 320)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5003, file: !213, line: 59, baseType: !130, size: 64, offset: 384)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5003, file: !213, line: 60, baseType: !130, size: 64, offset: 448)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5003, file: !213, line: 61, baseType: !130, size: 64, offset: 512)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5003, file: !213, line: 64, baseType: !130, size: 64, offset: 576)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5003, file: !213, line: 65, baseType: !130, size: 64, offset: 640)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5003, file: !213, line: 66, baseType: !130, size: 64, offset: 704)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5003, file: !213, line: 68, baseType: !228, size: 64, offset: 768)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5003, file: !213, line: 70, baseType: !5019, size: 64, offset: 832)
!5019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5003, size: 64)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5003, file: !213, line: 72, baseType: !87, size: 32, offset: 896)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5003, file: !213, line: 73, baseType: !87, size: 32, offset: 928)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5003, file: !213, line: 74, baseType: !235, size: 64, offset: 960)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5003, file: !213, line: 77, baseType: !132, size: 16, offset: 1024)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5003, file: !213, line: 78, baseType: !240, size: 8, offset: 1040)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5003, file: !213, line: 79, baseType: !54, size: 8, offset: 1048)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5003, file: !213, line: 81, baseType: !243, size: 64, offset: 1088)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5003, file: !213, line: 89, baseType: !246, size: 64, offset: 1152)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5003, file: !213, line: 91, baseType: !248, size: 64, offset: 1216)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5003, file: !213, line: 92, baseType: !251, size: 64, offset: 1280)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5003, file: !213, line: 93, baseType: !5019, size: 64, offset: 1344)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5003, file: !213, line: 94, baseType: !131, size: 64, offset: 1408)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5003, file: !213, line: 95, baseType: !133, size: 64, offset: 1472)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5003, file: !213, line: 96, baseType: !87, size: 32, offset: 1536)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5003, file: !213, line: 98, baseType: !258, size: 160, offset: 1568)
!5035 = !{!5036, !5037, !5038, !5039, !5040, !5041, !5045, !5047, !5048, !5053, !5056, !5057}
!5036 = !DILocalVariable(name: "filename", arg: 1, scope: !4998, file: !841, line: 46, type: !136)
!5037 = !DILocalVariable(name: "mode", arg: 2, scope: !4998, file: !841, line: 46, type: !136)
!5038 = !DILocalVariable(name: "open_direction", scope: !4998, file: !841, line: 54, type: !87)
!5039 = !DILocalVariable(name: "open_flags", scope: !4998, file: !841, line: 55, type: !87)
!5040 = !DILocalVariable(name: "open_flags_gnu", scope: !4998, file: !841, line: 57, type: !196)
!5041 = !DILocalVariable(name: "fdopen_mode_buf", scope: !4998, file: !841, line: 59, type: !5042)
!5042 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 648, elements: !5043)
!5043 = !{!5044}
!5044 = !DISubrange(count: 81)
!5045 = !DILocalVariable(name: "p", scope: !5046, file: !841, line: 62, type: !136)
!5046 = distinct !DILexicalBlock(scope: !4998, file: !841, line: 61, column: 3)
!5047 = !DILocalVariable(name: "q", scope: !5046, file: !841, line: 64, type: !130)
!5048 = !DILocalVariable(name: "len", scope: !5049, file: !841, line: 128, type: !133)
!5049 = distinct !DILexicalBlock(scope: !5050, file: !841, line: 127, column: 9)
!5050 = distinct !DILexicalBlock(scope: !5051, file: !841, line: 68, column: 7)
!5051 = distinct !DILexicalBlock(scope: !5052, file: !841, line: 67, column: 5)
!5052 = distinct !DILexicalBlock(scope: !5046, file: !841, line: 67, column: 5)
!5053 = !DILocalVariable(name: "fd", scope: !5054, file: !841, line: 199, type: !87)
!5054 = distinct !DILexicalBlock(scope: !5055, file: !841, line: 198, column: 5)
!5055 = distinct !DILexicalBlock(scope: !4998, file: !841, line: 197, column: 7)
!5056 = !DILocalVariable(name: "fp", scope: !5054, file: !841, line: 204, type: !5001)
!5057 = !DILocalVariable(name: "saved_errno", scope: !5058, file: !841, line: 207, type: !87)
!5058 = distinct !DILexicalBlock(scope: !5059, file: !841, line: 206, column: 9)
!5059 = distinct !DILexicalBlock(scope: !5054, file: !841, line: 205, column: 11)
!5060 = distinct !DIAssignID()
!5061 = !DILocation(line: 0, scope: !4998)
!5062 = !DILocation(line: 59, column: 3, scope: !4998)
!5063 = !DILocation(line: 0, scope: !5046)
!5064 = !DILocation(line: 67, column: 5, scope: !5046)
!5065 = !DILocation(line: 54, column: 7, scope: !4998)
!5066 = !DILocation(line: 67, column: 12, scope: !5051)
!5067 = !DILocation(line: 67, column: 5, scope: !5052)
!5068 = !DILocation(line: 74, column: 19, scope: !5069)
!5069 = distinct !DILexicalBlock(scope: !5070, file: !841, line: 74, column: 17)
!5070 = distinct !DILexicalBlock(scope: !5050, file: !841, line: 70, column: 11)
!5071 = !DILocation(line: 74, column: 17, scope: !5070)
!5072 = !DILocation(line: 75, column: 17, scope: !5069)
!5073 = !DILocation(line: 75, column: 20, scope: !5069)
!5074 = !DILocation(line: 75, column: 15, scope: !5069)
!5075 = !DILocation(line: 80, column: 24, scope: !5070)
!5076 = !DILocation(line: 82, column: 19, scope: !5077)
!5077 = distinct !DILexicalBlock(scope: !5070, file: !841, line: 82, column: 17)
!5078 = !DILocation(line: 82, column: 17, scope: !5070)
!5079 = !DILocation(line: 83, column: 17, scope: !5077)
!5080 = !DILocation(line: 83, column: 20, scope: !5077)
!5081 = !DILocation(line: 83, column: 15, scope: !5077)
!5082 = !DILocation(line: 88, column: 24, scope: !5070)
!5083 = !DILocation(line: 90, column: 19, scope: !5084)
!5084 = distinct !DILexicalBlock(scope: !5070, file: !841, line: 90, column: 17)
!5085 = !DILocation(line: 90, column: 17, scope: !5070)
!5086 = !DILocation(line: 91, column: 17, scope: !5084)
!5087 = !DILocation(line: 91, column: 20, scope: !5084)
!5088 = !DILocation(line: 91, column: 15, scope: !5084)
!5089 = !DILocation(line: 100, column: 19, scope: !5090)
!5090 = distinct !DILexicalBlock(scope: !5070, file: !841, line: 100, column: 17)
!5091 = !DILocation(line: 100, column: 17, scope: !5070)
!5092 = !DILocation(line: 101, column: 17, scope: !5090)
!5093 = !DILocation(line: 101, column: 20, scope: !5090)
!5094 = !DILocation(line: 101, column: 15, scope: !5090)
!5095 = !DILocation(line: 107, column: 19, scope: !5096)
!5096 = distinct !DILexicalBlock(scope: !5070, file: !841, line: 107, column: 17)
!5097 = !DILocation(line: 107, column: 17, scope: !5070)
!5098 = !DILocation(line: 108, column: 17, scope: !5096)
!5099 = !DILocation(line: 108, column: 20, scope: !5096)
!5100 = !DILocation(line: 108, column: 15, scope: !5096)
!5101 = !DILocation(line: 113, column: 24, scope: !5070)
!5102 = !DILocation(line: 115, column: 13, scope: !5070)
!5103 = !DILocation(line: 117, column: 24, scope: !5070)
!5104 = !DILocation(line: 119, column: 13, scope: !5070)
!5105 = !DILocation(line: 128, column: 24, scope: !5049)
!5106 = !DILocation(line: 0, scope: !5049)
!5107 = !DILocation(line: 129, column: 48, scope: !5108)
!5108 = distinct !DILexicalBlock(scope: !5049, file: !841, line: 129, column: 15)
!5109 = !DILocation(line: 129, column: 15, scope: !5049)
!5110 = !DILocalVariable(name: "__dest", arg: 1, scope: !5111, file: !1283, line: 26, type: !4721)
!5111 = distinct !DISubprogram(name: "memcpy", scope: !1283, file: !1283, line: 26, type: !4719, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !840, retainedNodes: !5112)
!5112 = !{!5110, !5113, !5114}
!5113 = !DILocalVariable(name: "__src", arg: 2, scope: !5111, file: !1283, line: 26, type: !1090)
!5114 = !DILocalVariable(name: "__len", arg: 3, scope: !5111, file: !1283, line: 26, type: !133)
!5115 = !DILocation(line: 0, scope: !5111, inlinedAt: !5116)
!5116 = distinct !DILocation(line: 131, column: 11, scope: !5049)
!5117 = !DILocation(line: 29, column: 10, scope: !5111, inlinedAt: !5116)
!5118 = !DILocation(line: 132, column: 13, scope: !5049)
!5119 = !DILocation(line: 135, column: 9, scope: !5050)
!5120 = !DILocation(line: 67, column: 25, scope: !5051)
!5121 = !DILocation(line: 67, column: 5, scope: !5051)
!5122 = distinct !{!5122, !5067, !5123, !990}
!5123 = !DILocation(line: 136, column: 7, scope: !5052)
!5124 = !DILocation(line: 138, column: 8, scope: !5046)
!5125 = !DILocation(line: 197, column: 7, scope: !5055)
!5126 = !DILocation(line: 197, column: 7, scope: !4998)
!5127 = !DILocation(line: 199, column: 47, scope: !5054)
!5128 = !DILocation(line: 199, column: 16, scope: !5054)
!5129 = !DILocation(line: 0, scope: !5054)
!5130 = !DILocation(line: 201, column: 14, scope: !5131)
!5131 = distinct !DILexicalBlock(scope: !5054, file: !841, line: 201, column: 11)
!5132 = !DILocation(line: 201, column: 11, scope: !5054)
!5133 = !DILocation(line: 204, column: 18, scope: !5054)
!5134 = !DILocation(line: 205, column: 14, scope: !5059)
!5135 = !DILocation(line: 205, column: 11, scope: !5054)
!5136 = !DILocation(line: 207, column: 29, scope: !5058)
!5137 = !DILocation(line: 0, scope: !5058)
!5138 = !DILocation(line: 208, column: 11, scope: !5058)
!5139 = !DILocation(line: 209, column: 17, scope: !5058)
!5140 = !DILocation(line: 210, column: 9, scope: !5058)
!5141 = !DILocalVariable(name: "filename", arg: 1, scope: !5142, file: !841, line: 30, type: !136)
!5142 = distinct !DISubprogram(name: "orig_fopen", scope: !841, file: !841, line: 30, type: !4999, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !840, retainedNodes: !5143)
!5143 = !{!5141, !5144}
!5144 = !DILocalVariable(name: "mode", arg: 2, scope: !5142, file: !841, line: 30, type: !136)
!5145 = !DILocation(line: 0, scope: !5142, inlinedAt: !5146)
!5146 = distinct !DILocation(line: 219, column: 10, scope: !4998)
!5147 = !DILocation(line: 32, column: 10, scope: !5142, inlinedAt: !5146)
!5148 = !DILocation(line: 219, column: 3, scope: !4998)
!5149 = !DILocation(line: 220, column: 1, scope: !4998)
!5150 = !DISubprogram(name: "open", scope: !2382, file: !2382, line: 181, type: !5151, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5151 = !DISubroutineType(types: !5152)
!5152 = !{!87, !136, !87, null}
!5153 = !DISubprogram(name: "fdopen", scope: !938, file: !938, line: 293, type: !5154, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5154 = !DISubroutineType(types: !5155)
!5155 = !{!5001, !87, !136}
!5156 = !DISubprogram(name: "close", scope: !2247, file: !2247, line: 358, type: !1269, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5157 = !DISubprogram(name: "fopen", scope: !938, file: !938, line: 258, type: !5158, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5158 = !DISubroutineType(types: !5159)
!5159 = !{!5001, !437, !437}
!5160 = distinct !DISubprogram(name: "close_stream", scope: !843, file: !843, line: 55, type: !5161, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !842, retainedNodes: !5197)
!5161 = !DISubroutineType(types: !5162)
!5162 = !{!87, !5163}
!5163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5164, size: 64)
!5164 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !211, line: 7, baseType: !5165)
!5165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !213, line: 49, size: 1728, elements: !5166)
!5166 = !{!5167, !5168, !5169, !5170, !5171, !5172, !5173, !5174, !5175, !5176, !5177, !5178, !5179, !5180, !5182, !5183, !5184, !5185, !5186, !5187, !5188, !5189, !5190, !5191, !5192, !5193, !5194, !5195, !5196}
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5165, file: !213, line: 51, baseType: !87, size: 32)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5165, file: !213, line: 54, baseType: !130, size: 64, offset: 64)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5165, file: !213, line: 55, baseType: !130, size: 64, offset: 128)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5165, file: !213, line: 56, baseType: !130, size: 64, offset: 192)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5165, file: !213, line: 57, baseType: !130, size: 64, offset: 256)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5165, file: !213, line: 58, baseType: !130, size: 64, offset: 320)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5165, file: !213, line: 59, baseType: !130, size: 64, offset: 384)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5165, file: !213, line: 60, baseType: !130, size: 64, offset: 448)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5165, file: !213, line: 61, baseType: !130, size: 64, offset: 512)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5165, file: !213, line: 64, baseType: !130, size: 64, offset: 576)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5165, file: !213, line: 65, baseType: !130, size: 64, offset: 640)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5165, file: !213, line: 66, baseType: !130, size: 64, offset: 704)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5165, file: !213, line: 68, baseType: !228, size: 64, offset: 768)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5165, file: !213, line: 70, baseType: !5181, size: 64, offset: 832)
!5181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5165, size: 64)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5165, file: !213, line: 72, baseType: !87, size: 32, offset: 896)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5165, file: !213, line: 73, baseType: !87, size: 32, offset: 928)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5165, file: !213, line: 74, baseType: !235, size: 64, offset: 960)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5165, file: !213, line: 77, baseType: !132, size: 16, offset: 1024)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5165, file: !213, line: 78, baseType: !240, size: 8, offset: 1040)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5165, file: !213, line: 79, baseType: !54, size: 8, offset: 1048)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5165, file: !213, line: 81, baseType: !243, size: 64, offset: 1088)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5165, file: !213, line: 89, baseType: !246, size: 64, offset: 1152)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5165, file: !213, line: 91, baseType: !248, size: 64, offset: 1216)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5165, file: !213, line: 92, baseType: !251, size: 64, offset: 1280)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5165, file: !213, line: 93, baseType: !5181, size: 64, offset: 1344)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5165, file: !213, line: 94, baseType: !131, size: 64, offset: 1408)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5165, file: !213, line: 95, baseType: !133, size: 64, offset: 1472)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5165, file: !213, line: 96, baseType: !87, size: 32, offset: 1536)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5165, file: !213, line: 98, baseType: !258, size: 160, offset: 1568)
!5197 = !{!5198, !5199, !5201, !5202}
!5198 = !DILocalVariable(name: "stream", arg: 1, scope: !5160, file: !843, line: 55, type: !5163)
!5199 = !DILocalVariable(name: "some_pending", scope: !5160, file: !843, line: 57, type: !5200)
!5200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !196)
!5201 = !DILocalVariable(name: "prev_fail", scope: !5160, file: !843, line: 58, type: !5200)
!5202 = !DILocalVariable(name: "fclose_fail", scope: !5160, file: !843, line: 59, type: !5200)
!5203 = !DILocation(line: 0, scope: !5160)
!5204 = !DILocation(line: 57, column: 30, scope: !5160)
!5205 = !DILocalVariable(name: "__stream", arg: 1, scope: !5206, file: !1300, line: 135, type: !5163)
!5206 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1300, file: !1300, line: 135, type: !5161, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !842, retainedNodes: !5207)
!5207 = !{!5205}
!5208 = !DILocation(line: 0, scope: !5206, inlinedAt: !5209)
!5209 = distinct !DILocation(line: 58, column: 27, scope: !5160)
!5210 = !DILocation(line: 137, column: 10, scope: !5206, inlinedAt: !5209)
!5211 = !DILocation(line: 58, column: 43, scope: !5160)
!5212 = !DILocation(line: 59, column: 29, scope: !5160)
!5213 = !DILocation(line: 59, column: 45, scope: !5160)
!5214 = !DILocation(line: 69, column: 17, scope: !5215)
!5215 = distinct !DILexicalBlock(scope: !5160, file: !843, line: 69, column: 7)
!5216 = !DILocation(line: 57, column: 50, scope: !5160)
!5217 = !DILocation(line: 69, column: 33, scope: !5215)
!5218 = !DILocation(line: 69, column: 53, scope: !5215)
!5219 = !DILocation(line: 69, column: 59, scope: !5215)
!5220 = !DILocation(line: 69, column: 7, scope: !5160)
!5221 = !DILocation(line: 71, column: 11, scope: !5222)
!5222 = distinct !DILexicalBlock(scope: !5215, file: !843, line: 70, column: 5)
!5223 = !DILocation(line: 72, column: 9, scope: !5224)
!5224 = distinct !DILexicalBlock(scope: !5222, file: !843, line: 71, column: 11)
!5225 = !DILocation(line: 72, column: 15, scope: !5224)
!5226 = !DILocation(line: 77, column: 1, scope: !5160)
!5227 = !DISubprogram(name: "__fpending", scope: !2590, file: !2590, line: 75, type: !5228, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5228 = !DISubroutineType(types: !5229)
!5229 = !{!133, !5163}
!5230 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !755, file: !755, line: 100, type: !5231, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !758, retainedNodes: !5234)
!5231 = !DISubroutineType(types: !5232)
!5232 = !{!133, !2856, !136, !133, !5233}
!5233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!5234 = !{!5235, !5236, !5237, !5238, !5239}
!5235 = !DILocalVariable(name: "pwc", arg: 1, scope: !5230, file: !755, line: 100, type: !2856)
!5236 = !DILocalVariable(name: "s", arg: 2, scope: !5230, file: !755, line: 100, type: !136)
!5237 = !DILocalVariable(name: "n", arg: 3, scope: !5230, file: !755, line: 100, type: !133)
!5238 = !DILocalVariable(name: "ps", arg: 4, scope: !5230, file: !755, line: 100, type: !5233)
!5239 = !DILocalVariable(name: "ret", scope: !5230, file: !755, line: 130, type: !133)
!5240 = !DILocation(line: 0, scope: !5230)
!5241 = !DILocation(line: 105, column: 9, scope: !5242)
!5242 = distinct !DILexicalBlock(scope: !5230, file: !755, line: 105, column: 7)
!5243 = !DILocation(line: 105, column: 7, scope: !5230)
!5244 = !DILocation(line: 117, column: 10, scope: !5245)
!5245 = distinct !DILexicalBlock(scope: !5230, file: !755, line: 117, column: 7)
!5246 = !DILocation(line: 117, column: 7, scope: !5230)
!5247 = !DILocation(line: 130, column: 16, scope: !5230)
!5248 = !DILocation(line: 135, column: 11, scope: !5249)
!5249 = distinct !DILexicalBlock(scope: !5230, file: !755, line: 135, column: 7)
!5250 = !DILocation(line: 135, column: 25, scope: !5249)
!5251 = !DILocation(line: 135, column: 30, scope: !5249)
!5252 = !DILocation(line: 135, column: 7, scope: !5230)
!5253 = !DILocalVariable(name: "ps", arg: 1, scope: !5254, file: !2830, line: 1135, type: !5233)
!5254 = distinct !DISubprogram(name: "mbszero", scope: !2830, file: !2830, line: 1135, type: !5255, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !758, retainedNodes: !5257)
!5255 = !DISubroutineType(types: !5256)
!5256 = !{null, !5233}
!5257 = !{!5253}
!5258 = !DILocation(line: 0, scope: !5254, inlinedAt: !5259)
!5259 = distinct !DILocation(line: 137, column: 5, scope: !5249)
!5260 = !DILocalVariable(name: "__dest", arg: 1, scope: !5261, file: !1283, line: 57, type: !131)
!5261 = distinct !DISubprogram(name: "memset", scope: !1283, file: !1283, line: 57, type: !2839, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !758, retainedNodes: !5262)
!5262 = !{!5260, !5263, !5264}
!5263 = !DILocalVariable(name: "__ch", arg: 2, scope: !5261, file: !1283, line: 57, type: !87)
!5264 = !DILocalVariable(name: "__len", arg: 3, scope: !5261, file: !1283, line: 57, type: !133)
!5265 = !DILocation(line: 0, scope: !5261, inlinedAt: !5266)
!5266 = distinct !DILocation(line: 1137, column: 3, scope: !5254, inlinedAt: !5259)
!5267 = !DILocation(line: 59, column: 10, scope: !5261, inlinedAt: !5266)
!5268 = !DILocation(line: 137, column: 5, scope: !5249)
!5269 = !DILocation(line: 138, column: 11, scope: !5270)
!5270 = distinct !DILexicalBlock(scope: !5230, file: !755, line: 138, column: 7)
!5271 = !DILocation(line: 138, column: 7, scope: !5230)
!5272 = !DILocation(line: 139, column: 5, scope: !5270)
!5273 = !DILocation(line: 143, column: 26, scope: !5274)
!5274 = distinct !DILexicalBlock(scope: !5230, file: !755, line: 143, column: 7)
!5275 = !DILocation(line: 143, column: 41, scope: !5274)
!5276 = !DILocation(line: 143, column: 7, scope: !5230)
!5277 = !DILocation(line: 145, column: 15, scope: !5278)
!5278 = distinct !DILexicalBlock(scope: !5279, file: !755, line: 145, column: 11)
!5279 = distinct !DILexicalBlock(scope: !5274, file: !755, line: 144, column: 5)
!5280 = !DILocation(line: 145, column: 11, scope: !5279)
!5281 = !DILocation(line: 146, column: 32, scope: !5278)
!5282 = !DILocation(line: 146, column: 16, scope: !5278)
!5283 = !DILocation(line: 146, column: 14, scope: !5278)
!5284 = !DILocation(line: 146, column: 9, scope: !5278)
!5285 = !DILocation(line: 286, column: 1, scope: !5230)
!5286 = !DISubprogram(name: "mbsinit", scope: !5287, file: !5287, line: 293, type: !5288, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5287 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!5288 = !DISubroutineType(types: !5289)
!5289 = !{!87, !5290}
!5290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5291, size: 64)
!5291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !761)
!5292 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !845, file: !845, line: 27, type: !4361, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !844, retainedNodes: !5293)
!5293 = !{!5294, !5295, !5296, !5297}
!5294 = !DILocalVariable(name: "ptr", arg: 1, scope: !5292, file: !845, line: 27, type: !131)
!5295 = !DILocalVariable(name: "nmemb", arg: 2, scope: !5292, file: !845, line: 27, type: !133)
!5296 = !DILocalVariable(name: "size", arg: 3, scope: !5292, file: !845, line: 27, type: !133)
!5297 = !DILocalVariable(name: "nbytes", scope: !5292, file: !845, line: 29, type: !133)
!5298 = !DILocation(line: 0, scope: !5292)
!5299 = !DILocation(line: 30, column: 7, scope: !5300)
!5300 = distinct !DILexicalBlock(scope: !5292, file: !845, line: 30, column: 7)
!5301 = !DILocation(line: 30, column: 7, scope: !5292)
!5302 = !DILocation(line: 32, column: 7, scope: !5303)
!5303 = distinct !DILexicalBlock(scope: !5300, file: !845, line: 31, column: 5)
!5304 = !DILocation(line: 32, column: 13, scope: !5303)
!5305 = !DILocation(line: 33, column: 7, scope: !5303)
!5306 = !DILocalVariable(name: "ptr", arg: 1, scope: !5307, file: !4450, line: 2057, type: !131)
!5307 = distinct !DISubprogram(name: "rpl_realloc", scope: !4450, file: !4450, line: 2057, type: !4442, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !844, retainedNodes: !5308)
!5308 = !{!5306, !5309}
!5309 = !DILocalVariable(name: "size", arg: 2, scope: !5307, file: !4450, line: 2057, type: !133)
!5310 = !DILocation(line: 0, scope: !5307, inlinedAt: !5311)
!5311 = distinct !DILocation(line: 37, column: 10, scope: !5292)
!5312 = !DILocation(line: 2059, column: 24, scope: !5307, inlinedAt: !5311)
!5313 = !DILocation(line: 2059, column: 10, scope: !5307, inlinedAt: !5311)
!5314 = !DILocation(line: 37, column: 3, scope: !5292)
!5315 = !DILocation(line: 38, column: 1, scope: !5292)
!5316 = distinct !DISubprogram(name: "hard_locale", scope: !773, file: !773, line: 28, type: !5317, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !846, retainedNodes: !5319)
!5317 = !DISubroutineType(types: !5318)
!5318 = !{!196, !87}
!5319 = !{!5320, !5321}
!5320 = !DILocalVariable(name: "category", arg: 1, scope: !5316, file: !773, line: 28, type: !87)
!5321 = !DILocalVariable(name: "locale", scope: !5316, file: !773, line: 30, type: !5322)
!5322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !5323)
!5323 = !{!5324}
!5324 = !DISubrange(count: 257)
!5325 = distinct !DIAssignID()
!5326 = !DILocation(line: 0, scope: !5316)
!5327 = !DILocation(line: 30, column: 3, scope: !5316)
!5328 = !DILocation(line: 32, column: 7, scope: !5329)
!5329 = distinct !DILexicalBlock(scope: !5316, file: !773, line: 32, column: 7)
!5330 = !DILocation(line: 32, column: 7, scope: !5316)
!5331 = !DILocalVariable(name: "__s1", arg: 1, scope: !5332, file: !956, line: 1359, type: !136)
!5332 = distinct !DISubprogram(name: "streq", scope: !956, file: !956, line: 1359, type: !957, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !846, retainedNodes: !5333)
!5333 = !{!5331, !5334}
!5334 = !DILocalVariable(name: "__s2", arg: 2, scope: !5332, file: !956, line: 1359, type: !136)
!5335 = !DILocation(line: 0, scope: !5332, inlinedAt: !5336)
!5336 = distinct !DILocation(line: 35, column: 9, scope: !5337)
!5337 = distinct !DILexicalBlock(scope: !5316, file: !773, line: 35, column: 7)
!5338 = !DILocation(line: 1361, column: 11, scope: !5332, inlinedAt: !5336)
!5339 = !DILocation(line: 35, column: 29, scope: !5337)
!5340 = !DILocation(line: 0, scope: !5332, inlinedAt: !5341)
!5341 = distinct !DILocation(line: 35, column: 32, scope: !5337)
!5342 = !DILocation(line: 1361, column: 11, scope: !5332, inlinedAt: !5341)
!5343 = !DILocation(line: 1361, column: 10, scope: !5332, inlinedAt: !5341)
!5344 = !DILocation(line: 35, column: 7, scope: !5316)
!5345 = !DILocation(line: 46, column: 3, scope: !5316)
!5346 = !DILocation(line: 47, column: 1, scope: !5316)
!5347 = distinct !DISubprogram(name: "setlocale_null_r", scope: !851, file: !851, line: 154, type: !5348, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !850, retainedNodes: !5350)
!5348 = !DISubroutineType(types: !5349)
!5349 = !{!87, !87, !130, !133}
!5350 = !{!5351, !5352, !5353}
!5351 = !DILocalVariable(name: "category", arg: 1, scope: !5347, file: !851, line: 154, type: !87)
!5352 = !DILocalVariable(name: "buf", arg: 2, scope: !5347, file: !851, line: 154, type: !130)
!5353 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5347, file: !851, line: 154, type: !133)
!5354 = !DILocation(line: 0, scope: !5347)
!5355 = !DILocation(line: 159, column: 10, scope: !5347)
!5356 = !DILocation(line: 159, column: 3, scope: !5347)
!5357 = distinct !DISubprogram(name: "setlocale_null", scope: !851, file: !851, line: 186, type: !5358, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !850, retainedNodes: !5360)
!5358 = !DISubroutineType(types: !5359)
!5359 = !{!136, !87}
!5360 = !{!5361}
!5361 = !DILocalVariable(name: "category", arg: 1, scope: !5357, file: !851, line: 186, type: !87)
!5362 = !DILocation(line: 0, scope: !5357)
!5363 = !DILocation(line: 189, column: 10, scope: !5357)
!5364 = !DILocation(line: 189, column: 3, scope: !5357)
!5365 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !853, file: !853, line: 35, type: !5358, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !852, retainedNodes: !5366)
!5366 = !{!5367, !5368}
!5367 = !DILocalVariable(name: "category", arg: 1, scope: !5365, file: !853, line: 35, type: !87)
!5368 = !DILocalVariable(name: "result", scope: !5365, file: !853, line: 37, type: !136)
!5369 = !DILocation(line: 0, scope: !5365)
!5370 = !DILocation(line: 37, column: 24, scope: !5365)
!5371 = !DILocation(line: 62, column: 3, scope: !5365)
!5372 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !853, file: !853, line: 66, type: !5348, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !852, retainedNodes: !5373)
!5373 = !{!5374, !5375, !5376, !5377, !5378}
!5374 = !DILocalVariable(name: "category", arg: 1, scope: !5372, file: !853, line: 66, type: !87)
!5375 = !DILocalVariable(name: "buf", arg: 2, scope: !5372, file: !853, line: 66, type: !130)
!5376 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5372, file: !853, line: 66, type: !133)
!5377 = !DILocalVariable(name: "result", scope: !5372, file: !853, line: 111, type: !136)
!5378 = !DILocalVariable(name: "length", scope: !5379, file: !853, line: 125, type: !133)
!5379 = distinct !DILexicalBlock(scope: !5380, file: !853, line: 124, column: 5)
!5380 = distinct !DILexicalBlock(scope: !5372, file: !853, line: 113, column: 7)
!5381 = !DILocation(line: 0, scope: !5372)
!5382 = !DILocation(line: 0, scope: !5365, inlinedAt: !5383)
!5383 = distinct !DILocation(line: 111, column: 24, scope: !5372)
!5384 = !DILocation(line: 37, column: 24, scope: !5365, inlinedAt: !5383)
!5385 = !DILocation(line: 113, column: 14, scope: !5380)
!5386 = !DILocation(line: 113, column: 7, scope: !5372)
!5387 = !DILocation(line: 116, column: 19, scope: !5388)
!5388 = distinct !DILexicalBlock(scope: !5389, file: !853, line: 116, column: 11)
!5389 = distinct !DILexicalBlock(scope: !5380, file: !853, line: 114, column: 5)
!5390 = !DILocation(line: 116, column: 11, scope: !5389)
!5391 = !DILocation(line: 120, column: 16, scope: !5388)
!5392 = !DILocation(line: 120, column: 9, scope: !5388)
!5393 = !DILocation(line: 125, column: 23, scope: !5379)
!5394 = !DILocation(line: 0, scope: !5379)
!5395 = !DILocation(line: 126, column: 18, scope: !5396)
!5396 = distinct !DILexicalBlock(scope: !5379, file: !853, line: 126, column: 11)
!5397 = !DILocation(line: 126, column: 11, scope: !5379)
!5398 = !DILocation(line: 128, column: 39, scope: !5399)
!5399 = distinct !DILexicalBlock(scope: !5396, file: !853, line: 127, column: 9)
!5400 = !DILocalVariable(name: "__dest", arg: 1, scope: !5401, file: !1283, line: 26, type: !4721)
!5401 = distinct !DISubprogram(name: "memcpy", scope: !1283, file: !1283, line: 26, type: !4719, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !852, retainedNodes: !5402)
!5402 = !{!5400, !5403, !5404}
!5403 = !DILocalVariable(name: "__src", arg: 2, scope: !5401, file: !1283, line: 26, type: !1090)
!5404 = !DILocalVariable(name: "__len", arg: 3, scope: !5401, file: !1283, line: 26, type: !133)
!5405 = !DILocation(line: 0, scope: !5401, inlinedAt: !5406)
!5406 = distinct !DILocation(line: 128, column: 11, scope: !5399)
!5407 = !DILocation(line: 29, column: 10, scope: !5401, inlinedAt: !5406)
!5408 = !DILocation(line: 129, column: 11, scope: !5399)
!5409 = !DILocation(line: 133, column: 23, scope: !5410)
!5410 = distinct !DILexicalBlock(scope: !5411, file: !853, line: 133, column: 15)
!5411 = distinct !DILexicalBlock(scope: !5396, file: !853, line: 132, column: 9)
!5412 = !DILocation(line: 133, column: 15, scope: !5411)
!5413 = !DILocation(line: 138, column: 44, scope: !5414)
!5414 = distinct !DILexicalBlock(scope: !5410, file: !853, line: 134, column: 13)
!5415 = !DILocation(line: 0, scope: !5401, inlinedAt: !5416)
!5416 = distinct !DILocation(line: 138, column: 15, scope: !5414)
!5417 = !DILocation(line: 29, column: 10, scope: !5401, inlinedAt: !5416)
!5418 = !DILocation(line: 139, column: 15, scope: !5414)
!5419 = !DILocation(line: 139, column: 32, scope: !5414)
!5420 = !DILocation(line: 140, column: 13, scope: !5414)
!5421 = !DILocation(line: 0, scope: !5380)
!5422 = !DILocation(line: 145, column: 1, scope: !5372)
