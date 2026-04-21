; ModuleID = 'src/base64.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], ptr, ptr }
%struct.slotvec = type { i64, ptr }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.base64_decode_context = type { i32, [4 x i8] }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

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
@.str.68 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !402
@.str.69 = private unnamed_addr constant [23 x i8] c"closing standard input\00", align 1, !dbg !404
@.str.28 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1, !dbg !419
@Version = dso_local local_unnamed_addr global ptr @.str.28, align 8, !dbg !422
@base64_to_int = dso_local local_unnamed_addr constant [256 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF>\FF\FF\FF?456789:;<=\FF\FF\FF\FF\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\FF\FF\FF\FF\FF\FF\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16, !dbg !426
@b64c = internal unnamed_addr constant [64 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", align 16, !dbg !432
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !441
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !454
@.str.37 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !446
@.str.1.38 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !448
@.str.2.39 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !450
@.str.3.40 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !452
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !456
@stderr = external local_unnamed_addr global ptr, align 8
@.str.51 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !462
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !494
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !464
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !484
@.str.1.57 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !486
@.str.2.59 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !488
@.str.3.58 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !490
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !492
@.str.4.52 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !496
@.str.5.53 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !498
@.str.6.54 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !503
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !508
@.str.78 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !514
@.str.1.79 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !516
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !518
@.str.82 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !549
@.str.1.83 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !552
@.str.2.84 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !554
@.str.3.85 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !556
@.str.4.86 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !558
@.str.5.87 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !560
@.str.6.88 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !562
@.str.7.89 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !564
@.str.8.90 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !566
@.str.9.91 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !568
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.82, ptr @.str.1.83, ptr @.str.2.84, ptr @.str.3.85, ptr @.str.4.86, ptr @.str.5.87, ptr @.str.6.88, ptr @.str.7.89, ptr @.str.8.90, ptr @.str.9.91, ptr null], align 16, !dbg !570
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !581
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !595
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !631
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !638
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !597
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !640
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !585
@.str.10.94 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !600
@.str.11.92 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !602
@.str.12.95 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !604
@.str.13.93 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !606
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !608
@.str.102 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !644
@.str.1.103 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !647
@.str.2.104 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !649
@.str.3.105 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !651
@.str.4.106 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !653
@.str.5.107 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !655
@.str.6.108 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !660
@.str.7.109 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !665
@.str.8.110 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !667
@.str.9.111 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !669
@.str.10.112 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !674
@.str.11.113 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !676
@.str.12.114 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !681
@.str.13.115 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !683
@.str.14.116 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !688
@.str.15.117 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !693
@.str.16.118 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !698
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.123 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !703
@.str.18.124 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !705
@.str.19.125 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !707
@.str.20.126 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !709
@.str.21.127 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !711
@.str.22.128 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !713
@.str.23.129 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !715
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !720
@exit_failure = dso_local global i32 1, align 4, !dbg !728
@.str.144 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !734
@.str.1.142 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !737
@.str.2.143 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !739
@.str.153 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !741
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !744
@.str.1.158 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !759

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !847 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !851, metadata !DIExpression()), !dbg !852
  %2 = icmp eq i32 %0, 0, !dbg !853
  br i1 %2, label %8, label %3, !dbg !855

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !856, !tbaa !858
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #42, !dbg !856
  %6 = load ptr, ptr @program_name, align 8, !dbg !856, !tbaa !858
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #42, !dbg !856
  br label %41, !dbg !856

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #42, !dbg !862
  %10 = load ptr, ptr @program_name, align 8, !dbg !862, !tbaa !858
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #42, !dbg !862
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #42, !dbg !864
  %13 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %12, i32 noundef 64) #42, !dbg !864
  %14 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.22, i32 noundef 5) #42, !dbg !865
  %15 = load ptr, ptr @stdout, align 8, !dbg !865, !tbaa !858
  %16 = tail call i32 @fputs_unlocked(ptr noundef %14, ptr noundef %15), !dbg !865
  %17 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.23, i32 noundef 5) #42, !dbg !869
  %18 = load ptr, ptr @stdout, align 8, !dbg !869, !tbaa !858
  %19 = tail call i32 @fputs_unlocked(ptr noundef %17, ptr noundef %18), !dbg !869
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #42, !dbg !872
  tail call fastcc void @oputs_(ptr noundef %20), !dbg !872
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #42, !dbg !873
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !873
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #42, !dbg !874
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !874
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #42, !dbg !875
  tail call fastcc void @oputs_(ptr noundef %23), !dbg !875
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #42, !dbg !876
  tail call fastcc void @oputs_(ptr noundef %24), !dbg !876
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #42, !dbg !877
  %26 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %25, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3) #42, !dbg !877
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !878, metadata !DIExpression()), !dbg !895
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !890, metadata !DIExpression()), !dbg !895
  call void @llvm.dbg.value(metadata ptr poison, metadata !890, metadata !DIExpression()), !dbg !895
  tail call void @emit_bug_reporting_address() #42, !dbg !897
  %27 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #42, !dbg !898
  call void @llvm.dbg.value(metadata ptr %27, metadata !893, metadata !DIExpression()), !dbg !895
  %28 = icmp eq ptr %27, null, !dbg !899
  br i1 %28, label %36, label %29, !dbg !901

29:                                               ; preds = %8
  %30 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %27, ptr noundef nonnull dereferenceable(4) @.str.54, i64 noundef 3) #43, !dbg !902
  %31 = icmp eq i32 %30, 0, !dbg !902
  br i1 %31, label %36, label %32, !dbg !903

32:                                               ; preds = %29
  %33 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.55, i32 noundef 5) #42, !dbg !904
  %34 = load ptr, ptr @stdout, align 8, !dbg !904, !tbaa !858
  %35 = tail call i32 @fputs_unlocked(ptr noundef %33, ptr noundef %34), !dbg !904
  br label %36, !dbg !906

36:                                               ; preds = %8, %29, %32
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !890, metadata !DIExpression()), !dbg !895
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !894, metadata !DIExpression()), !dbg !895
  %37 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.56, i32 noundef 5) #42, !dbg !907
  %38 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %37, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.3) #42, !dbg !907
  %39 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.57, i32 noundef 5) #42, !dbg !908
  %40 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %39, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.58) #42, !dbg !908
  br label %41

41:                                               ; preds = %36, %3
  tail call void @exit(i32 noundef %0) #44, !dbg !909
  unreachable, !dbg !909
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !910 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !914 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !920 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !923 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !186 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !190, metadata !DIExpression()), !dbg !927
  call void @llvm.dbg.value(metadata ptr %0, metadata !191, metadata !DIExpression()), !dbg !927
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !928, !tbaa !929
  %3 = icmp eq i32 %2, -1, !dbg !931
  br i1 %3, label %4, label %16, !dbg !932

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.24) #42, !dbg !933
  call void @llvm.dbg.value(metadata ptr %5, metadata !192, metadata !DIExpression()), !dbg !934
  %6 = icmp eq ptr %5, null, !dbg !935
  br i1 %6, label %14, label %7, !dbg !936

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !937, !tbaa !938
  %9 = icmp eq i8 %8, 0, !dbg !937
  br i1 %9, label %14, label %10, !dbg !939

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !940, metadata !DIExpression()), !dbg !947
  call void @llvm.dbg.value(metadata ptr @.str.25, metadata !946, metadata !DIExpression()), !dbg !947
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.25) #43, !dbg !949
  %12 = icmp eq i32 %11, 0, !dbg !950
  %13 = zext i1 %12 to i32, !dbg !939
  br label %14, !dbg !939

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !951, !tbaa !929
  br label %16, !dbg !952

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !953
  %18 = icmp eq i32 %17, 0, !dbg !953
  br i1 %18, label %22, label %19, !dbg !955

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !956, !tbaa !858
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !956
  br label %128, !dbg !958

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !195, metadata !DIExpression()), !dbg !927
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.26) #43, !dbg !959
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !960
  call void @llvm.dbg.value(metadata ptr %24, metadata !197, metadata !DIExpression()), !dbg !927
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #43, !dbg !961
  call void @llvm.dbg.value(metadata ptr %25, metadata !198, metadata !DIExpression()), !dbg !927
  %26 = icmp eq ptr %25, null, !dbg !962
  br i1 %26, label %58, label %27, !dbg !963

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !964
  br i1 %28, label %58, label %29, !dbg !965

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !199, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.value(metadata i64 0, metadata !203, metadata !DIExpression()), !dbg !966
  %30 = icmp ult ptr %24, %25, !dbg !967
  br i1 %30, label %31, label %52, !dbg !968

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #45, !dbg !927
  %33 = load ptr, ptr %32, align 8, !tbaa !858
  br label %34, !dbg !968

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !199, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.value(metadata i64 %36, metadata !203, metadata !DIExpression()), !dbg !966
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !969
  call void @llvm.dbg.value(metadata ptr %37, metadata !199, metadata !DIExpression()), !dbg !966
  %38 = load i8, ptr %35, align 1, !dbg !969, !tbaa !938
  %39 = sext i8 %38 to i64, !dbg !969
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !969
  %41 = load i16, ptr %40, align 2, !dbg !969, !tbaa !970
  %42 = freeze i16 %41, !dbg !972
  %43 = lshr i16 %42, 13, !dbg !972
  %44 = and i16 %43, 1, !dbg !972
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !973
  call void @llvm.dbg.value(metadata i64 %46, metadata !203, metadata !DIExpression()), !dbg !966
  %47 = icmp ult ptr %37, %25, !dbg !967
  %48 = icmp ult i64 %46, 2, !dbg !974
  %49 = select i1 %47, i1 %48, i1 false, !dbg !974
  br i1 %49, label %34, label %50, !dbg !968, !llvm.loop !975

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !977
  br i1 %51, label %52, label %54, !dbg !979

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !979

54:                                               ; preds = %50, %52
  %55 = phi i1 [ %53, %52 ], [ %51, %50 ]
  %56 = phi ptr [ %25, %52 ], [ %24, %50 ]
  %57 = zext i1 %55 to i8, !dbg !979
  call void @llvm.dbg.value(metadata i8 %57, metadata !195, metadata !DIExpression()), !dbg !927
  call void @llvm.dbg.value(metadata ptr %56, metadata !198, metadata !DIExpression()), !dbg !927
  br label %58, !dbg !980

58:                                               ; preds = %22, %27, %54
  %59 = phi ptr [ %56, %54 ], [ %24, %27 ], [ %24, %22 ], !dbg !927
  %60 = phi i8 [ %57, %54 ], [ 1, %27 ], [ 0, %22 ], !dbg !927
  call void @llvm.dbg.value(metadata i8 %60, metadata !195, metadata !DIExpression()), !dbg !927
  call void @llvm.dbg.value(metadata ptr %59, metadata !198, metadata !DIExpression()), !dbg !927
  %61 = tail call i64 @strcspn(ptr noundef %59, ptr noundef nonnull @.str.27) #43, !dbg !981
  call void @llvm.dbg.value(metadata i64 %61, metadata !204, metadata !DIExpression()), !dbg !927
  %62 = getelementptr inbounds i8, ptr %59, i64 %61, !dbg !982
  call void @llvm.dbg.value(metadata ptr %62, metadata !205, metadata !DIExpression()), !dbg !927
  br label %63, !dbg !983

63:                                               ; preds = %96, %58
  %64 = phi ptr [ %62, %58 ], [ %97, %96 ], !dbg !927
  %65 = phi i8 [ %60, %58 ], [ %73, %96 ], !dbg !927
  call void @llvm.dbg.value(metadata i8 %65, metadata !195, metadata !DIExpression()), !dbg !927
  call void @llvm.dbg.value(metadata ptr %64, metadata !205, metadata !DIExpression()), !dbg !927
  %66 = load i8, ptr %64, align 1, !dbg !984, !tbaa !938
  switch i8 %66, label %72 [
    i8 0, label %98
    i8 10, label %98
    i8 45, label %67
  ], !dbg !985

67:                                               ; preds = %63
  %68 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !986
  %69 = load i8, ptr %68, align 1, !dbg !989, !tbaa !938
  %70 = icmp eq i8 %69, 45, !dbg !990
  %71 = select i1 %70, i8 0, i8 %65, !dbg !991
  br label %72, !dbg !991

72:                                               ; preds = %67, %63
  %73 = phi i8 [ %65, %63 ], [ %71, %67 ], !dbg !927
  call void @llvm.dbg.value(metadata i8 %73, metadata !195, metadata !DIExpression()), !dbg !927
  %74 = tail call ptr @__ctype_b_loc() #45, !dbg !992
  %75 = load ptr, ptr %74, align 8, !dbg !992, !tbaa !858
  %76 = sext i8 %66 to i64, !dbg !992
  %77 = getelementptr inbounds i16, ptr %75, i64 %76, !dbg !992
  %78 = load i16, ptr %77, align 2, !dbg !992, !tbaa !970
  %79 = and i16 %78, 8192, !dbg !992
  %80 = icmp eq i16 %79, 0, !dbg !992
  br i1 %80, label %96, label %81, !dbg !994

81:                                               ; preds = %72
  %82 = icmp eq i8 %66, 9, !dbg !995
  br i1 %82, label %98, label %83, !dbg !998

83:                                               ; preds = %81
  %84 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !999
  %85 = load i8, ptr %84, align 1, !dbg !999, !tbaa !938
  %86 = sext i8 %85 to i64, !dbg !999
  %87 = getelementptr inbounds i16, ptr %75, i64 %86, !dbg !999
  %88 = load i16, ptr %87, align 2, !dbg !999, !tbaa !970
  %89 = and i16 %88, 8192, !dbg !999
  %90 = icmp eq i16 %89, 0, !dbg !999
  br i1 %90, label %91, label %98, !dbg !1000

91:                                               ; preds = %83
  %92 = and i8 %73, 1, !dbg !1001
  %93 = icmp ne i8 %92, 0, !dbg !1001
  %94 = icmp eq i8 %85, 45
  %95 = select i1 %93, i1 true, i1 %94, !dbg !1003
  br i1 %95, label %96, label %98, !dbg !1003

96:                                               ; preds = %91, %72
  %97 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !1004
  call void @llvm.dbg.value(metadata ptr %97, metadata !205, metadata !DIExpression()), !dbg !927
  br label %63, !dbg !983, !llvm.loop !1005

98:                                               ; preds = %91, %63, %63, %81, %83
  %99 = ptrtoint ptr %24 to i64, !dbg !1007
  %100 = load ptr, ptr @stdout, align 8, !dbg !1007, !tbaa !858
  %101 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %100), !dbg !1007
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !940, metadata !DIExpression()), !dbg !1008
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !940, metadata !DIExpression()), !dbg !1010
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !940, metadata !DIExpression()), !dbg !1012
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !940, metadata !DIExpression()), !dbg !1014
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !940, metadata !DIExpression()), !dbg !1016
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !940, metadata !DIExpression()), !dbg !1018
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !940, metadata !DIExpression()), !dbg !1020
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !940, metadata !DIExpression()), !dbg !1022
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !940, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !940, metadata !DIExpression()), !dbg !1026
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !262, metadata !DIExpression()), !dbg !927
  %102 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(7) @.str.41, i64 noundef 6) #43, !dbg !1028
  %103 = icmp eq i32 %102, 0, !dbg !1028
  br i1 %103, label %107, label %104, !dbg !1030

104:                                              ; preds = %98
  %105 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(10) @.str.42, i64 noundef 9) #43, !dbg !1031
  %106 = icmp eq i32 %105, 0, !dbg !1031
  br i1 %106, label %107, label %110, !dbg !1032

107:                                              ; preds = %104, %98
  %108 = trunc i64 %61 to i32, !dbg !1033
  %109 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %108, ptr noundef %59) #42, !dbg !1033
  br label %113, !dbg !1035

110:                                              ; preds = %104
  %111 = trunc i64 %61 to i32, !dbg !1036
  %112 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.3, i32 noundef %111, ptr noundef %59) #42, !dbg !1036
  br label %113

113:                                              ; preds = %110, %107
  %114 = load ptr, ptr @stdout, align 8, !dbg !1038, !tbaa !858
  %115 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.47, ptr noundef %114), !dbg !1038
  %116 = load ptr, ptr @stdout, align 8, !dbg !1039, !tbaa !858
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.48, ptr noundef %116), !dbg !1039
  %118 = ptrtoint ptr %64 to i64, !dbg !1040
  %119 = sub i64 %118, %99, !dbg !1040
  %120 = load ptr, ptr @stdout, align 8, !dbg !1040, !tbaa !858
  %121 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %119, ptr noundef %120), !dbg !1040
  %122 = load ptr, ptr @stdout, align 8, !dbg !1041, !tbaa !858
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.49, ptr noundef %122), !dbg !1041
  %124 = load ptr, ptr @stdout, align 8, !dbg !1042, !tbaa !858
  %125 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.50, ptr noundef %124), !dbg !1042
  %126 = load ptr, ptr @stdout, align 8, !dbg !1043, !tbaa !858
  %127 = tail call i32 @fputs_unlocked(ptr noundef nonnull %64, ptr noundef %126), !dbg !1043
  br label %128, !dbg !1044

128:                                              ; preds = %113, %19
  ret void, !dbg !1044
}

; Function Attrs: nounwind
declare !dbg !1045 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1049 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1053 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1055 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1058 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1061 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1064 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1067 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1073 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1074 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: noreturn nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 !dbg !1080 {
  %3 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1085, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata ptr %1, metadata !1086, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i8 0, metadata !1090, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i8 0, metadata !1091, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i64 76, metadata !1092, metadata !DIExpression()), !dbg !1098
  %4 = load ptr, ptr %1, align 8, !dbg !1099, !tbaa !858
  tail call void @set_program_name(ptr noundef %4) #42, !dbg !1100
  %5 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.10) #42, !dbg !1101
  %6 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #42, !dbg !1102
  %7 = tail call ptr @textdomain(ptr noundef nonnull @.str.11) #42, !dbg !1103
  %8 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #42, !dbg !1104
  br label %9, !dbg !1105

9:                                                ; preds = %16, %2
  %10 = phi i1 [ true, %2 ], [ false, %16 ]
  %11 = phi i8 [ 0, %2 ], [ %14, %16 ]
  %12 = phi i64 [ 76, %2 ], [ %17, %16 ]
  br label %13, !dbg !1105

13:                                               ; preds = %9, %33
  %14 = phi i8 [ %11, %9 ], [ 1, %33 ]
  %15 = phi i64 [ %12, %9 ], [ %17, %33 ]
  br label %16, !dbg !1105

16:                                               ; preds = %13, %30
  %17 = phi i64 [ %32, %30 ], [ %15, %13 ], !dbg !1106
  call void @llvm.dbg.value(metadata i64 %17, metadata !1092, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i8 %14, metadata !1091, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i8 poison, metadata !1090, metadata !DIExpression()), !dbg !1098
  %18 = call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.13, ptr noundef nonnull @long_options, ptr noundef null) #42, !dbg !1107
  call void @llvm.dbg.value(metadata i32 %18, metadata !1087, metadata !DIExpression()), !dbg !1098
  switch i32 %18, label %39 [
    i32 -1, label %40
    i32 100, label %9
    i32 119, label %19
    i32 105, label %33
    i32 -130, label %34
    i32 -131, label %35
  ], !dbg !1105, !llvm.loop !1108

19:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #42, !dbg !1110
  %20 = load ptr, ptr @optarg, align 8, !dbg !1111, !tbaa !858
  call void @llvm.dbg.value(metadata ptr %3, metadata !1093, metadata !DIExpression(DW_OP_deref)), !dbg !1112
  %21 = call i32 @xstrtoimax(ptr noundef %20, ptr noundef null, i32 noundef 10, ptr noundef nonnull %3, ptr noundef nonnull @.str.10) #42, !dbg !1113
  call void @llvm.dbg.value(metadata i32 %21, metadata !1096, metadata !DIExpression()), !dbg !1112
  %22 = icmp ugt i32 %21, 1, !dbg !1114
  %23 = load i64, ptr %3, align 8
  call void @llvm.dbg.value(metadata i64 %23, metadata !1093, metadata !DIExpression()), !dbg !1112
  %24 = icmp slt i64 %23, 0
  %25 = select i1 %22, i1 true, i1 %24, !dbg !1116
  br i1 %25, label %26, label %30, !dbg !1116

26:                                               ; preds = %19
  %27 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #42, !dbg !1117
  %28 = load ptr, ptr @optarg, align 8, !dbg !1117, !tbaa !858
  %29 = call ptr @quote(ptr noundef %28) #42, !dbg !1117
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef nonnull @.str.14, ptr noundef %27, ptr noundef %29) #42, !dbg !1117
  unreachable, !dbg !1117

30:                                               ; preds = %19
  %31 = icmp eq i32 %21, 1, !dbg !1118
  %32 = select i1 %31, i64 0, i64 %23, !dbg !1119
  call void @llvm.dbg.value(metadata i64 %32, metadata !1092, metadata !DIExpression()), !dbg !1098
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #42, !dbg !1120
  br label %16, !dbg !1121, !llvm.loop !1108

33:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !1091, metadata !DIExpression()), !dbg !1098
  br label %13, !dbg !1122, !llvm.loop !1108

34:                                               ; preds = %16
  call void @usage(i32 noundef 0) #46, !dbg !1123
  unreachable, !dbg !1123

35:                                               ; preds = %16
  %36 = load ptr, ptr @stdout, align 8, !dbg !1124, !tbaa !858
  %37 = load ptr, ptr @Version, align 8, !dbg !1124, !tbaa !858
  %38 = call ptr @proper_name_lite(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.17) #42, !dbg !1124
  call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %36, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.16, ptr noundef %37, ptr noundef %38, ptr noundef null) #42, !dbg !1124
  call void @exit(i32 noundef 0) #44, !dbg !1124
  unreachable, !dbg !1124

39:                                               ; preds = %16
  call void @usage(i32 noundef 1) #46, !dbg !1125
  unreachable, !dbg !1125

40:                                               ; preds = %16
  %41 = load i32, ptr @optind, align 4, !dbg !1126, !tbaa !929
  %42 = sub nsw i32 %0, %41, !dbg !1128
  %43 = icmp sgt i32 %42, 1, !dbg !1129
  br i1 %43, label %44, label %52, !dbg !1130

44:                                               ; preds = %40
  %45 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.18, i32 noundef 5) #42, !dbg !1131
  %46 = load i32, ptr @optind, align 4, !dbg !1131, !tbaa !929
  %47 = add nsw i32 %46, 1, !dbg !1131
  %48 = sext i32 %47 to i64, !dbg !1131
  %49 = getelementptr inbounds ptr, ptr %1, i64 %48, !dbg !1131
  %50 = load ptr, ptr %49, align 8, !dbg !1131, !tbaa !858
  %51 = call ptr @quote(ptr noundef %50) #42, !dbg !1131
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %45, ptr noundef %51) #42, !dbg !1131
  call void @usage(i32 noundef 1) #46, !dbg !1133
  unreachable, !dbg !1133

52:                                               ; preds = %40
  %53 = icmp slt i32 %41, %0, !dbg !1134
  br i1 %53, label %54, label %58, !dbg !1136

54:                                               ; preds = %52
  %55 = sext i32 %41 to i64, !dbg !1137
  %56 = getelementptr inbounds ptr, ptr %1, i64 %55, !dbg !1137
  %57 = load ptr, ptr %56, align 8, !dbg !1137, !tbaa !858
  call void @llvm.dbg.value(metadata ptr %57, metadata !1089, metadata !DIExpression()), !dbg !1098
  br label %58, !dbg !1138

58:                                               ; preds = %52, %54
  %59 = phi ptr [ %57, %54 ], [ @.str.19, %52 ], !dbg !1139
  call void @llvm.dbg.value(metadata ptr %59, metadata !1089, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata ptr %59, metadata !940, metadata !DIExpression()), !dbg !1140
  call void @llvm.dbg.value(metadata ptr @.str.19, metadata !946, metadata !DIExpression()), !dbg !1140
  %60 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(2) @.str.19) #43, !dbg !1143
  %61 = icmp eq i32 %60, 0, !dbg !1144
  br i1 %61, label %62, label %64, !dbg !1145

62:                                               ; preds = %58
  %63 = load ptr, ptr @stdin, align 8, !dbg !1146, !tbaa !858
  call void @llvm.dbg.value(metadata ptr %63, metadata !1088, metadata !DIExpression()), !dbg !1098
  br label %71, !dbg !1148

64:                                               ; preds = %58
  %65 = call noalias ptr @rpl_fopen(ptr noundef %59, ptr noundef nonnull @.str.20) #42, !dbg !1149
  call void @llvm.dbg.value(metadata ptr %65, metadata !1088, metadata !DIExpression()), !dbg !1098
  %66 = icmp eq ptr %65, null, !dbg !1151
  br i1 %66, label %67, label %71, !dbg !1153

67:                                               ; preds = %64
  %68 = tail call ptr @__errno_location() #45, !dbg !1154
  %69 = load i32, ptr %68, align 4, !dbg !1154, !tbaa !929
  %70 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %59) #42, !dbg !1154
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %69, ptr noundef nonnull @.str.21, ptr noundef %70) #42, !dbg !1154
  unreachable, !dbg !1154

71:                                               ; preds = %64, %62
  %72 = phi ptr [ %63, %62 ], [ %65, %64 ], !dbg !1155
  call void @llvm.dbg.value(metadata ptr %72, metadata !1088, metadata !DIExpression()), !dbg !1098
  call void @fadvise(ptr noundef %72, i32 noundef 2) #42, !dbg !1156
  %73 = load ptr, ptr @stdout, align 8, !dbg !1157, !tbaa !858
  br i1 %10, label %76, label %74, !dbg !1159

74:                                               ; preds = %71
  %75 = icmp ne i8 %14, 0, !dbg !1160
  call fastcc void @do_decode(ptr noundef %72, ptr noundef %59, ptr noundef %73, i1 noundef zeroext %75) #46, !dbg !1161
  unreachable, !dbg !1161

76:                                               ; preds = %71
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
define internal fastcc void @do_decode(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #0 !dbg !1180 {
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
  %23 = load i8, ptr %22, align 1, !dbg !1238, !tbaa !938
  call void @llvm.dbg.value(metadata i8 %23, metadata !1239, metadata !DIExpression()), !dbg !1244
  %24 = zext i8 %23 to i64, !dbg !1246
  %25 = getelementptr inbounds [256 x i8], ptr @base64_to_int, i64 0, i64 %24, !dbg !1247
  %26 = load i8, ptr %25, align 1, !dbg !1247, !tbaa !938
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
  %50 = load i32, ptr %49, align 4, !dbg !1296, !tbaa !929
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
  %63 = call zeroext i1 @base64_decode_ctx(ptr noundef nonnull %7, ptr noundef nonnull %9, i64 noundef %53, ptr noundef nonnull %10, ptr noundef nonnull %8) #42, !dbg !1313
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
  %83 = load i8, ptr %82, align 1, !dbg !1369, !tbaa !938
  %84 = icmp eq i8 %83, 61, !dbg !1370
  br i1 %84, label %87, label %85, !dbg !1371

85:                                               ; preds = %79
  call void @llvm.dbg.value(metadata ptr %6, metadata !1333, metadata !DIExpression(DW_OP_deref)), !dbg !1335
  %86 = call zeroext i1 @base64_decode_ctx(ptr noundef nonnull %7, ptr noundef nonnull %5, i64 noundef %77, ptr noundef nonnull %10, ptr noundef nonnull %6) #42, !dbg !1372
  call void @llvm.dbg.value(metadata i1 %86, metadata !1334, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1335
  br label %89, !dbg !1374

87:                                               ; preds = %79, %72
  call void @llvm.dbg.value(metadata ptr %6, metadata !1333, metadata !DIExpression(DW_OP_deref)), !dbg !1335
  %88 = call zeroext i1 @base64_decode_ctx(ptr noundef nonnull %7, ptr noundef nonnull @.str.10, i64 noundef 0, ptr noundef nonnull %10, ptr noundef nonnull %6) #42, !dbg !1375
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
  %120 = load i8, ptr %119, align 1, !dbg !1369, !tbaa !938
  %121 = icmp eq i8 %120, 61, !dbg !1370
  br i1 %121, label %124, label %122, !dbg !1371

122:                                              ; preds = %116
  call void @llvm.dbg.value(metadata ptr %6, metadata !1333, metadata !DIExpression(DW_OP_deref)), !dbg !1335
  %123 = call zeroext i1 @base64_decode_ctx(ptr noundef nonnull %7, ptr noundef nonnull %5, i64 noundef %114, ptr noundef nonnull %10, ptr noundef nonnull %6) #42, !dbg !1372
  call void @llvm.dbg.value(metadata i1 %123, metadata !1334, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1335
  br label %126, !dbg !1374

124:                                              ; preds = %116, %109
  call void @llvm.dbg.value(metadata ptr %6, metadata !1333, metadata !DIExpression(DW_OP_deref)), !dbg !1335
  %125 = call zeroext i1 @base64_decode_ctx(ptr noundef nonnull %7, ptr noundef nonnull @.str.10, i64 noundef 0, ptr noundef nonnull %10, ptr noundef nonnull %6) #42, !dbg !1375
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
  %137 = load i32, ptr %136, align 4, !dbg !1388, !tbaa !929
  call void @llvm.dbg.value(metadata i32 %137, metadata !1391, metadata !DIExpression()), !dbg !1393
  %138 = load ptr, ptr @stdout, align 8, !dbg !1394, !tbaa !858
  %139 = call i32 @fflush_unlocked(ptr noundef %138) #42, !dbg !1394
  %140 = load ptr, ptr @stdout, align 8, !dbg !1395, !tbaa !858
  %141 = call i32 @fpurge(ptr noundef %140) #42, !dbg !1396
  %142 = load ptr, ptr @stdout, align 8, !dbg !1397, !tbaa !858
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
  %33 = load ptr, ptr @stdout, align 8, !dbg !1480, !tbaa !858
  %34 = tail call i64 @fwrite_unlocked(ptr noundef nonnull %6, i64 noundef 1, i64 noundef %31, ptr noundef %33), !dbg !1480
  %35 = icmp ult i64 %34, %31, !dbg !1481
  br i1 %35, label %36, label %91, !dbg !1482

36:                                               ; preds = %32
  %37 = tail call ptr @__errno_location() #45, !dbg !1483
  %38 = load i32, ptr %37, align 4, !dbg !1483, !tbaa !929
  call void @llvm.dbg.value(metadata i32 %38, metadata !1391, metadata !DIExpression()), !dbg !1485
  %39 = load ptr, ptr @stdout, align 8, !dbg !1486, !tbaa !858
  %40 = tail call i32 @fflush_unlocked(ptr noundef %39) #42, !dbg !1486
  %41 = load ptr, ptr @stdout, align 8, !dbg !1487, !tbaa !858
  %42 = tail call i32 @fpurge(ptr noundef %41) #42, !dbg !1488
  %43 = load ptr, ptr @stdout, align 8, !dbg !1489, !tbaa !858
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
  store i8 10, ptr %53, align 1, !dbg !1506, !tbaa !938
  br label %87, !dbg !1510

58:                                               ; preds = %52
  %59 = tail call i32 @__overflow(ptr noundef nonnull %2, i32 noundef 10) #42, !dbg !1506
  %60 = icmp eq i32 %59, -1, !dbg !1511
  br i1 %60, label %61, label %87, !dbg !1510

61:                                               ; preds = %58
  %62 = tail call ptr @__errno_location() #45, !dbg !1512
  %63 = load i32, ptr %62, align 4, !dbg !1512, !tbaa !929
  call void @llvm.dbg.value(metadata i32 %63, metadata !1391, metadata !DIExpression()), !dbg !1514
  %64 = load ptr, ptr @stdout, align 8, !dbg !1515, !tbaa !858
  %65 = tail call i32 @fflush_unlocked(ptr noundef %64) #42, !dbg !1515
  %66 = load ptr, ptr @stdout, align 8, !dbg !1516, !tbaa !858
  %67 = tail call i32 @fpurge(ptr noundef %66) #42, !dbg !1517
  %68 = load ptr, ptr @stdout, align 8, !dbg !1518, !tbaa !858
  tail call void @clearerr_unlocked(ptr noundef %68) #42, !dbg !1518
  %69 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.68, i32 noundef 5) #42, !dbg !1519
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %63, ptr noundef %69) #42, !dbg !1519
  unreachable, !dbg !1519

70:                                               ; preds = %45
  %71 = load ptr, ptr @stdout, align 8, !dbg !1520, !tbaa !858
  %72 = getelementptr inbounds i8, ptr %6, i64 %47, !dbg !1520
  %73 = tail call i64 @fwrite_unlocked(ptr noundef nonnull %72, i64 noundef 1, i64 noundef %50, ptr noundef %71), !dbg !1520
  %74 = icmp ult i64 %73, %50, !dbg !1521
  br i1 %74, label %75, label %84, !dbg !1522

75:                                               ; preds = %70
  %76 = tail call ptr @__errno_location() #45, !dbg !1523
  %77 = load i32, ptr %76, align 4, !dbg !1523, !tbaa !929
  call void @llvm.dbg.value(metadata i32 %77, metadata !1391, metadata !DIExpression()), !dbg !1525
  %78 = load ptr, ptr @stdout, align 8, !dbg !1526, !tbaa !858
  %79 = tail call i32 @fflush_unlocked(ptr noundef %78) #42, !dbg !1526
  %80 = load ptr, ptr @stdout, align 8, !dbg !1527, !tbaa !858
  %81 = tail call i32 @fpurge(ptr noundef %80) #42, !dbg !1528
  %82 = load ptr, ptr @stdout, align 8, !dbg !1529, !tbaa !858
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
  store i8 10, ptr %106, align 1, !dbg !1554, !tbaa !938
  br label %123, !dbg !1555

111:                                              ; preds = %105
  %112 = tail call i32 @__overflow(ptr noundef nonnull %2, i32 noundef 10) #42, !dbg !1554
  %113 = icmp eq i32 %112, -1, !dbg !1556
  br i1 %113, label %114, label %123, !dbg !1555

114:                                              ; preds = %111
  %115 = tail call ptr @__errno_location() #45, !dbg !1557
  %116 = load i32, ptr %115, align 4, !dbg !1557, !tbaa !929
  call void @llvm.dbg.value(metadata i32 %116, metadata !1391, metadata !DIExpression()), !dbg !1559
  %117 = load ptr, ptr @stdout, align 8, !dbg !1560, !tbaa !858
  %118 = tail call i32 @fflush_unlocked(ptr noundef %117) #42, !dbg !1560
  %119 = load ptr, ptr @stdout, align 8, !dbg !1561, !tbaa !858
  %120 = tail call i32 @fpurge(ptr noundef %119) #42, !dbg !1562
  %121 = load ptr, ptr @stdout, align 8, !dbg !1563, !tbaa !858
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
  %129 = load i32, ptr %128, align 4, !dbg !1571, !tbaa !929
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
  call void @llvm.dbg.value(metadata ptr %1, metadata !940, metadata !DIExpression()), !dbg !1591
  call void @llvm.dbg.value(metadata ptr @.str.19, metadata !946, metadata !DIExpression()), !dbg !1591
  %6 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(2) @.str.19) #43, !dbg !1595
  %7 = icmp eq i32 %6, 0, !dbg !1596
  %8 = tail call ptr @__errno_location() #45, !dbg !1597
  %9 = load i32, ptr %8, align 4, !dbg !1597, !tbaa !929
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
define dso_local zeroext i1 @isubase64(i8 noundef zeroext %0) local_unnamed_addr #12 !dbg !1602 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1604, metadata !DIExpression()), !dbg !1605
  %2 = zext i8 %0 to i64, !dbg !1606
  %3 = getelementptr inbounds [256 x i8], ptr @base64_to_int, i64 0, i64 %2, !dbg !1607
  %4 = load i8, ptr %3, align 1, !dbg !1607, !tbaa !938
  %5 = icmp sgt i8 %4, -1, !dbg !1608
  ret i1 %5, !dbg !1609
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @isbase64(i8 noundef signext %0) local_unnamed_addr #12 !dbg !1610 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1614, metadata !DIExpression()), !dbg !1615
  call void @llvm.dbg.value(metadata i8 %0, metadata !1604, metadata !DIExpression()), !dbg !1616
  %2 = zext i8 %0 to i64, !dbg !1618
  %3 = getelementptr inbounds [256 x i8], ptr @base64_to_int, i64 0, i64 %2, !dbg !1619
  %4 = load i8, ptr %3, align 1, !dbg !1619, !tbaa !938
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
  %17 = load i8, ptr %16, align 1, !dbg !1668, !tbaa !938, !alias.scope !1651, !noalias !1656
  %18 = lshr i8 %17, 2
  %19 = zext i8 %18 to i64
  %20 = getelementptr inbounds [64 x i8], ptr @b64c, i64 0, i64 %19, !dbg !1670
  %21 = load i8, ptr %20, align 1, !dbg !1670, !tbaa !938, !noalias !1671
  %22 = getelementptr inbounds i8, ptr %14, i64 1, !dbg !1672
  call void @llvm.dbg.value(metadata ptr %22, metadata !1664, metadata !DIExpression()), !dbg !1665
  store i8 %21, ptr %14, align 1, !dbg !1673, !tbaa !938, !alias.scope !1656, !noalias !1651
  %23 = zext i8 %17 to i64, !dbg !1674
  %24 = shl nuw nsw i64 %23, 4, !dbg !1675
  %25 = getelementptr inbounds i8, ptr %16, i64 1, !dbg !1676
  %26 = load i8, ptr %25, align 1, !dbg !1676, !tbaa !938, !alias.scope !1651, !noalias !1656
  %27 = lshr i8 %26, 4
  %28 = zext i8 %27 to i64
  %29 = and i64 %24, 48, !dbg !1677
  %30 = or i64 %29, %28, !dbg !1677
  %31 = getelementptr inbounds [64 x i8], ptr @b64c, i64 0, i64 %30, !dbg !1678
  %32 = load i8, ptr %31, align 1, !dbg !1678, !tbaa !938, !noalias !1671
  %33 = getelementptr inbounds i8, ptr %14, i64 2, !dbg !1679
  call void @llvm.dbg.value(metadata ptr %33, metadata !1664, metadata !DIExpression()), !dbg !1665
  store i8 %32, ptr %22, align 1, !dbg !1680, !tbaa !938, !alias.scope !1656, !noalias !1651
  %34 = zext i8 %26 to i64, !dbg !1681
  %35 = shl nuw nsw i64 %34, 2, !dbg !1682
  %36 = getelementptr inbounds i8, ptr %16, i64 2, !dbg !1683
  %37 = load i8, ptr %36, align 1, !dbg !1683, !tbaa !938, !alias.scope !1651, !noalias !1656
  %38 = lshr i8 %37, 6
  %39 = zext i8 %38 to i64
  %40 = and i64 %35, 60, !dbg !1684
  %41 = or i64 %40, %39, !dbg !1684
  %42 = getelementptr inbounds [64 x i8], ptr @b64c, i64 0, i64 %41, !dbg !1685
  %43 = load i8, ptr %42, align 1, !dbg !1685, !tbaa !938, !noalias !1671
  %44 = getelementptr inbounds i8, ptr %14, i64 3, !dbg !1686
  call void @llvm.dbg.value(metadata ptr %44, metadata !1664, metadata !DIExpression()), !dbg !1665
  store i8 %43, ptr %33, align 1, !dbg !1687, !tbaa !938, !alias.scope !1656, !noalias !1651
  %45 = and i8 %37, 63, !dbg !1688
  %46 = zext i8 %45 to i64
  %47 = getelementptr inbounds [64 x i8], ptr @b64c, i64 0, i64 %46, !dbg !1689
  %48 = load i8, ptr %47, align 1, !dbg !1689, !tbaa !938, !noalias !1671
  %49 = getelementptr inbounds i8, ptr %14, i64 4, !dbg !1690
  call void @llvm.dbg.value(metadata ptr %49, metadata !1664, metadata !DIExpression()), !dbg !1665
  store i8 %48, ptr %44, align 1, !dbg !1691, !tbaa !938, !alias.scope !1656, !noalias !1651
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
  %62 = load i8, ptr %61, align 1, !dbg !1699, !tbaa !938
  %63 = lshr i8 %62, 2
  %64 = zext i8 %63 to i64
  %65 = getelementptr inbounds [64 x i8], ptr @b64c, i64 0, i64 %64, !dbg !1701
  %66 = load i8, ptr %65, align 1, !dbg !1701, !tbaa !938
  %67 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !1702
  call void @llvm.dbg.value(metadata ptr %67, metadata !1641, metadata !DIExpression()), !dbg !1643
  store i8 %66, ptr %59, align 1, !dbg !1703, !tbaa !938
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
  %76 = load i8, ptr %75, align 16, !dbg !1711, !tbaa !938
  call void @llvm.dbg.value(metadata ptr %59, metadata !1641, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !1643
  store i8 %76, ptr %67, align 1, !dbg !1712, !tbaa !938
  call void @llvm.dbg.value(metadata i64 %58, metadata !1642, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !1643
  %77 = icmp eq i64 %58, 2, !dbg !1713
  br i1 %77, label %137, label %109, !dbg !1715

78:                                               ; preds = %69
  %79 = getelementptr inbounds i8, ptr %61, i64 1, !dbg !1716
  %80 = load i8, ptr %79, align 1, !dbg !1716, !tbaa !938
  %81 = lshr i8 %80, 4
  %82 = zext i8 %81 to i64
  %83 = and i64 %71, 48, !dbg !1710
  %84 = or i64 %83, %82, !dbg !1710
  %85 = getelementptr inbounds [64 x i8], ptr @b64c, i64 0, i64 %84, !dbg !1711
  %86 = load i8, ptr %85, align 1, !dbg !1711, !tbaa !938
  %87 = getelementptr inbounds i8, ptr %59, i64 2, !dbg !1717
  call void @llvm.dbg.value(metadata ptr %87, metadata !1641, metadata !DIExpression()), !dbg !1643
  store i8 %86, ptr %67, align 1, !dbg !1712, !tbaa !938
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
  %97 = load i8, ptr %96, align 4, !dbg !1722, !tbaa !938
  call void @llvm.dbg.value(metadata i64 %92, metadata !1640, metadata !DIExpression()), !dbg !1643
  call void @llvm.dbg.value(metadata ptr %59, metadata !1641, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !1643
  store i8 %97, ptr %87, align 1, !dbg !1723, !tbaa !938
  call void @llvm.dbg.value(metadata i64 %58, metadata !1642, metadata !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value)), !dbg !1643
  %98 = icmp eq i64 %58, 3, !dbg !1724
  br i1 %98, label %137, label %119, !dbg !1726

99:                                               ; preds = %89
  %100 = getelementptr inbounds i8, ptr %61, i64 2, !dbg !1727
  %101 = load i8, ptr %100, align 1, !dbg !1727, !tbaa !938
  %102 = lshr i8 %101, 6
  %103 = zext i8 %102 to i64
  %104 = and i64 %91, 60, !dbg !1721
  %105 = or i64 %104, %103, !dbg !1721
  %106 = getelementptr inbounds [64 x i8], ptr @b64c, i64 0, i64 %105, !dbg !1722
  %107 = load i8, ptr %106, align 1, !dbg !1722, !tbaa !938
  call void @llvm.dbg.value(metadata i64 %92, metadata !1640, metadata !DIExpression()), !dbg !1643
  call void @llvm.dbg.value(metadata ptr %59, metadata !1641, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !1643
  store i8 %107, ptr %87, align 1, !dbg !1723, !tbaa !938
  call void @llvm.dbg.value(metadata i64 %58, metadata !1642, metadata !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value)), !dbg !1643
  %108 = icmp eq i64 %58, 3, !dbg !1724
  br i1 %108, label %137, label %112, !dbg !1726

109:                                              ; preds = %73
  %110 = getelementptr inbounds i8, ptr %59, i64 2, !dbg !1717
  call void @llvm.dbg.value(metadata i64 0, metadata !1640, metadata !DIExpression()), !dbg !1643
  call void @llvm.dbg.value(metadata ptr %59, metadata !1641, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !1643
  store i8 61, ptr %110, align 1, !dbg !1723, !tbaa !938
  call void @llvm.dbg.value(metadata i64 %58, metadata !1642, metadata !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value)), !dbg !1643
  %111 = icmp eq i64 %58, 3, !dbg !1724
  br i1 %111, label %137, label %119, !dbg !1726

112:                                              ; preds = %99
  %113 = getelementptr inbounds i8, ptr %61, i64 2, !dbg !1728
  %114 = load i8, ptr %113, align 1, !dbg !1728, !tbaa !938
  %115 = and i8 %114, 63, !dbg !1729
  %116 = zext i8 %115 to i64
  %117 = getelementptr inbounds [64 x i8], ptr @b64c, i64 0, i64 %116, !dbg !1730
  %118 = load i8, ptr %117, align 1, !dbg !1730, !tbaa !938
  br label %119, !dbg !1731

119:                                              ; preds = %94, %109, %112
  %120 = phi i1 [ false, %112 ], [ true, %109 ], [ true, %94 ]
  %121 = phi i64 [ %92, %112 ], [ 0, %109 ], [ 0, %94 ]
  %122 = phi i8 [ %118, %112 ], [ 61, %109 ], [ 61, %94 ]
  %123 = getelementptr inbounds i8, ptr %59, i64 3, !dbg !1732
  call void @llvm.dbg.value(metadata ptr %59, metadata !1641, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !1643
  store i8 %122, ptr %123, align 1, !dbg !1733, !tbaa !938
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
  store i8 0, ptr %136, align 1, !dbg !1747, !tbaa !938
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
  %5 = srem i64 %1, 3, !dbg !1761
  %6 = icmp ne i64 %5, 0, !dbg !1762
  %7 = zext i1 %6 to i64
  %8 = add nsw i64 %4, %7, !dbg !1763
  call void @llvm.dbg.value(metadata i64 %8, metadata !1757, metadata !DIExpression()), !dbg !1759
  %9 = icmp slt i64 %8, 0, !dbg !1764
  br i1 %9, label %10, label %12, !dbg !1764

10:                                               ; preds = %3
  %11 = icmp ult i64 %8, -2305843009213693952, !dbg !1764
  br i1 %11, label %17, label %14, !dbg !1764

12:                                               ; preds = %3
  %13 = icmp ugt i64 %8, 2305843009213693951, !dbg !1764
  br i1 %13, label %17, label %14, !dbg !1764

14:                                               ; preds = %12, %10
  call void @llvm.dbg.value(metadata i64 %8, metadata !1758, metadata !DIExpression(DW_OP_constu, 2, DW_OP_shl, DW_OP_stack_value)), !dbg !1759
  %15 = shl nsw i64 %8, 2, !dbg !1764
  call void @llvm.dbg.value(metadata i64 %15, metadata !1758, metadata !DIExpression()), !dbg !1759
  %16 = icmp slt i64 %1, 0
  br i1 %16, label %17, label %18, !dbg !1766

17:                                               ; preds = %10, %12, %14
  store ptr null, ptr %2, align 8, !dbg !1767, !tbaa !858
  br label %23, !dbg !1769

18:                                               ; preds = %14
  %19 = or i64 %15, 1, !dbg !1770
  call void @llvm.dbg.value(metadata i64 %19, metadata !1758, metadata !DIExpression()), !dbg !1759
  call void @llvm.dbg.value(metadata i64 %19, metadata !1771, metadata !DIExpression()), !dbg !1777
  %20 = tail call noalias ptr @malloc(i64 noundef %19) #47, !dbg !1779
  store ptr %20, ptr %2, align 8, !dbg !1780, !tbaa !858
  %21 = icmp eq ptr %20, null, !dbg !1781
  br i1 %21, label %23, label %22, !dbg !1783

22:                                               ; preds = %18
  tail call void @base64_encode(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %20, i64 noundef %19), !dbg !1784
  br label %23, !dbg !1785

23:                                               ; preds = %18, %22, %17
  %24 = phi i64 [ 0, %17 ], [ %15, %22 ], [ %19, %18 ], !dbg !1759
  ret i64 %24, !dbg !1786
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !1787 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #17

; Function Attrs: nofree nounwind uwtable
define dso_local zeroext i1 @base64_decode_ctx(ptr noundef %0, ptr noalias noundef %1, i64 noundef %2, ptr noalias noundef %3, ptr nocapture noundef %4) local_unnamed_addr #16 !dbg !1790 {
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !1794, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata ptr %1, metadata !1795, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i64 %2, metadata !1796, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata ptr %3, metadata !1797, metadata !DIExpression()), !dbg !1810
  store ptr %3, ptr %6, align 8, !tbaa !858
  call void @llvm.dbg.value(metadata ptr %4, metadata !1798, metadata !DIExpression()), !dbg !1810
  %8 = icmp eq ptr %0, null, !dbg !1811
  call void @llvm.dbg.value(metadata i1 %8, metadata !1799, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1810
  call void @llvm.dbg.value(metadata i8 0, metadata !1800, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i32 0, metadata !1801, metadata !DIExpression()), !dbg !1810
  br i1 %8, label %13, label %9, !dbg !1812

9:                                                ; preds = %5
  %10 = load i32, ptr %0, align 4, !dbg !1813, !tbaa !1226
  call void @llvm.dbg.value(metadata i32 %10, metadata !1801, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i64 %2, metadata !1796, metadata !DIExpression()), !dbg !1810
  %11 = icmp eq i64 %2, 0, !dbg !1816
  call void @llvm.dbg.value(metadata i1 %11, metadata !1800, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1810
  %12 = icmp ne i32 %10, 0
  br label %13, !dbg !1817

13:                                               ; preds = %9, %5
  %14 = phi i1 [ %12, %9 ], [ false, %5 ]
  %15 = phi i1 [ %11, %9 ], [ false, %5 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1800, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i32 poison, metadata !1801, metadata !DIExpression()), !dbg !1810
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #42, !dbg !1818
  %16 = load i64, ptr %4, align 8, !dbg !1819, !tbaa !1312
  call void @llvm.dbg.value(metadata i64 %16, metadata !1802, metadata !DIExpression()), !dbg !1810
  store i64 %16, ptr %7, align 8, !dbg !1820, !tbaa !1312
  %17 = or i1 %14, %15
  %18 = getelementptr inbounds %struct.base64_decode_context, ptr %0, i64 0, i32 1
  br label %19, !dbg !1821

19:                                               ; preds = %107, %13
  %20 = phi i64 [ %16, %13 ], [ %110, %107 ], !dbg !1822
  %21 = phi ptr [ %1, %13 ], [ %108, %107 ]
  %22 = phi i64 [ %2, %13 ], [ %109, %107 ]
  call void @llvm.dbg.value(metadata i64 %20, metadata !1802, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i64 %20, metadata !1803, metadata !DIExpression()), !dbg !1823
  br i1 %17, label %32, label %23, !dbg !1824

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i64 %20, metadata !1802, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i64 %20, metadata !1803, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata ptr %21, metadata !1795, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i64 %22, metadata !1796, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata ptr %6, metadata !1797, metadata !DIExpression(DW_OP_deref)), !dbg !1810
  call void @llvm.dbg.value(metadata ptr %7, metadata !1802, metadata !DIExpression(DW_OP_deref)), !dbg !1810
  %24 = call fastcc zeroext i1 @decode_4(ptr noundef %21, i64 noundef %22, ptr noundef nonnull %6, ptr noundef nonnull %7), !dbg !1826
  br i1 %24, label %25, label %32, !dbg !1830

25:                                               ; preds = %23, %25
  %26 = phi i64 [ %29, %25 ], [ %22, %23 ]
  %27 = phi ptr [ %28, %25 ], [ %21, %23 ]
  call void @llvm.dbg.value(metadata i64 %26, metadata !1796, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata ptr %27, metadata !1795, metadata !DIExpression()), !dbg !1810
  %28 = getelementptr inbounds i8, ptr %27, i64 4, !dbg !1831
  call void @llvm.dbg.value(metadata ptr %28, metadata !1795, metadata !DIExpression()), !dbg !1810
  %29 = add nsw i64 %26, -4, !dbg !1832
  call void @llvm.dbg.value(metadata i64 %29, metadata !1796, metadata !DIExpression()), !dbg !1810
  %30 = load i64, ptr %7, align 8, !dbg !1833, !tbaa !1312
  call void @llvm.dbg.value(metadata i64 %30, metadata !1803, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata ptr %6, metadata !1797, metadata !DIExpression(DW_OP_deref)), !dbg !1810
  call void @llvm.dbg.value(metadata ptr %7, metadata !1802, metadata !DIExpression(DW_OP_deref)), !dbg !1810
  %31 = call fastcc zeroext i1 @decode_4(ptr noundef nonnull %28, i64 noundef %29, ptr noundef nonnull %6, ptr noundef nonnull %7), !dbg !1826
  br i1 %31, label %25, label %32, !dbg !1830, !llvm.loop !1834

32:                                               ; preds = %25, %23, %19
  %33 = phi ptr [ %21, %19 ], [ %21, %23 ], [ %28, %25 ]
  %34 = phi i64 [ %22, %19 ], [ %22, %23 ], [ %29, %25 ]
  %35 = phi i64 [ %20, %19 ], [ %20, %23 ], [ %30, %25 ], !dbg !1823
  call void @llvm.dbg.value(metadata i64 %35, metadata !1803, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata i64 %34, metadata !1796, metadata !DIExpression()), !dbg !1810
  %36 = icmp ne i64 %34, 0, !dbg !1837
  %37 = or i1 %15, %36, !dbg !1839
  br i1 %37, label %38, label %111, !dbg !1839

38:                                               ; preds = %32
  call void @llvm.dbg.value(metadata i64 %34, metadata !1796, metadata !DIExpression()), !dbg !1810
  br i1 %36, label %39, label %46, !dbg !1840

39:                                               ; preds = %38
  call void @llvm.dbg.value(metadata ptr %33, metadata !1795, metadata !DIExpression()), !dbg !1810
  %40 = load i8, ptr %33, align 1, !dbg !1841, !tbaa !938
  %41 = icmp ne i8 %40, 10, !dbg !1842
  %42 = or i1 %8, %41, !dbg !1843
  br i1 %42, label %46, label %43, !dbg !1843

43:                                               ; preds = %39
  %44 = getelementptr inbounds i8, ptr %33, i64 1, !dbg !1844
  call void @llvm.dbg.value(metadata ptr %44, metadata !1795, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i64 %34, metadata !1796, metadata !DIExpression()), !dbg !1810
  %45 = add nsw i64 %34, -1, !dbg !1846
  call void @llvm.dbg.value(metadata i64 %45, metadata !1796, metadata !DIExpression()), !dbg !1810
  br label %107, !dbg !1847

46:                                               ; preds = %39, %38
  %47 = load i64, ptr %7, align 8, !dbg !1848, !tbaa !1312
  call void @llvm.dbg.value(metadata i64 %47, metadata !1802, metadata !DIExpression()), !dbg !1810
  %48 = sub i64 %47, %35, !dbg !1849
  %49 = load ptr, ptr %6, align 8, !dbg !1850, !tbaa !858
  call void @llvm.dbg.value(metadata ptr %49, metadata !1797, metadata !DIExpression()), !dbg !1810
  %50 = getelementptr inbounds i8, ptr %49, i64 %48, !dbg !1850
  call void @llvm.dbg.value(metadata ptr %50, metadata !1797, metadata !DIExpression()), !dbg !1810
  store ptr %50, ptr %6, align 8, !dbg !1850, !tbaa !858
  call void @llvm.dbg.value(metadata i64 %35, metadata !1802, metadata !DIExpression()), !dbg !1810
  store i64 %35, ptr %7, align 8, !dbg !1851, !tbaa !1312
  call void @llvm.dbg.value(metadata ptr %33, metadata !1795, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i64 %34, metadata !1796, metadata !DIExpression()), !dbg !1810
  %51 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !1852
  call void @llvm.dbg.value(metadata ptr %51, metadata !1805, metadata !DIExpression()), !dbg !1853
  br i1 %8, label %89, label %52, !dbg !1854

52:                                               ; preds = %46
  call void @llvm.dbg.value(metadata ptr %0, metadata !1855, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata ptr undef, metadata !1861, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata ptr %51, metadata !1862, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata ptr undef, metadata !1863, metadata !DIExpression()), !dbg !1871
  %53 = load i32, ptr %0, align 4, !dbg !1874, !tbaa !1226, !noalias !1876
  switch i32 %53, label %62 [
    i32 4, label %54
    i32 0, label %55
  ], !dbg !1879

54:                                               ; preds = %52
  store i32 0, ptr %0, align 4, !dbg !1880, !tbaa !1226, !noalias !1876
  br label %55, !dbg !1881

55:                                               ; preds = %54, %52
  call void @llvm.dbg.value(metadata ptr %33, metadata !1864, metadata !DIExpression()), !dbg !1882
  %56 = icmp sgt i64 %34, 3, !dbg !1883
  br i1 %56, label %57, label %62, !dbg !1885

57:                                               ; preds = %55
  %58 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) %33, i32 noundef 10, i64 noundef 4) #43, !dbg !1886
  %59 = icmp eq ptr %58, null, !dbg !1887
  br i1 %59, label %60, label %65, !dbg !1888

60:                                               ; preds = %57
  %61 = getelementptr inbounds i8, ptr %33, i64 4, !dbg !1889
  call void @llvm.dbg.value(metadata ptr %33, metadata !1809, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i64 4, metadata !1796, metadata !DIExpression()), !dbg !1810
  br label %98, !dbg !1891

62:                                               ; preds = %52, %55
  %63 = phi i32 [ 0, %55 ], [ %53, %52 ]
  call void @llvm.dbg.value(metadata ptr %33, metadata !1867, metadata !DIExpression()), !dbg !1893
  %64 = icmp sgt i64 %34, 0, !dbg !1894
  br i1 %64, label %65, label %85, !dbg !1895

65:                                               ; preds = %57, %62
  %66 = phi i32 [ 0, %57 ], [ %63, %62 ]
  br label %67, !dbg !1896

67:                                               ; preds = %65, %75
  %68 = phi i32 [ %66, %65 ], [ %79, %75 ]
  %69 = phi ptr [ %33, %65 ], [ %72, %75 ]
  br label %70, !dbg !1896

70:                                               ; preds = %67, %83
  %71 = phi ptr [ %72, %83 ], [ %69, %67 ]
  call void @llvm.dbg.value(metadata ptr %71, metadata !1867, metadata !DIExpression()), !dbg !1893
  %72 = getelementptr inbounds i8, ptr %71, i64 1, !dbg !1897
  call void @llvm.dbg.value(metadata ptr %72, metadata !1867, metadata !DIExpression()), !dbg !1893
  %73 = load i8, ptr %71, align 1, !dbg !1898, !tbaa !938
  call void @llvm.dbg.value(metadata i8 %73, metadata !1869, metadata !DIExpression()), !dbg !1899
  %74 = icmp eq i8 %73, 10, !dbg !1900
  br i1 %74, label %83, label %75, !dbg !1896

75:                                               ; preds = %70
  %76 = add nsw i32 %68, 1, !dbg !1902
  store i32 %76, ptr %0, align 4, !dbg !1902, !tbaa !1226, !noalias !1876
  %77 = sext i32 %68 to i64, !dbg !1904
  %78 = getelementptr inbounds %struct.base64_decode_context, ptr %0, i64 0, i32 1, i64 %77, !dbg !1904
  store i8 %73, ptr %78, align 1, !dbg !1905, !tbaa !938, !noalias !1876
  %79 = load i32, ptr %0, align 4, !dbg !1906, !tbaa !1226, !noalias !1876
  %80 = icmp ne i32 %79, 4, !dbg !1908
  %81 = icmp ult ptr %72, %51
  %82 = select i1 %80, i1 %81, i1 false, !dbg !1909
  call void @llvm.dbg.value(metadata ptr %72, metadata !1867, metadata !DIExpression()), !dbg !1893
  br i1 %82, label %67, label %85, !dbg !1909

83:                                               ; preds = %70
  call void @llvm.dbg.value(metadata ptr %72, metadata !1867, metadata !DIExpression()), !dbg !1893
  %84 = icmp ult ptr %72, %51, !dbg !1894
  br i1 %84, label %70, label %85, !dbg !1895

85:                                               ; preds = %83, %75, %62
  %86 = phi i32 [ %63, %62 ], [ %68, %83 ], [ %79, %75 ], !dbg !1910
  %87 = phi ptr [ %33, %62 ], [ %72, %75 ], [ %72, %83 ], !dbg !1893
  call void @llvm.dbg.value(metadata ptr %87, metadata !1867, metadata !DIExpression()), !dbg !1893
  %88 = sext i32 %86 to i64, !dbg !1911
  br label %89

89:                                               ; preds = %85, %46
  %90 = phi ptr [ %33, %46 ], [ %87, %85 ]
  %91 = phi i64 [ %34, %46 ], [ %88, %85 ]
  %92 = phi ptr [ %33, %46 ], [ %18, %85 ], !dbg !1912
  call void @llvm.dbg.value(metadata ptr %92, metadata !1809, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i64 %91, metadata !1796, metadata !DIExpression()), !dbg !1810
  %93 = icmp eq i64 %91, 0, !dbg !1913
  br i1 %93, label %111, label %94, !dbg !1914

94:                                               ; preds = %89
  %95 = icmp sgt i64 %91, 3, !dbg !1915
  %96 = or i1 %15, %95, !dbg !1891
  %97 = or i1 %8, %96, !dbg !1891
  br i1 %97, label %98, label %111, !dbg !1891

98:                                               ; preds = %60, %94
  %99 = phi ptr [ %61, %60 ], [ %90, %94 ]
  %100 = phi i64 [ 4, %60 ], [ %91, %94 ]
  %101 = phi ptr [ %33, %60 ], [ %92, %94 ]
  call void @llvm.dbg.value(metadata i64 %91, metadata !1796, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata ptr %6, metadata !1797, metadata !DIExpression(DW_OP_deref)), !dbg !1810
  call void @llvm.dbg.value(metadata ptr %7, metadata !1802, metadata !DIExpression(DW_OP_deref)), !dbg !1810
  %102 = call fastcc zeroext i1 @decode_4(ptr noundef %101, i64 noundef %100, ptr noundef nonnull %6, ptr noundef nonnull %7), !dbg !1916
  br i1 %102, label %103, label %111, !dbg !1918

103:                                              ; preds = %98
  call void @llvm.dbg.value(metadata ptr %90, metadata !1795, metadata !DIExpression()), !dbg !1810
  %104 = ptrtoint ptr %51 to i64, !dbg !1919
  %105 = ptrtoint ptr %99 to i64, !dbg !1919
  %106 = sub i64 %104, %105, !dbg !1919
  call void @llvm.dbg.value(metadata i64 %106, metadata !1796, metadata !DIExpression()), !dbg !1810
  br label %107

107:                                              ; preds = %43, %103
  %108 = phi ptr [ %99, %103 ], [ %44, %43 ]
  %109 = phi i64 [ %106, %103 ], [ %45, %43 ]
  %110 = load i64, ptr %7, align 8, !dbg !1822, !tbaa !1312
  br label %19

111:                                              ; preds = %89, %94, %98, %32
  %112 = phi i1 [ true, %89 ], [ true, %94 ], [ false, %98 ], [ true, %32 ]
  %113 = load i64, ptr %7, align 8, !dbg !1920, !tbaa !1312
  call void @llvm.dbg.value(metadata i64 %113, metadata !1802, metadata !DIExpression()), !dbg !1810
  %114 = load i64, ptr %4, align 8, !dbg !1921, !tbaa !1312
  %115 = sub nsw i64 %114, %113, !dbg !1921
  store i64 %115, ptr %4, align 8, !dbg !1921, !tbaa !1312
  call void @llvm.dbg.value(metadata i64 %109, metadata !1796, metadata !DIExpression()), !dbg !1810
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #42, !dbg !1922
  ret i1 %112, !dbg !1923
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc zeroext i1 @decode_4(ptr noalias nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) unnamed_addr #18 !dbg !1924 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1928, metadata !DIExpression()), !dbg !1933
  call void @llvm.dbg.value(metadata i64 %1, metadata !1929, metadata !DIExpression()), !dbg !1933
  call void @llvm.dbg.value(metadata ptr %2, metadata !1930, metadata !DIExpression()), !dbg !1933
  call void @llvm.dbg.value(metadata ptr %3, metadata !1931, metadata !DIExpression()), !dbg !1933
  %5 = icmp slt i64 %1, 2, !dbg !1934
  br i1 %5, label %92, label %6, !dbg !1936

6:                                                ; preds = %4
  %7 = load i8, ptr %0, align 1, !dbg !1937, !tbaa !938
  call void @llvm.dbg.value(metadata i8 %7, metadata !1614, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i8 %7, metadata !1604, metadata !DIExpression()), !dbg !1941
  %8 = zext i8 %7 to i64, !dbg !1943
  %9 = getelementptr inbounds [256 x i8], ptr @base64_to_int, i64 0, i64 %8, !dbg !1944
  %10 = load i8, ptr %9, align 1, !dbg !1944, !tbaa !938
  %11 = icmp sgt i8 %10, -1, !dbg !1945
  br i1 %11, label %12, label %92, !dbg !1946

12:                                               ; preds = %6
  %13 = getelementptr inbounds i8, ptr %0, i64 1, !dbg !1947
  %14 = load i8, ptr %13, align 1, !dbg !1947, !tbaa !938
  call void @llvm.dbg.value(metadata i8 %14, metadata !1614, metadata !DIExpression()), !dbg !1948
  call void @llvm.dbg.value(metadata i8 %14, metadata !1604, metadata !DIExpression()), !dbg !1950
  %15 = zext i8 %14 to i64, !dbg !1952
  %16 = getelementptr inbounds [256 x i8], ptr @base64_to_int, i64 0, i64 %15, !dbg !1953
  %17 = load i8, ptr %16, align 1, !dbg !1953, !tbaa !938
  %18 = icmp sgt i8 %17, -1, !dbg !1954
  br i1 %18, label %19, label %92, !dbg !1955

19:                                               ; preds = %12
  %20 = load ptr, ptr %2, align 8, !dbg !1956, !tbaa !858
  call void @llvm.dbg.value(metadata ptr %20, metadata !1932, metadata !DIExpression()), !dbg !1933
  %21 = load i64, ptr %3, align 8, !dbg !1957, !tbaa !1312
  %22 = icmp eq i64 %21, 0, !dbg !1957
  br i1 %22, label %30, label %23, !dbg !1959

23:                                               ; preds = %19
  %24 = shl i8 %10, 2, !dbg !1960
  %25 = lshr i8 %17, 4, !dbg !1962
  %26 = or i8 %25, %24, !dbg !1963
  %27 = getelementptr inbounds i8, ptr %20, i64 1, !dbg !1964
  call void @llvm.dbg.value(metadata ptr %27, metadata !1932, metadata !DIExpression()), !dbg !1933
  store i8 %26, ptr %20, align 1, !dbg !1965, !tbaa !938
  %28 = load i64, ptr %3, align 8, !dbg !1966, !tbaa !1312
  %29 = add nsw i64 %28, -1, !dbg !1966
  store i64 %29, ptr %3, align 8, !dbg !1966, !tbaa !1312
  br label %30, !dbg !1967

30:                                               ; preds = %23, %19
  %31 = phi i64 [ %29, %23 ], [ 0, %19 ]
  %32 = phi ptr [ %27, %23 ], [ %20, %19 ], !dbg !1933
  call void @llvm.dbg.value(metadata ptr %32, metadata !1932, metadata !DIExpression()), !dbg !1933
  %33 = icmp eq i64 %1, 2, !dbg !1968
  br i1 %33, label %89, label %34, !dbg !1970

34:                                               ; preds = %30
  %35 = getelementptr inbounds i8, ptr %0, i64 2, !dbg !1971
  %36 = load i8, ptr %35, align 1, !dbg !1971, !tbaa !938
  %37 = icmp eq i8 %36, 61, !dbg !1973
  br i1 %37, label %38, label %47, !dbg !1974

38:                                               ; preds = %34
  %39 = icmp eq i64 %1, 4, !dbg !1975
  br i1 %39, label %40, label %89, !dbg !1978

40:                                               ; preds = %38
  %41 = getelementptr inbounds i8, ptr %0, i64 3, !dbg !1979
  %42 = load i8, ptr %41, align 1, !dbg !1979, !tbaa !938
  %43 = icmp eq i8 %42, 61, !dbg !1981
  %44 = and i8 %17, 15
  %45 = icmp eq i8 %44, 0
  %46 = select i1 %43, i1 %45, i1 false, !dbg !1982
  br i1 %46, label %87, label %89, !dbg !1982

47:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i8 %36, metadata !1614, metadata !DIExpression()), !dbg !1983
  call void @llvm.dbg.value(metadata i8 %36, metadata !1604, metadata !DIExpression()), !dbg !1987
  %48 = zext i8 %36 to i64, !dbg !1989
  %49 = getelementptr inbounds [256 x i8], ptr @base64_to_int, i64 0, i64 %48, !dbg !1990
  %50 = load i8, ptr %49, align 1, !dbg !1990, !tbaa !938
  %51 = icmp sgt i8 %50, -1, !dbg !1991
  br i1 %51, label %52, label %89, !dbg !1992

52:                                               ; preds = %47
  %53 = icmp eq i64 %31, 0, !dbg !1993
  br i1 %53, label %61, label %54, !dbg !1995

54:                                               ; preds = %52
  %55 = shl i8 %17, 4, !dbg !1996
  %56 = lshr i8 %50, 2, !dbg !1998
  %57 = or i8 %56, %55, !dbg !1999
  %58 = getelementptr inbounds i8, ptr %32, i64 1, !dbg !2000
  call void @llvm.dbg.value(metadata ptr %58, metadata !1932, metadata !DIExpression()), !dbg !1933
  store i8 %57, ptr %32, align 1, !dbg !2001, !tbaa !938
  %59 = load i64, ptr %3, align 8, !dbg !2002, !tbaa !1312
  %60 = add nsw i64 %59, -1, !dbg !2002
  store i64 %60, ptr %3, align 8, !dbg !2002, !tbaa !1312
  br label %61, !dbg !2003

61:                                               ; preds = %54, %52
  %62 = phi i64 [ %60, %54 ], [ 0, %52 ]
  %63 = phi ptr [ %58, %54 ], [ %32, %52 ], !dbg !1933
  call void @llvm.dbg.value(metadata ptr %63, metadata !1932, metadata !DIExpression()), !dbg !1933
  %64 = icmp eq i64 %1, 3, !dbg !2004
  br i1 %64, label %89, label %65, !dbg !2006

65:                                               ; preds = %61
  %66 = getelementptr inbounds i8, ptr %0, i64 3, !dbg !2007
  %67 = load i8, ptr %66, align 1, !dbg !2007, !tbaa !938
  %68 = icmp eq i8 %67, 61, !dbg !2009
  br i1 %68, label %69, label %74, !dbg !2010

69:                                               ; preds = %65
  %70 = icmp eq i64 %1, 4, !dbg !2011
  %71 = and i8 %50, 3
  %72 = icmp eq i8 %71, 0
  %73 = select i1 %70, i1 %72, i1 false, !dbg !2014
  br i1 %73, label %87, label %89, !dbg !2014

74:                                               ; preds = %65
  call void @llvm.dbg.value(metadata i8 %67, metadata !1614, metadata !DIExpression()), !dbg !2015
  call void @llvm.dbg.value(metadata i8 %67, metadata !1604, metadata !DIExpression()), !dbg !2019
  %75 = zext i8 %67 to i64, !dbg !2021
  %76 = getelementptr inbounds [256 x i8], ptr @base64_to_int, i64 0, i64 %75, !dbg !2022
  %77 = load i8, ptr %76, align 1, !dbg !2022, !tbaa !938
  %78 = icmp sgt i8 %77, -1, !dbg !2023
  br i1 %78, label %79, label %89, !dbg !2024

79:                                               ; preds = %74
  %80 = icmp eq i64 %62, 0, !dbg !2025
  br i1 %80, label %87, label %81, !dbg !2027

81:                                               ; preds = %79
  %82 = shl i8 %50, 6, !dbg !2028
  %83 = or i8 %77, %82, !dbg !2030
  %84 = getelementptr inbounds i8, ptr %63, i64 1, !dbg !2031
  call void @llvm.dbg.value(metadata ptr %84, metadata !1932, metadata !DIExpression()), !dbg !1933
  store i8 %83, ptr %63, align 1, !dbg !2032, !tbaa !938
  %85 = load i64, ptr %3, align 8, !dbg !2033, !tbaa !1312
  %86 = add nsw i64 %85, -1, !dbg !2033
  store i64 %86, ptr %3, align 8, !dbg !2033, !tbaa !1312
  br label %87, !dbg !2034

87:                                               ; preds = %69, %40, %81, %79
  %88 = phi ptr [ %84, %81 ], [ %63, %79 ], [ %32, %40 ], [ %63, %69 ], !dbg !1933
  call void @llvm.dbg.value(metadata ptr %88, metadata !1932, metadata !DIExpression()), !dbg !1933
  br label %89, !dbg !2035

89:                                               ; preds = %74, %69, %61, %47, %40, %38, %30, %87
  %90 = phi ptr [ %88, %87 ], [ %32, %30 ], [ %32, %38 ], [ %32, %40 ], [ %32, %47 ], [ %63, %61 ], [ %63, %69 ], [ %63, %74 ]
  %91 = phi i1 [ true, %87 ], [ false, %30 ], [ false, %38 ], [ false, %40 ], [ false, %47 ], [ false, %61 ], [ false, %69 ], [ false, %74 ]
  store ptr %90, ptr %2, align 8, !dbg !1933, !tbaa !858
  br label %92, !dbg !2036

92:                                               ; preds = %89, %6, %12, %4
  %93 = phi i1 [ false, %4 ], [ false, %12 ], [ false, %6 ], [ %91, %89 ], !dbg !1933
  ret i1 %93, !dbg !2036
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2037 ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @base64_decode_alloc_ctx(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nocapture noundef %3, ptr noundef writeonly %4) local_unnamed_addr #19 !dbg !2040 {
  %6 = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2044, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata ptr %1, metadata !2045, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i64 %2, metadata !2046, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata ptr %3, metadata !2047, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata ptr %4, metadata !2048, metadata !DIExpression()), !dbg !2050
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #42, !dbg !2051
  %7 = ashr i64 %2, 2, !dbg !2052
  %8 = mul nsw i64 %7, 3, !dbg !2053
  %9 = add nsw i64 %8, 3, !dbg !2053
  call void @llvm.dbg.value(metadata i64 %9, metadata !2049, metadata !DIExpression()), !dbg !2050
  store i64 %9, ptr %6, align 8, !dbg !2054, !tbaa !1312
  call void @llvm.dbg.value(metadata i64 %9, metadata !1771, metadata !DIExpression()), !dbg !2055
  %10 = tail call noalias ptr @malloc(i64 noundef %9) #47, !dbg !2057
  store ptr %10, ptr %3, align 8, !dbg !2058, !tbaa !858
  %11 = icmp eq ptr %10, null, !dbg !2059
  br i1 %11, label %20, label %12, !dbg !2061

12:                                               ; preds = %5
  call void @llvm.dbg.value(metadata ptr %6, metadata !2049, metadata !DIExpression(DW_OP_deref)), !dbg !2050
  %13 = call zeroext i1 @base64_decode_ctx(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %10, ptr noundef nonnull %6), !dbg !2062
  br i1 %13, label %16, label %14, !dbg !2064

14:                                               ; preds = %12
  %15 = load ptr, ptr %3, align 8, !dbg !2065, !tbaa !858
  tail call void @free(ptr noundef %15) #42, !dbg !2067
  store ptr null, ptr %3, align 8, !dbg !2068, !tbaa !858
  br label %20, !dbg !2069

16:                                               ; preds = %12
  %17 = icmp eq ptr %4, null, !dbg !2070
  br i1 %17, label %20, label %18, !dbg !2072

18:                                               ; preds = %16
  %19 = load i64, ptr %6, align 8, !dbg !2073, !tbaa !1312
  call void @llvm.dbg.value(metadata i64 %19, metadata !2049, metadata !DIExpression()), !dbg !2050
  store i64 %19, ptr %4, align 8, !dbg !2074, !tbaa !1312
  br label %20, !dbg !2075

20:                                               ; preds = %16, %18, %5, %14
  %21 = phi i1 [ false, %14 ], [ true, %5 ], [ true, %18 ], [ true, %16 ], !dbg !2050
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #42, !dbg !2076
  ret i1 %21, !dbg !2076
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2077 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #20

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #21 !dbg !2080 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2082, metadata !DIExpression()), !dbg !2083
  store ptr %0, ptr @file_name, align 8, !dbg !2084, !tbaa !858
  ret void, !dbg !2085
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #21 !dbg !2086 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !2090, metadata !DIExpression()), !dbg !2091
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !2092, !tbaa !2093
  ret void, !dbg !2095
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #19 !dbg !2096 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !2101, !tbaa !858
  %2 = tail call i32 @close_stream(ptr noundef %1) #42, !dbg !2102
  %3 = icmp eq i32 %2, 0, !dbg !2103
  br i1 %3, label %22, label %4, !dbg !2104

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !2105, !tbaa !2093, !range !2106, !noundef !867
  %6 = icmp eq i8 %5, 0, !dbg !2105
  br i1 %6, label %11, label %7, !dbg !2107

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #45, !dbg !2108
  %9 = load i32, ptr %8, align 4, !dbg !2108, !tbaa !929
  %10 = icmp eq i32 %9, 32, !dbg !2109
  br i1 %10, label %22, label %11, !dbg !2110

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.1.38, i32 noundef 5) #42, !dbg !2111
  call void @llvm.dbg.value(metadata ptr %12, metadata !2098, metadata !DIExpression()), !dbg !2112
  %13 = load ptr, ptr @file_name, align 8, !dbg !2113, !tbaa !858
  %14 = icmp eq ptr %13, null, !dbg !2113
  %15 = tail call ptr @__errno_location() #45, !dbg !2115
  %16 = load i32, ptr %15, align 4, !dbg !2115, !tbaa !929
  br i1 %14, label %19, label %17, !dbg !2116

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #42, !dbg !2117
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.39, ptr noundef %18, ptr noundef %12) #42, !dbg !2117
  br label %20, !dbg !2117

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.40, ptr noundef %12) #42, !dbg !2118
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !2119, !tbaa !929
  tail call void @_exit(i32 noundef %21) #44, !dbg !2120
  unreachable, !dbg !2120

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !2121, !tbaa !858
  %24 = tail call i32 @close_stream(ptr noundef %23) #42, !dbg !2123
  %25 = icmp eq i32 %24, 0, !dbg !2124
  br i1 %25, label %28, label %26, !dbg !2125

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !2126, !tbaa !929
  tail call void @_exit(i32 noundef %27) #44, !dbg !2127
  unreachable, !dbg !2127

28:                                               ; preds = %22
  ret void, !dbg !2128
}

; Function Attrs: noreturn
declare !dbg !2129 void @_exit(i32 noundef) local_unnamed_addr #22

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #23 !dbg !2131 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2135, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i32 %1, metadata !2136, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata ptr %2, metadata !2137, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata ptr %3, metadata !2138, metadata !DIExpression()), !dbg !2139
  tail call fastcc void @flush_stdout(), !dbg !2140
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !2141, !tbaa !858
  %6 = icmp eq ptr %5, null, !dbg !2141
  br i1 %6, label %8, label %7, !dbg !2143

7:                                                ; preds = %4
  tail call void %5() #42, !dbg !2144
  br label %12, !dbg !2144

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !2145, !tbaa !858
  %10 = tail call ptr @getprogname() #43, !dbg !2145
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.51, ptr noundef %10) #42, !dbg !2145
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !2147
  ret void, !dbg !2148
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #19 !dbg !2149 {
  call void @llvm.dbg.value(metadata i32 1, metadata !2151, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.value(metadata i32 1, metadata !2153, metadata !DIExpression()), !dbg !2156
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #42, !dbg !2159
  %2 = icmp slt i32 %1, 0, !dbg !2160
  br i1 %2, label %6, label %3, !dbg !2161

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !2162, !tbaa !858
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #42, !dbg !2162
  br label %6, !dbg !2162

6:                                                ; preds = %3, %0
  ret void, !dbg !2163
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #19 !dbg !2164 {
  %5 = alloca [1024 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !2166, metadata !DIExpression()), !dbg !2170
  call void @llvm.dbg.value(metadata i32 %1, metadata !2167, metadata !DIExpression()), !dbg !2170
  call void @llvm.dbg.value(metadata ptr %2, metadata !2168, metadata !DIExpression()), !dbg !2170
  call void @llvm.dbg.value(metadata ptr %3, metadata !2169, metadata !DIExpression()), !dbg !2170
  %6 = load ptr, ptr @stderr, align 8, !dbg !2171, !tbaa !858
  call void @llvm.dbg.value(metadata ptr %6, metadata !2172, metadata !DIExpression()), !dbg !2214
  call void @llvm.dbg.value(metadata ptr %2, metadata !2212, metadata !DIExpression()), !dbg !2214
  call void @llvm.dbg.value(metadata ptr %3, metadata !2213, metadata !DIExpression()), !dbg !2214
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #42, !dbg !2216
  %8 = load i32, ptr @error_message_count, align 4, !dbg !2217, !tbaa !929
  %9 = add i32 %8, 1, !dbg !2217
  store i32 %9, ptr @error_message_count, align 4, !dbg !2217, !tbaa !929
  %10 = icmp eq i32 %1, 0, !dbg !2218
  br i1 %10, label %20, label %11, !dbg !2220

11:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !2221, metadata !DIExpression()), !dbg !2229
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #42, !dbg !2231
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2225, metadata !DIExpression()), !dbg !2232
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #42, !dbg !2233
  call void @llvm.dbg.value(metadata ptr %12, metadata !2224, metadata !DIExpression()), !dbg !2229
  %13 = icmp eq ptr %12, null, !dbg !2234
  br i1 %13, label %14, label %16, !dbg !2236

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.52, ptr noundef nonnull @.str.5.53, i32 noundef 5) #42, !dbg !2237
  call void @llvm.dbg.value(metadata ptr %15, metadata !2224, metadata !DIExpression()), !dbg !2229
  br label %16, !dbg !2238

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !2229
  call void @llvm.dbg.value(metadata ptr %17, metadata !2224, metadata !DIExpression()), !dbg !2229
  %18 = load ptr, ptr @stderr, align 8, !dbg !2239, !tbaa !858
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.54, ptr noundef %17) #42, !dbg !2239
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #42, !dbg !2240
  br label %20, !dbg !2241

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !2242, !tbaa !858
  call void @llvm.dbg.value(metadata i32 10, metadata !2243, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata ptr %21, metadata !2248, metadata !DIExpression()), !dbg !2249
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !2251
  %23 = load ptr, ptr %22, align 8, !dbg !2251, !tbaa !1507
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !2251
  %25 = load ptr, ptr %24, align 8, !dbg !2251, !tbaa !1508
  %26 = icmp ult ptr %23, %25, !dbg !2251
  br i1 %26, label %29, label %27, !dbg !2251, !prof !1509

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #42, !dbg !2251
  br label %31, !dbg !2251

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !2251
  store ptr %30, ptr %22, align 8, !dbg !2251, !tbaa !1507
  store i8 10, ptr %23, align 1, !dbg !2251, !tbaa !938
  br label %31, !dbg !2251

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !2252, !tbaa !858
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #42, !dbg !2252
  %34 = icmp eq i32 %0, 0, !dbg !2253
  br i1 %34, label %36, label %35, !dbg !2255

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #44, !dbg !2256
  unreachable, !dbg !2256

36:                                               ; preds = %31
  ret void, !dbg !2257
}

declare !dbg !2258 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !2261 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !2264 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #19 !dbg !2268 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !2272, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i32 %1, metadata !2273, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata ptr %2, metadata !2274, metadata !DIExpression()), !dbg !2281
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #42, !dbg !2282
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2275, metadata !DIExpression()), !dbg !2283
  call void @llvm.va_start(ptr nonnull %4), !dbg !2284
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #48, !dbg !2285
  call void @llvm.va_end(ptr nonnull %4), !dbg !2286
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #42, !dbg !2287
  ret void, !dbg !2287
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #24

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #23 !dbg !466 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !478, metadata !DIExpression()), !dbg !2288
  call void @llvm.dbg.value(metadata i32 %1, metadata !479, metadata !DIExpression()), !dbg !2288
  call void @llvm.dbg.value(metadata ptr %2, metadata !480, metadata !DIExpression()), !dbg !2288
  call void @llvm.dbg.value(metadata i32 %3, metadata !481, metadata !DIExpression()), !dbg !2288
  call void @llvm.dbg.value(metadata ptr %4, metadata !482, metadata !DIExpression()), !dbg !2288
  call void @llvm.dbg.value(metadata ptr %5, metadata !483, metadata !DIExpression()), !dbg !2288
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !2289, !tbaa !929
  %8 = icmp eq i32 %7, 0, !dbg !2289
  br i1 %8, label %23, label %9, !dbg !2291

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !2292, !tbaa !929
  %11 = icmp eq i32 %10, %3, !dbg !2295
  br i1 %11, label %12, label %22, !dbg !2296

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !2297, !tbaa !858
  %14 = icmp eq ptr %13, %2, !dbg !2298
  br i1 %14, label %36, label %15, !dbg !2299

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !2300
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !2301
  br i1 %18, label %19, label %22, !dbg !2301

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #43, !dbg !2302
  %21 = icmp eq i32 %20, 0, !dbg !2303
  br i1 %21, label %36, label %22, !dbg !2304

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !2305, !tbaa !858
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !2306, !tbaa !929
  br label %23, !dbg !2307

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !2308
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !2309, !tbaa !858
  %25 = icmp eq ptr %24, null, !dbg !2309
  br i1 %25, label %27, label %26, !dbg !2311

26:                                               ; preds = %23
  tail call void %24() #42, !dbg !2312
  br label %31, !dbg !2312

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !2313, !tbaa !858
  %29 = tail call ptr @getprogname() #43, !dbg !2313
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.57, ptr noundef %29) #42, !dbg !2313
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !2315, !tbaa !858
  %33 = icmp eq ptr %2, null, !dbg !2315
  %34 = select i1 %33, ptr @.str.3.58, ptr @.str.2.59, !dbg !2315
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #42, !dbg !2315
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !2316
  br label %36, !dbg !2317

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !2317
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #19 !dbg !2318 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !2322, metadata !DIExpression()), !dbg !2328
  call void @llvm.dbg.value(metadata i32 %1, metadata !2323, metadata !DIExpression()), !dbg !2328
  call void @llvm.dbg.value(metadata ptr %2, metadata !2324, metadata !DIExpression()), !dbg !2328
  call void @llvm.dbg.value(metadata i32 %3, metadata !2325, metadata !DIExpression()), !dbg !2328
  call void @llvm.dbg.value(metadata ptr %4, metadata !2326, metadata !DIExpression()), !dbg !2328
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #42, !dbg !2329
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2327, metadata !DIExpression()), !dbg !2330
  call void @llvm.va_start(ptr nonnull %6), !dbg !2331
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #48, !dbg !2332
  call void @llvm.va_end(ptr nonnull %6), !dbg !2333
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #42, !dbg !2334
  ret void, !dbg !2334
}

; Function Attrs: nounwind uwtable
define dso_local void @fdadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #19 !dbg !2335 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2341, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i64 %1, metadata !2342, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i64 %2, metadata !2343, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i32 %3, metadata !2344, metadata !DIExpression()), !dbg !2345
  %5 = tail call i32 @posix_fadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #42, !dbg !2346
  ret void, !dbg !2347
}

; Function Attrs: nounwind
declare !dbg !2348 i32 @posix_fadvise(i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @fadvise(ptr noundef %0, i32 noundef %1) local_unnamed_addr #19 !dbg !2351 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2389, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i32 %1, metadata !2390, metadata !DIExpression()), !dbg !2391
  %3 = icmp eq ptr %0, null, !dbg !2392
  br i1 %3, label %7, label %4, !dbg !2394

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(ptr noundef nonnull %0) #42, !dbg !2395
  call void @llvm.dbg.value(metadata i32 %5, metadata !2341, metadata !DIExpression()), !dbg !2396
  call void @llvm.dbg.value(metadata i64 0, metadata !2342, metadata !DIExpression()), !dbg !2396
  call void @llvm.dbg.value(metadata i64 0, metadata !2343, metadata !DIExpression()), !dbg !2396
  call void @llvm.dbg.value(metadata i32 %1, metadata !2344, metadata !DIExpression()), !dbg !2396
  %6 = tail call i32 @posix_fadvise(i32 noundef %5, i64 noundef 0, i64 noundef 0, i32 noundef %1) #42, !dbg !2398
  br label %7, !dbg !2399

7:                                                ; preds = %4, %2
  ret void, !dbg !2400
}

; Function Attrs: nofree nounwind
declare !dbg !2401 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #19 !dbg !2404 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2442, metadata !DIExpression()), !dbg !2446
  call void @llvm.dbg.value(metadata i32 0, metadata !2443, metadata !DIExpression()), !dbg !2446
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #42, !dbg !2447
  call void @llvm.dbg.value(metadata i32 %2, metadata !2444, metadata !DIExpression()), !dbg !2446
  %3 = icmp slt i32 %2, 0, !dbg !2448
  br i1 %3, label %4, label %6, !dbg !2450

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2451
  br label %24, !dbg !2452

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #42, !dbg !2453
  %8 = icmp eq i32 %7, 0, !dbg !2453
  br i1 %8, label %13, label %9, !dbg !2455

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #42, !dbg !2456
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #42, !dbg !2457
  %12 = icmp eq i64 %11, -1, !dbg !2458
  br i1 %12, label %16, label %13, !dbg !2459

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #42, !dbg !2460
  %15 = icmp eq i32 %14, 0, !dbg !2460
  br i1 %15, label %16, label %18, !dbg !2461

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !2443, metadata !DIExpression()), !dbg !2446
  call void @llvm.dbg.value(metadata i32 0, metadata !2445, metadata !DIExpression()), !dbg !2446
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2462
  call void @llvm.dbg.value(metadata i32 %17, metadata !2445, metadata !DIExpression()), !dbg !2446
  br label %24, !dbg !2463

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #45, !dbg !2464
  %20 = load i32, ptr %19, align 4, !dbg !2464, !tbaa !929
  call void @llvm.dbg.value(metadata i32 %20, metadata !2443, metadata !DIExpression()), !dbg !2446
  call void @llvm.dbg.value(metadata i32 0, metadata !2445, metadata !DIExpression()), !dbg !2446
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2462
  call void @llvm.dbg.value(metadata i32 %21, metadata !2445, metadata !DIExpression()), !dbg !2446
  %22 = icmp eq i32 %20, 0, !dbg !2465
  br i1 %22, label %24, label %23, !dbg !2463

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !2467, !tbaa !929
  call void @llvm.dbg.value(metadata i32 -1, metadata !2445, metadata !DIExpression()), !dbg !2446
  br label %24, !dbg !2469

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !2446
  ret i32 %25, !dbg !2470
}

; Function Attrs: nofree nounwind
declare !dbg !2471 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !2472 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2474 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #19 !dbg !2477 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2515, metadata !DIExpression()), !dbg !2516
  %2 = icmp eq ptr %0, null, !dbg !2517
  br i1 %2, label %6, label %3, !dbg !2519

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #42, !dbg !2520
  %5 = icmp eq i32 %4, 0, !dbg !2520
  br i1 %5, label %6, label %8, !dbg !2521

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !2522
  br label %16, !dbg !2523

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !2524, metadata !DIExpression()), !dbg !2529
  %9 = load i32, ptr %0, align 8, !dbg !2531, !tbaa !1291
  %10 = and i32 %9, 256, !dbg !2533
  %11 = icmp eq i32 %10, 0, !dbg !2533
  br i1 %11, label %14, label %12, !dbg !2534

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #42, !dbg !2535
  br label %14, !dbg !2535

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !2536
  br label %16, !dbg !2537

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !2516
  ret i32 %17, !dbg !2538
}

; Function Attrs: nofree nounwind
declare !dbg !2539 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @fpurge(ptr noundef nonnull %0) local_unnamed_addr #19 !dbg !2540 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2578, metadata !DIExpression()), !dbg !2579
  tail call void @__fpurge(ptr noundef nonnull %0) #42, !dbg !2580
  ret i32 0, !dbg !2581
}

; Function Attrs: nounwind
declare !dbg !2582 void @__fpurge(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #19 !dbg !2585 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2623, metadata !DIExpression()), !dbg !2629
  call void @llvm.dbg.value(metadata i64 %1, metadata !2624, metadata !DIExpression()), !dbg !2629
  call void @llvm.dbg.value(metadata i32 %2, metadata !2625, metadata !DIExpression()), !dbg !2629
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !2630
  %5 = load ptr, ptr %4, align 8, !dbg !2630, !tbaa !2631
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !2632
  %7 = load ptr, ptr %6, align 8, !dbg !2632, !tbaa !2633
  %8 = icmp eq ptr %5, %7, !dbg !2634
  br i1 %8, label %9, label %27, !dbg !2635

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !2636
  %11 = load ptr, ptr %10, align 8, !dbg !2636, !tbaa !1507
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !2637
  %13 = load ptr, ptr %12, align 8, !dbg !2637, !tbaa !2638
  %14 = icmp eq ptr %11, %13, !dbg !2639
  br i1 %14, label %15, label %27, !dbg !2640

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !2641
  %17 = load ptr, ptr %16, align 8, !dbg !2641, !tbaa !2642
  %18 = icmp eq ptr %17, null, !dbg !2643
  br i1 %18, label %19, label %27, !dbg !2644

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #42, !dbg !2645
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #42, !dbg !2646
  call void @llvm.dbg.value(metadata i64 %21, metadata !2626, metadata !DIExpression()), !dbg !2647
  %22 = icmp eq i64 %21, -1, !dbg !2648
  br i1 %22, label %29, label %23, !dbg !2650

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !2651, !tbaa !1291
  %25 = and i32 %24, -17, !dbg !2651
  store i32 %25, ptr %0, align 8, !dbg !2651, !tbaa !1291
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !2652
  store i64 %21, ptr %26, align 8, !dbg !2653, !tbaa !2654
  br label %29, !dbg !2655

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !2656
  br label %29, !dbg !2657

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !2629
  ret i32 %30, !dbg !2658
}

; Function Attrs: nofree nounwind
declare !dbg !2659 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #25 !dbg !2662 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !2665, !tbaa !858
  ret ptr %1, !dbg !2666
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #26 !dbg !2667 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2669, metadata !DIExpression()), !dbg !2672
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #43, !dbg !2673
  call void @llvm.dbg.value(metadata ptr %2, metadata !2670, metadata !DIExpression()), !dbg !2672
  %3 = icmp eq ptr %2, null, !dbg !2674
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2674
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2674
  call void @llvm.dbg.value(metadata ptr %5, metadata !2671, metadata !DIExpression()), !dbg !2672
  %6 = ptrtoint ptr %5 to i64, !dbg !2675
  %7 = ptrtoint ptr %0 to i64, !dbg !2675
  %8 = sub i64 %6, %7, !dbg !2675
  %9 = icmp sgt i64 %8, 6, !dbg !2677
  br i1 %9, label %10, label %19, !dbg !2678

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !2679
  call void @llvm.dbg.value(metadata ptr %11, metadata !2680, metadata !DIExpression()), !dbg !2687
  call void @llvm.dbg.value(metadata ptr @.str.78, metadata !2685, metadata !DIExpression()), !dbg !2687
  call void @llvm.dbg.value(metadata i64 7, metadata !2686, metadata !DIExpression()), !dbg !2687
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.78, i64 7), !dbg !2689
  %13 = icmp eq i32 %12, 0, !dbg !2690
  br i1 %13, label %14, label %19, !dbg !2691

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !2669, metadata !DIExpression()), !dbg !2672
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.79, i64 noundef 3) #43, !dbg !2692
  %16 = icmp eq i32 %15, 0, !dbg !2695
  %17 = select i1 %16, i64 3, i64 0, !dbg !2696
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !2696
  br label %19, !dbg !2696

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2672
  call void @llvm.dbg.value(metadata ptr %21, metadata !2671, metadata !DIExpression()), !dbg !2672
  call void @llvm.dbg.value(metadata ptr %20, metadata !2669, metadata !DIExpression()), !dbg !2672
  store ptr %20, ptr @program_name, align 8, !dbg !2697, !tbaa !858
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2698, !tbaa !858
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2699, !tbaa !858
  ret void, !dbg !2700
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2701 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #27

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #19 !dbg !520 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !527, metadata !DIExpression()), !dbg !2702
  call void @llvm.dbg.value(metadata ptr %1, metadata !528, metadata !DIExpression()), !dbg !2702
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #42, !dbg !2703
  call void @llvm.dbg.value(metadata ptr %5, metadata !529, metadata !DIExpression()), !dbg !2702
  %6 = icmp eq ptr %5, %0, !dbg !2704
  br i1 %6, label %7, label %14, !dbg !2706

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #42, !dbg !2707
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #42, !dbg !2708
  call void @llvm.dbg.declare(metadata ptr %4, metadata !535, metadata !DIExpression()), !dbg !2709
  call void @llvm.dbg.value(metadata ptr %4, metadata !2710, metadata !DIExpression()), !dbg !2717
  call void @llvm.dbg.value(metadata ptr %4, metadata !2719, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata i32 0, metadata !2724, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata i64 8, metadata !2725, metadata !DIExpression()), !dbg !2726
  store i64 0, ptr %4, align 8, !dbg !2728
  call void @llvm.dbg.value(metadata ptr %3, metadata !530, metadata !DIExpression(DW_OP_deref)), !dbg !2702
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #42, !dbg !2729
  %9 = icmp eq i64 %8, 2, !dbg !2731
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !530, metadata !DIExpression()), !dbg !2702
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2732
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !2702
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #42, !dbg !2733
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #42, !dbg !2733
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !2702
  ret ptr %15, !dbg !2733
}

; Function Attrs: nounwind
declare !dbg !2734 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #19 !dbg !2740 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2745, metadata !DIExpression()), !dbg !2748
  %2 = tail call ptr @__errno_location() #45, !dbg !2749
  %3 = load i32, ptr %2, align 4, !dbg !2749, !tbaa !929
  call void @llvm.dbg.value(metadata i32 %3, metadata !2746, metadata !DIExpression()), !dbg !2748
  %4 = icmp eq ptr %0, null, !dbg !2750
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2750
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #49, !dbg !2751
  call void @llvm.dbg.value(metadata ptr %6, metadata !2747, metadata !DIExpression()), !dbg !2748
  store i32 %3, ptr %2, align 4, !dbg !2752, !tbaa !929
  ret ptr %6, !dbg !2753
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #28 !dbg !2754 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2760, metadata !DIExpression()), !dbg !2761
  %2 = icmp eq ptr %0, null, !dbg !2762
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2762
  %4 = load i32, ptr %3, align 8, !dbg !2763, !tbaa !2764
  ret i32 %4, !dbg !2766
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #29 !dbg !2767 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2771, metadata !DIExpression()), !dbg !2773
  call void @llvm.dbg.value(metadata i32 %1, metadata !2772, metadata !DIExpression()), !dbg !2773
  %3 = icmp eq ptr %0, null, !dbg !2774
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2774
  store i32 %1, ptr %4, align 8, !dbg !2775, !tbaa !2764
  ret void, !dbg !2776
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #30 !dbg !2777 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2781, metadata !DIExpression()), !dbg !2789
  call void @llvm.dbg.value(metadata i8 %1, metadata !2782, metadata !DIExpression()), !dbg !2789
  call void @llvm.dbg.value(metadata i32 %2, metadata !2783, metadata !DIExpression()), !dbg !2789
  call void @llvm.dbg.value(metadata i8 %1, metadata !2784, metadata !DIExpression()), !dbg !2789
  %4 = icmp eq ptr %0, null, !dbg !2790
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2790
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2791
  %7 = lshr i8 %1, 5, !dbg !2792
  %8 = zext i8 %7 to i64, !dbg !2792
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !2793
  call void @llvm.dbg.value(metadata ptr %9, metadata !2785, metadata !DIExpression()), !dbg !2789
  %10 = and i8 %1, 31, !dbg !2794
  %11 = zext i8 %10 to i32, !dbg !2794
  call void @llvm.dbg.value(metadata i32 %11, metadata !2787, metadata !DIExpression()), !dbg !2789
  %12 = load i32, ptr %9, align 4, !dbg !2795, !tbaa !929
  %13 = lshr i32 %12, %11, !dbg !2796
  %14 = and i32 %13, 1, !dbg !2797
  call void @llvm.dbg.value(metadata i32 %14, metadata !2788, metadata !DIExpression()), !dbg !2789
  %15 = xor i32 %13, %2, !dbg !2798
  %16 = and i32 %15, 1, !dbg !2798
  %17 = shl nuw i32 %16, %11, !dbg !2799
  %18 = xor i32 %17, %12, !dbg !2800
  store i32 %18, ptr %9, align 4, !dbg !2800, !tbaa !929
  ret i32 %14, !dbg !2801
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #30 !dbg !2802 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2806, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.value(metadata i32 %1, metadata !2807, metadata !DIExpression()), !dbg !2809
  %3 = icmp eq ptr %0, null, !dbg !2810
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2812
  call void @llvm.dbg.value(metadata ptr %4, metadata !2806, metadata !DIExpression()), !dbg !2809
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !2813
  %6 = load i32, ptr %5, align 4, !dbg !2813, !tbaa !2814
  call void @llvm.dbg.value(metadata i32 %6, metadata !2808, metadata !DIExpression()), !dbg !2809
  store i32 %1, ptr %5, align 4, !dbg !2815, !tbaa !2814
  ret i32 %6, !dbg !2816
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #19 !dbg !2817 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2821, metadata !DIExpression()), !dbg !2824
  call void @llvm.dbg.value(metadata ptr %1, metadata !2822, metadata !DIExpression()), !dbg !2824
  call void @llvm.dbg.value(metadata ptr %2, metadata !2823, metadata !DIExpression()), !dbg !2824
  %4 = icmp eq ptr %0, null, !dbg !2825
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2827
  call void @llvm.dbg.value(metadata ptr %5, metadata !2821, metadata !DIExpression()), !dbg !2824
  store i32 10, ptr %5, align 8, !dbg !2828, !tbaa !2764
  %6 = icmp ne ptr %1, null, !dbg !2829
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2831
  br i1 %8, label %10, label %9, !dbg !2831

9:                                                ; preds = %3
  tail call void @abort() #44, !dbg !2832
  unreachable, !dbg !2832

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2833
  store ptr %1, ptr %11, align 8, !dbg !2834, !tbaa !2835
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2836
  store ptr %2, ptr %12, align 8, !dbg !2837, !tbaa !2838
  ret void, !dbg !2839
}

; Function Attrs: noreturn nounwind
declare !dbg !2840 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #19 !dbg !2841 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2845, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i64 %1, metadata !2846, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata ptr %2, metadata !2847, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i64 %3, metadata !2848, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata ptr %4, metadata !2849, metadata !DIExpression()), !dbg !2853
  %6 = icmp eq ptr %4, null, !dbg !2854
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !2854
  call void @llvm.dbg.value(metadata ptr %7, metadata !2850, metadata !DIExpression()), !dbg !2853
  %8 = tail call ptr @__errno_location() #45, !dbg !2855
  %9 = load i32, ptr %8, align 4, !dbg !2855, !tbaa !929
  call void @llvm.dbg.value(metadata i32 %9, metadata !2851, metadata !DIExpression()), !dbg !2853
  %10 = load i32, ptr %7, align 8, !dbg !2856, !tbaa !2764
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !2857
  %12 = load i32, ptr %11, align 4, !dbg !2857, !tbaa !2814
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !2858
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !2859
  %15 = load ptr, ptr %14, align 8, !dbg !2859, !tbaa !2835
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !2860
  %17 = load ptr, ptr %16, align 8, !dbg !2860, !tbaa !2838
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !2861
  call void @llvm.dbg.value(metadata i64 %18, metadata !2852, metadata !DIExpression()), !dbg !2853
  store i32 %9, ptr %8, align 4, !dbg !2862, !tbaa !929
  ret i64 %18, !dbg !2863
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #19 !dbg !2864 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !2870, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i64 %1, metadata !2871, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata ptr %2, metadata !2872, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i64 %3, metadata !2873, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i32 %4, metadata !2874, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i32 %5, metadata !2875, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata ptr %6, metadata !2876, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata ptr %7, metadata !2877, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata ptr %8, metadata !2878, metadata !DIExpression()), !dbg !2932
  %16 = tail call i64 @__ctype_get_mb_cur_max() #42, !dbg !2933
  %17 = icmp eq i64 %16, 1, !dbg !2934
  call void @llvm.dbg.value(metadata i1 %17, metadata !2879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2932
  call void @llvm.dbg.value(metadata i64 0, metadata !2880, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i64 0, metadata !2881, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata ptr null, metadata !2882, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i64 0, metadata !2883, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i8 0, metadata !2884, metadata !DIExpression()), !dbg !2932
  %18 = trunc i32 %5 to i8, !dbg !2935
  %19 = lshr i8 %18, 1, !dbg !2935
  %20 = and i8 %19, 1, !dbg !2935
  call void @llvm.dbg.value(metadata i8 %20, metadata !2885, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i8 0, metadata !2886, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i8 1, metadata !2887, metadata !DIExpression()), !dbg !2932
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !2936

28:                                               ; preds = %642, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %642 ]
  %30 = phi ptr [ %7, %9 ], [ %117, %642 ]
  %31 = phi ptr [ %8, %9 ], [ %118, %642 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %642 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %642 ], !dbg !2937
  %34 = phi ptr [ null, %9 ], [ %120, %642 ], !dbg !2938
  %35 = phi i64 [ 0, %9 ], [ %121, %642 ], !dbg !2939
  %36 = phi i8 [ 0, %9 ], [ %122, %642 ], !dbg !2940
  %37 = phi i8 [ %20, %9 ], [ %123, %642 ], !dbg !2932
  %38 = phi i8 [ 0, %9 ], [ %142, %642 ], !dbg !2941
  %39 = phi i8 [ 1, %9 ], [ %143, %642 ], !dbg !2942
  %40 = phi i64 [ %1, %9 ], [ %141, %642 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !2871, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i8 %39, metadata !2887, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i8 %38, metadata !2886, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i8 %37, metadata !2885, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i8 %36, metadata !2884, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i64 %35, metadata !2883, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata ptr %34, metadata !2882, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i64 %33, metadata !2881, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i64 0, metadata !2880, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i64 %32, metadata !2873, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata ptr %31, metadata !2878, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata ptr %30, metadata !2877, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i32 %29, metadata !2874, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.label(metadata !2925), !dbg !2943
  call void @llvm.dbg.value(metadata i8 0, metadata !2888, metadata !DIExpression()), !dbg !2932
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
  ], !dbg !2944

41:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !2885, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i32 5, metadata !2874, metadata !DIExpression()), !dbg !2932
  br label %115, !dbg !2945

42:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 %37, metadata !2885, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i32 5, metadata !2874, metadata !DIExpression()), !dbg !2932
  %43 = and i8 %37, 1, !dbg !2946
  %44 = icmp eq i8 %43, 0, !dbg !2946
  br i1 %44, label %45, label %115, !dbg !2945

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2948
  br i1 %46, label %115, label %47, !dbg !2951

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !2948, !tbaa !938
  br label %115, !dbg !2948

48:                                               ; preds = %28, %28
  call void @llvm.dbg.value(metadata ptr @.str.11.92, metadata !614, metadata !DIExpression()), !dbg !2952
  call void @llvm.dbg.value(metadata i32 %29, metadata !615, metadata !DIExpression()), !dbg !2952
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.93, ptr noundef nonnull @.str.11.92, i32 noundef 5) #42, !dbg !2956
  call void @llvm.dbg.value(metadata ptr %49, metadata !616, metadata !DIExpression()), !dbg !2952
  %50 = icmp eq ptr %49, @.str.11.92, !dbg !2957
  br i1 %50, label %51, label %60, !dbg !2959

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #42, !dbg !2960
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #42, !dbg !2961
  call void @llvm.dbg.declare(metadata ptr %13, metadata !618, metadata !DIExpression()), !dbg !2962
  call void @llvm.dbg.value(metadata ptr %13, metadata !2963, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata ptr %13, metadata !2971, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i32 0, metadata !2974, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i64 8, metadata !2975, metadata !DIExpression()), !dbg !2976
  store i64 0, ptr %13, align 8, !dbg !2978
  call void @llvm.dbg.value(metadata ptr %12, metadata !617, metadata !DIExpression(DW_OP_deref)), !dbg !2952
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #42, !dbg !2979
  %53 = icmp eq i64 %52, 3, !dbg !2981
  %54 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %54, metadata !617, metadata !DIExpression()), !dbg !2952
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !2982
  %57 = icmp eq i32 %29, 9, !dbg !2982
  %58 = select i1 %57, ptr @.str.10.94, ptr @.str.12.95, !dbg !2982
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !2982
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #42, !dbg !2983
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #42, !dbg !2983
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !2952
  call void @llvm.dbg.value(metadata ptr %61, metadata !2877, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata ptr @.str.12.95, metadata !614, metadata !DIExpression()), !dbg !2984
  call void @llvm.dbg.value(metadata i32 %29, metadata !615, metadata !DIExpression()), !dbg !2984
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.93, ptr noundef nonnull @.str.12.95, i32 noundef 5) #42, !dbg !2986
  call void @llvm.dbg.value(metadata ptr %62, metadata !616, metadata !DIExpression()), !dbg !2984
  %63 = icmp eq ptr %62, @.str.12.95, !dbg !2987
  br i1 %63, label %64, label %73, !dbg !2988

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #42, !dbg !2989
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #42, !dbg !2990
  call void @llvm.dbg.declare(metadata ptr %11, metadata !618, metadata !DIExpression()), !dbg !2991
  call void @llvm.dbg.value(metadata ptr %11, metadata !2963, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata ptr %11, metadata !2971, metadata !DIExpression()), !dbg !2994
  call void @llvm.dbg.value(metadata i32 0, metadata !2974, metadata !DIExpression()), !dbg !2994
  call void @llvm.dbg.value(metadata i64 8, metadata !2975, metadata !DIExpression()), !dbg !2994
  store i64 0, ptr %11, align 8, !dbg !2996
  call void @llvm.dbg.value(metadata ptr %10, metadata !617, metadata !DIExpression(DW_OP_deref)), !dbg !2984
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #42, !dbg !2997
  %66 = icmp eq i64 %65, 3, !dbg !2998
  %67 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %67, metadata !617, metadata !DIExpression()), !dbg !2984
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !2999
  %70 = icmp eq i32 %29, 9, !dbg !2999
  %71 = select i1 %70, ptr @.str.10.94, ptr @.str.12.95, !dbg !2999
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !2999
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #42, !dbg !3000
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #42, !dbg !3000
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  call void @llvm.dbg.value(metadata ptr %75, metadata !2878, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata ptr %74, metadata !2877, metadata !DIExpression()), !dbg !2932
  %76 = and i8 %37, 1, !dbg !3001
  %77 = icmp eq i8 %76, 0, !dbg !3001
  br i1 %77, label %78, label %93, !dbg !3002

78:                                               ; preds = %73
  call void @llvm.dbg.value(metadata ptr %74, metadata !2889, metadata !DIExpression()), !dbg !3003
  call void @llvm.dbg.value(metadata i64 0, metadata !2880, metadata !DIExpression()), !dbg !2932
  %79 = load i8, ptr %74, align 1, !dbg !3004, !tbaa !938
  %80 = icmp eq i8 %79, 0, !dbg !3006
  br i1 %80, label %93, label %81, !dbg !3006

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  call void @llvm.dbg.value(metadata ptr %83, metadata !2889, metadata !DIExpression()), !dbg !3003
  call void @llvm.dbg.value(metadata i64 %84, metadata !2880, metadata !DIExpression()), !dbg !2932
  %85 = icmp ult i64 %84, %40, !dbg !3007
  br i1 %85, label %86, label %88, !dbg !3010

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !3007
  store i8 %82, ptr %87, align 1, !dbg !3007, !tbaa !938
  br label %88, !dbg !3007

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !3010
  call void @llvm.dbg.value(metadata i64 %89, metadata !2880, metadata !DIExpression()), !dbg !2932
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !3011
  call void @llvm.dbg.value(metadata ptr %90, metadata !2889, metadata !DIExpression()), !dbg !3003
  %91 = load i8, ptr %90, align 1, !dbg !3004, !tbaa !938
  %92 = icmp eq i8 %91, 0, !dbg !3006
  br i1 %92, label %93, label %81, !dbg !3006, !llvm.loop !3012

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !3014
  call void @llvm.dbg.value(metadata i64 %94, metadata !2880, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i8 1, metadata !2884, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata ptr %75, metadata !2882, metadata !DIExpression()), !dbg !2932
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #43, !dbg !3015
  call void @llvm.dbg.value(metadata i64 %95, metadata !2883, metadata !DIExpression()), !dbg !2932
  br label %115, !dbg !3016

96:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !2884, metadata !DIExpression()), !dbg !2932
  br label %97, !dbg !3017

97:                                               ; preds = %28, %96
  %98 = phi i8 [ %36, %28 ], [ 1, %96 ], !dbg !2932
  call void @llvm.dbg.value(metadata i8 %98, metadata !2884, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i8 1, metadata !2885, metadata !DIExpression()), !dbg !2932
  br label %99, !dbg !3018

99:                                               ; preds = %28, %97
  %100 = phi i8 [ %36, %28 ], [ %98, %97 ], !dbg !2940
  %101 = phi i8 [ %37, %28 ], [ 1, %97 ], !dbg !2932
  call void @llvm.dbg.value(metadata i8 %101, metadata !2885, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i8 %100, metadata !2884, metadata !DIExpression()), !dbg !2932
  %102 = and i8 %101, 1, !dbg !3019
  %103 = icmp eq i8 %102, 0, !dbg !3019
  %104 = select i1 %103, i8 1, i8 %100, !dbg !3021
  br label %105, !dbg !3021

105:                                              ; preds = %99, %28
  %106 = phi i8 [ %36, %28 ], [ %104, %99 ], !dbg !2932
  %107 = phi i8 [ %37, %28 ], [ %101, %99 ], !dbg !2935
  call void @llvm.dbg.value(metadata i8 %107, metadata !2885, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i8 %106, metadata !2884, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i32 2, metadata !2874, metadata !DIExpression()), !dbg !2932
  %108 = and i8 %107, 1, !dbg !3022
  %109 = icmp eq i8 %108, 0, !dbg !3022
  br i1 %109, label %110, label %115, !dbg !3024

110:                                              ; preds = %105
  %111 = icmp eq i64 %40, 0, !dbg !3025
  br i1 %111, label %115, label %112, !dbg !3028

112:                                              ; preds = %110
  store i8 39, ptr %0, align 1, !dbg !3025, !tbaa !938
  br label %115, !dbg !3025

113:                                              ; preds = %28
  call void @llvm.dbg.value(metadata i8 0, metadata !2885, metadata !DIExpression()), !dbg !2932
  br label %115, !dbg !3029

114:                                              ; preds = %28
  call void @abort() #44, !dbg !3030
  unreachable, !dbg !3030

115:                                              ; preds = %41, %105, %112, %110, %28, %42, %47, %45, %113, %93
  %116 = phi i32 [ 0, %113 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %110 ], [ 2, %112 ], [ 2, %105 ], [ 5, %41 ]
  %117 = phi ptr [ %30, %113 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %110 ], [ %30, %112 ], [ %30, %105 ], [ %30, %41 ]
  %118 = phi ptr [ %31, %113 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %110 ], [ %31, %112 ], [ %31, %105 ], [ %31, %41 ]
  %119 = phi i64 [ 0, %113 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %110 ], [ 1, %112 ], [ 0, %105 ], [ 0, %41 ], !dbg !3014
  %120 = phi ptr [ %34, %113 ], [ %75, %93 ], [ @.str.10.94, %45 ], [ @.str.10.94, %47 ], [ @.str.10.94, %42 ], [ %34, %28 ], [ @.str.12.95, %110 ], [ @.str.12.95, %112 ], [ @.str.12.95, %105 ], [ @.str.10.94, %41 ], !dbg !2932
  %121 = phi i64 [ %35, %113 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %110 ], [ 1, %112 ], [ 1, %105 ], [ 1, %41 ], !dbg !2932
  %122 = phi i8 [ %36, %113 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %106, %110 ], [ %106, %112 ], [ %106, %105 ], [ 1, %41 ], !dbg !2932
  %123 = phi i8 [ 0, %113 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %107, %110 ], [ %107, %112 ], [ %107, %105 ], [ 1, %41 ], !dbg !2932
  call void @llvm.dbg.value(metadata i8 %123, metadata !2885, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i8 %122, metadata !2884, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i64 %121, metadata !2883, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata ptr %120, metadata !2882, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i64 %119, metadata !2880, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata ptr %118, metadata !2878, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata ptr %117, metadata !2877, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i32 %116, metadata !2874, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i64 0, metadata !2894, metadata !DIExpression()), !dbg !3031
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
  br label %138, !dbg !3032

138:                                              ; preds = %617, %115
  %139 = phi i64 [ %32, %115 ], [ %618, %617 ]
  %140 = phi i64 [ %119, %115 ], [ %619, %617 ], !dbg !3014
  %141 = phi i64 [ %33, %115 ], [ %620, %617 ], !dbg !2937
  %142 = phi i8 [ %38, %115 ], [ %621, %617 ], !dbg !2941
  %143 = phi i8 [ %39, %115 ], [ %622, %617 ], !dbg !2942
  %144 = phi i8 [ 0, %115 ], [ %623, %617 ], !dbg !3033
  %145 = phi i64 [ 0, %115 ], [ %626, %617 ], !dbg !3034
  %146 = phi i64 [ %40, %115 ], [ %625, %617 ]
  call void @llvm.dbg.value(metadata i64 %146, metadata !2871, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i64 %145, metadata !2894, metadata !DIExpression()), !dbg !3031
  call void @llvm.dbg.value(metadata i8 %144, metadata !2888, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i8 %143, metadata !2887, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i8 %142, metadata !2886, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i64 %141, metadata !2881, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i64 %140, metadata !2880, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i64 %139, metadata !2873, metadata !DIExpression()), !dbg !2932
  %147 = icmp eq i64 %139, -1, !dbg !3035
  br i1 %147, label %148, label %152, !dbg !3036

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !3037
  %150 = load i8, ptr %149, align 1, !dbg !3037, !tbaa !938
  %151 = icmp eq i8 %150, 0, !dbg !3038
  br i1 %151, label %627, label %154, !dbg !3039

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !3040
  br i1 %153, label %627, label %154, !dbg !3039

154:                                              ; preds = %148, %152
  call void @llvm.dbg.value(metadata i8 0, metadata !2896, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.value(metadata i8 0, metadata !2899, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.value(metadata i8 0, metadata !2900, metadata !DIExpression()), !dbg !3041
  br i1 %129, label %155, label %170, !dbg !3042

155:                                              ; preds = %154
  %156 = add i64 %145, %121, !dbg !3044
  %157 = select i1 %147, i1 %130, i1 false, !dbg !3045
  br i1 %157, label %158, label %160, !dbg !3045

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #43, !dbg !3046
  call void @llvm.dbg.value(metadata i64 %159, metadata !2873, metadata !DIExpression()), !dbg !2932
  br label %160, !dbg !3047

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !3047
  call void @llvm.dbg.value(metadata i64 %161, metadata !2873, metadata !DIExpression()), !dbg !2932
  %162 = icmp ugt i64 %156, %161, !dbg !3048
  br i1 %162, label %170, label %163, !dbg !3049

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !3050
  call void @llvm.dbg.value(metadata ptr %164, metadata !3051, metadata !DIExpression()), !dbg !3056
  call void @llvm.dbg.value(metadata ptr %120, metadata !3054, metadata !DIExpression()), !dbg !3056
  call void @llvm.dbg.value(metadata i64 %121, metadata !3055, metadata !DIExpression()), !dbg !3056
  %165 = call i32 @bcmp(ptr %164, ptr %120, i64 %121), !dbg !3058
  %166 = icmp ne i32 %165, 0, !dbg !3059
  %167 = select i1 %166, i1 true, i1 %132, !dbg !3060
  %168 = xor i1 %166, true, !dbg !3060
  %169 = zext i1 %168 to i8, !dbg !3060
  br i1 %167, label %170, label %688, !dbg !3060

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !3041
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !3041
  call void @llvm.dbg.value(metadata i8 %173, metadata !2896, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.value(metadata i64 %171, metadata !2873, metadata !DIExpression()), !dbg !2932
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !3061
  %175 = load i8, ptr %174, align 1, !dbg !3061, !tbaa !938
  call void @llvm.dbg.value(metadata i8 %175, metadata !2901, metadata !DIExpression()), !dbg !3041
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
  ], !dbg !3062

176:                                              ; preds = %170
  br i1 %125, label %177, label %225, !dbg !3063

177:                                              ; preds = %176
  br i1 %132, label %178, label %674, !dbg !3064

178:                                              ; preds = %177
  call void @llvm.dbg.value(metadata i8 1, metadata !2899, metadata !DIExpression()), !dbg !3041
  %179 = and i8 %144, 1, !dbg !3068
  %180 = icmp eq i8 %179, 0, !dbg !3068
  %181 = select i1 %133, i1 %180, i1 false, !dbg !3068
  br i1 %181, label %182, label %198, !dbg !3068

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !3070
  br i1 %183, label %184, label %186, !dbg !3074

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !3070
  store i8 39, ptr %185, align 1, !dbg !3070, !tbaa !938
  br label %186, !dbg !3070

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !3074
  call void @llvm.dbg.value(metadata i64 %187, metadata !2880, metadata !DIExpression()), !dbg !2932
  %188 = icmp ult i64 %187, %146, !dbg !3075
  br i1 %188, label %189, label %191, !dbg !3078

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !3075
  store i8 36, ptr %190, align 1, !dbg !3075, !tbaa !938
  br label %191, !dbg !3075

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !3078
  call void @llvm.dbg.value(metadata i64 %192, metadata !2880, metadata !DIExpression()), !dbg !2932
  %193 = icmp ult i64 %192, %146, !dbg !3079
  br i1 %193, label %194, label %196, !dbg !3082

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !3079
  store i8 39, ptr %195, align 1, !dbg !3079, !tbaa !938
  br label %196, !dbg !3079

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !3082
  call void @llvm.dbg.value(metadata i64 %197, metadata !2880, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i8 1, metadata !2888, metadata !DIExpression()), !dbg !2932
  br label %198, !dbg !3083

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !2932
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !2932
  call void @llvm.dbg.value(metadata i8 %200, metadata !2888, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i64 %199, metadata !2880, metadata !DIExpression()), !dbg !2932
  %201 = icmp ult i64 %199, %146, !dbg !3084
  br i1 %201, label %202, label %204, !dbg !3087

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !3084
  store i8 92, ptr %203, align 1, !dbg !3084, !tbaa !938
  br label %204, !dbg !3084

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !3087
  call void @llvm.dbg.value(metadata i64 %205, metadata !2880, metadata !DIExpression()), !dbg !2932
  br i1 %126, label %206, label %491, !dbg !3088

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !3090
  %208 = icmp ult i64 %207, %171, !dbg !3091
  br i1 %208, label %209, label %480, !dbg !3092

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !3093
  %211 = load i8, ptr %210, align 1, !dbg !3093, !tbaa !938
  %212 = add i8 %211, -48, !dbg !3094
  %213 = icmp ult i8 %212, 10, !dbg !3094
  br i1 %213, label %214, label %480, !dbg !3094

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !3095
  br i1 %215, label %216, label %218, !dbg !3099

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !3095
  store i8 48, ptr %217, align 1, !dbg !3095, !tbaa !938
  br label %218, !dbg !3095

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !3099
  call void @llvm.dbg.value(metadata i64 %219, metadata !2880, metadata !DIExpression()), !dbg !2932
  %220 = icmp ult i64 %219, %146, !dbg !3100
  br i1 %220, label %221, label %223, !dbg !3103

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !3100
  store i8 48, ptr %222, align 1, !dbg !3100, !tbaa !938
  br label %223, !dbg !3100

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !3103
  call void @llvm.dbg.value(metadata i64 %224, metadata !2880, metadata !DIExpression()), !dbg !2932
  br label %480, !dbg !3104

225:                                              ; preds = %176
  br i1 %25, label %491, label %617, !dbg !3105

226:                                              ; preds = %170
  switch i32 %116, label %480 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !3106

227:                                              ; preds = %226
  br i1 %132, label %480, label %670, !dbg !3107

228:                                              ; preds = %226
  br i1 %23, label %480, label %229, !dbg !3109

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !3111
  %231 = icmp ult i64 %230, %171, !dbg !3112
  br i1 %231, label %232, label %480, !dbg !3113

232:                                              ; preds = %229
  %233 = add i64 %145, 1, !dbg !3114
  %234 = getelementptr inbounds i8, ptr %2, i64 %233, !dbg !3115
  %235 = load i8, ptr %234, align 1, !dbg !3115, !tbaa !938
  %236 = icmp eq i8 %235, 63, !dbg !3116
  br i1 %236, label %237, label %480, !dbg !3117

237:                                              ; preds = %232
  %238 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !3118
  %239 = load i8, ptr %238, align 1, !dbg !3118, !tbaa !938
  %240 = sext i8 %239 to i32, !dbg !3118
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
  ], !dbg !3119

241:                                              ; preds = %237, %237, %237, %237, %237, %237, %237, %237, %237
  br i1 %132, label %242, label %688, !dbg !3120

242:                                              ; preds = %241
  call void @llvm.dbg.value(metadata i8 %239, metadata !2901, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.value(metadata i64 %230, metadata !2894, metadata !DIExpression()), !dbg !3031
  %243 = icmp ult i64 %140, %146, !dbg !3122
  br i1 %243, label %244, label %246, !dbg !3125

244:                                              ; preds = %242
  %245 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !3122
  store i8 63, ptr %245, align 1, !dbg !3122, !tbaa !938
  br label %246, !dbg !3122

246:                                              ; preds = %244, %242
  %247 = add i64 %140, 1, !dbg !3125
  call void @llvm.dbg.value(metadata i64 %247, metadata !2880, metadata !DIExpression()), !dbg !2932
  %248 = icmp ult i64 %247, %146, !dbg !3126
  br i1 %248, label %249, label %251, !dbg !3129

249:                                              ; preds = %246
  %250 = getelementptr inbounds i8, ptr %0, i64 %247, !dbg !3126
  store i8 34, ptr %250, align 1, !dbg !3126, !tbaa !938
  br label %251, !dbg !3126

251:                                              ; preds = %249, %246
  %252 = add i64 %140, 2, !dbg !3129
  call void @llvm.dbg.value(metadata i64 %252, metadata !2880, metadata !DIExpression()), !dbg !2932
  %253 = icmp ult i64 %252, %146, !dbg !3130
  br i1 %253, label %254, label %256, !dbg !3133

254:                                              ; preds = %251
  %255 = getelementptr inbounds i8, ptr %0, i64 %252, !dbg !3130
  store i8 34, ptr %255, align 1, !dbg !3130, !tbaa !938
  br label %256, !dbg !3130

256:                                              ; preds = %254, %251
  %257 = add i64 %140, 3, !dbg !3133
  call void @llvm.dbg.value(metadata i64 %257, metadata !2880, metadata !DIExpression()), !dbg !2932
  %258 = icmp ult i64 %257, %146, !dbg !3134
  br i1 %258, label %259, label %261, !dbg !3137

259:                                              ; preds = %256
  %260 = getelementptr inbounds i8, ptr %0, i64 %257, !dbg !3134
  store i8 63, ptr %260, align 1, !dbg !3134, !tbaa !938
  br label %261, !dbg !3134

261:                                              ; preds = %259, %256
  %262 = add i64 %140, 4, !dbg !3137
  call void @llvm.dbg.value(metadata i64 %262, metadata !2880, metadata !DIExpression()), !dbg !2932
  br label %480, !dbg !3138

263:                                              ; preds = %170
  br label %274, !dbg !3139

264:                                              ; preds = %170
  br label %274, !dbg !3140

265:                                              ; preds = %170
  br label %272, !dbg !3141

266:                                              ; preds = %170
  br label %272, !dbg !3142

267:                                              ; preds = %170
  br label %274, !dbg !3143

268:                                              ; preds = %170
  br i1 %133, label %269, label %270, !dbg !3144

269:                                              ; preds = %268
  br i1 %132, label %573, label %670, !dbg !3145

270:                                              ; preds = %268
  br i1 %125, label %271, label %491, !dbg !3148

271:                                              ; preds = %270
  br i1 %136, label %573, label %535, !dbg !3150

272:                                              ; preds = %170, %266, %265
  %273 = phi i8 [ 116, %266 ], [ 114, %265 ], [ 110, %170 ], !dbg !3151
  call void @llvm.dbg.label(metadata !2926), !dbg !3152
  br i1 %134, label %274, label %670, !dbg !3153

274:                                              ; preds = %170, %272, %267, %264, %263
  %275 = phi i8 [ %273, %272 ], [ 118, %267 ], [ 102, %264 ], [ 98, %263 ], [ 97, %170 ], !dbg !3151
  call void @llvm.dbg.label(metadata !2928), !dbg !3155
  br i1 %125, label %535, label %491, !dbg !3156

276:                                              ; preds = %170, %170
  switch i64 %171, label %480 [
    i64 -1, label %277
    i64 1, label %280
  ], !dbg !3157

277:                                              ; preds = %276
  %278 = load i8, ptr %21, align 1, !dbg !3158, !tbaa !938
  %279 = icmp eq i8 %278, 0, !dbg !3160
  br i1 %279, label %280, label %480, !dbg !3161

280:                                              ; preds = %276, %277, %170, %170
  %281 = icmp eq i64 %145, 0, !dbg !3162
  br i1 %281, label %282, label %480, !dbg !3164

282:                                              ; preds = %280, %170
  call void @llvm.dbg.value(metadata i8 1, metadata !2900, metadata !DIExpression()), !dbg !3041
  br label %283, !dbg !3165

283:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %282
  %284 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %282 ], !dbg !3041
  call void @llvm.dbg.value(metadata i8 %284, metadata !2900, metadata !DIExpression()), !dbg !3041
  br i1 %134, label %480, label %670, !dbg !3166

285:                                              ; preds = %170
  call void @llvm.dbg.value(metadata i8 1, metadata !2886, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i8 1, metadata !2900, metadata !DIExpression()), !dbg !3041
  br i1 %133, label %286, label %480, !dbg !3168

286:                                              ; preds = %285
  br i1 %132, label %287, label %670, !dbg !3169

287:                                              ; preds = %286
  %288 = icmp eq i64 %146, 0, !dbg !3172
  %289 = icmp ne i64 %141, 0
  %290 = select i1 %288, i1 true, i1 %289, !dbg !3174
  %291 = select i1 %290, i64 %141, i64 %146, !dbg !3174
  %292 = select i1 %290, i64 %146, i64 0, !dbg !3174
  call void @llvm.dbg.value(metadata i64 %292, metadata !2871, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i64 %291, metadata !2881, metadata !DIExpression()), !dbg !2932
  %293 = icmp ult i64 %140, %292, !dbg !3175
  br i1 %293, label %294, label %296, !dbg !3178

294:                                              ; preds = %287
  %295 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !3175
  store i8 39, ptr %295, align 1, !dbg !3175, !tbaa !938
  br label %296, !dbg !3175

296:                                              ; preds = %294, %287
  %297 = add i64 %140, 1, !dbg !3178
  call void @llvm.dbg.value(metadata i64 %297, metadata !2880, metadata !DIExpression()), !dbg !2932
  %298 = icmp ult i64 %297, %292, !dbg !3179
  br i1 %298, label %299, label %301, !dbg !3182

299:                                              ; preds = %296
  %300 = getelementptr inbounds i8, ptr %0, i64 %297, !dbg !3179
  store i8 92, ptr %300, align 1, !dbg !3179, !tbaa !938
  br label %301, !dbg !3179

301:                                              ; preds = %299, %296
  %302 = add i64 %140, 2, !dbg !3182
  call void @llvm.dbg.value(metadata i64 %302, metadata !2880, metadata !DIExpression()), !dbg !2932
  %303 = icmp ult i64 %302, %292, !dbg !3183
  br i1 %303, label %304, label %306, !dbg !3186

304:                                              ; preds = %301
  %305 = getelementptr inbounds i8, ptr %0, i64 %302, !dbg !3183
  store i8 39, ptr %305, align 1, !dbg !3183, !tbaa !938
  br label %306, !dbg !3183

306:                                              ; preds = %304, %301
  %307 = add i64 %140, 3, !dbg !3186
  call void @llvm.dbg.value(metadata i64 %307, metadata !2880, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i8 0, metadata !2888, metadata !DIExpression()), !dbg !2932
  br label %480, !dbg !3187

308:                                              ; preds = %170
  br i1 %17, label %309, label %319, !dbg !3188

309:                                              ; preds = %308
  call void @llvm.dbg.value(metadata i64 1, metadata !2902, metadata !DIExpression()), !dbg !3189
  %310 = tail call ptr @__ctype_b_loc() #45, !dbg !3190
  %311 = load ptr, ptr %310, align 8, !dbg !3190, !tbaa !858
  %312 = zext i8 %175 to i64
  %313 = getelementptr inbounds i16, ptr %311, i64 %312, !dbg !3190
  %314 = load i16, ptr %313, align 2, !dbg !3190, !tbaa !970
  %315 = lshr i16 %314, 14, !dbg !3192
  %316 = trunc i16 %315 to i8, !dbg !3192
  %317 = and i8 %316, 1, !dbg !3192
  call void @llvm.dbg.value(metadata i8 %317, metadata !2905, metadata !DIExpression()), !dbg !3189
  call void @llvm.dbg.value(metadata i64 %171, metadata !2873, metadata !DIExpression()), !dbg !2932
  %318 = icmp eq i8 %317, 0, !dbg !3193
  call void @llvm.dbg.value(metadata i1 %318, metadata !2900, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3041
  br label %368, !dbg !3194

319:                                              ; preds = %308
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #42, !dbg !3195
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2906, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata ptr %14, metadata !2963, metadata !DIExpression()), !dbg !3197
  call void @llvm.dbg.value(metadata ptr %14, metadata !2971, metadata !DIExpression()), !dbg !3199
  call void @llvm.dbg.value(metadata i32 0, metadata !2974, metadata !DIExpression()), !dbg !3199
  call void @llvm.dbg.value(metadata i64 8, metadata !2975, metadata !DIExpression()), !dbg !3199
  store i64 0, ptr %14, align 8, !dbg !3201
  call void @llvm.dbg.value(metadata i64 0, metadata !2902, metadata !DIExpression()), !dbg !3189
  call void @llvm.dbg.value(metadata i8 1, metadata !2905, metadata !DIExpression()), !dbg !3189
  %320 = icmp eq i64 %171, -1, !dbg !3202
  br i1 %320, label %321, label %323, !dbg !3204

321:                                              ; preds = %319
  %322 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #43, !dbg !3205
  call void @llvm.dbg.value(metadata i64 %322, metadata !2873, metadata !DIExpression()), !dbg !2932
  br label %323, !dbg !3206

323:                                              ; preds = %319, %321
  %324 = phi i64 [ %322, %321 ], [ %171, %319 ], !dbg !3041
  call void @llvm.dbg.value(metadata i64 %324, metadata !2873, metadata !DIExpression()), !dbg !2932
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #42, !dbg !3207
  %325 = sub i64 %324, %145, !dbg !3208
  call void @llvm.dbg.value(metadata ptr %15, metadata !2909, metadata !DIExpression(DW_OP_deref)), !dbg !3209
  %326 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %325, ptr noundef nonnull %14) #42, !dbg !3210
  call void @llvm.dbg.value(metadata i64 %326, metadata !2913, metadata !DIExpression()), !dbg !3209
  switch i64 %326, label %341 [
    i64 0, label %360
    i64 -1, label %330
    i64 -2, label %327
  ], !dbg !3211

327:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i64 0, metadata !2902, metadata !DIExpression()), !dbg !3189
  %328 = icmp ugt i64 %324, %145, !dbg !3212
  br i1 %328, label %331, label %329, !dbg !3214

329:                                              ; preds = %327
  call void @llvm.dbg.value(metadata i8 0, metadata !2905, metadata !DIExpression()), !dbg !3189
  call void @llvm.dbg.value(metadata i64 0, metadata !2902, metadata !DIExpression()), !dbg !3189
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #42, !dbg !3215
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #42, !dbg !3216
  call void @llvm.dbg.value(metadata i64 %324, metadata !2873, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i1 true, metadata !2900, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3041
  br label %368, !dbg !3194

330:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i8 0, metadata !2905, metadata !DIExpression()), !dbg !3189
  br label %360, !dbg !3217

331:                                              ; preds = %327, %337
  %332 = phi i64 [ %339, %337 ], [ %145, %327 ]
  %333 = phi i64 [ %338, %337 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !2902, metadata !DIExpression()), !dbg !3189
  %334 = getelementptr inbounds i8, ptr %2, i64 %332, !dbg !3219
  %335 = load i8, ptr %334, align 1, !dbg !3219, !tbaa !938
  %336 = icmp eq i8 %335, 0, !dbg !3214
  br i1 %336, label %363, label %337, !dbg !3220

337:                                              ; preds = %331
  %338 = add i64 %333, 1, !dbg !3221
  call void @llvm.dbg.value(metadata i64 %338, metadata !2902, metadata !DIExpression()), !dbg !3189
  %339 = add i64 %338, %145, !dbg !3222
  %340 = icmp eq i64 %338, %325, !dbg !3212
  br i1 %340, label %363, label %331, !dbg !3214, !llvm.loop !3223

341:                                              ; preds = %323
  %342 = icmp ugt i64 %326, 1
  %343 = and i1 %135, %342, !dbg !3224
  %344 = and i1 %343, %133, !dbg !3224
  call void @llvm.dbg.value(metadata i64 1, metadata !2914, metadata !DIExpression()), !dbg !3225
  br i1 %344, label %345, label %354, !dbg !3224

345:                                              ; preds = %341, %351
  %346 = phi i64 [ %352, %351 ], [ 1, %341 ]
  call void @llvm.dbg.value(metadata i64 %346, metadata !2914, metadata !DIExpression()), !dbg !3225
  %347 = add i64 %346, %145, !dbg !3226
  %348 = getelementptr inbounds i8, ptr %2, i64 %347, !dbg !3228
  %349 = load i8, ptr %348, align 1, !dbg !3228, !tbaa !938
  %350 = sext i8 %349 to i32, !dbg !3228
  switch i32 %350, label %351 [
    i32 91, label %359
    i32 92, label %359
    i32 94, label %359
    i32 96, label %359
    i32 124, label %359
  ], !dbg !3229

351:                                              ; preds = %345
  %352 = add nuw i64 %346, 1, !dbg !3230
  call void @llvm.dbg.value(metadata i64 %352, metadata !2914, metadata !DIExpression()), !dbg !3225
  %353 = icmp eq i64 %352, %326, !dbg !3231
  br i1 %353, label %354, label %345, !dbg !3232, !llvm.loop !3233

354:                                              ; preds = %351, %341
  %355 = load i32, ptr %15, align 4, !dbg !3235, !tbaa !929
  call void @llvm.dbg.value(metadata i32 %355, metadata !2909, metadata !DIExpression()), !dbg !3209
  call void @llvm.dbg.value(metadata i32 %355, metadata !3237, metadata !DIExpression()), !dbg !3245
  %356 = call i32 @iswprint(i32 noundef %355) #42, !dbg !3247
  %357 = icmp ne i32 %356, 0, !dbg !3248
  %358 = zext i1 %357 to i8, !dbg !3249
  call void @llvm.dbg.value(metadata i8 %358, metadata !2905, metadata !DIExpression()), !dbg !3189
  call void @llvm.dbg.value(metadata i64 %326, metadata !2902, metadata !DIExpression()), !dbg !3189
  br label %363, !dbg !3250

359:                                              ; preds = %345, %345, %345, %345, %345
  call void @llvm.dbg.value(metadata i8 1, metadata !2905, metadata !DIExpression()), !dbg !3189
  call void @llvm.dbg.value(metadata i64 0, metadata !2902, metadata !DIExpression()), !dbg !3189
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #42, !dbg !3215
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #42, !dbg !3216
  br label %670

360:                                              ; preds = %323, %330
  %361 = phi i1 [ false, %323 ], [ true, %330 ]
  %362 = phi i8 [ 1, %323 ], [ 0, %330 ]
  call void @llvm.dbg.value(metadata i8 %362, metadata !2905, metadata !DIExpression()), !dbg !3189
  call void @llvm.dbg.value(metadata i64 0, metadata !2902, metadata !DIExpression()), !dbg !3189
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #42, !dbg !3215
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #42, !dbg !3216
  call void @llvm.dbg.value(metadata i64 %324, metadata !2873, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i1 %361, metadata !2900, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3041
  br label %368, !dbg !3194

363:                                              ; preds = %331, %337, %354
  %364 = phi i64 [ %326, %354 ], [ %333, %331 ], [ %325, %337 ]
  %365 = phi i8 [ %358, %354 ], [ 0, %337 ], [ 0, %331 ]
  call void @llvm.dbg.value(metadata i8 %365, metadata !2905, metadata !DIExpression()), !dbg !3189
  call void @llvm.dbg.value(metadata i64 %364, metadata !2902, metadata !DIExpression()), !dbg !3189
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #42, !dbg !3215
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #42, !dbg !3216
  call void @llvm.dbg.value(metadata i64 %324, metadata !2873, metadata !DIExpression()), !dbg !2932
  %366 = icmp eq i8 %365, 0, !dbg !3193
  call void @llvm.dbg.value(metadata i1 %366, metadata !2900, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3041
  %367 = icmp ugt i64 %364, 1, !dbg !3251
  br i1 %367, label %374, label %368, !dbg !3194

368:                                              ; preds = %329, %360, %309, %363
  %369 = phi i1 [ %318, %309 ], [ %366, %363 ], [ %361, %360 ], [ true, %329 ]
  %370 = phi i8 [ %317, %309 ], [ %365, %363 ], [ %362, %360 ], [ 0, %329 ]
  %371 = phi i64 [ 1, %309 ], [ %364, %363 ], [ 0, %360 ], [ 0, %329 ]
  %372 = phi i64 [ %171, %309 ], [ %324, %363 ], [ %324, %360 ], [ %324, %329 ]
  %373 = select i1 %125, i1 %369, i1 false, !dbg !3252
  br i1 %373, label %374, label %480, !dbg !3252

374:                                              ; preds = %368, %363
  %375 = phi i1 [ true, %368 ], [ %366, %363 ]
  %376 = phi i8 [ %370, %368 ], [ %365, %363 ]
  %377 = phi i64 [ %371, %368 ], [ %364, %363 ]
  %378 = phi i64 [ %372, %368 ], [ %324, %363 ]
  %379 = add i64 %377, %145, !dbg !3253
  call void @llvm.dbg.value(metadata i64 %379, metadata !2922, metadata !DIExpression()), !dbg !3254
  %380 = select i1 %125, i1 %375, i1 false
  br label %381, !dbg !3255

381:                                              ; preds = %474, %374
  %382 = phi i64 [ %140, %374 ], [ %475, %474 ], !dbg !2932
  %383 = phi i8 [ %144, %374 ], [ %470, %474 ], !dbg !3033
  %384 = phi i64 [ %145, %374 ], [ %449, %474 ], !dbg !3031
  %385 = phi i8 [ %173, %374 ], [ %446, %474 ], !dbg !3041
  %386 = phi i8 [ 0, %374 ], [ %447, %474 ], !dbg !3256
  %387 = phi i8 [ %175, %374 ], [ %477, %474 ], !dbg !3041
  call void @llvm.dbg.value(metadata i8 %387, metadata !2901, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.value(metadata i8 %386, metadata !2899, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.value(metadata i8 %385, metadata !2896, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.value(metadata i64 %384, metadata !2894, metadata !DIExpression()), !dbg !3031
  call void @llvm.dbg.value(metadata i8 %383, metadata !2888, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i64 %382, metadata !2880, metadata !DIExpression()), !dbg !2932
  br i1 %380, label %388, label %434, !dbg !3257

388:                                              ; preds = %381
  br i1 %132, label %389, label %679, !dbg !3262

389:                                              ; preds = %388
  call void @llvm.dbg.value(metadata i8 1, metadata !2899, metadata !DIExpression()), !dbg !3041
  %390 = and i8 %383, 1, !dbg !3265
  %391 = icmp eq i8 %390, 0, !dbg !3265
  %392 = select i1 %133, i1 %391, i1 false, !dbg !3265
  br i1 %392, label %393, label %409, !dbg !3265

393:                                              ; preds = %389
  %394 = icmp ult i64 %382, %146, !dbg !3267
  br i1 %394, label %395, label %397, !dbg !3271

395:                                              ; preds = %393
  %396 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !3267
  store i8 39, ptr %396, align 1, !dbg !3267, !tbaa !938
  br label %397, !dbg !3267

397:                                              ; preds = %395, %393
  %398 = add i64 %382, 1, !dbg !3271
  call void @llvm.dbg.value(metadata i64 %398, metadata !2880, metadata !DIExpression()), !dbg !2932
  %399 = icmp ult i64 %398, %146, !dbg !3272
  br i1 %399, label %400, label %402, !dbg !3275

400:                                              ; preds = %397
  %401 = getelementptr inbounds i8, ptr %0, i64 %398, !dbg !3272
  store i8 36, ptr %401, align 1, !dbg !3272, !tbaa !938
  br label %402, !dbg !3272

402:                                              ; preds = %400, %397
  %403 = add i64 %382, 2, !dbg !3275
  call void @llvm.dbg.value(metadata i64 %403, metadata !2880, metadata !DIExpression()), !dbg !2932
  %404 = icmp ult i64 %403, %146, !dbg !3276
  br i1 %404, label %405, label %407, !dbg !3279

405:                                              ; preds = %402
  %406 = getelementptr inbounds i8, ptr %0, i64 %403, !dbg !3276
  store i8 39, ptr %406, align 1, !dbg !3276, !tbaa !938
  br label %407, !dbg !3276

407:                                              ; preds = %405, %402
  %408 = add i64 %382, 3, !dbg !3279
  call void @llvm.dbg.value(metadata i64 %408, metadata !2880, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i8 1, metadata !2888, metadata !DIExpression()), !dbg !2932
  br label %409, !dbg !3280

409:                                              ; preds = %389, %407
  %410 = phi i64 [ %408, %407 ], [ %382, %389 ], !dbg !2932
  %411 = phi i8 [ 1, %407 ], [ %383, %389 ], !dbg !2932
  call void @llvm.dbg.value(metadata i8 %411, metadata !2888, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i64 %410, metadata !2880, metadata !DIExpression()), !dbg !2932
  %412 = icmp ult i64 %410, %146, !dbg !3281
  br i1 %412, label %413, label %415, !dbg !3284

413:                                              ; preds = %409
  %414 = getelementptr inbounds i8, ptr %0, i64 %410, !dbg !3281
  store i8 92, ptr %414, align 1, !dbg !3281, !tbaa !938
  br label %415, !dbg !3281

415:                                              ; preds = %413, %409
  %416 = add i64 %410, 1, !dbg !3284
  call void @llvm.dbg.value(metadata i64 %416, metadata !2880, metadata !DIExpression()), !dbg !2932
  %417 = icmp ult i64 %416, %146, !dbg !3285
  br i1 %417, label %418, label %422, !dbg !3288

418:                                              ; preds = %415
  %419 = lshr i8 %387, 6
  %420 = or i8 %419, 48, !dbg !3285
  %421 = getelementptr inbounds i8, ptr %0, i64 %416, !dbg !3285
  store i8 %420, ptr %421, align 1, !dbg !3285, !tbaa !938
  br label %422, !dbg !3285

422:                                              ; preds = %418, %415
  %423 = add i64 %410, 2, !dbg !3288
  call void @llvm.dbg.value(metadata i64 %423, metadata !2880, metadata !DIExpression()), !dbg !2932
  %424 = icmp ult i64 %423, %146, !dbg !3289
  br i1 %424, label %425, label %430, !dbg !3292

425:                                              ; preds = %422
  %426 = lshr i8 %387, 3
  %427 = and i8 %426, 7, !dbg !3289
  %428 = or i8 %427, 48, !dbg !3289
  %429 = getelementptr inbounds i8, ptr %0, i64 %423, !dbg !3289
  store i8 %428, ptr %429, align 1, !dbg !3289, !tbaa !938
  br label %430, !dbg !3289

430:                                              ; preds = %425, %422
  %431 = add i64 %410, 3, !dbg !3292
  call void @llvm.dbg.value(metadata i64 %431, metadata !2880, metadata !DIExpression()), !dbg !2932
  %432 = and i8 %387, 7, !dbg !3293
  %433 = or i8 %432, 48, !dbg !3294
  call void @llvm.dbg.value(metadata i8 %433, metadata !2901, metadata !DIExpression()), !dbg !3041
  br label %443, !dbg !3295

434:                                              ; preds = %381
  %435 = and i8 %385, 1, !dbg !3296
  %436 = icmp eq i8 %435, 0, !dbg !3296
  br i1 %436, label %443, label %437, !dbg !3298

437:                                              ; preds = %434
  %438 = icmp ult i64 %382, %146, !dbg !3299
  br i1 %438, label %439, label %441, !dbg !3303

439:                                              ; preds = %437
  %440 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !3299
  store i8 92, ptr %440, align 1, !dbg !3299, !tbaa !938
  br label %441, !dbg !3299

441:                                              ; preds = %439, %437
  %442 = add i64 %382, 1, !dbg !3303
  call void @llvm.dbg.value(metadata i64 %442, metadata !2880, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i8 0, metadata !2896, metadata !DIExpression()), !dbg !3041
  br label %443, !dbg !3304

443:                                              ; preds = %434, %441, %430
  %444 = phi i64 [ %442, %441 ], [ %382, %434 ], [ %431, %430 ], !dbg !2932
  %445 = phi i8 [ %383, %441 ], [ %383, %434 ], [ %411, %430 ], !dbg !3033
  %446 = phi i8 [ 0, %441 ], [ %385, %434 ], [ %385, %430 ], !dbg !3041
  %447 = phi i8 [ %386, %441 ], [ %386, %434 ], [ 1, %430 ], !dbg !3041
  %448 = phi i8 [ %387, %441 ], [ %387, %434 ], [ %433, %430 ], !dbg !3041
  call void @llvm.dbg.value(metadata i8 %448, metadata !2901, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.value(metadata i8 %447, metadata !2899, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.value(metadata i8 %446, metadata !2896, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.value(metadata i8 %445, metadata !2888, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i64 %444, metadata !2880, metadata !DIExpression()), !dbg !2932
  %449 = add i64 %384, 1, !dbg !3305
  %450 = icmp ugt i64 %379, %449, !dbg !3307
  br i1 %450, label %451, label %478, !dbg !3308

451:                                              ; preds = %443
  %452 = and i8 %445, 1, !dbg !3309
  %453 = icmp ne i8 %452, 0, !dbg !3309
  %454 = and i8 %447, 1, !dbg !3309
  %455 = icmp eq i8 %454, 0, !dbg !3309
  %456 = select i1 %453, i1 %455, i1 false, !dbg !3309
  br i1 %456, label %457, label %468, !dbg !3309

457:                                              ; preds = %451
  %458 = icmp ult i64 %444, %146, !dbg !3312
  br i1 %458, label %459, label %461, !dbg !3316

459:                                              ; preds = %457
  %460 = getelementptr inbounds i8, ptr %0, i64 %444, !dbg !3312
  store i8 39, ptr %460, align 1, !dbg !3312, !tbaa !938
  br label %461, !dbg !3312

461:                                              ; preds = %459, %457
  %462 = add i64 %444, 1, !dbg !3316
  call void @llvm.dbg.value(metadata i64 %462, metadata !2880, metadata !DIExpression()), !dbg !2932
  %463 = icmp ult i64 %462, %146, !dbg !3317
  br i1 %463, label %464, label %466, !dbg !3320

464:                                              ; preds = %461
  %465 = getelementptr inbounds i8, ptr %0, i64 %462, !dbg !3317
  store i8 39, ptr %465, align 1, !dbg !3317, !tbaa !938
  br label %466, !dbg !3317

466:                                              ; preds = %464, %461
  %467 = add i64 %444, 2, !dbg !3320
  call void @llvm.dbg.value(metadata i64 %467, metadata !2880, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i8 0, metadata !2888, metadata !DIExpression()), !dbg !2932
  br label %468, !dbg !3321

468:                                              ; preds = %451, %466
  %469 = phi i64 [ %467, %466 ], [ %444, %451 ], !dbg !3322
  %470 = phi i8 [ 0, %466 ], [ %445, %451 ], !dbg !2932
  call void @llvm.dbg.value(metadata i8 %470, metadata !2888, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i64 %469, metadata !2880, metadata !DIExpression()), !dbg !2932
  %471 = icmp ult i64 %469, %146, !dbg !3323
  br i1 %471, label %472, label %474, !dbg !3326

472:                                              ; preds = %468
  %473 = getelementptr inbounds i8, ptr %0, i64 %469, !dbg !3323
  store i8 %448, ptr %473, align 1, !dbg !3323, !tbaa !938
  br label %474, !dbg !3323

474:                                              ; preds = %472, %468
  %475 = add i64 %469, 1, !dbg !3326
  call void @llvm.dbg.value(metadata i64 %475, metadata !2880, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i64 %449, metadata !2894, metadata !DIExpression()), !dbg !3031
  %476 = getelementptr inbounds i8, ptr %2, i64 %449, !dbg !3327
  %477 = load i8, ptr %476, align 1, !dbg !3327, !tbaa !938
  call void @llvm.dbg.value(metadata i8 %477, metadata !2901, metadata !DIExpression()), !dbg !3041
  br label %381, !dbg !3328, !llvm.loop !3329

478:                                              ; preds = %443
  %479 = and i8 %376, 1, !dbg !3041
  call void @llvm.dbg.value(metadata i8 %448, metadata !2901, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.value(metadata i8 %479, metadata !2900, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.value(metadata i8 %447, metadata !2899, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.value(metadata i8 %446, metadata !2896, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.value(metadata i64 %384, metadata !2894, metadata !DIExpression()), !dbg !3031
  call void @llvm.dbg.value(metadata i8 %445, metadata !2888, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i64 %444, metadata !2880, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i64 %378, metadata !2873, metadata !DIExpression()), !dbg !2932
  br label %573

480:                                              ; preds = %368, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %276, %206, %209, %223, %285, %306, %283, %280, %277, %226, %227, %261, %237, %232, %229, %228
  %481 = phi i64 [ %171, %306 ], [ %171, %285 ], [ %171, %283 ], [ %171, %280 ], [ -1, %277 ], [ %171, %226 ], [ %171, %237 ], [ %171, %261 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %276 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %372, %368 ], !dbg !3332
  %482 = phi i64 [ %307, %306 ], [ %140, %285 ], [ %140, %283 ], [ %140, %280 ], [ %140, %277 ], [ %140, %226 ], [ %140, %237 ], [ %262, %261 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %276 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %368 ], !dbg !2932
  %483 = phi i64 [ %291, %306 ], [ %141, %285 ], [ %141, %283 ], [ %141, %280 ], [ %141, %277 ], [ %141, %226 ], [ %141, %237 ], [ %141, %261 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %276 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %368 ], !dbg !2937
  %484 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %142, %283 ], [ %142, %280 ], [ %142, %277 ], [ %142, %226 ], [ %142, %237 ], [ %142, %261 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %276 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %368 ], !dbg !2932
  %485 = phi i8 [ 0, %306 ], [ %144, %285 ], [ %144, %283 ], [ %144, %280 ], [ %144, %277 ], [ %144, %226 ], [ %144, %237 ], [ %144, %261 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %276 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %368 ], !dbg !2932
  %486 = phi i64 [ %145, %306 ], [ %145, %285 ], [ %145, %283 ], [ %145, %280 ], [ %145, %277 ], [ %145, %226 ], [ %145, %237 ], [ %230, %261 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %276 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %368 ], !dbg !3031
  %487 = phi i8 [ 0, %306 ], [ 0, %285 ], [ 0, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %276 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %368 ], !dbg !3041
  %488 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %284, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %276 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %370, %368 ], !dbg !3041
  %489 = phi i8 [ 39, %306 ], [ 39, %285 ], [ %175, %283 ], [ %175, %280 ], [ %175, %277 ], [ 63, %226 ], [ 63, %237 ], [ %239, %261 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %276 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %368 ], !dbg !3041
  %490 = phi i64 [ %292, %306 ], [ %146, %285 ], [ %146, %283 ], [ %146, %280 ], [ %146, %277 ], [ %146, %226 ], [ %146, %237 ], [ %146, %261 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %276 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %368 ]
  call void @llvm.dbg.value(metadata i64 %490, metadata !2871, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i8 %489, metadata !2901, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.value(metadata i8 %488, metadata !2900, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.value(metadata i8 %487, metadata !2899, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.value(metadata i8 %173, metadata !2896, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.value(metadata i64 %486, metadata !2894, metadata !DIExpression()), !dbg !3031
  call void @llvm.dbg.value(metadata i8 %485, metadata !2888, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i8 %484, metadata !2886, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i64 %483, metadata !2881, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i64 %482, metadata !2880, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i64 %481, metadata !2873, metadata !DIExpression()), !dbg !2932
  br i1 %127, label %502, label %491, !dbg !3333

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
  br i1 %137, label %503, label %524, !dbg !3335

502:                                              ; preds = %480
  br i1 %27, label %524, label %503, !dbg !3336

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
  %514 = lshr i8 %505, 5, !dbg !3337
  %515 = zext i8 %514 to i64, !dbg !3337
  %516 = getelementptr inbounds i32, ptr %6, i64 %515, !dbg !3338
  %517 = load i32, ptr %516, align 4, !dbg !3338, !tbaa !929
  %518 = and i8 %505, 31, !dbg !3339
  %519 = zext i8 %518 to i32, !dbg !3339
  %520 = shl nuw i32 1, %519, !dbg !3340
  %521 = and i32 %517, %520, !dbg !3340
  %522 = icmp eq i32 %521, 0, !dbg !3340
  %523 = and i1 %172, %522, !dbg !3341
  br i1 %523, label %573, label %535, !dbg !3341

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
  br i1 %172, label %573, label %535, !dbg !3342

535:                                              ; preds = %271, %274, %524, %503
  %536 = phi i64 [ %513, %503 ], [ %534, %524 ], [ %171, %274 ], [ %171, %271 ], !dbg !3332
  %537 = phi i64 [ %512, %503 ], [ %533, %524 ], [ %140, %274 ], [ %140, %271 ], !dbg !2932
  %538 = phi i64 [ %511, %503 ], [ %532, %524 ], [ %141, %274 ], [ %141, %271 ], !dbg !2937
  %539 = phi i8 [ %510, %503 ], [ %531, %524 ], [ %142, %274 ], [ %142, %271 ], !dbg !2941
  %540 = phi i8 [ %509, %503 ], [ %530, %524 ], [ %144, %274 ], [ %144, %271 ], !dbg !3033
  %541 = phi i64 [ %508, %503 ], [ %529, %524 ], [ %145, %274 ], [ %145, %271 ], !dbg !3343
  %542 = phi i8 [ %506, %503 ], [ %527, %524 ], [ 0, %274 ], [ 0, %271 ], !dbg !3041
  %543 = phi i8 [ %505, %503 ], [ %526, %524 ], [ %275, %274 ], [ 92, %271 ], !dbg !3041
  %544 = phi i64 [ %504, %503 ], [ %525, %524 ], [ %146, %274 ], [ %146, %271 ]
  call void @llvm.dbg.value(metadata i64 %544, metadata !2871, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i8 %543, metadata !2901, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.value(metadata i8 %542, metadata !2900, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.value(metadata i64 %541, metadata !2894, metadata !DIExpression()), !dbg !3031
  call void @llvm.dbg.value(metadata i8 %540, metadata !2888, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i8 %539, metadata !2886, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i64 %538, metadata !2881, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i64 %537, metadata !2880, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i64 %536, metadata !2873, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.label(metadata !2929), !dbg !3344
  br i1 %132, label %545, label %674, !dbg !3345

545:                                              ; preds = %535
  call void @llvm.dbg.value(metadata i8 1, metadata !2899, metadata !DIExpression()), !dbg !3041
  %546 = and i8 %540, 1, !dbg !3347
  %547 = icmp eq i8 %546, 0, !dbg !3347
  %548 = select i1 %133, i1 %547, i1 false, !dbg !3347
  br i1 %548, label %549, label %565, !dbg !3347

549:                                              ; preds = %545
  %550 = icmp ult i64 %537, %544, !dbg !3349
  br i1 %550, label %551, label %553, !dbg !3353

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, ptr %0, i64 %537, !dbg !3349
  store i8 39, ptr %552, align 1, !dbg !3349, !tbaa !938
  br label %553, !dbg !3349

553:                                              ; preds = %551, %549
  %554 = add i64 %537, 1, !dbg !3353
  call void @llvm.dbg.value(metadata i64 %554, metadata !2880, metadata !DIExpression()), !dbg !2932
  %555 = icmp ult i64 %554, %544, !dbg !3354
  br i1 %555, label %556, label %558, !dbg !3357

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, ptr %0, i64 %554, !dbg !3354
  store i8 36, ptr %557, align 1, !dbg !3354, !tbaa !938
  br label %558, !dbg !3354

558:                                              ; preds = %556, %553
  %559 = add i64 %537, 2, !dbg !3357
  call void @llvm.dbg.value(metadata i64 %559, metadata !2880, metadata !DIExpression()), !dbg !2932
  %560 = icmp ult i64 %559, %544, !dbg !3358
  br i1 %560, label %561, label %563, !dbg !3361

561:                                              ; preds = %558
  %562 = getelementptr inbounds i8, ptr %0, i64 %559, !dbg !3358
  store i8 39, ptr %562, align 1, !dbg !3358, !tbaa !938
  br label %563, !dbg !3358

563:                                              ; preds = %561, %558
  %564 = add i64 %537, 3, !dbg !3361
  call void @llvm.dbg.value(metadata i64 %564, metadata !2880, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i8 1, metadata !2888, metadata !DIExpression()), !dbg !2932
  br label %565, !dbg !3362

565:                                              ; preds = %545, %563
  %566 = phi i64 [ %564, %563 ], [ %537, %545 ], !dbg !3041
  %567 = phi i8 [ 1, %563 ], [ %540, %545 ], !dbg !2932
  call void @llvm.dbg.value(metadata i8 %567, metadata !2888, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i64 %566, metadata !2880, metadata !DIExpression()), !dbg !2932
  %568 = icmp ult i64 %566, %544, !dbg !3363
  br i1 %568, label %569, label %571, !dbg !3366

569:                                              ; preds = %565
  %570 = getelementptr inbounds i8, ptr %0, i64 %566, !dbg !3363
  store i8 92, ptr %570, align 1, !dbg !3363, !tbaa !938
  br label %571, !dbg !3363

571:                                              ; preds = %565, %569
  %572 = add i64 %566, 1, !dbg !3366
  call void @llvm.dbg.value(metadata i64 %544, metadata !2871, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i8 %543, metadata !2901, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.value(metadata i8 %542, metadata !2900, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.value(metadata i8 1, metadata !2899, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.value(metadata i64 %541, metadata !2894, metadata !DIExpression()), !dbg !3031
  call void @llvm.dbg.value(metadata i8 %567, metadata !2888, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i8 %539, metadata !2886, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i64 %538, metadata !2881, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i64 %572, metadata !2880, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i64 %536, metadata !2873, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.label(metadata !2930), !dbg !3367
  br label %600, !dbg !3368

573:                                              ; preds = %478, %503, %269, %271, %524
  %574 = phi i64 [ %378, %478 ], [ %534, %524 ], [ %171, %269 ], [ %171, %271 ], [ %513, %503 ], !dbg !3332
  %575 = phi i64 [ %444, %478 ], [ %533, %524 ], [ %140, %269 ], [ %140, %271 ], [ %512, %503 ], !dbg !2932
  %576 = phi i64 [ %141, %478 ], [ %532, %524 ], [ %141, %269 ], [ %141, %271 ], [ %511, %503 ], !dbg !2937
  %577 = phi i8 [ %142, %478 ], [ %531, %524 ], [ %142, %269 ], [ %142, %271 ], [ %510, %503 ], !dbg !2941
  %578 = phi i8 [ %445, %478 ], [ %530, %524 ], [ %144, %269 ], [ %144, %271 ], [ %509, %503 ], !dbg !3033
  %579 = phi i64 [ %384, %478 ], [ %529, %524 ], [ %145, %269 ], [ %145, %271 ], [ %508, %503 ], !dbg !3343
  %580 = phi i8 [ %447, %478 ], [ %528, %524 ], [ 0, %269 ], [ 0, %271 ], [ %507, %503 ], !dbg !3041
  %581 = phi i8 [ %479, %478 ], [ %527, %524 ], [ 0, %269 ], [ 0, %271 ], [ %506, %503 ], !dbg !3041
  %582 = phi i8 [ %448, %478 ], [ %526, %524 ], [ 92, %269 ], [ 92, %271 ], [ %505, %503 ], !dbg !3371
  %583 = phi i64 [ %146, %478 ], [ %525, %524 ], [ %146, %269 ], [ %146, %271 ], [ %504, %503 ]
  call void @llvm.dbg.value(metadata i64 %583, metadata !2871, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i8 %582, metadata !2901, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.value(metadata i8 %581, metadata !2900, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.value(metadata i8 %580, metadata !2899, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.value(metadata i64 %579, metadata !2894, metadata !DIExpression()), !dbg !3031
  call void @llvm.dbg.value(metadata i8 %578, metadata !2888, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i8 %577, metadata !2886, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i64 %576, metadata !2881, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i64 %575, metadata !2880, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i64 %574, metadata !2873, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.label(metadata !2930), !dbg !3367
  %584 = and i8 %578, 1, !dbg !3368
  %585 = icmp ne i8 %584, 0, !dbg !3368
  %586 = and i8 %580, 1, !dbg !3368
  %587 = icmp eq i8 %586, 0, !dbg !3368
  %588 = select i1 %585, i1 %587, i1 false, !dbg !3368
  br i1 %588, label %589, label %600, !dbg !3368

589:                                              ; preds = %573
  %590 = icmp ult i64 %575, %583, !dbg !3372
  br i1 %590, label %591, label %593, !dbg !3376

591:                                              ; preds = %589
  %592 = getelementptr inbounds i8, ptr %0, i64 %575, !dbg !3372
  store i8 39, ptr %592, align 1, !dbg !3372, !tbaa !938
  br label %593, !dbg !3372

593:                                              ; preds = %591, %589
  %594 = add i64 %575, 1, !dbg !3376
  call void @llvm.dbg.value(metadata i64 %594, metadata !2880, metadata !DIExpression()), !dbg !2932
  %595 = icmp ult i64 %594, %583, !dbg !3377
  br i1 %595, label %596, label %598, !dbg !3380

596:                                              ; preds = %593
  %597 = getelementptr inbounds i8, ptr %0, i64 %594, !dbg !3377
  store i8 39, ptr %597, align 1, !dbg !3377, !tbaa !938
  br label %598, !dbg !3377

598:                                              ; preds = %596, %593
  %599 = add i64 %575, 2, !dbg !3380
  call void @llvm.dbg.value(metadata i64 %599, metadata !2880, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i8 0, metadata !2888, metadata !DIExpression()), !dbg !2932
  br label %600, !dbg !3381

600:                                              ; preds = %571, %573, %598
  %601 = phi i64 [ %583, %598 ], [ %583, %573 ], [ %544, %571 ]
  %602 = phi i8 [ %582, %598 ], [ %582, %573 ], [ %543, %571 ]
  %603 = phi i8 [ %581, %598 ], [ %581, %573 ], [ %542, %571 ]
  %604 = phi i64 [ %579, %598 ], [ %579, %573 ], [ %541, %571 ]
  %605 = phi i8 [ %577, %598 ], [ %577, %573 ], [ %539, %571 ]
  %606 = phi i64 [ %576, %598 ], [ %576, %573 ], [ %538, %571 ]
  %607 = phi i64 [ %574, %598 ], [ %574, %573 ], [ %536, %571 ]
  %608 = phi i64 [ %599, %598 ], [ %575, %573 ], [ %572, %571 ], !dbg !3041
  %609 = phi i8 [ 0, %598 ], [ %578, %573 ], [ %567, %571 ], !dbg !2932
  call void @llvm.dbg.value(metadata i8 %609, metadata !2888, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i64 %608, metadata !2880, metadata !DIExpression()), !dbg !2932
  %610 = icmp ult i64 %608, %601, !dbg !3382
  br i1 %610, label %611, label %613, !dbg !3385

611:                                              ; preds = %600
  %612 = getelementptr inbounds i8, ptr %0, i64 %608, !dbg !3382
  store i8 %602, ptr %612, align 1, !dbg !3382, !tbaa !938
  br label %613, !dbg !3382

613:                                              ; preds = %611, %600
  %614 = add i64 %608, 1, !dbg !3385
  call void @llvm.dbg.value(metadata i64 %614, metadata !2880, metadata !DIExpression()), !dbg !2932
  %615 = icmp eq i8 %603, 0, !dbg !3386
  %616 = select i1 %615, i8 0, i8 %143, !dbg !3388
  call void @llvm.dbg.value(metadata i8 %616, metadata !2887, metadata !DIExpression()), !dbg !2932
  br label %617, !dbg !3389

617:                                              ; preds = %225, %613
  %618 = phi i64 [ %607, %613 ], [ %171, %225 ], !dbg !3332
  %619 = phi i64 [ %614, %613 ], [ %140, %225 ], !dbg !2932
  %620 = phi i64 [ %606, %613 ], [ %141, %225 ], !dbg !2937
  %621 = phi i8 [ %605, %613 ], [ %142, %225 ], !dbg !2941
  %622 = phi i8 [ %616, %613 ], [ %143, %225 ], !dbg !2942
  %623 = phi i8 [ %609, %613 ], [ %144, %225 ], !dbg !3033
  %624 = phi i64 [ %604, %613 ], [ %145, %225 ], !dbg !3343
  %625 = phi i64 [ %601, %613 ], [ %146, %225 ]
  call void @llvm.dbg.value(metadata i64 %625, metadata !2871, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i64 %624, metadata !2894, metadata !DIExpression()), !dbg !3031
  call void @llvm.dbg.value(metadata i8 %623, metadata !2888, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i8 %622, metadata !2887, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i8 %621, metadata !2886, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i64 %620, metadata !2881, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i64 %619, metadata !2880, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i64 %618, metadata !2873, metadata !DIExpression()), !dbg !2932
  %626 = add i64 %624, 1, !dbg !3390
  call void @llvm.dbg.value(metadata i64 %626, metadata !2894, metadata !DIExpression()), !dbg !3031
  br label %138, !dbg !3391, !llvm.loop !3392

627:                                              ; preds = %152, %148
  call void @llvm.dbg.value(metadata i64 %146, metadata !2871, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i8 %143, metadata !2887, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i8 %142, metadata !2886, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i64 %141, metadata !2881, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i64 %140, metadata !2880, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i64 %139, metadata !2873, metadata !DIExpression()), !dbg !2932
  %628 = icmp eq i64 %140, 0, !dbg !3394
  %629 = and i1 %133, %628, !dbg !3396
  %630 = xor i1 %629, true, !dbg !3396
  %631 = select i1 %630, i1 true, i1 %132, !dbg !3396
  br i1 %631, label %632, label %670, !dbg !3396

632:                                              ; preds = %627
  %633 = select i1 %133, i1 %132, i1 false, !dbg !3397
  %634 = and i8 %142, 1
  %635 = icmp ne i8 %634, 0
  %636 = select i1 %633, i1 %635, i1 false, !dbg !3397
  br i1 %636, label %637, label %646, !dbg !3397

637:                                              ; preds = %632
  %638 = and i8 %143, 1, !dbg !3399
  %639 = icmp eq i8 %638, 0, !dbg !3399
  br i1 %639, label %642, label %640, !dbg !3402

640:                                              ; preds = %637
  %641 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %117, ptr noundef %118), !dbg !3403
  br label %694, !dbg !3404

642:                                              ; preds = %637
  %643 = icmp eq i64 %146, 0, !dbg !3405
  %644 = icmp ne i64 %141, 0
  %645 = select i1 %643, i1 %644, i1 false, !dbg !3407
  br i1 %645, label %28, label %646, !dbg !3407

646:                                              ; preds = %642, %632
  %647 = phi i1 [ true, %642 ], [ %132, %632 ]
  %648 = icmp ne ptr %120, null, !dbg !3408
  %649 = select i1 %648, i1 %647, i1 false, !dbg !3410
  br i1 %649, label %650, label %665, !dbg !3410

650:                                              ; preds = %646
  call void @llvm.dbg.value(metadata ptr %120, metadata !2882, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i64 %140, metadata !2880, metadata !DIExpression()), !dbg !2932
  %651 = load i8, ptr %120, align 1, !dbg !3411, !tbaa !938
  %652 = icmp eq i8 %651, 0, !dbg !3414
  br i1 %652, label %665, label %653, !dbg !3414

653:                                              ; preds = %650, %660
  %654 = phi i8 [ %663, %660 ], [ %651, %650 ]
  %655 = phi ptr [ %662, %660 ], [ %120, %650 ]
  %656 = phi i64 [ %661, %660 ], [ %140, %650 ]
  call void @llvm.dbg.value(metadata ptr %655, metadata !2882, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i64 %656, metadata !2880, metadata !DIExpression()), !dbg !2932
  %657 = icmp ult i64 %656, %146, !dbg !3415
  br i1 %657, label %658, label %660, !dbg !3418

658:                                              ; preds = %653
  %659 = getelementptr inbounds i8, ptr %0, i64 %656, !dbg !3415
  store i8 %654, ptr %659, align 1, !dbg !3415, !tbaa !938
  br label %660, !dbg !3415

660:                                              ; preds = %658, %653
  %661 = add i64 %656, 1, !dbg !3418
  call void @llvm.dbg.value(metadata i64 %661, metadata !2880, metadata !DIExpression()), !dbg !2932
  %662 = getelementptr inbounds i8, ptr %655, i64 1, !dbg !3419
  call void @llvm.dbg.value(metadata ptr %662, metadata !2882, metadata !DIExpression()), !dbg !2932
  %663 = load i8, ptr %662, align 1, !dbg !3411, !tbaa !938
  %664 = icmp eq i8 %663, 0, !dbg !3414
  br i1 %664, label %665, label %653, !dbg !3414, !llvm.loop !3420

665:                                              ; preds = %660, %650, %646
  %666 = phi i64 [ %140, %646 ], [ %140, %650 ], [ %661, %660 ], !dbg !3014
  call void @llvm.dbg.value(metadata i64 %666, metadata !2880, metadata !DIExpression()), !dbg !2932
  %667 = icmp ult i64 %666, %146, !dbg !3422
  br i1 %667, label %668, label %694, !dbg !3424

668:                                              ; preds = %665
  %669 = getelementptr inbounds i8, ptr %0, i64 %666, !dbg !3425
  store i8 0, ptr %669, align 1, !dbg !3426, !tbaa !938
  br label %694, !dbg !3425

670:                                              ; preds = %627, %227, %269, %272, %283, %286, %359
  %671 = phi i64 [ %324, %359 ], [ %171, %286 ], [ %171, %283 ], [ %171, %272 ], [ %171, %269 ], [ %171, %227 ], [ %139, %627 ]
  call void @llvm.dbg.label(metadata !2931), !dbg !3427
  %672 = icmp eq i8 %124, 0, !dbg !3428
  %673 = select i1 %672, i32 2, i32 4, !dbg !3428
  br label %684, !dbg !3428

674:                                              ; preds = %177, %535
  %675 = phi i64 [ %146, %177 ], [ %544, %535 ]
  %676 = phi i64 [ %171, %177 ], [ %536, %535 ]
  %677 = icmp eq i8 %124, 0, !dbg !3428
  %678 = select i1 %677, i32 2, i32 4, !dbg !3428
  br label %679, !dbg !3430

679:                                              ; preds = %388, %674
  %680 = phi i32 [ %678, %674 ], [ 4, %388 ]
  %681 = phi i64 [ %675, %674 ], [ %146, %388 ]
  %682 = phi i64 [ %676, %674 ], [ %378, %388 ]
  call void @llvm.dbg.label(metadata !2931), !dbg !3427
  %683 = icmp eq i32 %116, 2, !dbg !3430
  br i1 %683, label %684, label %688, !dbg !3428

684:                                              ; preds = %670, %679
  %685 = phi i32 [ %673, %670 ], [ %680, %679 ]
  %686 = phi i64 [ %671, %670 ], [ %682, %679 ]
  %687 = phi i64 [ %146, %670 ], [ %681, %679 ]
  br label %688, !dbg !3428

688:                                              ; preds = %241, %163, %679, %684
  %689 = phi i64 [ %686, %684 ], [ %682, %679 ], [ %161, %163 ], [ %171, %241 ]
  %690 = phi i64 [ %687, %684 ], [ %681, %679 ], [ %146, %163 ], [ %146, %241 ]
  %691 = phi i32 [ %685, %684 ], [ %116, %679 ], [ %116, %163 ], [ 5, %241 ]
  call void @llvm.dbg.value(metadata i32 %691, metadata !2874, metadata !DIExpression()), !dbg !2932
  %692 = and i32 %5, -3, !dbg !3431
  %693 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %690, ptr noundef %2, i64 noundef %689, i32 noundef %691, i32 noundef %692, ptr noundef null, ptr noundef %117, ptr noundef %118), !dbg !3432
  br label %694, !dbg !3433

694:                                              ; preds = %665, %668, %688, %640
  %695 = phi i64 [ %693, %688 ], [ %641, %640 ], [ %666, %668 ], [ %666, %665 ]
  ret i64 %695, !dbg !3434
}

; Function Attrs: nounwind
declare !dbg !3435 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !3438 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !3441 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #19 !dbg !3443 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3447, metadata !DIExpression()), !dbg !3450
  call void @llvm.dbg.value(metadata i64 %1, metadata !3448, metadata !DIExpression()), !dbg !3450
  call void @llvm.dbg.value(metadata ptr %2, metadata !3449, metadata !DIExpression()), !dbg !3450
  call void @llvm.dbg.value(metadata ptr %0, metadata !3451, metadata !DIExpression()), !dbg !3464
  call void @llvm.dbg.value(metadata i64 %1, metadata !3456, metadata !DIExpression()), !dbg !3464
  call void @llvm.dbg.value(metadata ptr null, metadata !3457, metadata !DIExpression()), !dbg !3464
  call void @llvm.dbg.value(metadata ptr %2, metadata !3458, metadata !DIExpression()), !dbg !3464
  %4 = icmp eq ptr %2, null, !dbg !3466
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !3466
  call void @llvm.dbg.value(metadata ptr %5, metadata !3459, metadata !DIExpression()), !dbg !3464
  %6 = tail call ptr @__errno_location() #45, !dbg !3467
  %7 = load i32, ptr %6, align 4, !dbg !3467, !tbaa !929
  call void @llvm.dbg.value(metadata i32 %7, metadata !3460, metadata !DIExpression()), !dbg !3464
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !3468
  %9 = load i32, ptr %8, align 4, !dbg !3468, !tbaa !2814
  %10 = or i32 %9, 1, !dbg !3469
  call void @llvm.dbg.value(metadata i32 %10, metadata !3461, metadata !DIExpression()), !dbg !3464
  %11 = load i32, ptr %5, align 8, !dbg !3470, !tbaa !2764
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3471
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3472
  %14 = load ptr, ptr %13, align 8, !dbg !3472, !tbaa !2835
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3473
  %16 = load ptr, ptr %15, align 8, !dbg !3473, !tbaa !2838
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !3474
  %18 = add i64 %17, 1, !dbg !3475
  call void @llvm.dbg.value(metadata i64 %18, metadata !3462, metadata !DIExpression()), !dbg !3464
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #47, !dbg !3476
  call void @llvm.dbg.value(metadata ptr %19, metadata !3463, metadata !DIExpression()), !dbg !3464
  %20 = load i32, ptr %5, align 8, !dbg !3477, !tbaa !2764
  %21 = load ptr, ptr %13, align 8, !dbg !3478, !tbaa !2835
  %22 = load ptr, ptr %15, align 8, !dbg !3479, !tbaa !2838
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !3480
  store i32 %7, ptr %6, align 4, !dbg !3481, !tbaa !929
  ret ptr %19, !dbg !3482
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #19 !dbg !3452 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3451, metadata !DIExpression()), !dbg !3483
  call void @llvm.dbg.value(metadata i64 %1, metadata !3456, metadata !DIExpression()), !dbg !3483
  call void @llvm.dbg.value(metadata ptr %2, metadata !3457, metadata !DIExpression()), !dbg !3483
  call void @llvm.dbg.value(metadata ptr %3, metadata !3458, metadata !DIExpression()), !dbg !3483
  %5 = icmp eq ptr %3, null, !dbg !3484
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !3484
  call void @llvm.dbg.value(metadata ptr %6, metadata !3459, metadata !DIExpression()), !dbg !3483
  %7 = tail call ptr @__errno_location() #45, !dbg !3485
  %8 = load i32, ptr %7, align 4, !dbg !3485, !tbaa !929
  call void @llvm.dbg.value(metadata i32 %8, metadata !3460, metadata !DIExpression()), !dbg !3483
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !3486
  %10 = load i32, ptr %9, align 4, !dbg !3486, !tbaa !2814
  %11 = icmp eq ptr %2, null, !dbg !3487
  %12 = zext i1 %11 to i32, !dbg !3487
  %13 = or i32 %10, %12, !dbg !3488
  call void @llvm.dbg.value(metadata i32 %13, metadata !3461, metadata !DIExpression()), !dbg !3483
  %14 = load i32, ptr %6, align 8, !dbg !3489, !tbaa !2764
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !3490
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3491
  %17 = load ptr, ptr %16, align 8, !dbg !3491, !tbaa !2835
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3492
  %19 = load ptr, ptr %18, align 8, !dbg !3492, !tbaa !2838
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !3493
  %21 = add i64 %20, 1, !dbg !3494
  call void @llvm.dbg.value(metadata i64 %21, metadata !3462, metadata !DIExpression()), !dbg !3483
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #47, !dbg !3495
  call void @llvm.dbg.value(metadata ptr %22, metadata !3463, metadata !DIExpression()), !dbg !3483
  %23 = load i32, ptr %6, align 8, !dbg !3496, !tbaa !2764
  %24 = load ptr, ptr %16, align 8, !dbg !3497, !tbaa !2835
  %25 = load ptr, ptr %18, align 8, !dbg !3498, !tbaa !2838
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !3499
  store i32 %8, ptr %7, align 4, !dbg !3500, !tbaa !929
  br i1 %11, label %28, label %27, !dbg !3501

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !3502, !tbaa !1312
  br label %28, !dbg !3504

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !3505
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #19 !dbg !3506 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !3511, !tbaa !858
  call void @llvm.dbg.value(metadata ptr %1, metadata !3508, metadata !DIExpression()), !dbg !3512
  call void @llvm.dbg.value(metadata i32 1, metadata !3509, metadata !DIExpression()), !dbg !3513
  %2 = load i32, ptr @nslots, align 4, !tbaa !929
  call void @llvm.dbg.value(metadata i32 1, metadata !3509, metadata !DIExpression()), !dbg !3513
  %3 = icmp sgt i32 %2, 1, !dbg !3514
  br i1 %3, label %4, label %6, !dbg !3516

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !3514
  br label %10, !dbg !3516

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !3517
  %8 = load ptr, ptr %7, align 8, !dbg !3517, !tbaa !3519
  %9 = icmp eq ptr %8, @slot0, !dbg !3521
  br i1 %9, label %17, label %16, !dbg !3522

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !3509, metadata !DIExpression()), !dbg !3513
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !3523
  %13 = load ptr, ptr %12, align 8, !dbg !3523, !tbaa !3519
  tail call void @free(ptr noundef %13) #42, !dbg !3524
  %14 = add nuw nsw i64 %11, 1, !dbg !3525
  call void @llvm.dbg.value(metadata i64 %14, metadata !3509, metadata !DIExpression()), !dbg !3513
  %15 = icmp eq i64 %14, %5, !dbg !3514
  br i1 %15, label %6, label %10, !dbg !3516, !llvm.loop !3526

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #42, !dbg !3528
  store i64 256, ptr @slotvec0, align 8, !dbg !3530, !tbaa !3531
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !3532, !tbaa !3519
  br label %17, !dbg !3533

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !3534
  br i1 %18, label %20, label %19, !dbg !3536

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #42, !dbg !3537
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !3539, !tbaa !858
  br label %20, !dbg !3540

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !3541, !tbaa !929
  ret void, !dbg !3542
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #19 !dbg !3543 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3545, metadata !DIExpression()), !dbg !3547
  call void @llvm.dbg.value(metadata ptr %1, metadata !3546, metadata !DIExpression()), !dbg !3547
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3548
  ret ptr %3, !dbg !3549
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #19 !dbg !3550 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3554, metadata !DIExpression()), !dbg !3570
  call void @llvm.dbg.value(metadata ptr %1, metadata !3555, metadata !DIExpression()), !dbg !3570
  call void @llvm.dbg.value(metadata i64 %2, metadata !3556, metadata !DIExpression()), !dbg !3570
  call void @llvm.dbg.value(metadata ptr %3, metadata !3557, metadata !DIExpression()), !dbg !3570
  %6 = tail call ptr @__errno_location() #45, !dbg !3571
  %7 = load i32, ptr %6, align 4, !dbg !3571, !tbaa !929
  call void @llvm.dbg.value(metadata i32 %7, metadata !3558, metadata !DIExpression()), !dbg !3570
  %8 = load ptr, ptr @slotvec, align 8, !dbg !3572, !tbaa !858
  call void @llvm.dbg.value(metadata ptr %8, metadata !3559, metadata !DIExpression()), !dbg !3570
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !3560, metadata !DIExpression()), !dbg !3570
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3573
  br i1 %9, label %10, label %11, !dbg !3573

10:                                               ; preds = %4
  tail call void @abort() #44, !dbg !3575
  unreachable, !dbg !3575

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !3576, !tbaa !929
  %13 = icmp sgt i32 %12, %0, !dbg !3577
  br i1 %13, label %32, label %14, !dbg !3578

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3579
  call void @llvm.dbg.value(metadata i1 %15, metadata !3561, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3580
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #42, !dbg !3581
  %16 = sext i32 %12 to i64, !dbg !3582
  call void @llvm.dbg.value(metadata i64 %16, metadata !3564, metadata !DIExpression()), !dbg !3580
  store i64 %16, ptr %5, align 8, !dbg !3583, !tbaa !1312
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3584
  %18 = add nuw nsw i32 %0, 1, !dbg !3585
  %19 = sub i32 %18, %12, !dbg !3586
  %20 = sext i32 %19 to i64, !dbg !3587
  call void @llvm.dbg.value(metadata ptr %5, metadata !3564, metadata !DIExpression(DW_OP_deref)), !dbg !3580
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #42, !dbg !3588
  call void @llvm.dbg.value(metadata ptr %21, metadata !3559, metadata !DIExpression()), !dbg !3570
  store ptr %21, ptr @slotvec, align 8, !dbg !3589, !tbaa !858
  br i1 %15, label %22, label %23, !dbg !3590

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3591, !tbaa.struct !3593
  br label %23, !dbg !3594

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3595, !tbaa !929
  %25 = sext i32 %24 to i64, !dbg !3596
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !3596
  %27 = load i64, ptr %5, align 8, !dbg !3597, !tbaa !1312
  call void @llvm.dbg.value(metadata i64 %27, metadata !3564, metadata !DIExpression()), !dbg !3580
  %28 = sub nsw i64 %27, %25, !dbg !3598
  %29 = shl i64 %28, 4, !dbg !3599
  call void @llvm.dbg.value(metadata ptr %26, metadata !2971, metadata !DIExpression()), !dbg !3600
  call void @llvm.dbg.value(metadata i32 0, metadata !2974, metadata !DIExpression()), !dbg !3600
  call void @llvm.dbg.value(metadata i64 %29, metadata !2975, metadata !DIExpression()), !dbg !3600
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #42, !dbg !3602
  %30 = load i64, ptr %5, align 8, !dbg !3603, !tbaa !1312
  call void @llvm.dbg.value(metadata i64 %30, metadata !3564, metadata !DIExpression()), !dbg !3580
  %31 = trunc i64 %30 to i32, !dbg !3603
  store i32 %31, ptr @nslots, align 4, !dbg !3604, !tbaa !929
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #42, !dbg !3605
  br label %32, !dbg !3606

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !3570
  call void @llvm.dbg.value(metadata ptr %33, metadata !3559, metadata !DIExpression()), !dbg !3570
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3607
  %36 = load i64, ptr %35, align 8, !dbg !3608, !tbaa !3531
  call void @llvm.dbg.value(metadata i64 %36, metadata !3565, metadata !DIExpression()), !dbg !3609
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3610
  %38 = load ptr, ptr %37, align 8, !dbg !3610, !tbaa !3519
  call void @llvm.dbg.value(metadata ptr %38, metadata !3567, metadata !DIExpression()), !dbg !3609
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3611
  %40 = load i32, ptr %39, align 4, !dbg !3611, !tbaa !2814
  %41 = or i32 %40, 1, !dbg !3612
  call void @llvm.dbg.value(metadata i32 %41, metadata !3568, metadata !DIExpression()), !dbg !3609
  %42 = load i32, ptr %3, align 8, !dbg !3613, !tbaa !2764
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3614
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3615
  %45 = load ptr, ptr %44, align 8, !dbg !3615, !tbaa !2835
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3616
  %47 = load ptr, ptr %46, align 8, !dbg !3616, !tbaa !2838
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3617
  call void @llvm.dbg.value(metadata i64 %48, metadata !3569, metadata !DIExpression()), !dbg !3609
  %49 = icmp ugt i64 %36, %48, !dbg !3618
  br i1 %49, label %60, label %50, !dbg !3620

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3621
  call void @llvm.dbg.value(metadata i64 %51, metadata !3565, metadata !DIExpression()), !dbg !3609
  store i64 %51, ptr %35, align 8, !dbg !3623, !tbaa !3531
  %52 = icmp eq ptr %38, @slot0, !dbg !3624
  br i1 %52, label %54, label %53, !dbg !3626

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #42, !dbg !3627
  br label %54, !dbg !3627

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #47, !dbg !3628
  call void @llvm.dbg.value(metadata ptr %55, metadata !3567, metadata !DIExpression()), !dbg !3609
  store ptr %55, ptr %37, align 8, !dbg !3629, !tbaa !3519
  %56 = load i32, ptr %3, align 8, !dbg !3630, !tbaa !2764
  %57 = load ptr, ptr %44, align 8, !dbg !3631, !tbaa !2835
  %58 = load ptr, ptr %46, align 8, !dbg !3632, !tbaa !2838
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3633
  br label %60, !dbg !3634

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3609
  call void @llvm.dbg.value(metadata ptr %61, metadata !3567, metadata !DIExpression()), !dbg !3609
  store i32 %7, ptr %6, align 4, !dbg !3635, !tbaa !929
  ret ptr %61, !dbg !3636
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #31

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #19 !dbg !3637 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3641, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata ptr %1, metadata !3642, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i64 %2, metadata !3643, metadata !DIExpression()), !dbg !3644
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3645
  ret ptr %4, !dbg !3646
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #19 !dbg !3647 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3649, metadata !DIExpression()), !dbg !3650
  call void @llvm.dbg.value(metadata i32 0, metadata !3545, metadata !DIExpression()), !dbg !3651
  call void @llvm.dbg.value(metadata ptr %0, metadata !3546, metadata !DIExpression()), !dbg !3651
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3653
  ret ptr %2, !dbg !3654
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #19 !dbg !3655 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3659, metadata !DIExpression()), !dbg !3661
  call void @llvm.dbg.value(metadata i64 %1, metadata !3660, metadata !DIExpression()), !dbg !3661
  call void @llvm.dbg.value(metadata i32 0, metadata !3641, metadata !DIExpression()), !dbg !3662
  call void @llvm.dbg.value(metadata ptr %0, metadata !3642, metadata !DIExpression()), !dbg !3662
  call void @llvm.dbg.value(metadata i64 %1, metadata !3643, metadata !DIExpression()), !dbg !3662
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3664
  ret ptr %3, !dbg !3665
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #19 !dbg !3666 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3670, metadata !DIExpression()), !dbg !3674
  call void @llvm.dbg.value(metadata i32 %1, metadata !3671, metadata !DIExpression()), !dbg !3674
  call void @llvm.dbg.value(metadata ptr %2, metadata !3672, metadata !DIExpression()), !dbg !3674
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #42, !dbg !3675
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3673, metadata !DIExpression()), !dbg !3676
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3677), !dbg !3680
  call void @llvm.dbg.value(metadata i32 %1, metadata !3681, metadata !DIExpression()), !dbg !3687
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3686, metadata !DIExpression()), !dbg !3689
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3689, !alias.scope !3677
  %5 = icmp eq i32 %1, 10, !dbg !3690
  br i1 %5, label %6, label %7, !dbg !3692

6:                                                ; preds = %3
  tail call void @abort() #44, !dbg !3693, !noalias !3677
  unreachable, !dbg !3693

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3694, !tbaa !2764, !alias.scope !3677
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3695
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #42, !dbg !3696
  ret ptr %8, !dbg !3697
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #19 !dbg !3698 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3702, metadata !DIExpression()), !dbg !3707
  call void @llvm.dbg.value(metadata i32 %1, metadata !3703, metadata !DIExpression()), !dbg !3707
  call void @llvm.dbg.value(metadata ptr %2, metadata !3704, metadata !DIExpression()), !dbg !3707
  call void @llvm.dbg.value(metadata i64 %3, metadata !3705, metadata !DIExpression()), !dbg !3707
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #42, !dbg !3708
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3706, metadata !DIExpression()), !dbg !3709
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3710), !dbg !3713
  call void @llvm.dbg.value(metadata i32 %1, metadata !3681, metadata !DIExpression()), !dbg !3714
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3686, metadata !DIExpression()), !dbg !3716
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3716, !alias.scope !3710
  %6 = icmp eq i32 %1, 10, !dbg !3717
  br i1 %6, label %7, label %8, !dbg !3718

7:                                                ; preds = %4
  tail call void @abort() #44, !dbg !3719, !noalias !3710
  unreachable, !dbg !3719

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3720, !tbaa !2764, !alias.scope !3710
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3721
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #42, !dbg !3722
  ret ptr %9, !dbg !3723
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #19 !dbg !3724 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3728, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata ptr %1, metadata !3729, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata i32 0, metadata !3670, metadata !DIExpression()), !dbg !3731
  call void @llvm.dbg.value(metadata i32 %0, metadata !3671, metadata !DIExpression()), !dbg !3731
  call void @llvm.dbg.value(metadata ptr %1, metadata !3672, metadata !DIExpression()), !dbg !3731
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #42, !dbg !3733
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3673, metadata !DIExpression()), !dbg !3734
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3735), !dbg !3738
  call void @llvm.dbg.value(metadata i32 %0, metadata !3681, metadata !DIExpression()), !dbg !3739
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3686, metadata !DIExpression()), !dbg !3741
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3741, !alias.scope !3735
  %4 = icmp eq i32 %0, 10, !dbg !3742
  br i1 %4, label %5, label %6, !dbg !3743

5:                                                ; preds = %2
  tail call void @abort() #44, !dbg !3744, !noalias !3735
  unreachable, !dbg !3744

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3745, !tbaa !2764, !alias.scope !3735
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3746
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #42, !dbg !3747
  ret ptr %7, !dbg !3748
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #19 !dbg !3749 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3753, metadata !DIExpression()), !dbg !3756
  call void @llvm.dbg.value(metadata ptr %1, metadata !3754, metadata !DIExpression()), !dbg !3756
  call void @llvm.dbg.value(metadata i64 %2, metadata !3755, metadata !DIExpression()), !dbg !3756
  call void @llvm.dbg.value(metadata i32 0, metadata !3702, metadata !DIExpression()), !dbg !3757
  call void @llvm.dbg.value(metadata i32 %0, metadata !3703, metadata !DIExpression()), !dbg !3757
  call void @llvm.dbg.value(metadata ptr %1, metadata !3704, metadata !DIExpression()), !dbg !3757
  call void @llvm.dbg.value(metadata i64 %2, metadata !3705, metadata !DIExpression()), !dbg !3757
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #42, !dbg !3759
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3706, metadata !DIExpression()), !dbg !3760
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3761), !dbg !3764
  call void @llvm.dbg.value(metadata i32 %0, metadata !3681, metadata !DIExpression()), !dbg !3765
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3686, metadata !DIExpression()), !dbg !3767
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3767, !alias.scope !3761
  %5 = icmp eq i32 %0, 10, !dbg !3768
  br i1 %5, label %6, label %7, !dbg !3769

6:                                                ; preds = %3
  tail call void @abort() #44, !dbg !3770, !noalias !3761
  unreachable, !dbg !3770

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3771, !tbaa !2764, !alias.scope !3761
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3772
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #42, !dbg !3773
  ret ptr %8, !dbg !3774
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #19 !dbg !3775 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3779, metadata !DIExpression()), !dbg !3783
  call void @llvm.dbg.value(metadata i64 %1, metadata !3780, metadata !DIExpression()), !dbg !3783
  call void @llvm.dbg.value(metadata i8 %2, metadata !3781, metadata !DIExpression()), !dbg !3783
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #42, !dbg !3784
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3782, metadata !DIExpression()), !dbg !3785
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3786, !tbaa.struct !3787
  call void @llvm.dbg.value(metadata ptr %4, metadata !2781, metadata !DIExpression()), !dbg !3788
  call void @llvm.dbg.value(metadata i8 %2, metadata !2782, metadata !DIExpression()), !dbg !3788
  call void @llvm.dbg.value(metadata i32 1, metadata !2783, metadata !DIExpression()), !dbg !3788
  call void @llvm.dbg.value(metadata i8 %2, metadata !2784, metadata !DIExpression()), !dbg !3788
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !3790
  %6 = lshr i8 %2, 5, !dbg !3791
  %7 = zext i8 %6 to i64, !dbg !3791
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !3792
  call void @llvm.dbg.value(metadata ptr %8, metadata !2785, metadata !DIExpression()), !dbg !3788
  %9 = and i8 %2, 31, !dbg !3793
  %10 = zext i8 %9 to i32, !dbg !3793
  call void @llvm.dbg.value(metadata i32 %10, metadata !2787, metadata !DIExpression()), !dbg !3788
  %11 = load i32, ptr %8, align 4, !dbg !3794, !tbaa !929
  %12 = lshr i32 %11, %10, !dbg !3795
  call void @llvm.dbg.value(metadata i32 %12, metadata !2788, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3788
  %13 = and i32 %12, 1, !dbg !3796
  %14 = xor i32 %13, 1, !dbg !3796
  %15 = shl nuw i32 %14, %10, !dbg !3797
  %16 = xor i32 %15, %11, !dbg !3798
  store i32 %16, ptr %8, align 4, !dbg !3798, !tbaa !929
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !3799
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #42, !dbg !3800
  ret ptr %17, !dbg !3801
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #19 !dbg !3802 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3806, metadata !DIExpression()), !dbg !3808
  call void @llvm.dbg.value(metadata i8 %1, metadata !3807, metadata !DIExpression()), !dbg !3808
  call void @llvm.dbg.value(metadata ptr %0, metadata !3779, metadata !DIExpression()), !dbg !3809
  call void @llvm.dbg.value(metadata i64 -1, metadata !3780, metadata !DIExpression()), !dbg !3809
  call void @llvm.dbg.value(metadata i8 %1, metadata !3781, metadata !DIExpression()), !dbg !3809
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #42, !dbg !3811
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3782, metadata !DIExpression()), !dbg !3812
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3813, !tbaa.struct !3787
  call void @llvm.dbg.value(metadata ptr %3, metadata !2781, metadata !DIExpression()), !dbg !3814
  call void @llvm.dbg.value(metadata i8 %1, metadata !2782, metadata !DIExpression()), !dbg !3814
  call void @llvm.dbg.value(metadata i32 1, metadata !2783, metadata !DIExpression()), !dbg !3814
  call void @llvm.dbg.value(metadata i8 %1, metadata !2784, metadata !DIExpression()), !dbg !3814
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3816
  %5 = lshr i8 %1, 5, !dbg !3817
  %6 = zext i8 %5 to i64, !dbg !3817
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !3818
  call void @llvm.dbg.value(metadata ptr %7, metadata !2785, metadata !DIExpression()), !dbg !3814
  %8 = and i8 %1, 31, !dbg !3819
  %9 = zext i8 %8 to i32, !dbg !3819
  call void @llvm.dbg.value(metadata i32 %9, metadata !2787, metadata !DIExpression()), !dbg !3814
  %10 = load i32, ptr %7, align 4, !dbg !3820, !tbaa !929
  %11 = lshr i32 %10, %9, !dbg !3821
  call void @llvm.dbg.value(metadata i32 %11, metadata !2788, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3814
  %12 = and i32 %11, 1, !dbg !3822
  %13 = xor i32 %12, 1, !dbg !3822
  %14 = shl nuw i32 %13, %9, !dbg !3823
  %15 = xor i32 %14, %10, !dbg !3824
  store i32 %15, ptr %7, align 4, !dbg !3824, !tbaa !929
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !3825
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #42, !dbg !3826
  ret ptr %16, !dbg !3827
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #19 !dbg !3828 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3830, metadata !DIExpression()), !dbg !3831
  call void @llvm.dbg.value(metadata ptr %0, metadata !3806, metadata !DIExpression()), !dbg !3832
  call void @llvm.dbg.value(metadata i8 58, metadata !3807, metadata !DIExpression()), !dbg !3832
  call void @llvm.dbg.value(metadata ptr %0, metadata !3779, metadata !DIExpression()), !dbg !3834
  call void @llvm.dbg.value(metadata i64 -1, metadata !3780, metadata !DIExpression()), !dbg !3834
  call void @llvm.dbg.value(metadata i8 58, metadata !3781, metadata !DIExpression()), !dbg !3834
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #42, !dbg !3836
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3782, metadata !DIExpression()), !dbg !3837
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3838, !tbaa.struct !3787
  call void @llvm.dbg.value(metadata ptr %2, metadata !2781, metadata !DIExpression()), !dbg !3839
  call void @llvm.dbg.value(metadata i8 58, metadata !2782, metadata !DIExpression()), !dbg !3839
  call void @llvm.dbg.value(metadata i32 1, metadata !2783, metadata !DIExpression()), !dbg !3839
  call void @llvm.dbg.value(metadata i8 58, metadata !2784, metadata !DIExpression()), !dbg !3839
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !3841
  call void @llvm.dbg.value(metadata ptr %3, metadata !2785, metadata !DIExpression()), !dbg !3839
  call void @llvm.dbg.value(metadata i32 26, metadata !2787, metadata !DIExpression()), !dbg !3839
  %4 = load i32, ptr %3, align 4, !dbg !3842, !tbaa !929
  call void @llvm.dbg.value(metadata i32 %4, metadata !2788, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3839
  %5 = or i32 %4, 67108864, !dbg !3843
  store i32 %5, ptr %3, align 4, !dbg !3843, !tbaa !929
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !3844
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #42, !dbg !3845
  ret ptr %6, !dbg !3846
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #19 !dbg !3847 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3849, metadata !DIExpression()), !dbg !3851
  call void @llvm.dbg.value(metadata i64 %1, metadata !3850, metadata !DIExpression()), !dbg !3851
  call void @llvm.dbg.value(metadata ptr %0, metadata !3779, metadata !DIExpression()), !dbg !3852
  call void @llvm.dbg.value(metadata i64 %1, metadata !3780, metadata !DIExpression()), !dbg !3852
  call void @llvm.dbg.value(metadata i8 58, metadata !3781, metadata !DIExpression()), !dbg !3852
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #42, !dbg !3854
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3782, metadata !DIExpression()), !dbg !3855
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3856, !tbaa.struct !3787
  call void @llvm.dbg.value(metadata ptr %3, metadata !2781, metadata !DIExpression()), !dbg !3857
  call void @llvm.dbg.value(metadata i8 58, metadata !2782, metadata !DIExpression()), !dbg !3857
  call void @llvm.dbg.value(metadata i32 1, metadata !2783, metadata !DIExpression()), !dbg !3857
  call void @llvm.dbg.value(metadata i8 58, metadata !2784, metadata !DIExpression()), !dbg !3857
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3859
  call void @llvm.dbg.value(metadata ptr %4, metadata !2785, metadata !DIExpression()), !dbg !3857
  call void @llvm.dbg.value(metadata i32 26, metadata !2787, metadata !DIExpression()), !dbg !3857
  %5 = load i32, ptr %4, align 4, !dbg !3860, !tbaa !929
  call void @llvm.dbg.value(metadata i32 %5, metadata !2788, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3857
  %6 = or i32 %5, 67108864, !dbg !3861
  store i32 %6, ptr %4, align 4, !dbg !3861, !tbaa !929
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3862
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #42, !dbg !3863
  ret ptr %7, !dbg !3864
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #19 !dbg !3865 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3686, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3871
  call void @llvm.dbg.value(metadata i32 %0, metadata !3867, metadata !DIExpression()), !dbg !3873
  call void @llvm.dbg.value(metadata i32 %1, metadata !3868, metadata !DIExpression()), !dbg !3873
  call void @llvm.dbg.value(metadata ptr %2, metadata !3869, metadata !DIExpression()), !dbg !3873
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #42, !dbg !3874
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3870, metadata !DIExpression()), !dbg !3875
  call void @llvm.dbg.value(metadata i32 %1, metadata !3681, metadata !DIExpression()), !dbg !3876
  call void @llvm.dbg.value(metadata i32 0, metadata !3686, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3876
  %5 = icmp eq i32 %1, 10, !dbg !3877
  br i1 %5, label %6, label %7, !dbg !3878

6:                                                ; preds = %3
  tail call void @abort() #44, !dbg !3879, !noalias !3880
  unreachable, !dbg !3879

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3686, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3876
  store i32 %1, ptr %4, align 8, !dbg !3883, !tbaa.struct !3787
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3883
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3883
  call void @llvm.dbg.value(metadata ptr %4, metadata !2781, metadata !DIExpression()), !dbg !3884
  call void @llvm.dbg.value(metadata i8 58, metadata !2782, metadata !DIExpression()), !dbg !3884
  call void @llvm.dbg.value(metadata i32 1, metadata !2783, metadata !DIExpression()), !dbg !3884
  call void @llvm.dbg.value(metadata i8 58, metadata !2784, metadata !DIExpression()), !dbg !3884
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3886
  call void @llvm.dbg.value(metadata ptr %9, metadata !2785, metadata !DIExpression()), !dbg !3884
  call void @llvm.dbg.value(metadata i32 26, metadata !2787, metadata !DIExpression()), !dbg !3884
  %10 = load i32, ptr %9, align 4, !dbg !3887, !tbaa !929
  call void @llvm.dbg.value(metadata i32 %10, metadata !2788, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3884
  %11 = or i32 %10, 67108864, !dbg !3888
  store i32 %11, ptr %9, align 4, !dbg !3888, !tbaa !929
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3889
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #42, !dbg !3890
  ret ptr %12, !dbg !3891
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #19 !dbg !3892 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3896, metadata !DIExpression()), !dbg !3900
  call void @llvm.dbg.value(metadata ptr %1, metadata !3897, metadata !DIExpression()), !dbg !3900
  call void @llvm.dbg.value(metadata ptr %2, metadata !3898, metadata !DIExpression()), !dbg !3900
  call void @llvm.dbg.value(metadata ptr %3, metadata !3899, metadata !DIExpression()), !dbg !3900
  call void @llvm.dbg.value(metadata i32 %0, metadata !3901, metadata !DIExpression()), !dbg !3911
  call void @llvm.dbg.value(metadata ptr %1, metadata !3906, metadata !DIExpression()), !dbg !3911
  call void @llvm.dbg.value(metadata ptr %2, metadata !3907, metadata !DIExpression()), !dbg !3911
  call void @llvm.dbg.value(metadata ptr %3, metadata !3908, metadata !DIExpression()), !dbg !3911
  call void @llvm.dbg.value(metadata i64 -1, metadata !3909, metadata !DIExpression()), !dbg !3911
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #42, !dbg !3913
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3910, metadata !DIExpression()), !dbg !3914
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3915, !tbaa.struct !3787
  call void @llvm.dbg.value(metadata ptr %5, metadata !2821, metadata !DIExpression()), !dbg !3916
  call void @llvm.dbg.value(metadata ptr %1, metadata !2822, metadata !DIExpression()), !dbg !3916
  call void @llvm.dbg.value(metadata ptr %2, metadata !2823, metadata !DIExpression()), !dbg !3916
  call void @llvm.dbg.value(metadata ptr %5, metadata !2821, metadata !DIExpression()), !dbg !3916
  store i32 10, ptr %5, align 8, !dbg !3918, !tbaa !2764
  %6 = icmp ne ptr %1, null, !dbg !3919
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3920
  br i1 %8, label %10, label %9, !dbg !3920

9:                                                ; preds = %4
  tail call void @abort() #44, !dbg !3921
  unreachable, !dbg !3921

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3922
  store ptr %1, ptr %11, align 8, !dbg !3923, !tbaa !2835
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3924
  store ptr %2, ptr %12, align 8, !dbg !3925, !tbaa !2838
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3926
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #42, !dbg !3927
  ret ptr %13, !dbg !3928
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #19 !dbg !3902 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3901, metadata !DIExpression()), !dbg !3929
  call void @llvm.dbg.value(metadata ptr %1, metadata !3906, metadata !DIExpression()), !dbg !3929
  call void @llvm.dbg.value(metadata ptr %2, metadata !3907, metadata !DIExpression()), !dbg !3929
  call void @llvm.dbg.value(metadata ptr %3, metadata !3908, metadata !DIExpression()), !dbg !3929
  call void @llvm.dbg.value(metadata i64 %4, metadata !3909, metadata !DIExpression()), !dbg !3929
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #42, !dbg !3930
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3910, metadata !DIExpression()), !dbg !3931
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3932, !tbaa.struct !3787
  call void @llvm.dbg.value(metadata ptr %6, metadata !2821, metadata !DIExpression()), !dbg !3933
  call void @llvm.dbg.value(metadata ptr %1, metadata !2822, metadata !DIExpression()), !dbg !3933
  call void @llvm.dbg.value(metadata ptr %2, metadata !2823, metadata !DIExpression()), !dbg !3933
  call void @llvm.dbg.value(metadata ptr %6, metadata !2821, metadata !DIExpression()), !dbg !3933
  store i32 10, ptr %6, align 8, !dbg !3935, !tbaa !2764
  %7 = icmp ne ptr %1, null, !dbg !3936
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3937
  br i1 %9, label %11, label %10, !dbg !3937

10:                                               ; preds = %5
  tail call void @abort() #44, !dbg !3938
  unreachable, !dbg !3938

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3939
  store ptr %1, ptr %12, align 8, !dbg !3940, !tbaa !2835
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3941
  store ptr %2, ptr %13, align 8, !dbg !3942, !tbaa !2838
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3943
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #42, !dbg !3944
  ret ptr %14, !dbg !3945
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #19 !dbg !3946 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3950, metadata !DIExpression()), !dbg !3953
  call void @llvm.dbg.value(metadata ptr %1, metadata !3951, metadata !DIExpression()), !dbg !3953
  call void @llvm.dbg.value(metadata ptr %2, metadata !3952, metadata !DIExpression()), !dbg !3953
  call void @llvm.dbg.value(metadata i32 0, metadata !3896, metadata !DIExpression()), !dbg !3954
  call void @llvm.dbg.value(metadata ptr %0, metadata !3897, metadata !DIExpression()), !dbg !3954
  call void @llvm.dbg.value(metadata ptr %1, metadata !3898, metadata !DIExpression()), !dbg !3954
  call void @llvm.dbg.value(metadata ptr %2, metadata !3899, metadata !DIExpression()), !dbg !3954
  call void @llvm.dbg.value(metadata i32 0, metadata !3901, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata ptr %0, metadata !3906, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata ptr %1, metadata !3907, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata ptr %2, metadata !3908, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata i64 -1, metadata !3909, metadata !DIExpression()), !dbg !3956
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #42, !dbg !3958
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3910, metadata !DIExpression()), !dbg !3959
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3960, !tbaa.struct !3787
  call void @llvm.dbg.value(metadata ptr %4, metadata !2821, metadata !DIExpression()), !dbg !3961
  call void @llvm.dbg.value(metadata ptr %0, metadata !2822, metadata !DIExpression()), !dbg !3961
  call void @llvm.dbg.value(metadata ptr %1, metadata !2823, metadata !DIExpression()), !dbg !3961
  call void @llvm.dbg.value(metadata ptr %4, metadata !2821, metadata !DIExpression()), !dbg !3961
  store i32 10, ptr %4, align 8, !dbg !3963, !tbaa !2764
  %5 = icmp ne ptr %0, null, !dbg !3964
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3965
  br i1 %7, label %9, label %8, !dbg !3965

8:                                                ; preds = %3
  tail call void @abort() #44, !dbg !3966
  unreachable, !dbg !3966

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3967
  store ptr %0, ptr %10, align 8, !dbg !3968, !tbaa !2835
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3969
  store ptr %1, ptr %11, align 8, !dbg !3970, !tbaa !2838
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3971
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #42, !dbg !3972
  ret ptr %12, !dbg !3973
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #19 !dbg !3974 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3978, metadata !DIExpression()), !dbg !3982
  call void @llvm.dbg.value(metadata ptr %1, metadata !3979, metadata !DIExpression()), !dbg !3982
  call void @llvm.dbg.value(metadata ptr %2, metadata !3980, metadata !DIExpression()), !dbg !3982
  call void @llvm.dbg.value(metadata i64 %3, metadata !3981, metadata !DIExpression()), !dbg !3982
  call void @llvm.dbg.value(metadata i32 0, metadata !3901, metadata !DIExpression()), !dbg !3983
  call void @llvm.dbg.value(metadata ptr %0, metadata !3906, metadata !DIExpression()), !dbg !3983
  call void @llvm.dbg.value(metadata ptr %1, metadata !3907, metadata !DIExpression()), !dbg !3983
  call void @llvm.dbg.value(metadata ptr %2, metadata !3908, metadata !DIExpression()), !dbg !3983
  call void @llvm.dbg.value(metadata i64 %3, metadata !3909, metadata !DIExpression()), !dbg !3983
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #42, !dbg !3985
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3910, metadata !DIExpression()), !dbg !3986
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3987, !tbaa.struct !3787
  call void @llvm.dbg.value(metadata ptr %5, metadata !2821, metadata !DIExpression()), !dbg !3988
  call void @llvm.dbg.value(metadata ptr %0, metadata !2822, metadata !DIExpression()), !dbg !3988
  call void @llvm.dbg.value(metadata ptr %1, metadata !2823, metadata !DIExpression()), !dbg !3988
  call void @llvm.dbg.value(metadata ptr %5, metadata !2821, metadata !DIExpression()), !dbg !3988
  store i32 10, ptr %5, align 8, !dbg !3990, !tbaa !2764
  %6 = icmp ne ptr %0, null, !dbg !3991
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3992
  br i1 %8, label %10, label %9, !dbg !3992

9:                                                ; preds = %4
  tail call void @abort() #44, !dbg !3993
  unreachable, !dbg !3993

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3994
  store ptr %0, ptr %11, align 8, !dbg !3995, !tbaa !2835
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3996
  store ptr %1, ptr %12, align 8, !dbg !3997, !tbaa !2838
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3998
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #42, !dbg !3999
  ret ptr %13, !dbg !4000
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #19 !dbg !4001 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4005, metadata !DIExpression()), !dbg !4008
  call void @llvm.dbg.value(metadata ptr %1, metadata !4006, metadata !DIExpression()), !dbg !4008
  call void @llvm.dbg.value(metadata i64 %2, metadata !4007, metadata !DIExpression()), !dbg !4008
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !4009
  ret ptr %4, !dbg !4010
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #19 !dbg !4011 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4015, metadata !DIExpression()), !dbg !4017
  call void @llvm.dbg.value(metadata i64 %1, metadata !4016, metadata !DIExpression()), !dbg !4017
  call void @llvm.dbg.value(metadata i32 0, metadata !4005, metadata !DIExpression()), !dbg !4018
  call void @llvm.dbg.value(metadata ptr %0, metadata !4006, metadata !DIExpression()), !dbg !4018
  call void @llvm.dbg.value(metadata i64 %1, metadata !4007, metadata !DIExpression()), !dbg !4018
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !4020
  ret ptr %3, !dbg !4021
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #19 !dbg !4022 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4026, metadata !DIExpression()), !dbg !4028
  call void @llvm.dbg.value(metadata ptr %1, metadata !4027, metadata !DIExpression()), !dbg !4028
  call void @llvm.dbg.value(metadata i32 %0, metadata !4005, metadata !DIExpression()), !dbg !4029
  call void @llvm.dbg.value(metadata ptr %1, metadata !4006, metadata !DIExpression()), !dbg !4029
  call void @llvm.dbg.value(metadata i64 -1, metadata !4007, metadata !DIExpression()), !dbg !4029
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !4031
  ret ptr %3, !dbg !4032
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #19 !dbg !4033 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4037, metadata !DIExpression()), !dbg !4038
  call void @llvm.dbg.value(metadata i32 0, metadata !4026, metadata !DIExpression()), !dbg !4039
  call void @llvm.dbg.value(metadata ptr %0, metadata !4027, metadata !DIExpression()), !dbg !4039
  call void @llvm.dbg.value(metadata i32 0, metadata !4005, metadata !DIExpression()), !dbg !4041
  call void @llvm.dbg.value(metadata ptr %0, metadata !4006, metadata !DIExpression()), !dbg !4041
  call void @llvm.dbg.value(metadata i64 -1, metadata !4007, metadata !DIExpression()), !dbg !4041
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !4043
  ret ptr %2, !dbg !4044
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #19 !dbg !4045 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4084, metadata !DIExpression()), !dbg !4090
  call void @llvm.dbg.value(metadata ptr %1, metadata !4085, metadata !DIExpression()), !dbg !4090
  call void @llvm.dbg.value(metadata ptr %2, metadata !4086, metadata !DIExpression()), !dbg !4090
  call void @llvm.dbg.value(metadata ptr %3, metadata !4087, metadata !DIExpression()), !dbg !4090
  call void @llvm.dbg.value(metadata ptr %4, metadata !4088, metadata !DIExpression()), !dbg !4090
  call void @llvm.dbg.value(metadata i64 %5, metadata !4089, metadata !DIExpression()), !dbg !4090
  %7 = icmp eq ptr %1, null, !dbg !4091
  br i1 %7, label %10, label %8, !dbg !4093

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.102, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #42, !dbg !4094
  br label %12, !dbg !4094

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.103, ptr noundef %2, ptr noundef %3) #42, !dbg !4095
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.3.105, i32 noundef 5) #42, !dbg !4096
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #42, !dbg !4096
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.106, ptr noundef %0), !dbg !4097
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.5.107, i32 noundef 5) #42, !dbg !4098
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.108) #42, !dbg !4098
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.106, ptr noundef %0), !dbg !4099
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
  ], !dbg !4100

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.7.109, i32 noundef 5) #42, !dbg !4101
  %21 = load ptr, ptr %4, align 8, !dbg !4101, !tbaa !858
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #42, !dbg !4101
  br label %147, !dbg !4103

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.8.110, i32 noundef 5) #42, !dbg !4104
  %25 = load ptr, ptr %4, align 8, !dbg !4104, !tbaa !858
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4104
  %27 = load ptr, ptr %26, align 8, !dbg !4104, !tbaa !858
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #42, !dbg !4104
  br label %147, !dbg !4105

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.9.111, i32 noundef 5) #42, !dbg !4106
  %31 = load ptr, ptr %4, align 8, !dbg !4106, !tbaa !858
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4106
  %33 = load ptr, ptr %32, align 8, !dbg !4106, !tbaa !858
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4106
  %35 = load ptr, ptr %34, align 8, !dbg !4106, !tbaa !858
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #42, !dbg !4106
  br label %147, !dbg !4107

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.10.112, i32 noundef 5) #42, !dbg !4108
  %39 = load ptr, ptr %4, align 8, !dbg !4108, !tbaa !858
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4108
  %41 = load ptr, ptr %40, align 8, !dbg !4108, !tbaa !858
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4108
  %43 = load ptr, ptr %42, align 8, !dbg !4108, !tbaa !858
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4108
  %45 = load ptr, ptr %44, align 8, !dbg !4108, !tbaa !858
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #42, !dbg !4108
  br label %147, !dbg !4109

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.11.113, i32 noundef 5) #42, !dbg !4110
  %49 = load ptr, ptr %4, align 8, !dbg !4110, !tbaa !858
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4110
  %51 = load ptr, ptr %50, align 8, !dbg !4110, !tbaa !858
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4110
  %53 = load ptr, ptr %52, align 8, !dbg !4110, !tbaa !858
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4110
  %55 = load ptr, ptr %54, align 8, !dbg !4110, !tbaa !858
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4110
  %57 = load ptr, ptr %56, align 8, !dbg !4110, !tbaa !858
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #42, !dbg !4110
  br label %147, !dbg !4111

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.12.114, i32 noundef 5) #42, !dbg !4112
  %61 = load ptr, ptr %4, align 8, !dbg !4112, !tbaa !858
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4112
  %63 = load ptr, ptr %62, align 8, !dbg !4112, !tbaa !858
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4112
  %65 = load ptr, ptr %64, align 8, !dbg !4112, !tbaa !858
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4112
  %67 = load ptr, ptr %66, align 8, !dbg !4112, !tbaa !858
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4112
  %69 = load ptr, ptr %68, align 8, !dbg !4112, !tbaa !858
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4112
  %71 = load ptr, ptr %70, align 8, !dbg !4112, !tbaa !858
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #42, !dbg !4112
  br label %147, !dbg !4113

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.13.115, i32 noundef 5) #42, !dbg !4114
  %75 = load ptr, ptr %4, align 8, !dbg !4114, !tbaa !858
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4114
  %77 = load ptr, ptr %76, align 8, !dbg !4114, !tbaa !858
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4114
  %79 = load ptr, ptr %78, align 8, !dbg !4114, !tbaa !858
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4114
  %81 = load ptr, ptr %80, align 8, !dbg !4114, !tbaa !858
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4114
  %83 = load ptr, ptr %82, align 8, !dbg !4114, !tbaa !858
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4114
  %85 = load ptr, ptr %84, align 8, !dbg !4114, !tbaa !858
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4114
  %87 = load ptr, ptr %86, align 8, !dbg !4114, !tbaa !858
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #42, !dbg !4114
  br label %147, !dbg !4115

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.14.116, i32 noundef 5) #42, !dbg !4116
  %91 = load ptr, ptr %4, align 8, !dbg !4116, !tbaa !858
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4116
  %93 = load ptr, ptr %92, align 8, !dbg !4116, !tbaa !858
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4116
  %95 = load ptr, ptr %94, align 8, !dbg !4116, !tbaa !858
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4116
  %97 = load ptr, ptr %96, align 8, !dbg !4116, !tbaa !858
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4116
  %99 = load ptr, ptr %98, align 8, !dbg !4116, !tbaa !858
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4116
  %101 = load ptr, ptr %100, align 8, !dbg !4116, !tbaa !858
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4116
  %103 = load ptr, ptr %102, align 8, !dbg !4116, !tbaa !858
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4116
  %105 = load ptr, ptr %104, align 8, !dbg !4116, !tbaa !858
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #42, !dbg !4116
  br label %147, !dbg !4117

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.15.117, i32 noundef 5) #42, !dbg !4118
  %109 = load ptr, ptr %4, align 8, !dbg !4118, !tbaa !858
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4118
  %111 = load ptr, ptr %110, align 8, !dbg !4118, !tbaa !858
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4118
  %113 = load ptr, ptr %112, align 8, !dbg !4118, !tbaa !858
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4118
  %115 = load ptr, ptr %114, align 8, !dbg !4118, !tbaa !858
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4118
  %117 = load ptr, ptr %116, align 8, !dbg !4118, !tbaa !858
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4118
  %119 = load ptr, ptr %118, align 8, !dbg !4118, !tbaa !858
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4118
  %121 = load ptr, ptr %120, align 8, !dbg !4118, !tbaa !858
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4118
  %123 = load ptr, ptr %122, align 8, !dbg !4118, !tbaa !858
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4118
  %125 = load ptr, ptr %124, align 8, !dbg !4118, !tbaa !858
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #42, !dbg !4118
  br label %147, !dbg !4119

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.16.118, i32 noundef 5) #42, !dbg !4120
  %129 = load ptr, ptr %4, align 8, !dbg !4120, !tbaa !858
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4120
  %131 = load ptr, ptr %130, align 8, !dbg !4120, !tbaa !858
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4120
  %133 = load ptr, ptr %132, align 8, !dbg !4120, !tbaa !858
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4120
  %135 = load ptr, ptr %134, align 8, !dbg !4120, !tbaa !858
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4120
  %137 = load ptr, ptr %136, align 8, !dbg !4120, !tbaa !858
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4120
  %139 = load ptr, ptr %138, align 8, !dbg !4120, !tbaa !858
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4120
  %141 = load ptr, ptr %140, align 8, !dbg !4120, !tbaa !858
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4120
  %143 = load ptr, ptr %142, align 8, !dbg !4120, !tbaa !858
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4120
  %145 = load ptr, ptr %144, align 8, !dbg !4120, !tbaa !858
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #42, !dbg !4120
  br label %147, !dbg !4121

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !4122
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #19 !dbg !4123 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4127, metadata !DIExpression()), !dbg !4133
  call void @llvm.dbg.value(metadata ptr %1, metadata !4128, metadata !DIExpression()), !dbg !4133
  call void @llvm.dbg.value(metadata ptr %2, metadata !4129, metadata !DIExpression()), !dbg !4133
  call void @llvm.dbg.value(metadata ptr %3, metadata !4130, metadata !DIExpression()), !dbg !4133
  call void @llvm.dbg.value(metadata ptr %4, metadata !4131, metadata !DIExpression()), !dbg !4133
  call void @llvm.dbg.value(metadata i64 0, metadata !4132, metadata !DIExpression()), !dbg !4133
  br label %6, !dbg !4134

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4136
  call void @llvm.dbg.value(metadata i64 %7, metadata !4132, metadata !DIExpression()), !dbg !4133
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !4137
  %9 = load ptr, ptr %8, align 8, !dbg !4137, !tbaa !858
  %10 = icmp eq ptr %9, null, !dbg !4139
  %11 = add i64 %7, 1, !dbg !4140
  call void @llvm.dbg.value(metadata i64 %11, metadata !4132, metadata !DIExpression()), !dbg !4133
  br i1 %10, label %12, label %6, !dbg !4139, !llvm.loop !4141

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !4143
  ret void, !dbg !4144
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #19 !dbg !4145 {
  %6 = alloca [10 x ptr], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !4157, metadata !DIExpression()), !dbg !4165
  call void @llvm.dbg.value(metadata ptr %1, metadata !4158, metadata !DIExpression()), !dbg !4165
  call void @llvm.dbg.value(metadata ptr %2, metadata !4159, metadata !DIExpression()), !dbg !4165
  call void @llvm.dbg.value(metadata ptr %3, metadata !4160, metadata !DIExpression()), !dbg !4165
  call void @llvm.dbg.value(metadata ptr %4, metadata !4161, metadata !DIExpression()), !dbg !4165
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #42, !dbg !4166
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4163, metadata !DIExpression()), !dbg !4167
  call void @llvm.dbg.value(metadata i64 0, metadata !4162, metadata !DIExpression()), !dbg !4165
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !4162, metadata !DIExpression()), !dbg !4165
  %10 = icmp ult i32 %9, 41, !dbg !4168
  br i1 %10, label %11, label %16, !dbg !4168

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !4168
  %13 = zext i32 %9 to i64, !dbg !4168
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !4168
  %15 = add nuw nsw i32 %9, 8, !dbg !4168
  store i32 %15, ptr %4, align 8, !dbg !4168
  br label %19, !dbg !4168

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !4168
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !4168
  store ptr %18, ptr %7, align 8, !dbg !4168
  br label %19, !dbg !4168

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !4168
  %22 = load ptr, ptr %21, align 8, !dbg !4168
  store ptr %22, ptr %6, align 16, !dbg !4171, !tbaa !858
  %23 = icmp eq ptr %22, null, !dbg !4172
  br i1 %23, label %128, label %24, !dbg !4173

24:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i64 1, metadata !4162, metadata !DIExpression()), !dbg !4165
  call void @llvm.dbg.value(metadata i64 1, metadata !4162, metadata !DIExpression()), !dbg !4165
  %25 = icmp ult i32 %20, 41, !dbg !4168
  br i1 %25, label %29, label %26, !dbg !4168

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !4168
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !4168
  store ptr %28, ptr %7, align 8, !dbg !4168
  br label %34, !dbg !4168

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !4168
  %31 = zext i32 %20 to i64, !dbg !4168
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !4168
  %33 = add nuw nsw i32 %20, 8, !dbg !4168
  store i32 %33, ptr %4, align 8, !dbg !4168
  br label %34, !dbg !4168

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !4168
  %37 = load ptr, ptr %36, align 8, !dbg !4168
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !4174
  store ptr %37, ptr %38, align 8, !dbg !4171, !tbaa !858
  %39 = icmp eq ptr %37, null, !dbg !4172
  br i1 %39, label %128, label %40, !dbg !4173

40:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i64 2, metadata !4162, metadata !DIExpression()), !dbg !4165
  call void @llvm.dbg.value(metadata i64 2, metadata !4162, metadata !DIExpression()), !dbg !4165
  %41 = icmp ult i32 %35, 41, !dbg !4168
  br i1 %41, label %45, label %42, !dbg !4168

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !4168
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !4168
  store ptr %44, ptr %7, align 8, !dbg !4168
  br label %50, !dbg !4168

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !4168
  %47 = zext i32 %35 to i64, !dbg !4168
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !4168
  %49 = add nuw nsw i32 %35, 8, !dbg !4168
  store i32 %49, ptr %4, align 8, !dbg !4168
  br label %50, !dbg !4168

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !4168
  %53 = load ptr, ptr %52, align 8, !dbg !4168
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !4174
  store ptr %53, ptr %54, align 16, !dbg !4171, !tbaa !858
  %55 = icmp eq ptr %53, null, !dbg !4172
  br i1 %55, label %128, label %56, !dbg !4173

56:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 3, metadata !4162, metadata !DIExpression()), !dbg !4165
  call void @llvm.dbg.value(metadata i64 3, metadata !4162, metadata !DIExpression()), !dbg !4165
  %57 = icmp ult i32 %51, 41, !dbg !4168
  br i1 %57, label %61, label %58, !dbg !4168

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !4168
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !4168
  store ptr %60, ptr %7, align 8, !dbg !4168
  br label %66, !dbg !4168

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !4168
  %63 = zext i32 %51 to i64, !dbg !4168
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !4168
  %65 = add nuw nsw i32 %51, 8, !dbg !4168
  store i32 %65, ptr %4, align 8, !dbg !4168
  br label %66, !dbg !4168

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !4168
  %69 = load ptr, ptr %68, align 8, !dbg !4168
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !4174
  store ptr %69, ptr %70, align 8, !dbg !4171, !tbaa !858
  %71 = icmp eq ptr %69, null, !dbg !4172
  br i1 %71, label %128, label %72, !dbg !4173

72:                                               ; preds = %66
  call void @llvm.dbg.value(metadata i64 4, metadata !4162, metadata !DIExpression()), !dbg !4165
  call void @llvm.dbg.value(metadata i64 4, metadata !4162, metadata !DIExpression()), !dbg !4165
  %73 = icmp ult i32 %67, 41, !dbg !4168
  br i1 %73, label %77, label %74, !dbg !4168

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !4168
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !4168
  store ptr %76, ptr %7, align 8, !dbg !4168
  br label %82, !dbg !4168

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !4168
  %79 = zext i32 %67 to i64, !dbg !4168
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !4168
  %81 = add nuw nsw i32 %67, 8, !dbg !4168
  store i32 %81, ptr %4, align 8, !dbg !4168
  br label %82, !dbg !4168

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !4168
  %85 = load ptr, ptr %84, align 8, !dbg !4168
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !4174
  store ptr %85, ptr %86, align 16, !dbg !4171, !tbaa !858
  %87 = icmp eq ptr %85, null, !dbg !4172
  br i1 %87, label %128, label %88, !dbg !4173

88:                                               ; preds = %82
  call void @llvm.dbg.value(metadata i64 5, metadata !4162, metadata !DIExpression()), !dbg !4165
  call void @llvm.dbg.value(metadata i64 5, metadata !4162, metadata !DIExpression()), !dbg !4165
  %89 = icmp ult i32 %83, 41, !dbg !4168
  br i1 %89, label %93, label %90, !dbg !4168

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !4168
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !4168
  store ptr %92, ptr %7, align 8, !dbg !4168
  br label %98, !dbg !4168

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !4168
  %95 = zext i32 %83 to i64, !dbg !4168
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !4168
  %97 = add nuw nsw i32 %83, 8, !dbg !4168
  store i32 %97, ptr %4, align 8, !dbg !4168
  br label %98, !dbg !4168

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !4168
  %100 = load ptr, ptr %99, align 8, !dbg !4168
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !4174
  store ptr %100, ptr %101, align 8, !dbg !4171, !tbaa !858
  %102 = icmp eq ptr %100, null, !dbg !4172
  br i1 %102, label %128, label %103, !dbg !4173

103:                                              ; preds = %98
  call void @llvm.dbg.value(metadata i64 6, metadata !4162, metadata !DIExpression()), !dbg !4165
  %104 = load ptr, ptr %7, align 8, !dbg !4168
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !4168
  store ptr %105, ptr %7, align 8, !dbg !4168
  %106 = load ptr, ptr %104, align 8, !dbg !4168
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !4174
  store ptr %106, ptr %107, align 16, !dbg !4171, !tbaa !858
  %108 = icmp eq ptr %106, null, !dbg !4172
  br i1 %108, label %128, label %109, !dbg !4173

109:                                              ; preds = %103
  call void @llvm.dbg.value(metadata i64 7, metadata !4162, metadata !DIExpression()), !dbg !4165
  %110 = load ptr, ptr %7, align 8, !dbg !4168
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !4168
  store ptr %111, ptr %7, align 8, !dbg !4168
  %112 = load ptr, ptr %110, align 8, !dbg !4168
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !4174
  store ptr %112, ptr %113, align 8, !dbg !4171, !tbaa !858
  %114 = icmp eq ptr %112, null, !dbg !4172
  br i1 %114, label %128, label %115, !dbg !4173

115:                                              ; preds = %109
  call void @llvm.dbg.value(metadata i64 8, metadata !4162, metadata !DIExpression()), !dbg !4165
  %116 = load ptr, ptr %7, align 8, !dbg !4168
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !4168
  store ptr %117, ptr %7, align 8, !dbg !4168
  %118 = load ptr, ptr %116, align 8, !dbg !4168
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !4174
  store ptr %118, ptr %119, align 16, !dbg !4171, !tbaa !858
  %120 = icmp eq ptr %118, null, !dbg !4172
  br i1 %120, label %128, label %121, !dbg !4173

121:                                              ; preds = %115
  call void @llvm.dbg.value(metadata i64 9, metadata !4162, metadata !DIExpression()), !dbg !4165
  %122 = load ptr, ptr %7, align 8, !dbg !4168
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !4168
  store ptr %123, ptr %7, align 8, !dbg !4168
  %124 = load ptr, ptr %122, align 8, !dbg !4168
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !4174
  store ptr %124, ptr %125, align 8, !dbg !4171, !tbaa !858
  %126 = icmp eq ptr %124, null, !dbg !4172
  %127 = select i1 %126, i64 9, i64 10, !dbg !4173
  br label %128, !dbg !4173

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !4175
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !4176
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #42, !dbg !4177
  ret void, !dbg !4177
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #19 !dbg !4178 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !4182, metadata !DIExpression()), !dbg !4191
  call void @llvm.dbg.value(metadata ptr %1, metadata !4183, metadata !DIExpression()), !dbg !4191
  call void @llvm.dbg.value(metadata ptr %2, metadata !4184, metadata !DIExpression()), !dbg !4191
  call void @llvm.dbg.value(metadata ptr %3, metadata !4185, metadata !DIExpression()), !dbg !4191
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #42, !dbg !4192
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4186, metadata !DIExpression()), !dbg !4193
  call void @llvm.va_start(ptr nonnull %5), !dbg !4194
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !4195
  call void @llvm.va_end(ptr nonnull %5), !dbg !4196
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #42, !dbg !4197
  ret void, !dbg !4197
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #19 !dbg !4198 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !4199, !tbaa !858
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.106, ptr noundef %1), !dbg !4199
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.17.123, i32 noundef 5) #42, !dbg !4200
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.124) #42, !dbg !4200
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.19.125, i32 noundef 5) #42, !dbg !4201
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.126, ptr noundef nonnull @.str.21.127) #42, !dbg !4201
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.22.128, i32 noundef 5) #42, !dbg !4202
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.129) #42, !dbg !4202
  ret void, !dbg !4203
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #32 !dbg !4204 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4209, metadata !DIExpression()), !dbg !4212
  call void @llvm.dbg.value(metadata i64 %1, metadata !4210, metadata !DIExpression()), !dbg !4212
  call void @llvm.dbg.value(metadata i64 %2, metadata !4211, metadata !DIExpression()), !dbg !4212
  call void @llvm.dbg.value(metadata ptr %0, metadata !4213, metadata !DIExpression()), !dbg !4218
  call void @llvm.dbg.value(metadata i64 %1, metadata !4216, metadata !DIExpression()), !dbg !4218
  call void @llvm.dbg.value(metadata i64 %2, metadata !4217, metadata !DIExpression()), !dbg !4218
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #42, !dbg !4220
  call void @llvm.dbg.value(metadata ptr %4, metadata !4221, metadata !DIExpression()), !dbg !4226
  %5 = icmp eq ptr %4, null, !dbg !4228
  br i1 %5, label %6, label %7, !dbg !4230

6:                                                ; preds = %3
  tail call void @xalloc_die() #44, !dbg !4231
  unreachable, !dbg !4231

7:                                                ; preds = %3
  ret ptr %4, !dbg !4232
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #33 !dbg !4214 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4213, metadata !DIExpression()), !dbg !4233
  call void @llvm.dbg.value(metadata i64 %1, metadata !4216, metadata !DIExpression()), !dbg !4233
  call void @llvm.dbg.value(metadata i64 %2, metadata !4217, metadata !DIExpression()), !dbg !4233
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #42, !dbg !4234
  call void @llvm.dbg.value(metadata ptr %4, metadata !4221, metadata !DIExpression()), !dbg !4235
  %5 = icmp eq ptr %4, null, !dbg !4237
  br i1 %5, label %6, label %7, !dbg !4238

6:                                                ; preds = %3
  tail call void @xalloc_die() #44, !dbg !4239
  unreachable, !dbg !4239

7:                                                ; preds = %3
  ret ptr %4, !dbg !4240
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #34 !dbg !4241 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4243, metadata !DIExpression()), !dbg !4244
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #47, !dbg !4245
  call void @llvm.dbg.value(metadata ptr %2, metadata !4221, metadata !DIExpression()), !dbg !4246
  %3 = icmp eq ptr %2, null, !dbg !4248
  br i1 %3, label %4, label %5, !dbg !4249

4:                                                ; preds = %1
  tail call void @xalloc_die() #44, !dbg !4250
  unreachable, !dbg !4250

5:                                                ; preds = %1
  ret ptr %2, !dbg !4251
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #34 !dbg !4252 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4254, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata i64 %0, metadata !4256, metadata !DIExpression()), !dbg !4259
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #47, !dbg !4261
  call void @llvm.dbg.value(metadata ptr %2, metadata !4221, metadata !DIExpression()), !dbg !4262
  %3 = icmp eq ptr %2, null, !dbg !4264
  br i1 %3, label %4, label %5, !dbg !4265

4:                                                ; preds = %1
  tail call void @xalloc_die() #44, !dbg !4266
  unreachable, !dbg !4266

5:                                                ; preds = %1
  ret ptr %2, !dbg !4267
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #34 !dbg !4268 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4272, metadata !DIExpression()), !dbg !4273
  call void @llvm.dbg.value(metadata i64 %0, metadata !4243, metadata !DIExpression()), !dbg !4274
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #47, !dbg !4276
  call void @llvm.dbg.value(metadata ptr %2, metadata !4221, metadata !DIExpression()), !dbg !4277
  %3 = icmp eq ptr %2, null, !dbg !4279
  br i1 %3, label %4, label %5, !dbg !4280

4:                                                ; preds = %1
  tail call void @xalloc_die() #44, !dbg !4281
  unreachable, !dbg !4281

5:                                                ; preds = %1
  ret ptr %2, !dbg !4282
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4283 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4287, metadata !DIExpression()), !dbg !4289
  call void @llvm.dbg.value(metadata i64 %1, metadata !4288, metadata !DIExpression()), !dbg !4289
  call void @llvm.dbg.value(metadata ptr %0, metadata !4290, metadata !DIExpression()), !dbg !4295
  call void @llvm.dbg.value(metadata i64 %1, metadata !4294, metadata !DIExpression()), !dbg !4295
  %3 = icmp eq i64 %1, 0, !dbg !4297
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4297
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #49, !dbg !4298
  call void @llvm.dbg.value(metadata ptr %5, metadata !4221, metadata !DIExpression()), !dbg !4299
  %6 = icmp eq ptr %5, null, !dbg !4301
  br i1 %6, label %7, label %8, !dbg !4302

7:                                                ; preds = %2
  tail call void @xalloc_die() #44, !dbg !4303
  unreachable, !dbg !4303

8:                                                ; preds = %2
  ret ptr %5, !dbg !4304
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !4305 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #36

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4306 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4310, metadata !DIExpression()), !dbg !4312
  call void @llvm.dbg.value(metadata i64 %1, metadata !4311, metadata !DIExpression()), !dbg !4312
  call void @llvm.dbg.value(metadata ptr %0, metadata !4313, metadata !DIExpression()), !dbg !4317
  call void @llvm.dbg.value(metadata i64 %1, metadata !4316, metadata !DIExpression()), !dbg !4317
  call void @llvm.dbg.value(metadata ptr %0, metadata !4290, metadata !DIExpression()), !dbg !4319
  call void @llvm.dbg.value(metadata i64 %1, metadata !4294, metadata !DIExpression()), !dbg !4319
  %3 = icmp eq i64 %1, 0, !dbg !4321
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4321
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #49, !dbg !4322
  call void @llvm.dbg.value(metadata ptr %5, metadata !4221, metadata !DIExpression()), !dbg !4323
  %6 = icmp eq ptr %5, null, !dbg !4325
  br i1 %6, label %7, label %8, !dbg !4326

7:                                                ; preds = %2
  tail call void @xalloc_die() #44, !dbg !4327
  unreachable, !dbg !4327

8:                                                ; preds = %2
  ret ptr %5, !dbg !4328
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #33 !dbg !4329 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4333, metadata !DIExpression()), !dbg !4336
  call void @llvm.dbg.value(metadata i64 %1, metadata !4334, metadata !DIExpression()), !dbg !4336
  call void @llvm.dbg.value(metadata i64 %2, metadata !4335, metadata !DIExpression()), !dbg !4336
  call void @llvm.dbg.value(metadata ptr %0, metadata !4337, metadata !DIExpression()), !dbg !4342
  call void @llvm.dbg.value(metadata i64 %1, metadata !4340, metadata !DIExpression()), !dbg !4342
  call void @llvm.dbg.value(metadata i64 %2, metadata !4341, metadata !DIExpression()), !dbg !4342
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #42, !dbg !4344
  call void @llvm.dbg.value(metadata ptr %4, metadata !4221, metadata !DIExpression()), !dbg !4345
  %5 = icmp eq ptr %4, null, !dbg !4347
  br i1 %5, label %6, label %7, !dbg !4348

6:                                                ; preds = %3
  tail call void @xalloc_die() #44, !dbg !4349
  unreachable, !dbg !4349

7:                                                ; preds = %3
  ret ptr %4, !dbg !4350
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #37 !dbg !4351 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4355, metadata !DIExpression()), !dbg !4357
  call void @llvm.dbg.value(metadata i64 %1, metadata !4356, metadata !DIExpression()), !dbg !4357
  call void @llvm.dbg.value(metadata ptr null, metadata !4213, metadata !DIExpression()), !dbg !4358
  call void @llvm.dbg.value(metadata i64 %0, metadata !4216, metadata !DIExpression()), !dbg !4358
  call void @llvm.dbg.value(metadata i64 %1, metadata !4217, metadata !DIExpression()), !dbg !4358
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #42, !dbg !4360
  call void @llvm.dbg.value(metadata ptr %3, metadata !4221, metadata !DIExpression()), !dbg !4361
  %4 = icmp eq ptr %3, null, !dbg !4363
  br i1 %4, label %5, label %6, !dbg !4364

5:                                                ; preds = %2
  tail call void @xalloc_die() #44, !dbg !4365
  unreachable, !dbg !4365

6:                                                ; preds = %2
  ret ptr %3, !dbg !4366
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #37 !dbg !4367 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4371, metadata !DIExpression()), !dbg !4373
  call void @llvm.dbg.value(metadata i64 %1, metadata !4372, metadata !DIExpression()), !dbg !4373
  call void @llvm.dbg.value(metadata ptr null, metadata !4333, metadata !DIExpression()), !dbg !4374
  call void @llvm.dbg.value(metadata i64 %0, metadata !4334, metadata !DIExpression()), !dbg !4374
  call void @llvm.dbg.value(metadata i64 %1, metadata !4335, metadata !DIExpression()), !dbg !4374
  call void @llvm.dbg.value(metadata ptr null, metadata !4337, metadata !DIExpression()), !dbg !4376
  call void @llvm.dbg.value(metadata i64 %0, metadata !4340, metadata !DIExpression()), !dbg !4376
  call void @llvm.dbg.value(metadata i64 %1, metadata !4341, metadata !DIExpression()), !dbg !4376
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #42, !dbg !4378
  call void @llvm.dbg.value(metadata ptr %3, metadata !4221, metadata !DIExpression()), !dbg !4379
  %4 = icmp eq ptr %3, null, !dbg !4381
  br i1 %4, label %5, label %6, !dbg !4382

5:                                                ; preds = %2
  tail call void @xalloc_die() #44, !dbg !4383
  unreachable, !dbg !4383

6:                                                ; preds = %2
  ret ptr %3, !dbg !4384
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #19 !dbg !4385 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4389, metadata !DIExpression()), !dbg !4391
  call void @llvm.dbg.value(metadata ptr %1, metadata !4390, metadata !DIExpression()), !dbg !4391
  call void @llvm.dbg.value(metadata ptr %0, metadata !791, metadata !DIExpression()), !dbg !4392
  call void @llvm.dbg.value(metadata ptr %1, metadata !792, metadata !DIExpression()), !dbg !4392
  call void @llvm.dbg.value(metadata i64 1, metadata !793, metadata !DIExpression()), !dbg !4392
  %3 = load i64, ptr %1, align 8, !dbg !4394, !tbaa !1312
  call void @llvm.dbg.value(metadata i64 %3, metadata !794, metadata !DIExpression()), !dbg !4392
  %4 = icmp eq ptr %0, null, !dbg !4395
  br i1 %4, label %5, label %8, !dbg !4397

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4398
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4401
  br label %15, !dbg !4401

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4402
  %10 = add nuw i64 %9, 1, !dbg !4402
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4402
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4402
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4402
  call void @llvm.dbg.value(metadata i64 %13, metadata !794, metadata !DIExpression()), !dbg !4392
  br i1 %12, label %14, label %15, !dbg !4405

14:                                               ; preds = %8
  tail call void @xalloc_die() #44, !dbg !4406
  unreachable, !dbg !4406

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4392
  call void @llvm.dbg.value(metadata i64 %16, metadata !794, metadata !DIExpression()), !dbg !4392
  call void @llvm.dbg.value(metadata ptr %0, metadata !4213, metadata !DIExpression()), !dbg !4407
  call void @llvm.dbg.value(metadata i64 %16, metadata !4216, metadata !DIExpression()), !dbg !4407
  call void @llvm.dbg.value(metadata i64 1, metadata !4217, metadata !DIExpression()), !dbg !4407
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #42, !dbg !4409
  call void @llvm.dbg.value(metadata ptr %17, metadata !4221, metadata !DIExpression()), !dbg !4410
  %18 = icmp eq ptr %17, null, !dbg !4412
  br i1 %18, label %19, label %20, !dbg !4413

19:                                               ; preds = %15
  tail call void @xalloc_die() #44, !dbg !4414
  unreachable, !dbg !4414

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !791, metadata !DIExpression()), !dbg !4392
  store i64 %16, ptr %1, align 8, !dbg !4415, !tbaa !1312
  ret ptr %17, !dbg !4416
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #19 !dbg !786 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !791, metadata !DIExpression()), !dbg !4417
  call void @llvm.dbg.value(metadata ptr %1, metadata !792, metadata !DIExpression()), !dbg !4417
  call void @llvm.dbg.value(metadata i64 %2, metadata !793, metadata !DIExpression()), !dbg !4417
  %4 = load i64, ptr %1, align 8, !dbg !4418, !tbaa !1312
  call void @llvm.dbg.value(metadata i64 %4, metadata !794, metadata !DIExpression()), !dbg !4417
  %5 = icmp eq ptr %0, null, !dbg !4419
  br i1 %5, label %6, label %13, !dbg !4420

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4421
  br i1 %7, label %8, label %20, !dbg !4422

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4423
  call void @llvm.dbg.value(metadata i64 %9, metadata !794, metadata !DIExpression()), !dbg !4417
  %10 = icmp ugt i64 %2, 128, !dbg !4425
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4426
  call void @llvm.dbg.value(metadata i64 %12, metadata !794, metadata !DIExpression()), !dbg !4417
  br label %20, !dbg !4427

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4428
  %15 = add nuw i64 %14, 1, !dbg !4428
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4428
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4428
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4428
  call void @llvm.dbg.value(metadata i64 %18, metadata !794, metadata !DIExpression()), !dbg !4417
  br i1 %17, label %19, label %20, !dbg !4429

19:                                               ; preds = %13
  tail call void @xalloc_die() #44, !dbg !4430
  unreachable, !dbg !4430

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4417
  call void @llvm.dbg.value(metadata i64 %21, metadata !794, metadata !DIExpression()), !dbg !4417
  call void @llvm.dbg.value(metadata ptr %0, metadata !4213, metadata !DIExpression()), !dbg !4431
  call void @llvm.dbg.value(metadata i64 %21, metadata !4216, metadata !DIExpression()), !dbg !4431
  call void @llvm.dbg.value(metadata i64 %2, metadata !4217, metadata !DIExpression()), !dbg !4431
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #42, !dbg !4433
  call void @llvm.dbg.value(metadata ptr %22, metadata !4221, metadata !DIExpression()), !dbg !4434
  %23 = icmp eq ptr %22, null, !dbg !4436
  br i1 %23, label %24, label %25, !dbg !4437

24:                                               ; preds = %20
  tail call void @xalloc_die() #44, !dbg !4438
  unreachable, !dbg !4438

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !791, metadata !DIExpression()), !dbg !4417
  store i64 %21, ptr %1, align 8, !dbg !4439, !tbaa !1312
  ret ptr %22, !dbg !4440
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #19 !dbg !798 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !806, metadata !DIExpression()), !dbg !4441
  call void @llvm.dbg.value(metadata ptr %1, metadata !807, metadata !DIExpression()), !dbg !4441
  call void @llvm.dbg.value(metadata i64 %2, metadata !808, metadata !DIExpression()), !dbg !4441
  call void @llvm.dbg.value(metadata i64 %3, metadata !809, metadata !DIExpression()), !dbg !4441
  call void @llvm.dbg.value(metadata i64 %4, metadata !810, metadata !DIExpression()), !dbg !4441
  %6 = load i64, ptr %1, align 8, !dbg !4442, !tbaa !1312
  call void @llvm.dbg.value(metadata i64 %6, metadata !811, metadata !DIExpression()), !dbg !4441
  %7 = ashr i64 %6, 1, !dbg !4443
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4443
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4443
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4443
  call void @llvm.dbg.value(metadata i64 %10, metadata !812, metadata !DIExpression()), !dbg !4441
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4445
  call void @llvm.dbg.value(metadata i64 %11, metadata !812, metadata !DIExpression()), !dbg !4441
  %12 = icmp sgt i64 %3, -1, !dbg !4446
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !4448
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !4448
  call void @llvm.dbg.value(metadata i64 %15, metadata !812, metadata !DIExpression()), !dbg !4441
  %16 = icmp slt i64 %4, 0, !dbg !4449
  br i1 %16, label %17, label %30, !dbg !4449

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !4449
  br i1 %18, label %19, label %24, !dbg !4449

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !4449
  %21 = udiv i64 9223372036854775807, %20, !dbg !4449
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !4449
  br i1 %23, label %46, label %43, !dbg !4449

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !4449
  br i1 %25, label %43, label %26, !dbg !4449

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !4449
  %28 = udiv i64 -9223372036854775808, %27, !dbg !4449
  %29 = icmp ult i64 %28, %15, !dbg !4449
  br i1 %29, label %46, label %43, !dbg !4449

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !4449
  br i1 %31, label %43, label %32, !dbg !4449

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !4449
  br i1 %33, label %34, label %40, !dbg !4449

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !4449
  br i1 %35, label %43, label %36, !dbg !4449

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !4449
  %38 = udiv i64 -9223372036854775808, %37, !dbg !4449
  %39 = icmp ult i64 %38, %4, !dbg !4449
  br i1 %39, label %46, label %43, !dbg !4449

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !4449
  br i1 %42, label %46, label %43, !dbg !4449

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !813, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4441
  %44 = mul i64 %15, %4, !dbg !4449
  call void @llvm.dbg.value(metadata i64 %44, metadata !813, metadata !DIExpression()), !dbg !4441
  %45 = icmp slt i64 %44, 128, !dbg !4449
  br i1 %45, label %46, label %51, !dbg !4449

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !814, metadata !DIExpression()), !dbg !4441
  %48 = sdiv i64 %47, %4, !dbg !4450
  call void @llvm.dbg.value(metadata i64 %48, metadata !812, metadata !DIExpression()), !dbg !4441
  %49 = srem i64 %47, %4, !dbg !4453
  %50 = sub nsw i64 %47, %49, !dbg !4454
  call void @llvm.dbg.value(metadata i64 %50, metadata !813, metadata !DIExpression()), !dbg !4441
  br label %51, !dbg !4455

51:                                               ; preds = %43, %46
  %52 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !4441
  %53 = phi i64 [ %50, %46 ], [ %44, %43 ], !dbg !4441
  call void @llvm.dbg.value(metadata i64 %53, metadata !813, metadata !DIExpression()), !dbg !4441
  call void @llvm.dbg.value(metadata i64 %52, metadata !812, metadata !DIExpression()), !dbg !4441
  %54 = icmp eq ptr %0, null, !dbg !4456
  br i1 %54, label %55, label %56, !dbg !4458

55:                                               ; preds = %51
  store i64 0, ptr %1, align 8, !dbg !4459, !tbaa !1312
  br label %56, !dbg !4460

56:                                               ; preds = %55, %51
  %57 = sub nsw i64 %52, %6, !dbg !4461
  %58 = icmp slt i64 %57, %2, !dbg !4463
  br i1 %58, label %59, label %96, !dbg !4464

59:                                               ; preds = %56
  %60 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4465
  %61 = extractvalue { i64, i1 } %60, 1, !dbg !4465
  %62 = extractvalue { i64, i1 } %60, 0, !dbg !4465
  call void @llvm.dbg.value(metadata i64 %62, metadata !812, metadata !DIExpression()), !dbg !4441
  %63 = icmp sgt i64 %62, %3
  %64 = select i1 %12, i1 %63, i1 false
  %65 = or i1 %61, %64, !dbg !4466
  br i1 %65, label %95, label %66, !dbg !4466

66:                                               ; preds = %59
  br i1 %16, label %67, label %80, !dbg !4467

67:                                               ; preds = %66
  %68 = icmp slt i64 %62, 0, !dbg !4467
  br i1 %68, label %69, label %74, !dbg !4467

69:                                               ; preds = %67
  %70 = sub i64 0, %4, !dbg !4467
  %71 = udiv i64 9223372036854775807, %70, !dbg !4467
  %72 = sub nsw i64 0, %71
  %73 = icmp slt i64 %62, %72, !dbg !4467
  br i1 %73, label %95, label %93, !dbg !4467

74:                                               ; preds = %67
  %75 = icmp eq i64 %4, -1, !dbg !4467
  br i1 %75, label %93, label %76, !dbg !4467

76:                                               ; preds = %74
  %77 = sub i64 0, %4, !dbg !4467
  %78 = udiv i64 -9223372036854775808, %77, !dbg !4467
  %79 = icmp ult i64 %78, %62, !dbg !4467
  br i1 %79, label %95, label %93, !dbg !4467

80:                                               ; preds = %66
  %81 = icmp eq i64 %4, 0, !dbg !4467
  br i1 %81, label %93, label %82, !dbg !4467

82:                                               ; preds = %80
  %83 = icmp slt i64 %62, 0, !dbg !4467
  br i1 %83, label %84, label %90, !dbg !4467

84:                                               ; preds = %82
  %85 = icmp eq i64 %62, -1, !dbg !4467
  br i1 %85, label %93, label %86, !dbg !4467

86:                                               ; preds = %84
  %87 = sub i64 0, %62, !dbg !4467
  %88 = udiv i64 -9223372036854775808, %87, !dbg !4467
  %89 = icmp ult i64 %88, %4, !dbg !4467
  br i1 %89, label %95, label %93, !dbg !4467

90:                                               ; preds = %82
  %91 = udiv i64 9223372036854775807, %4
  %92 = icmp ult i64 %91, %62, !dbg !4467
  br i1 %92, label %95, label %93, !dbg !4467

93:                                               ; preds = %69, %76, %86, %90, %80, %74, %84
  call void @llvm.dbg.value(metadata !DIArgList(i64 %62, i64 %4), metadata !813, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4441
  %94 = mul i64 %62, %4, !dbg !4467
  call void @llvm.dbg.value(metadata i64 %94, metadata !813, metadata !DIExpression()), !dbg !4441
  br label %96, !dbg !4468

95:                                               ; preds = %69, %76, %86, %90, %59
  tail call void @xalloc_die() #44, !dbg !4469
  unreachable, !dbg !4469

96:                                               ; preds = %93, %56
  %97 = phi i64 [ %62, %93 ], [ %52, %56 ], !dbg !4441
  %98 = phi i64 [ %94, %93 ], [ %53, %56 ], !dbg !4441
  call void @llvm.dbg.value(metadata i64 %98, metadata !813, metadata !DIExpression()), !dbg !4441
  call void @llvm.dbg.value(metadata i64 %97, metadata !812, metadata !DIExpression()), !dbg !4441
  call void @llvm.dbg.value(metadata ptr %0, metadata !4287, metadata !DIExpression()), !dbg !4470
  call void @llvm.dbg.value(metadata i64 %98, metadata !4288, metadata !DIExpression()), !dbg !4470
  call void @llvm.dbg.value(metadata ptr %0, metadata !4290, metadata !DIExpression()), !dbg !4472
  call void @llvm.dbg.value(metadata i64 %98, metadata !4294, metadata !DIExpression()), !dbg !4472
  %99 = icmp eq i64 %98, 0, !dbg !4474
  %100 = select i1 %99, i64 1, i64 %98, !dbg !4474
  %101 = tail call ptr @realloc(ptr noundef %0, i64 noundef %100) #49, !dbg !4475
  call void @llvm.dbg.value(metadata ptr %101, metadata !4221, metadata !DIExpression()), !dbg !4476
  %102 = icmp eq ptr %101, null, !dbg !4478
  br i1 %102, label %103, label %104, !dbg !4479

103:                                              ; preds = %96
  tail call void @xalloc_die() #44, !dbg !4480
  unreachable, !dbg !4480

104:                                              ; preds = %96
  call void @llvm.dbg.value(metadata ptr %101, metadata !806, metadata !DIExpression()), !dbg !4441
  store i64 %97, ptr %1, align 8, !dbg !4481, !tbaa !1312
  ret ptr %101, !dbg !4482
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #34 !dbg !4483 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4485, metadata !DIExpression()), !dbg !4486
  call void @llvm.dbg.value(metadata i64 %0, metadata !4487, metadata !DIExpression()), !dbg !4491
  call void @llvm.dbg.value(metadata i64 1, metadata !4490, metadata !DIExpression()), !dbg !4491
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #50, !dbg !4493
  call void @llvm.dbg.value(metadata ptr %2, metadata !4221, metadata !DIExpression()), !dbg !4494
  %3 = icmp eq ptr %2, null, !dbg !4496
  br i1 %3, label %4, label %5, !dbg !4497

4:                                                ; preds = %1
  tail call void @xalloc_die() #44, !dbg !4498
  unreachable, !dbg !4498

5:                                                ; preds = %1
  ret ptr %2, !dbg !4499
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4500 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #38

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #37 !dbg !4488 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4487, metadata !DIExpression()), !dbg !4501
  call void @llvm.dbg.value(metadata i64 %1, metadata !4490, metadata !DIExpression()), !dbg !4501
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #50, !dbg !4502
  call void @llvm.dbg.value(metadata ptr %3, metadata !4221, metadata !DIExpression()), !dbg !4503
  %4 = icmp eq ptr %3, null, !dbg !4505
  br i1 %4, label %5, label %6, !dbg !4506

5:                                                ; preds = %2
  tail call void @xalloc_die() #44, !dbg !4507
  unreachable, !dbg !4507

6:                                                ; preds = %2
  ret ptr %3, !dbg !4508
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #34 !dbg !4509 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4511, metadata !DIExpression()), !dbg !4512
  call void @llvm.dbg.value(metadata i64 %0, metadata !4513, metadata !DIExpression()), !dbg !4517
  call void @llvm.dbg.value(metadata i64 1, metadata !4516, metadata !DIExpression()), !dbg !4517
  call void @llvm.dbg.value(metadata i64 %0, metadata !4519, metadata !DIExpression()), !dbg !4523
  call void @llvm.dbg.value(metadata i64 1, metadata !4522, metadata !DIExpression()), !dbg !4523
  call void @llvm.dbg.value(metadata i64 %0, metadata !4519, metadata !DIExpression()), !dbg !4523
  call void @llvm.dbg.value(metadata i64 1, metadata !4522, metadata !DIExpression()), !dbg !4523
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #50, !dbg !4525
  call void @llvm.dbg.value(metadata ptr %2, metadata !4221, metadata !DIExpression()), !dbg !4526
  %3 = icmp eq ptr %2, null, !dbg !4528
  br i1 %3, label %4, label %5, !dbg !4529

4:                                                ; preds = %1
  tail call void @xalloc_die() #44, !dbg !4530
  unreachable, !dbg !4530

5:                                                ; preds = %1
  ret ptr %2, !dbg !4531
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #37 !dbg !4514 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4513, metadata !DIExpression()), !dbg !4532
  call void @llvm.dbg.value(metadata i64 %1, metadata !4516, metadata !DIExpression()), !dbg !4532
  call void @llvm.dbg.value(metadata i64 %0, metadata !4519, metadata !DIExpression()), !dbg !4533
  call void @llvm.dbg.value(metadata i64 %1, metadata !4522, metadata !DIExpression()), !dbg !4533
  call void @llvm.dbg.value(metadata i64 %0, metadata !4519, metadata !DIExpression()), !dbg !4533
  call void @llvm.dbg.value(metadata i64 %1, metadata !4522, metadata !DIExpression()), !dbg !4533
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #50, !dbg !4535
  call void @llvm.dbg.value(metadata ptr %3, metadata !4221, metadata !DIExpression()), !dbg !4536
  %4 = icmp eq ptr %3, null, !dbg !4538
  br i1 %4, label %5, label %6, !dbg !4539

5:                                                ; preds = %2
  tail call void @xalloc_die() #44, !dbg !4540
  unreachable, !dbg !4540

6:                                                ; preds = %2
  ret ptr %3, !dbg !4541
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4542 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4546, metadata !DIExpression()), !dbg !4548
  call void @llvm.dbg.value(metadata i64 %1, metadata !4547, metadata !DIExpression()), !dbg !4548
  call void @llvm.dbg.value(metadata i64 %1, metadata !4243, metadata !DIExpression()), !dbg !4549
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #47, !dbg !4551
  call void @llvm.dbg.value(metadata ptr %3, metadata !4221, metadata !DIExpression()), !dbg !4552
  %4 = icmp eq ptr %3, null, !dbg !4554
  br i1 %4, label %5, label %6, !dbg !4555

5:                                                ; preds = %2
  tail call void @xalloc_die() #44, !dbg !4556
  unreachable, !dbg !4556

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4557, metadata !DIExpression()), !dbg !4565
  call void @llvm.dbg.value(metadata ptr %0, metadata !4563, metadata !DIExpression()), !dbg !4565
  call void @llvm.dbg.value(metadata i64 %1, metadata !4564, metadata !DIExpression()), !dbg !4565
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #42, !dbg !4567
  ret ptr %3, !dbg !4568
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4569 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4573, metadata !DIExpression()), !dbg !4575
  call void @llvm.dbg.value(metadata i64 %1, metadata !4574, metadata !DIExpression()), !dbg !4575
  call void @llvm.dbg.value(metadata i64 %1, metadata !4254, metadata !DIExpression()), !dbg !4576
  call void @llvm.dbg.value(metadata i64 %1, metadata !4256, metadata !DIExpression()), !dbg !4578
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #47, !dbg !4580
  call void @llvm.dbg.value(metadata ptr %3, metadata !4221, metadata !DIExpression()), !dbg !4581
  %4 = icmp eq ptr %3, null, !dbg !4583
  br i1 %4, label %5, label %6, !dbg !4584

5:                                                ; preds = %2
  tail call void @xalloc_die() #44, !dbg !4585
  unreachable, !dbg !4585

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4557, metadata !DIExpression()), !dbg !4586
  call void @llvm.dbg.value(metadata ptr %0, metadata !4563, metadata !DIExpression()), !dbg !4586
  call void @llvm.dbg.value(metadata i64 %1, metadata !4564, metadata !DIExpression()), !dbg !4586
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #42, !dbg !4588
  ret ptr %3, !dbg !4589
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #19 !dbg !4590 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4594, metadata !DIExpression()), !dbg !4597
  call void @llvm.dbg.value(metadata i64 %1, metadata !4595, metadata !DIExpression()), !dbg !4597
  %3 = add nsw i64 %1, 1, !dbg !4598
  call void @llvm.dbg.value(metadata i64 %3, metadata !4254, metadata !DIExpression()), !dbg !4599
  call void @llvm.dbg.value(metadata i64 %3, metadata !4256, metadata !DIExpression()), !dbg !4601
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #47, !dbg !4603
  call void @llvm.dbg.value(metadata ptr %4, metadata !4221, metadata !DIExpression()), !dbg !4604
  %5 = icmp eq ptr %4, null, !dbg !4606
  br i1 %5, label %6, label %7, !dbg !4607

6:                                                ; preds = %2
  tail call void @xalloc_die() #44, !dbg !4608
  unreachable, !dbg !4608

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !4596, metadata !DIExpression()), !dbg !4597
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4609
  store i8 0, ptr %8, align 1, !dbg !4610, !tbaa !938
  call void @llvm.dbg.value(metadata ptr %4, metadata !4557, metadata !DIExpression()), !dbg !4611
  call void @llvm.dbg.value(metadata ptr %0, metadata !4563, metadata !DIExpression()), !dbg !4611
  call void @llvm.dbg.value(metadata i64 %1, metadata !4564, metadata !DIExpression()), !dbg !4611
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #42, !dbg !4613
  ret ptr %4, !dbg !4614
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #19 !dbg !4615 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4617, metadata !DIExpression()), !dbg !4618
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #43, !dbg !4619
  %3 = add i64 %2, 1, !dbg !4620
  call void @llvm.dbg.value(metadata ptr %0, metadata !4546, metadata !DIExpression()), !dbg !4621
  call void @llvm.dbg.value(metadata i64 %3, metadata !4547, metadata !DIExpression()), !dbg !4621
  call void @llvm.dbg.value(metadata i64 %3, metadata !4243, metadata !DIExpression()), !dbg !4623
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #47, !dbg !4625
  call void @llvm.dbg.value(metadata ptr %4, metadata !4221, metadata !DIExpression()), !dbg !4626
  %5 = icmp eq ptr %4, null, !dbg !4628
  br i1 %5, label %6, label %7, !dbg !4629

6:                                                ; preds = %1
  tail call void @xalloc_die() #44, !dbg !4630
  unreachable, !dbg !4630

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4557, metadata !DIExpression()), !dbg !4631
  call void @llvm.dbg.value(metadata ptr %0, metadata !4563, metadata !DIExpression()), !dbg !4631
  call void @llvm.dbg.value(metadata i64 %3, metadata !4564, metadata !DIExpression()), !dbg !4631
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #42, !dbg !4633
  ret ptr %4, !dbg !4634
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4635 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4640, !tbaa !929
  call void @llvm.dbg.value(metadata i32 %1, metadata !4637, metadata !DIExpression()), !dbg !4641
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.142, ptr noundef nonnull @.str.2.143, i32 noundef 5) #42, !dbg !4640
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.144, ptr noundef %2) #42, !dbg !4640
  %3 = icmp eq i32 %1, 0, !dbg !4640
  tail call void @llvm.assume(i1 %3), !dbg !4640
  tail call void @abort() #44, !dbg !4642
  unreachable, !dbg !4642
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nounwind uwtable
define dso_local i32 @xstrtoimax(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr noundef readonly %4) local_unnamed_addr #19 !dbg !4643 {
  %6 = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4649, metadata !DIExpression()), !dbg !4663
  call void @llvm.dbg.value(metadata ptr %1, metadata !4650, metadata !DIExpression()), !dbg !4663
  call void @llvm.dbg.value(metadata i32 %2, metadata !4651, metadata !DIExpression()), !dbg !4663
  call void @llvm.dbg.value(metadata ptr %3, metadata !4652, metadata !DIExpression()), !dbg !4663
  call void @llvm.dbg.value(metadata ptr %4, metadata !4653, metadata !DIExpression()), !dbg !4663
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #42, !dbg !4664
  %7 = icmp eq ptr %1, null, !dbg !4665
  %8 = select i1 %7, ptr %6, ptr %1, !dbg !4665
  call void @llvm.dbg.value(metadata ptr %8, metadata !4655, metadata !DIExpression()), !dbg !4663
  %9 = tail call ptr @__errno_location() #45, !dbg !4666
  store i32 0, ptr %9, align 4, !dbg !4667, !tbaa !929
  %10 = call i64 @strtoimax(ptr noundef %0, ptr noundef %8, i32 noundef %2) #42, !dbg !4668
  call void @llvm.dbg.value(metadata i64 %10, metadata !4656, metadata !DIExpression()), !dbg !4663
  call void @llvm.dbg.value(metadata i32 0, metadata !4657, metadata !DIExpression()), !dbg !4663
  %11 = load ptr, ptr %8, align 8, !dbg !4669, !tbaa !858
  %12 = icmp eq ptr %11, %0, !dbg !4671
  br i1 %12, label %13, label %22, !dbg !4672

13:                                               ; preds = %5
  %14 = icmp eq ptr %4, null, !dbg !4673
  br i1 %14, label %991, label %15, !dbg !4676

15:                                               ; preds = %13
  %16 = load i8, ptr %0, align 1, !dbg !4677, !tbaa !938
  %17 = icmp eq i8 %16, 0, !dbg !4677
  br i1 %17, label %991, label %18, !dbg !4678

18:                                               ; preds = %15
  %19 = sext i8 %16 to i32, !dbg !4677
  %20 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %19) #43, !dbg !4679
  %21 = icmp eq ptr %20, null, !dbg !4679
  br i1 %21, label %991, label %29, !dbg !4680

22:                                               ; preds = %5
  %23 = load i32, ptr %9, align 4, !dbg !4681, !tbaa !929
  switch i32 %23, label %991 [
    i32 0, label %25
    i32 34, label %24
  ], !dbg !4683

24:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i32 1, metadata !4657, metadata !DIExpression()), !dbg !4663
  br label %25, !dbg !4684

25:                                               ; preds = %22, %24
  %26 = phi i32 [ 1, %24 ], [ %23, %22 ], !dbg !4663
  call void @llvm.dbg.value(metadata i32 %26, metadata !4657, metadata !DIExpression()), !dbg !4663
  %27 = icmp eq ptr %4, null, !dbg !4686
  br i1 %27, label %28, label %29, !dbg !4688

28:                                               ; preds = %25
  call void @llvm.dbg.value(metadata i64 %10, metadata !4656, metadata !DIExpression()), !dbg !4663
  store i64 %10, ptr %3, align 8, !dbg !4689, !tbaa !1312
  br label %991, !dbg !4691

29:                                               ; preds = %18, %25
  %30 = phi i32 [ %26, %25 ], [ 0, %18 ]
  %31 = phi i64 [ %10, %25 ], [ 1, %18 ]
  %32 = load i8, ptr %11, align 1, !dbg !4692, !tbaa !938
  %33 = sext i8 %32 to i32, !dbg !4692
  %34 = icmp eq i8 %32, 0, !dbg !4693
  br i1 %34, label %988, label %35, !dbg !4694

35:                                               ; preds = %29
  %36 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %33) #43, !dbg !4695
  %37 = icmp eq ptr %36, null, !dbg !4695
  br i1 %37, label %38, label %40, !dbg !4697

38:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i64 %10, metadata !4656, metadata !DIExpression()), !dbg !4663
  store i64 %31, ptr %3, align 8, !dbg !4698, !tbaa !1312
  %39 = or i32 %30, 2, !dbg !4700
  br label %991, !dbg !4701

40:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i32 1024, metadata !4658, metadata !DIExpression()), !dbg !4702
  call void @llvm.dbg.value(metadata i32 1, metadata !4661, metadata !DIExpression()), !dbg !4702
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
  ], !dbg !4703

41:                                               ; preds = %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40
  %42 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef 48) #43, !dbg !4704
  %43 = icmp eq ptr %42, null, !dbg !4704
  br i1 %43, label %54, label %44, !dbg !4707

44:                                               ; preds = %41
  %45 = getelementptr inbounds i8, ptr %11, i64 1, !dbg !4708
  %46 = load i8, ptr %45, align 1, !dbg !4708, !tbaa !938
  %47 = sext i8 %46 to i32, !dbg !4708
  switch i32 %47, label %54 [
    i32 105, label %48
    i32 66, label %53
    i32 68, label %53
  ], !dbg !4709

48:                                               ; preds = %44
  %49 = getelementptr inbounds i8, ptr %11, i64 2, !dbg !4710
  %50 = load i8, ptr %49, align 1, !dbg !4710, !tbaa !938
  %51 = icmp eq i8 %50, 66, !dbg !4713
  %52 = select i1 %51, i64 3, i64 1, !dbg !4714
  br label %54, !dbg !4714

53:                                               ; preds = %44, %44
  call void @llvm.dbg.value(metadata i32 1000, metadata !4658, metadata !DIExpression()), !dbg !4702
  call void @llvm.dbg.value(metadata i32 2, metadata !4661, metadata !DIExpression()), !dbg !4702
  br label %54, !dbg !4715

54:                                               ; preds = %48, %41, %44, %53, %40
  %55 = phi i64 [ 1024, %40 ], [ 1024, %44 ], [ 1000, %53 ], [ 1024, %41 ], [ 1024, %48 ]
  %56 = phi i64 [ 1, %40 ], [ 1, %44 ], [ 2, %53 ], [ 1, %41 ], [ %52, %48 ]
  call void @llvm.dbg.value(metadata i32 poison, metadata !4661, metadata !DIExpression()), !dbg !4702
  call void @llvm.dbg.value(metadata i32 poison, metadata !4658, metadata !DIExpression()), !dbg !4702
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
  ], !dbg !4716

57:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i32 0, metadata !4717, metadata !DIExpression()), !dbg !4725
  call void @llvm.dbg.value(metadata i32 7, metadata !4724, metadata !DIExpression()), !dbg !4725
  call void @llvm.dbg.value(metadata i32 6, metadata !4724, metadata !DIExpression()), !dbg !4725
  call void @llvm.dbg.value(metadata ptr undef, metadata !4728, metadata !DIExpression()), !dbg !4735
  call void @llvm.dbg.value(metadata i32 poison, metadata !4733, metadata !DIExpression()), !dbg !4735
  %58 = icmp slt i64 %31, 0, !dbg !4737
  br i1 %58, label %865, label %871, !dbg !4737

59:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i32 0, metadata !4717, metadata !DIExpression()), !dbg !4739
  call void @llvm.dbg.value(metadata i32 8, metadata !4724, metadata !DIExpression()), !dbg !4739
  call void @llvm.dbg.value(metadata i32 7, metadata !4724, metadata !DIExpression()), !dbg !4739
  call void @llvm.dbg.value(metadata ptr undef, metadata !4728, metadata !DIExpression()), !dbg !4741
  call void @llvm.dbg.value(metadata i32 poison, metadata !4733, metadata !DIExpression()), !dbg !4741
  %60 = icmp slt i64 %31, 0, !dbg !4743
  br i1 %60, label %737, label %743, !dbg !4743

61:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i32 0, metadata !4717, metadata !DIExpression()), !dbg !4744
  call void @llvm.dbg.value(metadata i32 9, metadata !4724, metadata !DIExpression()), !dbg !4744
  call void @llvm.dbg.value(metadata i32 8, metadata !4724, metadata !DIExpression()), !dbg !4744
  call void @llvm.dbg.value(metadata ptr undef, metadata !4728, metadata !DIExpression()), !dbg !4746
  call void @llvm.dbg.value(metadata i32 poison, metadata !4733, metadata !DIExpression()), !dbg !4746
  %62 = icmp slt i64 %31, 0, !dbg !4748
  br i1 %62, label %518, label %524, !dbg !4748

63:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i32 0, metadata !4717, metadata !DIExpression()), !dbg !4749
  call void @llvm.dbg.value(metadata i32 10, metadata !4724, metadata !DIExpression()), !dbg !4749
  call void @llvm.dbg.value(metadata i32 9, metadata !4724, metadata !DIExpression()), !dbg !4749
  call void @llvm.dbg.value(metadata ptr undef, metadata !4728, metadata !DIExpression()), !dbg !4751
  call void @llvm.dbg.value(metadata i32 poison, metadata !4733, metadata !DIExpression()), !dbg !4751
  %64 = icmp slt i64 %31, 0, !dbg !4753
  br i1 %64, label %358, label %364, !dbg !4753

65:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i32 0, metadata !4717, metadata !DIExpression()), !dbg !4754
  call void @llvm.dbg.value(metadata i32 5, metadata !4724, metadata !DIExpression()), !dbg !4754
  call void @llvm.dbg.value(metadata i32 4, metadata !4724, metadata !DIExpression()), !dbg !4754
  call void @llvm.dbg.value(metadata ptr undef, metadata !4728, metadata !DIExpression()), !dbg !4756
  call void @llvm.dbg.value(metadata i32 poison, metadata !4733, metadata !DIExpression()), !dbg !4756
  %66 = icmp slt i64 %31, 0, !dbg !4758
  br i1 %66, label %278, label %284, !dbg !4758

67:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i32 0, metadata !4717, metadata !DIExpression()), !dbg !4759
  call void @llvm.dbg.value(metadata i32 6, metadata !4724, metadata !DIExpression()), !dbg !4759
  call void @llvm.dbg.value(metadata i32 5, metadata !4724, metadata !DIExpression()), !dbg !4759
  call void @llvm.dbg.value(metadata ptr undef, metadata !4728, metadata !DIExpression()), !dbg !4761
  call void @llvm.dbg.value(metadata i32 poison, metadata !4733, metadata !DIExpression()), !dbg !4761
  %68 = icmp slt i64 %31, 0, !dbg !4763
  br i1 %68, label %85, label %91, !dbg !4763

69:                                               ; preds = %54
  call void @llvm.dbg.value(metadata ptr undef, metadata !4728, metadata !DIExpression()), !dbg !4764
  call void @llvm.dbg.value(metadata i32 512, metadata !4733, metadata !DIExpression()), !dbg !4764
  %70 = icmp slt i64 %31, 0, !dbg !4766
  br i1 %70, label %71, label %73, !dbg !4766

71:                                               ; preds = %69
  %72 = icmp ult i64 %31, -18014398509481984, !dbg !4766
  br i1 %72, label %977, label %75, !dbg !4766

73:                                               ; preds = %69
  %74 = icmp ugt i64 %31, 18014398509481983, !dbg !4766
  br i1 %74, label %977, label %75, !dbg !4766

75:                                               ; preds = %71, %73
  %76 = shl nsw i64 %31, 9, !dbg !4766
  call void @llvm.dbg.value(metadata i64 %76, metadata !4734, metadata !DIExpression()), !dbg !4764
  br label %977, !dbg !4767

77:                                               ; preds = %54
  call void @llvm.dbg.value(metadata ptr undef, metadata !4728, metadata !DIExpression()), !dbg !4768
  call void @llvm.dbg.value(metadata i32 1024, metadata !4733, metadata !DIExpression()), !dbg !4768
  %78 = icmp slt i64 %31, 0, !dbg !4770
  br i1 %78, label %79, label %81, !dbg !4770

79:                                               ; preds = %77
  %80 = icmp ult i64 %31, -9007199254740992, !dbg !4770
  br i1 %80, label %977, label %83, !dbg !4770

81:                                               ; preds = %77
  %82 = icmp ugt i64 %31, 9007199254740991, !dbg !4770
  br i1 %82, label %977, label %83, !dbg !4770

83:                                               ; preds = %79, %81
  %84 = shl nsw i64 %31, 10, !dbg !4770
  call void @llvm.dbg.value(metadata i64 %84, metadata !4734, metadata !DIExpression()), !dbg !4768
  br label %977, !dbg !4771

85:                                               ; preds = %67
  %86 = icmp eq i64 %31, -1, !dbg !4763
  br i1 %86, label %94, label %87, !dbg !4763

87:                                               ; preds = %85
  %88 = sub i64 0, %31, !dbg !4763
  %89 = udiv i64 -9223372036854775808, %88, !dbg !4763
  %90 = icmp ult i64 %89, %55, !dbg !4763
  br i1 %90, label %102, label %94, !dbg !4763

91:                                               ; preds = %67
  %92 = udiv i64 9223372036854775807, %55, !dbg !4763
  %93 = icmp ult i64 %92, %31, !dbg !4763
  br i1 %93, label %97, label %94, !dbg !4763

94:                                               ; preds = %85, %87, %91
  %95 = mul i64 %31, %55, !dbg !4763
  call void @llvm.dbg.value(metadata i64 %95, metadata !4734, metadata !DIExpression()), !dbg !4761
  call void @llvm.dbg.value(metadata i32 0, metadata !4717, metadata !DIExpression()), !dbg !4759
  call void @llvm.dbg.value(metadata i32 4, metadata !4724, metadata !DIExpression()), !dbg !4759
  call void @llvm.dbg.value(metadata ptr undef, metadata !4728, metadata !DIExpression()), !dbg !4761
  call void @llvm.dbg.value(metadata i32 poison, metadata !4733, metadata !DIExpression()), !dbg !4761
  %96 = icmp slt i64 %95, 0, !dbg !4763
  br i1 %96, label %102, label %97, !dbg !4763

97:                                               ; preds = %91, %94
  %98 = phi i32 [ 0, %94 ], [ 1, %91 ]
  %99 = phi i64 [ %95, %94 ], [ 9223372036854775807, %91 ]
  %100 = udiv i64 9223372036854775807, %55, !dbg !4763
  %101 = icmp ult i64 %100, %99, !dbg !4763
  br i1 %101, label %113, label %108, !dbg !4763

102:                                              ; preds = %87, %94
  %103 = phi i32 [ 0, %94 ], [ 1, %87 ]
  %104 = phi i64 [ %95, %94 ], [ -9223372036854775808, %87 ]
  %105 = sub i64 0, %104, !dbg !4763
  %106 = udiv i64 -9223372036854775808, %105, !dbg !4763
  %107 = icmp ult i64 %106, %55, !dbg !4763
  br i1 %107, label %118, label %108, !dbg !4763

108:                                              ; preds = %97, %102
  %109 = phi i32 [ %103, %102 ], [ %98, %97 ]
  %110 = phi i64 [ %104, %102 ], [ %99, %97 ]
  %111 = mul i64 %110, %55, !dbg !4763
  call void @llvm.dbg.value(metadata i64 %111, metadata !4734, metadata !DIExpression()), !dbg !4761
  call void @llvm.dbg.value(metadata i32 %109, metadata !4717, metadata !DIExpression()), !dbg !4759
  call void @llvm.dbg.value(metadata i32 3, metadata !4724, metadata !DIExpression()), !dbg !4759
  call void @llvm.dbg.value(metadata ptr undef, metadata !4728, metadata !DIExpression()), !dbg !4761
  call void @llvm.dbg.value(metadata i32 poison, metadata !4733, metadata !DIExpression()), !dbg !4761
  %112 = icmp slt i64 %111, 0, !dbg !4763
  br i1 %112, label %118, label %113, !dbg !4763

113:                                              ; preds = %97, %108
  %114 = phi i32 [ %109, %108 ], [ 1, %97 ]
  %115 = phi i64 [ %111, %108 ], [ 9223372036854775807, %97 ]
  %116 = udiv i64 9223372036854775807, %55, !dbg !4763
  %117 = icmp ult i64 %116, %115, !dbg !4763
  br i1 %117, label %129, label %124, !dbg !4763

118:                                              ; preds = %102, %108
  %119 = phi i32 [ %109, %108 ], [ 1, %102 ]
  %120 = phi i64 [ %111, %108 ], [ -9223372036854775808, %102 ]
  %121 = sub i64 0, %120, !dbg !4763
  %122 = udiv i64 -9223372036854775808, %121, !dbg !4763
  %123 = icmp ult i64 %122, %55, !dbg !4763
  br i1 %123, label %134, label %124, !dbg !4763

124:                                              ; preds = %113, %118
  %125 = phi i32 [ %119, %118 ], [ %114, %113 ]
  %126 = phi i64 [ %120, %118 ], [ %115, %113 ]
  %127 = mul i64 %126, %55, !dbg !4763
  call void @llvm.dbg.value(metadata i64 %127, metadata !4734, metadata !DIExpression()), !dbg !4761
  call void @llvm.dbg.value(metadata i32 %125, metadata !4717, metadata !DIExpression()), !dbg !4759
  call void @llvm.dbg.value(metadata i32 2, metadata !4724, metadata !DIExpression()), !dbg !4759
  call void @llvm.dbg.value(metadata ptr undef, metadata !4728, metadata !DIExpression()), !dbg !4761
  call void @llvm.dbg.value(metadata i32 poison, metadata !4733, metadata !DIExpression()), !dbg !4761
  %128 = icmp slt i64 %127, 0, !dbg !4763
  br i1 %128, label %134, label %129, !dbg !4763

129:                                              ; preds = %113, %124
  %130 = phi i32 [ %125, %124 ], [ 1, %113 ]
  %131 = phi i64 [ %127, %124 ], [ 9223372036854775807, %113 ]
  %132 = udiv i64 9223372036854775807, %55, !dbg !4763
  %133 = icmp ult i64 %132, %131, !dbg !4763
  br i1 %133, label %145, label %140, !dbg !4763

134:                                              ; preds = %118, %124
  %135 = phi i32 [ %125, %124 ], [ 1, %118 ]
  %136 = phi i64 [ %127, %124 ], [ -9223372036854775808, %118 ]
  %137 = sub i64 0, %136, !dbg !4763
  %138 = udiv i64 -9223372036854775808, %137, !dbg !4763
  %139 = icmp ult i64 %138, %55, !dbg !4763
  br i1 %139, label %150, label %140, !dbg !4763

140:                                              ; preds = %129, %134
  %141 = phi i32 [ %135, %134 ], [ %130, %129 ]
  %142 = phi i64 [ %136, %134 ], [ %131, %129 ]
  %143 = mul i64 %142, %55, !dbg !4763
  call void @llvm.dbg.value(metadata i64 %143, metadata !4734, metadata !DIExpression()), !dbg !4761
  call void @llvm.dbg.value(metadata i32 %141, metadata !4717, metadata !DIExpression()), !dbg !4759
  call void @llvm.dbg.value(metadata i32 1, metadata !4724, metadata !DIExpression()), !dbg !4759
  call void @llvm.dbg.value(metadata ptr undef, metadata !4728, metadata !DIExpression()), !dbg !4761
  call void @llvm.dbg.value(metadata i32 poison, metadata !4733, metadata !DIExpression()), !dbg !4761
  %144 = icmp slt i64 %143, 0, !dbg !4763
  br i1 %144, label %150, label %145, !dbg !4763

145:                                              ; preds = %129, %140
  %146 = phi i32 [ %141, %140 ], [ 1, %129 ]
  %147 = phi i64 [ %143, %140 ], [ 9223372036854775807, %129 ]
  %148 = udiv i64 9223372036854775807, %55, !dbg !4763
  %149 = icmp ult i64 %148, %147, !dbg !4763
  br i1 %149, label %161, label %156, !dbg !4763

150:                                              ; preds = %134, %140
  %151 = phi i32 [ %141, %140 ], [ 1, %134 ]
  %152 = phi i64 [ %143, %140 ], [ -9223372036854775808, %134 ]
  %153 = sub i64 0, %152, !dbg !4763
  %154 = udiv i64 -9223372036854775808, %153, !dbg !4763
  %155 = icmp ult i64 %154, %55, !dbg !4763
  br i1 %155, label %166, label %156, !dbg !4763

156:                                              ; preds = %145, %150
  %157 = phi i32 [ %151, %150 ], [ %146, %145 ]
  %158 = phi i64 [ %152, %150 ], [ %147, %145 ]
  %159 = mul i64 %158, %55, !dbg !4763
  call void @llvm.dbg.value(metadata i64 %159, metadata !4734, metadata !DIExpression()), !dbg !4761
  call void @llvm.dbg.value(metadata i32 %157, metadata !4717, metadata !DIExpression()), !dbg !4759
  call void @llvm.dbg.value(metadata i32 0, metadata !4724, metadata !DIExpression()), !dbg !4759
  call void @llvm.dbg.value(metadata ptr undef, metadata !4728, metadata !DIExpression()), !dbg !4761
  call void @llvm.dbg.value(metadata i32 poison, metadata !4733, metadata !DIExpression()), !dbg !4761
  %160 = icmp slt i64 %159, 0, !dbg !4763
  br i1 %160, label %166, label %161, !dbg !4763

161:                                              ; preds = %145, %156
  %162 = phi i32 [ %157, %156 ], [ 1, %145 ]
  %163 = phi i64 [ %159, %156 ], [ 9223372036854775807, %145 ]
  %164 = udiv i64 9223372036854775807, %55, !dbg !4763
  %165 = icmp ult i64 %164, %163, !dbg !4763
  br i1 %165, label %176, label %172, !dbg !4763

166:                                              ; preds = %150, %156
  %167 = phi i32 [ %157, %156 ], [ 1, %150 ]
  %168 = phi i64 [ %159, %156 ], [ -9223372036854775808, %150 ]
  %169 = sub i64 0, %168, !dbg !4763
  %170 = udiv i64 -9223372036854775808, %169, !dbg !4763
  %171 = icmp ult i64 %170, %55, !dbg !4763
  br i1 %171, label %176, label %172, !dbg !4763

172:                                              ; preds = %166, %161
  %173 = phi i32 [ %167, %166 ], [ %162, %161 ]
  %174 = phi i64 [ %168, %166 ], [ %163, %161 ]
  %175 = mul i64 %174, %55, !dbg !4763
  call void @llvm.dbg.value(metadata i64 %175, metadata !4734, metadata !DIExpression()), !dbg !4761
  br label %176, !dbg !4772

176:                                              ; preds = %172, %166, %161
  %177 = phi i32 [ %173, %172 ], [ %162, %161 ], [ %167, %166 ]
  %178 = phi i64 [ %175, %172 ], [ 9223372036854775807, %161 ], [ -9223372036854775808, %166 ], !dbg !4761
  %179 = phi i32 [ 0, %172 ], [ 1, %161 ], [ 1, %166 ], !dbg !4761
  %180 = or i32 %179, %177, !dbg !4773
  call void @llvm.dbg.value(metadata i32 %180, metadata !4717, metadata !DIExpression()), !dbg !4759
  call void @llvm.dbg.value(metadata i32 0, metadata !4724, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4759
  br label %977, !dbg !4774

181:                                              ; preds = %54, %54
  call void @llvm.dbg.value(metadata ptr undef, metadata !4722, metadata !DIExpression()), !dbg !4775
  call void @llvm.dbg.value(metadata i32 poison, metadata !4723, metadata !DIExpression()), !dbg !4775
  call void @llvm.dbg.value(metadata i32 0, metadata !4717, metadata !DIExpression()), !dbg !4775
  call void @llvm.dbg.value(metadata i32 2, metadata !4724, metadata !DIExpression()), !dbg !4775
  call void @llvm.dbg.value(metadata ptr undef, metadata !4728, metadata !DIExpression()), !dbg !4777
  call void @llvm.dbg.value(metadata i32 poison, metadata !4733, metadata !DIExpression()), !dbg !4777
  %182 = icmp slt i64 %31, 0, !dbg !4779
  br i1 %182, label %183, label %189, !dbg !4779

183:                                              ; preds = %181
  %184 = icmp eq i64 %31, -1, !dbg !4779
  br i1 %184, label %192, label %185, !dbg !4779

185:                                              ; preds = %183
  %186 = sub i64 0, %31, !dbg !4779
  %187 = udiv i64 -9223372036854775808, %186, !dbg !4779
  %188 = icmp ult i64 %187, %55, !dbg !4779
  br i1 %188, label %200, label %192, !dbg !4779

189:                                              ; preds = %181
  %190 = udiv i64 9223372036854775807, %55, !dbg !4779
  %191 = icmp ult i64 %190, %31, !dbg !4779
  br i1 %191, label %195, label %192, !dbg !4779

192:                                              ; preds = %183, %185, %189
  %193 = mul i64 %31, %55, !dbg !4779
  call void @llvm.dbg.value(metadata i64 %193, metadata !4734, metadata !DIExpression()), !dbg !4777
  call void @llvm.dbg.value(metadata i32 0, metadata !4717, metadata !DIExpression()), !dbg !4775
  call void @llvm.dbg.value(metadata i32 1, metadata !4724, metadata !DIExpression()), !dbg !4775
  call void @llvm.dbg.value(metadata ptr undef, metadata !4728, metadata !DIExpression()), !dbg !4777
  call void @llvm.dbg.value(metadata i32 poison, metadata !4733, metadata !DIExpression()), !dbg !4777
  %194 = icmp slt i64 %193, 0, !dbg !4779
  br i1 %194, label %200, label %195, !dbg !4779

195:                                              ; preds = %189, %192
  %196 = phi i32 [ 0, %192 ], [ 1, %189 ]
  %197 = phi i64 [ %193, %192 ], [ 9223372036854775807, %189 ]
  %198 = udiv i64 9223372036854775807, %55, !dbg !4779
  %199 = icmp ult i64 %198, %197, !dbg !4779
  br i1 %199, label %211, label %206, !dbg !4779

200:                                              ; preds = %185, %192
  %201 = phi i32 [ 0, %192 ], [ 1, %185 ]
  %202 = phi i64 [ %193, %192 ], [ -9223372036854775808, %185 ]
  %203 = sub i64 0, %202, !dbg !4779
  %204 = udiv i64 -9223372036854775808, %203, !dbg !4779
  %205 = icmp ult i64 %204, %55, !dbg !4779
  br i1 %205, label %216, label %206, !dbg !4779

206:                                              ; preds = %195, %200
  %207 = phi i32 [ %201, %200 ], [ %196, %195 ]
  %208 = phi i64 [ %202, %200 ], [ %197, %195 ]
  %209 = mul i64 %208, %55, !dbg !4779
  call void @llvm.dbg.value(metadata i64 %209, metadata !4734, metadata !DIExpression()), !dbg !4777
  call void @llvm.dbg.value(metadata i32 %207, metadata !4717, metadata !DIExpression()), !dbg !4775
  call void @llvm.dbg.value(metadata i32 0, metadata !4724, metadata !DIExpression()), !dbg !4775
  call void @llvm.dbg.value(metadata ptr undef, metadata !4728, metadata !DIExpression()), !dbg !4777
  call void @llvm.dbg.value(metadata i32 poison, metadata !4733, metadata !DIExpression()), !dbg !4777
  %210 = icmp slt i64 %209, 0, !dbg !4779
  br i1 %210, label %216, label %211, !dbg !4779

211:                                              ; preds = %195, %206
  %212 = phi i32 [ %207, %206 ], [ 1, %195 ]
  %213 = phi i64 [ %209, %206 ], [ 9223372036854775807, %195 ]
  %214 = udiv i64 9223372036854775807, %55, !dbg !4779
  %215 = icmp ult i64 %214, %213, !dbg !4779
  br i1 %215, label %226, label %222, !dbg !4779

216:                                              ; preds = %200, %206
  %217 = phi i32 [ %207, %206 ], [ 1, %200 ]
  %218 = phi i64 [ %209, %206 ], [ -9223372036854775808, %200 ]
  %219 = sub i64 0, %218, !dbg !4779
  %220 = udiv i64 -9223372036854775808, %219, !dbg !4779
  %221 = icmp ult i64 %220, %55, !dbg !4779
  br i1 %221, label %226, label %222, !dbg !4779

222:                                              ; preds = %216, %211
  %223 = phi i32 [ %217, %216 ], [ %212, %211 ]
  %224 = phi i64 [ %218, %216 ], [ %213, %211 ]
  %225 = mul i64 %224, %55, !dbg !4779
  call void @llvm.dbg.value(metadata i64 %225, metadata !4734, metadata !DIExpression()), !dbg !4777
  br label %226, !dbg !4780

226:                                              ; preds = %222, %216, %211
  %227 = phi i32 [ %223, %222 ], [ %212, %211 ], [ %217, %216 ]
  %228 = phi i64 [ %225, %222 ], [ 9223372036854775807, %211 ], [ -9223372036854775808, %216 ], !dbg !4777
  %229 = phi i32 [ 0, %222 ], [ 1, %211 ], [ 1, %216 ], !dbg !4777
  %230 = or i32 %229, %227, !dbg !4781
  call void @llvm.dbg.value(metadata i32 %230, metadata !4717, metadata !DIExpression()), !dbg !4775
  call void @llvm.dbg.value(metadata i32 0, metadata !4724, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4775
  br label %977, !dbg !4774

231:                                              ; preds = %54, %54
  call void @llvm.dbg.value(metadata ptr undef, metadata !4722, metadata !DIExpression()), !dbg !4782
  call void @llvm.dbg.value(metadata i32 poison, metadata !4723, metadata !DIExpression()), !dbg !4782
  call void @llvm.dbg.value(metadata i32 0, metadata !4717, metadata !DIExpression()), !dbg !4782
  call void @llvm.dbg.value(metadata i32 0, metadata !4724, metadata !DIExpression()), !dbg !4782
  call void @llvm.dbg.value(metadata ptr undef, metadata !4728, metadata !DIExpression()), !dbg !4784
  call void @llvm.dbg.value(metadata i32 poison, metadata !4733, metadata !DIExpression()), !dbg !4784
  %232 = icmp slt i64 %31, 0, !dbg !4786
  br i1 %232, label %233, label %239, !dbg !4786

233:                                              ; preds = %231
  %234 = icmp eq i64 %31, -1, !dbg !4786
  br i1 %234, label %242, label %235, !dbg !4786

235:                                              ; preds = %233
  %236 = sub i64 0, %31, !dbg !4786
  %237 = udiv i64 -9223372036854775808, %236, !dbg !4786
  %238 = icmp ult i64 %237, %55, !dbg !4786
  br i1 %238, label %977, label %242, !dbg !4786

239:                                              ; preds = %231
  %240 = udiv i64 9223372036854775807, %55, !dbg !4786
  %241 = icmp ult i64 %240, %31, !dbg !4786
  br i1 %241, label %977, label %242, !dbg !4786

242:                                              ; preds = %239, %235, %233
  %243 = mul i64 %31, %55, !dbg !4786
  call void @llvm.dbg.value(metadata i64 %243, metadata !4734, metadata !DIExpression()), !dbg !4784
  br label %977, !dbg !4787

244:                                              ; preds = %54, %54
  call void @llvm.dbg.value(metadata ptr undef, metadata !4722, metadata !DIExpression()), !dbg !4788
  call void @llvm.dbg.value(metadata i32 poison, metadata !4723, metadata !DIExpression()), !dbg !4788
  call void @llvm.dbg.value(metadata i32 0, metadata !4717, metadata !DIExpression()), !dbg !4788
  call void @llvm.dbg.value(metadata i32 1, metadata !4724, metadata !DIExpression()), !dbg !4788
  call void @llvm.dbg.value(metadata ptr undef, metadata !4728, metadata !DIExpression()), !dbg !4790
  call void @llvm.dbg.value(metadata i32 poison, metadata !4733, metadata !DIExpression()), !dbg !4790
  %245 = icmp slt i64 %31, 0, !dbg !4792
  br i1 %245, label %246, label %252, !dbg !4792

246:                                              ; preds = %244
  %247 = icmp eq i64 %31, -1, !dbg !4792
  br i1 %247, label %255, label %248, !dbg !4792

248:                                              ; preds = %246
  %249 = sub i64 0, %31, !dbg !4792
  %250 = udiv i64 -9223372036854775808, %249, !dbg !4792
  %251 = icmp ult i64 %250, %55, !dbg !4792
  br i1 %251, label %263, label %255, !dbg !4792

252:                                              ; preds = %244
  %253 = udiv i64 9223372036854775807, %55, !dbg !4792
  %254 = icmp ult i64 %253, %31, !dbg !4792
  br i1 %254, label %258, label %255, !dbg !4792

255:                                              ; preds = %246, %248, %252
  %256 = mul i64 %31, %55, !dbg !4792
  call void @llvm.dbg.value(metadata i64 %256, metadata !4734, metadata !DIExpression()), !dbg !4790
  call void @llvm.dbg.value(metadata i32 0, metadata !4717, metadata !DIExpression()), !dbg !4788
  call void @llvm.dbg.value(metadata i32 0, metadata !4724, metadata !DIExpression()), !dbg !4788
  call void @llvm.dbg.value(metadata ptr undef, metadata !4728, metadata !DIExpression()), !dbg !4790
  call void @llvm.dbg.value(metadata i32 poison, metadata !4733, metadata !DIExpression()), !dbg !4790
  %257 = icmp slt i64 %256, 0, !dbg !4792
  br i1 %257, label %263, label %258, !dbg !4792

258:                                              ; preds = %252, %255
  %259 = phi i32 [ 0, %255 ], [ 1, %252 ]
  %260 = phi i64 [ %256, %255 ], [ 9223372036854775807, %252 ]
  %261 = udiv i64 9223372036854775807, %55, !dbg !4792
  %262 = icmp ult i64 %261, %260, !dbg !4792
  br i1 %262, label %273, label %269, !dbg !4792

263:                                              ; preds = %248, %255
  %264 = phi i32 [ 0, %255 ], [ 1, %248 ]
  %265 = phi i64 [ %256, %255 ], [ -9223372036854775808, %248 ]
  %266 = sub i64 0, %265, !dbg !4792
  %267 = udiv i64 -9223372036854775808, %266, !dbg !4792
  %268 = icmp ult i64 %267, %55, !dbg !4792
  br i1 %268, label %273, label %269, !dbg !4792

269:                                              ; preds = %263, %258
  %270 = phi i32 [ %264, %263 ], [ %259, %258 ]
  %271 = phi i64 [ %265, %263 ], [ %260, %258 ]
  %272 = mul i64 %271, %55, !dbg !4792
  call void @llvm.dbg.value(metadata i64 %272, metadata !4734, metadata !DIExpression()), !dbg !4790
  br label %273, !dbg !4793

273:                                              ; preds = %269, %263, %258
  %274 = phi i32 [ %270, %269 ], [ %259, %258 ], [ %264, %263 ]
  %275 = phi i64 [ %272, %269 ], [ 9223372036854775807, %258 ], [ -9223372036854775808, %263 ], !dbg !4790
  %276 = phi i32 [ 0, %269 ], [ 1, %258 ], [ 1, %263 ], !dbg !4790
  %277 = or i32 %276, %274, !dbg !4794
  call void @llvm.dbg.value(metadata i32 %277, metadata !4717, metadata !DIExpression()), !dbg !4788
  call void @llvm.dbg.value(metadata i32 0, metadata !4724, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4788
  br label %977, !dbg !4774

278:                                              ; preds = %65
  %279 = icmp eq i64 %31, -1, !dbg !4758
  br i1 %279, label %287, label %280, !dbg !4758

280:                                              ; preds = %278
  %281 = sub i64 0, %31, !dbg !4758
  %282 = udiv i64 -9223372036854775808, %281, !dbg !4758
  %283 = icmp ult i64 %282, %55, !dbg !4758
  br i1 %283, label %295, label %287, !dbg !4758

284:                                              ; preds = %65
  %285 = udiv i64 9223372036854775807, %55, !dbg !4758
  %286 = icmp ult i64 %285, %31, !dbg !4758
  br i1 %286, label %290, label %287, !dbg !4758

287:                                              ; preds = %278, %280, %284
  %288 = mul i64 %31, %55, !dbg !4758
  call void @llvm.dbg.value(metadata i64 %288, metadata !4734, metadata !DIExpression()), !dbg !4756
  call void @llvm.dbg.value(metadata i32 0, metadata !4717, metadata !DIExpression()), !dbg !4754
  call void @llvm.dbg.value(metadata i32 3, metadata !4724, metadata !DIExpression()), !dbg !4754
  call void @llvm.dbg.value(metadata ptr undef, metadata !4728, metadata !DIExpression()), !dbg !4756
  call void @llvm.dbg.value(metadata i32 poison, metadata !4733, metadata !DIExpression()), !dbg !4756
  %289 = icmp slt i64 %288, 0, !dbg !4758
  br i1 %289, label %295, label %290, !dbg !4758

290:                                              ; preds = %284, %287
  %291 = phi i32 [ 0, %287 ], [ 1, %284 ]
  %292 = phi i64 [ %288, %287 ], [ 9223372036854775807, %284 ]
  %293 = udiv i64 9223372036854775807, %55, !dbg !4758
  %294 = icmp ult i64 %293, %292, !dbg !4758
  br i1 %294, label %306, label %301, !dbg !4758

295:                                              ; preds = %280, %287
  %296 = phi i32 [ 0, %287 ], [ 1, %280 ]
  %297 = phi i64 [ %288, %287 ], [ -9223372036854775808, %280 ]
  %298 = sub i64 0, %297, !dbg !4758
  %299 = udiv i64 -9223372036854775808, %298, !dbg !4758
  %300 = icmp ult i64 %299, %55, !dbg !4758
  br i1 %300, label %311, label %301, !dbg !4758

301:                                              ; preds = %290, %295
  %302 = phi i32 [ %296, %295 ], [ %291, %290 ]
  %303 = phi i64 [ %297, %295 ], [ %292, %290 ]
  %304 = mul i64 %303, %55, !dbg !4758
  call void @llvm.dbg.value(metadata i64 %304, metadata !4734, metadata !DIExpression()), !dbg !4756
  call void @llvm.dbg.value(metadata i32 %302, metadata !4717, metadata !DIExpression()), !dbg !4754
  call void @llvm.dbg.value(metadata i32 2, metadata !4724, metadata !DIExpression()), !dbg !4754
  call void @llvm.dbg.value(metadata ptr undef, metadata !4728, metadata !DIExpression()), !dbg !4756
  call void @llvm.dbg.value(metadata i32 poison, metadata !4733, metadata !DIExpression()), !dbg !4756
  %305 = icmp slt i64 %304, 0, !dbg !4758
  br i1 %305, label %311, label %306, !dbg !4758

306:                                              ; preds = %290, %301
  %307 = phi i32 [ %302, %301 ], [ 1, %290 ]
  %308 = phi i64 [ %304, %301 ], [ 9223372036854775807, %290 ]
  %309 = udiv i64 9223372036854775807, %55, !dbg !4758
  %310 = icmp ult i64 %309, %308, !dbg !4758
  br i1 %310, label %322, label %317, !dbg !4758

311:                                              ; preds = %295, %301
  %312 = phi i32 [ %302, %301 ], [ 1, %295 ]
  %313 = phi i64 [ %304, %301 ], [ -9223372036854775808, %295 ]
  %314 = sub i64 0, %313, !dbg !4758
  %315 = udiv i64 -9223372036854775808, %314, !dbg !4758
  %316 = icmp ult i64 %315, %55, !dbg !4758
  br i1 %316, label %327, label %317, !dbg !4758

317:                                              ; preds = %306, %311
  %318 = phi i32 [ %312, %311 ], [ %307, %306 ]
  %319 = phi i64 [ %313, %311 ], [ %308, %306 ]
  %320 = mul i64 %319, %55, !dbg !4758
  call void @llvm.dbg.value(metadata i64 %320, metadata !4734, metadata !DIExpression()), !dbg !4756
  call void @llvm.dbg.value(metadata i32 %318, metadata !4717, metadata !DIExpression()), !dbg !4754
  call void @llvm.dbg.value(metadata i32 1, metadata !4724, metadata !DIExpression()), !dbg !4754
  call void @llvm.dbg.value(metadata ptr undef, metadata !4728, metadata !DIExpression()), !dbg !4756
  call void @llvm.dbg.value(metadata i32 poison, metadata !4733, metadata !DIExpression()), !dbg !4756
  %321 = icmp slt i64 %320, 0, !dbg !4758
  br i1 %321, label %327, label %322, !dbg !4758

322:                                              ; preds = %306, %317
  %323 = phi i32 [ %318, %317 ], [ 1, %306 ]
  %324 = phi i64 [ %320, %317 ], [ 9223372036854775807, %306 ]
  %325 = udiv i64 9223372036854775807, %55, !dbg !4758
  %326 = icmp ult i64 %325, %324, !dbg !4758
  br i1 %326, label %338, label %333, !dbg !4758

327:                                              ; preds = %311, %317
  %328 = phi i32 [ %318, %317 ], [ 1, %311 ]
  %329 = phi i64 [ %320, %317 ], [ -9223372036854775808, %311 ]
  %330 = sub i64 0, %329, !dbg !4758
  %331 = udiv i64 -9223372036854775808, %330, !dbg !4758
  %332 = icmp ult i64 %331, %55, !dbg !4758
  br i1 %332, label %343, label %333, !dbg !4758

333:                                              ; preds = %322, %327
  %334 = phi i32 [ %328, %327 ], [ %323, %322 ]
  %335 = phi i64 [ %329, %327 ], [ %324, %322 ]
  %336 = mul i64 %335, %55, !dbg !4758
  call void @llvm.dbg.value(metadata i64 %336, metadata !4734, metadata !DIExpression()), !dbg !4756
  call void @llvm.dbg.value(metadata i32 %334, metadata !4717, metadata !DIExpression()), !dbg !4754
  call void @llvm.dbg.value(metadata i32 0, metadata !4724, metadata !DIExpression()), !dbg !4754
  call void @llvm.dbg.value(metadata ptr undef, metadata !4728, metadata !DIExpression()), !dbg !4756
  call void @llvm.dbg.value(metadata i32 poison, metadata !4733, metadata !DIExpression()), !dbg !4756
  %337 = icmp slt i64 %336, 0, !dbg !4758
  br i1 %337, label %343, label %338, !dbg !4758

338:                                              ; preds = %322, %333
  %339 = phi i32 [ %334, %333 ], [ 1, %322 ]
  %340 = phi i64 [ %336, %333 ], [ 9223372036854775807, %322 ]
  %341 = udiv i64 9223372036854775807, %55, !dbg !4758
  %342 = icmp ult i64 %341, %340, !dbg !4758
  br i1 %342, label %353, label %349, !dbg !4758

343:                                              ; preds = %327, %333
  %344 = phi i32 [ %334, %333 ], [ 1, %327 ]
  %345 = phi i64 [ %336, %333 ], [ -9223372036854775808, %327 ]
  %346 = sub i64 0, %345, !dbg !4758
  %347 = udiv i64 -9223372036854775808, %346, !dbg !4758
  %348 = icmp ult i64 %347, %55, !dbg !4758
  br i1 %348, label %353, label %349, !dbg !4758

349:                                              ; preds = %343, %338
  %350 = phi i32 [ %344, %343 ], [ %339, %338 ]
  %351 = phi i64 [ %345, %343 ], [ %340, %338 ]
  %352 = mul i64 %351, %55, !dbg !4758
  call void @llvm.dbg.value(metadata i64 %352, metadata !4734, metadata !DIExpression()), !dbg !4756
  br label %353, !dbg !4795

353:                                              ; preds = %349, %343, %338
  %354 = phi i32 [ %350, %349 ], [ %339, %338 ], [ %344, %343 ]
  %355 = phi i64 [ %352, %349 ], [ 9223372036854775807, %338 ], [ -9223372036854775808, %343 ], !dbg !4756
  %356 = phi i32 [ 0, %349 ], [ 1, %338 ], [ 1, %343 ], !dbg !4756
  %357 = or i32 %356, %354, !dbg !4796
  call void @llvm.dbg.value(metadata i32 %357, metadata !4717, metadata !DIExpression()), !dbg !4754
  call void @llvm.dbg.value(metadata i32 0, metadata !4724, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4754
  br label %977, !dbg !4774

358:                                              ; preds = %63
  %359 = icmp eq i64 %31, -1, !dbg !4753
  br i1 %359, label %367, label %360, !dbg !4753

360:                                              ; preds = %358
  %361 = sub i64 0, %31, !dbg !4753
  %362 = udiv i64 -9223372036854775808, %361, !dbg !4753
  %363 = icmp ult i64 %362, %55, !dbg !4753
  br i1 %363, label %375, label %367, !dbg !4753

364:                                              ; preds = %63
  %365 = udiv i64 9223372036854775807, %55, !dbg !4753
  %366 = icmp ult i64 %365, %31, !dbg !4753
  br i1 %366, label %370, label %367, !dbg !4753

367:                                              ; preds = %358, %360, %364
  %368 = mul i64 %31, %55, !dbg !4753
  call void @llvm.dbg.value(metadata i64 %368, metadata !4734, metadata !DIExpression()), !dbg !4751
  call void @llvm.dbg.value(metadata i32 0, metadata !4717, metadata !DIExpression()), !dbg !4749
  call void @llvm.dbg.value(metadata i32 8, metadata !4724, metadata !DIExpression()), !dbg !4749
  call void @llvm.dbg.value(metadata ptr undef, metadata !4728, metadata !DIExpression()), !dbg !4751
  call void @llvm.dbg.value(metadata i32 poison, metadata !4733, metadata !DIExpression()), !dbg !4751
  %369 = icmp slt i64 %368, 0, !dbg !4753
  br i1 %369, label %375, label %370, !dbg !4753

370:                                              ; preds = %364, %367
  %371 = phi i32 [ 0, %367 ], [ 1, %364 ]
  %372 = phi i64 [ %368, %367 ], [ 9223372036854775807, %364 ]
  %373 = udiv i64 9223372036854775807, %55, !dbg !4753
  %374 = icmp ult i64 %373, %372, !dbg !4753
  br i1 %374, label %386, label %381, !dbg !4753

375:                                              ; preds = %360, %367
  %376 = phi i32 [ 0, %367 ], [ 1, %360 ]
  %377 = phi i64 [ %368, %367 ], [ -9223372036854775808, %360 ]
  %378 = sub i64 0, %377, !dbg !4753
  %379 = udiv i64 -9223372036854775808, %378, !dbg !4753
  %380 = icmp ult i64 %379, %55, !dbg !4753
  br i1 %380, label %391, label %381, !dbg !4753

381:                                              ; preds = %370, %375
  %382 = phi i32 [ %376, %375 ], [ %371, %370 ]
  %383 = phi i64 [ %377, %375 ], [ %372, %370 ]
  %384 = mul i64 %383, %55, !dbg !4753
  call void @llvm.dbg.value(metadata i64 %384, metadata !4734, metadata !DIExpression()), !dbg !4751
  call void @llvm.dbg.value(metadata i32 %382, metadata !4717, metadata !DIExpression()), !dbg !4749
  call void @llvm.dbg.value(metadata i32 7, metadata !4724, metadata !DIExpression()), !dbg !4749
  call void @llvm.dbg.value(metadata ptr undef, metadata !4728, metadata !DIExpression()), !dbg !4751
  call void @llvm.dbg.value(metadata i32 poison, metadata !4733, metadata !DIExpression()), !dbg !4751
  %385 = icmp slt i64 %384, 0, !dbg !4753
  br i1 %385, label %391, label %386, !dbg !4753

386:                                              ; preds = %370, %381
  %387 = phi i32 [ %382, %381 ], [ 1, %370 ]
  %388 = phi i64 [ %384, %381 ], [ 9223372036854775807, %370 ]
  %389 = udiv i64 9223372036854775807, %55, !dbg !4753
  %390 = icmp ult i64 %389, %388, !dbg !4753
  br i1 %390, label %402, label %397, !dbg !4753

391:                                              ; preds = %375, %381
  %392 = phi i32 [ %382, %381 ], [ 1, %375 ]
  %393 = phi i64 [ %384, %381 ], [ -9223372036854775808, %375 ]
  %394 = sub i64 0, %393, !dbg !4753
  %395 = udiv i64 -9223372036854775808, %394, !dbg !4753
  %396 = icmp ult i64 %395, %55, !dbg !4753
  br i1 %396, label %407, label %397, !dbg !4753

397:                                              ; preds = %386, %391
  %398 = phi i32 [ %392, %391 ], [ %387, %386 ]
  %399 = phi i64 [ %393, %391 ], [ %388, %386 ]
  %400 = mul i64 %399, %55, !dbg !4753
  call void @llvm.dbg.value(metadata i64 %400, metadata !4734, metadata !DIExpression()), !dbg !4751
  call void @llvm.dbg.value(metadata i32 %398, metadata !4717, metadata !DIExpression()), !dbg !4749
  call void @llvm.dbg.value(metadata i32 6, metadata !4724, metadata !DIExpression()), !dbg !4749
  call void @llvm.dbg.value(metadata ptr undef, metadata !4728, metadata !DIExpression()), !dbg !4751
  call void @llvm.dbg.value(metadata i32 poison, metadata !4733, metadata !DIExpression()), !dbg !4751
  %401 = icmp slt i64 %400, 0, !dbg !4753
  br i1 %401, label %407, label %402, !dbg !4753

402:                                              ; preds = %386, %397
  %403 = phi i32 [ %398, %397 ], [ 1, %386 ]
  %404 = phi i64 [ %400, %397 ], [ 9223372036854775807, %386 ]
  %405 = udiv i64 9223372036854775807, %55, !dbg !4753
  %406 = icmp ult i64 %405, %404, !dbg !4753
  br i1 %406, label %418, label %413, !dbg !4753

407:                                              ; preds = %391, %397
  %408 = phi i32 [ %398, %397 ], [ 1, %391 ]
  %409 = phi i64 [ %400, %397 ], [ -9223372036854775808, %391 ]
  %410 = sub i64 0, %409, !dbg !4753
  %411 = udiv i64 -9223372036854775808, %410, !dbg !4753
  %412 = icmp ult i64 %411, %55, !dbg !4753
  br i1 %412, label %423, label %413, !dbg !4753

413:                                              ; preds = %402, %407
  %414 = phi i32 [ %408, %407 ], [ %403, %402 ]
  %415 = phi i64 [ %409, %407 ], [ %404, %402 ]
  %416 = mul i64 %415, %55, !dbg !4753
  call void @llvm.dbg.value(metadata i64 %416, metadata !4734, metadata !DIExpression()), !dbg !4751
  call void @llvm.dbg.value(metadata i32 %414, metadata !4717, metadata !DIExpression()), !dbg !4749
  call void @llvm.dbg.value(metadata i32 5, metadata !4724, metadata !DIExpression()), !dbg !4749
  call void @llvm.dbg.value(metadata ptr undef, metadata !4728, metadata !DIExpression()), !dbg !4751
  call void @llvm.dbg.value(metadata i32 poison, metadata !4733, metadata !DIExpression()), !dbg !4751
  %417 = icmp slt i64 %416, 0, !dbg !4753
  br i1 %417, label %423, label %418, !dbg !4753

418:                                              ; preds = %402, %413
  %419 = phi i32 [ %414, %413 ], [ 1, %402 ]
  %420 = phi i64 [ %416, %413 ], [ 9223372036854775807, %402 ]
  %421 = udiv i64 9223372036854775807, %55, !dbg !4753
  %422 = icmp ult i64 %421, %420, !dbg !4753
  br i1 %422, label %434, label %429, !dbg !4753

423:                                              ; preds = %407, %413
  %424 = phi i32 [ %414, %413 ], [ 1, %407 ]
  %425 = phi i64 [ %416, %413 ], [ -9223372036854775808, %407 ]
  %426 = sub i64 0, %425, !dbg !4753
  %427 = udiv i64 -9223372036854775808, %426, !dbg !4753
  %428 = icmp ult i64 %427, %55, !dbg !4753
  br i1 %428, label %439, label %429, !dbg !4753

429:                                              ; preds = %418, %423
  %430 = phi i32 [ %424, %423 ], [ %419, %418 ]
  %431 = phi i64 [ %425, %423 ], [ %420, %418 ]
  %432 = mul i64 %431, %55, !dbg !4753
  call void @llvm.dbg.value(metadata i64 %432, metadata !4734, metadata !DIExpression()), !dbg !4751
  call void @llvm.dbg.value(metadata i32 %430, metadata !4717, metadata !DIExpression()), !dbg !4749
  call void @llvm.dbg.value(metadata i32 4, metadata !4724, metadata !DIExpression()), !dbg !4749
  call void @llvm.dbg.value(metadata ptr undef, metadata !4728, metadata !DIExpression()), !dbg !4751
  call void @llvm.dbg.value(metadata i32 poison, metadata !4733, metadata !DIExpression()), !dbg !4751
  %433 = icmp slt i64 %432, 0, !dbg !4753
  br i1 %433, label %439, label %434, !dbg !4753

434:                                              ; preds = %418, %429
  %435 = phi i32 [ %430, %429 ], [ 1, %418 ]
  %436 = phi i64 [ %432, %429 ], [ 9223372036854775807, %418 ]
  %437 = udiv i64 9223372036854775807, %55, !dbg !4753
  %438 = icmp ult i64 %437, %436, !dbg !4753
  br i1 %438, label %450, label %445, !dbg !4753

439:                                              ; preds = %423, %429
  %440 = phi i32 [ %430, %429 ], [ 1, %423 ]
  %441 = phi i64 [ %432, %429 ], [ -9223372036854775808, %423 ]
  %442 = sub i64 0, %441, !dbg !4753
  %443 = udiv i64 -9223372036854775808, %442, !dbg !4753
  %444 = icmp ult i64 %443, %55, !dbg !4753
  br i1 %444, label %455, label %445, !dbg !4753

445:                                              ; preds = %434, %439
  %446 = phi i32 [ %440, %439 ], [ %435, %434 ]
  %447 = phi i64 [ %441, %439 ], [ %436, %434 ]
  %448 = mul i64 %447, %55, !dbg !4753
  call void @llvm.dbg.value(metadata i64 %448, metadata !4734, metadata !DIExpression()), !dbg !4751
  call void @llvm.dbg.value(metadata i32 %446, metadata !4717, metadata !DIExpression()), !dbg !4749
  call void @llvm.dbg.value(metadata i32 3, metadata !4724, metadata !DIExpression()), !dbg !4749
  call void @llvm.dbg.value(metadata ptr undef, metadata !4728, metadata !DIExpression()), !dbg !4751
  call void @llvm.dbg.value(metadata i32 poison, metadata !4733, metadata !DIExpression()), !dbg !4751
  %449 = icmp slt i64 %448, 0, !dbg !4753
  br i1 %449, label %455, label %450, !dbg !4753

450:                                              ; preds = %434, %445
  %451 = phi i32 [ %446, %445 ], [ 1, %434 ]
  %452 = phi i64 [ %448, %445 ], [ 9223372036854775807, %434 ]
  %453 = udiv i64 9223372036854775807, %55, !dbg !4753
  %454 = icmp ult i64 %453, %452, !dbg !4753
  br i1 %454, label %466, label %461, !dbg !4753

455:                                              ; preds = %439, %445
  %456 = phi i32 [ %446, %445 ], [ 1, %439 ]
  %457 = phi i64 [ %448, %445 ], [ -9223372036854775808, %439 ]
  %458 = sub i64 0, %457, !dbg !4753
  %459 = udiv i64 -9223372036854775808, %458, !dbg !4753
  %460 = icmp ult i64 %459, %55, !dbg !4753
  br i1 %460, label %471, label %461, !dbg !4753

461:                                              ; preds = %450, %455
  %462 = phi i32 [ %456, %455 ], [ %451, %450 ]
  %463 = phi i64 [ %457, %455 ], [ %452, %450 ]
  %464 = mul i64 %463, %55, !dbg !4753
  call void @llvm.dbg.value(metadata i64 %464, metadata !4734, metadata !DIExpression()), !dbg !4751
  call void @llvm.dbg.value(metadata i32 %462, metadata !4717, metadata !DIExpression()), !dbg !4749
  call void @llvm.dbg.value(metadata i32 2, metadata !4724, metadata !DIExpression()), !dbg !4749
  call void @llvm.dbg.value(metadata ptr undef, metadata !4728, metadata !DIExpression()), !dbg !4751
  call void @llvm.dbg.value(metadata i32 poison, metadata !4733, metadata !DIExpression()), !dbg !4751
  %465 = icmp slt i64 %464, 0, !dbg !4753
  br i1 %465, label %471, label %466, !dbg !4753

466:                                              ; preds = %450, %461
  %467 = phi i32 [ %462, %461 ], [ 1, %450 ]
  %468 = phi i64 [ %464, %461 ], [ 9223372036854775807, %450 ]
  %469 = udiv i64 9223372036854775807, %55, !dbg !4753
  %470 = icmp ult i64 %469, %468, !dbg !4753
  br i1 %470, label %482, label %477, !dbg !4753

471:                                              ; preds = %455, %461
  %472 = phi i32 [ %462, %461 ], [ 1, %455 ]
  %473 = phi i64 [ %464, %461 ], [ -9223372036854775808, %455 ]
  %474 = sub i64 0, %473, !dbg !4753
  %475 = udiv i64 -9223372036854775808, %474, !dbg !4753
  %476 = icmp ult i64 %475, %55, !dbg !4753
  br i1 %476, label %487, label %477, !dbg !4753

477:                                              ; preds = %466, %471
  %478 = phi i32 [ %472, %471 ], [ %467, %466 ]
  %479 = phi i64 [ %473, %471 ], [ %468, %466 ]
  %480 = mul i64 %479, %55, !dbg !4753
  call void @llvm.dbg.value(metadata i64 %480, metadata !4734, metadata !DIExpression()), !dbg !4751
  call void @llvm.dbg.value(metadata i32 %478, metadata !4717, metadata !DIExpression()), !dbg !4749
  call void @llvm.dbg.value(metadata i32 1, metadata !4724, metadata !DIExpression()), !dbg !4749
  call void @llvm.dbg.value(metadata ptr undef, metadata !4728, metadata !DIExpression()), !dbg !4751
  call void @llvm.dbg.value(metadata i32 poison, metadata !4733, metadata !DIExpression()), !dbg !4751
  %481 = icmp slt i64 %480, 0, !dbg !4753
  br i1 %481, label %487, label %482, !dbg !4753

482:                                              ; preds = %466, %477
  %483 = phi i32 [ %478, %477 ], [ 1, %466 ]
  %484 = phi i64 [ %480, %477 ], [ 9223372036854775807, %466 ]
  %485 = udiv i64 9223372036854775807, %55, !dbg !4753
  %486 = icmp ult i64 %485, %484, !dbg !4753
  br i1 %486, label %498, label %493, !dbg !4753

487:                                              ; preds = %471, %477
  %488 = phi i32 [ %478, %477 ], [ 1, %471 ]
  %489 = phi i64 [ %480, %477 ], [ -9223372036854775808, %471 ]
  %490 = sub i64 0, %489, !dbg !4753
  %491 = udiv i64 -9223372036854775808, %490, !dbg !4753
  %492 = icmp ult i64 %491, %55, !dbg !4753
  br i1 %492, label %503, label %493, !dbg !4753

493:                                              ; preds = %482, %487
  %494 = phi i32 [ %488, %487 ], [ %483, %482 ]
  %495 = phi i64 [ %489, %487 ], [ %484, %482 ]
  %496 = mul i64 %495, %55, !dbg !4753
  call void @llvm.dbg.value(metadata i64 %496, metadata !4734, metadata !DIExpression()), !dbg !4751
  call void @llvm.dbg.value(metadata i32 %494, metadata !4717, metadata !DIExpression()), !dbg !4749
  call void @llvm.dbg.value(metadata i32 0, metadata !4724, metadata !DIExpression()), !dbg !4749
  call void @llvm.dbg.value(metadata ptr undef, metadata !4728, metadata !DIExpression()), !dbg !4751
  call void @llvm.dbg.value(metadata i32 poison, metadata !4733, metadata !DIExpression()), !dbg !4751
  %497 = icmp slt i64 %496, 0, !dbg !4753
  br i1 %497, label %503, label %498, !dbg !4753

498:                                              ; preds = %482, %493
  %499 = phi i32 [ %494, %493 ], [ 1, %482 ]
  %500 = phi i64 [ %496, %493 ], [ 9223372036854775807, %482 ]
  %501 = udiv i64 9223372036854775807, %55, !dbg !4753
  %502 = icmp ult i64 %501, %500, !dbg !4753
  br i1 %502, label %513, label %509, !dbg !4753

503:                                              ; preds = %487, %493
  %504 = phi i32 [ %494, %493 ], [ 1, %487 ]
  %505 = phi i64 [ %496, %493 ], [ -9223372036854775808, %487 ]
  %506 = sub i64 0, %505, !dbg !4753
  %507 = udiv i64 -9223372036854775808, %506, !dbg !4753
  %508 = icmp ult i64 %507, %55, !dbg !4753
  br i1 %508, label %513, label %509, !dbg !4753

509:                                              ; preds = %503, %498
  %510 = phi i32 [ %504, %503 ], [ %499, %498 ]
  %511 = phi i64 [ %505, %503 ], [ %500, %498 ]
  %512 = mul i64 %511, %55, !dbg !4753
  call void @llvm.dbg.value(metadata i64 %512, metadata !4734, metadata !DIExpression()), !dbg !4751
  br label %513, !dbg !4797

513:                                              ; preds = %509, %503, %498
  %514 = phi i32 [ %510, %509 ], [ %499, %498 ], [ %504, %503 ]
  %515 = phi i64 [ %512, %509 ], [ 9223372036854775807, %498 ], [ -9223372036854775808, %503 ], !dbg !4751
  %516 = phi i32 [ 0, %509 ], [ 1, %498 ], [ 1, %503 ], !dbg !4751
  %517 = or i32 %516, %514, !dbg !4798
  call void @llvm.dbg.value(metadata i32 %517, metadata !4717, metadata !DIExpression()), !dbg !4749
  call void @llvm.dbg.value(metadata i32 0, metadata !4724, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4749
  br label %977, !dbg !4774

518:                                              ; preds = %61
  %519 = icmp eq i64 %31, -1, !dbg !4748
  br i1 %519, label %527, label %520, !dbg !4748

520:                                              ; preds = %518
  %521 = sub i64 0, %31, !dbg !4748
  %522 = udiv i64 -9223372036854775808, %521, !dbg !4748
  %523 = icmp ult i64 %522, %55, !dbg !4748
  br i1 %523, label %535, label %527, !dbg !4748

524:                                              ; preds = %61
  %525 = udiv i64 9223372036854775807, %55, !dbg !4748
  %526 = icmp ult i64 %525, %31, !dbg !4748
  br i1 %526, label %530, label %527, !dbg !4748

527:                                              ; preds = %518, %520, %524
  %528 = mul i64 %31, %55, !dbg !4748
  call void @llvm.dbg.value(metadata i64 %528, metadata !4734, metadata !DIExpression()), !dbg !4746
  call void @llvm.dbg.value(metadata i32 0, metadata !4717, metadata !DIExpression()), !dbg !4744
  call void @llvm.dbg.value(metadata i32 7, metadata !4724, metadata !DIExpression()), !dbg !4744
  call void @llvm.dbg.value(metadata ptr undef, metadata !4728, metadata !DIExpression()), !dbg !4746
  call void @llvm.dbg.value(metadata i32 poison, metadata !4733, metadata !DIExpression()), !dbg !4746
  %529 = icmp slt i64 %528, 0, !dbg !4748
  br i1 %529, label %535, label %530, !dbg !4748

530:                                              ; preds = %524, %527
  %531 = phi i32 [ 0, %527 ], [ 1, %524 ]
  %532 = phi i64 [ %528, %527 ], [ 9223372036854775807, %524 ]
  %533 = udiv i64 9223372036854775807, %55, !dbg !4748
  %534 = icmp ult i64 %533, %532, !dbg !4748
  br i1 %534, label %546, label %541, !dbg !4748

535:                                              ; preds = %520, %527
  %536 = phi i32 [ 0, %527 ], [ 1, %520 ]
  %537 = phi i64 [ %528, %527 ], [ -9223372036854775808, %520 ]
  %538 = sub i64 0, %537, !dbg !4748
  %539 = udiv i64 -9223372036854775808, %538, !dbg !4748
  %540 = icmp ult i64 %539, %55, !dbg !4748
  br i1 %540, label %551, label %541, !dbg !4748

541:                                              ; preds = %530, %535
  %542 = phi i32 [ %536, %535 ], [ %531, %530 ]
  %543 = phi i64 [ %537, %535 ], [ %532, %530 ]
  %544 = mul i64 %543, %55, !dbg !4748
  call void @llvm.dbg.value(metadata i64 %544, metadata !4734, metadata !DIExpression()), !dbg !4746
  call void @llvm.dbg.value(metadata i32 %542, metadata !4717, metadata !DIExpression()), !dbg !4744
  call void @llvm.dbg.value(metadata i32 6, metadata !4724, metadata !DIExpression()), !dbg !4744
  call void @llvm.dbg.value(metadata ptr undef, metadata !4728, metadata !DIExpression()), !dbg !4746
  call void @llvm.dbg.value(metadata i32 poison, metadata !4733, metadata !DIExpression()), !dbg !4746
  %545 = icmp slt i64 %544, 0, !dbg !4748
  br i1 %545, label %551, label %546, !dbg !4748

546:                                              ; preds = %530, %541
  %547 = phi i32 [ %542, %541 ], [ 1, %530 ]
  %548 = phi i64 [ %544, %541 ], [ 9223372036854775807, %530 ]
  %549 = udiv i64 9223372036854775807, %55, !dbg !4748
  %550 = icmp ult i64 %549, %548, !dbg !4748
  br i1 %550, label %562, label %557, !dbg !4748

551:                                              ; preds = %535, %541
  %552 = phi i32 [ %542, %541 ], [ 1, %535 ]
  %553 = phi i64 [ %544, %541 ], [ -9223372036854775808, %535 ]
  %554 = sub i64 0, %553, !dbg !4748
  %555 = udiv i64 -9223372036854775808, %554, !dbg !4748
  %556 = icmp ult i64 %555, %55, !dbg !4748
  br i1 %556, label %567, label %557, !dbg !4748

557:                                              ; preds = %546, %551
  %558 = phi i32 [ %552, %551 ], [ %547, %546 ]
  %559 = phi i64 [ %553, %551 ], [ %548, %546 ]
  %560 = mul i64 %559, %55, !dbg !4748
  call void @llvm.dbg.value(metadata i64 %560, metadata !4734, metadata !DIExpression()), !dbg !4746
  call void @llvm.dbg.value(metadata i32 %558, metadata !4717, metadata !DIExpression()), !dbg !4744
  call void @llvm.dbg.value(metadata i32 5, metadata !4724, metadata !DIExpression()), !dbg !4744
  call void @llvm.dbg.value(metadata ptr undef, metadata !4728, metadata !DIExpression()), !dbg !4746
  call void @llvm.dbg.value(metadata i32 poison, metadata !4733, metadata !DIExpression()), !dbg !4746
  %561 = icmp slt i64 %560, 0, !dbg !4748
  br i1 %561, label %567, label %562, !dbg !4748

562:                                              ; preds = %546, %557
  %563 = phi i32 [ %558, %557 ], [ 1, %546 ]
  %564 = phi i64 [ %560, %557 ], [ 9223372036854775807, %546 ]
  %565 = udiv i64 9223372036854775807, %55, !dbg !4748
  %566 = icmp ult i64 %565, %564, !dbg !4748
  br i1 %566, label %578, label %573, !dbg !4748

567:                                              ; preds = %551, %557
  %568 = phi i32 [ %558, %557 ], [ 1, %551 ]
  %569 = phi i64 [ %560, %557 ], [ -9223372036854775808, %551 ]
  %570 = sub i64 0, %569, !dbg !4748
  %571 = udiv i64 -9223372036854775808, %570, !dbg !4748
  %572 = icmp ult i64 %571, %55, !dbg !4748
  br i1 %572, label %583, label %573, !dbg !4748

573:                                              ; preds = %562, %567
  %574 = phi i32 [ %568, %567 ], [ %563, %562 ]
  %575 = phi i64 [ %569, %567 ], [ %564, %562 ]
  %576 = mul i64 %575, %55, !dbg !4748
  call void @llvm.dbg.value(metadata i64 %576, metadata !4734, metadata !DIExpression()), !dbg !4746
  call void @llvm.dbg.value(metadata i32 %574, metadata !4717, metadata !DIExpression()), !dbg !4744
  call void @llvm.dbg.value(metadata i32 4, metadata !4724, metadata !DIExpression()), !dbg !4744
  call void @llvm.dbg.value(metadata ptr undef, metadata !4728, metadata !DIExpression()), !dbg !4746
  call void @llvm.dbg.value(metadata i32 poison, metadata !4733, metadata !DIExpression()), !dbg !4746
  %577 = icmp slt i64 %576, 0, !dbg !4748
  br i1 %577, label %583, label %578, !dbg !4748

578:                                              ; preds = %562, %573
  %579 = phi i32 [ %574, %573 ], [ 1, %562 ]
  %580 = phi i64 [ %576, %573 ], [ 9223372036854775807, %562 ]
  %581 = udiv i64 9223372036854775807, %55, !dbg !4748
  %582 = icmp ult i64 %581, %580, !dbg !4748
  br i1 %582, label %594, label %589, !dbg !4748

583:                                              ; preds = %567, %573
  %584 = phi i32 [ %574, %573 ], [ 1, %567 ]
  %585 = phi i64 [ %576, %573 ], [ -9223372036854775808, %567 ]
  %586 = sub i64 0, %585, !dbg !4748
  %587 = udiv i64 -9223372036854775808, %586, !dbg !4748
  %588 = icmp ult i64 %587, %55, !dbg !4748
  br i1 %588, label %599, label %589, !dbg !4748

589:                                              ; preds = %578, %583
  %590 = phi i32 [ %584, %583 ], [ %579, %578 ]
  %591 = phi i64 [ %585, %583 ], [ %580, %578 ]
  %592 = mul i64 %591, %55, !dbg !4748
  call void @llvm.dbg.value(metadata i64 %592, metadata !4734, metadata !DIExpression()), !dbg !4746
  call void @llvm.dbg.value(metadata i32 %590, metadata !4717, metadata !DIExpression()), !dbg !4744
  call void @llvm.dbg.value(metadata i32 3, metadata !4724, metadata !DIExpression()), !dbg !4744
  call void @llvm.dbg.value(metadata ptr undef, metadata !4728, metadata !DIExpression()), !dbg !4746
  call void @llvm.dbg.value(metadata i32 poison, metadata !4733, metadata !DIExpression()), !dbg !4746
  %593 = icmp slt i64 %592, 0, !dbg !4748
  br i1 %593, label %599, label %594, !dbg !4748

594:                                              ; preds = %578, %589
  %595 = phi i32 [ %590, %589 ], [ 1, %578 ]
  %596 = phi i64 [ %592, %589 ], [ 9223372036854775807, %578 ]
  %597 = udiv i64 9223372036854775807, %55, !dbg !4748
  %598 = icmp ult i64 %597, %596, !dbg !4748
  br i1 %598, label %610, label %605, !dbg !4748

599:                                              ; preds = %583, %589
  %600 = phi i32 [ %590, %589 ], [ 1, %583 ]
  %601 = phi i64 [ %592, %589 ], [ -9223372036854775808, %583 ]
  %602 = sub i64 0, %601, !dbg !4748
  %603 = udiv i64 -9223372036854775808, %602, !dbg !4748
  %604 = icmp ult i64 %603, %55, !dbg !4748
  br i1 %604, label %615, label %605, !dbg !4748

605:                                              ; preds = %594, %599
  %606 = phi i32 [ %600, %599 ], [ %595, %594 ]
  %607 = phi i64 [ %601, %599 ], [ %596, %594 ]
  %608 = mul i64 %607, %55, !dbg !4748
  call void @llvm.dbg.value(metadata i64 %608, metadata !4734, metadata !DIExpression()), !dbg !4746
  call void @llvm.dbg.value(metadata i32 %606, metadata !4717, metadata !DIExpression()), !dbg !4744
  call void @llvm.dbg.value(metadata i32 2, metadata !4724, metadata !DIExpression()), !dbg !4744
  call void @llvm.dbg.value(metadata ptr undef, metadata !4728, metadata !DIExpression()), !dbg !4746
  call void @llvm.dbg.value(metadata i32 poison, metadata !4733, metadata !DIExpression()), !dbg !4746
  %609 = icmp slt i64 %608, 0, !dbg !4748
  br i1 %609, label %615, label %610, !dbg !4748

610:                                              ; preds = %594, %605
  %611 = phi i32 [ %606, %605 ], [ 1, %594 ]
  %612 = phi i64 [ %608, %605 ], [ 9223372036854775807, %594 ]
  %613 = udiv i64 9223372036854775807, %55, !dbg !4748
  %614 = icmp ult i64 %613, %612, !dbg !4748
  br i1 %614, label %626, label %621, !dbg !4748

615:                                              ; preds = %599, %605
  %616 = phi i32 [ %606, %605 ], [ 1, %599 ]
  %617 = phi i64 [ %608, %605 ], [ -9223372036854775808, %599 ]
  %618 = sub i64 0, %617, !dbg !4748
  %619 = udiv i64 -9223372036854775808, %618, !dbg !4748
  %620 = icmp ult i64 %619, %55, !dbg !4748
  br i1 %620, label %631, label %621, !dbg !4748

621:                                              ; preds = %610, %615
  %622 = phi i32 [ %616, %615 ], [ %611, %610 ]
  %623 = phi i64 [ %617, %615 ], [ %612, %610 ]
  %624 = mul i64 %623, %55, !dbg !4748
  call void @llvm.dbg.value(metadata i64 %624, metadata !4734, metadata !DIExpression()), !dbg !4746
  call void @llvm.dbg.value(metadata i32 %622, metadata !4717, metadata !DIExpression()), !dbg !4744
  call void @llvm.dbg.value(metadata i32 1, metadata !4724, metadata !DIExpression()), !dbg !4744
  call void @llvm.dbg.value(metadata ptr undef, metadata !4728, metadata !DIExpression()), !dbg !4746
  call void @llvm.dbg.value(metadata i32 poison, metadata !4733, metadata !DIExpression()), !dbg !4746
  %625 = icmp slt i64 %624, 0, !dbg !4748
  br i1 %625, label %631, label %626, !dbg !4748

626:                                              ; preds = %610, %621
  %627 = phi i32 [ %622, %621 ], [ 1, %610 ]
  %628 = phi i64 [ %624, %621 ], [ 9223372036854775807, %610 ]
  %629 = udiv i64 9223372036854775807, %55, !dbg !4748
  %630 = icmp ult i64 %629, %628, !dbg !4748
  br i1 %630, label %642, label %637, !dbg !4748

631:                                              ; preds = %615, %621
  %632 = phi i32 [ %622, %621 ], [ 1, %615 ]
  %633 = phi i64 [ %624, %621 ], [ -9223372036854775808, %615 ]
  %634 = sub i64 0, %633, !dbg !4748
  %635 = udiv i64 -9223372036854775808, %634, !dbg !4748
  %636 = icmp ult i64 %635, %55, !dbg !4748
  br i1 %636, label %647, label %637, !dbg !4748

637:                                              ; preds = %626, %631
  %638 = phi i32 [ %632, %631 ], [ %627, %626 ]
  %639 = phi i64 [ %633, %631 ], [ %628, %626 ]
  %640 = mul i64 %639, %55, !dbg !4748
  call void @llvm.dbg.value(metadata i64 %640, metadata !4734, metadata !DIExpression()), !dbg !4746
  call void @llvm.dbg.value(metadata i32 %638, metadata !4717, metadata !DIExpression()), !dbg !4744
  call void @llvm.dbg.value(metadata i32 0, metadata !4724, metadata !DIExpression()), !dbg !4744
  call void @llvm.dbg.value(metadata ptr undef, metadata !4728, metadata !DIExpression()), !dbg !4746
  call void @llvm.dbg.value(metadata i32 poison, metadata !4733, metadata !DIExpression()), !dbg !4746
  %641 = icmp slt i64 %640, 0, !dbg !4748
  br i1 %641, label %647, label %642, !dbg !4748

642:                                              ; preds = %626, %637
  %643 = phi i32 [ %638, %637 ], [ 1, %626 ]
  %644 = phi i64 [ %640, %637 ], [ 9223372036854775807, %626 ]
  %645 = udiv i64 9223372036854775807, %55, !dbg !4748
  %646 = icmp ult i64 %645, %644, !dbg !4748
  br i1 %646, label %657, label %653, !dbg !4748

647:                                              ; preds = %631, %637
  %648 = phi i32 [ %638, %637 ], [ 1, %631 ]
  %649 = phi i64 [ %640, %637 ], [ -9223372036854775808, %631 ]
  %650 = sub i64 0, %649, !dbg !4748
  %651 = udiv i64 -9223372036854775808, %650, !dbg !4748
  %652 = icmp ult i64 %651, %55, !dbg !4748
  br i1 %652, label %657, label %653, !dbg !4748

653:                                              ; preds = %647, %642
  %654 = phi i32 [ %648, %647 ], [ %643, %642 ]
  %655 = phi i64 [ %649, %647 ], [ %644, %642 ]
  %656 = mul i64 %655, %55, !dbg !4748
  call void @llvm.dbg.value(metadata i64 %656, metadata !4734, metadata !DIExpression()), !dbg !4746
  br label %657, !dbg !4799

657:                                              ; preds = %653, %647, %642
  %658 = phi i32 [ %654, %653 ], [ %643, %642 ], [ %648, %647 ]
  %659 = phi i64 [ %656, %653 ], [ 9223372036854775807, %642 ], [ -9223372036854775808, %647 ], !dbg !4746
  %660 = phi i32 [ 0, %653 ], [ 1, %642 ], [ 1, %647 ], !dbg !4746
  %661 = or i32 %660, %658, !dbg !4800
  call void @llvm.dbg.value(metadata i32 %661, metadata !4717, metadata !DIExpression()), !dbg !4744
  call void @llvm.dbg.value(metadata i32 0, metadata !4724, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4744
  br label %977, !dbg !4774

662:                                              ; preds = %54, %54
  call void @llvm.dbg.value(metadata ptr undef, metadata !4722, metadata !DIExpression()), !dbg !4801
  call void @llvm.dbg.value(metadata i32 poison, metadata !4723, metadata !DIExpression()), !dbg !4801
  call void @llvm.dbg.value(metadata i32 0, metadata !4717, metadata !DIExpression()), !dbg !4801
  call void @llvm.dbg.value(metadata i32 3, metadata !4724, metadata !DIExpression()), !dbg !4801
  call void @llvm.dbg.value(metadata ptr undef, metadata !4728, metadata !DIExpression()), !dbg !4803
  call void @llvm.dbg.value(metadata i32 poison, metadata !4733, metadata !DIExpression()), !dbg !4803
  %663 = icmp slt i64 %31, 0, !dbg !4805
  br i1 %663, label %664, label %670, !dbg !4805

664:                                              ; preds = %662
  %665 = icmp eq i64 %31, -1, !dbg !4805
  br i1 %665, label %673, label %666, !dbg !4805

666:                                              ; preds = %664
  %667 = sub i64 0, %31, !dbg !4805
  %668 = udiv i64 -9223372036854775808, %667, !dbg !4805
  %669 = icmp ult i64 %668, %55, !dbg !4805
  br i1 %669, label %681, label %673, !dbg !4805

670:                                              ; preds = %662
  %671 = udiv i64 9223372036854775807, %55, !dbg !4805
  %672 = icmp ult i64 %671, %31, !dbg !4805
  br i1 %672, label %676, label %673, !dbg !4805

673:                                              ; preds = %664, %666, %670
  %674 = mul i64 %31, %55, !dbg !4805
  call void @llvm.dbg.value(metadata i64 %674, metadata !4734, metadata !DIExpression()), !dbg !4803
  call void @llvm.dbg.value(metadata i32 0, metadata !4717, metadata !DIExpression()), !dbg !4801
  call void @llvm.dbg.value(metadata i32 2, metadata !4724, metadata !DIExpression()), !dbg !4801
  call void @llvm.dbg.value(metadata ptr undef, metadata !4728, metadata !DIExpression()), !dbg !4803
  call void @llvm.dbg.value(metadata i32 poison, metadata !4733, metadata !DIExpression()), !dbg !4803
  %675 = icmp slt i64 %674, 0, !dbg !4805
  br i1 %675, label %681, label %676, !dbg !4805

676:                                              ; preds = %670, %673
  %677 = phi i32 [ 0, %673 ], [ 1, %670 ]
  %678 = phi i64 [ %674, %673 ], [ 9223372036854775807, %670 ]
  %679 = udiv i64 9223372036854775807, %55, !dbg !4805
  %680 = icmp ult i64 %679, %678, !dbg !4805
  br i1 %680, label %692, label %687, !dbg !4805

681:                                              ; preds = %666, %673
  %682 = phi i32 [ 0, %673 ], [ 1, %666 ]
  %683 = phi i64 [ %674, %673 ], [ -9223372036854775808, %666 ]
  %684 = sub i64 0, %683, !dbg !4805
  %685 = udiv i64 -9223372036854775808, %684, !dbg !4805
  %686 = icmp ult i64 %685, %55, !dbg !4805
  br i1 %686, label %697, label %687, !dbg !4805

687:                                              ; preds = %676, %681
  %688 = phi i32 [ %682, %681 ], [ %677, %676 ]
  %689 = phi i64 [ %683, %681 ], [ %678, %676 ]
  %690 = mul i64 %689, %55, !dbg !4805
  call void @llvm.dbg.value(metadata i64 %690, metadata !4734, metadata !DIExpression()), !dbg !4803
  call void @llvm.dbg.value(metadata i32 %688, metadata !4717, metadata !DIExpression()), !dbg !4801
  call void @llvm.dbg.value(metadata i32 1, metadata !4724, metadata !DIExpression()), !dbg !4801
  call void @llvm.dbg.value(metadata ptr undef, metadata !4728, metadata !DIExpression()), !dbg !4803
  call void @llvm.dbg.value(metadata i32 poison, metadata !4733, metadata !DIExpression()), !dbg !4803
  %691 = icmp slt i64 %690, 0, !dbg !4805
  br i1 %691, label %697, label %692, !dbg !4805

692:                                              ; preds = %676, %687
  %693 = phi i32 [ %688, %687 ], [ 1, %676 ]
  %694 = phi i64 [ %690, %687 ], [ 9223372036854775807, %676 ]
  %695 = udiv i64 9223372036854775807, %55, !dbg !4805
  %696 = icmp ult i64 %695, %694, !dbg !4805
  br i1 %696, label %708, label %703, !dbg !4805

697:                                              ; preds = %681, %687
  %698 = phi i32 [ %688, %687 ], [ 1, %681 ]
  %699 = phi i64 [ %690, %687 ], [ -9223372036854775808, %681 ]
  %700 = sub i64 0, %699, !dbg !4805
  %701 = udiv i64 -9223372036854775808, %700, !dbg !4805
  %702 = icmp ult i64 %701, %55, !dbg !4805
  br i1 %702, label %713, label %703, !dbg !4805

703:                                              ; preds = %692, %697
  %704 = phi i32 [ %698, %697 ], [ %693, %692 ]
  %705 = phi i64 [ %699, %697 ], [ %694, %692 ]
  %706 = mul i64 %705, %55, !dbg !4805
  call void @llvm.dbg.value(metadata i64 %706, metadata !4734, metadata !DIExpression()), !dbg !4803
  call void @llvm.dbg.value(metadata i32 %704, metadata !4717, metadata !DIExpression()), !dbg !4801
  call void @llvm.dbg.value(metadata i32 0, metadata !4724, metadata !DIExpression()), !dbg !4801
  call void @llvm.dbg.value(metadata ptr undef, metadata !4728, metadata !DIExpression()), !dbg !4803
  call void @llvm.dbg.value(metadata i32 poison, metadata !4733, metadata !DIExpression()), !dbg !4803
  %707 = icmp slt i64 %706, 0, !dbg !4805
  br i1 %707, label %713, label %708, !dbg !4805

708:                                              ; preds = %692, %703
  %709 = phi i32 [ %704, %703 ], [ 1, %692 ]
  %710 = phi i64 [ %706, %703 ], [ 9223372036854775807, %692 ]
  %711 = udiv i64 9223372036854775807, %55, !dbg !4805
  %712 = icmp ult i64 %711, %710, !dbg !4805
  br i1 %712, label %723, label %719, !dbg !4805

713:                                              ; preds = %697, %703
  %714 = phi i32 [ %704, %703 ], [ 1, %697 ]
  %715 = phi i64 [ %706, %703 ], [ -9223372036854775808, %697 ]
  %716 = sub i64 0, %715, !dbg !4805
  %717 = udiv i64 -9223372036854775808, %716, !dbg !4805
  %718 = icmp ult i64 %717, %55, !dbg !4805
  br i1 %718, label %723, label %719, !dbg !4805

719:                                              ; preds = %713, %708
  %720 = phi i32 [ %714, %713 ], [ %709, %708 ]
  %721 = phi i64 [ %715, %713 ], [ %710, %708 ]
  %722 = mul i64 %721, %55, !dbg !4805
  call void @llvm.dbg.value(metadata i64 %722, metadata !4734, metadata !DIExpression()), !dbg !4803
  br label %723, !dbg !4806

723:                                              ; preds = %719, %713, %708
  %724 = phi i32 [ %720, %719 ], [ %709, %708 ], [ %714, %713 ]
  %725 = phi i64 [ %722, %719 ], [ 9223372036854775807, %708 ], [ -9223372036854775808, %713 ], !dbg !4803
  %726 = phi i32 [ 0, %719 ], [ 1, %708 ], [ 1, %713 ], !dbg !4803
  %727 = or i32 %726, %724, !dbg !4807
  call void @llvm.dbg.value(metadata i32 %727, metadata !4717, metadata !DIExpression()), !dbg !4801
  call void @llvm.dbg.value(metadata i32 0, metadata !4724, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4801
  br label %977, !dbg !4774

728:                                              ; preds = %54
  call void @llvm.dbg.value(metadata ptr undef, metadata !4728, metadata !DIExpression()), !dbg !4808
  call void @llvm.dbg.value(metadata i32 2, metadata !4733, metadata !DIExpression()), !dbg !4808
  %729 = icmp slt i64 %31, 0, !dbg !4810
  br i1 %729, label %730, label %733, !dbg !4810

730:                                              ; preds = %728
  %731 = add i64 %31, -1, !dbg !4810
  %732 = icmp ult i64 %731, -4611686018427387905, !dbg !4810
  br i1 %732, label %977, label %735, !dbg !4810

733:                                              ; preds = %728
  %734 = icmp ugt i64 %31, 4611686018427387903, !dbg !4810
  br i1 %734, label %977, label %735, !dbg !4810

735:                                              ; preds = %730, %733
  %736 = shl nsw i64 %31, 1, !dbg !4810
  call void @llvm.dbg.value(metadata i64 %736, metadata !4734, metadata !DIExpression()), !dbg !4808
  br label %977, !dbg !4811

737:                                              ; preds = %59
  %738 = icmp eq i64 %31, -1, !dbg !4743
  br i1 %738, label %746, label %739, !dbg !4743

739:                                              ; preds = %737
  %740 = sub i64 0, %31, !dbg !4743
  %741 = udiv i64 -9223372036854775808, %740, !dbg !4743
  %742 = icmp ult i64 %741, %55, !dbg !4743
  br i1 %742, label %754, label %746, !dbg !4743

743:                                              ; preds = %59
  %744 = udiv i64 9223372036854775807, %55, !dbg !4743
  %745 = icmp ult i64 %744, %31, !dbg !4743
  br i1 %745, label %749, label %746, !dbg !4743

746:                                              ; preds = %737, %739, %743
  %747 = mul i64 %31, %55, !dbg !4743
  call void @llvm.dbg.value(metadata i64 %747, metadata !4734, metadata !DIExpression()), !dbg !4741
  call void @llvm.dbg.value(metadata i32 0, metadata !4717, metadata !DIExpression()), !dbg !4739
  call void @llvm.dbg.value(metadata i32 6, metadata !4724, metadata !DIExpression()), !dbg !4739
  call void @llvm.dbg.value(metadata ptr undef, metadata !4728, metadata !DIExpression()), !dbg !4741
  call void @llvm.dbg.value(metadata i32 poison, metadata !4733, metadata !DIExpression()), !dbg !4741
  %748 = icmp slt i64 %747, 0, !dbg !4743
  br i1 %748, label %754, label %749, !dbg !4743

749:                                              ; preds = %743, %746
  %750 = phi i32 [ 0, %746 ], [ 1, %743 ]
  %751 = phi i64 [ %747, %746 ], [ 9223372036854775807, %743 ]
  %752 = udiv i64 9223372036854775807, %55, !dbg !4743
  %753 = icmp ult i64 %752, %751, !dbg !4743
  br i1 %753, label %765, label %760, !dbg !4743

754:                                              ; preds = %739, %746
  %755 = phi i32 [ 0, %746 ], [ 1, %739 ]
  %756 = phi i64 [ %747, %746 ], [ -9223372036854775808, %739 ]
  %757 = sub i64 0, %756, !dbg !4743
  %758 = udiv i64 -9223372036854775808, %757, !dbg !4743
  %759 = icmp ult i64 %758, %55, !dbg !4743
  br i1 %759, label %770, label %760, !dbg !4743

760:                                              ; preds = %749, %754
  %761 = phi i32 [ %755, %754 ], [ %750, %749 ]
  %762 = phi i64 [ %756, %754 ], [ %751, %749 ]
  %763 = mul i64 %762, %55, !dbg !4743
  call void @llvm.dbg.value(metadata i64 %763, metadata !4734, metadata !DIExpression()), !dbg !4741
  call void @llvm.dbg.value(metadata i32 %761, metadata !4717, metadata !DIExpression()), !dbg !4739
  call void @llvm.dbg.value(metadata i32 5, metadata !4724, metadata !DIExpression()), !dbg !4739
  call void @llvm.dbg.value(metadata ptr undef, metadata !4728, metadata !DIExpression()), !dbg !4741
  call void @llvm.dbg.value(metadata i32 poison, metadata !4733, metadata !DIExpression()), !dbg !4741
  %764 = icmp slt i64 %763, 0, !dbg !4743
  br i1 %764, label %770, label %765, !dbg !4743

765:                                              ; preds = %749, %760
  %766 = phi i32 [ %761, %760 ], [ 1, %749 ]
  %767 = phi i64 [ %763, %760 ], [ 9223372036854775807, %749 ]
  %768 = udiv i64 9223372036854775807, %55, !dbg !4743
  %769 = icmp ult i64 %768, %767, !dbg !4743
  br i1 %769, label %781, label %776, !dbg !4743

770:                                              ; preds = %754, %760
  %771 = phi i32 [ %761, %760 ], [ 1, %754 ]
  %772 = phi i64 [ %763, %760 ], [ -9223372036854775808, %754 ]
  %773 = sub i64 0, %772, !dbg !4743
  %774 = udiv i64 -9223372036854775808, %773, !dbg !4743
  %775 = icmp ult i64 %774, %55, !dbg !4743
  br i1 %775, label %786, label %776, !dbg !4743

776:                                              ; preds = %765, %770
  %777 = phi i32 [ %771, %770 ], [ %766, %765 ]
  %778 = phi i64 [ %772, %770 ], [ %767, %765 ]
  %779 = mul i64 %778, %55, !dbg !4743
  call void @llvm.dbg.value(metadata i64 %779, metadata !4734, metadata !DIExpression()), !dbg !4741
  call void @llvm.dbg.value(metadata i32 %777, metadata !4717, metadata !DIExpression()), !dbg !4739
  call void @llvm.dbg.value(metadata i32 4, metadata !4724, metadata !DIExpression()), !dbg !4739
  call void @llvm.dbg.value(metadata ptr undef, metadata !4728, metadata !DIExpression()), !dbg !4741
  call void @llvm.dbg.value(metadata i32 poison, metadata !4733, metadata !DIExpression()), !dbg !4741
  %780 = icmp slt i64 %779, 0, !dbg !4743
  br i1 %780, label %786, label %781, !dbg !4743

781:                                              ; preds = %765, %776
  %782 = phi i32 [ %777, %776 ], [ 1, %765 ]
  %783 = phi i64 [ %779, %776 ], [ 9223372036854775807, %765 ]
  %784 = udiv i64 9223372036854775807, %55, !dbg !4743
  %785 = icmp ult i64 %784, %783, !dbg !4743
  br i1 %785, label %797, label %792, !dbg !4743

786:                                              ; preds = %770, %776
  %787 = phi i32 [ %777, %776 ], [ 1, %770 ]
  %788 = phi i64 [ %779, %776 ], [ -9223372036854775808, %770 ]
  %789 = sub i64 0, %788, !dbg !4743
  %790 = udiv i64 -9223372036854775808, %789, !dbg !4743
  %791 = icmp ult i64 %790, %55, !dbg !4743
  br i1 %791, label %802, label %792, !dbg !4743

792:                                              ; preds = %781, %786
  %793 = phi i32 [ %787, %786 ], [ %782, %781 ]
  %794 = phi i64 [ %788, %786 ], [ %783, %781 ]
  %795 = mul i64 %794, %55, !dbg !4743
  call void @llvm.dbg.value(metadata i64 %795, metadata !4734, metadata !DIExpression()), !dbg !4741
  call void @llvm.dbg.value(metadata i32 %793, metadata !4717, metadata !DIExpression()), !dbg !4739
  call void @llvm.dbg.value(metadata i32 3, metadata !4724, metadata !DIExpression()), !dbg !4739
  call void @llvm.dbg.value(metadata ptr undef, metadata !4728, metadata !DIExpression()), !dbg !4741
  call void @llvm.dbg.value(metadata i32 poison, metadata !4733, metadata !DIExpression()), !dbg !4741
  %796 = icmp slt i64 %795, 0, !dbg !4743
  br i1 %796, label %802, label %797, !dbg !4743

797:                                              ; preds = %781, %792
  %798 = phi i32 [ %793, %792 ], [ 1, %781 ]
  %799 = phi i64 [ %795, %792 ], [ 9223372036854775807, %781 ]
  %800 = udiv i64 9223372036854775807, %55, !dbg !4743
  %801 = icmp ult i64 %800, %799, !dbg !4743
  br i1 %801, label %813, label %808, !dbg !4743

802:                                              ; preds = %786, %792
  %803 = phi i32 [ %793, %792 ], [ 1, %786 ]
  %804 = phi i64 [ %795, %792 ], [ -9223372036854775808, %786 ]
  %805 = sub i64 0, %804, !dbg !4743
  %806 = udiv i64 -9223372036854775808, %805, !dbg !4743
  %807 = icmp ult i64 %806, %55, !dbg !4743
  br i1 %807, label %818, label %808, !dbg !4743

808:                                              ; preds = %797, %802
  %809 = phi i32 [ %803, %802 ], [ %798, %797 ]
  %810 = phi i64 [ %804, %802 ], [ %799, %797 ]
  %811 = mul i64 %810, %55, !dbg !4743
  call void @llvm.dbg.value(metadata i64 %811, metadata !4734, metadata !DIExpression()), !dbg !4741
  call void @llvm.dbg.value(metadata i32 %809, metadata !4717, metadata !DIExpression()), !dbg !4739
  call void @llvm.dbg.value(metadata i32 2, metadata !4724, metadata !DIExpression()), !dbg !4739
  call void @llvm.dbg.value(metadata ptr undef, metadata !4728, metadata !DIExpression()), !dbg !4741
  call void @llvm.dbg.value(metadata i32 poison, metadata !4733, metadata !DIExpression()), !dbg !4741
  %812 = icmp slt i64 %811, 0, !dbg !4743
  br i1 %812, label %818, label %813, !dbg !4743

813:                                              ; preds = %797, %808
  %814 = phi i32 [ %809, %808 ], [ 1, %797 ]
  %815 = phi i64 [ %811, %808 ], [ 9223372036854775807, %797 ]
  %816 = udiv i64 9223372036854775807, %55, !dbg !4743
  %817 = icmp ult i64 %816, %815, !dbg !4743
  br i1 %817, label %829, label %824, !dbg !4743

818:                                              ; preds = %802, %808
  %819 = phi i32 [ %809, %808 ], [ 1, %802 ]
  %820 = phi i64 [ %811, %808 ], [ -9223372036854775808, %802 ]
  %821 = sub i64 0, %820, !dbg !4743
  %822 = udiv i64 -9223372036854775808, %821, !dbg !4743
  %823 = icmp ult i64 %822, %55, !dbg !4743
  br i1 %823, label %834, label %824, !dbg !4743

824:                                              ; preds = %813, %818
  %825 = phi i32 [ %819, %818 ], [ %814, %813 ]
  %826 = phi i64 [ %820, %818 ], [ %815, %813 ]
  %827 = mul i64 %826, %55, !dbg !4743
  call void @llvm.dbg.value(metadata i64 %827, metadata !4734, metadata !DIExpression()), !dbg !4741
  call void @llvm.dbg.value(metadata i32 %825, metadata !4717, metadata !DIExpression()), !dbg !4739
  call void @llvm.dbg.value(metadata i32 1, metadata !4724, metadata !DIExpression()), !dbg !4739
  call void @llvm.dbg.value(metadata ptr undef, metadata !4728, metadata !DIExpression()), !dbg !4741
  call void @llvm.dbg.value(metadata i32 poison, metadata !4733, metadata !DIExpression()), !dbg !4741
  %828 = icmp slt i64 %827, 0, !dbg !4743
  br i1 %828, label %834, label %829, !dbg !4743

829:                                              ; preds = %813, %824
  %830 = phi i32 [ %825, %824 ], [ 1, %813 ]
  %831 = phi i64 [ %827, %824 ], [ 9223372036854775807, %813 ]
  %832 = udiv i64 9223372036854775807, %55, !dbg !4743
  %833 = icmp ult i64 %832, %831, !dbg !4743
  br i1 %833, label %845, label %840, !dbg !4743

834:                                              ; preds = %818, %824
  %835 = phi i32 [ %825, %824 ], [ 1, %818 ]
  %836 = phi i64 [ %827, %824 ], [ -9223372036854775808, %818 ]
  %837 = sub i64 0, %836, !dbg !4743
  %838 = udiv i64 -9223372036854775808, %837, !dbg !4743
  %839 = icmp ult i64 %838, %55, !dbg !4743
  br i1 %839, label %850, label %840, !dbg !4743

840:                                              ; preds = %829, %834
  %841 = phi i32 [ %835, %834 ], [ %830, %829 ]
  %842 = phi i64 [ %836, %834 ], [ %831, %829 ]
  %843 = mul i64 %842, %55, !dbg !4743
  call void @llvm.dbg.value(metadata i64 %843, metadata !4734, metadata !DIExpression()), !dbg !4741
  call void @llvm.dbg.value(metadata i32 %841, metadata !4717, metadata !DIExpression()), !dbg !4739
  call void @llvm.dbg.value(metadata i32 0, metadata !4724, metadata !DIExpression()), !dbg !4739
  call void @llvm.dbg.value(metadata ptr undef, metadata !4728, metadata !DIExpression()), !dbg !4741
  call void @llvm.dbg.value(metadata i32 poison, metadata !4733, metadata !DIExpression()), !dbg !4741
  %844 = icmp slt i64 %843, 0, !dbg !4743
  br i1 %844, label %850, label %845, !dbg !4743

845:                                              ; preds = %829, %840
  %846 = phi i32 [ %841, %840 ], [ 1, %829 ]
  %847 = phi i64 [ %843, %840 ], [ 9223372036854775807, %829 ]
  %848 = udiv i64 9223372036854775807, %55, !dbg !4743
  %849 = icmp ult i64 %848, %847, !dbg !4743
  br i1 %849, label %860, label %856, !dbg !4743

850:                                              ; preds = %834, %840
  %851 = phi i32 [ %841, %840 ], [ 1, %834 ]
  %852 = phi i64 [ %843, %840 ], [ -9223372036854775808, %834 ]
  %853 = sub i64 0, %852, !dbg !4743
  %854 = udiv i64 -9223372036854775808, %853, !dbg !4743
  %855 = icmp ult i64 %854, %55, !dbg !4743
  br i1 %855, label %860, label %856, !dbg !4743

856:                                              ; preds = %850, %845
  %857 = phi i32 [ %851, %850 ], [ %846, %845 ]
  %858 = phi i64 [ %852, %850 ], [ %847, %845 ]
  %859 = mul i64 %858, %55, !dbg !4743
  call void @llvm.dbg.value(metadata i64 %859, metadata !4734, metadata !DIExpression()), !dbg !4741
  br label %860, !dbg !4812

860:                                              ; preds = %856, %850, %845
  %861 = phi i32 [ %857, %856 ], [ %846, %845 ], [ %851, %850 ]
  %862 = phi i64 [ %859, %856 ], [ 9223372036854775807, %845 ], [ -9223372036854775808, %850 ], !dbg !4741
  %863 = phi i32 [ 0, %856 ], [ 1, %845 ], [ 1, %850 ], !dbg !4741
  %864 = or i32 %863, %861, !dbg !4813
  call void @llvm.dbg.value(metadata i32 %864, metadata !4717, metadata !DIExpression()), !dbg !4739
  call void @llvm.dbg.value(metadata i32 0, metadata !4724, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4739
  br label %977, !dbg !4774

865:                                              ; preds = %57
  %866 = icmp eq i64 %31, -1, !dbg !4737
  br i1 %866, label %874, label %867, !dbg !4737

867:                                              ; preds = %865
  %868 = sub i64 0, %31, !dbg !4737
  %869 = udiv i64 -9223372036854775808, %868, !dbg !4737
  %870 = icmp ult i64 %869, %55, !dbg !4737
  br i1 %870, label %882, label %874, !dbg !4737

871:                                              ; preds = %57
  %872 = udiv i64 9223372036854775807, %55, !dbg !4737
  %873 = icmp ult i64 %872, %31, !dbg !4737
  br i1 %873, label %877, label %874, !dbg !4737

874:                                              ; preds = %865, %867, %871
  %875 = mul i64 %31, %55, !dbg !4737
  call void @llvm.dbg.value(metadata i64 %875, metadata !4734, metadata !DIExpression()), !dbg !4735
  call void @llvm.dbg.value(metadata i32 0, metadata !4717, metadata !DIExpression()), !dbg !4725
  call void @llvm.dbg.value(metadata i32 5, metadata !4724, metadata !DIExpression()), !dbg !4725
  call void @llvm.dbg.value(metadata ptr undef, metadata !4728, metadata !DIExpression()), !dbg !4735
  call void @llvm.dbg.value(metadata i32 poison, metadata !4733, metadata !DIExpression()), !dbg !4735
  %876 = icmp slt i64 %875, 0, !dbg !4737
  br i1 %876, label %882, label %877, !dbg !4737

877:                                              ; preds = %871, %874
  %878 = phi i32 [ 0, %874 ], [ 1, %871 ]
  %879 = phi i64 [ %875, %874 ], [ 9223372036854775807, %871 ]
  %880 = udiv i64 9223372036854775807, %55, !dbg !4737
  %881 = icmp ult i64 %880, %879, !dbg !4737
  br i1 %881, label %893, label %888, !dbg !4737

882:                                              ; preds = %867, %874
  %883 = phi i32 [ 0, %874 ], [ 1, %867 ]
  %884 = phi i64 [ %875, %874 ], [ -9223372036854775808, %867 ]
  %885 = sub i64 0, %884, !dbg !4737
  %886 = udiv i64 -9223372036854775808, %885, !dbg !4737
  %887 = icmp ult i64 %886, %55, !dbg !4737
  br i1 %887, label %898, label %888, !dbg !4737

888:                                              ; preds = %877, %882
  %889 = phi i32 [ %883, %882 ], [ %878, %877 ]
  %890 = phi i64 [ %884, %882 ], [ %879, %877 ]
  %891 = mul i64 %890, %55, !dbg !4737
  call void @llvm.dbg.value(metadata i64 %891, metadata !4734, metadata !DIExpression()), !dbg !4735
  call void @llvm.dbg.value(metadata i32 %889, metadata !4717, metadata !DIExpression()), !dbg !4725
  call void @llvm.dbg.value(metadata i32 4, metadata !4724, metadata !DIExpression()), !dbg !4725
  call void @llvm.dbg.value(metadata ptr undef, metadata !4728, metadata !DIExpression()), !dbg !4735
  call void @llvm.dbg.value(metadata i32 poison, metadata !4733, metadata !DIExpression()), !dbg !4735
  %892 = icmp slt i64 %891, 0, !dbg !4737
  br i1 %892, label %898, label %893, !dbg !4737

893:                                              ; preds = %877, %888
  %894 = phi i32 [ %889, %888 ], [ 1, %877 ]
  %895 = phi i64 [ %891, %888 ], [ 9223372036854775807, %877 ]
  %896 = udiv i64 9223372036854775807, %55, !dbg !4737
  %897 = icmp ult i64 %896, %895, !dbg !4737
  br i1 %897, label %909, label %904, !dbg !4737

898:                                              ; preds = %882, %888
  %899 = phi i32 [ %889, %888 ], [ 1, %882 ]
  %900 = phi i64 [ %891, %888 ], [ -9223372036854775808, %882 ]
  %901 = sub i64 0, %900, !dbg !4737
  %902 = udiv i64 -9223372036854775808, %901, !dbg !4737
  %903 = icmp ult i64 %902, %55, !dbg !4737
  br i1 %903, label %914, label %904, !dbg !4737

904:                                              ; preds = %893, %898
  %905 = phi i32 [ %899, %898 ], [ %894, %893 ]
  %906 = phi i64 [ %900, %898 ], [ %895, %893 ]
  %907 = mul i64 %906, %55, !dbg !4737
  call void @llvm.dbg.value(metadata i64 %907, metadata !4734, metadata !DIExpression()), !dbg !4735
  call void @llvm.dbg.value(metadata i32 %905, metadata !4717, metadata !DIExpression()), !dbg !4725
  call void @llvm.dbg.value(metadata i32 3, metadata !4724, metadata !DIExpression()), !dbg !4725
  call void @llvm.dbg.value(metadata ptr undef, metadata !4728, metadata !DIExpression()), !dbg !4735
  call void @llvm.dbg.value(metadata i32 poison, metadata !4733, metadata !DIExpression()), !dbg !4735
  %908 = icmp slt i64 %907, 0, !dbg !4737
  br i1 %908, label %914, label %909, !dbg !4737

909:                                              ; preds = %893, %904
  %910 = phi i32 [ %905, %904 ], [ 1, %893 ]
  %911 = phi i64 [ %907, %904 ], [ 9223372036854775807, %893 ]
  %912 = udiv i64 9223372036854775807, %55, !dbg !4737
  %913 = icmp ult i64 %912, %911, !dbg !4737
  br i1 %913, label %925, label %920, !dbg !4737

914:                                              ; preds = %898, %904
  %915 = phi i32 [ %905, %904 ], [ 1, %898 ]
  %916 = phi i64 [ %907, %904 ], [ -9223372036854775808, %898 ]
  %917 = sub i64 0, %916, !dbg !4737
  %918 = udiv i64 -9223372036854775808, %917, !dbg !4737
  %919 = icmp ult i64 %918, %55, !dbg !4737
  br i1 %919, label %930, label %920, !dbg !4737

920:                                              ; preds = %909, %914
  %921 = phi i32 [ %915, %914 ], [ %910, %909 ]
  %922 = phi i64 [ %916, %914 ], [ %911, %909 ]
  %923 = mul i64 %922, %55, !dbg !4737
  call void @llvm.dbg.value(metadata i64 %923, metadata !4734, metadata !DIExpression()), !dbg !4735
  call void @llvm.dbg.value(metadata i32 %921, metadata !4717, metadata !DIExpression()), !dbg !4725
  call void @llvm.dbg.value(metadata i32 2, metadata !4724, metadata !DIExpression()), !dbg !4725
  call void @llvm.dbg.value(metadata ptr undef, metadata !4728, metadata !DIExpression()), !dbg !4735
  call void @llvm.dbg.value(metadata i32 poison, metadata !4733, metadata !DIExpression()), !dbg !4735
  %924 = icmp slt i64 %923, 0, !dbg !4737
  br i1 %924, label %930, label %925, !dbg !4737

925:                                              ; preds = %909, %920
  %926 = phi i32 [ %921, %920 ], [ 1, %909 ]
  %927 = phi i64 [ %923, %920 ], [ 9223372036854775807, %909 ]
  %928 = udiv i64 9223372036854775807, %55, !dbg !4737
  %929 = icmp ult i64 %928, %927, !dbg !4737
  br i1 %929, label %941, label %936, !dbg !4737

930:                                              ; preds = %914, %920
  %931 = phi i32 [ %921, %920 ], [ 1, %914 ]
  %932 = phi i64 [ %923, %920 ], [ -9223372036854775808, %914 ]
  %933 = sub i64 0, %932, !dbg !4737
  %934 = udiv i64 -9223372036854775808, %933, !dbg !4737
  %935 = icmp ult i64 %934, %55, !dbg !4737
  br i1 %935, label %946, label %936, !dbg !4737

936:                                              ; preds = %925, %930
  %937 = phi i32 [ %931, %930 ], [ %926, %925 ]
  %938 = phi i64 [ %932, %930 ], [ %927, %925 ]
  %939 = mul i64 %938, %55, !dbg !4737
  call void @llvm.dbg.value(metadata i64 %939, metadata !4734, metadata !DIExpression()), !dbg !4735
  call void @llvm.dbg.value(metadata i32 %937, metadata !4717, metadata !DIExpression()), !dbg !4725
  call void @llvm.dbg.value(metadata i32 1, metadata !4724, metadata !DIExpression()), !dbg !4725
  call void @llvm.dbg.value(metadata ptr undef, metadata !4728, metadata !DIExpression()), !dbg !4735
  call void @llvm.dbg.value(metadata i32 poison, metadata !4733, metadata !DIExpression()), !dbg !4735
  %940 = icmp slt i64 %939, 0, !dbg !4737
  br i1 %940, label %946, label %941, !dbg !4737

941:                                              ; preds = %925, %936
  %942 = phi i32 [ %937, %936 ], [ 1, %925 ]
  %943 = phi i64 [ %939, %936 ], [ 9223372036854775807, %925 ]
  %944 = udiv i64 9223372036854775807, %55, !dbg !4737
  %945 = icmp ult i64 %944, %943, !dbg !4737
  br i1 %945, label %957, label %952, !dbg !4737

946:                                              ; preds = %930, %936
  %947 = phi i32 [ %937, %936 ], [ 1, %930 ]
  %948 = phi i64 [ %939, %936 ], [ -9223372036854775808, %930 ]
  %949 = sub i64 0, %948, !dbg !4737
  %950 = udiv i64 -9223372036854775808, %949, !dbg !4737
  %951 = icmp ult i64 %950, %55, !dbg !4737
  br i1 %951, label %962, label %952, !dbg !4737

952:                                              ; preds = %941, %946
  %953 = phi i32 [ %947, %946 ], [ %942, %941 ]
  %954 = phi i64 [ %948, %946 ], [ %943, %941 ]
  %955 = mul i64 %954, %55, !dbg !4737
  call void @llvm.dbg.value(metadata i64 %955, metadata !4734, metadata !DIExpression()), !dbg !4735
  call void @llvm.dbg.value(metadata i32 %953, metadata !4717, metadata !DIExpression()), !dbg !4725
  call void @llvm.dbg.value(metadata i32 0, metadata !4724, metadata !DIExpression()), !dbg !4725
  call void @llvm.dbg.value(metadata ptr undef, metadata !4728, metadata !DIExpression()), !dbg !4735
  call void @llvm.dbg.value(metadata i32 poison, metadata !4733, metadata !DIExpression()), !dbg !4735
  %956 = icmp slt i64 %955, 0, !dbg !4737
  br i1 %956, label %962, label %957, !dbg !4737

957:                                              ; preds = %941, %952
  %958 = phi i32 [ %953, %952 ], [ 1, %941 ]
  %959 = phi i64 [ %955, %952 ], [ 9223372036854775807, %941 ]
  %960 = udiv i64 9223372036854775807, %55, !dbg !4737
  %961 = icmp ult i64 %960, %959, !dbg !4737
  br i1 %961, label %972, label %968, !dbg !4737

962:                                              ; preds = %946, %952
  %963 = phi i32 [ %953, %952 ], [ 1, %946 ]
  %964 = phi i64 [ %955, %952 ], [ -9223372036854775808, %946 ]
  %965 = sub i64 0, %964, !dbg !4737
  %966 = udiv i64 -9223372036854775808, %965, !dbg !4737
  %967 = icmp ult i64 %966, %55, !dbg !4737
  br i1 %967, label %972, label %968, !dbg !4737

968:                                              ; preds = %962, %957
  %969 = phi i32 [ %963, %962 ], [ %958, %957 ]
  %970 = phi i64 [ %964, %962 ], [ %959, %957 ]
  %971 = mul i64 %970, %55, !dbg !4737
  call void @llvm.dbg.value(metadata i64 %971, metadata !4734, metadata !DIExpression()), !dbg !4735
  br label %972, !dbg !4814

972:                                              ; preds = %968, %962, %957
  %973 = phi i32 [ %969, %968 ], [ %958, %957 ], [ %963, %962 ]
  %974 = phi i64 [ %971, %968 ], [ 9223372036854775807, %957 ], [ -9223372036854775808, %962 ], !dbg !4735
  %975 = phi i32 [ 0, %968 ], [ 1, %957 ], [ 1, %962 ], !dbg !4735
  %976 = or i32 %975, %973, !dbg !4815
  call void @llvm.dbg.value(metadata i32 %976, metadata !4717, metadata !DIExpression()), !dbg !4725
  call void @llvm.dbg.value(metadata i32 0, metadata !4724, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4725
  br label %977, !dbg !4774

977:                                              ; preds = %235, %239, %242, %972, %860, %723, %657, %513, %353, %273, %226, %176, %730, %79, %71, %54, %73, %75, %81, %83, %733, %735
  %978 = phi i64 [ %31, %54 ], [ %76, %75 ], [ 9223372036854775807, %73 ], [ %84, %83 ], [ 9223372036854775807, %81 ], [ %736, %735 ], [ 9223372036854775807, %733 ], [ -9223372036854775808, %71 ], [ -9223372036854775808, %79 ], [ -9223372036854775808, %730 ], [ %178, %176 ], [ %228, %226 ], [ %275, %273 ], [ %355, %353 ], [ %515, %513 ], [ %659, %657 ], [ %725, %723 ], [ %862, %860 ], [ %974, %972 ], [ %243, %242 ], [ 9223372036854775807, %239 ], [ -9223372036854775808, %235 ], !dbg !4663
  %979 = phi i32 [ 0, %54 ], [ 0, %75 ], [ 1, %73 ], [ 0, %83 ], [ 1, %81 ], [ 0, %735 ], [ 1, %733 ], [ 1, %71 ], [ 1, %79 ], [ 1, %730 ], [ %180, %176 ], [ %230, %226 ], [ %277, %273 ], [ %357, %353 ], [ %517, %513 ], [ %661, %657 ], [ %727, %723 ], [ %864, %860 ], [ %976, %972 ], [ 0, %242 ], [ 1, %239 ], [ 1, %235 ], !dbg !4816
  call void @llvm.dbg.value(metadata i32 %979, metadata !4662, metadata !DIExpression()), !dbg !4702
  %980 = or i32 %979, %30, !dbg !4774
  call void @llvm.dbg.value(metadata i32 %980, metadata !4657, metadata !DIExpression()), !dbg !4663
  %981 = getelementptr inbounds i8, ptr %11, i64 %56, !dbg !4817
  store ptr %981, ptr %8, align 8, !dbg !4817, !tbaa !858
  %982 = load i8, ptr %981, align 1, !dbg !4818, !tbaa !938
  %983 = icmp eq i8 %982, 0, !dbg !4818
  %984 = or i32 %980, 2
  %985 = select i1 %983, i32 %980, i32 %984, !dbg !4820
  call void @llvm.dbg.value(metadata i32 %985, metadata !4657, metadata !DIExpression()), !dbg !4663
  br label %988

986:                                              ; preds = %54
  call void @llvm.dbg.value(metadata i64 %10, metadata !4656, metadata !DIExpression()), !dbg !4663
  store i64 %31, ptr %3, align 8, !dbg !4821, !tbaa !1312
  %987 = or i32 %30, 2, !dbg !4822
  call void @llvm.dbg.value(metadata i32 %30, metadata !4657, metadata !DIExpression()), !dbg !4663
  br label %991

988:                                              ; preds = %977, %29
  %989 = phi i64 [ %31, %29 ], [ %978, %977 ], !dbg !4823
  %990 = phi i32 [ %30, %29 ], [ %985, %977 ], !dbg !4824
  call void @llvm.dbg.value(metadata i32 %990, metadata !4657, metadata !DIExpression()), !dbg !4663
  call void @llvm.dbg.value(metadata i64 %989, metadata !4656, metadata !DIExpression()), !dbg !4663
  store i64 %989, ptr %3, align 8, !dbg !4825, !tbaa !1312
  br label %991, !dbg !4826

991:                                              ; preds = %986, %22, %13, %15, %18, %988, %38, %28
  %992 = phi i32 [ %990, %988 ], [ %987, %986 ], [ %39, %38 ], [ %26, %28 ], [ 4, %18 ], [ 4, %15 ], [ 4, %13 ], [ 4, %22 ], !dbg !4663
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #42, !dbg !4827
  ret i32 %992, !dbg !4827
}

; Function Attrs: nounwind
declare !dbg !4828 i64 @strtoimax(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @rpl_fopen(ptr nocapture noundef nonnull readonly %0, ptr nocapture noundef nonnull readonly %1) local_unnamed_addr #19 !dbg !4833 {
  %3 = alloca [81 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !4871, metadata !DIExpression()), !dbg !4895
  call void @llvm.dbg.value(metadata ptr %1, metadata !4872, metadata !DIExpression()), !dbg !4895
  call void @llvm.dbg.value(metadata i32 0, metadata !4873, metadata !DIExpression()), !dbg !4895
  call void @llvm.dbg.value(metadata i32 0, metadata !4874, metadata !DIExpression()), !dbg !4895
  call void @llvm.dbg.value(metadata i8 0, metadata !4875, metadata !DIExpression()), !dbg !4895
  call void @llvm.lifetime.start.p0(i64 81, ptr nonnull %3) #42, !dbg !4896
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4876, metadata !DIExpression()), !dbg !4897
  call void @llvm.dbg.value(metadata ptr %1, metadata !4880, metadata !DIExpression()), !dbg !4898
  call void @llvm.dbg.value(metadata ptr %3, metadata !4882, metadata !DIExpression()), !dbg !4898
  call void @llvm.dbg.value(metadata i32 0, metadata !4873, metadata !DIExpression()), !dbg !4895
  call void @llvm.dbg.value(metadata i32 0, metadata !4874, metadata !DIExpression()), !dbg !4895
  call void @llvm.dbg.value(metadata i8 0, metadata !4875, metadata !DIExpression()), !dbg !4895
  %4 = load i8, ptr %1, align 1, !dbg !4899, !tbaa !938
  %5 = icmp eq i8 %4, 0, !dbg !4900
  br i1 %5, label %6, label %7, !dbg !4901

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4882, metadata !DIExpression()), !dbg !4898
  store i8 0, ptr %3, align 16, !dbg !4902, !tbaa !938
  br label %74, !dbg !4903

7:                                                ; preds = %2, %47
  %8 = phi i8 [ %54, %47 ], [ %4, %2 ]
  %9 = phi ptr [ %53, %47 ], [ %3, %2 ]
  %10 = phi i32 [ %51, %47 ], [ 0, %2 ]
  %11 = phi i32 [ %50, %47 ], [ 0, %2 ]
  %12 = phi i64 [ %49, %47 ], [ 0, %2 ]
  %13 = phi ptr [ %52, %47 ], [ %1, %2 ]
  %14 = phi i8 [ %48, %47 ], [ 0, %2 ]
  call void @llvm.dbg.value(metadata i32 %10, metadata !4873, metadata !DIExpression()), !dbg !4895
  call void @llvm.dbg.value(metadata i32 %11, metadata !4874, metadata !DIExpression()), !dbg !4895
  call void @llvm.dbg.value(metadata ptr %13, metadata !4880, metadata !DIExpression()), !dbg !4898
  call void @llvm.dbg.value(metadata i8 %14, metadata !4875, metadata !DIExpression()), !dbg !4895
  %15 = sext i8 %8 to i32, !dbg !4899
  switch i32 %15, label %42 [
    i32 114, label %16
    i32 119, label %20
    i32 97, label %25
    i32 98, label %30
    i32 43, label %34
    i32 120, label %38
    i32 101, label %40
  ], !dbg !4904

16:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 0, metadata !4873, metadata !DIExpression()), !dbg !4895
  %17 = icmp slt i64 %12, 80, !dbg !4905
  br i1 %17, label %18, label %47, !dbg !4908

18:                                               ; preds = %16
  %19 = add nsw i64 %12, 1, !dbg !4909
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %19), metadata !4882, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4898
  store i8 %8, ptr %9, align 1, !dbg !4910, !tbaa !938
  br label %47, !dbg !4911

20:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 1, metadata !4873, metadata !DIExpression()), !dbg !4895
  %21 = or i32 %11, 576, !dbg !4912
  call void @llvm.dbg.value(metadata i32 %21, metadata !4874, metadata !DIExpression()), !dbg !4895
  %22 = icmp slt i64 %12, 80, !dbg !4913
  br i1 %22, label %23, label %47, !dbg !4915

23:                                               ; preds = %20
  %24 = add nsw i64 %12, 1, !dbg !4916
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %24), metadata !4882, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4898
  store i8 %8, ptr %9, align 1, !dbg !4917, !tbaa !938
  br label %47, !dbg !4918

25:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 1, metadata !4873, metadata !DIExpression()), !dbg !4895
  %26 = or i32 %11, 1088, !dbg !4919
  call void @llvm.dbg.value(metadata i32 %26, metadata !4874, metadata !DIExpression()), !dbg !4895
  %27 = icmp slt i64 %12, 80, !dbg !4920
  br i1 %27, label %28, label %47, !dbg !4922

28:                                               ; preds = %25
  %29 = add nsw i64 %12, 1, !dbg !4923
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %29), metadata !4882, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4898
  store i8 %8, ptr %9, align 1, !dbg !4924, !tbaa !938
  br label %47, !dbg !4925

30:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 %11, metadata !4874, metadata !DIExpression()), !dbg !4895
  %31 = icmp slt i64 %12, 80, !dbg !4926
  br i1 %31, label %32, label %47, !dbg !4928

32:                                               ; preds = %30
  %33 = add nsw i64 %12, 1, !dbg !4929
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %33), metadata !4882, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4898
  store i8 %8, ptr %9, align 1, !dbg !4930, !tbaa !938
  br label %47, !dbg !4931

34:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 2, metadata !4873, metadata !DIExpression()), !dbg !4895
  %35 = icmp slt i64 %12, 80, !dbg !4932
  br i1 %35, label %36, label %47, !dbg !4934

36:                                               ; preds = %34
  %37 = add nsw i64 %12, 1, !dbg !4935
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %37), metadata !4882, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4898
  store i8 %8, ptr %9, align 1, !dbg !4936, !tbaa !938
  br label %47, !dbg !4937

38:                                               ; preds = %7
  %39 = or i32 %11, 128, !dbg !4938
  call void @llvm.dbg.value(metadata i32 %39, metadata !4874, metadata !DIExpression()), !dbg !4895
  call void @llvm.dbg.value(metadata i8 1, metadata !4875, metadata !DIExpression()), !dbg !4895
  br label %47, !dbg !4939

40:                                               ; preds = %7
  %41 = or i32 %11, 524288, !dbg !4940
  call void @llvm.dbg.value(metadata i32 %41, metadata !4874, metadata !DIExpression()), !dbg !4895
  call void @llvm.dbg.value(metadata i8 1, metadata !4875, metadata !DIExpression()), !dbg !4895
  br label %47, !dbg !4941

42:                                               ; preds = %7
  %43 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %13) #43, !dbg !4942
  call void @llvm.dbg.value(metadata i64 %43, metadata !4883, metadata !DIExpression()), !dbg !4943
  %44 = sub nsw i64 80, %12, !dbg !4944
  %45 = tail call i64 @llvm.umin.i64(i64 %43, i64 %44), !dbg !4946
  call void @llvm.dbg.value(metadata i64 %45, metadata !4883, metadata !DIExpression()), !dbg !4943
  call void @llvm.dbg.value(metadata ptr %9, metadata !4947, metadata !DIExpression()), !dbg !4952
  call void @llvm.dbg.value(metadata ptr %13, metadata !4950, metadata !DIExpression()), !dbg !4952
  call void @llvm.dbg.value(metadata i64 %45, metadata !4951, metadata !DIExpression()), !dbg !4952
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %9, ptr noundef nonnull align 1 %13, i64 noundef %45, i1 noundef false) #42, !dbg !4954
  %46 = getelementptr inbounds i8, ptr %9, i64 %45, !dbg !4955
  call void @llvm.dbg.value(metadata ptr %46, metadata !4882, metadata !DIExpression()), !dbg !4898
  br label %56, !dbg !4956

47:                                               ; preds = %34, %36, %30, %32, %25, %28, %20, %23, %16, %18, %40, %38
  %48 = phi i8 [ 1, %40 ], [ 1, %38 ], [ %14, %36 ], [ %14, %34 ], [ %14, %32 ], [ %14, %30 ], [ %14, %28 ], [ %14, %25 ], [ %14, %23 ], [ %14, %20 ], [ %14, %18 ], [ %14, %16 ], !dbg !4895
  %49 = phi i64 [ %12, %40 ], [ %12, %38 ], [ %37, %36 ], [ %12, %34 ], [ %33, %32 ], [ %12, %30 ], [ %29, %28 ], [ %12, %25 ], [ %24, %23 ], [ %12, %20 ], [ %19, %18 ], [ %12, %16 ]
  %50 = phi i32 [ %41, %40 ], [ %39, %38 ], [ %11, %36 ], [ %11, %34 ], [ %11, %32 ], [ %11, %30 ], [ %26, %28 ], [ %26, %25 ], [ %21, %23 ], [ %21, %20 ], [ %11, %18 ], [ %11, %16 ], !dbg !4895
  %51 = phi i32 [ %10, %40 ], [ %10, %38 ], [ 2, %36 ], [ 2, %34 ], [ %10, %32 ], [ %10, %30 ], [ 1, %28 ], [ 1, %25 ], [ 1, %23 ], [ 1, %20 ], [ 0, %18 ], [ 0, %16 ], !dbg !4895
  call void @llvm.dbg.value(metadata i32 %51, metadata !4873, metadata !DIExpression()), !dbg !4895
  call void @llvm.dbg.value(metadata i32 %50, metadata !4874, metadata !DIExpression()), !dbg !4895
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %49), metadata !4882, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4898
  call void @llvm.dbg.value(metadata i8 %48, metadata !4875, metadata !DIExpression()), !dbg !4895
  %52 = getelementptr inbounds i8, ptr %13, i64 1, !dbg !4957
  call void @llvm.dbg.value(metadata ptr %52, metadata !4880, metadata !DIExpression()), !dbg !4898
  %53 = getelementptr inbounds i8, ptr %3, i64 %49, !dbg !4895
  call void @llvm.dbg.value(metadata ptr %53, metadata !4882, metadata !DIExpression()), !dbg !4898
  %54 = load i8, ptr %52, align 1, !dbg !4899, !tbaa !938
  %55 = icmp eq i8 %54, 0, !dbg !4900
  br i1 %55, label %56, label %7, !dbg !4901, !llvm.loop !4958

56:                                               ; preds = %47, %42
  %57 = phi i8 [ %14, %42 ], [ %48, %47 ]
  %58 = phi i32 [ %11, %42 ], [ %50, %47 ]
  %59 = phi i32 [ %10, %42 ], [ %51, %47 ]
  %60 = phi ptr [ %46, %42 ], [ %53, %47 ], !dbg !4898
  call void @llvm.dbg.value(metadata ptr %60, metadata !4882, metadata !DIExpression()), !dbg !4898
  store i8 0, ptr %60, align 1, !dbg !4902, !tbaa !938
  %61 = and i8 %57, 1, !dbg !4960
  %62 = icmp eq i8 %61, 0, !dbg !4960
  br i1 %62, label %74, label %63, !dbg !4903

63:                                               ; preds = %56
  %64 = or i32 %59, %58, !dbg !4961
  %65 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %0, i32 noundef %64, i32 noundef 438) #42, !dbg !4962
  call void @llvm.dbg.value(metadata i32 %65, metadata !4888, metadata !DIExpression()), !dbg !4963
  %66 = icmp slt i32 %65, 0, !dbg !4964
  br i1 %66, label %76, label %67, !dbg !4966

67:                                               ; preds = %63
  %68 = call noalias ptr @fdopen(i32 noundef %65, ptr noundef nonnull %3) #42, !dbg !4967
  call void @llvm.dbg.value(metadata ptr %68, metadata !4891, metadata !DIExpression()), !dbg !4963
  %69 = icmp eq ptr %68, null, !dbg !4968
  br i1 %69, label %70, label %76, !dbg !4969

70:                                               ; preds = %67
  %71 = tail call ptr @__errno_location() #45, !dbg !4970
  %72 = load i32, ptr %71, align 4, !dbg !4970, !tbaa !929
  call void @llvm.dbg.value(metadata i32 %72, metadata !4892, metadata !DIExpression()), !dbg !4971
  %73 = tail call i32 @close(i32 noundef %65) #42, !dbg !4972
  store i32 %72, ptr %71, align 4, !dbg !4973, !tbaa !929
  br label %76, !dbg !4974

74:                                               ; preds = %6, %56
  call void @llvm.dbg.value(metadata ptr %0, metadata !4975, metadata !DIExpression()), !dbg !4979
  call void @llvm.dbg.value(metadata ptr %1, metadata !4978, metadata !DIExpression()), !dbg !4979
  %75 = tail call noalias ptr @fopen(ptr noundef nonnull %0, ptr noundef nonnull %1), !dbg !4981
  br label %76, !dbg !4982

76:                                               ; preds = %63, %70, %67, %74
  %77 = phi ptr [ %75, %74 ], [ null, %63 ], [ null, %70 ], [ %68, %67 ], !dbg !4895
  call void @llvm.lifetime.end.p0(i64 81, ptr nonnull %3) #42, !dbg !4983
  ret ptr %77, !dbg !4983
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #1

; Function Attrs: nofree
declare !dbg !4984 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #39

; Function Attrs: nofree nounwind
declare !dbg !4987 noalias noundef ptr @fdopen(i32 noundef, ptr nocapture noundef readonly) local_unnamed_addr #4

declare !dbg !4990 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !4991 noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #19 !dbg !4994 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5032, metadata !DIExpression()), !dbg !5037
  %2 = tail call i64 @__fpending(ptr noundef %0) #42, !dbg !5038
  call void @llvm.dbg.value(metadata i1 poison, metadata !5033, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5037
  call void @llvm.dbg.value(metadata ptr %0, metadata !5039, metadata !DIExpression()), !dbg !5042
  %3 = load i32, ptr %0, align 8, !dbg !5044, !tbaa !1291
  %4 = and i32 %3, 32, !dbg !5045
  %5 = icmp eq i32 %4, 0, !dbg !5045
  call void @llvm.dbg.value(metadata i1 %5, metadata !5035, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5037
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #42, !dbg !5046
  %7 = icmp eq i32 %6, 0, !dbg !5047
  call void @llvm.dbg.value(metadata i1 %7, metadata !5036, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5037
  br i1 %5, label %8, label %18, !dbg !5048

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !5050
  call void @llvm.dbg.value(metadata i1 %9, metadata !5033, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5037
  %10 = select i1 %7, i1 true, i1 %9, !dbg !5051
  %11 = xor i1 %7, true, !dbg !5051
  %12 = sext i1 %11 to i32, !dbg !5051
  br i1 %10, label %21, label %13, !dbg !5051

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #45, !dbg !5052
  %15 = load i32, ptr %14, align 4, !dbg !5052, !tbaa !929
  %16 = icmp ne i32 %15, 9, !dbg !5053
  %17 = sext i1 %16 to i32, !dbg !5054
  br label %21, !dbg !5054

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !5055

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #45, !dbg !5057
  store i32 0, ptr %20, align 4, !dbg !5059, !tbaa !929
  br label %21, !dbg !5057

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !5037
  ret i32 %22, !dbg !5060
}

; Function Attrs: nounwind
declare !dbg !5061 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #19 !dbg !5064 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5069, metadata !DIExpression()), !dbg !5074
  call void @llvm.dbg.value(metadata ptr %1, metadata !5070, metadata !DIExpression()), !dbg !5074
  call void @llvm.dbg.value(metadata i64 %2, metadata !5071, metadata !DIExpression()), !dbg !5074
  call void @llvm.dbg.value(metadata ptr %3, metadata !5072, metadata !DIExpression()), !dbg !5074
  %5 = icmp eq ptr %1, null, !dbg !5075
  %6 = select i1 %5, ptr null, ptr %0, !dbg !5077
  %7 = select i1 %5, ptr @.str.153, ptr %1, !dbg !5077
  %8 = select i1 %5, i64 1, i64 %2, !dbg !5077
  call void @llvm.dbg.value(metadata i64 %8, metadata !5071, metadata !DIExpression()), !dbg !5074
  call void @llvm.dbg.value(metadata ptr %7, metadata !5070, metadata !DIExpression()), !dbg !5074
  call void @llvm.dbg.value(metadata ptr %6, metadata !5069, metadata !DIExpression()), !dbg !5074
  %9 = icmp eq ptr %3, null, !dbg !5078
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !5080
  call void @llvm.dbg.value(metadata ptr %10, metadata !5072, metadata !DIExpression()), !dbg !5074
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #42, !dbg !5081
  call void @llvm.dbg.value(metadata i64 %11, metadata !5073, metadata !DIExpression()), !dbg !5074
  %12 = icmp ult i64 %11, -3, !dbg !5082
  br i1 %12, label %13, label %17, !dbg !5084

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #43, !dbg !5085
  %15 = icmp eq i32 %14, 0, !dbg !5085
  br i1 %15, label %16, label %29, !dbg !5086

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !5087, metadata !DIExpression()), !dbg !5092
  call void @llvm.dbg.value(metadata ptr %10, metadata !5094, metadata !DIExpression()), !dbg !5099
  call void @llvm.dbg.value(metadata i32 0, metadata !5097, metadata !DIExpression()), !dbg !5099
  call void @llvm.dbg.value(metadata i64 8, metadata !5098, metadata !DIExpression()), !dbg !5099
  store i64 0, ptr %10, align 1, !dbg !5101
  br label %29, !dbg !5102

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !5103
  br i1 %18, label %19, label %20, !dbg !5105

19:                                               ; preds = %17
  tail call void @abort() #44, !dbg !5106
  unreachable, !dbg !5106

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !5107

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #42, !dbg !5109
  br i1 %23, label %29, label %24, !dbg !5110

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !5111
  br i1 %25, label %29, label %26, !dbg !5114

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !5115, !tbaa !938
  %28 = zext i8 %27 to i32, !dbg !5116
  store i32 %28, ptr %6, align 4, !dbg !5117, !tbaa !929
  br label %29, !dbg !5118

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !5074
  ret i64 %30, !dbg !5119
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !5120 i32 @mbsinit(ptr noundef) local_unnamed_addr #40

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #41 !dbg !5126 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5128, metadata !DIExpression()), !dbg !5132
  call void @llvm.dbg.value(metadata i64 %1, metadata !5129, metadata !DIExpression()), !dbg !5132
  call void @llvm.dbg.value(metadata i64 %2, metadata !5130, metadata !DIExpression()), !dbg !5132
  %4 = icmp eq i64 %2, 0, !dbg !5133
  br i1 %4, label %8, label %5, !dbg !5133

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !5133
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !5133
  br i1 %7, label %13, label %8, !dbg !5133

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5131, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5132
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5131, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5132
  %9 = mul i64 %2, %1, !dbg !5133
  call void @llvm.dbg.value(metadata i64 %9, metadata !5131, metadata !DIExpression()), !dbg !5132
  call void @llvm.dbg.value(metadata ptr %0, metadata !5135, metadata !DIExpression()), !dbg !5139
  call void @llvm.dbg.value(metadata i64 %9, metadata !5138, metadata !DIExpression()), !dbg !5139
  %10 = icmp eq i64 %9, 0, !dbg !5141
  %11 = select i1 %10, i64 1, i64 %9, !dbg !5141
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #49, !dbg !5142
  br label %15, !dbg !5143

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5131, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5132
  %14 = tail call ptr @__errno_location() #45, !dbg !5144
  store i32 12, ptr %14, align 4, !dbg !5146, !tbaa !929
  br label %15, !dbg !5147

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !5132
  ret ptr %16, !dbg !5148
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #19 !dbg !5149 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !5153, metadata !DIExpression()), !dbg !5158
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #42, !dbg !5159
  call void @llvm.dbg.declare(metadata ptr %2, metadata !5154, metadata !DIExpression()), !dbg !5160
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #42, !dbg !5161
  %4 = icmp eq i32 %3, 0, !dbg !5161
  br i1 %4, label %5, label %12, !dbg !5163

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !5164, metadata !DIExpression()), !dbg !5168
  %6 = load i16, ptr %2, align 16, !dbg !5171
  %7 = icmp eq i16 %6, 67, !dbg !5171
  br i1 %7, label %11, label %8, !dbg !5172

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !5164, metadata !DIExpression()), !dbg !5173
  call void @llvm.dbg.value(metadata ptr @.str.1.158, metadata !5167, metadata !DIExpression()), !dbg !5173
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.158, i64 6), !dbg !5175
  %10 = icmp eq i32 %9, 0, !dbg !5176
  br i1 %10, label %11, label %12, !dbg !5177

11:                                               ; preds = %8, %5
  br label %12, !dbg !5178

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !5158
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #42, !dbg !5179
  ret i1 %13, !dbg !5179
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #19 !dbg !5180 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5184, metadata !DIExpression()), !dbg !5187
  call void @llvm.dbg.value(metadata ptr %1, metadata !5185, metadata !DIExpression()), !dbg !5187
  call void @llvm.dbg.value(metadata i64 %2, metadata !5186, metadata !DIExpression()), !dbg !5187
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #42, !dbg !5188
  ret i32 %4, !dbg !5189
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #19 !dbg !5190 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5194, metadata !DIExpression()), !dbg !5195
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #42, !dbg !5196
  ret ptr %2, !dbg !5197
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #19 !dbg !5198 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5200, metadata !DIExpression()), !dbg !5202
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #42, !dbg !5203
  call void @llvm.dbg.value(metadata ptr %2, metadata !5201, metadata !DIExpression()), !dbg !5202
  ret ptr %2, !dbg !5204
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #19 !dbg !5205 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5207, metadata !DIExpression()), !dbg !5214
  call void @llvm.dbg.value(metadata ptr %1, metadata !5208, metadata !DIExpression()), !dbg !5214
  call void @llvm.dbg.value(metadata i64 %2, metadata !5209, metadata !DIExpression()), !dbg !5214
  call void @llvm.dbg.value(metadata i32 %0, metadata !5200, metadata !DIExpression()), !dbg !5215
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #42, !dbg !5217
  call void @llvm.dbg.value(metadata ptr %4, metadata !5201, metadata !DIExpression()), !dbg !5215
  call void @llvm.dbg.value(metadata ptr %4, metadata !5210, metadata !DIExpression()), !dbg !5214
  %5 = icmp eq ptr %4, null, !dbg !5218
  br i1 %5, label %6, label %9, !dbg !5219

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !5220
  br i1 %7, label %19, label %8, !dbg !5223

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !5224, !tbaa !938
  br label %19, !dbg !5225

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #43, !dbg !5226
  call void @llvm.dbg.value(metadata i64 %10, metadata !5211, metadata !DIExpression()), !dbg !5227
  %11 = icmp ult i64 %10, %2, !dbg !5228
  br i1 %11, label %12, label %14, !dbg !5230

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !5231
  call void @llvm.dbg.value(metadata ptr %1, metadata !5233, metadata !DIExpression()), !dbg !5238
  call void @llvm.dbg.value(metadata ptr %4, metadata !5236, metadata !DIExpression()), !dbg !5238
  call void @llvm.dbg.value(metadata i64 %13, metadata !5237, metadata !DIExpression()), !dbg !5238
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #42, !dbg !5240
  br label %19, !dbg !5241

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !5242
  br i1 %15, label %19, label %16, !dbg !5245

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !5246
  call void @llvm.dbg.value(metadata ptr %1, metadata !5233, metadata !DIExpression()), !dbg !5248
  call void @llvm.dbg.value(metadata ptr %4, metadata !5236, metadata !DIExpression()), !dbg !5248
  call void @llvm.dbg.value(metadata i64 %17, metadata !5237, metadata !DIExpression()), !dbg !5248
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #42, !dbg !5250
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !5251
  store i8 0, ptr %18, align 1, !dbg !5252, !tbaa !938
  br label %19, !dbg !5253

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !5254
  ret i32 %20, !dbg !5255
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
attributes #14 = { nofree nosync nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind willreturn }
attributes #25 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nofree nounwind willreturn memory(argmem: read) }
attributes #28 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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

!llvm.dbg.cu = !{!74, !424, !428, !443, !458, !730, !762, !765, !767, !770, !772, !774, !510, !524, !572, !776, !722, !782, !816, !818, !825, !827, !746, !829, !832, !836, !838}
!llvm.ident = !{!840, !840, !840, !840, !840, !840, !840, !840, !840, !840, !840, !840, !840, !840, !840, !840, !840, !840, !840, !840, !840, !840, !840, !840, !840, !840, !840}
!llvm.module.flags = !{!841, !842, !843, !844, !845, !846}

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
!457 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !458, file: !459, line: 66, type: !505, isLocal: false, isDefinition: true)
!458 = distinct !DICompileUnit(language: DW_LANG_C11, file: !459, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !460, globals: !461, splitDebugInlining: false, nameTableKind: None)
!459 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!460 = !{!131, !138}
!461 = !{!462, !464, !484, !486, !488, !490, !456, !492, !494, !496, !498, !503}
!462 = !DIGlobalVariableExpression(var: !463, expr: !DIExpression())
!463 = distinct !DIGlobalVariable(scope: null, file: !459, line: 272, type: !69, isLocal: true, isDefinition: true)
!464 = !DIGlobalVariableExpression(var: !465, expr: !DIExpression())
!465 = distinct !DIGlobalVariable(name: "old_file_name", scope: !466, file: !459, line: 304, type: !136, isLocal: true, isDefinition: true)
!466 = distinct !DISubprogram(name: "verror_at_line", scope: !459, file: !459, line: 298, type: !467, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !458, retainedNodes: !477)
!467 = !DISubroutineType(types: !468)
!468 = !{null, !87, !87, !136, !78, !136, !469}
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !471)
!471 = !{!472, !474, !475, !476}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !470, file: !473, baseType: !78, size: 32)
!473 = !DIFile(filename: "lib/error.c", directory: "/src")
!474 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !470, file: !473, baseType: !78, size: 32, offset: 32)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !470, file: !473, baseType: !131, size: 64, offset: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !470, file: !473, baseType: !131, size: 64, offset: 128)
!477 = !{!478, !479, !480, !481, !482, !483}
!478 = !DILocalVariable(name: "status", arg: 1, scope: !466, file: !459, line: 298, type: !87)
!479 = !DILocalVariable(name: "errnum", arg: 2, scope: !466, file: !459, line: 298, type: !87)
!480 = !DILocalVariable(name: "file_name", arg: 3, scope: !466, file: !459, line: 298, type: !136)
!481 = !DILocalVariable(name: "line_number", arg: 4, scope: !466, file: !459, line: 298, type: !78)
!482 = !DILocalVariable(name: "message", arg: 5, scope: !466, file: !459, line: 298, type: !136)
!483 = !DILocalVariable(name: "args", arg: 6, scope: !466, file: !459, line: 298, type: !469)
!484 = !DIGlobalVariableExpression(var: !485, expr: !DIExpression())
!485 = distinct !DIGlobalVariable(name: "old_line_number", scope: !466, file: !459, line: 305, type: !78, isLocal: true, isDefinition: true)
!486 = !DIGlobalVariableExpression(var: !487, expr: !DIExpression())
!487 = distinct !DIGlobalVariable(scope: null, file: !459, line: 338, type: !273, isLocal: true, isDefinition: true)
!488 = !DIGlobalVariableExpression(var: !489, expr: !DIExpression())
!489 = distinct !DIGlobalVariable(scope: null, file: !459, line: 346, type: !299, isLocal: true, isDefinition: true)
!490 = !DIGlobalVariableExpression(var: !491, expr: !DIExpression())
!491 = distinct !DIGlobalVariable(scope: null, file: !459, line: 346, type: !164, isLocal: true, isDefinition: true)
!492 = !DIGlobalVariableExpression(var: !493, expr: !DIExpression())
!493 = distinct !DIGlobalVariable(name: "error_message_count", scope: !458, file: !459, line: 69, type: !78, isLocal: false, isDefinition: true)
!494 = !DIGlobalVariableExpression(var: !495, expr: !DIExpression())
!495 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !458, file: !459, line: 295, type: !87, isLocal: false, isDefinition: true)
!496 = !DIGlobalVariableExpression(var: !497, expr: !DIExpression())
!497 = distinct !DIGlobalVariable(scope: null, file: !459, line: 208, type: !19, isLocal: true, isDefinition: true)
!498 = !DIGlobalVariableExpression(var: !499, expr: !DIExpression())
!499 = distinct !DIGlobalVariable(scope: null, file: !459, line: 208, type: !500, isLocal: true, isDefinition: true)
!500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !501)
!501 = !{!502}
!502 = !DISubrange(count: 21)
!503 = !DIGlobalVariableExpression(var: !504, expr: !DIExpression())
!504 = distinct !DIGlobalVariable(scope: null, file: !459, line: 214, type: !69, isLocal: true, isDefinition: true)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DISubroutineType(types: !507)
!507 = !{null}
!508 = !DIGlobalVariableExpression(var: !509, expr: !DIExpression())
!509 = distinct !DIGlobalVariable(name: "program_name", scope: !510, file: !511, line: 31, type: !136, isLocal: false, isDefinition: true)
!510 = distinct !DICompileUnit(language: DW_LANG_C11, file: !511, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !512, globals: !513, splitDebugInlining: false, nameTableKind: None)
!511 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!512 = !{!130}
!513 = !{!508, !514, !516}
!514 = !DIGlobalVariableExpression(var: !515, expr: !DIExpression())
!515 = distinct !DIGlobalVariable(scope: null, file: !511, line: 46, type: !299, isLocal: true, isDefinition: true)
!516 = !DIGlobalVariableExpression(var: !517, expr: !DIExpression())
!517 = distinct !DIGlobalVariable(scope: null, file: !511, line: 49, type: !273, isLocal: true, isDefinition: true)
!518 = !DIGlobalVariableExpression(var: !519, expr: !DIExpression())
!519 = distinct !DIGlobalVariable(name: "utf07FF", scope: !520, file: !521, line: 46, type: !548, isLocal: true, isDefinition: true)
!520 = distinct !DISubprogram(name: "proper_name_lite", scope: !521, file: !521, line: 38, type: !522, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !524, retainedNodes: !526)
!521 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!522 = !DISubroutineType(types: !523)
!523 = !{!136, !136, !136}
!524 = distinct !DICompileUnit(language: DW_LANG_C11, file: !521, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !525, splitDebugInlining: false, nameTableKind: None)
!525 = !{!518}
!526 = !{!527, !528, !529, !530, !535}
!527 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !520, file: !521, line: 38, type: !136)
!528 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !520, file: !521, line: 38, type: !136)
!529 = !DILocalVariable(name: "translation", scope: !520, file: !521, line: 40, type: !136)
!530 = !DILocalVariable(name: "w", scope: !520, file: !521, line: 47, type: !531)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !532, line: 37, baseType: !533)
!532 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !236, line: 57, baseType: !534)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !236, line: 42, baseType: !78)
!535 = !DILocalVariable(name: "mbs", scope: !520, file: !521, line: 48, type: !536)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !537, line: 6, baseType: !538)
!537 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !539, line: 21, baseType: !540)
!539 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !539, line: 13, size: 64, elements: !541)
!541 = !{!542, !543}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !540, file: !539, line: 15, baseType: !87, size: 32)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !540, file: !539, line: 20, baseType: !544, size: 32, offset: 32)
!544 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !540, file: !539, line: 16, size: 32, elements: !545)
!545 = !{!546, !547}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !544, file: !539, line: 18, baseType: !78, size: 32)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !544, file: !539, line: 19, baseType: !273, size: 32)
!548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 16, elements: !165)
!549 = !DIGlobalVariableExpression(var: !550, expr: !DIExpression())
!550 = distinct !DIGlobalVariable(scope: null, file: !551, line: 78, type: !299, isLocal: true, isDefinition: true)
!551 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!552 = !DIGlobalVariableExpression(var: !553, expr: !DIExpression())
!553 = distinct !DIGlobalVariable(scope: null, file: !551, line: 79, type: !278, isLocal: true, isDefinition: true)
!554 = !DIGlobalVariableExpression(var: !555, expr: !DIExpression())
!555 = distinct !DIGlobalVariable(scope: null, file: !551, line: 80, type: !394, isLocal: true, isDefinition: true)
!556 = !DIGlobalVariableExpression(var: !557, expr: !DIExpression())
!557 = distinct !DIGlobalVariable(scope: null, file: !551, line: 81, type: !394, isLocal: true, isDefinition: true)
!558 = !DIGlobalVariableExpression(var: !559, expr: !DIExpression())
!559 = distinct !DIGlobalVariable(scope: null, file: !551, line: 82, type: !258, isLocal: true, isDefinition: true)
!560 = !DIGlobalVariableExpression(var: !561, expr: !DIExpression())
!561 = distinct !DIGlobalVariable(scope: null, file: !551, line: 83, type: !164, isLocal: true, isDefinition: true)
!562 = !DIGlobalVariableExpression(var: !563, expr: !DIExpression())
!563 = distinct !DIGlobalVariable(scope: null, file: !551, line: 84, type: !299, isLocal: true, isDefinition: true)
!564 = !DIGlobalVariableExpression(var: !565, expr: !DIExpression())
!565 = distinct !DIGlobalVariable(scope: null, file: !551, line: 85, type: !19, isLocal: true, isDefinition: true)
!566 = !DIGlobalVariableExpression(var: !567, expr: !DIExpression())
!567 = distinct !DIGlobalVariable(scope: null, file: !551, line: 86, type: !19, isLocal: true, isDefinition: true)
!568 = !DIGlobalVariableExpression(var: !569, expr: !DIExpression())
!569 = distinct !DIGlobalVariable(scope: null, file: !551, line: 87, type: !299, isLocal: true, isDefinition: true)
!570 = !DIGlobalVariableExpression(var: !571, expr: !DIExpression())
!571 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !572, file: !551, line: 76, type: !642, isLocal: false, isDefinition: true)
!572 = distinct !DICompileUnit(language: DW_LANG_C11, file: !551, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !573, retainedTypes: !579, globals: !580, splitDebugInlining: false, nameTableKind: None)
!573 = !{!91, !574, !114}
!574 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !92, line: 254, baseType: !78, size: 32, elements: !575)
!575 = !{!576, !577, !578}
!576 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!577 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!578 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!579 = !{!87, !132, !133}
!580 = !{!549, !552, !554, !556, !558, !560, !562, !564, !566, !568, !570, !581, !585, !595, !597, !600, !602, !604, !606, !608, !631, !638, !640}
!581 = !DIGlobalVariableExpression(var: !582, expr: !DIExpression())
!582 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !572, file: !551, line: 92, type: !583, isLocal: false, isDefinition: true)
!583 = !DICompositeType(tag: DW_TAG_array_type, baseType: !584, size: 320, elements: !60)
!584 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !91)
!585 = !DIGlobalVariableExpression(var: !586, expr: !DIExpression())
!586 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !572, file: !551, line: 1040, type: !587, isLocal: false, isDefinition: true)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !551, line: 56, size: 448, elements: !588)
!588 = !{!589, !590, !591, !593, !594}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !587, file: !551, line: 59, baseType: !91, size: 32)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !587, file: !551, line: 62, baseType: !87, size: 32, offset: 32)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !587, file: !551, line: 66, baseType: !592, size: 256, offset: 64)
!592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 256, elements: !300)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !587, file: !551, line: 69, baseType: !136, size: 64, offset: 320)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !587, file: !551, line: 72, baseType: !136, size: 64, offset: 384)
!595 = !DIGlobalVariableExpression(var: !596, expr: !DIExpression())
!596 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !572, file: !551, line: 107, type: !587, isLocal: true, isDefinition: true)
!597 = !DIGlobalVariableExpression(var: !598, expr: !DIExpression())
!598 = distinct !DIGlobalVariable(name: "slot0", scope: !572, file: !551, line: 831, type: !599, isLocal: true, isDefinition: true)
!599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !439)
!600 = !DIGlobalVariableExpression(var: !601, expr: !DIExpression())
!601 = distinct !DIGlobalVariable(scope: null, file: !551, line: 321, type: !164, isLocal: true, isDefinition: true)
!602 = !DIGlobalVariableExpression(var: !603, expr: !DIExpression())
!603 = distinct !DIGlobalVariable(scope: null, file: !551, line: 357, type: !164, isLocal: true, isDefinition: true)
!604 = !DIGlobalVariableExpression(var: !605, expr: !DIExpression())
!605 = distinct !DIGlobalVariable(scope: null, file: !551, line: 358, type: !164, isLocal: true, isDefinition: true)
!606 = !DIGlobalVariableExpression(var: !607, expr: !DIExpression())
!607 = distinct !DIGlobalVariable(scope: null, file: !551, line: 199, type: !19, isLocal: true, isDefinition: true)
!608 = !DIGlobalVariableExpression(var: !609, expr: !DIExpression())
!609 = distinct !DIGlobalVariable(name: "quote", scope: !610, file: !551, line: 228, type: !629, isLocal: true, isDefinition: true)
!610 = distinct !DISubprogram(name: "gettext_quote", scope: !551, file: !551, line: 197, type: !611, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !613)
!611 = !DISubroutineType(types: !612)
!612 = !{!136, !136, !91}
!613 = !{!614, !615, !616, !617, !618}
!614 = !DILocalVariable(name: "msgid", arg: 1, scope: !610, file: !551, line: 197, type: !136)
!615 = !DILocalVariable(name: "s", arg: 2, scope: !610, file: !551, line: 197, type: !91)
!616 = !DILocalVariable(name: "translation", scope: !610, file: !551, line: 199, type: !136)
!617 = !DILocalVariable(name: "w", scope: !610, file: !551, line: 229, type: !531)
!618 = !DILocalVariable(name: "mbs", scope: !610, file: !551, line: 230, type: !619)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !537, line: 6, baseType: !620)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !539, line: 21, baseType: !621)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !539, line: 13, size: 64, elements: !622)
!622 = !{!623, !624}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !621, file: !539, line: 15, baseType: !87, size: 32)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !621, file: !539, line: 20, baseType: !625, size: 32, offset: 32)
!625 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !621, file: !539, line: 16, size: 32, elements: !626)
!626 = !{!627, !628}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !625, file: !539, line: 18, baseType: !78, size: 32)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !625, file: !539, line: 19, baseType: !273, size: 32)
!629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 64, elements: !630)
!630 = !{!166, !275}
!631 = !DIGlobalVariableExpression(var: !632, expr: !DIExpression())
!632 = distinct !DIGlobalVariable(name: "slotvec", scope: !572, file: !551, line: 834, type: !633, isLocal: true, isDefinition: true)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !551, line: 823, size: 128, elements: !635)
!635 = !{!636, !637}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !634, file: !551, line: 825, baseType: !133, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !634, file: !551, line: 826, baseType: !130, size: 64, offset: 64)
!638 = !DIGlobalVariableExpression(var: !639, expr: !DIExpression())
!639 = distinct !DIGlobalVariable(name: "nslots", scope: !572, file: !551, line: 832, type: !87, isLocal: true, isDefinition: true)
!640 = !DIGlobalVariableExpression(var: !641, expr: !DIExpression())
!641 = distinct !DIGlobalVariable(name: "slotvec0", scope: !572, file: !551, line: 833, type: !634, isLocal: true, isDefinition: true)
!642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !643, size: 704, elements: !383)
!643 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !136)
!644 = !DIGlobalVariableExpression(var: !645, expr: !DIExpression())
!645 = distinct !DIGlobalVariable(scope: null, file: !646, line: 67, type: !367, isLocal: true, isDefinition: true)
!646 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!647 = !DIGlobalVariableExpression(var: !648, expr: !DIExpression())
!648 = distinct !DIGlobalVariable(scope: null, file: !646, line: 69, type: !19, isLocal: true, isDefinition: true)
!649 = !DIGlobalVariableExpression(var: !650, expr: !DIExpression())
!650 = distinct !DIGlobalVariable(scope: null, file: !646, line: 83, type: !19, isLocal: true, isDefinition: true)
!651 = !DIGlobalVariableExpression(var: !652, expr: !DIExpression())
!652 = distinct !DIGlobalVariable(scope: null, file: !646, line: 83, type: !273, isLocal: true, isDefinition: true)
!653 = !DIGlobalVariableExpression(var: !654, expr: !DIExpression())
!654 = distinct !DIGlobalVariable(scope: null, file: !646, line: 85, type: !164, isLocal: true, isDefinition: true)
!655 = !DIGlobalVariableExpression(var: !656, expr: !DIExpression())
!656 = distinct !DIGlobalVariable(scope: null, file: !646, line: 88, type: !657, isLocal: true, isDefinition: true)
!657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !658)
!658 = !{!659}
!659 = !DISubrange(count: 171)
!660 = !DIGlobalVariableExpression(var: !661, expr: !DIExpression())
!661 = distinct !DIGlobalVariable(scope: null, file: !646, line: 88, type: !662, isLocal: true, isDefinition: true)
!662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !663)
!663 = !{!664}
!664 = !DISubrange(count: 34)
!665 = !DIGlobalVariableExpression(var: !666, expr: !DIExpression())
!666 = distinct !DIGlobalVariable(scope: null, file: !646, line: 105, type: !154, isLocal: true, isDefinition: true)
!667 = !DIGlobalVariableExpression(var: !668, expr: !DIExpression())
!668 = distinct !DIGlobalVariable(scope: null, file: !646, line: 109, type: !406, isLocal: true, isDefinition: true)
!669 = !DIGlobalVariableExpression(var: !670, expr: !DIExpression())
!670 = distinct !DIGlobalVariable(scope: null, file: !646, line: 113, type: !671, isLocal: true, isDefinition: true)
!671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !672)
!672 = !{!673}
!673 = !DISubrange(count: 28)
!674 = !DIGlobalVariableExpression(var: !675, expr: !DIExpression())
!675 = distinct !DIGlobalVariable(scope: null, file: !646, line: 120, type: !389, isLocal: true, isDefinition: true)
!676 = !DIGlobalVariableExpression(var: !677, expr: !DIExpression())
!677 = distinct !DIGlobalVariable(scope: null, file: !646, line: 127, type: !678, isLocal: true, isDefinition: true)
!678 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !679)
!679 = !{!680}
!680 = !DISubrange(count: 36)
!681 = !DIGlobalVariableExpression(var: !682, expr: !DIExpression())
!682 = distinct !DIGlobalVariable(scope: null, file: !646, line: 134, type: !318, isLocal: true, isDefinition: true)
!683 = !DIGlobalVariableExpression(var: !684, expr: !DIExpression())
!684 = distinct !DIGlobalVariable(scope: null, file: !646, line: 142, type: !685, isLocal: true, isDefinition: true)
!685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !686)
!686 = !{!687}
!687 = !DISubrange(count: 44)
!688 = !DIGlobalVariableExpression(var: !689, expr: !DIExpression())
!689 = distinct !DIGlobalVariable(scope: null, file: !646, line: 150, type: !690, isLocal: true, isDefinition: true)
!690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !691)
!691 = !{!692}
!692 = !DISubrange(count: 48)
!693 = !DIGlobalVariableExpression(var: !694, expr: !DIExpression())
!694 = distinct !DIGlobalVariable(scope: null, file: !646, line: 159, type: !695, isLocal: true, isDefinition: true)
!695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !696)
!696 = !{!697}
!697 = !DISubrange(count: 52)
!698 = !DIGlobalVariableExpression(var: !699, expr: !DIExpression())
!699 = distinct !DIGlobalVariable(scope: null, file: !646, line: 170, type: !700, isLocal: true, isDefinition: true)
!700 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !701)
!701 = !{!702}
!702 = !DISubrange(count: 60)
!703 = !DIGlobalVariableExpression(var: !704, expr: !DIExpression())
!704 = distinct !DIGlobalVariable(scope: null, file: !646, line: 248, type: !258, isLocal: true, isDefinition: true)
!705 = !DIGlobalVariableExpression(var: !706, expr: !DIExpression())
!706 = distinct !DIGlobalVariable(scope: null, file: !646, line: 248, type: !343, isLocal: true, isDefinition: true)
!707 = !DIGlobalVariableExpression(var: !708, expr: !DIExpression())
!708 = distinct !DIGlobalVariable(scope: null, file: !646, line: 254, type: !258, isLocal: true, isDefinition: true)
!709 = !DIGlobalVariableExpression(var: !710, expr: !DIExpression())
!710 = distinct !DIGlobalVariable(scope: null, file: !646, line: 254, type: !149, isLocal: true, isDefinition: true)
!711 = !DIGlobalVariableExpression(var: !712, expr: !DIExpression())
!712 = distinct !DIGlobalVariable(scope: null, file: !646, line: 254, type: !318, isLocal: true, isDefinition: true)
!713 = !DIGlobalVariableExpression(var: !714, expr: !DIExpression())
!714 = distinct !DIGlobalVariable(scope: null, file: !646, line: 259, type: !3, isLocal: true, isDefinition: true)
!715 = !DIGlobalVariableExpression(var: !716, expr: !DIExpression())
!716 = distinct !DIGlobalVariable(scope: null, file: !646, line: 259, type: !717, isLocal: true, isDefinition: true)
!717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !718)
!718 = !{!719}
!719 = !DISubrange(count: 29)
!720 = !DIGlobalVariableExpression(var: !721, expr: !DIExpression())
!721 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !722, file: !723, line: 26, type: !725, isLocal: false, isDefinition: true)
!722 = distinct !DICompileUnit(language: DW_LANG_C11, file: !723, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !724, splitDebugInlining: false, nameTableKind: None)
!723 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!724 = !{!720}
!725 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 376, elements: !726)
!726 = !{!727}
!727 = !DISubrange(count: 47)
!728 = !DIGlobalVariableExpression(var: !729, expr: !DIExpression())
!729 = distinct !DIGlobalVariable(name: "exit_failure", scope: !730, file: !731, line: 24, type: !733, isLocal: false, isDefinition: true)
!730 = distinct !DICompileUnit(language: DW_LANG_C11, file: !731, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !732, splitDebugInlining: false, nameTableKind: None)
!731 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!732 = !{!728}
!733 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !87)
!734 = !DIGlobalVariableExpression(var: !735, expr: !DIExpression())
!735 = distinct !DIGlobalVariable(scope: null, file: !736, line: 34, type: !169, isLocal: true, isDefinition: true)
!736 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!737 = !DIGlobalVariableExpression(var: !738, expr: !DIExpression())
!738 = distinct !DIGlobalVariable(scope: null, file: !736, line: 34, type: !19, isLocal: true, isDefinition: true)
!739 = !DIGlobalVariableExpression(var: !740, expr: !DIExpression())
!740 = distinct !DIGlobalVariable(scope: null, file: !736, line: 34, type: !159, isLocal: true, isDefinition: true)
!741 = !DIGlobalVariableExpression(var: !742, expr: !DIExpression())
!742 = distinct !DIGlobalVariable(scope: null, file: !743, line: 108, type: !54, isLocal: true, isDefinition: true)
!743 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!744 = !DIGlobalVariableExpression(var: !745, expr: !DIExpression())
!745 = distinct !DIGlobalVariable(name: "internal_state", scope: !746, file: !743, line: 97, type: !749, isLocal: true, isDefinition: true)
!746 = distinct !DICompileUnit(language: DW_LANG_C11, file: !743, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !747, globals: !748, splitDebugInlining: false, nameTableKind: None)
!747 = !{!131, !133, !138}
!748 = !{!741, !744}
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !537, line: 6, baseType: !750)
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !539, line: 21, baseType: !751)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !539, line: 13, size: 64, elements: !752)
!752 = !{!753, !754}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !751, file: !539, line: 15, baseType: !87, size: 32)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !751, file: !539, line: 20, baseType: !755, size: 32, offset: 32)
!755 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !751, file: !539, line: 16, size: 32, elements: !756)
!756 = !{!757, !758}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !755, file: !539, line: 18, baseType: !78, size: 32)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !755, file: !539, line: 19, baseType: !273, size: 32)
!759 = !DIGlobalVariableExpression(var: !760, expr: !DIExpression())
!760 = distinct !DIGlobalVariable(scope: null, file: !761, line: 35, type: !278, isLocal: true, isDefinition: true)
!761 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!762 = distinct !DICompileUnit(language: DW_LANG_C11, file: !763, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !764, splitDebugInlining: false, nameTableKind: None)
!763 = !DIFile(filename: "lib/fadvise.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4f050f925b6846c8ec117ac893b2a17f")
!764 = !{!105}
!765 = distinct !DICompileUnit(language: DW_LANG_C11, file: !766, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!766 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!767 = distinct !DICompileUnit(language: DW_LANG_C11, file: !768, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !769, splitDebugInlining: false, nameTableKind: None)
!768 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!769 = !{!131}
!770 = distinct !DICompileUnit(language: DW_LANG_C11, file: !771, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!771 = !DIFile(filename: "lib/fpurge.c", directory: "/src", checksumkind: CSK_MD5, checksum: "33a2be68f69b8676b8fe51ee5bacb54f")
!772 = distinct !DICompileUnit(language: DW_LANG_C11, file: !773, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !769, splitDebugInlining: false, nameTableKind: None)
!773 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!774 = distinct !DICompileUnit(language: DW_LANG_C11, file: !775, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!775 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!776 = distinct !DICompileUnit(language: DW_LANG_C11, file: !646, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !777, retainedTypes: !769, globals: !781, splitDebugInlining: false, nameTableKind: None)
!777 = !{!778}
!778 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !646, line: 40, baseType: !78, size: 32, elements: !779)
!779 = !{!780}
!780 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!781 = !{!644, !647, !649, !651, !653, !655, !660, !665, !667, !669, !674, !676, !681, !683, !688, !693, !698, !703, !705, !707, !709, !711, !713, !715}
!782 = distinct !DICompileUnit(language: DW_LANG_C11, file: !783, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !784, retainedTypes: !815, splitDebugInlining: false, nameTableKind: None)
!783 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!784 = !{!785, !797}
!785 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !786, file: !783, line: 188, baseType: !78, size: 32, elements: !795)
!786 = distinct !DISubprogram(name: "x2nrealloc", scope: !783, file: !783, line: 176, type: !787, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !790)
!787 = !DISubroutineType(types: !788)
!788 = !{!131, !131, !789, !133}
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!790 = !{!791, !792, !793, !794}
!791 = !DILocalVariable(name: "p", arg: 1, scope: !786, file: !783, line: 176, type: !131)
!792 = !DILocalVariable(name: "pn", arg: 2, scope: !786, file: !783, line: 176, type: !789)
!793 = !DILocalVariable(name: "s", arg: 3, scope: !786, file: !783, line: 176, type: !133)
!794 = !DILocalVariable(name: "n", scope: !786, file: !783, line: 178, type: !133)
!795 = !{!796}
!796 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!797 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !798, file: !783, line: 228, baseType: !78, size: 32, elements: !795)
!798 = distinct !DISubprogram(name: "xpalloc", scope: !783, file: !783, line: 223, type: !799, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !805)
!799 = !DISubroutineType(types: !800)
!800 = !{!131, !131, !801, !802, !804, !802}
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !803, line: 130, baseType: !804)
!803 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!804 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !134, line: 35, baseType: !237)
!805 = !{!806, !807, !808, !809, !810, !811, !812, !813, !814}
!806 = !DILocalVariable(name: "pa", arg: 1, scope: !798, file: !783, line: 223, type: !131)
!807 = !DILocalVariable(name: "pn", arg: 2, scope: !798, file: !783, line: 223, type: !801)
!808 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !798, file: !783, line: 223, type: !802)
!809 = !DILocalVariable(name: "n_max", arg: 4, scope: !798, file: !783, line: 223, type: !804)
!810 = !DILocalVariable(name: "s", arg: 5, scope: !798, file: !783, line: 223, type: !802)
!811 = !DILocalVariable(name: "n0", scope: !798, file: !783, line: 230, type: !802)
!812 = !DILocalVariable(name: "n", scope: !798, file: !783, line: 237, type: !802)
!813 = !DILocalVariable(name: "nbytes", scope: !798, file: !783, line: 248, type: !802)
!814 = !DILocalVariable(name: "adjusted_nbytes", scope: !798, file: !783, line: 252, type: !802)
!815 = !{!130, !131, !196, !237, !135}
!816 = distinct !DICompileUnit(language: DW_LANG_C11, file: !736, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !817, splitDebugInlining: false, nameTableKind: None)
!817 = !{!734, !737, !739}
!818 = distinct !DICompileUnit(language: DW_LANG_C11, file: !819, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !820, retainedTypes: !821, splitDebugInlining: false, nameTableKind: None)
!819 = !DIFile(filename: "lib/xstrtoimax.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d613cb456542443dde992ed5c05f2acb")
!820 = !{!76}
!821 = !{!196, !237, !135, !822}
!822 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !823, line: 101, baseType: !824)
!823 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!824 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !236, line: 72, baseType: !237)
!825 = distinct !DICompileUnit(language: DW_LANG_C11, file: !826, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !769, splitDebugInlining: false, nameTableKind: None)
!826 = !DIFile(filename: "lib/fopen.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e2a73b267ffe85e9e2028d0b4278a6b8")
!827 = distinct !DICompileUnit(language: DW_LANG_C11, file: !828, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!828 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!829 = distinct !DICompileUnit(language: DW_LANG_C11, file: !830, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !831, splitDebugInlining: false, nameTableKind: None)
!830 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!831 = !{!196, !135, !131}
!832 = distinct !DICompileUnit(language: DW_LANG_C11, file: !761, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !833, splitDebugInlining: false, nameTableKind: None)
!833 = !{!834, !759}
!834 = !DIGlobalVariableExpression(var: !835, expr: !DIExpression())
!835 = distinct !DIGlobalVariable(scope: null, file: !761, line: 35, type: !164, isLocal: true, isDefinition: true)
!836 = distinct !DICompileUnit(language: DW_LANG_C11, file: !837, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!837 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!838 = distinct !DICompileUnit(language: DW_LANG_C11, file: !839, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !769, splitDebugInlining: false, nameTableKind: None)
!839 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!840 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!841 = !{i32 7, !"Dwarf Version", i32 5}
!842 = !{i32 2, !"Debug Info Version", i32 3}
!843 = !{i32 1, !"wchar_size", i32 4}
!844 = !{i32 8, !"PIC Level", i32 2}
!845 = !{i32 7, !"PIE Level", i32 2}
!846 = !{i32 7, !"uwtable", i32 2}
!847 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 97, type: !848, scopeLine: 98, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !850)
!848 = !DISubroutineType(types: !849)
!849 = !{null, !87}
!850 = !{!851}
!851 = !DILocalVariable(name: "status", arg: 1, scope: !847, file: !2, line: 97, type: !87)
!852 = !DILocation(line: 0, scope: !847)
!853 = !DILocation(line: 99, column: 14, scope: !854)
!854 = distinct !DILexicalBlock(scope: !847, file: !2, line: 99, column: 7)
!855 = !DILocation(line: 99, column: 7, scope: !847)
!856 = !DILocation(line: 100, column: 5, scope: !857)
!857 = distinct !DILexicalBlock(scope: !854, file: !2, line: 100, column: 5)
!858 = !{!859, !859, i64 0}
!859 = !{!"any pointer", !860, i64 0}
!860 = !{!"omnipotent char", !861, i64 0}
!861 = !{!"Simple C/C++ TBAA"}
!862 = !DILocation(line: 103, column: 7, scope: !863)
!863 = distinct !DILexicalBlock(scope: !854, file: !2, line: 102, column: 5)
!864 = !DILocation(line: 112, column: 7, scope: !863)
!865 = !DILocation(line: 729, column: 3, scope: !866, inlinedAt: !868)
!866 = distinct !DISubprogram(name: "emit_stdin_note", scope: !86, file: !86, line: 727, type: !506, scopeLine: 728, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !867)
!867 = !{}
!868 = distinct !DILocation(line: 117, column: 7, scope: !863)
!869 = !DILocation(line: 736, column: 3, scope: !870, inlinedAt: !871)
!870 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !86, file: !86, line: 734, type: !506, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !867)
!871 = distinct !DILocation(line: 118, column: 7, scope: !863)
!872 = !DILocation(line: 153, column: 7, scope: !863)
!873 = !DILocation(line: 157, column: 7, scope: !863)
!874 = !DILocation(line: 161, column: 7, scope: !863)
!875 = !DILocation(line: 174, column: 7, scope: !863)
!876 = !DILocation(line: 175, column: 7, scope: !863)
!877 = !DILocation(line: 184, column: 7, scope: !863)
!878 = !DILocalVariable(name: "program", arg: 1, scope: !879, file: !86, line: 836, type: !136)
!879 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !86, file: !86, line: 836, type: !880, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !882)
!880 = !DISubroutineType(types: !881)
!881 = !{null, !136}
!882 = !{!878, !883, !890, !891, !893, !894}
!883 = !DILocalVariable(name: "infomap", scope: !879, file: !86, line: 838, type: !884)
!884 = !DICompositeType(tag: DW_TAG_array_type, baseType: !885, size: 896, elements: !20)
!885 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !886)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !879, file: !86, line: 838, size: 128, elements: !887)
!887 = !{!888, !889}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !886, file: !86, line: 838, baseType: !136, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !886, file: !86, line: 838, baseType: !136, size: 64, offset: 64)
!890 = !DILocalVariable(name: "node", scope: !879, file: !86, line: 848, type: !136)
!891 = !DILocalVariable(name: "map_prog", scope: !879, file: !86, line: 849, type: !892)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!893 = !DILocalVariable(name: "lc_messages", scope: !879, file: !86, line: 861, type: !136)
!894 = !DILocalVariable(name: "url_program", scope: !879, file: !86, line: 874, type: !136)
!895 = !DILocation(line: 0, scope: !879, inlinedAt: !896)
!896 = distinct !DILocation(line: 192, column: 7, scope: !863)
!897 = !DILocation(line: 857, column: 3, scope: !879, inlinedAt: !896)
!898 = !DILocation(line: 861, column: 29, scope: !879, inlinedAt: !896)
!899 = !DILocation(line: 862, column: 7, scope: !900, inlinedAt: !896)
!900 = distinct !DILexicalBlock(scope: !879, file: !86, line: 862, column: 7)
!901 = !DILocation(line: 862, column: 19, scope: !900, inlinedAt: !896)
!902 = !DILocation(line: 862, column: 22, scope: !900, inlinedAt: !896)
!903 = !DILocation(line: 862, column: 7, scope: !879, inlinedAt: !896)
!904 = !DILocation(line: 868, column: 7, scope: !905, inlinedAt: !896)
!905 = distinct !DILexicalBlock(scope: !900, file: !86, line: 863, column: 5)
!906 = !DILocation(line: 870, column: 5, scope: !905, inlinedAt: !896)
!907 = !DILocation(line: 875, column: 3, scope: !879, inlinedAt: !896)
!908 = !DILocation(line: 877, column: 3, scope: !879, inlinedAt: !896)
!909 = !DILocation(line: 195, column: 3, scope: !847)
!910 = !DISubprogram(name: "dcgettext", scope: !911, file: !911, line: 51, type: !912, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!911 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!912 = !DISubroutineType(types: !913)
!913 = !{!130, !136, !136, !87}
!914 = !DISubprogram(name: "__fprintf_chk", scope: !915, file: !915, line: 93, type: !916, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!915 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!916 = !DISubroutineType(types: !917)
!917 = !{!87, !918, !87, !919, null}
!918 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !209)
!919 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !136)
!920 = !DISubprogram(name: "__printf_chk", scope: !915, file: !915, line: 95, type: !921, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!921 = !DISubroutineType(types: !922)
!922 = !{!87, !87, !919, null}
!923 = !DISubprogram(name: "fputs_unlocked", scope: !924, file: !924, line: 691, type: !925, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!924 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!925 = !DISubroutineType(types: !926)
!926 = !{!87, !919, !918}
!927 = !DILocation(line: 0, scope: !186)
!928 = !DILocation(line: 581, column: 7, scope: !194)
!929 = !{!930, !930, i64 0}
!930 = !{!"int", !860, i64 0}
!931 = !DILocation(line: 581, column: 19, scope: !194)
!932 = !DILocation(line: 581, column: 7, scope: !186)
!933 = !DILocation(line: 585, column: 26, scope: !193)
!934 = !DILocation(line: 0, scope: !193)
!935 = !DILocation(line: 586, column: 23, scope: !193)
!936 = !DILocation(line: 586, column: 28, scope: !193)
!937 = !DILocation(line: 586, column: 32, scope: !193)
!938 = !{!860, !860, i64 0}
!939 = !DILocation(line: 586, column: 38, scope: !193)
!940 = !DILocalVariable(name: "__s1", arg: 1, scope: !941, file: !942, line: 1359, type: !136)
!941 = distinct !DISubprogram(name: "streq", scope: !942, file: !942, line: 1359, type: !943, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !945)
!942 = !DIFile(filename: "./lib/string.h", directory: "/src")
!943 = !DISubroutineType(types: !944)
!944 = !{!196, !136, !136}
!945 = !{!940, !946}
!946 = !DILocalVariable(name: "__s2", arg: 2, scope: !941, file: !942, line: 1359, type: !136)
!947 = !DILocation(line: 0, scope: !941, inlinedAt: !948)
!948 = distinct !DILocation(line: 586, column: 41, scope: !193)
!949 = !DILocation(line: 1361, column: 11, scope: !941, inlinedAt: !948)
!950 = !DILocation(line: 1361, column: 10, scope: !941, inlinedAt: !948)
!951 = !DILocation(line: 586, column: 19, scope: !193)
!952 = !DILocation(line: 587, column: 5, scope: !193)
!953 = !DILocation(line: 588, column: 7, scope: !954)
!954 = distinct !DILexicalBlock(scope: !186, file: !86, line: 588, column: 7)
!955 = !DILocation(line: 588, column: 7, scope: !186)
!956 = !DILocation(line: 590, column: 7, scope: !957)
!957 = distinct !DILexicalBlock(scope: !954, file: !86, line: 589, column: 5)
!958 = !DILocation(line: 591, column: 7, scope: !957)
!959 = !DILocation(line: 595, column: 37, scope: !186)
!960 = !DILocation(line: 595, column: 35, scope: !186)
!961 = !DILocation(line: 596, column: 29, scope: !186)
!962 = !DILocation(line: 597, column: 8, scope: !202)
!963 = !DILocation(line: 597, column: 7, scope: !186)
!964 = !DILocation(line: 604, column: 24, scope: !201)
!965 = !DILocation(line: 604, column: 12, scope: !202)
!966 = !DILocation(line: 0, scope: !200)
!967 = !DILocation(line: 610, column: 16, scope: !200)
!968 = !DILocation(line: 610, column: 7, scope: !200)
!969 = !DILocation(line: 611, column: 21, scope: !200)
!970 = !{!971, !971, i64 0}
!971 = !{!"short", !860, i64 0}
!972 = !DILocation(line: 611, column: 19, scope: !200)
!973 = !DILocation(line: 611, column: 16, scope: !200)
!974 = !DILocation(line: 610, column: 30, scope: !200)
!975 = distinct !{!975, !968, !969, !976}
!976 = !{!"llvm.loop.mustprogress"}
!977 = !DILocation(line: 612, column: 18, scope: !978)
!978 = distinct !DILexicalBlock(scope: !200, file: !86, line: 612, column: 11)
!979 = !DILocation(line: 612, column: 11, scope: !200)
!980 = !DILocation(line: 618, column: 5, scope: !200)
!981 = !DILocation(line: 620, column: 23, scope: !186)
!982 = !DILocation(line: 625, column: 39, scope: !186)
!983 = !DILocation(line: 626, column: 3, scope: !186)
!984 = !DILocation(line: 626, column: 10, scope: !186)
!985 = !DILocation(line: 626, column: 21, scope: !186)
!986 = !DILocation(line: 628, column: 44, scope: !987)
!987 = distinct !DILexicalBlock(scope: !988, file: !86, line: 628, column: 11)
!988 = distinct !DILexicalBlock(scope: !186, file: !86, line: 627, column: 5)
!989 = !DILocation(line: 628, column: 32, scope: !987)
!990 = !DILocation(line: 628, column: 49, scope: !987)
!991 = !DILocation(line: 628, column: 11, scope: !988)
!992 = !DILocation(line: 630, column: 11, scope: !993)
!993 = distinct !DILexicalBlock(scope: !988, file: !86, line: 630, column: 11)
!994 = !DILocation(line: 630, column: 11, scope: !988)
!995 = !DILocation(line: 632, column: 26, scope: !996)
!996 = distinct !DILexicalBlock(scope: !997, file: !86, line: 632, column: 15)
!997 = distinct !DILexicalBlock(scope: !993, file: !86, line: 631, column: 9)
!998 = !DILocation(line: 632, column: 34, scope: !996)
!999 = !DILocation(line: 632, column: 37, scope: !996)
!1000 = !DILocation(line: 632, column: 15, scope: !997)
!1001 = !DILocation(line: 636, column: 16, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !997, file: !86, line: 636, column: 15)
!1003 = !DILocation(line: 636, column: 29, scope: !1002)
!1004 = !DILocation(line: 640, column: 16, scope: !988)
!1005 = distinct !{!1005, !983, !1006, !976}
!1006 = !DILocation(line: 641, column: 5, scope: !186)
!1007 = !DILocation(line: 644, column: 3, scope: !186)
!1008 = !DILocation(line: 0, scope: !941, inlinedAt: !1009)
!1009 = distinct !DILocation(line: 648, column: 31, scope: !186)
!1010 = !DILocation(line: 0, scope: !941, inlinedAt: !1011)
!1011 = distinct !DILocation(line: 649, column: 31, scope: !186)
!1012 = !DILocation(line: 0, scope: !941, inlinedAt: !1013)
!1013 = distinct !DILocation(line: 650, column: 31, scope: !186)
!1014 = !DILocation(line: 0, scope: !941, inlinedAt: !1015)
!1015 = distinct !DILocation(line: 651, column: 31, scope: !186)
!1016 = !DILocation(line: 0, scope: !941, inlinedAt: !1017)
!1017 = distinct !DILocation(line: 652, column: 31, scope: !186)
!1018 = !DILocation(line: 0, scope: !941, inlinedAt: !1019)
!1019 = distinct !DILocation(line: 653, column: 31, scope: !186)
!1020 = !DILocation(line: 0, scope: !941, inlinedAt: !1021)
!1021 = distinct !DILocation(line: 654, column: 31, scope: !186)
!1022 = !DILocation(line: 0, scope: !941, inlinedAt: !1023)
!1023 = distinct !DILocation(line: 655, column: 31, scope: !186)
!1024 = !DILocation(line: 0, scope: !941, inlinedAt: !1025)
!1025 = distinct !DILocation(line: 656, column: 31, scope: !186)
!1026 = !DILocation(line: 0, scope: !941, inlinedAt: !1027)
!1027 = distinct !DILocation(line: 657, column: 31, scope: !186)
!1028 = !DILocation(line: 663, column: 7, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !186, file: !86, line: 663, column: 7)
!1030 = !DILocation(line: 664, column: 7, scope: !1029)
!1031 = !DILocation(line: 664, column: 10, scope: !1029)
!1032 = !DILocation(line: 663, column: 7, scope: !186)
!1033 = !DILocation(line: 669, column: 7, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1029, file: !86, line: 665, column: 5)
!1035 = !DILocation(line: 671, column: 5, scope: !1034)
!1036 = !DILocation(line: 676, column: 7, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1029, file: !86, line: 673, column: 5)
!1038 = !DILocation(line: 679, column: 3, scope: !186)
!1039 = !DILocation(line: 683, column: 3, scope: !186)
!1040 = !DILocation(line: 686, column: 3, scope: !186)
!1041 = !DILocation(line: 688, column: 3, scope: !186)
!1042 = !DILocation(line: 691, column: 3, scope: !186)
!1043 = !DILocation(line: 695, column: 3, scope: !186)
!1044 = !DILocation(line: 696, column: 1, scope: !186)
!1045 = !DISubprogram(name: "setlocale", scope: !1046, file: !1046, line: 122, type: !1047, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!1046 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!130, !87, !136}
!1049 = !DISubprogram(name: "strncmp", scope: !1050, file: !1050, line: 159, type: !1051, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!1050 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!87, !136, !136, !133}
!1053 = !DISubprogram(name: "exit", scope: !1054, file: !1054, line: 624, type: !848, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !867)
!1054 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1055 = !DISubprogram(name: "getenv", scope: !1054, file: !1054, line: 641, type: !1056, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!130, !136}
!1058 = !DISubprogram(name: "strcmp", scope: !1050, file: !1050, line: 156, type: !1059, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!87, !136, !136}
!1061 = !DISubprogram(name: "strspn", scope: !1050, file: !1050, line: 297, type: !1062, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{!135, !136, !136}
!1064 = !DISubprogram(name: "strchr", scope: !1050, file: !1050, line: 246, type: !1065, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{!130, !136, !87}
!1067 = !DISubprogram(name: "__ctype_b_loc", scope: !115, file: !115, line: 79, type: !1068, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{!1070}
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !132)
!1073 = !DISubprogram(name: "strcspn", scope: !1050, file: !1050, line: 293, type: !1062, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!1074 = !DISubprogram(name: "fwrite_unlocked", scope: !924, file: !924, line: 704, type: !1075, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{!133, !1077, !133, !133, !918}
!1077 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1078)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1080 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 1630, type: !1081, scopeLine: 1631, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1084)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{!87, !87, !1083}
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!1084 = !{!1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1096}
!1085 = !DILocalVariable(name: "argc", arg: 1, scope: !1080, file: !2, line: 1630, type: !87)
!1086 = !DILocalVariable(name: "argv", arg: 2, scope: !1080, file: !2, line: 1630, type: !1083)
!1087 = !DILocalVariable(name: "opt", scope: !1080, file: !2, line: 1632, type: !87)
!1088 = !DILocalVariable(name: "input_fh", scope: !1080, file: !2, line: 1633, type: !209)
!1089 = !DILocalVariable(name: "infile", scope: !1080, file: !2, line: 1634, type: !136)
!1090 = !DILocalVariable(name: "decode", scope: !1080, file: !2, line: 1637, type: !196)
!1091 = !DILocalVariable(name: "ignore_garbage", scope: !1080, file: !2, line: 1639, type: !196)
!1092 = !DILocalVariable(name: "wrap_column", scope: !1080, file: !2, line: 1641, type: !802)
!1093 = !DILocalVariable(name: "w", scope: !1094, file: !2, line: 1664, type: !822)
!1094 = distinct !DILexicalBlock(scope: !1095, file: !2, line: 1663, column: 9)
!1095 = distinct !DILexicalBlock(scope: !1080, file: !2, line: 1657, column: 7)
!1096 = !DILocalVariable(name: "s_err", scope: !1094, file: !2, line: 1665, type: !1097)
!1097 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !77, line: 43, baseType: !76)
!1098 = !DILocation(line: 0, scope: !1080)
!1099 = !DILocation(line: 1648, column: 21, scope: !1080)
!1100 = !DILocation(line: 1648, column: 3, scope: !1080)
!1101 = !DILocation(line: 1649, column: 3, scope: !1080)
!1102 = !DILocation(line: 1650, column: 3, scope: !1080)
!1103 = !DILocation(line: 1651, column: 3, scope: !1080)
!1104 = !DILocation(line: 1653, column: 3, scope: !1080)
!1105 = !DILocation(line: 1655, column: 3, scope: !1080)
!1106 = !DILocation(line: 1641, column: 9, scope: !1080)
!1107 = !DILocation(line: 1655, column: 17, scope: !1080)
!1108 = distinct !{!1108, !1105, !1109, !976}
!1109 = !DILocation(line: 1698, column: 7, scope: !1080)
!1110 = !DILocation(line: 1664, column: 11, scope: !1094)
!1111 = !DILocation(line: 1665, column: 44, scope: !1094)
!1112 = !DILocation(line: 0, scope: !1094)
!1113 = !DILocation(line: 1665, column: 32, scope: !1094)
!1114 = !DILocation(line: 1666, column: 32, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1094, file: !2, line: 1666, column: 15)
!1116 = !DILocation(line: 1666, column: 40, scope: !1115)
!1117 = !DILocation(line: 1667, column: 13, scope: !1115)
!1118 = !DILocation(line: 1669, column: 31, scope: !1094)
!1119 = !DILocation(line: 1669, column: 51, scope: !1094)
!1120 = !DILocation(line: 1670, column: 9, scope: !1095)
!1121 = !DILocation(line: 1671, column: 9, scope: !1095)
!1122 = !DILocation(line: 1675, column: 9, scope: !1095)
!1123 = !DILocation(line: 1691, column: 7, scope: !1095)
!1124 = !DILocation(line: 1693, column: 7, scope: !1095)
!1125 = !DILocation(line: 1696, column: 9, scope: !1095)
!1126 = !DILocation(line: 1805, column: 14, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1080, file: !2, line: 1805, column: 7)
!1128 = !DILocation(line: 1805, column: 12, scope: !1127)
!1129 = !DILocation(line: 1805, column: 21, scope: !1127)
!1130 = !DILocation(line: 1805, column: 7, scope: !1080)
!1131 = !DILocation(line: 1807, column: 7, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1127, file: !2, line: 1806, column: 5)
!1133 = !DILocation(line: 1808, column: 7, scope: !1132)
!1134 = !DILocation(line: 1811, column: 14, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1080, file: !2, line: 1811, column: 7)
!1136 = !DILocation(line: 1811, column: 7, scope: !1080)
!1137 = !DILocation(line: 1812, column: 14, scope: !1135)
!1138 = !DILocation(line: 1812, column: 5, scope: !1135)
!1139 = !DILocation(line: 0, scope: !1135)
!1140 = !DILocation(line: 0, scope: !941, inlinedAt: !1141)
!1141 = distinct !DILocation(line: 1816, column: 7, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1080, file: !2, line: 1816, column: 7)
!1143 = !DILocation(line: 1361, column: 11, scope: !941, inlinedAt: !1141)
!1144 = !DILocation(line: 1361, column: 10, scope: !941, inlinedAt: !1141)
!1145 = !DILocation(line: 1816, column: 7, scope: !1080)
!1146 = !DILocation(line: 1819, column: 18, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1142, file: !2, line: 1817, column: 5)
!1148 = !DILocation(line: 1820, column: 5, scope: !1147)
!1149 = !DILocation(line: 1823, column: 18, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1142, file: !2, line: 1822, column: 5)
!1151 = !DILocation(line: 1824, column: 20, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1150, file: !2, line: 1824, column: 11)
!1153 = !DILocation(line: 1824, column: 11, scope: !1150)
!1154 = !DILocation(line: 1825, column: 9, scope: !1152)
!1155 = !DILocation(line: 0, scope: !1142)
!1156 = !DILocation(line: 1828, column: 3, scope: !1080)
!1157 = !DILocation(line: 0, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1080, file: !2, line: 1830, column: 7)
!1159 = !DILocation(line: 1830, column: 7, scope: !1080)
!1160 = !DILocation(line: 1831, column: 42, scope: !1158)
!1161 = !DILocation(line: 1831, column: 5, scope: !1158)
!1162 = !DILocation(line: 1833, column: 5, scope: !1158)
!1163 = !DISubprogram(name: "bindtextdomain", scope: !911, file: !911, line: 86, type: !1164, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{!130, !136, !136}
!1166 = !DISubprogram(name: "textdomain", scope: !911, file: !911, line: 82, type: !1056, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!1167 = !DISubprogram(name: "atexit", scope: !1054, file: !1054, line: 602, type: !1168, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{!87, !505}
!1170 = !DISubprogram(name: "getopt_long", scope: !412, file: !412, line: 66, type: !1171, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{!87, !87, !1173, !136, !1175, !417}
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!1176 = !DISubprogram(name: "__errno_location", scope: !1177, file: !1177, line: 37, type: !1178, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
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
!1190 = !DILocalVariable(name: "sum", scope: !1180, file: !2, line: 1565, type: !802)
!1191 = !DILocalVariable(name: "ctx", scope: !1180, file: !2, line: 1566, type: !1192)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "base64_decode_context", file: !1193, line: 47, size: 64, elements: !1194)
!1193 = !DIFile(filename: "./lib/base64.h", directory: "/src", checksumkind: CSK_MD5, checksum: "b7f4aff5f88956a8b1e90ed552346cd0")
!1194 = !{!1195, !1196}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !1192, file: !1193, line: 49, baseType: !87, size: 32)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1192, file: !1193, line: 50, baseType: !273, size: 32, offset: 32)
!1197 = !DILocalVariable(name: "ok", scope: !1198, file: !2, line: 1578, type: !196)
!1198 = distinct !DILexicalBlock(scope: !1180, file: !2, line: 1577, column: 5)
!1199 = !DILocalVariable(name: "n", scope: !1200, file: !2, line: 1583, type: !802)
!1200 = distinct !DILexicalBlock(scope: !1198, file: !2, line: 1582, column: 9)
!1201 = !DILocalVariable(name: "i", scope: !1202, file: !2, line: 1588, type: !802)
!1202 = distinct !DILexicalBlock(scope: !1203, file: !2, line: 1588, column: 15)
!1203 = distinct !DILexicalBlock(scope: !1204, file: !2, line: 1587, column: 13)
!1204 = distinct !DILexicalBlock(scope: !1200, file: !2, line: 1586, column: 15)
!1205 = !DILocalVariable(name: "n", scope: !1206, file: !2, line: 1607, type: !802)
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
!1226 = !{!1227, !930, i64 0}
!1227 = !{!"base64_decode_context", !930, i64 0, !860, i64 4}
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
!1266 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1267 = !DISubroutineType(types: !1268)
!1268 = !{!131, !131, !1078, !133}
!1269 = !{!1264, !1270, !1271}
!1270 = !DILocalVariable(name: "__src", arg: 2, scope: !1265, file: !1266, line: 34, type: !1078)
!1271 = !DILocalVariable(name: "__len", arg: 3, scope: !1265, file: !1266, line: 34, type: !133)
!1272 = !DILocation(line: 0, scope: !1265, inlinedAt: !1273)
!1273 = distinct !DILocation(line: 1594, column: 21, scope: !1235)
!1274 = !DILocation(line: 36, column: 10, scope: !1265, inlinedAt: !1273)
!1275 = !DILocation(line: 1588, column: 35, scope: !1237)
!1276 = !DILocation(line: 1588, column: 39, scope: !1237)
!1277 = !DILocation(line: 1588, column: 15, scope: !1202)
!1278 = distinct !{!1278, !1277, !1279, !976}
!1279 = !DILocation(line: 1595, column: 17, scope: !1202)
!1280 = !DILocation(line: 1583, column: 17, scope: !1200)
!1281 = !DILocalVariable(name: "__stream", arg: 1, scope: !1282, file: !1283, line: 135, type: !209)
!1282 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1283, file: !1283, line: 135, type: !1284, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1286)
!1283 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1284 = !DISubroutineType(types: !1285)
!1285 = !{!87, !209}
!1286 = !{!1281}
!1287 = !DILocation(line: 0, scope: !1282, inlinedAt: !1288)
!1288 = distinct !DILocation(line: 1600, column: 15, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1200, file: !2, line: 1600, column: 15)
!1290 = !DILocation(line: 137, column: 10, scope: !1282, inlinedAt: !1288)
!1291 = !{!1292, !930, i64 0}
!1292 = !{!"_IO_FILE", !930, i64 0, !859, i64 8, !859, i64 16, !859, i64 24, !859, i64 32, !859, i64 40, !859, i64 48, !859, i64 56, !859, i64 64, !859, i64 72, !859, i64 80, !859, i64 88, !859, i64 96, !859, i64 104, !930, i64 112, !930, i64 116, !1293, i64 120, !971, i64 128, !860, i64 130, !860, i64 131, !859, i64 136, !1293, i64 144, !859, i64 152, !859, i64 160, !859, i64 168, !859, i64 176, !1293, i64 184, !930, i64 192, !860, i64 196}
!1293 = !{!"long", !860, i64 0}
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
!1305 = distinct !{!1305, !1228, !1306, !976}
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
!1324 = !{!196, !1221, !1325, !801}
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !130)
!1327 = !{!1321, !1328, !1329, !1330, !1331, !1332, !1333, !1334}
!1328 = !DILocalVariable(name: "out", arg: 2, scope: !1322, file: !2, line: 415, type: !1325)
!1329 = !DILocalVariable(name: "outlen", arg: 3, scope: !1322, file: !2, line: 415, type: !801)
!1330 = !DILocalVariable(name: "padbuf", scope: !1322, file: !2, line: 424, type: !299)
!1331 = !DILocalVariable(name: "pending_len", scope: !1322, file: !2, line: 425, type: !802)
!1332 = !DILocalVariable(name: "auto_padding", scope: !1322, file: !2, line: 426, type: !802)
!1333 = !DILocalVariable(name: "n", scope: !1322, file: !2, line: 427, type: !802)
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
!1389 = distinct !DISubprogram(name: "write_error", scope: !86, file: !86, line: 946, type: !506, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1390)
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
!1409 = !{null, !209, !136, !209, !802}
!1410 = !{!1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419}
!1411 = !DILocalVariable(name: "in", arg: 1, scope: !1407, file: !2, line: 1488, type: !209)
!1412 = !DILocalVariable(name: "infile", arg: 2, scope: !1407, file: !2, line: 1488, type: !136)
!1413 = !DILocalVariable(name: "out", arg: 3, scope: !1407, file: !2, line: 1488, type: !209)
!1414 = !DILocalVariable(name: "wrap_column", arg: 4, scope: !1407, file: !2, line: 1488, type: !802)
!1415 = !DILocalVariable(name: "current_column", scope: !1407, file: !2, line: 1490, type: !802)
!1416 = !DILocalVariable(name: "inbuf", scope: !1407, file: !2, line: 1491, type: !130)
!1417 = !DILocalVariable(name: "outbuf", scope: !1407, file: !2, line: 1491, type: !130)
!1418 = !DILocalVariable(name: "sum", scope: !1407, file: !2, line: 1492, type: !802)
!1419 = !DILocalVariable(name: "n", scope: !1420, file: !2, line: 1507, type: !802)
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
!1440 = distinct !{!1440, !1426, !1441, !976}
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
!1452 = !{null, !136, !802, !802, !801, !209}
!1453 = !{!1449, !1454, !1455, !1456, !1457, !1458, !1463, !1464, !1465, !1467, !1470, !1475, !1476}
!1454 = !DILocalVariable(name: "len", arg: 2, scope: !1450, file: !2, line: 1443, type: !802)
!1455 = !DILocalVariable(name: "wrap_column", arg: 3, scope: !1450, file: !2, line: 1444, type: !802)
!1456 = !DILocalVariable(name: "current_column", arg: 4, scope: !1450, file: !2, line: 1444, type: !801)
!1457 = !DILocalVariable(name: "out", arg: 5, scope: !1450, file: !2, line: 1444, type: !209)
!1458 = !DILocalVariable(name: "__ptr", scope: !1459, file: !2, line: 1449, type: !136)
!1459 = distinct !DILexicalBlock(scope: !1460, file: !2, line: 1449, column: 11)
!1460 = distinct !DILexicalBlock(scope: !1461, file: !2, line: 1449, column: 11)
!1461 = distinct !DILexicalBlock(scope: !1462, file: !2, line: 1447, column: 5)
!1462 = distinct !DILexicalBlock(scope: !1450, file: !2, line: 1446, column: 7)
!1463 = !DILocalVariable(name: "__stream", scope: !1459, file: !2, line: 1449, type: !209)
!1464 = !DILocalVariable(name: "__cnt", scope: !1459, file: !2, line: 1449, type: !133)
!1465 = !DILocalVariable(name: "written", scope: !1466, file: !2, line: 1453, type: !802)
!1466 = distinct !DILexicalBlock(scope: !1462, file: !2, line: 1453, column: 5)
!1467 = !DILocalVariable(name: "to_write", scope: !1468, file: !2, line: 1455, type: !802)
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
!1507 = !{!1292, !859, i64 40}
!1508 = !{!1292, !859, i64 48}
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
!1536 = distinct !{!1536, !1535, !1537, !976}
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
!1547 = distinct !{!1547, !1424, !1548, !976}
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
!1573 = !DISubprogram(name: "fflush_unlocked", scope: !924, file: !924, line: 239, type: !1284, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!1574 = !DISubprogram(name: "clearerr_unlocked", scope: !924, file: !924, line: 794, type: !1575, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!1575 = !DISubroutineType(types: !1576)
!1576 = !{null, !209}
!1577 = !DISubprogram(name: "__overflow", scope: !924, file: !924, line: 886, type: !1578, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
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
!1591 = !DILocation(line: 0, scope: !941, inlinedAt: !1592)
!1592 = distinct !DILocation(line: 1478, column: 11, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1594, file: !2, line: 1478, column: 11)
!1594 = distinct !DILexicalBlock(scope: !1588, file: !2, line: 1477, column: 5)
!1595 = !DILocation(line: 1361, column: 11, scope: !941, inlinedAt: !1592)
!1596 = !DILocation(line: 1361, column: 10, scope: !941, inlinedAt: !1592)
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
!1637 = !{null, !919, !802, !1326, !802}
!1638 = !{!1639, !1640, !1641, !1642}
!1639 = !DILocalVariable(name: "in", arg: 1, scope: !1635, file: !429, line: 88, type: !919)
!1640 = !DILocalVariable(name: "inlen", arg: 2, scope: !1635, file: !429, line: 88, type: !802)
!1641 = !DILocalVariable(name: "out", arg: 3, scope: !1635, file: !429, line: 89, type: !1326)
!1642 = !DILocalVariable(name: "outlen", arg: 4, scope: !1635, file: !429, line: 89, type: !802)
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
!1658 = !DILocalVariable(name: "in", arg: 1, scope: !1659, file: !429, line: 69, type: !919)
!1659 = distinct !DISubprogram(name: "base64_encode_fast", scope: !429, file: !429, line: 69, type: !1660, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !1662)
!1660 = !DISubroutineType(types: !1661)
!1661 = !{null, !919, !802, !1326}
!1662 = !{!1658, !1663, !1664}
!1663 = !DILocalVariable(name: "inlen", arg: 2, scope: !1659, file: !429, line: 69, type: !802)
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
!1694 = distinct !{!1694, !1667, !1695, !976}
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
!1742 = distinct !{!1742, !1698, !1743, !976}
!1743 = !DILocation(line: 129, column: 5, scope: !1635)
!1744 = !DILocation(line: 131, column: 7, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1635, file: !429, line: 131, column: 7)
!1746 = !DILocation(line: 131, column: 7, scope: !1635)
!1747 = !DILocation(line: 132, column: 10, scope: !1745)
!1748 = !DILocation(line: 132, column: 5, scope: !1745)
!1749 = !DILocation(line: 133, column: 1, scope: !1635)
!1750 = distinct !DISubprogram(name: "base64_encode_alloc", scope: !429, file: !429, line: 145, type: !1751, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !1753)
!1751 = !DISubroutineType(types: !1752)
!1752 = !{!802, !136, !802, !1083}
!1753 = !{!1754, !1755, !1756, !1757, !1758}
!1754 = !DILocalVariable(name: "in", arg: 1, scope: !1750, file: !429, line: 145, type: !136)
!1755 = !DILocalVariable(name: "inlen", arg: 2, scope: !1750, file: !429, line: 145, type: !802)
!1756 = !DILocalVariable(name: "out", arg: 3, scope: !1750, file: !429, line: 145, type: !1083)
!1757 = !DILocalVariable(name: "in_over_3", scope: !1750, file: !429, line: 150, type: !802)
!1758 = !DILocalVariable(name: "outlen", scope: !1750, file: !429, line: 150, type: !802)
!1759 = !DILocation(line: 0, scope: !1750)
!1760 = !DILocation(line: 150, column: 27, scope: !1750)
!1761 = !DILocation(line: 150, column: 40, scope: !1750)
!1762 = !DILocation(line: 150, column: 44, scope: !1750)
!1763 = !DILocation(line: 150, column: 31, scope: !1750)
!1764 = !DILocation(line: 151, column: 7, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1750, file: !429, line: 151, column: 7)
!1766 = !DILocation(line: 151, column: 39, scope: !1765)
!1767 = !DILocation(line: 153, column: 12, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1765, file: !429, line: 152, column: 5)
!1769 = !DILocation(line: 154, column: 7, scope: !1768)
!1770 = !DILocation(line: 156, column: 9, scope: !1750)
!1771 = !DILocalVariable(name: "s", arg: 1, scope: !1772, file: !1773, line: 55, type: !802)
!1772 = distinct !DISubprogram(name: "imalloc", scope: !1773, file: !1773, line: 55, type: !1774, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !1776)
!1773 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!1774 = !DISubroutineType(types: !1775)
!1775 = !{!131, !802}
!1776 = !{!1771}
!1777 = !DILocation(line: 0, scope: !1772, inlinedAt: !1778)
!1778 = distinct !DILocation(line: 158, column: 10, scope: !1750)
!1779 = !DILocation(line: 57, column: 26, scope: !1772, inlinedAt: !1778)
!1780 = !DILocation(line: 158, column: 8, scope: !1750)
!1781 = !DILocation(line: 159, column: 8, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1750, file: !429, line: 159, column: 7)
!1783 = !DILocation(line: 159, column: 7, scope: !1750)
!1784 = !DILocation(line: 162, column: 3, scope: !1750)
!1785 = !DILocation(line: 164, column: 3, scope: !1750)
!1786 = !DILocation(line: 165, column: 1, scope: !1750)
!1787 = !DISubprogram(name: "malloc", scope: !1054, file: !1054, line: 540, type: !1788, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!1788 = !DISubroutineType(types: !1789)
!1789 = !{!131, !133}
!1790 = distinct !DISubprogram(name: "base64_decode_ctx", scope: !429, file: !429, line: 466, type: !1791, scopeLine: 469, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !1793)
!1791 = !DISubroutineType(types: !1792)
!1792 = !{!196, !1625, !919, !802, !1326, !801}
!1793 = !{!1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1805, !1809}
!1794 = !DILocalVariable(name: "ctx", arg: 1, scope: !1790, file: !429, line: 466, type: !1625)
!1795 = !DILocalVariable(name: "in", arg: 2, scope: !1790, file: !429, line: 467, type: !919)
!1796 = !DILocalVariable(name: "inlen", arg: 3, scope: !1790, file: !429, line: 467, type: !802)
!1797 = !DILocalVariable(name: "out", arg: 4, scope: !1790, file: !429, line: 468, type: !1326)
!1798 = !DILocalVariable(name: "outlen", arg: 5, scope: !1790, file: !429, line: 468, type: !801)
!1799 = !DILocalVariable(name: "ignore_newlines", scope: !1790, file: !429, line: 470, type: !196)
!1800 = !DILocalVariable(name: "flush_ctx", scope: !1790, file: !429, line: 471, type: !196)
!1801 = !DILocalVariable(name: "ctx_i", scope: !1790, file: !429, line: 472, type: !78)
!1802 = !DILocalVariable(name: "outleft", scope: !1790, file: !429, line: 480, type: !802)
!1803 = !DILocalVariable(name: "outleft_save", scope: !1804, file: !429, line: 484, type: !802)
!1804 = distinct !DILexicalBlock(scope: !1790, file: !429, line: 483, column: 5)
!1805 = !DILocalVariable(name: "in_end", scope: !1806, file: !429, line: 517, type: !136)
!1806 = distinct !DILexicalBlock(scope: !1807, file: !429, line: 516, column: 11)
!1807 = distinct !DILexicalBlock(scope: !1808, file: !429, line: 511, column: 9)
!1808 = distinct !DILexicalBlock(scope: !1804, file: !429, line: 505, column: 11)
!1809 = !DILocalVariable(name: "non_nl", scope: !1806, file: !429, line: 519, type: !136)
!1810 = !DILocation(line: 0, scope: !1790)
!1811 = !DILocation(line: 470, column: 30, scope: !1790)
!1812 = !DILocation(line: 474, column: 7, scope: !1790)
!1813 = !DILocation(line: 476, column: 20, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1815, file: !429, line: 475, column: 5)
!1815 = distinct !DILexicalBlock(scope: !1790, file: !429, line: 474, column: 7)
!1816 = !DILocation(line: 477, column: 25, scope: !1814)
!1817 = !DILocation(line: 478, column: 5, scope: !1814)
!1818 = !DILocation(line: 480, column: 3, scope: !1790)
!1819 = !DILocation(line: 480, column: 19, scope: !1790)
!1820 = !DILocation(line: 480, column: 9, scope: !1790)
!1821 = !DILocation(line: 482, column: 3, scope: !1790)
!1822 = !DILocation(line: 484, column: 28, scope: !1804)
!1823 = !DILocation(line: 0, scope: !1804)
!1824 = !DILocation(line: 485, column: 22, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1804, file: !429, line: 485, column: 11)
!1826 = !DILocation(line: 492, column: 20, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1828, file: !429, line: 492, column: 19)
!1828 = distinct !DILexicalBlock(scope: !1829, file: !429, line: 488, column: 13)
!1829 = distinct !DILexicalBlock(scope: !1825, file: !429, line: 486, column: 9)
!1830 = !DILocation(line: 492, column: 19, scope: !1828)
!1831 = !DILocation(line: 495, column: 18, scope: !1828)
!1832 = !DILocation(line: 496, column: 21, scope: !1828)
!1833 = !DILocation(line: 491, column: 30, scope: !1828)
!1834 = distinct !{!1834, !1835, !1836}
!1835 = !DILocation(line: 487, column: 11, scope: !1829)
!1836 = !DILocation(line: 497, column: 13, scope: !1829)
!1837 = !DILocation(line: 500, column: 17, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1804, file: !429, line: 500, column: 11)
!1839 = !DILocation(line: 500, column: 22, scope: !1838)
!1840 = !DILocation(line: 505, column: 17, scope: !1808)
!1841 = !DILocation(line: 505, column: 20, scope: !1808)
!1842 = !DILocation(line: 505, column: 24, scope: !1808)
!1843 = !DILocation(line: 505, column: 32, scope: !1808)
!1844 = !DILocation(line: 507, column: 11, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1808, file: !429, line: 506, column: 9)
!1846 = !DILocation(line: 508, column: 11, scope: !1845)
!1847 = !DILocation(line: 509, column: 9, scope: !1845)
!1848 = !DILocation(line: 513, column: 33, scope: !1807)
!1849 = !DILocation(line: 513, column: 31, scope: !1807)
!1850 = !DILocation(line: 513, column: 15, scope: !1807)
!1851 = !DILocation(line: 514, column: 19, scope: !1807)
!1852 = !DILocation(line: 517, column: 37, scope: !1806)
!1853 = !DILocation(line: 0, scope: !1806)
!1854 = !DILocation(line: 520, column: 17, scope: !1806)
!1855 = !DILocalVariable(name: "ctx", arg: 1, scope: !1856, file: !429, line: 318, type: !1625)
!1856 = distinct !DISubprogram(name: "get_4", scope: !429, file: !429, line: 318, type: !1857, scopeLine: 321, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !1860)
!1857 = !DISubroutineType(types: !1858)
!1858 = !{!130, !1625, !1859, !919, !801}
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!1860 = !{!1855, !1861, !1862, !1863, !1864, !1867, !1869}
!1861 = !DILocalVariable(name: "in", arg: 2, scope: !1856, file: !429, line: 319, type: !1859)
!1862 = !DILocalVariable(name: "in_end", arg: 3, scope: !1856, file: !429, line: 319, type: !919)
!1863 = !DILocalVariable(name: "n_non_newline", arg: 4, scope: !1856, file: !429, line: 320, type: !801)
!1864 = !DILocalVariable(name: "t", scope: !1865, file: !429, line: 327, type: !136)
!1865 = distinct !DILexicalBlock(scope: !1866, file: !429, line: 326, column: 5)
!1866 = distinct !DILexicalBlock(scope: !1856, file: !429, line: 325, column: 7)
!1867 = !DILocalVariable(name: "p", scope: !1868, file: !429, line: 339, type: !136)
!1868 = distinct !DILexicalBlock(scope: !1856, file: !429, line: 337, column: 3)
!1869 = !DILocalVariable(name: "c", scope: !1870, file: !429, line: 342, type: !4)
!1870 = distinct !DILexicalBlock(scope: !1868, file: !429, line: 341, column: 7)
!1871 = !DILocation(line: 0, scope: !1856, inlinedAt: !1872)
!1872 = distinct !DILocation(line: 521, column: 24, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1806, file: !429, line: 520, column: 17)
!1874 = !DILocation(line: 322, column: 12, scope: !1875, inlinedAt: !1872)
!1875 = distinct !DILexicalBlock(scope: !1856, file: !429, line: 322, column: 7)
!1876 = !{!1877}
!1877 = distinct !{!1877, !1878, !"get_4: argument 0"}
!1878 = distinct !{!1878, !"get_4"}
!1879 = !DILocation(line: 322, column: 7, scope: !1856, inlinedAt: !1872)
!1880 = !DILocation(line: 323, column: 12, scope: !1875, inlinedAt: !1872)
!1881 = !DILocation(line: 325, column: 7, scope: !1856, inlinedAt: !1872)
!1882 = !DILocation(line: 0, scope: !1865, inlinedAt: !1872)
!1883 = !DILocation(line: 328, column: 13, scope: !1884, inlinedAt: !1872)
!1884 = distinct !DILexicalBlock(scope: !1865, file: !429, line: 328, column: 11)
!1885 = !DILocation(line: 328, column: 29, scope: !1884, inlinedAt: !1872)
!1886 = !DILocation(line: 328, column: 32, scope: !1884, inlinedAt: !1872)
!1887 = !DILocation(line: 328, column: 52, scope: !1884, inlinedAt: !1872)
!1888 = !DILocation(line: 328, column: 11, scope: !1865, inlinedAt: !1872)
!1889 = !DILocation(line: 331, column: 15, scope: !1890, inlinedAt: !1872)
!1890 = distinct !DILexicalBlock(scope: !1884, file: !429, line: 329, column: 9)
!1891 = !DILocation(line: 528, column: 42, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1806, file: !429, line: 528, column: 17)
!1893 = !DILocation(line: 0, scope: !1868, inlinedAt: !1872)
!1894 = !DILocation(line: 340, column: 14, scope: !1868, inlinedAt: !1872)
!1895 = !DILocation(line: 340, column: 5, scope: !1868, inlinedAt: !1872)
!1896 = !DILocation(line: 343, column: 13, scope: !1870, inlinedAt: !1872)
!1897 = !DILocation(line: 342, column: 20, scope: !1870, inlinedAt: !1872)
!1898 = !DILocation(line: 342, column: 18, scope: !1870, inlinedAt: !1872)
!1899 = !DILocation(line: 0, scope: !1870, inlinedAt: !1872)
!1900 = !DILocation(line: 343, column: 15, scope: !1901, inlinedAt: !1872)
!1901 = distinct !DILexicalBlock(scope: !1870, file: !429, line: 343, column: 13)
!1902 = !DILocation(line: 345, column: 28, scope: !1903, inlinedAt: !1872)
!1903 = distinct !DILexicalBlock(scope: !1901, file: !429, line: 344, column: 11)
!1904 = !DILocation(line: 345, column: 13, scope: !1903, inlinedAt: !1872)
!1905 = !DILocation(line: 345, column: 32, scope: !1903, inlinedAt: !1872)
!1906 = !DILocation(line: 346, column: 22, scope: !1907, inlinedAt: !1872)
!1907 = distinct !DILexicalBlock(scope: !1903, file: !429, line: 346, column: 17)
!1908 = !DILocation(line: 346, column: 24, scope: !1907, inlinedAt: !1872)
!1909 = !DILocation(line: 346, column: 17, scope: !1903, inlinedAt: !1872)
!1910 = !DILocation(line: 352, column: 27, scope: !1868, inlinedAt: !1872)
!1911 = !DILocation(line: 352, column: 22, scope: !1868, inlinedAt: !1872)
!1912 = !DILocation(line: 0, scope: !1873)
!1913 = !DILocation(line: 528, column: 23, scope: !1892)
!1914 = !DILocation(line: 528, column: 28, scope: !1892)
!1915 = !DILocation(line: 528, column: 38, scope: !1892)
!1916 = !DILocation(line: 533, column: 18, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1806, file: !429, line: 533, column: 17)
!1918 = !DILocation(line: 533, column: 17, scope: !1806)
!1919 = !DILocation(line: 536, column: 28, scope: !1806)
!1920 = !DILocation(line: 541, column: 14, scope: !1790)
!1921 = !DILocation(line: 541, column: 11, scope: !1790)
!1922 = !DILocation(line: 544, column: 1, scope: !1790)
!1923 = !DILocation(line: 543, column: 3, scope: !1790)
!1924 = distinct !DISubprogram(name: "decode_4", scope: !429, file: !429, line: 372, type: !1925, scopeLine: 374, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !1927)
!1925 = !DISubroutineType(types: !1926)
!1926 = !{!196, !919, !802, !1325, !801}
!1927 = !{!1928, !1929, !1930, !1931, !1932}
!1928 = !DILocalVariable(name: "in", arg: 1, scope: !1924, file: !429, line: 372, type: !919)
!1929 = !DILocalVariable(name: "inlen", arg: 2, scope: !1924, file: !429, line: 372, type: !802)
!1930 = !DILocalVariable(name: "outp", arg: 3, scope: !1924, file: !429, line: 373, type: !1325)
!1931 = !DILocalVariable(name: "outleft", arg: 4, scope: !1924, file: !429, line: 373, type: !801)
!1932 = !DILocalVariable(name: "out", scope: !1924, file: !429, line: 381, type: !130)
!1933 = !DILocation(line: 0, scope: !1924)
!1934 = !DILocation(line: 375, column: 13, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1924, file: !429, line: 375, column: 7)
!1936 = !DILocation(line: 375, column: 7, scope: !1924)
!1937 = !DILocation(line: 378, column: 18, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1924, file: !429, line: 378, column: 7)
!1939 = !DILocation(line: 0, scope: !1610, inlinedAt: !1940)
!1940 = distinct !DILocation(line: 378, column: 8, scope: !1938)
!1941 = !DILocation(line: 0, scope: !1602, inlinedAt: !1942)
!1942 = distinct !DILocation(line: 64, column: 10, scope: !1610, inlinedAt: !1940)
!1943 = !DILocation(line: 58, column: 10, scope: !1602, inlinedAt: !1942)
!1944 = !DILocation(line: 58, column: 44, scope: !1602, inlinedAt: !1942)
!1945 = !DILocation(line: 58, column: 41, scope: !1602, inlinedAt: !1942)
!1946 = !DILocation(line: 378, column: 25, scope: !1938)
!1947 = !DILocation(line: 378, column: 39, scope: !1938)
!1948 = !DILocation(line: 0, scope: !1610, inlinedAt: !1949)
!1949 = distinct !DILocation(line: 378, column: 29, scope: !1938)
!1950 = !DILocation(line: 0, scope: !1602, inlinedAt: !1951)
!1951 = distinct !DILocation(line: 64, column: 10, scope: !1610, inlinedAt: !1949)
!1952 = !DILocation(line: 58, column: 10, scope: !1602, inlinedAt: !1951)
!1953 = !DILocation(line: 58, column: 44, scope: !1602, inlinedAt: !1951)
!1954 = !DILocation(line: 58, column: 41, scope: !1602, inlinedAt: !1951)
!1955 = !DILocation(line: 378, column: 7, scope: !1924)
!1956 = !DILocation(line: 381, column: 15, scope: !1924)
!1957 = !DILocation(line: 383, column: 7, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1924, file: !429, line: 383, column: 7)
!1959 = !DILocation(line: 383, column: 7, scope: !1924)
!1960 = !DILocation(line: 385, column: 50, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1958, file: !429, line: 384, column: 5)
!1962 = !DILocation(line: 386, column: 52, scope: !1961)
!1963 = !DILocation(line: 386, column: 17, scope: !1961)
!1964 = !DILocation(line: 385, column: 11, scope: !1961)
!1965 = !DILocation(line: 385, column: 14, scope: !1961)
!1966 = !DILocation(line: 387, column: 7, scope: !1961)
!1967 = !DILocation(line: 388, column: 5, scope: !1961)
!1968 = !DILocation(line: 390, column: 13, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1924, file: !429, line: 390, column: 7)
!1970 = !DILocation(line: 390, column: 7, scope: !1924)
!1971 = !DILocation(line: 393, column: 7, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1924, file: !429, line: 393, column: 7)
!1973 = !DILocation(line: 393, column: 13, scope: !1972)
!1974 = !DILocation(line: 393, column: 7, scope: !1924)
!1975 = !DILocation(line: 395, column: 17, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1977, file: !429, line: 395, column: 11)
!1977 = distinct !DILexicalBlock(scope: !1972, file: !429, line: 394, column: 5)
!1978 = !DILocation(line: 395, column: 11, scope: !1977)
!1979 = !DILocation(line: 398, column: 11, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1977, file: !429, line: 398, column: 11)
!1981 = !DILocation(line: 398, column: 17, scope: !1980)
!1982 = !DILocation(line: 398, column: 11, scope: !1977)
!1983 = !DILocation(line: 0, scope: !1610, inlinedAt: !1984)
!1984 = distinct !DILocation(line: 407, column: 12, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1986, file: !429, line: 407, column: 11)
!1986 = distinct !DILexicalBlock(scope: !1972, file: !429, line: 406, column: 5)
!1987 = !DILocation(line: 0, scope: !1602, inlinedAt: !1988)
!1988 = distinct !DILocation(line: 64, column: 10, scope: !1610, inlinedAt: !1984)
!1989 = !DILocation(line: 58, column: 10, scope: !1602, inlinedAt: !1988)
!1990 = !DILocation(line: 58, column: 44, scope: !1602, inlinedAt: !1988)
!1991 = !DILocation(line: 58, column: 41, scope: !1602, inlinedAt: !1988)
!1992 = !DILocation(line: 407, column: 11, scope: !1986)
!1993 = !DILocation(line: 410, column: 11, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1986, file: !429, line: 410, column: 11)
!1995 = !DILocation(line: 410, column: 11, scope: !1986)
!1996 = !DILocation(line: 412, column: 55, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1994, file: !429, line: 411, column: 9)
!1998 = !DILocation(line: 413, column: 56, scope: !1997)
!1999 = !DILocation(line: 413, column: 21, scope: !1997)
!2000 = !DILocation(line: 412, column: 15, scope: !1997)
!2001 = !DILocation(line: 412, column: 18, scope: !1997)
!2002 = !DILocation(line: 414, column: 11, scope: !1997)
!2003 = !DILocation(line: 415, column: 9, scope: !1997)
!2004 = !DILocation(line: 417, column: 17, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !1986, file: !429, line: 417, column: 11)
!2006 = !DILocation(line: 417, column: 11, scope: !1986)
!2007 = !DILocation(line: 420, column: 11, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !1986, file: !429, line: 420, column: 11)
!2009 = !DILocation(line: 420, column: 17, scope: !2008)
!2010 = !DILocation(line: 420, column: 11, scope: !1986)
!2011 = !DILocation(line: 422, column: 21, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !2013, file: !429, line: 422, column: 15)
!2013 = distinct !DILexicalBlock(scope: !2008, file: !429, line: 421, column: 9)
!2014 = !DILocation(line: 422, column: 15, scope: !2013)
!2015 = !DILocation(line: 0, scope: !1610, inlinedAt: !2016)
!2016 = distinct !DILocation(line: 431, column: 16, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !2018, file: !429, line: 431, column: 15)
!2018 = distinct !DILexicalBlock(scope: !2008, file: !429, line: 430, column: 9)
!2019 = !DILocation(line: 0, scope: !1602, inlinedAt: !2020)
!2020 = distinct !DILocation(line: 64, column: 10, scope: !1610, inlinedAt: !2016)
!2021 = !DILocation(line: 58, column: 10, scope: !1602, inlinedAt: !2020)
!2022 = !DILocation(line: 58, column: 44, scope: !1602, inlinedAt: !2020)
!2023 = !DILocation(line: 58, column: 41, scope: !1602, inlinedAt: !2020)
!2024 = !DILocation(line: 431, column: 15, scope: !2018)
!2025 = !DILocation(line: 434, column: 15, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !2018, file: !429, line: 434, column: 15)
!2027 = !DILocation(line: 434, column: 15, scope: !2018)
!2028 = !DILocation(line: 436, column: 59, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !2026, file: !429, line: 435, column: 13)
!2030 = !DILocation(line: 437, column: 25, scope: !2029)
!2031 = !DILocation(line: 436, column: 19, scope: !2029)
!2032 = !DILocation(line: 436, column: 22, scope: !2029)
!2033 = !DILocation(line: 438, column: 15, scope: !2029)
!2034 = !DILocation(line: 439, column: 13, scope: !2029)
!2035 = !DILocation(line: 444, column: 3, scope: !1924)
!2036 = !DILocation(line: 445, column: 1, scope: !1924)
!2037 = !DISubprogram(name: "memchr", scope: !1050, file: !1050, line: 107, type: !2038, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!2038 = !DISubroutineType(types: !2039)
!2039 = !{!131, !1078, !87, !133}
!2040 = distinct !DISubprogram(name: "base64_decode_alloc_ctx", scope: !429, file: !429, line: 558, type: !2041, scopeLine: 561, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !2043)
!2041 = !DISubroutineType(types: !2042)
!2042 = !{!196, !1625, !136, !802, !1083, !801}
!2043 = !{!2044, !2045, !2046, !2047, !2048, !2049}
!2044 = !DILocalVariable(name: "ctx", arg: 1, scope: !2040, file: !429, line: 558, type: !1625)
!2045 = !DILocalVariable(name: "in", arg: 2, scope: !2040, file: !429, line: 559, type: !136)
!2046 = !DILocalVariable(name: "inlen", arg: 3, scope: !2040, file: !429, line: 559, type: !802)
!2047 = !DILocalVariable(name: "out", arg: 4, scope: !2040, file: !429, line: 559, type: !1083)
!2048 = !DILocalVariable(name: "outlen", arg: 5, scope: !2040, file: !429, line: 560, type: !801)
!2049 = !DILocalVariable(name: "needlen", scope: !2040, file: !429, line: 567, type: !802)
!2050 = !DILocation(line: 0, scope: !2040)
!2051 = !DILocation(line: 567, column: 3, scope: !2040)
!2052 = !DILocation(line: 567, column: 31, scope: !2040)
!2053 = !DILocation(line: 567, column: 21, scope: !2040)
!2054 = !DILocation(line: 567, column: 9, scope: !2040)
!2055 = !DILocation(line: 0, scope: !1772, inlinedAt: !2056)
!2056 = distinct !DILocation(line: 569, column: 10, scope: !2040)
!2057 = !DILocation(line: 57, column: 26, scope: !1772, inlinedAt: !2056)
!2058 = !DILocation(line: 569, column: 8, scope: !2040)
!2059 = !DILocation(line: 570, column: 8, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2040, file: !429, line: 570, column: 7)
!2061 = !DILocation(line: 570, column: 7, scope: !2040)
!2062 = !DILocation(line: 573, column: 8, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2040, file: !429, line: 573, column: 7)
!2064 = !DILocation(line: 573, column: 7, scope: !2040)
!2065 = !DILocation(line: 575, column: 13, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2063, file: !429, line: 574, column: 5)
!2067 = !DILocation(line: 575, column: 7, scope: !2066)
!2068 = !DILocation(line: 576, column: 12, scope: !2066)
!2069 = !DILocation(line: 577, column: 7, scope: !2066)
!2070 = !DILocation(line: 580, column: 7, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2040, file: !429, line: 580, column: 7)
!2072 = !DILocation(line: 580, column: 7, scope: !2040)
!2073 = !DILocation(line: 581, column: 15, scope: !2071)
!2074 = !DILocation(line: 581, column: 13, scope: !2071)
!2075 = !DILocation(line: 581, column: 5, scope: !2071)
!2076 = !DILocation(line: 584, column: 1, scope: !2040)
!2077 = !DISubprogram(name: "free", scope: !942, file: !942, line: 752, type: !2078, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!2078 = !DISubroutineType(types: !2079)
!2079 = !{null, !131}
!2080 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !444, file: !444, line: 50, type: !880, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !2081)
!2081 = !{!2082}
!2082 = !DILocalVariable(name: "file", arg: 1, scope: !2080, file: !444, line: 50, type: !136)
!2083 = !DILocation(line: 0, scope: !2080)
!2084 = !DILocation(line: 52, column: 13, scope: !2080)
!2085 = !DILocation(line: 53, column: 1, scope: !2080)
!2086 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !444, file: !444, line: 87, type: !2087, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !2089)
!2087 = !DISubroutineType(types: !2088)
!2088 = !{null, !196}
!2089 = !{!2090}
!2090 = !DILocalVariable(name: "ignore", arg: 1, scope: !2086, file: !444, line: 87, type: !196)
!2091 = !DILocation(line: 0, scope: !2086)
!2092 = !DILocation(line: 89, column: 16, scope: !2086)
!2093 = !{!2094, !2094, i64 0}
!2094 = !{!"_Bool", !860, i64 0}
!2095 = !DILocation(line: 90, column: 1, scope: !2086)
!2096 = distinct !DISubprogram(name: "close_stdout", scope: !444, file: !444, line: 116, type: !506, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !2097)
!2097 = !{!2098}
!2098 = !DILocalVariable(name: "write_error", scope: !2099, file: !444, line: 121, type: !136)
!2099 = distinct !DILexicalBlock(scope: !2100, file: !444, line: 120, column: 5)
!2100 = distinct !DILexicalBlock(scope: !2096, file: !444, line: 118, column: 7)
!2101 = !DILocation(line: 118, column: 21, scope: !2100)
!2102 = !DILocation(line: 118, column: 7, scope: !2100)
!2103 = !DILocation(line: 118, column: 29, scope: !2100)
!2104 = !DILocation(line: 119, column: 7, scope: !2100)
!2105 = !DILocation(line: 119, column: 12, scope: !2100)
!2106 = !{i8 0, i8 2}
!2107 = !DILocation(line: 119, column: 25, scope: !2100)
!2108 = !DILocation(line: 119, column: 28, scope: !2100)
!2109 = !DILocation(line: 119, column: 34, scope: !2100)
!2110 = !DILocation(line: 118, column: 7, scope: !2096)
!2111 = !DILocation(line: 121, column: 33, scope: !2099)
!2112 = !DILocation(line: 0, scope: !2099)
!2113 = !DILocation(line: 122, column: 11, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2099, file: !444, line: 122, column: 11)
!2115 = !DILocation(line: 0, scope: !2114)
!2116 = !DILocation(line: 122, column: 11, scope: !2099)
!2117 = !DILocation(line: 123, column: 9, scope: !2114)
!2118 = !DILocation(line: 126, column: 9, scope: !2114)
!2119 = !DILocation(line: 128, column: 14, scope: !2099)
!2120 = !DILocation(line: 128, column: 7, scope: !2099)
!2121 = !DILocation(line: 133, column: 42, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2096, file: !444, line: 133, column: 7)
!2123 = !DILocation(line: 133, column: 28, scope: !2122)
!2124 = !DILocation(line: 133, column: 50, scope: !2122)
!2125 = !DILocation(line: 133, column: 7, scope: !2096)
!2126 = !DILocation(line: 134, column: 12, scope: !2122)
!2127 = !DILocation(line: 134, column: 5, scope: !2122)
!2128 = !DILocation(line: 135, column: 1, scope: !2096)
!2129 = !DISubprogram(name: "_exit", scope: !2130, file: !2130, line: 624, type: !848, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !867)
!2130 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!2131 = distinct !DISubprogram(name: "verror", scope: !459, file: !459, line: 251, type: !2132, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !458, retainedNodes: !2134)
!2132 = !DISubroutineType(types: !2133)
!2133 = !{null, !87, !87, !136, !469}
!2134 = !{!2135, !2136, !2137, !2138}
!2135 = !DILocalVariable(name: "status", arg: 1, scope: !2131, file: !459, line: 251, type: !87)
!2136 = !DILocalVariable(name: "errnum", arg: 2, scope: !2131, file: !459, line: 251, type: !87)
!2137 = !DILocalVariable(name: "message", arg: 3, scope: !2131, file: !459, line: 251, type: !136)
!2138 = !DILocalVariable(name: "args", arg: 4, scope: !2131, file: !459, line: 251, type: !469)
!2139 = !DILocation(line: 0, scope: !2131)
!2140 = !DILocation(line: 261, column: 3, scope: !2131)
!2141 = !DILocation(line: 265, column: 7, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2131, file: !459, line: 265, column: 7)
!2143 = !DILocation(line: 265, column: 7, scope: !2131)
!2144 = !DILocation(line: 266, column: 5, scope: !2142)
!2145 = !DILocation(line: 272, column: 7, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2142, file: !459, line: 268, column: 5)
!2147 = !DILocation(line: 276, column: 3, scope: !2131)
!2148 = !DILocation(line: 282, column: 1, scope: !2131)
!2149 = distinct !DISubprogram(name: "flush_stdout", scope: !459, file: !459, line: 163, type: !506, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !458, retainedNodes: !2150)
!2150 = !{!2151}
!2151 = !DILocalVariable(name: "stdout_fd", scope: !2149, file: !459, line: 166, type: !87)
!2152 = !DILocation(line: 0, scope: !2149)
!2153 = !DILocalVariable(name: "fd", arg: 1, scope: !2154, file: !459, line: 145, type: !87)
!2154 = distinct !DISubprogram(name: "is_open", scope: !459, file: !459, line: 145, type: !1252, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !458, retainedNodes: !2155)
!2155 = !{!2153}
!2156 = !DILocation(line: 0, scope: !2154, inlinedAt: !2157)
!2157 = distinct !DILocation(line: 182, column: 25, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2149, file: !459, line: 182, column: 7)
!2159 = !DILocation(line: 157, column: 15, scope: !2154, inlinedAt: !2157)
!2160 = !DILocation(line: 157, column: 12, scope: !2154, inlinedAt: !2157)
!2161 = !DILocation(line: 182, column: 7, scope: !2149)
!2162 = !DILocation(line: 184, column: 5, scope: !2158)
!2163 = !DILocation(line: 185, column: 1, scope: !2149)
!2164 = distinct !DISubprogram(name: "error_tail", scope: !459, file: !459, line: 219, type: !2132, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !458, retainedNodes: !2165)
!2165 = !{!2166, !2167, !2168, !2169}
!2166 = !DILocalVariable(name: "status", arg: 1, scope: !2164, file: !459, line: 219, type: !87)
!2167 = !DILocalVariable(name: "errnum", arg: 2, scope: !2164, file: !459, line: 219, type: !87)
!2168 = !DILocalVariable(name: "message", arg: 3, scope: !2164, file: !459, line: 219, type: !136)
!2169 = !DILocalVariable(name: "args", arg: 4, scope: !2164, file: !459, line: 219, type: !469)
!2170 = !DILocation(line: 0, scope: !2164)
!2171 = !DILocation(line: 229, column: 13, scope: !2164)
!2172 = !DILocalVariable(name: "__stream", arg: 1, scope: !2173, file: !915, line: 132, type: !2176)
!2173 = distinct !DISubprogram(name: "vfprintf", scope: !915, file: !915, line: 132, type: !2174, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !458, retainedNodes: !2211)
!2174 = !DISubroutineType(types: !2175)
!2175 = !{!87, !2176, !919, !469}
!2176 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2177)
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !211, line: 7, baseType: !2179)
!2179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !213, line: 49, size: 1728, elements: !2180)
!2180 = !{!2181, !2182, !2183, !2184, !2185, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2207, !2208, !2209, !2210}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2179, file: !213, line: 51, baseType: !87, size: 32)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2179, file: !213, line: 54, baseType: !130, size: 64, offset: 64)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2179, file: !213, line: 55, baseType: !130, size: 64, offset: 128)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2179, file: !213, line: 56, baseType: !130, size: 64, offset: 192)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2179, file: !213, line: 57, baseType: !130, size: 64, offset: 256)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2179, file: !213, line: 58, baseType: !130, size: 64, offset: 320)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2179, file: !213, line: 59, baseType: !130, size: 64, offset: 384)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2179, file: !213, line: 60, baseType: !130, size: 64, offset: 448)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2179, file: !213, line: 61, baseType: !130, size: 64, offset: 512)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2179, file: !213, line: 64, baseType: !130, size: 64, offset: 576)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2179, file: !213, line: 65, baseType: !130, size: 64, offset: 640)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2179, file: !213, line: 66, baseType: !130, size: 64, offset: 704)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2179, file: !213, line: 68, baseType: !228, size: 64, offset: 768)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2179, file: !213, line: 70, baseType: !2195, size: 64, offset: 832)
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2179, file: !213, line: 72, baseType: !87, size: 32, offset: 896)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2179, file: !213, line: 73, baseType: !87, size: 32, offset: 928)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2179, file: !213, line: 74, baseType: !235, size: 64, offset: 960)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2179, file: !213, line: 77, baseType: !132, size: 16, offset: 1024)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2179, file: !213, line: 78, baseType: !240, size: 8, offset: 1040)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2179, file: !213, line: 79, baseType: !54, size: 8, offset: 1048)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2179, file: !213, line: 81, baseType: !243, size: 64, offset: 1088)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2179, file: !213, line: 89, baseType: !246, size: 64, offset: 1152)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2179, file: !213, line: 91, baseType: !248, size: 64, offset: 1216)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2179, file: !213, line: 92, baseType: !251, size: 64, offset: 1280)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2179, file: !213, line: 93, baseType: !2195, size: 64, offset: 1344)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2179, file: !213, line: 94, baseType: !131, size: 64, offset: 1408)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2179, file: !213, line: 95, baseType: !133, size: 64, offset: 1472)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2179, file: !213, line: 96, baseType: !87, size: 32, offset: 1536)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2179, file: !213, line: 98, baseType: !258, size: 160, offset: 1568)
!2211 = !{!2172, !2212, !2213}
!2212 = !DILocalVariable(name: "__fmt", arg: 2, scope: !2173, file: !915, line: 133, type: !919)
!2213 = !DILocalVariable(name: "__ap", arg: 3, scope: !2173, file: !915, line: 133, type: !469)
!2214 = !DILocation(line: 0, scope: !2173, inlinedAt: !2215)
!2215 = distinct !DILocation(line: 229, column: 3, scope: !2164)
!2216 = !DILocation(line: 135, column: 10, scope: !2173, inlinedAt: !2215)
!2217 = !DILocation(line: 232, column: 3, scope: !2164)
!2218 = !DILocation(line: 233, column: 7, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2164, file: !459, line: 233, column: 7)
!2220 = !DILocation(line: 233, column: 7, scope: !2164)
!2221 = !DILocalVariable(name: "errnum", arg: 1, scope: !2222, file: !459, line: 188, type: !87)
!2222 = distinct !DISubprogram(name: "print_errno_message", scope: !459, file: !459, line: 188, type: !848, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !458, retainedNodes: !2223)
!2223 = !{!2221, !2224, !2225}
!2224 = !DILocalVariable(name: "s", scope: !2222, file: !459, line: 190, type: !136)
!2225 = !DILocalVariable(name: "errbuf", scope: !2222, file: !459, line: 193, type: !2226)
!2226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !2227)
!2227 = !{!2228}
!2228 = !DISubrange(count: 1024)
!2229 = !DILocation(line: 0, scope: !2222, inlinedAt: !2230)
!2230 = distinct !DILocation(line: 234, column: 5, scope: !2219)
!2231 = !DILocation(line: 193, column: 3, scope: !2222, inlinedAt: !2230)
!2232 = !DILocation(line: 193, column: 8, scope: !2222, inlinedAt: !2230)
!2233 = !DILocation(line: 195, column: 7, scope: !2222, inlinedAt: !2230)
!2234 = !DILocation(line: 207, column: 9, scope: !2235, inlinedAt: !2230)
!2235 = distinct !DILexicalBlock(scope: !2222, file: !459, line: 207, column: 7)
!2236 = !DILocation(line: 207, column: 7, scope: !2222, inlinedAt: !2230)
!2237 = !DILocation(line: 208, column: 9, scope: !2235, inlinedAt: !2230)
!2238 = !DILocation(line: 208, column: 5, scope: !2235, inlinedAt: !2230)
!2239 = !DILocation(line: 214, column: 3, scope: !2222, inlinedAt: !2230)
!2240 = !DILocation(line: 216, column: 1, scope: !2222, inlinedAt: !2230)
!2241 = !DILocation(line: 234, column: 5, scope: !2219)
!2242 = !DILocation(line: 238, column: 3, scope: !2164)
!2243 = !DILocalVariable(name: "__c", arg: 1, scope: !2244, file: !1283, line: 101, type: !87)
!2244 = distinct !DISubprogram(name: "putc_unlocked", scope: !1283, file: !1283, line: 101, type: !2245, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !458, retainedNodes: !2247)
!2245 = !DISubroutineType(types: !2246)
!2246 = !{!87, !87, !2177}
!2247 = !{!2243, !2248}
!2248 = !DILocalVariable(name: "__stream", arg: 2, scope: !2244, file: !1283, line: 101, type: !2177)
!2249 = !DILocation(line: 0, scope: !2244, inlinedAt: !2250)
!2250 = distinct !DILocation(line: 238, column: 3, scope: !2164)
!2251 = !DILocation(line: 103, column: 10, scope: !2244, inlinedAt: !2250)
!2252 = !DILocation(line: 240, column: 3, scope: !2164)
!2253 = !DILocation(line: 241, column: 7, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2164, file: !459, line: 241, column: 7)
!2255 = !DILocation(line: 241, column: 7, scope: !2164)
!2256 = !DILocation(line: 242, column: 5, scope: !2254)
!2257 = !DILocation(line: 243, column: 1, scope: !2164)
!2258 = !DISubprogram(name: "__vfprintf_chk", scope: !915, file: !915, line: 96, type: !2259, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!2259 = !DISubroutineType(types: !2260)
!2260 = !{!87, !2176, !87, !919, !469}
!2261 = !DISubprogram(name: "strerror_r", scope: !1050, file: !1050, line: 444, type: !2262, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!2262 = !DISubroutineType(types: !2263)
!2263 = !{!130, !87, !130, !133}
!2264 = !DISubprogram(name: "fcntl", scope: !2265, file: !2265, line: 149, type: !2266, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!2265 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!2266 = !DISubroutineType(types: !2267)
!2267 = !{!87, !87, !87, null}
!2268 = distinct !DISubprogram(name: "error", scope: !459, file: !459, line: 285, type: !2269, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !458, retainedNodes: !2271)
!2269 = !DISubroutineType(types: !2270)
!2270 = !{null, !87, !87, !136, null}
!2271 = !{!2272, !2273, !2274, !2275}
!2272 = !DILocalVariable(name: "status", arg: 1, scope: !2268, file: !459, line: 285, type: !87)
!2273 = !DILocalVariable(name: "errnum", arg: 2, scope: !2268, file: !459, line: 285, type: !87)
!2274 = !DILocalVariable(name: "message", arg: 3, scope: !2268, file: !459, line: 285, type: !136)
!2275 = !DILocalVariable(name: "ap", scope: !2268, file: !459, line: 287, type: !2276)
!2276 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !924, line: 52, baseType: !2277)
!2277 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2278, line: 14, baseType: !2279)
!2278 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!2279 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !473, baseType: !2280)
!2280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !470, size: 192, elements: !55)
!2281 = !DILocation(line: 0, scope: !2268)
!2282 = !DILocation(line: 287, column: 3, scope: !2268)
!2283 = !DILocation(line: 287, column: 11, scope: !2268)
!2284 = !DILocation(line: 288, column: 3, scope: !2268)
!2285 = !DILocation(line: 289, column: 3, scope: !2268)
!2286 = !DILocation(line: 290, column: 3, scope: !2268)
!2287 = !DILocation(line: 291, column: 1, scope: !2268)
!2288 = !DILocation(line: 0, scope: !466)
!2289 = !DILocation(line: 302, column: 7, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !466, file: !459, line: 302, column: 7)
!2291 = !DILocation(line: 302, column: 7, scope: !466)
!2292 = !DILocation(line: 307, column: 11, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2294, file: !459, line: 307, column: 11)
!2294 = distinct !DILexicalBlock(scope: !2290, file: !459, line: 303, column: 5)
!2295 = !DILocation(line: 307, column: 27, scope: !2293)
!2296 = !DILocation(line: 308, column: 11, scope: !2293)
!2297 = !DILocation(line: 308, column: 28, scope: !2293)
!2298 = !DILocation(line: 308, column: 25, scope: !2293)
!2299 = !DILocation(line: 309, column: 15, scope: !2293)
!2300 = !DILocation(line: 309, column: 33, scope: !2293)
!2301 = !DILocation(line: 310, column: 19, scope: !2293)
!2302 = !DILocation(line: 311, column: 22, scope: !2293)
!2303 = !DILocation(line: 311, column: 56, scope: !2293)
!2304 = !DILocation(line: 307, column: 11, scope: !2294)
!2305 = !DILocation(line: 316, column: 21, scope: !2294)
!2306 = !DILocation(line: 317, column: 23, scope: !2294)
!2307 = !DILocation(line: 318, column: 5, scope: !2294)
!2308 = !DILocation(line: 327, column: 3, scope: !466)
!2309 = !DILocation(line: 331, column: 7, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !466, file: !459, line: 331, column: 7)
!2311 = !DILocation(line: 331, column: 7, scope: !466)
!2312 = !DILocation(line: 332, column: 5, scope: !2310)
!2313 = !DILocation(line: 338, column: 7, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2310, file: !459, line: 334, column: 5)
!2315 = !DILocation(line: 346, column: 3, scope: !466)
!2316 = !DILocation(line: 350, column: 3, scope: !466)
!2317 = !DILocation(line: 356, column: 1, scope: !466)
!2318 = distinct !DISubprogram(name: "error_at_line", scope: !459, file: !459, line: 359, type: !2319, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !458, retainedNodes: !2321)
!2319 = !DISubroutineType(types: !2320)
!2320 = !{null, !87, !87, !136, !78, !136, null}
!2321 = !{!2322, !2323, !2324, !2325, !2326, !2327}
!2322 = !DILocalVariable(name: "status", arg: 1, scope: !2318, file: !459, line: 359, type: !87)
!2323 = !DILocalVariable(name: "errnum", arg: 2, scope: !2318, file: !459, line: 359, type: !87)
!2324 = !DILocalVariable(name: "file_name", arg: 3, scope: !2318, file: !459, line: 359, type: !136)
!2325 = !DILocalVariable(name: "line_number", arg: 4, scope: !2318, file: !459, line: 360, type: !78)
!2326 = !DILocalVariable(name: "message", arg: 5, scope: !2318, file: !459, line: 360, type: !136)
!2327 = !DILocalVariable(name: "ap", scope: !2318, file: !459, line: 362, type: !2276)
!2328 = !DILocation(line: 0, scope: !2318)
!2329 = !DILocation(line: 362, column: 3, scope: !2318)
!2330 = !DILocation(line: 362, column: 11, scope: !2318)
!2331 = !DILocation(line: 363, column: 3, scope: !2318)
!2332 = !DILocation(line: 364, column: 3, scope: !2318)
!2333 = !DILocation(line: 366, column: 3, scope: !2318)
!2334 = !DILocation(line: 367, column: 1, scope: !2318)
!2335 = distinct !DISubprogram(name: "fdadvise", scope: !763, file: !763, line: 25, type: !2336, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !762, retainedNodes: !2340)
!2336 = !DISubroutineType(types: !2337)
!2337 = !{null, !87, !2338, !2338, !2339}
!2338 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !924, line: 63, baseType: !235)
!2339 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !106, line: 51, baseType: !105)
!2340 = !{!2341, !2342, !2343, !2344}
!2341 = !DILocalVariable(name: "fd", arg: 1, scope: !2335, file: !763, line: 25, type: !87)
!2342 = !DILocalVariable(name: "offset", arg: 2, scope: !2335, file: !763, line: 25, type: !2338)
!2343 = !DILocalVariable(name: "len", arg: 3, scope: !2335, file: !763, line: 25, type: !2338)
!2344 = !DILocalVariable(name: "advice", arg: 4, scope: !2335, file: !763, line: 25, type: !2339)
!2345 = !DILocation(line: 0, scope: !2335)
!2346 = !DILocation(line: 28, column: 3, scope: !2335)
!2347 = !DILocation(line: 30, column: 1, scope: !2335)
!2348 = !DISubprogram(name: "posix_fadvise", scope: !2265, file: !2265, line: 273, type: !2349, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!2349 = !DISubroutineType(types: !2350)
!2350 = !{!87, !87, !2338, !2338, !87}
!2351 = distinct !DISubprogram(name: "fadvise", scope: !763, file: !763, line: 33, type: !2352, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !762, retainedNodes: !2388)
!2352 = !DISubroutineType(types: !2353)
!2353 = !{null, !2354, !2339}
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !211, line: 7, baseType: !2356)
!2356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !213, line: 49, size: 1728, elements: !2357)
!2357 = !{!2358, !2359, !2360, !2361, !2362, !2363, !2364, !2365, !2366, !2367, !2368, !2369, !2370, !2371, !2373, !2374, !2375, !2376, !2377, !2378, !2379, !2380, !2381, !2382, !2383, !2384, !2385, !2386, !2387}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2356, file: !213, line: 51, baseType: !87, size: 32)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2356, file: !213, line: 54, baseType: !130, size: 64, offset: 64)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2356, file: !213, line: 55, baseType: !130, size: 64, offset: 128)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2356, file: !213, line: 56, baseType: !130, size: 64, offset: 192)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2356, file: !213, line: 57, baseType: !130, size: 64, offset: 256)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2356, file: !213, line: 58, baseType: !130, size: 64, offset: 320)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2356, file: !213, line: 59, baseType: !130, size: 64, offset: 384)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2356, file: !213, line: 60, baseType: !130, size: 64, offset: 448)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2356, file: !213, line: 61, baseType: !130, size: 64, offset: 512)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2356, file: !213, line: 64, baseType: !130, size: 64, offset: 576)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2356, file: !213, line: 65, baseType: !130, size: 64, offset: 640)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2356, file: !213, line: 66, baseType: !130, size: 64, offset: 704)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2356, file: !213, line: 68, baseType: !228, size: 64, offset: 768)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2356, file: !213, line: 70, baseType: !2372, size: 64, offset: 832)
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2356, file: !213, line: 72, baseType: !87, size: 32, offset: 896)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2356, file: !213, line: 73, baseType: !87, size: 32, offset: 928)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2356, file: !213, line: 74, baseType: !235, size: 64, offset: 960)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2356, file: !213, line: 77, baseType: !132, size: 16, offset: 1024)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2356, file: !213, line: 78, baseType: !240, size: 8, offset: 1040)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2356, file: !213, line: 79, baseType: !54, size: 8, offset: 1048)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2356, file: !213, line: 81, baseType: !243, size: 64, offset: 1088)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2356, file: !213, line: 89, baseType: !246, size: 64, offset: 1152)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2356, file: !213, line: 91, baseType: !248, size: 64, offset: 1216)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2356, file: !213, line: 92, baseType: !251, size: 64, offset: 1280)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2356, file: !213, line: 93, baseType: !2372, size: 64, offset: 1344)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2356, file: !213, line: 94, baseType: !131, size: 64, offset: 1408)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2356, file: !213, line: 95, baseType: !133, size: 64, offset: 1472)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2356, file: !213, line: 96, baseType: !87, size: 32, offset: 1536)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2356, file: !213, line: 98, baseType: !258, size: 160, offset: 1568)
!2388 = !{!2389, !2390}
!2389 = !DILocalVariable(name: "fp", arg: 1, scope: !2351, file: !763, line: 33, type: !2354)
!2390 = !DILocalVariable(name: "advice", arg: 2, scope: !2351, file: !763, line: 33, type: !2339)
!2391 = !DILocation(line: 0, scope: !2351)
!2392 = !DILocation(line: 35, column: 7, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !2351, file: !763, line: 35, column: 7)
!2394 = !DILocation(line: 35, column: 7, scope: !2351)
!2395 = !DILocation(line: 36, column: 15, scope: !2393)
!2396 = !DILocation(line: 0, scope: !2335, inlinedAt: !2397)
!2397 = distinct !DILocation(line: 36, column: 5, scope: !2393)
!2398 = !DILocation(line: 28, column: 3, scope: !2335, inlinedAt: !2397)
!2399 = !DILocation(line: 36, column: 5, scope: !2393)
!2400 = !DILocation(line: 37, column: 1, scope: !2351)
!2401 = !DISubprogram(name: "fileno", scope: !924, file: !924, line: 809, type: !2402, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!2402 = !DISubroutineType(types: !2403)
!2403 = !{!87, !2354}
!2404 = distinct !DISubprogram(name: "rpl_fclose", scope: !766, file: !766, line: 58, type: !2405, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !765, retainedNodes: !2441)
!2405 = !DISubroutineType(types: !2406)
!2406 = !{!87, !2407}
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2408 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !211, line: 7, baseType: !2409)
!2409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !213, line: 49, size: 1728, elements: !2410)
!2410 = !{!2411, !2412, !2413, !2414, !2415, !2416, !2417, !2418, !2419, !2420, !2421, !2422, !2423, !2424, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2439, !2440}
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2409, file: !213, line: 51, baseType: !87, size: 32)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2409, file: !213, line: 54, baseType: !130, size: 64, offset: 64)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2409, file: !213, line: 55, baseType: !130, size: 64, offset: 128)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2409, file: !213, line: 56, baseType: !130, size: 64, offset: 192)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2409, file: !213, line: 57, baseType: !130, size: 64, offset: 256)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2409, file: !213, line: 58, baseType: !130, size: 64, offset: 320)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2409, file: !213, line: 59, baseType: !130, size: 64, offset: 384)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2409, file: !213, line: 60, baseType: !130, size: 64, offset: 448)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2409, file: !213, line: 61, baseType: !130, size: 64, offset: 512)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2409, file: !213, line: 64, baseType: !130, size: 64, offset: 576)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2409, file: !213, line: 65, baseType: !130, size: 64, offset: 640)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2409, file: !213, line: 66, baseType: !130, size: 64, offset: 704)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2409, file: !213, line: 68, baseType: !228, size: 64, offset: 768)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2409, file: !213, line: 70, baseType: !2425, size: 64, offset: 832)
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2409, file: !213, line: 72, baseType: !87, size: 32, offset: 896)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2409, file: !213, line: 73, baseType: !87, size: 32, offset: 928)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2409, file: !213, line: 74, baseType: !235, size: 64, offset: 960)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2409, file: !213, line: 77, baseType: !132, size: 16, offset: 1024)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2409, file: !213, line: 78, baseType: !240, size: 8, offset: 1040)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2409, file: !213, line: 79, baseType: !54, size: 8, offset: 1048)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2409, file: !213, line: 81, baseType: !243, size: 64, offset: 1088)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2409, file: !213, line: 89, baseType: !246, size: 64, offset: 1152)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2409, file: !213, line: 91, baseType: !248, size: 64, offset: 1216)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2409, file: !213, line: 92, baseType: !251, size: 64, offset: 1280)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2409, file: !213, line: 93, baseType: !2425, size: 64, offset: 1344)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2409, file: !213, line: 94, baseType: !131, size: 64, offset: 1408)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2409, file: !213, line: 95, baseType: !133, size: 64, offset: 1472)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2409, file: !213, line: 96, baseType: !87, size: 32, offset: 1536)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2409, file: !213, line: 98, baseType: !258, size: 160, offset: 1568)
!2441 = !{!2442, !2443, !2444, !2445}
!2442 = !DILocalVariable(name: "fp", arg: 1, scope: !2404, file: !766, line: 58, type: !2407)
!2443 = !DILocalVariable(name: "saved_errno", scope: !2404, file: !766, line: 60, type: !87)
!2444 = !DILocalVariable(name: "fd", scope: !2404, file: !766, line: 63, type: !87)
!2445 = !DILocalVariable(name: "result", scope: !2404, file: !766, line: 74, type: !87)
!2446 = !DILocation(line: 0, scope: !2404)
!2447 = !DILocation(line: 63, column: 12, scope: !2404)
!2448 = !DILocation(line: 64, column: 10, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2404, file: !766, line: 64, column: 7)
!2450 = !DILocation(line: 64, column: 7, scope: !2404)
!2451 = !DILocation(line: 65, column: 12, scope: !2449)
!2452 = !DILocation(line: 65, column: 5, scope: !2449)
!2453 = !DILocation(line: 70, column: 9, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2404, file: !766, line: 70, column: 7)
!2455 = !DILocation(line: 70, column: 23, scope: !2454)
!2456 = !DILocation(line: 70, column: 33, scope: !2454)
!2457 = !DILocation(line: 70, column: 26, scope: !2454)
!2458 = !DILocation(line: 70, column: 59, scope: !2454)
!2459 = !DILocation(line: 71, column: 7, scope: !2454)
!2460 = !DILocation(line: 71, column: 10, scope: !2454)
!2461 = !DILocation(line: 70, column: 7, scope: !2404)
!2462 = !DILocation(line: 100, column: 12, scope: !2404)
!2463 = !DILocation(line: 105, column: 7, scope: !2404)
!2464 = !DILocation(line: 72, column: 19, scope: !2454)
!2465 = !DILocation(line: 105, column: 19, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2404, file: !766, line: 105, column: 7)
!2467 = !DILocation(line: 107, column: 13, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2466, file: !766, line: 106, column: 5)
!2469 = !DILocation(line: 109, column: 5, scope: !2468)
!2470 = !DILocation(line: 112, column: 1, scope: !2404)
!2471 = !DISubprogram(name: "fclose", scope: !924, file: !924, line: 178, type: !2405, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!2472 = !DISubprogram(name: "__freading", scope: !2473, file: !2473, line: 51, type: !2405, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!2473 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!2474 = !DISubprogram(name: "lseek", scope: !2130, file: !2130, line: 339, type: !2475, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!2475 = !DISubroutineType(types: !2476)
!2476 = !{!235, !87, !235, !87}
!2477 = distinct !DISubprogram(name: "rpl_fflush", scope: !768, file: !768, line: 130, type: !2478, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !2514)
!2478 = !DISubroutineType(types: !2479)
!2479 = !{!87, !2480}
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2481 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !211, line: 7, baseType: !2482)
!2482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !213, line: 49, size: 1728, elements: !2483)
!2483 = !{!2484, !2485, !2486, !2487, !2488, !2489, !2490, !2491, !2492, !2493, !2494, !2495, !2496, !2497, !2499, !2500, !2501, !2502, !2503, !2504, !2505, !2506, !2507, !2508, !2509, !2510, !2511, !2512, !2513}
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2482, file: !213, line: 51, baseType: !87, size: 32)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2482, file: !213, line: 54, baseType: !130, size: 64, offset: 64)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2482, file: !213, line: 55, baseType: !130, size: 64, offset: 128)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2482, file: !213, line: 56, baseType: !130, size: 64, offset: 192)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2482, file: !213, line: 57, baseType: !130, size: 64, offset: 256)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2482, file: !213, line: 58, baseType: !130, size: 64, offset: 320)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2482, file: !213, line: 59, baseType: !130, size: 64, offset: 384)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2482, file: !213, line: 60, baseType: !130, size: 64, offset: 448)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2482, file: !213, line: 61, baseType: !130, size: 64, offset: 512)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2482, file: !213, line: 64, baseType: !130, size: 64, offset: 576)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2482, file: !213, line: 65, baseType: !130, size: 64, offset: 640)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2482, file: !213, line: 66, baseType: !130, size: 64, offset: 704)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2482, file: !213, line: 68, baseType: !228, size: 64, offset: 768)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2482, file: !213, line: 70, baseType: !2498, size: 64, offset: 832)
!2498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2482, size: 64)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2482, file: !213, line: 72, baseType: !87, size: 32, offset: 896)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2482, file: !213, line: 73, baseType: !87, size: 32, offset: 928)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2482, file: !213, line: 74, baseType: !235, size: 64, offset: 960)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2482, file: !213, line: 77, baseType: !132, size: 16, offset: 1024)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2482, file: !213, line: 78, baseType: !240, size: 8, offset: 1040)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2482, file: !213, line: 79, baseType: !54, size: 8, offset: 1048)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2482, file: !213, line: 81, baseType: !243, size: 64, offset: 1088)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2482, file: !213, line: 89, baseType: !246, size: 64, offset: 1152)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2482, file: !213, line: 91, baseType: !248, size: 64, offset: 1216)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2482, file: !213, line: 92, baseType: !251, size: 64, offset: 1280)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2482, file: !213, line: 93, baseType: !2498, size: 64, offset: 1344)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2482, file: !213, line: 94, baseType: !131, size: 64, offset: 1408)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2482, file: !213, line: 95, baseType: !133, size: 64, offset: 1472)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2482, file: !213, line: 96, baseType: !87, size: 32, offset: 1536)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2482, file: !213, line: 98, baseType: !258, size: 160, offset: 1568)
!2514 = !{!2515}
!2515 = !DILocalVariable(name: "stream", arg: 1, scope: !2477, file: !768, line: 130, type: !2480)
!2516 = !DILocation(line: 0, scope: !2477)
!2517 = !DILocation(line: 151, column: 14, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2477, file: !768, line: 151, column: 7)
!2519 = !DILocation(line: 151, column: 22, scope: !2518)
!2520 = !DILocation(line: 151, column: 27, scope: !2518)
!2521 = !DILocation(line: 151, column: 7, scope: !2477)
!2522 = !DILocation(line: 152, column: 12, scope: !2518)
!2523 = !DILocation(line: 152, column: 5, scope: !2518)
!2524 = !DILocalVariable(name: "fp", arg: 1, scope: !2525, file: !768, line: 42, type: !2480)
!2525 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !768, file: !768, line: 42, type: !2526, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !2528)
!2526 = !DISubroutineType(types: !2527)
!2527 = !{null, !2480}
!2528 = !{!2524}
!2529 = !DILocation(line: 0, scope: !2525, inlinedAt: !2530)
!2530 = distinct !DILocation(line: 157, column: 3, scope: !2477)
!2531 = !DILocation(line: 44, column: 12, scope: !2532, inlinedAt: !2530)
!2532 = distinct !DILexicalBlock(scope: !2525, file: !768, line: 44, column: 7)
!2533 = !DILocation(line: 44, column: 19, scope: !2532, inlinedAt: !2530)
!2534 = !DILocation(line: 44, column: 7, scope: !2525, inlinedAt: !2530)
!2535 = !DILocation(line: 46, column: 5, scope: !2532, inlinedAt: !2530)
!2536 = !DILocation(line: 159, column: 10, scope: !2477)
!2537 = !DILocation(line: 159, column: 3, scope: !2477)
!2538 = !DILocation(line: 236, column: 1, scope: !2477)
!2539 = !DISubprogram(name: "fflush", scope: !924, file: !924, line: 230, type: !2478, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!2540 = distinct !DISubprogram(name: "fpurge", scope: !771, file: !771, line: 32, type: !2541, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !770, retainedNodes: !2577)
!2541 = !DISubroutineType(types: !2542)
!2542 = !{!87, !2543}
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64)
!2544 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !211, line: 7, baseType: !2545)
!2545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !213, line: 49, size: 1728, elements: !2546)
!2546 = !{!2547, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2562, !2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576}
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2545, file: !213, line: 51, baseType: !87, size: 32)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2545, file: !213, line: 54, baseType: !130, size: 64, offset: 64)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2545, file: !213, line: 55, baseType: !130, size: 64, offset: 128)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2545, file: !213, line: 56, baseType: !130, size: 64, offset: 192)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2545, file: !213, line: 57, baseType: !130, size: 64, offset: 256)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2545, file: !213, line: 58, baseType: !130, size: 64, offset: 320)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2545, file: !213, line: 59, baseType: !130, size: 64, offset: 384)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2545, file: !213, line: 60, baseType: !130, size: 64, offset: 448)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2545, file: !213, line: 61, baseType: !130, size: 64, offset: 512)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2545, file: !213, line: 64, baseType: !130, size: 64, offset: 576)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2545, file: !213, line: 65, baseType: !130, size: 64, offset: 640)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2545, file: !213, line: 66, baseType: !130, size: 64, offset: 704)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2545, file: !213, line: 68, baseType: !228, size: 64, offset: 768)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2545, file: !213, line: 70, baseType: !2561, size: 64, offset: 832)
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2545, file: !213, line: 72, baseType: !87, size: 32, offset: 896)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2545, file: !213, line: 73, baseType: !87, size: 32, offset: 928)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2545, file: !213, line: 74, baseType: !235, size: 64, offset: 960)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2545, file: !213, line: 77, baseType: !132, size: 16, offset: 1024)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2545, file: !213, line: 78, baseType: !240, size: 8, offset: 1040)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2545, file: !213, line: 79, baseType: !54, size: 8, offset: 1048)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2545, file: !213, line: 81, baseType: !243, size: 64, offset: 1088)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2545, file: !213, line: 89, baseType: !246, size: 64, offset: 1152)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2545, file: !213, line: 91, baseType: !248, size: 64, offset: 1216)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2545, file: !213, line: 92, baseType: !251, size: 64, offset: 1280)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2545, file: !213, line: 93, baseType: !2561, size: 64, offset: 1344)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2545, file: !213, line: 94, baseType: !131, size: 64, offset: 1408)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2545, file: !213, line: 95, baseType: !133, size: 64, offset: 1472)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2545, file: !213, line: 96, baseType: !87, size: 32, offset: 1536)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2545, file: !213, line: 98, baseType: !258, size: 160, offset: 1568)
!2577 = !{!2578}
!2578 = !DILocalVariable(name: "fp", arg: 1, scope: !2540, file: !771, line: 32, type: !2543)
!2579 = !DILocation(line: 0, scope: !2540)
!2580 = !DILocation(line: 36, column: 3, scope: !2540)
!2581 = !DILocation(line: 38, column: 3, scope: !2540)
!2582 = !DISubprogram(name: "__fpurge", scope: !2473, file: !2473, line: 72, type: !2583, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!2583 = !DISubroutineType(types: !2584)
!2584 = !{null, !2543}
!2585 = distinct !DISubprogram(name: "rpl_fseeko", scope: !773, file: !773, line: 28, type: !2586, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !772, retainedNodes: !2622)
!2586 = !DISubroutineType(types: !2587)
!2587 = !{!87, !2588, !2338, !87}
!2588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2589, size: 64)
!2589 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !211, line: 7, baseType: !2590)
!2590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !213, line: 49, size: 1728, elements: !2591)
!2591 = !{!2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2607, !2608, !2609, !2610, !2611, !2612, !2613, !2614, !2615, !2616, !2617, !2618, !2619, !2620, !2621}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2590, file: !213, line: 51, baseType: !87, size: 32)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2590, file: !213, line: 54, baseType: !130, size: 64, offset: 64)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2590, file: !213, line: 55, baseType: !130, size: 64, offset: 128)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2590, file: !213, line: 56, baseType: !130, size: 64, offset: 192)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2590, file: !213, line: 57, baseType: !130, size: 64, offset: 256)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2590, file: !213, line: 58, baseType: !130, size: 64, offset: 320)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2590, file: !213, line: 59, baseType: !130, size: 64, offset: 384)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2590, file: !213, line: 60, baseType: !130, size: 64, offset: 448)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2590, file: !213, line: 61, baseType: !130, size: 64, offset: 512)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2590, file: !213, line: 64, baseType: !130, size: 64, offset: 576)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2590, file: !213, line: 65, baseType: !130, size: 64, offset: 640)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2590, file: !213, line: 66, baseType: !130, size: 64, offset: 704)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2590, file: !213, line: 68, baseType: !228, size: 64, offset: 768)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2590, file: !213, line: 70, baseType: !2606, size: 64, offset: 832)
!2606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2590, size: 64)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2590, file: !213, line: 72, baseType: !87, size: 32, offset: 896)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2590, file: !213, line: 73, baseType: !87, size: 32, offset: 928)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2590, file: !213, line: 74, baseType: !235, size: 64, offset: 960)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2590, file: !213, line: 77, baseType: !132, size: 16, offset: 1024)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2590, file: !213, line: 78, baseType: !240, size: 8, offset: 1040)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2590, file: !213, line: 79, baseType: !54, size: 8, offset: 1048)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2590, file: !213, line: 81, baseType: !243, size: 64, offset: 1088)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2590, file: !213, line: 89, baseType: !246, size: 64, offset: 1152)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2590, file: !213, line: 91, baseType: !248, size: 64, offset: 1216)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2590, file: !213, line: 92, baseType: !251, size: 64, offset: 1280)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2590, file: !213, line: 93, baseType: !2606, size: 64, offset: 1344)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2590, file: !213, line: 94, baseType: !131, size: 64, offset: 1408)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2590, file: !213, line: 95, baseType: !133, size: 64, offset: 1472)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2590, file: !213, line: 96, baseType: !87, size: 32, offset: 1536)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2590, file: !213, line: 98, baseType: !258, size: 160, offset: 1568)
!2622 = !{!2623, !2624, !2625, !2626}
!2623 = !DILocalVariable(name: "fp", arg: 1, scope: !2585, file: !773, line: 28, type: !2588)
!2624 = !DILocalVariable(name: "offset", arg: 2, scope: !2585, file: !773, line: 28, type: !2338)
!2625 = !DILocalVariable(name: "whence", arg: 3, scope: !2585, file: !773, line: 28, type: !87)
!2626 = !DILocalVariable(name: "pos", scope: !2627, file: !773, line: 123, type: !2338)
!2627 = distinct !DILexicalBlock(scope: !2628, file: !773, line: 119, column: 5)
!2628 = distinct !DILexicalBlock(scope: !2585, file: !773, line: 55, column: 7)
!2629 = !DILocation(line: 0, scope: !2585)
!2630 = !DILocation(line: 55, column: 12, scope: !2628)
!2631 = !{!1292, !859, i64 16}
!2632 = !DILocation(line: 55, column: 33, scope: !2628)
!2633 = !{!1292, !859, i64 8}
!2634 = !DILocation(line: 55, column: 25, scope: !2628)
!2635 = !DILocation(line: 56, column: 7, scope: !2628)
!2636 = !DILocation(line: 56, column: 15, scope: !2628)
!2637 = !DILocation(line: 56, column: 37, scope: !2628)
!2638 = !{!1292, !859, i64 32}
!2639 = !DILocation(line: 56, column: 29, scope: !2628)
!2640 = !DILocation(line: 57, column: 7, scope: !2628)
!2641 = !DILocation(line: 57, column: 15, scope: !2628)
!2642 = !{!1292, !859, i64 72}
!2643 = !DILocation(line: 57, column: 29, scope: !2628)
!2644 = !DILocation(line: 55, column: 7, scope: !2585)
!2645 = !DILocation(line: 123, column: 26, scope: !2627)
!2646 = !DILocation(line: 123, column: 19, scope: !2627)
!2647 = !DILocation(line: 0, scope: !2627)
!2648 = !DILocation(line: 124, column: 15, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2627, file: !773, line: 124, column: 11)
!2650 = !DILocation(line: 124, column: 11, scope: !2627)
!2651 = !DILocation(line: 135, column: 19, scope: !2627)
!2652 = !DILocation(line: 136, column: 12, scope: !2627)
!2653 = !DILocation(line: 136, column: 20, scope: !2627)
!2654 = !{!1292, !1293, i64 144}
!2655 = !DILocation(line: 167, column: 7, scope: !2627)
!2656 = !DILocation(line: 169, column: 10, scope: !2585)
!2657 = !DILocation(line: 169, column: 3, scope: !2585)
!2658 = !DILocation(line: 170, column: 1, scope: !2585)
!2659 = !DISubprogram(name: "fseeko", scope: !924, file: !924, line: 736, type: !2660, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!2660 = !DISubroutineType(types: !2661)
!2661 = !{!87, !2588, !235, !87}
!2662 = distinct !DISubprogram(name: "getprogname", scope: !775, file: !775, line: 54, type: !2663, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !867)
!2663 = !DISubroutineType(types: !2664)
!2664 = !{!136}
!2665 = !DILocation(line: 58, column: 10, scope: !2662)
!2666 = !DILocation(line: 58, column: 3, scope: !2662)
!2667 = distinct !DISubprogram(name: "set_program_name", scope: !511, file: !511, line: 37, type: !880, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !510, retainedNodes: !2668)
!2668 = !{!2669, !2670, !2671}
!2669 = !DILocalVariable(name: "argv0", arg: 1, scope: !2667, file: !511, line: 37, type: !136)
!2670 = !DILocalVariable(name: "slash", scope: !2667, file: !511, line: 44, type: !136)
!2671 = !DILocalVariable(name: "base", scope: !2667, file: !511, line: 45, type: !136)
!2672 = !DILocation(line: 0, scope: !2667)
!2673 = !DILocation(line: 44, column: 23, scope: !2667)
!2674 = !DILocation(line: 45, column: 22, scope: !2667)
!2675 = !DILocation(line: 46, column: 17, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2667, file: !511, line: 46, column: 7)
!2677 = !DILocation(line: 46, column: 9, scope: !2676)
!2678 = !DILocation(line: 46, column: 25, scope: !2676)
!2679 = !DILocation(line: 46, column: 40, scope: !2676)
!2680 = !DILocalVariable(name: "__s1", arg: 1, scope: !2681, file: !942, line: 974, type: !1078)
!2681 = distinct !DISubprogram(name: "memeq", scope: !942, file: !942, line: 974, type: !2682, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !510, retainedNodes: !2684)
!2682 = !DISubroutineType(types: !2683)
!2683 = !{!196, !1078, !1078, !133}
!2684 = !{!2680, !2685, !2686}
!2685 = !DILocalVariable(name: "__s2", arg: 2, scope: !2681, file: !942, line: 974, type: !1078)
!2686 = !DILocalVariable(name: "__n", arg: 3, scope: !2681, file: !942, line: 974, type: !133)
!2687 = !DILocation(line: 0, scope: !2681, inlinedAt: !2688)
!2688 = distinct !DILocation(line: 46, column: 28, scope: !2676)
!2689 = !DILocation(line: 976, column: 11, scope: !2681, inlinedAt: !2688)
!2690 = !DILocation(line: 976, column: 10, scope: !2681, inlinedAt: !2688)
!2691 = !DILocation(line: 46, column: 7, scope: !2667)
!2692 = !DILocation(line: 49, column: 11, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2694, file: !511, line: 49, column: 11)
!2694 = distinct !DILexicalBlock(scope: !2676, file: !511, line: 47, column: 5)
!2695 = !DILocation(line: 49, column: 36, scope: !2693)
!2696 = !DILocation(line: 49, column: 11, scope: !2694)
!2697 = !DILocation(line: 65, column: 16, scope: !2667)
!2698 = !DILocation(line: 71, column: 27, scope: !2667)
!2699 = !DILocation(line: 74, column: 33, scope: !2667)
!2700 = !DILocation(line: 76, column: 1, scope: !2667)
!2701 = !DISubprogram(name: "strrchr", scope: !1050, file: !1050, line: 273, type: !1065, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!2702 = !DILocation(line: 0, scope: !520)
!2703 = !DILocation(line: 40, column: 29, scope: !520)
!2704 = !DILocation(line: 41, column: 19, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !520, file: !521, line: 41, column: 7)
!2706 = !DILocation(line: 41, column: 7, scope: !520)
!2707 = !DILocation(line: 47, column: 3, scope: !520)
!2708 = !DILocation(line: 48, column: 3, scope: !520)
!2709 = !DILocation(line: 48, column: 13, scope: !520)
!2710 = !DILocalVariable(name: "ps", arg: 1, scope: !2711, file: !2712, line: 1135, type: !2715)
!2711 = distinct !DISubprogram(name: "mbszero", scope: !2712, file: !2712, line: 1135, type: !2713, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !524, retainedNodes: !2716)
!2712 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2713 = !DISubroutineType(types: !2714)
!2714 = !{null, !2715}
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!2716 = !{!2710}
!2717 = !DILocation(line: 0, scope: !2711, inlinedAt: !2718)
!2718 = distinct !DILocation(line: 48, column: 18, scope: !520)
!2719 = !DILocalVariable(name: "__dest", arg: 1, scope: !2720, file: !1266, line: 57, type: !131)
!2720 = distinct !DISubprogram(name: "memset", scope: !1266, file: !1266, line: 57, type: !2721, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !524, retainedNodes: !2723)
!2721 = !DISubroutineType(types: !2722)
!2722 = !{!131, !131, !87, !133}
!2723 = !{!2719, !2724, !2725}
!2724 = !DILocalVariable(name: "__ch", arg: 2, scope: !2720, file: !1266, line: 57, type: !87)
!2725 = !DILocalVariable(name: "__len", arg: 3, scope: !2720, file: !1266, line: 57, type: !133)
!2726 = !DILocation(line: 0, scope: !2720, inlinedAt: !2727)
!2727 = distinct !DILocation(line: 1137, column: 3, scope: !2711, inlinedAt: !2718)
!2728 = !DILocation(line: 59, column: 10, scope: !2720, inlinedAt: !2727)
!2729 = !DILocation(line: 49, column: 7, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !520, file: !521, line: 49, column: 7)
!2731 = !DILocation(line: 49, column: 39, scope: !2730)
!2732 = !DILocation(line: 49, column: 44, scope: !2730)
!2733 = !DILocation(line: 54, column: 1, scope: !520)
!2734 = !DISubprogram(name: "mbrtoc32", scope: !532, file: !532, line: 57, type: !2735, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!2735 = !DISubroutineType(types: !2736)
!2736 = !{!133, !2737, !919, !133, !2739}
!2737 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2738)
!2738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!2739 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2715)
!2740 = distinct !DISubprogram(name: "clone_quoting_options", scope: !551, file: !551, line: 113, type: !2741, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !2744)
!2741 = !DISubroutineType(types: !2742)
!2742 = !{!2743, !2743}
!2743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!2744 = !{!2745, !2746, !2747}
!2745 = !DILocalVariable(name: "o", arg: 1, scope: !2740, file: !551, line: 113, type: !2743)
!2746 = !DILocalVariable(name: "saved_errno", scope: !2740, file: !551, line: 115, type: !87)
!2747 = !DILocalVariable(name: "p", scope: !2740, file: !551, line: 116, type: !2743)
!2748 = !DILocation(line: 0, scope: !2740)
!2749 = !DILocation(line: 115, column: 21, scope: !2740)
!2750 = !DILocation(line: 116, column: 40, scope: !2740)
!2751 = !DILocation(line: 116, column: 31, scope: !2740)
!2752 = !DILocation(line: 118, column: 9, scope: !2740)
!2753 = !DILocation(line: 119, column: 3, scope: !2740)
!2754 = distinct !DISubprogram(name: "get_quoting_style", scope: !551, file: !551, line: 124, type: !2755, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !2759)
!2755 = !DISubroutineType(types: !2756)
!2756 = !{!91, !2757}
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2758, size: 64)
!2758 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !587)
!2759 = !{!2760}
!2760 = !DILocalVariable(name: "o", arg: 1, scope: !2754, file: !551, line: 124, type: !2757)
!2761 = !DILocation(line: 0, scope: !2754)
!2762 = !DILocation(line: 126, column: 11, scope: !2754)
!2763 = !DILocation(line: 126, column: 46, scope: !2754)
!2764 = !{!2765, !860, i64 0}
!2765 = !{!"quoting_options", !860, i64 0, !930, i64 4, !860, i64 8, !859, i64 40, !859, i64 48}
!2766 = !DILocation(line: 126, column: 3, scope: !2754)
!2767 = distinct !DISubprogram(name: "set_quoting_style", scope: !551, file: !551, line: 132, type: !2768, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !2770)
!2768 = !DISubroutineType(types: !2769)
!2769 = !{null, !2743, !91}
!2770 = !{!2771, !2772}
!2771 = !DILocalVariable(name: "o", arg: 1, scope: !2767, file: !551, line: 132, type: !2743)
!2772 = !DILocalVariable(name: "s", arg: 2, scope: !2767, file: !551, line: 132, type: !91)
!2773 = !DILocation(line: 0, scope: !2767)
!2774 = !DILocation(line: 134, column: 4, scope: !2767)
!2775 = !DILocation(line: 134, column: 45, scope: !2767)
!2776 = !DILocation(line: 135, column: 1, scope: !2767)
!2777 = distinct !DISubprogram(name: "set_char_quoting", scope: !551, file: !551, line: 143, type: !2778, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !2780)
!2778 = !DISubroutineType(types: !2779)
!2779 = !{!87, !2743, !4, !87}
!2780 = !{!2781, !2782, !2783, !2784, !2785, !2787, !2788}
!2781 = !DILocalVariable(name: "o", arg: 1, scope: !2777, file: !551, line: 143, type: !2743)
!2782 = !DILocalVariable(name: "c", arg: 2, scope: !2777, file: !551, line: 143, type: !4)
!2783 = !DILocalVariable(name: "i", arg: 3, scope: !2777, file: !551, line: 143, type: !87)
!2784 = !DILocalVariable(name: "uc", scope: !2777, file: !551, line: 145, type: !138)
!2785 = !DILocalVariable(name: "p", scope: !2777, file: !551, line: 146, type: !2786)
!2786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!2787 = !DILocalVariable(name: "shift", scope: !2777, file: !551, line: 148, type: !87)
!2788 = !DILocalVariable(name: "r", scope: !2777, file: !551, line: 149, type: !78)
!2789 = !DILocation(line: 0, scope: !2777)
!2790 = !DILocation(line: 147, column: 6, scope: !2777)
!2791 = !DILocation(line: 147, column: 41, scope: !2777)
!2792 = !DILocation(line: 147, column: 62, scope: !2777)
!2793 = !DILocation(line: 147, column: 57, scope: !2777)
!2794 = !DILocation(line: 148, column: 15, scope: !2777)
!2795 = !DILocation(line: 149, column: 21, scope: !2777)
!2796 = !DILocation(line: 149, column: 24, scope: !2777)
!2797 = !DILocation(line: 149, column: 34, scope: !2777)
!2798 = !DILocation(line: 150, column: 19, scope: !2777)
!2799 = !DILocation(line: 150, column: 24, scope: !2777)
!2800 = !DILocation(line: 150, column: 6, scope: !2777)
!2801 = !DILocation(line: 151, column: 3, scope: !2777)
!2802 = distinct !DISubprogram(name: "set_quoting_flags", scope: !551, file: !551, line: 159, type: !2803, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !2805)
!2803 = !DISubroutineType(types: !2804)
!2804 = !{!87, !2743, !87}
!2805 = !{!2806, !2807, !2808}
!2806 = !DILocalVariable(name: "o", arg: 1, scope: !2802, file: !551, line: 159, type: !2743)
!2807 = !DILocalVariable(name: "i", arg: 2, scope: !2802, file: !551, line: 159, type: !87)
!2808 = !DILocalVariable(name: "r", scope: !2802, file: !551, line: 163, type: !87)
!2809 = !DILocation(line: 0, scope: !2802)
!2810 = !DILocation(line: 161, column: 8, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2802, file: !551, line: 161, column: 7)
!2812 = !DILocation(line: 161, column: 7, scope: !2802)
!2813 = !DILocation(line: 163, column: 14, scope: !2802)
!2814 = !{!2765, !930, i64 4}
!2815 = !DILocation(line: 164, column: 12, scope: !2802)
!2816 = !DILocation(line: 165, column: 3, scope: !2802)
!2817 = distinct !DISubprogram(name: "set_custom_quoting", scope: !551, file: !551, line: 169, type: !2818, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !2820)
!2818 = !DISubroutineType(types: !2819)
!2819 = !{null, !2743, !136, !136}
!2820 = !{!2821, !2822, !2823}
!2821 = !DILocalVariable(name: "o", arg: 1, scope: !2817, file: !551, line: 169, type: !2743)
!2822 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2817, file: !551, line: 170, type: !136)
!2823 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2817, file: !551, line: 170, type: !136)
!2824 = !DILocation(line: 0, scope: !2817)
!2825 = !DILocation(line: 172, column: 8, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2817, file: !551, line: 172, column: 7)
!2827 = !DILocation(line: 172, column: 7, scope: !2817)
!2828 = !DILocation(line: 174, column: 12, scope: !2817)
!2829 = !DILocation(line: 175, column: 8, scope: !2830)
!2830 = distinct !DILexicalBlock(scope: !2817, file: !551, line: 175, column: 7)
!2831 = !DILocation(line: 175, column: 19, scope: !2830)
!2832 = !DILocation(line: 176, column: 5, scope: !2830)
!2833 = !DILocation(line: 177, column: 6, scope: !2817)
!2834 = !DILocation(line: 177, column: 17, scope: !2817)
!2835 = !{!2765, !859, i64 40}
!2836 = !DILocation(line: 178, column: 6, scope: !2817)
!2837 = !DILocation(line: 178, column: 18, scope: !2817)
!2838 = !{!2765, !859, i64 48}
!2839 = !DILocation(line: 179, column: 1, scope: !2817)
!2840 = !DISubprogram(name: "abort", scope: !1054, file: !1054, line: 598, type: !506, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !867)
!2841 = distinct !DISubprogram(name: "quotearg_buffer", scope: !551, file: !551, line: 774, type: !2842, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !2844)
!2842 = !DISubroutineType(types: !2843)
!2843 = !{!133, !130, !133, !136, !133, !2757}
!2844 = !{!2845, !2846, !2847, !2848, !2849, !2850, !2851, !2852}
!2845 = !DILocalVariable(name: "buffer", arg: 1, scope: !2841, file: !551, line: 774, type: !130)
!2846 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2841, file: !551, line: 774, type: !133)
!2847 = !DILocalVariable(name: "arg", arg: 3, scope: !2841, file: !551, line: 775, type: !136)
!2848 = !DILocalVariable(name: "argsize", arg: 4, scope: !2841, file: !551, line: 775, type: !133)
!2849 = !DILocalVariable(name: "o", arg: 5, scope: !2841, file: !551, line: 776, type: !2757)
!2850 = !DILocalVariable(name: "p", scope: !2841, file: !551, line: 778, type: !2757)
!2851 = !DILocalVariable(name: "saved_errno", scope: !2841, file: !551, line: 779, type: !87)
!2852 = !DILocalVariable(name: "r", scope: !2841, file: !551, line: 780, type: !133)
!2853 = !DILocation(line: 0, scope: !2841)
!2854 = !DILocation(line: 778, column: 37, scope: !2841)
!2855 = !DILocation(line: 779, column: 21, scope: !2841)
!2856 = !DILocation(line: 781, column: 43, scope: !2841)
!2857 = !DILocation(line: 781, column: 53, scope: !2841)
!2858 = !DILocation(line: 781, column: 63, scope: !2841)
!2859 = !DILocation(line: 782, column: 43, scope: !2841)
!2860 = !DILocation(line: 782, column: 58, scope: !2841)
!2861 = !DILocation(line: 780, column: 14, scope: !2841)
!2862 = !DILocation(line: 783, column: 9, scope: !2841)
!2863 = !DILocation(line: 784, column: 3, scope: !2841)
!2864 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !551, file: !551, line: 251, type: !2865, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !2869)
!2865 = !DISubroutineType(types: !2866)
!2866 = !{!133, !130, !133, !136, !133, !91, !87, !2867, !136, !136}
!2867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2868, size: 64)
!2868 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!2869 = !{!2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2888, !2889, !2894, !2896, !2899, !2900, !2901, !2902, !2905, !2906, !2909, !2913, !2914, !2922, !2925, !2926, !2928, !2929, !2930, !2931}
!2870 = !DILocalVariable(name: "buffer", arg: 1, scope: !2864, file: !551, line: 251, type: !130)
!2871 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2864, file: !551, line: 251, type: !133)
!2872 = !DILocalVariable(name: "arg", arg: 3, scope: !2864, file: !551, line: 252, type: !136)
!2873 = !DILocalVariable(name: "argsize", arg: 4, scope: !2864, file: !551, line: 252, type: !133)
!2874 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2864, file: !551, line: 253, type: !91)
!2875 = !DILocalVariable(name: "flags", arg: 6, scope: !2864, file: !551, line: 253, type: !87)
!2876 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2864, file: !551, line: 254, type: !2867)
!2877 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2864, file: !551, line: 255, type: !136)
!2878 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2864, file: !551, line: 256, type: !136)
!2879 = !DILocalVariable(name: "unibyte_locale", scope: !2864, file: !551, line: 258, type: !196)
!2880 = !DILocalVariable(name: "len", scope: !2864, file: !551, line: 260, type: !133)
!2881 = !DILocalVariable(name: "orig_buffersize", scope: !2864, file: !551, line: 261, type: !133)
!2882 = !DILocalVariable(name: "quote_string", scope: !2864, file: !551, line: 262, type: !136)
!2883 = !DILocalVariable(name: "quote_string_len", scope: !2864, file: !551, line: 263, type: !133)
!2884 = !DILocalVariable(name: "backslash_escapes", scope: !2864, file: !551, line: 264, type: !196)
!2885 = !DILocalVariable(name: "elide_outer_quotes", scope: !2864, file: !551, line: 265, type: !196)
!2886 = !DILocalVariable(name: "encountered_single_quote", scope: !2864, file: !551, line: 266, type: !196)
!2887 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2864, file: !551, line: 267, type: !196)
!2888 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2864, file: !551, line: 309, type: !196)
!2889 = !DILocalVariable(name: "lq", scope: !2890, file: !551, line: 361, type: !136)
!2890 = distinct !DILexicalBlock(scope: !2891, file: !551, line: 361, column: 11)
!2891 = distinct !DILexicalBlock(scope: !2892, file: !551, line: 360, column: 13)
!2892 = distinct !DILexicalBlock(scope: !2893, file: !551, line: 333, column: 7)
!2893 = distinct !DILexicalBlock(scope: !2864, file: !551, line: 312, column: 5)
!2894 = !DILocalVariable(name: "i", scope: !2895, file: !551, line: 395, type: !133)
!2895 = distinct !DILexicalBlock(scope: !2864, file: !551, line: 395, column: 3)
!2896 = !DILocalVariable(name: "is_right_quote", scope: !2897, file: !551, line: 397, type: !196)
!2897 = distinct !DILexicalBlock(scope: !2898, file: !551, line: 396, column: 5)
!2898 = distinct !DILexicalBlock(scope: !2895, file: !551, line: 395, column: 3)
!2899 = !DILocalVariable(name: "escaping", scope: !2897, file: !551, line: 398, type: !196)
!2900 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2897, file: !551, line: 399, type: !196)
!2901 = !DILocalVariable(name: "c", scope: !2897, file: !551, line: 417, type: !138)
!2902 = !DILocalVariable(name: "m", scope: !2903, file: !551, line: 598, type: !133)
!2903 = distinct !DILexicalBlock(scope: !2904, file: !551, line: 596, column: 11)
!2904 = distinct !DILexicalBlock(scope: !2897, file: !551, line: 419, column: 9)
!2905 = !DILocalVariable(name: "printable", scope: !2903, file: !551, line: 600, type: !196)
!2906 = !DILocalVariable(name: "mbs", scope: !2907, file: !551, line: 609, type: !619)
!2907 = distinct !DILexicalBlock(scope: !2908, file: !551, line: 608, column: 15)
!2908 = distinct !DILexicalBlock(scope: !2903, file: !551, line: 602, column: 17)
!2909 = !DILocalVariable(name: "w", scope: !2910, file: !551, line: 618, type: !531)
!2910 = distinct !DILexicalBlock(scope: !2911, file: !551, line: 617, column: 19)
!2911 = distinct !DILexicalBlock(scope: !2912, file: !551, line: 616, column: 17)
!2912 = distinct !DILexicalBlock(scope: !2907, file: !551, line: 616, column: 17)
!2913 = !DILocalVariable(name: "bytes", scope: !2910, file: !551, line: 619, type: !133)
!2914 = !DILocalVariable(name: "j", scope: !2915, file: !551, line: 648, type: !133)
!2915 = distinct !DILexicalBlock(scope: !2916, file: !551, line: 648, column: 29)
!2916 = distinct !DILexicalBlock(scope: !2917, file: !551, line: 647, column: 27)
!2917 = distinct !DILexicalBlock(scope: !2918, file: !551, line: 645, column: 29)
!2918 = distinct !DILexicalBlock(scope: !2919, file: !551, line: 636, column: 23)
!2919 = distinct !DILexicalBlock(scope: !2920, file: !551, line: 628, column: 30)
!2920 = distinct !DILexicalBlock(scope: !2921, file: !551, line: 623, column: 30)
!2921 = distinct !DILexicalBlock(scope: !2910, file: !551, line: 621, column: 25)
!2922 = !DILocalVariable(name: "ilim", scope: !2923, file: !551, line: 674, type: !133)
!2923 = distinct !DILexicalBlock(scope: !2924, file: !551, line: 671, column: 15)
!2924 = distinct !DILexicalBlock(scope: !2903, file: !551, line: 670, column: 17)
!2925 = !DILabel(scope: !2864, name: "process_input", file: !551, line: 308)
!2926 = !DILabel(scope: !2927, name: "c_and_shell_escape", file: !551, line: 502)
!2927 = distinct !DILexicalBlock(scope: !2904, file: !551, line: 478, column: 9)
!2928 = !DILabel(scope: !2927, name: "c_escape", file: !551, line: 507)
!2929 = !DILabel(scope: !2897, name: "store_escape", file: !551, line: 709)
!2930 = !DILabel(scope: !2897, name: "store_c", file: !551, line: 712)
!2931 = !DILabel(scope: !2864, name: "force_outer_quoting_style", file: !551, line: 753)
!2932 = !DILocation(line: 0, scope: !2864)
!2933 = !DILocation(line: 258, column: 25, scope: !2864)
!2934 = !DILocation(line: 258, column: 36, scope: !2864)
!2935 = !DILocation(line: 265, column: 8, scope: !2864)
!2936 = !DILocation(line: 267, column: 3, scope: !2864)
!2937 = !DILocation(line: 261, column: 10, scope: !2864)
!2938 = !DILocation(line: 262, column: 15, scope: !2864)
!2939 = !DILocation(line: 263, column: 10, scope: !2864)
!2940 = !DILocation(line: 264, column: 8, scope: !2864)
!2941 = !DILocation(line: 266, column: 8, scope: !2864)
!2942 = !DILocation(line: 267, column: 8, scope: !2864)
!2943 = !DILocation(line: 308, column: 2, scope: !2864)
!2944 = !DILocation(line: 311, column: 3, scope: !2864)
!2945 = !DILocation(line: 318, column: 11, scope: !2893)
!2946 = !DILocation(line: 318, column: 12, scope: !2947)
!2947 = distinct !DILexicalBlock(scope: !2893, file: !551, line: 318, column: 11)
!2948 = !DILocation(line: 319, column: 9, scope: !2949)
!2949 = distinct !DILexicalBlock(scope: !2950, file: !551, line: 319, column: 9)
!2950 = distinct !DILexicalBlock(scope: !2947, file: !551, line: 319, column: 9)
!2951 = !DILocation(line: 319, column: 9, scope: !2950)
!2952 = !DILocation(line: 0, scope: !610, inlinedAt: !2953)
!2953 = distinct !DILocation(line: 357, column: 26, scope: !2954)
!2954 = distinct !DILexicalBlock(scope: !2955, file: !551, line: 335, column: 11)
!2955 = distinct !DILexicalBlock(scope: !2892, file: !551, line: 334, column: 13)
!2956 = !DILocation(line: 199, column: 29, scope: !610, inlinedAt: !2953)
!2957 = !DILocation(line: 201, column: 19, scope: !2958, inlinedAt: !2953)
!2958 = distinct !DILexicalBlock(scope: !610, file: !551, line: 201, column: 7)
!2959 = !DILocation(line: 201, column: 7, scope: !610, inlinedAt: !2953)
!2960 = !DILocation(line: 229, column: 3, scope: !610, inlinedAt: !2953)
!2961 = !DILocation(line: 230, column: 3, scope: !610, inlinedAt: !2953)
!2962 = !DILocation(line: 230, column: 13, scope: !610, inlinedAt: !2953)
!2963 = !DILocalVariable(name: "ps", arg: 1, scope: !2964, file: !2712, line: 1135, type: !2967)
!2964 = distinct !DISubprogram(name: "mbszero", scope: !2712, file: !2712, line: 1135, type: !2965, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !2968)
!2965 = !DISubroutineType(types: !2966)
!2966 = !{null, !2967}
!2967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!2968 = !{!2963}
!2969 = !DILocation(line: 0, scope: !2964, inlinedAt: !2970)
!2970 = distinct !DILocation(line: 230, column: 18, scope: !610, inlinedAt: !2953)
!2971 = !DILocalVariable(name: "__dest", arg: 1, scope: !2972, file: !1266, line: 57, type: !131)
!2972 = distinct !DISubprogram(name: "memset", scope: !1266, file: !1266, line: 57, type: !2721, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !2973)
!2973 = !{!2971, !2974, !2975}
!2974 = !DILocalVariable(name: "__ch", arg: 2, scope: !2972, file: !1266, line: 57, type: !87)
!2975 = !DILocalVariable(name: "__len", arg: 3, scope: !2972, file: !1266, line: 57, type: !133)
!2976 = !DILocation(line: 0, scope: !2972, inlinedAt: !2977)
!2977 = distinct !DILocation(line: 1137, column: 3, scope: !2964, inlinedAt: !2970)
!2978 = !DILocation(line: 59, column: 10, scope: !2972, inlinedAt: !2977)
!2979 = !DILocation(line: 231, column: 7, scope: !2980, inlinedAt: !2953)
!2980 = distinct !DILexicalBlock(scope: !610, file: !551, line: 231, column: 7)
!2981 = !DILocation(line: 231, column: 40, scope: !2980, inlinedAt: !2953)
!2982 = !DILocation(line: 231, column: 45, scope: !2980, inlinedAt: !2953)
!2983 = !DILocation(line: 235, column: 1, scope: !610, inlinedAt: !2953)
!2984 = !DILocation(line: 0, scope: !610, inlinedAt: !2985)
!2985 = distinct !DILocation(line: 358, column: 27, scope: !2954)
!2986 = !DILocation(line: 199, column: 29, scope: !610, inlinedAt: !2985)
!2987 = !DILocation(line: 201, column: 19, scope: !2958, inlinedAt: !2985)
!2988 = !DILocation(line: 201, column: 7, scope: !610, inlinedAt: !2985)
!2989 = !DILocation(line: 229, column: 3, scope: !610, inlinedAt: !2985)
!2990 = !DILocation(line: 230, column: 3, scope: !610, inlinedAt: !2985)
!2991 = !DILocation(line: 230, column: 13, scope: !610, inlinedAt: !2985)
!2992 = !DILocation(line: 0, scope: !2964, inlinedAt: !2993)
!2993 = distinct !DILocation(line: 230, column: 18, scope: !610, inlinedAt: !2985)
!2994 = !DILocation(line: 0, scope: !2972, inlinedAt: !2995)
!2995 = distinct !DILocation(line: 1137, column: 3, scope: !2964, inlinedAt: !2993)
!2996 = !DILocation(line: 59, column: 10, scope: !2972, inlinedAt: !2995)
!2997 = !DILocation(line: 231, column: 7, scope: !2980, inlinedAt: !2985)
!2998 = !DILocation(line: 231, column: 40, scope: !2980, inlinedAt: !2985)
!2999 = !DILocation(line: 231, column: 45, scope: !2980, inlinedAt: !2985)
!3000 = !DILocation(line: 235, column: 1, scope: !610, inlinedAt: !2985)
!3001 = !DILocation(line: 360, column: 14, scope: !2891)
!3002 = !DILocation(line: 360, column: 13, scope: !2892)
!3003 = !DILocation(line: 0, scope: !2890)
!3004 = !DILocation(line: 361, column: 45, scope: !3005)
!3005 = distinct !DILexicalBlock(scope: !2890, file: !551, line: 361, column: 11)
!3006 = !DILocation(line: 361, column: 11, scope: !2890)
!3007 = !DILocation(line: 362, column: 13, scope: !3008)
!3008 = distinct !DILexicalBlock(scope: !3009, file: !551, line: 362, column: 13)
!3009 = distinct !DILexicalBlock(scope: !3005, file: !551, line: 362, column: 13)
!3010 = !DILocation(line: 362, column: 13, scope: !3009)
!3011 = !DILocation(line: 361, column: 52, scope: !3005)
!3012 = distinct !{!3012, !3006, !3013, !976}
!3013 = !DILocation(line: 362, column: 13, scope: !2890)
!3014 = !DILocation(line: 260, column: 10, scope: !2864)
!3015 = !DILocation(line: 365, column: 28, scope: !2892)
!3016 = !DILocation(line: 367, column: 7, scope: !2893)
!3017 = !DILocation(line: 370, column: 7, scope: !2893)
!3018 = !DILocation(line: 373, column: 7, scope: !2893)
!3019 = !DILocation(line: 376, column: 12, scope: !3020)
!3020 = distinct !DILexicalBlock(scope: !2893, file: !551, line: 376, column: 11)
!3021 = !DILocation(line: 376, column: 11, scope: !2893)
!3022 = !DILocation(line: 381, column: 12, scope: !3023)
!3023 = distinct !DILexicalBlock(scope: !2893, file: !551, line: 381, column: 11)
!3024 = !DILocation(line: 381, column: 11, scope: !2893)
!3025 = !DILocation(line: 382, column: 9, scope: !3026)
!3026 = distinct !DILexicalBlock(scope: !3027, file: !551, line: 382, column: 9)
!3027 = distinct !DILexicalBlock(scope: !3023, file: !551, line: 382, column: 9)
!3028 = !DILocation(line: 382, column: 9, scope: !3027)
!3029 = !DILocation(line: 389, column: 7, scope: !2893)
!3030 = !DILocation(line: 392, column: 7, scope: !2893)
!3031 = !DILocation(line: 0, scope: !2895)
!3032 = !DILocation(line: 395, column: 8, scope: !2895)
!3033 = !DILocation(line: 309, column: 8, scope: !2864)
!3034 = !DILocation(line: 395, scope: !2895)
!3035 = !DILocation(line: 395, column: 34, scope: !2898)
!3036 = !DILocation(line: 395, column: 26, scope: !2898)
!3037 = !DILocation(line: 395, column: 48, scope: !2898)
!3038 = !DILocation(line: 395, column: 55, scope: !2898)
!3039 = !DILocation(line: 395, column: 3, scope: !2895)
!3040 = !DILocation(line: 395, column: 67, scope: !2898)
!3041 = !DILocation(line: 0, scope: !2897)
!3042 = !DILocation(line: 402, column: 11, scope: !3043)
!3043 = distinct !DILexicalBlock(scope: !2897, file: !551, line: 401, column: 11)
!3044 = !DILocation(line: 404, column: 17, scope: !3043)
!3045 = !DILocation(line: 405, column: 39, scope: !3043)
!3046 = !DILocation(line: 409, column: 32, scope: !3043)
!3047 = !DILocation(line: 405, column: 19, scope: !3043)
!3048 = !DILocation(line: 405, column: 15, scope: !3043)
!3049 = !DILocation(line: 410, column: 11, scope: !3043)
!3050 = !DILocation(line: 410, column: 25, scope: !3043)
!3051 = !DILocalVariable(name: "__s1", arg: 1, scope: !3052, file: !942, line: 974, type: !1078)
!3052 = distinct !DISubprogram(name: "memeq", scope: !942, file: !942, line: 974, type: !2682, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !3053)
!3053 = !{!3051, !3054, !3055}
!3054 = !DILocalVariable(name: "__s2", arg: 2, scope: !3052, file: !942, line: 974, type: !1078)
!3055 = !DILocalVariable(name: "__n", arg: 3, scope: !3052, file: !942, line: 974, type: !133)
!3056 = !DILocation(line: 0, scope: !3052, inlinedAt: !3057)
!3057 = distinct !DILocation(line: 410, column: 14, scope: !3043)
!3058 = !DILocation(line: 976, column: 11, scope: !3052, inlinedAt: !3057)
!3059 = !DILocation(line: 976, column: 10, scope: !3052, inlinedAt: !3057)
!3060 = !DILocation(line: 401, column: 11, scope: !2897)
!3061 = !DILocation(line: 417, column: 25, scope: !2897)
!3062 = !DILocation(line: 418, column: 7, scope: !2897)
!3063 = !DILocation(line: 421, column: 15, scope: !2904)
!3064 = !DILocation(line: 423, column: 15, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !3066, file: !551, line: 423, column: 15)
!3066 = distinct !DILexicalBlock(scope: !3067, file: !551, line: 422, column: 13)
!3067 = distinct !DILexicalBlock(scope: !2904, file: !551, line: 421, column: 15)
!3068 = !DILocation(line: 423, column: 15, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !3065, file: !551, line: 423, column: 15)
!3070 = !DILocation(line: 423, column: 15, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !3072, file: !551, line: 423, column: 15)
!3072 = distinct !DILexicalBlock(scope: !3073, file: !551, line: 423, column: 15)
!3073 = distinct !DILexicalBlock(scope: !3069, file: !551, line: 423, column: 15)
!3074 = !DILocation(line: 423, column: 15, scope: !3072)
!3075 = !DILocation(line: 423, column: 15, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !3077, file: !551, line: 423, column: 15)
!3077 = distinct !DILexicalBlock(scope: !3073, file: !551, line: 423, column: 15)
!3078 = !DILocation(line: 423, column: 15, scope: !3077)
!3079 = !DILocation(line: 423, column: 15, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !3081, file: !551, line: 423, column: 15)
!3081 = distinct !DILexicalBlock(scope: !3073, file: !551, line: 423, column: 15)
!3082 = !DILocation(line: 423, column: 15, scope: !3081)
!3083 = !DILocation(line: 423, column: 15, scope: !3073)
!3084 = !DILocation(line: 423, column: 15, scope: !3085)
!3085 = distinct !DILexicalBlock(scope: !3086, file: !551, line: 423, column: 15)
!3086 = distinct !DILexicalBlock(scope: !3065, file: !551, line: 423, column: 15)
!3087 = !DILocation(line: 423, column: 15, scope: !3086)
!3088 = !DILocation(line: 431, column: 19, scope: !3089)
!3089 = distinct !DILexicalBlock(scope: !3066, file: !551, line: 430, column: 19)
!3090 = !DILocation(line: 431, column: 24, scope: !3089)
!3091 = !DILocation(line: 431, column: 28, scope: !3089)
!3092 = !DILocation(line: 431, column: 38, scope: !3089)
!3093 = !DILocation(line: 431, column: 48, scope: !3089)
!3094 = !DILocation(line: 431, column: 59, scope: !3089)
!3095 = !DILocation(line: 433, column: 19, scope: !3096)
!3096 = distinct !DILexicalBlock(scope: !3097, file: !551, line: 433, column: 19)
!3097 = distinct !DILexicalBlock(scope: !3098, file: !551, line: 433, column: 19)
!3098 = distinct !DILexicalBlock(scope: !3089, file: !551, line: 432, column: 17)
!3099 = !DILocation(line: 433, column: 19, scope: !3097)
!3100 = !DILocation(line: 434, column: 19, scope: !3101)
!3101 = distinct !DILexicalBlock(scope: !3102, file: !551, line: 434, column: 19)
!3102 = distinct !DILexicalBlock(scope: !3098, file: !551, line: 434, column: 19)
!3103 = !DILocation(line: 434, column: 19, scope: !3102)
!3104 = !DILocation(line: 435, column: 17, scope: !3098)
!3105 = !DILocation(line: 442, column: 20, scope: !3067)
!3106 = !DILocation(line: 447, column: 11, scope: !2904)
!3107 = !DILocation(line: 450, column: 19, scope: !3108)
!3108 = distinct !DILexicalBlock(scope: !2904, file: !551, line: 448, column: 13)
!3109 = !DILocation(line: 456, column: 19, scope: !3110)
!3110 = distinct !DILexicalBlock(scope: !3108, file: !551, line: 455, column: 19)
!3111 = !DILocation(line: 456, column: 24, scope: !3110)
!3112 = !DILocation(line: 456, column: 28, scope: !3110)
!3113 = !DILocation(line: 456, column: 38, scope: !3110)
!3114 = !DILocation(line: 456, column: 47, scope: !3110)
!3115 = !DILocation(line: 456, column: 41, scope: !3110)
!3116 = !DILocation(line: 456, column: 52, scope: !3110)
!3117 = !DILocation(line: 455, column: 19, scope: !3108)
!3118 = !DILocation(line: 457, column: 25, scope: !3110)
!3119 = !DILocation(line: 457, column: 17, scope: !3110)
!3120 = !DILocation(line: 464, column: 25, scope: !3121)
!3121 = distinct !DILexicalBlock(scope: !3110, file: !551, line: 458, column: 19)
!3122 = !DILocation(line: 468, column: 21, scope: !3123)
!3123 = distinct !DILexicalBlock(scope: !3124, file: !551, line: 468, column: 21)
!3124 = distinct !DILexicalBlock(scope: !3121, file: !551, line: 468, column: 21)
!3125 = !DILocation(line: 468, column: 21, scope: !3124)
!3126 = !DILocation(line: 469, column: 21, scope: !3127)
!3127 = distinct !DILexicalBlock(scope: !3128, file: !551, line: 469, column: 21)
!3128 = distinct !DILexicalBlock(scope: !3121, file: !551, line: 469, column: 21)
!3129 = !DILocation(line: 469, column: 21, scope: !3128)
!3130 = !DILocation(line: 470, column: 21, scope: !3131)
!3131 = distinct !DILexicalBlock(scope: !3132, file: !551, line: 470, column: 21)
!3132 = distinct !DILexicalBlock(scope: !3121, file: !551, line: 470, column: 21)
!3133 = !DILocation(line: 470, column: 21, scope: !3132)
!3134 = !DILocation(line: 471, column: 21, scope: !3135)
!3135 = distinct !DILexicalBlock(scope: !3136, file: !551, line: 471, column: 21)
!3136 = distinct !DILexicalBlock(scope: !3121, file: !551, line: 471, column: 21)
!3137 = !DILocation(line: 471, column: 21, scope: !3136)
!3138 = !DILocation(line: 472, column: 21, scope: !3121)
!3139 = !DILocation(line: 482, column: 33, scope: !2927)
!3140 = !DILocation(line: 483, column: 33, scope: !2927)
!3141 = !DILocation(line: 485, column: 33, scope: !2927)
!3142 = !DILocation(line: 486, column: 33, scope: !2927)
!3143 = !DILocation(line: 487, column: 33, scope: !2927)
!3144 = !DILocation(line: 490, column: 17, scope: !2927)
!3145 = !DILocation(line: 492, column: 21, scope: !3146)
!3146 = distinct !DILexicalBlock(scope: !3147, file: !551, line: 491, column: 15)
!3147 = distinct !DILexicalBlock(scope: !2927, file: !551, line: 490, column: 17)
!3148 = !DILocation(line: 499, column: 35, scope: !3149)
!3149 = distinct !DILexicalBlock(scope: !2927, file: !551, line: 499, column: 17)
!3150 = !DILocation(line: 499, column: 57, scope: !3149)
!3151 = !DILocation(line: 0, scope: !2927)
!3152 = !DILocation(line: 502, column: 11, scope: !2927)
!3153 = !DILocation(line: 504, column: 17, scope: !3154)
!3154 = distinct !DILexicalBlock(scope: !2927, file: !551, line: 503, column: 17)
!3155 = !DILocation(line: 507, column: 11, scope: !2927)
!3156 = !DILocation(line: 508, column: 17, scope: !2927)
!3157 = !DILocation(line: 517, column: 15, scope: !2904)
!3158 = !DILocation(line: 517, column: 40, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !2904, file: !551, line: 517, column: 15)
!3160 = !DILocation(line: 517, column: 47, scope: !3159)
!3161 = !DILocation(line: 517, column: 18, scope: !3159)
!3162 = !DILocation(line: 521, column: 17, scope: !3163)
!3163 = distinct !DILexicalBlock(scope: !2904, file: !551, line: 521, column: 15)
!3164 = !DILocation(line: 521, column: 15, scope: !2904)
!3165 = !DILocation(line: 525, column: 11, scope: !2904)
!3166 = !DILocation(line: 537, column: 15, scope: !3167)
!3167 = distinct !DILexicalBlock(scope: !2904, file: !551, line: 536, column: 15)
!3168 = !DILocation(line: 544, column: 15, scope: !2904)
!3169 = !DILocation(line: 546, column: 19, scope: !3170)
!3170 = distinct !DILexicalBlock(scope: !3171, file: !551, line: 545, column: 13)
!3171 = distinct !DILexicalBlock(scope: !2904, file: !551, line: 544, column: 15)
!3172 = !DILocation(line: 549, column: 19, scope: !3173)
!3173 = distinct !DILexicalBlock(scope: !3170, file: !551, line: 549, column: 19)
!3174 = !DILocation(line: 549, column: 30, scope: !3173)
!3175 = !DILocation(line: 558, column: 15, scope: !3176)
!3176 = distinct !DILexicalBlock(scope: !3177, file: !551, line: 558, column: 15)
!3177 = distinct !DILexicalBlock(scope: !3170, file: !551, line: 558, column: 15)
!3178 = !DILocation(line: 558, column: 15, scope: !3177)
!3179 = !DILocation(line: 559, column: 15, scope: !3180)
!3180 = distinct !DILexicalBlock(scope: !3181, file: !551, line: 559, column: 15)
!3181 = distinct !DILexicalBlock(scope: !3170, file: !551, line: 559, column: 15)
!3182 = !DILocation(line: 559, column: 15, scope: !3181)
!3183 = !DILocation(line: 560, column: 15, scope: !3184)
!3184 = distinct !DILexicalBlock(scope: !3185, file: !551, line: 560, column: 15)
!3185 = distinct !DILexicalBlock(scope: !3170, file: !551, line: 560, column: 15)
!3186 = !DILocation(line: 560, column: 15, scope: !3185)
!3187 = !DILocation(line: 562, column: 13, scope: !3170)
!3188 = !DILocation(line: 602, column: 17, scope: !2903)
!3189 = !DILocation(line: 0, scope: !2903)
!3190 = !DILocation(line: 605, column: 29, scope: !3191)
!3191 = distinct !DILexicalBlock(scope: !2908, file: !551, line: 603, column: 15)
!3192 = !DILocation(line: 605, column: 27, scope: !3191)
!3193 = !DILocation(line: 668, column: 40, scope: !2903)
!3194 = !DILocation(line: 670, column: 23, scope: !2924)
!3195 = !DILocation(line: 609, column: 17, scope: !2907)
!3196 = !DILocation(line: 609, column: 27, scope: !2907)
!3197 = !DILocation(line: 0, scope: !2964, inlinedAt: !3198)
!3198 = distinct !DILocation(line: 609, column: 32, scope: !2907)
!3199 = !DILocation(line: 0, scope: !2972, inlinedAt: !3200)
!3200 = distinct !DILocation(line: 1137, column: 3, scope: !2964, inlinedAt: !3198)
!3201 = !DILocation(line: 59, column: 10, scope: !2972, inlinedAt: !3200)
!3202 = !DILocation(line: 613, column: 29, scope: !3203)
!3203 = distinct !DILexicalBlock(scope: !2907, file: !551, line: 613, column: 21)
!3204 = !DILocation(line: 613, column: 21, scope: !2907)
!3205 = !DILocation(line: 614, column: 29, scope: !3203)
!3206 = !DILocation(line: 614, column: 19, scope: !3203)
!3207 = !DILocation(line: 618, column: 21, scope: !2910)
!3208 = !DILocation(line: 620, column: 54, scope: !2910)
!3209 = !DILocation(line: 0, scope: !2910)
!3210 = !DILocation(line: 619, column: 36, scope: !2910)
!3211 = !DILocation(line: 621, column: 25, scope: !2910)
!3212 = !DILocation(line: 631, column: 38, scope: !3213)
!3213 = distinct !DILexicalBlock(scope: !2919, file: !551, line: 629, column: 23)
!3214 = !DILocation(line: 631, column: 48, scope: !3213)
!3215 = !DILocation(line: 665, column: 19, scope: !2911)
!3216 = !DILocation(line: 666, column: 15, scope: !2908)
!3217 = !DILocation(line: 626, column: 25, scope: !3218)
!3218 = distinct !DILexicalBlock(scope: !2920, file: !551, line: 624, column: 23)
!3219 = !DILocation(line: 631, column: 51, scope: !3213)
!3220 = !DILocation(line: 631, column: 25, scope: !3213)
!3221 = !DILocation(line: 632, column: 28, scope: !3213)
!3222 = !DILocation(line: 631, column: 34, scope: !3213)
!3223 = distinct !{!3223, !3220, !3221, !976}
!3224 = !DILocation(line: 646, column: 29, scope: !2917)
!3225 = !DILocation(line: 0, scope: !2915)
!3226 = !DILocation(line: 649, column: 49, scope: !3227)
!3227 = distinct !DILexicalBlock(scope: !2915, file: !551, line: 648, column: 29)
!3228 = !DILocation(line: 649, column: 39, scope: !3227)
!3229 = !DILocation(line: 649, column: 31, scope: !3227)
!3230 = !DILocation(line: 648, column: 60, scope: !3227)
!3231 = !DILocation(line: 648, column: 50, scope: !3227)
!3232 = !DILocation(line: 648, column: 29, scope: !2915)
!3233 = distinct !{!3233, !3232, !3234, !976}
!3234 = !DILocation(line: 654, column: 33, scope: !2915)
!3235 = !DILocation(line: 657, column: 43, scope: !3236)
!3236 = distinct !DILexicalBlock(scope: !2918, file: !551, line: 657, column: 29)
!3237 = !DILocalVariable(name: "wc", arg: 1, scope: !3238, file: !3239, line: 865, type: !3242)
!3238 = distinct !DISubprogram(name: "c32isprint", scope: !3239, file: !3239, line: 865, type: !3240, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !3244)
!3239 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!3240 = !DISubroutineType(types: !3241)
!3241 = !{!87, !3242}
!3242 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !3243, line: 20, baseType: !78)
!3243 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!3244 = !{!3237}
!3245 = !DILocation(line: 0, scope: !3238, inlinedAt: !3246)
!3246 = distinct !DILocation(line: 657, column: 31, scope: !3236)
!3247 = !DILocation(line: 871, column: 10, scope: !3238, inlinedAt: !3246)
!3248 = !DILocation(line: 657, column: 31, scope: !3236)
!3249 = !DILocation(line: 657, column: 29, scope: !2918)
!3250 = !DILocation(line: 664, column: 23, scope: !2910)
!3251 = !DILocation(line: 670, column: 19, scope: !2924)
!3252 = !DILocation(line: 670, column: 45, scope: !2924)
!3253 = !DILocation(line: 674, column: 33, scope: !2923)
!3254 = !DILocation(line: 0, scope: !2923)
!3255 = !DILocation(line: 676, column: 17, scope: !2923)
!3256 = !DILocation(line: 398, column: 12, scope: !2897)
!3257 = !DILocation(line: 678, column: 43, scope: !3258)
!3258 = distinct !DILexicalBlock(scope: !3259, file: !551, line: 678, column: 25)
!3259 = distinct !DILexicalBlock(scope: !3260, file: !551, line: 677, column: 19)
!3260 = distinct !DILexicalBlock(scope: !3261, file: !551, line: 676, column: 17)
!3261 = distinct !DILexicalBlock(scope: !2923, file: !551, line: 676, column: 17)
!3262 = !DILocation(line: 680, column: 25, scope: !3263)
!3263 = distinct !DILexicalBlock(scope: !3264, file: !551, line: 680, column: 25)
!3264 = distinct !DILexicalBlock(scope: !3258, file: !551, line: 679, column: 23)
!3265 = !DILocation(line: 680, column: 25, scope: !3266)
!3266 = distinct !DILexicalBlock(scope: !3263, file: !551, line: 680, column: 25)
!3267 = !DILocation(line: 680, column: 25, scope: !3268)
!3268 = distinct !DILexicalBlock(scope: !3269, file: !551, line: 680, column: 25)
!3269 = distinct !DILexicalBlock(scope: !3270, file: !551, line: 680, column: 25)
!3270 = distinct !DILexicalBlock(scope: !3266, file: !551, line: 680, column: 25)
!3271 = !DILocation(line: 680, column: 25, scope: !3269)
!3272 = !DILocation(line: 680, column: 25, scope: !3273)
!3273 = distinct !DILexicalBlock(scope: !3274, file: !551, line: 680, column: 25)
!3274 = distinct !DILexicalBlock(scope: !3270, file: !551, line: 680, column: 25)
!3275 = !DILocation(line: 680, column: 25, scope: !3274)
!3276 = !DILocation(line: 680, column: 25, scope: !3277)
!3277 = distinct !DILexicalBlock(scope: !3278, file: !551, line: 680, column: 25)
!3278 = distinct !DILexicalBlock(scope: !3270, file: !551, line: 680, column: 25)
!3279 = !DILocation(line: 680, column: 25, scope: !3278)
!3280 = !DILocation(line: 680, column: 25, scope: !3270)
!3281 = !DILocation(line: 680, column: 25, scope: !3282)
!3282 = distinct !DILexicalBlock(scope: !3283, file: !551, line: 680, column: 25)
!3283 = distinct !DILexicalBlock(scope: !3263, file: !551, line: 680, column: 25)
!3284 = !DILocation(line: 680, column: 25, scope: !3283)
!3285 = !DILocation(line: 681, column: 25, scope: !3286)
!3286 = distinct !DILexicalBlock(scope: !3287, file: !551, line: 681, column: 25)
!3287 = distinct !DILexicalBlock(scope: !3264, file: !551, line: 681, column: 25)
!3288 = !DILocation(line: 681, column: 25, scope: !3287)
!3289 = !DILocation(line: 682, column: 25, scope: !3290)
!3290 = distinct !DILexicalBlock(scope: !3291, file: !551, line: 682, column: 25)
!3291 = distinct !DILexicalBlock(scope: !3264, file: !551, line: 682, column: 25)
!3292 = !DILocation(line: 682, column: 25, scope: !3291)
!3293 = !DILocation(line: 683, column: 38, scope: !3264)
!3294 = !DILocation(line: 683, column: 33, scope: !3264)
!3295 = !DILocation(line: 684, column: 23, scope: !3264)
!3296 = !DILocation(line: 685, column: 30, scope: !3297)
!3297 = distinct !DILexicalBlock(scope: !3258, file: !551, line: 685, column: 30)
!3298 = !DILocation(line: 685, column: 30, scope: !3258)
!3299 = !DILocation(line: 687, column: 25, scope: !3300)
!3300 = distinct !DILexicalBlock(scope: !3301, file: !551, line: 687, column: 25)
!3301 = distinct !DILexicalBlock(scope: !3302, file: !551, line: 687, column: 25)
!3302 = distinct !DILexicalBlock(scope: !3297, file: !551, line: 686, column: 23)
!3303 = !DILocation(line: 687, column: 25, scope: !3301)
!3304 = !DILocation(line: 689, column: 23, scope: !3302)
!3305 = !DILocation(line: 690, column: 35, scope: !3306)
!3306 = distinct !DILexicalBlock(scope: !3259, file: !551, line: 690, column: 25)
!3307 = !DILocation(line: 690, column: 30, scope: !3306)
!3308 = !DILocation(line: 690, column: 25, scope: !3259)
!3309 = !DILocation(line: 692, column: 21, scope: !3310)
!3310 = distinct !DILexicalBlock(scope: !3311, file: !551, line: 692, column: 21)
!3311 = distinct !DILexicalBlock(scope: !3259, file: !551, line: 692, column: 21)
!3312 = !DILocation(line: 692, column: 21, scope: !3313)
!3313 = distinct !DILexicalBlock(scope: !3314, file: !551, line: 692, column: 21)
!3314 = distinct !DILexicalBlock(scope: !3315, file: !551, line: 692, column: 21)
!3315 = distinct !DILexicalBlock(scope: !3310, file: !551, line: 692, column: 21)
!3316 = !DILocation(line: 692, column: 21, scope: !3314)
!3317 = !DILocation(line: 692, column: 21, scope: !3318)
!3318 = distinct !DILexicalBlock(scope: !3319, file: !551, line: 692, column: 21)
!3319 = distinct !DILexicalBlock(scope: !3315, file: !551, line: 692, column: 21)
!3320 = !DILocation(line: 692, column: 21, scope: !3319)
!3321 = !DILocation(line: 692, column: 21, scope: !3315)
!3322 = !DILocation(line: 0, scope: !3259)
!3323 = !DILocation(line: 693, column: 21, scope: !3324)
!3324 = distinct !DILexicalBlock(scope: !3325, file: !551, line: 693, column: 21)
!3325 = distinct !DILexicalBlock(scope: !3259, file: !551, line: 693, column: 21)
!3326 = !DILocation(line: 693, column: 21, scope: !3325)
!3327 = !DILocation(line: 694, column: 25, scope: !3259)
!3328 = !DILocation(line: 676, column: 17, scope: !3260)
!3329 = distinct !{!3329, !3330, !3331}
!3330 = !DILocation(line: 676, column: 17, scope: !3261)
!3331 = !DILocation(line: 695, column: 19, scope: !3261)
!3332 = !DILocation(line: 409, column: 30, scope: !3043)
!3333 = !DILocation(line: 702, column: 34, scope: !3334)
!3334 = distinct !DILexicalBlock(scope: !2897, file: !551, line: 702, column: 11)
!3335 = !DILocation(line: 704, column: 14, scope: !3334)
!3336 = !DILocation(line: 705, column: 14, scope: !3334)
!3337 = !DILocation(line: 705, column: 35, scope: !3334)
!3338 = !DILocation(line: 705, column: 17, scope: !3334)
!3339 = !DILocation(line: 705, column: 47, scope: !3334)
!3340 = !DILocation(line: 705, column: 65, scope: !3334)
!3341 = !DILocation(line: 706, column: 11, scope: !3334)
!3342 = !DILocation(line: 702, column: 11, scope: !2897)
!3343 = !DILocation(line: 395, column: 15, scope: !2895)
!3344 = !DILocation(line: 709, column: 5, scope: !2897)
!3345 = !DILocation(line: 710, column: 7, scope: !3346)
!3346 = distinct !DILexicalBlock(scope: !2897, file: !551, line: 710, column: 7)
!3347 = !DILocation(line: 710, column: 7, scope: !3348)
!3348 = distinct !DILexicalBlock(scope: !3346, file: !551, line: 710, column: 7)
!3349 = !DILocation(line: 710, column: 7, scope: !3350)
!3350 = distinct !DILexicalBlock(scope: !3351, file: !551, line: 710, column: 7)
!3351 = distinct !DILexicalBlock(scope: !3352, file: !551, line: 710, column: 7)
!3352 = distinct !DILexicalBlock(scope: !3348, file: !551, line: 710, column: 7)
!3353 = !DILocation(line: 710, column: 7, scope: !3351)
!3354 = !DILocation(line: 710, column: 7, scope: !3355)
!3355 = distinct !DILexicalBlock(scope: !3356, file: !551, line: 710, column: 7)
!3356 = distinct !DILexicalBlock(scope: !3352, file: !551, line: 710, column: 7)
!3357 = !DILocation(line: 710, column: 7, scope: !3356)
!3358 = !DILocation(line: 710, column: 7, scope: !3359)
!3359 = distinct !DILexicalBlock(scope: !3360, file: !551, line: 710, column: 7)
!3360 = distinct !DILexicalBlock(scope: !3352, file: !551, line: 710, column: 7)
!3361 = !DILocation(line: 710, column: 7, scope: !3360)
!3362 = !DILocation(line: 710, column: 7, scope: !3352)
!3363 = !DILocation(line: 710, column: 7, scope: !3364)
!3364 = distinct !DILexicalBlock(scope: !3365, file: !551, line: 710, column: 7)
!3365 = distinct !DILexicalBlock(scope: !3346, file: !551, line: 710, column: 7)
!3366 = !DILocation(line: 710, column: 7, scope: !3365)
!3367 = !DILocation(line: 712, column: 5, scope: !2897)
!3368 = !DILocation(line: 713, column: 7, scope: !3369)
!3369 = distinct !DILexicalBlock(scope: !3370, file: !551, line: 713, column: 7)
!3370 = distinct !DILexicalBlock(scope: !2897, file: !551, line: 713, column: 7)
!3371 = !DILocation(line: 417, column: 21, scope: !2897)
!3372 = !DILocation(line: 713, column: 7, scope: !3373)
!3373 = distinct !DILexicalBlock(scope: !3374, file: !551, line: 713, column: 7)
!3374 = distinct !DILexicalBlock(scope: !3375, file: !551, line: 713, column: 7)
!3375 = distinct !DILexicalBlock(scope: !3369, file: !551, line: 713, column: 7)
!3376 = !DILocation(line: 713, column: 7, scope: !3374)
!3377 = !DILocation(line: 713, column: 7, scope: !3378)
!3378 = distinct !DILexicalBlock(scope: !3379, file: !551, line: 713, column: 7)
!3379 = distinct !DILexicalBlock(scope: !3375, file: !551, line: 713, column: 7)
!3380 = !DILocation(line: 713, column: 7, scope: !3379)
!3381 = !DILocation(line: 713, column: 7, scope: !3375)
!3382 = !DILocation(line: 714, column: 7, scope: !3383)
!3383 = distinct !DILexicalBlock(scope: !3384, file: !551, line: 714, column: 7)
!3384 = distinct !DILexicalBlock(scope: !2897, file: !551, line: 714, column: 7)
!3385 = !DILocation(line: 714, column: 7, scope: !3384)
!3386 = !DILocation(line: 716, column: 13, scope: !3387)
!3387 = distinct !DILexicalBlock(scope: !2897, file: !551, line: 716, column: 11)
!3388 = !DILocation(line: 716, column: 11, scope: !2897)
!3389 = !DILocation(line: 718, column: 5, scope: !2898)
!3390 = !DILocation(line: 395, column: 82, scope: !2898)
!3391 = !DILocation(line: 395, column: 3, scope: !2898)
!3392 = distinct !{!3392, !3039, !3393, !976}
!3393 = !DILocation(line: 718, column: 5, scope: !2895)
!3394 = !DILocation(line: 720, column: 11, scope: !3395)
!3395 = distinct !DILexicalBlock(scope: !2864, file: !551, line: 720, column: 7)
!3396 = !DILocation(line: 720, column: 16, scope: !3395)
!3397 = !DILocation(line: 728, column: 51, scope: !3398)
!3398 = distinct !DILexicalBlock(scope: !2864, file: !551, line: 728, column: 7)
!3399 = !DILocation(line: 731, column: 11, scope: !3400)
!3400 = distinct !DILexicalBlock(scope: !3401, file: !551, line: 731, column: 11)
!3401 = distinct !DILexicalBlock(scope: !3398, file: !551, line: 730, column: 5)
!3402 = !DILocation(line: 731, column: 11, scope: !3401)
!3403 = !DILocation(line: 732, column: 16, scope: !3400)
!3404 = !DILocation(line: 732, column: 9, scope: !3400)
!3405 = !DILocation(line: 736, column: 18, scope: !3406)
!3406 = distinct !DILexicalBlock(scope: !3400, file: !551, line: 736, column: 16)
!3407 = !DILocation(line: 736, column: 29, scope: !3406)
!3408 = !DILocation(line: 745, column: 7, scope: !3409)
!3409 = distinct !DILexicalBlock(scope: !2864, file: !551, line: 745, column: 7)
!3410 = !DILocation(line: 745, column: 20, scope: !3409)
!3411 = !DILocation(line: 746, column: 12, scope: !3412)
!3412 = distinct !DILexicalBlock(scope: !3413, file: !551, line: 746, column: 5)
!3413 = distinct !DILexicalBlock(scope: !3409, file: !551, line: 746, column: 5)
!3414 = !DILocation(line: 746, column: 5, scope: !3413)
!3415 = !DILocation(line: 747, column: 7, scope: !3416)
!3416 = distinct !DILexicalBlock(scope: !3417, file: !551, line: 747, column: 7)
!3417 = distinct !DILexicalBlock(scope: !3412, file: !551, line: 747, column: 7)
!3418 = !DILocation(line: 747, column: 7, scope: !3417)
!3419 = !DILocation(line: 746, column: 39, scope: !3412)
!3420 = distinct !{!3420, !3414, !3421, !976}
!3421 = !DILocation(line: 747, column: 7, scope: !3413)
!3422 = !DILocation(line: 749, column: 11, scope: !3423)
!3423 = distinct !DILexicalBlock(scope: !2864, file: !551, line: 749, column: 7)
!3424 = !DILocation(line: 749, column: 7, scope: !2864)
!3425 = !DILocation(line: 750, column: 5, scope: !3423)
!3426 = !DILocation(line: 750, column: 17, scope: !3423)
!3427 = !DILocation(line: 753, column: 2, scope: !2864)
!3428 = !DILocation(line: 756, column: 51, scope: !3429)
!3429 = distinct !DILexicalBlock(scope: !2864, file: !551, line: 756, column: 7)
!3430 = !DILocation(line: 756, column: 21, scope: !3429)
!3431 = !DILocation(line: 760, column: 42, scope: !2864)
!3432 = !DILocation(line: 758, column: 10, scope: !2864)
!3433 = !DILocation(line: 758, column: 3, scope: !2864)
!3434 = !DILocation(line: 762, column: 1, scope: !2864)
!3435 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1054, file: !1054, line: 98, type: !3436, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!3436 = !DISubroutineType(types: !3437)
!3437 = !{!133}
!3438 = !DISubprogram(name: "strlen", scope: !1050, file: !1050, line: 407, type: !3439, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!3439 = !DISubroutineType(types: !3440)
!3440 = !{!135, !136}
!3441 = !DISubprogram(name: "iswprint", scope: !3442, file: !3442, line: 120, type: !3240, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!3442 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!3443 = distinct !DISubprogram(name: "quotearg_alloc", scope: !551, file: !551, line: 788, type: !3444, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !3446)
!3444 = !DISubroutineType(types: !3445)
!3445 = !{!130, !136, !133, !2757}
!3446 = !{!3447, !3448, !3449}
!3447 = !DILocalVariable(name: "arg", arg: 1, scope: !3443, file: !551, line: 788, type: !136)
!3448 = !DILocalVariable(name: "argsize", arg: 2, scope: !3443, file: !551, line: 788, type: !133)
!3449 = !DILocalVariable(name: "o", arg: 3, scope: !3443, file: !551, line: 789, type: !2757)
!3450 = !DILocation(line: 0, scope: !3443)
!3451 = !DILocalVariable(name: "arg", arg: 1, scope: !3452, file: !551, line: 801, type: !136)
!3452 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !551, file: !551, line: 801, type: !3453, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !3455)
!3453 = !DISubroutineType(types: !3454)
!3454 = !{!130, !136, !133, !789, !2757}
!3455 = !{!3451, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463}
!3456 = !DILocalVariable(name: "argsize", arg: 2, scope: !3452, file: !551, line: 801, type: !133)
!3457 = !DILocalVariable(name: "size", arg: 3, scope: !3452, file: !551, line: 801, type: !789)
!3458 = !DILocalVariable(name: "o", arg: 4, scope: !3452, file: !551, line: 802, type: !2757)
!3459 = !DILocalVariable(name: "p", scope: !3452, file: !551, line: 804, type: !2757)
!3460 = !DILocalVariable(name: "saved_errno", scope: !3452, file: !551, line: 805, type: !87)
!3461 = !DILocalVariable(name: "flags", scope: !3452, file: !551, line: 807, type: !87)
!3462 = !DILocalVariable(name: "bufsize", scope: !3452, file: !551, line: 808, type: !133)
!3463 = !DILocalVariable(name: "buf", scope: !3452, file: !551, line: 812, type: !130)
!3464 = !DILocation(line: 0, scope: !3452, inlinedAt: !3465)
!3465 = distinct !DILocation(line: 791, column: 10, scope: !3443)
!3466 = !DILocation(line: 804, column: 37, scope: !3452, inlinedAt: !3465)
!3467 = !DILocation(line: 805, column: 21, scope: !3452, inlinedAt: !3465)
!3468 = !DILocation(line: 807, column: 18, scope: !3452, inlinedAt: !3465)
!3469 = !DILocation(line: 807, column: 24, scope: !3452, inlinedAt: !3465)
!3470 = !DILocation(line: 808, column: 72, scope: !3452, inlinedAt: !3465)
!3471 = !DILocation(line: 809, column: 56, scope: !3452, inlinedAt: !3465)
!3472 = !DILocation(line: 810, column: 49, scope: !3452, inlinedAt: !3465)
!3473 = !DILocation(line: 811, column: 49, scope: !3452, inlinedAt: !3465)
!3474 = !DILocation(line: 808, column: 20, scope: !3452, inlinedAt: !3465)
!3475 = !DILocation(line: 811, column: 62, scope: !3452, inlinedAt: !3465)
!3476 = !DILocation(line: 812, column: 15, scope: !3452, inlinedAt: !3465)
!3477 = !DILocation(line: 813, column: 60, scope: !3452, inlinedAt: !3465)
!3478 = !DILocation(line: 815, column: 32, scope: !3452, inlinedAt: !3465)
!3479 = !DILocation(line: 815, column: 47, scope: !3452, inlinedAt: !3465)
!3480 = !DILocation(line: 813, column: 3, scope: !3452, inlinedAt: !3465)
!3481 = !DILocation(line: 816, column: 9, scope: !3452, inlinedAt: !3465)
!3482 = !DILocation(line: 791, column: 3, scope: !3443)
!3483 = !DILocation(line: 0, scope: !3452)
!3484 = !DILocation(line: 804, column: 37, scope: !3452)
!3485 = !DILocation(line: 805, column: 21, scope: !3452)
!3486 = !DILocation(line: 807, column: 18, scope: !3452)
!3487 = !DILocation(line: 807, column: 27, scope: !3452)
!3488 = !DILocation(line: 807, column: 24, scope: !3452)
!3489 = !DILocation(line: 808, column: 72, scope: !3452)
!3490 = !DILocation(line: 809, column: 56, scope: !3452)
!3491 = !DILocation(line: 810, column: 49, scope: !3452)
!3492 = !DILocation(line: 811, column: 49, scope: !3452)
!3493 = !DILocation(line: 808, column: 20, scope: !3452)
!3494 = !DILocation(line: 811, column: 62, scope: !3452)
!3495 = !DILocation(line: 812, column: 15, scope: !3452)
!3496 = !DILocation(line: 813, column: 60, scope: !3452)
!3497 = !DILocation(line: 815, column: 32, scope: !3452)
!3498 = !DILocation(line: 815, column: 47, scope: !3452)
!3499 = !DILocation(line: 813, column: 3, scope: !3452)
!3500 = !DILocation(line: 816, column: 9, scope: !3452)
!3501 = !DILocation(line: 817, column: 7, scope: !3452)
!3502 = !DILocation(line: 818, column: 11, scope: !3503)
!3503 = distinct !DILexicalBlock(scope: !3452, file: !551, line: 817, column: 7)
!3504 = !DILocation(line: 818, column: 5, scope: !3503)
!3505 = !DILocation(line: 819, column: 3, scope: !3452)
!3506 = distinct !DISubprogram(name: "quotearg_free", scope: !551, file: !551, line: 837, type: !506, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !3507)
!3507 = !{!3508, !3509}
!3508 = !DILocalVariable(name: "sv", scope: !3506, file: !551, line: 839, type: !633)
!3509 = !DILocalVariable(name: "i", scope: !3510, file: !551, line: 840, type: !87)
!3510 = distinct !DILexicalBlock(scope: !3506, file: !551, line: 840, column: 3)
!3511 = !DILocation(line: 839, column: 24, scope: !3506)
!3512 = !DILocation(line: 0, scope: !3506)
!3513 = !DILocation(line: 0, scope: !3510)
!3514 = !DILocation(line: 840, column: 21, scope: !3515)
!3515 = distinct !DILexicalBlock(scope: !3510, file: !551, line: 840, column: 3)
!3516 = !DILocation(line: 840, column: 3, scope: !3510)
!3517 = !DILocation(line: 842, column: 13, scope: !3518)
!3518 = distinct !DILexicalBlock(scope: !3506, file: !551, line: 842, column: 7)
!3519 = !{!3520, !859, i64 8}
!3520 = !{!"slotvec", !1293, i64 0, !859, i64 8}
!3521 = !DILocation(line: 842, column: 17, scope: !3518)
!3522 = !DILocation(line: 842, column: 7, scope: !3506)
!3523 = !DILocation(line: 841, column: 17, scope: !3515)
!3524 = !DILocation(line: 841, column: 5, scope: !3515)
!3525 = !DILocation(line: 840, column: 32, scope: !3515)
!3526 = distinct !{!3526, !3516, !3527, !976}
!3527 = !DILocation(line: 841, column: 20, scope: !3510)
!3528 = !DILocation(line: 844, column: 7, scope: !3529)
!3529 = distinct !DILexicalBlock(scope: !3518, file: !551, line: 843, column: 5)
!3530 = !DILocation(line: 845, column: 21, scope: !3529)
!3531 = !{!3520, !1293, i64 0}
!3532 = !DILocation(line: 846, column: 20, scope: !3529)
!3533 = !DILocation(line: 847, column: 5, scope: !3529)
!3534 = !DILocation(line: 848, column: 10, scope: !3535)
!3535 = distinct !DILexicalBlock(scope: !3506, file: !551, line: 848, column: 7)
!3536 = !DILocation(line: 848, column: 7, scope: !3506)
!3537 = !DILocation(line: 850, column: 7, scope: !3538)
!3538 = distinct !DILexicalBlock(scope: !3535, file: !551, line: 849, column: 5)
!3539 = !DILocation(line: 851, column: 15, scope: !3538)
!3540 = !DILocation(line: 852, column: 5, scope: !3538)
!3541 = !DILocation(line: 853, column: 10, scope: !3506)
!3542 = !DILocation(line: 854, column: 1, scope: !3506)
!3543 = distinct !DISubprogram(name: "quotearg_n", scope: !551, file: !551, line: 919, type: !1047, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !3544)
!3544 = !{!3545, !3546}
!3545 = !DILocalVariable(name: "n", arg: 1, scope: !3543, file: !551, line: 919, type: !87)
!3546 = !DILocalVariable(name: "arg", arg: 2, scope: !3543, file: !551, line: 919, type: !136)
!3547 = !DILocation(line: 0, scope: !3543)
!3548 = !DILocation(line: 921, column: 10, scope: !3543)
!3549 = !DILocation(line: 921, column: 3, scope: !3543)
!3550 = distinct !DISubprogram(name: "quotearg_n_options", scope: !551, file: !551, line: 866, type: !3551, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !3553)
!3551 = !DISubroutineType(types: !3552)
!3552 = !{!130, !87, !136, !133, !2757}
!3553 = !{!3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3564, !3565, !3567, !3568, !3569}
!3554 = !DILocalVariable(name: "n", arg: 1, scope: !3550, file: !551, line: 866, type: !87)
!3555 = !DILocalVariable(name: "arg", arg: 2, scope: !3550, file: !551, line: 866, type: !136)
!3556 = !DILocalVariable(name: "argsize", arg: 3, scope: !3550, file: !551, line: 866, type: !133)
!3557 = !DILocalVariable(name: "options", arg: 4, scope: !3550, file: !551, line: 867, type: !2757)
!3558 = !DILocalVariable(name: "saved_errno", scope: !3550, file: !551, line: 869, type: !87)
!3559 = !DILocalVariable(name: "sv", scope: !3550, file: !551, line: 871, type: !633)
!3560 = !DILocalVariable(name: "nslots_max", scope: !3550, file: !551, line: 873, type: !87)
!3561 = !DILocalVariable(name: "preallocated", scope: !3562, file: !551, line: 879, type: !196)
!3562 = distinct !DILexicalBlock(scope: !3563, file: !551, line: 878, column: 5)
!3563 = distinct !DILexicalBlock(scope: !3550, file: !551, line: 877, column: 7)
!3564 = !DILocalVariable(name: "new_nslots", scope: !3562, file: !551, line: 880, type: !802)
!3565 = !DILocalVariable(name: "size", scope: !3566, file: !551, line: 891, type: !133)
!3566 = distinct !DILexicalBlock(scope: !3550, file: !551, line: 890, column: 3)
!3567 = !DILocalVariable(name: "val", scope: !3566, file: !551, line: 892, type: !130)
!3568 = !DILocalVariable(name: "flags", scope: !3566, file: !551, line: 894, type: !87)
!3569 = !DILocalVariable(name: "qsize", scope: !3566, file: !551, line: 895, type: !133)
!3570 = !DILocation(line: 0, scope: !3550)
!3571 = !DILocation(line: 869, column: 21, scope: !3550)
!3572 = !DILocation(line: 871, column: 24, scope: !3550)
!3573 = !DILocation(line: 874, column: 17, scope: !3574)
!3574 = distinct !DILexicalBlock(scope: !3550, file: !551, line: 874, column: 7)
!3575 = !DILocation(line: 875, column: 5, scope: !3574)
!3576 = !DILocation(line: 877, column: 7, scope: !3563)
!3577 = !DILocation(line: 877, column: 14, scope: !3563)
!3578 = !DILocation(line: 877, column: 7, scope: !3550)
!3579 = !DILocation(line: 879, column: 31, scope: !3562)
!3580 = !DILocation(line: 0, scope: !3562)
!3581 = !DILocation(line: 880, column: 7, scope: !3562)
!3582 = !DILocation(line: 880, column: 26, scope: !3562)
!3583 = !DILocation(line: 880, column: 13, scope: !3562)
!3584 = !DILocation(line: 882, column: 31, scope: !3562)
!3585 = !DILocation(line: 883, column: 33, scope: !3562)
!3586 = !DILocation(line: 883, column: 42, scope: !3562)
!3587 = !DILocation(line: 883, column: 31, scope: !3562)
!3588 = !DILocation(line: 882, column: 22, scope: !3562)
!3589 = !DILocation(line: 882, column: 15, scope: !3562)
!3590 = !DILocation(line: 884, column: 11, scope: !3562)
!3591 = !DILocation(line: 885, column: 15, scope: !3592)
!3592 = distinct !DILexicalBlock(scope: !3562, file: !551, line: 884, column: 11)
!3593 = !{i64 0, i64 8, !1312, i64 8, i64 8, !858}
!3594 = !DILocation(line: 885, column: 9, scope: !3592)
!3595 = !DILocation(line: 886, column: 20, scope: !3562)
!3596 = !DILocation(line: 886, column: 18, scope: !3562)
!3597 = !DILocation(line: 886, column: 32, scope: !3562)
!3598 = !DILocation(line: 886, column: 43, scope: !3562)
!3599 = !DILocation(line: 886, column: 53, scope: !3562)
!3600 = !DILocation(line: 0, scope: !2972, inlinedAt: !3601)
!3601 = distinct !DILocation(line: 886, column: 7, scope: !3562)
!3602 = !DILocation(line: 59, column: 10, scope: !2972, inlinedAt: !3601)
!3603 = !DILocation(line: 887, column: 16, scope: !3562)
!3604 = !DILocation(line: 887, column: 14, scope: !3562)
!3605 = !DILocation(line: 888, column: 5, scope: !3563)
!3606 = !DILocation(line: 888, column: 5, scope: !3562)
!3607 = !DILocation(line: 891, column: 19, scope: !3566)
!3608 = !DILocation(line: 891, column: 25, scope: !3566)
!3609 = !DILocation(line: 0, scope: !3566)
!3610 = !DILocation(line: 892, column: 23, scope: !3566)
!3611 = !DILocation(line: 894, column: 26, scope: !3566)
!3612 = !DILocation(line: 894, column: 32, scope: !3566)
!3613 = !DILocation(line: 896, column: 55, scope: !3566)
!3614 = !DILocation(line: 897, column: 55, scope: !3566)
!3615 = !DILocation(line: 898, column: 55, scope: !3566)
!3616 = !DILocation(line: 899, column: 55, scope: !3566)
!3617 = !DILocation(line: 895, column: 20, scope: !3566)
!3618 = !DILocation(line: 901, column: 14, scope: !3619)
!3619 = distinct !DILexicalBlock(scope: !3566, file: !551, line: 901, column: 9)
!3620 = !DILocation(line: 901, column: 9, scope: !3566)
!3621 = !DILocation(line: 903, column: 35, scope: !3622)
!3622 = distinct !DILexicalBlock(scope: !3619, file: !551, line: 902, column: 7)
!3623 = !DILocation(line: 903, column: 20, scope: !3622)
!3624 = !DILocation(line: 904, column: 17, scope: !3625)
!3625 = distinct !DILexicalBlock(scope: !3622, file: !551, line: 904, column: 13)
!3626 = !DILocation(line: 904, column: 13, scope: !3622)
!3627 = !DILocation(line: 905, column: 11, scope: !3625)
!3628 = !DILocation(line: 906, column: 27, scope: !3622)
!3629 = !DILocation(line: 906, column: 19, scope: !3622)
!3630 = !DILocation(line: 907, column: 69, scope: !3622)
!3631 = !DILocation(line: 909, column: 44, scope: !3622)
!3632 = !DILocation(line: 910, column: 44, scope: !3622)
!3633 = !DILocation(line: 907, column: 9, scope: !3622)
!3634 = !DILocation(line: 911, column: 7, scope: !3622)
!3635 = !DILocation(line: 913, column: 11, scope: !3566)
!3636 = !DILocation(line: 914, column: 5, scope: !3566)
!3637 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !551, file: !551, line: 925, type: !3638, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !3640)
!3638 = !DISubroutineType(types: !3639)
!3639 = !{!130, !87, !136, !133}
!3640 = !{!3641, !3642, !3643}
!3641 = !DILocalVariable(name: "n", arg: 1, scope: !3637, file: !551, line: 925, type: !87)
!3642 = !DILocalVariable(name: "arg", arg: 2, scope: !3637, file: !551, line: 925, type: !136)
!3643 = !DILocalVariable(name: "argsize", arg: 3, scope: !3637, file: !551, line: 925, type: !133)
!3644 = !DILocation(line: 0, scope: !3637)
!3645 = !DILocation(line: 927, column: 10, scope: !3637)
!3646 = !DILocation(line: 927, column: 3, scope: !3637)
!3647 = distinct !DISubprogram(name: "quotearg", scope: !551, file: !551, line: 931, type: !1056, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !3648)
!3648 = !{!3649}
!3649 = !DILocalVariable(name: "arg", arg: 1, scope: !3647, file: !551, line: 931, type: !136)
!3650 = !DILocation(line: 0, scope: !3647)
!3651 = !DILocation(line: 0, scope: !3543, inlinedAt: !3652)
!3652 = distinct !DILocation(line: 933, column: 10, scope: !3647)
!3653 = !DILocation(line: 921, column: 10, scope: !3543, inlinedAt: !3652)
!3654 = !DILocation(line: 933, column: 3, scope: !3647)
!3655 = distinct !DISubprogram(name: "quotearg_mem", scope: !551, file: !551, line: 937, type: !3656, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !3658)
!3656 = !DISubroutineType(types: !3657)
!3657 = !{!130, !136, !133}
!3658 = !{!3659, !3660}
!3659 = !DILocalVariable(name: "arg", arg: 1, scope: !3655, file: !551, line: 937, type: !136)
!3660 = !DILocalVariable(name: "argsize", arg: 2, scope: !3655, file: !551, line: 937, type: !133)
!3661 = !DILocation(line: 0, scope: !3655)
!3662 = !DILocation(line: 0, scope: !3637, inlinedAt: !3663)
!3663 = distinct !DILocation(line: 939, column: 10, scope: !3655)
!3664 = !DILocation(line: 927, column: 10, scope: !3637, inlinedAt: !3663)
!3665 = !DILocation(line: 939, column: 3, scope: !3655)
!3666 = distinct !DISubprogram(name: "quotearg_n_style", scope: !551, file: !551, line: 943, type: !3667, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !3669)
!3667 = !DISubroutineType(types: !3668)
!3668 = !{!130, !87, !91, !136}
!3669 = !{!3670, !3671, !3672, !3673}
!3670 = !DILocalVariable(name: "n", arg: 1, scope: !3666, file: !551, line: 943, type: !87)
!3671 = !DILocalVariable(name: "s", arg: 2, scope: !3666, file: !551, line: 943, type: !91)
!3672 = !DILocalVariable(name: "arg", arg: 3, scope: !3666, file: !551, line: 943, type: !136)
!3673 = !DILocalVariable(name: "o", scope: !3666, file: !551, line: 945, type: !2758)
!3674 = !DILocation(line: 0, scope: !3666)
!3675 = !DILocation(line: 945, column: 3, scope: !3666)
!3676 = !DILocation(line: 945, column: 32, scope: !3666)
!3677 = !{!3678}
!3678 = distinct !{!3678, !3679, !"quoting_options_from_style: argument 0"}
!3679 = distinct !{!3679, !"quoting_options_from_style"}
!3680 = !DILocation(line: 945, column: 36, scope: !3666)
!3681 = !DILocalVariable(name: "style", arg: 1, scope: !3682, file: !551, line: 183, type: !91)
!3682 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !551, file: !551, line: 183, type: !3683, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !3685)
!3683 = !DISubroutineType(types: !3684)
!3684 = !{!587, !91}
!3685 = !{!3681, !3686}
!3686 = !DILocalVariable(name: "o", scope: !3682, file: !551, line: 185, type: !587)
!3687 = !DILocation(line: 0, scope: !3682, inlinedAt: !3688)
!3688 = distinct !DILocation(line: 945, column: 36, scope: !3666)
!3689 = !DILocation(line: 185, column: 26, scope: !3682, inlinedAt: !3688)
!3690 = !DILocation(line: 186, column: 13, scope: !3691, inlinedAt: !3688)
!3691 = distinct !DILexicalBlock(scope: !3682, file: !551, line: 186, column: 7)
!3692 = !DILocation(line: 186, column: 7, scope: !3682, inlinedAt: !3688)
!3693 = !DILocation(line: 187, column: 5, scope: !3691, inlinedAt: !3688)
!3694 = !DILocation(line: 188, column: 11, scope: !3682, inlinedAt: !3688)
!3695 = !DILocation(line: 946, column: 10, scope: !3666)
!3696 = !DILocation(line: 947, column: 1, scope: !3666)
!3697 = !DILocation(line: 946, column: 3, scope: !3666)
!3698 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !551, file: !551, line: 950, type: !3699, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !3701)
!3699 = !DISubroutineType(types: !3700)
!3700 = !{!130, !87, !91, !136, !133}
!3701 = !{!3702, !3703, !3704, !3705, !3706}
!3702 = !DILocalVariable(name: "n", arg: 1, scope: !3698, file: !551, line: 950, type: !87)
!3703 = !DILocalVariable(name: "s", arg: 2, scope: !3698, file: !551, line: 950, type: !91)
!3704 = !DILocalVariable(name: "arg", arg: 3, scope: !3698, file: !551, line: 951, type: !136)
!3705 = !DILocalVariable(name: "argsize", arg: 4, scope: !3698, file: !551, line: 951, type: !133)
!3706 = !DILocalVariable(name: "o", scope: !3698, file: !551, line: 953, type: !2758)
!3707 = !DILocation(line: 0, scope: !3698)
!3708 = !DILocation(line: 953, column: 3, scope: !3698)
!3709 = !DILocation(line: 953, column: 32, scope: !3698)
!3710 = !{!3711}
!3711 = distinct !{!3711, !3712, !"quoting_options_from_style: argument 0"}
!3712 = distinct !{!3712, !"quoting_options_from_style"}
!3713 = !DILocation(line: 953, column: 36, scope: !3698)
!3714 = !DILocation(line: 0, scope: !3682, inlinedAt: !3715)
!3715 = distinct !DILocation(line: 953, column: 36, scope: !3698)
!3716 = !DILocation(line: 185, column: 26, scope: !3682, inlinedAt: !3715)
!3717 = !DILocation(line: 186, column: 13, scope: !3691, inlinedAt: !3715)
!3718 = !DILocation(line: 186, column: 7, scope: !3682, inlinedAt: !3715)
!3719 = !DILocation(line: 187, column: 5, scope: !3691, inlinedAt: !3715)
!3720 = !DILocation(line: 188, column: 11, scope: !3682, inlinedAt: !3715)
!3721 = !DILocation(line: 954, column: 10, scope: !3698)
!3722 = !DILocation(line: 955, column: 1, scope: !3698)
!3723 = !DILocation(line: 954, column: 3, scope: !3698)
!3724 = distinct !DISubprogram(name: "quotearg_style", scope: !551, file: !551, line: 958, type: !3725, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !3727)
!3725 = !DISubroutineType(types: !3726)
!3726 = !{!130, !91, !136}
!3727 = !{!3728, !3729}
!3728 = !DILocalVariable(name: "s", arg: 1, scope: !3724, file: !551, line: 958, type: !91)
!3729 = !DILocalVariable(name: "arg", arg: 2, scope: !3724, file: !551, line: 958, type: !136)
!3730 = !DILocation(line: 0, scope: !3724)
!3731 = !DILocation(line: 0, scope: !3666, inlinedAt: !3732)
!3732 = distinct !DILocation(line: 960, column: 10, scope: !3724)
!3733 = !DILocation(line: 945, column: 3, scope: !3666, inlinedAt: !3732)
!3734 = !DILocation(line: 945, column: 32, scope: !3666, inlinedAt: !3732)
!3735 = !{!3736}
!3736 = distinct !{!3736, !3737, !"quoting_options_from_style: argument 0"}
!3737 = distinct !{!3737, !"quoting_options_from_style"}
!3738 = !DILocation(line: 945, column: 36, scope: !3666, inlinedAt: !3732)
!3739 = !DILocation(line: 0, scope: !3682, inlinedAt: !3740)
!3740 = distinct !DILocation(line: 945, column: 36, scope: !3666, inlinedAt: !3732)
!3741 = !DILocation(line: 185, column: 26, scope: !3682, inlinedAt: !3740)
!3742 = !DILocation(line: 186, column: 13, scope: !3691, inlinedAt: !3740)
!3743 = !DILocation(line: 186, column: 7, scope: !3682, inlinedAt: !3740)
!3744 = !DILocation(line: 187, column: 5, scope: !3691, inlinedAt: !3740)
!3745 = !DILocation(line: 188, column: 11, scope: !3682, inlinedAt: !3740)
!3746 = !DILocation(line: 946, column: 10, scope: !3666, inlinedAt: !3732)
!3747 = !DILocation(line: 947, column: 1, scope: !3666, inlinedAt: !3732)
!3748 = !DILocation(line: 960, column: 3, scope: !3724)
!3749 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !551, file: !551, line: 964, type: !3750, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !3752)
!3750 = !DISubroutineType(types: !3751)
!3751 = !{!130, !91, !136, !133}
!3752 = !{!3753, !3754, !3755}
!3753 = !DILocalVariable(name: "s", arg: 1, scope: !3749, file: !551, line: 964, type: !91)
!3754 = !DILocalVariable(name: "arg", arg: 2, scope: !3749, file: !551, line: 964, type: !136)
!3755 = !DILocalVariable(name: "argsize", arg: 3, scope: !3749, file: !551, line: 964, type: !133)
!3756 = !DILocation(line: 0, scope: !3749)
!3757 = !DILocation(line: 0, scope: !3698, inlinedAt: !3758)
!3758 = distinct !DILocation(line: 966, column: 10, scope: !3749)
!3759 = !DILocation(line: 953, column: 3, scope: !3698, inlinedAt: !3758)
!3760 = !DILocation(line: 953, column: 32, scope: !3698, inlinedAt: !3758)
!3761 = !{!3762}
!3762 = distinct !{!3762, !3763, !"quoting_options_from_style: argument 0"}
!3763 = distinct !{!3763, !"quoting_options_from_style"}
!3764 = !DILocation(line: 953, column: 36, scope: !3698, inlinedAt: !3758)
!3765 = !DILocation(line: 0, scope: !3682, inlinedAt: !3766)
!3766 = distinct !DILocation(line: 953, column: 36, scope: !3698, inlinedAt: !3758)
!3767 = !DILocation(line: 185, column: 26, scope: !3682, inlinedAt: !3766)
!3768 = !DILocation(line: 186, column: 13, scope: !3691, inlinedAt: !3766)
!3769 = !DILocation(line: 186, column: 7, scope: !3682, inlinedAt: !3766)
!3770 = !DILocation(line: 187, column: 5, scope: !3691, inlinedAt: !3766)
!3771 = !DILocation(line: 188, column: 11, scope: !3682, inlinedAt: !3766)
!3772 = !DILocation(line: 954, column: 10, scope: !3698, inlinedAt: !3758)
!3773 = !DILocation(line: 955, column: 1, scope: !3698, inlinedAt: !3758)
!3774 = !DILocation(line: 966, column: 3, scope: !3749)
!3775 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !551, file: !551, line: 970, type: !3776, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !3778)
!3776 = !DISubroutineType(types: !3777)
!3777 = !{!130, !136, !133, !4}
!3778 = !{!3779, !3780, !3781, !3782}
!3779 = !DILocalVariable(name: "arg", arg: 1, scope: !3775, file: !551, line: 970, type: !136)
!3780 = !DILocalVariable(name: "argsize", arg: 2, scope: !3775, file: !551, line: 970, type: !133)
!3781 = !DILocalVariable(name: "ch", arg: 3, scope: !3775, file: !551, line: 970, type: !4)
!3782 = !DILocalVariable(name: "options", scope: !3775, file: !551, line: 972, type: !587)
!3783 = !DILocation(line: 0, scope: !3775)
!3784 = !DILocation(line: 972, column: 3, scope: !3775)
!3785 = !DILocation(line: 972, column: 26, scope: !3775)
!3786 = !DILocation(line: 973, column: 13, scope: !3775)
!3787 = !{i64 0, i64 4, !938, i64 4, i64 4, !929, i64 8, i64 32, !938, i64 40, i64 8, !858, i64 48, i64 8, !858}
!3788 = !DILocation(line: 0, scope: !2777, inlinedAt: !3789)
!3789 = distinct !DILocation(line: 974, column: 3, scope: !3775)
!3790 = !DILocation(line: 147, column: 41, scope: !2777, inlinedAt: !3789)
!3791 = !DILocation(line: 147, column: 62, scope: !2777, inlinedAt: !3789)
!3792 = !DILocation(line: 147, column: 57, scope: !2777, inlinedAt: !3789)
!3793 = !DILocation(line: 148, column: 15, scope: !2777, inlinedAt: !3789)
!3794 = !DILocation(line: 149, column: 21, scope: !2777, inlinedAt: !3789)
!3795 = !DILocation(line: 149, column: 24, scope: !2777, inlinedAt: !3789)
!3796 = !DILocation(line: 150, column: 19, scope: !2777, inlinedAt: !3789)
!3797 = !DILocation(line: 150, column: 24, scope: !2777, inlinedAt: !3789)
!3798 = !DILocation(line: 150, column: 6, scope: !2777, inlinedAt: !3789)
!3799 = !DILocation(line: 975, column: 10, scope: !3775)
!3800 = !DILocation(line: 976, column: 1, scope: !3775)
!3801 = !DILocation(line: 975, column: 3, scope: !3775)
!3802 = distinct !DISubprogram(name: "quotearg_char", scope: !551, file: !551, line: 979, type: !3803, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !3805)
!3803 = !DISubroutineType(types: !3804)
!3804 = !{!130, !136, !4}
!3805 = !{!3806, !3807}
!3806 = !DILocalVariable(name: "arg", arg: 1, scope: !3802, file: !551, line: 979, type: !136)
!3807 = !DILocalVariable(name: "ch", arg: 2, scope: !3802, file: !551, line: 979, type: !4)
!3808 = !DILocation(line: 0, scope: !3802)
!3809 = !DILocation(line: 0, scope: !3775, inlinedAt: !3810)
!3810 = distinct !DILocation(line: 981, column: 10, scope: !3802)
!3811 = !DILocation(line: 972, column: 3, scope: !3775, inlinedAt: !3810)
!3812 = !DILocation(line: 972, column: 26, scope: !3775, inlinedAt: !3810)
!3813 = !DILocation(line: 973, column: 13, scope: !3775, inlinedAt: !3810)
!3814 = !DILocation(line: 0, scope: !2777, inlinedAt: !3815)
!3815 = distinct !DILocation(line: 974, column: 3, scope: !3775, inlinedAt: !3810)
!3816 = !DILocation(line: 147, column: 41, scope: !2777, inlinedAt: !3815)
!3817 = !DILocation(line: 147, column: 62, scope: !2777, inlinedAt: !3815)
!3818 = !DILocation(line: 147, column: 57, scope: !2777, inlinedAt: !3815)
!3819 = !DILocation(line: 148, column: 15, scope: !2777, inlinedAt: !3815)
!3820 = !DILocation(line: 149, column: 21, scope: !2777, inlinedAt: !3815)
!3821 = !DILocation(line: 149, column: 24, scope: !2777, inlinedAt: !3815)
!3822 = !DILocation(line: 150, column: 19, scope: !2777, inlinedAt: !3815)
!3823 = !DILocation(line: 150, column: 24, scope: !2777, inlinedAt: !3815)
!3824 = !DILocation(line: 150, column: 6, scope: !2777, inlinedAt: !3815)
!3825 = !DILocation(line: 975, column: 10, scope: !3775, inlinedAt: !3810)
!3826 = !DILocation(line: 976, column: 1, scope: !3775, inlinedAt: !3810)
!3827 = !DILocation(line: 981, column: 3, scope: !3802)
!3828 = distinct !DISubprogram(name: "quotearg_colon", scope: !551, file: !551, line: 985, type: !1056, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !3829)
!3829 = !{!3830}
!3830 = !DILocalVariable(name: "arg", arg: 1, scope: !3828, file: !551, line: 985, type: !136)
!3831 = !DILocation(line: 0, scope: !3828)
!3832 = !DILocation(line: 0, scope: !3802, inlinedAt: !3833)
!3833 = distinct !DILocation(line: 987, column: 10, scope: !3828)
!3834 = !DILocation(line: 0, scope: !3775, inlinedAt: !3835)
!3835 = distinct !DILocation(line: 981, column: 10, scope: !3802, inlinedAt: !3833)
!3836 = !DILocation(line: 972, column: 3, scope: !3775, inlinedAt: !3835)
!3837 = !DILocation(line: 972, column: 26, scope: !3775, inlinedAt: !3835)
!3838 = !DILocation(line: 973, column: 13, scope: !3775, inlinedAt: !3835)
!3839 = !DILocation(line: 0, scope: !2777, inlinedAt: !3840)
!3840 = distinct !DILocation(line: 974, column: 3, scope: !3775, inlinedAt: !3835)
!3841 = !DILocation(line: 147, column: 57, scope: !2777, inlinedAt: !3840)
!3842 = !DILocation(line: 149, column: 21, scope: !2777, inlinedAt: !3840)
!3843 = !DILocation(line: 150, column: 6, scope: !2777, inlinedAt: !3840)
!3844 = !DILocation(line: 975, column: 10, scope: !3775, inlinedAt: !3835)
!3845 = !DILocation(line: 976, column: 1, scope: !3775, inlinedAt: !3835)
!3846 = !DILocation(line: 987, column: 3, scope: !3828)
!3847 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !551, file: !551, line: 991, type: !3656, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !3848)
!3848 = !{!3849, !3850}
!3849 = !DILocalVariable(name: "arg", arg: 1, scope: !3847, file: !551, line: 991, type: !136)
!3850 = !DILocalVariable(name: "argsize", arg: 2, scope: !3847, file: !551, line: 991, type: !133)
!3851 = !DILocation(line: 0, scope: !3847)
!3852 = !DILocation(line: 0, scope: !3775, inlinedAt: !3853)
!3853 = distinct !DILocation(line: 993, column: 10, scope: !3847)
!3854 = !DILocation(line: 972, column: 3, scope: !3775, inlinedAt: !3853)
!3855 = !DILocation(line: 972, column: 26, scope: !3775, inlinedAt: !3853)
!3856 = !DILocation(line: 973, column: 13, scope: !3775, inlinedAt: !3853)
!3857 = !DILocation(line: 0, scope: !2777, inlinedAt: !3858)
!3858 = distinct !DILocation(line: 974, column: 3, scope: !3775, inlinedAt: !3853)
!3859 = !DILocation(line: 147, column: 57, scope: !2777, inlinedAt: !3858)
!3860 = !DILocation(line: 149, column: 21, scope: !2777, inlinedAt: !3858)
!3861 = !DILocation(line: 150, column: 6, scope: !2777, inlinedAt: !3858)
!3862 = !DILocation(line: 975, column: 10, scope: !3775, inlinedAt: !3853)
!3863 = !DILocation(line: 976, column: 1, scope: !3775, inlinedAt: !3853)
!3864 = !DILocation(line: 993, column: 3, scope: !3847)
!3865 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !551, file: !551, line: 997, type: !3667, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !3866)
!3866 = !{!3867, !3868, !3869, !3870}
!3867 = !DILocalVariable(name: "n", arg: 1, scope: !3865, file: !551, line: 997, type: !87)
!3868 = !DILocalVariable(name: "s", arg: 2, scope: !3865, file: !551, line: 997, type: !91)
!3869 = !DILocalVariable(name: "arg", arg: 3, scope: !3865, file: !551, line: 997, type: !136)
!3870 = !DILocalVariable(name: "options", scope: !3865, file: !551, line: 999, type: !587)
!3871 = !DILocation(line: 185, column: 26, scope: !3682, inlinedAt: !3872)
!3872 = distinct !DILocation(line: 1000, column: 13, scope: !3865)
!3873 = !DILocation(line: 0, scope: !3865)
!3874 = !DILocation(line: 999, column: 3, scope: !3865)
!3875 = !DILocation(line: 999, column: 26, scope: !3865)
!3876 = !DILocation(line: 0, scope: !3682, inlinedAt: !3872)
!3877 = !DILocation(line: 186, column: 13, scope: !3691, inlinedAt: !3872)
!3878 = !DILocation(line: 186, column: 7, scope: !3682, inlinedAt: !3872)
!3879 = !DILocation(line: 187, column: 5, scope: !3691, inlinedAt: !3872)
!3880 = !{!3881}
!3881 = distinct !{!3881, !3882, !"quoting_options_from_style: argument 0"}
!3882 = distinct !{!3882, !"quoting_options_from_style"}
!3883 = !DILocation(line: 1000, column: 13, scope: !3865)
!3884 = !DILocation(line: 0, scope: !2777, inlinedAt: !3885)
!3885 = distinct !DILocation(line: 1001, column: 3, scope: !3865)
!3886 = !DILocation(line: 147, column: 57, scope: !2777, inlinedAt: !3885)
!3887 = !DILocation(line: 149, column: 21, scope: !2777, inlinedAt: !3885)
!3888 = !DILocation(line: 150, column: 6, scope: !2777, inlinedAt: !3885)
!3889 = !DILocation(line: 1002, column: 10, scope: !3865)
!3890 = !DILocation(line: 1003, column: 1, scope: !3865)
!3891 = !DILocation(line: 1002, column: 3, scope: !3865)
!3892 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !551, file: !551, line: 1006, type: !3893, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !3895)
!3893 = !DISubroutineType(types: !3894)
!3894 = !{!130, !87, !136, !136, !136}
!3895 = !{!3896, !3897, !3898, !3899}
!3896 = !DILocalVariable(name: "n", arg: 1, scope: !3892, file: !551, line: 1006, type: !87)
!3897 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3892, file: !551, line: 1006, type: !136)
!3898 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3892, file: !551, line: 1007, type: !136)
!3899 = !DILocalVariable(name: "arg", arg: 4, scope: !3892, file: !551, line: 1007, type: !136)
!3900 = !DILocation(line: 0, scope: !3892)
!3901 = !DILocalVariable(name: "n", arg: 1, scope: !3902, file: !551, line: 1014, type: !87)
!3902 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !551, file: !551, line: 1014, type: !3903, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !3905)
!3903 = !DISubroutineType(types: !3904)
!3904 = !{!130, !87, !136, !136, !136, !133}
!3905 = !{!3901, !3906, !3907, !3908, !3909, !3910}
!3906 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3902, file: !551, line: 1014, type: !136)
!3907 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3902, file: !551, line: 1015, type: !136)
!3908 = !DILocalVariable(name: "arg", arg: 4, scope: !3902, file: !551, line: 1016, type: !136)
!3909 = !DILocalVariable(name: "argsize", arg: 5, scope: !3902, file: !551, line: 1016, type: !133)
!3910 = !DILocalVariable(name: "o", scope: !3902, file: !551, line: 1018, type: !587)
!3911 = !DILocation(line: 0, scope: !3902, inlinedAt: !3912)
!3912 = distinct !DILocation(line: 1009, column: 10, scope: !3892)
!3913 = !DILocation(line: 1018, column: 3, scope: !3902, inlinedAt: !3912)
!3914 = !DILocation(line: 1018, column: 26, scope: !3902, inlinedAt: !3912)
!3915 = !DILocation(line: 1018, column: 30, scope: !3902, inlinedAt: !3912)
!3916 = !DILocation(line: 0, scope: !2817, inlinedAt: !3917)
!3917 = distinct !DILocation(line: 1019, column: 3, scope: !3902, inlinedAt: !3912)
!3918 = !DILocation(line: 174, column: 12, scope: !2817, inlinedAt: !3917)
!3919 = !DILocation(line: 175, column: 8, scope: !2830, inlinedAt: !3917)
!3920 = !DILocation(line: 175, column: 19, scope: !2830, inlinedAt: !3917)
!3921 = !DILocation(line: 176, column: 5, scope: !2830, inlinedAt: !3917)
!3922 = !DILocation(line: 177, column: 6, scope: !2817, inlinedAt: !3917)
!3923 = !DILocation(line: 177, column: 17, scope: !2817, inlinedAt: !3917)
!3924 = !DILocation(line: 178, column: 6, scope: !2817, inlinedAt: !3917)
!3925 = !DILocation(line: 178, column: 18, scope: !2817, inlinedAt: !3917)
!3926 = !DILocation(line: 1020, column: 10, scope: !3902, inlinedAt: !3912)
!3927 = !DILocation(line: 1021, column: 1, scope: !3902, inlinedAt: !3912)
!3928 = !DILocation(line: 1009, column: 3, scope: !3892)
!3929 = !DILocation(line: 0, scope: !3902)
!3930 = !DILocation(line: 1018, column: 3, scope: !3902)
!3931 = !DILocation(line: 1018, column: 26, scope: !3902)
!3932 = !DILocation(line: 1018, column: 30, scope: !3902)
!3933 = !DILocation(line: 0, scope: !2817, inlinedAt: !3934)
!3934 = distinct !DILocation(line: 1019, column: 3, scope: !3902)
!3935 = !DILocation(line: 174, column: 12, scope: !2817, inlinedAt: !3934)
!3936 = !DILocation(line: 175, column: 8, scope: !2830, inlinedAt: !3934)
!3937 = !DILocation(line: 175, column: 19, scope: !2830, inlinedAt: !3934)
!3938 = !DILocation(line: 176, column: 5, scope: !2830, inlinedAt: !3934)
!3939 = !DILocation(line: 177, column: 6, scope: !2817, inlinedAt: !3934)
!3940 = !DILocation(line: 177, column: 17, scope: !2817, inlinedAt: !3934)
!3941 = !DILocation(line: 178, column: 6, scope: !2817, inlinedAt: !3934)
!3942 = !DILocation(line: 178, column: 18, scope: !2817, inlinedAt: !3934)
!3943 = !DILocation(line: 1020, column: 10, scope: !3902)
!3944 = !DILocation(line: 1021, column: 1, scope: !3902)
!3945 = !DILocation(line: 1020, column: 3, scope: !3902)
!3946 = distinct !DISubprogram(name: "quotearg_custom", scope: !551, file: !551, line: 1024, type: !3947, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !3949)
!3947 = !DISubroutineType(types: !3948)
!3948 = !{!130, !136, !136, !136}
!3949 = !{!3950, !3951, !3952}
!3950 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3946, file: !551, line: 1024, type: !136)
!3951 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3946, file: !551, line: 1024, type: !136)
!3952 = !DILocalVariable(name: "arg", arg: 3, scope: !3946, file: !551, line: 1025, type: !136)
!3953 = !DILocation(line: 0, scope: !3946)
!3954 = !DILocation(line: 0, scope: !3892, inlinedAt: !3955)
!3955 = distinct !DILocation(line: 1027, column: 10, scope: !3946)
!3956 = !DILocation(line: 0, scope: !3902, inlinedAt: !3957)
!3957 = distinct !DILocation(line: 1009, column: 10, scope: !3892, inlinedAt: !3955)
!3958 = !DILocation(line: 1018, column: 3, scope: !3902, inlinedAt: !3957)
!3959 = !DILocation(line: 1018, column: 26, scope: !3902, inlinedAt: !3957)
!3960 = !DILocation(line: 1018, column: 30, scope: !3902, inlinedAt: !3957)
!3961 = !DILocation(line: 0, scope: !2817, inlinedAt: !3962)
!3962 = distinct !DILocation(line: 1019, column: 3, scope: !3902, inlinedAt: !3957)
!3963 = !DILocation(line: 174, column: 12, scope: !2817, inlinedAt: !3962)
!3964 = !DILocation(line: 175, column: 8, scope: !2830, inlinedAt: !3962)
!3965 = !DILocation(line: 175, column: 19, scope: !2830, inlinedAt: !3962)
!3966 = !DILocation(line: 176, column: 5, scope: !2830, inlinedAt: !3962)
!3967 = !DILocation(line: 177, column: 6, scope: !2817, inlinedAt: !3962)
!3968 = !DILocation(line: 177, column: 17, scope: !2817, inlinedAt: !3962)
!3969 = !DILocation(line: 178, column: 6, scope: !2817, inlinedAt: !3962)
!3970 = !DILocation(line: 178, column: 18, scope: !2817, inlinedAt: !3962)
!3971 = !DILocation(line: 1020, column: 10, scope: !3902, inlinedAt: !3957)
!3972 = !DILocation(line: 1021, column: 1, scope: !3902, inlinedAt: !3957)
!3973 = !DILocation(line: 1027, column: 3, scope: !3946)
!3974 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !551, file: !551, line: 1031, type: !3975, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !3977)
!3975 = !DISubroutineType(types: !3976)
!3976 = !{!130, !136, !136, !136, !133}
!3977 = !{!3978, !3979, !3980, !3981}
!3978 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3974, file: !551, line: 1031, type: !136)
!3979 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3974, file: !551, line: 1031, type: !136)
!3980 = !DILocalVariable(name: "arg", arg: 3, scope: !3974, file: !551, line: 1032, type: !136)
!3981 = !DILocalVariable(name: "argsize", arg: 4, scope: !3974, file: !551, line: 1032, type: !133)
!3982 = !DILocation(line: 0, scope: !3974)
!3983 = !DILocation(line: 0, scope: !3902, inlinedAt: !3984)
!3984 = distinct !DILocation(line: 1034, column: 10, scope: !3974)
!3985 = !DILocation(line: 1018, column: 3, scope: !3902, inlinedAt: !3984)
!3986 = !DILocation(line: 1018, column: 26, scope: !3902, inlinedAt: !3984)
!3987 = !DILocation(line: 1018, column: 30, scope: !3902, inlinedAt: !3984)
!3988 = !DILocation(line: 0, scope: !2817, inlinedAt: !3989)
!3989 = distinct !DILocation(line: 1019, column: 3, scope: !3902, inlinedAt: !3984)
!3990 = !DILocation(line: 174, column: 12, scope: !2817, inlinedAt: !3989)
!3991 = !DILocation(line: 175, column: 8, scope: !2830, inlinedAt: !3989)
!3992 = !DILocation(line: 175, column: 19, scope: !2830, inlinedAt: !3989)
!3993 = !DILocation(line: 176, column: 5, scope: !2830, inlinedAt: !3989)
!3994 = !DILocation(line: 177, column: 6, scope: !2817, inlinedAt: !3989)
!3995 = !DILocation(line: 177, column: 17, scope: !2817, inlinedAt: !3989)
!3996 = !DILocation(line: 178, column: 6, scope: !2817, inlinedAt: !3989)
!3997 = !DILocation(line: 178, column: 18, scope: !2817, inlinedAt: !3989)
!3998 = !DILocation(line: 1020, column: 10, scope: !3902, inlinedAt: !3984)
!3999 = !DILocation(line: 1021, column: 1, scope: !3902, inlinedAt: !3984)
!4000 = !DILocation(line: 1034, column: 3, scope: !3974)
!4001 = distinct !DISubprogram(name: "quote_n_mem", scope: !551, file: !551, line: 1049, type: !4002, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !4004)
!4002 = !DISubroutineType(types: !4003)
!4003 = !{!136, !87, !136, !133}
!4004 = !{!4005, !4006, !4007}
!4005 = !DILocalVariable(name: "n", arg: 1, scope: !4001, file: !551, line: 1049, type: !87)
!4006 = !DILocalVariable(name: "arg", arg: 2, scope: !4001, file: !551, line: 1049, type: !136)
!4007 = !DILocalVariable(name: "argsize", arg: 3, scope: !4001, file: !551, line: 1049, type: !133)
!4008 = !DILocation(line: 0, scope: !4001)
!4009 = !DILocation(line: 1051, column: 10, scope: !4001)
!4010 = !DILocation(line: 1051, column: 3, scope: !4001)
!4011 = distinct !DISubprogram(name: "quote_mem", scope: !551, file: !551, line: 1055, type: !4012, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !4014)
!4012 = !DISubroutineType(types: !4013)
!4013 = !{!136, !136, !133}
!4014 = !{!4015, !4016}
!4015 = !DILocalVariable(name: "arg", arg: 1, scope: !4011, file: !551, line: 1055, type: !136)
!4016 = !DILocalVariable(name: "argsize", arg: 2, scope: !4011, file: !551, line: 1055, type: !133)
!4017 = !DILocation(line: 0, scope: !4011)
!4018 = !DILocation(line: 0, scope: !4001, inlinedAt: !4019)
!4019 = distinct !DILocation(line: 1057, column: 10, scope: !4011)
!4020 = !DILocation(line: 1051, column: 10, scope: !4001, inlinedAt: !4019)
!4021 = !DILocation(line: 1057, column: 3, scope: !4011)
!4022 = distinct !DISubprogram(name: "quote_n", scope: !551, file: !551, line: 1061, type: !4023, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !4025)
!4023 = !DISubroutineType(types: !4024)
!4024 = !{!136, !87, !136}
!4025 = !{!4026, !4027}
!4026 = !DILocalVariable(name: "n", arg: 1, scope: !4022, file: !551, line: 1061, type: !87)
!4027 = !DILocalVariable(name: "arg", arg: 2, scope: !4022, file: !551, line: 1061, type: !136)
!4028 = !DILocation(line: 0, scope: !4022)
!4029 = !DILocation(line: 0, scope: !4001, inlinedAt: !4030)
!4030 = distinct !DILocation(line: 1063, column: 10, scope: !4022)
!4031 = !DILocation(line: 1051, column: 10, scope: !4001, inlinedAt: !4030)
!4032 = !DILocation(line: 1063, column: 3, scope: !4022)
!4033 = distinct !DISubprogram(name: "quote", scope: !551, file: !551, line: 1067, type: !4034, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !4036)
!4034 = !DISubroutineType(types: !4035)
!4035 = !{!136, !136}
!4036 = !{!4037}
!4037 = !DILocalVariable(name: "arg", arg: 1, scope: !4033, file: !551, line: 1067, type: !136)
!4038 = !DILocation(line: 0, scope: !4033)
!4039 = !DILocation(line: 0, scope: !4022, inlinedAt: !4040)
!4040 = distinct !DILocation(line: 1069, column: 10, scope: !4033)
!4041 = !DILocation(line: 0, scope: !4001, inlinedAt: !4042)
!4042 = distinct !DILocation(line: 1063, column: 10, scope: !4022, inlinedAt: !4040)
!4043 = !DILocation(line: 1051, column: 10, scope: !4001, inlinedAt: !4042)
!4044 = !DILocation(line: 1069, column: 3, scope: !4033)
!4045 = distinct !DISubprogram(name: "version_etc_arn", scope: !646, file: !646, line: 61, type: !4046, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !776, retainedNodes: !4083)
!4046 = !DISubroutineType(types: !4047)
!4047 = !{null, !4048, !136, !136, !136, !4082, !133}
!4048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4049, size: 64)
!4049 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !211, line: 7, baseType: !4050)
!4050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !213, line: 49, size: 1728, elements: !4051)
!4051 = !{!4052, !4053, !4054, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4065, !4067, !4068, !4069, !4070, !4071, !4072, !4073, !4074, !4075, !4076, !4077, !4078, !4079, !4080, !4081}
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4050, file: !213, line: 51, baseType: !87, size: 32)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4050, file: !213, line: 54, baseType: !130, size: 64, offset: 64)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4050, file: !213, line: 55, baseType: !130, size: 64, offset: 128)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4050, file: !213, line: 56, baseType: !130, size: 64, offset: 192)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4050, file: !213, line: 57, baseType: !130, size: 64, offset: 256)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4050, file: !213, line: 58, baseType: !130, size: 64, offset: 320)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4050, file: !213, line: 59, baseType: !130, size: 64, offset: 384)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4050, file: !213, line: 60, baseType: !130, size: 64, offset: 448)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4050, file: !213, line: 61, baseType: !130, size: 64, offset: 512)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4050, file: !213, line: 64, baseType: !130, size: 64, offset: 576)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4050, file: !213, line: 65, baseType: !130, size: 64, offset: 640)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4050, file: !213, line: 66, baseType: !130, size: 64, offset: 704)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4050, file: !213, line: 68, baseType: !228, size: 64, offset: 768)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4050, file: !213, line: 70, baseType: !4066, size: 64, offset: 832)
!4066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4050, size: 64)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4050, file: !213, line: 72, baseType: !87, size: 32, offset: 896)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4050, file: !213, line: 73, baseType: !87, size: 32, offset: 928)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4050, file: !213, line: 74, baseType: !235, size: 64, offset: 960)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4050, file: !213, line: 77, baseType: !132, size: 16, offset: 1024)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4050, file: !213, line: 78, baseType: !240, size: 8, offset: 1040)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4050, file: !213, line: 79, baseType: !54, size: 8, offset: 1048)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4050, file: !213, line: 81, baseType: !243, size: 64, offset: 1088)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4050, file: !213, line: 89, baseType: !246, size: 64, offset: 1152)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4050, file: !213, line: 91, baseType: !248, size: 64, offset: 1216)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4050, file: !213, line: 92, baseType: !251, size: 64, offset: 1280)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4050, file: !213, line: 93, baseType: !4066, size: 64, offset: 1344)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4050, file: !213, line: 94, baseType: !131, size: 64, offset: 1408)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4050, file: !213, line: 95, baseType: !133, size: 64, offset: 1472)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4050, file: !213, line: 96, baseType: !87, size: 32, offset: 1536)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4050, file: !213, line: 98, baseType: !258, size: 160, offset: 1568)
!4082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!4083 = !{!4084, !4085, !4086, !4087, !4088, !4089}
!4084 = !DILocalVariable(name: "stream", arg: 1, scope: !4045, file: !646, line: 61, type: !4048)
!4085 = !DILocalVariable(name: "command_name", arg: 2, scope: !4045, file: !646, line: 62, type: !136)
!4086 = !DILocalVariable(name: "package", arg: 3, scope: !4045, file: !646, line: 62, type: !136)
!4087 = !DILocalVariable(name: "version", arg: 4, scope: !4045, file: !646, line: 63, type: !136)
!4088 = !DILocalVariable(name: "authors", arg: 5, scope: !4045, file: !646, line: 64, type: !4082)
!4089 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4045, file: !646, line: 64, type: !133)
!4090 = !DILocation(line: 0, scope: !4045)
!4091 = !DILocation(line: 66, column: 7, scope: !4092)
!4092 = distinct !DILexicalBlock(scope: !4045, file: !646, line: 66, column: 7)
!4093 = !DILocation(line: 66, column: 7, scope: !4045)
!4094 = !DILocation(line: 67, column: 5, scope: !4092)
!4095 = !DILocation(line: 69, column: 5, scope: !4092)
!4096 = !DILocation(line: 83, column: 3, scope: !4045)
!4097 = !DILocation(line: 85, column: 3, scope: !4045)
!4098 = !DILocation(line: 88, column: 3, scope: !4045)
!4099 = !DILocation(line: 95, column: 3, scope: !4045)
!4100 = !DILocation(line: 97, column: 3, scope: !4045)
!4101 = !DILocation(line: 105, column: 7, scope: !4102)
!4102 = distinct !DILexicalBlock(scope: !4045, file: !646, line: 98, column: 5)
!4103 = !DILocation(line: 106, column: 7, scope: !4102)
!4104 = !DILocation(line: 109, column: 7, scope: !4102)
!4105 = !DILocation(line: 110, column: 7, scope: !4102)
!4106 = !DILocation(line: 113, column: 7, scope: !4102)
!4107 = !DILocation(line: 115, column: 7, scope: !4102)
!4108 = !DILocation(line: 120, column: 7, scope: !4102)
!4109 = !DILocation(line: 122, column: 7, scope: !4102)
!4110 = !DILocation(line: 127, column: 7, scope: !4102)
!4111 = !DILocation(line: 129, column: 7, scope: !4102)
!4112 = !DILocation(line: 134, column: 7, scope: !4102)
!4113 = !DILocation(line: 137, column: 7, scope: !4102)
!4114 = !DILocation(line: 142, column: 7, scope: !4102)
!4115 = !DILocation(line: 145, column: 7, scope: !4102)
!4116 = !DILocation(line: 150, column: 7, scope: !4102)
!4117 = !DILocation(line: 154, column: 7, scope: !4102)
!4118 = !DILocation(line: 159, column: 7, scope: !4102)
!4119 = !DILocation(line: 163, column: 7, scope: !4102)
!4120 = !DILocation(line: 170, column: 7, scope: !4102)
!4121 = !DILocation(line: 174, column: 7, scope: !4102)
!4122 = !DILocation(line: 176, column: 1, scope: !4045)
!4123 = distinct !DISubprogram(name: "version_etc_ar", scope: !646, file: !646, line: 183, type: !4124, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !776, retainedNodes: !4126)
!4124 = !DISubroutineType(types: !4125)
!4125 = !{null, !4048, !136, !136, !136, !4082}
!4126 = !{!4127, !4128, !4129, !4130, !4131, !4132}
!4127 = !DILocalVariable(name: "stream", arg: 1, scope: !4123, file: !646, line: 183, type: !4048)
!4128 = !DILocalVariable(name: "command_name", arg: 2, scope: !4123, file: !646, line: 184, type: !136)
!4129 = !DILocalVariable(name: "package", arg: 3, scope: !4123, file: !646, line: 184, type: !136)
!4130 = !DILocalVariable(name: "version", arg: 4, scope: !4123, file: !646, line: 185, type: !136)
!4131 = !DILocalVariable(name: "authors", arg: 5, scope: !4123, file: !646, line: 185, type: !4082)
!4132 = !DILocalVariable(name: "n_authors", scope: !4123, file: !646, line: 187, type: !133)
!4133 = !DILocation(line: 0, scope: !4123)
!4134 = !DILocation(line: 189, column: 8, scope: !4135)
!4135 = distinct !DILexicalBlock(scope: !4123, file: !646, line: 189, column: 3)
!4136 = !DILocation(line: 189, scope: !4135)
!4137 = !DILocation(line: 189, column: 23, scope: !4138)
!4138 = distinct !DILexicalBlock(scope: !4135, file: !646, line: 189, column: 3)
!4139 = !DILocation(line: 189, column: 3, scope: !4135)
!4140 = !DILocation(line: 189, column: 52, scope: !4138)
!4141 = distinct !{!4141, !4139, !4142, !976}
!4142 = !DILocation(line: 190, column: 5, scope: !4135)
!4143 = !DILocation(line: 191, column: 3, scope: !4123)
!4144 = !DILocation(line: 192, column: 1, scope: !4123)
!4145 = distinct !DISubprogram(name: "version_etc_va", scope: !646, file: !646, line: 199, type: !4146, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !776, retainedNodes: !4156)
!4146 = !DISubroutineType(types: !4147)
!4147 = !{null, !4048, !136, !136, !136, !4148}
!4148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4149, size: 64)
!4149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !4150)
!4150 = !{!4151, !4153, !4154, !4155}
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4149, file: !4152, line: 192, baseType: !78, size: 32)
!4152 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4149, file: !4152, line: 192, baseType: !78, size: 32, offset: 32)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4149, file: !4152, line: 192, baseType: !131, size: 64, offset: 64)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4149, file: !4152, line: 192, baseType: !131, size: 64, offset: 128)
!4156 = !{!4157, !4158, !4159, !4160, !4161, !4162, !4163}
!4157 = !DILocalVariable(name: "stream", arg: 1, scope: !4145, file: !646, line: 199, type: !4048)
!4158 = !DILocalVariable(name: "command_name", arg: 2, scope: !4145, file: !646, line: 200, type: !136)
!4159 = !DILocalVariable(name: "package", arg: 3, scope: !4145, file: !646, line: 200, type: !136)
!4160 = !DILocalVariable(name: "version", arg: 4, scope: !4145, file: !646, line: 201, type: !136)
!4161 = !DILocalVariable(name: "authors", arg: 5, scope: !4145, file: !646, line: 201, type: !4148)
!4162 = !DILocalVariable(name: "n_authors", scope: !4145, file: !646, line: 203, type: !133)
!4163 = !DILocalVariable(name: "authtab", scope: !4145, file: !646, line: 204, type: !4164)
!4164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 640, elements: !60)
!4165 = !DILocation(line: 0, scope: !4145)
!4166 = !DILocation(line: 204, column: 3, scope: !4145)
!4167 = !DILocation(line: 204, column: 15, scope: !4145)
!4168 = !DILocation(line: 208, column: 35, scope: !4169)
!4169 = distinct !DILexicalBlock(scope: !4170, file: !646, line: 206, column: 3)
!4170 = distinct !DILexicalBlock(scope: !4145, file: !646, line: 206, column: 3)
!4171 = !DILocation(line: 208, column: 33, scope: !4169)
!4172 = !DILocation(line: 208, column: 67, scope: !4169)
!4173 = !DILocation(line: 206, column: 3, scope: !4170)
!4174 = !DILocation(line: 208, column: 14, scope: !4169)
!4175 = !DILocation(line: 0, scope: !4170)
!4176 = !DILocation(line: 211, column: 3, scope: !4145)
!4177 = !DILocation(line: 213, column: 1, scope: !4145)
!4178 = distinct !DISubprogram(name: "version_etc", scope: !646, file: !646, line: 230, type: !4179, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !776, retainedNodes: !4181)
!4179 = !DISubroutineType(types: !4180)
!4180 = !{null, !4048, !136, !136, !136, null}
!4181 = !{!4182, !4183, !4184, !4185, !4186}
!4182 = !DILocalVariable(name: "stream", arg: 1, scope: !4178, file: !646, line: 230, type: !4048)
!4183 = !DILocalVariable(name: "command_name", arg: 2, scope: !4178, file: !646, line: 231, type: !136)
!4184 = !DILocalVariable(name: "package", arg: 3, scope: !4178, file: !646, line: 231, type: !136)
!4185 = !DILocalVariable(name: "version", arg: 4, scope: !4178, file: !646, line: 232, type: !136)
!4186 = !DILocalVariable(name: "authors", scope: !4178, file: !646, line: 234, type: !4187)
!4187 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !924, line: 52, baseType: !4188)
!4188 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2278, line: 14, baseType: !4189)
!4189 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !4152, baseType: !4190)
!4190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4149, size: 192, elements: !55)
!4191 = !DILocation(line: 0, scope: !4178)
!4192 = !DILocation(line: 234, column: 3, scope: !4178)
!4193 = !DILocation(line: 234, column: 11, scope: !4178)
!4194 = !DILocation(line: 235, column: 3, scope: !4178)
!4195 = !DILocation(line: 236, column: 3, scope: !4178)
!4196 = !DILocation(line: 237, column: 3, scope: !4178)
!4197 = !DILocation(line: 238, column: 1, scope: !4178)
!4198 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !646, file: !646, line: 241, type: !506, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !776, retainedNodes: !867)
!4199 = !DILocation(line: 243, column: 3, scope: !4198)
!4200 = !DILocation(line: 248, column: 3, scope: !4198)
!4201 = !DILocation(line: 254, column: 3, scope: !4198)
!4202 = !DILocation(line: 259, column: 3, scope: !4198)
!4203 = !DILocation(line: 261, column: 1, scope: !4198)
!4204 = distinct !DISubprogram(name: "xnrealloc", scope: !4205, file: !4205, line: 147, type: !4206, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !4208)
!4205 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!4206 = !DISubroutineType(types: !4207)
!4207 = !{!131, !131, !133, !133}
!4208 = !{!4209, !4210, !4211}
!4209 = !DILocalVariable(name: "p", arg: 1, scope: !4204, file: !4205, line: 147, type: !131)
!4210 = !DILocalVariable(name: "n", arg: 2, scope: !4204, file: !4205, line: 147, type: !133)
!4211 = !DILocalVariable(name: "s", arg: 3, scope: !4204, file: !4205, line: 147, type: !133)
!4212 = !DILocation(line: 0, scope: !4204)
!4213 = !DILocalVariable(name: "p", arg: 1, scope: !4214, file: !783, line: 83, type: !131)
!4214 = distinct !DISubprogram(name: "xreallocarray", scope: !783, file: !783, line: 83, type: !4206, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !4215)
!4215 = !{!4213, !4216, !4217}
!4216 = !DILocalVariable(name: "n", arg: 2, scope: !4214, file: !783, line: 83, type: !133)
!4217 = !DILocalVariable(name: "s", arg: 3, scope: !4214, file: !783, line: 83, type: !133)
!4218 = !DILocation(line: 0, scope: !4214, inlinedAt: !4219)
!4219 = distinct !DILocation(line: 149, column: 10, scope: !4204)
!4220 = !DILocation(line: 85, column: 25, scope: !4214, inlinedAt: !4219)
!4221 = !DILocalVariable(name: "p", arg: 1, scope: !4222, file: !783, line: 37, type: !131)
!4222 = distinct !DISubprogram(name: "check_nonnull", scope: !783, file: !783, line: 37, type: !4223, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !4225)
!4223 = !DISubroutineType(types: !4224)
!4224 = !{!131, !131}
!4225 = !{!4221}
!4226 = !DILocation(line: 0, scope: !4222, inlinedAt: !4227)
!4227 = distinct !DILocation(line: 85, column: 10, scope: !4214, inlinedAt: !4219)
!4228 = !DILocation(line: 39, column: 8, scope: !4229, inlinedAt: !4227)
!4229 = distinct !DILexicalBlock(scope: !4222, file: !783, line: 39, column: 7)
!4230 = !DILocation(line: 39, column: 7, scope: !4222, inlinedAt: !4227)
!4231 = !DILocation(line: 40, column: 5, scope: !4229, inlinedAt: !4227)
!4232 = !DILocation(line: 149, column: 3, scope: !4204)
!4233 = !DILocation(line: 0, scope: !4214)
!4234 = !DILocation(line: 85, column: 25, scope: !4214)
!4235 = !DILocation(line: 0, scope: !4222, inlinedAt: !4236)
!4236 = distinct !DILocation(line: 85, column: 10, scope: !4214)
!4237 = !DILocation(line: 39, column: 8, scope: !4229, inlinedAt: !4236)
!4238 = !DILocation(line: 39, column: 7, scope: !4222, inlinedAt: !4236)
!4239 = !DILocation(line: 40, column: 5, scope: !4229, inlinedAt: !4236)
!4240 = !DILocation(line: 85, column: 3, scope: !4214)
!4241 = distinct !DISubprogram(name: "xmalloc", scope: !783, file: !783, line: 47, type: !1788, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !4242)
!4242 = !{!4243}
!4243 = !DILocalVariable(name: "s", arg: 1, scope: !4241, file: !783, line: 47, type: !133)
!4244 = !DILocation(line: 0, scope: !4241)
!4245 = !DILocation(line: 49, column: 25, scope: !4241)
!4246 = !DILocation(line: 0, scope: !4222, inlinedAt: !4247)
!4247 = distinct !DILocation(line: 49, column: 10, scope: !4241)
!4248 = !DILocation(line: 39, column: 8, scope: !4229, inlinedAt: !4247)
!4249 = !DILocation(line: 39, column: 7, scope: !4222, inlinedAt: !4247)
!4250 = !DILocation(line: 40, column: 5, scope: !4229, inlinedAt: !4247)
!4251 = !DILocation(line: 49, column: 3, scope: !4241)
!4252 = distinct !DISubprogram(name: "ximalloc", scope: !783, file: !783, line: 53, type: !1774, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !4253)
!4253 = !{!4254}
!4254 = !DILocalVariable(name: "s", arg: 1, scope: !4252, file: !783, line: 53, type: !802)
!4255 = !DILocation(line: 0, scope: !4252)
!4256 = !DILocalVariable(name: "s", arg: 1, scope: !4257, file: !1773, line: 55, type: !802)
!4257 = distinct !DISubprogram(name: "imalloc", scope: !1773, file: !1773, line: 55, type: !1774, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !4258)
!4258 = !{!4256}
!4259 = !DILocation(line: 0, scope: !4257, inlinedAt: !4260)
!4260 = distinct !DILocation(line: 55, column: 25, scope: !4252)
!4261 = !DILocation(line: 57, column: 26, scope: !4257, inlinedAt: !4260)
!4262 = !DILocation(line: 0, scope: !4222, inlinedAt: !4263)
!4263 = distinct !DILocation(line: 55, column: 10, scope: !4252)
!4264 = !DILocation(line: 39, column: 8, scope: !4229, inlinedAt: !4263)
!4265 = !DILocation(line: 39, column: 7, scope: !4222, inlinedAt: !4263)
!4266 = !DILocation(line: 40, column: 5, scope: !4229, inlinedAt: !4263)
!4267 = !DILocation(line: 55, column: 3, scope: !4252)
!4268 = distinct !DISubprogram(name: "xcharalloc", scope: !783, file: !783, line: 59, type: !4269, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !4271)
!4269 = !DISubroutineType(types: !4270)
!4270 = !{!130, !133}
!4271 = !{!4272}
!4272 = !DILocalVariable(name: "n", arg: 1, scope: !4268, file: !783, line: 59, type: !133)
!4273 = !DILocation(line: 0, scope: !4268)
!4274 = !DILocation(line: 0, scope: !4241, inlinedAt: !4275)
!4275 = distinct !DILocation(line: 61, column: 10, scope: !4268)
!4276 = !DILocation(line: 49, column: 25, scope: !4241, inlinedAt: !4275)
!4277 = !DILocation(line: 0, scope: !4222, inlinedAt: !4278)
!4278 = distinct !DILocation(line: 49, column: 10, scope: !4241, inlinedAt: !4275)
!4279 = !DILocation(line: 39, column: 8, scope: !4229, inlinedAt: !4278)
!4280 = !DILocation(line: 39, column: 7, scope: !4222, inlinedAt: !4278)
!4281 = !DILocation(line: 40, column: 5, scope: !4229, inlinedAt: !4278)
!4282 = !DILocation(line: 61, column: 3, scope: !4268)
!4283 = distinct !DISubprogram(name: "xrealloc", scope: !783, file: !783, line: 68, type: !4284, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !4286)
!4284 = !DISubroutineType(types: !4285)
!4285 = !{!131, !131, !133}
!4286 = !{!4287, !4288}
!4287 = !DILocalVariable(name: "p", arg: 1, scope: !4283, file: !783, line: 68, type: !131)
!4288 = !DILocalVariable(name: "s", arg: 2, scope: !4283, file: !783, line: 68, type: !133)
!4289 = !DILocation(line: 0, scope: !4283)
!4290 = !DILocalVariable(name: "ptr", arg: 1, scope: !4291, file: !4292, line: 2057, type: !131)
!4291 = distinct !DISubprogram(name: "rpl_realloc", scope: !4292, file: !4292, line: 2057, type: !4284, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !4293)
!4292 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4293 = !{!4290, !4294}
!4294 = !DILocalVariable(name: "size", arg: 2, scope: !4291, file: !4292, line: 2057, type: !133)
!4295 = !DILocation(line: 0, scope: !4291, inlinedAt: !4296)
!4296 = distinct !DILocation(line: 70, column: 25, scope: !4283)
!4297 = !DILocation(line: 2059, column: 24, scope: !4291, inlinedAt: !4296)
!4298 = !DILocation(line: 2059, column: 10, scope: !4291, inlinedAt: !4296)
!4299 = !DILocation(line: 0, scope: !4222, inlinedAt: !4300)
!4300 = distinct !DILocation(line: 70, column: 10, scope: !4283)
!4301 = !DILocation(line: 39, column: 8, scope: !4229, inlinedAt: !4300)
!4302 = !DILocation(line: 39, column: 7, scope: !4222, inlinedAt: !4300)
!4303 = !DILocation(line: 40, column: 5, scope: !4229, inlinedAt: !4300)
!4304 = !DILocation(line: 70, column: 3, scope: !4283)
!4305 = !DISubprogram(name: "realloc", scope: !1054, file: !1054, line: 551, type: !4284, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!4306 = distinct !DISubprogram(name: "xirealloc", scope: !783, file: !783, line: 74, type: !4307, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !4309)
!4307 = !DISubroutineType(types: !4308)
!4308 = !{!131, !131, !802}
!4309 = !{!4310, !4311}
!4310 = !DILocalVariable(name: "p", arg: 1, scope: !4306, file: !783, line: 74, type: !131)
!4311 = !DILocalVariable(name: "s", arg: 2, scope: !4306, file: !783, line: 74, type: !802)
!4312 = !DILocation(line: 0, scope: !4306)
!4313 = !DILocalVariable(name: "p", arg: 1, scope: !4314, file: !1773, line: 66, type: !131)
!4314 = distinct !DISubprogram(name: "irealloc", scope: !1773, file: !1773, line: 66, type: !4307, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !4315)
!4315 = !{!4313, !4316}
!4316 = !DILocalVariable(name: "s", arg: 2, scope: !4314, file: !1773, line: 66, type: !802)
!4317 = !DILocation(line: 0, scope: !4314, inlinedAt: !4318)
!4318 = distinct !DILocation(line: 76, column: 25, scope: !4306)
!4319 = !DILocation(line: 0, scope: !4291, inlinedAt: !4320)
!4320 = distinct !DILocation(line: 68, column: 26, scope: !4314, inlinedAt: !4318)
!4321 = !DILocation(line: 2059, column: 24, scope: !4291, inlinedAt: !4320)
!4322 = !DILocation(line: 2059, column: 10, scope: !4291, inlinedAt: !4320)
!4323 = !DILocation(line: 0, scope: !4222, inlinedAt: !4324)
!4324 = distinct !DILocation(line: 76, column: 10, scope: !4306)
!4325 = !DILocation(line: 39, column: 8, scope: !4229, inlinedAt: !4324)
!4326 = !DILocation(line: 39, column: 7, scope: !4222, inlinedAt: !4324)
!4327 = !DILocation(line: 40, column: 5, scope: !4229, inlinedAt: !4324)
!4328 = !DILocation(line: 76, column: 3, scope: !4306)
!4329 = distinct !DISubprogram(name: "xireallocarray", scope: !783, file: !783, line: 89, type: !4330, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !4332)
!4330 = !DISubroutineType(types: !4331)
!4331 = !{!131, !131, !802, !802}
!4332 = !{!4333, !4334, !4335}
!4333 = !DILocalVariable(name: "p", arg: 1, scope: !4329, file: !783, line: 89, type: !131)
!4334 = !DILocalVariable(name: "n", arg: 2, scope: !4329, file: !783, line: 89, type: !802)
!4335 = !DILocalVariable(name: "s", arg: 3, scope: !4329, file: !783, line: 89, type: !802)
!4336 = !DILocation(line: 0, scope: !4329)
!4337 = !DILocalVariable(name: "p", arg: 1, scope: !4338, file: !1773, line: 98, type: !131)
!4338 = distinct !DISubprogram(name: "ireallocarray", scope: !1773, file: !1773, line: 98, type: !4330, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !4339)
!4339 = !{!4337, !4340, !4341}
!4340 = !DILocalVariable(name: "n", arg: 2, scope: !4338, file: !1773, line: 98, type: !802)
!4341 = !DILocalVariable(name: "s", arg: 3, scope: !4338, file: !1773, line: 98, type: !802)
!4342 = !DILocation(line: 0, scope: !4338, inlinedAt: !4343)
!4343 = distinct !DILocation(line: 91, column: 25, scope: !4329)
!4344 = !DILocation(line: 101, column: 13, scope: !4338, inlinedAt: !4343)
!4345 = !DILocation(line: 0, scope: !4222, inlinedAt: !4346)
!4346 = distinct !DILocation(line: 91, column: 10, scope: !4329)
!4347 = !DILocation(line: 39, column: 8, scope: !4229, inlinedAt: !4346)
!4348 = !DILocation(line: 39, column: 7, scope: !4222, inlinedAt: !4346)
!4349 = !DILocation(line: 40, column: 5, scope: !4229, inlinedAt: !4346)
!4350 = !DILocation(line: 91, column: 3, scope: !4329)
!4351 = distinct !DISubprogram(name: "xnmalloc", scope: !783, file: !783, line: 98, type: !4352, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !4354)
!4352 = !DISubroutineType(types: !4353)
!4353 = !{!131, !133, !133}
!4354 = !{!4355, !4356}
!4355 = !DILocalVariable(name: "n", arg: 1, scope: !4351, file: !783, line: 98, type: !133)
!4356 = !DILocalVariable(name: "s", arg: 2, scope: !4351, file: !783, line: 98, type: !133)
!4357 = !DILocation(line: 0, scope: !4351)
!4358 = !DILocation(line: 0, scope: !4214, inlinedAt: !4359)
!4359 = distinct !DILocation(line: 100, column: 10, scope: !4351)
!4360 = !DILocation(line: 85, column: 25, scope: !4214, inlinedAt: !4359)
!4361 = !DILocation(line: 0, scope: !4222, inlinedAt: !4362)
!4362 = distinct !DILocation(line: 85, column: 10, scope: !4214, inlinedAt: !4359)
!4363 = !DILocation(line: 39, column: 8, scope: !4229, inlinedAt: !4362)
!4364 = !DILocation(line: 39, column: 7, scope: !4222, inlinedAt: !4362)
!4365 = !DILocation(line: 40, column: 5, scope: !4229, inlinedAt: !4362)
!4366 = !DILocation(line: 100, column: 3, scope: !4351)
!4367 = distinct !DISubprogram(name: "xinmalloc", scope: !783, file: !783, line: 104, type: !4368, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !4370)
!4368 = !DISubroutineType(types: !4369)
!4369 = !{!131, !802, !802}
!4370 = !{!4371, !4372}
!4371 = !DILocalVariable(name: "n", arg: 1, scope: !4367, file: !783, line: 104, type: !802)
!4372 = !DILocalVariable(name: "s", arg: 2, scope: !4367, file: !783, line: 104, type: !802)
!4373 = !DILocation(line: 0, scope: !4367)
!4374 = !DILocation(line: 0, scope: !4329, inlinedAt: !4375)
!4375 = distinct !DILocation(line: 106, column: 10, scope: !4367)
!4376 = !DILocation(line: 0, scope: !4338, inlinedAt: !4377)
!4377 = distinct !DILocation(line: 91, column: 25, scope: !4329, inlinedAt: !4375)
!4378 = !DILocation(line: 101, column: 13, scope: !4338, inlinedAt: !4377)
!4379 = !DILocation(line: 0, scope: !4222, inlinedAt: !4380)
!4380 = distinct !DILocation(line: 91, column: 10, scope: !4329, inlinedAt: !4375)
!4381 = !DILocation(line: 39, column: 8, scope: !4229, inlinedAt: !4380)
!4382 = !DILocation(line: 39, column: 7, scope: !4222, inlinedAt: !4380)
!4383 = !DILocation(line: 40, column: 5, scope: !4229, inlinedAt: !4380)
!4384 = !DILocation(line: 106, column: 3, scope: !4367)
!4385 = distinct !DISubprogram(name: "x2realloc", scope: !783, file: !783, line: 116, type: !4386, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !4388)
!4386 = !DISubroutineType(types: !4387)
!4387 = !{!131, !131, !789}
!4388 = !{!4389, !4390}
!4389 = !DILocalVariable(name: "p", arg: 1, scope: !4385, file: !783, line: 116, type: !131)
!4390 = !DILocalVariable(name: "ps", arg: 2, scope: !4385, file: !783, line: 116, type: !789)
!4391 = !DILocation(line: 0, scope: !4385)
!4392 = !DILocation(line: 0, scope: !786, inlinedAt: !4393)
!4393 = distinct !DILocation(line: 118, column: 10, scope: !4385)
!4394 = !DILocation(line: 178, column: 14, scope: !786, inlinedAt: !4393)
!4395 = !DILocation(line: 180, column: 9, scope: !4396, inlinedAt: !4393)
!4396 = distinct !DILexicalBlock(scope: !786, file: !783, line: 180, column: 7)
!4397 = !DILocation(line: 180, column: 7, scope: !786, inlinedAt: !4393)
!4398 = !DILocation(line: 182, column: 13, scope: !4399, inlinedAt: !4393)
!4399 = distinct !DILexicalBlock(scope: !4400, file: !783, line: 182, column: 11)
!4400 = distinct !DILexicalBlock(scope: !4396, file: !783, line: 181, column: 5)
!4401 = !DILocation(line: 182, column: 11, scope: !4400, inlinedAt: !4393)
!4402 = !DILocation(line: 197, column: 11, scope: !4403, inlinedAt: !4393)
!4403 = distinct !DILexicalBlock(scope: !4404, file: !783, line: 197, column: 11)
!4404 = distinct !DILexicalBlock(scope: !4396, file: !783, line: 195, column: 5)
!4405 = !DILocation(line: 197, column: 11, scope: !4404, inlinedAt: !4393)
!4406 = !DILocation(line: 198, column: 9, scope: !4403, inlinedAt: !4393)
!4407 = !DILocation(line: 0, scope: !4214, inlinedAt: !4408)
!4408 = distinct !DILocation(line: 201, column: 7, scope: !786, inlinedAt: !4393)
!4409 = !DILocation(line: 85, column: 25, scope: !4214, inlinedAt: !4408)
!4410 = !DILocation(line: 0, scope: !4222, inlinedAt: !4411)
!4411 = distinct !DILocation(line: 85, column: 10, scope: !4214, inlinedAt: !4408)
!4412 = !DILocation(line: 39, column: 8, scope: !4229, inlinedAt: !4411)
!4413 = !DILocation(line: 39, column: 7, scope: !4222, inlinedAt: !4411)
!4414 = !DILocation(line: 40, column: 5, scope: !4229, inlinedAt: !4411)
!4415 = !DILocation(line: 202, column: 7, scope: !786, inlinedAt: !4393)
!4416 = !DILocation(line: 118, column: 3, scope: !4385)
!4417 = !DILocation(line: 0, scope: !786)
!4418 = !DILocation(line: 178, column: 14, scope: !786)
!4419 = !DILocation(line: 180, column: 9, scope: !4396)
!4420 = !DILocation(line: 180, column: 7, scope: !786)
!4421 = !DILocation(line: 182, column: 13, scope: !4399)
!4422 = !DILocation(line: 182, column: 11, scope: !4400)
!4423 = !DILocation(line: 190, column: 30, scope: !4424)
!4424 = distinct !DILexicalBlock(scope: !4399, file: !783, line: 183, column: 9)
!4425 = !DILocation(line: 191, column: 16, scope: !4424)
!4426 = !DILocation(line: 191, column: 13, scope: !4424)
!4427 = !DILocation(line: 192, column: 9, scope: !4424)
!4428 = !DILocation(line: 197, column: 11, scope: !4403)
!4429 = !DILocation(line: 197, column: 11, scope: !4404)
!4430 = !DILocation(line: 198, column: 9, scope: !4403)
!4431 = !DILocation(line: 0, scope: !4214, inlinedAt: !4432)
!4432 = distinct !DILocation(line: 201, column: 7, scope: !786)
!4433 = !DILocation(line: 85, column: 25, scope: !4214, inlinedAt: !4432)
!4434 = !DILocation(line: 0, scope: !4222, inlinedAt: !4435)
!4435 = distinct !DILocation(line: 85, column: 10, scope: !4214, inlinedAt: !4432)
!4436 = !DILocation(line: 39, column: 8, scope: !4229, inlinedAt: !4435)
!4437 = !DILocation(line: 39, column: 7, scope: !4222, inlinedAt: !4435)
!4438 = !DILocation(line: 40, column: 5, scope: !4229, inlinedAt: !4435)
!4439 = !DILocation(line: 202, column: 7, scope: !786)
!4440 = !DILocation(line: 203, column: 3, scope: !786)
!4441 = !DILocation(line: 0, scope: !798)
!4442 = !DILocation(line: 230, column: 14, scope: !798)
!4443 = !DILocation(line: 238, column: 7, scope: !4444)
!4444 = distinct !DILexicalBlock(scope: !798, file: !783, line: 238, column: 7)
!4445 = !DILocation(line: 238, column: 7, scope: !798)
!4446 = !DILocation(line: 240, column: 9, scope: !4447)
!4447 = distinct !DILexicalBlock(scope: !798, file: !783, line: 240, column: 7)
!4448 = !DILocation(line: 240, column: 18, scope: !4447)
!4449 = !DILocation(line: 253, column: 8, scope: !798)
!4450 = !DILocation(line: 258, column: 27, scope: !4451)
!4451 = distinct !DILexicalBlock(scope: !4452, file: !783, line: 257, column: 5)
!4452 = distinct !DILexicalBlock(scope: !798, file: !783, line: 256, column: 7)
!4453 = !DILocation(line: 259, column: 50, scope: !4451)
!4454 = !DILocation(line: 259, column: 32, scope: !4451)
!4455 = !DILocation(line: 260, column: 5, scope: !4451)
!4456 = !DILocation(line: 262, column: 9, scope: !4457)
!4457 = distinct !DILexicalBlock(scope: !798, file: !783, line: 262, column: 7)
!4458 = !DILocation(line: 262, column: 7, scope: !798)
!4459 = !DILocation(line: 263, column: 9, scope: !4457)
!4460 = !DILocation(line: 263, column: 5, scope: !4457)
!4461 = !DILocation(line: 264, column: 9, scope: !4462)
!4462 = distinct !DILexicalBlock(scope: !798, file: !783, line: 264, column: 7)
!4463 = !DILocation(line: 264, column: 14, scope: !4462)
!4464 = !DILocation(line: 265, column: 7, scope: !4462)
!4465 = !DILocation(line: 265, column: 11, scope: !4462)
!4466 = !DILocation(line: 266, column: 11, scope: !4462)
!4467 = !DILocation(line: 267, column: 14, scope: !4462)
!4468 = !DILocation(line: 264, column: 7, scope: !798)
!4469 = !DILocation(line: 268, column: 5, scope: !4462)
!4470 = !DILocation(line: 0, scope: !4283, inlinedAt: !4471)
!4471 = distinct !DILocation(line: 269, column: 8, scope: !798)
!4472 = !DILocation(line: 0, scope: !4291, inlinedAt: !4473)
!4473 = distinct !DILocation(line: 70, column: 25, scope: !4283, inlinedAt: !4471)
!4474 = !DILocation(line: 2059, column: 24, scope: !4291, inlinedAt: !4473)
!4475 = !DILocation(line: 2059, column: 10, scope: !4291, inlinedAt: !4473)
!4476 = !DILocation(line: 0, scope: !4222, inlinedAt: !4477)
!4477 = distinct !DILocation(line: 70, column: 10, scope: !4283, inlinedAt: !4471)
!4478 = !DILocation(line: 39, column: 8, scope: !4229, inlinedAt: !4477)
!4479 = !DILocation(line: 39, column: 7, scope: !4222, inlinedAt: !4477)
!4480 = !DILocation(line: 40, column: 5, scope: !4229, inlinedAt: !4477)
!4481 = !DILocation(line: 270, column: 7, scope: !798)
!4482 = !DILocation(line: 271, column: 3, scope: !798)
!4483 = distinct !DISubprogram(name: "xzalloc", scope: !783, file: !783, line: 279, type: !1788, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !4484)
!4484 = !{!4485}
!4485 = !DILocalVariable(name: "s", arg: 1, scope: !4483, file: !783, line: 279, type: !133)
!4486 = !DILocation(line: 0, scope: !4483)
!4487 = !DILocalVariable(name: "n", arg: 1, scope: !4488, file: !783, line: 294, type: !133)
!4488 = distinct !DISubprogram(name: "xcalloc", scope: !783, file: !783, line: 294, type: !4352, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !4489)
!4489 = !{!4487, !4490}
!4490 = !DILocalVariable(name: "s", arg: 2, scope: !4488, file: !783, line: 294, type: !133)
!4491 = !DILocation(line: 0, scope: !4488, inlinedAt: !4492)
!4492 = distinct !DILocation(line: 281, column: 10, scope: !4483)
!4493 = !DILocation(line: 296, column: 25, scope: !4488, inlinedAt: !4492)
!4494 = !DILocation(line: 0, scope: !4222, inlinedAt: !4495)
!4495 = distinct !DILocation(line: 296, column: 10, scope: !4488, inlinedAt: !4492)
!4496 = !DILocation(line: 39, column: 8, scope: !4229, inlinedAt: !4495)
!4497 = !DILocation(line: 39, column: 7, scope: !4222, inlinedAt: !4495)
!4498 = !DILocation(line: 40, column: 5, scope: !4229, inlinedAt: !4495)
!4499 = !DILocation(line: 281, column: 3, scope: !4483)
!4500 = !DISubprogram(name: "calloc", scope: !1054, file: !1054, line: 543, type: !4352, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!4501 = !DILocation(line: 0, scope: !4488)
!4502 = !DILocation(line: 296, column: 25, scope: !4488)
!4503 = !DILocation(line: 0, scope: !4222, inlinedAt: !4504)
!4504 = distinct !DILocation(line: 296, column: 10, scope: !4488)
!4505 = !DILocation(line: 39, column: 8, scope: !4229, inlinedAt: !4504)
!4506 = !DILocation(line: 39, column: 7, scope: !4222, inlinedAt: !4504)
!4507 = !DILocation(line: 40, column: 5, scope: !4229, inlinedAt: !4504)
!4508 = !DILocation(line: 296, column: 3, scope: !4488)
!4509 = distinct !DISubprogram(name: "xizalloc", scope: !783, file: !783, line: 285, type: !1774, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !4510)
!4510 = !{!4511}
!4511 = !DILocalVariable(name: "s", arg: 1, scope: !4509, file: !783, line: 285, type: !802)
!4512 = !DILocation(line: 0, scope: !4509)
!4513 = !DILocalVariable(name: "n", arg: 1, scope: !4514, file: !783, line: 300, type: !802)
!4514 = distinct !DISubprogram(name: "xicalloc", scope: !783, file: !783, line: 300, type: !4368, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !4515)
!4515 = !{!4513, !4516}
!4516 = !DILocalVariable(name: "s", arg: 2, scope: !4514, file: !783, line: 300, type: !802)
!4517 = !DILocation(line: 0, scope: !4514, inlinedAt: !4518)
!4518 = distinct !DILocation(line: 287, column: 10, scope: !4509)
!4519 = !DILocalVariable(name: "n", arg: 1, scope: !4520, file: !1773, line: 77, type: !802)
!4520 = distinct !DISubprogram(name: "icalloc", scope: !1773, file: !1773, line: 77, type: !4368, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !4521)
!4521 = !{!4519, !4522}
!4522 = !DILocalVariable(name: "s", arg: 2, scope: !4520, file: !1773, line: 77, type: !802)
!4523 = !DILocation(line: 0, scope: !4520, inlinedAt: !4524)
!4524 = distinct !DILocation(line: 302, column: 25, scope: !4514, inlinedAt: !4518)
!4525 = !DILocation(line: 91, column: 10, scope: !4520, inlinedAt: !4524)
!4526 = !DILocation(line: 0, scope: !4222, inlinedAt: !4527)
!4527 = distinct !DILocation(line: 302, column: 10, scope: !4514, inlinedAt: !4518)
!4528 = !DILocation(line: 39, column: 8, scope: !4229, inlinedAt: !4527)
!4529 = !DILocation(line: 39, column: 7, scope: !4222, inlinedAt: !4527)
!4530 = !DILocation(line: 40, column: 5, scope: !4229, inlinedAt: !4527)
!4531 = !DILocation(line: 287, column: 3, scope: !4509)
!4532 = !DILocation(line: 0, scope: !4514)
!4533 = !DILocation(line: 0, scope: !4520, inlinedAt: !4534)
!4534 = distinct !DILocation(line: 302, column: 25, scope: !4514)
!4535 = !DILocation(line: 91, column: 10, scope: !4520, inlinedAt: !4534)
!4536 = !DILocation(line: 0, scope: !4222, inlinedAt: !4537)
!4537 = distinct !DILocation(line: 302, column: 10, scope: !4514)
!4538 = !DILocation(line: 39, column: 8, scope: !4229, inlinedAt: !4537)
!4539 = !DILocation(line: 39, column: 7, scope: !4222, inlinedAt: !4537)
!4540 = !DILocation(line: 40, column: 5, scope: !4229, inlinedAt: !4537)
!4541 = !DILocation(line: 302, column: 3, scope: !4514)
!4542 = distinct !DISubprogram(name: "xmemdup", scope: !783, file: !783, line: 310, type: !4543, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !4545)
!4543 = !DISubroutineType(types: !4544)
!4544 = !{!131, !1078, !133}
!4545 = !{!4546, !4547}
!4546 = !DILocalVariable(name: "p", arg: 1, scope: !4542, file: !783, line: 310, type: !1078)
!4547 = !DILocalVariable(name: "s", arg: 2, scope: !4542, file: !783, line: 310, type: !133)
!4548 = !DILocation(line: 0, scope: !4542)
!4549 = !DILocation(line: 0, scope: !4241, inlinedAt: !4550)
!4550 = distinct !DILocation(line: 312, column: 18, scope: !4542)
!4551 = !DILocation(line: 49, column: 25, scope: !4241, inlinedAt: !4550)
!4552 = !DILocation(line: 0, scope: !4222, inlinedAt: !4553)
!4553 = distinct !DILocation(line: 49, column: 10, scope: !4241, inlinedAt: !4550)
!4554 = !DILocation(line: 39, column: 8, scope: !4229, inlinedAt: !4553)
!4555 = !DILocation(line: 39, column: 7, scope: !4222, inlinedAt: !4553)
!4556 = !DILocation(line: 40, column: 5, scope: !4229, inlinedAt: !4553)
!4557 = !DILocalVariable(name: "__dest", arg: 1, scope: !4558, file: !1266, line: 26, type: !4561)
!4558 = distinct !DISubprogram(name: "memcpy", scope: !1266, file: !1266, line: 26, type: !4559, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !4562)
!4559 = !DISubroutineType(types: !4560)
!4560 = !{!131, !4561, !1077, !133}
!4561 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !131)
!4562 = !{!4557, !4563, !4564}
!4563 = !DILocalVariable(name: "__src", arg: 2, scope: !4558, file: !1266, line: 26, type: !1077)
!4564 = !DILocalVariable(name: "__len", arg: 3, scope: !4558, file: !1266, line: 26, type: !133)
!4565 = !DILocation(line: 0, scope: !4558, inlinedAt: !4566)
!4566 = distinct !DILocation(line: 312, column: 10, scope: !4542)
!4567 = !DILocation(line: 29, column: 10, scope: !4558, inlinedAt: !4566)
!4568 = !DILocation(line: 312, column: 3, scope: !4542)
!4569 = distinct !DISubprogram(name: "ximemdup", scope: !783, file: !783, line: 316, type: !4570, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !4572)
!4570 = !DISubroutineType(types: !4571)
!4571 = !{!131, !1078, !802}
!4572 = !{!4573, !4574}
!4573 = !DILocalVariable(name: "p", arg: 1, scope: !4569, file: !783, line: 316, type: !1078)
!4574 = !DILocalVariable(name: "s", arg: 2, scope: !4569, file: !783, line: 316, type: !802)
!4575 = !DILocation(line: 0, scope: !4569)
!4576 = !DILocation(line: 0, scope: !4252, inlinedAt: !4577)
!4577 = distinct !DILocation(line: 318, column: 18, scope: !4569)
!4578 = !DILocation(line: 0, scope: !4257, inlinedAt: !4579)
!4579 = distinct !DILocation(line: 55, column: 25, scope: !4252, inlinedAt: !4577)
!4580 = !DILocation(line: 57, column: 26, scope: !4257, inlinedAt: !4579)
!4581 = !DILocation(line: 0, scope: !4222, inlinedAt: !4582)
!4582 = distinct !DILocation(line: 55, column: 10, scope: !4252, inlinedAt: !4577)
!4583 = !DILocation(line: 39, column: 8, scope: !4229, inlinedAt: !4582)
!4584 = !DILocation(line: 39, column: 7, scope: !4222, inlinedAt: !4582)
!4585 = !DILocation(line: 40, column: 5, scope: !4229, inlinedAt: !4582)
!4586 = !DILocation(line: 0, scope: !4558, inlinedAt: !4587)
!4587 = distinct !DILocation(line: 318, column: 10, scope: !4569)
!4588 = !DILocation(line: 29, column: 10, scope: !4558, inlinedAt: !4587)
!4589 = !DILocation(line: 318, column: 3, scope: !4569)
!4590 = distinct !DISubprogram(name: "ximemdup0", scope: !783, file: !783, line: 325, type: !4591, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !4593)
!4591 = !DISubroutineType(types: !4592)
!4592 = !{!130, !1078, !802}
!4593 = !{!4594, !4595, !4596}
!4594 = !DILocalVariable(name: "p", arg: 1, scope: !4590, file: !783, line: 325, type: !1078)
!4595 = !DILocalVariable(name: "s", arg: 2, scope: !4590, file: !783, line: 325, type: !802)
!4596 = !DILocalVariable(name: "result", scope: !4590, file: !783, line: 327, type: !130)
!4597 = !DILocation(line: 0, scope: !4590)
!4598 = !DILocation(line: 327, column: 30, scope: !4590)
!4599 = !DILocation(line: 0, scope: !4252, inlinedAt: !4600)
!4600 = distinct !DILocation(line: 327, column: 18, scope: !4590)
!4601 = !DILocation(line: 0, scope: !4257, inlinedAt: !4602)
!4602 = distinct !DILocation(line: 55, column: 25, scope: !4252, inlinedAt: !4600)
!4603 = !DILocation(line: 57, column: 26, scope: !4257, inlinedAt: !4602)
!4604 = !DILocation(line: 0, scope: !4222, inlinedAt: !4605)
!4605 = distinct !DILocation(line: 55, column: 10, scope: !4252, inlinedAt: !4600)
!4606 = !DILocation(line: 39, column: 8, scope: !4229, inlinedAt: !4605)
!4607 = !DILocation(line: 39, column: 7, scope: !4222, inlinedAt: !4605)
!4608 = !DILocation(line: 40, column: 5, scope: !4229, inlinedAt: !4605)
!4609 = !DILocation(line: 328, column: 3, scope: !4590)
!4610 = !DILocation(line: 328, column: 13, scope: !4590)
!4611 = !DILocation(line: 0, scope: !4558, inlinedAt: !4612)
!4612 = distinct !DILocation(line: 329, column: 10, scope: !4590)
!4613 = !DILocation(line: 29, column: 10, scope: !4558, inlinedAt: !4612)
!4614 = !DILocation(line: 329, column: 3, scope: !4590)
!4615 = distinct !DISubprogram(name: "xstrdup", scope: !783, file: !783, line: 335, type: !1056, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !4616)
!4616 = !{!4617}
!4617 = !DILocalVariable(name: "string", arg: 1, scope: !4615, file: !783, line: 335, type: !136)
!4618 = !DILocation(line: 0, scope: !4615)
!4619 = !DILocation(line: 337, column: 27, scope: !4615)
!4620 = !DILocation(line: 337, column: 43, scope: !4615)
!4621 = !DILocation(line: 0, scope: !4542, inlinedAt: !4622)
!4622 = distinct !DILocation(line: 337, column: 10, scope: !4615)
!4623 = !DILocation(line: 0, scope: !4241, inlinedAt: !4624)
!4624 = distinct !DILocation(line: 312, column: 18, scope: !4542, inlinedAt: !4622)
!4625 = !DILocation(line: 49, column: 25, scope: !4241, inlinedAt: !4624)
!4626 = !DILocation(line: 0, scope: !4222, inlinedAt: !4627)
!4627 = distinct !DILocation(line: 49, column: 10, scope: !4241, inlinedAt: !4624)
!4628 = !DILocation(line: 39, column: 8, scope: !4229, inlinedAt: !4627)
!4629 = !DILocation(line: 39, column: 7, scope: !4222, inlinedAt: !4627)
!4630 = !DILocation(line: 40, column: 5, scope: !4229, inlinedAt: !4627)
!4631 = !DILocation(line: 0, scope: !4558, inlinedAt: !4632)
!4632 = distinct !DILocation(line: 312, column: 10, scope: !4542, inlinedAt: !4622)
!4633 = !DILocation(line: 29, column: 10, scope: !4558, inlinedAt: !4632)
!4634 = !DILocation(line: 337, column: 3, scope: !4615)
!4635 = distinct !DISubprogram(name: "xalloc_die", scope: !736, file: !736, line: 32, type: !506, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !816, retainedNodes: !4636)
!4636 = !{!4637}
!4637 = !DILocalVariable(name: "__errstatus", scope: !4638, file: !736, line: 34, type: !4639)
!4638 = distinct !DILexicalBlock(scope: !4635, file: !736, line: 34, column: 3)
!4639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!4640 = !DILocation(line: 34, column: 3, scope: !4638)
!4641 = !DILocation(line: 0, scope: !4638)
!4642 = !DILocation(line: 40, column: 3, scope: !4635)
!4643 = distinct !DISubprogram(name: "xstrtoimax", scope: !4644, file: !4644, line: 71, type: !4645, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !818, retainedNodes: !4648)
!4644 = !DIFile(filename: "./lib/xstrtol.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a1112be551b7ea11a9f6293a4923a73")
!4645 = !DISubroutineType(types: !4646)
!4646 = !{!1097, !136, !1083, !87, !4647, !136}
!4647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!4648 = !{!4649, !4650, !4651, !4652, !4653, !4654, !4655, !4656, !4657, !4658, !4661, !4662}
!4649 = !DILocalVariable(name: "nptr", arg: 1, scope: !4643, file: !4644, line: 71, type: !136)
!4650 = !DILocalVariable(name: "endptr", arg: 2, scope: !4643, file: !4644, line: 71, type: !1083)
!4651 = !DILocalVariable(name: "base", arg: 3, scope: !4643, file: !4644, line: 71, type: !87)
!4652 = !DILocalVariable(name: "val", arg: 4, scope: !4643, file: !4644, line: 72, type: !4647)
!4653 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !4643, file: !4644, line: 72, type: !136)
!4654 = !DILocalVariable(name: "t_ptr", scope: !4643, file: !4644, line: 74, type: !130)
!4655 = !DILocalVariable(name: "p", scope: !4643, file: !4644, line: 75, type: !1083)
!4656 = !DILocalVariable(name: "tmp", scope: !4643, file: !4644, line: 91, type: !822)
!4657 = !DILocalVariable(name: "err", scope: !4643, file: !4644, line: 92, type: !1097)
!4658 = !DILocalVariable(name: "xbase", scope: !4659, file: !4644, line: 126, type: !87)
!4659 = distinct !DILexicalBlock(scope: !4660, file: !4644, line: 119, column: 5)
!4660 = distinct !DILexicalBlock(scope: !4643, file: !4644, line: 118, column: 7)
!4661 = !DILocalVariable(name: "suffixes", scope: !4659, file: !4644, line: 127, type: !87)
!4662 = !DILocalVariable(name: "overflow", scope: !4659, file: !4644, line: 156, type: !1097)
!4663 = !DILocation(line: 0, scope: !4643)
!4664 = !DILocation(line: 74, column: 3, scope: !4643)
!4665 = !DILocation(line: 75, column: 14, scope: !4643)
!4666 = !DILocation(line: 90, column: 3, scope: !4643)
!4667 = !DILocation(line: 90, column: 9, scope: !4643)
!4668 = !DILocation(line: 91, column: 20, scope: !4643)
!4669 = !DILocation(line: 94, column: 7, scope: !4670)
!4670 = distinct !DILexicalBlock(scope: !4643, file: !4644, line: 94, column: 7)
!4671 = !DILocation(line: 94, column: 10, scope: !4670)
!4672 = !DILocation(line: 94, column: 7, scope: !4643)
!4673 = !DILocation(line: 98, column: 14, scope: !4674)
!4674 = distinct !DILexicalBlock(scope: !4675, file: !4644, line: 98, column: 11)
!4675 = distinct !DILexicalBlock(scope: !4670, file: !4644, line: 95, column: 5)
!4676 = !DILocation(line: 98, column: 29, scope: !4674)
!4677 = !DILocation(line: 98, column: 32, scope: !4674)
!4678 = !DILocation(line: 98, column: 38, scope: !4674)
!4679 = !DILocation(line: 98, column: 41, scope: !4674)
!4680 = !DILocation(line: 98, column: 11, scope: !4675)
!4681 = !DILocation(line: 102, column: 12, scope: !4682)
!4682 = distinct !DILexicalBlock(scope: !4670, file: !4644, line: 102, column: 12)
!4683 = !DILocation(line: 102, column: 12, scope: !4670)
!4684 = !DILocation(line: 107, column: 5, scope: !4685)
!4685 = distinct !DILexicalBlock(scope: !4682, file: !4644, line: 103, column: 5)
!4686 = !DILocation(line: 112, column: 8, scope: !4687)
!4687 = distinct !DILexicalBlock(scope: !4643, file: !4644, line: 112, column: 7)
!4688 = !DILocation(line: 112, column: 7, scope: !4643)
!4689 = !DILocation(line: 114, column: 12, scope: !4690)
!4690 = distinct !DILexicalBlock(scope: !4687, file: !4644, line: 113, column: 5)
!4691 = !DILocation(line: 115, column: 7, scope: !4690)
!4692 = !DILocation(line: 118, column: 7, scope: !4660)
!4693 = !DILocation(line: 118, column: 11, scope: !4660)
!4694 = !DILocation(line: 118, column: 7, scope: !4643)
!4695 = !DILocation(line: 120, column: 12, scope: !4696)
!4696 = distinct !DILexicalBlock(scope: !4659, file: !4644, line: 120, column: 11)
!4697 = !DILocation(line: 120, column: 11, scope: !4659)
!4698 = !DILocation(line: 122, column: 16, scope: !4699)
!4699 = distinct !DILexicalBlock(scope: !4696, file: !4644, line: 121, column: 9)
!4700 = !DILocation(line: 123, column: 22, scope: !4699)
!4701 = !DILocation(line: 123, column: 11, scope: !4699)
!4702 = !DILocation(line: 0, scope: !4659)
!4703 = !DILocation(line: 128, column: 7, scope: !4659)
!4704 = !DILocation(line: 140, column: 15, scope: !4705)
!4705 = distinct !DILexicalBlock(scope: !4706, file: !4644, line: 140, column: 15)
!4706 = distinct !DILexicalBlock(scope: !4659, file: !4644, line: 129, column: 9)
!4707 = !DILocation(line: 140, column: 15, scope: !4706)
!4708 = !DILocation(line: 141, column: 21, scope: !4705)
!4709 = !DILocation(line: 141, column: 13, scope: !4705)
!4710 = !DILocation(line: 144, column: 21, scope: !4711)
!4711 = distinct !DILexicalBlock(scope: !4712, file: !4644, line: 144, column: 21)
!4712 = distinct !DILexicalBlock(scope: !4705, file: !4644, line: 142, column: 15)
!4713 = !DILocation(line: 144, column: 29, scope: !4711)
!4714 = !DILocation(line: 144, column: 21, scope: !4712)
!4715 = !DILocation(line: 152, column: 17, scope: !4712)
!4716 = !DILocation(line: 157, column: 7, scope: !4659)
!4717 = !DILocalVariable(name: "err", scope: !4718, file: !4644, line: 64, type: !1097)
!4718 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !4644, file: !4644, line: 62, type: !4719, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !818, retainedNodes: !4721)
!4719 = !DISubroutineType(types: !4720)
!4720 = !{!1097, !4647, !87, !87}
!4721 = !{!4722, !4723, !4724, !4717}
!4722 = !DILocalVariable(name: "x", arg: 1, scope: !4718, file: !4644, line: 62, type: !4647)
!4723 = !DILocalVariable(name: "base", arg: 2, scope: !4718, file: !4644, line: 62, type: !87)
!4724 = !DILocalVariable(name: "power", arg: 3, scope: !4718, file: !4644, line: 62, type: !87)
!4725 = !DILocation(line: 0, scope: !4718, inlinedAt: !4726)
!4726 = distinct !DILocation(line: 219, column: 22, scope: !4727)
!4727 = distinct !DILexicalBlock(scope: !4659, file: !4644, line: 158, column: 9)
!4728 = !DILocalVariable(name: "x", arg: 1, scope: !4729, file: !4644, line: 47, type: !4647)
!4729 = distinct !DISubprogram(name: "bkm_scale", scope: !4644, file: !4644, line: 47, type: !4730, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !818, retainedNodes: !4732)
!4730 = !DISubroutineType(types: !4731)
!4731 = !{!1097, !4647, !87}
!4732 = !{!4728, !4733, !4734}
!4733 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !4729, file: !4644, line: 47, type: !87)
!4734 = !DILocalVariable(name: "scaled", scope: !4729, file: !4644, line: 49, type: !822)
!4735 = !DILocation(line: 0, scope: !4729, inlinedAt: !4736)
!4736 = distinct !DILocation(line: 66, column: 12, scope: !4718, inlinedAt: !4726)
!4737 = !DILocation(line: 50, column: 7, scope: !4738, inlinedAt: !4736)
!4738 = distinct !DILexicalBlock(scope: !4729, file: !4644, line: 50, column: 7)
!4739 = !DILocation(line: 0, scope: !4718, inlinedAt: !4740)
!4740 = distinct !DILocation(line: 215, column: 22, scope: !4727)
!4741 = !DILocation(line: 0, scope: !4729, inlinedAt: !4742)
!4742 = distinct !DILocation(line: 66, column: 12, scope: !4718, inlinedAt: !4740)
!4743 = !DILocation(line: 50, column: 7, scope: !4738, inlinedAt: !4742)
!4744 = !DILocation(line: 0, scope: !4718, inlinedAt: !4745)
!4745 = distinct !DILocation(line: 202, column: 22, scope: !4727)
!4746 = !DILocation(line: 0, scope: !4729, inlinedAt: !4747)
!4747 = distinct !DILocation(line: 66, column: 12, scope: !4718, inlinedAt: !4745)
!4748 = !DILocation(line: 50, column: 7, scope: !4738, inlinedAt: !4747)
!4749 = !DILocation(line: 0, scope: !4718, inlinedAt: !4750)
!4750 = distinct !DILocation(line: 198, column: 22, scope: !4727)
!4751 = !DILocation(line: 0, scope: !4729, inlinedAt: !4752)
!4752 = distinct !DILocation(line: 66, column: 12, scope: !4718, inlinedAt: !4750)
!4753 = !DILocation(line: 50, column: 7, scope: !4738, inlinedAt: !4752)
!4754 = !DILocation(line: 0, scope: !4718, inlinedAt: !4755)
!4755 = distinct !DILocation(line: 194, column: 22, scope: !4727)
!4756 = !DILocation(line: 0, scope: !4729, inlinedAt: !4757)
!4757 = distinct !DILocation(line: 66, column: 12, scope: !4718, inlinedAt: !4755)
!4758 = !DILocation(line: 50, column: 7, scope: !4738, inlinedAt: !4757)
!4759 = !DILocation(line: 0, scope: !4718, inlinedAt: !4760)
!4760 = distinct !DILocation(line: 175, column: 22, scope: !4727)
!4761 = !DILocation(line: 0, scope: !4729, inlinedAt: !4762)
!4762 = distinct !DILocation(line: 66, column: 12, scope: !4718, inlinedAt: !4760)
!4763 = !DILocation(line: 50, column: 7, scope: !4738, inlinedAt: !4762)
!4764 = !DILocation(line: 0, scope: !4729, inlinedAt: !4765)
!4765 = distinct !DILocation(line: 160, column: 22, scope: !4727)
!4766 = !DILocation(line: 50, column: 7, scope: !4738, inlinedAt: !4765)
!4767 = !DILocation(line: 50, column: 7, scope: !4729, inlinedAt: !4765)
!4768 = !DILocation(line: 0, scope: !4729, inlinedAt: !4769)
!4769 = distinct !DILocation(line: 167, column: 22, scope: !4727)
!4770 = !DILocation(line: 50, column: 7, scope: !4738, inlinedAt: !4769)
!4771 = !DILocation(line: 50, column: 7, scope: !4729, inlinedAt: !4769)
!4772 = !DILocation(line: 50, column: 7, scope: !4729, inlinedAt: !4762)
!4773 = !DILocation(line: 66, column: 9, scope: !4718, inlinedAt: !4760)
!4774 = !DILocation(line: 227, column: 11, scope: !4659)
!4775 = !DILocation(line: 0, scope: !4718, inlinedAt: !4776)
!4776 = distinct !DILocation(line: 180, column: 22, scope: !4727)
!4777 = !DILocation(line: 0, scope: !4729, inlinedAt: !4778)
!4778 = distinct !DILocation(line: 66, column: 12, scope: !4718, inlinedAt: !4776)
!4779 = !DILocation(line: 50, column: 7, scope: !4738, inlinedAt: !4778)
!4780 = !DILocation(line: 50, column: 7, scope: !4729, inlinedAt: !4778)
!4781 = !DILocation(line: 66, column: 9, scope: !4718, inlinedAt: !4776)
!4782 = !DILocation(line: 0, scope: !4718, inlinedAt: !4783)
!4783 = distinct !DILocation(line: 185, column: 22, scope: !4727)
!4784 = !DILocation(line: 0, scope: !4729, inlinedAt: !4785)
!4785 = distinct !DILocation(line: 66, column: 12, scope: !4718, inlinedAt: !4783)
!4786 = !DILocation(line: 50, column: 7, scope: !4738, inlinedAt: !4785)
!4787 = !DILocation(line: 50, column: 7, scope: !4729, inlinedAt: !4785)
!4788 = !DILocation(line: 0, scope: !4718, inlinedAt: !4789)
!4789 = distinct !DILocation(line: 190, column: 22, scope: !4727)
!4790 = !DILocation(line: 0, scope: !4729, inlinedAt: !4791)
!4791 = distinct !DILocation(line: 66, column: 12, scope: !4718, inlinedAt: !4789)
!4792 = !DILocation(line: 50, column: 7, scope: !4738, inlinedAt: !4791)
!4793 = !DILocation(line: 50, column: 7, scope: !4729, inlinedAt: !4791)
!4794 = !DILocation(line: 66, column: 9, scope: !4718, inlinedAt: !4789)
!4795 = !DILocation(line: 50, column: 7, scope: !4729, inlinedAt: !4757)
!4796 = !DILocation(line: 66, column: 9, scope: !4718, inlinedAt: !4755)
!4797 = !DILocation(line: 50, column: 7, scope: !4729, inlinedAt: !4752)
!4798 = !DILocation(line: 66, column: 9, scope: !4718, inlinedAt: !4750)
!4799 = !DILocation(line: 50, column: 7, scope: !4729, inlinedAt: !4747)
!4800 = !DILocation(line: 66, column: 9, scope: !4718, inlinedAt: !4745)
!4801 = !DILocation(line: 0, scope: !4718, inlinedAt: !4802)
!4802 = distinct !DILocation(line: 207, column: 22, scope: !4727)
!4803 = !DILocation(line: 0, scope: !4729, inlinedAt: !4804)
!4804 = distinct !DILocation(line: 66, column: 12, scope: !4718, inlinedAt: !4802)
!4805 = !DILocation(line: 50, column: 7, scope: !4738, inlinedAt: !4804)
!4806 = !DILocation(line: 50, column: 7, scope: !4729, inlinedAt: !4804)
!4807 = !DILocation(line: 66, column: 9, scope: !4718, inlinedAt: !4802)
!4808 = !DILocation(line: 0, scope: !4729, inlinedAt: !4809)
!4809 = distinct !DILocation(line: 211, column: 22, scope: !4727)
!4810 = !DILocation(line: 50, column: 7, scope: !4738, inlinedAt: !4809)
!4811 = !DILocation(line: 50, column: 7, scope: !4729, inlinedAt: !4809)
!4812 = !DILocation(line: 50, column: 7, scope: !4729, inlinedAt: !4742)
!4813 = !DILocation(line: 66, column: 9, scope: !4718, inlinedAt: !4740)
!4814 = !DILocation(line: 50, column: 7, scope: !4729, inlinedAt: !4736)
!4815 = !DILocation(line: 66, column: 9, scope: !4718, inlinedAt: !4726)
!4816 = !DILocation(line: 0, scope: !4727)
!4817 = !DILocation(line: 228, column: 10, scope: !4659)
!4818 = !DILocation(line: 229, column: 11, scope: !4819)
!4819 = distinct !DILexicalBlock(scope: !4659, file: !4644, line: 229, column: 11)
!4820 = !DILocation(line: 229, column: 11, scope: !4659)
!4821 = !DILocation(line: 223, column: 16, scope: !4727)
!4822 = !DILocation(line: 224, column: 22, scope: !4727)
!4823 = !DILocation(line: 100, column: 11, scope: !4675)
!4824 = !DILocation(line: 92, column: 16, scope: !4643)
!4825 = !DILocation(line: 233, column: 8, scope: !4643)
!4826 = !DILocation(line: 234, column: 3, scope: !4643)
!4827 = !DILocation(line: 235, column: 1, scope: !4643)
!4828 = !DISubprogram(name: "strtoimax", scope: !4829, file: !4829, line: 297, type: !4830, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!4829 = !DIFile(filename: "/usr/include/inttypes.h", directory: "", checksumkind: CSK_MD5, checksum: "e498a0d76716f3e3909f4b6f2cb2f20f")
!4830 = !DISubroutineType(types: !4831)
!4831 = !{!822, !919, !4832, !87}
!4832 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1083)
!4833 = distinct !DISubprogram(name: "rpl_fopen", scope: !826, file: !826, line: 46, type: !4834, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !825, retainedNodes: !4870)
!4834 = !DISubroutineType(types: !4835)
!4835 = !{!4836, !136, !136}
!4836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4837, size: 64)
!4837 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !211, line: 7, baseType: !4838)
!4838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !213, line: 49, size: 1728, elements: !4839)
!4839 = !{!4840, !4841, !4842, !4843, !4844, !4845, !4846, !4847, !4848, !4849, !4850, !4851, !4852, !4853, !4855, !4856, !4857, !4858, !4859, !4860, !4861, !4862, !4863, !4864, !4865, !4866, !4867, !4868, !4869}
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4838, file: !213, line: 51, baseType: !87, size: 32)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4838, file: !213, line: 54, baseType: !130, size: 64, offset: 64)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4838, file: !213, line: 55, baseType: !130, size: 64, offset: 128)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4838, file: !213, line: 56, baseType: !130, size: 64, offset: 192)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4838, file: !213, line: 57, baseType: !130, size: 64, offset: 256)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4838, file: !213, line: 58, baseType: !130, size: 64, offset: 320)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4838, file: !213, line: 59, baseType: !130, size: 64, offset: 384)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4838, file: !213, line: 60, baseType: !130, size: 64, offset: 448)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4838, file: !213, line: 61, baseType: !130, size: 64, offset: 512)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4838, file: !213, line: 64, baseType: !130, size: 64, offset: 576)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4838, file: !213, line: 65, baseType: !130, size: 64, offset: 640)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4838, file: !213, line: 66, baseType: !130, size: 64, offset: 704)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4838, file: !213, line: 68, baseType: !228, size: 64, offset: 768)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4838, file: !213, line: 70, baseType: !4854, size: 64, offset: 832)
!4854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4838, size: 64)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4838, file: !213, line: 72, baseType: !87, size: 32, offset: 896)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4838, file: !213, line: 73, baseType: !87, size: 32, offset: 928)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4838, file: !213, line: 74, baseType: !235, size: 64, offset: 960)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4838, file: !213, line: 77, baseType: !132, size: 16, offset: 1024)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4838, file: !213, line: 78, baseType: !240, size: 8, offset: 1040)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4838, file: !213, line: 79, baseType: !54, size: 8, offset: 1048)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4838, file: !213, line: 81, baseType: !243, size: 64, offset: 1088)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4838, file: !213, line: 89, baseType: !246, size: 64, offset: 1152)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4838, file: !213, line: 91, baseType: !248, size: 64, offset: 1216)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4838, file: !213, line: 92, baseType: !251, size: 64, offset: 1280)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4838, file: !213, line: 93, baseType: !4854, size: 64, offset: 1344)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4838, file: !213, line: 94, baseType: !131, size: 64, offset: 1408)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4838, file: !213, line: 95, baseType: !133, size: 64, offset: 1472)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4838, file: !213, line: 96, baseType: !87, size: 32, offset: 1536)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4838, file: !213, line: 98, baseType: !258, size: 160, offset: 1568)
!4870 = !{!4871, !4872, !4873, !4874, !4875, !4876, !4880, !4882, !4883, !4888, !4891, !4892}
!4871 = !DILocalVariable(name: "filename", arg: 1, scope: !4833, file: !826, line: 46, type: !136)
!4872 = !DILocalVariable(name: "mode", arg: 2, scope: !4833, file: !826, line: 46, type: !136)
!4873 = !DILocalVariable(name: "open_direction", scope: !4833, file: !826, line: 54, type: !87)
!4874 = !DILocalVariable(name: "open_flags", scope: !4833, file: !826, line: 55, type: !87)
!4875 = !DILocalVariable(name: "open_flags_gnu", scope: !4833, file: !826, line: 57, type: !196)
!4876 = !DILocalVariable(name: "fdopen_mode_buf", scope: !4833, file: !826, line: 59, type: !4877)
!4877 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 648, elements: !4878)
!4878 = !{!4879}
!4879 = !DISubrange(count: 81)
!4880 = !DILocalVariable(name: "p", scope: !4881, file: !826, line: 62, type: !136)
!4881 = distinct !DILexicalBlock(scope: !4833, file: !826, line: 61, column: 3)
!4882 = !DILocalVariable(name: "q", scope: !4881, file: !826, line: 64, type: !130)
!4883 = !DILocalVariable(name: "len", scope: !4884, file: !826, line: 128, type: !133)
!4884 = distinct !DILexicalBlock(scope: !4885, file: !826, line: 127, column: 9)
!4885 = distinct !DILexicalBlock(scope: !4886, file: !826, line: 68, column: 7)
!4886 = distinct !DILexicalBlock(scope: !4887, file: !826, line: 67, column: 5)
!4887 = distinct !DILexicalBlock(scope: !4881, file: !826, line: 67, column: 5)
!4888 = !DILocalVariable(name: "fd", scope: !4889, file: !826, line: 199, type: !87)
!4889 = distinct !DILexicalBlock(scope: !4890, file: !826, line: 198, column: 5)
!4890 = distinct !DILexicalBlock(scope: !4833, file: !826, line: 197, column: 7)
!4891 = !DILocalVariable(name: "fp", scope: !4889, file: !826, line: 204, type: !4836)
!4892 = !DILocalVariable(name: "saved_errno", scope: !4893, file: !826, line: 207, type: !87)
!4893 = distinct !DILexicalBlock(scope: !4894, file: !826, line: 206, column: 9)
!4894 = distinct !DILexicalBlock(scope: !4889, file: !826, line: 205, column: 11)
!4895 = !DILocation(line: 0, scope: !4833)
!4896 = !DILocation(line: 59, column: 3, scope: !4833)
!4897 = !DILocation(line: 59, column: 8, scope: !4833)
!4898 = !DILocation(line: 0, scope: !4881)
!4899 = !DILocation(line: 67, column: 12, scope: !4886)
!4900 = !DILocation(line: 67, column: 15, scope: !4886)
!4901 = !DILocation(line: 67, column: 5, scope: !4887)
!4902 = !DILocation(line: 138, column: 8, scope: !4881)
!4903 = !DILocation(line: 197, column: 7, scope: !4833)
!4904 = !DILocation(line: 69, column: 9, scope: !4885)
!4905 = !DILocation(line: 74, column: 19, scope: !4906)
!4906 = distinct !DILexicalBlock(scope: !4907, file: !826, line: 74, column: 17)
!4907 = distinct !DILexicalBlock(scope: !4885, file: !826, line: 70, column: 11)
!4908 = !DILocation(line: 74, column: 17, scope: !4907)
!4909 = !DILocation(line: 75, column: 17, scope: !4906)
!4910 = !DILocation(line: 75, column: 20, scope: !4906)
!4911 = !DILocation(line: 75, column: 15, scope: !4906)
!4912 = !DILocation(line: 80, column: 24, scope: !4907)
!4913 = !DILocation(line: 82, column: 19, scope: !4914)
!4914 = distinct !DILexicalBlock(scope: !4907, file: !826, line: 82, column: 17)
!4915 = !DILocation(line: 82, column: 17, scope: !4907)
!4916 = !DILocation(line: 83, column: 17, scope: !4914)
!4917 = !DILocation(line: 83, column: 20, scope: !4914)
!4918 = !DILocation(line: 83, column: 15, scope: !4914)
!4919 = !DILocation(line: 88, column: 24, scope: !4907)
!4920 = !DILocation(line: 90, column: 19, scope: !4921)
!4921 = distinct !DILexicalBlock(scope: !4907, file: !826, line: 90, column: 17)
!4922 = !DILocation(line: 90, column: 17, scope: !4907)
!4923 = !DILocation(line: 91, column: 17, scope: !4921)
!4924 = !DILocation(line: 91, column: 20, scope: !4921)
!4925 = !DILocation(line: 91, column: 15, scope: !4921)
!4926 = !DILocation(line: 100, column: 19, scope: !4927)
!4927 = distinct !DILexicalBlock(scope: !4907, file: !826, line: 100, column: 17)
!4928 = !DILocation(line: 100, column: 17, scope: !4907)
!4929 = !DILocation(line: 101, column: 17, scope: !4927)
!4930 = !DILocation(line: 101, column: 20, scope: !4927)
!4931 = !DILocation(line: 101, column: 15, scope: !4927)
!4932 = !DILocation(line: 107, column: 19, scope: !4933)
!4933 = distinct !DILexicalBlock(scope: !4907, file: !826, line: 107, column: 17)
!4934 = !DILocation(line: 107, column: 17, scope: !4907)
!4935 = !DILocation(line: 108, column: 17, scope: !4933)
!4936 = !DILocation(line: 108, column: 20, scope: !4933)
!4937 = !DILocation(line: 108, column: 15, scope: !4933)
!4938 = !DILocation(line: 113, column: 24, scope: !4907)
!4939 = !DILocation(line: 115, column: 13, scope: !4907)
!4940 = !DILocation(line: 117, column: 24, scope: !4907)
!4941 = !DILocation(line: 119, column: 13, scope: !4907)
!4942 = !DILocation(line: 128, column: 24, scope: !4884)
!4943 = !DILocation(line: 0, scope: !4884)
!4944 = !DILocation(line: 129, column: 48, scope: !4945)
!4945 = distinct !DILexicalBlock(scope: !4884, file: !826, line: 129, column: 15)
!4946 = !DILocation(line: 129, column: 15, scope: !4884)
!4947 = !DILocalVariable(name: "__dest", arg: 1, scope: !4948, file: !1266, line: 26, type: !4561)
!4948 = distinct !DISubprogram(name: "memcpy", scope: !1266, file: !1266, line: 26, type: !4559, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !825, retainedNodes: !4949)
!4949 = !{!4947, !4950, !4951}
!4950 = !DILocalVariable(name: "__src", arg: 2, scope: !4948, file: !1266, line: 26, type: !1077)
!4951 = !DILocalVariable(name: "__len", arg: 3, scope: !4948, file: !1266, line: 26, type: !133)
!4952 = !DILocation(line: 0, scope: !4948, inlinedAt: !4953)
!4953 = distinct !DILocation(line: 131, column: 11, scope: !4884)
!4954 = !DILocation(line: 29, column: 10, scope: !4948, inlinedAt: !4953)
!4955 = !DILocation(line: 132, column: 13, scope: !4884)
!4956 = !DILocation(line: 135, column: 9, scope: !4885)
!4957 = !DILocation(line: 67, column: 25, scope: !4886)
!4958 = distinct !{!4958, !4901, !4959, !976}
!4959 = !DILocation(line: 136, column: 7, scope: !4887)
!4960 = !DILocation(line: 197, column: 7, scope: !4890)
!4961 = !DILocation(line: 199, column: 47, scope: !4889)
!4962 = !DILocation(line: 199, column: 16, scope: !4889)
!4963 = !DILocation(line: 0, scope: !4889)
!4964 = !DILocation(line: 201, column: 14, scope: !4965)
!4965 = distinct !DILexicalBlock(scope: !4889, file: !826, line: 201, column: 11)
!4966 = !DILocation(line: 201, column: 11, scope: !4889)
!4967 = !DILocation(line: 204, column: 18, scope: !4889)
!4968 = !DILocation(line: 205, column: 14, scope: !4894)
!4969 = !DILocation(line: 205, column: 11, scope: !4889)
!4970 = !DILocation(line: 207, column: 29, scope: !4893)
!4971 = !DILocation(line: 0, scope: !4893)
!4972 = !DILocation(line: 208, column: 11, scope: !4893)
!4973 = !DILocation(line: 209, column: 17, scope: !4893)
!4974 = !DILocation(line: 210, column: 9, scope: !4893)
!4975 = !DILocalVariable(name: "filename", arg: 1, scope: !4976, file: !826, line: 30, type: !136)
!4976 = distinct !DISubprogram(name: "orig_fopen", scope: !826, file: !826, line: 30, type: !4834, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !825, retainedNodes: !4977)
!4977 = !{!4975, !4978}
!4978 = !DILocalVariable(name: "mode", arg: 2, scope: !4976, file: !826, line: 30, type: !136)
!4979 = !DILocation(line: 0, scope: !4976, inlinedAt: !4980)
!4980 = distinct !DILocation(line: 219, column: 10, scope: !4833)
!4981 = !DILocation(line: 32, column: 10, scope: !4976, inlinedAt: !4980)
!4982 = !DILocation(line: 219, column: 3, scope: !4833)
!4983 = !DILocation(line: 220, column: 1, scope: !4833)
!4984 = !DISubprogram(name: "open", scope: !2265, file: !2265, line: 181, type: !4985, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!4985 = !DISubroutineType(types: !4986)
!4986 = !{!87, !136, !87, null}
!4987 = !DISubprogram(name: "fdopen", scope: !924, file: !924, line: 293, type: !4988, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!4988 = !DISubroutineType(types: !4989)
!4989 = !{!4836, !87, !136}
!4990 = !DISubprogram(name: "close", scope: !2130, file: !2130, line: 358, type: !1252, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!4991 = !DISubprogram(name: "fopen", scope: !924, file: !924, line: 258, type: !4992, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!4992 = !DISubroutineType(types: !4993)
!4993 = !{!4836, !919, !919}
!4994 = distinct !DISubprogram(name: "close_stream", scope: !828, file: !828, line: 55, type: !4995, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !5031)
!4995 = !DISubroutineType(types: !4996)
!4996 = !{!87, !4997}
!4997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4998, size: 64)
!4998 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !211, line: 7, baseType: !4999)
!4999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !213, line: 49, size: 1728, elements: !5000)
!5000 = !{!5001, !5002, !5003, !5004, !5005, !5006, !5007, !5008, !5009, !5010, !5011, !5012, !5013, !5014, !5016, !5017, !5018, !5019, !5020, !5021, !5022, !5023, !5024, !5025, !5026, !5027, !5028, !5029, !5030}
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4999, file: !213, line: 51, baseType: !87, size: 32)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4999, file: !213, line: 54, baseType: !130, size: 64, offset: 64)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4999, file: !213, line: 55, baseType: !130, size: 64, offset: 128)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4999, file: !213, line: 56, baseType: !130, size: 64, offset: 192)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4999, file: !213, line: 57, baseType: !130, size: 64, offset: 256)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4999, file: !213, line: 58, baseType: !130, size: 64, offset: 320)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4999, file: !213, line: 59, baseType: !130, size: 64, offset: 384)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4999, file: !213, line: 60, baseType: !130, size: 64, offset: 448)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4999, file: !213, line: 61, baseType: !130, size: 64, offset: 512)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4999, file: !213, line: 64, baseType: !130, size: 64, offset: 576)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4999, file: !213, line: 65, baseType: !130, size: 64, offset: 640)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4999, file: !213, line: 66, baseType: !130, size: 64, offset: 704)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4999, file: !213, line: 68, baseType: !228, size: 64, offset: 768)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4999, file: !213, line: 70, baseType: !5015, size: 64, offset: 832)
!5015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4999, size: 64)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4999, file: !213, line: 72, baseType: !87, size: 32, offset: 896)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4999, file: !213, line: 73, baseType: !87, size: 32, offset: 928)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4999, file: !213, line: 74, baseType: !235, size: 64, offset: 960)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4999, file: !213, line: 77, baseType: !132, size: 16, offset: 1024)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4999, file: !213, line: 78, baseType: !240, size: 8, offset: 1040)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4999, file: !213, line: 79, baseType: !54, size: 8, offset: 1048)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4999, file: !213, line: 81, baseType: !243, size: 64, offset: 1088)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4999, file: !213, line: 89, baseType: !246, size: 64, offset: 1152)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4999, file: !213, line: 91, baseType: !248, size: 64, offset: 1216)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4999, file: !213, line: 92, baseType: !251, size: 64, offset: 1280)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4999, file: !213, line: 93, baseType: !5015, size: 64, offset: 1344)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4999, file: !213, line: 94, baseType: !131, size: 64, offset: 1408)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4999, file: !213, line: 95, baseType: !133, size: 64, offset: 1472)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4999, file: !213, line: 96, baseType: !87, size: 32, offset: 1536)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4999, file: !213, line: 98, baseType: !258, size: 160, offset: 1568)
!5031 = !{!5032, !5033, !5035, !5036}
!5032 = !DILocalVariable(name: "stream", arg: 1, scope: !4994, file: !828, line: 55, type: !4997)
!5033 = !DILocalVariable(name: "some_pending", scope: !4994, file: !828, line: 57, type: !5034)
!5034 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !196)
!5035 = !DILocalVariable(name: "prev_fail", scope: !4994, file: !828, line: 58, type: !5034)
!5036 = !DILocalVariable(name: "fclose_fail", scope: !4994, file: !828, line: 59, type: !5034)
!5037 = !DILocation(line: 0, scope: !4994)
!5038 = !DILocation(line: 57, column: 30, scope: !4994)
!5039 = !DILocalVariable(name: "__stream", arg: 1, scope: !5040, file: !1283, line: 135, type: !4997)
!5040 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1283, file: !1283, line: 135, type: !4995, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !5041)
!5041 = !{!5039}
!5042 = !DILocation(line: 0, scope: !5040, inlinedAt: !5043)
!5043 = distinct !DILocation(line: 58, column: 27, scope: !4994)
!5044 = !DILocation(line: 137, column: 10, scope: !5040, inlinedAt: !5043)
!5045 = !DILocation(line: 58, column: 43, scope: !4994)
!5046 = !DILocation(line: 59, column: 29, scope: !4994)
!5047 = !DILocation(line: 59, column: 45, scope: !4994)
!5048 = !DILocation(line: 69, column: 17, scope: !5049)
!5049 = distinct !DILexicalBlock(scope: !4994, file: !828, line: 69, column: 7)
!5050 = !DILocation(line: 57, column: 50, scope: !4994)
!5051 = !DILocation(line: 69, column: 33, scope: !5049)
!5052 = !DILocation(line: 69, column: 53, scope: !5049)
!5053 = !DILocation(line: 69, column: 59, scope: !5049)
!5054 = !DILocation(line: 69, column: 7, scope: !4994)
!5055 = !DILocation(line: 71, column: 11, scope: !5056)
!5056 = distinct !DILexicalBlock(scope: !5049, file: !828, line: 70, column: 5)
!5057 = !DILocation(line: 72, column: 9, scope: !5058)
!5058 = distinct !DILexicalBlock(scope: !5056, file: !828, line: 71, column: 11)
!5059 = !DILocation(line: 72, column: 15, scope: !5058)
!5060 = !DILocation(line: 77, column: 1, scope: !4994)
!5061 = !DISubprogram(name: "__fpending", scope: !2473, file: !2473, line: 75, type: !5062, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!5062 = !DISubroutineType(types: !5063)
!5063 = !{!133, !4997}
!5064 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !743, file: !743, line: 100, type: !5065, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !5068)
!5065 = !DISubroutineType(types: !5066)
!5066 = !{!133, !2738, !136, !133, !5067}
!5067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!5068 = !{!5069, !5070, !5071, !5072, !5073}
!5069 = !DILocalVariable(name: "pwc", arg: 1, scope: !5064, file: !743, line: 100, type: !2738)
!5070 = !DILocalVariable(name: "s", arg: 2, scope: !5064, file: !743, line: 100, type: !136)
!5071 = !DILocalVariable(name: "n", arg: 3, scope: !5064, file: !743, line: 100, type: !133)
!5072 = !DILocalVariable(name: "ps", arg: 4, scope: !5064, file: !743, line: 100, type: !5067)
!5073 = !DILocalVariable(name: "ret", scope: !5064, file: !743, line: 130, type: !133)
!5074 = !DILocation(line: 0, scope: !5064)
!5075 = !DILocation(line: 105, column: 9, scope: !5076)
!5076 = distinct !DILexicalBlock(scope: !5064, file: !743, line: 105, column: 7)
!5077 = !DILocation(line: 105, column: 7, scope: !5064)
!5078 = !DILocation(line: 117, column: 10, scope: !5079)
!5079 = distinct !DILexicalBlock(scope: !5064, file: !743, line: 117, column: 7)
!5080 = !DILocation(line: 117, column: 7, scope: !5064)
!5081 = !DILocation(line: 130, column: 16, scope: !5064)
!5082 = !DILocation(line: 135, column: 11, scope: !5083)
!5083 = distinct !DILexicalBlock(scope: !5064, file: !743, line: 135, column: 7)
!5084 = !DILocation(line: 135, column: 25, scope: !5083)
!5085 = !DILocation(line: 135, column: 30, scope: !5083)
!5086 = !DILocation(line: 135, column: 7, scope: !5064)
!5087 = !DILocalVariable(name: "ps", arg: 1, scope: !5088, file: !2712, line: 1135, type: !5067)
!5088 = distinct !DISubprogram(name: "mbszero", scope: !2712, file: !2712, line: 1135, type: !5089, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !5091)
!5089 = !DISubroutineType(types: !5090)
!5090 = !{null, !5067}
!5091 = !{!5087}
!5092 = !DILocation(line: 0, scope: !5088, inlinedAt: !5093)
!5093 = distinct !DILocation(line: 137, column: 5, scope: !5083)
!5094 = !DILocalVariable(name: "__dest", arg: 1, scope: !5095, file: !1266, line: 57, type: !131)
!5095 = distinct !DISubprogram(name: "memset", scope: !1266, file: !1266, line: 57, type: !2721, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !5096)
!5096 = !{!5094, !5097, !5098}
!5097 = !DILocalVariable(name: "__ch", arg: 2, scope: !5095, file: !1266, line: 57, type: !87)
!5098 = !DILocalVariable(name: "__len", arg: 3, scope: !5095, file: !1266, line: 57, type: !133)
!5099 = !DILocation(line: 0, scope: !5095, inlinedAt: !5100)
!5100 = distinct !DILocation(line: 1137, column: 3, scope: !5088, inlinedAt: !5093)
!5101 = !DILocation(line: 59, column: 10, scope: !5095, inlinedAt: !5100)
!5102 = !DILocation(line: 137, column: 5, scope: !5083)
!5103 = !DILocation(line: 138, column: 11, scope: !5104)
!5104 = distinct !DILexicalBlock(scope: !5064, file: !743, line: 138, column: 7)
!5105 = !DILocation(line: 138, column: 7, scope: !5064)
!5106 = !DILocation(line: 139, column: 5, scope: !5104)
!5107 = !DILocation(line: 143, column: 26, scope: !5108)
!5108 = distinct !DILexicalBlock(scope: !5064, file: !743, line: 143, column: 7)
!5109 = !DILocation(line: 143, column: 41, scope: !5108)
!5110 = !DILocation(line: 143, column: 7, scope: !5064)
!5111 = !DILocation(line: 145, column: 15, scope: !5112)
!5112 = distinct !DILexicalBlock(scope: !5113, file: !743, line: 145, column: 11)
!5113 = distinct !DILexicalBlock(scope: !5108, file: !743, line: 144, column: 5)
!5114 = !DILocation(line: 145, column: 11, scope: !5113)
!5115 = !DILocation(line: 146, column: 32, scope: !5112)
!5116 = !DILocation(line: 146, column: 16, scope: !5112)
!5117 = !DILocation(line: 146, column: 14, scope: !5112)
!5118 = !DILocation(line: 146, column: 9, scope: !5112)
!5119 = !DILocation(line: 286, column: 1, scope: !5064)
!5120 = !DISubprogram(name: "mbsinit", scope: !5121, file: !5121, line: 293, type: !5122, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!5121 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!5122 = !DISubroutineType(types: !5123)
!5123 = !{!87, !5124}
!5124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5125, size: 64)
!5125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !749)
!5126 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !830, file: !830, line: 27, type: !4206, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !829, retainedNodes: !5127)
!5127 = !{!5128, !5129, !5130, !5131}
!5128 = !DILocalVariable(name: "ptr", arg: 1, scope: !5126, file: !830, line: 27, type: !131)
!5129 = !DILocalVariable(name: "nmemb", arg: 2, scope: !5126, file: !830, line: 27, type: !133)
!5130 = !DILocalVariable(name: "size", arg: 3, scope: !5126, file: !830, line: 27, type: !133)
!5131 = !DILocalVariable(name: "nbytes", scope: !5126, file: !830, line: 29, type: !133)
!5132 = !DILocation(line: 0, scope: !5126)
!5133 = !DILocation(line: 30, column: 7, scope: !5134)
!5134 = distinct !DILexicalBlock(scope: !5126, file: !830, line: 30, column: 7)
!5135 = !DILocalVariable(name: "ptr", arg: 1, scope: !5136, file: !4292, line: 2057, type: !131)
!5136 = distinct !DISubprogram(name: "rpl_realloc", scope: !4292, file: !4292, line: 2057, type: !4284, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !829, retainedNodes: !5137)
!5137 = !{!5135, !5138}
!5138 = !DILocalVariable(name: "size", arg: 2, scope: !5136, file: !4292, line: 2057, type: !133)
!5139 = !DILocation(line: 0, scope: !5136, inlinedAt: !5140)
!5140 = distinct !DILocation(line: 37, column: 10, scope: !5126)
!5141 = !DILocation(line: 2059, column: 24, scope: !5136, inlinedAt: !5140)
!5142 = !DILocation(line: 2059, column: 10, scope: !5136, inlinedAt: !5140)
!5143 = !DILocation(line: 37, column: 3, scope: !5126)
!5144 = !DILocation(line: 32, column: 7, scope: !5145)
!5145 = distinct !DILexicalBlock(scope: !5134, file: !830, line: 31, column: 5)
!5146 = !DILocation(line: 32, column: 13, scope: !5145)
!5147 = !DILocation(line: 33, column: 7, scope: !5145)
!5148 = !DILocation(line: 38, column: 1, scope: !5126)
!5149 = distinct !DISubprogram(name: "hard_locale", scope: !761, file: !761, line: 28, type: !5150, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !832, retainedNodes: !5152)
!5150 = !DISubroutineType(types: !5151)
!5151 = !{!196, !87}
!5152 = !{!5153, !5154}
!5153 = !DILocalVariable(name: "category", arg: 1, scope: !5149, file: !761, line: 28, type: !87)
!5154 = !DILocalVariable(name: "locale", scope: !5149, file: !761, line: 30, type: !5155)
!5155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !5156)
!5156 = !{!5157}
!5157 = !DISubrange(count: 257)
!5158 = !DILocation(line: 0, scope: !5149)
!5159 = !DILocation(line: 30, column: 3, scope: !5149)
!5160 = !DILocation(line: 30, column: 8, scope: !5149)
!5161 = !DILocation(line: 32, column: 7, scope: !5162)
!5162 = distinct !DILexicalBlock(scope: !5149, file: !761, line: 32, column: 7)
!5163 = !DILocation(line: 32, column: 7, scope: !5149)
!5164 = !DILocalVariable(name: "__s1", arg: 1, scope: !5165, file: !942, line: 1359, type: !136)
!5165 = distinct !DISubprogram(name: "streq", scope: !942, file: !942, line: 1359, type: !943, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !832, retainedNodes: !5166)
!5166 = !{!5164, !5167}
!5167 = !DILocalVariable(name: "__s2", arg: 2, scope: !5165, file: !942, line: 1359, type: !136)
!5168 = !DILocation(line: 0, scope: !5165, inlinedAt: !5169)
!5169 = distinct !DILocation(line: 35, column: 9, scope: !5170)
!5170 = distinct !DILexicalBlock(scope: !5149, file: !761, line: 35, column: 7)
!5171 = !DILocation(line: 1361, column: 11, scope: !5165, inlinedAt: !5169)
!5172 = !DILocation(line: 35, column: 29, scope: !5170)
!5173 = !DILocation(line: 0, scope: !5165, inlinedAt: !5174)
!5174 = distinct !DILocation(line: 35, column: 32, scope: !5170)
!5175 = !DILocation(line: 1361, column: 11, scope: !5165, inlinedAt: !5174)
!5176 = !DILocation(line: 1361, column: 10, scope: !5165, inlinedAt: !5174)
!5177 = !DILocation(line: 35, column: 7, scope: !5149)
!5178 = !DILocation(line: 46, column: 3, scope: !5149)
!5179 = !DILocation(line: 47, column: 1, scope: !5149)
!5180 = distinct !DISubprogram(name: "setlocale_null_r", scope: !837, file: !837, line: 154, type: !5181, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !836, retainedNodes: !5183)
!5181 = !DISubroutineType(types: !5182)
!5182 = !{!87, !87, !130, !133}
!5183 = !{!5184, !5185, !5186}
!5184 = !DILocalVariable(name: "category", arg: 1, scope: !5180, file: !837, line: 154, type: !87)
!5185 = !DILocalVariable(name: "buf", arg: 2, scope: !5180, file: !837, line: 154, type: !130)
!5186 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5180, file: !837, line: 154, type: !133)
!5187 = !DILocation(line: 0, scope: !5180)
!5188 = !DILocation(line: 159, column: 10, scope: !5180)
!5189 = !DILocation(line: 159, column: 3, scope: !5180)
!5190 = distinct !DISubprogram(name: "setlocale_null", scope: !837, file: !837, line: 186, type: !5191, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !836, retainedNodes: !5193)
!5191 = !DISubroutineType(types: !5192)
!5192 = !{!136, !87}
!5193 = !{!5194}
!5194 = !DILocalVariable(name: "category", arg: 1, scope: !5190, file: !837, line: 186, type: !87)
!5195 = !DILocation(line: 0, scope: !5190)
!5196 = !DILocation(line: 189, column: 10, scope: !5190)
!5197 = !DILocation(line: 189, column: 3, scope: !5190)
!5198 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !839, file: !839, line: 35, type: !5191, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !838, retainedNodes: !5199)
!5199 = !{!5200, !5201}
!5200 = !DILocalVariable(name: "category", arg: 1, scope: !5198, file: !839, line: 35, type: !87)
!5201 = !DILocalVariable(name: "result", scope: !5198, file: !839, line: 37, type: !136)
!5202 = !DILocation(line: 0, scope: !5198)
!5203 = !DILocation(line: 37, column: 24, scope: !5198)
!5204 = !DILocation(line: 62, column: 3, scope: !5198)
!5205 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !839, file: !839, line: 66, type: !5181, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !838, retainedNodes: !5206)
!5206 = !{!5207, !5208, !5209, !5210, !5211}
!5207 = !DILocalVariable(name: "category", arg: 1, scope: !5205, file: !839, line: 66, type: !87)
!5208 = !DILocalVariable(name: "buf", arg: 2, scope: !5205, file: !839, line: 66, type: !130)
!5209 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5205, file: !839, line: 66, type: !133)
!5210 = !DILocalVariable(name: "result", scope: !5205, file: !839, line: 111, type: !136)
!5211 = !DILocalVariable(name: "length", scope: !5212, file: !839, line: 125, type: !133)
!5212 = distinct !DILexicalBlock(scope: !5213, file: !839, line: 124, column: 5)
!5213 = distinct !DILexicalBlock(scope: !5205, file: !839, line: 113, column: 7)
!5214 = !DILocation(line: 0, scope: !5205)
!5215 = !DILocation(line: 0, scope: !5198, inlinedAt: !5216)
!5216 = distinct !DILocation(line: 111, column: 24, scope: !5205)
!5217 = !DILocation(line: 37, column: 24, scope: !5198, inlinedAt: !5216)
!5218 = !DILocation(line: 113, column: 14, scope: !5213)
!5219 = !DILocation(line: 113, column: 7, scope: !5205)
!5220 = !DILocation(line: 116, column: 19, scope: !5221)
!5221 = distinct !DILexicalBlock(scope: !5222, file: !839, line: 116, column: 11)
!5222 = distinct !DILexicalBlock(scope: !5213, file: !839, line: 114, column: 5)
!5223 = !DILocation(line: 116, column: 11, scope: !5222)
!5224 = !DILocation(line: 120, column: 16, scope: !5221)
!5225 = !DILocation(line: 120, column: 9, scope: !5221)
!5226 = !DILocation(line: 125, column: 23, scope: !5212)
!5227 = !DILocation(line: 0, scope: !5212)
!5228 = !DILocation(line: 126, column: 18, scope: !5229)
!5229 = distinct !DILexicalBlock(scope: !5212, file: !839, line: 126, column: 11)
!5230 = !DILocation(line: 126, column: 11, scope: !5212)
!5231 = !DILocation(line: 128, column: 39, scope: !5232)
!5232 = distinct !DILexicalBlock(scope: !5229, file: !839, line: 127, column: 9)
!5233 = !DILocalVariable(name: "__dest", arg: 1, scope: !5234, file: !1266, line: 26, type: !4561)
!5234 = distinct !DISubprogram(name: "memcpy", scope: !1266, file: !1266, line: 26, type: !4559, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !838, retainedNodes: !5235)
!5235 = !{!5233, !5236, !5237}
!5236 = !DILocalVariable(name: "__src", arg: 2, scope: !5234, file: !1266, line: 26, type: !1077)
!5237 = !DILocalVariable(name: "__len", arg: 3, scope: !5234, file: !1266, line: 26, type: !133)
!5238 = !DILocation(line: 0, scope: !5234, inlinedAt: !5239)
!5239 = distinct !DILocation(line: 128, column: 11, scope: !5232)
!5240 = !DILocation(line: 29, column: 10, scope: !5234, inlinedAt: !5239)
!5241 = !DILocation(line: 129, column: 11, scope: !5232)
!5242 = !DILocation(line: 133, column: 23, scope: !5243)
!5243 = distinct !DILexicalBlock(scope: !5244, file: !839, line: 133, column: 15)
!5244 = distinct !DILexicalBlock(scope: !5229, file: !839, line: 132, column: 9)
!5245 = !DILocation(line: 133, column: 15, scope: !5244)
!5246 = !DILocation(line: 138, column: 44, scope: !5247)
!5247 = distinct !DILexicalBlock(scope: !5243, file: !839, line: 134, column: 13)
!5248 = !DILocation(line: 0, scope: !5234, inlinedAt: !5249)
!5249 = distinct !DILocation(line: 138, column: 15, scope: !5247)
!5250 = !DILocation(line: 29, column: 10, scope: !5234, inlinedAt: !5249)
!5251 = !DILocation(line: 139, column: 15, scope: !5247)
!5252 = !DILocation(line: 139, column: 32, scope: !5247)
!5253 = !DILocation(line: 140, column: 13, scope: !5247)
!5254 = !DILocation(line: 0, scope: !5213)
!5255 = !DILocation(line: 145, column: 1, scope: !5205)
