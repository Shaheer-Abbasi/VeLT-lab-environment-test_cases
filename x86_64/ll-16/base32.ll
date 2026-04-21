; ModuleID = 'src/base32.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
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
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !452
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !465
@.str.37 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !457
@.str.1.38 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !459
@.str.2.39 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !461
@.str.3.40 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !463
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !467
@stderr = external local_unnamed_addr global ptr, align 8
@.str.51 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !473
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !505
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !475
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !495
@.str.1.57 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !497
@.str.2.59 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !499
@.str.3.58 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !501
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !503
@.str.4.52 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !507
@.str.5.53 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !509
@.str.6.54 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !514
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !519
@.str.78 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !525
@.str.1.79 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !527
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !529
@.str.82 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !560
@.str.1.83 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !563
@.str.2.84 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !565
@.str.3.85 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !567
@.str.4.86 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !569
@.str.5.87 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !571
@.str.6.88 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !573
@.str.7.89 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !575
@.str.8.90 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !577
@.str.9.91 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !579
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.82, ptr @.str.1.83, ptr @.str.2.84, ptr @.str.3.85, ptr @.str.4.86, ptr @.str.5.87, ptr @.str.6.88, ptr @.str.7.89, ptr @.str.8.90, ptr @.str.9.91, ptr null], align 16, !dbg !581
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !592
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !606
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !642
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !649
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !608
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !651
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !596
@.str.10.94 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !611
@.str.11.92 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !613
@.str.12.95 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !615
@.str.13.93 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !617
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !619
@.str.102 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !655
@.str.1.103 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !658
@.str.2.104 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !660
@.str.3.105 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !662
@.str.4.106 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !664
@.str.5.107 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !666
@.str.6.108 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !671
@.str.7.109 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !676
@.str.8.110 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !678
@.str.9.111 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !680
@.str.10.112 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !685
@.str.11.113 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !687
@.str.12.114 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !692
@.str.13.115 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !694
@.str.14.116 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !699
@.str.15.117 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !704
@.str.16.118 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !709
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.123 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !714
@.str.18.124 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !716
@.str.19.125 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !718
@.str.20.126 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !720
@.str.21.127 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !722
@.str.22.128 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !724
@.str.23.129 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !726
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !731
@exit_failure = dso_local global i32 1, align 4, !dbg !739
@.str.144 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !745
@.str.1.142 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !748
@.str.2.143 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !750
@.str.153 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !752
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !755
@.str.1.158 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !770

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !855 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !859, metadata !DIExpression()), !dbg !860
  %2 = icmp eq i32 %0, 0, !dbg !861
  br i1 %2, label %8, label %3, !dbg !863

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !864, !tbaa !866
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #42, !dbg !864
  %6 = load ptr, ptr @program_name, align 8, !dbg !864, !tbaa !866
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #42, !dbg !864
  br label %41, !dbg !864

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #42, !dbg !870
  %10 = load ptr, ptr @program_name, align 8, !dbg !870, !tbaa !866
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #42, !dbg !870
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #42, !dbg !872
  %13 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %12, i32 noundef 32) #42, !dbg !872
  %14 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.22, i32 noundef 5) #42, !dbg !873
  %15 = load ptr, ptr @stdout, align 8, !dbg !873, !tbaa !866
  %16 = tail call i32 @fputs_unlocked(ptr noundef %14, ptr noundef %15), !dbg !873
  %17 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.23, i32 noundef 5) #42, !dbg !877
  %18 = load ptr, ptr @stdout, align 8, !dbg !877, !tbaa !866
  %19 = tail call i32 @fputs_unlocked(ptr noundef %17, ptr noundef %18), !dbg !877
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #42, !dbg !880
  tail call fastcc void @oputs_(ptr noundef %20), !dbg !880
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #42, !dbg !881
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !881
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #42, !dbg !882
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !882
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #42, !dbg !883
  tail call fastcc void @oputs_(ptr noundef %23), !dbg !883
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #42, !dbg !884
  tail call fastcc void @oputs_(ptr noundef %24), !dbg !884
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #42, !dbg !885
  %26 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %25, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3) #42, !dbg !885
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !886, metadata !DIExpression()), !dbg !903
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !898, metadata !DIExpression()), !dbg !903
  call void @llvm.dbg.value(metadata ptr poison, metadata !898, metadata !DIExpression()), !dbg !903
  tail call void @emit_bug_reporting_address() #42, !dbg !905
  %27 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #42, !dbg !906
  call void @llvm.dbg.value(metadata ptr %27, metadata !901, metadata !DIExpression()), !dbg !903
  %28 = icmp eq ptr %27, null, !dbg !907
  br i1 %28, label %36, label %29, !dbg !909

29:                                               ; preds = %8
  %30 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %27, ptr noundef nonnull dereferenceable(4) @.str.54, i64 noundef 3) #43, !dbg !910
  %31 = icmp eq i32 %30, 0, !dbg !910
  br i1 %31, label %36, label %32, !dbg !911

32:                                               ; preds = %29
  %33 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.55, i32 noundef 5) #42, !dbg !912
  %34 = load ptr, ptr @stdout, align 8, !dbg !912, !tbaa !866
  %35 = tail call i32 @fputs_unlocked(ptr noundef %33, ptr noundef %34), !dbg !912
  br label %36, !dbg !914

36:                                               ; preds = %8, %29, %32
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !898, metadata !DIExpression()), !dbg !903
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !902, metadata !DIExpression()), !dbg !903
  %37 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.56, i32 noundef 5) #42, !dbg !915
  %38 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %37, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.3) #42, !dbg !915
  %39 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.57, i32 noundef 5) #42, !dbg !916
  %40 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %39, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.58) #42, !dbg !916
  br label %41

41:                                               ; preds = %36, %3
  tail call void @exit(i32 noundef %0) #44, !dbg !917
  unreachable, !dbg !917
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !918 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !922 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !927 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !930 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !186 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !190, metadata !DIExpression()), !dbg !934
  call void @llvm.dbg.value(metadata ptr %0, metadata !191, metadata !DIExpression()), !dbg !934
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !935, !tbaa !936
  %3 = icmp eq i32 %2, -1, !dbg !938
  br i1 %3, label %4, label %16, !dbg !939

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.24) #42, !dbg !940
  call void @llvm.dbg.value(metadata ptr %5, metadata !192, metadata !DIExpression()), !dbg !941
  %6 = icmp eq ptr %5, null, !dbg !942
  br i1 %6, label %14, label %7, !dbg !943

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !944, !tbaa !945
  %9 = icmp eq i8 %8, 0, !dbg !944
  br i1 %9, label %14, label %10, !dbg !946

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !947, metadata !DIExpression()), !dbg !954
  call void @llvm.dbg.value(metadata ptr @.str.25, metadata !953, metadata !DIExpression()), !dbg !954
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.25) #43, !dbg !956
  %12 = icmp eq i32 %11, 0, !dbg !957
  %13 = zext i1 %12 to i32, !dbg !946
  br label %14, !dbg !946

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !958, !tbaa !936
  br label %16, !dbg !959

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !960
  %18 = icmp eq i32 %17, 0, !dbg !960
  br i1 %18, label %22, label %19, !dbg !962

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !963, !tbaa !866
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !963
  br label %128, !dbg !965

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !195, metadata !DIExpression()), !dbg !934
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.26) #43, !dbg !966
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !967
  call void @llvm.dbg.value(metadata ptr %24, metadata !197, metadata !DIExpression()), !dbg !934
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #43, !dbg !968
  call void @llvm.dbg.value(metadata ptr %25, metadata !198, metadata !DIExpression()), !dbg !934
  %26 = icmp eq ptr %25, null, !dbg !969
  br i1 %26, label %58, label %27, !dbg !970

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !971
  br i1 %28, label %58, label %29, !dbg !972

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !199, metadata !DIExpression()), !dbg !973
  call void @llvm.dbg.value(metadata i64 0, metadata !203, metadata !DIExpression()), !dbg !973
  %30 = icmp ult ptr %24, %25, !dbg !974
  br i1 %30, label %31, label %52, !dbg !975

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #45, !dbg !934
  %33 = load ptr, ptr %32, align 8, !tbaa !866
  br label %34, !dbg !975

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !199, metadata !DIExpression()), !dbg !973
  call void @llvm.dbg.value(metadata i64 %36, metadata !203, metadata !DIExpression()), !dbg !973
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !976
  call void @llvm.dbg.value(metadata ptr %37, metadata !199, metadata !DIExpression()), !dbg !973
  %38 = load i8, ptr %35, align 1, !dbg !976, !tbaa !945
  %39 = sext i8 %38 to i64, !dbg !976
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !976
  %41 = load i16, ptr %40, align 2, !dbg !976, !tbaa !977
  %42 = freeze i16 %41, !dbg !979
  %43 = lshr i16 %42, 13, !dbg !979
  %44 = and i16 %43, 1, !dbg !979
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !980
  call void @llvm.dbg.value(metadata i64 %46, metadata !203, metadata !DIExpression()), !dbg !973
  %47 = icmp ult ptr %37, %25, !dbg !974
  %48 = icmp ult i64 %46, 2, !dbg !981
  %49 = select i1 %47, i1 %48, i1 false, !dbg !981
  br i1 %49, label %34, label %50, !dbg !975, !llvm.loop !982

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !984
  br i1 %51, label %52, label %54, !dbg !986

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !986

54:                                               ; preds = %50, %52
  %55 = phi i1 [ %53, %52 ], [ %51, %50 ]
  %56 = phi ptr [ %25, %52 ], [ %24, %50 ]
  %57 = zext i1 %55 to i8, !dbg !986
  call void @llvm.dbg.value(metadata i8 %57, metadata !195, metadata !DIExpression()), !dbg !934
  call void @llvm.dbg.value(metadata ptr %56, metadata !198, metadata !DIExpression()), !dbg !934
  br label %58, !dbg !987

58:                                               ; preds = %22, %27, %54
  %59 = phi ptr [ %56, %54 ], [ %24, %27 ], [ %24, %22 ], !dbg !934
  %60 = phi i8 [ %57, %54 ], [ 1, %27 ], [ 0, %22 ], !dbg !934
  call void @llvm.dbg.value(metadata i8 %60, metadata !195, metadata !DIExpression()), !dbg !934
  call void @llvm.dbg.value(metadata ptr %59, metadata !198, metadata !DIExpression()), !dbg !934
  %61 = tail call i64 @strcspn(ptr noundef %59, ptr noundef nonnull @.str.27) #43, !dbg !988
  call void @llvm.dbg.value(metadata i64 %61, metadata !204, metadata !DIExpression()), !dbg !934
  %62 = getelementptr inbounds i8, ptr %59, i64 %61, !dbg !989
  call void @llvm.dbg.value(metadata ptr %62, metadata !205, metadata !DIExpression()), !dbg !934
  br label %63, !dbg !990

63:                                               ; preds = %96, %58
  %64 = phi ptr [ %62, %58 ], [ %97, %96 ], !dbg !934
  %65 = phi i8 [ %60, %58 ], [ %73, %96 ], !dbg !934
  call void @llvm.dbg.value(metadata i8 %65, metadata !195, metadata !DIExpression()), !dbg !934
  call void @llvm.dbg.value(metadata ptr %64, metadata !205, metadata !DIExpression()), !dbg !934
  %66 = load i8, ptr %64, align 1, !dbg !991, !tbaa !945
  switch i8 %66, label %72 [
    i8 0, label %98
    i8 10, label %98
    i8 45, label %67
  ], !dbg !992

67:                                               ; preds = %63
  %68 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !993
  %69 = load i8, ptr %68, align 1, !dbg !996, !tbaa !945
  %70 = icmp eq i8 %69, 45, !dbg !997
  %71 = select i1 %70, i8 0, i8 %65, !dbg !998
  br label %72, !dbg !998

72:                                               ; preds = %67, %63
  %73 = phi i8 [ %65, %63 ], [ %71, %67 ], !dbg !934
  call void @llvm.dbg.value(metadata i8 %73, metadata !195, metadata !DIExpression()), !dbg !934
  %74 = tail call ptr @__ctype_b_loc() #45, !dbg !999
  %75 = load ptr, ptr %74, align 8, !dbg !999, !tbaa !866
  %76 = sext i8 %66 to i64, !dbg !999
  %77 = getelementptr inbounds i16, ptr %75, i64 %76, !dbg !999
  %78 = load i16, ptr %77, align 2, !dbg !999, !tbaa !977
  %79 = and i16 %78, 8192, !dbg !999
  %80 = icmp eq i16 %79, 0, !dbg !999
  br i1 %80, label %96, label %81, !dbg !1001

81:                                               ; preds = %72
  %82 = icmp eq i8 %66, 9, !dbg !1002
  br i1 %82, label %98, label %83, !dbg !1005

83:                                               ; preds = %81
  %84 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !1006
  %85 = load i8, ptr %84, align 1, !dbg !1006, !tbaa !945
  %86 = sext i8 %85 to i64, !dbg !1006
  %87 = getelementptr inbounds i16, ptr %75, i64 %86, !dbg !1006
  %88 = load i16, ptr %87, align 2, !dbg !1006, !tbaa !977
  %89 = and i16 %88, 8192, !dbg !1006
  %90 = icmp eq i16 %89, 0, !dbg !1006
  br i1 %90, label %91, label %98, !dbg !1007

91:                                               ; preds = %83
  %92 = and i8 %73, 1, !dbg !1008
  %93 = icmp ne i8 %92, 0, !dbg !1008
  %94 = icmp eq i8 %85, 45
  %95 = select i1 %93, i1 true, i1 %94, !dbg !1010
  br i1 %95, label %96, label %98, !dbg !1010

96:                                               ; preds = %91, %72
  %97 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !1011
  call void @llvm.dbg.value(metadata ptr %97, metadata !205, metadata !DIExpression()), !dbg !934
  br label %63, !dbg !990, !llvm.loop !1012

98:                                               ; preds = %91, %63, %63, %81, %83
  %99 = ptrtoint ptr %24 to i64, !dbg !1014
  %100 = load ptr, ptr @stdout, align 8, !dbg !1014, !tbaa !866
  %101 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %100), !dbg !1014
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !947, metadata !DIExpression()), !dbg !1015
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !947, metadata !DIExpression()), !dbg !1017
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !947, metadata !DIExpression()), !dbg !1019
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !947, metadata !DIExpression()), !dbg !1021
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !947, metadata !DIExpression()), !dbg !1023
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !947, metadata !DIExpression()), !dbg !1025
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !947, metadata !DIExpression()), !dbg !1027
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !947, metadata !DIExpression()), !dbg !1029
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !947, metadata !DIExpression()), !dbg !1031
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !947, metadata !DIExpression()), !dbg !1033
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !262, metadata !DIExpression()), !dbg !934
  %102 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(7) @.str.41, i64 noundef 6) #43, !dbg !1035
  %103 = icmp eq i32 %102, 0, !dbg !1035
  br i1 %103, label %107, label %104, !dbg !1037

104:                                              ; preds = %98
  %105 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(10) @.str.42, i64 noundef 9) #43, !dbg !1038
  %106 = icmp eq i32 %105, 0, !dbg !1038
  br i1 %106, label %107, label %110, !dbg !1039

107:                                              ; preds = %104, %98
  %108 = trunc i64 %61 to i32, !dbg !1040
  %109 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %108, ptr noundef %59) #42, !dbg !1040
  br label %113, !dbg !1042

110:                                              ; preds = %104
  %111 = trunc i64 %61 to i32, !dbg !1043
  %112 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.3, i32 noundef %111, ptr noundef %59) #42, !dbg !1043
  br label %113

113:                                              ; preds = %110, %107
  %114 = load ptr, ptr @stdout, align 8, !dbg !1045, !tbaa !866
  %115 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.47, ptr noundef %114), !dbg !1045
  %116 = load ptr, ptr @stdout, align 8, !dbg !1046, !tbaa !866
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.48, ptr noundef %116), !dbg !1046
  %118 = ptrtoint ptr %64 to i64, !dbg !1047
  %119 = sub i64 %118, %99, !dbg !1047
  %120 = load ptr, ptr @stdout, align 8, !dbg !1047, !tbaa !866
  %121 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %119, ptr noundef %120), !dbg !1047
  %122 = load ptr, ptr @stdout, align 8, !dbg !1048, !tbaa !866
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.49, ptr noundef %122), !dbg !1048
  %124 = load ptr, ptr @stdout, align 8, !dbg !1049, !tbaa !866
  %125 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.50, ptr noundef %124), !dbg !1049
  %126 = load ptr, ptr @stdout, align 8, !dbg !1050, !tbaa !866
  %127 = tail call i32 @fputs_unlocked(ptr noundef nonnull %64, ptr noundef %126), !dbg !1050
  br label %128, !dbg !1051

128:                                              ; preds = %113, %19
  ret void, !dbg !1051
}

; Function Attrs: nounwind
declare !dbg !1052 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1056 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1060 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1062 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1065 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1068 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1071 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1074 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1080 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1081 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: noreturn nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 !dbg !1087 {
  %3 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1092, metadata !DIExpression()), !dbg !1105
  call void @llvm.dbg.value(metadata ptr %1, metadata !1093, metadata !DIExpression()), !dbg !1105
  call void @llvm.dbg.value(metadata i8 0, metadata !1097, metadata !DIExpression()), !dbg !1105
  call void @llvm.dbg.value(metadata i8 0, metadata !1098, metadata !DIExpression()), !dbg !1105
  call void @llvm.dbg.value(metadata i64 76, metadata !1099, metadata !DIExpression()), !dbg !1105
  %4 = load ptr, ptr %1, align 8, !dbg !1106, !tbaa !866
  tail call void @set_program_name(ptr noundef %4) #42, !dbg !1107
  %5 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.10) #42, !dbg !1108
  %6 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #42, !dbg !1109
  %7 = tail call ptr @textdomain(ptr noundef nonnull @.str.11) #42, !dbg !1110
  %8 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #42, !dbg !1111
  br label %9, !dbg !1112

9:                                                ; preds = %16, %2
  %10 = phi i1 [ true, %2 ], [ false, %16 ]
  %11 = phi i8 [ 0, %2 ], [ %14, %16 ]
  %12 = phi i64 [ 76, %2 ], [ %17, %16 ]
  br label %13, !dbg !1112

13:                                               ; preds = %9, %33
  %14 = phi i8 [ %11, %9 ], [ 1, %33 ]
  %15 = phi i64 [ %12, %9 ], [ %17, %33 ]
  br label %16, !dbg !1112

16:                                               ; preds = %13, %30
  %17 = phi i64 [ %32, %30 ], [ %15, %13 ], !dbg !1113
  call void @llvm.dbg.value(metadata i64 %17, metadata !1099, metadata !DIExpression()), !dbg !1105
  call void @llvm.dbg.value(metadata i8 %14, metadata !1098, metadata !DIExpression()), !dbg !1105
  call void @llvm.dbg.value(metadata i8 poison, metadata !1097, metadata !DIExpression()), !dbg !1105
  %18 = call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.13, ptr noundef nonnull @long_options, ptr noundef null) #42, !dbg !1114
  call void @llvm.dbg.value(metadata i32 %18, metadata !1094, metadata !DIExpression()), !dbg !1105
  switch i32 %18, label %39 [
    i32 -1, label %40
    i32 100, label %9
    i32 119, label %19
    i32 105, label %33
    i32 -130, label %34
    i32 -131, label %35
  ], !dbg !1112, !llvm.loop !1115

19:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #42, !dbg !1117
  %20 = load ptr, ptr @optarg, align 8, !dbg !1118, !tbaa !866
  call void @llvm.dbg.value(metadata ptr %3, metadata !1100, metadata !DIExpression(DW_OP_deref)), !dbg !1119
  %21 = call i32 @xstrtoimax(ptr noundef %20, ptr noundef null, i32 noundef 10, ptr noundef nonnull %3, ptr noundef nonnull @.str.10) #42, !dbg !1120
  call void @llvm.dbg.value(metadata i32 %21, metadata !1103, metadata !DIExpression()), !dbg !1119
  %22 = icmp ugt i32 %21, 1, !dbg !1121
  %23 = load i64, ptr %3, align 8
  call void @llvm.dbg.value(metadata i64 %23, metadata !1100, metadata !DIExpression()), !dbg !1119
  %24 = icmp slt i64 %23, 0
  %25 = select i1 %22, i1 true, i1 %24, !dbg !1123
  br i1 %25, label %26, label %30, !dbg !1123

26:                                               ; preds = %19
  %27 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #42, !dbg !1124
  %28 = load ptr, ptr @optarg, align 8, !dbg !1124, !tbaa !866
  %29 = call ptr @quote(ptr noundef %28) #42, !dbg !1124
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef nonnull @.str.14, ptr noundef %27, ptr noundef %29) #42, !dbg !1124
  unreachable, !dbg !1124

30:                                               ; preds = %19
  %31 = icmp eq i32 %21, 1, !dbg !1125
  %32 = select i1 %31, i64 0, i64 %23, !dbg !1126
  call void @llvm.dbg.value(metadata i64 %32, metadata !1099, metadata !DIExpression()), !dbg !1105
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #42, !dbg !1127
  br label %16, !dbg !1128, !llvm.loop !1115

33:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !1098, metadata !DIExpression()), !dbg !1105
  br label %13, !dbg !1129, !llvm.loop !1115

34:                                               ; preds = %16
  call void @usage(i32 noundef 0) #46, !dbg !1130
  unreachable, !dbg !1130

35:                                               ; preds = %16
  %36 = load ptr, ptr @stdout, align 8, !dbg !1131, !tbaa !866
  %37 = load ptr, ptr @Version, align 8, !dbg !1131, !tbaa !866
  %38 = call ptr @proper_name_lite(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.17) #42, !dbg !1131
  call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %36, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.16, ptr noundef %37, ptr noundef %38, ptr noundef null) #42, !dbg !1131
  call void @exit(i32 noundef 0) #44, !dbg !1131
  unreachable, !dbg !1131

39:                                               ; preds = %16
  call void @usage(i32 noundef 1) #46, !dbg !1132
  unreachable, !dbg !1132

40:                                               ; preds = %16
  %41 = load i32, ptr @optind, align 4, !dbg !1133, !tbaa !936
  %42 = sub nsw i32 %0, %41, !dbg !1135
  %43 = icmp sgt i32 %42, 1, !dbg !1136
  br i1 %43, label %44, label %52, !dbg !1137

44:                                               ; preds = %40
  %45 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.18, i32 noundef 5) #42, !dbg !1138
  %46 = load i32, ptr @optind, align 4, !dbg !1138, !tbaa !936
  %47 = add nsw i32 %46, 1, !dbg !1138
  %48 = sext i32 %47 to i64, !dbg !1138
  %49 = getelementptr inbounds ptr, ptr %1, i64 %48, !dbg !1138
  %50 = load ptr, ptr %49, align 8, !dbg !1138, !tbaa !866
  %51 = call ptr @quote(ptr noundef %50) #42, !dbg !1138
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %45, ptr noundef %51) #42, !dbg !1138
  call void @usage(i32 noundef 1) #46, !dbg !1140
  unreachable, !dbg !1140

52:                                               ; preds = %40
  %53 = icmp slt i32 %41, %0, !dbg !1141
  br i1 %53, label %54, label %58, !dbg !1143

54:                                               ; preds = %52
  %55 = sext i32 %41 to i64, !dbg !1144
  %56 = getelementptr inbounds ptr, ptr %1, i64 %55, !dbg !1144
  %57 = load ptr, ptr %56, align 8, !dbg !1144, !tbaa !866
  call void @llvm.dbg.value(metadata ptr %57, metadata !1096, metadata !DIExpression()), !dbg !1105
  br label %58, !dbg !1145

58:                                               ; preds = %52, %54
  %59 = phi ptr [ %57, %54 ], [ @.str.19, %52 ], !dbg !1146
  call void @llvm.dbg.value(metadata ptr %59, metadata !1096, metadata !DIExpression()), !dbg !1105
  call void @llvm.dbg.value(metadata ptr %59, metadata !947, metadata !DIExpression()), !dbg !1147
  call void @llvm.dbg.value(metadata ptr @.str.19, metadata !953, metadata !DIExpression()), !dbg !1147
  %60 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(2) @.str.19) #43, !dbg !1150
  %61 = icmp eq i32 %60, 0, !dbg !1151
  br i1 %61, label %62, label %64, !dbg !1152

62:                                               ; preds = %58
  %63 = load ptr, ptr @stdin, align 8, !dbg !1153, !tbaa !866
  call void @llvm.dbg.value(metadata ptr %63, metadata !1095, metadata !DIExpression()), !dbg !1105
  br label %71, !dbg !1155

64:                                               ; preds = %58
  %65 = call noalias ptr @rpl_fopen(ptr noundef %59, ptr noundef nonnull @.str.20) #42, !dbg !1156
  call void @llvm.dbg.value(metadata ptr %65, metadata !1095, metadata !DIExpression()), !dbg !1105
  %66 = icmp eq ptr %65, null, !dbg !1158
  br i1 %66, label %67, label %71, !dbg !1160

67:                                               ; preds = %64
  %68 = tail call ptr @__errno_location() #45, !dbg !1161
  %69 = load i32, ptr %68, align 4, !dbg !1161, !tbaa !936
  %70 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %59) #42, !dbg !1161
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %69, ptr noundef nonnull @.str.21, ptr noundef %70) #42, !dbg !1161
  unreachable, !dbg !1161

71:                                               ; preds = %64, %62
  %72 = phi ptr [ %63, %62 ], [ %65, %64 ], !dbg !1162
  call void @llvm.dbg.value(metadata ptr %72, metadata !1095, metadata !DIExpression()), !dbg !1105
  call void @fadvise(ptr noundef %72, i32 noundef 2) #42, !dbg !1163
  %73 = load ptr, ptr @stdout, align 8, !dbg !1164, !tbaa !866
  br i1 %10, label %76, label %74, !dbg !1166

74:                                               ; preds = %71
  %75 = icmp ne i8 %14, 0, !dbg !1167
  call fastcc void @do_decode(ptr noundef %72, ptr noundef %59, ptr noundef %73, i1 noundef zeroext %75) #46, !dbg !1168
  unreachable, !dbg !1168

76:                                               ; preds = %71
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
define internal fastcc void @do_decode(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #0 !dbg !1187 {
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
  %23 = load i8, ptr %22, align 1, !dbg !1245, !tbaa !945
  call void @llvm.dbg.value(metadata i8 %23, metadata !1246, metadata !DIExpression()), !dbg !1251
  %24 = zext i8 %23 to i64, !dbg !1253
  %25 = getelementptr inbounds [256 x i8], ptr @base32_to_int, i64 0, i64 %24, !dbg !1254
  %26 = load i8, ptr %25, align 1, !dbg !1254, !tbaa !945
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
  %50 = load i32, ptr %49, align 4, !dbg !1303, !tbaa !936
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
  %63 = call zeroext i1 @base32_decode_ctx(ptr noundef nonnull %7, ptr noundef nonnull %9, i64 noundef %53, ptr noundef nonnull %10, ptr noundef nonnull %8) #42, !dbg !1320
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
  %83 = load i8, ptr %82, align 1, !dbg !1375, !tbaa !945
  %84 = icmp eq i8 %83, 61, !dbg !1376
  br i1 %84, label %89, label %85, !dbg !1377

85:                                               ; preds = %79
  %86 = icmp ult i32 %76, 9, !dbg !1378
  br i1 %86, label %87, label %126, !dbg !1382

87:                                               ; preds = %85
  call void @llvm.dbg.value(metadata ptr %6, metadata !1339, metadata !DIExpression(DW_OP_deref)), !dbg !1341
  %88 = call zeroext i1 @base32_decode_ctx(ptr noundef nonnull %7, ptr noundef nonnull %5, i64 noundef %77, ptr noundef nonnull %10, ptr noundef nonnull %6) #42, !dbg !1383
  call void @llvm.dbg.value(metadata i1 %88, metadata !1340, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1341
  br label %91, !dbg !1384

89:                                               ; preds = %79, %72
  call void @llvm.dbg.value(metadata ptr %6, metadata !1339, metadata !DIExpression(DW_OP_deref)), !dbg !1341
  %90 = call zeroext i1 @base32_decode_ctx(ptr noundef nonnull %7, ptr noundef nonnull @.str.10, i64 noundef 0, ptr noundef nonnull %10, ptr noundef nonnull %6) #42, !dbg !1385
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
  %122 = load i8, ptr %121, align 1, !dbg !1375, !tbaa !945
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
  %128 = call zeroext i1 @base32_decode_ctx(ptr noundef nonnull %7, ptr noundef nonnull %5, i64 noundef %116, ptr noundef nonnull %10, ptr noundef nonnull %6) #42, !dbg !1383
  call void @llvm.dbg.value(metadata i1 %128, metadata !1340, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1341
  br label %131, !dbg !1384

129:                                              ; preds = %118, %111
  call void @llvm.dbg.value(metadata ptr %6, metadata !1339, metadata !DIExpression(DW_OP_deref)), !dbg !1341
  %130 = call zeroext i1 @base32_decode_ctx(ptr noundef nonnull %7, ptr noundef nonnull @.str.10, i64 noundef 0, ptr noundef nonnull %10, ptr noundef nonnull %6) #42, !dbg !1385
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
  %142 = load i32, ptr %141, align 4, !dbg !1398, !tbaa !936
  call void @llvm.dbg.value(metadata i32 %142, metadata !1401, metadata !DIExpression()), !dbg !1403
  %143 = load ptr, ptr @stdout, align 8, !dbg !1404, !tbaa !866
  %144 = call i32 @fflush_unlocked(ptr noundef %143) #42, !dbg !1404
  %145 = load ptr, ptr @stdout, align 8, !dbg !1405, !tbaa !866
  %146 = call i32 @fpurge(ptr noundef %145) #42, !dbg !1406
  %147 = load ptr, ptr @stdout, align 8, !dbg !1407, !tbaa !866
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
  %33 = load ptr, ptr @stdout, align 8, !dbg !1490, !tbaa !866
  %34 = tail call i64 @fwrite_unlocked(ptr noundef nonnull %6, i64 noundef 1, i64 noundef %31, ptr noundef %33), !dbg !1490
  %35 = icmp ult i64 %34, %31, !dbg !1491
  br i1 %35, label %36, label %91, !dbg !1492

36:                                               ; preds = %32
  %37 = tail call ptr @__errno_location() #45, !dbg !1493
  %38 = load i32, ptr %37, align 4, !dbg !1493, !tbaa !936
  call void @llvm.dbg.value(metadata i32 %38, metadata !1401, metadata !DIExpression()), !dbg !1495
  %39 = load ptr, ptr @stdout, align 8, !dbg !1496, !tbaa !866
  %40 = tail call i32 @fflush_unlocked(ptr noundef %39) #42, !dbg !1496
  %41 = load ptr, ptr @stdout, align 8, !dbg !1497, !tbaa !866
  %42 = tail call i32 @fpurge(ptr noundef %41) #42, !dbg !1498
  %43 = load ptr, ptr @stdout, align 8, !dbg !1499, !tbaa !866
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
  store i8 10, ptr %53, align 1, !dbg !1516, !tbaa !945
  br label %87, !dbg !1520

58:                                               ; preds = %52
  %59 = tail call i32 @__overflow(ptr noundef nonnull %2, i32 noundef 10) #42, !dbg !1516
  %60 = icmp eq i32 %59, -1, !dbg !1521
  br i1 %60, label %61, label %87, !dbg !1520

61:                                               ; preds = %58
  %62 = tail call ptr @__errno_location() #45, !dbg !1522
  %63 = load i32, ptr %62, align 4, !dbg !1522, !tbaa !936
  call void @llvm.dbg.value(metadata i32 %63, metadata !1401, metadata !DIExpression()), !dbg !1524
  %64 = load ptr, ptr @stdout, align 8, !dbg !1525, !tbaa !866
  %65 = tail call i32 @fflush_unlocked(ptr noundef %64) #42, !dbg !1525
  %66 = load ptr, ptr @stdout, align 8, !dbg !1526, !tbaa !866
  %67 = tail call i32 @fpurge(ptr noundef %66) #42, !dbg !1527
  %68 = load ptr, ptr @stdout, align 8, !dbg !1528, !tbaa !866
  tail call void @clearerr_unlocked(ptr noundef %68) #42, !dbg !1528
  %69 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.68, i32 noundef 5) #42, !dbg !1529
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %63, ptr noundef %69) #42, !dbg !1529
  unreachable, !dbg !1529

70:                                               ; preds = %45
  %71 = load ptr, ptr @stdout, align 8, !dbg !1530, !tbaa !866
  %72 = getelementptr inbounds i8, ptr %6, i64 %47, !dbg !1530
  %73 = tail call i64 @fwrite_unlocked(ptr noundef nonnull %72, i64 noundef 1, i64 noundef %50, ptr noundef %71), !dbg !1530
  %74 = icmp ult i64 %73, %50, !dbg !1531
  br i1 %74, label %75, label %84, !dbg !1532

75:                                               ; preds = %70
  %76 = tail call ptr @__errno_location() #45, !dbg !1533
  %77 = load i32, ptr %76, align 4, !dbg !1533, !tbaa !936
  call void @llvm.dbg.value(metadata i32 %77, metadata !1401, metadata !DIExpression()), !dbg !1535
  %78 = load ptr, ptr @stdout, align 8, !dbg !1536, !tbaa !866
  %79 = tail call i32 @fflush_unlocked(ptr noundef %78) #42, !dbg !1536
  %80 = load ptr, ptr @stdout, align 8, !dbg !1537, !tbaa !866
  %81 = tail call i32 @fpurge(ptr noundef %80) #42, !dbg !1538
  %82 = load ptr, ptr @stdout, align 8, !dbg !1539, !tbaa !866
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
  store i8 10, ptr %106, align 1, !dbg !1564, !tbaa !945
  br label %123, !dbg !1565

111:                                              ; preds = %105
  %112 = tail call i32 @__overflow(ptr noundef nonnull %2, i32 noundef 10) #42, !dbg !1564
  %113 = icmp eq i32 %112, -1, !dbg !1566
  br i1 %113, label %114, label %123, !dbg !1565

114:                                              ; preds = %111
  %115 = tail call ptr @__errno_location() #45, !dbg !1567
  %116 = load i32, ptr %115, align 4, !dbg !1567, !tbaa !936
  call void @llvm.dbg.value(metadata i32 %116, metadata !1401, metadata !DIExpression()), !dbg !1569
  %117 = load ptr, ptr @stdout, align 8, !dbg !1570, !tbaa !866
  %118 = tail call i32 @fflush_unlocked(ptr noundef %117) #42, !dbg !1570
  %119 = load ptr, ptr @stdout, align 8, !dbg !1571, !tbaa !866
  %120 = tail call i32 @fpurge(ptr noundef %119) #42, !dbg !1572
  %121 = load ptr, ptr @stdout, align 8, !dbg !1573, !tbaa !866
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
  %129 = load i32, ptr %128, align 4, !dbg !1581, !tbaa !936
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
  call void @llvm.dbg.value(metadata ptr %1, metadata !947, metadata !DIExpression()), !dbg !1601
  call void @llvm.dbg.value(metadata ptr @.str.19, metadata !953, metadata !DIExpression()), !dbg !1601
  %6 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(2) @.str.19) #43, !dbg !1605
  %7 = icmp eq i32 %6, 0, !dbg !1606
  %8 = tail call ptr @__errno_location() #45, !dbg !1607
  %9 = load i32, ptr %8, align 4, !dbg !1607, !tbaa !936
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
define dso_local zeroext i1 @isubase32(i8 noundef zeroext %0) local_unnamed_addr #12 !dbg !1616 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1618, metadata !DIExpression()), !dbg !1619
  %2 = zext i8 %0 to i64, !dbg !1620
  %3 = getelementptr inbounds [256 x i8], ptr @base32_to_int, i64 0, i64 %2, !dbg !1621
  %4 = load i8, ptr %3, align 1, !dbg !1621, !tbaa !945
  %5 = icmp sgt i8 %4, -1, !dbg !1622
  ret i1 %5, !dbg !1623
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @isbase32(i8 noundef signext %0) local_unnamed_addr #12 !dbg !1624 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1628, metadata !DIExpression()), !dbg !1629
  call void @llvm.dbg.value(metadata i8 %0, metadata !1618, metadata !DIExpression()), !dbg !1630
  %2 = zext i8 %0 to i64, !dbg !1632
  %3 = getelementptr inbounds [256 x i8], ptr @base32_to_int, i64 0, i64 %2, !dbg !1633
  %4 = load i8, ptr %3, align 1, !dbg !1633, !tbaa !945
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
  %13 = load i8, ptr %12, align 1, !dbg !1653, !tbaa !945
  %14 = lshr i8 %13, 3
  %15 = zext i8 %14 to i64
  %16 = getelementptr inbounds [32 x i8], ptr @base32_encode.b32str, i64 0, i64 %15, !dbg !1655
  %17 = load i8, ptr %16, align 1, !dbg !1655, !tbaa !945
  %18 = getelementptr inbounds i8, ptr %10, i64 1, !dbg !1656
  call void @llvm.dbg.value(metadata ptr %18, metadata !445, metadata !DIExpression()), !dbg !1649
  store i8 %17, ptr %10, align 1, !dbg !1657, !tbaa !945
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
  %27 = load i8, ptr %26, align 4, !dbg !1665, !tbaa !945
  call void @llvm.dbg.value(metadata ptr %10, metadata !445, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !1649
  store i8 %27, ptr %18, align 1, !dbg !1666, !tbaa !945
  call void @llvm.dbg.value(metadata i64 %9, metadata !446, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !1649
  %28 = icmp eq i64 %9, 2, !dbg !1667
  br i1 %28, label %159, label %39, !dbg !1669

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %12, i64 1, !dbg !1670
  %31 = load i8, ptr %30, align 1, !dbg !1670, !tbaa !945
  %32 = lshr i8 %31, 6
  %33 = zext i8 %32 to i64
  %34 = and i64 %22, 28, !dbg !1664
  %35 = or i64 %34, %33, !dbg !1664
  %36 = getelementptr inbounds [32 x i8], ptr @base32_encode.b32str, i64 0, i64 %35, !dbg !1665
  %37 = load i8, ptr %36, align 1, !dbg !1665, !tbaa !945
  call void @llvm.dbg.value(metadata ptr %10, metadata !445, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !1649
  store i8 %37, ptr %18, align 1, !dbg !1666, !tbaa !945
  call void @llvm.dbg.value(metadata i64 %9, metadata !446, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !1649
  %38 = icmp eq i64 %9, 2, !dbg !1667
  br i1 %38, label %159, label %42, !dbg !1669

39:                                               ; preds = %24
  %40 = getelementptr inbounds i8, ptr %10, i64 2, !dbg !1671
  call void @llvm.dbg.value(metadata ptr %40, metadata !445, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata ptr %10, metadata !445, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !1649
  store i8 61, ptr %40, align 1, !dbg !1672, !tbaa !945
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
  %48 = load i8, ptr %47, align 1, !dbg !1677, !tbaa !945
  %49 = getelementptr inbounds i8, ptr %10, i64 3, !dbg !1678
  call void @llvm.dbg.value(metadata ptr %49, metadata !445, metadata !DIExpression()), !dbg !1649
  store i8 %48, ptr %43, align 1, !dbg !1672, !tbaa !945
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
  %58 = load i8, ptr %57, align 16, !dbg !1683, !tbaa !945
  call void @llvm.dbg.value(metadata i64 %11, metadata !444, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !1649
  call void @llvm.dbg.value(metadata ptr %10, metadata !445, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !1649
  store i8 %58, ptr %49, align 1, !dbg !1684, !tbaa !945
  call void @llvm.dbg.value(metadata i64 %9, metadata !446, metadata !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value)), !dbg !1649
  %59 = icmp eq i64 %9, 4, !dbg !1685
  br i1 %59, label %159, label %91, !dbg !1687

60:                                               ; preds = %51
  %61 = getelementptr inbounds i8, ptr %12, i64 2, !dbg !1688
  %62 = load i8, ptr %61, align 1, !dbg !1688, !tbaa !945
  %63 = lshr i8 %62, 4
  %64 = zext i8 %63 to i64
  %65 = and i64 %53, 16, !dbg !1682
  %66 = or i64 %65, %64, !dbg !1682
  %67 = getelementptr inbounds [32 x i8], ptr @base32_encode.b32str, i64 0, i64 %66, !dbg !1683
  %68 = load i8, ptr %67, align 1, !dbg !1683, !tbaa !945
  call void @llvm.dbg.value(metadata i64 %11, metadata !444, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !1649
  call void @llvm.dbg.value(metadata ptr %10, metadata !445, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !1649
  store i8 %68, ptr %49, align 1, !dbg !1684, !tbaa !945
  call void @llvm.dbg.value(metadata i64 %9, metadata !446, metadata !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value)), !dbg !1649
  %69 = icmp eq i64 %9, 4, !dbg !1685
  br i1 %69, label %159, label %73, !dbg !1687

70:                                               ; preds = %39
  %71 = getelementptr inbounds i8, ptr %10, i64 3, !dbg !1678
  call void @llvm.dbg.value(metadata i64 0, metadata !444, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata ptr %10, metadata !445, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !1649
  store i8 61, ptr %71, align 1, !dbg !1684, !tbaa !945
  call void @llvm.dbg.value(metadata i64 %9, metadata !446, metadata !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value)), !dbg !1649
  %72 = icmp eq i64 %9, 4, !dbg !1685
  br i1 %72, label %159, label %91, !dbg !1687

73:                                               ; preds = %60
  %74 = getelementptr inbounds i8, ptr %12, i64 2, !dbg !1689
  %75 = load i8, ptr %74, align 1, !dbg !1689, !tbaa !945
  %76 = zext i8 %75 to i64, !dbg !1690
  %77 = shl nuw nsw i64 %76, 1, !dbg !1691
  %78 = add nsw i64 %11, -3, !dbg !1692
  call void @llvm.dbg.value(metadata i64 %78, metadata !444, metadata !DIExpression()), !dbg !1649
  %79 = icmp eq i64 %78, 0, !dbg !1692
  br i1 %79, label %85, label %80, !dbg !1692

80:                                               ; preds = %73
  %81 = getelementptr inbounds i8, ptr %12, i64 3, !dbg !1693
  %82 = load i8, ptr %81, align 1, !dbg !1693, !tbaa !945
  %83 = lshr i8 %82, 7
  %84 = zext i8 %83 to i64
  br label %85, !dbg !1692

85:                                               ; preds = %73, %80
  %86 = phi i64 [ %84, %80 ], [ 0, %73 ], !dbg !1692
  %87 = add nuw nsw i64 %86, %77, !dbg !1694
  %88 = and i64 %87, 31, !dbg !1695
  %89 = getelementptr inbounds [32 x i8], ptr @base32_encode.b32str, i64 0, i64 %88, !dbg !1696
  %90 = load i8, ptr %89, align 1, !dbg !1696, !tbaa !945
  br label %91, !dbg !1697

91:                                               ; preds = %55, %70, %85
  %92 = phi i64 [ %78, %85 ], [ 0, %70 ], [ 0, %55 ], !dbg !1698
  %93 = phi i8 [ %90, %85 ], [ 61, %70 ], [ 61, %55 ]
  %94 = getelementptr inbounds i8, ptr %10, i64 4, !dbg !1699
  call void @llvm.dbg.value(metadata i64 %92, metadata !444, metadata !DIExpression()), !dbg !1649
  %95 = getelementptr inbounds i8, ptr %10, i64 5, !dbg !1700
  call void @llvm.dbg.value(metadata ptr %95, metadata !445, metadata !DIExpression()), !dbg !1649
  store i8 %93, ptr %94, align 1, !dbg !1701, !tbaa !945
  call void @llvm.dbg.value(metadata i64 %9, metadata !446, metadata !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value)), !dbg !1649
  %96 = icmp eq i64 %9, 5, !dbg !1702
  br i1 %96, label %159, label %97, !dbg !1704

97:                                               ; preds = %91
  %98 = icmp eq i64 %92, 0, !dbg !1705
  br i1 %98, label %99, label %101, !dbg !1705

99:                                               ; preds = %97
  call void @llvm.dbg.value(metadata ptr %10, metadata !445, metadata !DIExpression(DW_OP_plus_uconst, 6, DW_OP_stack_value)), !dbg !1649
  store i8 61, ptr %95, align 1, !dbg !1706, !tbaa !945
  call void @llvm.dbg.value(metadata i64 %9, metadata !446, metadata !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value)), !dbg !1649
  %100 = icmp eq i64 %9, 6, !dbg !1707
  br i1 %100, label %159, label %131, !dbg !1709

101:                                              ; preds = %97
  %102 = getelementptr inbounds i8, ptr %12, i64 3, !dbg !1710
  %103 = load i8, ptr %102, align 1, !dbg !1710, !tbaa !945
  %104 = lshr i8 %103, 2
  %105 = and i8 %104, 31, !dbg !1711
  %106 = zext i8 %105 to i64
  %107 = getelementptr inbounds [32 x i8], ptr @base32_encode.b32str, i64 0, i64 %106, !dbg !1712
  %108 = load i8, ptr %107, align 1, !dbg !1712, !tbaa !945
  %109 = getelementptr inbounds i8, ptr %10, i64 6, !dbg !1713
  call void @llvm.dbg.value(metadata ptr %109, metadata !445, metadata !DIExpression()), !dbg !1649
  store i8 %108, ptr %95, align 1, !dbg !1706, !tbaa !945
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
  %119 = load i8, ptr %118, align 8, !dbg !1718, !tbaa !945
  call void @llvm.dbg.value(metadata i64 %114, metadata !444, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata ptr %10, metadata !445, metadata !DIExpression(DW_OP_plus_uconst, 7, DW_OP_stack_value)), !dbg !1649
  store i8 %119, ptr %109, align 1, !dbg !1719, !tbaa !945
  call void @llvm.dbg.value(metadata i64 %9, metadata !446, metadata !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value)), !dbg !1649
  %120 = icmp eq i64 %9, 7, !dbg !1720
  br i1 %120, label %159, label %141, !dbg !1722

121:                                              ; preds = %111
  %122 = getelementptr inbounds i8, ptr %12, i64 4, !dbg !1723
  %123 = load i8, ptr %122, align 1, !dbg !1723, !tbaa !945
  %124 = lshr i8 %123, 5
  %125 = zext i8 %124 to i64
  %126 = and i64 %113, 24, !dbg !1717
  %127 = or i64 %126, %125, !dbg !1717
  %128 = getelementptr inbounds [32 x i8], ptr @base32_encode.b32str, i64 0, i64 %127, !dbg !1718
  %129 = load i8, ptr %128, align 1, !dbg !1718, !tbaa !945
  call void @llvm.dbg.value(metadata i64 %114, metadata !444, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata ptr %10, metadata !445, metadata !DIExpression(DW_OP_plus_uconst, 7, DW_OP_stack_value)), !dbg !1649
  store i8 %129, ptr %109, align 1, !dbg !1719, !tbaa !945
  call void @llvm.dbg.value(metadata i64 %9, metadata !446, metadata !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value)), !dbg !1649
  %130 = icmp eq i64 %9, 7, !dbg !1720
  br i1 %130, label %159, label %134, !dbg !1722

131:                                              ; preds = %99
  %132 = getelementptr inbounds i8, ptr %10, i64 6, !dbg !1713
  call void @llvm.dbg.value(metadata i64 0, metadata !444, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata ptr %10, metadata !445, metadata !DIExpression(DW_OP_plus_uconst, 7, DW_OP_stack_value)), !dbg !1649
  store i8 61, ptr %132, align 1, !dbg !1719, !tbaa !945
  call void @llvm.dbg.value(metadata i64 %9, metadata !446, metadata !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value)), !dbg !1649
  %133 = icmp eq i64 %9, 7, !dbg !1720
  br i1 %133, label %159, label %141, !dbg !1722

134:                                              ; preds = %121
  %135 = getelementptr inbounds i8, ptr %12, i64 4, !dbg !1724
  %136 = load i8, ptr %135, align 1, !dbg !1724, !tbaa !945
  %137 = and i8 %136, 31, !dbg !1725
  %138 = zext i8 %137 to i64
  %139 = getelementptr inbounds [32 x i8], ptr @base32_encode.b32str, i64 0, i64 %138, !dbg !1726
  %140 = load i8, ptr %139, align 1, !dbg !1726, !tbaa !945
  br label %141, !dbg !1727

141:                                              ; preds = %116, %131, %134
  %142 = phi i1 [ false, %134 ], [ true, %131 ], [ true, %116 ]
  %143 = phi i64 [ %114, %134 ], [ 0, %131 ], [ 0, %116 ]
  %144 = phi i8 [ %140, %134 ], [ 61, %131 ], [ 61, %116 ]
  %145 = getelementptr inbounds i8, ptr %10, i64 7, !dbg !1728
  call void @llvm.dbg.value(metadata ptr %10, metadata !445, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !1649
  store i8 %144, ptr %145, align 1, !dbg !1729, !tbaa !945
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
  store i8 0, ptr %158, align 1, !dbg !1743, !tbaa !945
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
  %5 = srem i64 %1, 5, !dbg !1757
  %6 = icmp ne i64 %5, 0, !dbg !1758
  %7 = zext i1 %6 to i64
  %8 = add nsw i64 %4, %7, !dbg !1759
  call void @llvm.dbg.value(metadata i64 %8, metadata !1753, metadata !DIExpression()), !dbg !1755
  %9 = icmp slt i64 %8, 0, !dbg !1760
  br i1 %9, label %10, label %12, !dbg !1760

10:                                               ; preds = %3
  %11 = icmp ult i64 %8, -1152921504606846976, !dbg !1760
  br i1 %11, label %17, label %14, !dbg !1760

12:                                               ; preds = %3
  %13 = icmp ugt i64 %8, 1152921504606846975, !dbg !1760
  br i1 %13, label %17, label %14, !dbg !1760

14:                                               ; preds = %12, %10
  call void @llvm.dbg.value(metadata i64 %8, metadata !1754, metadata !DIExpression(DW_OP_constu, 3, DW_OP_shl, DW_OP_stack_value)), !dbg !1755
  %15 = shl nsw i64 %8, 3, !dbg !1760
  call void @llvm.dbg.value(metadata i64 %15, metadata !1754, metadata !DIExpression()), !dbg !1755
  %16 = icmp slt i64 %1, 0
  br i1 %16, label %17, label %18, !dbg !1762

17:                                               ; preds = %10, %12, %14
  store ptr null, ptr %2, align 8, !dbg !1763, !tbaa !866
  br label %23, !dbg !1765

18:                                               ; preds = %14
  %19 = or i64 %15, 1, !dbg !1766
  call void @llvm.dbg.value(metadata i64 %19, metadata !1754, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata i64 %19, metadata !1767, metadata !DIExpression()), !dbg !1773
  %20 = tail call noalias ptr @malloc(i64 noundef %19) #47, !dbg !1775
  store ptr %20, ptr %2, align 8, !dbg !1776, !tbaa !866
  %21 = icmp eq ptr %20, null, !dbg !1777
  br i1 %21, label %23, label %22, !dbg !1779

22:                                               ; preds = %18
  tail call void @base32_encode(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %20, i64 noundef %19), !dbg !1780
  br label %23, !dbg !1781

23:                                               ; preds = %18, %22, %17
  %24 = phi i64 [ 0, %17 ], [ %15, %22 ], [ %19, %18 ], !dbg !1755
  ret i64 %24, !dbg !1782
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !1783 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind uwtable
define dso_local zeroext i1 @base32_decode_ctx(ptr noundef %0, ptr noalias noundef %1, i64 noundef %2, ptr noalias noundef %3, ptr nocapture noundef %4) local_unnamed_addr #15 !dbg !1786 {
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !1790, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata ptr %1, metadata !1791, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i64 %2, metadata !1792, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata ptr %3, metadata !1793, metadata !DIExpression()), !dbg !1806
  store ptr %3, ptr %6, align 8, !tbaa !866
  call void @llvm.dbg.value(metadata ptr %4, metadata !1794, metadata !DIExpression()), !dbg !1806
  %8 = icmp eq ptr %0, null, !dbg !1807
  call void @llvm.dbg.value(metadata i1 %8, metadata !1795, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1806
  call void @llvm.dbg.value(metadata i8 0, metadata !1796, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i32 0, metadata !1797, metadata !DIExpression()), !dbg !1806
  br i1 %8, label %13, label %9, !dbg !1808

9:                                                ; preds = %5
  %10 = load i32, ptr %0, align 4, !dbg !1809, !tbaa !1233
  call void @llvm.dbg.value(metadata i32 %10, metadata !1797, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i64 %2, metadata !1792, metadata !DIExpression()), !dbg !1806
  %11 = icmp eq i64 %2, 0, !dbg !1812
  call void @llvm.dbg.value(metadata i1 %11, metadata !1796, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1806
  %12 = icmp ne i32 %10, 0
  br label %13, !dbg !1813

13:                                               ; preds = %9, %5
  %14 = phi i1 [ %12, %9 ], [ false, %5 ]
  %15 = phi i1 [ %11, %9 ], [ false, %5 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1796, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i32 poison, metadata !1797, metadata !DIExpression()), !dbg !1806
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #42, !dbg !1814
  %16 = load i64, ptr %4, align 8, !dbg !1815, !tbaa !1319
  call void @llvm.dbg.value(metadata i64 %16, metadata !1798, metadata !DIExpression()), !dbg !1806
  store i64 %16, ptr %7, align 8, !dbg !1816, !tbaa !1319
  %17 = or i1 %14, %15
  %18 = getelementptr inbounds %struct.base32_decode_context, ptr %0, i64 0, i32 1
  br label %19, !dbg !1817

19:                                               ; preds = %107, %13
  %20 = phi i64 [ %16, %13 ], [ %110, %107 ], !dbg !1818
  %21 = phi ptr [ %1, %13 ], [ %108, %107 ]
  %22 = phi i64 [ %2, %13 ], [ %109, %107 ]
  call void @llvm.dbg.value(metadata i64 %20, metadata !1798, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i64 %20, metadata !1799, metadata !DIExpression()), !dbg !1819
  br i1 %17, label %32, label %23, !dbg !1820

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i64 %20, metadata !1798, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i64 %20, metadata !1799, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata ptr %21, metadata !1791, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i64 %22, metadata !1792, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata ptr %6, metadata !1793, metadata !DIExpression(DW_OP_deref)), !dbg !1806
  call void @llvm.dbg.value(metadata ptr %7, metadata !1798, metadata !DIExpression(DW_OP_deref)), !dbg !1806
  %24 = call fastcc zeroext i1 @decode_8(ptr noundef %21, i64 noundef %22, ptr noundef nonnull %6, ptr noundef nonnull %7), !dbg !1822
  br i1 %24, label %25, label %32, !dbg !1826

25:                                               ; preds = %23, %25
  %26 = phi i64 [ %29, %25 ], [ %22, %23 ]
  %27 = phi ptr [ %28, %25 ], [ %21, %23 ]
  call void @llvm.dbg.value(metadata i64 %26, metadata !1792, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata ptr %27, metadata !1791, metadata !DIExpression()), !dbg !1806
  %28 = getelementptr inbounds i8, ptr %27, i64 8, !dbg !1827
  call void @llvm.dbg.value(metadata ptr %28, metadata !1791, metadata !DIExpression()), !dbg !1806
  %29 = add nsw i64 %26, -8, !dbg !1828
  call void @llvm.dbg.value(metadata i64 %29, metadata !1792, metadata !DIExpression()), !dbg !1806
  %30 = load i64, ptr %7, align 8, !dbg !1829, !tbaa !1319
  call void @llvm.dbg.value(metadata i64 %30, metadata !1799, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata ptr %6, metadata !1793, metadata !DIExpression(DW_OP_deref)), !dbg !1806
  call void @llvm.dbg.value(metadata ptr %7, metadata !1798, metadata !DIExpression(DW_OP_deref)), !dbg !1806
  %31 = call fastcc zeroext i1 @decode_8(ptr noundef nonnull %28, i64 noundef %29, ptr noundef nonnull %6, ptr noundef nonnull %7), !dbg !1822
  br i1 %31, label %25, label %32, !dbg !1826, !llvm.loop !1830

32:                                               ; preds = %25, %23, %19
  %33 = phi ptr [ %21, %19 ], [ %21, %23 ], [ %28, %25 ]
  %34 = phi i64 [ %22, %19 ], [ %22, %23 ], [ %29, %25 ]
  %35 = phi i64 [ %20, %19 ], [ %20, %23 ], [ %30, %25 ], !dbg !1819
  call void @llvm.dbg.value(metadata i64 %35, metadata !1799, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i64 %34, metadata !1792, metadata !DIExpression()), !dbg !1806
  %36 = icmp ne i64 %34, 0, !dbg !1833
  %37 = or i1 %15, %36, !dbg !1835
  br i1 %37, label %38, label %111, !dbg !1835

38:                                               ; preds = %32
  call void @llvm.dbg.value(metadata i64 %34, metadata !1792, metadata !DIExpression()), !dbg !1806
  br i1 %36, label %39, label %46, !dbg !1836

39:                                               ; preds = %38
  call void @llvm.dbg.value(metadata ptr %33, metadata !1791, metadata !DIExpression()), !dbg !1806
  %40 = load i8, ptr %33, align 1, !dbg !1837, !tbaa !945
  %41 = icmp ne i8 %40, 10, !dbg !1838
  %42 = or i1 %8, %41, !dbg !1839
  br i1 %42, label %46, label %43, !dbg !1839

43:                                               ; preds = %39
  %44 = getelementptr inbounds i8, ptr %33, i64 1, !dbg !1840
  call void @llvm.dbg.value(metadata ptr %44, metadata !1791, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i64 %34, metadata !1792, metadata !DIExpression()), !dbg !1806
  %45 = add nsw i64 %34, -1, !dbg !1842
  call void @llvm.dbg.value(metadata i64 %45, metadata !1792, metadata !DIExpression()), !dbg !1806
  br label %107, !dbg !1843

46:                                               ; preds = %39, %38
  %47 = load i64, ptr %7, align 8, !dbg !1844, !tbaa !1319
  call void @llvm.dbg.value(metadata i64 %47, metadata !1798, metadata !DIExpression()), !dbg !1806
  %48 = sub i64 %47, %35, !dbg !1845
  %49 = load ptr, ptr %6, align 8, !dbg !1846, !tbaa !866
  call void @llvm.dbg.value(metadata ptr %49, metadata !1793, metadata !DIExpression()), !dbg !1806
  %50 = getelementptr inbounds i8, ptr %49, i64 %48, !dbg !1846
  call void @llvm.dbg.value(metadata ptr %50, metadata !1793, metadata !DIExpression()), !dbg !1806
  store ptr %50, ptr %6, align 8, !dbg !1846, !tbaa !866
  call void @llvm.dbg.value(metadata i64 %35, metadata !1798, metadata !DIExpression()), !dbg !1806
  store i64 %35, ptr %7, align 8, !dbg !1847, !tbaa !1319
  call void @llvm.dbg.value(metadata ptr %33, metadata !1791, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i64 %34, metadata !1792, metadata !DIExpression()), !dbg !1806
  %51 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !1848
  call void @llvm.dbg.value(metadata ptr %51, metadata !1801, metadata !DIExpression()), !dbg !1849
  br i1 %8, label %89, label %52, !dbg !1850

52:                                               ; preds = %46
  call void @llvm.dbg.value(metadata ptr %0, metadata !1851, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata ptr undef, metadata !1857, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata ptr %51, metadata !1858, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata ptr undef, metadata !1859, metadata !DIExpression()), !dbg !1867
  %53 = load i32, ptr %0, align 4, !dbg !1870, !tbaa !1233, !noalias !1872
  switch i32 %53, label %62 [
    i32 8, label %54
    i32 0, label %55
  ], !dbg !1875

54:                                               ; preds = %52
  store i32 0, ptr %0, align 4, !dbg !1876, !tbaa !1233, !noalias !1872
  br label %55, !dbg !1877

55:                                               ; preds = %54, %52
  call void @llvm.dbg.value(metadata ptr %33, metadata !1860, metadata !DIExpression()), !dbg !1878
  %56 = icmp sgt i64 %34, 7, !dbg !1879
  br i1 %56, label %57, label %62, !dbg !1881

57:                                               ; preds = %55
  %58 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) %33, i32 noundef 10, i64 noundef 8) #43, !dbg !1882
  %59 = icmp eq ptr %58, null, !dbg !1883
  br i1 %59, label %60, label %65, !dbg !1884

60:                                               ; preds = %57
  %61 = getelementptr inbounds i8, ptr %33, i64 8, !dbg !1885
  call void @llvm.dbg.value(metadata ptr %33, metadata !1805, metadata !DIExpression()), !dbg !1849
  call void @llvm.dbg.value(metadata i64 8, metadata !1792, metadata !DIExpression()), !dbg !1806
  br label %98, !dbg !1887

62:                                               ; preds = %52, %55
  %63 = phi i32 [ 0, %55 ], [ %53, %52 ]
  call void @llvm.dbg.value(metadata ptr %33, metadata !1863, metadata !DIExpression()), !dbg !1889
  %64 = icmp sgt i64 %34, 0, !dbg !1890
  br i1 %64, label %65, label %85, !dbg !1891

65:                                               ; preds = %57, %62
  %66 = phi i32 [ 0, %57 ], [ %63, %62 ]
  br label %67, !dbg !1892

67:                                               ; preds = %65, %75
  %68 = phi i32 [ %66, %65 ], [ %79, %75 ]
  %69 = phi ptr [ %33, %65 ], [ %72, %75 ]
  br label %70, !dbg !1892

70:                                               ; preds = %67, %83
  %71 = phi ptr [ %72, %83 ], [ %69, %67 ]
  call void @llvm.dbg.value(metadata ptr %71, metadata !1863, metadata !DIExpression()), !dbg !1889
  %72 = getelementptr inbounds i8, ptr %71, i64 1, !dbg !1893
  call void @llvm.dbg.value(metadata ptr %72, metadata !1863, metadata !DIExpression()), !dbg !1889
  %73 = load i8, ptr %71, align 1, !dbg !1894, !tbaa !945
  call void @llvm.dbg.value(metadata i8 %73, metadata !1865, metadata !DIExpression()), !dbg !1895
  %74 = icmp eq i8 %73, 10, !dbg !1896
  br i1 %74, label %83, label %75, !dbg !1892

75:                                               ; preds = %70
  %76 = add nsw i32 %68, 1, !dbg !1898
  store i32 %76, ptr %0, align 4, !dbg !1898, !tbaa !1233, !noalias !1872
  %77 = sext i32 %68 to i64, !dbg !1900
  %78 = getelementptr inbounds %struct.base32_decode_context, ptr %0, i64 0, i32 1, i64 %77, !dbg !1900
  store i8 %73, ptr %78, align 1, !dbg !1901, !tbaa !945, !noalias !1872
  %79 = load i32, ptr %0, align 4, !dbg !1902, !tbaa !1233, !noalias !1872
  %80 = icmp ne i32 %79, 8, !dbg !1904
  %81 = icmp ult ptr %72, %51
  %82 = select i1 %80, i1 %81, i1 false, !dbg !1905
  call void @llvm.dbg.value(metadata ptr %72, metadata !1863, metadata !DIExpression()), !dbg !1889
  br i1 %82, label %67, label %85, !dbg !1905

83:                                               ; preds = %70
  call void @llvm.dbg.value(metadata ptr %72, metadata !1863, metadata !DIExpression()), !dbg !1889
  %84 = icmp ult ptr %72, %51, !dbg !1890
  br i1 %84, label %70, label %85, !dbg !1891

85:                                               ; preds = %83, %75, %62
  %86 = phi i32 [ %63, %62 ], [ %68, %83 ], [ %79, %75 ], !dbg !1906
  %87 = phi ptr [ %33, %62 ], [ %72, %75 ], [ %72, %83 ], !dbg !1889
  call void @llvm.dbg.value(metadata ptr %87, metadata !1863, metadata !DIExpression()), !dbg !1889
  %88 = sext i32 %86 to i64, !dbg !1907
  br label %89

89:                                               ; preds = %85, %46
  %90 = phi ptr [ %33, %46 ], [ %87, %85 ]
  %91 = phi i64 [ %34, %46 ], [ %88, %85 ]
  %92 = phi ptr [ %33, %46 ], [ %18, %85 ], !dbg !1908
  call void @llvm.dbg.value(metadata ptr %92, metadata !1805, metadata !DIExpression()), !dbg !1849
  call void @llvm.dbg.value(metadata i64 %91, metadata !1792, metadata !DIExpression()), !dbg !1806
  %93 = icmp eq i64 %91, 0, !dbg !1909
  br i1 %93, label %111, label %94, !dbg !1910

94:                                               ; preds = %89
  %95 = icmp sgt i64 %91, 7, !dbg !1911
  %96 = or i1 %15, %95, !dbg !1887
  %97 = or i1 %8, %96, !dbg !1887
  br i1 %97, label %98, label %111, !dbg !1887

98:                                               ; preds = %60, %94
  %99 = phi ptr [ %61, %60 ], [ %90, %94 ]
  %100 = phi i64 [ 8, %60 ], [ %91, %94 ]
  %101 = phi ptr [ %33, %60 ], [ %92, %94 ]
  call void @llvm.dbg.value(metadata i64 %91, metadata !1792, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata ptr %6, metadata !1793, metadata !DIExpression(DW_OP_deref)), !dbg !1806
  call void @llvm.dbg.value(metadata ptr %7, metadata !1798, metadata !DIExpression(DW_OP_deref)), !dbg !1806
  %102 = call fastcc zeroext i1 @decode_8(ptr noundef %101, i64 noundef %100, ptr noundef nonnull %6, ptr noundef nonnull %7), !dbg !1912
  br i1 %102, label %103, label %111, !dbg !1914

103:                                              ; preds = %98
  call void @llvm.dbg.value(metadata ptr %90, metadata !1791, metadata !DIExpression()), !dbg !1806
  %104 = ptrtoint ptr %51 to i64, !dbg !1915
  %105 = ptrtoint ptr %99 to i64, !dbg !1915
  %106 = sub i64 %104, %105, !dbg !1915
  call void @llvm.dbg.value(metadata i64 %106, metadata !1792, metadata !DIExpression()), !dbg !1806
  br label %107

107:                                              ; preds = %43, %103
  %108 = phi ptr [ %99, %103 ], [ %44, %43 ]
  %109 = phi i64 [ %106, %103 ], [ %45, %43 ]
  %110 = load i64, ptr %7, align 8, !dbg !1818, !tbaa !1319
  br label %19

111:                                              ; preds = %89, %94, %98, %32
  %112 = phi i1 [ true, %89 ], [ true, %94 ], [ false, %98 ], [ true, %32 ]
  %113 = load i64, ptr %7, align 8, !dbg !1916, !tbaa !1319
  call void @llvm.dbg.value(metadata i64 %113, metadata !1798, metadata !DIExpression()), !dbg !1806
  %114 = load i64, ptr %4, align 8, !dbg !1917, !tbaa !1319
  %115 = sub nsw i64 %114, %113, !dbg !1917
  store i64 %115, ptr %4, align 8, !dbg !1917, !tbaa !1319
  call void @llvm.dbg.value(metadata i64 %109, metadata !1792, metadata !DIExpression()), !dbg !1806
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #42, !dbg !1918
  ret i1 %112, !dbg !1919
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc zeroext i1 @decode_8(ptr noalias nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) unnamed_addr #17 !dbg !1920 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1924, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i64 %1, metadata !1925, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata ptr %2, metadata !1926, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata ptr %3, metadata !1927, metadata !DIExpression()), !dbg !1929
  %5 = icmp slt i64 %1, 8, !dbg !1930
  br i1 %5, label %184, label %6, !dbg !1932

6:                                                ; preds = %4
  %7 = load i8, ptr %0, align 1, !dbg !1933, !tbaa !945
  call void @llvm.dbg.value(metadata i8 %7, metadata !1628, metadata !DIExpression()), !dbg !1935
  call void @llvm.dbg.value(metadata i8 %7, metadata !1618, metadata !DIExpression()), !dbg !1937
  %8 = zext i8 %7 to i64, !dbg !1939
  %9 = getelementptr inbounds [256 x i8], ptr @base32_to_int, i64 0, i64 %8, !dbg !1940
  %10 = load i8, ptr %9, align 1, !dbg !1940, !tbaa !945
  %11 = icmp sgt i8 %10, -1, !dbg !1941
  br i1 %11, label %12, label %184, !dbg !1942

12:                                               ; preds = %6
  %13 = getelementptr inbounds i8, ptr %0, i64 1, !dbg !1943
  %14 = load i8, ptr %13, align 1, !dbg !1943, !tbaa !945
  call void @llvm.dbg.value(metadata i8 %14, metadata !1628, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 %14, metadata !1618, metadata !DIExpression()), !dbg !1946
  %15 = zext i8 %14 to i64, !dbg !1948
  %16 = getelementptr inbounds [256 x i8], ptr @base32_to_int, i64 0, i64 %15, !dbg !1949
  %17 = load i8, ptr %16, align 1, !dbg !1949, !tbaa !945
  %18 = icmp sgt i8 %17, -1, !dbg !1950
  br i1 %18, label %19, label %184, !dbg !1951

19:                                               ; preds = %12
  %20 = load ptr, ptr %2, align 8, !dbg !1952, !tbaa !866
  call void @llvm.dbg.value(metadata ptr %20, metadata !1928, metadata !DIExpression()), !dbg !1929
  %21 = load i64, ptr %3, align 8, !dbg !1953, !tbaa !1319
  %22 = icmp eq i64 %21, 0, !dbg !1953
  br i1 %22, label %30, label %23, !dbg !1955

23:                                               ; preds = %19
  %24 = shl i8 %10, 3, !dbg !1956
  %25 = lshr i8 %17, 2, !dbg !1958
  %26 = or i8 %25, %24, !dbg !1959
  %27 = getelementptr inbounds i8, ptr %20, i64 1, !dbg !1960
  call void @llvm.dbg.value(metadata ptr %27, metadata !1928, metadata !DIExpression()), !dbg !1929
  store i8 %26, ptr %20, align 1, !dbg !1961, !tbaa !945
  %28 = load i64, ptr %3, align 8, !dbg !1962, !tbaa !1319
  %29 = add nsw i64 %28, -1, !dbg !1962
  store i64 %29, ptr %3, align 8, !dbg !1962, !tbaa !1319
  br label %30, !dbg !1963

30:                                               ; preds = %23, %19
  %31 = phi i64 [ %29, %23 ], [ 0, %19 ]
  %32 = phi ptr [ %27, %23 ], [ %20, %19 ], !dbg !1929
  call void @llvm.dbg.value(metadata ptr %32, metadata !1928, metadata !DIExpression()), !dbg !1929
  %33 = getelementptr inbounds i8, ptr %0, i64 2, !dbg !1964
  %34 = load i8, ptr %33, align 1, !dbg !1964, !tbaa !945
  %35 = icmp eq i8 %34, 61, !dbg !1966
  br i1 %35, label %36, label %59, !dbg !1967

36:                                               ; preds = %30
  %37 = getelementptr inbounds i8, ptr %0, i64 3, !dbg !1968
  %38 = load i8, ptr %37, align 1, !dbg !1968, !tbaa !945
  %39 = icmp eq i8 %38, 61, !dbg !1971
  br i1 %39, label %40, label %181, !dbg !1972

40:                                               ; preds = %36
  %41 = getelementptr inbounds i8, ptr %0, i64 4, !dbg !1973
  %42 = load i8, ptr %41, align 1, !dbg !1973, !tbaa !945
  %43 = icmp eq i8 %42, 61, !dbg !1974
  br i1 %43, label %44, label %181, !dbg !1975

44:                                               ; preds = %40
  %45 = getelementptr inbounds i8, ptr %0, i64 5, !dbg !1976
  %46 = load i8, ptr %45, align 1, !dbg !1976, !tbaa !945
  %47 = icmp eq i8 %46, 61, !dbg !1977
  br i1 %47, label %48, label %181, !dbg !1978

48:                                               ; preds = %44
  %49 = getelementptr inbounds i8, ptr %0, i64 6, !dbg !1979
  %50 = load i8, ptr %49, align 1, !dbg !1979, !tbaa !945
  %51 = icmp eq i8 %50, 61, !dbg !1980
  br i1 %51, label %52, label %181, !dbg !1981

52:                                               ; preds = %48
  %53 = getelementptr inbounds i8, ptr %0, i64 7, !dbg !1982
  %54 = load i8, ptr %53, align 1, !dbg !1982, !tbaa !945
  %55 = icmp eq i8 %54, 61, !dbg !1983
  %56 = and i8 %17, 3
  %57 = icmp eq i8 %56, 0
  %58 = select i1 %55, i1 %57, i1 false, !dbg !1984
  br i1 %58, label %179, label %181, !dbg !1984

59:                                               ; preds = %30
  call void @llvm.dbg.value(metadata i8 %34, metadata !1628, metadata !DIExpression()), !dbg !1985
  call void @llvm.dbg.value(metadata i8 %34, metadata !1618, metadata !DIExpression()), !dbg !1989
  %60 = zext i8 %34 to i64, !dbg !1991
  %61 = getelementptr inbounds [256 x i8], ptr @base32_to_int, i64 0, i64 %60, !dbg !1992
  %62 = load i8, ptr %61, align 1, !dbg !1992, !tbaa !945
  %63 = icmp sgt i8 %62, -1, !dbg !1993
  br i1 %63, label %64, label %181, !dbg !1994

64:                                               ; preds = %59
  %65 = getelementptr inbounds i8, ptr %0, i64 3, !dbg !1995
  %66 = load i8, ptr %65, align 1, !dbg !1995, !tbaa !945
  call void @llvm.dbg.value(metadata i8 %66, metadata !1628, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i8 %66, metadata !1618, metadata !DIExpression()), !dbg !1998
  %67 = zext i8 %66 to i64, !dbg !2000
  %68 = getelementptr inbounds [256 x i8], ptr @base32_to_int, i64 0, i64 %67, !dbg !2001
  %69 = load i8, ptr %68, align 1, !dbg !2001, !tbaa !945
  %70 = icmp sgt i8 %69, -1, !dbg !2002
  br i1 %70, label %71, label %181, !dbg !2003

71:                                               ; preds = %64
  %72 = icmp eq i64 %31, 0, !dbg !2004
  br i1 %72, label %82, label %73, !dbg !2006

73:                                               ; preds = %71
  %74 = shl i8 %17, 6, !dbg !2007
  %75 = shl nuw i8 %62, 1, !dbg !2009
  %76 = or i8 %75, %74, !dbg !2010
  %77 = lshr i8 %69, 4, !dbg !2011
  %78 = or i8 %76, %77, !dbg !2012
  %79 = getelementptr inbounds i8, ptr %32, i64 1, !dbg !2013
  call void @llvm.dbg.value(metadata ptr %79, metadata !1928, metadata !DIExpression()), !dbg !1929
  store i8 %78, ptr %32, align 1, !dbg !2014, !tbaa !945
  %80 = load i64, ptr %3, align 8, !dbg !2015, !tbaa !1319
  %81 = add nsw i64 %80, -1, !dbg !2015
  store i64 %81, ptr %3, align 8, !dbg !2015, !tbaa !1319
  br label %82, !dbg !2016

82:                                               ; preds = %73, %71
  %83 = phi i64 [ %81, %73 ], [ 0, %71 ]
  %84 = phi ptr [ %79, %73 ], [ %32, %71 ], !dbg !1929
  call void @llvm.dbg.value(metadata ptr %84, metadata !1928, metadata !DIExpression()), !dbg !1929
  %85 = getelementptr inbounds i8, ptr %0, i64 4, !dbg !2017
  %86 = load i8, ptr %85, align 1, !dbg !2017, !tbaa !945
  %87 = icmp eq i8 %86, 61, !dbg !2019
  br i1 %87, label %88, label %103, !dbg !2020

88:                                               ; preds = %82
  %89 = getelementptr inbounds i8, ptr %0, i64 5, !dbg !2021
  %90 = load i8, ptr %89, align 1, !dbg !2021, !tbaa !945
  %91 = icmp eq i8 %90, 61, !dbg !2024
  br i1 %91, label %92, label %181, !dbg !2025

92:                                               ; preds = %88
  %93 = getelementptr inbounds i8, ptr %0, i64 6, !dbg !2026
  %94 = load i8, ptr %93, align 1, !dbg !2026, !tbaa !945
  %95 = icmp eq i8 %94, 61, !dbg !2027
  br i1 %95, label %96, label %181, !dbg !2028

96:                                               ; preds = %92
  %97 = getelementptr inbounds i8, ptr %0, i64 7, !dbg !2029
  %98 = load i8, ptr %97, align 1, !dbg !2029, !tbaa !945
  %99 = icmp eq i8 %98, 61, !dbg !2030
  %100 = and i8 %66, -17
  %101 = icmp eq i8 %100, 65
  %102 = select i1 %99, i1 %101, i1 false, !dbg !2031
  br i1 %102, label %179, label %181, !dbg !2031

103:                                              ; preds = %82
  call void @llvm.dbg.value(metadata i8 %86, metadata !1628, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i8 %86, metadata !1618, metadata !DIExpression()), !dbg !2036
  %104 = zext i8 %86 to i64, !dbg !2038
  %105 = getelementptr inbounds [256 x i8], ptr @base32_to_int, i64 0, i64 %104, !dbg !2039
  %106 = load i8, ptr %105, align 1, !dbg !2039, !tbaa !945
  %107 = icmp sgt i8 %106, -1, !dbg !2040
  br i1 %107, label %108, label %181, !dbg !2041

108:                                              ; preds = %103
  %109 = icmp eq i64 %83, 0, !dbg !2042
  br i1 %109, label %117, label %110, !dbg !2044

110:                                              ; preds = %108
  %111 = shl i8 %69, 4, !dbg !2045
  %112 = lshr i8 %106, 1, !dbg !2047
  %113 = or i8 %112, %111, !dbg !2048
  %114 = getelementptr inbounds i8, ptr %84, i64 1, !dbg !2049
  call void @llvm.dbg.value(metadata ptr %114, metadata !1928, metadata !DIExpression()), !dbg !1929
  store i8 %113, ptr %84, align 1, !dbg !2050, !tbaa !945
  %115 = load i64, ptr %3, align 8, !dbg !2051, !tbaa !1319
  %116 = add nsw i64 %115, -1, !dbg !2051
  store i64 %116, ptr %3, align 8, !dbg !2051, !tbaa !1319
  br label %117, !dbg !2052

117:                                              ; preds = %110, %108
  %118 = phi i64 [ %116, %110 ], [ 0, %108 ]
  %119 = phi ptr [ %114, %110 ], [ %84, %108 ], !dbg !2053
  call void @llvm.dbg.value(metadata ptr %119, metadata !1928, metadata !DIExpression()), !dbg !1929
  %120 = getelementptr inbounds i8, ptr %0, i64 5, !dbg !2054
  %121 = load i8, ptr %120, align 1, !dbg !2054, !tbaa !945
  %122 = icmp eq i8 %121, 61, !dbg !2056
  br i1 %122, label %123, label %134, !dbg !2057

123:                                              ; preds = %117
  %124 = getelementptr inbounds i8, ptr %0, i64 6, !dbg !2058
  %125 = load i8, ptr %124, align 1, !dbg !2058, !tbaa !945
  %126 = icmp eq i8 %125, 61, !dbg !2061
  br i1 %126, label %127, label %181, !dbg !2062

127:                                              ; preds = %123
  %128 = getelementptr inbounds i8, ptr %0, i64 7, !dbg !2063
  %129 = load i8, ptr %128, align 1, !dbg !2063, !tbaa !945
  %130 = icmp eq i8 %129, 61, !dbg !2064
  %131 = and i8 %106, 1
  %132 = icmp eq i8 %131, 0
  %133 = select i1 %130, i1 %132, i1 false, !dbg !2065
  br i1 %133, label %179, label %181, !dbg !2065

134:                                              ; preds = %117
  call void @llvm.dbg.value(metadata i8 %121, metadata !1628, metadata !DIExpression()), !dbg !2066
  call void @llvm.dbg.value(metadata i8 %121, metadata !1618, metadata !DIExpression()), !dbg !2070
  %135 = zext i8 %121 to i64, !dbg !2072
  %136 = getelementptr inbounds [256 x i8], ptr @base32_to_int, i64 0, i64 %135, !dbg !2073
  %137 = load i8, ptr %136, align 1, !dbg !2073, !tbaa !945
  %138 = icmp sgt i8 %137, -1, !dbg !2074
  br i1 %138, label %139, label %181, !dbg !2075

139:                                              ; preds = %134
  %140 = getelementptr inbounds i8, ptr %0, i64 6, !dbg !2076
  %141 = load i8, ptr %140, align 1, !dbg !2076, !tbaa !945
  call void @llvm.dbg.value(metadata i8 %141, metadata !1628, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i8 %141, metadata !1618, metadata !DIExpression()), !dbg !2079
  %142 = zext i8 %141 to i64, !dbg !2081
  %143 = getelementptr inbounds [256 x i8], ptr @base32_to_int, i64 0, i64 %142, !dbg !2082
  %144 = load i8, ptr %143, align 1, !dbg !2082, !tbaa !945
  %145 = icmp sgt i8 %144, -1, !dbg !2083
  br i1 %145, label %146, label %181, !dbg !2084

146:                                              ; preds = %139
  %147 = icmp eq i64 %118, 0, !dbg !2085
  br i1 %147, label %157, label %148, !dbg !2087

148:                                              ; preds = %146
  %149 = shl i8 %106, 7, !dbg !2088
  %150 = shl i8 %137, 2, !dbg !2090
  %151 = or i8 %150, %149, !dbg !2091
  %152 = lshr i8 %144, 3, !dbg !2092
  %153 = or i8 %151, %152, !dbg !2093
  %154 = getelementptr inbounds i8, ptr %119, i64 1, !dbg !2094
  call void @llvm.dbg.value(metadata ptr %154, metadata !1928, metadata !DIExpression()), !dbg !1929
  store i8 %153, ptr %119, align 1, !dbg !2095, !tbaa !945
  %155 = load i64, ptr %3, align 8, !dbg !2096, !tbaa !1319
  %156 = add nsw i64 %155, -1, !dbg !2096
  store i64 %156, ptr %3, align 8, !dbg !2096, !tbaa !1319
  br label %157, !dbg !2097

157:                                              ; preds = %148, %146
  %158 = phi i64 [ %156, %148 ], [ 0, %146 ]
  %159 = phi ptr [ %154, %148 ], [ %119, %146 ], !dbg !2098
  call void @llvm.dbg.value(metadata ptr %159, metadata !1928, metadata !DIExpression()), !dbg !1929
  %160 = getelementptr inbounds i8, ptr %0, i64 7, !dbg !2099
  %161 = load i8, ptr %160, align 1, !dbg !2099, !tbaa !945
  %162 = icmp eq i8 %161, 61, !dbg !2101
  br i1 %162, label %176, label %163, !dbg !2102

163:                                              ; preds = %157
  call void @llvm.dbg.value(metadata i8 %161, metadata !1628, metadata !DIExpression()), !dbg !2103
  call void @llvm.dbg.value(metadata i8 %161, metadata !1618, metadata !DIExpression()), !dbg !2107
  %164 = zext i8 %161 to i64, !dbg !2109
  %165 = getelementptr inbounds [256 x i8], ptr @base32_to_int, i64 0, i64 %164, !dbg !2110
  %166 = load i8, ptr %165, align 1, !dbg !2110, !tbaa !945
  %167 = icmp sgt i8 %166, -1, !dbg !2111
  br i1 %167, label %168, label %181, !dbg !2112

168:                                              ; preds = %163
  %169 = icmp eq i64 %158, 0, !dbg !2113
  br i1 %169, label %179, label %170, !dbg !2115

170:                                              ; preds = %168
  %171 = shl i8 %144, 5, !dbg !2116
  %172 = or i8 %166, %171, !dbg !2118
  %173 = getelementptr inbounds i8, ptr %159, i64 1, !dbg !2119
  call void @llvm.dbg.value(metadata ptr %173, metadata !1928, metadata !DIExpression()), !dbg !1929
  store i8 %172, ptr %159, align 1, !dbg !2120, !tbaa !945
  %174 = load i64, ptr %3, align 8, !dbg !2121, !tbaa !1319
  %175 = add nsw i64 %174, -1, !dbg !2121
  store i64 %175, ptr %3, align 8, !dbg !2121, !tbaa !1319
  br label %179, !dbg !2122

176:                                              ; preds = %157
  %177 = and i8 %144, 7, !dbg !2123
  %178 = icmp eq i8 %177, 0, !dbg !2123
  br i1 %178, label %179, label %181, !dbg !2126

179:                                              ; preds = %127, %96, %52, %170, %168, %176
  %180 = phi ptr [ %173, %170 ], [ %159, %168 ], [ %159, %176 ], [ %32, %52 ], [ %84, %96 ], [ %119, %127 ], !dbg !1929
  call void @llvm.dbg.value(metadata ptr %180, metadata !1928, metadata !DIExpression()), !dbg !1929
  br label %181, !dbg !2127

181:                                              ; preds = %176, %163, %139, %134, %127, %123, %103, %96, %92, %88, %64, %59, %52, %48, %44, %40, %36, %179
  %182 = phi ptr [ %180, %179 ], [ %32, %36 ], [ %32, %40 ], [ %32, %44 ], [ %32, %48 ], [ %32, %52 ], [ %32, %59 ], [ %32, %64 ], [ %84, %88 ], [ %84, %92 ], [ %84, %96 ], [ %84, %103 ], [ %119, %123 ], [ %119, %127 ], [ %119, %134 ], [ %119, %139 ], [ %159, %163 ], [ %159, %176 ]
  %183 = phi i1 [ true, %179 ], [ false, %36 ], [ false, %40 ], [ false, %44 ], [ false, %48 ], [ false, %52 ], [ false, %59 ], [ false, %64 ], [ false, %88 ], [ false, %92 ], [ false, %96 ], [ false, %103 ], [ false, %123 ], [ false, %127 ], [ false, %134 ], [ false, %139 ], [ false, %163 ], [ false, %176 ]
  store ptr %182, ptr %2, align 8, !dbg !1929, !tbaa !866
  br label %184, !dbg !2128

184:                                              ; preds = %181, %6, %12, %4
  %185 = phi i1 [ false, %4 ], [ false, %12 ], [ false, %6 ], [ %183, %181 ], !dbg !1929
  ret i1 %185, !dbg !2128
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2129 ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @base32_decode_alloc_ctx(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nocapture noundef %3, ptr noundef writeonly %4) local_unnamed_addr #18 !dbg !2132 {
  %6 = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2136, metadata !DIExpression()), !dbg !2142
  call void @llvm.dbg.value(metadata ptr %1, metadata !2137, metadata !DIExpression()), !dbg !2142
  call void @llvm.dbg.value(metadata i64 %2, metadata !2138, metadata !DIExpression()), !dbg !2142
  call void @llvm.dbg.value(metadata ptr %3, metadata !2139, metadata !DIExpression()), !dbg !2142
  call void @llvm.dbg.value(metadata ptr %4, metadata !2140, metadata !DIExpression()), !dbg !2142
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #42, !dbg !2143
  %7 = ashr i64 %2, 3, !dbg !2144
  %8 = mul nsw i64 %7, 5, !dbg !2145
  %9 = add nsw i64 %8, 5, !dbg !2145
  call void @llvm.dbg.value(metadata i64 %9, metadata !2141, metadata !DIExpression()), !dbg !2142
  store i64 %9, ptr %6, align 8, !dbg !2146, !tbaa !1319
  call void @llvm.dbg.value(metadata i64 %9, metadata !1767, metadata !DIExpression()), !dbg !2147
  %10 = tail call noalias ptr @malloc(i64 noundef %9) #47, !dbg !2149
  store ptr %10, ptr %3, align 8, !dbg !2150, !tbaa !866
  %11 = icmp eq ptr %10, null, !dbg !2151
  br i1 %11, label %20, label %12, !dbg !2153

12:                                               ; preds = %5
  call void @llvm.dbg.value(metadata ptr %6, metadata !2141, metadata !DIExpression(DW_OP_deref)), !dbg !2142
  %13 = call zeroext i1 @base32_decode_ctx(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %10, ptr noundef nonnull %6), !dbg !2154
  br i1 %13, label %16, label %14, !dbg !2156

14:                                               ; preds = %12
  %15 = load ptr, ptr %3, align 8, !dbg !2157, !tbaa !866
  tail call void @free(ptr noundef %15) #42, !dbg !2159
  store ptr null, ptr %3, align 8, !dbg !2160, !tbaa !866
  br label %20, !dbg !2161

16:                                               ; preds = %12
  %17 = icmp eq ptr %4, null, !dbg !2162
  br i1 %17, label %20, label %18, !dbg !2164

18:                                               ; preds = %16
  %19 = load i64, ptr %6, align 8, !dbg !2165, !tbaa !1319
  call void @llvm.dbg.value(metadata i64 %19, metadata !2141, metadata !DIExpression()), !dbg !2142
  store i64 %19, ptr %4, align 8, !dbg !2166, !tbaa !1319
  br label %20, !dbg !2167

20:                                               ; preds = %16, %18, %5, %14
  %21 = phi i1 [ false, %14 ], [ true, %5 ], [ true, %18 ], [ true, %16 ], !dbg !2142
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #42, !dbg !2168
  ret i1 %21, !dbg !2168
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2169 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #20 !dbg !2172 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2174, metadata !DIExpression()), !dbg !2175
  store ptr %0, ptr @file_name, align 8, !dbg !2176, !tbaa !866
  ret void, !dbg !2177
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #20 !dbg !2178 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !2182, metadata !DIExpression()), !dbg !2183
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !2184, !tbaa !2185
  ret void, !dbg !2187
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #18 !dbg !2188 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !2193, !tbaa !866
  %2 = tail call i32 @close_stream(ptr noundef %1) #42, !dbg !2194
  %3 = icmp eq i32 %2, 0, !dbg !2195
  br i1 %3, label %22, label %4, !dbg !2196

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !2197, !tbaa !2185, !range !2198, !noundef !875
  %6 = icmp eq i8 %5, 0, !dbg !2197
  br i1 %6, label %11, label %7, !dbg !2199

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #45, !dbg !2200
  %9 = load i32, ptr %8, align 4, !dbg !2200, !tbaa !936
  %10 = icmp eq i32 %9, 32, !dbg !2201
  br i1 %10, label %22, label %11, !dbg !2202

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.1.38, i32 noundef 5) #42, !dbg !2203
  call void @llvm.dbg.value(metadata ptr %12, metadata !2190, metadata !DIExpression()), !dbg !2204
  %13 = load ptr, ptr @file_name, align 8, !dbg !2205, !tbaa !866
  %14 = icmp eq ptr %13, null, !dbg !2205
  %15 = tail call ptr @__errno_location() #45, !dbg !2207
  %16 = load i32, ptr %15, align 4, !dbg !2207, !tbaa !936
  br i1 %14, label %19, label %17, !dbg !2208

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #42, !dbg !2209
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.39, ptr noundef %18, ptr noundef %12) #42, !dbg !2209
  br label %20, !dbg !2209

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.40, ptr noundef %12) #42, !dbg !2210
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !2211, !tbaa !936
  tail call void @_exit(i32 noundef %21) #44, !dbg !2212
  unreachable, !dbg !2212

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !2213, !tbaa !866
  %24 = tail call i32 @close_stream(ptr noundef %23) #42, !dbg !2215
  %25 = icmp eq i32 %24, 0, !dbg !2216
  br i1 %25, label %28, label %26, !dbg !2217

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !2218, !tbaa !936
  tail call void @_exit(i32 noundef %27) #44, !dbg !2219
  unreachable, !dbg !2219

28:                                               ; preds = %22
  ret void, !dbg !2220
}

; Function Attrs: noreturn
declare !dbg !2221 void @_exit(i32 noundef) local_unnamed_addr #21

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #22 !dbg !2223 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2227, metadata !DIExpression()), !dbg !2231
  call void @llvm.dbg.value(metadata i32 %1, metadata !2228, metadata !DIExpression()), !dbg !2231
  call void @llvm.dbg.value(metadata ptr %2, metadata !2229, metadata !DIExpression()), !dbg !2231
  call void @llvm.dbg.value(metadata ptr %3, metadata !2230, metadata !DIExpression()), !dbg !2231
  tail call fastcc void @flush_stdout(), !dbg !2232
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !2233, !tbaa !866
  %6 = icmp eq ptr %5, null, !dbg !2233
  br i1 %6, label %8, label %7, !dbg !2235

7:                                                ; preds = %4
  tail call void %5() #42, !dbg !2236
  br label %12, !dbg !2236

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !2237, !tbaa !866
  %10 = tail call ptr @getprogname() #43, !dbg !2237
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.51, ptr noundef %10) #42, !dbg !2237
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !2239
  ret void, !dbg !2240
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #18 !dbg !2241 {
  call void @llvm.dbg.value(metadata i32 1, metadata !2243, metadata !DIExpression()), !dbg !2244
  call void @llvm.dbg.value(metadata i32 1, metadata !2245, metadata !DIExpression()), !dbg !2248
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #42, !dbg !2251
  %2 = icmp slt i32 %1, 0, !dbg !2252
  br i1 %2, label %6, label %3, !dbg !2253

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !2254, !tbaa !866
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #42, !dbg !2254
  br label %6, !dbg !2254

6:                                                ; preds = %3, %0
  ret void, !dbg !2255
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #18 !dbg !2256 {
  %5 = alloca [1024 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !2258, metadata !DIExpression()), !dbg !2262
  call void @llvm.dbg.value(metadata i32 %1, metadata !2259, metadata !DIExpression()), !dbg !2262
  call void @llvm.dbg.value(metadata ptr %2, metadata !2260, metadata !DIExpression()), !dbg !2262
  call void @llvm.dbg.value(metadata ptr %3, metadata !2261, metadata !DIExpression()), !dbg !2262
  %6 = load ptr, ptr @stderr, align 8, !dbg !2263, !tbaa !866
  call void @llvm.dbg.value(metadata ptr %6, metadata !2264, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata ptr %2, metadata !2304, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata ptr %3, metadata !2305, metadata !DIExpression()), !dbg !2306
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #42, !dbg !2308
  %8 = load i32, ptr @error_message_count, align 4, !dbg !2309, !tbaa !936
  %9 = add i32 %8, 1, !dbg !2309
  store i32 %9, ptr @error_message_count, align 4, !dbg !2309, !tbaa !936
  %10 = icmp eq i32 %1, 0, !dbg !2310
  br i1 %10, label %20, label %11, !dbg !2312

11:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !2313, metadata !DIExpression()), !dbg !2321
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #42, !dbg !2323
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2317, metadata !DIExpression()), !dbg !2324
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #42, !dbg !2325
  call void @llvm.dbg.value(metadata ptr %12, metadata !2316, metadata !DIExpression()), !dbg !2321
  %13 = icmp eq ptr %12, null, !dbg !2326
  br i1 %13, label %14, label %16, !dbg !2328

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.52, ptr noundef nonnull @.str.5.53, i32 noundef 5) #42, !dbg !2329
  call void @llvm.dbg.value(metadata ptr %15, metadata !2316, metadata !DIExpression()), !dbg !2321
  br label %16, !dbg !2330

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !2321
  call void @llvm.dbg.value(metadata ptr %17, metadata !2316, metadata !DIExpression()), !dbg !2321
  %18 = load ptr, ptr @stderr, align 8, !dbg !2331, !tbaa !866
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.54, ptr noundef %17) #42, !dbg !2331
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #42, !dbg !2332
  br label %20, !dbg !2333

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !2334, !tbaa !866
  call void @llvm.dbg.value(metadata i32 10, metadata !2335, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata ptr %21, metadata !2340, metadata !DIExpression()), !dbg !2341
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !2343
  %23 = load ptr, ptr %22, align 8, !dbg !2343, !tbaa !1517
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !2343
  %25 = load ptr, ptr %24, align 8, !dbg !2343, !tbaa !1518
  %26 = icmp ult ptr %23, %25, !dbg !2343
  br i1 %26, label %29, label %27, !dbg !2343, !prof !1519

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #42, !dbg !2343
  br label %31, !dbg !2343

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !2343
  store ptr %30, ptr %22, align 8, !dbg !2343, !tbaa !1517
  store i8 10, ptr %23, align 1, !dbg !2343, !tbaa !945
  br label %31, !dbg !2343

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !2344, !tbaa !866
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #42, !dbg !2344
  %34 = icmp eq i32 %0, 0, !dbg !2345
  br i1 %34, label %36, label %35, !dbg !2347

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #44, !dbg !2348
  unreachable, !dbg !2348

36:                                               ; preds = %31
  ret void, !dbg !2349
}

declare !dbg !2350 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !2353 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !2356 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #18 !dbg !2360 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !2364, metadata !DIExpression()), !dbg !2373
  call void @llvm.dbg.value(metadata i32 %1, metadata !2365, metadata !DIExpression()), !dbg !2373
  call void @llvm.dbg.value(metadata ptr %2, metadata !2366, metadata !DIExpression()), !dbg !2373
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #42, !dbg !2374
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2367, metadata !DIExpression()), !dbg !2375
  call void @llvm.va_start(ptr nonnull %4), !dbg !2376
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #48, !dbg !2377
  call void @llvm.va_end(ptr nonnull %4), !dbg !2378
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #42, !dbg !2379
  ret void, !dbg !2379
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #23

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #22 !dbg !477 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !489, metadata !DIExpression()), !dbg !2380
  call void @llvm.dbg.value(metadata i32 %1, metadata !490, metadata !DIExpression()), !dbg !2380
  call void @llvm.dbg.value(metadata ptr %2, metadata !491, metadata !DIExpression()), !dbg !2380
  call void @llvm.dbg.value(metadata i32 %3, metadata !492, metadata !DIExpression()), !dbg !2380
  call void @llvm.dbg.value(metadata ptr %4, metadata !493, metadata !DIExpression()), !dbg !2380
  call void @llvm.dbg.value(metadata ptr %5, metadata !494, metadata !DIExpression()), !dbg !2380
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !2381, !tbaa !936
  %8 = icmp eq i32 %7, 0, !dbg !2381
  br i1 %8, label %23, label %9, !dbg !2383

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !2384, !tbaa !936
  %11 = icmp eq i32 %10, %3, !dbg !2387
  br i1 %11, label %12, label %22, !dbg !2388

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !2389, !tbaa !866
  %14 = icmp eq ptr %13, %2, !dbg !2390
  br i1 %14, label %36, label %15, !dbg !2391

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !2392
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !2393
  br i1 %18, label %19, label %22, !dbg !2393

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #43, !dbg !2394
  %21 = icmp eq i32 %20, 0, !dbg !2395
  br i1 %21, label %36, label %22, !dbg !2396

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !2397, !tbaa !866
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !2398, !tbaa !936
  br label %23, !dbg !2399

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !2400
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !2401, !tbaa !866
  %25 = icmp eq ptr %24, null, !dbg !2401
  br i1 %25, label %27, label %26, !dbg !2403

26:                                               ; preds = %23
  tail call void %24() #42, !dbg !2404
  br label %31, !dbg !2404

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !2405, !tbaa !866
  %29 = tail call ptr @getprogname() #43, !dbg !2405
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.57, ptr noundef %29) #42, !dbg !2405
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !2407, !tbaa !866
  %33 = icmp eq ptr %2, null, !dbg !2407
  %34 = select i1 %33, ptr @.str.3.58, ptr @.str.2.59, !dbg !2407
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #42, !dbg !2407
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !2408
  br label %36, !dbg !2409

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !2409
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #18 !dbg !2410 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !2414, metadata !DIExpression()), !dbg !2420
  call void @llvm.dbg.value(metadata i32 %1, metadata !2415, metadata !DIExpression()), !dbg !2420
  call void @llvm.dbg.value(metadata ptr %2, metadata !2416, metadata !DIExpression()), !dbg !2420
  call void @llvm.dbg.value(metadata i32 %3, metadata !2417, metadata !DIExpression()), !dbg !2420
  call void @llvm.dbg.value(metadata ptr %4, metadata !2418, metadata !DIExpression()), !dbg !2420
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #42, !dbg !2421
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2419, metadata !DIExpression()), !dbg !2422
  call void @llvm.va_start(ptr nonnull %6), !dbg !2423
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #48, !dbg !2424
  call void @llvm.va_end(ptr nonnull %6), !dbg !2425
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #42, !dbg !2426
  ret void, !dbg !2426
}

; Function Attrs: nounwind uwtable
define dso_local void @fdadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #18 !dbg !2427 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2433, metadata !DIExpression()), !dbg !2437
  call void @llvm.dbg.value(metadata i64 %1, metadata !2434, metadata !DIExpression()), !dbg !2437
  call void @llvm.dbg.value(metadata i64 %2, metadata !2435, metadata !DIExpression()), !dbg !2437
  call void @llvm.dbg.value(metadata i32 %3, metadata !2436, metadata !DIExpression()), !dbg !2437
  %5 = tail call i32 @posix_fadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #42, !dbg !2438
  ret void, !dbg !2439
}

; Function Attrs: nounwind
declare !dbg !2440 i32 @posix_fadvise(i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @fadvise(ptr noundef %0, i32 noundef %1) local_unnamed_addr #18 !dbg !2443 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2481, metadata !DIExpression()), !dbg !2483
  call void @llvm.dbg.value(metadata i32 %1, metadata !2482, metadata !DIExpression()), !dbg !2483
  %3 = icmp eq ptr %0, null, !dbg !2484
  br i1 %3, label %7, label %4, !dbg !2486

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(ptr noundef nonnull %0) #42, !dbg !2487
  call void @llvm.dbg.value(metadata i32 %5, metadata !2433, metadata !DIExpression()), !dbg !2488
  call void @llvm.dbg.value(metadata i64 0, metadata !2434, metadata !DIExpression()), !dbg !2488
  call void @llvm.dbg.value(metadata i64 0, metadata !2435, metadata !DIExpression()), !dbg !2488
  call void @llvm.dbg.value(metadata i32 %1, metadata !2436, metadata !DIExpression()), !dbg !2488
  %6 = tail call i32 @posix_fadvise(i32 noundef %5, i64 noundef 0, i64 noundef 0, i32 noundef %1) #42, !dbg !2490
  br label %7, !dbg !2491

7:                                                ; preds = %4, %2
  ret void, !dbg !2492
}

; Function Attrs: nofree nounwind
declare !dbg !2493 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #18 !dbg !2496 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2534, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata i32 0, metadata !2535, metadata !DIExpression()), !dbg !2538
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #42, !dbg !2539
  call void @llvm.dbg.value(metadata i32 %2, metadata !2536, metadata !DIExpression()), !dbg !2538
  %3 = icmp slt i32 %2, 0, !dbg !2540
  br i1 %3, label %4, label %6, !dbg !2542

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2543
  br label %24, !dbg !2544

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #42, !dbg !2545
  %8 = icmp eq i32 %7, 0, !dbg !2545
  br i1 %8, label %13, label %9, !dbg !2547

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #42, !dbg !2548
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #42, !dbg !2549
  %12 = icmp eq i64 %11, -1, !dbg !2550
  br i1 %12, label %16, label %13, !dbg !2551

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #42, !dbg !2552
  %15 = icmp eq i32 %14, 0, !dbg !2552
  br i1 %15, label %16, label %18, !dbg !2553

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !2535, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata i32 0, metadata !2537, metadata !DIExpression()), !dbg !2538
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2554
  call void @llvm.dbg.value(metadata i32 %17, metadata !2537, metadata !DIExpression()), !dbg !2538
  br label %24, !dbg !2555

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #45, !dbg !2556
  %20 = load i32, ptr %19, align 4, !dbg !2556, !tbaa !936
  call void @llvm.dbg.value(metadata i32 %20, metadata !2535, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata i32 0, metadata !2537, metadata !DIExpression()), !dbg !2538
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2554
  call void @llvm.dbg.value(metadata i32 %21, metadata !2537, metadata !DIExpression()), !dbg !2538
  %22 = icmp eq i32 %20, 0, !dbg !2557
  br i1 %22, label %24, label %23, !dbg !2555

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !2559, !tbaa !936
  call void @llvm.dbg.value(metadata i32 -1, metadata !2537, metadata !DIExpression()), !dbg !2538
  br label %24, !dbg !2561

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !2538
  ret i32 %25, !dbg !2562
}

; Function Attrs: nofree nounwind
declare !dbg !2563 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !2564 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2566 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #18 !dbg !2569 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2607, metadata !DIExpression()), !dbg !2608
  %2 = icmp eq ptr %0, null, !dbg !2609
  br i1 %2, label %6, label %3, !dbg !2611

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #42, !dbg !2612
  %5 = icmp eq i32 %4, 0, !dbg !2612
  br i1 %5, label %6, label %8, !dbg !2613

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !2614
  br label %16, !dbg !2615

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !2616, metadata !DIExpression()), !dbg !2621
  %9 = load i32, ptr %0, align 8, !dbg !2623, !tbaa !1298
  %10 = and i32 %9, 256, !dbg !2625
  %11 = icmp eq i32 %10, 0, !dbg !2625
  br i1 %11, label %14, label %12, !dbg !2626

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #42, !dbg !2627
  br label %14, !dbg !2627

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !2628
  br label %16, !dbg !2629

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !2608
  ret i32 %17, !dbg !2630
}

; Function Attrs: nofree nounwind
declare !dbg !2631 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @fpurge(ptr noundef nonnull %0) local_unnamed_addr #18 !dbg !2632 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2670, metadata !DIExpression()), !dbg !2671
  tail call void @__fpurge(ptr noundef nonnull %0) #42, !dbg !2672
  ret i32 0, !dbg !2673
}

; Function Attrs: nounwind
declare !dbg !2674 void @__fpurge(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #18 !dbg !2677 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2715, metadata !DIExpression()), !dbg !2721
  call void @llvm.dbg.value(metadata i64 %1, metadata !2716, metadata !DIExpression()), !dbg !2721
  call void @llvm.dbg.value(metadata i32 %2, metadata !2717, metadata !DIExpression()), !dbg !2721
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !2722
  %5 = load ptr, ptr %4, align 8, !dbg !2722, !tbaa !2723
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !2724
  %7 = load ptr, ptr %6, align 8, !dbg !2724, !tbaa !2725
  %8 = icmp eq ptr %5, %7, !dbg !2726
  br i1 %8, label %9, label %27, !dbg !2727

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !2728
  %11 = load ptr, ptr %10, align 8, !dbg !2728, !tbaa !1517
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !2729
  %13 = load ptr, ptr %12, align 8, !dbg !2729, !tbaa !2730
  %14 = icmp eq ptr %11, %13, !dbg !2731
  br i1 %14, label %15, label %27, !dbg !2732

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !2733
  %17 = load ptr, ptr %16, align 8, !dbg !2733, !tbaa !2734
  %18 = icmp eq ptr %17, null, !dbg !2735
  br i1 %18, label %19, label %27, !dbg !2736

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #42, !dbg !2737
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #42, !dbg !2738
  call void @llvm.dbg.value(metadata i64 %21, metadata !2718, metadata !DIExpression()), !dbg !2739
  %22 = icmp eq i64 %21, -1, !dbg !2740
  br i1 %22, label %29, label %23, !dbg !2742

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !2743, !tbaa !1298
  %25 = and i32 %24, -17, !dbg !2743
  store i32 %25, ptr %0, align 8, !dbg !2743, !tbaa !1298
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !2744
  store i64 %21, ptr %26, align 8, !dbg !2745, !tbaa !2746
  br label %29, !dbg !2747

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !2748
  br label %29, !dbg !2749

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !2721
  ret i32 %30, !dbg !2750
}

; Function Attrs: nofree nounwind
declare !dbg !2751 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #24 !dbg !2754 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !2757, !tbaa !866
  ret ptr %1, !dbg !2758
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #25 !dbg !2759 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2761, metadata !DIExpression()), !dbg !2764
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #43, !dbg !2765
  call void @llvm.dbg.value(metadata ptr %2, metadata !2762, metadata !DIExpression()), !dbg !2764
  %3 = icmp eq ptr %2, null, !dbg !2766
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2766
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2766
  call void @llvm.dbg.value(metadata ptr %5, metadata !2763, metadata !DIExpression()), !dbg !2764
  %6 = ptrtoint ptr %5 to i64, !dbg !2767
  %7 = ptrtoint ptr %0 to i64, !dbg !2767
  %8 = sub i64 %6, %7, !dbg !2767
  %9 = icmp sgt i64 %8, 6, !dbg !2769
  br i1 %9, label %10, label %19, !dbg !2770

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !2771
  call void @llvm.dbg.value(metadata ptr %11, metadata !2772, metadata !DIExpression()), !dbg !2779
  call void @llvm.dbg.value(metadata ptr @.str.78, metadata !2777, metadata !DIExpression()), !dbg !2779
  call void @llvm.dbg.value(metadata i64 7, metadata !2778, metadata !DIExpression()), !dbg !2779
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.78, i64 7), !dbg !2781
  %13 = icmp eq i32 %12, 0, !dbg !2782
  br i1 %13, label %14, label %19, !dbg !2783

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !2761, metadata !DIExpression()), !dbg !2764
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.79, i64 noundef 3) #43, !dbg !2784
  %16 = icmp eq i32 %15, 0, !dbg !2787
  %17 = select i1 %16, i64 3, i64 0, !dbg !2788
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !2788
  br label %19, !dbg !2788

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2764
  call void @llvm.dbg.value(metadata ptr %21, metadata !2763, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata ptr %20, metadata !2761, metadata !DIExpression()), !dbg !2764
  store ptr %20, ptr @program_name, align 8, !dbg !2789, !tbaa !866
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2790, !tbaa !866
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2791, !tbaa !866
  ret void, !dbg !2792
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2793 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #26

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #18 !dbg !531 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !538, metadata !DIExpression()), !dbg !2794
  call void @llvm.dbg.value(metadata ptr %1, metadata !539, metadata !DIExpression()), !dbg !2794
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #42, !dbg !2795
  call void @llvm.dbg.value(metadata ptr %5, metadata !540, metadata !DIExpression()), !dbg !2794
  %6 = icmp eq ptr %5, %0, !dbg !2796
  br i1 %6, label %7, label %14, !dbg !2798

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #42, !dbg !2799
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #42, !dbg !2800
  call void @llvm.dbg.declare(metadata ptr %4, metadata !546, metadata !DIExpression()), !dbg !2801
  call void @llvm.dbg.value(metadata ptr %4, metadata !2802, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.value(metadata ptr %4, metadata !2811, metadata !DIExpression()), !dbg !2818
  call void @llvm.dbg.value(metadata i32 0, metadata !2816, metadata !DIExpression()), !dbg !2818
  call void @llvm.dbg.value(metadata i64 8, metadata !2817, metadata !DIExpression()), !dbg !2818
  store i64 0, ptr %4, align 8, !dbg !2820
  call void @llvm.dbg.value(metadata ptr %3, metadata !541, metadata !DIExpression(DW_OP_deref)), !dbg !2794
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #42, !dbg !2821
  %9 = icmp eq i64 %8, 2, !dbg !2823
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !541, metadata !DIExpression()), !dbg !2794
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2824
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !2794
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #42, !dbg !2825
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #42, !dbg !2825
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !2794
  ret ptr %15, !dbg !2825
}

; Function Attrs: nounwind
declare !dbg !2826 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #18 !dbg !2832 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2837, metadata !DIExpression()), !dbg !2840
  %2 = tail call ptr @__errno_location() #45, !dbg !2841
  %3 = load i32, ptr %2, align 4, !dbg !2841, !tbaa !936
  call void @llvm.dbg.value(metadata i32 %3, metadata !2838, metadata !DIExpression()), !dbg !2840
  %4 = icmp eq ptr %0, null, !dbg !2842
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2842
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #49, !dbg !2843
  call void @llvm.dbg.value(metadata ptr %6, metadata !2839, metadata !DIExpression()), !dbg !2840
  store i32 %3, ptr %2, align 4, !dbg !2844, !tbaa !936
  ret ptr %6, !dbg !2845
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #27 !dbg !2846 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2852, metadata !DIExpression()), !dbg !2853
  %2 = icmp eq ptr %0, null, !dbg !2854
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2854
  %4 = load i32, ptr %3, align 8, !dbg !2855, !tbaa !2856
  ret i32 %4, !dbg !2858
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #28 !dbg !2859 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2863, metadata !DIExpression()), !dbg !2865
  call void @llvm.dbg.value(metadata i32 %1, metadata !2864, metadata !DIExpression()), !dbg !2865
  %3 = icmp eq ptr %0, null, !dbg !2866
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2866
  store i32 %1, ptr %4, align 8, !dbg !2867, !tbaa !2856
  ret void, !dbg !2868
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #29 !dbg !2869 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2873, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata i8 %1, metadata !2874, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata i32 %2, metadata !2875, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata i8 %1, metadata !2876, metadata !DIExpression()), !dbg !2881
  %4 = icmp eq ptr %0, null, !dbg !2882
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2882
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2883
  %7 = lshr i8 %1, 5, !dbg !2884
  %8 = zext i8 %7 to i64, !dbg !2884
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !2885
  call void @llvm.dbg.value(metadata ptr %9, metadata !2877, metadata !DIExpression()), !dbg !2881
  %10 = and i8 %1, 31, !dbg !2886
  %11 = zext i8 %10 to i32, !dbg !2886
  call void @llvm.dbg.value(metadata i32 %11, metadata !2879, metadata !DIExpression()), !dbg !2881
  %12 = load i32, ptr %9, align 4, !dbg !2887, !tbaa !936
  %13 = lshr i32 %12, %11, !dbg !2888
  %14 = and i32 %13, 1, !dbg !2889
  call void @llvm.dbg.value(metadata i32 %14, metadata !2880, metadata !DIExpression()), !dbg !2881
  %15 = xor i32 %13, %2, !dbg !2890
  %16 = and i32 %15, 1, !dbg !2890
  %17 = shl nuw i32 %16, %11, !dbg !2891
  %18 = xor i32 %17, %12, !dbg !2892
  store i32 %18, ptr %9, align 4, !dbg !2892, !tbaa !936
  ret i32 %14, !dbg !2893
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #29 !dbg !2894 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2898, metadata !DIExpression()), !dbg !2901
  call void @llvm.dbg.value(metadata i32 %1, metadata !2899, metadata !DIExpression()), !dbg !2901
  %3 = icmp eq ptr %0, null, !dbg !2902
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2904
  call void @llvm.dbg.value(metadata ptr %4, metadata !2898, metadata !DIExpression()), !dbg !2901
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !2905
  %6 = load i32, ptr %5, align 4, !dbg !2905, !tbaa !2906
  call void @llvm.dbg.value(metadata i32 %6, metadata !2900, metadata !DIExpression()), !dbg !2901
  store i32 %1, ptr %5, align 4, !dbg !2907, !tbaa !2906
  ret i32 %6, !dbg !2908
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #18 !dbg !2909 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2913, metadata !DIExpression()), !dbg !2916
  call void @llvm.dbg.value(metadata ptr %1, metadata !2914, metadata !DIExpression()), !dbg !2916
  call void @llvm.dbg.value(metadata ptr %2, metadata !2915, metadata !DIExpression()), !dbg !2916
  %4 = icmp eq ptr %0, null, !dbg !2917
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2919
  call void @llvm.dbg.value(metadata ptr %5, metadata !2913, metadata !DIExpression()), !dbg !2916
  store i32 10, ptr %5, align 8, !dbg !2920, !tbaa !2856
  %6 = icmp ne ptr %1, null, !dbg !2921
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2923
  br i1 %8, label %10, label %9, !dbg !2923

9:                                                ; preds = %3
  tail call void @abort() #44, !dbg !2924
  unreachable, !dbg !2924

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2925
  store ptr %1, ptr %11, align 8, !dbg !2926, !tbaa !2927
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2928
  store ptr %2, ptr %12, align 8, !dbg !2929, !tbaa !2930
  ret void, !dbg !2931
}

; Function Attrs: noreturn nounwind
declare !dbg !2932 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #18 !dbg !2933 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2937, metadata !DIExpression()), !dbg !2945
  call void @llvm.dbg.value(metadata i64 %1, metadata !2938, metadata !DIExpression()), !dbg !2945
  call void @llvm.dbg.value(metadata ptr %2, metadata !2939, metadata !DIExpression()), !dbg !2945
  call void @llvm.dbg.value(metadata i64 %3, metadata !2940, metadata !DIExpression()), !dbg !2945
  call void @llvm.dbg.value(metadata ptr %4, metadata !2941, metadata !DIExpression()), !dbg !2945
  %6 = icmp eq ptr %4, null, !dbg !2946
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !2946
  call void @llvm.dbg.value(metadata ptr %7, metadata !2942, metadata !DIExpression()), !dbg !2945
  %8 = tail call ptr @__errno_location() #45, !dbg !2947
  %9 = load i32, ptr %8, align 4, !dbg !2947, !tbaa !936
  call void @llvm.dbg.value(metadata i32 %9, metadata !2943, metadata !DIExpression()), !dbg !2945
  %10 = load i32, ptr %7, align 8, !dbg !2948, !tbaa !2856
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !2949
  %12 = load i32, ptr %11, align 4, !dbg !2949, !tbaa !2906
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !2950
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !2951
  %15 = load ptr, ptr %14, align 8, !dbg !2951, !tbaa !2927
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !2952
  %17 = load ptr, ptr %16, align 8, !dbg !2952, !tbaa !2930
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !2953
  call void @llvm.dbg.value(metadata i64 %18, metadata !2944, metadata !DIExpression()), !dbg !2945
  store i32 %9, ptr %8, align 4, !dbg !2954, !tbaa !936
  ret i64 %18, !dbg !2955
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #18 !dbg !2956 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !2962, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i64 %1, metadata !2963, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata ptr %2, metadata !2964, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i64 %3, metadata !2965, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i32 %4, metadata !2966, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i32 %5, metadata !2967, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata ptr %6, metadata !2968, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata ptr %7, metadata !2969, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata ptr %8, metadata !2970, metadata !DIExpression()), !dbg !3024
  %16 = tail call i64 @__ctype_get_mb_cur_max() #42, !dbg !3025
  %17 = icmp eq i64 %16, 1, !dbg !3026
  call void @llvm.dbg.value(metadata i1 %17, metadata !2971, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3024
  call void @llvm.dbg.value(metadata i64 0, metadata !2972, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i64 0, metadata !2973, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata ptr null, metadata !2974, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i64 0, metadata !2975, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i8 0, metadata !2976, metadata !DIExpression()), !dbg !3024
  %18 = trunc i32 %5 to i8, !dbg !3027
  %19 = lshr i8 %18, 1, !dbg !3027
  %20 = and i8 %19, 1, !dbg !3027
  call void @llvm.dbg.value(metadata i8 %20, metadata !2977, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i8 0, metadata !2978, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i8 1, metadata !2979, metadata !DIExpression()), !dbg !3024
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !3028

28:                                               ; preds = %642, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %642 ]
  %30 = phi ptr [ %7, %9 ], [ %117, %642 ]
  %31 = phi ptr [ %8, %9 ], [ %118, %642 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %642 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %642 ], !dbg !3029
  %34 = phi ptr [ null, %9 ], [ %120, %642 ], !dbg !3030
  %35 = phi i64 [ 0, %9 ], [ %121, %642 ], !dbg !3031
  %36 = phi i8 [ 0, %9 ], [ %122, %642 ], !dbg !3032
  %37 = phi i8 [ %20, %9 ], [ %123, %642 ], !dbg !3024
  %38 = phi i8 [ 0, %9 ], [ %142, %642 ], !dbg !3033
  %39 = phi i8 [ 1, %9 ], [ %143, %642 ], !dbg !3034
  %40 = phi i64 [ %1, %9 ], [ %141, %642 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !2963, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i8 %39, metadata !2979, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i8 %38, metadata !2978, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i8 %37, metadata !2977, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i8 %36, metadata !2976, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i64 %35, metadata !2975, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata ptr %34, metadata !2974, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i64 %33, metadata !2973, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i64 0, metadata !2972, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i64 %32, metadata !2965, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata ptr %31, metadata !2970, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata ptr %30, metadata !2969, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i32 %29, metadata !2966, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.label(metadata !3017), !dbg !3035
  call void @llvm.dbg.value(metadata i8 0, metadata !2980, metadata !DIExpression()), !dbg !3024
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
  ], !dbg !3036

41:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !2977, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i32 5, metadata !2966, metadata !DIExpression()), !dbg !3024
  br label %115, !dbg !3037

42:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 %37, metadata !2977, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i32 5, metadata !2966, metadata !DIExpression()), !dbg !3024
  %43 = and i8 %37, 1, !dbg !3038
  %44 = icmp eq i8 %43, 0, !dbg !3038
  br i1 %44, label %45, label %115, !dbg !3037

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !3040
  br i1 %46, label %115, label %47, !dbg !3043

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !3040, !tbaa !945
  br label %115, !dbg !3040

48:                                               ; preds = %28, %28
  call void @llvm.dbg.value(metadata ptr @.str.11.92, metadata !625, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata i32 %29, metadata !626, metadata !DIExpression()), !dbg !3044
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.93, ptr noundef nonnull @.str.11.92, i32 noundef 5) #42, !dbg !3048
  call void @llvm.dbg.value(metadata ptr %49, metadata !627, metadata !DIExpression()), !dbg !3044
  %50 = icmp eq ptr %49, @.str.11.92, !dbg !3049
  br i1 %50, label %51, label %60, !dbg !3051

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #42, !dbg !3052
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #42, !dbg !3053
  call void @llvm.dbg.declare(metadata ptr %13, metadata !629, metadata !DIExpression()), !dbg !3054
  call void @llvm.dbg.value(metadata ptr %13, metadata !3055, metadata !DIExpression()), !dbg !3061
  call void @llvm.dbg.value(metadata ptr %13, metadata !3063, metadata !DIExpression()), !dbg !3068
  call void @llvm.dbg.value(metadata i32 0, metadata !3066, metadata !DIExpression()), !dbg !3068
  call void @llvm.dbg.value(metadata i64 8, metadata !3067, metadata !DIExpression()), !dbg !3068
  store i64 0, ptr %13, align 8, !dbg !3070
  call void @llvm.dbg.value(metadata ptr %12, metadata !628, metadata !DIExpression(DW_OP_deref)), !dbg !3044
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #42, !dbg !3071
  %53 = icmp eq i64 %52, 3, !dbg !3073
  %54 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %54, metadata !628, metadata !DIExpression()), !dbg !3044
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !3074
  %57 = icmp eq i32 %29, 9, !dbg !3074
  %58 = select i1 %57, ptr @.str.10.94, ptr @.str.12.95, !dbg !3074
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !3074
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #42, !dbg !3075
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #42, !dbg !3075
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !3044
  call void @llvm.dbg.value(metadata ptr %61, metadata !2969, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata ptr @.str.12.95, metadata !625, metadata !DIExpression()), !dbg !3076
  call void @llvm.dbg.value(metadata i32 %29, metadata !626, metadata !DIExpression()), !dbg !3076
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.93, ptr noundef nonnull @.str.12.95, i32 noundef 5) #42, !dbg !3078
  call void @llvm.dbg.value(metadata ptr %62, metadata !627, metadata !DIExpression()), !dbg !3076
  %63 = icmp eq ptr %62, @.str.12.95, !dbg !3079
  br i1 %63, label %64, label %73, !dbg !3080

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #42, !dbg !3081
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #42, !dbg !3082
  call void @llvm.dbg.declare(metadata ptr %11, metadata !629, metadata !DIExpression()), !dbg !3083
  call void @llvm.dbg.value(metadata ptr %11, metadata !3055, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata ptr %11, metadata !3063, metadata !DIExpression()), !dbg !3086
  call void @llvm.dbg.value(metadata i32 0, metadata !3066, metadata !DIExpression()), !dbg !3086
  call void @llvm.dbg.value(metadata i64 8, metadata !3067, metadata !DIExpression()), !dbg !3086
  store i64 0, ptr %11, align 8, !dbg !3088
  call void @llvm.dbg.value(metadata ptr %10, metadata !628, metadata !DIExpression(DW_OP_deref)), !dbg !3076
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #42, !dbg !3089
  %66 = icmp eq i64 %65, 3, !dbg !3090
  %67 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %67, metadata !628, metadata !DIExpression()), !dbg !3076
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !3091
  %70 = icmp eq i32 %29, 9, !dbg !3091
  %71 = select i1 %70, ptr @.str.10.94, ptr @.str.12.95, !dbg !3091
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !3091
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #42, !dbg !3092
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #42, !dbg !3092
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  call void @llvm.dbg.value(metadata ptr %75, metadata !2970, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata ptr %74, metadata !2969, metadata !DIExpression()), !dbg !3024
  %76 = and i8 %37, 1, !dbg !3093
  %77 = icmp eq i8 %76, 0, !dbg !3093
  br i1 %77, label %78, label %93, !dbg !3094

78:                                               ; preds = %73
  call void @llvm.dbg.value(metadata ptr %74, metadata !2981, metadata !DIExpression()), !dbg !3095
  call void @llvm.dbg.value(metadata i64 0, metadata !2972, metadata !DIExpression()), !dbg !3024
  %79 = load i8, ptr %74, align 1, !dbg !3096, !tbaa !945
  %80 = icmp eq i8 %79, 0, !dbg !3098
  br i1 %80, label %93, label %81, !dbg !3098

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  call void @llvm.dbg.value(metadata ptr %83, metadata !2981, metadata !DIExpression()), !dbg !3095
  call void @llvm.dbg.value(metadata i64 %84, metadata !2972, metadata !DIExpression()), !dbg !3024
  %85 = icmp ult i64 %84, %40, !dbg !3099
  br i1 %85, label %86, label %88, !dbg !3102

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !3099
  store i8 %82, ptr %87, align 1, !dbg !3099, !tbaa !945
  br label %88, !dbg !3099

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !3102
  call void @llvm.dbg.value(metadata i64 %89, metadata !2972, metadata !DIExpression()), !dbg !3024
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !3103
  call void @llvm.dbg.value(metadata ptr %90, metadata !2981, metadata !DIExpression()), !dbg !3095
  %91 = load i8, ptr %90, align 1, !dbg !3096, !tbaa !945
  %92 = icmp eq i8 %91, 0, !dbg !3098
  br i1 %92, label %93, label %81, !dbg !3098, !llvm.loop !3104

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !3106
  call void @llvm.dbg.value(metadata i64 %94, metadata !2972, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i8 1, metadata !2976, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata ptr %75, metadata !2974, metadata !DIExpression()), !dbg !3024
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #43, !dbg !3107
  call void @llvm.dbg.value(metadata i64 %95, metadata !2975, metadata !DIExpression()), !dbg !3024
  br label %115, !dbg !3108

96:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !2976, metadata !DIExpression()), !dbg !3024
  br label %97, !dbg !3109

97:                                               ; preds = %28, %96
  %98 = phi i8 [ %36, %28 ], [ 1, %96 ], !dbg !3024
  call void @llvm.dbg.value(metadata i8 %98, metadata !2976, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i8 1, metadata !2977, metadata !DIExpression()), !dbg !3024
  br label %99, !dbg !3110

99:                                               ; preds = %28, %97
  %100 = phi i8 [ %36, %28 ], [ %98, %97 ], !dbg !3032
  %101 = phi i8 [ %37, %28 ], [ 1, %97 ], !dbg !3024
  call void @llvm.dbg.value(metadata i8 %101, metadata !2977, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i8 %100, metadata !2976, metadata !DIExpression()), !dbg !3024
  %102 = and i8 %101, 1, !dbg !3111
  %103 = icmp eq i8 %102, 0, !dbg !3111
  %104 = select i1 %103, i8 1, i8 %100, !dbg !3113
  br label %105, !dbg !3113

105:                                              ; preds = %99, %28
  %106 = phi i8 [ %36, %28 ], [ %104, %99 ], !dbg !3024
  %107 = phi i8 [ %37, %28 ], [ %101, %99 ], !dbg !3027
  call void @llvm.dbg.value(metadata i8 %107, metadata !2977, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i8 %106, metadata !2976, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i32 2, metadata !2966, metadata !DIExpression()), !dbg !3024
  %108 = and i8 %107, 1, !dbg !3114
  %109 = icmp eq i8 %108, 0, !dbg !3114
  br i1 %109, label %110, label %115, !dbg !3116

110:                                              ; preds = %105
  %111 = icmp eq i64 %40, 0, !dbg !3117
  br i1 %111, label %115, label %112, !dbg !3120

112:                                              ; preds = %110
  store i8 39, ptr %0, align 1, !dbg !3117, !tbaa !945
  br label %115, !dbg !3117

113:                                              ; preds = %28
  call void @llvm.dbg.value(metadata i8 0, metadata !2977, metadata !DIExpression()), !dbg !3024
  br label %115, !dbg !3121

114:                                              ; preds = %28
  call void @abort() #44, !dbg !3122
  unreachable, !dbg !3122

115:                                              ; preds = %41, %105, %112, %110, %28, %42, %47, %45, %113, %93
  %116 = phi i32 [ 0, %113 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %110 ], [ 2, %112 ], [ 2, %105 ], [ 5, %41 ]
  %117 = phi ptr [ %30, %113 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %110 ], [ %30, %112 ], [ %30, %105 ], [ %30, %41 ]
  %118 = phi ptr [ %31, %113 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %110 ], [ %31, %112 ], [ %31, %105 ], [ %31, %41 ]
  %119 = phi i64 [ 0, %113 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %110 ], [ 1, %112 ], [ 0, %105 ], [ 0, %41 ], !dbg !3106
  %120 = phi ptr [ %34, %113 ], [ %75, %93 ], [ @.str.10.94, %45 ], [ @.str.10.94, %47 ], [ @.str.10.94, %42 ], [ %34, %28 ], [ @.str.12.95, %110 ], [ @.str.12.95, %112 ], [ @.str.12.95, %105 ], [ @.str.10.94, %41 ], !dbg !3024
  %121 = phi i64 [ %35, %113 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %110 ], [ 1, %112 ], [ 1, %105 ], [ 1, %41 ], !dbg !3024
  %122 = phi i8 [ %36, %113 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %106, %110 ], [ %106, %112 ], [ %106, %105 ], [ 1, %41 ], !dbg !3024
  %123 = phi i8 [ 0, %113 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %107, %110 ], [ %107, %112 ], [ %107, %105 ], [ 1, %41 ], !dbg !3024
  call void @llvm.dbg.value(metadata i8 %123, metadata !2977, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i8 %122, metadata !2976, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i64 %121, metadata !2975, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata ptr %120, metadata !2974, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i64 %119, metadata !2972, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata ptr %118, metadata !2970, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata ptr %117, metadata !2969, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i32 %116, metadata !2966, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i64 0, metadata !2986, metadata !DIExpression()), !dbg !3123
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
  br label %138, !dbg !3124

138:                                              ; preds = %617, %115
  %139 = phi i64 [ %32, %115 ], [ %618, %617 ]
  %140 = phi i64 [ %119, %115 ], [ %619, %617 ], !dbg !3106
  %141 = phi i64 [ %33, %115 ], [ %620, %617 ], !dbg !3029
  %142 = phi i8 [ %38, %115 ], [ %621, %617 ], !dbg !3033
  %143 = phi i8 [ %39, %115 ], [ %622, %617 ], !dbg !3034
  %144 = phi i8 [ 0, %115 ], [ %623, %617 ], !dbg !3125
  %145 = phi i64 [ 0, %115 ], [ %626, %617 ], !dbg !3126
  %146 = phi i64 [ %40, %115 ], [ %625, %617 ]
  call void @llvm.dbg.value(metadata i64 %146, metadata !2963, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i64 %145, metadata !2986, metadata !DIExpression()), !dbg !3123
  call void @llvm.dbg.value(metadata i8 %144, metadata !2980, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i8 %143, metadata !2979, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i8 %142, metadata !2978, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i64 %141, metadata !2973, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i64 %140, metadata !2972, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i64 %139, metadata !2965, metadata !DIExpression()), !dbg !3024
  %147 = icmp eq i64 %139, -1, !dbg !3127
  br i1 %147, label %148, label %152, !dbg !3128

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !3129
  %150 = load i8, ptr %149, align 1, !dbg !3129, !tbaa !945
  %151 = icmp eq i8 %150, 0, !dbg !3130
  br i1 %151, label %627, label %154, !dbg !3131

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !3132
  br i1 %153, label %627, label %154, !dbg !3131

154:                                              ; preds = %148, %152
  call void @llvm.dbg.value(metadata i8 0, metadata !2988, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.value(metadata i8 0, metadata !2991, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.value(metadata i8 0, metadata !2992, metadata !DIExpression()), !dbg !3133
  br i1 %129, label %155, label %170, !dbg !3134

155:                                              ; preds = %154
  %156 = add i64 %145, %121, !dbg !3136
  %157 = select i1 %147, i1 %130, i1 false, !dbg !3137
  br i1 %157, label %158, label %160, !dbg !3137

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #43, !dbg !3138
  call void @llvm.dbg.value(metadata i64 %159, metadata !2965, metadata !DIExpression()), !dbg !3024
  br label %160, !dbg !3139

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !3139
  call void @llvm.dbg.value(metadata i64 %161, metadata !2965, metadata !DIExpression()), !dbg !3024
  %162 = icmp ugt i64 %156, %161, !dbg !3140
  br i1 %162, label %170, label %163, !dbg !3141

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !3142
  call void @llvm.dbg.value(metadata ptr %164, metadata !3143, metadata !DIExpression()), !dbg !3148
  call void @llvm.dbg.value(metadata ptr %120, metadata !3146, metadata !DIExpression()), !dbg !3148
  call void @llvm.dbg.value(metadata i64 %121, metadata !3147, metadata !DIExpression()), !dbg !3148
  %165 = call i32 @bcmp(ptr %164, ptr %120, i64 %121), !dbg !3150
  %166 = icmp ne i32 %165, 0, !dbg !3151
  %167 = select i1 %166, i1 true, i1 %132, !dbg !3152
  %168 = xor i1 %166, true, !dbg !3152
  %169 = zext i1 %168 to i8, !dbg !3152
  br i1 %167, label %170, label %688, !dbg !3152

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !3133
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !3133
  call void @llvm.dbg.value(metadata i8 %173, metadata !2988, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.value(metadata i64 %171, metadata !2965, metadata !DIExpression()), !dbg !3024
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !3153
  %175 = load i8, ptr %174, align 1, !dbg !3153, !tbaa !945
  call void @llvm.dbg.value(metadata i8 %175, metadata !2993, metadata !DIExpression()), !dbg !3133
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
  ], !dbg !3154

176:                                              ; preds = %170
  br i1 %125, label %177, label %225, !dbg !3155

177:                                              ; preds = %176
  br i1 %132, label %178, label %674, !dbg !3156

178:                                              ; preds = %177
  call void @llvm.dbg.value(metadata i8 1, metadata !2991, metadata !DIExpression()), !dbg !3133
  %179 = and i8 %144, 1, !dbg !3160
  %180 = icmp eq i8 %179, 0, !dbg !3160
  %181 = select i1 %133, i1 %180, i1 false, !dbg !3160
  br i1 %181, label %182, label %198, !dbg !3160

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !3162
  br i1 %183, label %184, label %186, !dbg !3166

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !3162
  store i8 39, ptr %185, align 1, !dbg !3162, !tbaa !945
  br label %186, !dbg !3162

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !3166
  call void @llvm.dbg.value(metadata i64 %187, metadata !2972, metadata !DIExpression()), !dbg !3024
  %188 = icmp ult i64 %187, %146, !dbg !3167
  br i1 %188, label %189, label %191, !dbg !3170

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !3167
  store i8 36, ptr %190, align 1, !dbg !3167, !tbaa !945
  br label %191, !dbg !3167

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !3170
  call void @llvm.dbg.value(metadata i64 %192, metadata !2972, metadata !DIExpression()), !dbg !3024
  %193 = icmp ult i64 %192, %146, !dbg !3171
  br i1 %193, label %194, label %196, !dbg !3174

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !3171
  store i8 39, ptr %195, align 1, !dbg !3171, !tbaa !945
  br label %196, !dbg !3171

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !3174
  call void @llvm.dbg.value(metadata i64 %197, metadata !2972, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i8 1, metadata !2980, metadata !DIExpression()), !dbg !3024
  br label %198, !dbg !3175

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !3024
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !3024
  call void @llvm.dbg.value(metadata i8 %200, metadata !2980, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i64 %199, metadata !2972, metadata !DIExpression()), !dbg !3024
  %201 = icmp ult i64 %199, %146, !dbg !3176
  br i1 %201, label %202, label %204, !dbg !3179

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !3176
  store i8 92, ptr %203, align 1, !dbg !3176, !tbaa !945
  br label %204, !dbg !3176

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !3179
  call void @llvm.dbg.value(metadata i64 %205, metadata !2972, metadata !DIExpression()), !dbg !3024
  br i1 %126, label %206, label %491, !dbg !3180

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !3182
  %208 = icmp ult i64 %207, %171, !dbg !3183
  br i1 %208, label %209, label %480, !dbg !3184

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !3185
  %211 = load i8, ptr %210, align 1, !dbg !3185, !tbaa !945
  %212 = add i8 %211, -48, !dbg !3186
  %213 = icmp ult i8 %212, 10, !dbg !3186
  br i1 %213, label %214, label %480, !dbg !3186

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !3187
  br i1 %215, label %216, label %218, !dbg !3191

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !3187
  store i8 48, ptr %217, align 1, !dbg !3187, !tbaa !945
  br label %218, !dbg !3187

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !3191
  call void @llvm.dbg.value(metadata i64 %219, metadata !2972, metadata !DIExpression()), !dbg !3024
  %220 = icmp ult i64 %219, %146, !dbg !3192
  br i1 %220, label %221, label %223, !dbg !3195

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !3192
  store i8 48, ptr %222, align 1, !dbg !3192, !tbaa !945
  br label %223, !dbg !3192

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !3195
  call void @llvm.dbg.value(metadata i64 %224, metadata !2972, metadata !DIExpression()), !dbg !3024
  br label %480, !dbg !3196

225:                                              ; preds = %176
  br i1 %25, label %491, label %617, !dbg !3197

226:                                              ; preds = %170
  switch i32 %116, label %480 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !3198

227:                                              ; preds = %226
  br i1 %132, label %480, label %670, !dbg !3199

228:                                              ; preds = %226
  br i1 %23, label %480, label %229, !dbg !3201

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !3203
  %231 = icmp ult i64 %230, %171, !dbg !3204
  br i1 %231, label %232, label %480, !dbg !3205

232:                                              ; preds = %229
  %233 = add i64 %145, 1, !dbg !3206
  %234 = getelementptr inbounds i8, ptr %2, i64 %233, !dbg !3207
  %235 = load i8, ptr %234, align 1, !dbg !3207, !tbaa !945
  %236 = icmp eq i8 %235, 63, !dbg !3208
  br i1 %236, label %237, label %480, !dbg !3209

237:                                              ; preds = %232
  %238 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !3210
  %239 = load i8, ptr %238, align 1, !dbg !3210, !tbaa !945
  %240 = sext i8 %239 to i32, !dbg !3210
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
  ], !dbg !3211

241:                                              ; preds = %237, %237, %237, %237, %237, %237, %237, %237, %237
  br i1 %132, label %242, label %688, !dbg !3212

242:                                              ; preds = %241
  call void @llvm.dbg.value(metadata i8 %239, metadata !2993, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.value(metadata i64 %230, metadata !2986, metadata !DIExpression()), !dbg !3123
  %243 = icmp ult i64 %140, %146, !dbg !3214
  br i1 %243, label %244, label %246, !dbg !3217

244:                                              ; preds = %242
  %245 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !3214
  store i8 63, ptr %245, align 1, !dbg !3214, !tbaa !945
  br label %246, !dbg !3214

246:                                              ; preds = %244, %242
  %247 = add i64 %140, 1, !dbg !3217
  call void @llvm.dbg.value(metadata i64 %247, metadata !2972, metadata !DIExpression()), !dbg !3024
  %248 = icmp ult i64 %247, %146, !dbg !3218
  br i1 %248, label %249, label %251, !dbg !3221

249:                                              ; preds = %246
  %250 = getelementptr inbounds i8, ptr %0, i64 %247, !dbg !3218
  store i8 34, ptr %250, align 1, !dbg !3218, !tbaa !945
  br label %251, !dbg !3218

251:                                              ; preds = %249, %246
  %252 = add i64 %140, 2, !dbg !3221
  call void @llvm.dbg.value(metadata i64 %252, metadata !2972, metadata !DIExpression()), !dbg !3024
  %253 = icmp ult i64 %252, %146, !dbg !3222
  br i1 %253, label %254, label %256, !dbg !3225

254:                                              ; preds = %251
  %255 = getelementptr inbounds i8, ptr %0, i64 %252, !dbg !3222
  store i8 34, ptr %255, align 1, !dbg !3222, !tbaa !945
  br label %256, !dbg !3222

256:                                              ; preds = %254, %251
  %257 = add i64 %140, 3, !dbg !3225
  call void @llvm.dbg.value(metadata i64 %257, metadata !2972, metadata !DIExpression()), !dbg !3024
  %258 = icmp ult i64 %257, %146, !dbg !3226
  br i1 %258, label %259, label %261, !dbg !3229

259:                                              ; preds = %256
  %260 = getelementptr inbounds i8, ptr %0, i64 %257, !dbg !3226
  store i8 63, ptr %260, align 1, !dbg !3226, !tbaa !945
  br label %261, !dbg !3226

261:                                              ; preds = %259, %256
  %262 = add i64 %140, 4, !dbg !3229
  call void @llvm.dbg.value(metadata i64 %262, metadata !2972, metadata !DIExpression()), !dbg !3024
  br label %480, !dbg !3230

263:                                              ; preds = %170
  br label %274, !dbg !3231

264:                                              ; preds = %170
  br label %274, !dbg !3232

265:                                              ; preds = %170
  br label %272, !dbg !3233

266:                                              ; preds = %170
  br label %272, !dbg !3234

267:                                              ; preds = %170
  br label %274, !dbg !3235

268:                                              ; preds = %170
  br i1 %133, label %269, label %270, !dbg !3236

269:                                              ; preds = %268
  br i1 %132, label %573, label %670, !dbg !3237

270:                                              ; preds = %268
  br i1 %125, label %271, label %491, !dbg !3240

271:                                              ; preds = %270
  br i1 %136, label %573, label %535, !dbg !3242

272:                                              ; preds = %170, %266, %265
  %273 = phi i8 [ 116, %266 ], [ 114, %265 ], [ 110, %170 ], !dbg !3243
  call void @llvm.dbg.label(metadata !3018), !dbg !3244
  br i1 %134, label %274, label %670, !dbg !3245

274:                                              ; preds = %170, %272, %267, %264, %263
  %275 = phi i8 [ %273, %272 ], [ 118, %267 ], [ 102, %264 ], [ 98, %263 ], [ 97, %170 ], !dbg !3243
  call void @llvm.dbg.label(metadata !3020), !dbg !3247
  br i1 %125, label %535, label %491, !dbg !3248

276:                                              ; preds = %170, %170
  switch i64 %171, label %480 [
    i64 -1, label %277
    i64 1, label %280
  ], !dbg !3249

277:                                              ; preds = %276
  %278 = load i8, ptr %21, align 1, !dbg !3250, !tbaa !945
  %279 = icmp eq i8 %278, 0, !dbg !3252
  br i1 %279, label %280, label %480, !dbg !3253

280:                                              ; preds = %276, %277, %170, %170
  %281 = icmp eq i64 %145, 0, !dbg !3254
  br i1 %281, label %282, label %480, !dbg !3256

282:                                              ; preds = %280, %170
  call void @llvm.dbg.value(metadata i8 1, metadata !2992, metadata !DIExpression()), !dbg !3133
  br label %283, !dbg !3257

283:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %282
  %284 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %282 ], !dbg !3133
  call void @llvm.dbg.value(metadata i8 %284, metadata !2992, metadata !DIExpression()), !dbg !3133
  br i1 %134, label %480, label %670, !dbg !3258

285:                                              ; preds = %170
  call void @llvm.dbg.value(metadata i8 1, metadata !2978, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i8 1, metadata !2992, metadata !DIExpression()), !dbg !3133
  br i1 %133, label %286, label %480, !dbg !3260

286:                                              ; preds = %285
  br i1 %132, label %287, label %670, !dbg !3261

287:                                              ; preds = %286
  %288 = icmp eq i64 %146, 0, !dbg !3264
  %289 = icmp ne i64 %141, 0
  %290 = select i1 %288, i1 true, i1 %289, !dbg !3266
  %291 = select i1 %290, i64 %141, i64 %146, !dbg !3266
  %292 = select i1 %290, i64 %146, i64 0, !dbg !3266
  call void @llvm.dbg.value(metadata i64 %292, metadata !2963, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i64 %291, metadata !2973, metadata !DIExpression()), !dbg !3024
  %293 = icmp ult i64 %140, %292, !dbg !3267
  br i1 %293, label %294, label %296, !dbg !3270

294:                                              ; preds = %287
  %295 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !3267
  store i8 39, ptr %295, align 1, !dbg !3267, !tbaa !945
  br label %296, !dbg !3267

296:                                              ; preds = %294, %287
  %297 = add i64 %140, 1, !dbg !3270
  call void @llvm.dbg.value(metadata i64 %297, metadata !2972, metadata !DIExpression()), !dbg !3024
  %298 = icmp ult i64 %297, %292, !dbg !3271
  br i1 %298, label %299, label %301, !dbg !3274

299:                                              ; preds = %296
  %300 = getelementptr inbounds i8, ptr %0, i64 %297, !dbg !3271
  store i8 92, ptr %300, align 1, !dbg !3271, !tbaa !945
  br label %301, !dbg !3271

301:                                              ; preds = %299, %296
  %302 = add i64 %140, 2, !dbg !3274
  call void @llvm.dbg.value(metadata i64 %302, metadata !2972, metadata !DIExpression()), !dbg !3024
  %303 = icmp ult i64 %302, %292, !dbg !3275
  br i1 %303, label %304, label %306, !dbg !3278

304:                                              ; preds = %301
  %305 = getelementptr inbounds i8, ptr %0, i64 %302, !dbg !3275
  store i8 39, ptr %305, align 1, !dbg !3275, !tbaa !945
  br label %306, !dbg !3275

306:                                              ; preds = %304, %301
  %307 = add i64 %140, 3, !dbg !3278
  call void @llvm.dbg.value(metadata i64 %307, metadata !2972, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i8 0, metadata !2980, metadata !DIExpression()), !dbg !3024
  br label %480, !dbg !3279

308:                                              ; preds = %170
  br i1 %17, label %309, label %319, !dbg !3280

309:                                              ; preds = %308
  call void @llvm.dbg.value(metadata i64 1, metadata !2994, metadata !DIExpression()), !dbg !3281
  %310 = tail call ptr @__ctype_b_loc() #45, !dbg !3282
  %311 = load ptr, ptr %310, align 8, !dbg !3282, !tbaa !866
  %312 = zext i8 %175 to i64
  %313 = getelementptr inbounds i16, ptr %311, i64 %312, !dbg !3282
  %314 = load i16, ptr %313, align 2, !dbg !3282, !tbaa !977
  %315 = lshr i16 %314, 14, !dbg !3284
  %316 = trunc i16 %315 to i8, !dbg !3284
  %317 = and i8 %316, 1, !dbg !3284
  call void @llvm.dbg.value(metadata i8 %317, metadata !2997, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i64 %171, metadata !2965, metadata !DIExpression()), !dbg !3024
  %318 = icmp eq i8 %317, 0, !dbg !3285
  call void @llvm.dbg.value(metadata i1 %318, metadata !2992, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3133
  br label %368, !dbg !3286

319:                                              ; preds = %308
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #42, !dbg !3287
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2998, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata ptr %14, metadata !3055, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata ptr %14, metadata !3063, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.value(metadata i32 0, metadata !3066, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.value(metadata i64 8, metadata !3067, metadata !DIExpression()), !dbg !3291
  store i64 0, ptr %14, align 8, !dbg !3293
  call void @llvm.dbg.value(metadata i64 0, metadata !2994, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i8 1, metadata !2997, metadata !DIExpression()), !dbg !3281
  %320 = icmp eq i64 %171, -1, !dbg !3294
  br i1 %320, label %321, label %323, !dbg !3296

321:                                              ; preds = %319
  %322 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #43, !dbg !3297
  call void @llvm.dbg.value(metadata i64 %322, metadata !2965, metadata !DIExpression()), !dbg !3024
  br label %323, !dbg !3298

323:                                              ; preds = %319, %321
  %324 = phi i64 [ %322, %321 ], [ %171, %319 ], !dbg !3133
  call void @llvm.dbg.value(metadata i64 %324, metadata !2965, metadata !DIExpression()), !dbg !3024
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #42, !dbg !3299
  %325 = sub i64 %324, %145, !dbg !3300
  call void @llvm.dbg.value(metadata ptr %15, metadata !3001, metadata !DIExpression(DW_OP_deref)), !dbg !3301
  %326 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %325, ptr noundef nonnull %14) #42, !dbg !3302
  call void @llvm.dbg.value(metadata i64 %326, metadata !3005, metadata !DIExpression()), !dbg !3301
  switch i64 %326, label %341 [
    i64 0, label %360
    i64 -1, label %330
    i64 -2, label %327
  ], !dbg !3303

327:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i64 0, metadata !2994, metadata !DIExpression()), !dbg !3281
  %328 = icmp ugt i64 %324, %145, !dbg !3304
  br i1 %328, label %331, label %329, !dbg !3306

329:                                              ; preds = %327
  call void @llvm.dbg.value(metadata i8 0, metadata !2997, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i64 0, metadata !2994, metadata !DIExpression()), !dbg !3281
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #42, !dbg !3307
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #42, !dbg !3308
  call void @llvm.dbg.value(metadata i64 %324, metadata !2965, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i1 true, metadata !2992, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3133
  br label %368, !dbg !3286

330:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i8 0, metadata !2997, metadata !DIExpression()), !dbg !3281
  br label %360, !dbg !3309

331:                                              ; preds = %327, %337
  %332 = phi i64 [ %339, %337 ], [ %145, %327 ]
  %333 = phi i64 [ %338, %337 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !2994, metadata !DIExpression()), !dbg !3281
  %334 = getelementptr inbounds i8, ptr %2, i64 %332, !dbg !3311
  %335 = load i8, ptr %334, align 1, !dbg !3311, !tbaa !945
  %336 = icmp eq i8 %335, 0, !dbg !3306
  br i1 %336, label %363, label %337, !dbg !3312

337:                                              ; preds = %331
  %338 = add i64 %333, 1, !dbg !3313
  call void @llvm.dbg.value(metadata i64 %338, metadata !2994, metadata !DIExpression()), !dbg !3281
  %339 = add i64 %338, %145, !dbg !3314
  %340 = icmp eq i64 %338, %325, !dbg !3304
  br i1 %340, label %363, label %331, !dbg !3306, !llvm.loop !3315

341:                                              ; preds = %323
  %342 = icmp ugt i64 %326, 1
  %343 = and i1 %135, %342, !dbg !3316
  %344 = and i1 %343, %133, !dbg !3316
  call void @llvm.dbg.value(metadata i64 1, metadata !3006, metadata !DIExpression()), !dbg !3317
  br i1 %344, label %345, label %354, !dbg !3316

345:                                              ; preds = %341, %351
  %346 = phi i64 [ %352, %351 ], [ 1, %341 ]
  call void @llvm.dbg.value(metadata i64 %346, metadata !3006, metadata !DIExpression()), !dbg !3317
  %347 = add i64 %346, %145, !dbg !3318
  %348 = getelementptr inbounds i8, ptr %2, i64 %347, !dbg !3320
  %349 = load i8, ptr %348, align 1, !dbg !3320, !tbaa !945
  %350 = sext i8 %349 to i32, !dbg !3320
  switch i32 %350, label %351 [
    i32 91, label %359
    i32 92, label %359
    i32 94, label %359
    i32 96, label %359
    i32 124, label %359
  ], !dbg !3321

351:                                              ; preds = %345
  %352 = add nuw i64 %346, 1, !dbg !3322
  call void @llvm.dbg.value(metadata i64 %352, metadata !3006, metadata !DIExpression()), !dbg !3317
  %353 = icmp eq i64 %352, %326, !dbg !3323
  br i1 %353, label %354, label %345, !dbg !3324, !llvm.loop !3325

354:                                              ; preds = %351, %341
  %355 = load i32, ptr %15, align 4, !dbg !3327, !tbaa !936
  call void @llvm.dbg.value(metadata i32 %355, metadata !3001, metadata !DIExpression()), !dbg !3301
  call void @llvm.dbg.value(metadata i32 %355, metadata !3329, metadata !DIExpression()), !dbg !3337
  %356 = call i32 @iswprint(i32 noundef %355) #42, !dbg !3339
  %357 = icmp ne i32 %356, 0, !dbg !3340
  %358 = zext i1 %357 to i8, !dbg !3341
  call void @llvm.dbg.value(metadata i8 %358, metadata !2997, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i64 %326, metadata !2994, metadata !DIExpression()), !dbg !3281
  br label %363, !dbg !3342

359:                                              ; preds = %345, %345, %345, %345, %345
  call void @llvm.dbg.value(metadata i8 1, metadata !2997, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i64 0, metadata !2994, metadata !DIExpression()), !dbg !3281
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #42, !dbg !3307
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #42, !dbg !3308
  br label %670

360:                                              ; preds = %323, %330
  %361 = phi i1 [ false, %323 ], [ true, %330 ]
  %362 = phi i8 [ 1, %323 ], [ 0, %330 ]
  call void @llvm.dbg.value(metadata i8 %362, metadata !2997, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i64 0, metadata !2994, metadata !DIExpression()), !dbg !3281
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #42, !dbg !3307
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #42, !dbg !3308
  call void @llvm.dbg.value(metadata i64 %324, metadata !2965, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i1 %361, metadata !2992, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3133
  br label %368, !dbg !3286

363:                                              ; preds = %331, %337, %354
  %364 = phi i64 [ %326, %354 ], [ %333, %331 ], [ %325, %337 ]
  %365 = phi i8 [ %358, %354 ], [ 0, %337 ], [ 0, %331 ]
  call void @llvm.dbg.value(metadata i8 %365, metadata !2997, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i64 %364, metadata !2994, metadata !DIExpression()), !dbg !3281
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #42, !dbg !3307
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #42, !dbg !3308
  call void @llvm.dbg.value(metadata i64 %324, metadata !2965, metadata !DIExpression()), !dbg !3024
  %366 = icmp eq i8 %365, 0, !dbg !3285
  call void @llvm.dbg.value(metadata i1 %366, metadata !2992, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3133
  %367 = icmp ugt i64 %364, 1, !dbg !3343
  br i1 %367, label %374, label %368, !dbg !3286

368:                                              ; preds = %329, %360, %309, %363
  %369 = phi i1 [ %318, %309 ], [ %366, %363 ], [ %361, %360 ], [ true, %329 ]
  %370 = phi i8 [ %317, %309 ], [ %365, %363 ], [ %362, %360 ], [ 0, %329 ]
  %371 = phi i64 [ 1, %309 ], [ %364, %363 ], [ 0, %360 ], [ 0, %329 ]
  %372 = phi i64 [ %171, %309 ], [ %324, %363 ], [ %324, %360 ], [ %324, %329 ]
  %373 = select i1 %125, i1 %369, i1 false, !dbg !3344
  br i1 %373, label %374, label %480, !dbg !3344

374:                                              ; preds = %368, %363
  %375 = phi i1 [ true, %368 ], [ %366, %363 ]
  %376 = phi i8 [ %370, %368 ], [ %365, %363 ]
  %377 = phi i64 [ %371, %368 ], [ %364, %363 ]
  %378 = phi i64 [ %372, %368 ], [ %324, %363 ]
  %379 = add i64 %377, %145, !dbg !3345
  call void @llvm.dbg.value(metadata i64 %379, metadata !3014, metadata !DIExpression()), !dbg !3346
  %380 = select i1 %125, i1 %375, i1 false
  br label %381, !dbg !3347

381:                                              ; preds = %474, %374
  %382 = phi i64 [ %140, %374 ], [ %475, %474 ], !dbg !3024
  %383 = phi i8 [ %144, %374 ], [ %470, %474 ], !dbg !3125
  %384 = phi i64 [ %145, %374 ], [ %449, %474 ], !dbg !3123
  %385 = phi i8 [ %173, %374 ], [ %446, %474 ], !dbg !3133
  %386 = phi i8 [ 0, %374 ], [ %447, %474 ], !dbg !3348
  %387 = phi i8 [ %175, %374 ], [ %477, %474 ], !dbg !3133
  call void @llvm.dbg.value(metadata i8 %387, metadata !2993, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.value(metadata i8 %386, metadata !2991, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.value(metadata i8 %385, metadata !2988, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.value(metadata i64 %384, metadata !2986, metadata !DIExpression()), !dbg !3123
  call void @llvm.dbg.value(metadata i8 %383, metadata !2980, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i64 %382, metadata !2972, metadata !DIExpression()), !dbg !3024
  br i1 %380, label %388, label %434, !dbg !3349

388:                                              ; preds = %381
  br i1 %132, label %389, label %679, !dbg !3354

389:                                              ; preds = %388
  call void @llvm.dbg.value(metadata i8 1, metadata !2991, metadata !DIExpression()), !dbg !3133
  %390 = and i8 %383, 1, !dbg !3357
  %391 = icmp eq i8 %390, 0, !dbg !3357
  %392 = select i1 %133, i1 %391, i1 false, !dbg !3357
  br i1 %392, label %393, label %409, !dbg !3357

393:                                              ; preds = %389
  %394 = icmp ult i64 %382, %146, !dbg !3359
  br i1 %394, label %395, label %397, !dbg !3363

395:                                              ; preds = %393
  %396 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !3359
  store i8 39, ptr %396, align 1, !dbg !3359, !tbaa !945
  br label %397, !dbg !3359

397:                                              ; preds = %395, %393
  %398 = add i64 %382, 1, !dbg !3363
  call void @llvm.dbg.value(metadata i64 %398, metadata !2972, metadata !DIExpression()), !dbg !3024
  %399 = icmp ult i64 %398, %146, !dbg !3364
  br i1 %399, label %400, label %402, !dbg !3367

400:                                              ; preds = %397
  %401 = getelementptr inbounds i8, ptr %0, i64 %398, !dbg !3364
  store i8 36, ptr %401, align 1, !dbg !3364, !tbaa !945
  br label %402, !dbg !3364

402:                                              ; preds = %400, %397
  %403 = add i64 %382, 2, !dbg !3367
  call void @llvm.dbg.value(metadata i64 %403, metadata !2972, metadata !DIExpression()), !dbg !3024
  %404 = icmp ult i64 %403, %146, !dbg !3368
  br i1 %404, label %405, label %407, !dbg !3371

405:                                              ; preds = %402
  %406 = getelementptr inbounds i8, ptr %0, i64 %403, !dbg !3368
  store i8 39, ptr %406, align 1, !dbg !3368, !tbaa !945
  br label %407, !dbg !3368

407:                                              ; preds = %405, %402
  %408 = add i64 %382, 3, !dbg !3371
  call void @llvm.dbg.value(metadata i64 %408, metadata !2972, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i8 1, metadata !2980, metadata !DIExpression()), !dbg !3024
  br label %409, !dbg !3372

409:                                              ; preds = %389, %407
  %410 = phi i64 [ %408, %407 ], [ %382, %389 ], !dbg !3024
  %411 = phi i8 [ 1, %407 ], [ %383, %389 ], !dbg !3024
  call void @llvm.dbg.value(metadata i8 %411, metadata !2980, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i64 %410, metadata !2972, metadata !DIExpression()), !dbg !3024
  %412 = icmp ult i64 %410, %146, !dbg !3373
  br i1 %412, label %413, label %415, !dbg !3376

413:                                              ; preds = %409
  %414 = getelementptr inbounds i8, ptr %0, i64 %410, !dbg !3373
  store i8 92, ptr %414, align 1, !dbg !3373, !tbaa !945
  br label %415, !dbg !3373

415:                                              ; preds = %413, %409
  %416 = add i64 %410, 1, !dbg !3376
  call void @llvm.dbg.value(metadata i64 %416, metadata !2972, metadata !DIExpression()), !dbg !3024
  %417 = icmp ult i64 %416, %146, !dbg !3377
  br i1 %417, label %418, label %422, !dbg !3380

418:                                              ; preds = %415
  %419 = lshr i8 %387, 6
  %420 = or i8 %419, 48, !dbg !3377
  %421 = getelementptr inbounds i8, ptr %0, i64 %416, !dbg !3377
  store i8 %420, ptr %421, align 1, !dbg !3377, !tbaa !945
  br label %422, !dbg !3377

422:                                              ; preds = %418, %415
  %423 = add i64 %410, 2, !dbg !3380
  call void @llvm.dbg.value(metadata i64 %423, metadata !2972, metadata !DIExpression()), !dbg !3024
  %424 = icmp ult i64 %423, %146, !dbg !3381
  br i1 %424, label %425, label %430, !dbg !3384

425:                                              ; preds = %422
  %426 = lshr i8 %387, 3
  %427 = and i8 %426, 7, !dbg !3381
  %428 = or i8 %427, 48, !dbg !3381
  %429 = getelementptr inbounds i8, ptr %0, i64 %423, !dbg !3381
  store i8 %428, ptr %429, align 1, !dbg !3381, !tbaa !945
  br label %430, !dbg !3381

430:                                              ; preds = %425, %422
  %431 = add i64 %410, 3, !dbg !3384
  call void @llvm.dbg.value(metadata i64 %431, metadata !2972, metadata !DIExpression()), !dbg !3024
  %432 = and i8 %387, 7, !dbg !3385
  %433 = or i8 %432, 48, !dbg !3386
  call void @llvm.dbg.value(metadata i8 %433, metadata !2993, metadata !DIExpression()), !dbg !3133
  br label %443, !dbg !3387

434:                                              ; preds = %381
  %435 = and i8 %385, 1, !dbg !3388
  %436 = icmp eq i8 %435, 0, !dbg !3388
  br i1 %436, label %443, label %437, !dbg !3390

437:                                              ; preds = %434
  %438 = icmp ult i64 %382, %146, !dbg !3391
  br i1 %438, label %439, label %441, !dbg !3395

439:                                              ; preds = %437
  %440 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !3391
  store i8 92, ptr %440, align 1, !dbg !3391, !tbaa !945
  br label %441, !dbg !3391

441:                                              ; preds = %439, %437
  %442 = add i64 %382, 1, !dbg !3395
  call void @llvm.dbg.value(metadata i64 %442, metadata !2972, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i8 0, metadata !2988, metadata !DIExpression()), !dbg !3133
  br label %443, !dbg !3396

443:                                              ; preds = %434, %441, %430
  %444 = phi i64 [ %442, %441 ], [ %382, %434 ], [ %431, %430 ], !dbg !3024
  %445 = phi i8 [ %383, %441 ], [ %383, %434 ], [ %411, %430 ], !dbg !3125
  %446 = phi i8 [ 0, %441 ], [ %385, %434 ], [ %385, %430 ], !dbg !3133
  %447 = phi i8 [ %386, %441 ], [ %386, %434 ], [ 1, %430 ], !dbg !3133
  %448 = phi i8 [ %387, %441 ], [ %387, %434 ], [ %433, %430 ], !dbg !3133
  call void @llvm.dbg.value(metadata i8 %448, metadata !2993, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.value(metadata i8 %447, metadata !2991, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.value(metadata i8 %446, metadata !2988, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.value(metadata i8 %445, metadata !2980, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i64 %444, metadata !2972, metadata !DIExpression()), !dbg !3024
  %449 = add i64 %384, 1, !dbg !3397
  %450 = icmp ugt i64 %379, %449, !dbg !3399
  br i1 %450, label %451, label %478, !dbg !3400

451:                                              ; preds = %443
  %452 = and i8 %445, 1, !dbg !3401
  %453 = icmp ne i8 %452, 0, !dbg !3401
  %454 = and i8 %447, 1, !dbg !3401
  %455 = icmp eq i8 %454, 0, !dbg !3401
  %456 = select i1 %453, i1 %455, i1 false, !dbg !3401
  br i1 %456, label %457, label %468, !dbg !3401

457:                                              ; preds = %451
  %458 = icmp ult i64 %444, %146, !dbg !3404
  br i1 %458, label %459, label %461, !dbg !3408

459:                                              ; preds = %457
  %460 = getelementptr inbounds i8, ptr %0, i64 %444, !dbg !3404
  store i8 39, ptr %460, align 1, !dbg !3404, !tbaa !945
  br label %461, !dbg !3404

461:                                              ; preds = %459, %457
  %462 = add i64 %444, 1, !dbg !3408
  call void @llvm.dbg.value(metadata i64 %462, metadata !2972, metadata !DIExpression()), !dbg !3024
  %463 = icmp ult i64 %462, %146, !dbg !3409
  br i1 %463, label %464, label %466, !dbg !3412

464:                                              ; preds = %461
  %465 = getelementptr inbounds i8, ptr %0, i64 %462, !dbg !3409
  store i8 39, ptr %465, align 1, !dbg !3409, !tbaa !945
  br label %466, !dbg !3409

466:                                              ; preds = %464, %461
  %467 = add i64 %444, 2, !dbg !3412
  call void @llvm.dbg.value(metadata i64 %467, metadata !2972, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i8 0, metadata !2980, metadata !DIExpression()), !dbg !3024
  br label %468, !dbg !3413

468:                                              ; preds = %451, %466
  %469 = phi i64 [ %467, %466 ], [ %444, %451 ], !dbg !3414
  %470 = phi i8 [ 0, %466 ], [ %445, %451 ], !dbg !3024
  call void @llvm.dbg.value(metadata i8 %470, metadata !2980, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i64 %469, metadata !2972, metadata !DIExpression()), !dbg !3024
  %471 = icmp ult i64 %469, %146, !dbg !3415
  br i1 %471, label %472, label %474, !dbg !3418

472:                                              ; preds = %468
  %473 = getelementptr inbounds i8, ptr %0, i64 %469, !dbg !3415
  store i8 %448, ptr %473, align 1, !dbg !3415, !tbaa !945
  br label %474, !dbg !3415

474:                                              ; preds = %472, %468
  %475 = add i64 %469, 1, !dbg !3418
  call void @llvm.dbg.value(metadata i64 %475, metadata !2972, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i64 %449, metadata !2986, metadata !DIExpression()), !dbg !3123
  %476 = getelementptr inbounds i8, ptr %2, i64 %449, !dbg !3419
  %477 = load i8, ptr %476, align 1, !dbg !3419, !tbaa !945
  call void @llvm.dbg.value(metadata i8 %477, metadata !2993, metadata !DIExpression()), !dbg !3133
  br label %381, !dbg !3420, !llvm.loop !3421

478:                                              ; preds = %443
  %479 = and i8 %376, 1, !dbg !3133
  call void @llvm.dbg.value(metadata i8 %448, metadata !2993, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.value(metadata i8 %479, metadata !2992, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.value(metadata i8 %447, metadata !2991, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.value(metadata i8 %446, metadata !2988, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.value(metadata i64 %384, metadata !2986, metadata !DIExpression()), !dbg !3123
  call void @llvm.dbg.value(metadata i8 %445, metadata !2980, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i64 %444, metadata !2972, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i64 %378, metadata !2965, metadata !DIExpression()), !dbg !3024
  br label %573

480:                                              ; preds = %368, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %276, %206, %209, %223, %285, %306, %283, %280, %277, %226, %227, %261, %237, %232, %229, %228
  %481 = phi i64 [ %171, %306 ], [ %171, %285 ], [ %171, %283 ], [ %171, %280 ], [ -1, %277 ], [ %171, %226 ], [ %171, %237 ], [ %171, %261 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %276 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %372, %368 ], !dbg !3424
  %482 = phi i64 [ %307, %306 ], [ %140, %285 ], [ %140, %283 ], [ %140, %280 ], [ %140, %277 ], [ %140, %226 ], [ %140, %237 ], [ %262, %261 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %276 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %368 ], !dbg !3024
  %483 = phi i64 [ %291, %306 ], [ %141, %285 ], [ %141, %283 ], [ %141, %280 ], [ %141, %277 ], [ %141, %226 ], [ %141, %237 ], [ %141, %261 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %276 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %368 ], !dbg !3029
  %484 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %142, %283 ], [ %142, %280 ], [ %142, %277 ], [ %142, %226 ], [ %142, %237 ], [ %142, %261 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %276 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %368 ], !dbg !3024
  %485 = phi i8 [ 0, %306 ], [ %144, %285 ], [ %144, %283 ], [ %144, %280 ], [ %144, %277 ], [ %144, %226 ], [ %144, %237 ], [ %144, %261 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %276 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %368 ], !dbg !3024
  %486 = phi i64 [ %145, %306 ], [ %145, %285 ], [ %145, %283 ], [ %145, %280 ], [ %145, %277 ], [ %145, %226 ], [ %145, %237 ], [ %230, %261 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %276 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %368 ], !dbg !3123
  %487 = phi i8 [ 0, %306 ], [ 0, %285 ], [ 0, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %276 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %368 ], !dbg !3133
  %488 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %284, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %276 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %370, %368 ], !dbg !3133
  %489 = phi i8 [ 39, %306 ], [ 39, %285 ], [ %175, %283 ], [ %175, %280 ], [ %175, %277 ], [ 63, %226 ], [ 63, %237 ], [ %239, %261 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %276 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %368 ], !dbg !3133
  %490 = phi i64 [ %292, %306 ], [ %146, %285 ], [ %146, %283 ], [ %146, %280 ], [ %146, %277 ], [ %146, %226 ], [ %146, %237 ], [ %146, %261 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %276 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %368 ]
  call void @llvm.dbg.value(metadata i64 %490, metadata !2963, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i8 %489, metadata !2993, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.value(metadata i8 %488, metadata !2992, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.value(metadata i8 %487, metadata !2991, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.value(metadata i8 %173, metadata !2988, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.value(metadata i64 %486, metadata !2986, metadata !DIExpression()), !dbg !3123
  call void @llvm.dbg.value(metadata i8 %485, metadata !2980, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i8 %484, metadata !2978, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i64 %483, metadata !2973, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i64 %482, metadata !2972, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i64 %481, metadata !2965, metadata !DIExpression()), !dbg !3024
  br i1 %127, label %502, label %491, !dbg !3425

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
  br i1 %137, label %503, label %524, !dbg !3427

502:                                              ; preds = %480
  br i1 %27, label %524, label %503, !dbg !3428

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
  %514 = lshr i8 %505, 5, !dbg !3429
  %515 = zext i8 %514 to i64, !dbg !3429
  %516 = getelementptr inbounds i32, ptr %6, i64 %515, !dbg !3430
  %517 = load i32, ptr %516, align 4, !dbg !3430, !tbaa !936
  %518 = and i8 %505, 31, !dbg !3431
  %519 = zext i8 %518 to i32, !dbg !3431
  %520 = shl nuw i32 1, %519, !dbg !3432
  %521 = and i32 %517, %520, !dbg !3432
  %522 = icmp eq i32 %521, 0, !dbg !3432
  %523 = and i1 %172, %522, !dbg !3433
  br i1 %523, label %573, label %535, !dbg !3433

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
  br i1 %172, label %573, label %535, !dbg !3434

535:                                              ; preds = %271, %274, %524, %503
  %536 = phi i64 [ %513, %503 ], [ %534, %524 ], [ %171, %274 ], [ %171, %271 ], !dbg !3424
  %537 = phi i64 [ %512, %503 ], [ %533, %524 ], [ %140, %274 ], [ %140, %271 ], !dbg !3024
  %538 = phi i64 [ %511, %503 ], [ %532, %524 ], [ %141, %274 ], [ %141, %271 ], !dbg !3029
  %539 = phi i8 [ %510, %503 ], [ %531, %524 ], [ %142, %274 ], [ %142, %271 ], !dbg !3033
  %540 = phi i8 [ %509, %503 ], [ %530, %524 ], [ %144, %274 ], [ %144, %271 ], !dbg !3125
  %541 = phi i64 [ %508, %503 ], [ %529, %524 ], [ %145, %274 ], [ %145, %271 ], !dbg !3435
  %542 = phi i8 [ %506, %503 ], [ %527, %524 ], [ 0, %274 ], [ 0, %271 ], !dbg !3133
  %543 = phi i8 [ %505, %503 ], [ %526, %524 ], [ %275, %274 ], [ 92, %271 ], !dbg !3133
  %544 = phi i64 [ %504, %503 ], [ %525, %524 ], [ %146, %274 ], [ %146, %271 ]
  call void @llvm.dbg.value(metadata i64 %544, metadata !2963, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i8 %543, metadata !2993, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.value(metadata i8 %542, metadata !2992, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.value(metadata i64 %541, metadata !2986, metadata !DIExpression()), !dbg !3123
  call void @llvm.dbg.value(metadata i8 %540, metadata !2980, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i8 %539, metadata !2978, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i64 %538, metadata !2973, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i64 %537, metadata !2972, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i64 %536, metadata !2965, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.label(metadata !3021), !dbg !3436
  br i1 %132, label %545, label %674, !dbg !3437

545:                                              ; preds = %535
  call void @llvm.dbg.value(metadata i8 1, metadata !2991, metadata !DIExpression()), !dbg !3133
  %546 = and i8 %540, 1, !dbg !3439
  %547 = icmp eq i8 %546, 0, !dbg !3439
  %548 = select i1 %133, i1 %547, i1 false, !dbg !3439
  br i1 %548, label %549, label %565, !dbg !3439

549:                                              ; preds = %545
  %550 = icmp ult i64 %537, %544, !dbg !3441
  br i1 %550, label %551, label %553, !dbg !3445

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, ptr %0, i64 %537, !dbg !3441
  store i8 39, ptr %552, align 1, !dbg !3441, !tbaa !945
  br label %553, !dbg !3441

553:                                              ; preds = %551, %549
  %554 = add i64 %537, 1, !dbg !3445
  call void @llvm.dbg.value(metadata i64 %554, metadata !2972, metadata !DIExpression()), !dbg !3024
  %555 = icmp ult i64 %554, %544, !dbg !3446
  br i1 %555, label %556, label %558, !dbg !3449

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, ptr %0, i64 %554, !dbg !3446
  store i8 36, ptr %557, align 1, !dbg !3446, !tbaa !945
  br label %558, !dbg !3446

558:                                              ; preds = %556, %553
  %559 = add i64 %537, 2, !dbg !3449
  call void @llvm.dbg.value(metadata i64 %559, metadata !2972, metadata !DIExpression()), !dbg !3024
  %560 = icmp ult i64 %559, %544, !dbg !3450
  br i1 %560, label %561, label %563, !dbg !3453

561:                                              ; preds = %558
  %562 = getelementptr inbounds i8, ptr %0, i64 %559, !dbg !3450
  store i8 39, ptr %562, align 1, !dbg !3450, !tbaa !945
  br label %563, !dbg !3450

563:                                              ; preds = %561, %558
  %564 = add i64 %537, 3, !dbg !3453
  call void @llvm.dbg.value(metadata i64 %564, metadata !2972, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i8 1, metadata !2980, metadata !DIExpression()), !dbg !3024
  br label %565, !dbg !3454

565:                                              ; preds = %545, %563
  %566 = phi i64 [ %564, %563 ], [ %537, %545 ], !dbg !3133
  %567 = phi i8 [ 1, %563 ], [ %540, %545 ], !dbg !3024
  call void @llvm.dbg.value(metadata i8 %567, metadata !2980, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i64 %566, metadata !2972, metadata !DIExpression()), !dbg !3024
  %568 = icmp ult i64 %566, %544, !dbg !3455
  br i1 %568, label %569, label %571, !dbg !3458

569:                                              ; preds = %565
  %570 = getelementptr inbounds i8, ptr %0, i64 %566, !dbg !3455
  store i8 92, ptr %570, align 1, !dbg !3455, !tbaa !945
  br label %571, !dbg !3455

571:                                              ; preds = %565, %569
  %572 = add i64 %566, 1, !dbg !3458
  call void @llvm.dbg.value(metadata i64 %544, metadata !2963, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i8 %543, metadata !2993, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.value(metadata i8 %542, metadata !2992, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.value(metadata i8 1, metadata !2991, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.value(metadata i64 %541, metadata !2986, metadata !DIExpression()), !dbg !3123
  call void @llvm.dbg.value(metadata i8 %567, metadata !2980, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i8 %539, metadata !2978, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i64 %538, metadata !2973, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i64 %572, metadata !2972, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i64 %536, metadata !2965, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.label(metadata !3022), !dbg !3459
  br label %600, !dbg !3460

573:                                              ; preds = %478, %503, %269, %271, %524
  %574 = phi i64 [ %378, %478 ], [ %534, %524 ], [ %171, %269 ], [ %171, %271 ], [ %513, %503 ], !dbg !3424
  %575 = phi i64 [ %444, %478 ], [ %533, %524 ], [ %140, %269 ], [ %140, %271 ], [ %512, %503 ], !dbg !3024
  %576 = phi i64 [ %141, %478 ], [ %532, %524 ], [ %141, %269 ], [ %141, %271 ], [ %511, %503 ], !dbg !3029
  %577 = phi i8 [ %142, %478 ], [ %531, %524 ], [ %142, %269 ], [ %142, %271 ], [ %510, %503 ], !dbg !3033
  %578 = phi i8 [ %445, %478 ], [ %530, %524 ], [ %144, %269 ], [ %144, %271 ], [ %509, %503 ], !dbg !3125
  %579 = phi i64 [ %384, %478 ], [ %529, %524 ], [ %145, %269 ], [ %145, %271 ], [ %508, %503 ], !dbg !3435
  %580 = phi i8 [ %447, %478 ], [ %528, %524 ], [ 0, %269 ], [ 0, %271 ], [ %507, %503 ], !dbg !3133
  %581 = phi i8 [ %479, %478 ], [ %527, %524 ], [ 0, %269 ], [ 0, %271 ], [ %506, %503 ], !dbg !3133
  %582 = phi i8 [ %448, %478 ], [ %526, %524 ], [ 92, %269 ], [ 92, %271 ], [ %505, %503 ], !dbg !3463
  %583 = phi i64 [ %146, %478 ], [ %525, %524 ], [ %146, %269 ], [ %146, %271 ], [ %504, %503 ]
  call void @llvm.dbg.value(metadata i64 %583, metadata !2963, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i8 %582, metadata !2993, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.value(metadata i8 %581, metadata !2992, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.value(metadata i8 %580, metadata !2991, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.value(metadata i64 %579, metadata !2986, metadata !DIExpression()), !dbg !3123
  call void @llvm.dbg.value(metadata i8 %578, metadata !2980, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i8 %577, metadata !2978, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i64 %576, metadata !2973, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i64 %575, metadata !2972, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i64 %574, metadata !2965, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.label(metadata !3022), !dbg !3459
  %584 = and i8 %578, 1, !dbg !3460
  %585 = icmp ne i8 %584, 0, !dbg !3460
  %586 = and i8 %580, 1, !dbg !3460
  %587 = icmp eq i8 %586, 0, !dbg !3460
  %588 = select i1 %585, i1 %587, i1 false, !dbg !3460
  br i1 %588, label %589, label %600, !dbg !3460

589:                                              ; preds = %573
  %590 = icmp ult i64 %575, %583, !dbg !3464
  br i1 %590, label %591, label %593, !dbg !3468

591:                                              ; preds = %589
  %592 = getelementptr inbounds i8, ptr %0, i64 %575, !dbg !3464
  store i8 39, ptr %592, align 1, !dbg !3464, !tbaa !945
  br label %593, !dbg !3464

593:                                              ; preds = %591, %589
  %594 = add i64 %575, 1, !dbg !3468
  call void @llvm.dbg.value(metadata i64 %594, metadata !2972, metadata !DIExpression()), !dbg !3024
  %595 = icmp ult i64 %594, %583, !dbg !3469
  br i1 %595, label %596, label %598, !dbg !3472

596:                                              ; preds = %593
  %597 = getelementptr inbounds i8, ptr %0, i64 %594, !dbg !3469
  store i8 39, ptr %597, align 1, !dbg !3469, !tbaa !945
  br label %598, !dbg !3469

598:                                              ; preds = %596, %593
  %599 = add i64 %575, 2, !dbg !3472
  call void @llvm.dbg.value(metadata i64 %599, metadata !2972, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i8 0, metadata !2980, metadata !DIExpression()), !dbg !3024
  br label %600, !dbg !3473

600:                                              ; preds = %571, %573, %598
  %601 = phi i64 [ %583, %598 ], [ %583, %573 ], [ %544, %571 ]
  %602 = phi i8 [ %582, %598 ], [ %582, %573 ], [ %543, %571 ]
  %603 = phi i8 [ %581, %598 ], [ %581, %573 ], [ %542, %571 ]
  %604 = phi i64 [ %579, %598 ], [ %579, %573 ], [ %541, %571 ]
  %605 = phi i8 [ %577, %598 ], [ %577, %573 ], [ %539, %571 ]
  %606 = phi i64 [ %576, %598 ], [ %576, %573 ], [ %538, %571 ]
  %607 = phi i64 [ %574, %598 ], [ %574, %573 ], [ %536, %571 ]
  %608 = phi i64 [ %599, %598 ], [ %575, %573 ], [ %572, %571 ], !dbg !3133
  %609 = phi i8 [ 0, %598 ], [ %578, %573 ], [ %567, %571 ], !dbg !3024
  call void @llvm.dbg.value(metadata i8 %609, metadata !2980, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i64 %608, metadata !2972, metadata !DIExpression()), !dbg !3024
  %610 = icmp ult i64 %608, %601, !dbg !3474
  br i1 %610, label %611, label %613, !dbg !3477

611:                                              ; preds = %600
  %612 = getelementptr inbounds i8, ptr %0, i64 %608, !dbg !3474
  store i8 %602, ptr %612, align 1, !dbg !3474, !tbaa !945
  br label %613, !dbg !3474

613:                                              ; preds = %611, %600
  %614 = add i64 %608, 1, !dbg !3477
  call void @llvm.dbg.value(metadata i64 %614, metadata !2972, metadata !DIExpression()), !dbg !3024
  %615 = icmp eq i8 %603, 0, !dbg !3478
  %616 = select i1 %615, i8 0, i8 %143, !dbg !3480
  call void @llvm.dbg.value(metadata i8 %616, metadata !2979, metadata !DIExpression()), !dbg !3024
  br label %617, !dbg !3481

617:                                              ; preds = %225, %613
  %618 = phi i64 [ %607, %613 ], [ %171, %225 ], !dbg !3424
  %619 = phi i64 [ %614, %613 ], [ %140, %225 ], !dbg !3024
  %620 = phi i64 [ %606, %613 ], [ %141, %225 ], !dbg !3029
  %621 = phi i8 [ %605, %613 ], [ %142, %225 ], !dbg !3033
  %622 = phi i8 [ %616, %613 ], [ %143, %225 ], !dbg !3034
  %623 = phi i8 [ %609, %613 ], [ %144, %225 ], !dbg !3125
  %624 = phi i64 [ %604, %613 ], [ %145, %225 ], !dbg !3435
  %625 = phi i64 [ %601, %613 ], [ %146, %225 ]
  call void @llvm.dbg.value(metadata i64 %625, metadata !2963, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i64 %624, metadata !2986, metadata !DIExpression()), !dbg !3123
  call void @llvm.dbg.value(metadata i8 %623, metadata !2980, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i8 %622, metadata !2979, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i8 %621, metadata !2978, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i64 %620, metadata !2973, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i64 %619, metadata !2972, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i64 %618, metadata !2965, metadata !DIExpression()), !dbg !3024
  %626 = add i64 %624, 1, !dbg !3482
  call void @llvm.dbg.value(metadata i64 %626, metadata !2986, metadata !DIExpression()), !dbg !3123
  br label %138, !dbg !3483, !llvm.loop !3484

627:                                              ; preds = %152, %148
  call void @llvm.dbg.value(metadata i64 %146, metadata !2963, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i8 %143, metadata !2979, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i8 %142, metadata !2978, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i64 %141, metadata !2973, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i64 %140, metadata !2972, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i64 %139, metadata !2965, metadata !DIExpression()), !dbg !3024
  %628 = icmp eq i64 %140, 0, !dbg !3486
  %629 = and i1 %133, %628, !dbg !3488
  %630 = xor i1 %629, true, !dbg !3488
  %631 = select i1 %630, i1 true, i1 %132, !dbg !3488
  br i1 %631, label %632, label %670, !dbg !3488

632:                                              ; preds = %627
  %633 = select i1 %133, i1 %132, i1 false, !dbg !3489
  %634 = and i8 %142, 1
  %635 = icmp ne i8 %634, 0
  %636 = select i1 %633, i1 %635, i1 false, !dbg !3489
  br i1 %636, label %637, label %646, !dbg !3489

637:                                              ; preds = %632
  %638 = and i8 %143, 1, !dbg !3491
  %639 = icmp eq i8 %638, 0, !dbg !3491
  br i1 %639, label %642, label %640, !dbg !3494

640:                                              ; preds = %637
  %641 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %117, ptr noundef %118), !dbg !3495
  br label %694, !dbg !3496

642:                                              ; preds = %637
  %643 = icmp eq i64 %146, 0, !dbg !3497
  %644 = icmp ne i64 %141, 0
  %645 = select i1 %643, i1 %644, i1 false, !dbg !3499
  br i1 %645, label %28, label %646, !dbg !3499

646:                                              ; preds = %642, %632
  %647 = phi i1 [ true, %642 ], [ %132, %632 ]
  %648 = icmp ne ptr %120, null, !dbg !3500
  %649 = select i1 %648, i1 %647, i1 false, !dbg !3502
  br i1 %649, label %650, label %665, !dbg !3502

650:                                              ; preds = %646
  call void @llvm.dbg.value(metadata ptr %120, metadata !2974, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i64 %140, metadata !2972, metadata !DIExpression()), !dbg !3024
  %651 = load i8, ptr %120, align 1, !dbg !3503, !tbaa !945
  %652 = icmp eq i8 %651, 0, !dbg !3506
  br i1 %652, label %665, label %653, !dbg !3506

653:                                              ; preds = %650, %660
  %654 = phi i8 [ %663, %660 ], [ %651, %650 ]
  %655 = phi ptr [ %662, %660 ], [ %120, %650 ]
  %656 = phi i64 [ %661, %660 ], [ %140, %650 ]
  call void @llvm.dbg.value(metadata ptr %655, metadata !2974, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i64 %656, metadata !2972, metadata !DIExpression()), !dbg !3024
  %657 = icmp ult i64 %656, %146, !dbg !3507
  br i1 %657, label %658, label %660, !dbg !3510

658:                                              ; preds = %653
  %659 = getelementptr inbounds i8, ptr %0, i64 %656, !dbg !3507
  store i8 %654, ptr %659, align 1, !dbg !3507, !tbaa !945
  br label %660, !dbg !3507

660:                                              ; preds = %658, %653
  %661 = add i64 %656, 1, !dbg !3510
  call void @llvm.dbg.value(metadata i64 %661, metadata !2972, metadata !DIExpression()), !dbg !3024
  %662 = getelementptr inbounds i8, ptr %655, i64 1, !dbg !3511
  call void @llvm.dbg.value(metadata ptr %662, metadata !2974, metadata !DIExpression()), !dbg !3024
  %663 = load i8, ptr %662, align 1, !dbg !3503, !tbaa !945
  %664 = icmp eq i8 %663, 0, !dbg !3506
  br i1 %664, label %665, label %653, !dbg !3506, !llvm.loop !3512

665:                                              ; preds = %660, %650, %646
  %666 = phi i64 [ %140, %646 ], [ %140, %650 ], [ %661, %660 ], !dbg !3106
  call void @llvm.dbg.value(metadata i64 %666, metadata !2972, metadata !DIExpression()), !dbg !3024
  %667 = icmp ult i64 %666, %146, !dbg !3514
  br i1 %667, label %668, label %694, !dbg !3516

668:                                              ; preds = %665
  %669 = getelementptr inbounds i8, ptr %0, i64 %666, !dbg !3517
  store i8 0, ptr %669, align 1, !dbg !3518, !tbaa !945
  br label %694, !dbg !3517

670:                                              ; preds = %627, %227, %269, %272, %283, %286, %359
  %671 = phi i64 [ %324, %359 ], [ %171, %286 ], [ %171, %283 ], [ %171, %272 ], [ %171, %269 ], [ %171, %227 ], [ %139, %627 ]
  call void @llvm.dbg.label(metadata !3023), !dbg !3519
  %672 = icmp eq i8 %124, 0, !dbg !3520
  %673 = select i1 %672, i32 2, i32 4, !dbg !3520
  br label %684, !dbg !3520

674:                                              ; preds = %177, %535
  %675 = phi i64 [ %146, %177 ], [ %544, %535 ]
  %676 = phi i64 [ %171, %177 ], [ %536, %535 ]
  %677 = icmp eq i8 %124, 0, !dbg !3520
  %678 = select i1 %677, i32 2, i32 4, !dbg !3520
  br label %679, !dbg !3522

679:                                              ; preds = %388, %674
  %680 = phi i32 [ %678, %674 ], [ 4, %388 ]
  %681 = phi i64 [ %675, %674 ], [ %146, %388 ]
  %682 = phi i64 [ %676, %674 ], [ %378, %388 ]
  call void @llvm.dbg.label(metadata !3023), !dbg !3519
  %683 = icmp eq i32 %116, 2, !dbg !3522
  br i1 %683, label %684, label %688, !dbg !3520

684:                                              ; preds = %670, %679
  %685 = phi i32 [ %673, %670 ], [ %680, %679 ]
  %686 = phi i64 [ %671, %670 ], [ %682, %679 ]
  %687 = phi i64 [ %146, %670 ], [ %681, %679 ]
  br label %688, !dbg !3520

688:                                              ; preds = %241, %163, %679, %684
  %689 = phi i64 [ %686, %684 ], [ %682, %679 ], [ %161, %163 ], [ %171, %241 ]
  %690 = phi i64 [ %687, %684 ], [ %681, %679 ], [ %146, %163 ], [ %146, %241 ]
  %691 = phi i32 [ %685, %684 ], [ %116, %679 ], [ %116, %163 ], [ 5, %241 ]
  call void @llvm.dbg.value(metadata i32 %691, metadata !2966, metadata !DIExpression()), !dbg !3024
  %692 = and i32 %5, -3, !dbg !3523
  %693 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %690, ptr noundef %2, i64 noundef %689, i32 noundef %691, i32 noundef %692, ptr noundef null, ptr noundef %117, ptr noundef %118), !dbg !3524
  br label %694, !dbg !3525

694:                                              ; preds = %665, %668, %688, %640
  %695 = phi i64 [ %693, %688 ], [ %641, %640 ], [ %666, %668 ], [ %666, %665 ]
  ret i64 %695, !dbg !3526
}

; Function Attrs: nounwind
declare !dbg !3527 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !3530 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !3533 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #18 !dbg !3535 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3539, metadata !DIExpression()), !dbg !3542
  call void @llvm.dbg.value(metadata i64 %1, metadata !3540, metadata !DIExpression()), !dbg !3542
  call void @llvm.dbg.value(metadata ptr %2, metadata !3541, metadata !DIExpression()), !dbg !3542
  call void @llvm.dbg.value(metadata ptr %0, metadata !3543, metadata !DIExpression()), !dbg !3556
  call void @llvm.dbg.value(metadata i64 %1, metadata !3548, metadata !DIExpression()), !dbg !3556
  call void @llvm.dbg.value(metadata ptr null, metadata !3549, metadata !DIExpression()), !dbg !3556
  call void @llvm.dbg.value(metadata ptr %2, metadata !3550, metadata !DIExpression()), !dbg !3556
  %4 = icmp eq ptr %2, null, !dbg !3558
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !3558
  call void @llvm.dbg.value(metadata ptr %5, metadata !3551, metadata !DIExpression()), !dbg !3556
  %6 = tail call ptr @__errno_location() #45, !dbg !3559
  %7 = load i32, ptr %6, align 4, !dbg !3559, !tbaa !936
  call void @llvm.dbg.value(metadata i32 %7, metadata !3552, metadata !DIExpression()), !dbg !3556
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !3560
  %9 = load i32, ptr %8, align 4, !dbg !3560, !tbaa !2906
  %10 = or i32 %9, 1, !dbg !3561
  call void @llvm.dbg.value(metadata i32 %10, metadata !3553, metadata !DIExpression()), !dbg !3556
  %11 = load i32, ptr %5, align 8, !dbg !3562, !tbaa !2856
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3563
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3564
  %14 = load ptr, ptr %13, align 8, !dbg !3564, !tbaa !2927
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3565
  %16 = load ptr, ptr %15, align 8, !dbg !3565, !tbaa !2930
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !3566
  %18 = add i64 %17, 1, !dbg !3567
  call void @llvm.dbg.value(metadata i64 %18, metadata !3554, metadata !DIExpression()), !dbg !3556
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #47, !dbg !3568
  call void @llvm.dbg.value(metadata ptr %19, metadata !3555, metadata !DIExpression()), !dbg !3556
  %20 = load i32, ptr %5, align 8, !dbg !3569, !tbaa !2856
  %21 = load ptr, ptr %13, align 8, !dbg !3570, !tbaa !2927
  %22 = load ptr, ptr %15, align 8, !dbg !3571, !tbaa !2930
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !3572
  store i32 %7, ptr %6, align 4, !dbg !3573, !tbaa !936
  ret ptr %19, !dbg !3574
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #18 !dbg !3544 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3543, metadata !DIExpression()), !dbg !3575
  call void @llvm.dbg.value(metadata i64 %1, metadata !3548, metadata !DIExpression()), !dbg !3575
  call void @llvm.dbg.value(metadata ptr %2, metadata !3549, metadata !DIExpression()), !dbg !3575
  call void @llvm.dbg.value(metadata ptr %3, metadata !3550, metadata !DIExpression()), !dbg !3575
  %5 = icmp eq ptr %3, null, !dbg !3576
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !3576
  call void @llvm.dbg.value(metadata ptr %6, metadata !3551, metadata !DIExpression()), !dbg !3575
  %7 = tail call ptr @__errno_location() #45, !dbg !3577
  %8 = load i32, ptr %7, align 4, !dbg !3577, !tbaa !936
  call void @llvm.dbg.value(metadata i32 %8, metadata !3552, metadata !DIExpression()), !dbg !3575
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !3578
  %10 = load i32, ptr %9, align 4, !dbg !3578, !tbaa !2906
  %11 = icmp eq ptr %2, null, !dbg !3579
  %12 = zext i1 %11 to i32, !dbg !3579
  %13 = or i32 %10, %12, !dbg !3580
  call void @llvm.dbg.value(metadata i32 %13, metadata !3553, metadata !DIExpression()), !dbg !3575
  %14 = load i32, ptr %6, align 8, !dbg !3581, !tbaa !2856
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !3582
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3583
  %17 = load ptr, ptr %16, align 8, !dbg !3583, !tbaa !2927
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3584
  %19 = load ptr, ptr %18, align 8, !dbg !3584, !tbaa !2930
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !3585
  %21 = add i64 %20, 1, !dbg !3586
  call void @llvm.dbg.value(metadata i64 %21, metadata !3554, metadata !DIExpression()), !dbg !3575
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #47, !dbg !3587
  call void @llvm.dbg.value(metadata ptr %22, metadata !3555, metadata !DIExpression()), !dbg !3575
  %23 = load i32, ptr %6, align 8, !dbg !3588, !tbaa !2856
  %24 = load ptr, ptr %16, align 8, !dbg !3589, !tbaa !2927
  %25 = load ptr, ptr %18, align 8, !dbg !3590, !tbaa !2930
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !3591
  store i32 %8, ptr %7, align 4, !dbg !3592, !tbaa !936
  br i1 %11, label %28, label %27, !dbg !3593

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !3594, !tbaa !1319
  br label %28, !dbg !3596

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !3597
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #18 !dbg !3598 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !3603, !tbaa !866
  call void @llvm.dbg.value(metadata ptr %1, metadata !3600, metadata !DIExpression()), !dbg !3604
  call void @llvm.dbg.value(metadata i32 1, metadata !3601, metadata !DIExpression()), !dbg !3605
  %2 = load i32, ptr @nslots, align 4, !tbaa !936
  call void @llvm.dbg.value(metadata i32 1, metadata !3601, metadata !DIExpression()), !dbg !3605
  %3 = icmp sgt i32 %2, 1, !dbg !3606
  br i1 %3, label %4, label %6, !dbg !3608

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !3606
  br label %10, !dbg !3608

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !3609
  %8 = load ptr, ptr %7, align 8, !dbg !3609, !tbaa !3611
  %9 = icmp eq ptr %8, @slot0, !dbg !3613
  br i1 %9, label %17, label %16, !dbg !3614

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !3601, metadata !DIExpression()), !dbg !3605
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !3615
  %13 = load ptr, ptr %12, align 8, !dbg !3615, !tbaa !3611
  tail call void @free(ptr noundef %13) #42, !dbg !3616
  %14 = add nuw nsw i64 %11, 1, !dbg !3617
  call void @llvm.dbg.value(metadata i64 %14, metadata !3601, metadata !DIExpression()), !dbg !3605
  %15 = icmp eq i64 %14, %5, !dbg !3606
  br i1 %15, label %6, label %10, !dbg !3608, !llvm.loop !3618

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #42, !dbg !3620
  store i64 256, ptr @slotvec0, align 8, !dbg !3622, !tbaa !3623
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !3624, !tbaa !3611
  br label %17, !dbg !3625

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !3626
  br i1 %18, label %20, label %19, !dbg !3628

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #42, !dbg !3629
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !3631, !tbaa !866
  br label %20, !dbg !3632

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !3633, !tbaa !936
  ret void, !dbg !3634
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #18 !dbg !3635 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3637, metadata !DIExpression()), !dbg !3639
  call void @llvm.dbg.value(metadata ptr %1, metadata !3638, metadata !DIExpression()), !dbg !3639
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3640
  ret ptr %3, !dbg !3641
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #18 !dbg !3642 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3646, metadata !DIExpression()), !dbg !3662
  call void @llvm.dbg.value(metadata ptr %1, metadata !3647, metadata !DIExpression()), !dbg !3662
  call void @llvm.dbg.value(metadata i64 %2, metadata !3648, metadata !DIExpression()), !dbg !3662
  call void @llvm.dbg.value(metadata ptr %3, metadata !3649, metadata !DIExpression()), !dbg !3662
  %6 = tail call ptr @__errno_location() #45, !dbg !3663
  %7 = load i32, ptr %6, align 4, !dbg !3663, !tbaa !936
  call void @llvm.dbg.value(metadata i32 %7, metadata !3650, metadata !DIExpression()), !dbg !3662
  %8 = load ptr, ptr @slotvec, align 8, !dbg !3664, !tbaa !866
  call void @llvm.dbg.value(metadata ptr %8, metadata !3651, metadata !DIExpression()), !dbg !3662
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !3652, metadata !DIExpression()), !dbg !3662
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3665
  br i1 %9, label %10, label %11, !dbg !3665

10:                                               ; preds = %4
  tail call void @abort() #44, !dbg !3667
  unreachable, !dbg !3667

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !3668, !tbaa !936
  %13 = icmp sgt i32 %12, %0, !dbg !3669
  br i1 %13, label %32, label %14, !dbg !3670

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3671
  call void @llvm.dbg.value(metadata i1 %15, metadata !3653, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3672
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #42, !dbg !3673
  %16 = sext i32 %12 to i64, !dbg !3674
  call void @llvm.dbg.value(metadata i64 %16, metadata !3656, metadata !DIExpression()), !dbg !3672
  store i64 %16, ptr %5, align 8, !dbg !3675, !tbaa !1319
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3676
  %18 = add nuw nsw i32 %0, 1, !dbg !3677
  %19 = sub i32 %18, %12, !dbg !3678
  %20 = sext i32 %19 to i64, !dbg !3679
  call void @llvm.dbg.value(metadata ptr %5, metadata !3656, metadata !DIExpression(DW_OP_deref)), !dbg !3672
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #42, !dbg !3680
  call void @llvm.dbg.value(metadata ptr %21, metadata !3651, metadata !DIExpression()), !dbg !3662
  store ptr %21, ptr @slotvec, align 8, !dbg !3681, !tbaa !866
  br i1 %15, label %22, label %23, !dbg !3682

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3683, !tbaa.struct !3685
  br label %23, !dbg !3686

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3687, !tbaa !936
  %25 = sext i32 %24 to i64, !dbg !3688
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !3688
  %27 = load i64, ptr %5, align 8, !dbg !3689, !tbaa !1319
  call void @llvm.dbg.value(metadata i64 %27, metadata !3656, metadata !DIExpression()), !dbg !3672
  %28 = sub nsw i64 %27, %25, !dbg !3690
  %29 = shl i64 %28, 4, !dbg !3691
  call void @llvm.dbg.value(metadata ptr %26, metadata !3063, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata i32 0, metadata !3066, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata i64 %29, metadata !3067, metadata !DIExpression()), !dbg !3692
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #42, !dbg !3694
  %30 = load i64, ptr %5, align 8, !dbg !3695, !tbaa !1319
  call void @llvm.dbg.value(metadata i64 %30, metadata !3656, metadata !DIExpression()), !dbg !3672
  %31 = trunc i64 %30 to i32, !dbg !3695
  store i32 %31, ptr @nslots, align 4, !dbg !3696, !tbaa !936
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #42, !dbg !3697
  br label %32, !dbg !3698

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !3662
  call void @llvm.dbg.value(metadata ptr %33, metadata !3651, metadata !DIExpression()), !dbg !3662
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3699
  %36 = load i64, ptr %35, align 8, !dbg !3700, !tbaa !3623
  call void @llvm.dbg.value(metadata i64 %36, metadata !3657, metadata !DIExpression()), !dbg !3701
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3702
  %38 = load ptr, ptr %37, align 8, !dbg !3702, !tbaa !3611
  call void @llvm.dbg.value(metadata ptr %38, metadata !3659, metadata !DIExpression()), !dbg !3701
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3703
  %40 = load i32, ptr %39, align 4, !dbg !3703, !tbaa !2906
  %41 = or i32 %40, 1, !dbg !3704
  call void @llvm.dbg.value(metadata i32 %41, metadata !3660, metadata !DIExpression()), !dbg !3701
  %42 = load i32, ptr %3, align 8, !dbg !3705, !tbaa !2856
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3706
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3707
  %45 = load ptr, ptr %44, align 8, !dbg !3707, !tbaa !2927
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3708
  %47 = load ptr, ptr %46, align 8, !dbg !3708, !tbaa !2930
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3709
  call void @llvm.dbg.value(metadata i64 %48, metadata !3661, metadata !DIExpression()), !dbg !3701
  %49 = icmp ugt i64 %36, %48, !dbg !3710
  br i1 %49, label %60, label %50, !dbg !3712

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3713
  call void @llvm.dbg.value(metadata i64 %51, metadata !3657, metadata !DIExpression()), !dbg !3701
  store i64 %51, ptr %35, align 8, !dbg !3715, !tbaa !3623
  %52 = icmp eq ptr %38, @slot0, !dbg !3716
  br i1 %52, label %54, label %53, !dbg !3718

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #42, !dbg !3719
  br label %54, !dbg !3719

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #47, !dbg !3720
  call void @llvm.dbg.value(metadata ptr %55, metadata !3659, metadata !DIExpression()), !dbg !3701
  store ptr %55, ptr %37, align 8, !dbg !3721, !tbaa !3611
  %56 = load i32, ptr %3, align 8, !dbg !3722, !tbaa !2856
  %57 = load ptr, ptr %44, align 8, !dbg !3723, !tbaa !2927
  %58 = load ptr, ptr %46, align 8, !dbg !3724, !tbaa !2930
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3725
  br label %60, !dbg !3726

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3701
  call void @llvm.dbg.value(metadata ptr %61, metadata !3659, metadata !DIExpression()), !dbg !3701
  store i32 %7, ptr %6, align 4, !dbg !3727, !tbaa !936
  ret ptr %61, !dbg !3728
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #30

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #18 !dbg !3729 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3733, metadata !DIExpression()), !dbg !3736
  call void @llvm.dbg.value(metadata ptr %1, metadata !3734, metadata !DIExpression()), !dbg !3736
  call void @llvm.dbg.value(metadata i64 %2, metadata !3735, metadata !DIExpression()), !dbg !3736
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3737
  ret ptr %4, !dbg !3738
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #18 !dbg !3739 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3741, metadata !DIExpression()), !dbg !3742
  call void @llvm.dbg.value(metadata i32 0, metadata !3637, metadata !DIExpression()), !dbg !3743
  call void @llvm.dbg.value(metadata ptr %0, metadata !3638, metadata !DIExpression()), !dbg !3743
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3745
  ret ptr %2, !dbg !3746
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #18 !dbg !3747 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3751, metadata !DIExpression()), !dbg !3753
  call void @llvm.dbg.value(metadata i64 %1, metadata !3752, metadata !DIExpression()), !dbg !3753
  call void @llvm.dbg.value(metadata i32 0, metadata !3733, metadata !DIExpression()), !dbg !3754
  call void @llvm.dbg.value(metadata ptr %0, metadata !3734, metadata !DIExpression()), !dbg !3754
  call void @llvm.dbg.value(metadata i64 %1, metadata !3735, metadata !DIExpression()), !dbg !3754
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3756
  ret ptr %3, !dbg !3757
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #18 !dbg !3758 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3762, metadata !DIExpression()), !dbg !3766
  call void @llvm.dbg.value(metadata i32 %1, metadata !3763, metadata !DIExpression()), !dbg !3766
  call void @llvm.dbg.value(metadata ptr %2, metadata !3764, metadata !DIExpression()), !dbg !3766
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #42, !dbg !3767
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3765, metadata !DIExpression()), !dbg !3768
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3769), !dbg !3772
  call void @llvm.dbg.value(metadata i32 %1, metadata !3773, metadata !DIExpression()), !dbg !3779
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3778, metadata !DIExpression()), !dbg !3781
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3781, !alias.scope !3769
  %5 = icmp eq i32 %1, 10, !dbg !3782
  br i1 %5, label %6, label %7, !dbg !3784

6:                                                ; preds = %3
  tail call void @abort() #44, !dbg !3785, !noalias !3769
  unreachable, !dbg !3785

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3786, !tbaa !2856, !alias.scope !3769
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3787
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #42, !dbg !3788
  ret ptr %8, !dbg !3789
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #31

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #18 !dbg !3790 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3794, metadata !DIExpression()), !dbg !3799
  call void @llvm.dbg.value(metadata i32 %1, metadata !3795, metadata !DIExpression()), !dbg !3799
  call void @llvm.dbg.value(metadata ptr %2, metadata !3796, metadata !DIExpression()), !dbg !3799
  call void @llvm.dbg.value(metadata i64 %3, metadata !3797, metadata !DIExpression()), !dbg !3799
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #42, !dbg !3800
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3798, metadata !DIExpression()), !dbg !3801
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3802), !dbg !3805
  call void @llvm.dbg.value(metadata i32 %1, metadata !3773, metadata !DIExpression()), !dbg !3806
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3778, metadata !DIExpression()), !dbg !3808
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3808, !alias.scope !3802
  %6 = icmp eq i32 %1, 10, !dbg !3809
  br i1 %6, label %7, label %8, !dbg !3810

7:                                                ; preds = %4
  tail call void @abort() #44, !dbg !3811, !noalias !3802
  unreachable, !dbg !3811

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3812, !tbaa !2856, !alias.scope !3802
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3813
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #42, !dbg !3814
  ret ptr %9, !dbg !3815
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #18 !dbg !3816 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3820, metadata !DIExpression()), !dbg !3822
  call void @llvm.dbg.value(metadata ptr %1, metadata !3821, metadata !DIExpression()), !dbg !3822
  call void @llvm.dbg.value(metadata i32 0, metadata !3762, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata i32 %0, metadata !3763, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata ptr %1, metadata !3764, metadata !DIExpression()), !dbg !3823
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #42, !dbg !3825
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3765, metadata !DIExpression()), !dbg !3826
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3827), !dbg !3830
  call void @llvm.dbg.value(metadata i32 %0, metadata !3773, metadata !DIExpression()), !dbg !3831
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3778, metadata !DIExpression()), !dbg !3833
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3833, !alias.scope !3827
  %4 = icmp eq i32 %0, 10, !dbg !3834
  br i1 %4, label %5, label %6, !dbg !3835

5:                                                ; preds = %2
  tail call void @abort() #44, !dbg !3836, !noalias !3827
  unreachable, !dbg !3836

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3837, !tbaa !2856, !alias.scope !3827
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3838
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #42, !dbg !3839
  ret ptr %7, !dbg !3840
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #18 !dbg !3841 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3845, metadata !DIExpression()), !dbg !3848
  call void @llvm.dbg.value(metadata ptr %1, metadata !3846, metadata !DIExpression()), !dbg !3848
  call void @llvm.dbg.value(metadata i64 %2, metadata !3847, metadata !DIExpression()), !dbg !3848
  call void @llvm.dbg.value(metadata i32 0, metadata !3794, metadata !DIExpression()), !dbg !3849
  call void @llvm.dbg.value(metadata i32 %0, metadata !3795, metadata !DIExpression()), !dbg !3849
  call void @llvm.dbg.value(metadata ptr %1, metadata !3796, metadata !DIExpression()), !dbg !3849
  call void @llvm.dbg.value(metadata i64 %2, metadata !3797, metadata !DIExpression()), !dbg !3849
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #42, !dbg !3851
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3798, metadata !DIExpression()), !dbg !3852
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3853), !dbg !3856
  call void @llvm.dbg.value(metadata i32 %0, metadata !3773, metadata !DIExpression()), !dbg !3857
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3778, metadata !DIExpression()), !dbg !3859
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3859, !alias.scope !3853
  %5 = icmp eq i32 %0, 10, !dbg !3860
  br i1 %5, label %6, label %7, !dbg !3861

6:                                                ; preds = %3
  tail call void @abort() #44, !dbg !3862, !noalias !3853
  unreachable, !dbg !3862

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3863, !tbaa !2856, !alias.scope !3853
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3864
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #42, !dbg !3865
  ret ptr %8, !dbg !3866
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #18 !dbg !3867 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3871, metadata !DIExpression()), !dbg !3875
  call void @llvm.dbg.value(metadata i64 %1, metadata !3872, metadata !DIExpression()), !dbg !3875
  call void @llvm.dbg.value(metadata i8 %2, metadata !3873, metadata !DIExpression()), !dbg !3875
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #42, !dbg !3876
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3874, metadata !DIExpression()), !dbg !3877
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3878, !tbaa.struct !3879
  call void @llvm.dbg.value(metadata ptr %4, metadata !2873, metadata !DIExpression()), !dbg !3880
  call void @llvm.dbg.value(metadata i8 %2, metadata !2874, metadata !DIExpression()), !dbg !3880
  call void @llvm.dbg.value(metadata i32 1, metadata !2875, metadata !DIExpression()), !dbg !3880
  call void @llvm.dbg.value(metadata i8 %2, metadata !2876, metadata !DIExpression()), !dbg !3880
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !3882
  %6 = lshr i8 %2, 5, !dbg !3883
  %7 = zext i8 %6 to i64, !dbg !3883
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !3884
  call void @llvm.dbg.value(metadata ptr %8, metadata !2877, metadata !DIExpression()), !dbg !3880
  %9 = and i8 %2, 31, !dbg !3885
  %10 = zext i8 %9 to i32, !dbg !3885
  call void @llvm.dbg.value(metadata i32 %10, metadata !2879, metadata !DIExpression()), !dbg !3880
  %11 = load i32, ptr %8, align 4, !dbg !3886, !tbaa !936
  %12 = lshr i32 %11, %10, !dbg !3887
  call void @llvm.dbg.value(metadata i32 %12, metadata !2880, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3880
  %13 = and i32 %12, 1, !dbg !3888
  %14 = xor i32 %13, 1, !dbg !3888
  %15 = shl nuw i32 %14, %10, !dbg !3889
  %16 = xor i32 %15, %11, !dbg !3890
  store i32 %16, ptr %8, align 4, !dbg !3890, !tbaa !936
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !3891
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #42, !dbg !3892
  ret ptr %17, !dbg !3893
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #18 !dbg !3894 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3898, metadata !DIExpression()), !dbg !3900
  call void @llvm.dbg.value(metadata i8 %1, metadata !3899, metadata !DIExpression()), !dbg !3900
  call void @llvm.dbg.value(metadata ptr %0, metadata !3871, metadata !DIExpression()), !dbg !3901
  call void @llvm.dbg.value(metadata i64 -1, metadata !3872, metadata !DIExpression()), !dbg !3901
  call void @llvm.dbg.value(metadata i8 %1, metadata !3873, metadata !DIExpression()), !dbg !3901
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #42, !dbg !3903
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3874, metadata !DIExpression()), !dbg !3904
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3905, !tbaa.struct !3879
  call void @llvm.dbg.value(metadata ptr %3, metadata !2873, metadata !DIExpression()), !dbg !3906
  call void @llvm.dbg.value(metadata i8 %1, metadata !2874, metadata !DIExpression()), !dbg !3906
  call void @llvm.dbg.value(metadata i32 1, metadata !2875, metadata !DIExpression()), !dbg !3906
  call void @llvm.dbg.value(metadata i8 %1, metadata !2876, metadata !DIExpression()), !dbg !3906
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3908
  %5 = lshr i8 %1, 5, !dbg !3909
  %6 = zext i8 %5 to i64, !dbg !3909
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !3910
  call void @llvm.dbg.value(metadata ptr %7, metadata !2877, metadata !DIExpression()), !dbg !3906
  %8 = and i8 %1, 31, !dbg !3911
  %9 = zext i8 %8 to i32, !dbg !3911
  call void @llvm.dbg.value(metadata i32 %9, metadata !2879, metadata !DIExpression()), !dbg !3906
  %10 = load i32, ptr %7, align 4, !dbg !3912, !tbaa !936
  %11 = lshr i32 %10, %9, !dbg !3913
  call void @llvm.dbg.value(metadata i32 %11, metadata !2880, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3906
  %12 = and i32 %11, 1, !dbg !3914
  %13 = xor i32 %12, 1, !dbg !3914
  %14 = shl nuw i32 %13, %9, !dbg !3915
  %15 = xor i32 %14, %10, !dbg !3916
  store i32 %15, ptr %7, align 4, !dbg !3916, !tbaa !936
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !3917
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #42, !dbg !3918
  ret ptr %16, !dbg !3919
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #18 !dbg !3920 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3922, metadata !DIExpression()), !dbg !3923
  call void @llvm.dbg.value(metadata ptr %0, metadata !3898, metadata !DIExpression()), !dbg !3924
  call void @llvm.dbg.value(metadata i8 58, metadata !3899, metadata !DIExpression()), !dbg !3924
  call void @llvm.dbg.value(metadata ptr %0, metadata !3871, metadata !DIExpression()), !dbg !3926
  call void @llvm.dbg.value(metadata i64 -1, metadata !3872, metadata !DIExpression()), !dbg !3926
  call void @llvm.dbg.value(metadata i8 58, metadata !3873, metadata !DIExpression()), !dbg !3926
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #42, !dbg !3928
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3874, metadata !DIExpression()), !dbg !3929
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3930, !tbaa.struct !3879
  call void @llvm.dbg.value(metadata ptr %2, metadata !2873, metadata !DIExpression()), !dbg !3931
  call void @llvm.dbg.value(metadata i8 58, metadata !2874, metadata !DIExpression()), !dbg !3931
  call void @llvm.dbg.value(metadata i32 1, metadata !2875, metadata !DIExpression()), !dbg !3931
  call void @llvm.dbg.value(metadata i8 58, metadata !2876, metadata !DIExpression()), !dbg !3931
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !3933
  call void @llvm.dbg.value(metadata ptr %3, metadata !2877, metadata !DIExpression()), !dbg !3931
  call void @llvm.dbg.value(metadata i32 26, metadata !2879, metadata !DIExpression()), !dbg !3931
  %4 = load i32, ptr %3, align 4, !dbg !3934, !tbaa !936
  call void @llvm.dbg.value(metadata i32 %4, metadata !2880, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3931
  %5 = or i32 %4, 67108864, !dbg !3935
  store i32 %5, ptr %3, align 4, !dbg !3935, !tbaa !936
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !3936
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #42, !dbg !3937
  ret ptr %6, !dbg !3938
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #18 !dbg !3939 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3941, metadata !DIExpression()), !dbg !3943
  call void @llvm.dbg.value(metadata i64 %1, metadata !3942, metadata !DIExpression()), !dbg !3943
  call void @llvm.dbg.value(metadata ptr %0, metadata !3871, metadata !DIExpression()), !dbg !3944
  call void @llvm.dbg.value(metadata i64 %1, metadata !3872, metadata !DIExpression()), !dbg !3944
  call void @llvm.dbg.value(metadata i8 58, metadata !3873, metadata !DIExpression()), !dbg !3944
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #42, !dbg !3946
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3874, metadata !DIExpression()), !dbg !3947
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3948, !tbaa.struct !3879
  call void @llvm.dbg.value(metadata ptr %3, metadata !2873, metadata !DIExpression()), !dbg !3949
  call void @llvm.dbg.value(metadata i8 58, metadata !2874, metadata !DIExpression()), !dbg !3949
  call void @llvm.dbg.value(metadata i32 1, metadata !2875, metadata !DIExpression()), !dbg !3949
  call void @llvm.dbg.value(metadata i8 58, metadata !2876, metadata !DIExpression()), !dbg !3949
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3951
  call void @llvm.dbg.value(metadata ptr %4, metadata !2877, metadata !DIExpression()), !dbg !3949
  call void @llvm.dbg.value(metadata i32 26, metadata !2879, metadata !DIExpression()), !dbg !3949
  %5 = load i32, ptr %4, align 4, !dbg !3952, !tbaa !936
  call void @llvm.dbg.value(metadata i32 %5, metadata !2880, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3949
  %6 = or i32 %5, 67108864, !dbg !3953
  store i32 %6, ptr %4, align 4, !dbg !3953, !tbaa !936
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3954
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #42, !dbg !3955
  ret ptr %7, !dbg !3956
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #18 !dbg !3957 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3778, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3963
  call void @llvm.dbg.value(metadata i32 %0, metadata !3959, metadata !DIExpression()), !dbg !3965
  call void @llvm.dbg.value(metadata i32 %1, metadata !3960, metadata !DIExpression()), !dbg !3965
  call void @llvm.dbg.value(metadata ptr %2, metadata !3961, metadata !DIExpression()), !dbg !3965
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #42, !dbg !3966
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3962, metadata !DIExpression()), !dbg !3967
  call void @llvm.dbg.value(metadata i32 %1, metadata !3773, metadata !DIExpression()), !dbg !3968
  call void @llvm.dbg.value(metadata i32 0, metadata !3778, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3968
  %5 = icmp eq i32 %1, 10, !dbg !3969
  br i1 %5, label %6, label %7, !dbg !3970

6:                                                ; preds = %3
  tail call void @abort() #44, !dbg !3971, !noalias !3972
  unreachable, !dbg !3971

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3778, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3968
  store i32 %1, ptr %4, align 8, !dbg !3975, !tbaa.struct !3879
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3975
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3975
  call void @llvm.dbg.value(metadata ptr %4, metadata !2873, metadata !DIExpression()), !dbg !3976
  call void @llvm.dbg.value(metadata i8 58, metadata !2874, metadata !DIExpression()), !dbg !3976
  call void @llvm.dbg.value(metadata i32 1, metadata !2875, metadata !DIExpression()), !dbg !3976
  call void @llvm.dbg.value(metadata i8 58, metadata !2876, metadata !DIExpression()), !dbg !3976
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3978
  call void @llvm.dbg.value(metadata ptr %9, metadata !2877, metadata !DIExpression()), !dbg !3976
  call void @llvm.dbg.value(metadata i32 26, metadata !2879, metadata !DIExpression()), !dbg !3976
  %10 = load i32, ptr %9, align 4, !dbg !3979, !tbaa !936
  call void @llvm.dbg.value(metadata i32 %10, metadata !2880, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3976
  %11 = or i32 %10, 67108864, !dbg !3980
  store i32 %11, ptr %9, align 4, !dbg !3980, !tbaa !936
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3981
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #42, !dbg !3982
  ret ptr %12, !dbg !3983
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #18 !dbg !3984 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3988, metadata !DIExpression()), !dbg !3992
  call void @llvm.dbg.value(metadata ptr %1, metadata !3989, metadata !DIExpression()), !dbg !3992
  call void @llvm.dbg.value(metadata ptr %2, metadata !3990, metadata !DIExpression()), !dbg !3992
  call void @llvm.dbg.value(metadata ptr %3, metadata !3991, metadata !DIExpression()), !dbg !3992
  call void @llvm.dbg.value(metadata i32 %0, metadata !3993, metadata !DIExpression()), !dbg !4003
  call void @llvm.dbg.value(metadata ptr %1, metadata !3998, metadata !DIExpression()), !dbg !4003
  call void @llvm.dbg.value(metadata ptr %2, metadata !3999, metadata !DIExpression()), !dbg !4003
  call void @llvm.dbg.value(metadata ptr %3, metadata !4000, metadata !DIExpression()), !dbg !4003
  call void @llvm.dbg.value(metadata i64 -1, metadata !4001, metadata !DIExpression()), !dbg !4003
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #42, !dbg !4005
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4002, metadata !DIExpression()), !dbg !4006
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4007, !tbaa.struct !3879
  call void @llvm.dbg.value(metadata ptr %5, metadata !2913, metadata !DIExpression()), !dbg !4008
  call void @llvm.dbg.value(metadata ptr %1, metadata !2914, metadata !DIExpression()), !dbg !4008
  call void @llvm.dbg.value(metadata ptr %2, metadata !2915, metadata !DIExpression()), !dbg !4008
  call void @llvm.dbg.value(metadata ptr %5, metadata !2913, metadata !DIExpression()), !dbg !4008
  store i32 10, ptr %5, align 8, !dbg !4010, !tbaa !2856
  %6 = icmp ne ptr %1, null, !dbg !4011
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !4012
  br i1 %8, label %10, label %9, !dbg !4012

9:                                                ; preds = %4
  tail call void @abort() #44, !dbg !4013
  unreachable, !dbg !4013

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !4014
  store ptr %1, ptr %11, align 8, !dbg !4015, !tbaa !2927
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !4016
  store ptr %2, ptr %12, align 8, !dbg !4017, !tbaa !2930
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !4018
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #42, !dbg !4019
  ret ptr %13, !dbg !4020
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #18 !dbg !3994 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3993, metadata !DIExpression()), !dbg !4021
  call void @llvm.dbg.value(metadata ptr %1, metadata !3998, metadata !DIExpression()), !dbg !4021
  call void @llvm.dbg.value(metadata ptr %2, metadata !3999, metadata !DIExpression()), !dbg !4021
  call void @llvm.dbg.value(metadata ptr %3, metadata !4000, metadata !DIExpression()), !dbg !4021
  call void @llvm.dbg.value(metadata i64 %4, metadata !4001, metadata !DIExpression()), !dbg !4021
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #42, !dbg !4022
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4002, metadata !DIExpression()), !dbg !4023
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4024, !tbaa.struct !3879
  call void @llvm.dbg.value(metadata ptr %6, metadata !2913, metadata !DIExpression()), !dbg !4025
  call void @llvm.dbg.value(metadata ptr %1, metadata !2914, metadata !DIExpression()), !dbg !4025
  call void @llvm.dbg.value(metadata ptr %2, metadata !2915, metadata !DIExpression()), !dbg !4025
  call void @llvm.dbg.value(metadata ptr %6, metadata !2913, metadata !DIExpression()), !dbg !4025
  store i32 10, ptr %6, align 8, !dbg !4027, !tbaa !2856
  %7 = icmp ne ptr %1, null, !dbg !4028
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !4029
  br i1 %9, label %11, label %10, !dbg !4029

10:                                               ; preds = %5
  tail call void @abort() #44, !dbg !4030
  unreachable, !dbg !4030

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !4031
  store ptr %1, ptr %12, align 8, !dbg !4032, !tbaa !2927
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !4033
  store ptr %2, ptr %13, align 8, !dbg !4034, !tbaa !2930
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !4035
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #42, !dbg !4036
  ret ptr %14, !dbg !4037
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #18 !dbg !4038 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4042, metadata !DIExpression()), !dbg !4045
  call void @llvm.dbg.value(metadata ptr %1, metadata !4043, metadata !DIExpression()), !dbg !4045
  call void @llvm.dbg.value(metadata ptr %2, metadata !4044, metadata !DIExpression()), !dbg !4045
  call void @llvm.dbg.value(metadata i32 0, metadata !3988, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.value(metadata ptr %0, metadata !3989, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.value(metadata ptr %1, metadata !3990, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.value(metadata ptr %2, metadata !3991, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.value(metadata i32 0, metadata !3993, metadata !DIExpression()), !dbg !4048
  call void @llvm.dbg.value(metadata ptr %0, metadata !3998, metadata !DIExpression()), !dbg !4048
  call void @llvm.dbg.value(metadata ptr %1, metadata !3999, metadata !DIExpression()), !dbg !4048
  call void @llvm.dbg.value(metadata ptr %2, metadata !4000, metadata !DIExpression()), !dbg !4048
  call void @llvm.dbg.value(metadata i64 -1, metadata !4001, metadata !DIExpression()), !dbg !4048
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #42, !dbg !4050
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4002, metadata !DIExpression()), !dbg !4051
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4052, !tbaa.struct !3879
  call void @llvm.dbg.value(metadata ptr %4, metadata !2913, metadata !DIExpression()), !dbg !4053
  call void @llvm.dbg.value(metadata ptr %0, metadata !2914, metadata !DIExpression()), !dbg !4053
  call void @llvm.dbg.value(metadata ptr %1, metadata !2915, metadata !DIExpression()), !dbg !4053
  call void @llvm.dbg.value(metadata ptr %4, metadata !2913, metadata !DIExpression()), !dbg !4053
  store i32 10, ptr %4, align 8, !dbg !4055, !tbaa !2856
  %5 = icmp ne ptr %0, null, !dbg !4056
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !4057
  br i1 %7, label %9, label %8, !dbg !4057

8:                                                ; preds = %3
  tail call void @abort() #44, !dbg !4058
  unreachable, !dbg !4058

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !4059
  store ptr %0, ptr %10, align 8, !dbg !4060, !tbaa !2927
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !4061
  store ptr %1, ptr %11, align 8, !dbg !4062, !tbaa !2930
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !4063
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #42, !dbg !4064
  ret ptr %12, !dbg !4065
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #18 !dbg !4066 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4070, metadata !DIExpression()), !dbg !4074
  call void @llvm.dbg.value(metadata ptr %1, metadata !4071, metadata !DIExpression()), !dbg !4074
  call void @llvm.dbg.value(metadata ptr %2, metadata !4072, metadata !DIExpression()), !dbg !4074
  call void @llvm.dbg.value(metadata i64 %3, metadata !4073, metadata !DIExpression()), !dbg !4074
  call void @llvm.dbg.value(metadata i32 0, metadata !3993, metadata !DIExpression()), !dbg !4075
  call void @llvm.dbg.value(metadata ptr %0, metadata !3998, metadata !DIExpression()), !dbg !4075
  call void @llvm.dbg.value(metadata ptr %1, metadata !3999, metadata !DIExpression()), !dbg !4075
  call void @llvm.dbg.value(metadata ptr %2, metadata !4000, metadata !DIExpression()), !dbg !4075
  call void @llvm.dbg.value(metadata i64 %3, metadata !4001, metadata !DIExpression()), !dbg !4075
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #42, !dbg !4077
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4002, metadata !DIExpression()), !dbg !4078
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4079, !tbaa.struct !3879
  call void @llvm.dbg.value(metadata ptr %5, metadata !2913, metadata !DIExpression()), !dbg !4080
  call void @llvm.dbg.value(metadata ptr %0, metadata !2914, metadata !DIExpression()), !dbg !4080
  call void @llvm.dbg.value(metadata ptr %1, metadata !2915, metadata !DIExpression()), !dbg !4080
  call void @llvm.dbg.value(metadata ptr %5, metadata !2913, metadata !DIExpression()), !dbg !4080
  store i32 10, ptr %5, align 8, !dbg !4082, !tbaa !2856
  %6 = icmp ne ptr %0, null, !dbg !4083
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !4084
  br i1 %8, label %10, label %9, !dbg !4084

9:                                                ; preds = %4
  tail call void @abort() #44, !dbg !4085
  unreachable, !dbg !4085

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !4086
  store ptr %0, ptr %11, align 8, !dbg !4087, !tbaa !2927
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !4088
  store ptr %1, ptr %12, align 8, !dbg !4089, !tbaa !2930
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !4090
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #42, !dbg !4091
  ret ptr %13, !dbg !4092
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #18 !dbg !4093 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4097, metadata !DIExpression()), !dbg !4100
  call void @llvm.dbg.value(metadata ptr %1, metadata !4098, metadata !DIExpression()), !dbg !4100
  call void @llvm.dbg.value(metadata i64 %2, metadata !4099, metadata !DIExpression()), !dbg !4100
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !4101
  ret ptr %4, !dbg !4102
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #18 !dbg !4103 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4107, metadata !DIExpression()), !dbg !4109
  call void @llvm.dbg.value(metadata i64 %1, metadata !4108, metadata !DIExpression()), !dbg !4109
  call void @llvm.dbg.value(metadata i32 0, metadata !4097, metadata !DIExpression()), !dbg !4110
  call void @llvm.dbg.value(metadata ptr %0, metadata !4098, metadata !DIExpression()), !dbg !4110
  call void @llvm.dbg.value(metadata i64 %1, metadata !4099, metadata !DIExpression()), !dbg !4110
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !4112
  ret ptr %3, !dbg !4113
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #18 !dbg !4114 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4118, metadata !DIExpression()), !dbg !4120
  call void @llvm.dbg.value(metadata ptr %1, metadata !4119, metadata !DIExpression()), !dbg !4120
  call void @llvm.dbg.value(metadata i32 %0, metadata !4097, metadata !DIExpression()), !dbg !4121
  call void @llvm.dbg.value(metadata ptr %1, metadata !4098, metadata !DIExpression()), !dbg !4121
  call void @llvm.dbg.value(metadata i64 -1, metadata !4099, metadata !DIExpression()), !dbg !4121
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !4123
  ret ptr %3, !dbg !4124
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #18 !dbg !4125 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4129, metadata !DIExpression()), !dbg !4130
  call void @llvm.dbg.value(metadata i32 0, metadata !4118, metadata !DIExpression()), !dbg !4131
  call void @llvm.dbg.value(metadata ptr %0, metadata !4119, metadata !DIExpression()), !dbg !4131
  call void @llvm.dbg.value(metadata i32 0, metadata !4097, metadata !DIExpression()), !dbg !4133
  call void @llvm.dbg.value(metadata ptr %0, metadata !4098, metadata !DIExpression()), !dbg !4133
  call void @llvm.dbg.value(metadata i64 -1, metadata !4099, metadata !DIExpression()), !dbg !4133
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !4135
  ret ptr %2, !dbg !4136
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #18 !dbg !4137 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4176, metadata !DIExpression()), !dbg !4182
  call void @llvm.dbg.value(metadata ptr %1, metadata !4177, metadata !DIExpression()), !dbg !4182
  call void @llvm.dbg.value(metadata ptr %2, metadata !4178, metadata !DIExpression()), !dbg !4182
  call void @llvm.dbg.value(metadata ptr %3, metadata !4179, metadata !DIExpression()), !dbg !4182
  call void @llvm.dbg.value(metadata ptr %4, metadata !4180, metadata !DIExpression()), !dbg !4182
  call void @llvm.dbg.value(metadata i64 %5, metadata !4181, metadata !DIExpression()), !dbg !4182
  %7 = icmp eq ptr %1, null, !dbg !4183
  br i1 %7, label %10, label %8, !dbg !4185

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.102, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #42, !dbg !4186
  br label %12, !dbg !4186

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.103, ptr noundef %2, ptr noundef %3) #42, !dbg !4187
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.3.105, i32 noundef 5) #42, !dbg !4188
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #42, !dbg !4188
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.106, ptr noundef %0), !dbg !4189
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.5.107, i32 noundef 5) #42, !dbg !4190
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.108) #42, !dbg !4190
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.106, ptr noundef %0), !dbg !4191
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
  ], !dbg !4192

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.7.109, i32 noundef 5) #42, !dbg !4193
  %21 = load ptr, ptr %4, align 8, !dbg !4193, !tbaa !866
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #42, !dbg !4193
  br label %147, !dbg !4195

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.8.110, i32 noundef 5) #42, !dbg !4196
  %25 = load ptr, ptr %4, align 8, !dbg !4196, !tbaa !866
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4196
  %27 = load ptr, ptr %26, align 8, !dbg !4196, !tbaa !866
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #42, !dbg !4196
  br label %147, !dbg !4197

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.9.111, i32 noundef 5) #42, !dbg !4198
  %31 = load ptr, ptr %4, align 8, !dbg !4198, !tbaa !866
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4198
  %33 = load ptr, ptr %32, align 8, !dbg !4198, !tbaa !866
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4198
  %35 = load ptr, ptr %34, align 8, !dbg !4198, !tbaa !866
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #42, !dbg !4198
  br label %147, !dbg !4199

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.10.112, i32 noundef 5) #42, !dbg !4200
  %39 = load ptr, ptr %4, align 8, !dbg !4200, !tbaa !866
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4200
  %41 = load ptr, ptr %40, align 8, !dbg !4200, !tbaa !866
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4200
  %43 = load ptr, ptr %42, align 8, !dbg !4200, !tbaa !866
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4200
  %45 = load ptr, ptr %44, align 8, !dbg !4200, !tbaa !866
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #42, !dbg !4200
  br label %147, !dbg !4201

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.11.113, i32 noundef 5) #42, !dbg !4202
  %49 = load ptr, ptr %4, align 8, !dbg !4202, !tbaa !866
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4202
  %51 = load ptr, ptr %50, align 8, !dbg !4202, !tbaa !866
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4202
  %53 = load ptr, ptr %52, align 8, !dbg !4202, !tbaa !866
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4202
  %55 = load ptr, ptr %54, align 8, !dbg !4202, !tbaa !866
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4202
  %57 = load ptr, ptr %56, align 8, !dbg !4202, !tbaa !866
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #42, !dbg !4202
  br label %147, !dbg !4203

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.12.114, i32 noundef 5) #42, !dbg !4204
  %61 = load ptr, ptr %4, align 8, !dbg !4204, !tbaa !866
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4204
  %63 = load ptr, ptr %62, align 8, !dbg !4204, !tbaa !866
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4204
  %65 = load ptr, ptr %64, align 8, !dbg !4204, !tbaa !866
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4204
  %67 = load ptr, ptr %66, align 8, !dbg !4204, !tbaa !866
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4204
  %69 = load ptr, ptr %68, align 8, !dbg !4204, !tbaa !866
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4204
  %71 = load ptr, ptr %70, align 8, !dbg !4204, !tbaa !866
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #42, !dbg !4204
  br label %147, !dbg !4205

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.13.115, i32 noundef 5) #42, !dbg !4206
  %75 = load ptr, ptr %4, align 8, !dbg !4206, !tbaa !866
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4206
  %77 = load ptr, ptr %76, align 8, !dbg !4206, !tbaa !866
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4206
  %79 = load ptr, ptr %78, align 8, !dbg !4206, !tbaa !866
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4206
  %81 = load ptr, ptr %80, align 8, !dbg !4206, !tbaa !866
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4206
  %83 = load ptr, ptr %82, align 8, !dbg !4206, !tbaa !866
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4206
  %85 = load ptr, ptr %84, align 8, !dbg !4206, !tbaa !866
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4206
  %87 = load ptr, ptr %86, align 8, !dbg !4206, !tbaa !866
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #42, !dbg !4206
  br label %147, !dbg !4207

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.14.116, i32 noundef 5) #42, !dbg !4208
  %91 = load ptr, ptr %4, align 8, !dbg !4208, !tbaa !866
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4208
  %93 = load ptr, ptr %92, align 8, !dbg !4208, !tbaa !866
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4208
  %95 = load ptr, ptr %94, align 8, !dbg !4208, !tbaa !866
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4208
  %97 = load ptr, ptr %96, align 8, !dbg !4208, !tbaa !866
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4208
  %99 = load ptr, ptr %98, align 8, !dbg !4208, !tbaa !866
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4208
  %101 = load ptr, ptr %100, align 8, !dbg !4208, !tbaa !866
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4208
  %103 = load ptr, ptr %102, align 8, !dbg !4208, !tbaa !866
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4208
  %105 = load ptr, ptr %104, align 8, !dbg !4208, !tbaa !866
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #42, !dbg !4208
  br label %147, !dbg !4209

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.15.117, i32 noundef 5) #42, !dbg !4210
  %109 = load ptr, ptr %4, align 8, !dbg !4210, !tbaa !866
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4210
  %111 = load ptr, ptr %110, align 8, !dbg !4210, !tbaa !866
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4210
  %113 = load ptr, ptr %112, align 8, !dbg !4210, !tbaa !866
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4210
  %115 = load ptr, ptr %114, align 8, !dbg !4210, !tbaa !866
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4210
  %117 = load ptr, ptr %116, align 8, !dbg !4210, !tbaa !866
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4210
  %119 = load ptr, ptr %118, align 8, !dbg !4210, !tbaa !866
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4210
  %121 = load ptr, ptr %120, align 8, !dbg !4210, !tbaa !866
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4210
  %123 = load ptr, ptr %122, align 8, !dbg !4210, !tbaa !866
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4210
  %125 = load ptr, ptr %124, align 8, !dbg !4210, !tbaa !866
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #42, !dbg !4210
  br label %147, !dbg !4211

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.16.118, i32 noundef 5) #42, !dbg !4212
  %129 = load ptr, ptr %4, align 8, !dbg !4212, !tbaa !866
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4212
  %131 = load ptr, ptr %130, align 8, !dbg !4212, !tbaa !866
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4212
  %133 = load ptr, ptr %132, align 8, !dbg !4212, !tbaa !866
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4212
  %135 = load ptr, ptr %134, align 8, !dbg !4212, !tbaa !866
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4212
  %137 = load ptr, ptr %136, align 8, !dbg !4212, !tbaa !866
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4212
  %139 = load ptr, ptr %138, align 8, !dbg !4212, !tbaa !866
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4212
  %141 = load ptr, ptr %140, align 8, !dbg !4212, !tbaa !866
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4212
  %143 = load ptr, ptr %142, align 8, !dbg !4212, !tbaa !866
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4212
  %145 = load ptr, ptr %144, align 8, !dbg !4212, !tbaa !866
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #42, !dbg !4212
  br label %147, !dbg !4213

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !4214
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #18 !dbg !4215 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4219, metadata !DIExpression()), !dbg !4225
  call void @llvm.dbg.value(metadata ptr %1, metadata !4220, metadata !DIExpression()), !dbg !4225
  call void @llvm.dbg.value(metadata ptr %2, metadata !4221, metadata !DIExpression()), !dbg !4225
  call void @llvm.dbg.value(metadata ptr %3, metadata !4222, metadata !DIExpression()), !dbg !4225
  call void @llvm.dbg.value(metadata ptr %4, metadata !4223, metadata !DIExpression()), !dbg !4225
  call void @llvm.dbg.value(metadata i64 0, metadata !4224, metadata !DIExpression()), !dbg !4225
  br label %6, !dbg !4226

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4228
  call void @llvm.dbg.value(metadata i64 %7, metadata !4224, metadata !DIExpression()), !dbg !4225
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !4229
  %9 = load ptr, ptr %8, align 8, !dbg !4229, !tbaa !866
  %10 = icmp eq ptr %9, null, !dbg !4231
  %11 = add i64 %7, 1, !dbg !4232
  call void @llvm.dbg.value(metadata i64 %11, metadata !4224, metadata !DIExpression()), !dbg !4225
  br i1 %10, label %12, label %6, !dbg !4231, !llvm.loop !4233

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !4235
  ret void, !dbg !4236
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #18 !dbg !4237 {
  %6 = alloca [10 x ptr], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !4249, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata ptr %1, metadata !4250, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata ptr %2, metadata !4251, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata ptr %3, metadata !4252, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata ptr %4, metadata !4253, metadata !DIExpression()), !dbg !4257
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #42, !dbg !4258
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4255, metadata !DIExpression()), !dbg !4259
  call void @llvm.dbg.value(metadata i64 0, metadata !4254, metadata !DIExpression()), !dbg !4257
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !4254, metadata !DIExpression()), !dbg !4257
  %10 = icmp ult i32 %9, 41, !dbg !4260
  br i1 %10, label %11, label %16, !dbg !4260

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !4260
  %13 = zext i32 %9 to i64, !dbg !4260
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !4260
  %15 = add nuw nsw i32 %9, 8, !dbg !4260
  store i32 %15, ptr %4, align 8, !dbg !4260
  br label %19, !dbg !4260

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !4260
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !4260
  store ptr %18, ptr %7, align 8, !dbg !4260
  br label %19, !dbg !4260

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !4260
  %22 = load ptr, ptr %21, align 8, !dbg !4260
  store ptr %22, ptr %6, align 16, !dbg !4263, !tbaa !866
  %23 = icmp eq ptr %22, null, !dbg !4264
  br i1 %23, label %128, label %24, !dbg !4265

24:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i64 1, metadata !4254, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata i64 1, metadata !4254, metadata !DIExpression()), !dbg !4257
  %25 = icmp ult i32 %20, 41, !dbg !4260
  br i1 %25, label %29, label %26, !dbg !4260

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !4260
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !4260
  store ptr %28, ptr %7, align 8, !dbg !4260
  br label %34, !dbg !4260

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !4260
  %31 = zext i32 %20 to i64, !dbg !4260
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !4260
  %33 = add nuw nsw i32 %20, 8, !dbg !4260
  store i32 %33, ptr %4, align 8, !dbg !4260
  br label %34, !dbg !4260

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !4260
  %37 = load ptr, ptr %36, align 8, !dbg !4260
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !4266
  store ptr %37, ptr %38, align 8, !dbg !4263, !tbaa !866
  %39 = icmp eq ptr %37, null, !dbg !4264
  br i1 %39, label %128, label %40, !dbg !4265

40:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i64 2, metadata !4254, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata i64 2, metadata !4254, metadata !DIExpression()), !dbg !4257
  %41 = icmp ult i32 %35, 41, !dbg !4260
  br i1 %41, label %45, label %42, !dbg !4260

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !4260
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !4260
  store ptr %44, ptr %7, align 8, !dbg !4260
  br label %50, !dbg !4260

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !4260
  %47 = zext i32 %35 to i64, !dbg !4260
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !4260
  %49 = add nuw nsw i32 %35, 8, !dbg !4260
  store i32 %49, ptr %4, align 8, !dbg !4260
  br label %50, !dbg !4260

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !4260
  %53 = load ptr, ptr %52, align 8, !dbg !4260
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !4266
  store ptr %53, ptr %54, align 16, !dbg !4263, !tbaa !866
  %55 = icmp eq ptr %53, null, !dbg !4264
  br i1 %55, label %128, label %56, !dbg !4265

56:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 3, metadata !4254, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata i64 3, metadata !4254, metadata !DIExpression()), !dbg !4257
  %57 = icmp ult i32 %51, 41, !dbg !4260
  br i1 %57, label %61, label %58, !dbg !4260

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !4260
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !4260
  store ptr %60, ptr %7, align 8, !dbg !4260
  br label %66, !dbg !4260

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !4260
  %63 = zext i32 %51 to i64, !dbg !4260
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !4260
  %65 = add nuw nsw i32 %51, 8, !dbg !4260
  store i32 %65, ptr %4, align 8, !dbg !4260
  br label %66, !dbg !4260

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !4260
  %69 = load ptr, ptr %68, align 8, !dbg !4260
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !4266
  store ptr %69, ptr %70, align 8, !dbg !4263, !tbaa !866
  %71 = icmp eq ptr %69, null, !dbg !4264
  br i1 %71, label %128, label %72, !dbg !4265

72:                                               ; preds = %66
  call void @llvm.dbg.value(metadata i64 4, metadata !4254, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata i64 4, metadata !4254, metadata !DIExpression()), !dbg !4257
  %73 = icmp ult i32 %67, 41, !dbg !4260
  br i1 %73, label %77, label %74, !dbg !4260

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !4260
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !4260
  store ptr %76, ptr %7, align 8, !dbg !4260
  br label %82, !dbg !4260

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !4260
  %79 = zext i32 %67 to i64, !dbg !4260
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !4260
  %81 = add nuw nsw i32 %67, 8, !dbg !4260
  store i32 %81, ptr %4, align 8, !dbg !4260
  br label %82, !dbg !4260

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !4260
  %85 = load ptr, ptr %84, align 8, !dbg !4260
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !4266
  store ptr %85, ptr %86, align 16, !dbg !4263, !tbaa !866
  %87 = icmp eq ptr %85, null, !dbg !4264
  br i1 %87, label %128, label %88, !dbg !4265

88:                                               ; preds = %82
  call void @llvm.dbg.value(metadata i64 5, metadata !4254, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata i64 5, metadata !4254, metadata !DIExpression()), !dbg !4257
  %89 = icmp ult i32 %83, 41, !dbg !4260
  br i1 %89, label %93, label %90, !dbg !4260

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !4260
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !4260
  store ptr %92, ptr %7, align 8, !dbg !4260
  br label %98, !dbg !4260

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !4260
  %95 = zext i32 %83 to i64, !dbg !4260
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !4260
  %97 = add nuw nsw i32 %83, 8, !dbg !4260
  store i32 %97, ptr %4, align 8, !dbg !4260
  br label %98, !dbg !4260

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !4260
  %100 = load ptr, ptr %99, align 8, !dbg !4260
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !4266
  store ptr %100, ptr %101, align 8, !dbg !4263, !tbaa !866
  %102 = icmp eq ptr %100, null, !dbg !4264
  br i1 %102, label %128, label %103, !dbg !4265

103:                                              ; preds = %98
  call void @llvm.dbg.value(metadata i64 6, metadata !4254, metadata !DIExpression()), !dbg !4257
  %104 = load ptr, ptr %7, align 8, !dbg !4260
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !4260
  store ptr %105, ptr %7, align 8, !dbg !4260
  %106 = load ptr, ptr %104, align 8, !dbg !4260
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !4266
  store ptr %106, ptr %107, align 16, !dbg !4263, !tbaa !866
  %108 = icmp eq ptr %106, null, !dbg !4264
  br i1 %108, label %128, label %109, !dbg !4265

109:                                              ; preds = %103
  call void @llvm.dbg.value(metadata i64 7, metadata !4254, metadata !DIExpression()), !dbg !4257
  %110 = load ptr, ptr %7, align 8, !dbg !4260
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !4260
  store ptr %111, ptr %7, align 8, !dbg !4260
  %112 = load ptr, ptr %110, align 8, !dbg !4260
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !4266
  store ptr %112, ptr %113, align 8, !dbg !4263, !tbaa !866
  %114 = icmp eq ptr %112, null, !dbg !4264
  br i1 %114, label %128, label %115, !dbg !4265

115:                                              ; preds = %109
  call void @llvm.dbg.value(metadata i64 8, metadata !4254, metadata !DIExpression()), !dbg !4257
  %116 = load ptr, ptr %7, align 8, !dbg !4260
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !4260
  store ptr %117, ptr %7, align 8, !dbg !4260
  %118 = load ptr, ptr %116, align 8, !dbg !4260
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !4266
  store ptr %118, ptr %119, align 16, !dbg !4263, !tbaa !866
  %120 = icmp eq ptr %118, null, !dbg !4264
  br i1 %120, label %128, label %121, !dbg !4265

121:                                              ; preds = %115
  call void @llvm.dbg.value(metadata i64 9, metadata !4254, metadata !DIExpression()), !dbg !4257
  %122 = load ptr, ptr %7, align 8, !dbg !4260
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !4260
  store ptr %123, ptr %7, align 8, !dbg !4260
  %124 = load ptr, ptr %122, align 8, !dbg !4260
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !4266
  store ptr %124, ptr %125, align 8, !dbg !4263, !tbaa !866
  %126 = icmp eq ptr %124, null, !dbg !4264
  %127 = select i1 %126, i64 9, i64 10, !dbg !4265
  br label %128, !dbg !4265

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !4267
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !4268
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #42, !dbg !4269
  ret void, !dbg !4269
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #18 !dbg !4270 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !4274, metadata !DIExpression()), !dbg !4283
  call void @llvm.dbg.value(metadata ptr %1, metadata !4275, metadata !DIExpression()), !dbg !4283
  call void @llvm.dbg.value(metadata ptr %2, metadata !4276, metadata !DIExpression()), !dbg !4283
  call void @llvm.dbg.value(metadata ptr %3, metadata !4277, metadata !DIExpression()), !dbg !4283
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #42, !dbg !4284
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4278, metadata !DIExpression()), !dbg !4285
  call void @llvm.va_start(ptr nonnull %5), !dbg !4286
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !4287
  call void @llvm.va_end(ptr nonnull %5), !dbg !4288
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #42, !dbg !4289
  ret void, !dbg !4289
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #18 !dbg !4290 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !4291, !tbaa !866
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.106, ptr noundef %1), !dbg !4291
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.17.123, i32 noundef 5) #42, !dbg !4292
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.124) #42, !dbg !4292
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.19.125, i32 noundef 5) #42, !dbg !4293
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.126, ptr noundef nonnull @.str.21.127) #42, !dbg !4293
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.22.128, i32 noundef 5) #42, !dbg !4294
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.129) #42, !dbg !4294
  ret void, !dbg !4295
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #32 !dbg !4296 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4301, metadata !DIExpression()), !dbg !4304
  call void @llvm.dbg.value(metadata i64 %1, metadata !4302, metadata !DIExpression()), !dbg !4304
  call void @llvm.dbg.value(metadata i64 %2, metadata !4303, metadata !DIExpression()), !dbg !4304
  call void @llvm.dbg.value(metadata ptr %0, metadata !4305, metadata !DIExpression()), !dbg !4310
  call void @llvm.dbg.value(metadata i64 %1, metadata !4308, metadata !DIExpression()), !dbg !4310
  call void @llvm.dbg.value(metadata i64 %2, metadata !4309, metadata !DIExpression()), !dbg !4310
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #42, !dbg !4312
  call void @llvm.dbg.value(metadata ptr %4, metadata !4313, metadata !DIExpression()), !dbg !4318
  %5 = icmp eq ptr %4, null, !dbg !4320
  br i1 %5, label %6, label %7, !dbg !4322

6:                                                ; preds = %3
  tail call void @xalloc_die() #44, !dbg !4323
  unreachable, !dbg !4323

7:                                                ; preds = %3
  ret ptr %4, !dbg !4324
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #33 !dbg !4306 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4305, metadata !DIExpression()), !dbg !4325
  call void @llvm.dbg.value(metadata i64 %1, metadata !4308, metadata !DIExpression()), !dbg !4325
  call void @llvm.dbg.value(metadata i64 %2, metadata !4309, metadata !DIExpression()), !dbg !4325
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #42, !dbg !4326
  call void @llvm.dbg.value(metadata ptr %4, metadata !4313, metadata !DIExpression()), !dbg !4327
  %5 = icmp eq ptr %4, null, !dbg !4329
  br i1 %5, label %6, label %7, !dbg !4330

6:                                                ; preds = %3
  tail call void @xalloc_die() #44, !dbg !4331
  unreachable, !dbg !4331

7:                                                ; preds = %3
  ret ptr %4, !dbg !4332
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #34 !dbg !4333 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4335, metadata !DIExpression()), !dbg !4336
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #47, !dbg !4337
  call void @llvm.dbg.value(metadata ptr %2, metadata !4313, metadata !DIExpression()), !dbg !4338
  %3 = icmp eq ptr %2, null, !dbg !4340
  br i1 %3, label %4, label %5, !dbg !4341

4:                                                ; preds = %1
  tail call void @xalloc_die() #44, !dbg !4342
  unreachable, !dbg !4342

5:                                                ; preds = %1
  ret ptr %2, !dbg !4343
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #34 !dbg !4344 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4346, metadata !DIExpression()), !dbg !4347
  call void @llvm.dbg.value(metadata i64 %0, metadata !4348, metadata !DIExpression()), !dbg !4351
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #47, !dbg !4353
  call void @llvm.dbg.value(metadata ptr %2, metadata !4313, metadata !DIExpression()), !dbg !4354
  %3 = icmp eq ptr %2, null, !dbg !4356
  br i1 %3, label %4, label %5, !dbg !4357

4:                                                ; preds = %1
  tail call void @xalloc_die() #44, !dbg !4358
  unreachable, !dbg !4358

5:                                                ; preds = %1
  ret ptr %2, !dbg !4359
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #34 !dbg !4360 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4364, metadata !DIExpression()), !dbg !4365
  call void @llvm.dbg.value(metadata i64 %0, metadata !4335, metadata !DIExpression()), !dbg !4366
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #47, !dbg !4368
  call void @llvm.dbg.value(metadata ptr %2, metadata !4313, metadata !DIExpression()), !dbg !4369
  %3 = icmp eq ptr %2, null, !dbg !4371
  br i1 %3, label %4, label %5, !dbg !4372

4:                                                ; preds = %1
  tail call void @xalloc_die() #44, !dbg !4373
  unreachable, !dbg !4373

5:                                                ; preds = %1
  ret ptr %2, !dbg !4374
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4375 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4379, metadata !DIExpression()), !dbg !4381
  call void @llvm.dbg.value(metadata i64 %1, metadata !4380, metadata !DIExpression()), !dbg !4381
  call void @llvm.dbg.value(metadata ptr %0, metadata !4382, metadata !DIExpression()), !dbg !4387
  call void @llvm.dbg.value(metadata i64 %1, metadata !4386, metadata !DIExpression()), !dbg !4387
  %3 = icmp eq i64 %1, 0, !dbg !4389
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4389
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #49, !dbg !4390
  call void @llvm.dbg.value(metadata ptr %5, metadata !4313, metadata !DIExpression()), !dbg !4391
  %6 = icmp eq ptr %5, null, !dbg !4393
  br i1 %6, label %7, label %8, !dbg !4394

7:                                                ; preds = %2
  tail call void @xalloc_die() #44, !dbg !4395
  unreachable, !dbg !4395

8:                                                ; preds = %2
  ret ptr %5, !dbg !4396
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !4397 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #36

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4398 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4402, metadata !DIExpression()), !dbg !4404
  call void @llvm.dbg.value(metadata i64 %1, metadata !4403, metadata !DIExpression()), !dbg !4404
  call void @llvm.dbg.value(metadata ptr %0, metadata !4405, metadata !DIExpression()), !dbg !4409
  call void @llvm.dbg.value(metadata i64 %1, metadata !4408, metadata !DIExpression()), !dbg !4409
  call void @llvm.dbg.value(metadata ptr %0, metadata !4382, metadata !DIExpression()), !dbg !4411
  call void @llvm.dbg.value(metadata i64 %1, metadata !4386, metadata !DIExpression()), !dbg !4411
  %3 = icmp eq i64 %1, 0, !dbg !4413
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4413
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #49, !dbg !4414
  call void @llvm.dbg.value(metadata ptr %5, metadata !4313, metadata !DIExpression()), !dbg !4415
  %6 = icmp eq ptr %5, null, !dbg !4417
  br i1 %6, label %7, label %8, !dbg !4418

7:                                                ; preds = %2
  tail call void @xalloc_die() #44, !dbg !4419
  unreachable, !dbg !4419

8:                                                ; preds = %2
  ret ptr %5, !dbg !4420
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #33 !dbg !4421 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4425, metadata !DIExpression()), !dbg !4428
  call void @llvm.dbg.value(metadata i64 %1, metadata !4426, metadata !DIExpression()), !dbg !4428
  call void @llvm.dbg.value(metadata i64 %2, metadata !4427, metadata !DIExpression()), !dbg !4428
  call void @llvm.dbg.value(metadata ptr %0, metadata !4429, metadata !DIExpression()), !dbg !4434
  call void @llvm.dbg.value(metadata i64 %1, metadata !4432, metadata !DIExpression()), !dbg !4434
  call void @llvm.dbg.value(metadata i64 %2, metadata !4433, metadata !DIExpression()), !dbg !4434
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #42, !dbg !4436
  call void @llvm.dbg.value(metadata ptr %4, metadata !4313, metadata !DIExpression()), !dbg !4437
  %5 = icmp eq ptr %4, null, !dbg !4439
  br i1 %5, label %6, label %7, !dbg !4440

6:                                                ; preds = %3
  tail call void @xalloc_die() #44, !dbg !4441
  unreachable, !dbg !4441

7:                                                ; preds = %3
  ret ptr %4, !dbg !4442
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #37 !dbg !4443 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4447, metadata !DIExpression()), !dbg !4449
  call void @llvm.dbg.value(metadata i64 %1, metadata !4448, metadata !DIExpression()), !dbg !4449
  call void @llvm.dbg.value(metadata ptr null, metadata !4305, metadata !DIExpression()), !dbg !4450
  call void @llvm.dbg.value(metadata i64 %0, metadata !4308, metadata !DIExpression()), !dbg !4450
  call void @llvm.dbg.value(metadata i64 %1, metadata !4309, metadata !DIExpression()), !dbg !4450
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #42, !dbg !4452
  call void @llvm.dbg.value(metadata ptr %3, metadata !4313, metadata !DIExpression()), !dbg !4453
  %4 = icmp eq ptr %3, null, !dbg !4455
  br i1 %4, label %5, label %6, !dbg !4456

5:                                                ; preds = %2
  tail call void @xalloc_die() #44, !dbg !4457
  unreachable, !dbg !4457

6:                                                ; preds = %2
  ret ptr %3, !dbg !4458
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #37 !dbg !4459 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4463, metadata !DIExpression()), !dbg !4465
  call void @llvm.dbg.value(metadata i64 %1, metadata !4464, metadata !DIExpression()), !dbg !4465
  call void @llvm.dbg.value(metadata ptr null, metadata !4425, metadata !DIExpression()), !dbg !4466
  call void @llvm.dbg.value(metadata i64 %0, metadata !4426, metadata !DIExpression()), !dbg !4466
  call void @llvm.dbg.value(metadata i64 %1, metadata !4427, metadata !DIExpression()), !dbg !4466
  call void @llvm.dbg.value(metadata ptr null, metadata !4429, metadata !DIExpression()), !dbg !4468
  call void @llvm.dbg.value(metadata i64 %0, metadata !4432, metadata !DIExpression()), !dbg !4468
  call void @llvm.dbg.value(metadata i64 %1, metadata !4433, metadata !DIExpression()), !dbg !4468
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #42, !dbg !4470
  call void @llvm.dbg.value(metadata ptr %3, metadata !4313, metadata !DIExpression()), !dbg !4471
  %4 = icmp eq ptr %3, null, !dbg !4473
  br i1 %4, label %5, label %6, !dbg !4474

5:                                                ; preds = %2
  tail call void @xalloc_die() #44, !dbg !4475
  unreachable, !dbg !4475

6:                                                ; preds = %2
  ret ptr %3, !dbg !4476
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #18 !dbg !4477 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4481, metadata !DIExpression()), !dbg !4483
  call void @llvm.dbg.value(metadata ptr %1, metadata !4482, metadata !DIExpression()), !dbg !4483
  call void @llvm.dbg.value(metadata ptr %0, metadata !802, metadata !DIExpression()), !dbg !4484
  call void @llvm.dbg.value(metadata ptr %1, metadata !803, metadata !DIExpression()), !dbg !4484
  call void @llvm.dbg.value(metadata i64 1, metadata !804, metadata !DIExpression()), !dbg !4484
  %3 = load i64, ptr %1, align 8, !dbg !4486, !tbaa !1319
  call void @llvm.dbg.value(metadata i64 %3, metadata !805, metadata !DIExpression()), !dbg !4484
  %4 = icmp eq ptr %0, null, !dbg !4487
  br i1 %4, label %5, label %8, !dbg !4489

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4490
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4493
  br label %15, !dbg !4493

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4494
  %10 = add nuw i64 %9, 1, !dbg !4494
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4494
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4494
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4494
  call void @llvm.dbg.value(metadata i64 %13, metadata !805, metadata !DIExpression()), !dbg !4484
  br i1 %12, label %14, label %15, !dbg !4497

14:                                               ; preds = %8
  tail call void @xalloc_die() #44, !dbg !4498
  unreachable, !dbg !4498

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4484
  call void @llvm.dbg.value(metadata i64 %16, metadata !805, metadata !DIExpression()), !dbg !4484
  call void @llvm.dbg.value(metadata ptr %0, metadata !4305, metadata !DIExpression()), !dbg !4499
  call void @llvm.dbg.value(metadata i64 %16, metadata !4308, metadata !DIExpression()), !dbg !4499
  call void @llvm.dbg.value(metadata i64 1, metadata !4309, metadata !DIExpression()), !dbg !4499
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #42, !dbg !4501
  call void @llvm.dbg.value(metadata ptr %17, metadata !4313, metadata !DIExpression()), !dbg !4502
  %18 = icmp eq ptr %17, null, !dbg !4504
  br i1 %18, label %19, label %20, !dbg !4505

19:                                               ; preds = %15
  tail call void @xalloc_die() #44, !dbg !4506
  unreachable, !dbg !4506

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !802, metadata !DIExpression()), !dbg !4484
  store i64 %16, ptr %1, align 8, !dbg !4507, !tbaa !1319
  ret ptr %17, !dbg !4508
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #18 !dbg !797 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !802, metadata !DIExpression()), !dbg !4509
  call void @llvm.dbg.value(metadata ptr %1, metadata !803, metadata !DIExpression()), !dbg !4509
  call void @llvm.dbg.value(metadata i64 %2, metadata !804, metadata !DIExpression()), !dbg !4509
  %4 = load i64, ptr %1, align 8, !dbg !4510, !tbaa !1319
  call void @llvm.dbg.value(metadata i64 %4, metadata !805, metadata !DIExpression()), !dbg !4509
  %5 = icmp eq ptr %0, null, !dbg !4511
  br i1 %5, label %6, label %13, !dbg !4512

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4513
  br i1 %7, label %8, label %20, !dbg !4514

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4515
  call void @llvm.dbg.value(metadata i64 %9, metadata !805, metadata !DIExpression()), !dbg !4509
  %10 = icmp ugt i64 %2, 128, !dbg !4517
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4518
  call void @llvm.dbg.value(metadata i64 %12, metadata !805, metadata !DIExpression()), !dbg !4509
  br label %20, !dbg !4519

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4520
  %15 = add nuw i64 %14, 1, !dbg !4520
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4520
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4520
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4520
  call void @llvm.dbg.value(metadata i64 %18, metadata !805, metadata !DIExpression()), !dbg !4509
  br i1 %17, label %19, label %20, !dbg !4521

19:                                               ; preds = %13
  tail call void @xalloc_die() #44, !dbg !4522
  unreachable, !dbg !4522

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4509
  call void @llvm.dbg.value(metadata i64 %21, metadata !805, metadata !DIExpression()), !dbg !4509
  call void @llvm.dbg.value(metadata ptr %0, metadata !4305, metadata !DIExpression()), !dbg !4523
  call void @llvm.dbg.value(metadata i64 %21, metadata !4308, metadata !DIExpression()), !dbg !4523
  call void @llvm.dbg.value(metadata i64 %2, metadata !4309, metadata !DIExpression()), !dbg !4523
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #42, !dbg !4525
  call void @llvm.dbg.value(metadata ptr %22, metadata !4313, metadata !DIExpression()), !dbg !4526
  %23 = icmp eq ptr %22, null, !dbg !4528
  br i1 %23, label %24, label %25, !dbg !4529

24:                                               ; preds = %20
  tail call void @xalloc_die() #44, !dbg !4530
  unreachable, !dbg !4530

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !802, metadata !DIExpression()), !dbg !4509
  store i64 %21, ptr %1, align 8, !dbg !4531, !tbaa !1319
  ret ptr %22, !dbg !4532
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #18 !dbg !809 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !814, metadata !DIExpression()), !dbg !4533
  call void @llvm.dbg.value(metadata ptr %1, metadata !815, metadata !DIExpression()), !dbg !4533
  call void @llvm.dbg.value(metadata i64 %2, metadata !816, metadata !DIExpression()), !dbg !4533
  call void @llvm.dbg.value(metadata i64 %3, metadata !817, metadata !DIExpression()), !dbg !4533
  call void @llvm.dbg.value(metadata i64 %4, metadata !818, metadata !DIExpression()), !dbg !4533
  %6 = load i64, ptr %1, align 8, !dbg !4534, !tbaa !1319
  call void @llvm.dbg.value(metadata i64 %6, metadata !819, metadata !DIExpression()), !dbg !4533
  %7 = ashr i64 %6, 1, !dbg !4535
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4535
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4535
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4535
  call void @llvm.dbg.value(metadata i64 %10, metadata !820, metadata !DIExpression()), !dbg !4533
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4537
  call void @llvm.dbg.value(metadata i64 %11, metadata !820, metadata !DIExpression()), !dbg !4533
  %12 = icmp sgt i64 %3, -1, !dbg !4538
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !4540
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !4540
  call void @llvm.dbg.value(metadata i64 %15, metadata !820, metadata !DIExpression()), !dbg !4533
  %16 = icmp slt i64 %4, 0, !dbg !4541
  br i1 %16, label %17, label %30, !dbg !4541

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !4541
  br i1 %18, label %19, label %24, !dbg !4541

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !4541
  %21 = udiv i64 9223372036854775807, %20, !dbg !4541
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !4541
  br i1 %23, label %46, label %43, !dbg !4541

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !4541
  br i1 %25, label %43, label %26, !dbg !4541

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !4541
  %28 = udiv i64 -9223372036854775808, %27, !dbg !4541
  %29 = icmp ult i64 %28, %15, !dbg !4541
  br i1 %29, label %46, label %43, !dbg !4541

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !4541
  br i1 %31, label %43, label %32, !dbg !4541

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !4541
  br i1 %33, label %34, label %40, !dbg !4541

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !4541
  br i1 %35, label %43, label %36, !dbg !4541

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !4541
  %38 = udiv i64 -9223372036854775808, %37, !dbg !4541
  %39 = icmp ult i64 %38, %4, !dbg !4541
  br i1 %39, label %46, label %43, !dbg !4541

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !4541
  br i1 %42, label %46, label %43, !dbg !4541

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !821, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4533
  %44 = mul i64 %15, %4, !dbg !4541
  call void @llvm.dbg.value(metadata i64 %44, metadata !821, metadata !DIExpression()), !dbg !4533
  %45 = icmp slt i64 %44, 128, !dbg !4541
  br i1 %45, label %46, label %51, !dbg !4541

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !822, metadata !DIExpression()), !dbg !4533
  %48 = sdiv i64 %47, %4, !dbg !4542
  call void @llvm.dbg.value(metadata i64 %48, metadata !820, metadata !DIExpression()), !dbg !4533
  %49 = srem i64 %47, %4, !dbg !4545
  %50 = sub nsw i64 %47, %49, !dbg !4546
  call void @llvm.dbg.value(metadata i64 %50, metadata !821, metadata !DIExpression()), !dbg !4533
  br label %51, !dbg !4547

51:                                               ; preds = %43, %46
  %52 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !4533
  %53 = phi i64 [ %50, %46 ], [ %44, %43 ], !dbg !4533
  call void @llvm.dbg.value(metadata i64 %53, metadata !821, metadata !DIExpression()), !dbg !4533
  call void @llvm.dbg.value(metadata i64 %52, metadata !820, metadata !DIExpression()), !dbg !4533
  %54 = icmp eq ptr %0, null, !dbg !4548
  br i1 %54, label %55, label %56, !dbg !4550

55:                                               ; preds = %51
  store i64 0, ptr %1, align 8, !dbg !4551, !tbaa !1319
  br label %56, !dbg !4552

56:                                               ; preds = %55, %51
  %57 = sub nsw i64 %52, %6, !dbg !4553
  %58 = icmp slt i64 %57, %2, !dbg !4555
  br i1 %58, label %59, label %96, !dbg !4556

59:                                               ; preds = %56
  %60 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4557
  %61 = extractvalue { i64, i1 } %60, 1, !dbg !4557
  %62 = extractvalue { i64, i1 } %60, 0, !dbg !4557
  call void @llvm.dbg.value(metadata i64 %62, metadata !820, metadata !DIExpression()), !dbg !4533
  %63 = icmp sgt i64 %62, %3
  %64 = select i1 %12, i1 %63, i1 false
  %65 = or i1 %61, %64, !dbg !4558
  br i1 %65, label %95, label %66, !dbg !4558

66:                                               ; preds = %59
  br i1 %16, label %67, label %80, !dbg !4559

67:                                               ; preds = %66
  %68 = icmp slt i64 %62, 0, !dbg !4559
  br i1 %68, label %69, label %74, !dbg !4559

69:                                               ; preds = %67
  %70 = sub i64 0, %4, !dbg !4559
  %71 = udiv i64 9223372036854775807, %70, !dbg !4559
  %72 = sub nsw i64 0, %71
  %73 = icmp slt i64 %62, %72, !dbg !4559
  br i1 %73, label %95, label %93, !dbg !4559

74:                                               ; preds = %67
  %75 = icmp eq i64 %4, -1, !dbg !4559
  br i1 %75, label %93, label %76, !dbg !4559

76:                                               ; preds = %74
  %77 = sub i64 0, %4, !dbg !4559
  %78 = udiv i64 -9223372036854775808, %77, !dbg !4559
  %79 = icmp ult i64 %78, %62, !dbg !4559
  br i1 %79, label %95, label %93, !dbg !4559

80:                                               ; preds = %66
  %81 = icmp eq i64 %4, 0, !dbg !4559
  br i1 %81, label %93, label %82, !dbg !4559

82:                                               ; preds = %80
  %83 = icmp slt i64 %62, 0, !dbg !4559
  br i1 %83, label %84, label %90, !dbg !4559

84:                                               ; preds = %82
  %85 = icmp eq i64 %62, -1, !dbg !4559
  br i1 %85, label %93, label %86, !dbg !4559

86:                                               ; preds = %84
  %87 = sub i64 0, %62, !dbg !4559
  %88 = udiv i64 -9223372036854775808, %87, !dbg !4559
  %89 = icmp ult i64 %88, %4, !dbg !4559
  br i1 %89, label %95, label %93, !dbg !4559

90:                                               ; preds = %82
  %91 = udiv i64 9223372036854775807, %4
  %92 = icmp ult i64 %91, %62, !dbg !4559
  br i1 %92, label %95, label %93, !dbg !4559

93:                                               ; preds = %69, %76, %86, %90, %80, %74, %84
  call void @llvm.dbg.value(metadata !DIArgList(i64 %62, i64 %4), metadata !821, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4533
  %94 = mul i64 %62, %4, !dbg !4559
  call void @llvm.dbg.value(metadata i64 %94, metadata !821, metadata !DIExpression()), !dbg !4533
  br label %96, !dbg !4560

95:                                               ; preds = %69, %76, %86, %90, %59
  tail call void @xalloc_die() #44, !dbg !4561
  unreachable, !dbg !4561

96:                                               ; preds = %93, %56
  %97 = phi i64 [ %62, %93 ], [ %52, %56 ], !dbg !4533
  %98 = phi i64 [ %94, %93 ], [ %53, %56 ], !dbg !4533
  call void @llvm.dbg.value(metadata i64 %98, metadata !821, metadata !DIExpression()), !dbg !4533
  call void @llvm.dbg.value(metadata i64 %97, metadata !820, metadata !DIExpression()), !dbg !4533
  call void @llvm.dbg.value(metadata ptr %0, metadata !4379, metadata !DIExpression()), !dbg !4562
  call void @llvm.dbg.value(metadata i64 %98, metadata !4380, metadata !DIExpression()), !dbg !4562
  call void @llvm.dbg.value(metadata ptr %0, metadata !4382, metadata !DIExpression()), !dbg !4564
  call void @llvm.dbg.value(metadata i64 %98, metadata !4386, metadata !DIExpression()), !dbg !4564
  %99 = icmp eq i64 %98, 0, !dbg !4566
  %100 = select i1 %99, i64 1, i64 %98, !dbg !4566
  %101 = tail call ptr @realloc(ptr noundef %0, i64 noundef %100) #49, !dbg !4567
  call void @llvm.dbg.value(metadata ptr %101, metadata !4313, metadata !DIExpression()), !dbg !4568
  %102 = icmp eq ptr %101, null, !dbg !4570
  br i1 %102, label %103, label %104, !dbg !4571

103:                                              ; preds = %96
  tail call void @xalloc_die() #44, !dbg !4572
  unreachable, !dbg !4572

104:                                              ; preds = %96
  call void @llvm.dbg.value(metadata ptr %101, metadata !814, metadata !DIExpression()), !dbg !4533
  store i64 %97, ptr %1, align 8, !dbg !4573, !tbaa !1319
  ret ptr %101, !dbg !4574
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #34 !dbg !4575 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4577, metadata !DIExpression()), !dbg !4578
  call void @llvm.dbg.value(metadata i64 %0, metadata !4579, metadata !DIExpression()), !dbg !4583
  call void @llvm.dbg.value(metadata i64 1, metadata !4582, metadata !DIExpression()), !dbg !4583
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #50, !dbg !4585
  call void @llvm.dbg.value(metadata ptr %2, metadata !4313, metadata !DIExpression()), !dbg !4586
  %3 = icmp eq ptr %2, null, !dbg !4588
  br i1 %3, label %4, label %5, !dbg !4589

4:                                                ; preds = %1
  tail call void @xalloc_die() #44, !dbg !4590
  unreachable, !dbg !4590

5:                                                ; preds = %1
  ret ptr %2, !dbg !4591
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4592 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #38

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #37 !dbg !4580 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4579, metadata !DIExpression()), !dbg !4593
  call void @llvm.dbg.value(metadata i64 %1, metadata !4582, metadata !DIExpression()), !dbg !4593
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #50, !dbg !4594
  call void @llvm.dbg.value(metadata ptr %3, metadata !4313, metadata !DIExpression()), !dbg !4595
  %4 = icmp eq ptr %3, null, !dbg !4597
  br i1 %4, label %5, label %6, !dbg !4598

5:                                                ; preds = %2
  tail call void @xalloc_die() #44, !dbg !4599
  unreachable, !dbg !4599

6:                                                ; preds = %2
  ret ptr %3, !dbg !4600
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #34 !dbg !4601 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4603, metadata !DIExpression()), !dbg !4604
  call void @llvm.dbg.value(metadata i64 %0, metadata !4605, metadata !DIExpression()), !dbg !4609
  call void @llvm.dbg.value(metadata i64 1, metadata !4608, metadata !DIExpression()), !dbg !4609
  call void @llvm.dbg.value(metadata i64 %0, metadata !4611, metadata !DIExpression()), !dbg !4615
  call void @llvm.dbg.value(metadata i64 1, metadata !4614, metadata !DIExpression()), !dbg !4615
  call void @llvm.dbg.value(metadata i64 %0, metadata !4611, metadata !DIExpression()), !dbg !4615
  call void @llvm.dbg.value(metadata i64 1, metadata !4614, metadata !DIExpression()), !dbg !4615
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #50, !dbg !4617
  call void @llvm.dbg.value(metadata ptr %2, metadata !4313, metadata !DIExpression()), !dbg !4618
  %3 = icmp eq ptr %2, null, !dbg !4620
  br i1 %3, label %4, label %5, !dbg !4621

4:                                                ; preds = %1
  tail call void @xalloc_die() #44, !dbg !4622
  unreachable, !dbg !4622

5:                                                ; preds = %1
  ret ptr %2, !dbg !4623
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #37 !dbg !4606 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4605, metadata !DIExpression()), !dbg !4624
  call void @llvm.dbg.value(metadata i64 %1, metadata !4608, metadata !DIExpression()), !dbg !4624
  call void @llvm.dbg.value(metadata i64 %0, metadata !4611, metadata !DIExpression()), !dbg !4625
  call void @llvm.dbg.value(metadata i64 %1, metadata !4614, metadata !DIExpression()), !dbg !4625
  call void @llvm.dbg.value(metadata i64 %0, metadata !4611, metadata !DIExpression()), !dbg !4625
  call void @llvm.dbg.value(metadata i64 %1, metadata !4614, metadata !DIExpression()), !dbg !4625
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #50, !dbg !4627
  call void @llvm.dbg.value(metadata ptr %3, metadata !4313, metadata !DIExpression()), !dbg !4628
  %4 = icmp eq ptr %3, null, !dbg !4630
  br i1 %4, label %5, label %6, !dbg !4631

5:                                                ; preds = %2
  tail call void @xalloc_die() #44, !dbg !4632
  unreachable, !dbg !4632

6:                                                ; preds = %2
  ret ptr %3, !dbg !4633
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4634 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4638, metadata !DIExpression()), !dbg !4640
  call void @llvm.dbg.value(metadata i64 %1, metadata !4639, metadata !DIExpression()), !dbg !4640
  call void @llvm.dbg.value(metadata i64 %1, metadata !4335, metadata !DIExpression()), !dbg !4641
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #47, !dbg !4643
  call void @llvm.dbg.value(metadata ptr %3, metadata !4313, metadata !DIExpression()), !dbg !4644
  %4 = icmp eq ptr %3, null, !dbg !4646
  br i1 %4, label %5, label %6, !dbg !4647

5:                                                ; preds = %2
  tail call void @xalloc_die() #44, !dbg !4648
  unreachable, !dbg !4648

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4649, metadata !DIExpression()), !dbg !4657
  call void @llvm.dbg.value(metadata ptr %0, metadata !4655, metadata !DIExpression()), !dbg !4657
  call void @llvm.dbg.value(metadata i64 %1, metadata !4656, metadata !DIExpression()), !dbg !4657
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #42, !dbg !4659
  ret ptr %3, !dbg !4660
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4661 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4665, metadata !DIExpression()), !dbg !4667
  call void @llvm.dbg.value(metadata i64 %1, metadata !4666, metadata !DIExpression()), !dbg !4667
  call void @llvm.dbg.value(metadata i64 %1, metadata !4346, metadata !DIExpression()), !dbg !4668
  call void @llvm.dbg.value(metadata i64 %1, metadata !4348, metadata !DIExpression()), !dbg !4670
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #47, !dbg !4672
  call void @llvm.dbg.value(metadata ptr %3, metadata !4313, metadata !DIExpression()), !dbg !4673
  %4 = icmp eq ptr %3, null, !dbg !4675
  br i1 %4, label %5, label %6, !dbg !4676

5:                                                ; preds = %2
  tail call void @xalloc_die() #44, !dbg !4677
  unreachable, !dbg !4677

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4649, metadata !DIExpression()), !dbg !4678
  call void @llvm.dbg.value(metadata ptr %0, metadata !4655, metadata !DIExpression()), !dbg !4678
  call void @llvm.dbg.value(metadata i64 %1, metadata !4656, metadata !DIExpression()), !dbg !4678
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #42, !dbg !4680
  ret ptr %3, !dbg !4681
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #18 !dbg !4682 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4686, metadata !DIExpression()), !dbg !4689
  call void @llvm.dbg.value(metadata i64 %1, metadata !4687, metadata !DIExpression()), !dbg !4689
  %3 = add nsw i64 %1, 1, !dbg !4690
  call void @llvm.dbg.value(metadata i64 %3, metadata !4346, metadata !DIExpression()), !dbg !4691
  call void @llvm.dbg.value(metadata i64 %3, metadata !4348, metadata !DIExpression()), !dbg !4693
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #47, !dbg !4695
  call void @llvm.dbg.value(metadata ptr %4, metadata !4313, metadata !DIExpression()), !dbg !4696
  %5 = icmp eq ptr %4, null, !dbg !4698
  br i1 %5, label %6, label %7, !dbg !4699

6:                                                ; preds = %2
  tail call void @xalloc_die() #44, !dbg !4700
  unreachable, !dbg !4700

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !4688, metadata !DIExpression()), !dbg !4689
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4701
  store i8 0, ptr %8, align 1, !dbg !4702, !tbaa !945
  call void @llvm.dbg.value(metadata ptr %4, metadata !4649, metadata !DIExpression()), !dbg !4703
  call void @llvm.dbg.value(metadata ptr %0, metadata !4655, metadata !DIExpression()), !dbg !4703
  call void @llvm.dbg.value(metadata i64 %1, metadata !4656, metadata !DIExpression()), !dbg !4703
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #42, !dbg !4705
  ret ptr %4, !dbg !4706
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #18 !dbg !4707 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4709, metadata !DIExpression()), !dbg !4710
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #43, !dbg !4711
  %3 = add i64 %2, 1, !dbg !4712
  call void @llvm.dbg.value(metadata ptr %0, metadata !4638, metadata !DIExpression()), !dbg !4713
  call void @llvm.dbg.value(metadata i64 %3, metadata !4639, metadata !DIExpression()), !dbg !4713
  call void @llvm.dbg.value(metadata i64 %3, metadata !4335, metadata !DIExpression()), !dbg !4715
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #47, !dbg !4717
  call void @llvm.dbg.value(metadata ptr %4, metadata !4313, metadata !DIExpression()), !dbg !4718
  %5 = icmp eq ptr %4, null, !dbg !4720
  br i1 %5, label %6, label %7, !dbg !4721

6:                                                ; preds = %1
  tail call void @xalloc_die() #44, !dbg !4722
  unreachable, !dbg !4722

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4649, metadata !DIExpression()), !dbg !4723
  call void @llvm.dbg.value(metadata ptr %0, metadata !4655, metadata !DIExpression()), !dbg !4723
  call void @llvm.dbg.value(metadata i64 %3, metadata !4656, metadata !DIExpression()), !dbg !4723
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #42, !dbg !4725
  ret ptr %4, !dbg !4726
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4727 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4732, !tbaa !936
  call void @llvm.dbg.value(metadata i32 %1, metadata !4729, metadata !DIExpression()), !dbg !4733
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.142, ptr noundef nonnull @.str.2.143, i32 noundef 5) #42, !dbg !4732
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.144, ptr noundef %2) #42, !dbg !4732
  %3 = icmp eq i32 %1, 0, !dbg !4732
  tail call void @llvm.assume(i1 %3), !dbg !4732
  tail call void @abort() #44, !dbg !4734
  unreachable, !dbg !4734
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #31

; Function Attrs: nounwind uwtable
define dso_local i32 @xstrtoimax(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr noundef readonly %4) local_unnamed_addr #18 !dbg !4735 {
  %6 = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4741, metadata !DIExpression()), !dbg !4755
  call void @llvm.dbg.value(metadata ptr %1, metadata !4742, metadata !DIExpression()), !dbg !4755
  call void @llvm.dbg.value(metadata i32 %2, metadata !4743, metadata !DIExpression()), !dbg !4755
  call void @llvm.dbg.value(metadata ptr %3, metadata !4744, metadata !DIExpression()), !dbg !4755
  call void @llvm.dbg.value(metadata ptr %4, metadata !4745, metadata !DIExpression()), !dbg !4755
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #42, !dbg !4756
  %7 = icmp eq ptr %1, null, !dbg !4757
  %8 = select i1 %7, ptr %6, ptr %1, !dbg !4757
  call void @llvm.dbg.value(metadata ptr %8, metadata !4747, metadata !DIExpression()), !dbg !4755
  %9 = tail call ptr @__errno_location() #45, !dbg !4758
  store i32 0, ptr %9, align 4, !dbg !4759, !tbaa !936
  %10 = call i64 @strtoimax(ptr noundef %0, ptr noundef %8, i32 noundef %2) #42, !dbg !4760
  call void @llvm.dbg.value(metadata i64 %10, metadata !4748, metadata !DIExpression()), !dbg !4755
  call void @llvm.dbg.value(metadata i32 0, metadata !4749, metadata !DIExpression()), !dbg !4755
  %11 = load ptr, ptr %8, align 8, !dbg !4761, !tbaa !866
  %12 = icmp eq ptr %11, %0, !dbg !4763
  br i1 %12, label %13, label %22, !dbg !4764

13:                                               ; preds = %5
  %14 = icmp eq ptr %4, null, !dbg !4765
  br i1 %14, label %991, label %15, !dbg !4768

15:                                               ; preds = %13
  %16 = load i8, ptr %0, align 1, !dbg !4769, !tbaa !945
  %17 = icmp eq i8 %16, 0, !dbg !4769
  br i1 %17, label %991, label %18, !dbg !4770

18:                                               ; preds = %15
  %19 = sext i8 %16 to i32, !dbg !4769
  %20 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %19) #43, !dbg !4771
  %21 = icmp eq ptr %20, null, !dbg !4771
  br i1 %21, label %991, label %29, !dbg !4772

22:                                               ; preds = %5
  %23 = load i32, ptr %9, align 4, !dbg !4773, !tbaa !936
  switch i32 %23, label %991 [
    i32 0, label %25
    i32 34, label %24
  ], !dbg !4775

24:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i32 1, metadata !4749, metadata !DIExpression()), !dbg !4755
  br label %25, !dbg !4776

25:                                               ; preds = %22, %24
  %26 = phi i32 [ 1, %24 ], [ %23, %22 ], !dbg !4755
  call void @llvm.dbg.value(metadata i32 %26, metadata !4749, metadata !DIExpression()), !dbg !4755
  %27 = icmp eq ptr %4, null, !dbg !4778
  br i1 %27, label %28, label %29, !dbg !4780

28:                                               ; preds = %25
  call void @llvm.dbg.value(metadata i64 %10, metadata !4748, metadata !DIExpression()), !dbg !4755
  store i64 %10, ptr %3, align 8, !dbg !4781, !tbaa !1319
  br label %991, !dbg !4783

29:                                               ; preds = %18, %25
  %30 = phi i32 [ %26, %25 ], [ 0, %18 ]
  %31 = phi i64 [ %10, %25 ], [ 1, %18 ]
  %32 = load i8, ptr %11, align 1, !dbg !4784, !tbaa !945
  %33 = sext i8 %32 to i32, !dbg !4784
  %34 = icmp eq i8 %32, 0, !dbg !4785
  br i1 %34, label %988, label %35, !dbg !4786

35:                                               ; preds = %29
  %36 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %33) #43, !dbg !4787
  %37 = icmp eq ptr %36, null, !dbg !4787
  br i1 %37, label %38, label %40, !dbg !4789

38:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i64 %10, metadata !4748, metadata !DIExpression()), !dbg !4755
  store i64 %31, ptr %3, align 8, !dbg !4790, !tbaa !1319
  %39 = or i32 %30, 2, !dbg !4792
  br label %991, !dbg !4793

40:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i32 1024, metadata !4750, metadata !DIExpression()), !dbg !4794
  call void @llvm.dbg.value(metadata i32 1, metadata !4753, metadata !DIExpression()), !dbg !4794
  switch i32 %33, label %54 [
    i32 69, label %41
    i32 71, label %41
    i32 103, label %41
    i32 107, label %41
    i32 75, label %41
    i32 77, label %41
    i32 109, label %41
    i32 80, label %41
    i32 81, label %41
    i32 82, label %41
    i32 84, label %41
    i32 116, label %41
    i32 89, label %41
    i32 90, label %41
  ], !dbg !4795

41:                                               ; preds = %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40
  %42 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef 48) #43, !dbg !4796
  %43 = icmp eq ptr %42, null, !dbg !4796
  br i1 %43, label %54, label %44, !dbg !4799

44:                                               ; preds = %41
  %45 = getelementptr inbounds i8, ptr %11, i64 1, !dbg !4800
  %46 = load i8, ptr %45, align 1, !dbg !4800, !tbaa !945
  %47 = sext i8 %46 to i32, !dbg !4800
  switch i32 %47, label %54 [
    i32 105, label %48
    i32 66, label %53
    i32 68, label %53
  ], !dbg !4801

48:                                               ; preds = %44
  %49 = getelementptr inbounds i8, ptr %11, i64 2, !dbg !4802
  %50 = load i8, ptr %49, align 1, !dbg !4802, !tbaa !945
  %51 = icmp eq i8 %50, 66, !dbg !4805
  %52 = select i1 %51, i64 3, i64 1, !dbg !4806
  br label %54, !dbg !4806

53:                                               ; preds = %44, %44
  call void @llvm.dbg.value(metadata i32 1000, metadata !4750, metadata !DIExpression()), !dbg !4794
  call void @llvm.dbg.value(metadata i32 2, metadata !4753, metadata !DIExpression()), !dbg !4794
  br label %54, !dbg !4807

54:                                               ; preds = %48, %41, %44, %53, %40
  %55 = phi i64 [ 1024, %40 ], [ 1024, %44 ], [ 1000, %53 ], [ 1024, %41 ], [ 1024, %48 ]
  %56 = phi i64 [ 1, %40 ], [ 1, %44 ], [ 2, %53 ], [ 1, %41 ], [ %52, %48 ]
  call void @llvm.dbg.value(metadata i32 poison, metadata !4753, metadata !DIExpression()), !dbg !4794
  call void @llvm.dbg.value(metadata i32 poison, metadata !4750, metadata !DIExpression()), !dbg !4794
  switch i32 %33, label %986 [
    i32 98, label %69
    i32 66, label %77
    i32 99, label %977
    i32 69, label %67
    i32 71, label %181
    i32 103, label %181
    i32 107, label %231
    i32 75, label %231
    i32 77, label %244
    i32 109, label %244
    i32 80, label %65
    i32 81, label %63
    i32 82, label %61
    i32 84, label %662
    i32 116, label %662
    i32 119, label %728
    i32 89, label %59
    i32 90, label %57
  ], !dbg !4808

57:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i32 0, metadata !4809, metadata !DIExpression()), !dbg !4817
  call void @llvm.dbg.value(metadata i32 7, metadata !4816, metadata !DIExpression()), !dbg !4817
  call void @llvm.dbg.value(metadata i32 6, metadata !4816, metadata !DIExpression()), !dbg !4817
  call void @llvm.dbg.value(metadata ptr undef, metadata !4820, metadata !DIExpression()), !dbg !4827
  call void @llvm.dbg.value(metadata i32 poison, metadata !4825, metadata !DIExpression()), !dbg !4827
  %58 = icmp slt i64 %31, 0, !dbg !4829
  br i1 %58, label %865, label %871, !dbg !4829

59:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i32 0, metadata !4809, metadata !DIExpression()), !dbg !4831
  call void @llvm.dbg.value(metadata i32 8, metadata !4816, metadata !DIExpression()), !dbg !4831
  call void @llvm.dbg.value(metadata i32 7, metadata !4816, metadata !DIExpression()), !dbg !4831
  call void @llvm.dbg.value(metadata ptr undef, metadata !4820, metadata !DIExpression()), !dbg !4833
  call void @llvm.dbg.value(metadata i32 poison, metadata !4825, metadata !DIExpression()), !dbg !4833
  %60 = icmp slt i64 %31, 0, !dbg !4835
  br i1 %60, label %737, label %743, !dbg !4835

61:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i32 0, metadata !4809, metadata !DIExpression()), !dbg !4836
  call void @llvm.dbg.value(metadata i32 9, metadata !4816, metadata !DIExpression()), !dbg !4836
  call void @llvm.dbg.value(metadata i32 8, metadata !4816, metadata !DIExpression()), !dbg !4836
  call void @llvm.dbg.value(metadata ptr undef, metadata !4820, metadata !DIExpression()), !dbg !4838
  call void @llvm.dbg.value(metadata i32 poison, metadata !4825, metadata !DIExpression()), !dbg !4838
  %62 = icmp slt i64 %31, 0, !dbg !4840
  br i1 %62, label %518, label %524, !dbg !4840

63:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i32 0, metadata !4809, metadata !DIExpression()), !dbg !4841
  call void @llvm.dbg.value(metadata i32 10, metadata !4816, metadata !DIExpression()), !dbg !4841
  call void @llvm.dbg.value(metadata i32 9, metadata !4816, metadata !DIExpression()), !dbg !4841
  call void @llvm.dbg.value(metadata ptr undef, metadata !4820, metadata !DIExpression()), !dbg !4843
  call void @llvm.dbg.value(metadata i32 poison, metadata !4825, metadata !DIExpression()), !dbg !4843
  %64 = icmp slt i64 %31, 0, !dbg !4845
  br i1 %64, label %358, label %364, !dbg !4845

65:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i32 0, metadata !4809, metadata !DIExpression()), !dbg !4846
  call void @llvm.dbg.value(metadata i32 5, metadata !4816, metadata !DIExpression()), !dbg !4846
  call void @llvm.dbg.value(metadata i32 4, metadata !4816, metadata !DIExpression()), !dbg !4846
  call void @llvm.dbg.value(metadata ptr undef, metadata !4820, metadata !DIExpression()), !dbg !4848
  call void @llvm.dbg.value(metadata i32 poison, metadata !4825, metadata !DIExpression()), !dbg !4848
  %66 = icmp slt i64 %31, 0, !dbg !4850
  br i1 %66, label %278, label %284, !dbg !4850

67:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i32 0, metadata !4809, metadata !DIExpression()), !dbg !4851
  call void @llvm.dbg.value(metadata i32 6, metadata !4816, metadata !DIExpression()), !dbg !4851
  call void @llvm.dbg.value(metadata i32 5, metadata !4816, metadata !DIExpression()), !dbg !4851
  call void @llvm.dbg.value(metadata ptr undef, metadata !4820, metadata !DIExpression()), !dbg !4853
  call void @llvm.dbg.value(metadata i32 poison, metadata !4825, metadata !DIExpression()), !dbg !4853
  %68 = icmp slt i64 %31, 0, !dbg !4855
  br i1 %68, label %85, label %91, !dbg !4855

69:                                               ; preds = %54
  call void @llvm.dbg.value(metadata ptr undef, metadata !4820, metadata !DIExpression()), !dbg !4856
  call void @llvm.dbg.value(metadata i32 512, metadata !4825, metadata !DIExpression()), !dbg !4856
  %70 = icmp slt i64 %31, 0, !dbg !4858
  br i1 %70, label %71, label %73, !dbg !4858

71:                                               ; preds = %69
  %72 = icmp ult i64 %31, -18014398509481984, !dbg !4858
  br i1 %72, label %977, label %75, !dbg !4858

73:                                               ; preds = %69
  %74 = icmp ugt i64 %31, 18014398509481983, !dbg !4858
  br i1 %74, label %977, label %75, !dbg !4858

75:                                               ; preds = %71, %73
  %76 = shl nsw i64 %31, 9, !dbg !4858
  call void @llvm.dbg.value(metadata i64 %76, metadata !4826, metadata !DIExpression()), !dbg !4856
  br label %977, !dbg !4859

77:                                               ; preds = %54
  call void @llvm.dbg.value(metadata ptr undef, metadata !4820, metadata !DIExpression()), !dbg !4860
  call void @llvm.dbg.value(metadata i32 1024, metadata !4825, metadata !DIExpression()), !dbg !4860
  %78 = icmp slt i64 %31, 0, !dbg !4862
  br i1 %78, label %79, label %81, !dbg !4862

79:                                               ; preds = %77
  %80 = icmp ult i64 %31, -9007199254740992, !dbg !4862
  br i1 %80, label %977, label %83, !dbg !4862

81:                                               ; preds = %77
  %82 = icmp ugt i64 %31, 9007199254740991, !dbg !4862
  br i1 %82, label %977, label %83, !dbg !4862

83:                                               ; preds = %79, %81
  %84 = shl nsw i64 %31, 10, !dbg !4862
  call void @llvm.dbg.value(metadata i64 %84, metadata !4826, metadata !DIExpression()), !dbg !4860
  br label %977, !dbg !4863

85:                                               ; preds = %67
  %86 = icmp eq i64 %31, -1, !dbg !4855
  br i1 %86, label %94, label %87, !dbg !4855

87:                                               ; preds = %85
  %88 = sub i64 0, %31, !dbg !4855
  %89 = udiv i64 -9223372036854775808, %88, !dbg !4855
  %90 = icmp ult i64 %89, %55, !dbg !4855
  br i1 %90, label %102, label %94, !dbg !4855

91:                                               ; preds = %67
  %92 = udiv i64 9223372036854775807, %55, !dbg !4855
  %93 = icmp ult i64 %92, %31, !dbg !4855
  br i1 %93, label %97, label %94, !dbg !4855

94:                                               ; preds = %85, %87, %91
  %95 = mul i64 %31, %55, !dbg !4855
  call void @llvm.dbg.value(metadata i64 %95, metadata !4826, metadata !DIExpression()), !dbg !4853
  call void @llvm.dbg.value(metadata i32 0, metadata !4809, metadata !DIExpression()), !dbg !4851
  call void @llvm.dbg.value(metadata i32 4, metadata !4816, metadata !DIExpression()), !dbg !4851
  call void @llvm.dbg.value(metadata ptr undef, metadata !4820, metadata !DIExpression()), !dbg !4853
  call void @llvm.dbg.value(metadata i32 poison, metadata !4825, metadata !DIExpression()), !dbg !4853
  %96 = icmp slt i64 %95, 0, !dbg !4855
  br i1 %96, label %102, label %97, !dbg !4855

97:                                               ; preds = %91, %94
  %98 = phi i32 [ 0, %94 ], [ 1, %91 ]
  %99 = phi i64 [ %95, %94 ], [ 9223372036854775807, %91 ]
  %100 = udiv i64 9223372036854775807, %55, !dbg !4855
  %101 = icmp ult i64 %100, %99, !dbg !4855
  br i1 %101, label %113, label %108, !dbg !4855

102:                                              ; preds = %87, %94
  %103 = phi i32 [ 0, %94 ], [ 1, %87 ]
  %104 = phi i64 [ %95, %94 ], [ -9223372036854775808, %87 ]
  %105 = sub i64 0, %104, !dbg !4855
  %106 = udiv i64 -9223372036854775808, %105, !dbg !4855
  %107 = icmp ult i64 %106, %55, !dbg !4855
  br i1 %107, label %118, label %108, !dbg !4855

108:                                              ; preds = %97, %102
  %109 = phi i32 [ %103, %102 ], [ %98, %97 ]
  %110 = phi i64 [ %104, %102 ], [ %99, %97 ]
  %111 = mul i64 %110, %55, !dbg !4855
  call void @llvm.dbg.value(metadata i64 %111, metadata !4826, metadata !DIExpression()), !dbg !4853
  call void @llvm.dbg.value(metadata i32 %109, metadata !4809, metadata !DIExpression()), !dbg !4851
  call void @llvm.dbg.value(metadata i32 3, metadata !4816, metadata !DIExpression()), !dbg !4851
  call void @llvm.dbg.value(metadata ptr undef, metadata !4820, metadata !DIExpression()), !dbg !4853
  call void @llvm.dbg.value(metadata i32 poison, metadata !4825, metadata !DIExpression()), !dbg !4853
  %112 = icmp slt i64 %111, 0, !dbg !4855
  br i1 %112, label %118, label %113, !dbg !4855

113:                                              ; preds = %97, %108
  %114 = phi i32 [ %109, %108 ], [ 1, %97 ]
  %115 = phi i64 [ %111, %108 ], [ 9223372036854775807, %97 ]
  %116 = udiv i64 9223372036854775807, %55, !dbg !4855
  %117 = icmp ult i64 %116, %115, !dbg !4855
  br i1 %117, label %129, label %124, !dbg !4855

118:                                              ; preds = %102, %108
  %119 = phi i32 [ %109, %108 ], [ 1, %102 ]
  %120 = phi i64 [ %111, %108 ], [ -9223372036854775808, %102 ]
  %121 = sub i64 0, %120, !dbg !4855
  %122 = udiv i64 -9223372036854775808, %121, !dbg !4855
  %123 = icmp ult i64 %122, %55, !dbg !4855
  br i1 %123, label %134, label %124, !dbg !4855

124:                                              ; preds = %113, %118
  %125 = phi i32 [ %119, %118 ], [ %114, %113 ]
  %126 = phi i64 [ %120, %118 ], [ %115, %113 ]
  %127 = mul i64 %126, %55, !dbg !4855
  call void @llvm.dbg.value(metadata i64 %127, metadata !4826, metadata !DIExpression()), !dbg !4853
  call void @llvm.dbg.value(metadata i32 %125, metadata !4809, metadata !DIExpression()), !dbg !4851
  call void @llvm.dbg.value(metadata i32 2, metadata !4816, metadata !DIExpression()), !dbg !4851
  call void @llvm.dbg.value(metadata ptr undef, metadata !4820, metadata !DIExpression()), !dbg !4853
  call void @llvm.dbg.value(metadata i32 poison, metadata !4825, metadata !DIExpression()), !dbg !4853
  %128 = icmp slt i64 %127, 0, !dbg !4855
  br i1 %128, label %134, label %129, !dbg !4855

129:                                              ; preds = %113, %124
  %130 = phi i32 [ %125, %124 ], [ 1, %113 ]
  %131 = phi i64 [ %127, %124 ], [ 9223372036854775807, %113 ]
  %132 = udiv i64 9223372036854775807, %55, !dbg !4855
  %133 = icmp ult i64 %132, %131, !dbg !4855
  br i1 %133, label %145, label %140, !dbg !4855

134:                                              ; preds = %118, %124
  %135 = phi i32 [ %125, %124 ], [ 1, %118 ]
  %136 = phi i64 [ %127, %124 ], [ -9223372036854775808, %118 ]
  %137 = sub i64 0, %136, !dbg !4855
  %138 = udiv i64 -9223372036854775808, %137, !dbg !4855
  %139 = icmp ult i64 %138, %55, !dbg !4855
  br i1 %139, label %150, label %140, !dbg !4855

140:                                              ; preds = %129, %134
  %141 = phi i32 [ %135, %134 ], [ %130, %129 ]
  %142 = phi i64 [ %136, %134 ], [ %131, %129 ]
  %143 = mul i64 %142, %55, !dbg !4855
  call void @llvm.dbg.value(metadata i64 %143, metadata !4826, metadata !DIExpression()), !dbg !4853
  call void @llvm.dbg.value(metadata i32 %141, metadata !4809, metadata !DIExpression()), !dbg !4851
  call void @llvm.dbg.value(metadata i32 1, metadata !4816, metadata !DIExpression()), !dbg !4851
  call void @llvm.dbg.value(metadata ptr undef, metadata !4820, metadata !DIExpression()), !dbg !4853
  call void @llvm.dbg.value(metadata i32 poison, metadata !4825, metadata !DIExpression()), !dbg !4853
  %144 = icmp slt i64 %143, 0, !dbg !4855
  br i1 %144, label %150, label %145, !dbg !4855

145:                                              ; preds = %129, %140
  %146 = phi i32 [ %141, %140 ], [ 1, %129 ]
  %147 = phi i64 [ %143, %140 ], [ 9223372036854775807, %129 ]
  %148 = udiv i64 9223372036854775807, %55, !dbg !4855
  %149 = icmp ult i64 %148, %147, !dbg !4855
  br i1 %149, label %161, label %156, !dbg !4855

150:                                              ; preds = %134, %140
  %151 = phi i32 [ %141, %140 ], [ 1, %134 ]
  %152 = phi i64 [ %143, %140 ], [ -9223372036854775808, %134 ]
  %153 = sub i64 0, %152, !dbg !4855
  %154 = udiv i64 -9223372036854775808, %153, !dbg !4855
  %155 = icmp ult i64 %154, %55, !dbg !4855
  br i1 %155, label %166, label %156, !dbg !4855

156:                                              ; preds = %145, %150
  %157 = phi i32 [ %151, %150 ], [ %146, %145 ]
  %158 = phi i64 [ %152, %150 ], [ %147, %145 ]
  %159 = mul i64 %158, %55, !dbg !4855
  call void @llvm.dbg.value(metadata i64 %159, metadata !4826, metadata !DIExpression()), !dbg !4853
  call void @llvm.dbg.value(metadata i32 %157, metadata !4809, metadata !DIExpression()), !dbg !4851
  call void @llvm.dbg.value(metadata i32 0, metadata !4816, metadata !DIExpression()), !dbg !4851
  call void @llvm.dbg.value(metadata ptr undef, metadata !4820, metadata !DIExpression()), !dbg !4853
  call void @llvm.dbg.value(metadata i32 poison, metadata !4825, metadata !DIExpression()), !dbg !4853
  %160 = icmp slt i64 %159, 0, !dbg !4855
  br i1 %160, label %166, label %161, !dbg !4855

161:                                              ; preds = %145, %156
  %162 = phi i32 [ %157, %156 ], [ 1, %145 ]
  %163 = phi i64 [ %159, %156 ], [ 9223372036854775807, %145 ]
  %164 = udiv i64 9223372036854775807, %55, !dbg !4855
  %165 = icmp ult i64 %164, %163, !dbg !4855
  br i1 %165, label %176, label %172, !dbg !4855

166:                                              ; preds = %150, %156
  %167 = phi i32 [ %157, %156 ], [ 1, %150 ]
  %168 = phi i64 [ %159, %156 ], [ -9223372036854775808, %150 ]
  %169 = sub i64 0, %168, !dbg !4855
  %170 = udiv i64 -9223372036854775808, %169, !dbg !4855
  %171 = icmp ult i64 %170, %55, !dbg !4855
  br i1 %171, label %176, label %172, !dbg !4855

172:                                              ; preds = %166, %161
  %173 = phi i32 [ %167, %166 ], [ %162, %161 ]
  %174 = phi i64 [ %168, %166 ], [ %163, %161 ]
  %175 = mul i64 %174, %55, !dbg !4855
  call void @llvm.dbg.value(metadata i64 %175, metadata !4826, metadata !DIExpression()), !dbg !4853
  br label %176, !dbg !4864

176:                                              ; preds = %172, %166, %161
  %177 = phi i32 [ %173, %172 ], [ %162, %161 ], [ %167, %166 ]
  %178 = phi i64 [ %175, %172 ], [ 9223372036854775807, %161 ], [ -9223372036854775808, %166 ], !dbg !4853
  %179 = phi i32 [ 0, %172 ], [ 1, %161 ], [ 1, %166 ], !dbg !4853
  %180 = or i32 %179, %177, !dbg !4865
  call void @llvm.dbg.value(metadata i32 %180, metadata !4809, metadata !DIExpression()), !dbg !4851
  call void @llvm.dbg.value(metadata i32 0, metadata !4816, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4851
  br label %977, !dbg !4866

181:                                              ; preds = %54, %54
  call void @llvm.dbg.value(metadata ptr undef, metadata !4814, metadata !DIExpression()), !dbg !4867
  call void @llvm.dbg.value(metadata i32 poison, metadata !4815, metadata !DIExpression()), !dbg !4867
  call void @llvm.dbg.value(metadata i32 0, metadata !4809, metadata !DIExpression()), !dbg !4867
  call void @llvm.dbg.value(metadata i32 2, metadata !4816, metadata !DIExpression()), !dbg !4867
  call void @llvm.dbg.value(metadata ptr undef, metadata !4820, metadata !DIExpression()), !dbg !4869
  call void @llvm.dbg.value(metadata i32 poison, metadata !4825, metadata !DIExpression()), !dbg !4869
  %182 = icmp slt i64 %31, 0, !dbg !4871
  br i1 %182, label %183, label %189, !dbg !4871

183:                                              ; preds = %181
  %184 = icmp eq i64 %31, -1, !dbg !4871
  br i1 %184, label %192, label %185, !dbg !4871

185:                                              ; preds = %183
  %186 = sub i64 0, %31, !dbg !4871
  %187 = udiv i64 -9223372036854775808, %186, !dbg !4871
  %188 = icmp ult i64 %187, %55, !dbg !4871
  br i1 %188, label %200, label %192, !dbg !4871

189:                                              ; preds = %181
  %190 = udiv i64 9223372036854775807, %55, !dbg !4871
  %191 = icmp ult i64 %190, %31, !dbg !4871
  br i1 %191, label %195, label %192, !dbg !4871

192:                                              ; preds = %183, %185, %189
  %193 = mul i64 %31, %55, !dbg !4871
  call void @llvm.dbg.value(metadata i64 %193, metadata !4826, metadata !DIExpression()), !dbg !4869
  call void @llvm.dbg.value(metadata i32 0, metadata !4809, metadata !DIExpression()), !dbg !4867
  call void @llvm.dbg.value(metadata i32 1, metadata !4816, metadata !DIExpression()), !dbg !4867
  call void @llvm.dbg.value(metadata ptr undef, metadata !4820, metadata !DIExpression()), !dbg !4869
  call void @llvm.dbg.value(metadata i32 poison, metadata !4825, metadata !DIExpression()), !dbg !4869
  %194 = icmp slt i64 %193, 0, !dbg !4871
  br i1 %194, label %200, label %195, !dbg !4871

195:                                              ; preds = %189, %192
  %196 = phi i32 [ 0, %192 ], [ 1, %189 ]
  %197 = phi i64 [ %193, %192 ], [ 9223372036854775807, %189 ]
  %198 = udiv i64 9223372036854775807, %55, !dbg !4871
  %199 = icmp ult i64 %198, %197, !dbg !4871
  br i1 %199, label %211, label %206, !dbg !4871

200:                                              ; preds = %185, %192
  %201 = phi i32 [ 0, %192 ], [ 1, %185 ]
  %202 = phi i64 [ %193, %192 ], [ -9223372036854775808, %185 ]
  %203 = sub i64 0, %202, !dbg !4871
  %204 = udiv i64 -9223372036854775808, %203, !dbg !4871
  %205 = icmp ult i64 %204, %55, !dbg !4871
  br i1 %205, label %216, label %206, !dbg !4871

206:                                              ; preds = %195, %200
  %207 = phi i32 [ %201, %200 ], [ %196, %195 ]
  %208 = phi i64 [ %202, %200 ], [ %197, %195 ]
  %209 = mul i64 %208, %55, !dbg !4871
  call void @llvm.dbg.value(metadata i64 %209, metadata !4826, metadata !DIExpression()), !dbg !4869
  call void @llvm.dbg.value(metadata i32 %207, metadata !4809, metadata !DIExpression()), !dbg !4867
  call void @llvm.dbg.value(metadata i32 0, metadata !4816, metadata !DIExpression()), !dbg !4867
  call void @llvm.dbg.value(metadata ptr undef, metadata !4820, metadata !DIExpression()), !dbg !4869
  call void @llvm.dbg.value(metadata i32 poison, metadata !4825, metadata !DIExpression()), !dbg !4869
  %210 = icmp slt i64 %209, 0, !dbg !4871
  br i1 %210, label %216, label %211, !dbg !4871

211:                                              ; preds = %195, %206
  %212 = phi i32 [ %207, %206 ], [ 1, %195 ]
  %213 = phi i64 [ %209, %206 ], [ 9223372036854775807, %195 ]
  %214 = udiv i64 9223372036854775807, %55, !dbg !4871
  %215 = icmp ult i64 %214, %213, !dbg !4871
  br i1 %215, label %226, label %222, !dbg !4871

216:                                              ; preds = %200, %206
  %217 = phi i32 [ %207, %206 ], [ 1, %200 ]
  %218 = phi i64 [ %209, %206 ], [ -9223372036854775808, %200 ]
  %219 = sub i64 0, %218, !dbg !4871
  %220 = udiv i64 -9223372036854775808, %219, !dbg !4871
  %221 = icmp ult i64 %220, %55, !dbg !4871
  br i1 %221, label %226, label %222, !dbg !4871

222:                                              ; preds = %216, %211
  %223 = phi i32 [ %217, %216 ], [ %212, %211 ]
  %224 = phi i64 [ %218, %216 ], [ %213, %211 ]
  %225 = mul i64 %224, %55, !dbg !4871
  call void @llvm.dbg.value(metadata i64 %225, metadata !4826, metadata !DIExpression()), !dbg !4869
  br label %226, !dbg !4872

226:                                              ; preds = %222, %216, %211
  %227 = phi i32 [ %223, %222 ], [ %212, %211 ], [ %217, %216 ]
  %228 = phi i64 [ %225, %222 ], [ 9223372036854775807, %211 ], [ -9223372036854775808, %216 ], !dbg !4869
  %229 = phi i32 [ 0, %222 ], [ 1, %211 ], [ 1, %216 ], !dbg !4869
  %230 = or i32 %229, %227, !dbg !4873
  call void @llvm.dbg.value(metadata i32 %230, metadata !4809, metadata !DIExpression()), !dbg !4867
  call void @llvm.dbg.value(metadata i32 0, metadata !4816, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4867
  br label %977, !dbg !4866

231:                                              ; preds = %54, %54
  call void @llvm.dbg.value(metadata ptr undef, metadata !4814, metadata !DIExpression()), !dbg !4874
  call void @llvm.dbg.value(metadata i32 poison, metadata !4815, metadata !DIExpression()), !dbg !4874
  call void @llvm.dbg.value(metadata i32 0, metadata !4809, metadata !DIExpression()), !dbg !4874
  call void @llvm.dbg.value(metadata i32 0, metadata !4816, metadata !DIExpression()), !dbg !4874
  call void @llvm.dbg.value(metadata ptr undef, metadata !4820, metadata !DIExpression()), !dbg !4876
  call void @llvm.dbg.value(metadata i32 poison, metadata !4825, metadata !DIExpression()), !dbg !4876
  %232 = icmp slt i64 %31, 0, !dbg !4878
  br i1 %232, label %233, label %239, !dbg !4878

233:                                              ; preds = %231
  %234 = icmp eq i64 %31, -1, !dbg !4878
  br i1 %234, label %242, label %235, !dbg !4878

235:                                              ; preds = %233
  %236 = sub i64 0, %31, !dbg !4878
  %237 = udiv i64 -9223372036854775808, %236, !dbg !4878
  %238 = icmp ult i64 %237, %55, !dbg !4878
  br i1 %238, label %977, label %242, !dbg !4878

239:                                              ; preds = %231
  %240 = udiv i64 9223372036854775807, %55, !dbg !4878
  %241 = icmp ult i64 %240, %31, !dbg !4878
  br i1 %241, label %977, label %242, !dbg !4878

242:                                              ; preds = %239, %235, %233
  %243 = mul i64 %31, %55, !dbg !4878
  call void @llvm.dbg.value(metadata i64 %243, metadata !4826, metadata !DIExpression()), !dbg !4876
  br label %977, !dbg !4879

244:                                              ; preds = %54, %54
  call void @llvm.dbg.value(metadata ptr undef, metadata !4814, metadata !DIExpression()), !dbg !4880
  call void @llvm.dbg.value(metadata i32 poison, metadata !4815, metadata !DIExpression()), !dbg !4880
  call void @llvm.dbg.value(metadata i32 0, metadata !4809, metadata !DIExpression()), !dbg !4880
  call void @llvm.dbg.value(metadata i32 1, metadata !4816, metadata !DIExpression()), !dbg !4880
  call void @llvm.dbg.value(metadata ptr undef, metadata !4820, metadata !DIExpression()), !dbg !4882
  call void @llvm.dbg.value(metadata i32 poison, metadata !4825, metadata !DIExpression()), !dbg !4882
  %245 = icmp slt i64 %31, 0, !dbg !4884
  br i1 %245, label %246, label %252, !dbg !4884

246:                                              ; preds = %244
  %247 = icmp eq i64 %31, -1, !dbg !4884
  br i1 %247, label %255, label %248, !dbg !4884

248:                                              ; preds = %246
  %249 = sub i64 0, %31, !dbg !4884
  %250 = udiv i64 -9223372036854775808, %249, !dbg !4884
  %251 = icmp ult i64 %250, %55, !dbg !4884
  br i1 %251, label %263, label %255, !dbg !4884

252:                                              ; preds = %244
  %253 = udiv i64 9223372036854775807, %55, !dbg !4884
  %254 = icmp ult i64 %253, %31, !dbg !4884
  br i1 %254, label %258, label %255, !dbg !4884

255:                                              ; preds = %246, %248, %252
  %256 = mul i64 %31, %55, !dbg !4884
  call void @llvm.dbg.value(metadata i64 %256, metadata !4826, metadata !DIExpression()), !dbg !4882
  call void @llvm.dbg.value(metadata i32 0, metadata !4809, metadata !DIExpression()), !dbg !4880
  call void @llvm.dbg.value(metadata i32 0, metadata !4816, metadata !DIExpression()), !dbg !4880
  call void @llvm.dbg.value(metadata ptr undef, metadata !4820, metadata !DIExpression()), !dbg !4882
  call void @llvm.dbg.value(metadata i32 poison, metadata !4825, metadata !DIExpression()), !dbg !4882
  %257 = icmp slt i64 %256, 0, !dbg !4884
  br i1 %257, label %263, label %258, !dbg !4884

258:                                              ; preds = %252, %255
  %259 = phi i32 [ 0, %255 ], [ 1, %252 ]
  %260 = phi i64 [ %256, %255 ], [ 9223372036854775807, %252 ]
  %261 = udiv i64 9223372036854775807, %55, !dbg !4884
  %262 = icmp ult i64 %261, %260, !dbg !4884
  br i1 %262, label %273, label %269, !dbg !4884

263:                                              ; preds = %248, %255
  %264 = phi i32 [ 0, %255 ], [ 1, %248 ]
  %265 = phi i64 [ %256, %255 ], [ -9223372036854775808, %248 ]
  %266 = sub i64 0, %265, !dbg !4884
  %267 = udiv i64 -9223372036854775808, %266, !dbg !4884
  %268 = icmp ult i64 %267, %55, !dbg !4884
  br i1 %268, label %273, label %269, !dbg !4884

269:                                              ; preds = %263, %258
  %270 = phi i32 [ %264, %263 ], [ %259, %258 ]
  %271 = phi i64 [ %265, %263 ], [ %260, %258 ]
  %272 = mul i64 %271, %55, !dbg !4884
  call void @llvm.dbg.value(metadata i64 %272, metadata !4826, metadata !DIExpression()), !dbg !4882
  br label %273, !dbg !4885

273:                                              ; preds = %269, %263, %258
  %274 = phi i32 [ %270, %269 ], [ %259, %258 ], [ %264, %263 ]
  %275 = phi i64 [ %272, %269 ], [ 9223372036854775807, %258 ], [ -9223372036854775808, %263 ], !dbg !4882
  %276 = phi i32 [ 0, %269 ], [ 1, %258 ], [ 1, %263 ], !dbg !4882
  %277 = or i32 %276, %274, !dbg !4886
  call void @llvm.dbg.value(metadata i32 %277, metadata !4809, metadata !DIExpression()), !dbg !4880
  call void @llvm.dbg.value(metadata i32 0, metadata !4816, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4880
  br label %977, !dbg !4866

278:                                              ; preds = %65
  %279 = icmp eq i64 %31, -1, !dbg !4850
  br i1 %279, label %287, label %280, !dbg !4850

280:                                              ; preds = %278
  %281 = sub i64 0, %31, !dbg !4850
  %282 = udiv i64 -9223372036854775808, %281, !dbg !4850
  %283 = icmp ult i64 %282, %55, !dbg !4850
  br i1 %283, label %295, label %287, !dbg !4850

284:                                              ; preds = %65
  %285 = udiv i64 9223372036854775807, %55, !dbg !4850
  %286 = icmp ult i64 %285, %31, !dbg !4850
  br i1 %286, label %290, label %287, !dbg !4850

287:                                              ; preds = %278, %280, %284
  %288 = mul i64 %31, %55, !dbg !4850
  call void @llvm.dbg.value(metadata i64 %288, metadata !4826, metadata !DIExpression()), !dbg !4848
  call void @llvm.dbg.value(metadata i32 0, metadata !4809, metadata !DIExpression()), !dbg !4846
  call void @llvm.dbg.value(metadata i32 3, metadata !4816, metadata !DIExpression()), !dbg !4846
  call void @llvm.dbg.value(metadata ptr undef, metadata !4820, metadata !DIExpression()), !dbg !4848
  call void @llvm.dbg.value(metadata i32 poison, metadata !4825, metadata !DIExpression()), !dbg !4848
  %289 = icmp slt i64 %288, 0, !dbg !4850
  br i1 %289, label %295, label %290, !dbg !4850

290:                                              ; preds = %284, %287
  %291 = phi i32 [ 0, %287 ], [ 1, %284 ]
  %292 = phi i64 [ %288, %287 ], [ 9223372036854775807, %284 ]
  %293 = udiv i64 9223372036854775807, %55, !dbg !4850
  %294 = icmp ult i64 %293, %292, !dbg !4850
  br i1 %294, label %306, label %301, !dbg !4850

295:                                              ; preds = %280, %287
  %296 = phi i32 [ 0, %287 ], [ 1, %280 ]
  %297 = phi i64 [ %288, %287 ], [ -9223372036854775808, %280 ]
  %298 = sub i64 0, %297, !dbg !4850
  %299 = udiv i64 -9223372036854775808, %298, !dbg !4850
  %300 = icmp ult i64 %299, %55, !dbg !4850
  br i1 %300, label %311, label %301, !dbg !4850

301:                                              ; preds = %290, %295
  %302 = phi i32 [ %296, %295 ], [ %291, %290 ]
  %303 = phi i64 [ %297, %295 ], [ %292, %290 ]
  %304 = mul i64 %303, %55, !dbg !4850
  call void @llvm.dbg.value(metadata i64 %304, metadata !4826, metadata !DIExpression()), !dbg !4848
  call void @llvm.dbg.value(metadata i32 %302, metadata !4809, metadata !DIExpression()), !dbg !4846
  call void @llvm.dbg.value(metadata i32 2, metadata !4816, metadata !DIExpression()), !dbg !4846
  call void @llvm.dbg.value(metadata ptr undef, metadata !4820, metadata !DIExpression()), !dbg !4848
  call void @llvm.dbg.value(metadata i32 poison, metadata !4825, metadata !DIExpression()), !dbg !4848
  %305 = icmp slt i64 %304, 0, !dbg !4850
  br i1 %305, label %311, label %306, !dbg !4850

306:                                              ; preds = %290, %301
  %307 = phi i32 [ %302, %301 ], [ 1, %290 ]
  %308 = phi i64 [ %304, %301 ], [ 9223372036854775807, %290 ]
  %309 = udiv i64 9223372036854775807, %55, !dbg !4850
  %310 = icmp ult i64 %309, %308, !dbg !4850
  br i1 %310, label %322, label %317, !dbg !4850

311:                                              ; preds = %295, %301
  %312 = phi i32 [ %302, %301 ], [ 1, %295 ]
  %313 = phi i64 [ %304, %301 ], [ -9223372036854775808, %295 ]
  %314 = sub i64 0, %313, !dbg !4850
  %315 = udiv i64 -9223372036854775808, %314, !dbg !4850
  %316 = icmp ult i64 %315, %55, !dbg !4850
  br i1 %316, label %327, label %317, !dbg !4850

317:                                              ; preds = %306, %311
  %318 = phi i32 [ %312, %311 ], [ %307, %306 ]
  %319 = phi i64 [ %313, %311 ], [ %308, %306 ]
  %320 = mul i64 %319, %55, !dbg !4850
  call void @llvm.dbg.value(metadata i64 %320, metadata !4826, metadata !DIExpression()), !dbg !4848
  call void @llvm.dbg.value(metadata i32 %318, metadata !4809, metadata !DIExpression()), !dbg !4846
  call void @llvm.dbg.value(metadata i32 1, metadata !4816, metadata !DIExpression()), !dbg !4846
  call void @llvm.dbg.value(metadata ptr undef, metadata !4820, metadata !DIExpression()), !dbg !4848
  call void @llvm.dbg.value(metadata i32 poison, metadata !4825, metadata !DIExpression()), !dbg !4848
  %321 = icmp slt i64 %320, 0, !dbg !4850
  br i1 %321, label %327, label %322, !dbg !4850

322:                                              ; preds = %306, %317
  %323 = phi i32 [ %318, %317 ], [ 1, %306 ]
  %324 = phi i64 [ %320, %317 ], [ 9223372036854775807, %306 ]
  %325 = udiv i64 9223372036854775807, %55, !dbg !4850
  %326 = icmp ult i64 %325, %324, !dbg !4850
  br i1 %326, label %338, label %333, !dbg !4850

327:                                              ; preds = %311, %317
  %328 = phi i32 [ %318, %317 ], [ 1, %311 ]
  %329 = phi i64 [ %320, %317 ], [ -9223372036854775808, %311 ]
  %330 = sub i64 0, %329, !dbg !4850
  %331 = udiv i64 -9223372036854775808, %330, !dbg !4850
  %332 = icmp ult i64 %331, %55, !dbg !4850
  br i1 %332, label %343, label %333, !dbg !4850

333:                                              ; preds = %322, %327
  %334 = phi i32 [ %328, %327 ], [ %323, %322 ]
  %335 = phi i64 [ %329, %327 ], [ %324, %322 ]
  %336 = mul i64 %335, %55, !dbg !4850
  call void @llvm.dbg.value(metadata i64 %336, metadata !4826, metadata !DIExpression()), !dbg !4848
  call void @llvm.dbg.value(metadata i32 %334, metadata !4809, metadata !DIExpression()), !dbg !4846
  call void @llvm.dbg.value(metadata i32 0, metadata !4816, metadata !DIExpression()), !dbg !4846
  call void @llvm.dbg.value(metadata ptr undef, metadata !4820, metadata !DIExpression()), !dbg !4848
  call void @llvm.dbg.value(metadata i32 poison, metadata !4825, metadata !DIExpression()), !dbg !4848
  %337 = icmp slt i64 %336, 0, !dbg !4850
  br i1 %337, label %343, label %338, !dbg !4850

338:                                              ; preds = %322, %333
  %339 = phi i32 [ %334, %333 ], [ 1, %322 ]
  %340 = phi i64 [ %336, %333 ], [ 9223372036854775807, %322 ]
  %341 = udiv i64 9223372036854775807, %55, !dbg !4850
  %342 = icmp ult i64 %341, %340, !dbg !4850
  br i1 %342, label %353, label %349, !dbg !4850

343:                                              ; preds = %327, %333
  %344 = phi i32 [ %334, %333 ], [ 1, %327 ]
  %345 = phi i64 [ %336, %333 ], [ -9223372036854775808, %327 ]
  %346 = sub i64 0, %345, !dbg !4850
  %347 = udiv i64 -9223372036854775808, %346, !dbg !4850
  %348 = icmp ult i64 %347, %55, !dbg !4850
  br i1 %348, label %353, label %349, !dbg !4850

349:                                              ; preds = %343, %338
  %350 = phi i32 [ %344, %343 ], [ %339, %338 ]
  %351 = phi i64 [ %345, %343 ], [ %340, %338 ]
  %352 = mul i64 %351, %55, !dbg !4850
  call void @llvm.dbg.value(metadata i64 %352, metadata !4826, metadata !DIExpression()), !dbg !4848
  br label %353, !dbg !4887

353:                                              ; preds = %349, %343, %338
  %354 = phi i32 [ %350, %349 ], [ %339, %338 ], [ %344, %343 ]
  %355 = phi i64 [ %352, %349 ], [ 9223372036854775807, %338 ], [ -9223372036854775808, %343 ], !dbg !4848
  %356 = phi i32 [ 0, %349 ], [ 1, %338 ], [ 1, %343 ], !dbg !4848
  %357 = or i32 %356, %354, !dbg !4888
  call void @llvm.dbg.value(metadata i32 %357, metadata !4809, metadata !DIExpression()), !dbg !4846
  call void @llvm.dbg.value(metadata i32 0, metadata !4816, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4846
  br label %977, !dbg !4866

358:                                              ; preds = %63
  %359 = icmp eq i64 %31, -1, !dbg !4845
  br i1 %359, label %367, label %360, !dbg !4845

360:                                              ; preds = %358
  %361 = sub i64 0, %31, !dbg !4845
  %362 = udiv i64 -9223372036854775808, %361, !dbg !4845
  %363 = icmp ult i64 %362, %55, !dbg !4845
  br i1 %363, label %375, label %367, !dbg !4845

364:                                              ; preds = %63
  %365 = udiv i64 9223372036854775807, %55, !dbg !4845
  %366 = icmp ult i64 %365, %31, !dbg !4845
  br i1 %366, label %370, label %367, !dbg !4845

367:                                              ; preds = %358, %360, %364
  %368 = mul i64 %31, %55, !dbg !4845
  call void @llvm.dbg.value(metadata i64 %368, metadata !4826, metadata !DIExpression()), !dbg !4843
  call void @llvm.dbg.value(metadata i32 0, metadata !4809, metadata !DIExpression()), !dbg !4841
  call void @llvm.dbg.value(metadata i32 8, metadata !4816, metadata !DIExpression()), !dbg !4841
  call void @llvm.dbg.value(metadata ptr undef, metadata !4820, metadata !DIExpression()), !dbg !4843
  call void @llvm.dbg.value(metadata i32 poison, metadata !4825, metadata !DIExpression()), !dbg !4843
  %369 = icmp slt i64 %368, 0, !dbg !4845
  br i1 %369, label %375, label %370, !dbg !4845

370:                                              ; preds = %364, %367
  %371 = phi i32 [ 0, %367 ], [ 1, %364 ]
  %372 = phi i64 [ %368, %367 ], [ 9223372036854775807, %364 ]
  %373 = udiv i64 9223372036854775807, %55, !dbg !4845
  %374 = icmp ult i64 %373, %372, !dbg !4845
  br i1 %374, label %386, label %381, !dbg !4845

375:                                              ; preds = %360, %367
  %376 = phi i32 [ 0, %367 ], [ 1, %360 ]
  %377 = phi i64 [ %368, %367 ], [ -9223372036854775808, %360 ]
  %378 = sub i64 0, %377, !dbg !4845
  %379 = udiv i64 -9223372036854775808, %378, !dbg !4845
  %380 = icmp ult i64 %379, %55, !dbg !4845
  br i1 %380, label %391, label %381, !dbg !4845

381:                                              ; preds = %370, %375
  %382 = phi i32 [ %376, %375 ], [ %371, %370 ]
  %383 = phi i64 [ %377, %375 ], [ %372, %370 ]
  %384 = mul i64 %383, %55, !dbg !4845
  call void @llvm.dbg.value(metadata i64 %384, metadata !4826, metadata !DIExpression()), !dbg !4843
  call void @llvm.dbg.value(metadata i32 %382, metadata !4809, metadata !DIExpression()), !dbg !4841
  call void @llvm.dbg.value(metadata i32 7, metadata !4816, metadata !DIExpression()), !dbg !4841
  call void @llvm.dbg.value(metadata ptr undef, metadata !4820, metadata !DIExpression()), !dbg !4843
  call void @llvm.dbg.value(metadata i32 poison, metadata !4825, metadata !DIExpression()), !dbg !4843
  %385 = icmp slt i64 %384, 0, !dbg !4845
  br i1 %385, label %391, label %386, !dbg !4845

386:                                              ; preds = %370, %381
  %387 = phi i32 [ %382, %381 ], [ 1, %370 ]
  %388 = phi i64 [ %384, %381 ], [ 9223372036854775807, %370 ]
  %389 = udiv i64 9223372036854775807, %55, !dbg !4845
  %390 = icmp ult i64 %389, %388, !dbg !4845
  br i1 %390, label %402, label %397, !dbg !4845

391:                                              ; preds = %375, %381
  %392 = phi i32 [ %382, %381 ], [ 1, %375 ]
  %393 = phi i64 [ %384, %381 ], [ -9223372036854775808, %375 ]
  %394 = sub i64 0, %393, !dbg !4845
  %395 = udiv i64 -9223372036854775808, %394, !dbg !4845
  %396 = icmp ult i64 %395, %55, !dbg !4845
  br i1 %396, label %407, label %397, !dbg !4845

397:                                              ; preds = %386, %391
  %398 = phi i32 [ %392, %391 ], [ %387, %386 ]
  %399 = phi i64 [ %393, %391 ], [ %388, %386 ]
  %400 = mul i64 %399, %55, !dbg !4845
  call void @llvm.dbg.value(metadata i64 %400, metadata !4826, metadata !DIExpression()), !dbg !4843
  call void @llvm.dbg.value(metadata i32 %398, metadata !4809, metadata !DIExpression()), !dbg !4841
  call void @llvm.dbg.value(metadata i32 6, metadata !4816, metadata !DIExpression()), !dbg !4841
  call void @llvm.dbg.value(metadata ptr undef, metadata !4820, metadata !DIExpression()), !dbg !4843
  call void @llvm.dbg.value(metadata i32 poison, metadata !4825, metadata !DIExpression()), !dbg !4843
  %401 = icmp slt i64 %400, 0, !dbg !4845
  br i1 %401, label %407, label %402, !dbg !4845

402:                                              ; preds = %386, %397
  %403 = phi i32 [ %398, %397 ], [ 1, %386 ]
  %404 = phi i64 [ %400, %397 ], [ 9223372036854775807, %386 ]
  %405 = udiv i64 9223372036854775807, %55, !dbg !4845
  %406 = icmp ult i64 %405, %404, !dbg !4845
  br i1 %406, label %418, label %413, !dbg !4845

407:                                              ; preds = %391, %397
  %408 = phi i32 [ %398, %397 ], [ 1, %391 ]
  %409 = phi i64 [ %400, %397 ], [ -9223372036854775808, %391 ]
  %410 = sub i64 0, %409, !dbg !4845
  %411 = udiv i64 -9223372036854775808, %410, !dbg !4845
  %412 = icmp ult i64 %411, %55, !dbg !4845
  br i1 %412, label %423, label %413, !dbg !4845

413:                                              ; preds = %402, %407
  %414 = phi i32 [ %408, %407 ], [ %403, %402 ]
  %415 = phi i64 [ %409, %407 ], [ %404, %402 ]
  %416 = mul i64 %415, %55, !dbg !4845
  call void @llvm.dbg.value(metadata i64 %416, metadata !4826, metadata !DIExpression()), !dbg !4843
  call void @llvm.dbg.value(metadata i32 %414, metadata !4809, metadata !DIExpression()), !dbg !4841
  call void @llvm.dbg.value(metadata i32 5, metadata !4816, metadata !DIExpression()), !dbg !4841
  call void @llvm.dbg.value(metadata ptr undef, metadata !4820, metadata !DIExpression()), !dbg !4843
  call void @llvm.dbg.value(metadata i32 poison, metadata !4825, metadata !DIExpression()), !dbg !4843
  %417 = icmp slt i64 %416, 0, !dbg !4845
  br i1 %417, label %423, label %418, !dbg !4845

418:                                              ; preds = %402, %413
  %419 = phi i32 [ %414, %413 ], [ 1, %402 ]
  %420 = phi i64 [ %416, %413 ], [ 9223372036854775807, %402 ]
  %421 = udiv i64 9223372036854775807, %55, !dbg !4845
  %422 = icmp ult i64 %421, %420, !dbg !4845
  br i1 %422, label %434, label %429, !dbg !4845

423:                                              ; preds = %407, %413
  %424 = phi i32 [ %414, %413 ], [ 1, %407 ]
  %425 = phi i64 [ %416, %413 ], [ -9223372036854775808, %407 ]
  %426 = sub i64 0, %425, !dbg !4845
  %427 = udiv i64 -9223372036854775808, %426, !dbg !4845
  %428 = icmp ult i64 %427, %55, !dbg !4845
  br i1 %428, label %439, label %429, !dbg !4845

429:                                              ; preds = %418, %423
  %430 = phi i32 [ %424, %423 ], [ %419, %418 ]
  %431 = phi i64 [ %425, %423 ], [ %420, %418 ]
  %432 = mul i64 %431, %55, !dbg !4845
  call void @llvm.dbg.value(metadata i64 %432, metadata !4826, metadata !DIExpression()), !dbg !4843
  call void @llvm.dbg.value(metadata i32 %430, metadata !4809, metadata !DIExpression()), !dbg !4841
  call void @llvm.dbg.value(metadata i32 4, metadata !4816, metadata !DIExpression()), !dbg !4841
  call void @llvm.dbg.value(metadata ptr undef, metadata !4820, metadata !DIExpression()), !dbg !4843
  call void @llvm.dbg.value(metadata i32 poison, metadata !4825, metadata !DIExpression()), !dbg !4843
  %433 = icmp slt i64 %432, 0, !dbg !4845
  br i1 %433, label %439, label %434, !dbg !4845

434:                                              ; preds = %418, %429
  %435 = phi i32 [ %430, %429 ], [ 1, %418 ]
  %436 = phi i64 [ %432, %429 ], [ 9223372036854775807, %418 ]
  %437 = udiv i64 9223372036854775807, %55, !dbg !4845
  %438 = icmp ult i64 %437, %436, !dbg !4845
  br i1 %438, label %450, label %445, !dbg !4845

439:                                              ; preds = %423, %429
  %440 = phi i32 [ %430, %429 ], [ 1, %423 ]
  %441 = phi i64 [ %432, %429 ], [ -9223372036854775808, %423 ]
  %442 = sub i64 0, %441, !dbg !4845
  %443 = udiv i64 -9223372036854775808, %442, !dbg !4845
  %444 = icmp ult i64 %443, %55, !dbg !4845
  br i1 %444, label %455, label %445, !dbg !4845

445:                                              ; preds = %434, %439
  %446 = phi i32 [ %440, %439 ], [ %435, %434 ]
  %447 = phi i64 [ %441, %439 ], [ %436, %434 ]
  %448 = mul i64 %447, %55, !dbg !4845
  call void @llvm.dbg.value(metadata i64 %448, metadata !4826, metadata !DIExpression()), !dbg !4843
  call void @llvm.dbg.value(metadata i32 %446, metadata !4809, metadata !DIExpression()), !dbg !4841
  call void @llvm.dbg.value(metadata i32 3, metadata !4816, metadata !DIExpression()), !dbg !4841
  call void @llvm.dbg.value(metadata ptr undef, metadata !4820, metadata !DIExpression()), !dbg !4843
  call void @llvm.dbg.value(metadata i32 poison, metadata !4825, metadata !DIExpression()), !dbg !4843
  %449 = icmp slt i64 %448, 0, !dbg !4845
  br i1 %449, label %455, label %450, !dbg !4845

450:                                              ; preds = %434, %445
  %451 = phi i32 [ %446, %445 ], [ 1, %434 ]
  %452 = phi i64 [ %448, %445 ], [ 9223372036854775807, %434 ]
  %453 = udiv i64 9223372036854775807, %55, !dbg !4845
  %454 = icmp ult i64 %453, %452, !dbg !4845
  br i1 %454, label %466, label %461, !dbg !4845

455:                                              ; preds = %439, %445
  %456 = phi i32 [ %446, %445 ], [ 1, %439 ]
  %457 = phi i64 [ %448, %445 ], [ -9223372036854775808, %439 ]
  %458 = sub i64 0, %457, !dbg !4845
  %459 = udiv i64 -9223372036854775808, %458, !dbg !4845
  %460 = icmp ult i64 %459, %55, !dbg !4845
  br i1 %460, label %471, label %461, !dbg !4845

461:                                              ; preds = %450, %455
  %462 = phi i32 [ %456, %455 ], [ %451, %450 ]
  %463 = phi i64 [ %457, %455 ], [ %452, %450 ]
  %464 = mul i64 %463, %55, !dbg !4845
  call void @llvm.dbg.value(metadata i64 %464, metadata !4826, metadata !DIExpression()), !dbg !4843
  call void @llvm.dbg.value(metadata i32 %462, metadata !4809, metadata !DIExpression()), !dbg !4841
  call void @llvm.dbg.value(metadata i32 2, metadata !4816, metadata !DIExpression()), !dbg !4841
  call void @llvm.dbg.value(metadata ptr undef, metadata !4820, metadata !DIExpression()), !dbg !4843
  call void @llvm.dbg.value(metadata i32 poison, metadata !4825, metadata !DIExpression()), !dbg !4843
  %465 = icmp slt i64 %464, 0, !dbg !4845
  br i1 %465, label %471, label %466, !dbg !4845

466:                                              ; preds = %450, %461
  %467 = phi i32 [ %462, %461 ], [ 1, %450 ]
  %468 = phi i64 [ %464, %461 ], [ 9223372036854775807, %450 ]
  %469 = udiv i64 9223372036854775807, %55, !dbg !4845
  %470 = icmp ult i64 %469, %468, !dbg !4845
  br i1 %470, label %482, label %477, !dbg !4845

471:                                              ; preds = %455, %461
  %472 = phi i32 [ %462, %461 ], [ 1, %455 ]
  %473 = phi i64 [ %464, %461 ], [ -9223372036854775808, %455 ]
  %474 = sub i64 0, %473, !dbg !4845
  %475 = udiv i64 -9223372036854775808, %474, !dbg !4845
  %476 = icmp ult i64 %475, %55, !dbg !4845
  br i1 %476, label %487, label %477, !dbg !4845

477:                                              ; preds = %466, %471
  %478 = phi i32 [ %472, %471 ], [ %467, %466 ]
  %479 = phi i64 [ %473, %471 ], [ %468, %466 ]
  %480 = mul i64 %479, %55, !dbg !4845
  call void @llvm.dbg.value(metadata i64 %480, metadata !4826, metadata !DIExpression()), !dbg !4843
  call void @llvm.dbg.value(metadata i32 %478, metadata !4809, metadata !DIExpression()), !dbg !4841
  call void @llvm.dbg.value(metadata i32 1, metadata !4816, metadata !DIExpression()), !dbg !4841
  call void @llvm.dbg.value(metadata ptr undef, metadata !4820, metadata !DIExpression()), !dbg !4843
  call void @llvm.dbg.value(metadata i32 poison, metadata !4825, metadata !DIExpression()), !dbg !4843
  %481 = icmp slt i64 %480, 0, !dbg !4845
  br i1 %481, label %487, label %482, !dbg !4845

482:                                              ; preds = %466, %477
  %483 = phi i32 [ %478, %477 ], [ 1, %466 ]
  %484 = phi i64 [ %480, %477 ], [ 9223372036854775807, %466 ]
  %485 = udiv i64 9223372036854775807, %55, !dbg !4845
  %486 = icmp ult i64 %485, %484, !dbg !4845
  br i1 %486, label %498, label %493, !dbg !4845

487:                                              ; preds = %471, %477
  %488 = phi i32 [ %478, %477 ], [ 1, %471 ]
  %489 = phi i64 [ %480, %477 ], [ -9223372036854775808, %471 ]
  %490 = sub i64 0, %489, !dbg !4845
  %491 = udiv i64 -9223372036854775808, %490, !dbg !4845
  %492 = icmp ult i64 %491, %55, !dbg !4845
  br i1 %492, label %503, label %493, !dbg !4845

493:                                              ; preds = %482, %487
  %494 = phi i32 [ %488, %487 ], [ %483, %482 ]
  %495 = phi i64 [ %489, %487 ], [ %484, %482 ]
  %496 = mul i64 %495, %55, !dbg !4845
  call void @llvm.dbg.value(metadata i64 %496, metadata !4826, metadata !DIExpression()), !dbg !4843
  call void @llvm.dbg.value(metadata i32 %494, metadata !4809, metadata !DIExpression()), !dbg !4841
  call void @llvm.dbg.value(metadata i32 0, metadata !4816, metadata !DIExpression()), !dbg !4841
  call void @llvm.dbg.value(metadata ptr undef, metadata !4820, metadata !DIExpression()), !dbg !4843
  call void @llvm.dbg.value(metadata i32 poison, metadata !4825, metadata !DIExpression()), !dbg !4843
  %497 = icmp slt i64 %496, 0, !dbg !4845
  br i1 %497, label %503, label %498, !dbg !4845

498:                                              ; preds = %482, %493
  %499 = phi i32 [ %494, %493 ], [ 1, %482 ]
  %500 = phi i64 [ %496, %493 ], [ 9223372036854775807, %482 ]
  %501 = udiv i64 9223372036854775807, %55, !dbg !4845
  %502 = icmp ult i64 %501, %500, !dbg !4845
  br i1 %502, label %513, label %509, !dbg !4845

503:                                              ; preds = %487, %493
  %504 = phi i32 [ %494, %493 ], [ 1, %487 ]
  %505 = phi i64 [ %496, %493 ], [ -9223372036854775808, %487 ]
  %506 = sub i64 0, %505, !dbg !4845
  %507 = udiv i64 -9223372036854775808, %506, !dbg !4845
  %508 = icmp ult i64 %507, %55, !dbg !4845
  br i1 %508, label %513, label %509, !dbg !4845

509:                                              ; preds = %503, %498
  %510 = phi i32 [ %504, %503 ], [ %499, %498 ]
  %511 = phi i64 [ %505, %503 ], [ %500, %498 ]
  %512 = mul i64 %511, %55, !dbg !4845
  call void @llvm.dbg.value(metadata i64 %512, metadata !4826, metadata !DIExpression()), !dbg !4843
  br label %513, !dbg !4889

513:                                              ; preds = %509, %503, %498
  %514 = phi i32 [ %510, %509 ], [ %499, %498 ], [ %504, %503 ]
  %515 = phi i64 [ %512, %509 ], [ 9223372036854775807, %498 ], [ -9223372036854775808, %503 ], !dbg !4843
  %516 = phi i32 [ 0, %509 ], [ 1, %498 ], [ 1, %503 ], !dbg !4843
  %517 = or i32 %516, %514, !dbg !4890
  call void @llvm.dbg.value(metadata i32 %517, metadata !4809, metadata !DIExpression()), !dbg !4841
  call void @llvm.dbg.value(metadata i32 0, metadata !4816, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4841
  br label %977, !dbg !4866

518:                                              ; preds = %61
  %519 = icmp eq i64 %31, -1, !dbg !4840
  br i1 %519, label %527, label %520, !dbg !4840

520:                                              ; preds = %518
  %521 = sub i64 0, %31, !dbg !4840
  %522 = udiv i64 -9223372036854775808, %521, !dbg !4840
  %523 = icmp ult i64 %522, %55, !dbg !4840
  br i1 %523, label %535, label %527, !dbg !4840

524:                                              ; preds = %61
  %525 = udiv i64 9223372036854775807, %55, !dbg !4840
  %526 = icmp ult i64 %525, %31, !dbg !4840
  br i1 %526, label %530, label %527, !dbg !4840

527:                                              ; preds = %518, %520, %524
  %528 = mul i64 %31, %55, !dbg !4840
  call void @llvm.dbg.value(metadata i64 %528, metadata !4826, metadata !DIExpression()), !dbg !4838
  call void @llvm.dbg.value(metadata i32 0, metadata !4809, metadata !DIExpression()), !dbg !4836
  call void @llvm.dbg.value(metadata i32 7, metadata !4816, metadata !DIExpression()), !dbg !4836
  call void @llvm.dbg.value(metadata ptr undef, metadata !4820, metadata !DIExpression()), !dbg !4838
  call void @llvm.dbg.value(metadata i32 poison, metadata !4825, metadata !DIExpression()), !dbg !4838
  %529 = icmp slt i64 %528, 0, !dbg !4840
  br i1 %529, label %535, label %530, !dbg !4840

530:                                              ; preds = %524, %527
  %531 = phi i32 [ 0, %527 ], [ 1, %524 ]
  %532 = phi i64 [ %528, %527 ], [ 9223372036854775807, %524 ]
  %533 = udiv i64 9223372036854775807, %55, !dbg !4840
  %534 = icmp ult i64 %533, %532, !dbg !4840
  br i1 %534, label %546, label %541, !dbg !4840

535:                                              ; preds = %520, %527
  %536 = phi i32 [ 0, %527 ], [ 1, %520 ]
  %537 = phi i64 [ %528, %527 ], [ -9223372036854775808, %520 ]
  %538 = sub i64 0, %537, !dbg !4840
  %539 = udiv i64 -9223372036854775808, %538, !dbg !4840
  %540 = icmp ult i64 %539, %55, !dbg !4840
  br i1 %540, label %551, label %541, !dbg !4840

541:                                              ; preds = %530, %535
  %542 = phi i32 [ %536, %535 ], [ %531, %530 ]
  %543 = phi i64 [ %537, %535 ], [ %532, %530 ]
  %544 = mul i64 %543, %55, !dbg !4840
  call void @llvm.dbg.value(metadata i64 %544, metadata !4826, metadata !DIExpression()), !dbg !4838
  call void @llvm.dbg.value(metadata i32 %542, metadata !4809, metadata !DIExpression()), !dbg !4836
  call void @llvm.dbg.value(metadata i32 6, metadata !4816, metadata !DIExpression()), !dbg !4836
  call void @llvm.dbg.value(metadata ptr undef, metadata !4820, metadata !DIExpression()), !dbg !4838
  call void @llvm.dbg.value(metadata i32 poison, metadata !4825, metadata !DIExpression()), !dbg !4838
  %545 = icmp slt i64 %544, 0, !dbg !4840
  br i1 %545, label %551, label %546, !dbg !4840

546:                                              ; preds = %530, %541
  %547 = phi i32 [ %542, %541 ], [ 1, %530 ]
  %548 = phi i64 [ %544, %541 ], [ 9223372036854775807, %530 ]
  %549 = udiv i64 9223372036854775807, %55, !dbg !4840
  %550 = icmp ult i64 %549, %548, !dbg !4840
  br i1 %550, label %562, label %557, !dbg !4840

551:                                              ; preds = %535, %541
  %552 = phi i32 [ %542, %541 ], [ 1, %535 ]
  %553 = phi i64 [ %544, %541 ], [ -9223372036854775808, %535 ]
  %554 = sub i64 0, %553, !dbg !4840
  %555 = udiv i64 -9223372036854775808, %554, !dbg !4840
  %556 = icmp ult i64 %555, %55, !dbg !4840
  br i1 %556, label %567, label %557, !dbg !4840

557:                                              ; preds = %546, %551
  %558 = phi i32 [ %552, %551 ], [ %547, %546 ]
  %559 = phi i64 [ %553, %551 ], [ %548, %546 ]
  %560 = mul i64 %559, %55, !dbg !4840
  call void @llvm.dbg.value(metadata i64 %560, metadata !4826, metadata !DIExpression()), !dbg !4838
  call void @llvm.dbg.value(metadata i32 %558, metadata !4809, metadata !DIExpression()), !dbg !4836
  call void @llvm.dbg.value(metadata i32 5, metadata !4816, metadata !DIExpression()), !dbg !4836
  call void @llvm.dbg.value(metadata ptr undef, metadata !4820, metadata !DIExpression()), !dbg !4838
  call void @llvm.dbg.value(metadata i32 poison, metadata !4825, metadata !DIExpression()), !dbg !4838
  %561 = icmp slt i64 %560, 0, !dbg !4840
  br i1 %561, label %567, label %562, !dbg !4840

562:                                              ; preds = %546, %557
  %563 = phi i32 [ %558, %557 ], [ 1, %546 ]
  %564 = phi i64 [ %560, %557 ], [ 9223372036854775807, %546 ]
  %565 = udiv i64 9223372036854775807, %55, !dbg !4840
  %566 = icmp ult i64 %565, %564, !dbg !4840
  br i1 %566, label %578, label %573, !dbg !4840

567:                                              ; preds = %551, %557
  %568 = phi i32 [ %558, %557 ], [ 1, %551 ]
  %569 = phi i64 [ %560, %557 ], [ -9223372036854775808, %551 ]
  %570 = sub i64 0, %569, !dbg !4840
  %571 = udiv i64 -9223372036854775808, %570, !dbg !4840
  %572 = icmp ult i64 %571, %55, !dbg !4840
  br i1 %572, label %583, label %573, !dbg !4840

573:                                              ; preds = %562, %567
  %574 = phi i32 [ %568, %567 ], [ %563, %562 ]
  %575 = phi i64 [ %569, %567 ], [ %564, %562 ]
  %576 = mul i64 %575, %55, !dbg !4840
  call void @llvm.dbg.value(metadata i64 %576, metadata !4826, metadata !DIExpression()), !dbg !4838
  call void @llvm.dbg.value(metadata i32 %574, metadata !4809, metadata !DIExpression()), !dbg !4836
  call void @llvm.dbg.value(metadata i32 4, metadata !4816, metadata !DIExpression()), !dbg !4836
  call void @llvm.dbg.value(metadata ptr undef, metadata !4820, metadata !DIExpression()), !dbg !4838
  call void @llvm.dbg.value(metadata i32 poison, metadata !4825, metadata !DIExpression()), !dbg !4838
  %577 = icmp slt i64 %576, 0, !dbg !4840
  br i1 %577, label %583, label %578, !dbg !4840

578:                                              ; preds = %562, %573
  %579 = phi i32 [ %574, %573 ], [ 1, %562 ]
  %580 = phi i64 [ %576, %573 ], [ 9223372036854775807, %562 ]
  %581 = udiv i64 9223372036854775807, %55, !dbg !4840
  %582 = icmp ult i64 %581, %580, !dbg !4840
  br i1 %582, label %594, label %589, !dbg !4840

583:                                              ; preds = %567, %573
  %584 = phi i32 [ %574, %573 ], [ 1, %567 ]
  %585 = phi i64 [ %576, %573 ], [ -9223372036854775808, %567 ]
  %586 = sub i64 0, %585, !dbg !4840
  %587 = udiv i64 -9223372036854775808, %586, !dbg !4840
  %588 = icmp ult i64 %587, %55, !dbg !4840
  br i1 %588, label %599, label %589, !dbg !4840

589:                                              ; preds = %578, %583
  %590 = phi i32 [ %584, %583 ], [ %579, %578 ]
  %591 = phi i64 [ %585, %583 ], [ %580, %578 ]
  %592 = mul i64 %591, %55, !dbg !4840
  call void @llvm.dbg.value(metadata i64 %592, metadata !4826, metadata !DIExpression()), !dbg !4838
  call void @llvm.dbg.value(metadata i32 %590, metadata !4809, metadata !DIExpression()), !dbg !4836
  call void @llvm.dbg.value(metadata i32 3, metadata !4816, metadata !DIExpression()), !dbg !4836
  call void @llvm.dbg.value(metadata ptr undef, metadata !4820, metadata !DIExpression()), !dbg !4838
  call void @llvm.dbg.value(metadata i32 poison, metadata !4825, metadata !DIExpression()), !dbg !4838
  %593 = icmp slt i64 %592, 0, !dbg !4840
  br i1 %593, label %599, label %594, !dbg !4840

594:                                              ; preds = %578, %589
  %595 = phi i32 [ %590, %589 ], [ 1, %578 ]
  %596 = phi i64 [ %592, %589 ], [ 9223372036854775807, %578 ]
  %597 = udiv i64 9223372036854775807, %55, !dbg !4840
  %598 = icmp ult i64 %597, %596, !dbg !4840
  br i1 %598, label %610, label %605, !dbg !4840

599:                                              ; preds = %583, %589
  %600 = phi i32 [ %590, %589 ], [ 1, %583 ]
  %601 = phi i64 [ %592, %589 ], [ -9223372036854775808, %583 ]
  %602 = sub i64 0, %601, !dbg !4840
  %603 = udiv i64 -9223372036854775808, %602, !dbg !4840
  %604 = icmp ult i64 %603, %55, !dbg !4840
  br i1 %604, label %615, label %605, !dbg !4840

605:                                              ; preds = %594, %599
  %606 = phi i32 [ %600, %599 ], [ %595, %594 ]
  %607 = phi i64 [ %601, %599 ], [ %596, %594 ]
  %608 = mul i64 %607, %55, !dbg !4840
  call void @llvm.dbg.value(metadata i64 %608, metadata !4826, metadata !DIExpression()), !dbg !4838
  call void @llvm.dbg.value(metadata i32 %606, metadata !4809, metadata !DIExpression()), !dbg !4836
  call void @llvm.dbg.value(metadata i32 2, metadata !4816, metadata !DIExpression()), !dbg !4836
  call void @llvm.dbg.value(metadata ptr undef, metadata !4820, metadata !DIExpression()), !dbg !4838
  call void @llvm.dbg.value(metadata i32 poison, metadata !4825, metadata !DIExpression()), !dbg !4838
  %609 = icmp slt i64 %608, 0, !dbg !4840
  br i1 %609, label %615, label %610, !dbg !4840

610:                                              ; preds = %594, %605
  %611 = phi i32 [ %606, %605 ], [ 1, %594 ]
  %612 = phi i64 [ %608, %605 ], [ 9223372036854775807, %594 ]
  %613 = udiv i64 9223372036854775807, %55, !dbg !4840
  %614 = icmp ult i64 %613, %612, !dbg !4840
  br i1 %614, label %626, label %621, !dbg !4840

615:                                              ; preds = %599, %605
  %616 = phi i32 [ %606, %605 ], [ 1, %599 ]
  %617 = phi i64 [ %608, %605 ], [ -9223372036854775808, %599 ]
  %618 = sub i64 0, %617, !dbg !4840
  %619 = udiv i64 -9223372036854775808, %618, !dbg !4840
  %620 = icmp ult i64 %619, %55, !dbg !4840
  br i1 %620, label %631, label %621, !dbg !4840

621:                                              ; preds = %610, %615
  %622 = phi i32 [ %616, %615 ], [ %611, %610 ]
  %623 = phi i64 [ %617, %615 ], [ %612, %610 ]
  %624 = mul i64 %623, %55, !dbg !4840
  call void @llvm.dbg.value(metadata i64 %624, metadata !4826, metadata !DIExpression()), !dbg !4838
  call void @llvm.dbg.value(metadata i32 %622, metadata !4809, metadata !DIExpression()), !dbg !4836
  call void @llvm.dbg.value(metadata i32 1, metadata !4816, metadata !DIExpression()), !dbg !4836
  call void @llvm.dbg.value(metadata ptr undef, metadata !4820, metadata !DIExpression()), !dbg !4838
  call void @llvm.dbg.value(metadata i32 poison, metadata !4825, metadata !DIExpression()), !dbg !4838
  %625 = icmp slt i64 %624, 0, !dbg !4840
  br i1 %625, label %631, label %626, !dbg !4840

626:                                              ; preds = %610, %621
  %627 = phi i32 [ %622, %621 ], [ 1, %610 ]
  %628 = phi i64 [ %624, %621 ], [ 9223372036854775807, %610 ]
  %629 = udiv i64 9223372036854775807, %55, !dbg !4840
  %630 = icmp ult i64 %629, %628, !dbg !4840
  br i1 %630, label %642, label %637, !dbg !4840

631:                                              ; preds = %615, %621
  %632 = phi i32 [ %622, %621 ], [ 1, %615 ]
  %633 = phi i64 [ %624, %621 ], [ -9223372036854775808, %615 ]
  %634 = sub i64 0, %633, !dbg !4840
  %635 = udiv i64 -9223372036854775808, %634, !dbg !4840
  %636 = icmp ult i64 %635, %55, !dbg !4840
  br i1 %636, label %647, label %637, !dbg !4840

637:                                              ; preds = %626, %631
  %638 = phi i32 [ %632, %631 ], [ %627, %626 ]
  %639 = phi i64 [ %633, %631 ], [ %628, %626 ]
  %640 = mul i64 %639, %55, !dbg !4840
  call void @llvm.dbg.value(metadata i64 %640, metadata !4826, metadata !DIExpression()), !dbg !4838
  call void @llvm.dbg.value(metadata i32 %638, metadata !4809, metadata !DIExpression()), !dbg !4836
  call void @llvm.dbg.value(metadata i32 0, metadata !4816, metadata !DIExpression()), !dbg !4836
  call void @llvm.dbg.value(metadata ptr undef, metadata !4820, metadata !DIExpression()), !dbg !4838
  call void @llvm.dbg.value(metadata i32 poison, metadata !4825, metadata !DIExpression()), !dbg !4838
  %641 = icmp slt i64 %640, 0, !dbg !4840
  br i1 %641, label %647, label %642, !dbg !4840

642:                                              ; preds = %626, %637
  %643 = phi i32 [ %638, %637 ], [ 1, %626 ]
  %644 = phi i64 [ %640, %637 ], [ 9223372036854775807, %626 ]
  %645 = udiv i64 9223372036854775807, %55, !dbg !4840
  %646 = icmp ult i64 %645, %644, !dbg !4840
  br i1 %646, label %657, label %653, !dbg !4840

647:                                              ; preds = %631, %637
  %648 = phi i32 [ %638, %637 ], [ 1, %631 ]
  %649 = phi i64 [ %640, %637 ], [ -9223372036854775808, %631 ]
  %650 = sub i64 0, %649, !dbg !4840
  %651 = udiv i64 -9223372036854775808, %650, !dbg !4840
  %652 = icmp ult i64 %651, %55, !dbg !4840
  br i1 %652, label %657, label %653, !dbg !4840

653:                                              ; preds = %647, %642
  %654 = phi i32 [ %648, %647 ], [ %643, %642 ]
  %655 = phi i64 [ %649, %647 ], [ %644, %642 ]
  %656 = mul i64 %655, %55, !dbg !4840
  call void @llvm.dbg.value(metadata i64 %656, metadata !4826, metadata !DIExpression()), !dbg !4838
  br label %657, !dbg !4891

657:                                              ; preds = %653, %647, %642
  %658 = phi i32 [ %654, %653 ], [ %643, %642 ], [ %648, %647 ]
  %659 = phi i64 [ %656, %653 ], [ 9223372036854775807, %642 ], [ -9223372036854775808, %647 ], !dbg !4838
  %660 = phi i32 [ 0, %653 ], [ 1, %642 ], [ 1, %647 ], !dbg !4838
  %661 = or i32 %660, %658, !dbg !4892
  call void @llvm.dbg.value(metadata i32 %661, metadata !4809, metadata !DIExpression()), !dbg !4836
  call void @llvm.dbg.value(metadata i32 0, metadata !4816, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4836
  br label %977, !dbg !4866

662:                                              ; preds = %54, %54
  call void @llvm.dbg.value(metadata ptr undef, metadata !4814, metadata !DIExpression()), !dbg !4893
  call void @llvm.dbg.value(metadata i32 poison, metadata !4815, metadata !DIExpression()), !dbg !4893
  call void @llvm.dbg.value(metadata i32 0, metadata !4809, metadata !DIExpression()), !dbg !4893
  call void @llvm.dbg.value(metadata i32 3, metadata !4816, metadata !DIExpression()), !dbg !4893
  call void @llvm.dbg.value(metadata ptr undef, metadata !4820, metadata !DIExpression()), !dbg !4895
  call void @llvm.dbg.value(metadata i32 poison, metadata !4825, metadata !DIExpression()), !dbg !4895
  %663 = icmp slt i64 %31, 0, !dbg !4897
  br i1 %663, label %664, label %670, !dbg !4897

664:                                              ; preds = %662
  %665 = icmp eq i64 %31, -1, !dbg !4897
  br i1 %665, label %673, label %666, !dbg !4897

666:                                              ; preds = %664
  %667 = sub i64 0, %31, !dbg !4897
  %668 = udiv i64 -9223372036854775808, %667, !dbg !4897
  %669 = icmp ult i64 %668, %55, !dbg !4897
  br i1 %669, label %681, label %673, !dbg !4897

670:                                              ; preds = %662
  %671 = udiv i64 9223372036854775807, %55, !dbg !4897
  %672 = icmp ult i64 %671, %31, !dbg !4897
  br i1 %672, label %676, label %673, !dbg !4897

673:                                              ; preds = %664, %666, %670
  %674 = mul i64 %31, %55, !dbg !4897
  call void @llvm.dbg.value(metadata i64 %674, metadata !4826, metadata !DIExpression()), !dbg !4895
  call void @llvm.dbg.value(metadata i32 0, metadata !4809, metadata !DIExpression()), !dbg !4893
  call void @llvm.dbg.value(metadata i32 2, metadata !4816, metadata !DIExpression()), !dbg !4893
  call void @llvm.dbg.value(metadata ptr undef, metadata !4820, metadata !DIExpression()), !dbg !4895
  call void @llvm.dbg.value(metadata i32 poison, metadata !4825, metadata !DIExpression()), !dbg !4895
  %675 = icmp slt i64 %674, 0, !dbg !4897
  br i1 %675, label %681, label %676, !dbg !4897

676:                                              ; preds = %670, %673
  %677 = phi i32 [ 0, %673 ], [ 1, %670 ]
  %678 = phi i64 [ %674, %673 ], [ 9223372036854775807, %670 ]
  %679 = udiv i64 9223372036854775807, %55, !dbg !4897
  %680 = icmp ult i64 %679, %678, !dbg !4897
  br i1 %680, label %692, label %687, !dbg !4897

681:                                              ; preds = %666, %673
  %682 = phi i32 [ 0, %673 ], [ 1, %666 ]
  %683 = phi i64 [ %674, %673 ], [ -9223372036854775808, %666 ]
  %684 = sub i64 0, %683, !dbg !4897
  %685 = udiv i64 -9223372036854775808, %684, !dbg !4897
  %686 = icmp ult i64 %685, %55, !dbg !4897
  br i1 %686, label %697, label %687, !dbg !4897

687:                                              ; preds = %676, %681
  %688 = phi i32 [ %682, %681 ], [ %677, %676 ]
  %689 = phi i64 [ %683, %681 ], [ %678, %676 ]
  %690 = mul i64 %689, %55, !dbg !4897
  call void @llvm.dbg.value(metadata i64 %690, metadata !4826, metadata !DIExpression()), !dbg !4895
  call void @llvm.dbg.value(metadata i32 %688, metadata !4809, metadata !DIExpression()), !dbg !4893
  call void @llvm.dbg.value(metadata i32 1, metadata !4816, metadata !DIExpression()), !dbg !4893
  call void @llvm.dbg.value(metadata ptr undef, metadata !4820, metadata !DIExpression()), !dbg !4895
  call void @llvm.dbg.value(metadata i32 poison, metadata !4825, metadata !DIExpression()), !dbg !4895
  %691 = icmp slt i64 %690, 0, !dbg !4897
  br i1 %691, label %697, label %692, !dbg !4897

692:                                              ; preds = %676, %687
  %693 = phi i32 [ %688, %687 ], [ 1, %676 ]
  %694 = phi i64 [ %690, %687 ], [ 9223372036854775807, %676 ]
  %695 = udiv i64 9223372036854775807, %55, !dbg !4897
  %696 = icmp ult i64 %695, %694, !dbg !4897
  br i1 %696, label %708, label %703, !dbg !4897

697:                                              ; preds = %681, %687
  %698 = phi i32 [ %688, %687 ], [ 1, %681 ]
  %699 = phi i64 [ %690, %687 ], [ -9223372036854775808, %681 ]
  %700 = sub i64 0, %699, !dbg !4897
  %701 = udiv i64 -9223372036854775808, %700, !dbg !4897
  %702 = icmp ult i64 %701, %55, !dbg !4897
  br i1 %702, label %713, label %703, !dbg !4897

703:                                              ; preds = %692, %697
  %704 = phi i32 [ %698, %697 ], [ %693, %692 ]
  %705 = phi i64 [ %699, %697 ], [ %694, %692 ]
  %706 = mul i64 %705, %55, !dbg !4897
  call void @llvm.dbg.value(metadata i64 %706, metadata !4826, metadata !DIExpression()), !dbg !4895
  call void @llvm.dbg.value(metadata i32 %704, metadata !4809, metadata !DIExpression()), !dbg !4893
  call void @llvm.dbg.value(metadata i32 0, metadata !4816, metadata !DIExpression()), !dbg !4893
  call void @llvm.dbg.value(metadata ptr undef, metadata !4820, metadata !DIExpression()), !dbg !4895
  call void @llvm.dbg.value(metadata i32 poison, metadata !4825, metadata !DIExpression()), !dbg !4895
  %707 = icmp slt i64 %706, 0, !dbg !4897
  br i1 %707, label %713, label %708, !dbg !4897

708:                                              ; preds = %692, %703
  %709 = phi i32 [ %704, %703 ], [ 1, %692 ]
  %710 = phi i64 [ %706, %703 ], [ 9223372036854775807, %692 ]
  %711 = udiv i64 9223372036854775807, %55, !dbg !4897
  %712 = icmp ult i64 %711, %710, !dbg !4897
  br i1 %712, label %723, label %719, !dbg !4897

713:                                              ; preds = %697, %703
  %714 = phi i32 [ %704, %703 ], [ 1, %697 ]
  %715 = phi i64 [ %706, %703 ], [ -9223372036854775808, %697 ]
  %716 = sub i64 0, %715, !dbg !4897
  %717 = udiv i64 -9223372036854775808, %716, !dbg !4897
  %718 = icmp ult i64 %717, %55, !dbg !4897
  br i1 %718, label %723, label %719, !dbg !4897

719:                                              ; preds = %713, %708
  %720 = phi i32 [ %714, %713 ], [ %709, %708 ]
  %721 = phi i64 [ %715, %713 ], [ %710, %708 ]
  %722 = mul i64 %721, %55, !dbg !4897
  call void @llvm.dbg.value(metadata i64 %722, metadata !4826, metadata !DIExpression()), !dbg !4895
  br label %723, !dbg !4898

723:                                              ; preds = %719, %713, %708
  %724 = phi i32 [ %720, %719 ], [ %709, %708 ], [ %714, %713 ]
  %725 = phi i64 [ %722, %719 ], [ 9223372036854775807, %708 ], [ -9223372036854775808, %713 ], !dbg !4895
  %726 = phi i32 [ 0, %719 ], [ 1, %708 ], [ 1, %713 ], !dbg !4895
  %727 = or i32 %726, %724, !dbg !4899
  call void @llvm.dbg.value(metadata i32 %727, metadata !4809, metadata !DIExpression()), !dbg !4893
  call void @llvm.dbg.value(metadata i32 0, metadata !4816, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4893
  br label %977, !dbg !4866

728:                                              ; preds = %54
  call void @llvm.dbg.value(metadata ptr undef, metadata !4820, metadata !DIExpression()), !dbg !4900
  call void @llvm.dbg.value(metadata i32 2, metadata !4825, metadata !DIExpression()), !dbg !4900
  %729 = icmp slt i64 %31, 0, !dbg !4902
  br i1 %729, label %730, label %733, !dbg !4902

730:                                              ; preds = %728
  %731 = add i64 %31, -1, !dbg !4902
  %732 = icmp ult i64 %731, -4611686018427387905, !dbg !4902
  br i1 %732, label %977, label %735, !dbg !4902

733:                                              ; preds = %728
  %734 = icmp ugt i64 %31, 4611686018427387903, !dbg !4902
  br i1 %734, label %977, label %735, !dbg !4902

735:                                              ; preds = %730, %733
  %736 = shl nsw i64 %31, 1, !dbg !4902
  call void @llvm.dbg.value(metadata i64 %736, metadata !4826, metadata !DIExpression()), !dbg !4900
  br label %977, !dbg !4903

737:                                              ; preds = %59
  %738 = icmp eq i64 %31, -1, !dbg !4835
  br i1 %738, label %746, label %739, !dbg !4835

739:                                              ; preds = %737
  %740 = sub i64 0, %31, !dbg !4835
  %741 = udiv i64 -9223372036854775808, %740, !dbg !4835
  %742 = icmp ult i64 %741, %55, !dbg !4835
  br i1 %742, label %754, label %746, !dbg !4835

743:                                              ; preds = %59
  %744 = udiv i64 9223372036854775807, %55, !dbg !4835
  %745 = icmp ult i64 %744, %31, !dbg !4835
  br i1 %745, label %749, label %746, !dbg !4835

746:                                              ; preds = %737, %739, %743
  %747 = mul i64 %31, %55, !dbg !4835
  call void @llvm.dbg.value(metadata i64 %747, metadata !4826, metadata !DIExpression()), !dbg !4833
  call void @llvm.dbg.value(metadata i32 0, metadata !4809, metadata !DIExpression()), !dbg !4831
  call void @llvm.dbg.value(metadata i32 6, metadata !4816, metadata !DIExpression()), !dbg !4831
  call void @llvm.dbg.value(metadata ptr undef, metadata !4820, metadata !DIExpression()), !dbg !4833
  call void @llvm.dbg.value(metadata i32 poison, metadata !4825, metadata !DIExpression()), !dbg !4833
  %748 = icmp slt i64 %747, 0, !dbg !4835
  br i1 %748, label %754, label %749, !dbg !4835

749:                                              ; preds = %743, %746
  %750 = phi i32 [ 0, %746 ], [ 1, %743 ]
  %751 = phi i64 [ %747, %746 ], [ 9223372036854775807, %743 ]
  %752 = udiv i64 9223372036854775807, %55, !dbg !4835
  %753 = icmp ult i64 %752, %751, !dbg !4835
  br i1 %753, label %765, label %760, !dbg !4835

754:                                              ; preds = %739, %746
  %755 = phi i32 [ 0, %746 ], [ 1, %739 ]
  %756 = phi i64 [ %747, %746 ], [ -9223372036854775808, %739 ]
  %757 = sub i64 0, %756, !dbg !4835
  %758 = udiv i64 -9223372036854775808, %757, !dbg !4835
  %759 = icmp ult i64 %758, %55, !dbg !4835
  br i1 %759, label %770, label %760, !dbg !4835

760:                                              ; preds = %749, %754
  %761 = phi i32 [ %755, %754 ], [ %750, %749 ]
  %762 = phi i64 [ %756, %754 ], [ %751, %749 ]
  %763 = mul i64 %762, %55, !dbg !4835
  call void @llvm.dbg.value(metadata i64 %763, metadata !4826, metadata !DIExpression()), !dbg !4833
  call void @llvm.dbg.value(metadata i32 %761, metadata !4809, metadata !DIExpression()), !dbg !4831
  call void @llvm.dbg.value(metadata i32 5, metadata !4816, metadata !DIExpression()), !dbg !4831
  call void @llvm.dbg.value(metadata ptr undef, metadata !4820, metadata !DIExpression()), !dbg !4833
  call void @llvm.dbg.value(metadata i32 poison, metadata !4825, metadata !DIExpression()), !dbg !4833
  %764 = icmp slt i64 %763, 0, !dbg !4835
  br i1 %764, label %770, label %765, !dbg !4835

765:                                              ; preds = %749, %760
  %766 = phi i32 [ %761, %760 ], [ 1, %749 ]
  %767 = phi i64 [ %763, %760 ], [ 9223372036854775807, %749 ]
  %768 = udiv i64 9223372036854775807, %55, !dbg !4835
  %769 = icmp ult i64 %768, %767, !dbg !4835
  br i1 %769, label %781, label %776, !dbg !4835

770:                                              ; preds = %754, %760
  %771 = phi i32 [ %761, %760 ], [ 1, %754 ]
  %772 = phi i64 [ %763, %760 ], [ -9223372036854775808, %754 ]
  %773 = sub i64 0, %772, !dbg !4835
  %774 = udiv i64 -9223372036854775808, %773, !dbg !4835
  %775 = icmp ult i64 %774, %55, !dbg !4835
  br i1 %775, label %786, label %776, !dbg !4835

776:                                              ; preds = %765, %770
  %777 = phi i32 [ %771, %770 ], [ %766, %765 ]
  %778 = phi i64 [ %772, %770 ], [ %767, %765 ]
  %779 = mul i64 %778, %55, !dbg !4835
  call void @llvm.dbg.value(metadata i64 %779, metadata !4826, metadata !DIExpression()), !dbg !4833
  call void @llvm.dbg.value(metadata i32 %777, metadata !4809, metadata !DIExpression()), !dbg !4831
  call void @llvm.dbg.value(metadata i32 4, metadata !4816, metadata !DIExpression()), !dbg !4831
  call void @llvm.dbg.value(metadata ptr undef, metadata !4820, metadata !DIExpression()), !dbg !4833
  call void @llvm.dbg.value(metadata i32 poison, metadata !4825, metadata !DIExpression()), !dbg !4833
  %780 = icmp slt i64 %779, 0, !dbg !4835
  br i1 %780, label %786, label %781, !dbg !4835

781:                                              ; preds = %765, %776
  %782 = phi i32 [ %777, %776 ], [ 1, %765 ]
  %783 = phi i64 [ %779, %776 ], [ 9223372036854775807, %765 ]
  %784 = udiv i64 9223372036854775807, %55, !dbg !4835
  %785 = icmp ult i64 %784, %783, !dbg !4835
  br i1 %785, label %797, label %792, !dbg !4835

786:                                              ; preds = %770, %776
  %787 = phi i32 [ %777, %776 ], [ 1, %770 ]
  %788 = phi i64 [ %779, %776 ], [ -9223372036854775808, %770 ]
  %789 = sub i64 0, %788, !dbg !4835
  %790 = udiv i64 -9223372036854775808, %789, !dbg !4835
  %791 = icmp ult i64 %790, %55, !dbg !4835
  br i1 %791, label %802, label %792, !dbg !4835

792:                                              ; preds = %781, %786
  %793 = phi i32 [ %787, %786 ], [ %782, %781 ]
  %794 = phi i64 [ %788, %786 ], [ %783, %781 ]
  %795 = mul i64 %794, %55, !dbg !4835
  call void @llvm.dbg.value(metadata i64 %795, metadata !4826, metadata !DIExpression()), !dbg !4833
  call void @llvm.dbg.value(metadata i32 %793, metadata !4809, metadata !DIExpression()), !dbg !4831
  call void @llvm.dbg.value(metadata i32 3, metadata !4816, metadata !DIExpression()), !dbg !4831
  call void @llvm.dbg.value(metadata ptr undef, metadata !4820, metadata !DIExpression()), !dbg !4833
  call void @llvm.dbg.value(metadata i32 poison, metadata !4825, metadata !DIExpression()), !dbg !4833
  %796 = icmp slt i64 %795, 0, !dbg !4835
  br i1 %796, label %802, label %797, !dbg !4835

797:                                              ; preds = %781, %792
  %798 = phi i32 [ %793, %792 ], [ 1, %781 ]
  %799 = phi i64 [ %795, %792 ], [ 9223372036854775807, %781 ]
  %800 = udiv i64 9223372036854775807, %55, !dbg !4835
  %801 = icmp ult i64 %800, %799, !dbg !4835
  br i1 %801, label %813, label %808, !dbg !4835

802:                                              ; preds = %786, %792
  %803 = phi i32 [ %793, %792 ], [ 1, %786 ]
  %804 = phi i64 [ %795, %792 ], [ -9223372036854775808, %786 ]
  %805 = sub i64 0, %804, !dbg !4835
  %806 = udiv i64 -9223372036854775808, %805, !dbg !4835
  %807 = icmp ult i64 %806, %55, !dbg !4835
  br i1 %807, label %818, label %808, !dbg !4835

808:                                              ; preds = %797, %802
  %809 = phi i32 [ %803, %802 ], [ %798, %797 ]
  %810 = phi i64 [ %804, %802 ], [ %799, %797 ]
  %811 = mul i64 %810, %55, !dbg !4835
  call void @llvm.dbg.value(metadata i64 %811, metadata !4826, metadata !DIExpression()), !dbg !4833
  call void @llvm.dbg.value(metadata i32 %809, metadata !4809, metadata !DIExpression()), !dbg !4831
  call void @llvm.dbg.value(metadata i32 2, metadata !4816, metadata !DIExpression()), !dbg !4831
  call void @llvm.dbg.value(metadata ptr undef, metadata !4820, metadata !DIExpression()), !dbg !4833
  call void @llvm.dbg.value(metadata i32 poison, metadata !4825, metadata !DIExpression()), !dbg !4833
  %812 = icmp slt i64 %811, 0, !dbg !4835
  br i1 %812, label %818, label %813, !dbg !4835

813:                                              ; preds = %797, %808
  %814 = phi i32 [ %809, %808 ], [ 1, %797 ]
  %815 = phi i64 [ %811, %808 ], [ 9223372036854775807, %797 ]
  %816 = udiv i64 9223372036854775807, %55, !dbg !4835
  %817 = icmp ult i64 %816, %815, !dbg !4835
  br i1 %817, label %829, label %824, !dbg !4835

818:                                              ; preds = %802, %808
  %819 = phi i32 [ %809, %808 ], [ 1, %802 ]
  %820 = phi i64 [ %811, %808 ], [ -9223372036854775808, %802 ]
  %821 = sub i64 0, %820, !dbg !4835
  %822 = udiv i64 -9223372036854775808, %821, !dbg !4835
  %823 = icmp ult i64 %822, %55, !dbg !4835
  br i1 %823, label %834, label %824, !dbg !4835

824:                                              ; preds = %813, %818
  %825 = phi i32 [ %819, %818 ], [ %814, %813 ]
  %826 = phi i64 [ %820, %818 ], [ %815, %813 ]
  %827 = mul i64 %826, %55, !dbg !4835
  call void @llvm.dbg.value(metadata i64 %827, metadata !4826, metadata !DIExpression()), !dbg !4833
  call void @llvm.dbg.value(metadata i32 %825, metadata !4809, metadata !DIExpression()), !dbg !4831
  call void @llvm.dbg.value(metadata i32 1, metadata !4816, metadata !DIExpression()), !dbg !4831
  call void @llvm.dbg.value(metadata ptr undef, metadata !4820, metadata !DIExpression()), !dbg !4833
  call void @llvm.dbg.value(metadata i32 poison, metadata !4825, metadata !DIExpression()), !dbg !4833
  %828 = icmp slt i64 %827, 0, !dbg !4835
  br i1 %828, label %834, label %829, !dbg !4835

829:                                              ; preds = %813, %824
  %830 = phi i32 [ %825, %824 ], [ 1, %813 ]
  %831 = phi i64 [ %827, %824 ], [ 9223372036854775807, %813 ]
  %832 = udiv i64 9223372036854775807, %55, !dbg !4835
  %833 = icmp ult i64 %832, %831, !dbg !4835
  br i1 %833, label %845, label %840, !dbg !4835

834:                                              ; preds = %818, %824
  %835 = phi i32 [ %825, %824 ], [ 1, %818 ]
  %836 = phi i64 [ %827, %824 ], [ -9223372036854775808, %818 ]
  %837 = sub i64 0, %836, !dbg !4835
  %838 = udiv i64 -9223372036854775808, %837, !dbg !4835
  %839 = icmp ult i64 %838, %55, !dbg !4835
  br i1 %839, label %850, label %840, !dbg !4835

840:                                              ; preds = %829, %834
  %841 = phi i32 [ %835, %834 ], [ %830, %829 ]
  %842 = phi i64 [ %836, %834 ], [ %831, %829 ]
  %843 = mul i64 %842, %55, !dbg !4835
  call void @llvm.dbg.value(metadata i64 %843, metadata !4826, metadata !DIExpression()), !dbg !4833
  call void @llvm.dbg.value(metadata i32 %841, metadata !4809, metadata !DIExpression()), !dbg !4831
  call void @llvm.dbg.value(metadata i32 0, metadata !4816, metadata !DIExpression()), !dbg !4831
  call void @llvm.dbg.value(metadata ptr undef, metadata !4820, metadata !DIExpression()), !dbg !4833
  call void @llvm.dbg.value(metadata i32 poison, metadata !4825, metadata !DIExpression()), !dbg !4833
  %844 = icmp slt i64 %843, 0, !dbg !4835
  br i1 %844, label %850, label %845, !dbg !4835

845:                                              ; preds = %829, %840
  %846 = phi i32 [ %841, %840 ], [ 1, %829 ]
  %847 = phi i64 [ %843, %840 ], [ 9223372036854775807, %829 ]
  %848 = udiv i64 9223372036854775807, %55, !dbg !4835
  %849 = icmp ult i64 %848, %847, !dbg !4835
  br i1 %849, label %860, label %856, !dbg !4835

850:                                              ; preds = %834, %840
  %851 = phi i32 [ %841, %840 ], [ 1, %834 ]
  %852 = phi i64 [ %843, %840 ], [ -9223372036854775808, %834 ]
  %853 = sub i64 0, %852, !dbg !4835
  %854 = udiv i64 -9223372036854775808, %853, !dbg !4835
  %855 = icmp ult i64 %854, %55, !dbg !4835
  br i1 %855, label %860, label %856, !dbg !4835

856:                                              ; preds = %850, %845
  %857 = phi i32 [ %851, %850 ], [ %846, %845 ]
  %858 = phi i64 [ %852, %850 ], [ %847, %845 ]
  %859 = mul i64 %858, %55, !dbg !4835
  call void @llvm.dbg.value(metadata i64 %859, metadata !4826, metadata !DIExpression()), !dbg !4833
  br label %860, !dbg !4904

860:                                              ; preds = %856, %850, %845
  %861 = phi i32 [ %857, %856 ], [ %846, %845 ], [ %851, %850 ]
  %862 = phi i64 [ %859, %856 ], [ 9223372036854775807, %845 ], [ -9223372036854775808, %850 ], !dbg !4833
  %863 = phi i32 [ 0, %856 ], [ 1, %845 ], [ 1, %850 ], !dbg !4833
  %864 = or i32 %863, %861, !dbg !4905
  call void @llvm.dbg.value(metadata i32 %864, metadata !4809, metadata !DIExpression()), !dbg !4831
  call void @llvm.dbg.value(metadata i32 0, metadata !4816, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4831
  br label %977, !dbg !4866

865:                                              ; preds = %57
  %866 = icmp eq i64 %31, -1, !dbg !4829
  br i1 %866, label %874, label %867, !dbg !4829

867:                                              ; preds = %865
  %868 = sub i64 0, %31, !dbg !4829
  %869 = udiv i64 -9223372036854775808, %868, !dbg !4829
  %870 = icmp ult i64 %869, %55, !dbg !4829
  br i1 %870, label %882, label %874, !dbg !4829

871:                                              ; preds = %57
  %872 = udiv i64 9223372036854775807, %55, !dbg !4829
  %873 = icmp ult i64 %872, %31, !dbg !4829
  br i1 %873, label %877, label %874, !dbg !4829

874:                                              ; preds = %865, %867, %871
  %875 = mul i64 %31, %55, !dbg !4829
  call void @llvm.dbg.value(metadata i64 %875, metadata !4826, metadata !DIExpression()), !dbg !4827
  call void @llvm.dbg.value(metadata i32 0, metadata !4809, metadata !DIExpression()), !dbg !4817
  call void @llvm.dbg.value(metadata i32 5, metadata !4816, metadata !DIExpression()), !dbg !4817
  call void @llvm.dbg.value(metadata ptr undef, metadata !4820, metadata !DIExpression()), !dbg !4827
  call void @llvm.dbg.value(metadata i32 poison, metadata !4825, metadata !DIExpression()), !dbg !4827
  %876 = icmp slt i64 %875, 0, !dbg !4829
  br i1 %876, label %882, label %877, !dbg !4829

877:                                              ; preds = %871, %874
  %878 = phi i32 [ 0, %874 ], [ 1, %871 ]
  %879 = phi i64 [ %875, %874 ], [ 9223372036854775807, %871 ]
  %880 = udiv i64 9223372036854775807, %55, !dbg !4829
  %881 = icmp ult i64 %880, %879, !dbg !4829
  br i1 %881, label %893, label %888, !dbg !4829

882:                                              ; preds = %867, %874
  %883 = phi i32 [ 0, %874 ], [ 1, %867 ]
  %884 = phi i64 [ %875, %874 ], [ -9223372036854775808, %867 ]
  %885 = sub i64 0, %884, !dbg !4829
  %886 = udiv i64 -9223372036854775808, %885, !dbg !4829
  %887 = icmp ult i64 %886, %55, !dbg !4829
  br i1 %887, label %898, label %888, !dbg !4829

888:                                              ; preds = %877, %882
  %889 = phi i32 [ %883, %882 ], [ %878, %877 ]
  %890 = phi i64 [ %884, %882 ], [ %879, %877 ]
  %891 = mul i64 %890, %55, !dbg !4829
  call void @llvm.dbg.value(metadata i64 %891, metadata !4826, metadata !DIExpression()), !dbg !4827
  call void @llvm.dbg.value(metadata i32 %889, metadata !4809, metadata !DIExpression()), !dbg !4817
  call void @llvm.dbg.value(metadata i32 4, metadata !4816, metadata !DIExpression()), !dbg !4817
  call void @llvm.dbg.value(metadata ptr undef, metadata !4820, metadata !DIExpression()), !dbg !4827
  call void @llvm.dbg.value(metadata i32 poison, metadata !4825, metadata !DIExpression()), !dbg !4827
  %892 = icmp slt i64 %891, 0, !dbg !4829
  br i1 %892, label %898, label %893, !dbg !4829

893:                                              ; preds = %877, %888
  %894 = phi i32 [ %889, %888 ], [ 1, %877 ]
  %895 = phi i64 [ %891, %888 ], [ 9223372036854775807, %877 ]
  %896 = udiv i64 9223372036854775807, %55, !dbg !4829
  %897 = icmp ult i64 %896, %895, !dbg !4829
  br i1 %897, label %909, label %904, !dbg !4829

898:                                              ; preds = %882, %888
  %899 = phi i32 [ %889, %888 ], [ 1, %882 ]
  %900 = phi i64 [ %891, %888 ], [ -9223372036854775808, %882 ]
  %901 = sub i64 0, %900, !dbg !4829
  %902 = udiv i64 -9223372036854775808, %901, !dbg !4829
  %903 = icmp ult i64 %902, %55, !dbg !4829
  br i1 %903, label %914, label %904, !dbg !4829

904:                                              ; preds = %893, %898
  %905 = phi i32 [ %899, %898 ], [ %894, %893 ]
  %906 = phi i64 [ %900, %898 ], [ %895, %893 ]
  %907 = mul i64 %906, %55, !dbg !4829
  call void @llvm.dbg.value(metadata i64 %907, metadata !4826, metadata !DIExpression()), !dbg !4827
  call void @llvm.dbg.value(metadata i32 %905, metadata !4809, metadata !DIExpression()), !dbg !4817
  call void @llvm.dbg.value(metadata i32 3, metadata !4816, metadata !DIExpression()), !dbg !4817
  call void @llvm.dbg.value(metadata ptr undef, metadata !4820, metadata !DIExpression()), !dbg !4827
  call void @llvm.dbg.value(metadata i32 poison, metadata !4825, metadata !DIExpression()), !dbg !4827
  %908 = icmp slt i64 %907, 0, !dbg !4829
  br i1 %908, label %914, label %909, !dbg !4829

909:                                              ; preds = %893, %904
  %910 = phi i32 [ %905, %904 ], [ 1, %893 ]
  %911 = phi i64 [ %907, %904 ], [ 9223372036854775807, %893 ]
  %912 = udiv i64 9223372036854775807, %55, !dbg !4829
  %913 = icmp ult i64 %912, %911, !dbg !4829
  br i1 %913, label %925, label %920, !dbg !4829

914:                                              ; preds = %898, %904
  %915 = phi i32 [ %905, %904 ], [ 1, %898 ]
  %916 = phi i64 [ %907, %904 ], [ -9223372036854775808, %898 ]
  %917 = sub i64 0, %916, !dbg !4829
  %918 = udiv i64 -9223372036854775808, %917, !dbg !4829
  %919 = icmp ult i64 %918, %55, !dbg !4829
  br i1 %919, label %930, label %920, !dbg !4829

920:                                              ; preds = %909, %914
  %921 = phi i32 [ %915, %914 ], [ %910, %909 ]
  %922 = phi i64 [ %916, %914 ], [ %911, %909 ]
  %923 = mul i64 %922, %55, !dbg !4829
  call void @llvm.dbg.value(metadata i64 %923, metadata !4826, metadata !DIExpression()), !dbg !4827
  call void @llvm.dbg.value(metadata i32 %921, metadata !4809, metadata !DIExpression()), !dbg !4817
  call void @llvm.dbg.value(metadata i32 2, metadata !4816, metadata !DIExpression()), !dbg !4817
  call void @llvm.dbg.value(metadata ptr undef, metadata !4820, metadata !DIExpression()), !dbg !4827
  call void @llvm.dbg.value(metadata i32 poison, metadata !4825, metadata !DIExpression()), !dbg !4827
  %924 = icmp slt i64 %923, 0, !dbg !4829
  br i1 %924, label %930, label %925, !dbg !4829

925:                                              ; preds = %909, %920
  %926 = phi i32 [ %921, %920 ], [ 1, %909 ]
  %927 = phi i64 [ %923, %920 ], [ 9223372036854775807, %909 ]
  %928 = udiv i64 9223372036854775807, %55, !dbg !4829
  %929 = icmp ult i64 %928, %927, !dbg !4829
  br i1 %929, label %941, label %936, !dbg !4829

930:                                              ; preds = %914, %920
  %931 = phi i32 [ %921, %920 ], [ 1, %914 ]
  %932 = phi i64 [ %923, %920 ], [ -9223372036854775808, %914 ]
  %933 = sub i64 0, %932, !dbg !4829
  %934 = udiv i64 -9223372036854775808, %933, !dbg !4829
  %935 = icmp ult i64 %934, %55, !dbg !4829
  br i1 %935, label %946, label %936, !dbg !4829

936:                                              ; preds = %925, %930
  %937 = phi i32 [ %931, %930 ], [ %926, %925 ]
  %938 = phi i64 [ %932, %930 ], [ %927, %925 ]
  %939 = mul i64 %938, %55, !dbg !4829
  call void @llvm.dbg.value(metadata i64 %939, metadata !4826, metadata !DIExpression()), !dbg !4827
  call void @llvm.dbg.value(metadata i32 %937, metadata !4809, metadata !DIExpression()), !dbg !4817
  call void @llvm.dbg.value(metadata i32 1, metadata !4816, metadata !DIExpression()), !dbg !4817
  call void @llvm.dbg.value(metadata ptr undef, metadata !4820, metadata !DIExpression()), !dbg !4827
  call void @llvm.dbg.value(metadata i32 poison, metadata !4825, metadata !DIExpression()), !dbg !4827
  %940 = icmp slt i64 %939, 0, !dbg !4829
  br i1 %940, label %946, label %941, !dbg !4829

941:                                              ; preds = %925, %936
  %942 = phi i32 [ %937, %936 ], [ 1, %925 ]
  %943 = phi i64 [ %939, %936 ], [ 9223372036854775807, %925 ]
  %944 = udiv i64 9223372036854775807, %55, !dbg !4829
  %945 = icmp ult i64 %944, %943, !dbg !4829
  br i1 %945, label %957, label %952, !dbg !4829

946:                                              ; preds = %930, %936
  %947 = phi i32 [ %937, %936 ], [ 1, %930 ]
  %948 = phi i64 [ %939, %936 ], [ -9223372036854775808, %930 ]
  %949 = sub i64 0, %948, !dbg !4829
  %950 = udiv i64 -9223372036854775808, %949, !dbg !4829
  %951 = icmp ult i64 %950, %55, !dbg !4829
  br i1 %951, label %962, label %952, !dbg !4829

952:                                              ; preds = %941, %946
  %953 = phi i32 [ %947, %946 ], [ %942, %941 ]
  %954 = phi i64 [ %948, %946 ], [ %943, %941 ]
  %955 = mul i64 %954, %55, !dbg !4829
  call void @llvm.dbg.value(metadata i64 %955, metadata !4826, metadata !DIExpression()), !dbg !4827
  call void @llvm.dbg.value(metadata i32 %953, metadata !4809, metadata !DIExpression()), !dbg !4817
  call void @llvm.dbg.value(metadata i32 0, metadata !4816, metadata !DIExpression()), !dbg !4817
  call void @llvm.dbg.value(metadata ptr undef, metadata !4820, metadata !DIExpression()), !dbg !4827
  call void @llvm.dbg.value(metadata i32 poison, metadata !4825, metadata !DIExpression()), !dbg !4827
  %956 = icmp slt i64 %955, 0, !dbg !4829
  br i1 %956, label %962, label %957, !dbg !4829

957:                                              ; preds = %941, %952
  %958 = phi i32 [ %953, %952 ], [ 1, %941 ]
  %959 = phi i64 [ %955, %952 ], [ 9223372036854775807, %941 ]
  %960 = udiv i64 9223372036854775807, %55, !dbg !4829
  %961 = icmp ult i64 %960, %959, !dbg !4829
  br i1 %961, label %972, label %968, !dbg !4829

962:                                              ; preds = %946, %952
  %963 = phi i32 [ %953, %952 ], [ 1, %946 ]
  %964 = phi i64 [ %955, %952 ], [ -9223372036854775808, %946 ]
  %965 = sub i64 0, %964, !dbg !4829
  %966 = udiv i64 -9223372036854775808, %965, !dbg !4829
  %967 = icmp ult i64 %966, %55, !dbg !4829
  br i1 %967, label %972, label %968, !dbg !4829

968:                                              ; preds = %962, %957
  %969 = phi i32 [ %963, %962 ], [ %958, %957 ]
  %970 = phi i64 [ %964, %962 ], [ %959, %957 ]
  %971 = mul i64 %970, %55, !dbg !4829
  call void @llvm.dbg.value(metadata i64 %971, metadata !4826, metadata !DIExpression()), !dbg !4827
  br label %972, !dbg !4906

972:                                              ; preds = %968, %962, %957
  %973 = phi i32 [ %969, %968 ], [ %958, %957 ], [ %963, %962 ]
  %974 = phi i64 [ %971, %968 ], [ 9223372036854775807, %957 ], [ -9223372036854775808, %962 ], !dbg !4827
  %975 = phi i32 [ 0, %968 ], [ 1, %957 ], [ 1, %962 ], !dbg !4827
  %976 = or i32 %975, %973, !dbg !4907
  call void @llvm.dbg.value(metadata i32 %976, metadata !4809, metadata !DIExpression()), !dbg !4817
  call void @llvm.dbg.value(metadata i32 0, metadata !4816, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4817
  br label %977, !dbg !4866

977:                                              ; preds = %235, %239, %242, %972, %860, %723, %657, %513, %353, %273, %226, %176, %730, %79, %71, %54, %73, %75, %81, %83, %733, %735
  %978 = phi i64 [ %31, %54 ], [ %76, %75 ], [ 9223372036854775807, %73 ], [ %84, %83 ], [ 9223372036854775807, %81 ], [ %736, %735 ], [ 9223372036854775807, %733 ], [ -9223372036854775808, %71 ], [ -9223372036854775808, %79 ], [ -9223372036854775808, %730 ], [ %178, %176 ], [ %228, %226 ], [ %275, %273 ], [ %355, %353 ], [ %515, %513 ], [ %659, %657 ], [ %725, %723 ], [ %862, %860 ], [ %974, %972 ], [ %243, %242 ], [ 9223372036854775807, %239 ], [ -9223372036854775808, %235 ], !dbg !4755
  %979 = phi i32 [ 0, %54 ], [ 0, %75 ], [ 1, %73 ], [ 0, %83 ], [ 1, %81 ], [ 0, %735 ], [ 1, %733 ], [ 1, %71 ], [ 1, %79 ], [ 1, %730 ], [ %180, %176 ], [ %230, %226 ], [ %277, %273 ], [ %357, %353 ], [ %517, %513 ], [ %661, %657 ], [ %727, %723 ], [ %864, %860 ], [ %976, %972 ], [ 0, %242 ], [ 1, %239 ], [ 1, %235 ], !dbg !4908
  call void @llvm.dbg.value(metadata i32 %979, metadata !4754, metadata !DIExpression()), !dbg !4794
  %980 = or i32 %979, %30, !dbg !4866
  call void @llvm.dbg.value(metadata i32 %980, metadata !4749, metadata !DIExpression()), !dbg !4755
  %981 = getelementptr inbounds i8, ptr %11, i64 %56, !dbg !4909
  store ptr %981, ptr %8, align 8, !dbg !4909, !tbaa !866
  %982 = load i8, ptr %981, align 1, !dbg !4910, !tbaa !945
  %983 = icmp eq i8 %982, 0, !dbg !4910
  %984 = or i32 %980, 2
  %985 = select i1 %983, i32 %980, i32 %984, !dbg !4912
  call void @llvm.dbg.value(metadata i32 %985, metadata !4749, metadata !DIExpression()), !dbg !4755
  br label %988

986:                                              ; preds = %54
  call void @llvm.dbg.value(metadata i64 %10, metadata !4748, metadata !DIExpression()), !dbg !4755
  store i64 %31, ptr %3, align 8, !dbg !4913, !tbaa !1319
  %987 = or i32 %30, 2, !dbg !4914
  call void @llvm.dbg.value(metadata i32 %30, metadata !4749, metadata !DIExpression()), !dbg !4755
  br label %991

988:                                              ; preds = %977, %29
  %989 = phi i64 [ %31, %29 ], [ %978, %977 ], !dbg !4915
  %990 = phi i32 [ %30, %29 ], [ %985, %977 ], !dbg !4916
  call void @llvm.dbg.value(metadata i32 %990, metadata !4749, metadata !DIExpression()), !dbg !4755
  call void @llvm.dbg.value(metadata i64 %989, metadata !4748, metadata !DIExpression()), !dbg !4755
  store i64 %989, ptr %3, align 8, !dbg !4917, !tbaa !1319
  br label %991, !dbg !4918

991:                                              ; preds = %986, %22, %13, %15, %18, %988, %38, %28
  %992 = phi i32 [ %990, %988 ], [ %987, %986 ], [ %39, %38 ], [ %26, %28 ], [ 4, %18 ], [ 4, %15 ], [ 4, %13 ], [ 4, %22 ], !dbg !4755
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #42, !dbg !4919
  ret i32 %992, !dbg !4919
}

; Function Attrs: nounwind
declare !dbg !4920 i64 @strtoimax(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @rpl_fopen(ptr nocapture noundef nonnull readonly %0, ptr nocapture noundef nonnull readonly %1) local_unnamed_addr #18 !dbg !4925 {
  %3 = alloca [81 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !4963, metadata !DIExpression()), !dbg !4987
  call void @llvm.dbg.value(metadata ptr %1, metadata !4964, metadata !DIExpression()), !dbg !4987
  call void @llvm.dbg.value(metadata i32 0, metadata !4965, metadata !DIExpression()), !dbg !4987
  call void @llvm.dbg.value(metadata i32 0, metadata !4966, metadata !DIExpression()), !dbg !4987
  call void @llvm.dbg.value(metadata i8 0, metadata !4967, metadata !DIExpression()), !dbg !4987
  call void @llvm.lifetime.start.p0(i64 81, ptr nonnull %3) #42, !dbg !4988
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4968, metadata !DIExpression()), !dbg !4989
  call void @llvm.dbg.value(metadata ptr %1, metadata !4972, metadata !DIExpression()), !dbg !4990
  call void @llvm.dbg.value(metadata ptr %3, metadata !4974, metadata !DIExpression()), !dbg !4990
  call void @llvm.dbg.value(metadata i32 0, metadata !4965, metadata !DIExpression()), !dbg !4987
  call void @llvm.dbg.value(metadata i32 0, metadata !4966, metadata !DIExpression()), !dbg !4987
  call void @llvm.dbg.value(metadata i8 0, metadata !4967, metadata !DIExpression()), !dbg !4987
  %4 = load i8, ptr %1, align 1, !dbg !4991, !tbaa !945
  %5 = icmp eq i8 %4, 0, !dbg !4992
  br i1 %5, label %6, label %7, !dbg !4993

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4974, metadata !DIExpression()), !dbg !4990
  store i8 0, ptr %3, align 16, !dbg !4994, !tbaa !945
  br label %74, !dbg !4995

7:                                                ; preds = %2, %47
  %8 = phi i8 [ %54, %47 ], [ %4, %2 ]
  %9 = phi ptr [ %53, %47 ], [ %3, %2 ]
  %10 = phi i32 [ %51, %47 ], [ 0, %2 ]
  %11 = phi i32 [ %50, %47 ], [ 0, %2 ]
  %12 = phi i64 [ %49, %47 ], [ 0, %2 ]
  %13 = phi ptr [ %52, %47 ], [ %1, %2 ]
  %14 = phi i8 [ %48, %47 ], [ 0, %2 ]
  call void @llvm.dbg.value(metadata i32 %10, metadata !4965, metadata !DIExpression()), !dbg !4987
  call void @llvm.dbg.value(metadata i32 %11, metadata !4966, metadata !DIExpression()), !dbg !4987
  call void @llvm.dbg.value(metadata ptr %13, metadata !4972, metadata !DIExpression()), !dbg !4990
  call void @llvm.dbg.value(metadata i8 %14, metadata !4967, metadata !DIExpression()), !dbg !4987
  %15 = sext i8 %8 to i32, !dbg !4991
  switch i32 %15, label %42 [
    i32 114, label %16
    i32 119, label %20
    i32 97, label %25
    i32 98, label %30
    i32 43, label %34
    i32 120, label %38
    i32 101, label %40
  ], !dbg !4996

16:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 0, metadata !4965, metadata !DIExpression()), !dbg !4987
  %17 = icmp slt i64 %12, 80, !dbg !4997
  br i1 %17, label %18, label %47, !dbg !5000

18:                                               ; preds = %16
  %19 = add nsw i64 %12, 1, !dbg !5001
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %19), metadata !4974, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4990
  store i8 %8, ptr %9, align 1, !dbg !5002, !tbaa !945
  br label %47, !dbg !5003

20:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 1, metadata !4965, metadata !DIExpression()), !dbg !4987
  %21 = or i32 %11, 576, !dbg !5004
  call void @llvm.dbg.value(metadata i32 %21, metadata !4966, metadata !DIExpression()), !dbg !4987
  %22 = icmp slt i64 %12, 80, !dbg !5005
  br i1 %22, label %23, label %47, !dbg !5007

23:                                               ; preds = %20
  %24 = add nsw i64 %12, 1, !dbg !5008
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %24), metadata !4974, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4990
  store i8 %8, ptr %9, align 1, !dbg !5009, !tbaa !945
  br label %47, !dbg !5010

25:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 1, metadata !4965, metadata !DIExpression()), !dbg !4987
  %26 = or i32 %11, 1088, !dbg !5011
  call void @llvm.dbg.value(metadata i32 %26, metadata !4966, metadata !DIExpression()), !dbg !4987
  %27 = icmp slt i64 %12, 80, !dbg !5012
  br i1 %27, label %28, label %47, !dbg !5014

28:                                               ; preds = %25
  %29 = add nsw i64 %12, 1, !dbg !5015
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %29), metadata !4974, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4990
  store i8 %8, ptr %9, align 1, !dbg !5016, !tbaa !945
  br label %47, !dbg !5017

30:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 %11, metadata !4966, metadata !DIExpression()), !dbg !4987
  %31 = icmp slt i64 %12, 80, !dbg !5018
  br i1 %31, label %32, label %47, !dbg !5020

32:                                               ; preds = %30
  %33 = add nsw i64 %12, 1, !dbg !5021
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %33), metadata !4974, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4990
  store i8 %8, ptr %9, align 1, !dbg !5022, !tbaa !945
  br label %47, !dbg !5023

34:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 2, metadata !4965, metadata !DIExpression()), !dbg !4987
  %35 = icmp slt i64 %12, 80, !dbg !5024
  br i1 %35, label %36, label %47, !dbg !5026

36:                                               ; preds = %34
  %37 = add nsw i64 %12, 1, !dbg !5027
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %37), metadata !4974, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4990
  store i8 %8, ptr %9, align 1, !dbg !5028, !tbaa !945
  br label %47, !dbg !5029

38:                                               ; preds = %7
  %39 = or i32 %11, 128, !dbg !5030
  call void @llvm.dbg.value(metadata i32 %39, metadata !4966, metadata !DIExpression()), !dbg !4987
  call void @llvm.dbg.value(metadata i8 1, metadata !4967, metadata !DIExpression()), !dbg !4987
  br label %47, !dbg !5031

40:                                               ; preds = %7
  %41 = or i32 %11, 524288, !dbg !5032
  call void @llvm.dbg.value(metadata i32 %41, metadata !4966, metadata !DIExpression()), !dbg !4987
  call void @llvm.dbg.value(metadata i8 1, metadata !4967, metadata !DIExpression()), !dbg !4987
  br label %47, !dbg !5033

42:                                               ; preds = %7
  %43 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %13) #43, !dbg !5034
  call void @llvm.dbg.value(metadata i64 %43, metadata !4975, metadata !DIExpression()), !dbg !5035
  %44 = sub nsw i64 80, %12, !dbg !5036
  %45 = tail call i64 @llvm.umin.i64(i64 %43, i64 %44), !dbg !5038
  call void @llvm.dbg.value(metadata i64 %45, metadata !4975, metadata !DIExpression()), !dbg !5035
  call void @llvm.dbg.value(metadata ptr %9, metadata !5039, metadata !DIExpression()), !dbg !5044
  call void @llvm.dbg.value(metadata ptr %13, metadata !5042, metadata !DIExpression()), !dbg !5044
  call void @llvm.dbg.value(metadata i64 %45, metadata !5043, metadata !DIExpression()), !dbg !5044
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %9, ptr noundef nonnull align 1 %13, i64 noundef %45, i1 noundef false) #42, !dbg !5046
  %46 = getelementptr inbounds i8, ptr %9, i64 %45, !dbg !5047
  call void @llvm.dbg.value(metadata ptr %46, metadata !4974, metadata !DIExpression()), !dbg !4990
  br label %56, !dbg !5048

47:                                               ; preds = %34, %36, %30, %32, %25, %28, %20, %23, %16, %18, %40, %38
  %48 = phi i8 [ 1, %40 ], [ 1, %38 ], [ %14, %36 ], [ %14, %34 ], [ %14, %32 ], [ %14, %30 ], [ %14, %28 ], [ %14, %25 ], [ %14, %23 ], [ %14, %20 ], [ %14, %18 ], [ %14, %16 ], !dbg !4987
  %49 = phi i64 [ %12, %40 ], [ %12, %38 ], [ %37, %36 ], [ %12, %34 ], [ %33, %32 ], [ %12, %30 ], [ %29, %28 ], [ %12, %25 ], [ %24, %23 ], [ %12, %20 ], [ %19, %18 ], [ %12, %16 ]
  %50 = phi i32 [ %41, %40 ], [ %39, %38 ], [ %11, %36 ], [ %11, %34 ], [ %11, %32 ], [ %11, %30 ], [ %26, %28 ], [ %26, %25 ], [ %21, %23 ], [ %21, %20 ], [ %11, %18 ], [ %11, %16 ], !dbg !4987
  %51 = phi i32 [ %10, %40 ], [ %10, %38 ], [ 2, %36 ], [ 2, %34 ], [ %10, %32 ], [ %10, %30 ], [ 1, %28 ], [ 1, %25 ], [ 1, %23 ], [ 1, %20 ], [ 0, %18 ], [ 0, %16 ], !dbg !4987
  call void @llvm.dbg.value(metadata i32 %51, metadata !4965, metadata !DIExpression()), !dbg !4987
  call void @llvm.dbg.value(metadata i32 %50, metadata !4966, metadata !DIExpression()), !dbg !4987
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %49), metadata !4974, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4990
  call void @llvm.dbg.value(metadata i8 %48, metadata !4967, metadata !DIExpression()), !dbg !4987
  %52 = getelementptr inbounds i8, ptr %13, i64 1, !dbg !5049
  call void @llvm.dbg.value(metadata ptr %52, metadata !4972, metadata !DIExpression()), !dbg !4990
  %53 = getelementptr inbounds i8, ptr %3, i64 %49, !dbg !4987
  call void @llvm.dbg.value(metadata ptr %53, metadata !4974, metadata !DIExpression()), !dbg !4990
  %54 = load i8, ptr %52, align 1, !dbg !4991, !tbaa !945
  %55 = icmp eq i8 %54, 0, !dbg !4992
  br i1 %55, label %56, label %7, !dbg !4993, !llvm.loop !5050

56:                                               ; preds = %47, %42
  %57 = phi i8 [ %14, %42 ], [ %48, %47 ]
  %58 = phi i32 [ %11, %42 ], [ %50, %47 ]
  %59 = phi i32 [ %10, %42 ], [ %51, %47 ]
  %60 = phi ptr [ %46, %42 ], [ %53, %47 ], !dbg !4990
  call void @llvm.dbg.value(metadata ptr %60, metadata !4974, metadata !DIExpression()), !dbg !4990
  store i8 0, ptr %60, align 1, !dbg !4994, !tbaa !945
  %61 = and i8 %57, 1, !dbg !5052
  %62 = icmp eq i8 %61, 0, !dbg !5052
  br i1 %62, label %74, label %63, !dbg !4995

63:                                               ; preds = %56
  %64 = or i32 %59, %58, !dbg !5053
  %65 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %0, i32 noundef %64, i32 noundef 438) #42, !dbg !5054
  call void @llvm.dbg.value(metadata i32 %65, metadata !4980, metadata !DIExpression()), !dbg !5055
  %66 = icmp slt i32 %65, 0, !dbg !5056
  br i1 %66, label %76, label %67, !dbg !5058

67:                                               ; preds = %63
  %68 = call noalias ptr @fdopen(i32 noundef %65, ptr noundef nonnull %3) #42, !dbg !5059
  call void @llvm.dbg.value(metadata ptr %68, metadata !4983, metadata !DIExpression()), !dbg !5055
  %69 = icmp eq ptr %68, null, !dbg !5060
  br i1 %69, label %70, label %76, !dbg !5061

70:                                               ; preds = %67
  %71 = tail call ptr @__errno_location() #45, !dbg !5062
  %72 = load i32, ptr %71, align 4, !dbg !5062, !tbaa !936
  call void @llvm.dbg.value(metadata i32 %72, metadata !4984, metadata !DIExpression()), !dbg !5063
  %73 = tail call i32 @close(i32 noundef %65) #42, !dbg !5064
  store i32 %72, ptr %71, align 4, !dbg !5065, !tbaa !936
  br label %76, !dbg !5066

74:                                               ; preds = %6, %56
  call void @llvm.dbg.value(metadata ptr %0, metadata !5067, metadata !DIExpression()), !dbg !5071
  call void @llvm.dbg.value(metadata ptr %1, metadata !5070, metadata !DIExpression()), !dbg !5071
  %75 = tail call noalias ptr @fopen(ptr noundef nonnull %0, ptr noundef nonnull %1), !dbg !5073
  br label %76, !dbg !5074

76:                                               ; preds = %63, %70, %67, %74
  %77 = phi ptr [ %75, %74 ], [ null, %63 ], [ null, %70 ], [ %68, %67 ], !dbg !4987
  call void @llvm.lifetime.end.p0(i64 81, ptr nonnull %3) #42, !dbg !5075
  ret ptr %77, !dbg !5075
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #1

; Function Attrs: nofree
declare !dbg !5076 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #39

; Function Attrs: nofree nounwind
declare !dbg !5079 noalias noundef ptr @fdopen(i32 noundef, ptr nocapture noundef readonly) local_unnamed_addr #4

declare !dbg !5082 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !5083 noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #18 !dbg !5086 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5124, metadata !DIExpression()), !dbg !5129
  %2 = tail call i64 @__fpending(ptr noundef %0) #42, !dbg !5130
  call void @llvm.dbg.value(metadata i1 poison, metadata !5125, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5129
  call void @llvm.dbg.value(metadata ptr %0, metadata !5131, metadata !DIExpression()), !dbg !5134
  %3 = load i32, ptr %0, align 8, !dbg !5136, !tbaa !1298
  %4 = and i32 %3, 32, !dbg !5137
  %5 = icmp eq i32 %4, 0, !dbg !5137
  call void @llvm.dbg.value(metadata i1 %5, metadata !5127, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5129
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #42, !dbg !5138
  %7 = icmp eq i32 %6, 0, !dbg !5139
  call void @llvm.dbg.value(metadata i1 %7, metadata !5128, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5129
  br i1 %5, label %8, label %18, !dbg !5140

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !5142
  call void @llvm.dbg.value(metadata i1 %9, metadata !5125, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5129
  %10 = select i1 %7, i1 true, i1 %9, !dbg !5143
  %11 = xor i1 %7, true, !dbg !5143
  %12 = sext i1 %11 to i32, !dbg !5143
  br i1 %10, label %21, label %13, !dbg !5143

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #45, !dbg !5144
  %15 = load i32, ptr %14, align 4, !dbg !5144, !tbaa !936
  %16 = icmp ne i32 %15, 9, !dbg !5145
  %17 = sext i1 %16 to i32, !dbg !5146
  br label %21, !dbg !5146

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !5147

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #45, !dbg !5149
  store i32 0, ptr %20, align 4, !dbg !5151, !tbaa !936
  br label %21, !dbg !5149

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !5129
  ret i32 %22, !dbg !5152
}

; Function Attrs: nounwind
declare !dbg !5153 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #18 !dbg !5156 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5161, metadata !DIExpression()), !dbg !5166
  call void @llvm.dbg.value(metadata ptr %1, metadata !5162, metadata !DIExpression()), !dbg !5166
  call void @llvm.dbg.value(metadata i64 %2, metadata !5163, metadata !DIExpression()), !dbg !5166
  call void @llvm.dbg.value(metadata ptr %3, metadata !5164, metadata !DIExpression()), !dbg !5166
  %5 = icmp eq ptr %1, null, !dbg !5167
  %6 = select i1 %5, ptr null, ptr %0, !dbg !5169
  %7 = select i1 %5, ptr @.str.153, ptr %1, !dbg !5169
  %8 = select i1 %5, i64 1, i64 %2, !dbg !5169
  call void @llvm.dbg.value(metadata i64 %8, metadata !5163, metadata !DIExpression()), !dbg !5166
  call void @llvm.dbg.value(metadata ptr %7, metadata !5162, metadata !DIExpression()), !dbg !5166
  call void @llvm.dbg.value(metadata ptr %6, metadata !5161, metadata !DIExpression()), !dbg !5166
  %9 = icmp eq ptr %3, null, !dbg !5170
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !5172
  call void @llvm.dbg.value(metadata ptr %10, metadata !5164, metadata !DIExpression()), !dbg !5166
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #42, !dbg !5173
  call void @llvm.dbg.value(metadata i64 %11, metadata !5165, metadata !DIExpression()), !dbg !5166
  %12 = icmp ult i64 %11, -3, !dbg !5174
  br i1 %12, label %13, label %17, !dbg !5176

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #43, !dbg !5177
  %15 = icmp eq i32 %14, 0, !dbg !5177
  br i1 %15, label %16, label %29, !dbg !5178

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !5179, metadata !DIExpression()), !dbg !5184
  call void @llvm.dbg.value(metadata ptr %10, metadata !5186, metadata !DIExpression()), !dbg !5191
  call void @llvm.dbg.value(metadata i32 0, metadata !5189, metadata !DIExpression()), !dbg !5191
  call void @llvm.dbg.value(metadata i64 8, metadata !5190, metadata !DIExpression()), !dbg !5191
  store i64 0, ptr %10, align 1, !dbg !5193
  br label %29, !dbg !5194

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !5195
  br i1 %18, label %19, label %20, !dbg !5197

19:                                               ; preds = %17
  tail call void @abort() #44, !dbg !5198
  unreachable, !dbg !5198

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !5199

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #42, !dbg !5201
  br i1 %23, label %29, label %24, !dbg !5202

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !5203
  br i1 %25, label %29, label %26, !dbg !5206

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !5207, !tbaa !945
  %28 = zext i8 %27 to i32, !dbg !5208
  store i32 %28, ptr %6, align 4, !dbg !5209, !tbaa !936
  br label %29, !dbg !5210

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !5166
  ret i64 %30, !dbg !5211
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !5212 i32 @mbsinit(ptr noundef) local_unnamed_addr #40

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #41 !dbg !5218 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5220, metadata !DIExpression()), !dbg !5224
  call void @llvm.dbg.value(metadata i64 %1, metadata !5221, metadata !DIExpression()), !dbg !5224
  call void @llvm.dbg.value(metadata i64 %2, metadata !5222, metadata !DIExpression()), !dbg !5224
  %4 = icmp eq i64 %2, 0, !dbg !5225
  br i1 %4, label %8, label %5, !dbg !5225

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !5225
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !5225
  br i1 %7, label %13, label %8, !dbg !5225

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5223, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5224
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5223, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5224
  %9 = mul i64 %2, %1, !dbg !5225
  call void @llvm.dbg.value(metadata i64 %9, metadata !5223, metadata !DIExpression()), !dbg !5224
  call void @llvm.dbg.value(metadata ptr %0, metadata !5227, metadata !DIExpression()), !dbg !5231
  call void @llvm.dbg.value(metadata i64 %9, metadata !5230, metadata !DIExpression()), !dbg !5231
  %10 = icmp eq i64 %9, 0, !dbg !5233
  %11 = select i1 %10, i64 1, i64 %9, !dbg !5233
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #49, !dbg !5234
  br label %15, !dbg !5235

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5223, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5224
  %14 = tail call ptr @__errno_location() #45, !dbg !5236
  store i32 12, ptr %14, align 4, !dbg !5238, !tbaa !936
  br label %15, !dbg !5239

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !5224
  ret ptr %16, !dbg !5240
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #18 !dbg !5241 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !5245, metadata !DIExpression()), !dbg !5250
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #42, !dbg !5251
  call void @llvm.dbg.declare(metadata ptr %2, metadata !5246, metadata !DIExpression()), !dbg !5252
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #42, !dbg !5253
  %4 = icmp eq i32 %3, 0, !dbg !5253
  br i1 %4, label %5, label %12, !dbg !5255

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !5256, metadata !DIExpression()), !dbg !5260
  %6 = load i16, ptr %2, align 16, !dbg !5263
  %7 = icmp eq i16 %6, 67, !dbg !5263
  br i1 %7, label %11, label %8, !dbg !5264

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !5256, metadata !DIExpression()), !dbg !5265
  call void @llvm.dbg.value(metadata ptr @.str.1.158, metadata !5259, metadata !DIExpression()), !dbg !5265
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.158, i64 6), !dbg !5267
  %10 = icmp eq i32 %9, 0, !dbg !5268
  br i1 %10, label %11, label %12, !dbg !5269

11:                                               ; preds = %8, %5
  br label %12, !dbg !5270

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !5250
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #42, !dbg !5271
  ret i1 %13, !dbg !5271
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #18 !dbg !5272 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5276, metadata !DIExpression()), !dbg !5279
  call void @llvm.dbg.value(metadata ptr %1, metadata !5277, metadata !DIExpression()), !dbg !5279
  call void @llvm.dbg.value(metadata i64 %2, metadata !5278, metadata !DIExpression()), !dbg !5279
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #42, !dbg !5280
  ret i32 %4, !dbg !5281
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #18 !dbg !5282 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5286, metadata !DIExpression()), !dbg !5287
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #42, !dbg !5288
  ret ptr %2, !dbg !5289
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #18 !dbg !5290 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5292, metadata !DIExpression()), !dbg !5294
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #42, !dbg !5295
  call void @llvm.dbg.value(metadata ptr %2, metadata !5293, metadata !DIExpression()), !dbg !5294
  ret ptr %2, !dbg !5296
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #18 !dbg !5297 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5299, metadata !DIExpression()), !dbg !5306
  call void @llvm.dbg.value(metadata ptr %1, metadata !5300, metadata !DIExpression()), !dbg !5306
  call void @llvm.dbg.value(metadata i64 %2, metadata !5301, metadata !DIExpression()), !dbg !5306
  call void @llvm.dbg.value(metadata i32 %0, metadata !5292, metadata !DIExpression()), !dbg !5307
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #42, !dbg !5309
  call void @llvm.dbg.value(metadata ptr %4, metadata !5293, metadata !DIExpression()), !dbg !5307
  call void @llvm.dbg.value(metadata ptr %4, metadata !5302, metadata !DIExpression()), !dbg !5306
  %5 = icmp eq ptr %4, null, !dbg !5310
  br i1 %5, label %6, label %9, !dbg !5311

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !5312
  br i1 %7, label %19, label %8, !dbg !5315

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !5316, !tbaa !945
  br label %19, !dbg !5317

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #43, !dbg !5318
  call void @llvm.dbg.value(metadata i64 %10, metadata !5303, metadata !DIExpression()), !dbg !5319
  %11 = icmp ult i64 %10, %2, !dbg !5320
  br i1 %11, label %12, label %14, !dbg !5322

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !5323
  call void @llvm.dbg.value(metadata ptr %1, metadata !5325, metadata !DIExpression()), !dbg !5330
  call void @llvm.dbg.value(metadata ptr %4, metadata !5328, metadata !DIExpression()), !dbg !5330
  call void @llvm.dbg.value(metadata i64 %13, metadata !5329, metadata !DIExpression()), !dbg !5330
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #42, !dbg !5332
  br label %19, !dbg !5333

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !5334
  br i1 %15, label %19, label %16, !dbg !5337

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !5338
  call void @llvm.dbg.value(metadata ptr %1, metadata !5325, metadata !DIExpression()), !dbg !5340
  call void @llvm.dbg.value(metadata ptr %4, metadata !5328, metadata !DIExpression()), !dbg !5340
  call void @llvm.dbg.value(metadata i64 %17, metadata !5329, metadata !DIExpression()), !dbg !5340
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #42, !dbg !5342
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !5343
  store i8 0, ptr %18, align 1, !dbg !5344, !tbaa !945
  br label %19, !dbg !5345

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !5346
  ret i32 %20, !dbg !5347
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
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind willreturn }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nofree nounwind willreturn memory(argmem: read) }
attributes #27 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #32 = { inlinehint nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { nounwind allocsize(0) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { nounwind allocsize(1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { nounwind allocsize(0,1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #40 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #41 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #42 = { nounwind }
attributes #43 = { nounwind willreturn memory(read) }
attributes #44 = { noreturn nounwind }
attributes #45 = { nounwind willreturn memory(none) }
attributes #46 = { noreturn }
attributes #47 = { nounwind allocsize(0) }
attributes #48 = { cold }
attributes #49 = { nounwind allocsize(1) }
attributes #50 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!74, !424, !428, !454, !469, !741, !773, !776, !778, !781, !783, !785, !521, !535, !583, !787, !733, !793, !824, !826, !833, !835, !757, !837, !840, !844, !846}
!llvm.ident = !{!848, !848, !848, !848, !848, !848, !848, !848, !848, !848, !848, !848, !848, !848, !848, !848, !848, !848, !848, !848, !848, !848, !848, !848, !848, !848, !848}
!llvm.module.flags = !{!849, !850, !851, !852, !853, !854}

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
!468 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !469, file: !470, line: 66, type: !516, isLocal: false, isDefinition: true)
!469 = distinct !DICompileUnit(language: DW_LANG_C11, file: !470, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !471, globals: !472, splitDebugInlining: false, nameTableKind: None)
!470 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!471 = !{!131, !138}
!472 = !{!473, !475, !495, !497, !499, !501, !467, !503, !505, !507, !509, !514}
!473 = !DIGlobalVariableExpression(var: !474, expr: !DIExpression())
!474 = distinct !DIGlobalVariable(scope: null, file: !470, line: 272, type: !69, isLocal: true, isDefinition: true)
!475 = !DIGlobalVariableExpression(var: !476, expr: !DIExpression())
!476 = distinct !DIGlobalVariable(name: "old_file_name", scope: !477, file: !470, line: 304, type: !136, isLocal: true, isDefinition: true)
!477 = distinct !DISubprogram(name: "verror_at_line", scope: !470, file: !470, line: 298, type: !478, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !469, retainedNodes: !488)
!478 = !DISubroutineType(types: !479)
!479 = !{null, !87, !87, !136, !78, !136, !480}
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !482)
!482 = !{!483, !485, !486, !487}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !481, file: !484, baseType: !78, size: 32)
!484 = !DIFile(filename: "lib/error.c", directory: "/src")
!485 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !481, file: !484, baseType: !78, size: 32, offset: 32)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !481, file: !484, baseType: !131, size: 64, offset: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !481, file: !484, baseType: !131, size: 64, offset: 128)
!488 = !{!489, !490, !491, !492, !493, !494}
!489 = !DILocalVariable(name: "status", arg: 1, scope: !477, file: !470, line: 298, type: !87)
!490 = !DILocalVariable(name: "errnum", arg: 2, scope: !477, file: !470, line: 298, type: !87)
!491 = !DILocalVariable(name: "file_name", arg: 3, scope: !477, file: !470, line: 298, type: !136)
!492 = !DILocalVariable(name: "line_number", arg: 4, scope: !477, file: !470, line: 298, type: !78)
!493 = !DILocalVariable(name: "message", arg: 5, scope: !477, file: !470, line: 298, type: !136)
!494 = !DILocalVariable(name: "args", arg: 6, scope: !477, file: !470, line: 298, type: !480)
!495 = !DIGlobalVariableExpression(var: !496, expr: !DIExpression())
!496 = distinct !DIGlobalVariable(name: "old_line_number", scope: !477, file: !470, line: 305, type: !78, isLocal: true, isDefinition: true)
!497 = !DIGlobalVariableExpression(var: !498, expr: !DIExpression())
!498 = distinct !DIGlobalVariable(scope: null, file: !470, line: 338, type: !273, isLocal: true, isDefinition: true)
!499 = !DIGlobalVariableExpression(var: !500, expr: !DIExpression())
!500 = distinct !DIGlobalVariable(scope: null, file: !470, line: 346, type: !299, isLocal: true, isDefinition: true)
!501 = !DIGlobalVariableExpression(var: !502, expr: !DIExpression())
!502 = distinct !DIGlobalVariable(scope: null, file: !470, line: 346, type: !164, isLocal: true, isDefinition: true)
!503 = !DIGlobalVariableExpression(var: !504, expr: !DIExpression())
!504 = distinct !DIGlobalVariable(name: "error_message_count", scope: !469, file: !470, line: 69, type: !78, isLocal: false, isDefinition: true)
!505 = !DIGlobalVariableExpression(var: !506, expr: !DIExpression())
!506 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !469, file: !470, line: 295, type: !87, isLocal: false, isDefinition: true)
!507 = !DIGlobalVariableExpression(var: !508, expr: !DIExpression())
!508 = distinct !DIGlobalVariable(scope: null, file: !470, line: 208, type: !19, isLocal: true, isDefinition: true)
!509 = !DIGlobalVariableExpression(var: !510, expr: !DIExpression())
!510 = distinct !DIGlobalVariable(scope: null, file: !470, line: 208, type: !511, isLocal: true, isDefinition: true)
!511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !512)
!512 = !{!513}
!513 = !DISubrange(count: 21)
!514 = !DIGlobalVariableExpression(var: !515, expr: !DIExpression())
!515 = distinct !DIGlobalVariable(scope: null, file: !470, line: 214, type: !69, isLocal: true, isDefinition: true)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DISubroutineType(types: !518)
!518 = !{null}
!519 = !DIGlobalVariableExpression(var: !520, expr: !DIExpression())
!520 = distinct !DIGlobalVariable(name: "program_name", scope: !521, file: !522, line: 31, type: !136, isLocal: false, isDefinition: true)
!521 = distinct !DICompileUnit(language: DW_LANG_C11, file: !522, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !523, globals: !524, splitDebugInlining: false, nameTableKind: None)
!522 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!523 = !{!130}
!524 = !{!519, !525, !527}
!525 = !DIGlobalVariableExpression(var: !526, expr: !DIExpression())
!526 = distinct !DIGlobalVariable(scope: null, file: !522, line: 46, type: !299, isLocal: true, isDefinition: true)
!527 = !DIGlobalVariableExpression(var: !528, expr: !DIExpression())
!528 = distinct !DIGlobalVariable(scope: null, file: !522, line: 49, type: !273, isLocal: true, isDefinition: true)
!529 = !DIGlobalVariableExpression(var: !530, expr: !DIExpression())
!530 = distinct !DIGlobalVariable(name: "utf07FF", scope: !531, file: !532, line: 46, type: !559, isLocal: true, isDefinition: true)
!531 = distinct !DISubprogram(name: "proper_name_lite", scope: !532, file: !532, line: 38, type: !533, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !535, retainedNodes: !537)
!532 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!533 = !DISubroutineType(types: !534)
!534 = !{!136, !136, !136}
!535 = distinct !DICompileUnit(language: DW_LANG_C11, file: !532, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !536, splitDebugInlining: false, nameTableKind: None)
!536 = !{!529}
!537 = !{!538, !539, !540, !541, !546}
!538 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !531, file: !532, line: 38, type: !136)
!539 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !531, file: !532, line: 38, type: !136)
!540 = !DILocalVariable(name: "translation", scope: !531, file: !532, line: 40, type: !136)
!541 = !DILocalVariable(name: "w", scope: !531, file: !532, line: 47, type: !542)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !543, line: 37, baseType: !544)
!543 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !236, line: 57, baseType: !545)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !236, line: 42, baseType: !78)
!546 = !DILocalVariable(name: "mbs", scope: !531, file: !532, line: 48, type: !547)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !548, line: 6, baseType: !549)
!548 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !550, line: 21, baseType: !551)
!550 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !550, line: 13, size: 64, elements: !552)
!552 = !{!553, !554}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !551, file: !550, line: 15, baseType: !87, size: 32)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !551, file: !550, line: 20, baseType: !555, size: 32, offset: 32)
!555 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !551, file: !550, line: 16, size: 32, elements: !556)
!556 = !{!557, !558}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !555, file: !550, line: 18, baseType: !78, size: 32)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !555, file: !550, line: 19, baseType: !273, size: 32)
!559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 16, elements: !165)
!560 = !DIGlobalVariableExpression(var: !561, expr: !DIExpression())
!561 = distinct !DIGlobalVariable(scope: null, file: !562, line: 78, type: !299, isLocal: true, isDefinition: true)
!562 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!563 = !DIGlobalVariableExpression(var: !564, expr: !DIExpression())
!564 = distinct !DIGlobalVariable(scope: null, file: !562, line: 79, type: !278, isLocal: true, isDefinition: true)
!565 = !DIGlobalVariableExpression(var: !566, expr: !DIExpression())
!566 = distinct !DIGlobalVariable(scope: null, file: !562, line: 80, type: !394, isLocal: true, isDefinition: true)
!567 = !DIGlobalVariableExpression(var: !568, expr: !DIExpression())
!568 = distinct !DIGlobalVariable(scope: null, file: !562, line: 81, type: !394, isLocal: true, isDefinition: true)
!569 = !DIGlobalVariableExpression(var: !570, expr: !DIExpression())
!570 = distinct !DIGlobalVariable(scope: null, file: !562, line: 82, type: !258, isLocal: true, isDefinition: true)
!571 = !DIGlobalVariableExpression(var: !572, expr: !DIExpression())
!572 = distinct !DIGlobalVariable(scope: null, file: !562, line: 83, type: !164, isLocal: true, isDefinition: true)
!573 = !DIGlobalVariableExpression(var: !574, expr: !DIExpression())
!574 = distinct !DIGlobalVariable(scope: null, file: !562, line: 84, type: !299, isLocal: true, isDefinition: true)
!575 = !DIGlobalVariableExpression(var: !576, expr: !DIExpression())
!576 = distinct !DIGlobalVariable(scope: null, file: !562, line: 85, type: !19, isLocal: true, isDefinition: true)
!577 = !DIGlobalVariableExpression(var: !578, expr: !DIExpression())
!578 = distinct !DIGlobalVariable(scope: null, file: !562, line: 86, type: !19, isLocal: true, isDefinition: true)
!579 = !DIGlobalVariableExpression(var: !580, expr: !DIExpression())
!580 = distinct !DIGlobalVariable(scope: null, file: !562, line: 87, type: !299, isLocal: true, isDefinition: true)
!581 = !DIGlobalVariableExpression(var: !582, expr: !DIExpression())
!582 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !583, file: !562, line: 76, type: !653, isLocal: false, isDefinition: true)
!583 = distinct !DICompileUnit(language: DW_LANG_C11, file: !562, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !584, retainedTypes: !590, globals: !591, splitDebugInlining: false, nameTableKind: None)
!584 = !{!91, !585, !114}
!585 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !92, line: 254, baseType: !78, size: 32, elements: !586)
!586 = !{!587, !588, !589}
!587 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!588 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!589 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!590 = !{!87, !132, !133}
!591 = !{!560, !563, !565, !567, !569, !571, !573, !575, !577, !579, !581, !592, !596, !606, !608, !611, !613, !615, !617, !619, !642, !649, !651}
!592 = !DIGlobalVariableExpression(var: !593, expr: !DIExpression())
!593 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !583, file: !562, line: 92, type: !594, isLocal: false, isDefinition: true)
!594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !595, size: 320, elements: !60)
!595 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !91)
!596 = !DIGlobalVariableExpression(var: !597, expr: !DIExpression())
!597 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !583, file: !562, line: 1040, type: !598, isLocal: false, isDefinition: true)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !562, line: 56, size: 448, elements: !599)
!599 = !{!600, !601, !602, !604, !605}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !598, file: !562, line: 59, baseType: !91, size: 32)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !598, file: !562, line: 62, baseType: !87, size: 32, offset: 32)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !598, file: !562, line: 66, baseType: !603, size: 256, offset: 64)
!603 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 256, elements: !300)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !598, file: !562, line: 69, baseType: !136, size: 64, offset: 320)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !598, file: !562, line: 72, baseType: !136, size: 64, offset: 384)
!606 = !DIGlobalVariableExpression(var: !607, expr: !DIExpression())
!607 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !583, file: !562, line: 107, type: !598, isLocal: true, isDefinition: true)
!608 = !DIGlobalVariableExpression(var: !609, expr: !DIExpression())
!609 = distinct !DIGlobalVariable(name: "slot0", scope: !583, file: !562, line: 831, type: !610, isLocal: true, isDefinition: true)
!610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !450)
!611 = !DIGlobalVariableExpression(var: !612, expr: !DIExpression())
!612 = distinct !DIGlobalVariable(scope: null, file: !562, line: 321, type: !164, isLocal: true, isDefinition: true)
!613 = !DIGlobalVariableExpression(var: !614, expr: !DIExpression())
!614 = distinct !DIGlobalVariable(scope: null, file: !562, line: 357, type: !164, isLocal: true, isDefinition: true)
!615 = !DIGlobalVariableExpression(var: !616, expr: !DIExpression())
!616 = distinct !DIGlobalVariable(scope: null, file: !562, line: 358, type: !164, isLocal: true, isDefinition: true)
!617 = !DIGlobalVariableExpression(var: !618, expr: !DIExpression())
!618 = distinct !DIGlobalVariable(scope: null, file: !562, line: 199, type: !19, isLocal: true, isDefinition: true)
!619 = !DIGlobalVariableExpression(var: !620, expr: !DIExpression())
!620 = distinct !DIGlobalVariable(name: "quote", scope: !621, file: !562, line: 228, type: !640, isLocal: true, isDefinition: true)
!621 = distinct !DISubprogram(name: "gettext_quote", scope: !562, file: !562, line: 197, type: !622, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !583, retainedNodes: !624)
!622 = !DISubroutineType(types: !623)
!623 = !{!136, !136, !91}
!624 = !{!625, !626, !627, !628, !629}
!625 = !DILocalVariable(name: "msgid", arg: 1, scope: !621, file: !562, line: 197, type: !136)
!626 = !DILocalVariable(name: "s", arg: 2, scope: !621, file: !562, line: 197, type: !91)
!627 = !DILocalVariable(name: "translation", scope: !621, file: !562, line: 199, type: !136)
!628 = !DILocalVariable(name: "w", scope: !621, file: !562, line: 229, type: !542)
!629 = !DILocalVariable(name: "mbs", scope: !621, file: !562, line: 230, type: !630)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !548, line: 6, baseType: !631)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !550, line: 21, baseType: !632)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !550, line: 13, size: 64, elements: !633)
!633 = !{!634, !635}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !632, file: !550, line: 15, baseType: !87, size: 32)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !632, file: !550, line: 20, baseType: !636, size: 32, offset: 32)
!636 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !632, file: !550, line: 16, size: 32, elements: !637)
!637 = !{!638, !639}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !636, file: !550, line: 18, baseType: !78, size: 32)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !636, file: !550, line: 19, baseType: !273, size: 32)
!640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 64, elements: !641)
!641 = !{!166, !275}
!642 = !DIGlobalVariableExpression(var: !643, expr: !DIExpression())
!643 = distinct !DIGlobalVariable(name: "slotvec", scope: !583, file: !562, line: 834, type: !644, isLocal: true, isDefinition: true)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !562, line: 823, size: 128, elements: !646)
!646 = !{!647, !648}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !645, file: !562, line: 825, baseType: !133, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !645, file: !562, line: 826, baseType: !130, size: 64, offset: 64)
!649 = !DIGlobalVariableExpression(var: !650, expr: !DIExpression())
!650 = distinct !DIGlobalVariable(name: "nslots", scope: !583, file: !562, line: 832, type: !87, isLocal: true, isDefinition: true)
!651 = !DIGlobalVariableExpression(var: !652, expr: !DIExpression())
!652 = distinct !DIGlobalVariable(name: "slotvec0", scope: !583, file: !562, line: 833, type: !645, isLocal: true, isDefinition: true)
!653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !654, size: 704, elements: !383)
!654 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !136)
!655 = !DIGlobalVariableExpression(var: !656, expr: !DIExpression())
!656 = distinct !DIGlobalVariable(scope: null, file: !657, line: 67, type: !367, isLocal: true, isDefinition: true)
!657 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!658 = !DIGlobalVariableExpression(var: !659, expr: !DIExpression())
!659 = distinct !DIGlobalVariable(scope: null, file: !657, line: 69, type: !19, isLocal: true, isDefinition: true)
!660 = !DIGlobalVariableExpression(var: !661, expr: !DIExpression())
!661 = distinct !DIGlobalVariable(scope: null, file: !657, line: 83, type: !19, isLocal: true, isDefinition: true)
!662 = !DIGlobalVariableExpression(var: !663, expr: !DIExpression())
!663 = distinct !DIGlobalVariable(scope: null, file: !657, line: 83, type: !273, isLocal: true, isDefinition: true)
!664 = !DIGlobalVariableExpression(var: !665, expr: !DIExpression())
!665 = distinct !DIGlobalVariable(scope: null, file: !657, line: 85, type: !164, isLocal: true, isDefinition: true)
!666 = !DIGlobalVariableExpression(var: !667, expr: !DIExpression())
!667 = distinct !DIGlobalVariable(scope: null, file: !657, line: 88, type: !668, isLocal: true, isDefinition: true)
!668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !669)
!669 = !{!670}
!670 = !DISubrange(count: 171)
!671 = !DIGlobalVariableExpression(var: !672, expr: !DIExpression())
!672 = distinct !DIGlobalVariable(scope: null, file: !657, line: 88, type: !673, isLocal: true, isDefinition: true)
!673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !674)
!674 = !{!675}
!675 = !DISubrange(count: 34)
!676 = !DIGlobalVariableExpression(var: !677, expr: !DIExpression())
!677 = distinct !DIGlobalVariable(scope: null, file: !657, line: 105, type: !154, isLocal: true, isDefinition: true)
!678 = !DIGlobalVariableExpression(var: !679, expr: !DIExpression())
!679 = distinct !DIGlobalVariable(scope: null, file: !657, line: 109, type: !406, isLocal: true, isDefinition: true)
!680 = !DIGlobalVariableExpression(var: !681, expr: !DIExpression())
!681 = distinct !DIGlobalVariable(scope: null, file: !657, line: 113, type: !682, isLocal: true, isDefinition: true)
!682 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !683)
!683 = !{!684}
!684 = !DISubrange(count: 28)
!685 = !DIGlobalVariableExpression(var: !686, expr: !DIExpression())
!686 = distinct !DIGlobalVariable(scope: null, file: !657, line: 120, type: !389, isLocal: true, isDefinition: true)
!687 = !DIGlobalVariableExpression(var: !688, expr: !DIExpression())
!688 = distinct !DIGlobalVariable(scope: null, file: !657, line: 127, type: !689, isLocal: true, isDefinition: true)
!689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !690)
!690 = !{!691}
!691 = !DISubrange(count: 36)
!692 = !DIGlobalVariableExpression(var: !693, expr: !DIExpression())
!693 = distinct !DIGlobalVariable(scope: null, file: !657, line: 134, type: !318, isLocal: true, isDefinition: true)
!694 = !DIGlobalVariableExpression(var: !695, expr: !DIExpression())
!695 = distinct !DIGlobalVariable(scope: null, file: !657, line: 142, type: !696, isLocal: true, isDefinition: true)
!696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !697)
!697 = !{!698}
!698 = !DISubrange(count: 44)
!699 = !DIGlobalVariableExpression(var: !700, expr: !DIExpression())
!700 = distinct !DIGlobalVariable(scope: null, file: !657, line: 150, type: !701, isLocal: true, isDefinition: true)
!701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !702)
!702 = !{!703}
!703 = !DISubrange(count: 48)
!704 = !DIGlobalVariableExpression(var: !705, expr: !DIExpression())
!705 = distinct !DIGlobalVariable(scope: null, file: !657, line: 159, type: !706, isLocal: true, isDefinition: true)
!706 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !707)
!707 = !{!708}
!708 = !DISubrange(count: 52)
!709 = !DIGlobalVariableExpression(var: !710, expr: !DIExpression())
!710 = distinct !DIGlobalVariable(scope: null, file: !657, line: 170, type: !711, isLocal: true, isDefinition: true)
!711 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !712)
!712 = !{!713}
!713 = !DISubrange(count: 60)
!714 = !DIGlobalVariableExpression(var: !715, expr: !DIExpression())
!715 = distinct !DIGlobalVariable(scope: null, file: !657, line: 248, type: !258, isLocal: true, isDefinition: true)
!716 = !DIGlobalVariableExpression(var: !717, expr: !DIExpression())
!717 = distinct !DIGlobalVariable(scope: null, file: !657, line: 248, type: !343, isLocal: true, isDefinition: true)
!718 = !DIGlobalVariableExpression(var: !719, expr: !DIExpression())
!719 = distinct !DIGlobalVariable(scope: null, file: !657, line: 254, type: !258, isLocal: true, isDefinition: true)
!720 = !DIGlobalVariableExpression(var: !721, expr: !DIExpression())
!721 = distinct !DIGlobalVariable(scope: null, file: !657, line: 254, type: !149, isLocal: true, isDefinition: true)
!722 = !DIGlobalVariableExpression(var: !723, expr: !DIExpression())
!723 = distinct !DIGlobalVariable(scope: null, file: !657, line: 254, type: !318, isLocal: true, isDefinition: true)
!724 = !DIGlobalVariableExpression(var: !725, expr: !DIExpression())
!725 = distinct !DIGlobalVariable(scope: null, file: !657, line: 259, type: !3, isLocal: true, isDefinition: true)
!726 = !DIGlobalVariableExpression(var: !727, expr: !DIExpression())
!727 = distinct !DIGlobalVariable(scope: null, file: !657, line: 259, type: !728, isLocal: true, isDefinition: true)
!728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !729)
!729 = !{!730}
!730 = !DISubrange(count: 29)
!731 = !DIGlobalVariableExpression(var: !732, expr: !DIExpression())
!732 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !733, file: !734, line: 26, type: !736, isLocal: false, isDefinition: true)
!733 = distinct !DICompileUnit(language: DW_LANG_C11, file: !734, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !735, splitDebugInlining: false, nameTableKind: None)
!734 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!735 = !{!731}
!736 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 376, elements: !737)
!737 = !{!738}
!738 = !DISubrange(count: 47)
!739 = !DIGlobalVariableExpression(var: !740, expr: !DIExpression())
!740 = distinct !DIGlobalVariable(name: "exit_failure", scope: !741, file: !742, line: 24, type: !744, isLocal: false, isDefinition: true)
!741 = distinct !DICompileUnit(language: DW_LANG_C11, file: !742, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !743, splitDebugInlining: false, nameTableKind: None)
!742 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!743 = !{!739}
!744 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !87)
!745 = !DIGlobalVariableExpression(var: !746, expr: !DIExpression())
!746 = distinct !DIGlobalVariable(scope: null, file: !747, line: 34, type: !169, isLocal: true, isDefinition: true)
!747 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!748 = !DIGlobalVariableExpression(var: !749, expr: !DIExpression())
!749 = distinct !DIGlobalVariable(scope: null, file: !747, line: 34, type: !19, isLocal: true, isDefinition: true)
!750 = !DIGlobalVariableExpression(var: !751, expr: !DIExpression())
!751 = distinct !DIGlobalVariable(scope: null, file: !747, line: 34, type: !159, isLocal: true, isDefinition: true)
!752 = !DIGlobalVariableExpression(var: !753, expr: !DIExpression())
!753 = distinct !DIGlobalVariable(scope: null, file: !754, line: 108, type: !54, isLocal: true, isDefinition: true)
!754 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!755 = !DIGlobalVariableExpression(var: !756, expr: !DIExpression())
!756 = distinct !DIGlobalVariable(name: "internal_state", scope: !757, file: !754, line: 97, type: !760, isLocal: true, isDefinition: true)
!757 = distinct !DICompileUnit(language: DW_LANG_C11, file: !754, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !758, globals: !759, splitDebugInlining: false, nameTableKind: None)
!758 = !{!131, !133, !138}
!759 = !{!752, !755}
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !548, line: 6, baseType: !761)
!761 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !550, line: 21, baseType: !762)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !550, line: 13, size: 64, elements: !763)
!763 = !{!764, !765}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !762, file: !550, line: 15, baseType: !87, size: 32)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !762, file: !550, line: 20, baseType: !766, size: 32, offset: 32)
!766 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !762, file: !550, line: 16, size: 32, elements: !767)
!767 = !{!768, !769}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !766, file: !550, line: 18, baseType: !78, size: 32)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !766, file: !550, line: 19, baseType: !273, size: 32)
!770 = !DIGlobalVariableExpression(var: !771, expr: !DIExpression())
!771 = distinct !DIGlobalVariable(scope: null, file: !772, line: 35, type: !278, isLocal: true, isDefinition: true)
!772 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!773 = distinct !DICompileUnit(language: DW_LANG_C11, file: !774, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !775, splitDebugInlining: false, nameTableKind: None)
!774 = !DIFile(filename: "lib/fadvise.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4f050f925b6846c8ec117ac893b2a17f")
!775 = !{!105}
!776 = distinct !DICompileUnit(language: DW_LANG_C11, file: !777, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!777 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!778 = distinct !DICompileUnit(language: DW_LANG_C11, file: !779, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !780, splitDebugInlining: false, nameTableKind: None)
!779 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!780 = !{!131}
!781 = distinct !DICompileUnit(language: DW_LANG_C11, file: !782, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!782 = !DIFile(filename: "lib/fpurge.c", directory: "/src", checksumkind: CSK_MD5, checksum: "33a2be68f69b8676b8fe51ee5bacb54f")
!783 = distinct !DICompileUnit(language: DW_LANG_C11, file: !784, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !780, splitDebugInlining: false, nameTableKind: None)
!784 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!785 = distinct !DICompileUnit(language: DW_LANG_C11, file: !786, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!786 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!787 = distinct !DICompileUnit(language: DW_LANG_C11, file: !657, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !788, retainedTypes: !780, globals: !792, splitDebugInlining: false, nameTableKind: None)
!788 = !{!789}
!789 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !657, line: 40, baseType: !78, size: 32, elements: !790)
!790 = !{!791}
!791 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!792 = !{!655, !658, !660, !662, !664, !666, !671, !676, !678, !680, !685, !687, !692, !694, !699, !704, !709, !714, !716, !718, !720, !722, !724, !726}
!793 = distinct !DICompileUnit(language: DW_LANG_C11, file: !794, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !795, retainedTypes: !823, splitDebugInlining: false, nameTableKind: None)
!794 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!795 = !{!796, !808}
!796 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !797, file: !794, line: 188, baseType: !78, size: 32, elements: !806)
!797 = distinct !DISubprogram(name: "x2nrealloc", scope: !794, file: !794, line: 176, type: !798, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !793, retainedNodes: !801)
!798 = !DISubroutineType(types: !799)
!799 = !{!131, !131, !800, !133}
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!801 = !{!802, !803, !804, !805}
!802 = !DILocalVariable(name: "p", arg: 1, scope: !797, file: !794, line: 176, type: !131)
!803 = !DILocalVariable(name: "pn", arg: 2, scope: !797, file: !794, line: 176, type: !800)
!804 = !DILocalVariable(name: "s", arg: 3, scope: !797, file: !794, line: 176, type: !133)
!805 = !DILocalVariable(name: "n", scope: !797, file: !794, line: 178, type: !133)
!806 = !{!807}
!807 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!808 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !809, file: !794, line: 228, baseType: !78, size: 32, elements: !806)
!809 = distinct !DISubprogram(name: "xpalloc", scope: !794, file: !794, line: 223, type: !810, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !793, retainedNodes: !813)
!810 = !DISubroutineType(types: !811)
!811 = !{!131, !131, !812, !438, !440, !438}
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!813 = !{!814, !815, !816, !817, !818, !819, !820, !821, !822}
!814 = !DILocalVariable(name: "pa", arg: 1, scope: !809, file: !794, line: 223, type: !131)
!815 = !DILocalVariable(name: "pn", arg: 2, scope: !809, file: !794, line: 223, type: !812)
!816 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !809, file: !794, line: 223, type: !438)
!817 = !DILocalVariable(name: "n_max", arg: 4, scope: !809, file: !794, line: 223, type: !440)
!818 = !DILocalVariable(name: "s", arg: 5, scope: !809, file: !794, line: 223, type: !438)
!819 = !DILocalVariable(name: "n0", scope: !809, file: !794, line: 230, type: !438)
!820 = !DILocalVariable(name: "n", scope: !809, file: !794, line: 237, type: !438)
!821 = !DILocalVariable(name: "nbytes", scope: !809, file: !794, line: 248, type: !438)
!822 = !DILocalVariable(name: "adjusted_nbytes", scope: !809, file: !794, line: 252, type: !438)
!823 = !{!130, !131, !196, !237, !135}
!824 = distinct !DICompileUnit(language: DW_LANG_C11, file: !747, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !825, splitDebugInlining: false, nameTableKind: None)
!825 = !{!745, !748, !750}
!826 = distinct !DICompileUnit(language: DW_LANG_C11, file: !827, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !828, retainedTypes: !829, splitDebugInlining: false, nameTableKind: None)
!827 = !DIFile(filename: "lib/xstrtoimax.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d613cb456542443dde992ed5c05f2acb")
!828 = !{!76}
!829 = !{!196, !237, !135, !830}
!830 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !831, line: 101, baseType: !832)
!831 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!832 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !236, line: 72, baseType: !237)
!833 = distinct !DICompileUnit(language: DW_LANG_C11, file: !834, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !780, splitDebugInlining: false, nameTableKind: None)
!834 = !DIFile(filename: "lib/fopen.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e2a73b267ffe85e9e2028d0b4278a6b8")
!835 = distinct !DICompileUnit(language: DW_LANG_C11, file: !836, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!836 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!837 = distinct !DICompileUnit(language: DW_LANG_C11, file: !838, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !839, splitDebugInlining: false, nameTableKind: None)
!838 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!839 = !{!196, !135, !131}
!840 = distinct !DICompileUnit(language: DW_LANG_C11, file: !772, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !841, splitDebugInlining: false, nameTableKind: None)
!841 = !{!842, !770}
!842 = !DIGlobalVariableExpression(var: !843, expr: !DIExpression())
!843 = distinct !DIGlobalVariable(scope: null, file: !772, line: 35, type: !164, isLocal: true, isDefinition: true)
!844 = distinct !DICompileUnit(language: DW_LANG_C11, file: !845, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!845 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!846 = distinct !DICompileUnit(language: DW_LANG_C11, file: !847, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !780, splitDebugInlining: false, nameTableKind: None)
!847 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!848 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!849 = !{i32 7, !"Dwarf Version", i32 5}
!850 = !{i32 2, !"Debug Info Version", i32 3}
!851 = !{i32 1, !"wchar_size", i32 4}
!852 = !{i32 8, !"PIC Level", i32 2}
!853 = !{i32 7, !"PIE Level", i32 2}
!854 = !{i32 7, !"uwtable", i32 2}
!855 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 97, type: !856, scopeLine: 98, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !858)
!856 = !DISubroutineType(types: !857)
!857 = !{null, !87}
!858 = !{!859}
!859 = !DILocalVariable(name: "status", arg: 1, scope: !855, file: !2, line: 97, type: !87)
!860 = !DILocation(line: 0, scope: !855)
!861 = !DILocation(line: 99, column: 14, scope: !862)
!862 = distinct !DILexicalBlock(scope: !855, file: !2, line: 99, column: 7)
!863 = !DILocation(line: 99, column: 7, scope: !855)
!864 = !DILocation(line: 100, column: 5, scope: !865)
!865 = distinct !DILexicalBlock(scope: !862, file: !2, line: 100, column: 5)
!866 = !{!867, !867, i64 0}
!867 = !{!"any pointer", !868, i64 0}
!868 = !{!"omnipotent char", !869, i64 0}
!869 = !{!"Simple C/C++ TBAA"}
!870 = !DILocation(line: 103, column: 7, scope: !871)
!871 = distinct !DILexicalBlock(scope: !862, file: !2, line: 102, column: 5)
!872 = !DILocation(line: 112, column: 7, scope: !871)
!873 = !DILocation(line: 729, column: 3, scope: !874, inlinedAt: !876)
!874 = distinct !DISubprogram(name: "emit_stdin_note", scope: !86, file: !86, line: 727, type: !517, scopeLine: 728, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !875)
!875 = !{}
!876 = distinct !DILocation(line: 117, column: 7, scope: !871)
!877 = !DILocation(line: 736, column: 3, scope: !878, inlinedAt: !879)
!878 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !86, file: !86, line: 734, type: !517, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !875)
!879 = distinct !DILocation(line: 118, column: 7, scope: !871)
!880 = !DILocation(line: 153, column: 7, scope: !871)
!881 = !DILocation(line: 157, column: 7, scope: !871)
!882 = !DILocation(line: 161, column: 7, scope: !871)
!883 = !DILocation(line: 174, column: 7, scope: !871)
!884 = !DILocation(line: 175, column: 7, scope: !871)
!885 = !DILocation(line: 184, column: 7, scope: !871)
!886 = !DILocalVariable(name: "program", arg: 1, scope: !887, file: !86, line: 836, type: !136)
!887 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !86, file: !86, line: 836, type: !888, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !890)
!888 = !DISubroutineType(types: !889)
!889 = !{null, !136}
!890 = !{!886, !891, !898, !899, !901, !902}
!891 = !DILocalVariable(name: "infomap", scope: !887, file: !86, line: 838, type: !892)
!892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !893, size: 896, elements: !20)
!893 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !894)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !887, file: !86, line: 838, size: 128, elements: !895)
!895 = !{!896, !897}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !894, file: !86, line: 838, baseType: !136, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !894, file: !86, line: 838, baseType: !136, size: 64, offset: 64)
!898 = !DILocalVariable(name: "node", scope: !887, file: !86, line: 848, type: !136)
!899 = !DILocalVariable(name: "map_prog", scope: !887, file: !86, line: 849, type: !900)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!901 = !DILocalVariable(name: "lc_messages", scope: !887, file: !86, line: 861, type: !136)
!902 = !DILocalVariable(name: "url_program", scope: !887, file: !86, line: 874, type: !136)
!903 = !DILocation(line: 0, scope: !887, inlinedAt: !904)
!904 = distinct !DILocation(line: 192, column: 7, scope: !871)
!905 = !DILocation(line: 857, column: 3, scope: !887, inlinedAt: !904)
!906 = !DILocation(line: 861, column: 29, scope: !887, inlinedAt: !904)
!907 = !DILocation(line: 862, column: 7, scope: !908, inlinedAt: !904)
!908 = distinct !DILexicalBlock(scope: !887, file: !86, line: 862, column: 7)
!909 = !DILocation(line: 862, column: 19, scope: !908, inlinedAt: !904)
!910 = !DILocation(line: 862, column: 22, scope: !908, inlinedAt: !904)
!911 = !DILocation(line: 862, column: 7, scope: !887, inlinedAt: !904)
!912 = !DILocation(line: 868, column: 7, scope: !913, inlinedAt: !904)
!913 = distinct !DILexicalBlock(scope: !908, file: !86, line: 863, column: 5)
!914 = !DILocation(line: 870, column: 5, scope: !913, inlinedAt: !904)
!915 = !DILocation(line: 875, column: 3, scope: !887, inlinedAt: !904)
!916 = !DILocation(line: 877, column: 3, scope: !887, inlinedAt: !904)
!917 = !DILocation(line: 195, column: 3, scope: !855)
!918 = !DISubprogram(name: "dcgettext", scope: !919, file: !919, line: 51, type: !920, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !875)
!919 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!920 = !DISubroutineType(types: !921)
!921 = !{!130, !136, !136, !87}
!922 = !DISubprogram(name: "__fprintf_chk", scope: !923, file: !923, line: 93, type: !924, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !875)
!923 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!924 = !DISubroutineType(types: !925)
!925 = !{!87, !926, !87, !437, null}
!926 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !209)
!927 = !DISubprogram(name: "__printf_chk", scope: !923, file: !923, line: 95, type: !928, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !875)
!928 = !DISubroutineType(types: !929)
!929 = !{!87, !87, !437, null}
!930 = !DISubprogram(name: "fputs_unlocked", scope: !931, file: !931, line: 691, type: !932, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !875)
!931 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!932 = !DISubroutineType(types: !933)
!933 = !{!87, !437, !926}
!934 = !DILocation(line: 0, scope: !186)
!935 = !DILocation(line: 581, column: 7, scope: !194)
!936 = !{!937, !937, i64 0}
!937 = !{!"int", !868, i64 0}
!938 = !DILocation(line: 581, column: 19, scope: !194)
!939 = !DILocation(line: 581, column: 7, scope: !186)
!940 = !DILocation(line: 585, column: 26, scope: !193)
!941 = !DILocation(line: 0, scope: !193)
!942 = !DILocation(line: 586, column: 23, scope: !193)
!943 = !DILocation(line: 586, column: 28, scope: !193)
!944 = !DILocation(line: 586, column: 32, scope: !193)
!945 = !{!868, !868, i64 0}
!946 = !DILocation(line: 586, column: 38, scope: !193)
!947 = !DILocalVariable(name: "__s1", arg: 1, scope: !948, file: !949, line: 1359, type: !136)
!948 = distinct !DISubprogram(name: "streq", scope: !949, file: !949, line: 1359, type: !950, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !952)
!949 = !DIFile(filename: "./lib/string.h", directory: "/src")
!950 = !DISubroutineType(types: !951)
!951 = !{!196, !136, !136}
!952 = !{!947, !953}
!953 = !DILocalVariable(name: "__s2", arg: 2, scope: !948, file: !949, line: 1359, type: !136)
!954 = !DILocation(line: 0, scope: !948, inlinedAt: !955)
!955 = distinct !DILocation(line: 586, column: 41, scope: !193)
!956 = !DILocation(line: 1361, column: 11, scope: !948, inlinedAt: !955)
!957 = !DILocation(line: 1361, column: 10, scope: !948, inlinedAt: !955)
!958 = !DILocation(line: 586, column: 19, scope: !193)
!959 = !DILocation(line: 587, column: 5, scope: !193)
!960 = !DILocation(line: 588, column: 7, scope: !961)
!961 = distinct !DILexicalBlock(scope: !186, file: !86, line: 588, column: 7)
!962 = !DILocation(line: 588, column: 7, scope: !186)
!963 = !DILocation(line: 590, column: 7, scope: !964)
!964 = distinct !DILexicalBlock(scope: !961, file: !86, line: 589, column: 5)
!965 = !DILocation(line: 591, column: 7, scope: !964)
!966 = !DILocation(line: 595, column: 37, scope: !186)
!967 = !DILocation(line: 595, column: 35, scope: !186)
!968 = !DILocation(line: 596, column: 29, scope: !186)
!969 = !DILocation(line: 597, column: 8, scope: !202)
!970 = !DILocation(line: 597, column: 7, scope: !186)
!971 = !DILocation(line: 604, column: 24, scope: !201)
!972 = !DILocation(line: 604, column: 12, scope: !202)
!973 = !DILocation(line: 0, scope: !200)
!974 = !DILocation(line: 610, column: 16, scope: !200)
!975 = !DILocation(line: 610, column: 7, scope: !200)
!976 = !DILocation(line: 611, column: 21, scope: !200)
!977 = !{!978, !978, i64 0}
!978 = !{!"short", !868, i64 0}
!979 = !DILocation(line: 611, column: 19, scope: !200)
!980 = !DILocation(line: 611, column: 16, scope: !200)
!981 = !DILocation(line: 610, column: 30, scope: !200)
!982 = distinct !{!982, !975, !976, !983}
!983 = !{!"llvm.loop.mustprogress"}
!984 = !DILocation(line: 612, column: 18, scope: !985)
!985 = distinct !DILexicalBlock(scope: !200, file: !86, line: 612, column: 11)
!986 = !DILocation(line: 612, column: 11, scope: !200)
!987 = !DILocation(line: 618, column: 5, scope: !200)
!988 = !DILocation(line: 620, column: 23, scope: !186)
!989 = !DILocation(line: 625, column: 39, scope: !186)
!990 = !DILocation(line: 626, column: 3, scope: !186)
!991 = !DILocation(line: 626, column: 10, scope: !186)
!992 = !DILocation(line: 626, column: 21, scope: !186)
!993 = !DILocation(line: 628, column: 44, scope: !994)
!994 = distinct !DILexicalBlock(scope: !995, file: !86, line: 628, column: 11)
!995 = distinct !DILexicalBlock(scope: !186, file: !86, line: 627, column: 5)
!996 = !DILocation(line: 628, column: 32, scope: !994)
!997 = !DILocation(line: 628, column: 49, scope: !994)
!998 = !DILocation(line: 628, column: 11, scope: !995)
!999 = !DILocation(line: 630, column: 11, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !995, file: !86, line: 630, column: 11)
!1001 = !DILocation(line: 630, column: 11, scope: !995)
!1002 = !DILocation(line: 632, column: 26, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !1004, file: !86, line: 632, column: 15)
!1004 = distinct !DILexicalBlock(scope: !1000, file: !86, line: 631, column: 9)
!1005 = !DILocation(line: 632, column: 34, scope: !1003)
!1006 = !DILocation(line: 632, column: 37, scope: !1003)
!1007 = !DILocation(line: 632, column: 15, scope: !1004)
!1008 = !DILocation(line: 636, column: 16, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !1004, file: !86, line: 636, column: 15)
!1010 = !DILocation(line: 636, column: 29, scope: !1009)
!1011 = !DILocation(line: 640, column: 16, scope: !995)
!1012 = distinct !{!1012, !990, !1013, !983}
!1013 = !DILocation(line: 641, column: 5, scope: !186)
!1014 = !DILocation(line: 644, column: 3, scope: !186)
!1015 = !DILocation(line: 0, scope: !948, inlinedAt: !1016)
!1016 = distinct !DILocation(line: 648, column: 31, scope: !186)
!1017 = !DILocation(line: 0, scope: !948, inlinedAt: !1018)
!1018 = distinct !DILocation(line: 649, column: 31, scope: !186)
!1019 = !DILocation(line: 0, scope: !948, inlinedAt: !1020)
!1020 = distinct !DILocation(line: 650, column: 31, scope: !186)
!1021 = !DILocation(line: 0, scope: !948, inlinedAt: !1022)
!1022 = distinct !DILocation(line: 651, column: 31, scope: !186)
!1023 = !DILocation(line: 0, scope: !948, inlinedAt: !1024)
!1024 = distinct !DILocation(line: 652, column: 31, scope: !186)
!1025 = !DILocation(line: 0, scope: !948, inlinedAt: !1026)
!1026 = distinct !DILocation(line: 653, column: 31, scope: !186)
!1027 = !DILocation(line: 0, scope: !948, inlinedAt: !1028)
!1028 = distinct !DILocation(line: 654, column: 31, scope: !186)
!1029 = !DILocation(line: 0, scope: !948, inlinedAt: !1030)
!1030 = distinct !DILocation(line: 655, column: 31, scope: !186)
!1031 = !DILocation(line: 0, scope: !948, inlinedAt: !1032)
!1032 = distinct !DILocation(line: 656, column: 31, scope: !186)
!1033 = !DILocation(line: 0, scope: !948, inlinedAt: !1034)
!1034 = distinct !DILocation(line: 657, column: 31, scope: !186)
!1035 = !DILocation(line: 663, column: 7, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !186, file: !86, line: 663, column: 7)
!1037 = !DILocation(line: 664, column: 7, scope: !1036)
!1038 = !DILocation(line: 664, column: 10, scope: !1036)
!1039 = !DILocation(line: 663, column: 7, scope: !186)
!1040 = !DILocation(line: 669, column: 7, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1036, file: !86, line: 665, column: 5)
!1042 = !DILocation(line: 671, column: 5, scope: !1041)
!1043 = !DILocation(line: 676, column: 7, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1036, file: !86, line: 673, column: 5)
!1045 = !DILocation(line: 679, column: 3, scope: !186)
!1046 = !DILocation(line: 683, column: 3, scope: !186)
!1047 = !DILocation(line: 686, column: 3, scope: !186)
!1048 = !DILocation(line: 688, column: 3, scope: !186)
!1049 = !DILocation(line: 691, column: 3, scope: !186)
!1050 = !DILocation(line: 695, column: 3, scope: !186)
!1051 = !DILocation(line: 696, column: 1, scope: !186)
!1052 = !DISubprogram(name: "setlocale", scope: !1053, file: !1053, line: 122, type: !1054, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !875)
!1053 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1054 = !DISubroutineType(types: !1055)
!1055 = !{!130, !87, !136}
!1056 = !DISubprogram(name: "strncmp", scope: !1057, file: !1057, line: 159, type: !1058, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !875)
!1057 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1058 = !DISubroutineType(types: !1059)
!1059 = !{!87, !136, !136, !133}
!1060 = !DISubprogram(name: "exit", scope: !1061, file: !1061, line: 624, type: !856, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !875)
!1061 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1062 = !DISubprogram(name: "getenv", scope: !1061, file: !1061, line: 641, type: !1063, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !875)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!130, !136}
!1065 = !DISubprogram(name: "strcmp", scope: !1057, file: !1057, line: 156, type: !1066, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !875)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!87, !136, !136}
!1068 = !DISubprogram(name: "strspn", scope: !1057, file: !1057, line: 297, type: !1069, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !875)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{!135, !136, !136}
!1071 = !DISubprogram(name: "strchr", scope: !1057, file: !1057, line: 246, type: !1072, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !875)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!130, !136, !87}
!1074 = !DISubprogram(name: "__ctype_b_loc", scope: !115, file: !115, line: 79, type: !1075, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !875)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{!1077}
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !132)
!1080 = !DISubprogram(name: "strcspn", scope: !1057, file: !1057, line: 293, type: !1069, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !875)
!1081 = !DISubprogram(name: "fwrite_unlocked", scope: !931, file: !931, line: 704, type: !1082, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !875)
!1082 = !DISubroutineType(types: !1083)
!1083 = !{!133, !1084, !133, !133, !926}
!1084 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1085)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1087 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 1630, type: !1088, scopeLine: 1631, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1091)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{!87, !87, !1090}
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!1091 = !{!1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1103}
!1092 = !DILocalVariable(name: "argc", arg: 1, scope: !1087, file: !2, line: 1630, type: !87)
!1093 = !DILocalVariable(name: "argv", arg: 2, scope: !1087, file: !2, line: 1630, type: !1090)
!1094 = !DILocalVariable(name: "opt", scope: !1087, file: !2, line: 1632, type: !87)
!1095 = !DILocalVariable(name: "input_fh", scope: !1087, file: !2, line: 1633, type: !209)
!1096 = !DILocalVariable(name: "infile", scope: !1087, file: !2, line: 1634, type: !136)
!1097 = !DILocalVariable(name: "decode", scope: !1087, file: !2, line: 1637, type: !196)
!1098 = !DILocalVariable(name: "ignore_garbage", scope: !1087, file: !2, line: 1639, type: !196)
!1099 = !DILocalVariable(name: "wrap_column", scope: !1087, file: !2, line: 1641, type: !438)
!1100 = !DILocalVariable(name: "w", scope: !1101, file: !2, line: 1664, type: !830)
!1101 = distinct !DILexicalBlock(scope: !1102, file: !2, line: 1663, column: 9)
!1102 = distinct !DILexicalBlock(scope: !1087, file: !2, line: 1657, column: 7)
!1103 = !DILocalVariable(name: "s_err", scope: !1101, file: !2, line: 1665, type: !1104)
!1104 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !77, line: 43, baseType: !76)
!1105 = !DILocation(line: 0, scope: !1087)
!1106 = !DILocation(line: 1648, column: 21, scope: !1087)
!1107 = !DILocation(line: 1648, column: 3, scope: !1087)
!1108 = !DILocation(line: 1649, column: 3, scope: !1087)
!1109 = !DILocation(line: 1650, column: 3, scope: !1087)
!1110 = !DILocation(line: 1651, column: 3, scope: !1087)
!1111 = !DILocation(line: 1653, column: 3, scope: !1087)
!1112 = !DILocation(line: 1655, column: 3, scope: !1087)
!1113 = !DILocation(line: 1641, column: 9, scope: !1087)
!1114 = !DILocation(line: 1655, column: 17, scope: !1087)
!1115 = distinct !{!1115, !1112, !1116, !983}
!1116 = !DILocation(line: 1698, column: 7, scope: !1087)
!1117 = !DILocation(line: 1664, column: 11, scope: !1101)
!1118 = !DILocation(line: 1665, column: 44, scope: !1101)
!1119 = !DILocation(line: 0, scope: !1101)
!1120 = !DILocation(line: 1665, column: 32, scope: !1101)
!1121 = !DILocation(line: 1666, column: 32, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1101, file: !2, line: 1666, column: 15)
!1123 = !DILocation(line: 1666, column: 40, scope: !1122)
!1124 = !DILocation(line: 1667, column: 13, scope: !1122)
!1125 = !DILocation(line: 1669, column: 31, scope: !1101)
!1126 = !DILocation(line: 1669, column: 51, scope: !1101)
!1127 = !DILocation(line: 1670, column: 9, scope: !1102)
!1128 = !DILocation(line: 1671, column: 9, scope: !1102)
!1129 = !DILocation(line: 1675, column: 9, scope: !1102)
!1130 = !DILocation(line: 1691, column: 7, scope: !1102)
!1131 = !DILocation(line: 1693, column: 7, scope: !1102)
!1132 = !DILocation(line: 1696, column: 9, scope: !1102)
!1133 = !DILocation(line: 1805, column: 14, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1087, file: !2, line: 1805, column: 7)
!1135 = !DILocation(line: 1805, column: 12, scope: !1134)
!1136 = !DILocation(line: 1805, column: 21, scope: !1134)
!1137 = !DILocation(line: 1805, column: 7, scope: !1087)
!1138 = !DILocation(line: 1807, column: 7, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1134, file: !2, line: 1806, column: 5)
!1140 = !DILocation(line: 1808, column: 7, scope: !1139)
!1141 = !DILocation(line: 1811, column: 14, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1087, file: !2, line: 1811, column: 7)
!1143 = !DILocation(line: 1811, column: 7, scope: !1087)
!1144 = !DILocation(line: 1812, column: 14, scope: !1142)
!1145 = !DILocation(line: 1812, column: 5, scope: !1142)
!1146 = !DILocation(line: 0, scope: !1142)
!1147 = !DILocation(line: 0, scope: !948, inlinedAt: !1148)
!1148 = distinct !DILocation(line: 1816, column: 7, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1087, file: !2, line: 1816, column: 7)
!1150 = !DILocation(line: 1361, column: 11, scope: !948, inlinedAt: !1148)
!1151 = !DILocation(line: 1361, column: 10, scope: !948, inlinedAt: !1148)
!1152 = !DILocation(line: 1816, column: 7, scope: !1087)
!1153 = !DILocation(line: 1819, column: 18, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1149, file: !2, line: 1817, column: 5)
!1155 = !DILocation(line: 1820, column: 5, scope: !1154)
!1156 = !DILocation(line: 1823, column: 18, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1149, file: !2, line: 1822, column: 5)
!1158 = !DILocation(line: 1824, column: 20, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1157, file: !2, line: 1824, column: 11)
!1160 = !DILocation(line: 1824, column: 11, scope: !1157)
!1161 = !DILocation(line: 1825, column: 9, scope: !1159)
!1162 = !DILocation(line: 0, scope: !1149)
!1163 = !DILocation(line: 1828, column: 3, scope: !1087)
!1164 = !DILocation(line: 0, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1087, file: !2, line: 1830, column: 7)
!1166 = !DILocation(line: 1830, column: 7, scope: !1087)
!1167 = !DILocation(line: 1831, column: 42, scope: !1165)
!1168 = !DILocation(line: 1831, column: 5, scope: !1165)
!1169 = !DILocation(line: 1833, column: 5, scope: !1165)
!1170 = !DISubprogram(name: "bindtextdomain", scope: !919, file: !919, line: 86, type: !1171, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !875)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{!130, !136, !136}
!1173 = !DISubprogram(name: "textdomain", scope: !919, file: !919, line: 82, type: !1063, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !875)
!1174 = !DISubprogram(name: "atexit", scope: !1061, file: !1061, line: 602, type: !1175, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !875)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{!87, !516}
!1177 = !DISubprogram(name: "getopt_long", scope: !412, file: !412, line: 66, type: !1178, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !875)
!1178 = !DISubroutineType(types: !1179)
!1179 = !{!87, !87, !1180, !136, !1182, !417}
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!1183 = !DISubprogram(name: "__errno_location", scope: !1184, file: !1184, line: 37, type: !1185, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !875)
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
!1233 = !{!1234, !937, i64 0}
!1234 = !{!"base32_decode_context", !937, i64 0, !868, i64 4}
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
!1273 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1274 = !DISubroutineType(types: !1275)
!1275 = !{!131, !131, !1085, !133}
!1276 = !{!1271, !1277, !1278}
!1277 = !DILocalVariable(name: "__src", arg: 2, scope: !1272, file: !1273, line: 34, type: !1085)
!1278 = !DILocalVariable(name: "__len", arg: 3, scope: !1272, file: !1273, line: 34, type: !133)
!1279 = !DILocation(line: 0, scope: !1272, inlinedAt: !1280)
!1280 = distinct !DILocation(line: 1594, column: 21, scope: !1242)
!1281 = !DILocation(line: 36, column: 10, scope: !1272, inlinedAt: !1280)
!1282 = !DILocation(line: 1588, column: 35, scope: !1244)
!1283 = !DILocation(line: 1588, column: 39, scope: !1244)
!1284 = !DILocation(line: 1588, column: 15, scope: !1209)
!1285 = distinct !{!1285, !1284, !1286, !983}
!1286 = !DILocation(line: 1595, column: 17, scope: !1209)
!1287 = !DILocation(line: 1583, column: 17, scope: !1207)
!1288 = !DILocalVariable(name: "__stream", arg: 1, scope: !1289, file: !1290, line: 135, type: !209)
!1289 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1290, file: !1290, line: 135, type: !1291, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1293)
!1290 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1291 = !DISubroutineType(types: !1292)
!1292 = !{!87, !209}
!1293 = !{!1288}
!1294 = !DILocation(line: 0, scope: !1289, inlinedAt: !1295)
!1295 = distinct !DILocation(line: 1600, column: 15, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1207, file: !2, line: 1600, column: 15)
!1297 = !DILocation(line: 137, column: 10, scope: !1289, inlinedAt: !1295)
!1298 = !{!1299, !937, i64 0}
!1299 = !{!"_IO_FILE", !937, i64 0, !867, i64 8, !867, i64 16, !867, i64 24, !867, i64 32, !867, i64 40, !867, i64 48, !867, i64 56, !867, i64 64, !867, i64 72, !867, i64 80, !867, i64 88, !867, i64 96, !867, i64 104, !937, i64 112, !937, i64 116, !1300, i64 120, !978, i64 128, !868, i64 130, !868, i64 131, !867, i64 136, !1300, i64 144, !867, i64 152, !867, i64 160, !867, i64 168, !867, i64 176, !1300, i64 184, !937, i64 192, !868, i64 196}
!1300 = !{!"long", !868, i64 0}
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
!1312 = distinct !{!1312, !1235, !1313, !983}
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
!1331 = !{!196, !1228, !1332, !812}
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!1333 = !{!1328, !1334, !1335, !1336, !1337, !1338, !1339, !1340}
!1334 = !DILocalVariable(name: "out", arg: 2, scope: !1329, file: !2, line: 415, type: !1332)
!1335 = !DILocalVariable(name: "outlen", arg: 3, scope: !1329, file: !2, line: 415, type: !812)
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
!1399 = distinct !DISubprogram(name: "write_error", scope: !86, file: !86, line: 946, type: !517, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1400)
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
!1450 = distinct !{!1450, !1436, !1451, !983}
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
!1462 = !{null, !136, !438, !438, !812, !209}
!1463 = !{!1459, !1464, !1465, !1466, !1467, !1468, !1473, !1474, !1475, !1477, !1480, !1485, !1486}
!1464 = !DILocalVariable(name: "len", arg: 2, scope: !1460, file: !2, line: 1443, type: !438)
!1465 = !DILocalVariable(name: "wrap_column", arg: 3, scope: !1460, file: !2, line: 1444, type: !438)
!1466 = !DILocalVariable(name: "current_column", arg: 4, scope: !1460, file: !2, line: 1444, type: !812)
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
!1517 = !{!1299, !867, i64 40}
!1518 = !{!1299, !867, i64 48}
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
!1546 = distinct !{!1546, !1545, !1547, !983}
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
!1557 = distinct !{!1557, !1434, !1558, !983}
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
!1583 = !DISubprogram(name: "fflush_unlocked", scope: !931, file: !931, line: 239, type: !1291, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !875)
!1584 = !DISubprogram(name: "clearerr_unlocked", scope: !931, file: !931, line: 794, type: !1585, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !875)
!1585 = !DISubroutineType(types: !1586)
!1586 = !{null, !209}
!1587 = !DISubprogram(name: "__overflow", scope: !931, file: !931, line: 886, type: !1588, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !875)
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
!1601 = !DILocation(line: 0, scope: !948, inlinedAt: !1602)
!1602 = distinct !DILocation(line: 1478, column: 11, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1604, file: !2, line: 1478, column: 11)
!1604 = distinct !DILexicalBlock(scope: !1598, file: !2, line: 1477, column: 5)
!1605 = !DILocation(line: 1361, column: 11, scope: !948, inlinedAt: !1602)
!1606 = !DILocation(line: 1361, column: 10, scope: !948, inlinedAt: !1602)
!1607 = !DILocation(line: 0, scope: !1603)
!1608 = !DILocation(line: 1478, column: 11, scope: !1604)
!1609 = !DILocation(line: 1479, column: 9, scope: !1603)
!1610 = !DILocation(line: 1481, column: 9, scope: !1603)
!1611 = !DILocation(line: 1484, column: 3, scope: !1590)
!1612 = !DISubprogram(name: "__assert_fail", scope: !1613, file: !1613, line: 69, type: !1614, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !875)
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
!1738 = distinct !{!1738, !1652, !1739, !983}
!1739 = !DILocation(line: 124, column: 5, scope: !434)
!1740 = !DILocation(line: 126, column: 7, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !434, file: !429, line: 126, column: 7)
!1742 = !DILocation(line: 126, column: 7, scope: !434)
!1743 = !DILocation(line: 127, column: 10, scope: !1741)
!1744 = !DILocation(line: 127, column: 5, scope: !1741)
!1745 = !DILocation(line: 128, column: 1, scope: !434)
!1746 = distinct !DISubprogram(name: "base32_encode_alloc", scope: !429, file: !429, line: 140, type: !1747, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !1749)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{!438, !136, !438, !1090}
!1749 = !{!1750, !1751, !1752, !1753, !1754}
!1750 = !DILocalVariable(name: "in", arg: 1, scope: !1746, file: !429, line: 140, type: !136)
!1751 = !DILocalVariable(name: "inlen", arg: 2, scope: !1746, file: !429, line: 140, type: !438)
!1752 = !DILocalVariable(name: "out", arg: 3, scope: !1746, file: !429, line: 140, type: !1090)
!1753 = !DILocalVariable(name: "in_over_5", scope: !1746, file: !429, line: 145, type: !438)
!1754 = !DILocalVariable(name: "outlen", scope: !1746, file: !429, line: 145, type: !438)
!1755 = !DILocation(line: 0, scope: !1746)
!1756 = !DILocation(line: 145, column: 27, scope: !1746)
!1757 = !DILocation(line: 145, column: 40, scope: !1746)
!1758 = !DILocation(line: 145, column: 44, scope: !1746)
!1759 = !DILocation(line: 145, column: 31, scope: !1746)
!1760 = !DILocation(line: 146, column: 7, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1746, file: !429, line: 146, column: 7)
!1762 = !DILocation(line: 146, column: 39, scope: !1761)
!1763 = !DILocation(line: 148, column: 12, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1761, file: !429, line: 147, column: 5)
!1765 = !DILocation(line: 149, column: 7, scope: !1764)
!1766 = !DILocation(line: 151, column: 9, scope: !1746)
!1767 = !DILocalVariable(name: "s", arg: 1, scope: !1768, file: !1769, line: 55, type: !438)
!1768 = distinct !DISubprogram(name: "imalloc", scope: !1769, file: !1769, line: 55, type: !1770, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !1772)
!1769 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!1770 = !DISubroutineType(types: !1771)
!1771 = !{!131, !438}
!1772 = !{!1767}
!1773 = !DILocation(line: 0, scope: !1768, inlinedAt: !1774)
!1774 = distinct !DILocation(line: 153, column: 10, scope: !1746)
!1775 = !DILocation(line: 57, column: 26, scope: !1768, inlinedAt: !1774)
!1776 = !DILocation(line: 153, column: 8, scope: !1746)
!1777 = !DILocation(line: 154, column: 8, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1746, file: !429, line: 154, column: 7)
!1779 = !DILocation(line: 154, column: 7, scope: !1746)
!1780 = !DILocation(line: 157, column: 3, scope: !1746)
!1781 = !DILocation(line: 159, column: 3, scope: !1746)
!1782 = !DILocation(line: 160, column: 1, scope: !1746)
!1783 = !DISubprogram(name: "malloc", scope: !1061, file: !1061, line: 540, type: !1784, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !875)
!1784 = !DISubroutineType(types: !1785)
!1785 = !{!131, !133}
!1786 = distinct !DISubprogram(name: "base32_decode_ctx", scope: !429, file: !429, line: 464, type: !1787, scopeLine: 467, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !1789)
!1787 = !DISubroutineType(types: !1788)
!1788 = !{!196, !1639, !437, !438, !441, !812}
!1789 = !{!1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1801, !1805}
!1790 = !DILocalVariable(name: "ctx", arg: 1, scope: !1786, file: !429, line: 464, type: !1639)
!1791 = !DILocalVariable(name: "in", arg: 2, scope: !1786, file: !429, line: 465, type: !437)
!1792 = !DILocalVariable(name: "inlen", arg: 3, scope: !1786, file: !429, line: 465, type: !438)
!1793 = !DILocalVariable(name: "out", arg: 4, scope: !1786, file: !429, line: 466, type: !441)
!1794 = !DILocalVariable(name: "outlen", arg: 5, scope: !1786, file: !429, line: 466, type: !812)
!1795 = !DILocalVariable(name: "ignore_newlines", scope: !1786, file: !429, line: 468, type: !196)
!1796 = !DILocalVariable(name: "flush_ctx", scope: !1786, file: !429, line: 469, type: !196)
!1797 = !DILocalVariable(name: "ctx_i", scope: !1786, file: !429, line: 470, type: !78)
!1798 = !DILocalVariable(name: "outleft", scope: !1786, file: !429, line: 478, type: !438)
!1799 = !DILocalVariable(name: "outleft_save", scope: !1800, file: !429, line: 482, type: !438)
!1800 = distinct !DILexicalBlock(scope: !1786, file: !429, line: 481, column: 5)
!1801 = !DILocalVariable(name: "in_end", scope: !1802, file: !429, line: 515, type: !136)
!1802 = distinct !DILexicalBlock(scope: !1803, file: !429, line: 514, column: 11)
!1803 = distinct !DILexicalBlock(scope: !1804, file: !429, line: 509, column: 9)
!1804 = distinct !DILexicalBlock(scope: !1800, file: !429, line: 503, column: 11)
!1805 = !DILocalVariable(name: "non_nl", scope: !1802, file: !429, line: 517, type: !136)
!1806 = !DILocation(line: 0, scope: !1786)
!1807 = !DILocation(line: 468, column: 30, scope: !1786)
!1808 = !DILocation(line: 472, column: 7, scope: !1786)
!1809 = !DILocation(line: 474, column: 20, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1811, file: !429, line: 473, column: 5)
!1811 = distinct !DILexicalBlock(scope: !1786, file: !429, line: 472, column: 7)
!1812 = !DILocation(line: 475, column: 25, scope: !1810)
!1813 = !DILocation(line: 476, column: 5, scope: !1810)
!1814 = !DILocation(line: 478, column: 3, scope: !1786)
!1815 = !DILocation(line: 478, column: 19, scope: !1786)
!1816 = !DILocation(line: 478, column: 9, scope: !1786)
!1817 = !DILocation(line: 480, column: 3, scope: !1786)
!1818 = !DILocation(line: 482, column: 28, scope: !1800)
!1819 = !DILocation(line: 0, scope: !1800)
!1820 = !DILocation(line: 483, column: 22, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1800, file: !429, line: 483, column: 11)
!1822 = !DILocation(line: 490, column: 20, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1824, file: !429, line: 490, column: 19)
!1824 = distinct !DILexicalBlock(scope: !1825, file: !429, line: 486, column: 13)
!1825 = distinct !DILexicalBlock(scope: !1821, file: !429, line: 484, column: 9)
!1826 = !DILocation(line: 490, column: 19, scope: !1824)
!1827 = !DILocation(line: 493, column: 18, scope: !1824)
!1828 = !DILocation(line: 494, column: 21, scope: !1824)
!1829 = !DILocation(line: 489, column: 30, scope: !1824)
!1830 = distinct !{!1830, !1831, !1832}
!1831 = !DILocation(line: 485, column: 11, scope: !1825)
!1832 = !DILocation(line: 495, column: 13, scope: !1825)
!1833 = !DILocation(line: 498, column: 17, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1800, file: !429, line: 498, column: 11)
!1835 = !DILocation(line: 498, column: 22, scope: !1834)
!1836 = !DILocation(line: 503, column: 17, scope: !1804)
!1837 = !DILocation(line: 503, column: 20, scope: !1804)
!1838 = !DILocation(line: 503, column: 24, scope: !1804)
!1839 = !DILocation(line: 503, column: 32, scope: !1804)
!1840 = !DILocation(line: 505, column: 11, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1804, file: !429, line: 504, column: 9)
!1842 = !DILocation(line: 506, column: 11, scope: !1841)
!1843 = !DILocation(line: 507, column: 9, scope: !1841)
!1844 = !DILocation(line: 511, column: 33, scope: !1803)
!1845 = !DILocation(line: 511, column: 31, scope: !1803)
!1846 = !DILocation(line: 511, column: 15, scope: !1803)
!1847 = !DILocation(line: 512, column: 19, scope: !1803)
!1848 = !DILocation(line: 515, column: 37, scope: !1802)
!1849 = !DILocation(line: 0, scope: !1802)
!1850 = !DILocation(line: 518, column: 17, scope: !1802)
!1851 = !DILocalVariable(name: "ctx", arg: 1, scope: !1852, file: !429, line: 281, type: !1639)
!1852 = distinct !DISubprogram(name: "get_8", scope: !429, file: !429, line: 281, type: !1853, scopeLine: 284, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !1856)
!1853 = !DISubroutineType(types: !1854)
!1854 = !{!130, !1639, !1855, !437, !812}
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!1856 = !{!1851, !1857, !1858, !1859, !1860, !1863, !1865}
!1857 = !DILocalVariable(name: "in", arg: 2, scope: !1852, file: !429, line: 282, type: !1855)
!1858 = !DILocalVariable(name: "in_end", arg: 3, scope: !1852, file: !429, line: 282, type: !437)
!1859 = !DILocalVariable(name: "n_non_newline", arg: 4, scope: !1852, file: !429, line: 283, type: !812)
!1860 = !DILocalVariable(name: "t", scope: !1861, file: !429, line: 290, type: !136)
!1861 = distinct !DILexicalBlock(scope: !1862, file: !429, line: 289, column: 5)
!1862 = distinct !DILexicalBlock(scope: !1852, file: !429, line: 288, column: 7)
!1863 = !DILocalVariable(name: "p", scope: !1864, file: !429, line: 302, type: !136)
!1864 = distinct !DILexicalBlock(scope: !1852, file: !429, line: 300, column: 3)
!1865 = !DILocalVariable(name: "c", scope: !1866, file: !429, line: 305, type: !4)
!1866 = distinct !DILexicalBlock(scope: !1864, file: !429, line: 304, column: 7)
!1867 = !DILocation(line: 0, scope: !1852, inlinedAt: !1868)
!1868 = distinct !DILocation(line: 519, column: 24, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1802, file: !429, line: 518, column: 17)
!1870 = !DILocation(line: 285, column: 12, scope: !1871, inlinedAt: !1868)
!1871 = distinct !DILexicalBlock(scope: !1852, file: !429, line: 285, column: 7)
!1872 = !{!1873}
!1873 = distinct !{!1873, !1874, !"get_8: argument 0"}
!1874 = distinct !{!1874, !"get_8"}
!1875 = !DILocation(line: 285, column: 7, scope: !1852, inlinedAt: !1868)
!1876 = !DILocation(line: 286, column: 12, scope: !1871, inlinedAt: !1868)
!1877 = !DILocation(line: 288, column: 7, scope: !1852, inlinedAt: !1868)
!1878 = !DILocation(line: 0, scope: !1861, inlinedAt: !1868)
!1879 = !DILocation(line: 291, column: 13, scope: !1880, inlinedAt: !1868)
!1880 = distinct !DILexicalBlock(scope: !1861, file: !429, line: 291, column: 11)
!1881 = !DILocation(line: 291, column: 29, scope: !1880, inlinedAt: !1868)
!1882 = !DILocation(line: 291, column: 32, scope: !1880, inlinedAt: !1868)
!1883 = !DILocation(line: 291, column: 52, scope: !1880, inlinedAt: !1868)
!1884 = !DILocation(line: 291, column: 11, scope: !1861, inlinedAt: !1868)
!1885 = !DILocation(line: 294, column: 15, scope: !1886, inlinedAt: !1868)
!1886 = distinct !DILexicalBlock(scope: !1880, file: !429, line: 292, column: 9)
!1887 = !DILocation(line: 526, column: 42, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1802, file: !429, line: 526, column: 17)
!1889 = !DILocation(line: 0, scope: !1864, inlinedAt: !1868)
!1890 = !DILocation(line: 303, column: 14, scope: !1864, inlinedAt: !1868)
!1891 = !DILocation(line: 303, column: 5, scope: !1864, inlinedAt: !1868)
!1892 = !DILocation(line: 306, column: 13, scope: !1866, inlinedAt: !1868)
!1893 = !DILocation(line: 305, column: 20, scope: !1866, inlinedAt: !1868)
!1894 = !DILocation(line: 305, column: 18, scope: !1866, inlinedAt: !1868)
!1895 = !DILocation(line: 0, scope: !1866, inlinedAt: !1868)
!1896 = !DILocation(line: 306, column: 15, scope: !1897, inlinedAt: !1868)
!1897 = distinct !DILexicalBlock(scope: !1866, file: !429, line: 306, column: 13)
!1898 = !DILocation(line: 308, column: 28, scope: !1899, inlinedAt: !1868)
!1899 = distinct !DILexicalBlock(scope: !1897, file: !429, line: 307, column: 11)
!1900 = !DILocation(line: 308, column: 13, scope: !1899, inlinedAt: !1868)
!1901 = !DILocation(line: 308, column: 32, scope: !1899, inlinedAt: !1868)
!1902 = !DILocation(line: 309, column: 22, scope: !1903, inlinedAt: !1868)
!1903 = distinct !DILexicalBlock(scope: !1899, file: !429, line: 309, column: 17)
!1904 = !DILocation(line: 309, column: 24, scope: !1903, inlinedAt: !1868)
!1905 = !DILocation(line: 309, column: 17, scope: !1899, inlinedAt: !1868)
!1906 = !DILocation(line: 315, column: 27, scope: !1864, inlinedAt: !1868)
!1907 = !DILocation(line: 315, column: 22, scope: !1864, inlinedAt: !1868)
!1908 = !DILocation(line: 0, scope: !1869)
!1909 = !DILocation(line: 526, column: 23, scope: !1888)
!1910 = !DILocation(line: 526, column: 28, scope: !1888)
!1911 = !DILocation(line: 526, column: 38, scope: !1888)
!1912 = !DILocation(line: 531, column: 18, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1802, file: !429, line: 531, column: 17)
!1914 = !DILocation(line: 531, column: 17, scope: !1802)
!1915 = !DILocation(line: 534, column: 28, scope: !1802)
!1916 = !DILocation(line: 539, column: 14, scope: !1786)
!1917 = !DILocation(line: 539, column: 11, scope: !1786)
!1918 = !DILocation(line: 542, column: 1, scope: !1786)
!1919 = !DILocation(line: 541, column: 3, scope: !1786)
!1920 = distinct !DISubprogram(name: "decode_8", scope: !429, file: !429, line: 335, type: !1921, scopeLine: 337, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !1923)
!1921 = !DISubroutineType(types: !1922)
!1922 = !{!196, !437, !438, !1332, !812}
!1923 = !{!1924, !1925, !1926, !1927, !1928}
!1924 = !DILocalVariable(name: "in", arg: 1, scope: !1920, file: !429, line: 335, type: !437)
!1925 = !DILocalVariable(name: "inlen", arg: 2, scope: !1920, file: !429, line: 335, type: !438)
!1926 = !DILocalVariable(name: "outp", arg: 3, scope: !1920, file: !429, line: 336, type: !1332)
!1927 = !DILocalVariable(name: "outleft", arg: 4, scope: !1920, file: !429, line: 336, type: !812)
!1928 = !DILocalVariable(name: "out", scope: !1920, file: !429, line: 344, type: !130)
!1929 = !DILocation(line: 0, scope: !1920)
!1930 = !DILocation(line: 338, column: 13, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1920, file: !429, line: 338, column: 7)
!1932 = !DILocation(line: 338, column: 7, scope: !1920)
!1933 = !DILocation(line: 341, column: 18, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1920, file: !429, line: 341, column: 7)
!1935 = !DILocation(line: 0, scope: !1624, inlinedAt: !1936)
!1936 = distinct !DILocation(line: 341, column: 8, scope: !1934)
!1937 = !DILocation(line: 0, scope: !1616, inlinedAt: !1938)
!1938 = distinct !DILocation(line: 64, column: 10, scope: !1624, inlinedAt: !1936)
!1939 = !DILocation(line: 58, column: 10, scope: !1616, inlinedAt: !1938)
!1940 = !DILocation(line: 58, column: 44, scope: !1616, inlinedAt: !1938)
!1941 = !DILocation(line: 58, column: 41, scope: !1616, inlinedAt: !1938)
!1942 = !DILocation(line: 341, column: 25, scope: !1934)
!1943 = !DILocation(line: 341, column: 39, scope: !1934)
!1944 = !DILocation(line: 0, scope: !1624, inlinedAt: !1945)
!1945 = distinct !DILocation(line: 341, column: 29, scope: !1934)
!1946 = !DILocation(line: 0, scope: !1616, inlinedAt: !1947)
!1947 = distinct !DILocation(line: 64, column: 10, scope: !1624, inlinedAt: !1945)
!1948 = !DILocation(line: 58, column: 10, scope: !1616, inlinedAt: !1947)
!1949 = !DILocation(line: 58, column: 44, scope: !1616, inlinedAt: !1947)
!1950 = !DILocation(line: 58, column: 41, scope: !1616, inlinedAt: !1947)
!1951 = !DILocation(line: 341, column: 7, scope: !1920)
!1952 = !DILocation(line: 344, column: 15, scope: !1920)
!1953 = !DILocation(line: 346, column: 7, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1920, file: !429, line: 346, column: 7)
!1955 = !DILocation(line: 346, column: 7, scope: !1920)
!1956 = !DILocation(line: 348, column: 50, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1954, file: !429, line: 347, column: 5)
!1958 = !DILocation(line: 349, column: 52, scope: !1957)
!1959 = !DILocation(line: 349, column: 17, scope: !1957)
!1960 = !DILocation(line: 348, column: 11, scope: !1957)
!1961 = !DILocation(line: 348, column: 14, scope: !1957)
!1962 = !DILocation(line: 350, column: 7, scope: !1957)
!1963 = !DILocation(line: 351, column: 5, scope: !1957)
!1964 = !DILocation(line: 353, column: 7, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1920, file: !429, line: 353, column: 7)
!1966 = !DILocation(line: 353, column: 13, scope: !1965)
!1967 = !DILocation(line: 353, column: 7, scope: !1920)
!1968 = !DILocation(line: 355, column: 11, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1970, file: !429, line: 355, column: 11)
!1970 = distinct !DILexicalBlock(scope: !1965, file: !429, line: 354, column: 5)
!1971 = !DILocation(line: 355, column: 17, scope: !1969)
!1972 = !DILocation(line: 355, column: 24, scope: !1969)
!1973 = !DILocation(line: 355, column: 27, scope: !1969)
!1974 = !DILocation(line: 355, column: 33, scope: !1969)
!1975 = !DILocation(line: 355, column: 40, scope: !1969)
!1976 = !DILocation(line: 355, column: 43, scope: !1969)
!1977 = !DILocation(line: 355, column: 49, scope: !1969)
!1978 = !DILocation(line: 356, column: 11, scope: !1969)
!1979 = !DILocation(line: 356, column: 14, scope: !1969)
!1980 = !DILocation(line: 356, column: 20, scope: !1969)
!1981 = !DILocation(line: 356, column: 27, scope: !1969)
!1982 = !DILocation(line: 356, column: 30, scope: !1969)
!1983 = !DILocation(line: 356, column: 36, scope: !1969)
!1984 = !DILocation(line: 355, column: 11, scope: !1970)
!1985 = !DILocation(line: 0, scope: !1624, inlinedAt: !1986)
!1986 = distinct !DILocation(line: 365, column: 12, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1988, file: !429, line: 365, column: 11)
!1988 = distinct !DILexicalBlock(scope: !1965, file: !429, line: 364, column: 5)
!1989 = !DILocation(line: 0, scope: !1616, inlinedAt: !1990)
!1990 = distinct !DILocation(line: 64, column: 10, scope: !1624, inlinedAt: !1986)
!1991 = !DILocation(line: 58, column: 10, scope: !1616, inlinedAt: !1990)
!1992 = !DILocation(line: 58, column: 44, scope: !1616, inlinedAt: !1990)
!1993 = !DILocation(line: 58, column: 41, scope: !1616, inlinedAt: !1990)
!1994 = !DILocation(line: 365, column: 29, scope: !1987)
!1995 = !DILocation(line: 365, column: 43, scope: !1987)
!1996 = !DILocation(line: 0, scope: !1624, inlinedAt: !1997)
!1997 = distinct !DILocation(line: 365, column: 33, scope: !1987)
!1998 = !DILocation(line: 0, scope: !1616, inlinedAt: !1999)
!1999 = distinct !DILocation(line: 64, column: 10, scope: !1624, inlinedAt: !1997)
!2000 = !DILocation(line: 58, column: 10, scope: !1616, inlinedAt: !1999)
!2001 = !DILocation(line: 58, column: 44, scope: !1616, inlinedAt: !1999)
!2002 = !DILocation(line: 58, column: 41, scope: !1616, inlinedAt: !1999)
!2003 = !DILocation(line: 365, column: 11, scope: !1988)
!2004 = !DILocation(line: 368, column: 11, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !1988, file: !429, line: 368, column: 11)
!2006 = !DILocation(line: 368, column: 11, scope: !1988)
!2007 = !DILocation(line: 370, column: 54, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !2005, file: !429, line: 369, column: 9)
!2009 = !DILocation(line: 371, column: 56, scope: !2008)
!2010 = !DILocation(line: 371, column: 21, scope: !2008)
!2011 = !DILocation(line: 372, column: 56, scope: !2008)
!2012 = !DILocation(line: 372, column: 21, scope: !2008)
!2013 = !DILocation(line: 370, column: 15, scope: !2008)
!2014 = !DILocation(line: 370, column: 18, scope: !2008)
!2015 = !DILocation(line: 373, column: 11, scope: !2008)
!2016 = !DILocation(line: 374, column: 9, scope: !2008)
!2017 = !DILocation(line: 376, column: 11, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !1988, file: !429, line: 376, column: 11)
!2019 = !DILocation(line: 376, column: 17, scope: !2018)
!2020 = !DILocation(line: 376, column: 11, scope: !1988)
!2021 = !DILocation(line: 378, column: 15, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !2023, file: !429, line: 378, column: 15)
!2023 = distinct !DILexicalBlock(scope: !2018, file: !429, line: 377, column: 9)
!2024 = !DILocation(line: 378, column: 21, scope: !2022)
!2025 = !DILocation(line: 378, column: 28, scope: !2022)
!2026 = !DILocation(line: 378, column: 31, scope: !2022)
!2027 = !DILocation(line: 378, column: 37, scope: !2022)
!2028 = !DILocation(line: 378, column: 44, scope: !2022)
!2029 = !DILocation(line: 378, column: 47, scope: !2022)
!2030 = !DILocation(line: 378, column: 53, scope: !2022)
!2031 = !DILocation(line: 378, column: 15, scope: !2023)
!2032 = !DILocation(line: 0, scope: !1624, inlinedAt: !2033)
!2033 = distinct !DILocation(line: 387, column: 16, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !2035, file: !429, line: 387, column: 15)
!2035 = distinct !DILexicalBlock(scope: !2018, file: !429, line: 386, column: 9)
!2036 = !DILocation(line: 0, scope: !1616, inlinedAt: !2037)
!2037 = distinct !DILocation(line: 64, column: 10, scope: !1624, inlinedAt: !2033)
!2038 = !DILocation(line: 58, column: 10, scope: !1616, inlinedAt: !2037)
!2039 = !DILocation(line: 58, column: 44, scope: !1616, inlinedAt: !2037)
!2040 = !DILocation(line: 58, column: 41, scope: !1616, inlinedAt: !2037)
!2041 = !DILocation(line: 387, column: 15, scope: !2035)
!2042 = !DILocation(line: 390, column: 15, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2035, file: !429, line: 390, column: 15)
!2044 = !DILocation(line: 390, column: 15, scope: !2035)
!2045 = !DILocation(line: 392, column: 58, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2043, file: !429, line: 391, column: 13)
!2047 = !DILocation(line: 393, column: 60, scope: !2046)
!2048 = !DILocation(line: 393, column: 25, scope: !2046)
!2049 = !DILocation(line: 392, column: 19, scope: !2046)
!2050 = !DILocation(line: 392, column: 22, scope: !2046)
!2051 = !DILocation(line: 394, column: 15, scope: !2046)
!2052 = !DILocation(line: 395, column: 13, scope: !2046)
!2053 = !DILocation(line: 0, scope: !1988)
!2054 = !DILocation(line: 397, column: 15, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2035, file: !429, line: 397, column: 15)
!2056 = !DILocation(line: 397, column: 21, scope: !2055)
!2057 = !DILocation(line: 397, column: 15, scope: !2035)
!2058 = !DILocation(line: 399, column: 19, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2060, file: !429, line: 399, column: 19)
!2060 = distinct !DILexicalBlock(scope: !2055, file: !429, line: 398, column: 13)
!2061 = !DILocation(line: 399, column: 25, scope: !2059)
!2062 = !DILocation(line: 399, column: 32, scope: !2059)
!2063 = !DILocation(line: 399, column: 35, scope: !2059)
!2064 = !DILocation(line: 399, column: 41, scope: !2059)
!2065 = !DILocation(line: 399, column: 19, scope: !2060)
!2066 = !DILocation(line: 0, scope: !1624, inlinedAt: !2067)
!2067 = distinct !DILocation(line: 408, column: 20, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2069, file: !429, line: 408, column: 19)
!2069 = distinct !DILexicalBlock(scope: !2055, file: !429, line: 407, column: 13)
!2070 = !DILocation(line: 0, scope: !1616, inlinedAt: !2071)
!2071 = distinct !DILocation(line: 64, column: 10, scope: !1624, inlinedAt: !2067)
!2072 = !DILocation(line: 58, column: 10, scope: !1616, inlinedAt: !2071)
!2073 = !DILocation(line: 58, column: 44, scope: !1616, inlinedAt: !2071)
!2074 = !DILocation(line: 58, column: 41, scope: !1616, inlinedAt: !2071)
!2075 = !DILocation(line: 408, column: 37, scope: !2068)
!2076 = !DILocation(line: 408, column: 51, scope: !2068)
!2077 = !DILocation(line: 0, scope: !1624, inlinedAt: !2078)
!2078 = distinct !DILocation(line: 408, column: 41, scope: !2068)
!2079 = !DILocation(line: 0, scope: !1616, inlinedAt: !2080)
!2080 = distinct !DILocation(line: 64, column: 10, scope: !1624, inlinedAt: !2078)
!2081 = !DILocation(line: 58, column: 10, scope: !1616, inlinedAt: !2080)
!2082 = !DILocation(line: 58, column: 44, scope: !1616, inlinedAt: !2080)
!2083 = !DILocation(line: 58, column: 41, scope: !1616, inlinedAt: !2080)
!2084 = !DILocation(line: 408, column: 19, scope: !2069)
!2085 = !DILocation(line: 411, column: 19, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !2069, file: !429, line: 411, column: 19)
!2087 = !DILocation(line: 411, column: 19, scope: !2069)
!2088 = !DILocation(line: 413, column: 62, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !2086, file: !429, line: 412, column: 17)
!2090 = !DILocation(line: 414, column: 64, scope: !2089)
!2091 = !DILocation(line: 414, column: 29, scope: !2089)
!2092 = !DILocation(line: 415, column: 64, scope: !2089)
!2093 = !DILocation(line: 415, column: 29, scope: !2089)
!2094 = !DILocation(line: 413, column: 23, scope: !2089)
!2095 = !DILocation(line: 413, column: 26, scope: !2089)
!2096 = !DILocation(line: 416, column: 19, scope: !2089)
!2097 = !DILocation(line: 417, column: 17, scope: !2089)
!2098 = !DILocation(line: 0, scope: !2035)
!2099 = !DILocation(line: 419, column: 19, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2069, file: !429, line: 419, column: 19)
!2101 = !DILocation(line: 419, column: 25, scope: !2100)
!2102 = !DILocation(line: 419, column: 19, scope: !2069)
!2103 = !DILocation(line: 0, scope: !1624, inlinedAt: !2104)
!2104 = distinct !DILocation(line: 421, column: 24, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2106, file: !429, line: 421, column: 23)
!2106 = distinct !DILexicalBlock(scope: !2100, file: !429, line: 420, column: 17)
!2107 = !DILocation(line: 0, scope: !1616, inlinedAt: !2108)
!2108 = distinct !DILocation(line: 64, column: 10, scope: !1624, inlinedAt: !2104)
!2109 = !DILocation(line: 58, column: 10, scope: !1616, inlinedAt: !2108)
!2110 = !DILocation(line: 58, column: 44, scope: !1616, inlinedAt: !2108)
!2111 = !DILocation(line: 58, column: 41, scope: !1616, inlinedAt: !2108)
!2112 = !DILocation(line: 421, column: 23, scope: !2106)
!2113 = !DILocation(line: 424, column: 23, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2106, file: !429, line: 424, column: 23)
!2115 = !DILocation(line: 424, column: 23, scope: !2106)
!2116 = !DILocation(line: 426, column: 66, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2114, file: !429, line: 425, column: 21)
!2118 = !DILocation(line: 427, column: 33, scope: !2117)
!2119 = !DILocation(line: 426, column: 27, scope: !2117)
!2120 = !DILocation(line: 426, column: 30, scope: !2117)
!2121 = !DILocation(line: 428, column: 23, scope: !2117)
!2122 = !DILocation(line: 429, column: 21, scope: !2117)
!2123 = !DILocation(line: 434, column: 55, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !2125, file: !429, line: 434, column: 23)
!2125 = distinct !DILexicalBlock(scope: !2100, file: !429, line: 432, column: 17)
!2126 = !DILocation(line: 434, column: 23, scope: !2125)
!2127 = !DILocation(line: 442, column: 3, scope: !1920)
!2128 = !DILocation(line: 443, column: 1, scope: !1920)
!2129 = !DISubprogram(name: "memchr", scope: !1057, file: !1057, line: 107, type: !2130, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !875)
!2130 = !DISubroutineType(types: !2131)
!2131 = !{!131, !1085, !87, !133}
!2132 = distinct !DISubprogram(name: "base32_decode_alloc_ctx", scope: !429, file: !429, line: 556, type: !2133, scopeLine: 559, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !2135)
!2133 = !DISubroutineType(types: !2134)
!2134 = !{!196, !1639, !136, !438, !1090, !812}
!2135 = !{!2136, !2137, !2138, !2139, !2140, !2141}
!2136 = !DILocalVariable(name: "ctx", arg: 1, scope: !2132, file: !429, line: 556, type: !1639)
!2137 = !DILocalVariable(name: "in", arg: 2, scope: !2132, file: !429, line: 557, type: !136)
!2138 = !DILocalVariable(name: "inlen", arg: 3, scope: !2132, file: !429, line: 557, type: !438)
!2139 = !DILocalVariable(name: "out", arg: 4, scope: !2132, file: !429, line: 557, type: !1090)
!2140 = !DILocalVariable(name: "outlen", arg: 5, scope: !2132, file: !429, line: 558, type: !812)
!2141 = !DILocalVariable(name: "needlen", scope: !2132, file: !429, line: 565, type: !438)
!2142 = !DILocation(line: 0, scope: !2132)
!2143 = !DILocation(line: 565, column: 3, scope: !2132)
!2144 = !DILocation(line: 565, column: 31, scope: !2132)
!2145 = !DILocation(line: 565, column: 21, scope: !2132)
!2146 = !DILocation(line: 565, column: 9, scope: !2132)
!2147 = !DILocation(line: 0, scope: !1768, inlinedAt: !2148)
!2148 = distinct !DILocation(line: 567, column: 10, scope: !2132)
!2149 = !DILocation(line: 57, column: 26, scope: !1768, inlinedAt: !2148)
!2150 = !DILocation(line: 567, column: 8, scope: !2132)
!2151 = !DILocation(line: 568, column: 8, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2132, file: !429, line: 568, column: 7)
!2153 = !DILocation(line: 568, column: 7, scope: !2132)
!2154 = !DILocation(line: 571, column: 8, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2132, file: !429, line: 571, column: 7)
!2156 = !DILocation(line: 571, column: 7, scope: !2132)
!2157 = !DILocation(line: 573, column: 13, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2155, file: !429, line: 572, column: 5)
!2159 = !DILocation(line: 573, column: 7, scope: !2158)
!2160 = !DILocation(line: 574, column: 12, scope: !2158)
!2161 = !DILocation(line: 575, column: 7, scope: !2158)
!2162 = !DILocation(line: 578, column: 7, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2132, file: !429, line: 578, column: 7)
!2164 = !DILocation(line: 578, column: 7, scope: !2132)
!2165 = !DILocation(line: 579, column: 15, scope: !2163)
!2166 = !DILocation(line: 579, column: 13, scope: !2163)
!2167 = !DILocation(line: 579, column: 5, scope: !2163)
!2168 = !DILocation(line: 582, column: 1, scope: !2132)
!2169 = !DISubprogram(name: "free", scope: !949, file: !949, line: 752, type: !2170, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !875)
!2170 = !DISubroutineType(types: !2171)
!2171 = !{null, !131}
!2172 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !455, file: !455, line: 50, type: !888, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !2173)
!2173 = !{!2174}
!2174 = !DILocalVariable(name: "file", arg: 1, scope: !2172, file: !455, line: 50, type: !136)
!2175 = !DILocation(line: 0, scope: !2172)
!2176 = !DILocation(line: 52, column: 13, scope: !2172)
!2177 = !DILocation(line: 53, column: 1, scope: !2172)
!2178 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !455, file: !455, line: 87, type: !2179, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !2181)
!2179 = !DISubroutineType(types: !2180)
!2180 = !{null, !196}
!2181 = !{!2182}
!2182 = !DILocalVariable(name: "ignore", arg: 1, scope: !2178, file: !455, line: 87, type: !196)
!2183 = !DILocation(line: 0, scope: !2178)
!2184 = !DILocation(line: 89, column: 16, scope: !2178)
!2185 = !{!2186, !2186, i64 0}
!2186 = !{!"_Bool", !868, i64 0}
!2187 = !DILocation(line: 90, column: 1, scope: !2178)
!2188 = distinct !DISubprogram(name: "close_stdout", scope: !455, file: !455, line: 116, type: !517, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !2189)
!2189 = !{!2190}
!2190 = !DILocalVariable(name: "write_error", scope: !2191, file: !455, line: 121, type: !136)
!2191 = distinct !DILexicalBlock(scope: !2192, file: !455, line: 120, column: 5)
!2192 = distinct !DILexicalBlock(scope: !2188, file: !455, line: 118, column: 7)
!2193 = !DILocation(line: 118, column: 21, scope: !2192)
!2194 = !DILocation(line: 118, column: 7, scope: !2192)
!2195 = !DILocation(line: 118, column: 29, scope: !2192)
!2196 = !DILocation(line: 119, column: 7, scope: !2192)
!2197 = !DILocation(line: 119, column: 12, scope: !2192)
!2198 = !{i8 0, i8 2}
!2199 = !DILocation(line: 119, column: 25, scope: !2192)
!2200 = !DILocation(line: 119, column: 28, scope: !2192)
!2201 = !DILocation(line: 119, column: 34, scope: !2192)
!2202 = !DILocation(line: 118, column: 7, scope: !2188)
!2203 = !DILocation(line: 121, column: 33, scope: !2191)
!2204 = !DILocation(line: 0, scope: !2191)
!2205 = !DILocation(line: 122, column: 11, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2191, file: !455, line: 122, column: 11)
!2207 = !DILocation(line: 0, scope: !2206)
!2208 = !DILocation(line: 122, column: 11, scope: !2191)
!2209 = !DILocation(line: 123, column: 9, scope: !2206)
!2210 = !DILocation(line: 126, column: 9, scope: !2206)
!2211 = !DILocation(line: 128, column: 14, scope: !2191)
!2212 = !DILocation(line: 128, column: 7, scope: !2191)
!2213 = !DILocation(line: 133, column: 42, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2188, file: !455, line: 133, column: 7)
!2215 = !DILocation(line: 133, column: 28, scope: !2214)
!2216 = !DILocation(line: 133, column: 50, scope: !2214)
!2217 = !DILocation(line: 133, column: 7, scope: !2188)
!2218 = !DILocation(line: 134, column: 12, scope: !2214)
!2219 = !DILocation(line: 134, column: 5, scope: !2214)
!2220 = !DILocation(line: 135, column: 1, scope: !2188)
!2221 = !DISubprogram(name: "_exit", scope: !2222, file: !2222, line: 624, type: !856, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !875)
!2222 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!2223 = distinct !DISubprogram(name: "verror", scope: !470, file: !470, line: 251, type: !2224, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !469, retainedNodes: !2226)
!2224 = !DISubroutineType(types: !2225)
!2225 = !{null, !87, !87, !136, !480}
!2226 = !{!2227, !2228, !2229, !2230}
!2227 = !DILocalVariable(name: "status", arg: 1, scope: !2223, file: !470, line: 251, type: !87)
!2228 = !DILocalVariable(name: "errnum", arg: 2, scope: !2223, file: !470, line: 251, type: !87)
!2229 = !DILocalVariable(name: "message", arg: 3, scope: !2223, file: !470, line: 251, type: !136)
!2230 = !DILocalVariable(name: "args", arg: 4, scope: !2223, file: !470, line: 251, type: !480)
!2231 = !DILocation(line: 0, scope: !2223)
!2232 = !DILocation(line: 261, column: 3, scope: !2223)
!2233 = !DILocation(line: 265, column: 7, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2223, file: !470, line: 265, column: 7)
!2235 = !DILocation(line: 265, column: 7, scope: !2223)
!2236 = !DILocation(line: 266, column: 5, scope: !2234)
!2237 = !DILocation(line: 272, column: 7, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2234, file: !470, line: 268, column: 5)
!2239 = !DILocation(line: 276, column: 3, scope: !2223)
!2240 = !DILocation(line: 282, column: 1, scope: !2223)
!2241 = distinct !DISubprogram(name: "flush_stdout", scope: !470, file: !470, line: 163, type: !517, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !469, retainedNodes: !2242)
!2242 = !{!2243}
!2243 = !DILocalVariable(name: "stdout_fd", scope: !2241, file: !470, line: 166, type: !87)
!2244 = !DILocation(line: 0, scope: !2241)
!2245 = !DILocalVariable(name: "fd", arg: 1, scope: !2246, file: !470, line: 145, type: !87)
!2246 = distinct !DISubprogram(name: "is_open", scope: !470, file: !470, line: 145, type: !1259, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !469, retainedNodes: !2247)
!2247 = !{!2245}
!2248 = !DILocation(line: 0, scope: !2246, inlinedAt: !2249)
!2249 = distinct !DILocation(line: 182, column: 25, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2241, file: !470, line: 182, column: 7)
!2251 = !DILocation(line: 157, column: 15, scope: !2246, inlinedAt: !2249)
!2252 = !DILocation(line: 157, column: 12, scope: !2246, inlinedAt: !2249)
!2253 = !DILocation(line: 182, column: 7, scope: !2241)
!2254 = !DILocation(line: 184, column: 5, scope: !2250)
!2255 = !DILocation(line: 185, column: 1, scope: !2241)
!2256 = distinct !DISubprogram(name: "error_tail", scope: !470, file: !470, line: 219, type: !2224, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !469, retainedNodes: !2257)
!2257 = !{!2258, !2259, !2260, !2261}
!2258 = !DILocalVariable(name: "status", arg: 1, scope: !2256, file: !470, line: 219, type: !87)
!2259 = !DILocalVariable(name: "errnum", arg: 2, scope: !2256, file: !470, line: 219, type: !87)
!2260 = !DILocalVariable(name: "message", arg: 3, scope: !2256, file: !470, line: 219, type: !136)
!2261 = !DILocalVariable(name: "args", arg: 4, scope: !2256, file: !470, line: 219, type: !480)
!2262 = !DILocation(line: 0, scope: !2256)
!2263 = !DILocation(line: 229, column: 13, scope: !2256)
!2264 = !DILocalVariable(name: "__stream", arg: 1, scope: !2265, file: !923, line: 132, type: !2268)
!2265 = distinct !DISubprogram(name: "vfprintf", scope: !923, file: !923, line: 132, type: !2266, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !469, retainedNodes: !2303)
!2266 = !DISubroutineType(types: !2267)
!2267 = !{!87, !2268, !437, !480}
!2268 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2269)
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!2270 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !211, line: 7, baseType: !2271)
!2271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !213, line: 49, size: 1728, elements: !2272)
!2272 = !{!2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2299, !2300, !2301, !2302}
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2271, file: !213, line: 51, baseType: !87, size: 32)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2271, file: !213, line: 54, baseType: !130, size: 64, offset: 64)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2271, file: !213, line: 55, baseType: !130, size: 64, offset: 128)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2271, file: !213, line: 56, baseType: !130, size: 64, offset: 192)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2271, file: !213, line: 57, baseType: !130, size: 64, offset: 256)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2271, file: !213, line: 58, baseType: !130, size: 64, offset: 320)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2271, file: !213, line: 59, baseType: !130, size: 64, offset: 384)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2271, file: !213, line: 60, baseType: !130, size: 64, offset: 448)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2271, file: !213, line: 61, baseType: !130, size: 64, offset: 512)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2271, file: !213, line: 64, baseType: !130, size: 64, offset: 576)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2271, file: !213, line: 65, baseType: !130, size: 64, offset: 640)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2271, file: !213, line: 66, baseType: !130, size: 64, offset: 704)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2271, file: !213, line: 68, baseType: !228, size: 64, offset: 768)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2271, file: !213, line: 70, baseType: !2287, size: 64, offset: 832)
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2271, size: 64)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2271, file: !213, line: 72, baseType: !87, size: 32, offset: 896)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2271, file: !213, line: 73, baseType: !87, size: 32, offset: 928)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2271, file: !213, line: 74, baseType: !235, size: 64, offset: 960)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2271, file: !213, line: 77, baseType: !132, size: 16, offset: 1024)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2271, file: !213, line: 78, baseType: !240, size: 8, offset: 1040)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2271, file: !213, line: 79, baseType: !54, size: 8, offset: 1048)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2271, file: !213, line: 81, baseType: !243, size: 64, offset: 1088)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2271, file: !213, line: 89, baseType: !246, size: 64, offset: 1152)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2271, file: !213, line: 91, baseType: !248, size: 64, offset: 1216)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2271, file: !213, line: 92, baseType: !251, size: 64, offset: 1280)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2271, file: !213, line: 93, baseType: !2287, size: 64, offset: 1344)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2271, file: !213, line: 94, baseType: !131, size: 64, offset: 1408)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2271, file: !213, line: 95, baseType: !133, size: 64, offset: 1472)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2271, file: !213, line: 96, baseType: !87, size: 32, offset: 1536)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2271, file: !213, line: 98, baseType: !258, size: 160, offset: 1568)
!2303 = !{!2264, !2304, !2305}
!2304 = !DILocalVariable(name: "__fmt", arg: 2, scope: !2265, file: !923, line: 133, type: !437)
!2305 = !DILocalVariable(name: "__ap", arg: 3, scope: !2265, file: !923, line: 133, type: !480)
!2306 = !DILocation(line: 0, scope: !2265, inlinedAt: !2307)
!2307 = distinct !DILocation(line: 229, column: 3, scope: !2256)
!2308 = !DILocation(line: 135, column: 10, scope: !2265, inlinedAt: !2307)
!2309 = !DILocation(line: 232, column: 3, scope: !2256)
!2310 = !DILocation(line: 233, column: 7, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2256, file: !470, line: 233, column: 7)
!2312 = !DILocation(line: 233, column: 7, scope: !2256)
!2313 = !DILocalVariable(name: "errnum", arg: 1, scope: !2314, file: !470, line: 188, type: !87)
!2314 = distinct !DISubprogram(name: "print_errno_message", scope: !470, file: !470, line: 188, type: !856, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !469, retainedNodes: !2315)
!2315 = !{!2313, !2316, !2317}
!2316 = !DILocalVariable(name: "s", scope: !2314, file: !470, line: 190, type: !136)
!2317 = !DILocalVariable(name: "errbuf", scope: !2314, file: !470, line: 193, type: !2318)
!2318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !2319)
!2319 = !{!2320}
!2320 = !DISubrange(count: 1024)
!2321 = !DILocation(line: 0, scope: !2314, inlinedAt: !2322)
!2322 = distinct !DILocation(line: 234, column: 5, scope: !2311)
!2323 = !DILocation(line: 193, column: 3, scope: !2314, inlinedAt: !2322)
!2324 = !DILocation(line: 193, column: 8, scope: !2314, inlinedAt: !2322)
!2325 = !DILocation(line: 195, column: 7, scope: !2314, inlinedAt: !2322)
!2326 = !DILocation(line: 207, column: 9, scope: !2327, inlinedAt: !2322)
!2327 = distinct !DILexicalBlock(scope: !2314, file: !470, line: 207, column: 7)
!2328 = !DILocation(line: 207, column: 7, scope: !2314, inlinedAt: !2322)
!2329 = !DILocation(line: 208, column: 9, scope: !2327, inlinedAt: !2322)
!2330 = !DILocation(line: 208, column: 5, scope: !2327, inlinedAt: !2322)
!2331 = !DILocation(line: 214, column: 3, scope: !2314, inlinedAt: !2322)
!2332 = !DILocation(line: 216, column: 1, scope: !2314, inlinedAt: !2322)
!2333 = !DILocation(line: 234, column: 5, scope: !2311)
!2334 = !DILocation(line: 238, column: 3, scope: !2256)
!2335 = !DILocalVariable(name: "__c", arg: 1, scope: !2336, file: !1290, line: 101, type: !87)
!2336 = distinct !DISubprogram(name: "putc_unlocked", scope: !1290, file: !1290, line: 101, type: !2337, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !469, retainedNodes: !2339)
!2337 = !DISubroutineType(types: !2338)
!2338 = !{!87, !87, !2269}
!2339 = !{!2335, !2340}
!2340 = !DILocalVariable(name: "__stream", arg: 2, scope: !2336, file: !1290, line: 101, type: !2269)
!2341 = !DILocation(line: 0, scope: !2336, inlinedAt: !2342)
!2342 = distinct !DILocation(line: 238, column: 3, scope: !2256)
!2343 = !DILocation(line: 103, column: 10, scope: !2336, inlinedAt: !2342)
!2344 = !DILocation(line: 240, column: 3, scope: !2256)
!2345 = !DILocation(line: 241, column: 7, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2256, file: !470, line: 241, column: 7)
!2347 = !DILocation(line: 241, column: 7, scope: !2256)
!2348 = !DILocation(line: 242, column: 5, scope: !2346)
!2349 = !DILocation(line: 243, column: 1, scope: !2256)
!2350 = !DISubprogram(name: "__vfprintf_chk", scope: !923, file: !923, line: 96, type: !2351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !875)
!2351 = !DISubroutineType(types: !2352)
!2352 = !{!87, !2268, !87, !437, !480}
!2353 = !DISubprogram(name: "strerror_r", scope: !1057, file: !1057, line: 444, type: !2354, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !875)
!2354 = !DISubroutineType(types: !2355)
!2355 = !{!130, !87, !130, !133}
!2356 = !DISubprogram(name: "fcntl", scope: !2357, file: !2357, line: 149, type: !2358, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !875)
!2357 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!2358 = !DISubroutineType(types: !2359)
!2359 = !{!87, !87, !87, null}
!2360 = distinct !DISubprogram(name: "error", scope: !470, file: !470, line: 285, type: !2361, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !469, retainedNodes: !2363)
!2361 = !DISubroutineType(types: !2362)
!2362 = !{null, !87, !87, !136, null}
!2363 = !{!2364, !2365, !2366, !2367}
!2364 = !DILocalVariable(name: "status", arg: 1, scope: !2360, file: !470, line: 285, type: !87)
!2365 = !DILocalVariable(name: "errnum", arg: 2, scope: !2360, file: !470, line: 285, type: !87)
!2366 = !DILocalVariable(name: "message", arg: 3, scope: !2360, file: !470, line: 285, type: !136)
!2367 = !DILocalVariable(name: "ap", scope: !2360, file: !470, line: 287, type: !2368)
!2368 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !931, line: 52, baseType: !2369)
!2369 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2370, line: 14, baseType: !2371)
!2370 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!2371 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !484, baseType: !2372)
!2372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !481, size: 192, elements: !55)
!2373 = !DILocation(line: 0, scope: !2360)
!2374 = !DILocation(line: 287, column: 3, scope: !2360)
!2375 = !DILocation(line: 287, column: 11, scope: !2360)
!2376 = !DILocation(line: 288, column: 3, scope: !2360)
!2377 = !DILocation(line: 289, column: 3, scope: !2360)
!2378 = !DILocation(line: 290, column: 3, scope: !2360)
!2379 = !DILocation(line: 291, column: 1, scope: !2360)
!2380 = !DILocation(line: 0, scope: !477)
!2381 = !DILocation(line: 302, column: 7, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !477, file: !470, line: 302, column: 7)
!2383 = !DILocation(line: 302, column: 7, scope: !477)
!2384 = !DILocation(line: 307, column: 11, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2386, file: !470, line: 307, column: 11)
!2386 = distinct !DILexicalBlock(scope: !2382, file: !470, line: 303, column: 5)
!2387 = !DILocation(line: 307, column: 27, scope: !2385)
!2388 = !DILocation(line: 308, column: 11, scope: !2385)
!2389 = !DILocation(line: 308, column: 28, scope: !2385)
!2390 = !DILocation(line: 308, column: 25, scope: !2385)
!2391 = !DILocation(line: 309, column: 15, scope: !2385)
!2392 = !DILocation(line: 309, column: 33, scope: !2385)
!2393 = !DILocation(line: 310, column: 19, scope: !2385)
!2394 = !DILocation(line: 311, column: 22, scope: !2385)
!2395 = !DILocation(line: 311, column: 56, scope: !2385)
!2396 = !DILocation(line: 307, column: 11, scope: !2386)
!2397 = !DILocation(line: 316, column: 21, scope: !2386)
!2398 = !DILocation(line: 317, column: 23, scope: !2386)
!2399 = !DILocation(line: 318, column: 5, scope: !2386)
!2400 = !DILocation(line: 327, column: 3, scope: !477)
!2401 = !DILocation(line: 331, column: 7, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !477, file: !470, line: 331, column: 7)
!2403 = !DILocation(line: 331, column: 7, scope: !477)
!2404 = !DILocation(line: 332, column: 5, scope: !2402)
!2405 = !DILocation(line: 338, column: 7, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !2402, file: !470, line: 334, column: 5)
!2407 = !DILocation(line: 346, column: 3, scope: !477)
!2408 = !DILocation(line: 350, column: 3, scope: !477)
!2409 = !DILocation(line: 356, column: 1, scope: !477)
!2410 = distinct !DISubprogram(name: "error_at_line", scope: !470, file: !470, line: 359, type: !2411, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !469, retainedNodes: !2413)
!2411 = !DISubroutineType(types: !2412)
!2412 = !{null, !87, !87, !136, !78, !136, null}
!2413 = !{!2414, !2415, !2416, !2417, !2418, !2419}
!2414 = !DILocalVariable(name: "status", arg: 1, scope: !2410, file: !470, line: 359, type: !87)
!2415 = !DILocalVariable(name: "errnum", arg: 2, scope: !2410, file: !470, line: 359, type: !87)
!2416 = !DILocalVariable(name: "file_name", arg: 3, scope: !2410, file: !470, line: 359, type: !136)
!2417 = !DILocalVariable(name: "line_number", arg: 4, scope: !2410, file: !470, line: 360, type: !78)
!2418 = !DILocalVariable(name: "message", arg: 5, scope: !2410, file: !470, line: 360, type: !136)
!2419 = !DILocalVariable(name: "ap", scope: !2410, file: !470, line: 362, type: !2368)
!2420 = !DILocation(line: 0, scope: !2410)
!2421 = !DILocation(line: 362, column: 3, scope: !2410)
!2422 = !DILocation(line: 362, column: 11, scope: !2410)
!2423 = !DILocation(line: 363, column: 3, scope: !2410)
!2424 = !DILocation(line: 364, column: 3, scope: !2410)
!2425 = !DILocation(line: 366, column: 3, scope: !2410)
!2426 = !DILocation(line: 367, column: 1, scope: !2410)
!2427 = distinct !DISubprogram(name: "fdadvise", scope: !774, file: !774, line: 25, type: !2428, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !773, retainedNodes: !2432)
!2428 = !DISubroutineType(types: !2429)
!2429 = !{null, !87, !2430, !2430, !2431}
!2430 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !931, line: 63, baseType: !235)
!2431 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !106, line: 51, baseType: !105)
!2432 = !{!2433, !2434, !2435, !2436}
!2433 = !DILocalVariable(name: "fd", arg: 1, scope: !2427, file: !774, line: 25, type: !87)
!2434 = !DILocalVariable(name: "offset", arg: 2, scope: !2427, file: !774, line: 25, type: !2430)
!2435 = !DILocalVariable(name: "len", arg: 3, scope: !2427, file: !774, line: 25, type: !2430)
!2436 = !DILocalVariable(name: "advice", arg: 4, scope: !2427, file: !774, line: 25, type: !2431)
!2437 = !DILocation(line: 0, scope: !2427)
!2438 = !DILocation(line: 28, column: 3, scope: !2427)
!2439 = !DILocation(line: 30, column: 1, scope: !2427)
!2440 = !DISubprogram(name: "posix_fadvise", scope: !2357, file: !2357, line: 273, type: !2441, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !875)
!2441 = !DISubroutineType(types: !2442)
!2442 = !{!87, !87, !2430, !2430, !87}
!2443 = distinct !DISubprogram(name: "fadvise", scope: !774, file: !774, line: 33, type: !2444, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !773, retainedNodes: !2480)
!2444 = !DISubroutineType(types: !2445)
!2445 = !{null, !2446, !2431}
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2447, size: 64)
!2447 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !211, line: 7, baseType: !2448)
!2448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !213, line: 49, size: 1728, elements: !2449)
!2449 = !{!2450, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2459, !2460, !2461, !2462, !2463, !2465, !2466, !2467, !2468, !2469, !2470, !2471, !2472, !2473, !2474, !2475, !2476, !2477, !2478, !2479}
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2448, file: !213, line: 51, baseType: !87, size: 32)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2448, file: !213, line: 54, baseType: !130, size: 64, offset: 64)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2448, file: !213, line: 55, baseType: !130, size: 64, offset: 128)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2448, file: !213, line: 56, baseType: !130, size: 64, offset: 192)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2448, file: !213, line: 57, baseType: !130, size: 64, offset: 256)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2448, file: !213, line: 58, baseType: !130, size: 64, offset: 320)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2448, file: !213, line: 59, baseType: !130, size: 64, offset: 384)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2448, file: !213, line: 60, baseType: !130, size: 64, offset: 448)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2448, file: !213, line: 61, baseType: !130, size: 64, offset: 512)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2448, file: !213, line: 64, baseType: !130, size: 64, offset: 576)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2448, file: !213, line: 65, baseType: !130, size: 64, offset: 640)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2448, file: !213, line: 66, baseType: !130, size: 64, offset: 704)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2448, file: !213, line: 68, baseType: !228, size: 64, offset: 768)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2448, file: !213, line: 70, baseType: !2464, size: 64, offset: 832)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2448, size: 64)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2448, file: !213, line: 72, baseType: !87, size: 32, offset: 896)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2448, file: !213, line: 73, baseType: !87, size: 32, offset: 928)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2448, file: !213, line: 74, baseType: !235, size: 64, offset: 960)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2448, file: !213, line: 77, baseType: !132, size: 16, offset: 1024)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2448, file: !213, line: 78, baseType: !240, size: 8, offset: 1040)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2448, file: !213, line: 79, baseType: !54, size: 8, offset: 1048)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2448, file: !213, line: 81, baseType: !243, size: 64, offset: 1088)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2448, file: !213, line: 89, baseType: !246, size: 64, offset: 1152)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2448, file: !213, line: 91, baseType: !248, size: 64, offset: 1216)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2448, file: !213, line: 92, baseType: !251, size: 64, offset: 1280)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2448, file: !213, line: 93, baseType: !2464, size: 64, offset: 1344)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2448, file: !213, line: 94, baseType: !131, size: 64, offset: 1408)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2448, file: !213, line: 95, baseType: !133, size: 64, offset: 1472)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2448, file: !213, line: 96, baseType: !87, size: 32, offset: 1536)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2448, file: !213, line: 98, baseType: !258, size: 160, offset: 1568)
!2480 = !{!2481, !2482}
!2481 = !DILocalVariable(name: "fp", arg: 1, scope: !2443, file: !774, line: 33, type: !2446)
!2482 = !DILocalVariable(name: "advice", arg: 2, scope: !2443, file: !774, line: 33, type: !2431)
!2483 = !DILocation(line: 0, scope: !2443)
!2484 = !DILocation(line: 35, column: 7, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2443, file: !774, line: 35, column: 7)
!2486 = !DILocation(line: 35, column: 7, scope: !2443)
!2487 = !DILocation(line: 36, column: 15, scope: !2485)
!2488 = !DILocation(line: 0, scope: !2427, inlinedAt: !2489)
!2489 = distinct !DILocation(line: 36, column: 5, scope: !2485)
!2490 = !DILocation(line: 28, column: 3, scope: !2427, inlinedAt: !2489)
!2491 = !DILocation(line: 36, column: 5, scope: !2485)
!2492 = !DILocation(line: 37, column: 1, scope: !2443)
!2493 = !DISubprogram(name: "fileno", scope: !931, file: !931, line: 809, type: !2494, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !875)
!2494 = !DISubroutineType(types: !2495)
!2495 = !{!87, !2446}
!2496 = distinct !DISubprogram(name: "rpl_fclose", scope: !777, file: !777, line: 58, type: !2497, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !776, retainedNodes: !2533)
!2497 = !DISubroutineType(types: !2498)
!2498 = !{!87, !2499}
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2500, size: 64)
!2500 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !211, line: 7, baseType: !2501)
!2501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !213, line: 49, size: 1728, elements: !2502)
!2502 = !{!2503, !2504, !2505, !2506, !2507, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531, !2532}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2501, file: !213, line: 51, baseType: !87, size: 32)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2501, file: !213, line: 54, baseType: !130, size: 64, offset: 64)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2501, file: !213, line: 55, baseType: !130, size: 64, offset: 128)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2501, file: !213, line: 56, baseType: !130, size: 64, offset: 192)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2501, file: !213, line: 57, baseType: !130, size: 64, offset: 256)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2501, file: !213, line: 58, baseType: !130, size: 64, offset: 320)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2501, file: !213, line: 59, baseType: !130, size: 64, offset: 384)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2501, file: !213, line: 60, baseType: !130, size: 64, offset: 448)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2501, file: !213, line: 61, baseType: !130, size: 64, offset: 512)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2501, file: !213, line: 64, baseType: !130, size: 64, offset: 576)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2501, file: !213, line: 65, baseType: !130, size: 64, offset: 640)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2501, file: !213, line: 66, baseType: !130, size: 64, offset: 704)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2501, file: !213, line: 68, baseType: !228, size: 64, offset: 768)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2501, file: !213, line: 70, baseType: !2517, size: 64, offset: 832)
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2501, file: !213, line: 72, baseType: !87, size: 32, offset: 896)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2501, file: !213, line: 73, baseType: !87, size: 32, offset: 928)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2501, file: !213, line: 74, baseType: !235, size: 64, offset: 960)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2501, file: !213, line: 77, baseType: !132, size: 16, offset: 1024)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2501, file: !213, line: 78, baseType: !240, size: 8, offset: 1040)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2501, file: !213, line: 79, baseType: !54, size: 8, offset: 1048)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2501, file: !213, line: 81, baseType: !243, size: 64, offset: 1088)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2501, file: !213, line: 89, baseType: !246, size: 64, offset: 1152)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2501, file: !213, line: 91, baseType: !248, size: 64, offset: 1216)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2501, file: !213, line: 92, baseType: !251, size: 64, offset: 1280)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2501, file: !213, line: 93, baseType: !2517, size: 64, offset: 1344)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2501, file: !213, line: 94, baseType: !131, size: 64, offset: 1408)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2501, file: !213, line: 95, baseType: !133, size: 64, offset: 1472)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2501, file: !213, line: 96, baseType: !87, size: 32, offset: 1536)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2501, file: !213, line: 98, baseType: !258, size: 160, offset: 1568)
!2533 = !{!2534, !2535, !2536, !2537}
!2534 = !DILocalVariable(name: "fp", arg: 1, scope: !2496, file: !777, line: 58, type: !2499)
!2535 = !DILocalVariable(name: "saved_errno", scope: !2496, file: !777, line: 60, type: !87)
!2536 = !DILocalVariable(name: "fd", scope: !2496, file: !777, line: 63, type: !87)
!2537 = !DILocalVariable(name: "result", scope: !2496, file: !777, line: 74, type: !87)
!2538 = !DILocation(line: 0, scope: !2496)
!2539 = !DILocation(line: 63, column: 12, scope: !2496)
!2540 = !DILocation(line: 64, column: 10, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2496, file: !777, line: 64, column: 7)
!2542 = !DILocation(line: 64, column: 7, scope: !2496)
!2543 = !DILocation(line: 65, column: 12, scope: !2541)
!2544 = !DILocation(line: 65, column: 5, scope: !2541)
!2545 = !DILocation(line: 70, column: 9, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2496, file: !777, line: 70, column: 7)
!2547 = !DILocation(line: 70, column: 23, scope: !2546)
!2548 = !DILocation(line: 70, column: 33, scope: !2546)
!2549 = !DILocation(line: 70, column: 26, scope: !2546)
!2550 = !DILocation(line: 70, column: 59, scope: !2546)
!2551 = !DILocation(line: 71, column: 7, scope: !2546)
!2552 = !DILocation(line: 71, column: 10, scope: !2546)
!2553 = !DILocation(line: 70, column: 7, scope: !2496)
!2554 = !DILocation(line: 100, column: 12, scope: !2496)
!2555 = !DILocation(line: 105, column: 7, scope: !2496)
!2556 = !DILocation(line: 72, column: 19, scope: !2546)
!2557 = !DILocation(line: 105, column: 19, scope: !2558)
!2558 = distinct !DILexicalBlock(scope: !2496, file: !777, line: 105, column: 7)
!2559 = !DILocation(line: 107, column: 13, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !2558, file: !777, line: 106, column: 5)
!2561 = !DILocation(line: 109, column: 5, scope: !2560)
!2562 = !DILocation(line: 112, column: 1, scope: !2496)
!2563 = !DISubprogram(name: "fclose", scope: !931, file: !931, line: 178, type: !2497, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !875)
!2564 = !DISubprogram(name: "__freading", scope: !2565, file: !2565, line: 51, type: !2497, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !875)
!2565 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!2566 = !DISubprogram(name: "lseek", scope: !2222, file: !2222, line: 339, type: !2567, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !875)
!2567 = !DISubroutineType(types: !2568)
!2568 = !{!235, !87, !235, !87}
!2569 = distinct !DISubprogram(name: "rpl_fflush", scope: !779, file: !779, line: 130, type: !2570, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !778, retainedNodes: !2606)
!2570 = !DISubroutineType(types: !2571)
!2571 = !{!87, !2572}
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2573, size: 64)
!2573 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !211, line: 7, baseType: !2574)
!2574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !213, line: 49, size: 1728, elements: !2575)
!2575 = !{!2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605}
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2574, file: !213, line: 51, baseType: !87, size: 32)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2574, file: !213, line: 54, baseType: !130, size: 64, offset: 64)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2574, file: !213, line: 55, baseType: !130, size: 64, offset: 128)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2574, file: !213, line: 56, baseType: !130, size: 64, offset: 192)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2574, file: !213, line: 57, baseType: !130, size: 64, offset: 256)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2574, file: !213, line: 58, baseType: !130, size: 64, offset: 320)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2574, file: !213, line: 59, baseType: !130, size: 64, offset: 384)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2574, file: !213, line: 60, baseType: !130, size: 64, offset: 448)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2574, file: !213, line: 61, baseType: !130, size: 64, offset: 512)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2574, file: !213, line: 64, baseType: !130, size: 64, offset: 576)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2574, file: !213, line: 65, baseType: !130, size: 64, offset: 640)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2574, file: !213, line: 66, baseType: !130, size: 64, offset: 704)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2574, file: !213, line: 68, baseType: !228, size: 64, offset: 768)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2574, file: !213, line: 70, baseType: !2590, size: 64, offset: 832)
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2574, size: 64)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2574, file: !213, line: 72, baseType: !87, size: 32, offset: 896)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2574, file: !213, line: 73, baseType: !87, size: 32, offset: 928)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2574, file: !213, line: 74, baseType: !235, size: 64, offset: 960)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2574, file: !213, line: 77, baseType: !132, size: 16, offset: 1024)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2574, file: !213, line: 78, baseType: !240, size: 8, offset: 1040)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2574, file: !213, line: 79, baseType: !54, size: 8, offset: 1048)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2574, file: !213, line: 81, baseType: !243, size: 64, offset: 1088)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2574, file: !213, line: 89, baseType: !246, size: 64, offset: 1152)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2574, file: !213, line: 91, baseType: !248, size: 64, offset: 1216)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2574, file: !213, line: 92, baseType: !251, size: 64, offset: 1280)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2574, file: !213, line: 93, baseType: !2590, size: 64, offset: 1344)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2574, file: !213, line: 94, baseType: !131, size: 64, offset: 1408)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2574, file: !213, line: 95, baseType: !133, size: 64, offset: 1472)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2574, file: !213, line: 96, baseType: !87, size: 32, offset: 1536)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2574, file: !213, line: 98, baseType: !258, size: 160, offset: 1568)
!2606 = !{!2607}
!2607 = !DILocalVariable(name: "stream", arg: 1, scope: !2569, file: !779, line: 130, type: !2572)
!2608 = !DILocation(line: 0, scope: !2569)
!2609 = !DILocation(line: 151, column: 14, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2569, file: !779, line: 151, column: 7)
!2611 = !DILocation(line: 151, column: 22, scope: !2610)
!2612 = !DILocation(line: 151, column: 27, scope: !2610)
!2613 = !DILocation(line: 151, column: 7, scope: !2569)
!2614 = !DILocation(line: 152, column: 12, scope: !2610)
!2615 = !DILocation(line: 152, column: 5, scope: !2610)
!2616 = !DILocalVariable(name: "fp", arg: 1, scope: !2617, file: !779, line: 42, type: !2572)
!2617 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !779, file: !779, line: 42, type: !2618, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !778, retainedNodes: !2620)
!2618 = !DISubroutineType(types: !2619)
!2619 = !{null, !2572}
!2620 = !{!2616}
!2621 = !DILocation(line: 0, scope: !2617, inlinedAt: !2622)
!2622 = distinct !DILocation(line: 157, column: 3, scope: !2569)
!2623 = !DILocation(line: 44, column: 12, scope: !2624, inlinedAt: !2622)
!2624 = distinct !DILexicalBlock(scope: !2617, file: !779, line: 44, column: 7)
!2625 = !DILocation(line: 44, column: 19, scope: !2624, inlinedAt: !2622)
!2626 = !DILocation(line: 44, column: 7, scope: !2617, inlinedAt: !2622)
!2627 = !DILocation(line: 46, column: 5, scope: !2624, inlinedAt: !2622)
!2628 = !DILocation(line: 159, column: 10, scope: !2569)
!2629 = !DILocation(line: 159, column: 3, scope: !2569)
!2630 = !DILocation(line: 236, column: 1, scope: !2569)
!2631 = !DISubprogram(name: "fflush", scope: !931, file: !931, line: 230, type: !2570, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !875)
!2632 = distinct !DISubprogram(name: "fpurge", scope: !782, file: !782, line: 32, type: !2633, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !781, retainedNodes: !2669)
!2633 = !DISubroutineType(types: !2634)
!2634 = !{!87, !2635}
!2635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2636, size: 64)
!2636 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !211, line: 7, baseType: !2637)
!2637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !213, line: 49, size: 1728, elements: !2638)
!2638 = !{!2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651, !2652, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2668}
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2637, file: !213, line: 51, baseType: !87, size: 32)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2637, file: !213, line: 54, baseType: !130, size: 64, offset: 64)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2637, file: !213, line: 55, baseType: !130, size: 64, offset: 128)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2637, file: !213, line: 56, baseType: !130, size: 64, offset: 192)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2637, file: !213, line: 57, baseType: !130, size: 64, offset: 256)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2637, file: !213, line: 58, baseType: !130, size: 64, offset: 320)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2637, file: !213, line: 59, baseType: !130, size: 64, offset: 384)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2637, file: !213, line: 60, baseType: !130, size: 64, offset: 448)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2637, file: !213, line: 61, baseType: !130, size: 64, offset: 512)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2637, file: !213, line: 64, baseType: !130, size: 64, offset: 576)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2637, file: !213, line: 65, baseType: !130, size: 64, offset: 640)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2637, file: !213, line: 66, baseType: !130, size: 64, offset: 704)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2637, file: !213, line: 68, baseType: !228, size: 64, offset: 768)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2637, file: !213, line: 70, baseType: !2653, size: 64, offset: 832)
!2653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2637, size: 64)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2637, file: !213, line: 72, baseType: !87, size: 32, offset: 896)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2637, file: !213, line: 73, baseType: !87, size: 32, offset: 928)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2637, file: !213, line: 74, baseType: !235, size: 64, offset: 960)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2637, file: !213, line: 77, baseType: !132, size: 16, offset: 1024)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2637, file: !213, line: 78, baseType: !240, size: 8, offset: 1040)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2637, file: !213, line: 79, baseType: !54, size: 8, offset: 1048)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2637, file: !213, line: 81, baseType: !243, size: 64, offset: 1088)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2637, file: !213, line: 89, baseType: !246, size: 64, offset: 1152)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2637, file: !213, line: 91, baseType: !248, size: 64, offset: 1216)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2637, file: !213, line: 92, baseType: !251, size: 64, offset: 1280)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2637, file: !213, line: 93, baseType: !2653, size: 64, offset: 1344)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2637, file: !213, line: 94, baseType: !131, size: 64, offset: 1408)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2637, file: !213, line: 95, baseType: !133, size: 64, offset: 1472)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2637, file: !213, line: 96, baseType: !87, size: 32, offset: 1536)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2637, file: !213, line: 98, baseType: !258, size: 160, offset: 1568)
!2669 = !{!2670}
!2670 = !DILocalVariable(name: "fp", arg: 1, scope: !2632, file: !782, line: 32, type: !2635)
!2671 = !DILocation(line: 0, scope: !2632)
!2672 = !DILocation(line: 36, column: 3, scope: !2632)
!2673 = !DILocation(line: 38, column: 3, scope: !2632)
!2674 = !DISubprogram(name: "__fpurge", scope: !2565, file: !2565, line: 72, type: !2675, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !875)
!2675 = !DISubroutineType(types: !2676)
!2676 = !{null, !2635}
!2677 = distinct !DISubprogram(name: "rpl_fseeko", scope: !784, file: !784, line: 28, type: !2678, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !2714)
!2678 = !DISubroutineType(types: !2679)
!2679 = !{!87, !2680, !2430, !87}
!2680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2681, size: 64)
!2681 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !211, line: 7, baseType: !2682)
!2682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !213, line: 49, size: 1728, elements: !2683)
!2683 = !{!2684, !2685, !2686, !2687, !2688, !2689, !2690, !2691, !2692, !2693, !2694, !2695, !2696, !2697, !2699, !2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2711, !2712, !2713}
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2682, file: !213, line: 51, baseType: !87, size: 32)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2682, file: !213, line: 54, baseType: !130, size: 64, offset: 64)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2682, file: !213, line: 55, baseType: !130, size: 64, offset: 128)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2682, file: !213, line: 56, baseType: !130, size: 64, offset: 192)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2682, file: !213, line: 57, baseType: !130, size: 64, offset: 256)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2682, file: !213, line: 58, baseType: !130, size: 64, offset: 320)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2682, file: !213, line: 59, baseType: !130, size: 64, offset: 384)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2682, file: !213, line: 60, baseType: !130, size: 64, offset: 448)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2682, file: !213, line: 61, baseType: !130, size: 64, offset: 512)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2682, file: !213, line: 64, baseType: !130, size: 64, offset: 576)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2682, file: !213, line: 65, baseType: !130, size: 64, offset: 640)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2682, file: !213, line: 66, baseType: !130, size: 64, offset: 704)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2682, file: !213, line: 68, baseType: !228, size: 64, offset: 768)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2682, file: !213, line: 70, baseType: !2698, size: 64, offset: 832)
!2698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2682, size: 64)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2682, file: !213, line: 72, baseType: !87, size: 32, offset: 896)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2682, file: !213, line: 73, baseType: !87, size: 32, offset: 928)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2682, file: !213, line: 74, baseType: !235, size: 64, offset: 960)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2682, file: !213, line: 77, baseType: !132, size: 16, offset: 1024)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2682, file: !213, line: 78, baseType: !240, size: 8, offset: 1040)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2682, file: !213, line: 79, baseType: !54, size: 8, offset: 1048)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2682, file: !213, line: 81, baseType: !243, size: 64, offset: 1088)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2682, file: !213, line: 89, baseType: !246, size: 64, offset: 1152)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2682, file: !213, line: 91, baseType: !248, size: 64, offset: 1216)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2682, file: !213, line: 92, baseType: !251, size: 64, offset: 1280)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2682, file: !213, line: 93, baseType: !2698, size: 64, offset: 1344)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2682, file: !213, line: 94, baseType: !131, size: 64, offset: 1408)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2682, file: !213, line: 95, baseType: !133, size: 64, offset: 1472)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2682, file: !213, line: 96, baseType: !87, size: 32, offset: 1536)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2682, file: !213, line: 98, baseType: !258, size: 160, offset: 1568)
!2714 = !{!2715, !2716, !2717, !2718}
!2715 = !DILocalVariable(name: "fp", arg: 1, scope: !2677, file: !784, line: 28, type: !2680)
!2716 = !DILocalVariable(name: "offset", arg: 2, scope: !2677, file: !784, line: 28, type: !2430)
!2717 = !DILocalVariable(name: "whence", arg: 3, scope: !2677, file: !784, line: 28, type: !87)
!2718 = !DILocalVariable(name: "pos", scope: !2719, file: !784, line: 123, type: !2430)
!2719 = distinct !DILexicalBlock(scope: !2720, file: !784, line: 119, column: 5)
!2720 = distinct !DILexicalBlock(scope: !2677, file: !784, line: 55, column: 7)
!2721 = !DILocation(line: 0, scope: !2677)
!2722 = !DILocation(line: 55, column: 12, scope: !2720)
!2723 = !{!1299, !867, i64 16}
!2724 = !DILocation(line: 55, column: 33, scope: !2720)
!2725 = !{!1299, !867, i64 8}
!2726 = !DILocation(line: 55, column: 25, scope: !2720)
!2727 = !DILocation(line: 56, column: 7, scope: !2720)
!2728 = !DILocation(line: 56, column: 15, scope: !2720)
!2729 = !DILocation(line: 56, column: 37, scope: !2720)
!2730 = !{!1299, !867, i64 32}
!2731 = !DILocation(line: 56, column: 29, scope: !2720)
!2732 = !DILocation(line: 57, column: 7, scope: !2720)
!2733 = !DILocation(line: 57, column: 15, scope: !2720)
!2734 = !{!1299, !867, i64 72}
!2735 = !DILocation(line: 57, column: 29, scope: !2720)
!2736 = !DILocation(line: 55, column: 7, scope: !2677)
!2737 = !DILocation(line: 123, column: 26, scope: !2719)
!2738 = !DILocation(line: 123, column: 19, scope: !2719)
!2739 = !DILocation(line: 0, scope: !2719)
!2740 = !DILocation(line: 124, column: 15, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2719, file: !784, line: 124, column: 11)
!2742 = !DILocation(line: 124, column: 11, scope: !2719)
!2743 = !DILocation(line: 135, column: 19, scope: !2719)
!2744 = !DILocation(line: 136, column: 12, scope: !2719)
!2745 = !DILocation(line: 136, column: 20, scope: !2719)
!2746 = !{!1299, !1300, i64 144}
!2747 = !DILocation(line: 167, column: 7, scope: !2719)
!2748 = !DILocation(line: 169, column: 10, scope: !2677)
!2749 = !DILocation(line: 169, column: 3, scope: !2677)
!2750 = !DILocation(line: 170, column: 1, scope: !2677)
!2751 = !DISubprogram(name: "fseeko", scope: !931, file: !931, line: 736, type: !2752, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !875)
!2752 = !DISubroutineType(types: !2753)
!2753 = !{!87, !2680, !235, !87}
!2754 = distinct !DISubprogram(name: "getprogname", scope: !786, file: !786, line: 54, type: !2755, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !785, retainedNodes: !875)
!2755 = !DISubroutineType(types: !2756)
!2756 = !{!136}
!2757 = !DILocation(line: 58, column: 10, scope: !2754)
!2758 = !DILocation(line: 58, column: 3, scope: !2754)
!2759 = distinct !DISubprogram(name: "set_program_name", scope: !522, file: !522, line: 37, type: !888, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !521, retainedNodes: !2760)
!2760 = !{!2761, !2762, !2763}
!2761 = !DILocalVariable(name: "argv0", arg: 1, scope: !2759, file: !522, line: 37, type: !136)
!2762 = !DILocalVariable(name: "slash", scope: !2759, file: !522, line: 44, type: !136)
!2763 = !DILocalVariable(name: "base", scope: !2759, file: !522, line: 45, type: !136)
!2764 = !DILocation(line: 0, scope: !2759)
!2765 = !DILocation(line: 44, column: 23, scope: !2759)
!2766 = !DILocation(line: 45, column: 22, scope: !2759)
!2767 = !DILocation(line: 46, column: 17, scope: !2768)
!2768 = distinct !DILexicalBlock(scope: !2759, file: !522, line: 46, column: 7)
!2769 = !DILocation(line: 46, column: 9, scope: !2768)
!2770 = !DILocation(line: 46, column: 25, scope: !2768)
!2771 = !DILocation(line: 46, column: 40, scope: !2768)
!2772 = !DILocalVariable(name: "__s1", arg: 1, scope: !2773, file: !949, line: 974, type: !1085)
!2773 = distinct !DISubprogram(name: "memeq", scope: !949, file: !949, line: 974, type: !2774, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !521, retainedNodes: !2776)
!2774 = !DISubroutineType(types: !2775)
!2775 = !{!196, !1085, !1085, !133}
!2776 = !{!2772, !2777, !2778}
!2777 = !DILocalVariable(name: "__s2", arg: 2, scope: !2773, file: !949, line: 974, type: !1085)
!2778 = !DILocalVariable(name: "__n", arg: 3, scope: !2773, file: !949, line: 974, type: !133)
!2779 = !DILocation(line: 0, scope: !2773, inlinedAt: !2780)
!2780 = distinct !DILocation(line: 46, column: 28, scope: !2768)
!2781 = !DILocation(line: 976, column: 11, scope: !2773, inlinedAt: !2780)
!2782 = !DILocation(line: 976, column: 10, scope: !2773, inlinedAt: !2780)
!2783 = !DILocation(line: 46, column: 7, scope: !2759)
!2784 = !DILocation(line: 49, column: 11, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2786, file: !522, line: 49, column: 11)
!2786 = distinct !DILexicalBlock(scope: !2768, file: !522, line: 47, column: 5)
!2787 = !DILocation(line: 49, column: 36, scope: !2785)
!2788 = !DILocation(line: 49, column: 11, scope: !2786)
!2789 = !DILocation(line: 65, column: 16, scope: !2759)
!2790 = !DILocation(line: 71, column: 27, scope: !2759)
!2791 = !DILocation(line: 74, column: 33, scope: !2759)
!2792 = !DILocation(line: 76, column: 1, scope: !2759)
!2793 = !DISubprogram(name: "strrchr", scope: !1057, file: !1057, line: 273, type: !1072, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !875)
!2794 = !DILocation(line: 0, scope: !531)
!2795 = !DILocation(line: 40, column: 29, scope: !531)
!2796 = !DILocation(line: 41, column: 19, scope: !2797)
!2797 = distinct !DILexicalBlock(scope: !531, file: !532, line: 41, column: 7)
!2798 = !DILocation(line: 41, column: 7, scope: !531)
!2799 = !DILocation(line: 47, column: 3, scope: !531)
!2800 = !DILocation(line: 48, column: 3, scope: !531)
!2801 = !DILocation(line: 48, column: 13, scope: !531)
!2802 = !DILocalVariable(name: "ps", arg: 1, scope: !2803, file: !2804, line: 1135, type: !2807)
!2803 = distinct !DISubprogram(name: "mbszero", scope: !2804, file: !2804, line: 1135, type: !2805, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !535, retainedNodes: !2808)
!2804 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2805 = !DISubroutineType(types: !2806)
!2806 = !{null, !2807}
!2807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!2808 = !{!2802}
!2809 = !DILocation(line: 0, scope: !2803, inlinedAt: !2810)
!2810 = distinct !DILocation(line: 48, column: 18, scope: !531)
!2811 = !DILocalVariable(name: "__dest", arg: 1, scope: !2812, file: !1273, line: 57, type: !131)
!2812 = distinct !DISubprogram(name: "memset", scope: !1273, file: !1273, line: 57, type: !2813, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, retainedNodes: !2815)
!2813 = !DISubroutineType(types: !2814)
!2814 = !{!131, !131, !87, !133}
!2815 = !{!2811, !2816, !2817}
!2816 = !DILocalVariable(name: "__ch", arg: 2, scope: !2812, file: !1273, line: 57, type: !87)
!2817 = !DILocalVariable(name: "__len", arg: 3, scope: !2812, file: !1273, line: 57, type: !133)
!2818 = !DILocation(line: 0, scope: !2812, inlinedAt: !2819)
!2819 = distinct !DILocation(line: 1137, column: 3, scope: !2803, inlinedAt: !2810)
!2820 = !DILocation(line: 59, column: 10, scope: !2812, inlinedAt: !2819)
!2821 = !DILocation(line: 49, column: 7, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !531, file: !532, line: 49, column: 7)
!2823 = !DILocation(line: 49, column: 39, scope: !2822)
!2824 = !DILocation(line: 49, column: 44, scope: !2822)
!2825 = !DILocation(line: 54, column: 1, scope: !531)
!2826 = !DISubprogram(name: "mbrtoc32", scope: !543, file: !543, line: 57, type: !2827, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !875)
!2827 = !DISubroutineType(types: !2828)
!2828 = !{!133, !2829, !437, !133, !2831}
!2829 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2830)
!2830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!2831 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2807)
!2832 = distinct !DISubprogram(name: "clone_quoting_options", scope: !562, file: !562, line: 113, type: !2833, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !583, retainedNodes: !2836)
!2833 = !DISubroutineType(types: !2834)
!2834 = !{!2835, !2835}
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!2836 = !{!2837, !2838, !2839}
!2837 = !DILocalVariable(name: "o", arg: 1, scope: !2832, file: !562, line: 113, type: !2835)
!2838 = !DILocalVariable(name: "saved_errno", scope: !2832, file: !562, line: 115, type: !87)
!2839 = !DILocalVariable(name: "p", scope: !2832, file: !562, line: 116, type: !2835)
!2840 = !DILocation(line: 0, scope: !2832)
!2841 = !DILocation(line: 115, column: 21, scope: !2832)
!2842 = !DILocation(line: 116, column: 40, scope: !2832)
!2843 = !DILocation(line: 116, column: 31, scope: !2832)
!2844 = !DILocation(line: 118, column: 9, scope: !2832)
!2845 = !DILocation(line: 119, column: 3, scope: !2832)
!2846 = distinct !DISubprogram(name: "get_quoting_style", scope: !562, file: !562, line: 124, type: !2847, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !583, retainedNodes: !2851)
!2847 = !DISubroutineType(types: !2848)
!2848 = !{!91, !2849}
!2849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2850, size: 64)
!2850 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !598)
!2851 = !{!2852}
!2852 = !DILocalVariable(name: "o", arg: 1, scope: !2846, file: !562, line: 124, type: !2849)
!2853 = !DILocation(line: 0, scope: !2846)
!2854 = !DILocation(line: 126, column: 11, scope: !2846)
!2855 = !DILocation(line: 126, column: 46, scope: !2846)
!2856 = !{!2857, !868, i64 0}
!2857 = !{!"quoting_options", !868, i64 0, !937, i64 4, !868, i64 8, !867, i64 40, !867, i64 48}
!2858 = !DILocation(line: 126, column: 3, scope: !2846)
!2859 = distinct !DISubprogram(name: "set_quoting_style", scope: !562, file: !562, line: 132, type: !2860, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !583, retainedNodes: !2862)
!2860 = !DISubroutineType(types: !2861)
!2861 = !{null, !2835, !91}
!2862 = !{!2863, !2864}
!2863 = !DILocalVariable(name: "o", arg: 1, scope: !2859, file: !562, line: 132, type: !2835)
!2864 = !DILocalVariable(name: "s", arg: 2, scope: !2859, file: !562, line: 132, type: !91)
!2865 = !DILocation(line: 0, scope: !2859)
!2866 = !DILocation(line: 134, column: 4, scope: !2859)
!2867 = !DILocation(line: 134, column: 45, scope: !2859)
!2868 = !DILocation(line: 135, column: 1, scope: !2859)
!2869 = distinct !DISubprogram(name: "set_char_quoting", scope: !562, file: !562, line: 143, type: !2870, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !583, retainedNodes: !2872)
!2870 = !DISubroutineType(types: !2871)
!2871 = !{!87, !2835, !4, !87}
!2872 = !{!2873, !2874, !2875, !2876, !2877, !2879, !2880}
!2873 = !DILocalVariable(name: "o", arg: 1, scope: !2869, file: !562, line: 143, type: !2835)
!2874 = !DILocalVariable(name: "c", arg: 2, scope: !2869, file: !562, line: 143, type: !4)
!2875 = !DILocalVariable(name: "i", arg: 3, scope: !2869, file: !562, line: 143, type: !87)
!2876 = !DILocalVariable(name: "uc", scope: !2869, file: !562, line: 145, type: !138)
!2877 = !DILocalVariable(name: "p", scope: !2869, file: !562, line: 146, type: !2878)
!2878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!2879 = !DILocalVariable(name: "shift", scope: !2869, file: !562, line: 148, type: !87)
!2880 = !DILocalVariable(name: "r", scope: !2869, file: !562, line: 149, type: !78)
!2881 = !DILocation(line: 0, scope: !2869)
!2882 = !DILocation(line: 147, column: 6, scope: !2869)
!2883 = !DILocation(line: 147, column: 41, scope: !2869)
!2884 = !DILocation(line: 147, column: 62, scope: !2869)
!2885 = !DILocation(line: 147, column: 57, scope: !2869)
!2886 = !DILocation(line: 148, column: 15, scope: !2869)
!2887 = !DILocation(line: 149, column: 21, scope: !2869)
!2888 = !DILocation(line: 149, column: 24, scope: !2869)
!2889 = !DILocation(line: 149, column: 34, scope: !2869)
!2890 = !DILocation(line: 150, column: 19, scope: !2869)
!2891 = !DILocation(line: 150, column: 24, scope: !2869)
!2892 = !DILocation(line: 150, column: 6, scope: !2869)
!2893 = !DILocation(line: 151, column: 3, scope: !2869)
!2894 = distinct !DISubprogram(name: "set_quoting_flags", scope: !562, file: !562, line: 159, type: !2895, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !583, retainedNodes: !2897)
!2895 = !DISubroutineType(types: !2896)
!2896 = !{!87, !2835, !87}
!2897 = !{!2898, !2899, !2900}
!2898 = !DILocalVariable(name: "o", arg: 1, scope: !2894, file: !562, line: 159, type: !2835)
!2899 = !DILocalVariable(name: "i", arg: 2, scope: !2894, file: !562, line: 159, type: !87)
!2900 = !DILocalVariable(name: "r", scope: !2894, file: !562, line: 163, type: !87)
!2901 = !DILocation(line: 0, scope: !2894)
!2902 = !DILocation(line: 161, column: 8, scope: !2903)
!2903 = distinct !DILexicalBlock(scope: !2894, file: !562, line: 161, column: 7)
!2904 = !DILocation(line: 161, column: 7, scope: !2894)
!2905 = !DILocation(line: 163, column: 14, scope: !2894)
!2906 = !{!2857, !937, i64 4}
!2907 = !DILocation(line: 164, column: 12, scope: !2894)
!2908 = !DILocation(line: 165, column: 3, scope: !2894)
!2909 = distinct !DISubprogram(name: "set_custom_quoting", scope: !562, file: !562, line: 169, type: !2910, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !583, retainedNodes: !2912)
!2910 = !DISubroutineType(types: !2911)
!2911 = !{null, !2835, !136, !136}
!2912 = !{!2913, !2914, !2915}
!2913 = !DILocalVariable(name: "o", arg: 1, scope: !2909, file: !562, line: 169, type: !2835)
!2914 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2909, file: !562, line: 170, type: !136)
!2915 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2909, file: !562, line: 170, type: !136)
!2916 = !DILocation(line: 0, scope: !2909)
!2917 = !DILocation(line: 172, column: 8, scope: !2918)
!2918 = distinct !DILexicalBlock(scope: !2909, file: !562, line: 172, column: 7)
!2919 = !DILocation(line: 172, column: 7, scope: !2909)
!2920 = !DILocation(line: 174, column: 12, scope: !2909)
!2921 = !DILocation(line: 175, column: 8, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2909, file: !562, line: 175, column: 7)
!2923 = !DILocation(line: 175, column: 19, scope: !2922)
!2924 = !DILocation(line: 176, column: 5, scope: !2922)
!2925 = !DILocation(line: 177, column: 6, scope: !2909)
!2926 = !DILocation(line: 177, column: 17, scope: !2909)
!2927 = !{!2857, !867, i64 40}
!2928 = !DILocation(line: 178, column: 6, scope: !2909)
!2929 = !DILocation(line: 178, column: 18, scope: !2909)
!2930 = !{!2857, !867, i64 48}
!2931 = !DILocation(line: 179, column: 1, scope: !2909)
!2932 = !DISubprogram(name: "abort", scope: !1061, file: !1061, line: 598, type: !517, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !875)
!2933 = distinct !DISubprogram(name: "quotearg_buffer", scope: !562, file: !562, line: 774, type: !2934, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !583, retainedNodes: !2936)
!2934 = !DISubroutineType(types: !2935)
!2935 = !{!133, !130, !133, !136, !133, !2849}
!2936 = !{!2937, !2938, !2939, !2940, !2941, !2942, !2943, !2944}
!2937 = !DILocalVariable(name: "buffer", arg: 1, scope: !2933, file: !562, line: 774, type: !130)
!2938 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2933, file: !562, line: 774, type: !133)
!2939 = !DILocalVariable(name: "arg", arg: 3, scope: !2933, file: !562, line: 775, type: !136)
!2940 = !DILocalVariable(name: "argsize", arg: 4, scope: !2933, file: !562, line: 775, type: !133)
!2941 = !DILocalVariable(name: "o", arg: 5, scope: !2933, file: !562, line: 776, type: !2849)
!2942 = !DILocalVariable(name: "p", scope: !2933, file: !562, line: 778, type: !2849)
!2943 = !DILocalVariable(name: "saved_errno", scope: !2933, file: !562, line: 779, type: !87)
!2944 = !DILocalVariable(name: "r", scope: !2933, file: !562, line: 780, type: !133)
!2945 = !DILocation(line: 0, scope: !2933)
!2946 = !DILocation(line: 778, column: 37, scope: !2933)
!2947 = !DILocation(line: 779, column: 21, scope: !2933)
!2948 = !DILocation(line: 781, column: 43, scope: !2933)
!2949 = !DILocation(line: 781, column: 53, scope: !2933)
!2950 = !DILocation(line: 781, column: 63, scope: !2933)
!2951 = !DILocation(line: 782, column: 43, scope: !2933)
!2952 = !DILocation(line: 782, column: 58, scope: !2933)
!2953 = !DILocation(line: 780, column: 14, scope: !2933)
!2954 = !DILocation(line: 783, column: 9, scope: !2933)
!2955 = !DILocation(line: 784, column: 3, scope: !2933)
!2956 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !562, file: !562, line: 251, type: !2957, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !583, retainedNodes: !2961)
!2957 = !DISubroutineType(types: !2958)
!2958 = !{!133, !130, !133, !136, !133, !91, !87, !2959, !136, !136}
!2959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2960, size: 64)
!2960 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!2961 = !{!2962, !2963, !2964, !2965, !2966, !2967, !2968, !2969, !2970, !2971, !2972, !2973, !2974, !2975, !2976, !2977, !2978, !2979, !2980, !2981, !2986, !2988, !2991, !2992, !2993, !2994, !2997, !2998, !3001, !3005, !3006, !3014, !3017, !3018, !3020, !3021, !3022, !3023}
!2962 = !DILocalVariable(name: "buffer", arg: 1, scope: !2956, file: !562, line: 251, type: !130)
!2963 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2956, file: !562, line: 251, type: !133)
!2964 = !DILocalVariable(name: "arg", arg: 3, scope: !2956, file: !562, line: 252, type: !136)
!2965 = !DILocalVariable(name: "argsize", arg: 4, scope: !2956, file: !562, line: 252, type: !133)
!2966 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2956, file: !562, line: 253, type: !91)
!2967 = !DILocalVariable(name: "flags", arg: 6, scope: !2956, file: !562, line: 253, type: !87)
!2968 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2956, file: !562, line: 254, type: !2959)
!2969 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2956, file: !562, line: 255, type: !136)
!2970 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2956, file: !562, line: 256, type: !136)
!2971 = !DILocalVariable(name: "unibyte_locale", scope: !2956, file: !562, line: 258, type: !196)
!2972 = !DILocalVariable(name: "len", scope: !2956, file: !562, line: 260, type: !133)
!2973 = !DILocalVariable(name: "orig_buffersize", scope: !2956, file: !562, line: 261, type: !133)
!2974 = !DILocalVariable(name: "quote_string", scope: !2956, file: !562, line: 262, type: !136)
!2975 = !DILocalVariable(name: "quote_string_len", scope: !2956, file: !562, line: 263, type: !133)
!2976 = !DILocalVariable(name: "backslash_escapes", scope: !2956, file: !562, line: 264, type: !196)
!2977 = !DILocalVariable(name: "elide_outer_quotes", scope: !2956, file: !562, line: 265, type: !196)
!2978 = !DILocalVariable(name: "encountered_single_quote", scope: !2956, file: !562, line: 266, type: !196)
!2979 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2956, file: !562, line: 267, type: !196)
!2980 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2956, file: !562, line: 309, type: !196)
!2981 = !DILocalVariable(name: "lq", scope: !2982, file: !562, line: 361, type: !136)
!2982 = distinct !DILexicalBlock(scope: !2983, file: !562, line: 361, column: 11)
!2983 = distinct !DILexicalBlock(scope: !2984, file: !562, line: 360, column: 13)
!2984 = distinct !DILexicalBlock(scope: !2985, file: !562, line: 333, column: 7)
!2985 = distinct !DILexicalBlock(scope: !2956, file: !562, line: 312, column: 5)
!2986 = !DILocalVariable(name: "i", scope: !2987, file: !562, line: 395, type: !133)
!2987 = distinct !DILexicalBlock(scope: !2956, file: !562, line: 395, column: 3)
!2988 = !DILocalVariable(name: "is_right_quote", scope: !2989, file: !562, line: 397, type: !196)
!2989 = distinct !DILexicalBlock(scope: !2990, file: !562, line: 396, column: 5)
!2990 = distinct !DILexicalBlock(scope: !2987, file: !562, line: 395, column: 3)
!2991 = !DILocalVariable(name: "escaping", scope: !2989, file: !562, line: 398, type: !196)
!2992 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2989, file: !562, line: 399, type: !196)
!2993 = !DILocalVariable(name: "c", scope: !2989, file: !562, line: 417, type: !138)
!2994 = !DILocalVariable(name: "m", scope: !2995, file: !562, line: 598, type: !133)
!2995 = distinct !DILexicalBlock(scope: !2996, file: !562, line: 596, column: 11)
!2996 = distinct !DILexicalBlock(scope: !2989, file: !562, line: 419, column: 9)
!2997 = !DILocalVariable(name: "printable", scope: !2995, file: !562, line: 600, type: !196)
!2998 = !DILocalVariable(name: "mbs", scope: !2999, file: !562, line: 609, type: !630)
!2999 = distinct !DILexicalBlock(scope: !3000, file: !562, line: 608, column: 15)
!3000 = distinct !DILexicalBlock(scope: !2995, file: !562, line: 602, column: 17)
!3001 = !DILocalVariable(name: "w", scope: !3002, file: !562, line: 618, type: !542)
!3002 = distinct !DILexicalBlock(scope: !3003, file: !562, line: 617, column: 19)
!3003 = distinct !DILexicalBlock(scope: !3004, file: !562, line: 616, column: 17)
!3004 = distinct !DILexicalBlock(scope: !2999, file: !562, line: 616, column: 17)
!3005 = !DILocalVariable(name: "bytes", scope: !3002, file: !562, line: 619, type: !133)
!3006 = !DILocalVariable(name: "j", scope: !3007, file: !562, line: 648, type: !133)
!3007 = distinct !DILexicalBlock(scope: !3008, file: !562, line: 648, column: 29)
!3008 = distinct !DILexicalBlock(scope: !3009, file: !562, line: 647, column: 27)
!3009 = distinct !DILexicalBlock(scope: !3010, file: !562, line: 645, column: 29)
!3010 = distinct !DILexicalBlock(scope: !3011, file: !562, line: 636, column: 23)
!3011 = distinct !DILexicalBlock(scope: !3012, file: !562, line: 628, column: 30)
!3012 = distinct !DILexicalBlock(scope: !3013, file: !562, line: 623, column: 30)
!3013 = distinct !DILexicalBlock(scope: !3002, file: !562, line: 621, column: 25)
!3014 = !DILocalVariable(name: "ilim", scope: !3015, file: !562, line: 674, type: !133)
!3015 = distinct !DILexicalBlock(scope: !3016, file: !562, line: 671, column: 15)
!3016 = distinct !DILexicalBlock(scope: !2995, file: !562, line: 670, column: 17)
!3017 = !DILabel(scope: !2956, name: "process_input", file: !562, line: 308)
!3018 = !DILabel(scope: !3019, name: "c_and_shell_escape", file: !562, line: 502)
!3019 = distinct !DILexicalBlock(scope: !2996, file: !562, line: 478, column: 9)
!3020 = !DILabel(scope: !3019, name: "c_escape", file: !562, line: 507)
!3021 = !DILabel(scope: !2989, name: "store_escape", file: !562, line: 709)
!3022 = !DILabel(scope: !2989, name: "store_c", file: !562, line: 712)
!3023 = !DILabel(scope: !2956, name: "force_outer_quoting_style", file: !562, line: 753)
!3024 = !DILocation(line: 0, scope: !2956)
!3025 = !DILocation(line: 258, column: 25, scope: !2956)
!3026 = !DILocation(line: 258, column: 36, scope: !2956)
!3027 = !DILocation(line: 265, column: 8, scope: !2956)
!3028 = !DILocation(line: 267, column: 3, scope: !2956)
!3029 = !DILocation(line: 261, column: 10, scope: !2956)
!3030 = !DILocation(line: 262, column: 15, scope: !2956)
!3031 = !DILocation(line: 263, column: 10, scope: !2956)
!3032 = !DILocation(line: 264, column: 8, scope: !2956)
!3033 = !DILocation(line: 266, column: 8, scope: !2956)
!3034 = !DILocation(line: 267, column: 8, scope: !2956)
!3035 = !DILocation(line: 308, column: 2, scope: !2956)
!3036 = !DILocation(line: 311, column: 3, scope: !2956)
!3037 = !DILocation(line: 318, column: 11, scope: !2985)
!3038 = !DILocation(line: 318, column: 12, scope: !3039)
!3039 = distinct !DILexicalBlock(scope: !2985, file: !562, line: 318, column: 11)
!3040 = !DILocation(line: 319, column: 9, scope: !3041)
!3041 = distinct !DILexicalBlock(scope: !3042, file: !562, line: 319, column: 9)
!3042 = distinct !DILexicalBlock(scope: !3039, file: !562, line: 319, column: 9)
!3043 = !DILocation(line: 319, column: 9, scope: !3042)
!3044 = !DILocation(line: 0, scope: !621, inlinedAt: !3045)
!3045 = distinct !DILocation(line: 357, column: 26, scope: !3046)
!3046 = distinct !DILexicalBlock(scope: !3047, file: !562, line: 335, column: 11)
!3047 = distinct !DILexicalBlock(scope: !2984, file: !562, line: 334, column: 13)
!3048 = !DILocation(line: 199, column: 29, scope: !621, inlinedAt: !3045)
!3049 = !DILocation(line: 201, column: 19, scope: !3050, inlinedAt: !3045)
!3050 = distinct !DILexicalBlock(scope: !621, file: !562, line: 201, column: 7)
!3051 = !DILocation(line: 201, column: 7, scope: !621, inlinedAt: !3045)
!3052 = !DILocation(line: 229, column: 3, scope: !621, inlinedAt: !3045)
!3053 = !DILocation(line: 230, column: 3, scope: !621, inlinedAt: !3045)
!3054 = !DILocation(line: 230, column: 13, scope: !621, inlinedAt: !3045)
!3055 = !DILocalVariable(name: "ps", arg: 1, scope: !3056, file: !2804, line: 1135, type: !3059)
!3056 = distinct !DISubprogram(name: "mbszero", scope: !2804, file: !2804, line: 1135, type: !3057, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !583, retainedNodes: !3060)
!3057 = !DISubroutineType(types: !3058)
!3058 = !{null, !3059}
!3059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!3060 = !{!3055}
!3061 = !DILocation(line: 0, scope: !3056, inlinedAt: !3062)
!3062 = distinct !DILocation(line: 230, column: 18, scope: !621, inlinedAt: !3045)
!3063 = !DILocalVariable(name: "__dest", arg: 1, scope: !3064, file: !1273, line: 57, type: !131)
!3064 = distinct !DISubprogram(name: "memset", scope: !1273, file: !1273, line: 57, type: !2813, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !583, retainedNodes: !3065)
!3065 = !{!3063, !3066, !3067}
!3066 = !DILocalVariable(name: "__ch", arg: 2, scope: !3064, file: !1273, line: 57, type: !87)
!3067 = !DILocalVariable(name: "__len", arg: 3, scope: !3064, file: !1273, line: 57, type: !133)
!3068 = !DILocation(line: 0, scope: !3064, inlinedAt: !3069)
!3069 = distinct !DILocation(line: 1137, column: 3, scope: !3056, inlinedAt: !3062)
!3070 = !DILocation(line: 59, column: 10, scope: !3064, inlinedAt: !3069)
!3071 = !DILocation(line: 231, column: 7, scope: !3072, inlinedAt: !3045)
!3072 = distinct !DILexicalBlock(scope: !621, file: !562, line: 231, column: 7)
!3073 = !DILocation(line: 231, column: 40, scope: !3072, inlinedAt: !3045)
!3074 = !DILocation(line: 231, column: 45, scope: !3072, inlinedAt: !3045)
!3075 = !DILocation(line: 235, column: 1, scope: !621, inlinedAt: !3045)
!3076 = !DILocation(line: 0, scope: !621, inlinedAt: !3077)
!3077 = distinct !DILocation(line: 358, column: 27, scope: !3046)
!3078 = !DILocation(line: 199, column: 29, scope: !621, inlinedAt: !3077)
!3079 = !DILocation(line: 201, column: 19, scope: !3050, inlinedAt: !3077)
!3080 = !DILocation(line: 201, column: 7, scope: !621, inlinedAt: !3077)
!3081 = !DILocation(line: 229, column: 3, scope: !621, inlinedAt: !3077)
!3082 = !DILocation(line: 230, column: 3, scope: !621, inlinedAt: !3077)
!3083 = !DILocation(line: 230, column: 13, scope: !621, inlinedAt: !3077)
!3084 = !DILocation(line: 0, scope: !3056, inlinedAt: !3085)
!3085 = distinct !DILocation(line: 230, column: 18, scope: !621, inlinedAt: !3077)
!3086 = !DILocation(line: 0, scope: !3064, inlinedAt: !3087)
!3087 = distinct !DILocation(line: 1137, column: 3, scope: !3056, inlinedAt: !3085)
!3088 = !DILocation(line: 59, column: 10, scope: !3064, inlinedAt: !3087)
!3089 = !DILocation(line: 231, column: 7, scope: !3072, inlinedAt: !3077)
!3090 = !DILocation(line: 231, column: 40, scope: !3072, inlinedAt: !3077)
!3091 = !DILocation(line: 231, column: 45, scope: !3072, inlinedAt: !3077)
!3092 = !DILocation(line: 235, column: 1, scope: !621, inlinedAt: !3077)
!3093 = !DILocation(line: 360, column: 14, scope: !2983)
!3094 = !DILocation(line: 360, column: 13, scope: !2984)
!3095 = !DILocation(line: 0, scope: !2982)
!3096 = !DILocation(line: 361, column: 45, scope: !3097)
!3097 = distinct !DILexicalBlock(scope: !2982, file: !562, line: 361, column: 11)
!3098 = !DILocation(line: 361, column: 11, scope: !2982)
!3099 = !DILocation(line: 362, column: 13, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !3101, file: !562, line: 362, column: 13)
!3101 = distinct !DILexicalBlock(scope: !3097, file: !562, line: 362, column: 13)
!3102 = !DILocation(line: 362, column: 13, scope: !3101)
!3103 = !DILocation(line: 361, column: 52, scope: !3097)
!3104 = distinct !{!3104, !3098, !3105, !983}
!3105 = !DILocation(line: 362, column: 13, scope: !2982)
!3106 = !DILocation(line: 260, column: 10, scope: !2956)
!3107 = !DILocation(line: 365, column: 28, scope: !2984)
!3108 = !DILocation(line: 367, column: 7, scope: !2985)
!3109 = !DILocation(line: 370, column: 7, scope: !2985)
!3110 = !DILocation(line: 373, column: 7, scope: !2985)
!3111 = !DILocation(line: 376, column: 12, scope: !3112)
!3112 = distinct !DILexicalBlock(scope: !2985, file: !562, line: 376, column: 11)
!3113 = !DILocation(line: 376, column: 11, scope: !2985)
!3114 = !DILocation(line: 381, column: 12, scope: !3115)
!3115 = distinct !DILexicalBlock(scope: !2985, file: !562, line: 381, column: 11)
!3116 = !DILocation(line: 381, column: 11, scope: !2985)
!3117 = !DILocation(line: 382, column: 9, scope: !3118)
!3118 = distinct !DILexicalBlock(scope: !3119, file: !562, line: 382, column: 9)
!3119 = distinct !DILexicalBlock(scope: !3115, file: !562, line: 382, column: 9)
!3120 = !DILocation(line: 382, column: 9, scope: !3119)
!3121 = !DILocation(line: 389, column: 7, scope: !2985)
!3122 = !DILocation(line: 392, column: 7, scope: !2985)
!3123 = !DILocation(line: 0, scope: !2987)
!3124 = !DILocation(line: 395, column: 8, scope: !2987)
!3125 = !DILocation(line: 309, column: 8, scope: !2956)
!3126 = !DILocation(line: 395, scope: !2987)
!3127 = !DILocation(line: 395, column: 34, scope: !2990)
!3128 = !DILocation(line: 395, column: 26, scope: !2990)
!3129 = !DILocation(line: 395, column: 48, scope: !2990)
!3130 = !DILocation(line: 395, column: 55, scope: !2990)
!3131 = !DILocation(line: 395, column: 3, scope: !2987)
!3132 = !DILocation(line: 395, column: 67, scope: !2990)
!3133 = !DILocation(line: 0, scope: !2989)
!3134 = !DILocation(line: 402, column: 11, scope: !3135)
!3135 = distinct !DILexicalBlock(scope: !2989, file: !562, line: 401, column: 11)
!3136 = !DILocation(line: 404, column: 17, scope: !3135)
!3137 = !DILocation(line: 405, column: 39, scope: !3135)
!3138 = !DILocation(line: 409, column: 32, scope: !3135)
!3139 = !DILocation(line: 405, column: 19, scope: !3135)
!3140 = !DILocation(line: 405, column: 15, scope: !3135)
!3141 = !DILocation(line: 410, column: 11, scope: !3135)
!3142 = !DILocation(line: 410, column: 25, scope: !3135)
!3143 = !DILocalVariable(name: "__s1", arg: 1, scope: !3144, file: !949, line: 974, type: !1085)
!3144 = distinct !DISubprogram(name: "memeq", scope: !949, file: !949, line: 974, type: !2774, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !583, retainedNodes: !3145)
!3145 = !{!3143, !3146, !3147}
!3146 = !DILocalVariable(name: "__s2", arg: 2, scope: !3144, file: !949, line: 974, type: !1085)
!3147 = !DILocalVariable(name: "__n", arg: 3, scope: !3144, file: !949, line: 974, type: !133)
!3148 = !DILocation(line: 0, scope: !3144, inlinedAt: !3149)
!3149 = distinct !DILocation(line: 410, column: 14, scope: !3135)
!3150 = !DILocation(line: 976, column: 11, scope: !3144, inlinedAt: !3149)
!3151 = !DILocation(line: 976, column: 10, scope: !3144, inlinedAt: !3149)
!3152 = !DILocation(line: 401, column: 11, scope: !2989)
!3153 = !DILocation(line: 417, column: 25, scope: !2989)
!3154 = !DILocation(line: 418, column: 7, scope: !2989)
!3155 = !DILocation(line: 421, column: 15, scope: !2996)
!3156 = !DILocation(line: 423, column: 15, scope: !3157)
!3157 = distinct !DILexicalBlock(scope: !3158, file: !562, line: 423, column: 15)
!3158 = distinct !DILexicalBlock(scope: !3159, file: !562, line: 422, column: 13)
!3159 = distinct !DILexicalBlock(scope: !2996, file: !562, line: 421, column: 15)
!3160 = !DILocation(line: 423, column: 15, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !3157, file: !562, line: 423, column: 15)
!3162 = !DILocation(line: 423, column: 15, scope: !3163)
!3163 = distinct !DILexicalBlock(scope: !3164, file: !562, line: 423, column: 15)
!3164 = distinct !DILexicalBlock(scope: !3165, file: !562, line: 423, column: 15)
!3165 = distinct !DILexicalBlock(scope: !3161, file: !562, line: 423, column: 15)
!3166 = !DILocation(line: 423, column: 15, scope: !3164)
!3167 = !DILocation(line: 423, column: 15, scope: !3168)
!3168 = distinct !DILexicalBlock(scope: !3169, file: !562, line: 423, column: 15)
!3169 = distinct !DILexicalBlock(scope: !3165, file: !562, line: 423, column: 15)
!3170 = !DILocation(line: 423, column: 15, scope: !3169)
!3171 = !DILocation(line: 423, column: 15, scope: !3172)
!3172 = distinct !DILexicalBlock(scope: !3173, file: !562, line: 423, column: 15)
!3173 = distinct !DILexicalBlock(scope: !3165, file: !562, line: 423, column: 15)
!3174 = !DILocation(line: 423, column: 15, scope: !3173)
!3175 = !DILocation(line: 423, column: 15, scope: !3165)
!3176 = !DILocation(line: 423, column: 15, scope: !3177)
!3177 = distinct !DILexicalBlock(scope: !3178, file: !562, line: 423, column: 15)
!3178 = distinct !DILexicalBlock(scope: !3157, file: !562, line: 423, column: 15)
!3179 = !DILocation(line: 423, column: 15, scope: !3178)
!3180 = !DILocation(line: 431, column: 19, scope: !3181)
!3181 = distinct !DILexicalBlock(scope: !3158, file: !562, line: 430, column: 19)
!3182 = !DILocation(line: 431, column: 24, scope: !3181)
!3183 = !DILocation(line: 431, column: 28, scope: !3181)
!3184 = !DILocation(line: 431, column: 38, scope: !3181)
!3185 = !DILocation(line: 431, column: 48, scope: !3181)
!3186 = !DILocation(line: 431, column: 59, scope: !3181)
!3187 = !DILocation(line: 433, column: 19, scope: !3188)
!3188 = distinct !DILexicalBlock(scope: !3189, file: !562, line: 433, column: 19)
!3189 = distinct !DILexicalBlock(scope: !3190, file: !562, line: 433, column: 19)
!3190 = distinct !DILexicalBlock(scope: !3181, file: !562, line: 432, column: 17)
!3191 = !DILocation(line: 433, column: 19, scope: !3189)
!3192 = !DILocation(line: 434, column: 19, scope: !3193)
!3193 = distinct !DILexicalBlock(scope: !3194, file: !562, line: 434, column: 19)
!3194 = distinct !DILexicalBlock(scope: !3190, file: !562, line: 434, column: 19)
!3195 = !DILocation(line: 434, column: 19, scope: !3194)
!3196 = !DILocation(line: 435, column: 17, scope: !3190)
!3197 = !DILocation(line: 442, column: 20, scope: !3159)
!3198 = !DILocation(line: 447, column: 11, scope: !2996)
!3199 = !DILocation(line: 450, column: 19, scope: !3200)
!3200 = distinct !DILexicalBlock(scope: !2996, file: !562, line: 448, column: 13)
!3201 = !DILocation(line: 456, column: 19, scope: !3202)
!3202 = distinct !DILexicalBlock(scope: !3200, file: !562, line: 455, column: 19)
!3203 = !DILocation(line: 456, column: 24, scope: !3202)
!3204 = !DILocation(line: 456, column: 28, scope: !3202)
!3205 = !DILocation(line: 456, column: 38, scope: !3202)
!3206 = !DILocation(line: 456, column: 47, scope: !3202)
!3207 = !DILocation(line: 456, column: 41, scope: !3202)
!3208 = !DILocation(line: 456, column: 52, scope: !3202)
!3209 = !DILocation(line: 455, column: 19, scope: !3200)
!3210 = !DILocation(line: 457, column: 25, scope: !3202)
!3211 = !DILocation(line: 457, column: 17, scope: !3202)
!3212 = !DILocation(line: 464, column: 25, scope: !3213)
!3213 = distinct !DILexicalBlock(scope: !3202, file: !562, line: 458, column: 19)
!3214 = !DILocation(line: 468, column: 21, scope: !3215)
!3215 = distinct !DILexicalBlock(scope: !3216, file: !562, line: 468, column: 21)
!3216 = distinct !DILexicalBlock(scope: !3213, file: !562, line: 468, column: 21)
!3217 = !DILocation(line: 468, column: 21, scope: !3216)
!3218 = !DILocation(line: 469, column: 21, scope: !3219)
!3219 = distinct !DILexicalBlock(scope: !3220, file: !562, line: 469, column: 21)
!3220 = distinct !DILexicalBlock(scope: !3213, file: !562, line: 469, column: 21)
!3221 = !DILocation(line: 469, column: 21, scope: !3220)
!3222 = !DILocation(line: 470, column: 21, scope: !3223)
!3223 = distinct !DILexicalBlock(scope: !3224, file: !562, line: 470, column: 21)
!3224 = distinct !DILexicalBlock(scope: !3213, file: !562, line: 470, column: 21)
!3225 = !DILocation(line: 470, column: 21, scope: !3224)
!3226 = !DILocation(line: 471, column: 21, scope: !3227)
!3227 = distinct !DILexicalBlock(scope: !3228, file: !562, line: 471, column: 21)
!3228 = distinct !DILexicalBlock(scope: !3213, file: !562, line: 471, column: 21)
!3229 = !DILocation(line: 471, column: 21, scope: !3228)
!3230 = !DILocation(line: 472, column: 21, scope: !3213)
!3231 = !DILocation(line: 482, column: 33, scope: !3019)
!3232 = !DILocation(line: 483, column: 33, scope: !3019)
!3233 = !DILocation(line: 485, column: 33, scope: !3019)
!3234 = !DILocation(line: 486, column: 33, scope: !3019)
!3235 = !DILocation(line: 487, column: 33, scope: !3019)
!3236 = !DILocation(line: 490, column: 17, scope: !3019)
!3237 = !DILocation(line: 492, column: 21, scope: !3238)
!3238 = distinct !DILexicalBlock(scope: !3239, file: !562, line: 491, column: 15)
!3239 = distinct !DILexicalBlock(scope: !3019, file: !562, line: 490, column: 17)
!3240 = !DILocation(line: 499, column: 35, scope: !3241)
!3241 = distinct !DILexicalBlock(scope: !3019, file: !562, line: 499, column: 17)
!3242 = !DILocation(line: 499, column: 57, scope: !3241)
!3243 = !DILocation(line: 0, scope: !3019)
!3244 = !DILocation(line: 502, column: 11, scope: !3019)
!3245 = !DILocation(line: 504, column: 17, scope: !3246)
!3246 = distinct !DILexicalBlock(scope: !3019, file: !562, line: 503, column: 17)
!3247 = !DILocation(line: 507, column: 11, scope: !3019)
!3248 = !DILocation(line: 508, column: 17, scope: !3019)
!3249 = !DILocation(line: 517, column: 15, scope: !2996)
!3250 = !DILocation(line: 517, column: 40, scope: !3251)
!3251 = distinct !DILexicalBlock(scope: !2996, file: !562, line: 517, column: 15)
!3252 = !DILocation(line: 517, column: 47, scope: !3251)
!3253 = !DILocation(line: 517, column: 18, scope: !3251)
!3254 = !DILocation(line: 521, column: 17, scope: !3255)
!3255 = distinct !DILexicalBlock(scope: !2996, file: !562, line: 521, column: 15)
!3256 = !DILocation(line: 521, column: 15, scope: !2996)
!3257 = !DILocation(line: 525, column: 11, scope: !2996)
!3258 = !DILocation(line: 537, column: 15, scope: !3259)
!3259 = distinct !DILexicalBlock(scope: !2996, file: !562, line: 536, column: 15)
!3260 = !DILocation(line: 544, column: 15, scope: !2996)
!3261 = !DILocation(line: 546, column: 19, scope: !3262)
!3262 = distinct !DILexicalBlock(scope: !3263, file: !562, line: 545, column: 13)
!3263 = distinct !DILexicalBlock(scope: !2996, file: !562, line: 544, column: 15)
!3264 = !DILocation(line: 549, column: 19, scope: !3265)
!3265 = distinct !DILexicalBlock(scope: !3262, file: !562, line: 549, column: 19)
!3266 = !DILocation(line: 549, column: 30, scope: !3265)
!3267 = !DILocation(line: 558, column: 15, scope: !3268)
!3268 = distinct !DILexicalBlock(scope: !3269, file: !562, line: 558, column: 15)
!3269 = distinct !DILexicalBlock(scope: !3262, file: !562, line: 558, column: 15)
!3270 = !DILocation(line: 558, column: 15, scope: !3269)
!3271 = !DILocation(line: 559, column: 15, scope: !3272)
!3272 = distinct !DILexicalBlock(scope: !3273, file: !562, line: 559, column: 15)
!3273 = distinct !DILexicalBlock(scope: !3262, file: !562, line: 559, column: 15)
!3274 = !DILocation(line: 559, column: 15, scope: !3273)
!3275 = !DILocation(line: 560, column: 15, scope: !3276)
!3276 = distinct !DILexicalBlock(scope: !3277, file: !562, line: 560, column: 15)
!3277 = distinct !DILexicalBlock(scope: !3262, file: !562, line: 560, column: 15)
!3278 = !DILocation(line: 560, column: 15, scope: !3277)
!3279 = !DILocation(line: 562, column: 13, scope: !3262)
!3280 = !DILocation(line: 602, column: 17, scope: !2995)
!3281 = !DILocation(line: 0, scope: !2995)
!3282 = !DILocation(line: 605, column: 29, scope: !3283)
!3283 = distinct !DILexicalBlock(scope: !3000, file: !562, line: 603, column: 15)
!3284 = !DILocation(line: 605, column: 27, scope: !3283)
!3285 = !DILocation(line: 668, column: 40, scope: !2995)
!3286 = !DILocation(line: 670, column: 23, scope: !3016)
!3287 = !DILocation(line: 609, column: 17, scope: !2999)
!3288 = !DILocation(line: 609, column: 27, scope: !2999)
!3289 = !DILocation(line: 0, scope: !3056, inlinedAt: !3290)
!3290 = distinct !DILocation(line: 609, column: 32, scope: !2999)
!3291 = !DILocation(line: 0, scope: !3064, inlinedAt: !3292)
!3292 = distinct !DILocation(line: 1137, column: 3, scope: !3056, inlinedAt: !3290)
!3293 = !DILocation(line: 59, column: 10, scope: !3064, inlinedAt: !3292)
!3294 = !DILocation(line: 613, column: 29, scope: !3295)
!3295 = distinct !DILexicalBlock(scope: !2999, file: !562, line: 613, column: 21)
!3296 = !DILocation(line: 613, column: 21, scope: !2999)
!3297 = !DILocation(line: 614, column: 29, scope: !3295)
!3298 = !DILocation(line: 614, column: 19, scope: !3295)
!3299 = !DILocation(line: 618, column: 21, scope: !3002)
!3300 = !DILocation(line: 620, column: 54, scope: !3002)
!3301 = !DILocation(line: 0, scope: !3002)
!3302 = !DILocation(line: 619, column: 36, scope: !3002)
!3303 = !DILocation(line: 621, column: 25, scope: !3002)
!3304 = !DILocation(line: 631, column: 38, scope: !3305)
!3305 = distinct !DILexicalBlock(scope: !3011, file: !562, line: 629, column: 23)
!3306 = !DILocation(line: 631, column: 48, scope: !3305)
!3307 = !DILocation(line: 665, column: 19, scope: !3003)
!3308 = !DILocation(line: 666, column: 15, scope: !3000)
!3309 = !DILocation(line: 626, column: 25, scope: !3310)
!3310 = distinct !DILexicalBlock(scope: !3012, file: !562, line: 624, column: 23)
!3311 = !DILocation(line: 631, column: 51, scope: !3305)
!3312 = !DILocation(line: 631, column: 25, scope: !3305)
!3313 = !DILocation(line: 632, column: 28, scope: !3305)
!3314 = !DILocation(line: 631, column: 34, scope: !3305)
!3315 = distinct !{!3315, !3312, !3313, !983}
!3316 = !DILocation(line: 646, column: 29, scope: !3009)
!3317 = !DILocation(line: 0, scope: !3007)
!3318 = !DILocation(line: 649, column: 49, scope: !3319)
!3319 = distinct !DILexicalBlock(scope: !3007, file: !562, line: 648, column: 29)
!3320 = !DILocation(line: 649, column: 39, scope: !3319)
!3321 = !DILocation(line: 649, column: 31, scope: !3319)
!3322 = !DILocation(line: 648, column: 60, scope: !3319)
!3323 = !DILocation(line: 648, column: 50, scope: !3319)
!3324 = !DILocation(line: 648, column: 29, scope: !3007)
!3325 = distinct !{!3325, !3324, !3326, !983}
!3326 = !DILocation(line: 654, column: 33, scope: !3007)
!3327 = !DILocation(line: 657, column: 43, scope: !3328)
!3328 = distinct !DILexicalBlock(scope: !3010, file: !562, line: 657, column: 29)
!3329 = !DILocalVariable(name: "wc", arg: 1, scope: !3330, file: !3331, line: 865, type: !3334)
!3330 = distinct !DISubprogram(name: "c32isprint", scope: !3331, file: !3331, line: 865, type: !3332, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !583, retainedNodes: !3336)
!3331 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!3332 = !DISubroutineType(types: !3333)
!3333 = !{!87, !3334}
!3334 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !3335, line: 20, baseType: !78)
!3335 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!3336 = !{!3329}
!3337 = !DILocation(line: 0, scope: !3330, inlinedAt: !3338)
!3338 = distinct !DILocation(line: 657, column: 31, scope: !3328)
!3339 = !DILocation(line: 871, column: 10, scope: !3330, inlinedAt: !3338)
!3340 = !DILocation(line: 657, column: 31, scope: !3328)
!3341 = !DILocation(line: 657, column: 29, scope: !3010)
!3342 = !DILocation(line: 664, column: 23, scope: !3002)
!3343 = !DILocation(line: 670, column: 19, scope: !3016)
!3344 = !DILocation(line: 670, column: 45, scope: !3016)
!3345 = !DILocation(line: 674, column: 33, scope: !3015)
!3346 = !DILocation(line: 0, scope: !3015)
!3347 = !DILocation(line: 676, column: 17, scope: !3015)
!3348 = !DILocation(line: 398, column: 12, scope: !2989)
!3349 = !DILocation(line: 678, column: 43, scope: !3350)
!3350 = distinct !DILexicalBlock(scope: !3351, file: !562, line: 678, column: 25)
!3351 = distinct !DILexicalBlock(scope: !3352, file: !562, line: 677, column: 19)
!3352 = distinct !DILexicalBlock(scope: !3353, file: !562, line: 676, column: 17)
!3353 = distinct !DILexicalBlock(scope: !3015, file: !562, line: 676, column: 17)
!3354 = !DILocation(line: 680, column: 25, scope: !3355)
!3355 = distinct !DILexicalBlock(scope: !3356, file: !562, line: 680, column: 25)
!3356 = distinct !DILexicalBlock(scope: !3350, file: !562, line: 679, column: 23)
!3357 = !DILocation(line: 680, column: 25, scope: !3358)
!3358 = distinct !DILexicalBlock(scope: !3355, file: !562, line: 680, column: 25)
!3359 = !DILocation(line: 680, column: 25, scope: !3360)
!3360 = distinct !DILexicalBlock(scope: !3361, file: !562, line: 680, column: 25)
!3361 = distinct !DILexicalBlock(scope: !3362, file: !562, line: 680, column: 25)
!3362 = distinct !DILexicalBlock(scope: !3358, file: !562, line: 680, column: 25)
!3363 = !DILocation(line: 680, column: 25, scope: !3361)
!3364 = !DILocation(line: 680, column: 25, scope: !3365)
!3365 = distinct !DILexicalBlock(scope: !3366, file: !562, line: 680, column: 25)
!3366 = distinct !DILexicalBlock(scope: !3362, file: !562, line: 680, column: 25)
!3367 = !DILocation(line: 680, column: 25, scope: !3366)
!3368 = !DILocation(line: 680, column: 25, scope: !3369)
!3369 = distinct !DILexicalBlock(scope: !3370, file: !562, line: 680, column: 25)
!3370 = distinct !DILexicalBlock(scope: !3362, file: !562, line: 680, column: 25)
!3371 = !DILocation(line: 680, column: 25, scope: !3370)
!3372 = !DILocation(line: 680, column: 25, scope: !3362)
!3373 = !DILocation(line: 680, column: 25, scope: !3374)
!3374 = distinct !DILexicalBlock(scope: !3375, file: !562, line: 680, column: 25)
!3375 = distinct !DILexicalBlock(scope: !3355, file: !562, line: 680, column: 25)
!3376 = !DILocation(line: 680, column: 25, scope: !3375)
!3377 = !DILocation(line: 681, column: 25, scope: !3378)
!3378 = distinct !DILexicalBlock(scope: !3379, file: !562, line: 681, column: 25)
!3379 = distinct !DILexicalBlock(scope: !3356, file: !562, line: 681, column: 25)
!3380 = !DILocation(line: 681, column: 25, scope: !3379)
!3381 = !DILocation(line: 682, column: 25, scope: !3382)
!3382 = distinct !DILexicalBlock(scope: !3383, file: !562, line: 682, column: 25)
!3383 = distinct !DILexicalBlock(scope: !3356, file: !562, line: 682, column: 25)
!3384 = !DILocation(line: 682, column: 25, scope: !3383)
!3385 = !DILocation(line: 683, column: 38, scope: !3356)
!3386 = !DILocation(line: 683, column: 33, scope: !3356)
!3387 = !DILocation(line: 684, column: 23, scope: !3356)
!3388 = !DILocation(line: 685, column: 30, scope: !3389)
!3389 = distinct !DILexicalBlock(scope: !3350, file: !562, line: 685, column: 30)
!3390 = !DILocation(line: 685, column: 30, scope: !3350)
!3391 = !DILocation(line: 687, column: 25, scope: !3392)
!3392 = distinct !DILexicalBlock(scope: !3393, file: !562, line: 687, column: 25)
!3393 = distinct !DILexicalBlock(scope: !3394, file: !562, line: 687, column: 25)
!3394 = distinct !DILexicalBlock(scope: !3389, file: !562, line: 686, column: 23)
!3395 = !DILocation(line: 687, column: 25, scope: !3393)
!3396 = !DILocation(line: 689, column: 23, scope: !3394)
!3397 = !DILocation(line: 690, column: 35, scope: !3398)
!3398 = distinct !DILexicalBlock(scope: !3351, file: !562, line: 690, column: 25)
!3399 = !DILocation(line: 690, column: 30, scope: !3398)
!3400 = !DILocation(line: 690, column: 25, scope: !3351)
!3401 = !DILocation(line: 692, column: 21, scope: !3402)
!3402 = distinct !DILexicalBlock(scope: !3403, file: !562, line: 692, column: 21)
!3403 = distinct !DILexicalBlock(scope: !3351, file: !562, line: 692, column: 21)
!3404 = !DILocation(line: 692, column: 21, scope: !3405)
!3405 = distinct !DILexicalBlock(scope: !3406, file: !562, line: 692, column: 21)
!3406 = distinct !DILexicalBlock(scope: !3407, file: !562, line: 692, column: 21)
!3407 = distinct !DILexicalBlock(scope: !3402, file: !562, line: 692, column: 21)
!3408 = !DILocation(line: 692, column: 21, scope: !3406)
!3409 = !DILocation(line: 692, column: 21, scope: !3410)
!3410 = distinct !DILexicalBlock(scope: !3411, file: !562, line: 692, column: 21)
!3411 = distinct !DILexicalBlock(scope: !3407, file: !562, line: 692, column: 21)
!3412 = !DILocation(line: 692, column: 21, scope: !3411)
!3413 = !DILocation(line: 692, column: 21, scope: !3407)
!3414 = !DILocation(line: 0, scope: !3351)
!3415 = !DILocation(line: 693, column: 21, scope: !3416)
!3416 = distinct !DILexicalBlock(scope: !3417, file: !562, line: 693, column: 21)
!3417 = distinct !DILexicalBlock(scope: !3351, file: !562, line: 693, column: 21)
!3418 = !DILocation(line: 693, column: 21, scope: !3417)
!3419 = !DILocation(line: 694, column: 25, scope: !3351)
!3420 = !DILocation(line: 676, column: 17, scope: !3352)
!3421 = distinct !{!3421, !3422, !3423}
!3422 = !DILocation(line: 676, column: 17, scope: !3353)
!3423 = !DILocation(line: 695, column: 19, scope: !3353)
!3424 = !DILocation(line: 409, column: 30, scope: !3135)
!3425 = !DILocation(line: 702, column: 34, scope: !3426)
!3426 = distinct !DILexicalBlock(scope: !2989, file: !562, line: 702, column: 11)
!3427 = !DILocation(line: 704, column: 14, scope: !3426)
!3428 = !DILocation(line: 705, column: 14, scope: !3426)
!3429 = !DILocation(line: 705, column: 35, scope: !3426)
!3430 = !DILocation(line: 705, column: 17, scope: !3426)
!3431 = !DILocation(line: 705, column: 47, scope: !3426)
!3432 = !DILocation(line: 705, column: 65, scope: !3426)
!3433 = !DILocation(line: 706, column: 11, scope: !3426)
!3434 = !DILocation(line: 702, column: 11, scope: !2989)
!3435 = !DILocation(line: 395, column: 15, scope: !2987)
!3436 = !DILocation(line: 709, column: 5, scope: !2989)
!3437 = !DILocation(line: 710, column: 7, scope: !3438)
!3438 = distinct !DILexicalBlock(scope: !2989, file: !562, line: 710, column: 7)
!3439 = !DILocation(line: 710, column: 7, scope: !3440)
!3440 = distinct !DILexicalBlock(scope: !3438, file: !562, line: 710, column: 7)
!3441 = !DILocation(line: 710, column: 7, scope: !3442)
!3442 = distinct !DILexicalBlock(scope: !3443, file: !562, line: 710, column: 7)
!3443 = distinct !DILexicalBlock(scope: !3444, file: !562, line: 710, column: 7)
!3444 = distinct !DILexicalBlock(scope: !3440, file: !562, line: 710, column: 7)
!3445 = !DILocation(line: 710, column: 7, scope: !3443)
!3446 = !DILocation(line: 710, column: 7, scope: !3447)
!3447 = distinct !DILexicalBlock(scope: !3448, file: !562, line: 710, column: 7)
!3448 = distinct !DILexicalBlock(scope: !3444, file: !562, line: 710, column: 7)
!3449 = !DILocation(line: 710, column: 7, scope: !3448)
!3450 = !DILocation(line: 710, column: 7, scope: !3451)
!3451 = distinct !DILexicalBlock(scope: !3452, file: !562, line: 710, column: 7)
!3452 = distinct !DILexicalBlock(scope: !3444, file: !562, line: 710, column: 7)
!3453 = !DILocation(line: 710, column: 7, scope: !3452)
!3454 = !DILocation(line: 710, column: 7, scope: !3444)
!3455 = !DILocation(line: 710, column: 7, scope: !3456)
!3456 = distinct !DILexicalBlock(scope: !3457, file: !562, line: 710, column: 7)
!3457 = distinct !DILexicalBlock(scope: !3438, file: !562, line: 710, column: 7)
!3458 = !DILocation(line: 710, column: 7, scope: !3457)
!3459 = !DILocation(line: 712, column: 5, scope: !2989)
!3460 = !DILocation(line: 713, column: 7, scope: !3461)
!3461 = distinct !DILexicalBlock(scope: !3462, file: !562, line: 713, column: 7)
!3462 = distinct !DILexicalBlock(scope: !2989, file: !562, line: 713, column: 7)
!3463 = !DILocation(line: 417, column: 21, scope: !2989)
!3464 = !DILocation(line: 713, column: 7, scope: !3465)
!3465 = distinct !DILexicalBlock(scope: !3466, file: !562, line: 713, column: 7)
!3466 = distinct !DILexicalBlock(scope: !3467, file: !562, line: 713, column: 7)
!3467 = distinct !DILexicalBlock(scope: !3461, file: !562, line: 713, column: 7)
!3468 = !DILocation(line: 713, column: 7, scope: !3466)
!3469 = !DILocation(line: 713, column: 7, scope: !3470)
!3470 = distinct !DILexicalBlock(scope: !3471, file: !562, line: 713, column: 7)
!3471 = distinct !DILexicalBlock(scope: !3467, file: !562, line: 713, column: 7)
!3472 = !DILocation(line: 713, column: 7, scope: !3471)
!3473 = !DILocation(line: 713, column: 7, scope: !3467)
!3474 = !DILocation(line: 714, column: 7, scope: !3475)
!3475 = distinct !DILexicalBlock(scope: !3476, file: !562, line: 714, column: 7)
!3476 = distinct !DILexicalBlock(scope: !2989, file: !562, line: 714, column: 7)
!3477 = !DILocation(line: 714, column: 7, scope: !3476)
!3478 = !DILocation(line: 716, column: 13, scope: !3479)
!3479 = distinct !DILexicalBlock(scope: !2989, file: !562, line: 716, column: 11)
!3480 = !DILocation(line: 716, column: 11, scope: !2989)
!3481 = !DILocation(line: 718, column: 5, scope: !2990)
!3482 = !DILocation(line: 395, column: 82, scope: !2990)
!3483 = !DILocation(line: 395, column: 3, scope: !2990)
!3484 = distinct !{!3484, !3131, !3485, !983}
!3485 = !DILocation(line: 718, column: 5, scope: !2987)
!3486 = !DILocation(line: 720, column: 11, scope: !3487)
!3487 = distinct !DILexicalBlock(scope: !2956, file: !562, line: 720, column: 7)
!3488 = !DILocation(line: 720, column: 16, scope: !3487)
!3489 = !DILocation(line: 728, column: 51, scope: !3490)
!3490 = distinct !DILexicalBlock(scope: !2956, file: !562, line: 728, column: 7)
!3491 = !DILocation(line: 731, column: 11, scope: !3492)
!3492 = distinct !DILexicalBlock(scope: !3493, file: !562, line: 731, column: 11)
!3493 = distinct !DILexicalBlock(scope: !3490, file: !562, line: 730, column: 5)
!3494 = !DILocation(line: 731, column: 11, scope: !3493)
!3495 = !DILocation(line: 732, column: 16, scope: !3492)
!3496 = !DILocation(line: 732, column: 9, scope: !3492)
!3497 = !DILocation(line: 736, column: 18, scope: !3498)
!3498 = distinct !DILexicalBlock(scope: !3492, file: !562, line: 736, column: 16)
!3499 = !DILocation(line: 736, column: 29, scope: !3498)
!3500 = !DILocation(line: 745, column: 7, scope: !3501)
!3501 = distinct !DILexicalBlock(scope: !2956, file: !562, line: 745, column: 7)
!3502 = !DILocation(line: 745, column: 20, scope: !3501)
!3503 = !DILocation(line: 746, column: 12, scope: !3504)
!3504 = distinct !DILexicalBlock(scope: !3505, file: !562, line: 746, column: 5)
!3505 = distinct !DILexicalBlock(scope: !3501, file: !562, line: 746, column: 5)
!3506 = !DILocation(line: 746, column: 5, scope: !3505)
!3507 = !DILocation(line: 747, column: 7, scope: !3508)
!3508 = distinct !DILexicalBlock(scope: !3509, file: !562, line: 747, column: 7)
!3509 = distinct !DILexicalBlock(scope: !3504, file: !562, line: 747, column: 7)
!3510 = !DILocation(line: 747, column: 7, scope: !3509)
!3511 = !DILocation(line: 746, column: 39, scope: !3504)
!3512 = distinct !{!3512, !3506, !3513, !983}
!3513 = !DILocation(line: 747, column: 7, scope: !3505)
!3514 = !DILocation(line: 749, column: 11, scope: !3515)
!3515 = distinct !DILexicalBlock(scope: !2956, file: !562, line: 749, column: 7)
!3516 = !DILocation(line: 749, column: 7, scope: !2956)
!3517 = !DILocation(line: 750, column: 5, scope: !3515)
!3518 = !DILocation(line: 750, column: 17, scope: !3515)
!3519 = !DILocation(line: 753, column: 2, scope: !2956)
!3520 = !DILocation(line: 756, column: 51, scope: !3521)
!3521 = distinct !DILexicalBlock(scope: !2956, file: !562, line: 756, column: 7)
!3522 = !DILocation(line: 756, column: 21, scope: !3521)
!3523 = !DILocation(line: 760, column: 42, scope: !2956)
!3524 = !DILocation(line: 758, column: 10, scope: !2956)
!3525 = !DILocation(line: 758, column: 3, scope: !2956)
!3526 = !DILocation(line: 762, column: 1, scope: !2956)
!3527 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1061, file: !1061, line: 98, type: !3528, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !875)
!3528 = !DISubroutineType(types: !3529)
!3529 = !{!133}
!3530 = !DISubprogram(name: "strlen", scope: !1057, file: !1057, line: 407, type: !3531, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !875)
!3531 = !DISubroutineType(types: !3532)
!3532 = !{!135, !136}
!3533 = !DISubprogram(name: "iswprint", scope: !3534, file: !3534, line: 120, type: !3332, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !875)
!3534 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!3535 = distinct !DISubprogram(name: "quotearg_alloc", scope: !562, file: !562, line: 788, type: !3536, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !583, retainedNodes: !3538)
!3536 = !DISubroutineType(types: !3537)
!3537 = !{!130, !136, !133, !2849}
!3538 = !{!3539, !3540, !3541}
!3539 = !DILocalVariable(name: "arg", arg: 1, scope: !3535, file: !562, line: 788, type: !136)
!3540 = !DILocalVariable(name: "argsize", arg: 2, scope: !3535, file: !562, line: 788, type: !133)
!3541 = !DILocalVariable(name: "o", arg: 3, scope: !3535, file: !562, line: 789, type: !2849)
!3542 = !DILocation(line: 0, scope: !3535)
!3543 = !DILocalVariable(name: "arg", arg: 1, scope: !3544, file: !562, line: 801, type: !136)
!3544 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !562, file: !562, line: 801, type: !3545, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !583, retainedNodes: !3547)
!3545 = !DISubroutineType(types: !3546)
!3546 = !{!130, !136, !133, !800, !2849}
!3547 = !{!3543, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555}
!3548 = !DILocalVariable(name: "argsize", arg: 2, scope: !3544, file: !562, line: 801, type: !133)
!3549 = !DILocalVariable(name: "size", arg: 3, scope: !3544, file: !562, line: 801, type: !800)
!3550 = !DILocalVariable(name: "o", arg: 4, scope: !3544, file: !562, line: 802, type: !2849)
!3551 = !DILocalVariable(name: "p", scope: !3544, file: !562, line: 804, type: !2849)
!3552 = !DILocalVariable(name: "saved_errno", scope: !3544, file: !562, line: 805, type: !87)
!3553 = !DILocalVariable(name: "flags", scope: !3544, file: !562, line: 807, type: !87)
!3554 = !DILocalVariable(name: "bufsize", scope: !3544, file: !562, line: 808, type: !133)
!3555 = !DILocalVariable(name: "buf", scope: !3544, file: !562, line: 812, type: !130)
!3556 = !DILocation(line: 0, scope: !3544, inlinedAt: !3557)
!3557 = distinct !DILocation(line: 791, column: 10, scope: !3535)
!3558 = !DILocation(line: 804, column: 37, scope: !3544, inlinedAt: !3557)
!3559 = !DILocation(line: 805, column: 21, scope: !3544, inlinedAt: !3557)
!3560 = !DILocation(line: 807, column: 18, scope: !3544, inlinedAt: !3557)
!3561 = !DILocation(line: 807, column: 24, scope: !3544, inlinedAt: !3557)
!3562 = !DILocation(line: 808, column: 72, scope: !3544, inlinedAt: !3557)
!3563 = !DILocation(line: 809, column: 56, scope: !3544, inlinedAt: !3557)
!3564 = !DILocation(line: 810, column: 49, scope: !3544, inlinedAt: !3557)
!3565 = !DILocation(line: 811, column: 49, scope: !3544, inlinedAt: !3557)
!3566 = !DILocation(line: 808, column: 20, scope: !3544, inlinedAt: !3557)
!3567 = !DILocation(line: 811, column: 62, scope: !3544, inlinedAt: !3557)
!3568 = !DILocation(line: 812, column: 15, scope: !3544, inlinedAt: !3557)
!3569 = !DILocation(line: 813, column: 60, scope: !3544, inlinedAt: !3557)
!3570 = !DILocation(line: 815, column: 32, scope: !3544, inlinedAt: !3557)
!3571 = !DILocation(line: 815, column: 47, scope: !3544, inlinedAt: !3557)
!3572 = !DILocation(line: 813, column: 3, scope: !3544, inlinedAt: !3557)
!3573 = !DILocation(line: 816, column: 9, scope: !3544, inlinedAt: !3557)
!3574 = !DILocation(line: 791, column: 3, scope: !3535)
!3575 = !DILocation(line: 0, scope: !3544)
!3576 = !DILocation(line: 804, column: 37, scope: !3544)
!3577 = !DILocation(line: 805, column: 21, scope: !3544)
!3578 = !DILocation(line: 807, column: 18, scope: !3544)
!3579 = !DILocation(line: 807, column: 27, scope: !3544)
!3580 = !DILocation(line: 807, column: 24, scope: !3544)
!3581 = !DILocation(line: 808, column: 72, scope: !3544)
!3582 = !DILocation(line: 809, column: 56, scope: !3544)
!3583 = !DILocation(line: 810, column: 49, scope: !3544)
!3584 = !DILocation(line: 811, column: 49, scope: !3544)
!3585 = !DILocation(line: 808, column: 20, scope: !3544)
!3586 = !DILocation(line: 811, column: 62, scope: !3544)
!3587 = !DILocation(line: 812, column: 15, scope: !3544)
!3588 = !DILocation(line: 813, column: 60, scope: !3544)
!3589 = !DILocation(line: 815, column: 32, scope: !3544)
!3590 = !DILocation(line: 815, column: 47, scope: !3544)
!3591 = !DILocation(line: 813, column: 3, scope: !3544)
!3592 = !DILocation(line: 816, column: 9, scope: !3544)
!3593 = !DILocation(line: 817, column: 7, scope: !3544)
!3594 = !DILocation(line: 818, column: 11, scope: !3595)
!3595 = distinct !DILexicalBlock(scope: !3544, file: !562, line: 817, column: 7)
!3596 = !DILocation(line: 818, column: 5, scope: !3595)
!3597 = !DILocation(line: 819, column: 3, scope: !3544)
!3598 = distinct !DISubprogram(name: "quotearg_free", scope: !562, file: !562, line: 837, type: !517, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !583, retainedNodes: !3599)
!3599 = !{!3600, !3601}
!3600 = !DILocalVariable(name: "sv", scope: !3598, file: !562, line: 839, type: !644)
!3601 = !DILocalVariable(name: "i", scope: !3602, file: !562, line: 840, type: !87)
!3602 = distinct !DILexicalBlock(scope: !3598, file: !562, line: 840, column: 3)
!3603 = !DILocation(line: 839, column: 24, scope: !3598)
!3604 = !DILocation(line: 0, scope: !3598)
!3605 = !DILocation(line: 0, scope: !3602)
!3606 = !DILocation(line: 840, column: 21, scope: !3607)
!3607 = distinct !DILexicalBlock(scope: !3602, file: !562, line: 840, column: 3)
!3608 = !DILocation(line: 840, column: 3, scope: !3602)
!3609 = !DILocation(line: 842, column: 13, scope: !3610)
!3610 = distinct !DILexicalBlock(scope: !3598, file: !562, line: 842, column: 7)
!3611 = !{!3612, !867, i64 8}
!3612 = !{!"slotvec", !1300, i64 0, !867, i64 8}
!3613 = !DILocation(line: 842, column: 17, scope: !3610)
!3614 = !DILocation(line: 842, column: 7, scope: !3598)
!3615 = !DILocation(line: 841, column: 17, scope: !3607)
!3616 = !DILocation(line: 841, column: 5, scope: !3607)
!3617 = !DILocation(line: 840, column: 32, scope: !3607)
!3618 = distinct !{!3618, !3608, !3619, !983}
!3619 = !DILocation(line: 841, column: 20, scope: !3602)
!3620 = !DILocation(line: 844, column: 7, scope: !3621)
!3621 = distinct !DILexicalBlock(scope: !3610, file: !562, line: 843, column: 5)
!3622 = !DILocation(line: 845, column: 21, scope: !3621)
!3623 = !{!3612, !1300, i64 0}
!3624 = !DILocation(line: 846, column: 20, scope: !3621)
!3625 = !DILocation(line: 847, column: 5, scope: !3621)
!3626 = !DILocation(line: 848, column: 10, scope: !3627)
!3627 = distinct !DILexicalBlock(scope: !3598, file: !562, line: 848, column: 7)
!3628 = !DILocation(line: 848, column: 7, scope: !3598)
!3629 = !DILocation(line: 850, column: 7, scope: !3630)
!3630 = distinct !DILexicalBlock(scope: !3627, file: !562, line: 849, column: 5)
!3631 = !DILocation(line: 851, column: 15, scope: !3630)
!3632 = !DILocation(line: 852, column: 5, scope: !3630)
!3633 = !DILocation(line: 853, column: 10, scope: !3598)
!3634 = !DILocation(line: 854, column: 1, scope: !3598)
!3635 = distinct !DISubprogram(name: "quotearg_n", scope: !562, file: !562, line: 919, type: !1054, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !583, retainedNodes: !3636)
!3636 = !{!3637, !3638}
!3637 = !DILocalVariable(name: "n", arg: 1, scope: !3635, file: !562, line: 919, type: !87)
!3638 = !DILocalVariable(name: "arg", arg: 2, scope: !3635, file: !562, line: 919, type: !136)
!3639 = !DILocation(line: 0, scope: !3635)
!3640 = !DILocation(line: 921, column: 10, scope: !3635)
!3641 = !DILocation(line: 921, column: 3, scope: !3635)
!3642 = distinct !DISubprogram(name: "quotearg_n_options", scope: !562, file: !562, line: 866, type: !3643, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !583, retainedNodes: !3645)
!3643 = !DISubroutineType(types: !3644)
!3644 = !{!130, !87, !136, !133, !2849}
!3645 = !{!3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3656, !3657, !3659, !3660, !3661}
!3646 = !DILocalVariable(name: "n", arg: 1, scope: !3642, file: !562, line: 866, type: !87)
!3647 = !DILocalVariable(name: "arg", arg: 2, scope: !3642, file: !562, line: 866, type: !136)
!3648 = !DILocalVariable(name: "argsize", arg: 3, scope: !3642, file: !562, line: 866, type: !133)
!3649 = !DILocalVariable(name: "options", arg: 4, scope: !3642, file: !562, line: 867, type: !2849)
!3650 = !DILocalVariable(name: "saved_errno", scope: !3642, file: !562, line: 869, type: !87)
!3651 = !DILocalVariable(name: "sv", scope: !3642, file: !562, line: 871, type: !644)
!3652 = !DILocalVariable(name: "nslots_max", scope: !3642, file: !562, line: 873, type: !87)
!3653 = !DILocalVariable(name: "preallocated", scope: !3654, file: !562, line: 879, type: !196)
!3654 = distinct !DILexicalBlock(scope: !3655, file: !562, line: 878, column: 5)
!3655 = distinct !DILexicalBlock(scope: !3642, file: !562, line: 877, column: 7)
!3656 = !DILocalVariable(name: "new_nslots", scope: !3654, file: !562, line: 880, type: !438)
!3657 = !DILocalVariable(name: "size", scope: !3658, file: !562, line: 891, type: !133)
!3658 = distinct !DILexicalBlock(scope: !3642, file: !562, line: 890, column: 3)
!3659 = !DILocalVariable(name: "val", scope: !3658, file: !562, line: 892, type: !130)
!3660 = !DILocalVariable(name: "flags", scope: !3658, file: !562, line: 894, type: !87)
!3661 = !DILocalVariable(name: "qsize", scope: !3658, file: !562, line: 895, type: !133)
!3662 = !DILocation(line: 0, scope: !3642)
!3663 = !DILocation(line: 869, column: 21, scope: !3642)
!3664 = !DILocation(line: 871, column: 24, scope: !3642)
!3665 = !DILocation(line: 874, column: 17, scope: !3666)
!3666 = distinct !DILexicalBlock(scope: !3642, file: !562, line: 874, column: 7)
!3667 = !DILocation(line: 875, column: 5, scope: !3666)
!3668 = !DILocation(line: 877, column: 7, scope: !3655)
!3669 = !DILocation(line: 877, column: 14, scope: !3655)
!3670 = !DILocation(line: 877, column: 7, scope: !3642)
!3671 = !DILocation(line: 879, column: 31, scope: !3654)
!3672 = !DILocation(line: 0, scope: !3654)
!3673 = !DILocation(line: 880, column: 7, scope: !3654)
!3674 = !DILocation(line: 880, column: 26, scope: !3654)
!3675 = !DILocation(line: 880, column: 13, scope: !3654)
!3676 = !DILocation(line: 882, column: 31, scope: !3654)
!3677 = !DILocation(line: 883, column: 33, scope: !3654)
!3678 = !DILocation(line: 883, column: 42, scope: !3654)
!3679 = !DILocation(line: 883, column: 31, scope: !3654)
!3680 = !DILocation(line: 882, column: 22, scope: !3654)
!3681 = !DILocation(line: 882, column: 15, scope: !3654)
!3682 = !DILocation(line: 884, column: 11, scope: !3654)
!3683 = !DILocation(line: 885, column: 15, scope: !3684)
!3684 = distinct !DILexicalBlock(scope: !3654, file: !562, line: 884, column: 11)
!3685 = !{i64 0, i64 8, !1319, i64 8, i64 8, !866}
!3686 = !DILocation(line: 885, column: 9, scope: !3684)
!3687 = !DILocation(line: 886, column: 20, scope: !3654)
!3688 = !DILocation(line: 886, column: 18, scope: !3654)
!3689 = !DILocation(line: 886, column: 32, scope: !3654)
!3690 = !DILocation(line: 886, column: 43, scope: !3654)
!3691 = !DILocation(line: 886, column: 53, scope: !3654)
!3692 = !DILocation(line: 0, scope: !3064, inlinedAt: !3693)
!3693 = distinct !DILocation(line: 886, column: 7, scope: !3654)
!3694 = !DILocation(line: 59, column: 10, scope: !3064, inlinedAt: !3693)
!3695 = !DILocation(line: 887, column: 16, scope: !3654)
!3696 = !DILocation(line: 887, column: 14, scope: !3654)
!3697 = !DILocation(line: 888, column: 5, scope: !3655)
!3698 = !DILocation(line: 888, column: 5, scope: !3654)
!3699 = !DILocation(line: 891, column: 19, scope: !3658)
!3700 = !DILocation(line: 891, column: 25, scope: !3658)
!3701 = !DILocation(line: 0, scope: !3658)
!3702 = !DILocation(line: 892, column: 23, scope: !3658)
!3703 = !DILocation(line: 894, column: 26, scope: !3658)
!3704 = !DILocation(line: 894, column: 32, scope: !3658)
!3705 = !DILocation(line: 896, column: 55, scope: !3658)
!3706 = !DILocation(line: 897, column: 55, scope: !3658)
!3707 = !DILocation(line: 898, column: 55, scope: !3658)
!3708 = !DILocation(line: 899, column: 55, scope: !3658)
!3709 = !DILocation(line: 895, column: 20, scope: !3658)
!3710 = !DILocation(line: 901, column: 14, scope: !3711)
!3711 = distinct !DILexicalBlock(scope: !3658, file: !562, line: 901, column: 9)
!3712 = !DILocation(line: 901, column: 9, scope: !3658)
!3713 = !DILocation(line: 903, column: 35, scope: !3714)
!3714 = distinct !DILexicalBlock(scope: !3711, file: !562, line: 902, column: 7)
!3715 = !DILocation(line: 903, column: 20, scope: !3714)
!3716 = !DILocation(line: 904, column: 17, scope: !3717)
!3717 = distinct !DILexicalBlock(scope: !3714, file: !562, line: 904, column: 13)
!3718 = !DILocation(line: 904, column: 13, scope: !3714)
!3719 = !DILocation(line: 905, column: 11, scope: !3717)
!3720 = !DILocation(line: 906, column: 27, scope: !3714)
!3721 = !DILocation(line: 906, column: 19, scope: !3714)
!3722 = !DILocation(line: 907, column: 69, scope: !3714)
!3723 = !DILocation(line: 909, column: 44, scope: !3714)
!3724 = !DILocation(line: 910, column: 44, scope: !3714)
!3725 = !DILocation(line: 907, column: 9, scope: !3714)
!3726 = !DILocation(line: 911, column: 7, scope: !3714)
!3727 = !DILocation(line: 913, column: 11, scope: !3658)
!3728 = !DILocation(line: 914, column: 5, scope: !3658)
!3729 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !562, file: !562, line: 925, type: !3730, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !583, retainedNodes: !3732)
!3730 = !DISubroutineType(types: !3731)
!3731 = !{!130, !87, !136, !133}
!3732 = !{!3733, !3734, !3735}
!3733 = !DILocalVariable(name: "n", arg: 1, scope: !3729, file: !562, line: 925, type: !87)
!3734 = !DILocalVariable(name: "arg", arg: 2, scope: !3729, file: !562, line: 925, type: !136)
!3735 = !DILocalVariable(name: "argsize", arg: 3, scope: !3729, file: !562, line: 925, type: !133)
!3736 = !DILocation(line: 0, scope: !3729)
!3737 = !DILocation(line: 927, column: 10, scope: !3729)
!3738 = !DILocation(line: 927, column: 3, scope: !3729)
!3739 = distinct !DISubprogram(name: "quotearg", scope: !562, file: !562, line: 931, type: !1063, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !583, retainedNodes: !3740)
!3740 = !{!3741}
!3741 = !DILocalVariable(name: "arg", arg: 1, scope: !3739, file: !562, line: 931, type: !136)
!3742 = !DILocation(line: 0, scope: !3739)
!3743 = !DILocation(line: 0, scope: !3635, inlinedAt: !3744)
!3744 = distinct !DILocation(line: 933, column: 10, scope: !3739)
!3745 = !DILocation(line: 921, column: 10, scope: !3635, inlinedAt: !3744)
!3746 = !DILocation(line: 933, column: 3, scope: !3739)
!3747 = distinct !DISubprogram(name: "quotearg_mem", scope: !562, file: !562, line: 937, type: !3748, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !583, retainedNodes: !3750)
!3748 = !DISubroutineType(types: !3749)
!3749 = !{!130, !136, !133}
!3750 = !{!3751, !3752}
!3751 = !DILocalVariable(name: "arg", arg: 1, scope: !3747, file: !562, line: 937, type: !136)
!3752 = !DILocalVariable(name: "argsize", arg: 2, scope: !3747, file: !562, line: 937, type: !133)
!3753 = !DILocation(line: 0, scope: !3747)
!3754 = !DILocation(line: 0, scope: !3729, inlinedAt: !3755)
!3755 = distinct !DILocation(line: 939, column: 10, scope: !3747)
!3756 = !DILocation(line: 927, column: 10, scope: !3729, inlinedAt: !3755)
!3757 = !DILocation(line: 939, column: 3, scope: !3747)
!3758 = distinct !DISubprogram(name: "quotearg_n_style", scope: !562, file: !562, line: 943, type: !3759, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !583, retainedNodes: !3761)
!3759 = !DISubroutineType(types: !3760)
!3760 = !{!130, !87, !91, !136}
!3761 = !{!3762, !3763, !3764, !3765}
!3762 = !DILocalVariable(name: "n", arg: 1, scope: !3758, file: !562, line: 943, type: !87)
!3763 = !DILocalVariable(name: "s", arg: 2, scope: !3758, file: !562, line: 943, type: !91)
!3764 = !DILocalVariable(name: "arg", arg: 3, scope: !3758, file: !562, line: 943, type: !136)
!3765 = !DILocalVariable(name: "o", scope: !3758, file: !562, line: 945, type: !2850)
!3766 = !DILocation(line: 0, scope: !3758)
!3767 = !DILocation(line: 945, column: 3, scope: !3758)
!3768 = !DILocation(line: 945, column: 32, scope: !3758)
!3769 = !{!3770}
!3770 = distinct !{!3770, !3771, !"quoting_options_from_style: argument 0"}
!3771 = distinct !{!3771, !"quoting_options_from_style"}
!3772 = !DILocation(line: 945, column: 36, scope: !3758)
!3773 = !DILocalVariable(name: "style", arg: 1, scope: !3774, file: !562, line: 183, type: !91)
!3774 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !562, file: !562, line: 183, type: !3775, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !583, retainedNodes: !3777)
!3775 = !DISubroutineType(types: !3776)
!3776 = !{!598, !91}
!3777 = !{!3773, !3778}
!3778 = !DILocalVariable(name: "o", scope: !3774, file: !562, line: 185, type: !598)
!3779 = !DILocation(line: 0, scope: !3774, inlinedAt: !3780)
!3780 = distinct !DILocation(line: 945, column: 36, scope: !3758)
!3781 = !DILocation(line: 185, column: 26, scope: !3774, inlinedAt: !3780)
!3782 = !DILocation(line: 186, column: 13, scope: !3783, inlinedAt: !3780)
!3783 = distinct !DILexicalBlock(scope: !3774, file: !562, line: 186, column: 7)
!3784 = !DILocation(line: 186, column: 7, scope: !3774, inlinedAt: !3780)
!3785 = !DILocation(line: 187, column: 5, scope: !3783, inlinedAt: !3780)
!3786 = !DILocation(line: 188, column: 11, scope: !3774, inlinedAt: !3780)
!3787 = !DILocation(line: 946, column: 10, scope: !3758)
!3788 = !DILocation(line: 947, column: 1, scope: !3758)
!3789 = !DILocation(line: 946, column: 3, scope: !3758)
!3790 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !562, file: !562, line: 950, type: !3791, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !583, retainedNodes: !3793)
!3791 = !DISubroutineType(types: !3792)
!3792 = !{!130, !87, !91, !136, !133}
!3793 = !{!3794, !3795, !3796, !3797, !3798}
!3794 = !DILocalVariable(name: "n", arg: 1, scope: !3790, file: !562, line: 950, type: !87)
!3795 = !DILocalVariable(name: "s", arg: 2, scope: !3790, file: !562, line: 950, type: !91)
!3796 = !DILocalVariable(name: "arg", arg: 3, scope: !3790, file: !562, line: 951, type: !136)
!3797 = !DILocalVariable(name: "argsize", arg: 4, scope: !3790, file: !562, line: 951, type: !133)
!3798 = !DILocalVariable(name: "o", scope: !3790, file: !562, line: 953, type: !2850)
!3799 = !DILocation(line: 0, scope: !3790)
!3800 = !DILocation(line: 953, column: 3, scope: !3790)
!3801 = !DILocation(line: 953, column: 32, scope: !3790)
!3802 = !{!3803}
!3803 = distinct !{!3803, !3804, !"quoting_options_from_style: argument 0"}
!3804 = distinct !{!3804, !"quoting_options_from_style"}
!3805 = !DILocation(line: 953, column: 36, scope: !3790)
!3806 = !DILocation(line: 0, scope: !3774, inlinedAt: !3807)
!3807 = distinct !DILocation(line: 953, column: 36, scope: !3790)
!3808 = !DILocation(line: 185, column: 26, scope: !3774, inlinedAt: !3807)
!3809 = !DILocation(line: 186, column: 13, scope: !3783, inlinedAt: !3807)
!3810 = !DILocation(line: 186, column: 7, scope: !3774, inlinedAt: !3807)
!3811 = !DILocation(line: 187, column: 5, scope: !3783, inlinedAt: !3807)
!3812 = !DILocation(line: 188, column: 11, scope: !3774, inlinedAt: !3807)
!3813 = !DILocation(line: 954, column: 10, scope: !3790)
!3814 = !DILocation(line: 955, column: 1, scope: !3790)
!3815 = !DILocation(line: 954, column: 3, scope: !3790)
!3816 = distinct !DISubprogram(name: "quotearg_style", scope: !562, file: !562, line: 958, type: !3817, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !583, retainedNodes: !3819)
!3817 = !DISubroutineType(types: !3818)
!3818 = !{!130, !91, !136}
!3819 = !{!3820, !3821}
!3820 = !DILocalVariable(name: "s", arg: 1, scope: !3816, file: !562, line: 958, type: !91)
!3821 = !DILocalVariable(name: "arg", arg: 2, scope: !3816, file: !562, line: 958, type: !136)
!3822 = !DILocation(line: 0, scope: !3816)
!3823 = !DILocation(line: 0, scope: !3758, inlinedAt: !3824)
!3824 = distinct !DILocation(line: 960, column: 10, scope: !3816)
!3825 = !DILocation(line: 945, column: 3, scope: !3758, inlinedAt: !3824)
!3826 = !DILocation(line: 945, column: 32, scope: !3758, inlinedAt: !3824)
!3827 = !{!3828}
!3828 = distinct !{!3828, !3829, !"quoting_options_from_style: argument 0"}
!3829 = distinct !{!3829, !"quoting_options_from_style"}
!3830 = !DILocation(line: 945, column: 36, scope: !3758, inlinedAt: !3824)
!3831 = !DILocation(line: 0, scope: !3774, inlinedAt: !3832)
!3832 = distinct !DILocation(line: 945, column: 36, scope: !3758, inlinedAt: !3824)
!3833 = !DILocation(line: 185, column: 26, scope: !3774, inlinedAt: !3832)
!3834 = !DILocation(line: 186, column: 13, scope: !3783, inlinedAt: !3832)
!3835 = !DILocation(line: 186, column: 7, scope: !3774, inlinedAt: !3832)
!3836 = !DILocation(line: 187, column: 5, scope: !3783, inlinedAt: !3832)
!3837 = !DILocation(line: 188, column: 11, scope: !3774, inlinedAt: !3832)
!3838 = !DILocation(line: 946, column: 10, scope: !3758, inlinedAt: !3824)
!3839 = !DILocation(line: 947, column: 1, scope: !3758, inlinedAt: !3824)
!3840 = !DILocation(line: 960, column: 3, scope: !3816)
!3841 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !562, file: !562, line: 964, type: !3842, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !583, retainedNodes: !3844)
!3842 = !DISubroutineType(types: !3843)
!3843 = !{!130, !91, !136, !133}
!3844 = !{!3845, !3846, !3847}
!3845 = !DILocalVariable(name: "s", arg: 1, scope: !3841, file: !562, line: 964, type: !91)
!3846 = !DILocalVariable(name: "arg", arg: 2, scope: !3841, file: !562, line: 964, type: !136)
!3847 = !DILocalVariable(name: "argsize", arg: 3, scope: !3841, file: !562, line: 964, type: !133)
!3848 = !DILocation(line: 0, scope: !3841)
!3849 = !DILocation(line: 0, scope: !3790, inlinedAt: !3850)
!3850 = distinct !DILocation(line: 966, column: 10, scope: !3841)
!3851 = !DILocation(line: 953, column: 3, scope: !3790, inlinedAt: !3850)
!3852 = !DILocation(line: 953, column: 32, scope: !3790, inlinedAt: !3850)
!3853 = !{!3854}
!3854 = distinct !{!3854, !3855, !"quoting_options_from_style: argument 0"}
!3855 = distinct !{!3855, !"quoting_options_from_style"}
!3856 = !DILocation(line: 953, column: 36, scope: !3790, inlinedAt: !3850)
!3857 = !DILocation(line: 0, scope: !3774, inlinedAt: !3858)
!3858 = distinct !DILocation(line: 953, column: 36, scope: !3790, inlinedAt: !3850)
!3859 = !DILocation(line: 185, column: 26, scope: !3774, inlinedAt: !3858)
!3860 = !DILocation(line: 186, column: 13, scope: !3783, inlinedAt: !3858)
!3861 = !DILocation(line: 186, column: 7, scope: !3774, inlinedAt: !3858)
!3862 = !DILocation(line: 187, column: 5, scope: !3783, inlinedAt: !3858)
!3863 = !DILocation(line: 188, column: 11, scope: !3774, inlinedAt: !3858)
!3864 = !DILocation(line: 954, column: 10, scope: !3790, inlinedAt: !3850)
!3865 = !DILocation(line: 955, column: 1, scope: !3790, inlinedAt: !3850)
!3866 = !DILocation(line: 966, column: 3, scope: !3841)
!3867 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !562, file: !562, line: 970, type: !3868, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !583, retainedNodes: !3870)
!3868 = !DISubroutineType(types: !3869)
!3869 = !{!130, !136, !133, !4}
!3870 = !{!3871, !3872, !3873, !3874}
!3871 = !DILocalVariable(name: "arg", arg: 1, scope: !3867, file: !562, line: 970, type: !136)
!3872 = !DILocalVariable(name: "argsize", arg: 2, scope: !3867, file: !562, line: 970, type: !133)
!3873 = !DILocalVariable(name: "ch", arg: 3, scope: !3867, file: !562, line: 970, type: !4)
!3874 = !DILocalVariable(name: "options", scope: !3867, file: !562, line: 972, type: !598)
!3875 = !DILocation(line: 0, scope: !3867)
!3876 = !DILocation(line: 972, column: 3, scope: !3867)
!3877 = !DILocation(line: 972, column: 26, scope: !3867)
!3878 = !DILocation(line: 973, column: 13, scope: !3867)
!3879 = !{i64 0, i64 4, !945, i64 4, i64 4, !936, i64 8, i64 32, !945, i64 40, i64 8, !866, i64 48, i64 8, !866}
!3880 = !DILocation(line: 0, scope: !2869, inlinedAt: !3881)
!3881 = distinct !DILocation(line: 974, column: 3, scope: !3867)
!3882 = !DILocation(line: 147, column: 41, scope: !2869, inlinedAt: !3881)
!3883 = !DILocation(line: 147, column: 62, scope: !2869, inlinedAt: !3881)
!3884 = !DILocation(line: 147, column: 57, scope: !2869, inlinedAt: !3881)
!3885 = !DILocation(line: 148, column: 15, scope: !2869, inlinedAt: !3881)
!3886 = !DILocation(line: 149, column: 21, scope: !2869, inlinedAt: !3881)
!3887 = !DILocation(line: 149, column: 24, scope: !2869, inlinedAt: !3881)
!3888 = !DILocation(line: 150, column: 19, scope: !2869, inlinedAt: !3881)
!3889 = !DILocation(line: 150, column: 24, scope: !2869, inlinedAt: !3881)
!3890 = !DILocation(line: 150, column: 6, scope: !2869, inlinedAt: !3881)
!3891 = !DILocation(line: 975, column: 10, scope: !3867)
!3892 = !DILocation(line: 976, column: 1, scope: !3867)
!3893 = !DILocation(line: 975, column: 3, scope: !3867)
!3894 = distinct !DISubprogram(name: "quotearg_char", scope: !562, file: !562, line: 979, type: !3895, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !583, retainedNodes: !3897)
!3895 = !DISubroutineType(types: !3896)
!3896 = !{!130, !136, !4}
!3897 = !{!3898, !3899}
!3898 = !DILocalVariable(name: "arg", arg: 1, scope: !3894, file: !562, line: 979, type: !136)
!3899 = !DILocalVariable(name: "ch", arg: 2, scope: !3894, file: !562, line: 979, type: !4)
!3900 = !DILocation(line: 0, scope: !3894)
!3901 = !DILocation(line: 0, scope: !3867, inlinedAt: !3902)
!3902 = distinct !DILocation(line: 981, column: 10, scope: !3894)
!3903 = !DILocation(line: 972, column: 3, scope: !3867, inlinedAt: !3902)
!3904 = !DILocation(line: 972, column: 26, scope: !3867, inlinedAt: !3902)
!3905 = !DILocation(line: 973, column: 13, scope: !3867, inlinedAt: !3902)
!3906 = !DILocation(line: 0, scope: !2869, inlinedAt: !3907)
!3907 = distinct !DILocation(line: 974, column: 3, scope: !3867, inlinedAt: !3902)
!3908 = !DILocation(line: 147, column: 41, scope: !2869, inlinedAt: !3907)
!3909 = !DILocation(line: 147, column: 62, scope: !2869, inlinedAt: !3907)
!3910 = !DILocation(line: 147, column: 57, scope: !2869, inlinedAt: !3907)
!3911 = !DILocation(line: 148, column: 15, scope: !2869, inlinedAt: !3907)
!3912 = !DILocation(line: 149, column: 21, scope: !2869, inlinedAt: !3907)
!3913 = !DILocation(line: 149, column: 24, scope: !2869, inlinedAt: !3907)
!3914 = !DILocation(line: 150, column: 19, scope: !2869, inlinedAt: !3907)
!3915 = !DILocation(line: 150, column: 24, scope: !2869, inlinedAt: !3907)
!3916 = !DILocation(line: 150, column: 6, scope: !2869, inlinedAt: !3907)
!3917 = !DILocation(line: 975, column: 10, scope: !3867, inlinedAt: !3902)
!3918 = !DILocation(line: 976, column: 1, scope: !3867, inlinedAt: !3902)
!3919 = !DILocation(line: 981, column: 3, scope: !3894)
!3920 = distinct !DISubprogram(name: "quotearg_colon", scope: !562, file: !562, line: 985, type: !1063, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !583, retainedNodes: !3921)
!3921 = !{!3922}
!3922 = !DILocalVariable(name: "arg", arg: 1, scope: !3920, file: !562, line: 985, type: !136)
!3923 = !DILocation(line: 0, scope: !3920)
!3924 = !DILocation(line: 0, scope: !3894, inlinedAt: !3925)
!3925 = distinct !DILocation(line: 987, column: 10, scope: !3920)
!3926 = !DILocation(line: 0, scope: !3867, inlinedAt: !3927)
!3927 = distinct !DILocation(line: 981, column: 10, scope: !3894, inlinedAt: !3925)
!3928 = !DILocation(line: 972, column: 3, scope: !3867, inlinedAt: !3927)
!3929 = !DILocation(line: 972, column: 26, scope: !3867, inlinedAt: !3927)
!3930 = !DILocation(line: 973, column: 13, scope: !3867, inlinedAt: !3927)
!3931 = !DILocation(line: 0, scope: !2869, inlinedAt: !3932)
!3932 = distinct !DILocation(line: 974, column: 3, scope: !3867, inlinedAt: !3927)
!3933 = !DILocation(line: 147, column: 57, scope: !2869, inlinedAt: !3932)
!3934 = !DILocation(line: 149, column: 21, scope: !2869, inlinedAt: !3932)
!3935 = !DILocation(line: 150, column: 6, scope: !2869, inlinedAt: !3932)
!3936 = !DILocation(line: 975, column: 10, scope: !3867, inlinedAt: !3927)
!3937 = !DILocation(line: 976, column: 1, scope: !3867, inlinedAt: !3927)
!3938 = !DILocation(line: 987, column: 3, scope: !3920)
!3939 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !562, file: !562, line: 991, type: !3748, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !583, retainedNodes: !3940)
!3940 = !{!3941, !3942}
!3941 = !DILocalVariable(name: "arg", arg: 1, scope: !3939, file: !562, line: 991, type: !136)
!3942 = !DILocalVariable(name: "argsize", arg: 2, scope: !3939, file: !562, line: 991, type: !133)
!3943 = !DILocation(line: 0, scope: !3939)
!3944 = !DILocation(line: 0, scope: !3867, inlinedAt: !3945)
!3945 = distinct !DILocation(line: 993, column: 10, scope: !3939)
!3946 = !DILocation(line: 972, column: 3, scope: !3867, inlinedAt: !3945)
!3947 = !DILocation(line: 972, column: 26, scope: !3867, inlinedAt: !3945)
!3948 = !DILocation(line: 973, column: 13, scope: !3867, inlinedAt: !3945)
!3949 = !DILocation(line: 0, scope: !2869, inlinedAt: !3950)
!3950 = distinct !DILocation(line: 974, column: 3, scope: !3867, inlinedAt: !3945)
!3951 = !DILocation(line: 147, column: 57, scope: !2869, inlinedAt: !3950)
!3952 = !DILocation(line: 149, column: 21, scope: !2869, inlinedAt: !3950)
!3953 = !DILocation(line: 150, column: 6, scope: !2869, inlinedAt: !3950)
!3954 = !DILocation(line: 975, column: 10, scope: !3867, inlinedAt: !3945)
!3955 = !DILocation(line: 976, column: 1, scope: !3867, inlinedAt: !3945)
!3956 = !DILocation(line: 993, column: 3, scope: !3939)
!3957 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !562, file: !562, line: 997, type: !3759, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !583, retainedNodes: !3958)
!3958 = !{!3959, !3960, !3961, !3962}
!3959 = !DILocalVariable(name: "n", arg: 1, scope: !3957, file: !562, line: 997, type: !87)
!3960 = !DILocalVariable(name: "s", arg: 2, scope: !3957, file: !562, line: 997, type: !91)
!3961 = !DILocalVariable(name: "arg", arg: 3, scope: !3957, file: !562, line: 997, type: !136)
!3962 = !DILocalVariable(name: "options", scope: !3957, file: !562, line: 999, type: !598)
!3963 = !DILocation(line: 185, column: 26, scope: !3774, inlinedAt: !3964)
!3964 = distinct !DILocation(line: 1000, column: 13, scope: !3957)
!3965 = !DILocation(line: 0, scope: !3957)
!3966 = !DILocation(line: 999, column: 3, scope: !3957)
!3967 = !DILocation(line: 999, column: 26, scope: !3957)
!3968 = !DILocation(line: 0, scope: !3774, inlinedAt: !3964)
!3969 = !DILocation(line: 186, column: 13, scope: !3783, inlinedAt: !3964)
!3970 = !DILocation(line: 186, column: 7, scope: !3774, inlinedAt: !3964)
!3971 = !DILocation(line: 187, column: 5, scope: !3783, inlinedAt: !3964)
!3972 = !{!3973}
!3973 = distinct !{!3973, !3974, !"quoting_options_from_style: argument 0"}
!3974 = distinct !{!3974, !"quoting_options_from_style"}
!3975 = !DILocation(line: 1000, column: 13, scope: !3957)
!3976 = !DILocation(line: 0, scope: !2869, inlinedAt: !3977)
!3977 = distinct !DILocation(line: 1001, column: 3, scope: !3957)
!3978 = !DILocation(line: 147, column: 57, scope: !2869, inlinedAt: !3977)
!3979 = !DILocation(line: 149, column: 21, scope: !2869, inlinedAt: !3977)
!3980 = !DILocation(line: 150, column: 6, scope: !2869, inlinedAt: !3977)
!3981 = !DILocation(line: 1002, column: 10, scope: !3957)
!3982 = !DILocation(line: 1003, column: 1, scope: !3957)
!3983 = !DILocation(line: 1002, column: 3, scope: !3957)
!3984 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !562, file: !562, line: 1006, type: !3985, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !583, retainedNodes: !3987)
!3985 = !DISubroutineType(types: !3986)
!3986 = !{!130, !87, !136, !136, !136}
!3987 = !{!3988, !3989, !3990, !3991}
!3988 = !DILocalVariable(name: "n", arg: 1, scope: !3984, file: !562, line: 1006, type: !87)
!3989 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3984, file: !562, line: 1006, type: !136)
!3990 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3984, file: !562, line: 1007, type: !136)
!3991 = !DILocalVariable(name: "arg", arg: 4, scope: !3984, file: !562, line: 1007, type: !136)
!3992 = !DILocation(line: 0, scope: !3984)
!3993 = !DILocalVariable(name: "n", arg: 1, scope: !3994, file: !562, line: 1014, type: !87)
!3994 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !562, file: !562, line: 1014, type: !3995, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !583, retainedNodes: !3997)
!3995 = !DISubroutineType(types: !3996)
!3996 = !{!130, !87, !136, !136, !136, !133}
!3997 = !{!3993, !3998, !3999, !4000, !4001, !4002}
!3998 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3994, file: !562, line: 1014, type: !136)
!3999 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3994, file: !562, line: 1015, type: !136)
!4000 = !DILocalVariable(name: "arg", arg: 4, scope: !3994, file: !562, line: 1016, type: !136)
!4001 = !DILocalVariable(name: "argsize", arg: 5, scope: !3994, file: !562, line: 1016, type: !133)
!4002 = !DILocalVariable(name: "o", scope: !3994, file: !562, line: 1018, type: !598)
!4003 = !DILocation(line: 0, scope: !3994, inlinedAt: !4004)
!4004 = distinct !DILocation(line: 1009, column: 10, scope: !3984)
!4005 = !DILocation(line: 1018, column: 3, scope: !3994, inlinedAt: !4004)
!4006 = !DILocation(line: 1018, column: 26, scope: !3994, inlinedAt: !4004)
!4007 = !DILocation(line: 1018, column: 30, scope: !3994, inlinedAt: !4004)
!4008 = !DILocation(line: 0, scope: !2909, inlinedAt: !4009)
!4009 = distinct !DILocation(line: 1019, column: 3, scope: !3994, inlinedAt: !4004)
!4010 = !DILocation(line: 174, column: 12, scope: !2909, inlinedAt: !4009)
!4011 = !DILocation(line: 175, column: 8, scope: !2922, inlinedAt: !4009)
!4012 = !DILocation(line: 175, column: 19, scope: !2922, inlinedAt: !4009)
!4013 = !DILocation(line: 176, column: 5, scope: !2922, inlinedAt: !4009)
!4014 = !DILocation(line: 177, column: 6, scope: !2909, inlinedAt: !4009)
!4015 = !DILocation(line: 177, column: 17, scope: !2909, inlinedAt: !4009)
!4016 = !DILocation(line: 178, column: 6, scope: !2909, inlinedAt: !4009)
!4017 = !DILocation(line: 178, column: 18, scope: !2909, inlinedAt: !4009)
!4018 = !DILocation(line: 1020, column: 10, scope: !3994, inlinedAt: !4004)
!4019 = !DILocation(line: 1021, column: 1, scope: !3994, inlinedAt: !4004)
!4020 = !DILocation(line: 1009, column: 3, scope: !3984)
!4021 = !DILocation(line: 0, scope: !3994)
!4022 = !DILocation(line: 1018, column: 3, scope: !3994)
!4023 = !DILocation(line: 1018, column: 26, scope: !3994)
!4024 = !DILocation(line: 1018, column: 30, scope: !3994)
!4025 = !DILocation(line: 0, scope: !2909, inlinedAt: !4026)
!4026 = distinct !DILocation(line: 1019, column: 3, scope: !3994)
!4027 = !DILocation(line: 174, column: 12, scope: !2909, inlinedAt: !4026)
!4028 = !DILocation(line: 175, column: 8, scope: !2922, inlinedAt: !4026)
!4029 = !DILocation(line: 175, column: 19, scope: !2922, inlinedAt: !4026)
!4030 = !DILocation(line: 176, column: 5, scope: !2922, inlinedAt: !4026)
!4031 = !DILocation(line: 177, column: 6, scope: !2909, inlinedAt: !4026)
!4032 = !DILocation(line: 177, column: 17, scope: !2909, inlinedAt: !4026)
!4033 = !DILocation(line: 178, column: 6, scope: !2909, inlinedAt: !4026)
!4034 = !DILocation(line: 178, column: 18, scope: !2909, inlinedAt: !4026)
!4035 = !DILocation(line: 1020, column: 10, scope: !3994)
!4036 = !DILocation(line: 1021, column: 1, scope: !3994)
!4037 = !DILocation(line: 1020, column: 3, scope: !3994)
!4038 = distinct !DISubprogram(name: "quotearg_custom", scope: !562, file: !562, line: 1024, type: !4039, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !583, retainedNodes: !4041)
!4039 = !DISubroutineType(types: !4040)
!4040 = !{!130, !136, !136, !136}
!4041 = !{!4042, !4043, !4044}
!4042 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4038, file: !562, line: 1024, type: !136)
!4043 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4038, file: !562, line: 1024, type: !136)
!4044 = !DILocalVariable(name: "arg", arg: 3, scope: !4038, file: !562, line: 1025, type: !136)
!4045 = !DILocation(line: 0, scope: !4038)
!4046 = !DILocation(line: 0, scope: !3984, inlinedAt: !4047)
!4047 = distinct !DILocation(line: 1027, column: 10, scope: !4038)
!4048 = !DILocation(line: 0, scope: !3994, inlinedAt: !4049)
!4049 = distinct !DILocation(line: 1009, column: 10, scope: !3984, inlinedAt: !4047)
!4050 = !DILocation(line: 1018, column: 3, scope: !3994, inlinedAt: !4049)
!4051 = !DILocation(line: 1018, column: 26, scope: !3994, inlinedAt: !4049)
!4052 = !DILocation(line: 1018, column: 30, scope: !3994, inlinedAt: !4049)
!4053 = !DILocation(line: 0, scope: !2909, inlinedAt: !4054)
!4054 = distinct !DILocation(line: 1019, column: 3, scope: !3994, inlinedAt: !4049)
!4055 = !DILocation(line: 174, column: 12, scope: !2909, inlinedAt: !4054)
!4056 = !DILocation(line: 175, column: 8, scope: !2922, inlinedAt: !4054)
!4057 = !DILocation(line: 175, column: 19, scope: !2922, inlinedAt: !4054)
!4058 = !DILocation(line: 176, column: 5, scope: !2922, inlinedAt: !4054)
!4059 = !DILocation(line: 177, column: 6, scope: !2909, inlinedAt: !4054)
!4060 = !DILocation(line: 177, column: 17, scope: !2909, inlinedAt: !4054)
!4061 = !DILocation(line: 178, column: 6, scope: !2909, inlinedAt: !4054)
!4062 = !DILocation(line: 178, column: 18, scope: !2909, inlinedAt: !4054)
!4063 = !DILocation(line: 1020, column: 10, scope: !3994, inlinedAt: !4049)
!4064 = !DILocation(line: 1021, column: 1, scope: !3994, inlinedAt: !4049)
!4065 = !DILocation(line: 1027, column: 3, scope: !4038)
!4066 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !562, file: !562, line: 1031, type: !4067, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !583, retainedNodes: !4069)
!4067 = !DISubroutineType(types: !4068)
!4068 = !{!130, !136, !136, !136, !133}
!4069 = !{!4070, !4071, !4072, !4073}
!4070 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4066, file: !562, line: 1031, type: !136)
!4071 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4066, file: !562, line: 1031, type: !136)
!4072 = !DILocalVariable(name: "arg", arg: 3, scope: !4066, file: !562, line: 1032, type: !136)
!4073 = !DILocalVariable(name: "argsize", arg: 4, scope: !4066, file: !562, line: 1032, type: !133)
!4074 = !DILocation(line: 0, scope: !4066)
!4075 = !DILocation(line: 0, scope: !3994, inlinedAt: !4076)
!4076 = distinct !DILocation(line: 1034, column: 10, scope: !4066)
!4077 = !DILocation(line: 1018, column: 3, scope: !3994, inlinedAt: !4076)
!4078 = !DILocation(line: 1018, column: 26, scope: !3994, inlinedAt: !4076)
!4079 = !DILocation(line: 1018, column: 30, scope: !3994, inlinedAt: !4076)
!4080 = !DILocation(line: 0, scope: !2909, inlinedAt: !4081)
!4081 = distinct !DILocation(line: 1019, column: 3, scope: !3994, inlinedAt: !4076)
!4082 = !DILocation(line: 174, column: 12, scope: !2909, inlinedAt: !4081)
!4083 = !DILocation(line: 175, column: 8, scope: !2922, inlinedAt: !4081)
!4084 = !DILocation(line: 175, column: 19, scope: !2922, inlinedAt: !4081)
!4085 = !DILocation(line: 176, column: 5, scope: !2922, inlinedAt: !4081)
!4086 = !DILocation(line: 177, column: 6, scope: !2909, inlinedAt: !4081)
!4087 = !DILocation(line: 177, column: 17, scope: !2909, inlinedAt: !4081)
!4088 = !DILocation(line: 178, column: 6, scope: !2909, inlinedAt: !4081)
!4089 = !DILocation(line: 178, column: 18, scope: !2909, inlinedAt: !4081)
!4090 = !DILocation(line: 1020, column: 10, scope: !3994, inlinedAt: !4076)
!4091 = !DILocation(line: 1021, column: 1, scope: !3994, inlinedAt: !4076)
!4092 = !DILocation(line: 1034, column: 3, scope: !4066)
!4093 = distinct !DISubprogram(name: "quote_n_mem", scope: !562, file: !562, line: 1049, type: !4094, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !583, retainedNodes: !4096)
!4094 = !DISubroutineType(types: !4095)
!4095 = !{!136, !87, !136, !133}
!4096 = !{!4097, !4098, !4099}
!4097 = !DILocalVariable(name: "n", arg: 1, scope: !4093, file: !562, line: 1049, type: !87)
!4098 = !DILocalVariable(name: "arg", arg: 2, scope: !4093, file: !562, line: 1049, type: !136)
!4099 = !DILocalVariable(name: "argsize", arg: 3, scope: !4093, file: !562, line: 1049, type: !133)
!4100 = !DILocation(line: 0, scope: !4093)
!4101 = !DILocation(line: 1051, column: 10, scope: !4093)
!4102 = !DILocation(line: 1051, column: 3, scope: !4093)
!4103 = distinct !DISubprogram(name: "quote_mem", scope: !562, file: !562, line: 1055, type: !4104, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !583, retainedNodes: !4106)
!4104 = !DISubroutineType(types: !4105)
!4105 = !{!136, !136, !133}
!4106 = !{!4107, !4108}
!4107 = !DILocalVariable(name: "arg", arg: 1, scope: !4103, file: !562, line: 1055, type: !136)
!4108 = !DILocalVariable(name: "argsize", arg: 2, scope: !4103, file: !562, line: 1055, type: !133)
!4109 = !DILocation(line: 0, scope: !4103)
!4110 = !DILocation(line: 0, scope: !4093, inlinedAt: !4111)
!4111 = distinct !DILocation(line: 1057, column: 10, scope: !4103)
!4112 = !DILocation(line: 1051, column: 10, scope: !4093, inlinedAt: !4111)
!4113 = !DILocation(line: 1057, column: 3, scope: !4103)
!4114 = distinct !DISubprogram(name: "quote_n", scope: !562, file: !562, line: 1061, type: !4115, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !583, retainedNodes: !4117)
!4115 = !DISubroutineType(types: !4116)
!4116 = !{!136, !87, !136}
!4117 = !{!4118, !4119}
!4118 = !DILocalVariable(name: "n", arg: 1, scope: !4114, file: !562, line: 1061, type: !87)
!4119 = !DILocalVariable(name: "arg", arg: 2, scope: !4114, file: !562, line: 1061, type: !136)
!4120 = !DILocation(line: 0, scope: !4114)
!4121 = !DILocation(line: 0, scope: !4093, inlinedAt: !4122)
!4122 = distinct !DILocation(line: 1063, column: 10, scope: !4114)
!4123 = !DILocation(line: 1051, column: 10, scope: !4093, inlinedAt: !4122)
!4124 = !DILocation(line: 1063, column: 3, scope: !4114)
!4125 = distinct !DISubprogram(name: "quote", scope: !562, file: !562, line: 1067, type: !4126, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !583, retainedNodes: !4128)
!4126 = !DISubroutineType(types: !4127)
!4127 = !{!136, !136}
!4128 = !{!4129}
!4129 = !DILocalVariable(name: "arg", arg: 1, scope: !4125, file: !562, line: 1067, type: !136)
!4130 = !DILocation(line: 0, scope: !4125)
!4131 = !DILocation(line: 0, scope: !4114, inlinedAt: !4132)
!4132 = distinct !DILocation(line: 1069, column: 10, scope: !4125)
!4133 = !DILocation(line: 0, scope: !4093, inlinedAt: !4134)
!4134 = distinct !DILocation(line: 1063, column: 10, scope: !4114, inlinedAt: !4132)
!4135 = !DILocation(line: 1051, column: 10, scope: !4093, inlinedAt: !4134)
!4136 = !DILocation(line: 1069, column: 3, scope: !4125)
!4137 = distinct !DISubprogram(name: "version_etc_arn", scope: !657, file: !657, line: 61, type: !4138, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !787, retainedNodes: !4175)
!4138 = !DISubroutineType(types: !4139)
!4139 = !{null, !4140, !136, !136, !136, !4174, !133}
!4140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4141, size: 64)
!4141 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !211, line: 7, baseType: !4142)
!4142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !213, line: 49, size: 1728, elements: !4143)
!4143 = !{!4144, !4145, !4146, !4147, !4148, !4149, !4150, !4151, !4152, !4153, !4154, !4155, !4156, !4157, !4159, !4160, !4161, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4170, !4171, !4172, !4173}
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4142, file: !213, line: 51, baseType: !87, size: 32)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4142, file: !213, line: 54, baseType: !130, size: 64, offset: 64)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4142, file: !213, line: 55, baseType: !130, size: 64, offset: 128)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4142, file: !213, line: 56, baseType: !130, size: 64, offset: 192)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4142, file: !213, line: 57, baseType: !130, size: 64, offset: 256)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4142, file: !213, line: 58, baseType: !130, size: 64, offset: 320)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4142, file: !213, line: 59, baseType: !130, size: 64, offset: 384)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4142, file: !213, line: 60, baseType: !130, size: 64, offset: 448)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4142, file: !213, line: 61, baseType: !130, size: 64, offset: 512)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4142, file: !213, line: 64, baseType: !130, size: 64, offset: 576)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4142, file: !213, line: 65, baseType: !130, size: 64, offset: 640)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4142, file: !213, line: 66, baseType: !130, size: 64, offset: 704)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4142, file: !213, line: 68, baseType: !228, size: 64, offset: 768)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4142, file: !213, line: 70, baseType: !4158, size: 64, offset: 832)
!4158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4142, size: 64)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4142, file: !213, line: 72, baseType: !87, size: 32, offset: 896)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4142, file: !213, line: 73, baseType: !87, size: 32, offset: 928)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4142, file: !213, line: 74, baseType: !235, size: 64, offset: 960)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4142, file: !213, line: 77, baseType: !132, size: 16, offset: 1024)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4142, file: !213, line: 78, baseType: !240, size: 8, offset: 1040)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4142, file: !213, line: 79, baseType: !54, size: 8, offset: 1048)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4142, file: !213, line: 81, baseType: !243, size: 64, offset: 1088)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4142, file: !213, line: 89, baseType: !246, size: 64, offset: 1152)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4142, file: !213, line: 91, baseType: !248, size: 64, offset: 1216)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4142, file: !213, line: 92, baseType: !251, size: 64, offset: 1280)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4142, file: !213, line: 93, baseType: !4158, size: 64, offset: 1344)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4142, file: !213, line: 94, baseType: !131, size: 64, offset: 1408)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4142, file: !213, line: 95, baseType: !133, size: 64, offset: 1472)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4142, file: !213, line: 96, baseType: !87, size: 32, offset: 1536)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4142, file: !213, line: 98, baseType: !258, size: 160, offset: 1568)
!4174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!4175 = !{!4176, !4177, !4178, !4179, !4180, !4181}
!4176 = !DILocalVariable(name: "stream", arg: 1, scope: !4137, file: !657, line: 61, type: !4140)
!4177 = !DILocalVariable(name: "command_name", arg: 2, scope: !4137, file: !657, line: 62, type: !136)
!4178 = !DILocalVariable(name: "package", arg: 3, scope: !4137, file: !657, line: 62, type: !136)
!4179 = !DILocalVariable(name: "version", arg: 4, scope: !4137, file: !657, line: 63, type: !136)
!4180 = !DILocalVariable(name: "authors", arg: 5, scope: !4137, file: !657, line: 64, type: !4174)
!4181 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4137, file: !657, line: 64, type: !133)
!4182 = !DILocation(line: 0, scope: !4137)
!4183 = !DILocation(line: 66, column: 7, scope: !4184)
!4184 = distinct !DILexicalBlock(scope: !4137, file: !657, line: 66, column: 7)
!4185 = !DILocation(line: 66, column: 7, scope: !4137)
!4186 = !DILocation(line: 67, column: 5, scope: !4184)
!4187 = !DILocation(line: 69, column: 5, scope: !4184)
!4188 = !DILocation(line: 83, column: 3, scope: !4137)
!4189 = !DILocation(line: 85, column: 3, scope: !4137)
!4190 = !DILocation(line: 88, column: 3, scope: !4137)
!4191 = !DILocation(line: 95, column: 3, scope: !4137)
!4192 = !DILocation(line: 97, column: 3, scope: !4137)
!4193 = !DILocation(line: 105, column: 7, scope: !4194)
!4194 = distinct !DILexicalBlock(scope: !4137, file: !657, line: 98, column: 5)
!4195 = !DILocation(line: 106, column: 7, scope: !4194)
!4196 = !DILocation(line: 109, column: 7, scope: !4194)
!4197 = !DILocation(line: 110, column: 7, scope: !4194)
!4198 = !DILocation(line: 113, column: 7, scope: !4194)
!4199 = !DILocation(line: 115, column: 7, scope: !4194)
!4200 = !DILocation(line: 120, column: 7, scope: !4194)
!4201 = !DILocation(line: 122, column: 7, scope: !4194)
!4202 = !DILocation(line: 127, column: 7, scope: !4194)
!4203 = !DILocation(line: 129, column: 7, scope: !4194)
!4204 = !DILocation(line: 134, column: 7, scope: !4194)
!4205 = !DILocation(line: 137, column: 7, scope: !4194)
!4206 = !DILocation(line: 142, column: 7, scope: !4194)
!4207 = !DILocation(line: 145, column: 7, scope: !4194)
!4208 = !DILocation(line: 150, column: 7, scope: !4194)
!4209 = !DILocation(line: 154, column: 7, scope: !4194)
!4210 = !DILocation(line: 159, column: 7, scope: !4194)
!4211 = !DILocation(line: 163, column: 7, scope: !4194)
!4212 = !DILocation(line: 170, column: 7, scope: !4194)
!4213 = !DILocation(line: 174, column: 7, scope: !4194)
!4214 = !DILocation(line: 176, column: 1, scope: !4137)
!4215 = distinct !DISubprogram(name: "version_etc_ar", scope: !657, file: !657, line: 183, type: !4216, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !787, retainedNodes: !4218)
!4216 = !DISubroutineType(types: !4217)
!4217 = !{null, !4140, !136, !136, !136, !4174}
!4218 = !{!4219, !4220, !4221, !4222, !4223, !4224}
!4219 = !DILocalVariable(name: "stream", arg: 1, scope: !4215, file: !657, line: 183, type: !4140)
!4220 = !DILocalVariable(name: "command_name", arg: 2, scope: !4215, file: !657, line: 184, type: !136)
!4221 = !DILocalVariable(name: "package", arg: 3, scope: !4215, file: !657, line: 184, type: !136)
!4222 = !DILocalVariable(name: "version", arg: 4, scope: !4215, file: !657, line: 185, type: !136)
!4223 = !DILocalVariable(name: "authors", arg: 5, scope: !4215, file: !657, line: 185, type: !4174)
!4224 = !DILocalVariable(name: "n_authors", scope: !4215, file: !657, line: 187, type: !133)
!4225 = !DILocation(line: 0, scope: !4215)
!4226 = !DILocation(line: 189, column: 8, scope: !4227)
!4227 = distinct !DILexicalBlock(scope: !4215, file: !657, line: 189, column: 3)
!4228 = !DILocation(line: 189, scope: !4227)
!4229 = !DILocation(line: 189, column: 23, scope: !4230)
!4230 = distinct !DILexicalBlock(scope: !4227, file: !657, line: 189, column: 3)
!4231 = !DILocation(line: 189, column: 3, scope: !4227)
!4232 = !DILocation(line: 189, column: 52, scope: !4230)
!4233 = distinct !{!4233, !4231, !4234, !983}
!4234 = !DILocation(line: 190, column: 5, scope: !4227)
!4235 = !DILocation(line: 191, column: 3, scope: !4215)
!4236 = !DILocation(line: 192, column: 1, scope: !4215)
!4237 = distinct !DISubprogram(name: "version_etc_va", scope: !657, file: !657, line: 199, type: !4238, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !787, retainedNodes: !4248)
!4238 = !DISubroutineType(types: !4239)
!4239 = !{null, !4140, !136, !136, !136, !4240}
!4240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4241, size: 64)
!4241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !4242)
!4242 = !{!4243, !4245, !4246, !4247}
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4241, file: !4244, line: 192, baseType: !78, size: 32)
!4244 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4241, file: !4244, line: 192, baseType: !78, size: 32, offset: 32)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4241, file: !4244, line: 192, baseType: !131, size: 64, offset: 64)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4241, file: !4244, line: 192, baseType: !131, size: 64, offset: 128)
!4248 = !{!4249, !4250, !4251, !4252, !4253, !4254, !4255}
!4249 = !DILocalVariable(name: "stream", arg: 1, scope: !4237, file: !657, line: 199, type: !4140)
!4250 = !DILocalVariable(name: "command_name", arg: 2, scope: !4237, file: !657, line: 200, type: !136)
!4251 = !DILocalVariable(name: "package", arg: 3, scope: !4237, file: !657, line: 200, type: !136)
!4252 = !DILocalVariable(name: "version", arg: 4, scope: !4237, file: !657, line: 201, type: !136)
!4253 = !DILocalVariable(name: "authors", arg: 5, scope: !4237, file: !657, line: 201, type: !4240)
!4254 = !DILocalVariable(name: "n_authors", scope: !4237, file: !657, line: 203, type: !133)
!4255 = !DILocalVariable(name: "authtab", scope: !4237, file: !657, line: 204, type: !4256)
!4256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 640, elements: !60)
!4257 = !DILocation(line: 0, scope: !4237)
!4258 = !DILocation(line: 204, column: 3, scope: !4237)
!4259 = !DILocation(line: 204, column: 15, scope: !4237)
!4260 = !DILocation(line: 208, column: 35, scope: !4261)
!4261 = distinct !DILexicalBlock(scope: !4262, file: !657, line: 206, column: 3)
!4262 = distinct !DILexicalBlock(scope: !4237, file: !657, line: 206, column: 3)
!4263 = !DILocation(line: 208, column: 33, scope: !4261)
!4264 = !DILocation(line: 208, column: 67, scope: !4261)
!4265 = !DILocation(line: 206, column: 3, scope: !4262)
!4266 = !DILocation(line: 208, column: 14, scope: !4261)
!4267 = !DILocation(line: 0, scope: !4262)
!4268 = !DILocation(line: 211, column: 3, scope: !4237)
!4269 = !DILocation(line: 213, column: 1, scope: !4237)
!4270 = distinct !DISubprogram(name: "version_etc", scope: !657, file: !657, line: 230, type: !4271, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !787, retainedNodes: !4273)
!4271 = !DISubroutineType(types: !4272)
!4272 = !{null, !4140, !136, !136, !136, null}
!4273 = !{!4274, !4275, !4276, !4277, !4278}
!4274 = !DILocalVariable(name: "stream", arg: 1, scope: !4270, file: !657, line: 230, type: !4140)
!4275 = !DILocalVariable(name: "command_name", arg: 2, scope: !4270, file: !657, line: 231, type: !136)
!4276 = !DILocalVariable(name: "package", arg: 3, scope: !4270, file: !657, line: 231, type: !136)
!4277 = !DILocalVariable(name: "version", arg: 4, scope: !4270, file: !657, line: 232, type: !136)
!4278 = !DILocalVariable(name: "authors", scope: !4270, file: !657, line: 234, type: !4279)
!4279 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !931, line: 52, baseType: !4280)
!4280 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2370, line: 14, baseType: !4281)
!4281 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !4244, baseType: !4282)
!4282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4241, size: 192, elements: !55)
!4283 = !DILocation(line: 0, scope: !4270)
!4284 = !DILocation(line: 234, column: 3, scope: !4270)
!4285 = !DILocation(line: 234, column: 11, scope: !4270)
!4286 = !DILocation(line: 235, column: 3, scope: !4270)
!4287 = !DILocation(line: 236, column: 3, scope: !4270)
!4288 = !DILocation(line: 237, column: 3, scope: !4270)
!4289 = !DILocation(line: 238, column: 1, scope: !4270)
!4290 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !657, file: !657, line: 241, type: !517, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !787, retainedNodes: !875)
!4291 = !DILocation(line: 243, column: 3, scope: !4290)
!4292 = !DILocation(line: 248, column: 3, scope: !4290)
!4293 = !DILocation(line: 254, column: 3, scope: !4290)
!4294 = !DILocation(line: 259, column: 3, scope: !4290)
!4295 = !DILocation(line: 261, column: 1, scope: !4290)
!4296 = distinct !DISubprogram(name: "xnrealloc", scope: !4297, file: !4297, line: 147, type: !4298, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !793, retainedNodes: !4300)
!4297 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!4298 = !DISubroutineType(types: !4299)
!4299 = !{!131, !131, !133, !133}
!4300 = !{!4301, !4302, !4303}
!4301 = !DILocalVariable(name: "p", arg: 1, scope: !4296, file: !4297, line: 147, type: !131)
!4302 = !DILocalVariable(name: "n", arg: 2, scope: !4296, file: !4297, line: 147, type: !133)
!4303 = !DILocalVariable(name: "s", arg: 3, scope: !4296, file: !4297, line: 147, type: !133)
!4304 = !DILocation(line: 0, scope: !4296)
!4305 = !DILocalVariable(name: "p", arg: 1, scope: !4306, file: !794, line: 83, type: !131)
!4306 = distinct !DISubprogram(name: "xreallocarray", scope: !794, file: !794, line: 83, type: !4298, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !793, retainedNodes: !4307)
!4307 = !{!4305, !4308, !4309}
!4308 = !DILocalVariable(name: "n", arg: 2, scope: !4306, file: !794, line: 83, type: !133)
!4309 = !DILocalVariable(name: "s", arg: 3, scope: !4306, file: !794, line: 83, type: !133)
!4310 = !DILocation(line: 0, scope: !4306, inlinedAt: !4311)
!4311 = distinct !DILocation(line: 149, column: 10, scope: !4296)
!4312 = !DILocation(line: 85, column: 25, scope: !4306, inlinedAt: !4311)
!4313 = !DILocalVariable(name: "p", arg: 1, scope: !4314, file: !794, line: 37, type: !131)
!4314 = distinct !DISubprogram(name: "check_nonnull", scope: !794, file: !794, line: 37, type: !4315, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !793, retainedNodes: !4317)
!4315 = !DISubroutineType(types: !4316)
!4316 = !{!131, !131}
!4317 = !{!4313}
!4318 = !DILocation(line: 0, scope: !4314, inlinedAt: !4319)
!4319 = distinct !DILocation(line: 85, column: 10, scope: !4306, inlinedAt: !4311)
!4320 = !DILocation(line: 39, column: 8, scope: !4321, inlinedAt: !4319)
!4321 = distinct !DILexicalBlock(scope: !4314, file: !794, line: 39, column: 7)
!4322 = !DILocation(line: 39, column: 7, scope: !4314, inlinedAt: !4319)
!4323 = !DILocation(line: 40, column: 5, scope: !4321, inlinedAt: !4319)
!4324 = !DILocation(line: 149, column: 3, scope: !4296)
!4325 = !DILocation(line: 0, scope: !4306)
!4326 = !DILocation(line: 85, column: 25, scope: !4306)
!4327 = !DILocation(line: 0, scope: !4314, inlinedAt: !4328)
!4328 = distinct !DILocation(line: 85, column: 10, scope: !4306)
!4329 = !DILocation(line: 39, column: 8, scope: !4321, inlinedAt: !4328)
!4330 = !DILocation(line: 39, column: 7, scope: !4314, inlinedAt: !4328)
!4331 = !DILocation(line: 40, column: 5, scope: !4321, inlinedAt: !4328)
!4332 = !DILocation(line: 85, column: 3, scope: !4306)
!4333 = distinct !DISubprogram(name: "xmalloc", scope: !794, file: !794, line: 47, type: !1784, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !793, retainedNodes: !4334)
!4334 = !{!4335}
!4335 = !DILocalVariable(name: "s", arg: 1, scope: !4333, file: !794, line: 47, type: !133)
!4336 = !DILocation(line: 0, scope: !4333)
!4337 = !DILocation(line: 49, column: 25, scope: !4333)
!4338 = !DILocation(line: 0, scope: !4314, inlinedAt: !4339)
!4339 = distinct !DILocation(line: 49, column: 10, scope: !4333)
!4340 = !DILocation(line: 39, column: 8, scope: !4321, inlinedAt: !4339)
!4341 = !DILocation(line: 39, column: 7, scope: !4314, inlinedAt: !4339)
!4342 = !DILocation(line: 40, column: 5, scope: !4321, inlinedAt: !4339)
!4343 = !DILocation(line: 49, column: 3, scope: !4333)
!4344 = distinct !DISubprogram(name: "ximalloc", scope: !794, file: !794, line: 53, type: !1770, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !793, retainedNodes: !4345)
!4345 = !{!4346}
!4346 = !DILocalVariable(name: "s", arg: 1, scope: !4344, file: !794, line: 53, type: !438)
!4347 = !DILocation(line: 0, scope: !4344)
!4348 = !DILocalVariable(name: "s", arg: 1, scope: !4349, file: !1769, line: 55, type: !438)
!4349 = distinct !DISubprogram(name: "imalloc", scope: !1769, file: !1769, line: 55, type: !1770, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !793, retainedNodes: !4350)
!4350 = !{!4348}
!4351 = !DILocation(line: 0, scope: !4349, inlinedAt: !4352)
!4352 = distinct !DILocation(line: 55, column: 25, scope: !4344)
!4353 = !DILocation(line: 57, column: 26, scope: !4349, inlinedAt: !4352)
!4354 = !DILocation(line: 0, scope: !4314, inlinedAt: !4355)
!4355 = distinct !DILocation(line: 55, column: 10, scope: !4344)
!4356 = !DILocation(line: 39, column: 8, scope: !4321, inlinedAt: !4355)
!4357 = !DILocation(line: 39, column: 7, scope: !4314, inlinedAt: !4355)
!4358 = !DILocation(line: 40, column: 5, scope: !4321, inlinedAt: !4355)
!4359 = !DILocation(line: 55, column: 3, scope: !4344)
!4360 = distinct !DISubprogram(name: "xcharalloc", scope: !794, file: !794, line: 59, type: !4361, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !793, retainedNodes: !4363)
!4361 = !DISubroutineType(types: !4362)
!4362 = !{!130, !133}
!4363 = !{!4364}
!4364 = !DILocalVariable(name: "n", arg: 1, scope: !4360, file: !794, line: 59, type: !133)
!4365 = !DILocation(line: 0, scope: !4360)
!4366 = !DILocation(line: 0, scope: !4333, inlinedAt: !4367)
!4367 = distinct !DILocation(line: 61, column: 10, scope: !4360)
!4368 = !DILocation(line: 49, column: 25, scope: !4333, inlinedAt: !4367)
!4369 = !DILocation(line: 0, scope: !4314, inlinedAt: !4370)
!4370 = distinct !DILocation(line: 49, column: 10, scope: !4333, inlinedAt: !4367)
!4371 = !DILocation(line: 39, column: 8, scope: !4321, inlinedAt: !4370)
!4372 = !DILocation(line: 39, column: 7, scope: !4314, inlinedAt: !4370)
!4373 = !DILocation(line: 40, column: 5, scope: !4321, inlinedAt: !4370)
!4374 = !DILocation(line: 61, column: 3, scope: !4360)
!4375 = distinct !DISubprogram(name: "xrealloc", scope: !794, file: !794, line: 68, type: !4376, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !793, retainedNodes: !4378)
!4376 = !DISubroutineType(types: !4377)
!4377 = !{!131, !131, !133}
!4378 = !{!4379, !4380}
!4379 = !DILocalVariable(name: "p", arg: 1, scope: !4375, file: !794, line: 68, type: !131)
!4380 = !DILocalVariable(name: "s", arg: 2, scope: !4375, file: !794, line: 68, type: !133)
!4381 = !DILocation(line: 0, scope: !4375)
!4382 = !DILocalVariable(name: "ptr", arg: 1, scope: !4383, file: !4384, line: 2057, type: !131)
!4383 = distinct !DISubprogram(name: "rpl_realloc", scope: !4384, file: !4384, line: 2057, type: !4376, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !793, retainedNodes: !4385)
!4384 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4385 = !{!4382, !4386}
!4386 = !DILocalVariable(name: "size", arg: 2, scope: !4383, file: !4384, line: 2057, type: !133)
!4387 = !DILocation(line: 0, scope: !4383, inlinedAt: !4388)
!4388 = distinct !DILocation(line: 70, column: 25, scope: !4375)
!4389 = !DILocation(line: 2059, column: 24, scope: !4383, inlinedAt: !4388)
!4390 = !DILocation(line: 2059, column: 10, scope: !4383, inlinedAt: !4388)
!4391 = !DILocation(line: 0, scope: !4314, inlinedAt: !4392)
!4392 = distinct !DILocation(line: 70, column: 10, scope: !4375)
!4393 = !DILocation(line: 39, column: 8, scope: !4321, inlinedAt: !4392)
!4394 = !DILocation(line: 39, column: 7, scope: !4314, inlinedAt: !4392)
!4395 = !DILocation(line: 40, column: 5, scope: !4321, inlinedAt: !4392)
!4396 = !DILocation(line: 70, column: 3, scope: !4375)
!4397 = !DISubprogram(name: "realloc", scope: !1061, file: !1061, line: 551, type: !4376, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !875)
!4398 = distinct !DISubprogram(name: "xirealloc", scope: !794, file: !794, line: 74, type: !4399, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !793, retainedNodes: !4401)
!4399 = !DISubroutineType(types: !4400)
!4400 = !{!131, !131, !438}
!4401 = !{!4402, !4403}
!4402 = !DILocalVariable(name: "p", arg: 1, scope: !4398, file: !794, line: 74, type: !131)
!4403 = !DILocalVariable(name: "s", arg: 2, scope: !4398, file: !794, line: 74, type: !438)
!4404 = !DILocation(line: 0, scope: !4398)
!4405 = !DILocalVariable(name: "p", arg: 1, scope: !4406, file: !1769, line: 66, type: !131)
!4406 = distinct !DISubprogram(name: "irealloc", scope: !1769, file: !1769, line: 66, type: !4399, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !793, retainedNodes: !4407)
!4407 = !{!4405, !4408}
!4408 = !DILocalVariable(name: "s", arg: 2, scope: !4406, file: !1769, line: 66, type: !438)
!4409 = !DILocation(line: 0, scope: !4406, inlinedAt: !4410)
!4410 = distinct !DILocation(line: 76, column: 25, scope: !4398)
!4411 = !DILocation(line: 0, scope: !4383, inlinedAt: !4412)
!4412 = distinct !DILocation(line: 68, column: 26, scope: !4406, inlinedAt: !4410)
!4413 = !DILocation(line: 2059, column: 24, scope: !4383, inlinedAt: !4412)
!4414 = !DILocation(line: 2059, column: 10, scope: !4383, inlinedAt: !4412)
!4415 = !DILocation(line: 0, scope: !4314, inlinedAt: !4416)
!4416 = distinct !DILocation(line: 76, column: 10, scope: !4398)
!4417 = !DILocation(line: 39, column: 8, scope: !4321, inlinedAt: !4416)
!4418 = !DILocation(line: 39, column: 7, scope: !4314, inlinedAt: !4416)
!4419 = !DILocation(line: 40, column: 5, scope: !4321, inlinedAt: !4416)
!4420 = !DILocation(line: 76, column: 3, scope: !4398)
!4421 = distinct !DISubprogram(name: "xireallocarray", scope: !794, file: !794, line: 89, type: !4422, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !793, retainedNodes: !4424)
!4422 = !DISubroutineType(types: !4423)
!4423 = !{!131, !131, !438, !438}
!4424 = !{!4425, !4426, !4427}
!4425 = !DILocalVariable(name: "p", arg: 1, scope: !4421, file: !794, line: 89, type: !131)
!4426 = !DILocalVariable(name: "n", arg: 2, scope: !4421, file: !794, line: 89, type: !438)
!4427 = !DILocalVariable(name: "s", arg: 3, scope: !4421, file: !794, line: 89, type: !438)
!4428 = !DILocation(line: 0, scope: !4421)
!4429 = !DILocalVariable(name: "p", arg: 1, scope: !4430, file: !1769, line: 98, type: !131)
!4430 = distinct !DISubprogram(name: "ireallocarray", scope: !1769, file: !1769, line: 98, type: !4422, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !793, retainedNodes: !4431)
!4431 = !{!4429, !4432, !4433}
!4432 = !DILocalVariable(name: "n", arg: 2, scope: !4430, file: !1769, line: 98, type: !438)
!4433 = !DILocalVariable(name: "s", arg: 3, scope: !4430, file: !1769, line: 98, type: !438)
!4434 = !DILocation(line: 0, scope: !4430, inlinedAt: !4435)
!4435 = distinct !DILocation(line: 91, column: 25, scope: !4421)
!4436 = !DILocation(line: 101, column: 13, scope: !4430, inlinedAt: !4435)
!4437 = !DILocation(line: 0, scope: !4314, inlinedAt: !4438)
!4438 = distinct !DILocation(line: 91, column: 10, scope: !4421)
!4439 = !DILocation(line: 39, column: 8, scope: !4321, inlinedAt: !4438)
!4440 = !DILocation(line: 39, column: 7, scope: !4314, inlinedAt: !4438)
!4441 = !DILocation(line: 40, column: 5, scope: !4321, inlinedAt: !4438)
!4442 = !DILocation(line: 91, column: 3, scope: !4421)
!4443 = distinct !DISubprogram(name: "xnmalloc", scope: !794, file: !794, line: 98, type: !4444, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !793, retainedNodes: !4446)
!4444 = !DISubroutineType(types: !4445)
!4445 = !{!131, !133, !133}
!4446 = !{!4447, !4448}
!4447 = !DILocalVariable(name: "n", arg: 1, scope: !4443, file: !794, line: 98, type: !133)
!4448 = !DILocalVariable(name: "s", arg: 2, scope: !4443, file: !794, line: 98, type: !133)
!4449 = !DILocation(line: 0, scope: !4443)
!4450 = !DILocation(line: 0, scope: !4306, inlinedAt: !4451)
!4451 = distinct !DILocation(line: 100, column: 10, scope: !4443)
!4452 = !DILocation(line: 85, column: 25, scope: !4306, inlinedAt: !4451)
!4453 = !DILocation(line: 0, scope: !4314, inlinedAt: !4454)
!4454 = distinct !DILocation(line: 85, column: 10, scope: !4306, inlinedAt: !4451)
!4455 = !DILocation(line: 39, column: 8, scope: !4321, inlinedAt: !4454)
!4456 = !DILocation(line: 39, column: 7, scope: !4314, inlinedAt: !4454)
!4457 = !DILocation(line: 40, column: 5, scope: !4321, inlinedAt: !4454)
!4458 = !DILocation(line: 100, column: 3, scope: !4443)
!4459 = distinct !DISubprogram(name: "xinmalloc", scope: !794, file: !794, line: 104, type: !4460, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !793, retainedNodes: !4462)
!4460 = !DISubroutineType(types: !4461)
!4461 = !{!131, !438, !438}
!4462 = !{!4463, !4464}
!4463 = !DILocalVariable(name: "n", arg: 1, scope: !4459, file: !794, line: 104, type: !438)
!4464 = !DILocalVariable(name: "s", arg: 2, scope: !4459, file: !794, line: 104, type: !438)
!4465 = !DILocation(line: 0, scope: !4459)
!4466 = !DILocation(line: 0, scope: !4421, inlinedAt: !4467)
!4467 = distinct !DILocation(line: 106, column: 10, scope: !4459)
!4468 = !DILocation(line: 0, scope: !4430, inlinedAt: !4469)
!4469 = distinct !DILocation(line: 91, column: 25, scope: !4421, inlinedAt: !4467)
!4470 = !DILocation(line: 101, column: 13, scope: !4430, inlinedAt: !4469)
!4471 = !DILocation(line: 0, scope: !4314, inlinedAt: !4472)
!4472 = distinct !DILocation(line: 91, column: 10, scope: !4421, inlinedAt: !4467)
!4473 = !DILocation(line: 39, column: 8, scope: !4321, inlinedAt: !4472)
!4474 = !DILocation(line: 39, column: 7, scope: !4314, inlinedAt: !4472)
!4475 = !DILocation(line: 40, column: 5, scope: !4321, inlinedAt: !4472)
!4476 = !DILocation(line: 106, column: 3, scope: !4459)
!4477 = distinct !DISubprogram(name: "x2realloc", scope: !794, file: !794, line: 116, type: !4478, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !793, retainedNodes: !4480)
!4478 = !DISubroutineType(types: !4479)
!4479 = !{!131, !131, !800}
!4480 = !{!4481, !4482}
!4481 = !DILocalVariable(name: "p", arg: 1, scope: !4477, file: !794, line: 116, type: !131)
!4482 = !DILocalVariable(name: "ps", arg: 2, scope: !4477, file: !794, line: 116, type: !800)
!4483 = !DILocation(line: 0, scope: !4477)
!4484 = !DILocation(line: 0, scope: !797, inlinedAt: !4485)
!4485 = distinct !DILocation(line: 118, column: 10, scope: !4477)
!4486 = !DILocation(line: 178, column: 14, scope: !797, inlinedAt: !4485)
!4487 = !DILocation(line: 180, column: 9, scope: !4488, inlinedAt: !4485)
!4488 = distinct !DILexicalBlock(scope: !797, file: !794, line: 180, column: 7)
!4489 = !DILocation(line: 180, column: 7, scope: !797, inlinedAt: !4485)
!4490 = !DILocation(line: 182, column: 13, scope: !4491, inlinedAt: !4485)
!4491 = distinct !DILexicalBlock(scope: !4492, file: !794, line: 182, column: 11)
!4492 = distinct !DILexicalBlock(scope: !4488, file: !794, line: 181, column: 5)
!4493 = !DILocation(line: 182, column: 11, scope: !4492, inlinedAt: !4485)
!4494 = !DILocation(line: 197, column: 11, scope: !4495, inlinedAt: !4485)
!4495 = distinct !DILexicalBlock(scope: !4496, file: !794, line: 197, column: 11)
!4496 = distinct !DILexicalBlock(scope: !4488, file: !794, line: 195, column: 5)
!4497 = !DILocation(line: 197, column: 11, scope: !4496, inlinedAt: !4485)
!4498 = !DILocation(line: 198, column: 9, scope: !4495, inlinedAt: !4485)
!4499 = !DILocation(line: 0, scope: !4306, inlinedAt: !4500)
!4500 = distinct !DILocation(line: 201, column: 7, scope: !797, inlinedAt: !4485)
!4501 = !DILocation(line: 85, column: 25, scope: !4306, inlinedAt: !4500)
!4502 = !DILocation(line: 0, scope: !4314, inlinedAt: !4503)
!4503 = distinct !DILocation(line: 85, column: 10, scope: !4306, inlinedAt: !4500)
!4504 = !DILocation(line: 39, column: 8, scope: !4321, inlinedAt: !4503)
!4505 = !DILocation(line: 39, column: 7, scope: !4314, inlinedAt: !4503)
!4506 = !DILocation(line: 40, column: 5, scope: !4321, inlinedAt: !4503)
!4507 = !DILocation(line: 202, column: 7, scope: !797, inlinedAt: !4485)
!4508 = !DILocation(line: 118, column: 3, scope: !4477)
!4509 = !DILocation(line: 0, scope: !797)
!4510 = !DILocation(line: 178, column: 14, scope: !797)
!4511 = !DILocation(line: 180, column: 9, scope: !4488)
!4512 = !DILocation(line: 180, column: 7, scope: !797)
!4513 = !DILocation(line: 182, column: 13, scope: !4491)
!4514 = !DILocation(line: 182, column: 11, scope: !4492)
!4515 = !DILocation(line: 190, column: 30, scope: !4516)
!4516 = distinct !DILexicalBlock(scope: !4491, file: !794, line: 183, column: 9)
!4517 = !DILocation(line: 191, column: 16, scope: !4516)
!4518 = !DILocation(line: 191, column: 13, scope: !4516)
!4519 = !DILocation(line: 192, column: 9, scope: !4516)
!4520 = !DILocation(line: 197, column: 11, scope: !4495)
!4521 = !DILocation(line: 197, column: 11, scope: !4496)
!4522 = !DILocation(line: 198, column: 9, scope: !4495)
!4523 = !DILocation(line: 0, scope: !4306, inlinedAt: !4524)
!4524 = distinct !DILocation(line: 201, column: 7, scope: !797)
!4525 = !DILocation(line: 85, column: 25, scope: !4306, inlinedAt: !4524)
!4526 = !DILocation(line: 0, scope: !4314, inlinedAt: !4527)
!4527 = distinct !DILocation(line: 85, column: 10, scope: !4306, inlinedAt: !4524)
!4528 = !DILocation(line: 39, column: 8, scope: !4321, inlinedAt: !4527)
!4529 = !DILocation(line: 39, column: 7, scope: !4314, inlinedAt: !4527)
!4530 = !DILocation(line: 40, column: 5, scope: !4321, inlinedAt: !4527)
!4531 = !DILocation(line: 202, column: 7, scope: !797)
!4532 = !DILocation(line: 203, column: 3, scope: !797)
!4533 = !DILocation(line: 0, scope: !809)
!4534 = !DILocation(line: 230, column: 14, scope: !809)
!4535 = !DILocation(line: 238, column: 7, scope: !4536)
!4536 = distinct !DILexicalBlock(scope: !809, file: !794, line: 238, column: 7)
!4537 = !DILocation(line: 238, column: 7, scope: !809)
!4538 = !DILocation(line: 240, column: 9, scope: !4539)
!4539 = distinct !DILexicalBlock(scope: !809, file: !794, line: 240, column: 7)
!4540 = !DILocation(line: 240, column: 18, scope: !4539)
!4541 = !DILocation(line: 253, column: 8, scope: !809)
!4542 = !DILocation(line: 258, column: 27, scope: !4543)
!4543 = distinct !DILexicalBlock(scope: !4544, file: !794, line: 257, column: 5)
!4544 = distinct !DILexicalBlock(scope: !809, file: !794, line: 256, column: 7)
!4545 = !DILocation(line: 259, column: 50, scope: !4543)
!4546 = !DILocation(line: 259, column: 32, scope: !4543)
!4547 = !DILocation(line: 260, column: 5, scope: !4543)
!4548 = !DILocation(line: 262, column: 9, scope: !4549)
!4549 = distinct !DILexicalBlock(scope: !809, file: !794, line: 262, column: 7)
!4550 = !DILocation(line: 262, column: 7, scope: !809)
!4551 = !DILocation(line: 263, column: 9, scope: !4549)
!4552 = !DILocation(line: 263, column: 5, scope: !4549)
!4553 = !DILocation(line: 264, column: 9, scope: !4554)
!4554 = distinct !DILexicalBlock(scope: !809, file: !794, line: 264, column: 7)
!4555 = !DILocation(line: 264, column: 14, scope: !4554)
!4556 = !DILocation(line: 265, column: 7, scope: !4554)
!4557 = !DILocation(line: 265, column: 11, scope: !4554)
!4558 = !DILocation(line: 266, column: 11, scope: !4554)
!4559 = !DILocation(line: 267, column: 14, scope: !4554)
!4560 = !DILocation(line: 264, column: 7, scope: !809)
!4561 = !DILocation(line: 268, column: 5, scope: !4554)
!4562 = !DILocation(line: 0, scope: !4375, inlinedAt: !4563)
!4563 = distinct !DILocation(line: 269, column: 8, scope: !809)
!4564 = !DILocation(line: 0, scope: !4383, inlinedAt: !4565)
!4565 = distinct !DILocation(line: 70, column: 25, scope: !4375, inlinedAt: !4563)
!4566 = !DILocation(line: 2059, column: 24, scope: !4383, inlinedAt: !4565)
!4567 = !DILocation(line: 2059, column: 10, scope: !4383, inlinedAt: !4565)
!4568 = !DILocation(line: 0, scope: !4314, inlinedAt: !4569)
!4569 = distinct !DILocation(line: 70, column: 10, scope: !4375, inlinedAt: !4563)
!4570 = !DILocation(line: 39, column: 8, scope: !4321, inlinedAt: !4569)
!4571 = !DILocation(line: 39, column: 7, scope: !4314, inlinedAt: !4569)
!4572 = !DILocation(line: 40, column: 5, scope: !4321, inlinedAt: !4569)
!4573 = !DILocation(line: 270, column: 7, scope: !809)
!4574 = !DILocation(line: 271, column: 3, scope: !809)
!4575 = distinct !DISubprogram(name: "xzalloc", scope: !794, file: !794, line: 279, type: !1784, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !793, retainedNodes: !4576)
!4576 = !{!4577}
!4577 = !DILocalVariable(name: "s", arg: 1, scope: !4575, file: !794, line: 279, type: !133)
!4578 = !DILocation(line: 0, scope: !4575)
!4579 = !DILocalVariable(name: "n", arg: 1, scope: !4580, file: !794, line: 294, type: !133)
!4580 = distinct !DISubprogram(name: "xcalloc", scope: !794, file: !794, line: 294, type: !4444, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !793, retainedNodes: !4581)
!4581 = !{!4579, !4582}
!4582 = !DILocalVariable(name: "s", arg: 2, scope: !4580, file: !794, line: 294, type: !133)
!4583 = !DILocation(line: 0, scope: !4580, inlinedAt: !4584)
!4584 = distinct !DILocation(line: 281, column: 10, scope: !4575)
!4585 = !DILocation(line: 296, column: 25, scope: !4580, inlinedAt: !4584)
!4586 = !DILocation(line: 0, scope: !4314, inlinedAt: !4587)
!4587 = distinct !DILocation(line: 296, column: 10, scope: !4580, inlinedAt: !4584)
!4588 = !DILocation(line: 39, column: 8, scope: !4321, inlinedAt: !4587)
!4589 = !DILocation(line: 39, column: 7, scope: !4314, inlinedAt: !4587)
!4590 = !DILocation(line: 40, column: 5, scope: !4321, inlinedAt: !4587)
!4591 = !DILocation(line: 281, column: 3, scope: !4575)
!4592 = !DISubprogram(name: "calloc", scope: !1061, file: !1061, line: 543, type: !4444, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !875)
!4593 = !DILocation(line: 0, scope: !4580)
!4594 = !DILocation(line: 296, column: 25, scope: !4580)
!4595 = !DILocation(line: 0, scope: !4314, inlinedAt: !4596)
!4596 = distinct !DILocation(line: 296, column: 10, scope: !4580)
!4597 = !DILocation(line: 39, column: 8, scope: !4321, inlinedAt: !4596)
!4598 = !DILocation(line: 39, column: 7, scope: !4314, inlinedAt: !4596)
!4599 = !DILocation(line: 40, column: 5, scope: !4321, inlinedAt: !4596)
!4600 = !DILocation(line: 296, column: 3, scope: !4580)
!4601 = distinct !DISubprogram(name: "xizalloc", scope: !794, file: !794, line: 285, type: !1770, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !793, retainedNodes: !4602)
!4602 = !{!4603}
!4603 = !DILocalVariable(name: "s", arg: 1, scope: !4601, file: !794, line: 285, type: !438)
!4604 = !DILocation(line: 0, scope: !4601)
!4605 = !DILocalVariable(name: "n", arg: 1, scope: !4606, file: !794, line: 300, type: !438)
!4606 = distinct !DISubprogram(name: "xicalloc", scope: !794, file: !794, line: 300, type: !4460, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !793, retainedNodes: !4607)
!4607 = !{!4605, !4608}
!4608 = !DILocalVariable(name: "s", arg: 2, scope: !4606, file: !794, line: 300, type: !438)
!4609 = !DILocation(line: 0, scope: !4606, inlinedAt: !4610)
!4610 = distinct !DILocation(line: 287, column: 10, scope: !4601)
!4611 = !DILocalVariable(name: "n", arg: 1, scope: !4612, file: !1769, line: 77, type: !438)
!4612 = distinct !DISubprogram(name: "icalloc", scope: !1769, file: !1769, line: 77, type: !4460, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !793, retainedNodes: !4613)
!4613 = !{!4611, !4614}
!4614 = !DILocalVariable(name: "s", arg: 2, scope: !4612, file: !1769, line: 77, type: !438)
!4615 = !DILocation(line: 0, scope: !4612, inlinedAt: !4616)
!4616 = distinct !DILocation(line: 302, column: 25, scope: !4606, inlinedAt: !4610)
!4617 = !DILocation(line: 91, column: 10, scope: !4612, inlinedAt: !4616)
!4618 = !DILocation(line: 0, scope: !4314, inlinedAt: !4619)
!4619 = distinct !DILocation(line: 302, column: 10, scope: !4606, inlinedAt: !4610)
!4620 = !DILocation(line: 39, column: 8, scope: !4321, inlinedAt: !4619)
!4621 = !DILocation(line: 39, column: 7, scope: !4314, inlinedAt: !4619)
!4622 = !DILocation(line: 40, column: 5, scope: !4321, inlinedAt: !4619)
!4623 = !DILocation(line: 287, column: 3, scope: !4601)
!4624 = !DILocation(line: 0, scope: !4606)
!4625 = !DILocation(line: 0, scope: !4612, inlinedAt: !4626)
!4626 = distinct !DILocation(line: 302, column: 25, scope: !4606)
!4627 = !DILocation(line: 91, column: 10, scope: !4612, inlinedAt: !4626)
!4628 = !DILocation(line: 0, scope: !4314, inlinedAt: !4629)
!4629 = distinct !DILocation(line: 302, column: 10, scope: !4606)
!4630 = !DILocation(line: 39, column: 8, scope: !4321, inlinedAt: !4629)
!4631 = !DILocation(line: 39, column: 7, scope: !4314, inlinedAt: !4629)
!4632 = !DILocation(line: 40, column: 5, scope: !4321, inlinedAt: !4629)
!4633 = !DILocation(line: 302, column: 3, scope: !4606)
!4634 = distinct !DISubprogram(name: "xmemdup", scope: !794, file: !794, line: 310, type: !4635, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !793, retainedNodes: !4637)
!4635 = !DISubroutineType(types: !4636)
!4636 = !{!131, !1085, !133}
!4637 = !{!4638, !4639}
!4638 = !DILocalVariable(name: "p", arg: 1, scope: !4634, file: !794, line: 310, type: !1085)
!4639 = !DILocalVariable(name: "s", arg: 2, scope: !4634, file: !794, line: 310, type: !133)
!4640 = !DILocation(line: 0, scope: !4634)
!4641 = !DILocation(line: 0, scope: !4333, inlinedAt: !4642)
!4642 = distinct !DILocation(line: 312, column: 18, scope: !4634)
!4643 = !DILocation(line: 49, column: 25, scope: !4333, inlinedAt: !4642)
!4644 = !DILocation(line: 0, scope: !4314, inlinedAt: !4645)
!4645 = distinct !DILocation(line: 49, column: 10, scope: !4333, inlinedAt: !4642)
!4646 = !DILocation(line: 39, column: 8, scope: !4321, inlinedAt: !4645)
!4647 = !DILocation(line: 39, column: 7, scope: !4314, inlinedAt: !4645)
!4648 = !DILocation(line: 40, column: 5, scope: !4321, inlinedAt: !4645)
!4649 = !DILocalVariable(name: "__dest", arg: 1, scope: !4650, file: !1273, line: 26, type: !4653)
!4650 = distinct !DISubprogram(name: "memcpy", scope: !1273, file: !1273, line: 26, type: !4651, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !793, retainedNodes: !4654)
!4651 = !DISubroutineType(types: !4652)
!4652 = !{!131, !4653, !1084, !133}
!4653 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !131)
!4654 = !{!4649, !4655, !4656}
!4655 = !DILocalVariable(name: "__src", arg: 2, scope: !4650, file: !1273, line: 26, type: !1084)
!4656 = !DILocalVariable(name: "__len", arg: 3, scope: !4650, file: !1273, line: 26, type: !133)
!4657 = !DILocation(line: 0, scope: !4650, inlinedAt: !4658)
!4658 = distinct !DILocation(line: 312, column: 10, scope: !4634)
!4659 = !DILocation(line: 29, column: 10, scope: !4650, inlinedAt: !4658)
!4660 = !DILocation(line: 312, column: 3, scope: !4634)
!4661 = distinct !DISubprogram(name: "ximemdup", scope: !794, file: !794, line: 316, type: !4662, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !793, retainedNodes: !4664)
!4662 = !DISubroutineType(types: !4663)
!4663 = !{!131, !1085, !438}
!4664 = !{!4665, !4666}
!4665 = !DILocalVariable(name: "p", arg: 1, scope: !4661, file: !794, line: 316, type: !1085)
!4666 = !DILocalVariable(name: "s", arg: 2, scope: !4661, file: !794, line: 316, type: !438)
!4667 = !DILocation(line: 0, scope: !4661)
!4668 = !DILocation(line: 0, scope: !4344, inlinedAt: !4669)
!4669 = distinct !DILocation(line: 318, column: 18, scope: !4661)
!4670 = !DILocation(line: 0, scope: !4349, inlinedAt: !4671)
!4671 = distinct !DILocation(line: 55, column: 25, scope: !4344, inlinedAt: !4669)
!4672 = !DILocation(line: 57, column: 26, scope: !4349, inlinedAt: !4671)
!4673 = !DILocation(line: 0, scope: !4314, inlinedAt: !4674)
!4674 = distinct !DILocation(line: 55, column: 10, scope: !4344, inlinedAt: !4669)
!4675 = !DILocation(line: 39, column: 8, scope: !4321, inlinedAt: !4674)
!4676 = !DILocation(line: 39, column: 7, scope: !4314, inlinedAt: !4674)
!4677 = !DILocation(line: 40, column: 5, scope: !4321, inlinedAt: !4674)
!4678 = !DILocation(line: 0, scope: !4650, inlinedAt: !4679)
!4679 = distinct !DILocation(line: 318, column: 10, scope: !4661)
!4680 = !DILocation(line: 29, column: 10, scope: !4650, inlinedAt: !4679)
!4681 = !DILocation(line: 318, column: 3, scope: !4661)
!4682 = distinct !DISubprogram(name: "ximemdup0", scope: !794, file: !794, line: 325, type: !4683, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !793, retainedNodes: !4685)
!4683 = !DISubroutineType(types: !4684)
!4684 = !{!130, !1085, !438}
!4685 = !{!4686, !4687, !4688}
!4686 = !DILocalVariable(name: "p", arg: 1, scope: !4682, file: !794, line: 325, type: !1085)
!4687 = !DILocalVariable(name: "s", arg: 2, scope: !4682, file: !794, line: 325, type: !438)
!4688 = !DILocalVariable(name: "result", scope: !4682, file: !794, line: 327, type: !130)
!4689 = !DILocation(line: 0, scope: !4682)
!4690 = !DILocation(line: 327, column: 30, scope: !4682)
!4691 = !DILocation(line: 0, scope: !4344, inlinedAt: !4692)
!4692 = distinct !DILocation(line: 327, column: 18, scope: !4682)
!4693 = !DILocation(line: 0, scope: !4349, inlinedAt: !4694)
!4694 = distinct !DILocation(line: 55, column: 25, scope: !4344, inlinedAt: !4692)
!4695 = !DILocation(line: 57, column: 26, scope: !4349, inlinedAt: !4694)
!4696 = !DILocation(line: 0, scope: !4314, inlinedAt: !4697)
!4697 = distinct !DILocation(line: 55, column: 10, scope: !4344, inlinedAt: !4692)
!4698 = !DILocation(line: 39, column: 8, scope: !4321, inlinedAt: !4697)
!4699 = !DILocation(line: 39, column: 7, scope: !4314, inlinedAt: !4697)
!4700 = !DILocation(line: 40, column: 5, scope: !4321, inlinedAt: !4697)
!4701 = !DILocation(line: 328, column: 3, scope: !4682)
!4702 = !DILocation(line: 328, column: 13, scope: !4682)
!4703 = !DILocation(line: 0, scope: !4650, inlinedAt: !4704)
!4704 = distinct !DILocation(line: 329, column: 10, scope: !4682)
!4705 = !DILocation(line: 29, column: 10, scope: !4650, inlinedAt: !4704)
!4706 = !DILocation(line: 329, column: 3, scope: !4682)
!4707 = distinct !DISubprogram(name: "xstrdup", scope: !794, file: !794, line: 335, type: !1063, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !793, retainedNodes: !4708)
!4708 = !{!4709}
!4709 = !DILocalVariable(name: "string", arg: 1, scope: !4707, file: !794, line: 335, type: !136)
!4710 = !DILocation(line: 0, scope: !4707)
!4711 = !DILocation(line: 337, column: 27, scope: !4707)
!4712 = !DILocation(line: 337, column: 43, scope: !4707)
!4713 = !DILocation(line: 0, scope: !4634, inlinedAt: !4714)
!4714 = distinct !DILocation(line: 337, column: 10, scope: !4707)
!4715 = !DILocation(line: 0, scope: !4333, inlinedAt: !4716)
!4716 = distinct !DILocation(line: 312, column: 18, scope: !4634, inlinedAt: !4714)
!4717 = !DILocation(line: 49, column: 25, scope: !4333, inlinedAt: !4716)
!4718 = !DILocation(line: 0, scope: !4314, inlinedAt: !4719)
!4719 = distinct !DILocation(line: 49, column: 10, scope: !4333, inlinedAt: !4716)
!4720 = !DILocation(line: 39, column: 8, scope: !4321, inlinedAt: !4719)
!4721 = !DILocation(line: 39, column: 7, scope: !4314, inlinedAt: !4719)
!4722 = !DILocation(line: 40, column: 5, scope: !4321, inlinedAt: !4719)
!4723 = !DILocation(line: 0, scope: !4650, inlinedAt: !4724)
!4724 = distinct !DILocation(line: 312, column: 10, scope: !4634, inlinedAt: !4714)
!4725 = !DILocation(line: 29, column: 10, scope: !4650, inlinedAt: !4724)
!4726 = !DILocation(line: 337, column: 3, scope: !4707)
!4727 = distinct !DISubprogram(name: "xalloc_die", scope: !747, file: !747, line: 32, type: !517, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !824, retainedNodes: !4728)
!4728 = !{!4729}
!4729 = !DILocalVariable(name: "__errstatus", scope: !4730, file: !747, line: 34, type: !4731)
!4730 = distinct !DILexicalBlock(scope: !4727, file: !747, line: 34, column: 3)
!4731 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!4732 = !DILocation(line: 34, column: 3, scope: !4730)
!4733 = !DILocation(line: 0, scope: !4730)
!4734 = !DILocation(line: 40, column: 3, scope: !4727)
!4735 = distinct !DISubprogram(name: "xstrtoimax", scope: !4736, file: !4736, line: 71, type: !4737, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !4740)
!4736 = !DIFile(filename: "./lib/xstrtol.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a1112be551b7ea11a9f6293a4923a73")
!4737 = !DISubroutineType(types: !4738)
!4738 = !{!1104, !136, !1090, !87, !4739, !136}
!4739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!4740 = !{!4741, !4742, !4743, !4744, !4745, !4746, !4747, !4748, !4749, !4750, !4753, !4754}
!4741 = !DILocalVariable(name: "nptr", arg: 1, scope: !4735, file: !4736, line: 71, type: !136)
!4742 = !DILocalVariable(name: "endptr", arg: 2, scope: !4735, file: !4736, line: 71, type: !1090)
!4743 = !DILocalVariable(name: "base", arg: 3, scope: !4735, file: !4736, line: 71, type: !87)
!4744 = !DILocalVariable(name: "val", arg: 4, scope: !4735, file: !4736, line: 72, type: !4739)
!4745 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !4735, file: !4736, line: 72, type: !136)
!4746 = !DILocalVariable(name: "t_ptr", scope: !4735, file: !4736, line: 74, type: !130)
!4747 = !DILocalVariable(name: "p", scope: !4735, file: !4736, line: 75, type: !1090)
!4748 = !DILocalVariable(name: "tmp", scope: !4735, file: !4736, line: 91, type: !830)
!4749 = !DILocalVariable(name: "err", scope: !4735, file: !4736, line: 92, type: !1104)
!4750 = !DILocalVariable(name: "xbase", scope: !4751, file: !4736, line: 126, type: !87)
!4751 = distinct !DILexicalBlock(scope: !4752, file: !4736, line: 119, column: 5)
!4752 = distinct !DILexicalBlock(scope: !4735, file: !4736, line: 118, column: 7)
!4753 = !DILocalVariable(name: "suffixes", scope: !4751, file: !4736, line: 127, type: !87)
!4754 = !DILocalVariable(name: "overflow", scope: !4751, file: !4736, line: 156, type: !1104)
!4755 = !DILocation(line: 0, scope: !4735)
!4756 = !DILocation(line: 74, column: 3, scope: !4735)
!4757 = !DILocation(line: 75, column: 14, scope: !4735)
!4758 = !DILocation(line: 90, column: 3, scope: !4735)
!4759 = !DILocation(line: 90, column: 9, scope: !4735)
!4760 = !DILocation(line: 91, column: 20, scope: !4735)
!4761 = !DILocation(line: 94, column: 7, scope: !4762)
!4762 = distinct !DILexicalBlock(scope: !4735, file: !4736, line: 94, column: 7)
!4763 = !DILocation(line: 94, column: 10, scope: !4762)
!4764 = !DILocation(line: 94, column: 7, scope: !4735)
!4765 = !DILocation(line: 98, column: 14, scope: !4766)
!4766 = distinct !DILexicalBlock(scope: !4767, file: !4736, line: 98, column: 11)
!4767 = distinct !DILexicalBlock(scope: !4762, file: !4736, line: 95, column: 5)
!4768 = !DILocation(line: 98, column: 29, scope: !4766)
!4769 = !DILocation(line: 98, column: 32, scope: !4766)
!4770 = !DILocation(line: 98, column: 38, scope: !4766)
!4771 = !DILocation(line: 98, column: 41, scope: !4766)
!4772 = !DILocation(line: 98, column: 11, scope: !4767)
!4773 = !DILocation(line: 102, column: 12, scope: !4774)
!4774 = distinct !DILexicalBlock(scope: !4762, file: !4736, line: 102, column: 12)
!4775 = !DILocation(line: 102, column: 12, scope: !4762)
!4776 = !DILocation(line: 107, column: 5, scope: !4777)
!4777 = distinct !DILexicalBlock(scope: !4774, file: !4736, line: 103, column: 5)
!4778 = !DILocation(line: 112, column: 8, scope: !4779)
!4779 = distinct !DILexicalBlock(scope: !4735, file: !4736, line: 112, column: 7)
!4780 = !DILocation(line: 112, column: 7, scope: !4735)
!4781 = !DILocation(line: 114, column: 12, scope: !4782)
!4782 = distinct !DILexicalBlock(scope: !4779, file: !4736, line: 113, column: 5)
!4783 = !DILocation(line: 115, column: 7, scope: !4782)
!4784 = !DILocation(line: 118, column: 7, scope: !4752)
!4785 = !DILocation(line: 118, column: 11, scope: !4752)
!4786 = !DILocation(line: 118, column: 7, scope: !4735)
!4787 = !DILocation(line: 120, column: 12, scope: !4788)
!4788 = distinct !DILexicalBlock(scope: !4751, file: !4736, line: 120, column: 11)
!4789 = !DILocation(line: 120, column: 11, scope: !4751)
!4790 = !DILocation(line: 122, column: 16, scope: !4791)
!4791 = distinct !DILexicalBlock(scope: !4788, file: !4736, line: 121, column: 9)
!4792 = !DILocation(line: 123, column: 22, scope: !4791)
!4793 = !DILocation(line: 123, column: 11, scope: !4791)
!4794 = !DILocation(line: 0, scope: !4751)
!4795 = !DILocation(line: 128, column: 7, scope: !4751)
!4796 = !DILocation(line: 140, column: 15, scope: !4797)
!4797 = distinct !DILexicalBlock(scope: !4798, file: !4736, line: 140, column: 15)
!4798 = distinct !DILexicalBlock(scope: !4751, file: !4736, line: 129, column: 9)
!4799 = !DILocation(line: 140, column: 15, scope: !4798)
!4800 = !DILocation(line: 141, column: 21, scope: !4797)
!4801 = !DILocation(line: 141, column: 13, scope: !4797)
!4802 = !DILocation(line: 144, column: 21, scope: !4803)
!4803 = distinct !DILexicalBlock(scope: !4804, file: !4736, line: 144, column: 21)
!4804 = distinct !DILexicalBlock(scope: !4797, file: !4736, line: 142, column: 15)
!4805 = !DILocation(line: 144, column: 29, scope: !4803)
!4806 = !DILocation(line: 144, column: 21, scope: !4804)
!4807 = !DILocation(line: 152, column: 17, scope: !4804)
!4808 = !DILocation(line: 157, column: 7, scope: !4751)
!4809 = !DILocalVariable(name: "err", scope: !4810, file: !4736, line: 64, type: !1104)
!4810 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !4736, file: !4736, line: 62, type: !4811, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !4813)
!4811 = !DISubroutineType(types: !4812)
!4812 = !{!1104, !4739, !87, !87}
!4813 = !{!4814, !4815, !4816, !4809}
!4814 = !DILocalVariable(name: "x", arg: 1, scope: !4810, file: !4736, line: 62, type: !4739)
!4815 = !DILocalVariable(name: "base", arg: 2, scope: !4810, file: !4736, line: 62, type: !87)
!4816 = !DILocalVariable(name: "power", arg: 3, scope: !4810, file: !4736, line: 62, type: !87)
!4817 = !DILocation(line: 0, scope: !4810, inlinedAt: !4818)
!4818 = distinct !DILocation(line: 219, column: 22, scope: !4819)
!4819 = distinct !DILexicalBlock(scope: !4751, file: !4736, line: 158, column: 9)
!4820 = !DILocalVariable(name: "x", arg: 1, scope: !4821, file: !4736, line: 47, type: !4739)
!4821 = distinct !DISubprogram(name: "bkm_scale", scope: !4736, file: !4736, line: 47, type: !4822, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !4824)
!4822 = !DISubroutineType(types: !4823)
!4823 = !{!1104, !4739, !87}
!4824 = !{!4820, !4825, !4826}
!4825 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !4821, file: !4736, line: 47, type: !87)
!4826 = !DILocalVariable(name: "scaled", scope: !4821, file: !4736, line: 49, type: !830)
!4827 = !DILocation(line: 0, scope: !4821, inlinedAt: !4828)
!4828 = distinct !DILocation(line: 66, column: 12, scope: !4810, inlinedAt: !4818)
!4829 = !DILocation(line: 50, column: 7, scope: !4830, inlinedAt: !4828)
!4830 = distinct !DILexicalBlock(scope: !4821, file: !4736, line: 50, column: 7)
!4831 = !DILocation(line: 0, scope: !4810, inlinedAt: !4832)
!4832 = distinct !DILocation(line: 215, column: 22, scope: !4819)
!4833 = !DILocation(line: 0, scope: !4821, inlinedAt: !4834)
!4834 = distinct !DILocation(line: 66, column: 12, scope: !4810, inlinedAt: !4832)
!4835 = !DILocation(line: 50, column: 7, scope: !4830, inlinedAt: !4834)
!4836 = !DILocation(line: 0, scope: !4810, inlinedAt: !4837)
!4837 = distinct !DILocation(line: 202, column: 22, scope: !4819)
!4838 = !DILocation(line: 0, scope: !4821, inlinedAt: !4839)
!4839 = distinct !DILocation(line: 66, column: 12, scope: !4810, inlinedAt: !4837)
!4840 = !DILocation(line: 50, column: 7, scope: !4830, inlinedAt: !4839)
!4841 = !DILocation(line: 0, scope: !4810, inlinedAt: !4842)
!4842 = distinct !DILocation(line: 198, column: 22, scope: !4819)
!4843 = !DILocation(line: 0, scope: !4821, inlinedAt: !4844)
!4844 = distinct !DILocation(line: 66, column: 12, scope: !4810, inlinedAt: !4842)
!4845 = !DILocation(line: 50, column: 7, scope: !4830, inlinedAt: !4844)
!4846 = !DILocation(line: 0, scope: !4810, inlinedAt: !4847)
!4847 = distinct !DILocation(line: 194, column: 22, scope: !4819)
!4848 = !DILocation(line: 0, scope: !4821, inlinedAt: !4849)
!4849 = distinct !DILocation(line: 66, column: 12, scope: !4810, inlinedAt: !4847)
!4850 = !DILocation(line: 50, column: 7, scope: !4830, inlinedAt: !4849)
!4851 = !DILocation(line: 0, scope: !4810, inlinedAt: !4852)
!4852 = distinct !DILocation(line: 175, column: 22, scope: !4819)
!4853 = !DILocation(line: 0, scope: !4821, inlinedAt: !4854)
!4854 = distinct !DILocation(line: 66, column: 12, scope: !4810, inlinedAt: !4852)
!4855 = !DILocation(line: 50, column: 7, scope: !4830, inlinedAt: !4854)
!4856 = !DILocation(line: 0, scope: !4821, inlinedAt: !4857)
!4857 = distinct !DILocation(line: 160, column: 22, scope: !4819)
!4858 = !DILocation(line: 50, column: 7, scope: !4830, inlinedAt: !4857)
!4859 = !DILocation(line: 50, column: 7, scope: !4821, inlinedAt: !4857)
!4860 = !DILocation(line: 0, scope: !4821, inlinedAt: !4861)
!4861 = distinct !DILocation(line: 167, column: 22, scope: !4819)
!4862 = !DILocation(line: 50, column: 7, scope: !4830, inlinedAt: !4861)
!4863 = !DILocation(line: 50, column: 7, scope: !4821, inlinedAt: !4861)
!4864 = !DILocation(line: 50, column: 7, scope: !4821, inlinedAt: !4854)
!4865 = !DILocation(line: 66, column: 9, scope: !4810, inlinedAt: !4852)
!4866 = !DILocation(line: 227, column: 11, scope: !4751)
!4867 = !DILocation(line: 0, scope: !4810, inlinedAt: !4868)
!4868 = distinct !DILocation(line: 180, column: 22, scope: !4819)
!4869 = !DILocation(line: 0, scope: !4821, inlinedAt: !4870)
!4870 = distinct !DILocation(line: 66, column: 12, scope: !4810, inlinedAt: !4868)
!4871 = !DILocation(line: 50, column: 7, scope: !4830, inlinedAt: !4870)
!4872 = !DILocation(line: 50, column: 7, scope: !4821, inlinedAt: !4870)
!4873 = !DILocation(line: 66, column: 9, scope: !4810, inlinedAt: !4868)
!4874 = !DILocation(line: 0, scope: !4810, inlinedAt: !4875)
!4875 = distinct !DILocation(line: 185, column: 22, scope: !4819)
!4876 = !DILocation(line: 0, scope: !4821, inlinedAt: !4877)
!4877 = distinct !DILocation(line: 66, column: 12, scope: !4810, inlinedAt: !4875)
!4878 = !DILocation(line: 50, column: 7, scope: !4830, inlinedAt: !4877)
!4879 = !DILocation(line: 50, column: 7, scope: !4821, inlinedAt: !4877)
!4880 = !DILocation(line: 0, scope: !4810, inlinedAt: !4881)
!4881 = distinct !DILocation(line: 190, column: 22, scope: !4819)
!4882 = !DILocation(line: 0, scope: !4821, inlinedAt: !4883)
!4883 = distinct !DILocation(line: 66, column: 12, scope: !4810, inlinedAt: !4881)
!4884 = !DILocation(line: 50, column: 7, scope: !4830, inlinedAt: !4883)
!4885 = !DILocation(line: 50, column: 7, scope: !4821, inlinedAt: !4883)
!4886 = !DILocation(line: 66, column: 9, scope: !4810, inlinedAt: !4881)
!4887 = !DILocation(line: 50, column: 7, scope: !4821, inlinedAt: !4849)
!4888 = !DILocation(line: 66, column: 9, scope: !4810, inlinedAt: !4847)
!4889 = !DILocation(line: 50, column: 7, scope: !4821, inlinedAt: !4844)
!4890 = !DILocation(line: 66, column: 9, scope: !4810, inlinedAt: !4842)
!4891 = !DILocation(line: 50, column: 7, scope: !4821, inlinedAt: !4839)
!4892 = !DILocation(line: 66, column: 9, scope: !4810, inlinedAt: !4837)
!4893 = !DILocation(line: 0, scope: !4810, inlinedAt: !4894)
!4894 = distinct !DILocation(line: 207, column: 22, scope: !4819)
!4895 = !DILocation(line: 0, scope: !4821, inlinedAt: !4896)
!4896 = distinct !DILocation(line: 66, column: 12, scope: !4810, inlinedAt: !4894)
!4897 = !DILocation(line: 50, column: 7, scope: !4830, inlinedAt: !4896)
!4898 = !DILocation(line: 50, column: 7, scope: !4821, inlinedAt: !4896)
!4899 = !DILocation(line: 66, column: 9, scope: !4810, inlinedAt: !4894)
!4900 = !DILocation(line: 0, scope: !4821, inlinedAt: !4901)
!4901 = distinct !DILocation(line: 211, column: 22, scope: !4819)
!4902 = !DILocation(line: 50, column: 7, scope: !4830, inlinedAt: !4901)
!4903 = !DILocation(line: 50, column: 7, scope: !4821, inlinedAt: !4901)
!4904 = !DILocation(line: 50, column: 7, scope: !4821, inlinedAt: !4834)
!4905 = !DILocation(line: 66, column: 9, scope: !4810, inlinedAt: !4832)
!4906 = !DILocation(line: 50, column: 7, scope: !4821, inlinedAt: !4828)
!4907 = !DILocation(line: 66, column: 9, scope: !4810, inlinedAt: !4818)
!4908 = !DILocation(line: 0, scope: !4819)
!4909 = !DILocation(line: 228, column: 10, scope: !4751)
!4910 = !DILocation(line: 229, column: 11, scope: !4911)
!4911 = distinct !DILexicalBlock(scope: !4751, file: !4736, line: 229, column: 11)
!4912 = !DILocation(line: 229, column: 11, scope: !4751)
!4913 = !DILocation(line: 223, column: 16, scope: !4819)
!4914 = !DILocation(line: 224, column: 22, scope: !4819)
!4915 = !DILocation(line: 100, column: 11, scope: !4767)
!4916 = !DILocation(line: 92, column: 16, scope: !4735)
!4917 = !DILocation(line: 233, column: 8, scope: !4735)
!4918 = !DILocation(line: 234, column: 3, scope: !4735)
!4919 = !DILocation(line: 235, column: 1, scope: !4735)
!4920 = !DISubprogram(name: "strtoimax", scope: !4921, file: !4921, line: 297, type: !4922, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !875)
!4921 = !DIFile(filename: "/usr/include/inttypes.h", directory: "", checksumkind: CSK_MD5, checksum: "e498a0d76716f3e3909f4b6f2cb2f20f")
!4922 = !DISubroutineType(types: !4923)
!4923 = !{!830, !437, !4924, !87}
!4924 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1090)
!4925 = distinct !DISubprogram(name: "rpl_fopen", scope: !834, file: !834, line: 46, type: !4926, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !4962)
!4926 = !DISubroutineType(types: !4927)
!4927 = !{!4928, !136, !136}
!4928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4929, size: 64)
!4929 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !211, line: 7, baseType: !4930)
!4930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !213, line: 49, size: 1728, elements: !4931)
!4931 = !{!4932, !4933, !4934, !4935, !4936, !4937, !4938, !4939, !4940, !4941, !4942, !4943, !4944, !4945, !4947, !4948, !4949, !4950, !4951, !4952, !4953, !4954, !4955, !4956, !4957, !4958, !4959, !4960, !4961}
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4930, file: !213, line: 51, baseType: !87, size: 32)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4930, file: !213, line: 54, baseType: !130, size: 64, offset: 64)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4930, file: !213, line: 55, baseType: !130, size: 64, offset: 128)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4930, file: !213, line: 56, baseType: !130, size: 64, offset: 192)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4930, file: !213, line: 57, baseType: !130, size: 64, offset: 256)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4930, file: !213, line: 58, baseType: !130, size: 64, offset: 320)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4930, file: !213, line: 59, baseType: !130, size: 64, offset: 384)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4930, file: !213, line: 60, baseType: !130, size: 64, offset: 448)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4930, file: !213, line: 61, baseType: !130, size: 64, offset: 512)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4930, file: !213, line: 64, baseType: !130, size: 64, offset: 576)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4930, file: !213, line: 65, baseType: !130, size: 64, offset: 640)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4930, file: !213, line: 66, baseType: !130, size: 64, offset: 704)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4930, file: !213, line: 68, baseType: !228, size: 64, offset: 768)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4930, file: !213, line: 70, baseType: !4946, size: 64, offset: 832)
!4946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4930, size: 64)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4930, file: !213, line: 72, baseType: !87, size: 32, offset: 896)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4930, file: !213, line: 73, baseType: !87, size: 32, offset: 928)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4930, file: !213, line: 74, baseType: !235, size: 64, offset: 960)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4930, file: !213, line: 77, baseType: !132, size: 16, offset: 1024)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4930, file: !213, line: 78, baseType: !240, size: 8, offset: 1040)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4930, file: !213, line: 79, baseType: !54, size: 8, offset: 1048)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4930, file: !213, line: 81, baseType: !243, size: 64, offset: 1088)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4930, file: !213, line: 89, baseType: !246, size: 64, offset: 1152)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4930, file: !213, line: 91, baseType: !248, size: 64, offset: 1216)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4930, file: !213, line: 92, baseType: !251, size: 64, offset: 1280)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4930, file: !213, line: 93, baseType: !4946, size: 64, offset: 1344)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4930, file: !213, line: 94, baseType: !131, size: 64, offset: 1408)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4930, file: !213, line: 95, baseType: !133, size: 64, offset: 1472)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4930, file: !213, line: 96, baseType: !87, size: 32, offset: 1536)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4930, file: !213, line: 98, baseType: !258, size: 160, offset: 1568)
!4962 = !{!4963, !4964, !4965, !4966, !4967, !4968, !4972, !4974, !4975, !4980, !4983, !4984}
!4963 = !DILocalVariable(name: "filename", arg: 1, scope: !4925, file: !834, line: 46, type: !136)
!4964 = !DILocalVariable(name: "mode", arg: 2, scope: !4925, file: !834, line: 46, type: !136)
!4965 = !DILocalVariable(name: "open_direction", scope: !4925, file: !834, line: 54, type: !87)
!4966 = !DILocalVariable(name: "open_flags", scope: !4925, file: !834, line: 55, type: !87)
!4967 = !DILocalVariable(name: "open_flags_gnu", scope: !4925, file: !834, line: 57, type: !196)
!4968 = !DILocalVariable(name: "fdopen_mode_buf", scope: !4925, file: !834, line: 59, type: !4969)
!4969 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 648, elements: !4970)
!4970 = !{!4971}
!4971 = !DISubrange(count: 81)
!4972 = !DILocalVariable(name: "p", scope: !4973, file: !834, line: 62, type: !136)
!4973 = distinct !DILexicalBlock(scope: !4925, file: !834, line: 61, column: 3)
!4974 = !DILocalVariable(name: "q", scope: !4973, file: !834, line: 64, type: !130)
!4975 = !DILocalVariable(name: "len", scope: !4976, file: !834, line: 128, type: !133)
!4976 = distinct !DILexicalBlock(scope: !4977, file: !834, line: 127, column: 9)
!4977 = distinct !DILexicalBlock(scope: !4978, file: !834, line: 68, column: 7)
!4978 = distinct !DILexicalBlock(scope: !4979, file: !834, line: 67, column: 5)
!4979 = distinct !DILexicalBlock(scope: !4973, file: !834, line: 67, column: 5)
!4980 = !DILocalVariable(name: "fd", scope: !4981, file: !834, line: 199, type: !87)
!4981 = distinct !DILexicalBlock(scope: !4982, file: !834, line: 198, column: 5)
!4982 = distinct !DILexicalBlock(scope: !4925, file: !834, line: 197, column: 7)
!4983 = !DILocalVariable(name: "fp", scope: !4981, file: !834, line: 204, type: !4928)
!4984 = !DILocalVariable(name: "saved_errno", scope: !4985, file: !834, line: 207, type: !87)
!4985 = distinct !DILexicalBlock(scope: !4986, file: !834, line: 206, column: 9)
!4986 = distinct !DILexicalBlock(scope: !4981, file: !834, line: 205, column: 11)
!4987 = !DILocation(line: 0, scope: !4925)
!4988 = !DILocation(line: 59, column: 3, scope: !4925)
!4989 = !DILocation(line: 59, column: 8, scope: !4925)
!4990 = !DILocation(line: 0, scope: !4973)
!4991 = !DILocation(line: 67, column: 12, scope: !4978)
!4992 = !DILocation(line: 67, column: 15, scope: !4978)
!4993 = !DILocation(line: 67, column: 5, scope: !4979)
!4994 = !DILocation(line: 138, column: 8, scope: !4973)
!4995 = !DILocation(line: 197, column: 7, scope: !4925)
!4996 = !DILocation(line: 69, column: 9, scope: !4977)
!4997 = !DILocation(line: 74, column: 19, scope: !4998)
!4998 = distinct !DILexicalBlock(scope: !4999, file: !834, line: 74, column: 17)
!4999 = distinct !DILexicalBlock(scope: !4977, file: !834, line: 70, column: 11)
!5000 = !DILocation(line: 74, column: 17, scope: !4999)
!5001 = !DILocation(line: 75, column: 17, scope: !4998)
!5002 = !DILocation(line: 75, column: 20, scope: !4998)
!5003 = !DILocation(line: 75, column: 15, scope: !4998)
!5004 = !DILocation(line: 80, column: 24, scope: !4999)
!5005 = !DILocation(line: 82, column: 19, scope: !5006)
!5006 = distinct !DILexicalBlock(scope: !4999, file: !834, line: 82, column: 17)
!5007 = !DILocation(line: 82, column: 17, scope: !4999)
!5008 = !DILocation(line: 83, column: 17, scope: !5006)
!5009 = !DILocation(line: 83, column: 20, scope: !5006)
!5010 = !DILocation(line: 83, column: 15, scope: !5006)
!5011 = !DILocation(line: 88, column: 24, scope: !4999)
!5012 = !DILocation(line: 90, column: 19, scope: !5013)
!5013 = distinct !DILexicalBlock(scope: !4999, file: !834, line: 90, column: 17)
!5014 = !DILocation(line: 90, column: 17, scope: !4999)
!5015 = !DILocation(line: 91, column: 17, scope: !5013)
!5016 = !DILocation(line: 91, column: 20, scope: !5013)
!5017 = !DILocation(line: 91, column: 15, scope: !5013)
!5018 = !DILocation(line: 100, column: 19, scope: !5019)
!5019 = distinct !DILexicalBlock(scope: !4999, file: !834, line: 100, column: 17)
!5020 = !DILocation(line: 100, column: 17, scope: !4999)
!5021 = !DILocation(line: 101, column: 17, scope: !5019)
!5022 = !DILocation(line: 101, column: 20, scope: !5019)
!5023 = !DILocation(line: 101, column: 15, scope: !5019)
!5024 = !DILocation(line: 107, column: 19, scope: !5025)
!5025 = distinct !DILexicalBlock(scope: !4999, file: !834, line: 107, column: 17)
!5026 = !DILocation(line: 107, column: 17, scope: !4999)
!5027 = !DILocation(line: 108, column: 17, scope: !5025)
!5028 = !DILocation(line: 108, column: 20, scope: !5025)
!5029 = !DILocation(line: 108, column: 15, scope: !5025)
!5030 = !DILocation(line: 113, column: 24, scope: !4999)
!5031 = !DILocation(line: 115, column: 13, scope: !4999)
!5032 = !DILocation(line: 117, column: 24, scope: !4999)
!5033 = !DILocation(line: 119, column: 13, scope: !4999)
!5034 = !DILocation(line: 128, column: 24, scope: !4976)
!5035 = !DILocation(line: 0, scope: !4976)
!5036 = !DILocation(line: 129, column: 48, scope: !5037)
!5037 = distinct !DILexicalBlock(scope: !4976, file: !834, line: 129, column: 15)
!5038 = !DILocation(line: 129, column: 15, scope: !4976)
!5039 = !DILocalVariable(name: "__dest", arg: 1, scope: !5040, file: !1273, line: 26, type: !4653)
!5040 = distinct !DISubprogram(name: "memcpy", scope: !1273, file: !1273, line: 26, type: !4651, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !5041)
!5041 = !{!5039, !5042, !5043}
!5042 = !DILocalVariable(name: "__src", arg: 2, scope: !5040, file: !1273, line: 26, type: !1084)
!5043 = !DILocalVariable(name: "__len", arg: 3, scope: !5040, file: !1273, line: 26, type: !133)
!5044 = !DILocation(line: 0, scope: !5040, inlinedAt: !5045)
!5045 = distinct !DILocation(line: 131, column: 11, scope: !4976)
!5046 = !DILocation(line: 29, column: 10, scope: !5040, inlinedAt: !5045)
!5047 = !DILocation(line: 132, column: 13, scope: !4976)
!5048 = !DILocation(line: 135, column: 9, scope: !4977)
!5049 = !DILocation(line: 67, column: 25, scope: !4978)
!5050 = distinct !{!5050, !4993, !5051, !983}
!5051 = !DILocation(line: 136, column: 7, scope: !4979)
!5052 = !DILocation(line: 197, column: 7, scope: !4982)
!5053 = !DILocation(line: 199, column: 47, scope: !4981)
!5054 = !DILocation(line: 199, column: 16, scope: !4981)
!5055 = !DILocation(line: 0, scope: !4981)
!5056 = !DILocation(line: 201, column: 14, scope: !5057)
!5057 = distinct !DILexicalBlock(scope: !4981, file: !834, line: 201, column: 11)
!5058 = !DILocation(line: 201, column: 11, scope: !4981)
!5059 = !DILocation(line: 204, column: 18, scope: !4981)
!5060 = !DILocation(line: 205, column: 14, scope: !4986)
!5061 = !DILocation(line: 205, column: 11, scope: !4981)
!5062 = !DILocation(line: 207, column: 29, scope: !4985)
!5063 = !DILocation(line: 0, scope: !4985)
!5064 = !DILocation(line: 208, column: 11, scope: !4985)
!5065 = !DILocation(line: 209, column: 17, scope: !4985)
!5066 = !DILocation(line: 210, column: 9, scope: !4985)
!5067 = !DILocalVariable(name: "filename", arg: 1, scope: !5068, file: !834, line: 30, type: !136)
!5068 = distinct !DISubprogram(name: "orig_fopen", scope: !834, file: !834, line: 30, type: !4926, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !5069)
!5069 = !{!5067, !5070}
!5070 = !DILocalVariable(name: "mode", arg: 2, scope: !5068, file: !834, line: 30, type: !136)
!5071 = !DILocation(line: 0, scope: !5068, inlinedAt: !5072)
!5072 = distinct !DILocation(line: 219, column: 10, scope: !4925)
!5073 = !DILocation(line: 32, column: 10, scope: !5068, inlinedAt: !5072)
!5074 = !DILocation(line: 219, column: 3, scope: !4925)
!5075 = !DILocation(line: 220, column: 1, scope: !4925)
!5076 = !DISubprogram(name: "open", scope: !2357, file: !2357, line: 181, type: !5077, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !875)
!5077 = !DISubroutineType(types: !5078)
!5078 = !{!87, !136, !87, null}
!5079 = !DISubprogram(name: "fdopen", scope: !931, file: !931, line: 293, type: !5080, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !875)
!5080 = !DISubroutineType(types: !5081)
!5081 = !{!4928, !87, !136}
!5082 = !DISubprogram(name: "close", scope: !2222, file: !2222, line: 358, type: !1259, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !875)
!5083 = !DISubprogram(name: "fopen", scope: !931, file: !931, line: 258, type: !5084, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !875)
!5084 = !DISubroutineType(types: !5085)
!5085 = !{!4928, !437, !437}
!5086 = distinct !DISubprogram(name: "close_stream", scope: !836, file: !836, line: 55, type: !5087, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !835, retainedNodes: !5123)
!5087 = !DISubroutineType(types: !5088)
!5088 = !{!87, !5089}
!5089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5090, size: 64)
!5090 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !211, line: 7, baseType: !5091)
!5091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !213, line: 49, size: 1728, elements: !5092)
!5092 = !{!5093, !5094, !5095, !5096, !5097, !5098, !5099, !5100, !5101, !5102, !5103, !5104, !5105, !5106, !5108, !5109, !5110, !5111, !5112, !5113, !5114, !5115, !5116, !5117, !5118, !5119, !5120, !5121, !5122}
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5091, file: !213, line: 51, baseType: !87, size: 32)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5091, file: !213, line: 54, baseType: !130, size: 64, offset: 64)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5091, file: !213, line: 55, baseType: !130, size: 64, offset: 128)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5091, file: !213, line: 56, baseType: !130, size: 64, offset: 192)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5091, file: !213, line: 57, baseType: !130, size: 64, offset: 256)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5091, file: !213, line: 58, baseType: !130, size: 64, offset: 320)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5091, file: !213, line: 59, baseType: !130, size: 64, offset: 384)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5091, file: !213, line: 60, baseType: !130, size: 64, offset: 448)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5091, file: !213, line: 61, baseType: !130, size: 64, offset: 512)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5091, file: !213, line: 64, baseType: !130, size: 64, offset: 576)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5091, file: !213, line: 65, baseType: !130, size: 64, offset: 640)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5091, file: !213, line: 66, baseType: !130, size: 64, offset: 704)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5091, file: !213, line: 68, baseType: !228, size: 64, offset: 768)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5091, file: !213, line: 70, baseType: !5107, size: 64, offset: 832)
!5107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5091, size: 64)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5091, file: !213, line: 72, baseType: !87, size: 32, offset: 896)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5091, file: !213, line: 73, baseType: !87, size: 32, offset: 928)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5091, file: !213, line: 74, baseType: !235, size: 64, offset: 960)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5091, file: !213, line: 77, baseType: !132, size: 16, offset: 1024)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5091, file: !213, line: 78, baseType: !240, size: 8, offset: 1040)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5091, file: !213, line: 79, baseType: !54, size: 8, offset: 1048)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5091, file: !213, line: 81, baseType: !243, size: 64, offset: 1088)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5091, file: !213, line: 89, baseType: !246, size: 64, offset: 1152)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5091, file: !213, line: 91, baseType: !248, size: 64, offset: 1216)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5091, file: !213, line: 92, baseType: !251, size: 64, offset: 1280)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5091, file: !213, line: 93, baseType: !5107, size: 64, offset: 1344)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5091, file: !213, line: 94, baseType: !131, size: 64, offset: 1408)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5091, file: !213, line: 95, baseType: !133, size: 64, offset: 1472)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5091, file: !213, line: 96, baseType: !87, size: 32, offset: 1536)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5091, file: !213, line: 98, baseType: !258, size: 160, offset: 1568)
!5123 = !{!5124, !5125, !5127, !5128}
!5124 = !DILocalVariable(name: "stream", arg: 1, scope: !5086, file: !836, line: 55, type: !5089)
!5125 = !DILocalVariable(name: "some_pending", scope: !5086, file: !836, line: 57, type: !5126)
!5126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !196)
!5127 = !DILocalVariable(name: "prev_fail", scope: !5086, file: !836, line: 58, type: !5126)
!5128 = !DILocalVariable(name: "fclose_fail", scope: !5086, file: !836, line: 59, type: !5126)
!5129 = !DILocation(line: 0, scope: !5086)
!5130 = !DILocation(line: 57, column: 30, scope: !5086)
!5131 = !DILocalVariable(name: "__stream", arg: 1, scope: !5132, file: !1290, line: 135, type: !5089)
!5132 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1290, file: !1290, line: 135, type: !5087, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !835, retainedNodes: !5133)
!5133 = !{!5131}
!5134 = !DILocation(line: 0, scope: !5132, inlinedAt: !5135)
!5135 = distinct !DILocation(line: 58, column: 27, scope: !5086)
!5136 = !DILocation(line: 137, column: 10, scope: !5132, inlinedAt: !5135)
!5137 = !DILocation(line: 58, column: 43, scope: !5086)
!5138 = !DILocation(line: 59, column: 29, scope: !5086)
!5139 = !DILocation(line: 59, column: 45, scope: !5086)
!5140 = !DILocation(line: 69, column: 17, scope: !5141)
!5141 = distinct !DILexicalBlock(scope: !5086, file: !836, line: 69, column: 7)
!5142 = !DILocation(line: 57, column: 50, scope: !5086)
!5143 = !DILocation(line: 69, column: 33, scope: !5141)
!5144 = !DILocation(line: 69, column: 53, scope: !5141)
!5145 = !DILocation(line: 69, column: 59, scope: !5141)
!5146 = !DILocation(line: 69, column: 7, scope: !5086)
!5147 = !DILocation(line: 71, column: 11, scope: !5148)
!5148 = distinct !DILexicalBlock(scope: !5141, file: !836, line: 70, column: 5)
!5149 = !DILocation(line: 72, column: 9, scope: !5150)
!5150 = distinct !DILexicalBlock(scope: !5148, file: !836, line: 71, column: 11)
!5151 = !DILocation(line: 72, column: 15, scope: !5150)
!5152 = !DILocation(line: 77, column: 1, scope: !5086)
!5153 = !DISubprogram(name: "__fpending", scope: !2565, file: !2565, line: 75, type: !5154, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !875)
!5154 = !DISubroutineType(types: !5155)
!5155 = !{!133, !5089}
!5156 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !754, file: !754, line: 100, type: !5157, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !757, retainedNodes: !5160)
!5157 = !DISubroutineType(types: !5158)
!5158 = !{!133, !2830, !136, !133, !5159}
!5159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!5160 = !{!5161, !5162, !5163, !5164, !5165}
!5161 = !DILocalVariable(name: "pwc", arg: 1, scope: !5156, file: !754, line: 100, type: !2830)
!5162 = !DILocalVariable(name: "s", arg: 2, scope: !5156, file: !754, line: 100, type: !136)
!5163 = !DILocalVariable(name: "n", arg: 3, scope: !5156, file: !754, line: 100, type: !133)
!5164 = !DILocalVariable(name: "ps", arg: 4, scope: !5156, file: !754, line: 100, type: !5159)
!5165 = !DILocalVariable(name: "ret", scope: !5156, file: !754, line: 130, type: !133)
!5166 = !DILocation(line: 0, scope: !5156)
!5167 = !DILocation(line: 105, column: 9, scope: !5168)
!5168 = distinct !DILexicalBlock(scope: !5156, file: !754, line: 105, column: 7)
!5169 = !DILocation(line: 105, column: 7, scope: !5156)
!5170 = !DILocation(line: 117, column: 10, scope: !5171)
!5171 = distinct !DILexicalBlock(scope: !5156, file: !754, line: 117, column: 7)
!5172 = !DILocation(line: 117, column: 7, scope: !5156)
!5173 = !DILocation(line: 130, column: 16, scope: !5156)
!5174 = !DILocation(line: 135, column: 11, scope: !5175)
!5175 = distinct !DILexicalBlock(scope: !5156, file: !754, line: 135, column: 7)
!5176 = !DILocation(line: 135, column: 25, scope: !5175)
!5177 = !DILocation(line: 135, column: 30, scope: !5175)
!5178 = !DILocation(line: 135, column: 7, scope: !5156)
!5179 = !DILocalVariable(name: "ps", arg: 1, scope: !5180, file: !2804, line: 1135, type: !5159)
!5180 = distinct !DISubprogram(name: "mbszero", scope: !2804, file: !2804, line: 1135, type: !5181, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !757, retainedNodes: !5183)
!5181 = !DISubroutineType(types: !5182)
!5182 = !{null, !5159}
!5183 = !{!5179}
!5184 = !DILocation(line: 0, scope: !5180, inlinedAt: !5185)
!5185 = distinct !DILocation(line: 137, column: 5, scope: !5175)
!5186 = !DILocalVariable(name: "__dest", arg: 1, scope: !5187, file: !1273, line: 57, type: !131)
!5187 = distinct !DISubprogram(name: "memset", scope: !1273, file: !1273, line: 57, type: !2813, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !757, retainedNodes: !5188)
!5188 = !{!5186, !5189, !5190}
!5189 = !DILocalVariable(name: "__ch", arg: 2, scope: !5187, file: !1273, line: 57, type: !87)
!5190 = !DILocalVariable(name: "__len", arg: 3, scope: !5187, file: !1273, line: 57, type: !133)
!5191 = !DILocation(line: 0, scope: !5187, inlinedAt: !5192)
!5192 = distinct !DILocation(line: 1137, column: 3, scope: !5180, inlinedAt: !5185)
!5193 = !DILocation(line: 59, column: 10, scope: !5187, inlinedAt: !5192)
!5194 = !DILocation(line: 137, column: 5, scope: !5175)
!5195 = !DILocation(line: 138, column: 11, scope: !5196)
!5196 = distinct !DILexicalBlock(scope: !5156, file: !754, line: 138, column: 7)
!5197 = !DILocation(line: 138, column: 7, scope: !5156)
!5198 = !DILocation(line: 139, column: 5, scope: !5196)
!5199 = !DILocation(line: 143, column: 26, scope: !5200)
!5200 = distinct !DILexicalBlock(scope: !5156, file: !754, line: 143, column: 7)
!5201 = !DILocation(line: 143, column: 41, scope: !5200)
!5202 = !DILocation(line: 143, column: 7, scope: !5156)
!5203 = !DILocation(line: 145, column: 15, scope: !5204)
!5204 = distinct !DILexicalBlock(scope: !5205, file: !754, line: 145, column: 11)
!5205 = distinct !DILexicalBlock(scope: !5200, file: !754, line: 144, column: 5)
!5206 = !DILocation(line: 145, column: 11, scope: !5205)
!5207 = !DILocation(line: 146, column: 32, scope: !5204)
!5208 = !DILocation(line: 146, column: 16, scope: !5204)
!5209 = !DILocation(line: 146, column: 14, scope: !5204)
!5210 = !DILocation(line: 146, column: 9, scope: !5204)
!5211 = !DILocation(line: 286, column: 1, scope: !5156)
!5212 = !DISubprogram(name: "mbsinit", scope: !5213, file: !5213, line: 293, type: !5214, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !875)
!5213 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!5214 = !DISubroutineType(types: !5215)
!5215 = !{!87, !5216}
!5216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5217, size: 64)
!5217 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !760)
!5218 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !838, file: !838, line: 27, type: !4298, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !837, retainedNodes: !5219)
!5219 = !{!5220, !5221, !5222, !5223}
!5220 = !DILocalVariable(name: "ptr", arg: 1, scope: !5218, file: !838, line: 27, type: !131)
!5221 = !DILocalVariable(name: "nmemb", arg: 2, scope: !5218, file: !838, line: 27, type: !133)
!5222 = !DILocalVariable(name: "size", arg: 3, scope: !5218, file: !838, line: 27, type: !133)
!5223 = !DILocalVariable(name: "nbytes", scope: !5218, file: !838, line: 29, type: !133)
!5224 = !DILocation(line: 0, scope: !5218)
!5225 = !DILocation(line: 30, column: 7, scope: !5226)
!5226 = distinct !DILexicalBlock(scope: !5218, file: !838, line: 30, column: 7)
!5227 = !DILocalVariable(name: "ptr", arg: 1, scope: !5228, file: !4384, line: 2057, type: !131)
!5228 = distinct !DISubprogram(name: "rpl_realloc", scope: !4384, file: !4384, line: 2057, type: !4376, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !837, retainedNodes: !5229)
!5229 = !{!5227, !5230}
!5230 = !DILocalVariable(name: "size", arg: 2, scope: !5228, file: !4384, line: 2057, type: !133)
!5231 = !DILocation(line: 0, scope: !5228, inlinedAt: !5232)
!5232 = distinct !DILocation(line: 37, column: 10, scope: !5218)
!5233 = !DILocation(line: 2059, column: 24, scope: !5228, inlinedAt: !5232)
!5234 = !DILocation(line: 2059, column: 10, scope: !5228, inlinedAt: !5232)
!5235 = !DILocation(line: 37, column: 3, scope: !5218)
!5236 = !DILocation(line: 32, column: 7, scope: !5237)
!5237 = distinct !DILexicalBlock(scope: !5226, file: !838, line: 31, column: 5)
!5238 = !DILocation(line: 32, column: 13, scope: !5237)
!5239 = !DILocation(line: 33, column: 7, scope: !5237)
!5240 = !DILocation(line: 38, column: 1, scope: !5218)
!5241 = distinct !DISubprogram(name: "hard_locale", scope: !772, file: !772, line: 28, type: !5242, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !840, retainedNodes: !5244)
!5242 = !DISubroutineType(types: !5243)
!5243 = !{!196, !87}
!5244 = !{!5245, !5246}
!5245 = !DILocalVariable(name: "category", arg: 1, scope: !5241, file: !772, line: 28, type: !87)
!5246 = !DILocalVariable(name: "locale", scope: !5241, file: !772, line: 30, type: !5247)
!5247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !5248)
!5248 = !{!5249}
!5249 = !DISubrange(count: 257)
!5250 = !DILocation(line: 0, scope: !5241)
!5251 = !DILocation(line: 30, column: 3, scope: !5241)
!5252 = !DILocation(line: 30, column: 8, scope: !5241)
!5253 = !DILocation(line: 32, column: 7, scope: !5254)
!5254 = distinct !DILexicalBlock(scope: !5241, file: !772, line: 32, column: 7)
!5255 = !DILocation(line: 32, column: 7, scope: !5241)
!5256 = !DILocalVariable(name: "__s1", arg: 1, scope: !5257, file: !949, line: 1359, type: !136)
!5257 = distinct !DISubprogram(name: "streq", scope: !949, file: !949, line: 1359, type: !950, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !840, retainedNodes: !5258)
!5258 = !{!5256, !5259}
!5259 = !DILocalVariable(name: "__s2", arg: 2, scope: !5257, file: !949, line: 1359, type: !136)
!5260 = !DILocation(line: 0, scope: !5257, inlinedAt: !5261)
!5261 = distinct !DILocation(line: 35, column: 9, scope: !5262)
!5262 = distinct !DILexicalBlock(scope: !5241, file: !772, line: 35, column: 7)
!5263 = !DILocation(line: 1361, column: 11, scope: !5257, inlinedAt: !5261)
!5264 = !DILocation(line: 35, column: 29, scope: !5262)
!5265 = !DILocation(line: 0, scope: !5257, inlinedAt: !5266)
!5266 = distinct !DILocation(line: 35, column: 32, scope: !5262)
!5267 = !DILocation(line: 1361, column: 11, scope: !5257, inlinedAt: !5266)
!5268 = !DILocation(line: 1361, column: 10, scope: !5257, inlinedAt: !5266)
!5269 = !DILocation(line: 35, column: 7, scope: !5241)
!5270 = !DILocation(line: 46, column: 3, scope: !5241)
!5271 = !DILocation(line: 47, column: 1, scope: !5241)
!5272 = distinct !DISubprogram(name: "setlocale_null_r", scope: !845, file: !845, line: 154, type: !5273, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !844, retainedNodes: !5275)
!5273 = !DISubroutineType(types: !5274)
!5274 = !{!87, !87, !130, !133}
!5275 = !{!5276, !5277, !5278}
!5276 = !DILocalVariable(name: "category", arg: 1, scope: !5272, file: !845, line: 154, type: !87)
!5277 = !DILocalVariable(name: "buf", arg: 2, scope: !5272, file: !845, line: 154, type: !130)
!5278 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5272, file: !845, line: 154, type: !133)
!5279 = !DILocation(line: 0, scope: !5272)
!5280 = !DILocation(line: 159, column: 10, scope: !5272)
!5281 = !DILocation(line: 159, column: 3, scope: !5272)
!5282 = distinct !DISubprogram(name: "setlocale_null", scope: !845, file: !845, line: 186, type: !5283, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !844, retainedNodes: !5285)
!5283 = !DISubroutineType(types: !5284)
!5284 = !{!136, !87}
!5285 = !{!5286}
!5286 = !DILocalVariable(name: "category", arg: 1, scope: !5282, file: !845, line: 186, type: !87)
!5287 = !DILocation(line: 0, scope: !5282)
!5288 = !DILocation(line: 189, column: 10, scope: !5282)
!5289 = !DILocation(line: 189, column: 3, scope: !5282)
!5290 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !847, file: !847, line: 35, type: !5283, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !846, retainedNodes: !5291)
!5291 = !{!5292, !5293}
!5292 = !DILocalVariable(name: "category", arg: 1, scope: !5290, file: !847, line: 35, type: !87)
!5293 = !DILocalVariable(name: "result", scope: !5290, file: !847, line: 37, type: !136)
!5294 = !DILocation(line: 0, scope: !5290)
!5295 = !DILocation(line: 37, column: 24, scope: !5290)
!5296 = !DILocation(line: 62, column: 3, scope: !5290)
!5297 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !847, file: !847, line: 66, type: !5273, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !846, retainedNodes: !5298)
!5298 = !{!5299, !5300, !5301, !5302, !5303}
!5299 = !DILocalVariable(name: "category", arg: 1, scope: !5297, file: !847, line: 66, type: !87)
!5300 = !DILocalVariable(name: "buf", arg: 2, scope: !5297, file: !847, line: 66, type: !130)
!5301 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5297, file: !847, line: 66, type: !133)
!5302 = !DILocalVariable(name: "result", scope: !5297, file: !847, line: 111, type: !136)
!5303 = !DILocalVariable(name: "length", scope: !5304, file: !847, line: 125, type: !133)
!5304 = distinct !DILexicalBlock(scope: !5305, file: !847, line: 124, column: 5)
!5305 = distinct !DILexicalBlock(scope: !5297, file: !847, line: 113, column: 7)
!5306 = !DILocation(line: 0, scope: !5297)
!5307 = !DILocation(line: 0, scope: !5290, inlinedAt: !5308)
!5308 = distinct !DILocation(line: 111, column: 24, scope: !5297)
!5309 = !DILocation(line: 37, column: 24, scope: !5290, inlinedAt: !5308)
!5310 = !DILocation(line: 113, column: 14, scope: !5305)
!5311 = !DILocation(line: 113, column: 7, scope: !5297)
!5312 = !DILocation(line: 116, column: 19, scope: !5313)
!5313 = distinct !DILexicalBlock(scope: !5314, file: !847, line: 116, column: 11)
!5314 = distinct !DILexicalBlock(scope: !5305, file: !847, line: 114, column: 5)
!5315 = !DILocation(line: 116, column: 11, scope: !5314)
!5316 = !DILocation(line: 120, column: 16, scope: !5313)
!5317 = !DILocation(line: 120, column: 9, scope: !5313)
!5318 = !DILocation(line: 125, column: 23, scope: !5304)
!5319 = !DILocation(line: 0, scope: !5304)
!5320 = !DILocation(line: 126, column: 18, scope: !5321)
!5321 = distinct !DILexicalBlock(scope: !5304, file: !847, line: 126, column: 11)
!5322 = !DILocation(line: 126, column: 11, scope: !5304)
!5323 = !DILocation(line: 128, column: 39, scope: !5324)
!5324 = distinct !DILexicalBlock(scope: !5321, file: !847, line: 127, column: 9)
!5325 = !DILocalVariable(name: "__dest", arg: 1, scope: !5326, file: !1273, line: 26, type: !4653)
!5326 = distinct !DISubprogram(name: "memcpy", scope: !1273, file: !1273, line: 26, type: !4651, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !846, retainedNodes: !5327)
!5327 = !{!5325, !5328, !5329}
!5328 = !DILocalVariable(name: "__src", arg: 2, scope: !5326, file: !1273, line: 26, type: !1084)
!5329 = !DILocalVariable(name: "__len", arg: 3, scope: !5326, file: !1273, line: 26, type: !133)
!5330 = !DILocation(line: 0, scope: !5326, inlinedAt: !5331)
!5331 = distinct !DILocation(line: 128, column: 11, scope: !5324)
!5332 = !DILocation(line: 29, column: 10, scope: !5326, inlinedAt: !5331)
!5333 = !DILocation(line: 129, column: 11, scope: !5324)
!5334 = !DILocation(line: 133, column: 23, scope: !5335)
!5335 = distinct !DILexicalBlock(scope: !5336, file: !847, line: 133, column: 15)
!5336 = distinct !DILexicalBlock(scope: !5321, file: !847, line: 132, column: 9)
!5337 = !DILocation(line: 133, column: 15, scope: !5336)
!5338 = !DILocation(line: 138, column: 44, scope: !5339)
!5339 = distinct !DILexicalBlock(scope: !5335, file: !847, line: 134, column: 13)
!5340 = !DILocation(line: 0, scope: !5326, inlinedAt: !5341)
!5341 = distinct !DILocation(line: 138, column: 15, scope: !5339)
!5342 = !DILocation(line: 29, column: 10, scope: !5326, inlinedAt: !5341)
!5343 = !DILocation(line: 139, column: 15, scope: !5339)
!5344 = !DILocation(line: 139, column: 32, scope: !5339)
!5345 = !DILocation(line: 140, column: 13, scope: !5339)
!5346 = !DILocation(line: 0, scope: !5305)
!5347 = !DILocation(line: 145, column: 1, scope: !5297)
