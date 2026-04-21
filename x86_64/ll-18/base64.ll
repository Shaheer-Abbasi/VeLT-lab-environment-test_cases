; ModuleID = 'src/base64.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
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
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !493
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !464
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !483
@.str.1.57 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !485
@.str.2.59 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !487
@.str.3.58 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !489
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !491
@.str.4.52 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !495
@.str.5.53 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !497
@.str.6.54 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !502
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !507
@.str.78 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !512
@.str.1.79 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !514
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !516
@.str.82 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !547
@.str.1.83 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !550
@.str.2.84 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !552
@.str.3.85 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !554
@.str.4.86 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !556
@.str.5.87 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !558
@.str.6.88 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !560
@.str.7.89 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !562
@.str.8.90 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !564
@.str.9.91 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !566
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.82, ptr @.str.1.83, ptr @.str.2.84, ptr @.str.3.85, ptr @.str.4.86, ptr @.str.5.87, ptr @.str.6.88, ptr @.str.7.89, ptr @.str.8.90, ptr @.str.9.91, ptr null], align 16, !dbg !568
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
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !852 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !856, metadata !DIExpression()), !dbg !857
  %2 = icmp eq i32 %0, 0, !dbg !858
  br i1 %2, label %8, label %3, !dbg !860

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !861, !tbaa !863
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #44, !dbg !861
  %6 = load ptr, ptr @program_name, align 8, !dbg !861, !tbaa !863
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #44, !dbg !861
  br label %41, !dbg !861

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #44, !dbg !867
  %10 = load ptr, ptr @program_name, align 8, !dbg !867, !tbaa !863
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #44, !dbg !867
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #44, !dbg !869
  %13 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %12, i32 noundef 64) #44, !dbg !869
  %14 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.22, i32 noundef 5) #44, !dbg !870
  %15 = load ptr, ptr @stdout, align 8, !dbg !870, !tbaa !863
  %16 = tail call i32 @fputs_unlocked(ptr noundef %14, ptr noundef %15), !dbg !870
  %17 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.23, i32 noundef 5) #44, !dbg !873
  %18 = load ptr, ptr @stdout, align 8, !dbg !873, !tbaa !863
  %19 = tail call i32 @fputs_unlocked(ptr noundef %17, ptr noundef %18), !dbg !873
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #44, !dbg !876
  tail call fastcc void @oputs_(ptr noundef %20), !dbg !876
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #44, !dbg !877
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !877
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #44, !dbg !878
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !878
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #44, !dbg !879
  tail call fastcc void @oputs_(ptr noundef %23), !dbg !879
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #44, !dbg !880
  tail call fastcc void @oputs_(ptr noundef %24), !dbg !880
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #44, !dbg !881
  %26 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %25, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3) #44, !dbg !881
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !882, metadata !DIExpression()), !dbg !899
  call void @llvm.dbg.value(metadata !901, metadata !895, metadata !DIExpression()), !dbg !899
  call void @llvm.dbg.value(metadata ptr poison, metadata !894, metadata !DIExpression()), !dbg !899
  tail call void @emit_bug_reporting_address() #44, !dbg !902
  %27 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #44, !dbg !903
  call void @llvm.dbg.value(metadata ptr %27, metadata !897, metadata !DIExpression()), !dbg !899
  %28 = icmp eq ptr %27, null, !dbg !904
  br i1 %28, label %36, label %29, !dbg !906

29:                                               ; preds = %8
  %30 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %27, ptr noundef nonnull dereferenceable(4) @.str.54, i64 noundef 3) #45, !dbg !907
  %31 = icmp eq i32 %30, 0, !dbg !907
  br i1 %31, label %36, label %32, !dbg !908

32:                                               ; preds = %29
  %33 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.55, i32 noundef 5) #44, !dbg !909
  %34 = load ptr, ptr @stdout, align 8, !dbg !909, !tbaa !863
  %35 = tail call i32 @fputs_unlocked(ptr noundef %33, ptr noundef %34), !dbg !909
  br label %36, !dbg !911

36:                                               ; preds = %8, %29, %32
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !894, metadata !DIExpression()), !dbg !899
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !898, metadata !DIExpression()), !dbg !899
  %37 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.56, i32 noundef 5) #44, !dbg !912
  %38 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %37, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.3) #44, !dbg !912
  %39 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.57, i32 noundef 5) #44, !dbg !913
  %40 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %39, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.58) #44, !dbg !913
  br label %41

41:                                               ; preds = %36, %3
  tail call void @exit(i32 noundef %0) #46, !dbg !914
  unreachable, !dbg !914
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !915 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !919 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !925 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !928 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !186 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !190, metadata !DIExpression()), !dbg !932
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !191, metadata !DIExpression()), !dbg !932
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !933, !tbaa !934
  %3 = icmp eq i32 %2, -1, !dbg !936
  br i1 %3, label %4, label %16, !dbg !937

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.24) #44, !dbg !938
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !192, metadata !DIExpression()), !dbg !939
  %6 = icmp eq ptr %5, null, !dbg !940
  br i1 %6, label %14, label %7, !dbg !941

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !942, !tbaa !943
  %9 = icmp eq i8 %8, 0, !dbg !942
  br i1 %9, label %14, label %10, !dbg !944

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !945, metadata !DIExpression()), !dbg !952
  call void @llvm.dbg.value(metadata ptr @.str.25, metadata !951, metadata !DIExpression()), !dbg !952
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.25) #45, !dbg !954
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
  %20 = load ptr, ptr @stdout, align 8, !dbg !961, !tbaa !863
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !961
  br label %124, !dbg !963

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !195, metadata !DIExpression()), !dbg !932
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.26) #45, !dbg !964
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !965
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !197, metadata !DIExpression()), !dbg !932
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #45, !dbg !966
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !198, metadata !DIExpression()), !dbg !932
  %26 = icmp eq ptr %25, null, !dbg !967
  br i1 %26, label %54, label %27, !dbg !968

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !969
  br i1 %28, label %54, label %29, !dbg !970

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !199, metadata !DIExpression()), !dbg !971
  tail call void @llvm.dbg.value(metadata i64 0, metadata !203, metadata !DIExpression()), !dbg !971
  %30 = icmp ult ptr %24, %25, !dbg !972
  br i1 %30, label %31, label %54, !dbg !973

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #47, !dbg !932
  %33 = load ptr, ptr %32, align 8, !tbaa !863
  br label %34, !dbg !973

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !199, metadata !DIExpression()), !dbg !971
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !203, metadata !DIExpression()), !dbg !971
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !974
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !199, metadata !DIExpression()), !dbg !971
  %38 = load i8, ptr %35, align 1, !dbg !974, !tbaa !943
  %39 = sext i8 %38 to i64, !dbg !974
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !974
  %41 = load i16, ptr %40, align 2, !dbg !974, !tbaa !975
  %42 = freeze i16 %41, !dbg !977
  %43 = lshr i16 %42, 13, !dbg !977
  %44 = and i16 %43, 1, !dbg !977
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !978
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !203, metadata !DIExpression()), !dbg !971
  %47 = icmp ult ptr %37, %25, !dbg !972
  %48 = icmp ult i64 %46, 2, !dbg !979
  %49 = select i1 %47, i1 %48, i1 false, !dbg !979
  br i1 %49, label %34, label %50, !dbg !973, !llvm.loop !980

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !982
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !984
  %53 = zext i1 %51 to i8, !dbg !984
  br label %54, !dbg !984

54:                                               ; preds = %29, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !932
  %56 = phi i8 [ 1, %27 ], [ 0, %22 ], [ 1, %29 ], [ %53, %50 ], !dbg !932
  tail call void @llvm.dbg.value(metadata i8 %56, metadata !195, metadata !DIExpression()), !dbg !932
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !198, metadata !DIExpression()), !dbg !932
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.27) #45, !dbg !985
  tail call void @llvm.dbg.value(metadata i64 %57, metadata !204, metadata !DIExpression()), !dbg !932
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !986
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !205, metadata !DIExpression()), !dbg !932
  br label %59, !dbg !987

59:                                               ; preds = %92, %54
  %60 = phi ptr [ %58, %54 ], [ %93, %92 ], !dbg !932
  %61 = phi i8 [ %56, %54 ], [ %69, %92 ], !dbg !932
  tail call void @llvm.dbg.value(metadata i8 %61, metadata !195, metadata !DIExpression()), !dbg !932
  tail call void @llvm.dbg.value(metadata ptr %60, metadata !205, metadata !DIExpression()), !dbg !932
  %62 = load i8, ptr %60, align 1, !dbg !988, !tbaa !943
  switch i8 %62, label %68 [
    i8 0, label %94
    i8 10, label %94
    i8 45, label %63
  ], !dbg !989

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !990
  %65 = load i8, ptr %64, align 1, !dbg !993, !tbaa !943
  %66 = icmp eq i8 %65, 45, !dbg !994
  %67 = select i1 %66, i8 0, i8 %61, !dbg !995
  br label %68, !dbg !995

68:                                               ; preds = %63, %59
  %69 = phi i8 [ %61, %59 ], [ %67, %63 ], !dbg !932
  tail call void @llvm.dbg.value(metadata i8 %69, metadata !195, metadata !DIExpression()), !dbg !932
  %70 = tail call ptr @__ctype_b_loc() #47, !dbg !996
  %71 = load ptr, ptr %70, align 8, !dbg !996, !tbaa !863
  %72 = sext i8 %62 to i64, !dbg !996
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !996
  %74 = load i16, ptr %73, align 2, !dbg !996, !tbaa !975
  %75 = and i16 %74, 8192, !dbg !996
  %76 = icmp eq i16 %75, 0, !dbg !996
  br i1 %76, label %92, label %77, !dbg !998

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !999
  br i1 %78, label %94, label %79, !dbg !1002

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1003
  %81 = load i8, ptr %80, align 1, !dbg !1003, !tbaa !943
  %82 = sext i8 %81 to i64, !dbg !1003
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !1003
  %84 = load i16, ptr %83, align 2, !dbg !1003, !tbaa !975
  %85 = and i16 %84, 8192, !dbg !1003
  %86 = icmp eq i16 %85, 0, !dbg !1003
  br i1 %86, label %87, label %94, !dbg !1004

87:                                               ; preds = %79
  %88 = and i8 %69, 1, !dbg !1005
  %89 = icmp ne i8 %88, 0, !dbg !1005
  %90 = icmp eq i8 %81, 45
  %91 = or i1 %89, %90, !dbg !1007
  br i1 %91, label %92, label %94, !dbg !1007

92:                                               ; preds = %87, %68
  %93 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1008
  tail call void @llvm.dbg.value(metadata ptr %93, metadata !205, metadata !DIExpression()), !dbg !932
  br label %59, !dbg !987, !llvm.loop !1009

94:                                               ; preds = %87, %59, %59, %77, %79
  %95 = ptrtoint ptr %24 to i64, !dbg !1011
  %96 = load ptr, ptr @stdout, align 8, !dbg !1011, !tbaa !863
  %97 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %96), !dbg !1011
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !945, metadata !DIExpression()), !dbg !1012
  call void @llvm.dbg.value(metadata !901, metadata !951, metadata !DIExpression()), !dbg !1012
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !945, metadata !DIExpression()), !dbg !1014
  call void @llvm.dbg.value(metadata !901, metadata !951, metadata !DIExpression()), !dbg !1014
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !945, metadata !DIExpression()), !dbg !1016
  call void @llvm.dbg.value(metadata !901, metadata !951, metadata !DIExpression()), !dbg !1016
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !945, metadata !DIExpression()), !dbg !1018
  call void @llvm.dbg.value(metadata !901, metadata !951, metadata !DIExpression()), !dbg !1018
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !945, metadata !DIExpression()), !dbg !1020
  call void @llvm.dbg.value(metadata !901, metadata !951, metadata !DIExpression()), !dbg !1020
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !945, metadata !DIExpression()), !dbg !1022
  call void @llvm.dbg.value(metadata !901, metadata !951, metadata !DIExpression()), !dbg !1022
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !945, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata !901, metadata !951, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !945, metadata !DIExpression()), !dbg !1026
  call void @llvm.dbg.value(metadata !901, metadata !951, metadata !DIExpression()), !dbg !1026
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !945, metadata !DIExpression()), !dbg !1028
  call void @llvm.dbg.value(metadata !901, metadata !951, metadata !DIExpression()), !dbg !1028
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !945, metadata !DIExpression()), !dbg !1030
  call void @llvm.dbg.value(metadata !901, metadata !951, metadata !DIExpression()), !dbg !1030
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !262, metadata !DIExpression()), !dbg !932
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.41, i64 noundef 6) #45, !dbg !1032
  %99 = icmp eq i32 %98, 0, !dbg !1032
  br i1 %99, label %103, label %100, !dbg !1034

100:                                              ; preds = %94
  %101 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.42, i64 noundef 9) #45, !dbg !1035
  %102 = icmp eq i32 %101, 0, !dbg !1035
  br i1 %102, label %103, label %106, !dbg !1036

103:                                              ; preds = %100, %94
  %104 = trunc i64 %57 to i32, !dbg !1037
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %104, ptr noundef %55) #44, !dbg !1037
  br label %109, !dbg !1039

106:                                              ; preds = %100
  %107 = trunc i64 %57 to i32, !dbg !1040
  %108 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.3, i32 noundef %107, ptr noundef %55) #44, !dbg !1040
  br label %109

109:                                              ; preds = %106, %103
  %110 = load ptr, ptr @stdout, align 8, !dbg !1042, !tbaa !863
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.47, ptr noundef %110), !dbg !1042
  %112 = load ptr, ptr @stdout, align 8, !dbg !1043, !tbaa !863
  %113 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.48, ptr noundef %112), !dbg !1043
  %114 = ptrtoint ptr %60 to i64, !dbg !1044
  %115 = sub i64 %114, %95, !dbg !1044
  %116 = load ptr, ptr @stdout, align 8, !dbg !1044, !tbaa !863
  %117 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %115, ptr noundef %116), !dbg !1044
  %118 = load ptr, ptr @stdout, align 8, !dbg !1045, !tbaa !863
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.49, ptr noundef %118), !dbg !1045
  %120 = load ptr, ptr @stdout, align 8, !dbg !1046, !tbaa !863
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.50, ptr noundef %120), !dbg !1046
  %122 = load ptr, ptr @stdout, align 8, !dbg !1047, !tbaa !863
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %122), !dbg !1047
  br label %124, !dbg !1048

124:                                              ; preds = %109, %19
  ret void, !dbg !1048
}

; Function Attrs: nounwind
declare !dbg !1049 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1053 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1057 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1059 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1062 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1065 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1068 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1071 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1077 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1078 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: noreturn nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 !dbg !1084 {
  %3 = alloca i64, align 8, !DIAssignID !1104
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1099, metadata !DIExpression(), metadata !1104, metadata ptr %3, metadata !DIExpression()), !dbg !1105
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1089, metadata !DIExpression()), !dbg !1106
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1090, metadata !DIExpression()), !dbg !1106
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1094, metadata !DIExpression()), !dbg !1106
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1095, metadata !DIExpression()), !dbg !1106
  tail call void @llvm.dbg.value(metadata i64 76, metadata !1096, metadata !DIExpression()), !dbg !1106
  %4 = load ptr, ptr %1, align 8, !dbg !1107, !tbaa !863
  tail call void @set_program_name(ptr noundef %4) #44, !dbg !1108
  %5 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.10) #44, !dbg !1109
  %6 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #44, !dbg !1110
  %7 = tail call ptr @textdomain(ptr noundef nonnull @.str.11) #44, !dbg !1111
  %8 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #44, !dbg !1112
  br label %9, !dbg !1113

9:                                                ; preds = %16, %2
  %10 = phi i1 [ true, %2 ], [ false, %16 ]
  %11 = phi i8 [ 0, %2 ], [ %14, %16 ]
  %12 = phi i64 [ 76, %2 ], [ %17, %16 ]
  br label %13, !dbg !1113

13:                                               ; preds = %9, %33
  %14 = phi i8 [ %11, %9 ], [ 1, %33 ]
  %15 = phi i64 [ %12, %9 ], [ %17, %33 ]
  br label %16, !dbg !1113

16:                                               ; preds = %13, %30
  %17 = phi i64 [ %32, %30 ], [ %15, %13 ], !dbg !1114
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !1096, metadata !DIExpression()), !dbg !1106
  tail call void @llvm.dbg.value(metadata i8 %14, metadata !1095, metadata !DIExpression()), !dbg !1106
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1094, metadata !DIExpression()), !dbg !1106
  %18 = call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.13, ptr noundef nonnull @long_options, ptr noundef null) #44, !dbg !1115
  tail call void @llvm.dbg.value(metadata i32 %18, metadata !1091, metadata !DIExpression()), !dbg !1106
  switch i32 %18, label %39 [
    i32 -1, label %40
    i32 100, label %9
    i32 119, label %19
    i32 105, label %33
    i32 -130, label %34
    i32 -131, label %35
  ], !dbg !1113, !llvm.loop !1116

19:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #44, !dbg !1118
  %20 = load ptr, ptr @optarg, align 8, !dbg !1119, !tbaa !863
  %21 = call i32 @xstrtoimax(ptr noundef %20, ptr noundef null, i32 noundef 10, ptr noundef nonnull %3, ptr noundef nonnull @.str.10) #44, !dbg !1120
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !1102, metadata !DIExpression()), !dbg !1105
  %22 = icmp ugt i32 %21, 1, !dbg !1121
  %23 = load i64, ptr %3, align 8
  %24 = icmp slt i64 %23, 0
  %25 = select i1 %22, i1 true, i1 %24, !dbg !1123
  br i1 %25, label %26, label %30, !dbg !1123

26:                                               ; preds = %19
  %27 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #44, !dbg !1124
  %28 = load ptr, ptr @optarg, align 8, !dbg !1124, !tbaa !863
  %29 = call ptr @quote(ptr noundef %28) #44, !dbg !1124
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef nonnull @.str.14, ptr noundef %27, ptr noundef %29) #44, !dbg !1124
  unreachable, !dbg !1124

30:                                               ; preds = %19
  %31 = icmp eq i32 %21, 1, !dbg !1125
  %32 = select i1 %31, i64 0, i64 %23, !dbg !1126
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !1096, metadata !DIExpression()), !dbg !1106
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #44, !dbg !1127
  br label %16, !dbg !1128, !llvm.loop !1116

33:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1095, metadata !DIExpression()), !dbg !1106
  br label %13, !dbg !1129, !llvm.loop !1116

34:                                               ; preds = %16
  call void @usage(i32 noundef 0) #48, !dbg !1130
  unreachable, !dbg !1130

35:                                               ; preds = %16
  %36 = load ptr, ptr @stdout, align 8, !dbg !1131, !tbaa !863
  %37 = load ptr, ptr @Version, align 8, !dbg !1131, !tbaa !863
  %38 = call ptr @proper_name_lite(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.17) #44, !dbg !1131
  call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %36, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.16, ptr noundef %37, ptr noundef %38, ptr noundef null) #44, !dbg !1131
  call void @exit(i32 noundef 0) #46, !dbg !1131
  unreachable, !dbg !1131

39:                                               ; preds = %16
  call void @usage(i32 noundef 1) #48, !dbg !1132
  unreachable, !dbg !1132

40:                                               ; preds = %16
  %41 = load i32, ptr @optind, align 4, !dbg !1133, !tbaa !934
  %42 = sub nsw i32 %0, %41, !dbg !1135
  %43 = icmp sgt i32 %42, 1, !dbg !1136
  br i1 %43, label %44, label %52, !dbg !1137

44:                                               ; preds = %40
  %45 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.18, i32 noundef 5) #44, !dbg !1138
  %46 = load i32, ptr @optind, align 4, !dbg !1138, !tbaa !934
  %47 = sext i32 %46 to i64, !dbg !1138
  %48 = getelementptr ptr, ptr %1, i64 %47, !dbg !1138
  %49 = getelementptr ptr, ptr %48, i64 1, !dbg !1138
  %50 = load ptr, ptr %49, align 8, !dbg !1138, !tbaa !863
  %51 = call ptr @quote(ptr noundef %50) #44, !dbg !1138
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %45, ptr noundef %51) #44, !dbg !1138
  call void @usage(i32 noundef 1) #48, !dbg !1140
  unreachable, !dbg !1140

52:                                               ; preds = %40
  %53 = icmp slt i32 %41, %0, !dbg !1141
  br i1 %53, label %54, label %58, !dbg !1143

54:                                               ; preds = %52
  %55 = sext i32 %41 to i64, !dbg !1144
  %56 = getelementptr inbounds ptr, ptr %1, i64 %55, !dbg !1144
  %57 = load ptr, ptr %56, align 8, !dbg !1144, !tbaa !863
  tail call void @llvm.dbg.value(metadata ptr %57, metadata !1093, metadata !DIExpression()), !dbg !1106
  br label %58, !dbg !1145

58:                                               ; preds = %52, %54
  %59 = phi ptr [ %57, %54 ], [ @.str.19, %52 ], !dbg !1146
  tail call void @llvm.dbg.value(metadata ptr %59, metadata !1093, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata ptr %59, metadata !945, metadata !DIExpression()), !dbg !1147
  call void @llvm.dbg.value(metadata ptr @.str.19, metadata !951, metadata !DIExpression()), !dbg !1147
  %60 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(2) @.str.19) #45, !dbg !1150
  %61 = icmp eq i32 %60, 0, !dbg !1151
  br i1 %61, label %62, label %64, !dbg !1152

62:                                               ; preds = %58
  %63 = load ptr, ptr @stdin, align 8, !dbg !1153, !tbaa !863
  tail call void @llvm.dbg.value(metadata ptr %63, metadata !1092, metadata !DIExpression()), !dbg !1106
  br label %71, !dbg !1155

64:                                               ; preds = %58
  %65 = call noalias ptr @rpl_fopen(ptr noundef %59, ptr noundef nonnull @.str.20) #44, !dbg !1156
  tail call void @llvm.dbg.value(metadata ptr %65, metadata !1092, metadata !DIExpression()), !dbg !1106
  %66 = icmp eq ptr %65, null, !dbg !1158
  br i1 %66, label %67, label %71, !dbg !1160

67:                                               ; preds = %64
  %68 = tail call ptr @__errno_location() #47, !dbg !1161
  %69 = load i32, ptr %68, align 4, !dbg !1161, !tbaa !934
  %70 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %59) #44, !dbg !1161
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %69, ptr noundef nonnull @.str.21, ptr noundef %70) #44, !dbg !1161
  unreachable, !dbg !1161

71:                                               ; preds = %64, %62
  %72 = phi ptr [ %63, %62 ], [ %65, %64 ], !dbg !1162
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !1092, metadata !DIExpression()), !dbg !1106
  call void @fadvise(ptr noundef %72, i32 noundef 2) #44, !dbg !1163
  %73 = load ptr, ptr @stdout, align 8, !dbg !1164, !tbaa !863
  br i1 %10, label %76, label %74, !dbg !1166

74:                                               ; preds = %71
  %75 = icmp ne i8 %14, 0, !dbg !1167
  call fastcc void @do_decode(ptr noundef %72, ptr noundef %59, ptr noundef %73, i1 noundef zeroext %75) #48, !dbg !1168
  unreachable, !dbg !1168

76:                                               ; preds = %71
  call fastcc void @do_encode(ptr noundef %72, ptr noundef %59, ptr noundef %73, i64 noundef %17) #48, !dbg !1169
  unreachable, !dbg !1169
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

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
  %5 = alloca [8 x i8], align 8, !DIAssignID !1219
  %6 = alloca i64, align 8, !DIAssignID !1220
  %7 = alloca %struct.base64_decode_context, align 4, !DIAssignID !1221
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1198, metadata !DIExpression(), metadata !1221, metadata ptr %7, metadata !DIExpression()), !dbg !1222
  %8 = alloca i64, align 8, !DIAssignID !1223
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1212, metadata !DIExpression(), metadata !1223, metadata ptr %8, metadata !DIExpression()), !dbg !1224
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1191, metadata !DIExpression()), !dbg !1222
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1192, metadata !DIExpression()), !dbg !1222
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1193, metadata !DIExpression()), !dbg !1222
  tail call void @llvm.dbg.value(metadata i1 %3, metadata !1194, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1222
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #44, !dbg !1225
  %9 = tail call noalias nonnull dereferenceable(4096) ptr @xmalloc(i64 noundef 4096) #49, !dbg !1226
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1195, metadata !DIExpression()), !dbg !1222
  %10 = tail call noalias nonnull dereferenceable(3072) ptr @xmalloc(i64 noundef 3072) #49, !dbg !1227
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !1196, metadata !DIExpression()), !dbg !1222
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1228, metadata !DIExpression()), !dbg !1234
  store i32 0, ptr %7, align 4, !dbg !1236, !tbaa !1237, !DIAssignID !1239
  call void @llvm.dbg.assign(metadata i32 0, metadata !1198, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !1239, metadata ptr %7, metadata !DIExpression()), !dbg !1222
  br label %11, !dbg !1240

11:                                               ; preds = %56, %4
  %12 = phi i64 [ 0, %4 ], [ %57, %56 ], !dbg !1241
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !1197, metadata !DIExpression()), !dbg !1222
  %13 = getelementptr inbounds i8, ptr %9, i64 %12, !dbg !1242
  %14 = sub nsw i64 4096, %12, !dbg !1242
  %15 = call i64 @fread_unlocked(ptr noundef nonnull %13, i64 noundef 1, i64 noundef %14, ptr noundef %0), !dbg !1242
  tail call void @llvm.dbg.value(metadata i64 %15, metadata !1206, metadata !DIExpression()), !dbg !1243
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1208, metadata !DIExpression()), !dbg !1244
  tail call void @llvm.dbg.value(metadata i64 %15, metadata !1206, metadata !DIExpression()), !dbg !1243
  %16 = icmp sgt i64 %15, 0
  %17 = and i1 %16, %3, !dbg !1245
  br i1 %17, label %18, label %41, !dbg !1245

18:                                               ; preds = %11, %35
  %19 = phi i64 [ %37, %35 ], [ 0, %11 ]
  %20 = phi i64 [ %36, %35 ], [ %15, %11 ]
  tail call void @llvm.dbg.value(metadata i64 %19, metadata !1208, metadata !DIExpression()), !dbg !1244
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !1206, metadata !DIExpression()), !dbg !1243
  %21 = getelementptr i8, ptr %13, i64 %19, !dbg !1246
  %22 = load i8, ptr %21, align 1, !dbg !1246, !tbaa !943
  tail call void @llvm.dbg.value(metadata i8 %22, metadata !1250, metadata !DIExpression()), !dbg !1255
  %23 = zext i8 %22 to i64, !dbg !1257
  %24 = getelementptr inbounds [256 x i8], ptr @base64_to_int, i64 0, i64 %23, !dbg !1258
  %25 = load i8, ptr %24, align 1, !dbg !1258, !tbaa !943
  %26 = icmp sgt i8 %25, -1, !dbg !1259
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1260, metadata !DIExpression()), !dbg !1266
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1265, metadata !DIExpression()), !dbg !1266
  %27 = icmp eq i8 %22, 61
  %28 = or i1 %27, %26, !dbg !1268
  br i1 %28, label %29, label %31, !dbg !1268

29:                                               ; preds = %18
  %30 = add nsw i64 %19, 1, !dbg !1269
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !1208, metadata !DIExpression()), !dbg !1244
  br label %35, !dbg !1270

31:                                               ; preds = %18
  %32 = getelementptr inbounds i8, ptr %21, i64 1, !dbg !1271
  %33 = add nsw i64 %20, -1, !dbg !1272
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !1206, metadata !DIExpression()), !dbg !1243
  %34 = sub nsw i64 %33, %19, !dbg !1273
  call void @llvm.dbg.value(metadata ptr %21, metadata !1274, metadata !DIExpression()), !dbg !1282
  call void @llvm.dbg.value(metadata ptr %32, metadata !1280, metadata !DIExpression()), !dbg !1282
  call void @llvm.dbg.value(metadata i64 %34, metadata !1281, metadata !DIExpression()), !dbg !1282
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %21, ptr noundef nonnull align 1 %32, i64 noundef %34, i1 noundef false) #44, !dbg !1284
  br label %35

35:                                               ; preds = %31, %29
  %36 = phi i64 [ %20, %29 ], [ %33, %31 ], !dbg !1243
  %37 = phi i64 [ %30, %29 ], [ %19, %31 ], !dbg !1244
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !1208, metadata !DIExpression()), !dbg !1244
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !1206, metadata !DIExpression()), !dbg !1243
  %38 = icmp sgt i64 %36, 0, !dbg !1285
  %39 = icmp slt i64 %37, %36, !dbg !1286
  %40 = select i1 %38, i1 %39, i1 false, !dbg !1286
  br i1 %40, label %18, label %41, !dbg !1287, !llvm.loop !1288

41:                                               ; preds = %35, %11
  %42 = phi i64 [ %15, %11 ], [ %36, %35 ], !dbg !1290
  tail call void @llvm.dbg.value(metadata i64 %42, metadata !1206, metadata !DIExpression()), !dbg !1243
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 %42, i64 %12), metadata !1197, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !1222
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1291, metadata !DIExpression()), !dbg !1297
  %43 = load i32, ptr %0, align 8, !dbg !1300, !tbaa !1301
  %44 = and i32 %43, 32, !dbg !1304
  %45 = icmp eq i32 %44, 0, !dbg !1304
  br i1 %45, label %50, label %46, !dbg !1305

46:                                               ; preds = %41
  %47 = tail call ptr @__errno_location() #47, !dbg !1306
  %48 = load i32, ptr %47, align 4, !dbg !1306, !tbaa !934
  %49 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.64, i32 noundef 5) #44, !dbg !1306
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %48, ptr noundef %49) #44, !dbg !1306
  unreachable, !dbg !1306

50:                                               ; preds = %41
  %51 = add nsw i64 %42, %12, !dbg !1307
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !1197, metadata !DIExpression()), !dbg !1222
  %52 = icmp slt i64 %51, 4096, !dbg !1308
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1309, metadata !DIExpression()), !dbg !1312
  %53 = and i32 %43, 16
  %54 = icmp eq i32 %53, 0
  %55 = and i1 %52, %54, !dbg !1314
  br i1 %55, label %56, label %58, !dbg !1314

56:                                               ; preds = %50, %149
  %57 = phi i64 [ %51, %50 ], [ 0, %149 ]
  br label %11, !dbg !1222, !llvm.loop !1315

58:                                               ; preds = %50
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !1197, metadata !DIExpression()), !dbg !1222
  %59 = icmp eq i64 %51, 0, !dbg !1317
  br i1 %59, label %63, label %60, !dbg !1318

60:                                               ; preds = %58
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #44, !dbg !1319
  store i64 3072, ptr %8, align 8, !dbg !1320, !tbaa !1321, !DIAssignID !1322
  call void @llvm.dbg.assign(metadata i64 3072, metadata !1212, metadata !DIExpression(), metadata !1322, metadata ptr %8, metadata !DIExpression()), !dbg !1224
  %61 = call zeroext i1 @base64_decode_ctx(ptr noundef nonnull %7, ptr noundef nonnull %9, i64 noundef %51, ptr noundef nonnull %10, ptr noundef nonnull %8) #44, !dbg !1323
  tail call void @llvm.dbg.value(metadata i1 %61, metadata !1204, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1241
  %62 = load i64, ptr %8, align 8, !dbg !1325
  br label %91, !dbg !1326

63:                                               ; preds = %58
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1309, metadata !DIExpression()), !dbg !1327
  %64 = load i32, ptr %0, align 8, !dbg !1329, !tbaa !1301
  %65 = and i32 %64, 16, !dbg !1318
  %66 = icmp eq i32 %65, 0, !dbg !1318
  br i1 %66, label %149, label %67, !dbg !1330

67:                                               ; preds = %63
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #44, !dbg !1319
  store i64 3072, ptr %8, align 8, !dbg !1320, !tbaa !1321, !DIAssignID !1322
  call void @llvm.dbg.assign(metadata i64 3072, metadata !1212, metadata !DIExpression(), metadata !1322, metadata ptr %8, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1331, metadata !DIExpression(), metadata !1219, metadata ptr %5, metadata !DIExpression()), !dbg !1346
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1344, metadata !DIExpression(), metadata !1220, metadata ptr %6, metadata !DIExpression()), !dbg !1346
  call void @llvm.dbg.value(metadata ptr %7, metadata !1339, metadata !DIExpression()), !dbg !1346
  call void @llvm.dbg.value(metadata ptr undef, metadata !1340, metadata !DIExpression()), !dbg !1346
  call void @llvm.dbg.value(metadata ptr %8, metadata !1341, metadata !DIExpression()), !dbg !1346
  call void @llvm.dbg.value(metadata ptr %7, metadata !1348, metadata !DIExpression()), !dbg !1353
  %68 = load i32, ptr %7, align 4, !dbg !1356, !tbaa !1237
  %69 = icmp eq i32 %68, 0, !dbg !1357
  br i1 %69, label %90, label %70, !dbg !1358

70:                                               ; preds = %67
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #44, !dbg !1359
  store i64 4412750543122677053, ptr %5, align 8, !dbg !1360, !DIAssignID !1361
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1331, metadata !DIExpression(), metadata !1361, metadata ptr %5, metadata !DIExpression()), !dbg !1346
  call void @llvm.dbg.value(metadata ptr %7, metadata !1348, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.value(metadata i32 %68, metadata !1342, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !1346
  call void @llvm.dbg.value(metadata i32 %68, metadata !1260, metadata !DIExpression()), !dbg !1364
  %71 = srem i32 %68, 4, !dbg !1366
  call void @llvm.dbg.value(metadata i32 %71, metadata !1265, metadata !DIExpression()), !dbg !1364
  %72 = icmp eq i32 %71, 0, !dbg !1367
  %73 = sub nsw i32 4, %71, !dbg !1367
  %74 = select i1 %72, i32 0, i32 %73, !dbg !1367
  %75 = zext nneg i32 %74 to i64
  call void @llvm.dbg.value(metadata i64 %75, metadata !1343, metadata !DIExpression()), !dbg !1346
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #44, !dbg !1368
  store i64 3072, ptr %6, align 8, !dbg !1369, !tbaa !1321, !DIAssignID !1370
  call void @llvm.dbg.assign(metadata i64 3072, metadata !1344, metadata !DIExpression(), metadata !1370, metadata ptr %6, metadata !DIExpression()), !dbg !1346
  %76 = icmp eq i32 %74, 0, !dbg !1371
  br i1 %76, label %85, label %77, !dbg !1373

77:                                               ; preds = %70
  call void @llvm.dbg.value(metadata ptr %7, metadata !1374, metadata !DIExpression()), !dbg !1379
  %78 = add nsw i32 %68, -1, !dbg !1381
  %79 = sext i32 %78 to i64, !dbg !1382
  %80 = getelementptr inbounds %struct.base64_decode_context, ptr %7, i64 0, i32 1, i64 %79, !dbg !1382
  %81 = load i8, ptr %80, align 1, !dbg !1382, !tbaa !943
  %82 = icmp eq i8 %81, 61, !dbg !1383
  br i1 %82, label %85, label %83, !dbg !1384

83:                                               ; preds = %77
  %84 = call zeroext i1 @base64_decode_ctx(ptr noundef nonnull %7, ptr noundef nonnull %5, i64 noundef %75, ptr noundef nonnull %10, ptr noundef nonnull %6) #44, !dbg !1385
  call void @llvm.dbg.value(metadata i1 %84, metadata !1345, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1346
  br label %87, !dbg !1387

85:                                               ; preds = %77, %70
  %86 = call zeroext i1 @base64_decode_ctx(ptr noundef nonnull %7, ptr noundef nonnull @.str.10, i64 noundef 0, ptr noundef nonnull %10, ptr noundef nonnull %6) #44, !dbg !1388
  call void @llvm.dbg.value(metadata i1 %86, metadata !1345, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1346
  br label %87

87:                                               ; preds = %85, %83
  %88 = phi i1 [ %86, %85 ], [ %84, %83 ]
  call void @llvm.dbg.value(metadata i1 %88, metadata !1345, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1346
  %89 = load i64, ptr %6, align 8, !dbg !1390, !tbaa !1321
  store i64 %89, ptr %8, align 8, !dbg !1391, !tbaa !1321, !DIAssignID !1392
  call void @llvm.dbg.assign(metadata i64 %89, metadata !1212, metadata !DIExpression(), metadata !1392, metadata ptr %8, metadata !DIExpression()), !dbg !1224
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #44, !dbg !1393
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #44, !dbg !1393
  br label %91

90:                                               ; preds = %67
  store i64 0, ptr %8, align 8, !dbg !1394, !tbaa !1321, !DIAssignID !1396
  call void @llvm.dbg.assign(metadata i64 0, metadata !1212, metadata !DIExpression(), metadata !1396, metadata ptr %8, metadata !DIExpression()), !dbg !1224
  br label %91, !dbg !1397

91:                                               ; preds = %90, %87, %60
  %92 = phi i64 [ %62, %60 ], [ 0, %90 ], [ %89, %87 ], !dbg !1325
  %93 = phi i1 [ %61, %60 ], [ true, %90 ], [ %88, %87 ]
  tail call void @llvm.dbg.value(metadata i1 %93, metadata !1204, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1241
  %94 = call i64 @fwrite_unlocked(ptr noundef nonnull %10, i64 noundef 1, i64 noundef %92, ptr noundef %2), !dbg !1325
  %95 = load i64, ptr %8, align 8, !dbg !1398, !tbaa !1321
  %96 = icmp ult i64 %94, %95, !dbg !1399
  br i1 %96, label %133, label %97, !dbg !1400

97:                                               ; preds = %91
  br i1 %93, label %98, label %143, !dbg !1401

98:                                               ; preds = %97
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1197, metadata !DIExpression()), !dbg !1222
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #44, !dbg !1402
  br i1 %59, label %146, label %99

99:                                               ; preds = %98
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1197, metadata !DIExpression()), !dbg !1222
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1309, metadata !DIExpression()), !dbg !1327
  %100 = load i32, ptr %0, align 8, !dbg !1329, !tbaa !1301
  %101 = and i32 %100, 16, !dbg !1318
  %102 = icmp eq i32 %101, 0, !dbg !1318
  br i1 %102, label %149, label %103, !dbg !1330

103:                                              ; preds = %99
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #44, !dbg !1319
  store i64 3072, ptr %8, align 8, !dbg !1320, !tbaa !1321, !DIAssignID !1322
  call void @llvm.dbg.assign(metadata i64 3072, metadata !1212, metadata !DIExpression(), metadata !1322, metadata ptr %8, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1331, metadata !DIExpression(), metadata !1219, metadata ptr %5, metadata !DIExpression()), !dbg !1346
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1344, metadata !DIExpression(), metadata !1220, metadata ptr %6, metadata !DIExpression()), !dbg !1346
  call void @llvm.dbg.value(metadata ptr %7, metadata !1339, metadata !DIExpression()), !dbg !1346
  call void @llvm.dbg.value(metadata ptr undef, metadata !1340, metadata !DIExpression()), !dbg !1346
  call void @llvm.dbg.value(metadata ptr %8, metadata !1341, metadata !DIExpression()), !dbg !1346
  call void @llvm.dbg.value(metadata ptr %7, metadata !1348, metadata !DIExpression()), !dbg !1353
  %104 = load i32, ptr %7, align 4, !dbg !1356, !tbaa !1237
  %105 = icmp eq i32 %104, 0, !dbg !1357
  br i1 %105, label %106, label %107, !dbg !1358

106:                                              ; preds = %103
  store i64 0, ptr %8, align 8, !dbg !1394, !tbaa !1321, !DIAssignID !1396
  call void @llvm.dbg.assign(metadata i64 0, metadata !1212, metadata !DIExpression(), metadata !1396, metadata ptr %8, metadata !DIExpression()), !dbg !1224
  br label %127, !dbg !1397

107:                                              ; preds = %103
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #44, !dbg !1359
  store i64 4412750543122677053, ptr %5, align 8, !dbg !1360, !DIAssignID !1361
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1331, metadata !DIExpression(), metadata !1361, metadata ptr %5, metadata !DIExpression()), !dbg !1346
  call void @llvm.dbg.value(metadata ptr %7, metadata !1348, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.value(metadata i32 %104, metadata !1342, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !1346
  call void @llvm.dbg.value(metadata i32 %104, metadata !1260, metadata !DIExpression()), !dbg !1364
  %108 = srem i32 %104, 4, !dbg !1366
  call void @llvm.dbg.value(metadata i32 %108, metadata !1265, metadata !DIExpression()), !dbg !1364
  %109 = icmp eq i32 %108, 0, !dbg !1367
  %110 = sub nsw i32 4, %108, !dbg !1367
  %111 = select i1 %109, i32 0, i32 %110, !dbg !1367
  %112 = zext nneg i32 %111 to i64
  call void @llvm.dbg.value(metadata i64 %112, metadata !1343, metadata !DIExpression()), !dbg !1346
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #44, !dbg !1368
  store i64 3072, ptr %6, align 8, !dbg !1369, !tbaa !1321, !DIAssignID !1370
  call void @llvm.dbg.assign(metadata i64 3072, metadata !1344, metadata !DIExpression(), metadata !1370, metadata ptr %6, metadata !DIExpression()), !dbg !1346
  %113 = icmp eq i32 %111, 0, !dbg !1371
  br i1 %113, label %122, label %114, !dbg !1373

114:                                              ; preds = %107
  call void @llvm.dbg.value(metadata ptr %7, metadata !1374, metadata !DIExpression()), !dbg !1379
  %115 = add nsw i32 %104, -1, !dbg !1381
  %116 = sext i32 %115 to i64, !dbg !1382
  %117 = getelementptr inbounds %struct.base64_decode_context, ptr %7, i64 0, i32 1, i64 %116, !dbg !1382
  %118 = load i8, ptr %117, align 1, !dbg !1382, !tbaa !943
  %119 = icmp eq i8 %118, 61, !dbg !1383
  br i1 %119, label %122, label %120, !dbg !1384

120:                                              ; preds = %114
  %121 = call zeroext i1 @base64_decode_ctx(ptr noundef nonnull %7, ptr noundef nonnull %5, i64 noundef %112, ptr noundef nonnull %10, ptr noundef nonnull %6) #44, !dbg !1385
  call void @llvm.dbg.value(metadata i1 %121, metadata !1345, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1346
  br label %124, !dbg !1387

122:                                              ; preds = %114, %107
  %123 = call zeroext i1 @base64_decode_ctx(ptr noundef nonnull %7, ptr noundef nonnull @.str.10, i64 noundef 0, ptr noundef nonnull %10, ptr noundef nonnull %6) #44, !dbg !1388
  call void @llvm.dbg.value(metadata i1 %123, metadata !1345, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1346
  br label %124

124:                                              ; preds = %122, %120
  %125 = phi i1 [ %123, %122 ], [ %121, %120 ]
  call void @llvm.dbg.value(metadata i1 %125, metadata !1345, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1346
  %126 = load i64, ptr %6, align 8, !dbg !1390, !tbaa !1321
  store i64 %126, ptr %8, align 8, !dbg !1391, !tbaa !1321, !DIAssignID !1392
  call void @llvm.dbg.assign(metadata i64 %126, metadata !1212, metadata !DIExpression(), metadata !1392, metadata ptr %8, metadata !DIExpression()), !dbg !1224
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #44, !dbg !1393
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #44, !dbg !1393
  br label %127

127:                                              ; preds = %124, %106
  %128 = phi i64 [ 0, %106 ], [ %126, %124 ], !dbg !1325
  %129 = phi i1 [ true, %106 ], [ %125, %124 ]
  tail call void @llvm.dbg.value(metadata i1 %129, metadata !1204, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1241
  %130 = call i64 @fwrite_unlocked(ptr noundef nonnull %10, i64 noundef 1, i64 noundef %128, ptr noundef %2), !dbg !1325
  %131 = load i64, ptr %8, align 8, !dbg !1398, !tbaa !1321
  %132 = icmp ult i64 %130, %131, !dbg !1399
  br i1 %132, label %133, label %142, !dbg !1400

133:                                              ; preds = %91, %127
  %134 = tail call ptr @__errno_location() #47, !dbg !1403
  %135 = load i32, ptr %134, align 4, !dbg !1403, !tbaa !934
  call void @llvm.dbg.value(metadata i32 %135, metadata !1406, metadata !DIExpression()), !dbg !1408
  %136 = load ptr, ptr @stdout, align 8, !dbg !1409, !tbaa !863
  %137 = call i32 @fflush_unlocked(ptr noundef %136) #44, !dbg !1409
  %138 = load ptr, ptr @stdout, align 8, !dbg !1410, !tbaa !863
  %139 = call i32 @fpurge(ptr noundef %138) #44, !dbg !1411
  %140 = load ptr, ptr @stdout, align 8, !dbg !1412, !tbaa !863
  call void @clearerr_unlocked(ptr noundef %140) #44, !dbg !1412
  %141 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.68, i32 noundef 5) #44, !dbg !1413
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %135, ptr noundef %141) #44, !dbg !1413
  unreachable, !dbg !1413

142:                                              ; preds = %127
  br i1 %129, label %145, label %143, !dbg !1401

143:                                              ; preds = %97, %142
  %144 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.65, i32 noundef 5) #44, !dbg !1414
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %144) #44, !dbg !1414
  unreachable, !dbg !1414

145:                                              ; preds = %142
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1197, metadata !DIExpression()), !dbg !1222
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #44, !dbg !1402
  br label %146, !dbg !1416

146:                                              ; preds = %145, %98
  %147 = load i32, ptr %0, align 8, !dbg !1416, !tbaa !1301
  %148 = and i32 %147, 16, !dbg !1418
  br label %149

149:                                              ; preds = %63, %99, %146
  %150 = phi i32 [ %148, %146 ], [ 0, %99 ], [ 0, %63 ], !dbg !1418
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1309, metadata !DIExpression()), !dbg !1419
  %151 = icmp eq i32 %150, 0, !dbg !1418
  br i1 %151, label %56, label %152, !dbg !1420

152:                                              ; preds = %149
  call fastcc void @finish_and_exit(ptr noundef nonnull %0, ptr noundef %1) #48, !dbg !1421
  unreachable, !dbg !1421
}

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @do_encode(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 !dbg !1422 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1426, metadata !DIExpression()), !dbg !1436
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1427, metadata !DIExpression()), !dbg !1436
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1428, metadata !DIExpression()), !dbg !1436
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1429, metadata !DIExpression()), !dbg !1436
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1430, metadata !DIExpression()), !dbg !1436
  %5 = tail call noalias nonnull dereferenceable(30720) ptr @xmalloc(i64 noundef 30720) #49, !dbg !1437
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1431, metadata !DIExpression()), !dbg !1436
  %6 = tail call noalias nonnull dereferenceable(40960) ptr @xmalloc(i64 noundef 40960) #49, !dbg !1438
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1432, metadata !DIExpression()), !dbg !1436
  %7 = icmp eq i64 %3, 0
  %8 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %9 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  br label %10, !dbg !1439

10:                                               ; preds = %96, %4
  %11 = phi i64 [ 0, %4 ], [ %92, %96 ], !dbg !1440
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !1430, metadata !DIExpression()), !dbg !1436
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1433, metadata !DIExpression()), !dbg !1436
  br label %12, !dbg !1441

12:                                               ; preds = %21, %10
  %13 = phi i64 [ 0, %10 ], [ %17, %21 ], !dbg !1442
  tail call void @llvm.dbg.value(metadata i64 %13, metadata !1433, metadata !DIExpression()), !dbg !1436
  %14 = getelementptr inbounds i8, ptr %5, i64 %13, !dbg !1443
  %15 = sub nsw i64 30720, %13, !dbg !1443
  %16 = tail call i64 @fread_unlocked(ptr noundef nonnull %14, i64 noundef 1, i64 noundef %15, ptr noundef %0), !dbg !1443
  tail call void @llvm.dbg.value(metadata i64 %16, metadata !1434, metadata !DIExpression()), !dbg !1442
  %17 = add nsw i64 %16, %13, !dbg !1445
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !1433, metadata !DIExpression()), !dbg !1436
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1309, metadata !DIExpression()), !dbg !1446
  %18 = load i32, ptr %0, align 8, !dbg !1448, !tbaa !1301
  %19 = and i32 %18, 16, !dbg !1449
  %20 = icmp eq i32 %19, 0, !dbg !1449
  br i1 %20, label %21, label %26, !dbg !1450

21:                                               ; preds = %12
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1291, metadata !DIExpression()), !dbg !1451
  %22 = and i32 %18, 32, !dbg !1453
  %23 = icmp eq i32 %22, 0, !dbg !1453
  %24 = icmp slt i64 %17, 30720
  %25 = select i1 %23, i1 %24, i1 false, !dbg !1454
  br i1 %25, label %12, label %26, !dbg !1454, !llvm.loop !1455

26:                                               ; preds = %21, %12
  %27 = icmp sgt i64 %17, 0, !dbg !1457
  br i1 %27, label %28, label %91, !dbg !1459

28:                                               ; preds = %26
  %29 = add nuw nsw i64 %17, 2, !dbg !1460
  %30 = udiv i64 %29, 3, !dbg !1460
  %31 = shl nuw nsw i64 %30, 2, !dbg !1460
  tail call void @base64_encode(ptr noundef nonnull %5, i64 noundef %17, ptr noundef nonnull %6, i64 noundef %31) #44, !dbg !1463
  call void @llvm.dbg.value(metadata ptr %6, metadata !1464, metadata !DIExpression()), !dbg !1492
  call void @llvm.dbg.value(metadata i64 %31, metadata !1469, metadata !DIExpression()), !dbg !1492
  call void @llvm.dbg.value(metadata i64 %3, metadata !1470, metadata !DIExpression()), !dbg !1492
  call void @llvm.dbg.value(metadata ptr undef, metadata !1471, metadata !DIExpression()), !dbg !1492
  call void @llvm.dbg.value(metadata ptr %2, metadata !1472, metadata !DIExpression()), !dbg !1492
  br i1 %7, label %32, label %45, !dbg !1494

32:                                               ; preds = %28
  %33 = load ptr, ptr @stdout, align 8, !dbg !1495, !tbaa !863
  %34 = tail call i64 @fwrite_unlocked(ptr noundef nonnull %6, i64 noundef 1, i64 noundef %31, ptr noundef %33), !dbg !1495
  %35 = icmp ult i64 %34, %31, !dbg !1496
  br i1 %35, label %36, label %91, !dbg !1497

36:                                               ; preds = %32
  %37 = tail call ptr @__errno_location() #47, !dbg !1498
  %38 = load i32, ptr %37, align 4, !dbg !1498, !tbaa !934
  call void @llvm.dbg.value(metadata i32 %38, metadata !1406, metadata !DIExpression()), !dbg !1500
  %39 = load ptr, ptr @stdout, align 8, !dbg !1501, !tbaa !863
  %40 = tail call i32 @fflush_unlocked(ptr noundef %39) #44, !dbg !1501
  %41 = load ptr, ptr @stdout, align 8, !dbg !1502, !tbaa !863
  %42 = tail call i32 @fpurge(ptr noundef %41) #44, !dbg !1503
  %43 = load ptr, ptr @stdout, align 8, !dbg !1504, !tbaa !863
  tail call void @clearerr_unlocked(ptr noundef %43) #44, !dbg !1504
  %44 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.68, i32 noundef 5) #44, !dbg !1505
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %38, ptr noundef %44) #44, !dbg !1505
  unreachable, !dbg !1505

45:                                               ; preds = %28, %87
  %46 = phi i64 [ %88, %87 ], [ %11, %28 ], !dbg !1436
  %47 = phi i64 [ %89, %87 ], [ 0, %28 ]
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !1430, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i64 %47, metadata !1480, metadata !DIExpression()), !dbg !1506
  %48 = sub nsw i64 %3, %46, !dbg !1507
  %49 = sub nsw i64 %31, %47, !dbg !1507
  %50 = tail call i64 @llvm.smin.i64(i64 %48, i64 %49), !dbg !1507
  call void @llvm.dbg.value(metadata i64 %50, metadata !1482, metadata !DIExpression()), !dbg !1508
  %51 = icmp eq i64 %50, 0, !dbg !1509
  br i1 %51, label %52, label %70, !dbg !1510

52:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i32 10, metadata !1511, metadata !DIExpression()), !dbg !1517
  call void @llvm.dbg.value(metadata ptr %2, metadata !1516, metadata !DIExpression()), !dbg !1517
  %53 = load ptr, ptr %8, align 8, !dbg !1521, !tbaa !1522
  %54 = load ptr, ptr %9, align 8, !dbg !1521, !tbaa !1523
  %55 = icmp ult ptr %53, %54, !dbg !1521
  br i1 %55, label %56, label %58, !dbg !1521, !prof !1524

56:                                               ; preds = %52
  %57 = getelementptr inbounds i8, ptr %53, i64 1, !dbg !1521
  store ptr %57, ptr %8, align 8, !dbg !1521, !tbaa !1522
  store i8 10, ptr %53, align 1, !dbg !1521, !tbaa !943
  br label %87, !dbg !1525

58:                                               ; preds = %52
  %59 = tail call i32 @__overflow(ptr noundef nonnull %2, i32 noundef 10) #44, !dbg !1521
  %60 = icmp eq i32 %59, -1, !dbg !1526
  br i1 %60, label %61, label %87, !dbg !1525

61:                                               ; preds = %58
  %62 = tail call ptr @__errno_location() #47, !dbg !1527
  %63 = load i32, ptr %62, align 4, !dbg !1527, !tbaa !934
  call void @llvm.dbg.value(metadata i32 %63, metadata !1406, metadata !DIExpression()), !dbg !1529
  %64 = load ptr, ptr @stdout, align 8, !dbg !1530, !tbaa !863
  %65 = tail call i32 @fflush_unlocked(ptr noundef %64) #44, !dbg !1530
  %66 = load ptr, ptr @stdout, align 8, !dbg !1531, !tbaa !863
  %67 = tail call i32 @fpurge(ptr noundef %66) #44, !dbg !1532
  %68 = load ptr, ptr @stdout, align 8, !dbg !1533, !tbaa !863
  tail call void @clearerr_unlocked(ptr noundef %68) #44, !dbg !1533
  %69 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.68, i32 noundef 5) #44, !dbg !1534
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %63, ptr noundef %69) #44, !dbg !1534
  unreachable, !dbg !1534

70:                                               ; preds = %45
  %71 = load ptr, ptr @stdout, align 8, !dbg !1535, !tbaa !863
  %72 = getelementptr inbounds i8, ptr %6, i64 %47, !dbg !1535
  %73 = tail call i64 @fwrite_unlocked(ptr noundef nonnull %72, i64 noundef 1, i64 noundef %50, ptr noundef %71), !dbg !1535
  %74 = icmp ult i64 %73, %50, !dbg !1536
  br i1 %74, label %75, label %84, !dbg !1537

75:                                               ; preds = %70
  %76 = tail call ptr @__errno_location() #47, !dbg !1538
  %77 = load i32, ptr %76, align 4, !dbg !1538, !tbaa !934
  call void @llvm.dbg.value(metadata i32 %77, metadata !1406, metadata !DIExpression()), !dbg !1540
  %78 = load ptr, ptr @stdout, align 8, !dbg !1541, !tbaa !863
  %79 = tail call i32 @fflush_unlocked(ptr noundef %78) #44, !dbg !1541
  %80 = load ptr, ptr @stdout, align 8, !dbg !1542, !tbaa !863
  %81 = tail call i32 @fpurge(ptr noundef %80) #44, !dbg !1543
  %82 = load ptr, ptr @stdout, align 8, !dbg !1544, !tbaa !863
  tail call void @clearerr_unlocked(ptr noundef %82) #44, !dbg !1544
  %83 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.68, i32 noundef 5) #44, !dbg !1545
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %77, ptr noundef %83) #44, !dbg !1545
  unreachable, !dbg !1545

84:                                               ; preds = %70
  %85 = add nsw i64 %50, %46, !dbg !1546
  tail call void @llvm.dbg.value(metadata i64 %85, metadata !1430, metadata !DIExpression()), !dbg !1436
  %86 = add nsw i64 %50, %47, !dbg !1547
  call void @llvm.dbg.value(metadata i64 %86, metadata !1480, metadata !DIExpression()), !dbg !1506
  br label %87

87:                                               ; preds = %56, %58, %84
  %88 = phi i64 [ %85, %84 ], [ 0, %58 ], [ 0, %56 ], !dbg !1548
  %89 = phi i64 [ %86, %84 ], [ %47, %58 ], [ %47, %56 ], !dbg !1506
  tail call void @llvm.dbg.value(metadata i64 %88, metadata !1430, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i64 %89, metadata !1480, metadata !DIExpression()), !dbg !1506
  %90 = icmp slt i64 %89, %31, !dbg !1549
  br i1 %90, label %45, label %91, !dbg !1550, !llvm.loop !1551

91:                                               ; preds = %87, %32, %26
  %92 = phi i64 [ %11, %26 ], [ %11, %32 ], [ %88, %87 ], !dbg !1440
  tail call void @llvm.dbg.value(metadata i64 %92, metadata !1430, metadata !DIExpression()), !dbg !1436
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1309, metadata !DIExpression()), !dbg !1553
  %93 = load i32, ptr %0, align 8, !dbg !1555, !tbaa !1301
  %94 = and i32 %93, 16, !dbg !1556
  %95 = icmp eq i32 %94, 0, !dbg !1556
  br i1 %95, label %96, label %101, !dbg !1557

96:                                               ; preds = %91
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1291, metadata !DIExpression()), !dbg !1558
  %97 = and i32 %93, 32, !dbg !1560
  %98 = icmp eq i32 %97, 0, !dbg !1560
  %99 = icmp eq i64 %17, 30720
  %100 = select i1 %98, i1 %99, i1 false, !dbg !1561
  br i1 %100, label %10, label %101, !dbg !1561, !llvm.loop !1562

101:                                              ; preds = %96, %91
  %102 = icmp ne i64 %3, 0, !dbg !1564
  %103 = icmp sgt i64 %92, 0
  %104 = select i1 %102, i1 %103, i1 false, !dbg !1566
  br i1 %104, label %105, label %123, !dbg !1566

105:                                              ; preds = %101
  call void @llvm.dbg.value(metadata i32 10, metadata !1511, metadata !DIExpression()), !dbg !1567
  call void @llvm.dbg.value(metadata ptr %2, metadata !1516, metadata !DIExpression()), !dbg !1567
  %106 = load ptr, ptr %8, align 8, !dbg !1569, !tbaa !1522
  %107 = load ptr, ptr %9, align 8, !dbg !1569, !tbaa !1523
  %108 = icmp ult ptr %106, %107, !dbg !1569
  br i1 %108, label %109, label %111, !dbg !1569, !prof !1524

109:                                              ; preds = %105
  %110 = getelementptr inbounds i8, ptr %106, i64 1, !dbg !1569
  store ptr %110, ptr %8, align 8, !dbg !1569, !tbaa !1522
  store i8 10, ptr %106, align 1, !dbg !1569, !tbaa !943
  br label %123, !dbg !1570

111:                                              ; preds = %105
  %112 = tail call i32 @__overflow(ptr noundef nonnull %2, i32 noundef 10) #44, !dbg !1569
  %113 = icmp eq i32 %112, -1, !dbg !1571
  br i1 %113, label %114, label %123, !dbg !1570

114:                                              ; preds = %111
  %115 = tail call ptr @__errno_location() #47, !dbg !1572
  %116 = load i32, ptr %115, align 4, !dbg !1572, !tbaa !934
  call void @llvm.dbg.value(metadata i32 %116, metadata !1406, metadata !DIExpression()), !dbg !1574
  %117 = load ptr, ptr @stdout, align 8, !dbg !1575, !tbaa !863
  %118 = tail call i32 @fflush_unlocked(ptr noundef %117) #44, !dbg !1575
  %119 = load ptr, ptr @stdout, align 8, !dbg !1576, !tbaa !863
  %120 = tail call i32 @fpurge(ptr noundef %119) #44, !dbg !1577
  %121 = load ptr, ptr @stdout, align 8, !dbg !1578, !tbaa !863
  tail call void @clearerr_unlocked(ptr noundef %121) #44, !dbg !1578
  %122 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.68, i32 noundef 5) #44, !dbg !1579
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %116, ptr noundef %122) #44, !dbg !1579
  unreachable, !dbg !1579

123:                                              ; preds = %109, %111, %101
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1291, metadata !DIExpression()), !dbg !1580
  %124 = load i32, ptr %0, align 8, !dbg !1583, !tbaa !1301
  %125 = and i32 %124, 32, !dbg !1584
  %126 = icmp eq i32 %125, 0, !dbg !1584
  br i1 %126, label %131, label %127, !dbg !1585

127:                                              ; preds = %123
  %128 = tail call ptr @__errno_location() #47, !dbg !1586
  %129 = load i32, ptr %128, align 4, !dbg !1586, !tbaa !934
  %130 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.64, i32 noundef 5) #44, !dbg !1586
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %129, ptr noundef %130) #44, !dbg !1586
  unreachable, !dbg !1586

131:                                              ; preds = %123
  tail call fastcc void @finish_and_exit(ptr noundef nonnull %0, ptr noundef %1) #48, !dbg !1587
  unreachable, !dbg !1587
}

; Function Attrs: nofree nounwind
declare noundef i64 @fread_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

declare !dbg !1588 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1589 void @clearerr_unlocked(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

declare !dbg !1592 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @finish_and_exit(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !dbg !1595 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1599, metadata !DIExpression()), !dbg !1601
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1600, metadata !DIExpression()), !dbg !1601
  %3 = tail call i32 @rpl_fclose(ptr noundef %0) #44, !dbg !1602
  %4 = icmp eq i32 %3, 0, !dbg !1604
  br i1 %4, label %14, label %5, !dbg !1605

5:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %1, metadata !945, metadata !DIExpression()), !dbg !1606
  call void @llvm.dbg.value(metadata ptr @.str.19, metadata !951, metadata !DIExpression()), !dbg !1606
  %6 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(2) @.str.19) #45, !dbg !1610
  %7 = icmp eq i32 %6, 0, !dbg !1611
  %8 = tail call ptr @__errno_location() #47, !dbg !1612
  %9 = load i32, ptr %8, align 4, !dbg !1612, !tbaa !934
  br i1 %7, label %10, label %12, !dbg !1613

10:                                               ; preds = %5
  %11 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.69, i32 noundef 5) #44, !dbg !1614
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %9, ptr noundef %11) #44, !dbg !1614
  unreachable, !dbg !1614

12:                                               ; preds = %5
  %13 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %1) #44, !dbg !1615
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %9, ptr noundef nonnull @.str.21, ptr noundef %13) #44, !dbg !1615
  unreachable, !dbg !1615

14:                                               ; preds = %2
  tail call void @exit(i32 noundef 0) #46, !dbg !1616
  unreachable, !dbg !1616
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #11

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @isubase64(i8 noundef zeroext %0) local_unnamed_addr #12 !dbg !1617 {
  tail call void @llvm.dbg.value(metadata i8 %0, metadata !1620, metadata !DIExpression()), !dbg !1621
  %2 = zext i8 %0 to i64, !dbg !1622
  %3 = getelementptr inbounds [256 x i8], ptr @base64_to_int, i64 0, i64 %2, !dbg !1623
  %4 = load i8, ptr %3, align 1, !dbg !1623, !tbaa !943
  %5 = icmp sgt i8 %4, -1, !dbg !1624
  ret i1 %5, !dbg !1625
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @isbase64(i8 noundef signext %0) local_unnamed_addr #12 !dbg !1626 {
  tail call void @llvm.dbg.value(metadata i8 %0, metadata !1630, metadata !DIExpression()), !dbg !1631
  tail call void @llvm.dbg.value(metadata i8 %0, metadata !1620, metadata !DIExpression()), !dbg !1632
  %2 = zext i8 %0 to i64, !dbg !1634
  %3 = getelementptr inbounds [256 x i8], ptr @base64_to_int, i64 0, i64 %2, !dbg !1635
  %4 = load i8, ptr %3, align 1, !dbg !1635, !tbaa !943
  %5 = icmp sgt i8 %4, -1, !dbg !1636
  ret i1 %5, !dbg !1637
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @base64_decode_ctx_init(ptr nocapture noundef writeonly %0) local_unnamed_addr #13 !dbg !1638 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1647, metadata !DIExpression()), !dbg !1648
  store i32 0, ptr %0, align 4, !dbg !1649, !tbaa !1237
  ret void, !dbg !1650
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local void @base64_encode(ptr noalias nocapture noundef readonly %0, i64 noundef %1, ptr noalias nocapture noundef writeonly %2, i64 noundef %3) local_unnamed_addr #14 !dbg !1651 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1655, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1656, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1657, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1658, metadata !DIExpression()), !dbg !1659
  %5 = and i64 %3, 3, !dbg !1660
  %6 = icmp eq i64 %5, 0, !dbg !1660
  br i1 %6, label %7, label %53, !dbg !1662

7:                                                ; preds = %4
  %8 = ashr exact i64 %3, 2, !dbg !1663
  %9 = mul nsw i64 %8, 3, !dbg !1664
  %10 = icmp eq i64 %9, %1, !dbg !1665
  br i1 %10, label %11, label %53, !dbg !1666

11:                                               ; preds = %7
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1667), !dbg !1670
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1672), !dbg !1670
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1674, metadata !DIExpression()), !dbg !1681
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1679, metadata !DIExpression()), !dbg !1681
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1680, metadata !DIExpression()), !dbg !1681
  %12 = icmp eq i64 %1, 0, !dbg !1683
  br i1 %12, label %137, label %13, !dbg !1683

13:                                               ; preds = %11, %13
  %14 = phi ptr [ %49, %13 ], [ %2, %11 ]
  %15 = phi i64 [ %50, %13 ], [ %1, %11 ]
  %16 = phi ptr [ %51, %13 ], [ %0, %11 ]
  tail call void @llvm.dbg.value(metadata ptr %14, metadata !1680, metadata !DIExpression()), !dbg !1681
  tail call void @llvm.dbg.value(metadata i64 %15, metadata !1679, metadata !DIExpression()), !dbg !1681
  tail call void @llvm.dbg.value(metadata ptr %16, metadata !1674, metadata !DIExpression()), !dbg !1681
  %17 = load i8, ptr %16, align 1, !dbg !1684, !tbaa !943, !alias.scope !1667, !noalias !1672
  %18 = lshr i8 %17, 2
  %19 = zext nneg i8 %18 to i64
  %20 = getelementptr inbounds [64 x i8], ptr @b64c, i64 0, i64 %19, !dbg !1686
  %21 = load i8, ptr %20, align 1, !dbg !1686, !tbaa !943, !noalias !1687
  %22 = getelementptr inbounds i8, ptr %14, i64 1, !dbg !1688
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !1680, metadata !DIExpression()), !dbg !1681
  store i8 %21, ptr %14, align 1, !dbg !1689, !tbaa !943, !alias.scope !1672, !noalias !1667
  %23 = zext i8 %17 to i64, !dbg !1690
  %24 = shl nuw nsw i64 %23, 4, !dbg !1691
  %25 = getelementptr inbounds i8, ptr %16, i64 1, !dbg !1692
  %26 = load i8, ptr %25, align 1, !dbg !1692, !tbaa !943, !alias.scope !1667, !noalias !1672
  %27 = lshr i8 %26, 4
  %28 = zext nneg i8 %27 to i64
  %29 = and i64 %24, 48, !dbg !1693
  %30 = or disjoint i64 %29, %28, !dbg !1693
  %31 = getelementptr inbounds [64 x i8], ptr @b64c, i64 0, i64 %30, !dbg !1694
  %32 = load i8, ptr %31, align 1, !dbg !1694, !tbaa !943, !noalias !1687
  %33 = getelementptr inbounds i8, ptr %14, i64 2, !dbg !1695
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !1680, metadata !DIExpression()), !dbg !1681
  store i8 %32, ptr %22, align 1, !dbg !1696, !tbaa !943, !alias.scope !1672, !noalias !1667
  %34 = zext i8 %26 to i64, !dbg !1697
  %35 = shl nuw nsw i64 %34, 2, !dbg !1698
  %36 = getelementptr inbounds i8, ptr %16, i64 2, !dbg !1699
  %37 = load i8, ptr %36, align 1, !dbg !1699, !tbaa !943, !alias.scope !1667, !noalias !1672
  %38 = lshr i8 %37, 6
  %39 = zext nneg i8 %38 to i64
  %40 = and i64 %35, 60, !dbg !1700
  %41 = or disjoint i64 %40, %39, !dbg !1700
  %42 = getelementptr inbounds [64 x i8], ptr @b64c, i64 0, i64 %41, !dbg !1701
  %43 = load i8, ptr %42, align 1, !dbg !1701, !tbaa !943, !noalias !1687
  %44 = getelementptr inbounds i8, ptr %14, i64 3, !dbg !1702
  tail call void @llvm.dbg.value(metadata ptr %44, metadata !1680, metadata !DIExpression()), !dbg !1681
  store i8 %43, ptr %33, align 1, !dbg !1703, !tbaa !943, !alias.scope !1672, !noalias !1667
  %45 = and i8 %37, 63, !dbg !1704
  %46 = zext nneg i8 %45 to i64
  %47 = getelementptr inbounds [64 x i8], ptr @b64c, i64 0, i64 %46, !dbg !1705
  %48 = load i8, ptr %47, align 1, !dbg !1705, !tbaa !943, !noalias !1687
  %49 = getelementptr inbounds i8, ptr %14, i64 4, !dbg !1706
  tail call void @llvm.dbg.value(metadata ptr %49, metadata !1680, metadata !DIExpression()), !dbg !1681
  store i8 %48, ptr %44, align 1, !dbg !1707, !tbaa !943, !alias.scope !1672, !noalias !1667
  %50 = add nsw i64 %15, -3, !dbg !1708
  tail call void @llvm.dbg.value(metadata i64 %50, metadata !1679, metadata !DIExpression()), !dbg !1681
  %51 = getelementptr inbounds i8, ptr %16, i64 3, !dbg !1709
  tail call void @llvm.dbg.value(metadata ptr %51, metadata !1674, metadata !DIExpression()), !dbg !1681
  %52 = icmp eq i64 %50, 0, !dbg !1683
  br i1 %52, label %137, label %13, !dbg !1683, !llvm.loop !1710

53:                                               ; preds = %7, %4
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1658, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1657, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1656, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1655, metadata !DIExpression()), !dbg !1659
  %54 = icmp ne i64 %1, 0, !dbg !1712
  %55 = icmp ne i64 %3, 0, !dbg !1713
  %56 = and i1 %54, %55, !dbg !1713
  br i1 %56, label %57, label %133, !dbg !1714

57:                                               ; preds = %53, %126
  %58 = phi i64 [ %124, %126 ], [ %3, %53 ]
  %59 = phi ptr [ %127, %126 ], [ %2, %53 ]
  %60 = phi i64 [ %129, %126 ], [ %1, %53 ]
  %61 = phi ptr [ %132, %126 ], [ %0, %53 ]
  tail call void @llvm.dbg.value(metadata i64 %58, metadata !1658, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata ptr %59, metadata !1657, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i64 %60, metadata !1656, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !1655, metadata !DIExpression()), !dbg !1659
  %62 = load i8, ptr %61, align 1, !dbg !1715, !tbaa !943
  %63 = lshr i8 %62, 2
  %64 = zext nneg i8 %63 to i64
  %65 = getelementptr inbounds [64 x i8], ptr @b64c, i64 0, i64 %64, !dbg !1717
  %66 = load i8, ptr %65, align 1, !dbg !1717, !tbaa !943
  %67 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !1718
  tail call void @llvm.dbg.value(metadata ptr %67, metadata !1657, metadata !DIExpression()), !dbg !1659
  store i8 %66, ptr %59, align 1, !dbg !1719, !tbaa !943
  tail call void @llvm.dbg.value(metadata i64 %58, metadata !1658, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1659
  %68 = icmp eq i64 %58, 1, !dbg !1720
  br i1 %68, label %137, label %69, !dbg !1722

69:                                               ; preds = %57
  %70 = zext i8 %62 to i64, !dbg !1723
  %71 = shl nuw nsw i64 %70, 4, !dbg !1724
  tail call void @llvm.dbg.value(metadata i64 %60, metadata !1656, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1659
  %72 = icmp eq i64 %60, 1, !dbg !1725
  br i1 %72, label %73, label %78, !dbg !1725

73:                                               ; preds = %69
  %74 = and i64 %71, 48, !dbg !1726
  %75 = getelementptr inbounds [64 x i8], ptr @b64c, i64 0, i64 %74, !dbg !1727
  %76 = load i8, ptr %75, align 16, !dbg !1727, !tbaa !943
  tail call void @llvm.dbg.value(metadata ptr %59, metadata !1657, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !1659
  store i8 %76, ptr %67, align 1, !dbg !1728, !tbaa !943
  tail call void @llvm.dbg.value(metadata i64 %58, metadata !1658, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !1659
  %77 = icmp eq i64 %58, 2, !dbg !1729
  br i1 %77, label %137, label %109, !dbg !1731

78:                                               ; preds = %69
  %79 = getelementptr inbounds i8, ptr %61, i64 1, !dbg !1732
  %80 = load i8, ptr %79, align 1, !dbg !1732, !tbaa !943
  %81 = lshr i8 %80, 4
  %82 = zext nneg i8 %81 to i64
  %83 = and i64 %71, 48, !dbg !1726
  %84 = or disjoint i64 %83, %82, !dbg !1726
  %85 = getelementptr inbounds [64 x i8], ptr @b64c, i64 0, i64 %84, !dbg !1727
  %86 = load i8, ptr %85, align 1, !dbg !1727, !tbaa !943
  %87 = getelementptr inbounds i8, ptr %59, i64 2, !dbg !1733
  tail call void @llvm.dbg.value(metadata ptr %87, metadata !1657, metadata !DIExpression()), !dbg !1659
  store i8 %86, ptr %67, align 1, !dbg !1728, !tbaa !943
  tail call void @llvm.dbg.value(metadata i64 %58, metadata !1658, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !1659
  %88 = icmp eq i64 %58, 2, !dbg !1729
  br i1 %88, label %137, label %89, !dbg !1731

89:                                               ; preds = %78
  %90 = zext i8 %80 to i64, !dbg !1734
  %91 = shl nuw nsw i64 %90, 2, !dbg !1735
  %92 = add nsw i64 %60, -2, !dbg !1736
  tail call void @llvm.dbg.value(metadata i64 %92, metadata !1656, metadata !DIExpression()), !dbg !1659
  %93 = icmp eq i64 %92, 0, !dbg !1736
  br i1 %93, label %94, label %99, !dbg !1736

94:                                               ; preds = %89
  %95 = and i64 %91, 60, !dbg !1737
  %96 = getelementptr inbounds [64 x i8], ptr @b64c, i64 0, i64 %95, !dbg !1738
  %97 = load i8, ptr %96, align 4, !dbg !1738, !tbaa !943
  tail call void @llvm.dbg.value(metadata i64 %92, metadata !1656, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata ptr %59, metadata !1657, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !1659
  store i8 %97, ptr %87, align 1, !dbg !1739, !tbaa !943
  tail call void @llvm.dbg.value(metadata i64 %58, metadata !1658, metadata !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value)), !dbg !1659
  %98 = icmp eq i64 %58, 3, !dbg !1740
  br i1 %98, label %137, label %119, !dbg !1742

99:                                               ; preds = %89
  %100 = getelementptr inbounds i8, ptr %61, i64 2, !dbg !1743
  %101 = load i8, ptr %100, align 1, !dbg !1743, !tbaa !943
  %102 = lshr i8 %101, 6
  %103 = zext nneg i8 %102 to i64
  %104 = and i64 %91, 60, !dbg !1737
  %105 = or disjoint i64 %104, %103, !dbg !1737
  %106 = getelementptr inbounds [64 x i8], ptr @b64c, i64 0, i64 %105, !dbg !1738
  %107 = load i8, ptr %106, align 1, !dbg !1738, !tbaa !943
  tail call void @llvm.dbg.value(metadata i64 %92, metadata !1656, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata ptr %59, metadata !1657, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !1659
  store i8 %107, ptr %87, align 1, !dbg !1739, !tbaa !943
  tail call void @llvm.dbg.value(metadata i64 %58, metadata !1658, metadata !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value)), !dbg !1659
  %108 = icmp eq i64 %58, 3, !dbg !1740
  br i1 %108, label %137, label %112, !dbg !1742

109:                                              ; preds = %73
  %110 = getelementptr inbounds i8, ptr %59, i64 2, !dbg !1733
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1656, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata ptr %59, metadata !1657, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !1659
  store i8 61, ptr %110, align 1, !dbg !1739, !tbaa !943
  tail call void @llvm.dbg.value(metadata i64 %58, metadata !1658, metadata !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value)), !dbg !1659
  %111 = icmp eq i64 %58, 3, !dbg !1740
  br i1 %111, label %137, label %119, !dbg !1742

112:                                              ; preds = %99
  %113 = getelementptr inbounds i8, ptr %61, i64 2, !dbg !1744
  %114 = load i8, ptr %113, align 1, !dbg !1744, !tbaa !943
  %115 = and i8 %114, 63, !dbg !1745
  %116 = zext nneg i8 %115 to i64
  %117 = getelementptr inbounds [64 x i8], ptr @b64c, i64 0, i64 %116, !dbg !1746
  %118 = load i8, ptr %117, align 1, !dbg !1746, !tbaa !943
  br label %119, !dbg !1747

119:                                              ; preds = %94, %109, %112
  %120 = phi i1 [ false, %112 ], [ true, %109 ], [ true, %94 ]
  %121 = phi i64 [ %92, %112 ], [ 0, %109 ], [ 0, %94 ]
  %122 = phi i8 [ %118, %112 ], [ 61, %109 ], [ 61, %94 ], !dbg !1747
  %123 = getelementptr inbounds i8, ptr %59, i64 3, !dbg !1748
  tail call void @llvm.dbg.value(metadata ptr %59, metadata !1657, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !1659
  store i8 %122, ptr %123, align 1, !dbg !1749, !tbaa !943
  %124 = add nsw i64 %58, -4, !dbg !1750
  tail call void @llvm.dbg.value(metadata i64 %124, metadata !1658, metadata !DIExpression()), !dbg !1659
  %125 = icmp eq i64 %124, 0, !dbg !1750
  br i1 %125, label %137, label %126, !dbg !1752

126:                                              ; preds = %119
  %127 = getelementptr inbounds i8, ptr %59, i64 4, !dbg !1753
  tail call void @llvm.dbg.value(metadata ptr %127, metadata !1657, metadata !DIExpression()), !dbg !1659
  %128 = add nsw i64 %121, -1
  %129 = select i1 %120, i64 0, i64 %128, !dbg !1754
  tail call void @llvm.dbg.value(metadata i64 %129, metadata !1656, metadata !DIExpression()), !dbg !1659
  %130 = icmp eq i64 %129, 0, !dbg !1755
  %131 = select i1 %130, i64 0, i64 3, !dbg !1757
  %132 = getelementptr inbounds i8, ptr %61, i64 %131, !dbg !1757
  tail call void @llvm.dbg.value(metadata i64 %124, metadata !1658, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata ptr %132, metadata !1655, metadata !DIExpression()), !dbg !1659
  br i1 %130, label %135, label %57, !dbg !1714, !llvm.loop !1758

133:                                              ; preds = %53
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1658, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1657, metadata !DIExpression()), !dbg !1659
  %134 = icmp eq i64 %3, 0, !dbg !1760
  br i1 %134, label %137, label %135, !dbg !1762

135:                                              ; preds = %126, %133
  %136 = phi ptr [ %2, %133 ], [ %127, %126 ]
  store i8 0, ptr %136, align 1, !dbg !1763, !tbaa !943
  br label %137, !dbg !1764

137:                                              ; preds = %109, %78, %57, %73, %94, %119, %99, %13, %11, %135, %133
  ret void, !dbg !1765
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nofree nounwind uwtable
define dso_local i64 @base64_encode_alloc(ptr nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #16 !dbg !1766 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1770, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1771, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1772, metadata !DIExpression()), !dbg !1775
  %4 = sdiv i64 %1, 3, !dbg !1776
  %5 = srem i64 %1, 3, !dbg !1777
  %6 = icmp ne i64 %5, 0, !dbg !1778
  %7 = zext i1 %6 to i64
  %8 = add nsw i64 %4, %7, !dbg !1779
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !1773, metadata !DIExpression()), !dbg !1775
  %9 = add nsw i64 %8, -2305843009213693952, !dbg !1780
  %10 = icmp ult i64 %9, -4611686018427387904, !dbg !1780
  %11 = shl i64 %8, 2, !dbg !1780
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !1774, metadata !DIExpression()), !dbg !1775
  %12 = icmp slt i64 %1, 0
  %13 = or i1 %12, %10, !dbg !1782
  br i1 %13, label %14, label %15, !dbg !1782

14:                                               ; preds = %3
  store ptr null, ptr %2, align 8, !dbg !1783, !tbaa !863
  br label %20, !dbg !1785

15:                                               ; preds = %3
  %16 = or disjoint i64 %11, 1, !dbg !1786
  tail call void @llvm.dbg.value(metadata i64 %16, metadata !1774, metadata !DIExpression()), !dbg !1775
  call void @llvm.dbg.value(metadata i64 %16, metadata !1787, metadata !DIExpression()), !dbg !1793
  %17 = tail call noalias ptr @malloc(i64 noundef %16) #49, !dbg !1795
  store ptr %17, ptr %2, align 8, !dbg !1796, !tbaa !863
  %18 = icmp eq ptr %17, null, !dbg !1797
  br i1 %18, label %20, label %19, !dbg !1799

19:                                               ; preds = %15
  tail call void @base64_encode(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %17, i64 noundef %16), !dbg !1800
  br label %20, !dbg !1801

20:                                               ; preds = %15, %19, %14
  %21 = phi i64 [ 0, %14 ], [ %11, %19 ], [ %16, %15 ], !dbg !1775
  ret i64 %21, !dbg !1802
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !1803 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #17

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @base64_decode_ctx(ptr noundef %0, ptr noalias noundef %1, i64 noundef %2, ptr noalias noundef %3, ptr nocapture noundef %4) local_unnamed_addr #18 !dbg !1806 {
  %6 = alloca ptr, align 8, !DIAssignID !1826
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1813, metadata !DIExpression(), metadata !1826, metadata ptr %6, metadata !DIExpression()), !dbg !1827
  %7 = alloca i64, align 8, !DIAssignID !1828
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1818, metadata !DIExpression(), metadata !1828, metadata ptr %7, metadata !DIExpression()), !dbg !1827
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1810, metadata !DIExpression()), !dbg !1827
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1811, metadata !DIExpression()), !dbg !1827
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !1812, metadata !DIExpression()), !dbg !1827
  store ptr %3, ptr %6, align 8, !tbaa !863, !DIAssignID !1829
  call void @llvm.dbg.assign(metadata ptr %3, metadata !1813, metadata !DIExpression(), metadata !1829, metadata ptr %6, metadata !DIExpression()), !dbg !1827
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1814, metadata !DIExpression()), !dbg !1827
  %8 = icmp eq ptr %0, null, !dbg !1830
  tail call void @llvm.dbg.value(metadata i1 %8, metadata !1815, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1827
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1816, metadata !DIExpression()), !dbg !1827
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1817, metadata !DIExpression()), !dbg !1827
  br i1 %8, label %13, label %9, !dbg !1831

9:                                                ; preds = %5
  %10 = load i32, ptr %0, align 4, !dbg !1832, !tbaa !1237
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1817, metadata !DIExpression()), !dbg !1827
  %11 = icmp eq i64 %2, 0, !dbg !1835
  tail call void @llvm.dbg.value(metadata i1 %11, metadata !1816, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1827
  %12 = icmp ne i32 %10, 0, !dbg !1836
  br label %13, !dbg !1838

13:                                               ; preds = %9, %5
  %14 = phi i1 [ %12, %9 ], [ false, %5 ], !dbg !1827
  %15 = phi i1 [ %11, %9 ], [ false, %5 ], !dbg !1827
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1816, metadata !DIExpression()), !dbg !1827
  tail call void @llvm.dbg.value(metadata i1 %14, metadata !1817, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1827
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #44, !dbg !1839
  %16 = load i64, ptr %4, align 8, !dbg !1840, !tbaa !1321
  store i64 %16, ptr %7, align 8, !dbg !1841, !tbaa !1321, !DIAssignID !1842
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
  %24 = call fastcc zeroext i1 @decode_4(ptr noundef %21, i64 noundef %22, ptr noundef nonnull %6, ptr noundef nonnull %7), !dbg !1847
  br i1 %24, label %25, label %32, !dbg !1851

25:                                               ; preds = %23, %25
  %26 = phi i64 [ %29, %25 ], [ %22, %23 ]
  %27 = phi ptr [ %28, %25 ], [ %21, %23 ]
  tail call void @llvm.dbg.value(metadata i64 %26, metadata !1812, metadata !DIExpression()), !dbg !1827
  tail call void @llvm.dbg.value(metadata ptr %27, metadata !1811, metadata !DIExpression()), !dbg !1827
  %28 = getelementptr inbounds i8, ptr %27, i64 4, !dbg !1852
  tail call void @llvm.dbg.value(metadata ptr %28, metadata !1811, metadata !DIExpression()), !dbg !1827
  %29 = add nsw i64 %26, -4, !dbg !1853
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !1812, metadata !DIExpression()), !dbg !1827
  %30 = load i64, ptr %7, align 8, !dbg !1854, !tbaa !1321
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !1819, metadata !DIExpression()), !dbg !1845
  %31 = call fastcc zeroext i1 @decode_4(ptr noundef nonnull %28, i64 noundef %29, ptr noundef nonnull %6, ptr noundef nonnull %7), !dbg !1847
  br i1 %31, label %25, label %32, !dbg !1851, !llvm.loop !1855

32:                                               ; preds = %25, %23, %19
  %33 = phi ptr [ %21, %19 ], [ %21, %23 ], [ %28, %25 ]
  %34 = phi i64 [ %22, %19 ], [ %22, %23 ], [ %29, %25 ]
  %35 = phi i64 [ %20, %19 ], [ %20, %23 ], [ %30, %25 ], !dbg !1845
  tail call void @llvm.dbg.value(metadata i64 %34, metadata !1812, metadata !DIExpression()), !dbg !1827
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !1811, metadata !DIExpression()), !dbg !1827
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !1819, metadata !DIExpression()), !dbg !1845
  %36 = icmp ne i64 %34, 0, !dbg !1858
  %37 = or i1 %15, %36, !dbg !1860
  br i1 %37, label %38, label %111, !dbg !1860

38:                                               ; preds = %32
  br i1 %36, label %39, label %46, !dbg !1861

39:                                               ; preds = %38
  %40 = load i8, ptr %33, align 1, !dbg !1862, !tbaa !943
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
  %47 = load i64, ptr %7, align 8, !dbg !1869, !tbaa !1321
  %48 = sub i64 %47, %35, !dbg !1870
  %49 = load ptr, ptr %6, align 8, !dbg !1871, !tbaa !863
  %50 = getelementptr inbounds i8, ptr %49, i64 %48, !dbg !1871
  store ptr %50, ptr %6, align 8, !dbg !1871, !tbaa !863, !DIAssignID !1872
  call void @llvm.dbg.assign(metadata ptr %50, metadata !1813, metadata !DIExpression(), metadata !1872, metadata ptr %6, metadata !DIExpression()), !dbg !1827
  store i64 %35, ptr %7, align 8, !dbg !1873, !tbaa !1321, !DIAssignID !1874
  call void @llvm.dbg.assign(metadata i64 %35, metadata !1818, metadata !DIExpression(), metadata !1874, metadata ptr %7, metadata !DIExpression()), !dbg !1827
  %51 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !1875
  tail call void @llvm.dbg.value(metadata ptr %51, metadata !1821, metadata !DIExpression()), !dbg !1876
  br i1 %8, label %89, label %52, !dbg !1877

52:                                               ; preds = %46
  call void @llvm.dbg.value(metadata ptr %0, metadata !1878, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata ptr undef, metadata !1884, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata ptr %51, metadata !1885, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata ptr undef, metadata !1886, metadata !DIExpression()), !dbg !1894
  %53 = load i32, ptr %0, align 4, !dbg !1897, !tbaa !1237, !noalias !1899
  switch i32 %53, label %62 [
    i32 4, label %54
    i32 0, label %55
  ], !dbg !1902

54:                                               ; preds = %52
  store i32 0, ptr %0, align 4, !dbg !1903, !tbaa !1237, !noalias !1899
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
  %69 = phi ptr [ %33, %65 ], [ %72, %75 ]
  br label %70, !dbg !1919

70:                                               ; preds = %67, %83
  %71 = phi ptr [ %72, %83 ], [ %69, %67 ]
  call void @llvm.dbg.value(metadata ptr %71, metadata !1890, metadata !DIExpression()), !dbg !1916
  %72 = getelementptr inbounds i8, ptr %71, i64 1, !dbg !1920
  call void @llvm.dbg.value(metadata ptr %72, metadata !1890, metadata !DIExpression()), !dbg !1916
  %73 = load i8, ptr %71, align 1, !dbg !1921, !tbaa !943
  call void @llvm.dbg.value(metadata i8 %73, metadata !1892, metadata !DIExpression()), !dbg !1922
  %74 = icmp eq i8 %73, 10, !dbg !1923
  br i1 %74, label %83, label %75, !dbg !1919

75:                                               ; preds = %70
  %76 = add nsw i32 %68, 1, !dbg !1925
  store i32 %76, ptr %0, align 4, !dbg !1925, !tbaa !1237, !noalias !1899
  %77 = sext i32 %68 to i64, !dbg !1927
  %78 = getelementptr inbounds %struct.base64_decode_context, ptr %0, i64 0, i32 1, i64 %77, !dbg !1927
  store i8 %73, ptr %78, align 1, !dbg !1928, !tbaa !943, !noalias !1899
  %79 = load i32, ptr %0, align 4, !dbg !1929, !tbaa !1237, !noalias !1899
  %80 = icmp ne i32 %79, 4, !dbg !1931
  call void @llvm.dbg.value(metadata ptr %72, metadata !1890, metadata !DIExpression()), !dbg !1916
  %81 = icmp ult ptr %72, %51
  %82 = select i1 %80, i1 %81, i1 false, !dbg !1932
  br i1 %82, label %67, label %85, !dbg !1932

83:                                               ; preds = %70
  call void @llvm.dbg.value(metadata ptr %72, metadata !1890, metadata !DIExpression()), !dbg !1916
  %84 = icmp ult ptr %72, %51, !dbg !1917
  br i1 %84, label %70, label %85, !dbg !1918

85:                                               ; preds = %83, %75, %62
  %86 = phi i32 [ %63, %62 ], [ %68, %83 ], [ %79, %75 ], !dbg !1933
  %87 = phi ptr [ %33, %62 ], [ %72, %75 ], [ %72, %83 ], !dbg !1916
  call void @llvm.dbg.value(metadata ptr %87, metadata !1890, metadata !DIExpression()), !dbg !1916
  tail call void @llvm.dbg.value(metadata ptr %87, metadata !1811, metadata !DIExpression()), !dbg !1827
  %88 = sext i32 %86 to i64, !dbg !1934
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
  %102 = call fastcc zeroext i1 @decode_4(ptr noundef %101, i64 noundef %100, ptr noundef nonnull %6, ptr noundef nonnull %7), !dbg !1939
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
  %110 = load i64, ptr %7, align 8, !dbg !1844, !tbaa !1321
  br label %19

111:                                              ; preds = %89, %94, %98, %32
  %112 = phi i1 [ true, %32 ], [ true, %89 ], [ true, %94 ], [ false, %98 ]
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !1812, metadata !DIExpression()), !dbg !1827
  tail call void @llvm.dbg.value(metadata ptr poison, metadata !1811, metadata !DIExpression()), !dbg !1827
  %113 = load i64, ptr %7, align 8, !dbg !1943, !tbaa !1321
  %114 = load i64, ptr %4, align 8, !dbg !1944, !tbaa !1321
  %115 = sub nsw i64 %114, %113, !dbg !1944
  store i64 %115, ptr %4, align 8, !dbg !1944, !tbaa !1321
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #44, !dbg !1945
  ret i1 %112, !dbg !1946
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i1 @decode_4(ptr noalias nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) unnamed_addr #19 !dbg !1947 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1951, metadata !DIExpression()), !dbg !1956
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1952, metadata !DIExpression()), !dbg !1956
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1953, metadata !DIExpression()), !dbg !1956
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1954, metadata !DIExpression()), !dbg !1956
  %5 = icmp slt i64 %1, 2, !dbg !1957
  br i1 %5, label %92, label %6, !dbg !1959

6:                                                ; preds = %4
  %7 = load i8, ptr %0, align 1, !dbg !1960, !tbaa !943
  tail call void @llvm.dbg.value(metadata i8 %7, metadata !1630, metadata !DIExpression()), !dbg !1962
  tail call void @llvm.dbg.value(metadata i8 %7, metadata !1620, metadata !DIExpression()), !dbg !1964
  %8 = zext i8 %7 to i64, !dbg !1966
  %9 = getelementptr inbounds [256 x i8], ptr @base64_to_int, i64 0, i64 %8, !dbg !1967
  %10 = load i8, ptr %9, align 1, !dbg !1967, !tbaa !943
  %11 = icmp sgt i8 %10, -1, !dbg !1968
  br i1 %11, label %12, label %92, !dbg !1969

12:                                               ; preds = %6
  %13 = getelementptr inbounds i8, ptr %0, i64 1, !dbg !1970
  %14 = load i8, ptr %13, align 1, !dbg !1970, !tbaa !943
  tail call void @llvm.dbg.value(metadata i8 %14, metadata !1630, metadata !DIExpression()), !dbg !1971
  tail call void @llvm.dbg.value(metadata i8 %14, metadata !1620, metadata !DIExpression()), !dbg !1973
  %15 = zext i8 %14 to i64, !dbg !1975
  %16 = getelementptr inbounds [256 x i8], ptr @base64_to_int, i64 0, i64 %15, !dbg !1976
  %17 = load i8, ptr %16, align 1, !dbg !1976, !tbaa !943
  %18 = icmp sgt i8 %17, -1, !dbg !1977
  br i1 %18, label %19, label %92, !dbg !1978

19:                                               ; preds = %12
  %20 = load ptr, ptr %2, align 8, !dbg !1979, !tbaa !863
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !1955, metadata !DIExpression()), !dbg !1956
  %21 = load i64, ptr %3, align 8, !dbg !1980, !tbaa !1321
  %22 = icmp eq i64 %21, 0, !dbg !1980
  br i1 %22, label %31, label %23, !dbg !1982

23:                                               ; preds = %19
  %24 = shl i8 %10, 2, !dbg !1983
  %25 = lshr i8 %17, 4, !dbg !1985
  %26 = or i8 %25, %24, !dbg !1986
  %27 = getelementptr inbounds i8, ptr %20, i64 1, !dbg !1987
  tail call void @llvm.dbg.value(metadata ptr %27, metadata !1955, metadata !DIExpression()), !dbg !1956
  store i8 %26, ptr %20, align 1, !dbg !1988, !tbaa !943
  %28 = load i64, ptr %3, align 8, !dbg !1989, !tbaa !1321
  %29 = add nsw i64 %28, -1, !dbg !1989
  store i64 %29, ptr %3, align 8, !dbg !1989, !tbaa !1321
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
  %37 = load i8, ptr %36, align 1, !dbg !1998, !tbaa !943
  %38 = icmp eq i8 %37, 61, !dbg !1999
  br i1 %38, label %39, label %48, !dbg !2000

39:                                               ; preds = %35
  %40 = icmp eq i64 %1, 4, !dbg !2001
  br i1 %40, label %41, label %89, !dbg !2004

41:                                               ; preds = %39
  %42 = getelementptr inbounds i8, ptr %0, i64 3, !dbg !2005
  %43 = load i8, ptr %42, align 1, !dbg !2005, !tbaa !943
  %44 = icmp eq i8 %43, 61, !dbg !2007
  %45 = and i8 %17, 15
  %46 = icmp eq i8 %45, 0
  %47 = and i1 %44, %46, !dbg !2008
  br i1 %47, label %87, label %89, !dbg !2008

48:                                               ; preds = %35
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !1630, metadata !DIExpression()), !dbg !2009
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !1620, metadata !DIExpression()), !dbg !2012
  %49 = zext i8 %37 to i64, !dbg !2014
  %50 = getelementptr inbounds [256 x i8], ptr @base64_to_int, i64 0, i64 %49, !dbg !2015
  %51 = load i8, ptr %50, align 1, !dbg !2015, !tbaa !943
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
  store i8 %57, ptr %33, align 1, !dbg !2024, !tbaa !943
  %59 = load i64, ptr %3, align 8, !dbg !2025, !tbaa !1321
  %60 = add nsw i64 %59, -1, !dbg !2025
  store i64 %60, ptr %3, align 8, !dbg !2025, !tbaa !1321
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
  %68 = load i8, ptr %67, align 1, !dbg !2034, !tbaa !943
  %69 = icmp eq i8 %68, 61, !dbg !2035
  br i1 %69, label %70, label %75, !dbg !2036

70:                                               ; preds = %66
  %71 = icmp eq i64 %1, 4, !dbg !2037
  %72 = and i8 %51, 3
  %73 = icmp eq i8 %72, 0
  %74 = and i1 %71, %73, !dbg !2040
  br i1 %74, label %87, label %89, !dbg !2040

75:                                               ; preds = %66
  tail call void @llvm.dbg.value(metadata i8 %68, metadata !1630, metadata !DIExpression()), !dbg !2041
  tail call void @llvm.dbg.value(metadata i8 %68, metadata !1620, metadata !DIExpression()), !dbg !2044
  %76 = zext i8 %68 to i64, !dbg !2046
  %77 = getelementptr inbounds [256 x i8], ptr @base64_to_int, i64 0, i64 %76, !dbg !2047
  %78 = load i8, ptr %77, align 1, !dbg !2047, !tbaa !943
  %79 = icmp sgt i8 %78, -1, !dbg !2048
  br i1 %79, label %80, label %89, !dbg !2049

80:                                               ; preds = %75
  br i1 %63, label %87, label %81, !dbg !2050

81:                                               ; preds = %80
  %82 = shl i8 %51, 6, !dbg !2051
  %83 = or i8 %78, %82, !dbg !2053
  %84 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !2054
  tail call void @llvm.dbg.value(metadata ptr %84, metadata !1955, metadata !DIExpression()), !dbg !1956
  store i8 %83, ptr %64, align 1, !dbg !2055, !tbaa !943
  %85 = load i64, ptr %3, align 8, !dbg !2056, !tbaa !1321
  %86 = add nsw i64 %85, -1, !dbg !2056
  store i64 %86, ptr %3, align 8, !dbg !2056, !tbaa !1321
  br label %87, !dbg !2057

87:                                               ; preds = %70, %41, %81, %80
  %88 = phi ptr [ %84, %81 ], [ %64, %80 ], [ %33, %41 ], [ %64, %70 ], !dbg !1956
  tail call void @llvm.dbg.value(metadata ptr %88, metadata !1955, metadata !DIExpression()), !dbg !1956
  br label %89, !dbg !2058

89:                                               ; preds = %75, %70, %62, %48, %41, %39, %31, %87
  %90 = phi ptr [ %88, %87 ], [ %33, %31 ], [ %33, %39 ], [ %33, %41 ], [ %33, %48 ], [ %64, %62 ], [ %64, %70 ], [ %64, %75 ]
  %91 = phi i1 [ true, %87 ], [ false, %31 ], [ false, %39 ], [ false, %41 ], [ false, %48 ], [ false, %62 ], [ false, %70 ], [ false, %75 ]
  store ptr %90, ptr %2, align 8, !dbg !1956, !tbaa !863
  br label %92, !dbg !2059

92:                                               ; preds = %89, %6, %12, %4
  %93 = phi i1 [ false, %4 ], [ false, %12 ], [ false, %6 ], [ %91, %89 ], !dbg !1956
  ret i1 %93, !dbg !2059
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2060 ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @base64_decode_alloc_ctx(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nocapture noundef %3, ptr noundef writeonly %4) local_unnamed_addr #20 !dbg !2063 {
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
  store i64 %9, ptr %6, align 8, !dbg !2078, !tbaa !1321, !DIAssignID !2079
  call void @llvm.dbg.assign(metadata i64 %9, metadata !2072, metadata !DIExpression(), metadata !2079, metadata ptr %6, metadata !DIExpression()), !dbg !2074
  call void @llvm.dbg.value(metadata i64 %9, metadata !1787, metadata !DIExpression()), !dbg !2080
  %10 = tail call noalias ptr @malloc(i64 noundef %9) #49, !dbg !2082
  store ptr %10, ptr %3, align 8, !dbg !2083, !tbaa !863
  %11 = icmp eq ptr %10, null, !dbg !2084
  br i1 %11, label %20, label %12, !dbg !2086

12:                                               ; preds = %5
  %13 = call zeroext i1 @base64_decode_ctx(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %10, ptr noundef nonnull %6), !dbg !2087
  br i1 %13, label %16, label %14, !dbg !2089

14:                                               ; preds = %12
  %15 = load ptr, ptr %3, align 8, !dbg !2090, !tbaa !863
  tail call void @free(ptr noundef %15) #44, !dbg !2092
  store ptr null, ptr %3, align 8, !dbg !2093, !tbaa !863
  br label %20, !dbg !2094

16:                                               ; preds = %12
  %17 = icmp eq ptr %4, null, !dbg !2095
  br i1 %17, label %20, label %18, !dbg !2097

18:                                               ; preds = %16
  %19 = load i64, ptr %6, align 8, !dbg !2098, !tbaa !1321
  store i64 %19, ptr %4, align 8, !dbg !2099, !tbaa !1321
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
  store ptr %0, ptr @file_name, align 8, !dbg !2109, !tbaa !863
  ret void, !dbg !2110
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #22 !dbg !2111 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2115, metadata !DIExpression()), !dbg !2116
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !2117, !tbaa !2118
  ret void, !dbg !2120
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #20 !dbg !2121 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !2126, !tbaa !863
  %2 = tail call i32 @close_stream(ptr noundef %1) #44, !dbg !2127
  %3 = icmp eq i32 %2, 0, !dbg !2128
  br i1 %3, label %22, label %4, !dbg !2129

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !2130, !tbaa !2118, !range !2131, !noundef !901
  %6 = icmp eq i8 %5, 0, !dbg !2130
  br i1 %6, label %11, label %7, !dbg !2132

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #47, !dbg !2133
  %9 = load i32, ptr %8, align 4, !dbg !2133, !tbaa !934
  %10 = icmp eq i32 %9, 32, !dbg !2134
  br i1 %10, label %22, label %11, !dbg !2135

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.1.38, i32 noundef 5) #44, !dbg !2136
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !2123, metadata !DIExpression()), !dbg !2137
  %13 = load ptr, ptr @file_name, align 8, !dbg !2138, !tbaa !863
  %14 = icmp eq ptr %13, null, !dbg !2138
  %15 = tail call ptr @__errno_location() #47, !dbg !2140
  %16 = load i32, ptr %15, align 4, !dbg !2140, !tbaa !934
  br i1 %14, label %19, label %17, !dbg !2141

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #44, !dbg !2142
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.39, ptr noundef %18, ptr noundef %12) #44, !dbg !2142
  br label %20, !dbg !2142

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.40, ptr noundef %12) #44, !dbg !2143
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !2144, !tbaa !934
  tail call void @_exit(i32 noundef %21) #46, !dbg !2145
  unreachable, !dbg !2145

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !2146, !tbaa !863
  %24 = tail call i32 @close_stream(ptr noundef %23) #44, !dbg !2148
  %25 = icmp eq i32 %24, 0, !dbg !2149
  br i1 %25, label %28, label %26, !dbg !2150

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !2151, !tbaa !934
  tail call void @_exit(i32 noundef %27) #46, !dbg !2152
  unreachable, !dbg !2152

28:                                               ; preds = %22
  ret void, !dbg !2153
}

; Function Attrs: noreturn
declare !dbg !2154 void @_exit(i32 noundef) local_unnamed_addr #23

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #24 !dbg !2156 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2160, metadata !DIExpression()), !dbg !2164
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2161, metadata !DIExpression()), !dbg !2164
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2162, metadata !DIExpression()), !dbg !2164
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2163, metadata !DIExpression()), !dbg !2164
  tail call fastcc void @flush_stdout(), !dbg !2165
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !2166, !tbaa !863
  %6 = icmp eq ptr %5, null, !dbg !2166
  br i1 %6, label %8, label %7, !dbg !2168

7:                                                ; preds = %4
  tail call void %5() #44, !dbg !2169
  br label %12, !dbg !2169

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !2170, !tbaa !863
  %10 = tail call ptr @getprogname() #45, !dbg !2170
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.51, ptr noundef %10) #44, !dbg !2170
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !2172
  ret void, !dbg !2173
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #20 !dbg !2174 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2176, metadata !DIExpression()), !dbg !2177
  call void @llvm.dbg.value(metadata i32 1, metadata !2178, metadata !DIExpression()), !dbg !2181
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #44, !dbg !2184
  %2 = icmp slt i32 %1, 0, !dbg !2185
  br i1 %2, label %6, label %3, !dbg !2186

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !2187, !tbaa !863
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #44, !dbg !2187
  br label %6, !dbg !2187

6:                                                ; preds = %3, %0
  ret void, !dbg !2188
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #20 !dbg !2189 {
  %5 = alloca [1024 x i8], align 16, !DIAssignID !2195
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2191, metadata !DIExpression()), !dbg !2196
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2192, metadata !DIExpression()), !dbg !2196
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2193, metadata !DIExpression()), !dbg !2196
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2194, metadata !DIExpression()), !dbg !2196
  %6 = load ptr, ptr @stderr, align 8, !dbg !2197, !tbaa !863
  call void @llvm.dbg.value(metadata ptr %6, metadata !2198, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata ptr %2, metadata !2238, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata ptr %3, metadata !2239, metadata !DIExpression()), !dbg !2240
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #44, !dbg !2242
  %8 = load i32, ptr @error_message_count, align 4, !dbg !2243, !tbaa !934
  %9 = add i32 %8, 1, !dbg !2243
  store i32 %9, ptr @error_message_count, align 4, !dbg !2243, !tbaa !934
  %10 = icmp eq i32 %1, 0, !dbg !2244
  br i1 %10, label %20, label %11, !dbg !2246

11:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2247, metadata !DIExpression(), metadata !2195, metadata ptr %5, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata i32 %1, metadata !2250, metadata !DIExpression()), !dbg !2255
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #44, !dbg !2257
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #44, !dbg !2258
  call void @llvm.dbg.value(metadata ptr %12, metadata !2251, metadata !DIExpression()), !dbg !2255
  %13 = icmp eq ptr %12, null, !dbg !2259
  br i1 %13, label %14, label %16, !dbg !2261

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.52, ptr noundef nonnull @.str.5.53, i32 noundef 5) #44, !dbg !2262
  call void @llvm.dbg.value(metadata ptr %15, metadata !2251, metadata !DIExpression()), !dbg !2255
  br label %16, !dbg !2263

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !2255
  call void @llvm.dbg.value(metadata ptr %17, metadata !2251, metadata !DIExpression()), !dbg !2255
  %18 = load ptr, ptr @stderr, align 8, !dbg !2264, !tbaa !863
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.54, ptr noundef %17) #44, !dbg !2264
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #44, !dbg !2265
  br label %20, !dbg !2266

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !2267, !tbaa !863
  call void @llvm.dbg.value(metadata i32 10, metadata !2268, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.value(metadata ptr %21, metadata !2273, metadata !DIExpression()), !dbg !2274
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !2276
  %23 = load ptr, ptr %22, align 8, !dbg !2276, !tbaa !1522
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !2276
  %25 = load ptr, ptr %24, align 8, !dbg !2276, !tbaa !1523
  %26 = icmp ult ptr %23, %25, !dbg !2276
  br i1 %26, label %29, label %27, !dbg !2276, !prof !1524

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #44, !dbg !2276
  br label %31, !dbg !2276

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !2276
  store ptr %30, ptr %22, align 8, !dbg !2276, !tbaa !1522
  store i8 10, ptr %23, align 1, !dbg !2276, !tbaa !943
  br label %31, !dbg !2276

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !2277, !tbaa !863
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #44, !dbg !2277
  %34 = icmp eq i32 %0, 0, !dbg !2278
  br i1 %34, label %36, label %35, !dbg !2280

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #46, !dbg !2281
  unreachable, !dbg !2281

36:                                               ; preds = %31
  ret void, !dbg !2282
}

declare !dbg !2283 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !2286 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !2289 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #20 !dbg !2293 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !2306
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2300, metadata !DIExpression(), metadata !2306, metadata ptr %4, metadata !DIExpression()), !dbg !2307
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2297, metadata !DIExpression()), !dbg !2307
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2298, metadata !DIExpression()), !dbg !2307
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2299, metadata !DIExpression()), !dbg !2307
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #44, !dbg !2308
  call void @llvm.va_start(ptr nonnull %4), !dbg !2309
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #50, !dbg !2310
  call void @llvm.va_end(ptr nonnull %4), !dbg !2311
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #44, !dbg !2312
  ret void, !dbg !2312
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #25

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #24 !dbg !466 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !477, metadata !DIExpression()), !dbg !2313
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !478, metadata !DIExpression()), !dbg !2313
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !479, metadata !DIExpression()), !dbg !2313
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !480, metadata !DIExpression()), !dbg !2313
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !481, metadata !DIExpression()), !dbg !2313
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !482, metadata !DIExpression()), !dbg !2313
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !2314, !tbaa !934
  %8 = icmp eq i32 %7, 0, !dbg !2314
  br i1 %8, label %23, label %9, !dbg !2316

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !2317, !tbaa !934
  %11 = icmp eq i32 %10, %3, !dbg !2320
  br i1 %11, label %12, label %22, !dbg !2321

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !2322, !tbaa !863
  %14 = icmp eq ptr %13, %2, !dbg !2323
  br i1 %14, label %36, label %15, !dbg !2324

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !2325
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !2326
  br i1 %18, label %19, label %22, !dbg !2326

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #45, !dbg !2327
  %21 = icmp eq i32 %20, 0, !dbg !2328
  br i1 %21, label %36, label %22, !dbg !2329

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !2330, !tbaa !863
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !2331, !tbaa !934
  br label %23, !dbg !2332

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !2333
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !2334, !tbaa !863
  %25 = icmp eq ptr %24, null, !dbg !2334
  br i1 %25, label %27, label %26, !dbg !2336

26:                                               ; preds = %23
  tail call void %24() #44, !dbg !2337
  br label %31, !dbg !2337

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !2338, !tbaa !863
  %29 = tail call ptr @getprogname() #45, !dbg !2338
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.57, ptr noundef %29) #44, !dbg !2338
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !2340, !tbaa !863
  %33 = icmp eq ptr %2, null, !dbg !2340
  %34 = select i1 %33, ptr @.str.3.58, ptr @.str.2.59, !dbg !2340
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #44, !dbg !2340
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !2341
  br label %36, !dbg !2342

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !2342
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #20 !dbg !2343 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !2353
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2352, metadata !DIExpression(), metadata !2353, metadata ptr %6, metadata !DIExpression()), !dbg !2354
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2347, metadata !DIExpression()), !dbg !2354
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2348, metadata !DIExpression()), !dbg !2354
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2349, metadata !DIExpression()), !dbg !2354
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2350, metadata !DIExpression()), !dbg !2354
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2351, metadata !DIExpression()), !dbg !2354
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #44, !dbg !2355
  call void @llvm.va_start(ptr nonnull %6), !dbg !2356
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #50, !dbg !2357
  call void @llvm.va_end(ptr nonnull %6), !dbg !2358
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #44, !dbg !2359
  ret void, !dbg !2359
}

; Function Attrs: nounwind uwtable
define dso_local void @fdadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #20 !dbg !2360 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2366, metadata !DIExpression()), !dbg !2370
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2367, metadata !DIExpression()), !dbg !2370
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2368, metadata !DIExpression()), !dbg !2370
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2369, metadata !DIExpression()), !dbg !2370
  %5 = tail call i32 @posix_fadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #44, !dbg !2371
  ret void, !dbg !2372
}

; Function Attrs: nounwind
declare !dbg !2373 i32 @posix_fadvise(i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @fadvise(ptr noundef %0, i32 noundef %1) local_unnamed_addr #20 !dbg !2376 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2414, metadata !DIExpression()), !dbg !2416
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2415, metadata !DIExpression()), !dbg !2416
  %3 = icmp eq ptr %0, null, !dbg !2417
  br i1 %3, label %7, label %4, !dbg !2419

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(ptr noundef nonnull %0) #44, !dbg !2420
  call void @llvm.dbg.value(metadata i32 %5, metadata !2366, metadata !DIExpression()), !dbg !2421
  call void @llvm.dbg.value(metadata i64 0, metadata !2367, metadata !DIExpression()), !dbg !2421
  call void @llvm.dbg.value(metadata i64 0, metadata !2368, metadata !DIExpression()), !dbg !2421
  call void @llvm.dbg.value(metadata i32 %1, metadata !2369, metadata !DIExpression()), !dbg !2421
  %6 = tail call i32 @posix_fadvise(i32 noundef %5, i64 noundef 0, i64 noundef 0, i32 noundef %1) #44, !dbg !2423
  br label %7, !dbg !2424

7:                                                ; preds = %4, %2
  ret void, !dbg !2425
}

; Function Attrs: nofree nounwind
declare !dbg !2426 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #20 !dbg !2429 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2467, metadata !DIExpression()), !dbg !2471
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2468, metadata !DIExpression()), !dbg !2471
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #44, !dbg !2472
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !2469, metadata !DIExpression()), !dbg !2471
  %3 = icmp slt i32 %2, 0, !dbg !2473
  br i1 %3, label %4, label %6, !dbg !2475

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2476
  br label %24, !dbg !2477

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #44, !dbg !2478
  %8 = icmp eq i32 %7, 0, !dbg !2478
  br i1 %8, label %13, label %9, !dbg !2480

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #44, !dbg !2481
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #44, !dbg !2482
  %12 = icmp eq i64 %11, -1, !dbg !2483
  br i1 %12, label %16, label %13, !dbg !2484

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #44, !dbg !2485
  %15 = icmp eq i32 %14, 0, !dbg !2485
  br i1 %15, label %16, label %18, !dbg !2486

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2468, metadata !DIExpression()), !dbg !2471
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2470, metadata !DIExpression()), !dbg !2471
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2487
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !2470, metadata !DIExpression()), !dbg !2471
  br label %24, !dbg !2488

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #47, !dbg !2489
  %20 = load i32, ptr %19, align 4, !dbg !2489, !tbaa !934
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !2468, metadata !DIExpression()), !dbg !2471
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2470, metadata !DIExpression()), !dbg !2471
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2487
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !2470, metadata !DIExpression()), !dbg !2471
  %22 = icmp eq i32 %20, 0, !dbg !2490
  br i1 %22, label %24, label %23, !dbg !2488

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !2492, !tbaa !934
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !2470, metadata !DIExpression()), !dbg !2471
  br label %24, !dbg !2494

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !2471
  ret i32 %25, !dbg !2495
}

; Function Attrs: nofree nounwind
declare !dbg !2496 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !2497 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2499 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #20 !dbg !2502 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2540, metadata !DIExpression()), !dbg !2541
  %2 = icmp eq ptr %0, null, !dbg !2542
  br i1 %2, label %6, label %3, !dbg !2544

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #44, !dbg !2545
  %5 = icmp eq i32 %4, 0, !dbg !2545
  br i1 %5, label %6, label %8, !dbg !2546

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !2547
  br label %16, !dbg !2548

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !2549, metadata !DIExpression()), !dbg !2554
  %9 = load i32, ptr %0, align 8, !dbg !2556, !tbaa !1301
  %10 = and i32 %9, 256, !dbg !2558
  %11 = icmp eq i32 %10, 0, !dbg !2558
  br i1 %11, label %14, label %12, !dbg !2559

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #44, !dbg !2560
  br label %14, !dbg !2560

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !2561
  br label %16, !dbg !2562

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !2541
  ret i32 %17, !dbg !2563
}

; Function Attrs: nofree nounwind
declare !dbg !2564 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @fpurge(ptr noundef nonnull %0) local_unnamed_addr #20 !dbg !2565 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2603, metadata !DIExpression()), !dbg !2604
  tail call void @__fpurge(ptr noundef nonnull %0) #44, !dbg !2605
  ret i32 0, !dbg !2606
}

; Function Attrs: nounwind
declare !dbg !2607 void @__fpurge(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #20 !dbg !2610 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2648, metadata !DIExpression()), !dbg !2654
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2649, metadata !DIExpression()), !dbg !2654
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !2650, metadata !DIExpression()), !dbg !2654
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !2655
  %5 = load ptr, ptr %4, align 8, !dbg !2655, !tbaa !2656
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !2657
  %7 = load ptr, ptr %6, align 8, !dbg !2657, !tbaa !2658
  %8 = icmp eq ptr %5, %7, !dbg !2659
  br i1 %8, label %9, label %27, !dbg !2660

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !2661
  %11 = load ptr, ptr %10, align 8, !dbg !2661, !tbaa !1522
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !2662
  %13 = load ptr, ptr %12, align 8, !dbg !2662, !tbaa !2663
  %14 = icmp eq ptr %11, %13, !dbg !2664
  br i1 %14, label %15, label %27, !dbg !2665

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !2666
  %17 = load ptr, ptr %16, align 8, !dbg !2666, !tbaa !2667
  %18 = icmp eq ptr %17, null, !dbg !2668
  br i1 %18, label %19, label %27, !dbg !2669

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #44, !dbg !2670
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #44, !dbg !2671
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2651, metadata !DIExpression()), !dbg !2672
  %22 = icmp eq i64 %21, -1, !dbg !2673
  br i1 %22, label %29, label %23, !dbg !2675

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !2676, !tbaa !1301
  %25 = and i32 %24, -17, !dbg !2676
  store i32 %25, ptr %0, align 8, !dbg !2676, !tbaa !1301
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !2677
  store i64 %21, ptr %26, align 8, !dbg !2678, !tbaa !2679
  br label %29, !dbg !2680

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !2681
  br label %29, !dbg !2682

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !2654
  ret i32 %30, !dbg !2683
}

; Function Attrs: nofree nounwind
declare !dbg !2684 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #26 !dbg !2687 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !2690, !tbaa !863
  ret ptr %1, !dbg !2691
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #27 !dbg !2692 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2694, metadata !DIExpression()), !dbg !2697
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #45, !dbg !2698
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2695, metadata !DIExpression()), !dbg !2697
  %3 = icmp eq ptr %2, null, !dbg !2699
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2699
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2699
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2696, metadata !DIExpression()), !dbg !2697
  %6 = ptrtoint ptr %5 to i64, !dbg !2700
  %7 = ptrtoint ptr %0 to i64, !dbg !2700
  %8 = sub i64 %6, %7, !dbg !2700
  %9 = icmp sgt i64 %8, 6, !dbg !2702
  br i1 %9, label %10, label %19, !dbg !2703

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !2704
  call void @llvm.dbg.value(metadata ptr %11, metadata !2705, metadata !DIExpression()), !dbg !2712
  call void @llvm.dbg.value(metadata ptr @.str.78, metadata !2710, metadata !DIExpression()), !dbg !2712
  call void @llvm.dbg.value(metadata i64 7, metadata !2711, metadata !DIExpression()), !dbg !2712
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.78, i64 7), !dbg !2714
  %13 = icmp eq i32 %12, 0, !dbg !2715
  br i1 %13, label %14, label %19, !dbg !2716

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2694, metadata !DIExpression()), !dbg !2697
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.79, i64 noundef 3) #45, !dbg !2717
  %16 = icmp eq i32 %15, 0, !dbg !2720
  %17 = select i1 %16, i64 3, i64 0, !dbg !2721
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !2721
  br label %19, !dbg !2721

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2697
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2696, metadata !DIExpression()), !dbg !2697
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !2694, metadata !DIExpression()), !dbg !2697
  store ptr %20, ptr @program_name, align 8, !dbg !2722, !tbaa !863
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2723, !tbaa !863
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2724, !tbaa !863
  ret void, !dbg !2725
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2726 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #28

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #20 !dbg !518 {
  %3 = alloca i32, align 4, !DIAssignID !2727
  call void @llvm.dbg.assign(metadata i1 undef, metadata !528, metadata !DIExpression(), metadata !2727, metadata ptr %3, metadata !DIExpression()), !dbg !2728
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2729
  call void @llvm.dbg.assign(metadata i1 undef, metadata !533, metadata !DIExpression(), metadata !2729, metadata ptr %4, metadata !DIExpression()), !dbg !2728
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !525, metadata !DIExpression()), !dbg !2728
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !526, metadata !DIExpression()), !dbg !2728
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #44, !dbg !2730
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !527, metadata !DIExpression()), !dbg !2728
  %6 = icmp eq ptr %5, %0, !dbg !2731
  br i1 %6, label %7, label %14, !dbg !2733

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #44, !dbg !2734
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #44, !dbg !2735
  call void @llvm.dbg.value(metadata ptr %4, metadata !2736, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata ptr %4, metadata !2745, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata i32 0, metadata !2750, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata i64 8, metadata !2751, metadata !DIExpression()), !dbg !2752
  store i64 0, ptr %4, align 8, !dbg !2754
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #44, !dbg !2755
  %9 = icmp eq i64 %8, 2, !dbg !2757
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2758
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !2728
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #44, !dbg !2759
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #44, !dbg !2759
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !2728
  ret ptr %15, !dbg !2759
}

; Function Attrs: nounwind
declare !dbg !2760 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #20 !dbg !2766 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2771, metadata !DIExpression()), !dbg !2774
  %2 = tail call ptr @__errno_location() #47, !dbg !2775
  %3 = load i32, ptr %2, align 4, !dbg !2775, !tbaa !934
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2772, metadata !DIExpression()), !dbg !2774
  %4 = icmp eq ptr %0, null, !dbg !2776
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2776
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #51, !dbg !2777
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2773, metadata !DIExpression()), !dbg !2774
  store i32 %3, ptr %2, align 4, !dbg !2778, !tbaa !934
  ret ptr %6, !dbg !2779
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #29 !dbg !2780 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2786, metadata !DIExpression()), !dbg !2787
  %2 = icmp eq ptr %0, null, !dbg !2788
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2788
  %4 = load i32, ptr %3, align 8, !dbg !2789, !tbaa !2790
  ret i32 %4, !dbg !2792
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #30 !dbg !2793 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2797, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2798, metadata !DIExpression()), !dbg !2799
  %3 = icmp eq ptr %0, null, !dbg !2800
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2800
  store i32 %1, ptr %4, align 8, !dbg !2801, !tbaa !2790
  ret void, !dbg !2802
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #31 !dbg !2803 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2807, metadata !DIExpression()), !dbg !2815
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2808, metadata !DIExpression()), !dbg !2815
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !2809, metadata !DIExpression()), !dbg !2815
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2810, metadata !DIExpression()), !dbg !2815
  %4 = icmp eq ptr %0, null, !dbg !2816
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2816
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2817
  %7 = lshr i8 %1, 5, !dbg !2818
  %8 = zext nneg i8 %7 to i64, !dbg !2818
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !2819
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2811, metadata !DIExpression()), !dbg !2815
  %10 = and i8 %1, 31, !dbg !2820
  %11 = zext nneg i8 %10 to i32, !dbg !2820
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !2813, metadata !DIExpression()), !dbg !2815
  %12 = load i32, ptr %9, align 4, !dbg !2821, !tbaa !934
  %13 = lshr i32 %12, %11, !dbg !2822
  %14 = and i32 %13, 1, !dbg !2823
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !2814, metadata !DIExpression()), !dbg !2815
  %15 = xor i32 %13, %2, !dbg !2824
  %16 = and i32 %15, 1, !dbg !2824
  %17 = shl nuw i32 %16, %11, !dbg !2825
  %18 = xor i32 %17, %12, !dbg !2826
  store i32 %18, ptr %9, align 4, !dbg !2826, !tbaa !934
  ret i32 %14, !dbg !2827
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #31 !dbg !2828 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2832, metadata !DIExpression()), !dbg !2835
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2833, metadata !DIExpression()), !dbg !2835
  %3 = icmp eq ptr %0, null, !dbg !2836
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2838
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2832, metadata !DIExpression()), !dbg !2835
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !2839
  %6 = load i32, ptr %5, align 4, !dbg !2839, !tbaa !2840
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !2834, metadata !DIExpression()), !dbg !2835
  store i32 %1, ptr %5, align 4, !dbg !2841, !tbaa !2840
  ret i32 %6, !dbg !2842
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #20 !dbg !2843 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2847, metadata !DIExpression()), !dbg !2850
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2848, metadata !DIExpression()), !dbg !2850
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2849, metadata !DIExpression()), !dbg !2850
  %4 = icmp eq ptr %0, null, !dbg !2851
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2853
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2847, metadata !DIExpression()), !dbg !2850
  store i32 10, ptr %5, align 8, !dbg !2854, !tbaa !2790
  %6 = icmp ne ptr %1, null, !dbg !2855
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2857
  br i1 %8, label %10, label %9, !dbg !2857

9:                                                ; preds = %3
  tail call void @abort() #46, !dbg !2858
  unreachable, !dbg !2858

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2859
  store ptr %1, ptr %11, align 8, !dbg !2860, !tbaa !2861
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2862
  store ptr %2, ptr %12, align 8, !dbg !2863, !tbaa !2864
  ret void, !dbg !2865
}

; Function Attrs: noreturn nounwind
declare !dbg !2866 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #20 !dbg !2867 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2871, metadata !DIExpression()), !dbg !2879
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2872, metadata !DIExpression()), !dbg !2879
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2873, metadata !DIExpression()), !dbg !2879
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2874, metadata !DIExpression()), !dbg !2879
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2875, metadata !DIExpression()), !dbg !2879
  %6 = icmp eq ptr %4, null, !dbg !2880
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !2880
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2876, metadata !DIExpression()), !dbg !2879
  %8 = tail call ptr @__errno_location() #47, !dbg !2881
  %9 = load i32, ptr %8, align 4, !dbg !2881, !tbaa !934
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !2877, metadata !DIExpression()), !dbg !2879
  %10 = load i32, ptr %7, align 8, !dbg !2882, !tbaa !2790
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !2883
  %12 = load i32, ptr %11, align 4, !dbg !2883, !tbaa !2840
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !2884
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !2885
  %15 = load ptr, ptr %14, align 8, !dbg !2885, !tbaa !2861
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !2886
  %17 = load ptr, ptr %16, align 8, !dbg !2886, !tbaa !2864
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !2887
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !2878, metadata !DIExpression()), !dbg !2879
  store i32 %9, ptr %8, align 4, !dbg !2888, !tbaa !934
  ret i64 %18, !dbg !2889
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #20 !dbg !2890 {
  %10 = alloca i32, align 4, !DIAssignID !2958
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2959
  %12 = alloca i32, align 4, !DIAssignID !2960
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2961
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2962
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2936, metadata !DIExpression(), metadata !2962, metadata ptr %14, metadata !DIExpression()), !dbg !2963
  %15 = alloca i32, align 4, !DIAssignID !2964
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2939, metadata !DIExpression(), metadata !2964, metadata ptr %15, metadata !DIExpression()), !dbg !2965
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2896, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2897, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2898, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2899, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !2900, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !2901, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2902, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2903, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2904, metadata !DIExpression()), !dbg !2966
  %16 = tail call i64 @__ctype_get_mb_cur_max() #44, !dbg !2967
  %17 = icmp eq i64 %16, 1, !dbg !2968
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !2905, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2966
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2906, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2907, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata ptr null, metadata !2908, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2909, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2910, metadata !DIExpression()), !dbg !2966
  %18 = trunc i32 %5 to i8, !dbg !2969
  %19 = lshr i8 %18, 1, !dbg !2969
  %20 = and i8 %19, 1, !dbg !2969
  tail call void @llvm.dbg.value(metadata i8 %20, metadata !2911, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2912, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2913, metadata !DIExpression()), !dbg !2966
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !2970

28:                                               ; preds = %627, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %627 ]
  %30 = phi ptr [ %7, %9 ], [ %116, %627 ]
  %31 = phi ptr [ %8, %9 ], [ %117, %627 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %627 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %627 ], !dbg !2971
  %34 = phi ptr [ null, %9 ], [ %119, %627 ], !dbg !2972
  %35 = phi i64 [ 0, %9 ], [ %120, %627 ], !dbg !2973
  %36 = phi i8 [ 0, %9 ], [ %121, %627 ], !dbg !2974
  %37 = phi i8 [ %20, %9 ], [ %122, %627 ], !dbg !2966
  %38 = phi i8 [ 0, %9 ], [ %142, %627 ], !dbg !2975
  %39 = phi i8 [ 1, %9 ], [ %143, %627 ], !dbg !2976
  %40 = phi i64 [ %1, %9 ], [ %141, %627 ]
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !2897, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i8 %39, metadata !2913, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i8 %38, metadata !2912, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !2911, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i8 %36, metadata !2910, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !2909, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata ptr %34, metadata !2908, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !2907, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2906, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !2899, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata ptr %31, metadata !2904, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !2903, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !2900, metadata !DIExpression()), !dbg !2966
  call void @llvm.dbg.label(metadata !2914), !dbg !2977
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2915, metadata !DIExpression()), !dbg !2966
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
  ], !dbg !2978

41:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2911, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2900, metadata !DIExpression()), !dbg !2966
  br label %114, !dbg !2979

42:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !2911, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2900, metadata !DIExpression()), !dbg !2966
  %43 = and i8 %37, 1, !dbg !2980
  %44 = icmp eq i8 %43, 0, !dbg !2980
  br i1 %44, label %45, label %114, !dbg !2979

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2982
  br i1 %46, label %114, label %47, !dbg !2985

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !2982, !tbaa !943
  br label %114, !dbg !2982

48:                                               ; preds = %28, %28
  call void @llvm.dbg.assign(metadata i1 undef, metadata !617, metadata !DIExpression(), metadata !2960, metadata ptr %12, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.assign(metadata i1 undef, metadata !618, metadata !DIExpression(), metadata !2961, metadata ptr %13, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.value(metadata ptr @.str.11.92, metadata !614, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.value(metadata i32 %29, metadata !615, metadata !DIExpression()), !dbg !2986
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.93, ptr noundef nonnull @.str.11.92, i32 noundef 5) #44, !dbg !2990
  call void @llvm.dbg.value(metadata ptr %49, metadata !616, metadata !DIExpression()), !dbg !2986
  %50 = icmp eq ptr %49, @.str.11.92, !dbg !2991
  br i1 %50, label %51, label %60, !dbg !2993

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #44, !dbg !2994
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #44, !dbg !2995
  call void @llvm.dbg.value(metadata ptr %13, metadata !2996, metadata !DIExpression()), !dbg !3002
  call void @llvm.dbg.value(metadata ptr %13, metadata !3004, metadata !DIExpression()), !dbg !3009
  call void @llvm.dbg.value(metadata i32 0, metadata !3007, metadata !DIExpression()), !dbg !3009
  call void @llvm.dbg.value(metadata i64 8, metadata !3008, metadata !DIExpression()), !dbg !3009
  store i64 0, ptr %13, align 8, !dbg !3011
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #44, !dbg !3012
  %53 = icmp eq i64 %52, 3, !dbg !3014
  %54 = load i32, ptr %12, align 4
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !3015
  %57 = icmp eq i32 %29, 9, !dbg !3015
  %58 = select i1 %57, ptr @.str.10.94, ptr @.str.12.95, !dbg !3015
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !3015
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #44, !dbg !3016
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #44, !dbg !3016
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !2986
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !2903, metadata !DIExpression()), !dbg !2966
  call void @llvm.dbg.assign(metadata i1 undef, metadata !617, metadata !DIExpression(), metadata !2958, metadata ptr %10, metadata !DIExpression()), !dbg !3017
  call void @llvm.dbg.assign(metadata i1 undef, metadata !618, metadata !DIExpression(), metadata !2959, metadata ptr %11, metadata !DIExpression()), !dbg !3017
  call void @llvm.dbg.value(metadata ptr @.str.12.95, metadata !614, metadata !DIExpression()), !dbg !3017
  call void @llvm.dbg.value(metadata i32 %29, metadata !615, metadata !DIExpression()), !dbg !3017
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.93, ptr noundef nonnull @.str.12.95, i32 noundef 5) #44, !dbg !3019
  call void @llvm.dbg.value(metadata ptr %62, metadata !616, metadata !DIExpression()), !dbg !3017
  %63 = icmp eq ptr %62, @.str.12.95, !dbg !3020
  br i1 %63, label %64, label %73, !dbg !3021

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #44, !dbg !3022
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #44, !dbg !3023
  call void @llvm.dbg.value(metadata ptr %11, metadata !2996, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata ptr %11, metadata !3004, metadata !DIExpression()), !dbg !3026
  call void @llvm.dbg.value(metadata i32 0, metadata !3007, metadata !DIExpression()), !dbg !3026
  call void @llvm.dbg.value(metadata i64 8, metadata !3008, metadata !DIExpression()), !dbg !3026
  store i64 0, ptr %11, align 8, !dbg !3028
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #44, !dbg !3029
  %66 = icmp eq i64 %65, 3, !dbg !3030
  %67 = load i32, ptr %10, align 4
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !3031
  %70 = icmp eq i32 %29, 9, !dbg !3031
  %71 = select i1 %70, ptr @.str.10.94, ptr @.str.12.95, !dbg !3031
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !3031
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #44, !dbg !3032
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #44, !dbg !3032
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !2904, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !2903, metadata !DIExpression()), !dbg !2966
  %76 = and i8 %37, 1, !dbg !3033
  %77 = icmp eq i8 %76, 0, !dbg !3033
  br i1 %77, label %78, label %93, !dbg !3034

78:                                               ; preds = %73
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !2916, metadata !DIExpression()), !dbg !3035
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2906, metadata !DIExpression()), !dbg !2966
  %79 = load i8, ptr %74, align 1, !dbg !3036, !tbaa !943
  %80 = icmp eq i8 %79, 0, !dbg !3038
  br i1 %80, label %93, label %81, !dbg !3038

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  tail call void @llvm.dbg.value(metadata ptr %83, metadata !2916, metadata !DIExpression()), !dbg !3035
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !2906, metadata !DIExpression()), !dbg !2966
  %85 = icmp ult i64 %84, %40, !dbg !3039
  br i1 %85, label %86, label %88, !dbg !3042

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !3039
  store i8 %82, ptr %87, align 1, !dbg !3039, !tbaa !943
  br label %88, !dbg !3039

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !3042
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !2906, metadata !DIExpression()), !dbg !2966
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !3043
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !2916, metadata !DIExpression()), !dbg !3035
  %91 = load i8, ptr %90, align 1, !dbg !3036, !tbaa !943
  %92 = icmp eq i8 %91, 0, !dbg !3038
  br i1 %92, label %93, label %81, !dbg !3038, !llvm.loop !3044

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !3046
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !2906, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2910, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !2908, metadata !DIExpression()), !dbg !2966
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #45, !dbg !3047
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !2909, metadata !DIExpression()), !dbg !2966
  br label %114, !dbg !3048

96:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2910, metadata !DIExpression()), !dbg !2966
  br label %98, !dbg !3049

97:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 undef, metadata !2910, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2911, metadata !DIExpression()), !dbg !2966
  br label %98, !dbg !3050

98:                                               ; preds = %96, %28, %97
  %99 = phi i8 [ %36, %28 ], [ 1, %96 ], [ %36, %97 ], !dbg !2974
  %100 = phi i8 [ %37, %28 ], [ 1, %96 ], [ 1, %97 ], !dbg !2966
  tail call void @llvm.dbg.value(metadata i8 %100, metadata !2911, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i8 %99, metadata !2910, metadata !DIExpression()), !dbg !2966
  %101 = and i8 %100, 1, !dbg !3051
  %102 = icmp eq i8 %101, 0, !dbg !3051
  %103 = select i1 %102, i8 1, i8 %99, !dbg !3053
  br label %104, !dbg !3053

104:                                              ; preds = %98, %28
  %105 = phi i8 [ %36, %28 ], [ %103, %98 ], !dbg !2966
  %106 = phi i8 [ %37, %28 ], [ %100, %98 ], !dbg !2969
  tail call void @llvm.dbg.value(metadata i8 %106, metadata !2911, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i8 %105, metadata !2910, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i32 2, metadata !2900, metadata !DIExpression()), !dbg !2966
  %107 = and i8 %106, 1, !dbg !3054
  %108 = icmp eq i8 %107, 0, !dbg !3054
  br i1 %108, label %109, label %114, !dbg !3056

109:                                              ; preds = %104
  %110 = icmp eq i64 %40, 0, !dbg !3057
  br i1 %110, label %114, label %111, !dbg !3060

111:                                              ; preds = %109
  store i8 39, ptr %0, align 1, !dbg !3057, !tbaa !943
  br label %114, !dbg !3057

112:                                              ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2911, metadata !DIExpression()), !dbg !2966
  br label %114, !dbg !3061

113:                                              ; preds = %28
  call void @abort() #46, !dbg !3062
  unreachable, !dbg !3062

114:                                              ; preds = %41, %104, %111, %109, %28, %42, %47, %45, %112, %93
  %115 = phi i32 [ 0, %112 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %109 ], [ 2, %111 ], [ 2, %104 ], [ 5, %41 ]
  %116 = phi ptr [ %30, %112 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %109 ], [ %30, %111 ], [ %30, %104 ], [ %30, %41 ]
  %117 = phi ptr [ %31, %112 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %109 ], [ %31, %111 ], [ %31, %104 ], [ %31, %41 ]
  %118 = phi i64 [ 0, %112 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %109 ], [ 1, %111 ], [ 0, %104 ], [ 0, %41 ], !dbg !3046
  %119 = phi ptr [ %34, %112 ], [ %75, %93 ], [ @.str.10.94, %45 ], [ @.str.10.94, %47 ], [ @.str.10.94, %42 ], [ %34, %28 ], [ @.str.12.95, %109 ], [ @.str.12.95, %111 ], [ @.str.12.95, %104 ], [ @.str.10.94, %41 ], !dbg !2966
  %120 = phi i64 [ %35, %112 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %109 ], [ 1, %111 ], [ 1, %104 ], [ 1, %41 ], !dbg !2966
  %121 = phi i8 [ %36, %112 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %105, %109 ], [ %105, %111 ], [ %105, %104 ], [ 1, %41 ], !dbg !2966
  %122 = phi i8 [ 0, %112 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %106, %109 ], [ %106, %111 ], [ %106, %104 ], [ 1, %41 ], !dbg !2966
  tail call void @llvm.dbg.value(metadata i8 %122, metadata !2911, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i8 %121, metadata !2910, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i64 %120, metadata !2909, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !2908, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i64 %118, metadata !2906, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata ptr %117, metadata !2904, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata ptr %116, metadata !2903, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i32 %115, metadata !2900, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2921, metadata !DIExpression()), !dbg !3063
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
  br label %138, !dbg !3064

138:                                              ; preds = %602, %114
  %139 = phi i64 [ %32, %114 ], [ %603, %602 ]
  %140 = phi i64 [ %118, %114 ], [ %604, %602 ], !dbg !3046
  %141 = phi i64 [ %33, %114 ], [ %605, %602 ], !dbg !2971
  %142 = phi i8 [ %38, %114 ], [ %606, %602 ], !dbg !2975
  %143 = phi i8 [ %39, %114 ], [ %607, %602 ], !dbg !2976
  %144 = phi i8 [ 0, %114 ], [ %608, %602 ], !dbg !3065
  %145 = phi i64 [ 0, %114 ], [ %611, %602 ], !dbg !3066
  %146 = phi i64 [ %40, %114 ], [ %610, %602 ]
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !2897, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !2921, metadata !DIExpression()), !dbg !3063
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !2915, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !2913, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !2912, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !2907, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2906, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !2899, metadata !DIExpression()), !dbg !2966
  %147 = icmp eq i64 %139, -1, !dbg !3067
  br i1 %147, label %148, label %152, !dbg !3068

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !3069
  %150 = load i8, ptr %149, align 1, !dbg !3069, !tbaa !943
  %151 = icmp eq i8 %150, 0, !dbg !3070
  br i1 %151, label %612, label %154, !dbg !3071

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !3072
  br i1 %153, label %612, label %154, !dbg !3071

154:                                              ; preds = %148, %152
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2923, metadata !DIExpression()), !dbg !3073
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2926, metadata !DIExpression()), !dbg !3073
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2927, metadata !DIExpression()), !dbg !3073
  br i1 %128, label %155, label %170, !dbg !3074

155:                                              ; preds = %154
  %156 = add i64 %145, %120, !dbg !3076
  %157 = select i1 %147, i1 %129, i1 false, !dbg !3077
  br i1 %157, label %158, label %160, !dbg !3077

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #45, !dbg !3078
  tail call void @llvm.dbg.value(metadata i64 %159, metadata !2899, metadata !DIExpression()), !dbg !2966
  br label %160, !dbg !3079

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !3079
  tail call void @llvm.dbg.value(metadata i64 %161, metadata !2899, metadata !DIExpression()), !dbg !2966
  %162 = icmp ugt i64 %156, %161, !dbg !3080
  br i1 %162, label %170, label %163, !dbg !3081

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !3082
  call void @llvm.dbg.value(metadata ptr %164, metadata !3083, metadata !DIExpression()), !dbg !3088
  call void @llvm.dbg.value(metadata ptr %119, metadata !3086, metadata !DIExpression()), !dbg !3088
  call void @llvm.dbg.value(metadata i64 %120, metadata !3087, metadata !DIExpression()), !dbg !3088
  %165 = call i32 @bcmp(ptr %164, ptr %119, i64 %120), !dbg !3090
  %166 = icmp ne i32 %165, 0, !dbg !3091
  %167 = select i1 %166, i1 true, i1 %131, !dbg !3092
  %168 = xor i1 %166, true, !dbg !3092
  %169 = zext i1 %168 to i8, !dbg !3092
  br i1 %167, label %170, label %666, !dbg !3092

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !3073
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !3073
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !2923, metadata !DIExpression()), !dbg !3073
  tail call void @llvm.dbg.value(metadata i64 %171, metadata !2899, metadata !DIExpression()), !dbg !2966
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !3093
  %175 = load i8, ptr %174, align 1, !dbg !3093, !tbaa !943
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !2928, metadata !DIExpression()), !dbg !3073
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
  ], !dbg !3094

176:                                              ; preds = %170
  br i1 %124, label %177, label %225, !dbg !3095

177:                                              ; preds = %176
  br i1 %131, label %178, label %659, !dbg !3096

178:                                              ; preds = %177
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2926, metadata !DIExpression()), !dbg !3073
  %179 = and i8 %144, 1, !dbg !3100
  %180 = icmp eq i8 %179, 0, !dbg !3100
  %181 = select i1 %132, i1 %180, i1 false, !dbg !3100
  br i1 %181, label %182, label %198, !dbg !3100

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !3102
  br i1 %183, label %184, label %186, !dbg !3106

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !3102
  store i8 39, ptr %185, align 1, !dbg !3102, !tbaa !943
  br label %186, !dbg !3102

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !3106
  tail call void @llvm.dbg.value(metadata i64 %187, metadata !2906, metadata !DIExpression()), !dbg !2966
  %188 = icmp ult i64 %187, %146, !dbg !3107
  br i1 %188, label %189, label %191, !dbg !3110

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !3107
  store i8 36, ptr %190, align 1, !dbg !3107, !tbaa !943
  br label %191, !dbg !3107

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !3110
  tail call void @llvm.dbg.value(metadata i64 %192, metadata !2906, metadata !DIExpression()), !dbg !2966
  %193 = icmp ult i64 %192, %146, !dbg !3111
  br i1 %193, label %194, label %196, !dbg !3114

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !3111
  store i8 39, ptr %195, align 1, !dbg !3111, !tbaa !943
  br label %196, !dbg !3111

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !3114
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !2906, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2915, metadata !DIExpression()), !dbg !2966
  br label %198, !dbg !3115

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !2966
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !2966
  tail call void @llvm.dbg.value(metadata i8 %200, metadata !2915, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i64 %199, metadata !2906, metadata !DIExpression()), !dbg !2966
  %201 = icmp ult i64 %199, %146, !dbg !3116
  br i1 %201, label %202, label %204, !dbg !3119

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !3116
  store i8 92, ptr %203, align 1, !dbg !3116, !tbaa !943
  br label %204, !dbg !3116

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !3119
  tail call void @llvm.dbg.value(metadata i64 %205, metadata !2906, metadata !DIExpression()), !dbg !2966
  br i1 %125, label %206, label %476, !dbg !3120

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !3122
  %208 = icmp ult i64 %207, %171, !dbg !3123
  br i1 %208, label %209, label %465, !dbg !3124

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !3125
  %211 = load i8, ptr %210, align 1, !dbg !3125, !tbaa !943
  %212 = add i8 %211, -48, !dbg !3126
  %213 = icmp ult i8 %212, 10, !dbg !3126
  br i1 %213, label %214, label %465, !dbg !3126

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !3127
  br i1 %215, label %216, label %218, !dbg !3131

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !3127
  store i8 48, ptr %217, align 1, !dbg !3127, !tbaa !943
  br label %218, !dbg !3127

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !3131
  tail call void @llvm.dbg.value(metadata i64 %219, metadata !2906, metadata !DIExpression()), !dbg !2966
  %220 = icmp ult i64 %219, %146, !dbg !3132
  br i1 %220, label %221, label %223, !dbg !3135

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !3132
  store i8 48, ptr %222, align 1, !dbg !3132, !tbaa !943
  br label %223, !dbg !3132

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !3135
  tail call void @llvm.dbg.value(metadata i64 %224, metadata !2906, metadata !DIExpression()), !dbg !2966
  br label %465, !dbg !3136

225:                                              ; preds = %176
  br i1 %25, label %476, label %602, !dbg !3137

226:                                              ; preds = %170
  switch i32 %115, label %465 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !3138

227:                                              ; preds = %226
  br i1 %131, label %465, label %655, !dbg !3139

228:                                              ; preds = %226
  br i1 %23, label %465, label %229, !dbg !3141

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !3143
  %231 = icmp ult i64 %230, %171, !dbg !3144
  br i1 %231, label %232, label %465, !dbg !3145

232:                                              ; preds = %229
  %233 = getelementptr i8, ptr %174, i64 1, !dbg !3146
  %234 = load i8, ptr %233, align 1, !dbg !3146, !tbaa !943
  %235 = icmp eq i8 %234, 63, !dbg !3147
  br i1 %235, label %236, label %465, !dbg !3148

236:                                              ; preds = %232
  %237 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !3149
  %238 = load i8, ptr %237, align 1, !dbg !3149, !tbaa !943
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
  ], !dbg !3150

239:                                              ; preds = %236, %236, %236, %236, %236, %236, %236, %236, %236
  br i1 %131, label %240, label %666, !dbg !3151

240:                                              ; preds = %239
  tail call void @llvm.dbg.value(metadata i8 %238, metadata !2928, metadata !DIExpression()), !dbg !3073
  tail call void @llvm.dbg.value(metadata i64 %230, metadata !2921, metadata !DIExpression()), !dbg !3063
  %241 = icmp ult i64 %140, %146, !dbg !3153
  br i1 %241, label %242, label %244, !dbg !3156

242:                                              ; preds = %240
  %243 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !3153
  store i8 63, ptr %243, align 1, !dbg !3153, !tbaa !943
  br label %244, !dbg !3153

244:                                              ; preds = %242, %240
  %245 = add i64 %140, 1, !dbg !3156
  tail call void @llvm.dbg.value(metadata i64 %245, metadata !2906, metadata !DIExpression()), !dbg !2966
  %246 = icmp ult i64 %245, %146, !dbg !3157
  br i1 %246, label %247, label %249, !dbg !3160

247:                                              ; preds = %244
  %248 = getelementptr inbounds i8, ptr %0, i64 %245, !dbg !3157
  store i8 34, ptr %248, align 1, !dbg !3157, !tbaa !943
  br label %249, !dbg !3157

249:                                              ; preds = %247, %244
  %250 = add i64 %140, 2, !dbg !3160
  tail call void @llvm.dbg.value(metadata i64 %250, metadata !2906, metadata !DIExpression()), !dbg !2966
  %251 = icmp ult i64 %250, %146, !dbg !3161
  br i1 %251, label %252, label %254, !dbg !3164

252:                                              ; preds = %249
  %253 = getelementptr inbounds i8, ptr %0, i64 %250, !dbg !3161
  store i8 34, ptr %253, align 1, !dbg !3161, !tbaa !943
  br label %254, !dbg !3161

254:                                              ; preds = %252, %249
  %255 = add i64 %140, 3, !dbg !3164
  tail call void @llvm.dbg.value(metadata i64 %255, metadata !2906, metadata !DIExpression()), !dbg !2966
  %256 = icmp ult i64 %255, %146, !dbg !3165
  br i1 %256, label %257, label %259, !dbg !3168

257:                                              ; preds = %254
  %258 = getelementptr inbounds i8, ptr %0, i64 %255, !dbg !3165
  store i8 63, ptr %258, align 1, !dbg !3165, !tbaa !943
  br label %259, !dbg !3165

259:                                              ; preds = %257, %254
  %260 = add i64 %140, 4, !dbg !3168
  tail call void @llvm.dbg.value(metadata i64 %260, metadata !2906, metadata !DIExpression()), !dbg !2966
  br label %465, !dbg !3169

261:                                              ; preds = %170
  br label %272, !dbg !3170

262:                                              ; preds = %170
  br label %272, !dbg !3171

263:                                              ; preds = %170
  br label %270, !dbg !3172

264:                                              ; preds = %170
  br label %270, !dbg !3173

265:                                              ; preds = %170
  br label %272, !dbg !3174

266:                                              ; preds = %170
  br i1 %132, label %267, label %268, !dbg !3175

267:                                              ; preds = %266
  br i1 %131, label %558, label %655, !dbg !3176

268:                                              ; preds = %266
  br i1 %124, label %269, label %476, !dbg !3179

269:                                              ; preds = %268
  br i1 %135, label %558, label %520, !dbg !3181

270:                                              ; preds = %170, %264, %263
  %271 = phi i8 [ 116, %264 ], [ 114, %263 ], [ 110, %170 ], !dbg !3182
  call void @llvm.dbg.label(metadata !2929), !dbg !3183
  br i1 %133, label %272, label %655, !dbg !3184

272:                                              ; preds = %170, %270, %265, %262, %261
  %273 = phi i8 [ %271, %270 ], [ 118, %265 ], [ 102, %262 ], [ 98, %261 ], [ 97, %170 ], !dbg !3182
  call void @llvm.dbg.label(metadata !2932), !dbg !3186
  br i1 %124, label %520, label %476, !dbg !3187

274:                                              ; preds = %170, %170
  switch i64 %171, label %465 [
    i64 -1, label %275
    i64 1, label %278
  ], !dbg !3188

275:                                              ; preds = %274
  %276 = load i8, ptr %21, align 1, !dbg !3189, !tbaa !943
  %277 = icmp eq i8 %276, 0, !dbg !3191
  br i1 %277, label %278, label %465, !dbg !3192

278:                                              ; preds = %274, %275, %170, %170
  %279 = icmp eq i64 %145, 0, !dbg !3193
  br i1 %279, label %280, label %465, !dbg !3195

280:                                              ; preds = %278, %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2927, metadata !DIExpression()), !dbg !3073
  br label %281, !dbg !3196

281:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %280
  %282 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %280 ], !dbg !3073
  tail call void @llvm.dbg.value(metadata i8 %282, metadata !2927, metadata !DIExpression()), !dbg !3073
  br i1 %133, label %465, label %655, !dbg !3197

283:                                              ; preds = %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2912, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2927, metadata !DIExpression()), !dbg !3073
  br i1 %132, label %284, label %465, !dbg !3199

284:                                              ; preds = %283
  br i1 %131, label %285, label %655, !dbg !3200

285:                                              ; preds = %284
  %286 = icmp eq i64 %146, 0, !dbg !3203
  %287 = icmp ne i64 %141, 0
  %288 = select i1 %286, i1 true, i1 %287, !dbg !3205
  %289 = select i1 %288, i64 %141, i64 %146, !dbg !3205
  %290 = select i1 %288, i64 %146, i64 0, !dbg !3205
  tail call void @llvm.dbg.value(metadata i64 %290, metadata !2897, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i64 %289, metadata !2907, metadata !DIExpression()), !dbg !2966
  %291 = icmp ult i64 %140, %290, !dbg !3206
  br i1 %291, label %292, label %294, !dbg !3209

292:                                              ; preds = %285
  %293 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !3206
  store i8 39, ptr %293, align 1, !dbg !3206, !tbaa !943
  br label %294, !dbg !3206

294:                                              ; preds = %292, %285
  %295 = add i64 %140, 1, !dbg !3209
  tail call void @llvm.dbg.value(metadata i64 %295, metadata !2906, metadata !DIExpression()), !dbg !2966
  %296 = icmp ult i64 %295, %290, !dbg !3210
  br i1 %296, label %297, label %299, !dbg !3213

297:                                              ; preds = %294
  %298 = getelementptr inbounds i8, ptr %0, i64 %295, !dbg !3210
  store i8 92, ptr %298, align 1, !dbg !3210, !tbaa !943
  br label %299, !dbg !3210

299:                                              ; preds = %297, %294
  %300 = add i64 %140, 2, !dbg !3213
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !2906, metadata !DIExpression()), !dbg !2966
  %301 = icmp ult i64 %300, %290, !dbg !3214
  br i1 %301, label %302, label %304, !dbg !3217

302:                                              ; preds = %299
  %303 = getelementptr inbounds i8, ptr %0, i64 %300, !dbg !3214
  store i8 39, ptr %303, align 1, !dbg !3214, !tbaa !943
  br label %304, !dbg !3214

304:                                              ; preds = %302, %299
  %305 = add i64 %140, 3, !dbg !3217
  tail call void @llvm.dbg.value(metadata i64 %305, metadata !2906, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2915, metadata !DIExpression()), !dbg !2966
  br label %465, !dbg !3218

306:                                              ; preds = %170
  br i1 %17, label %307, label %315, !dbg !3219

307:                                              ; preds = %306
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2933, metadata !DIExpression()), !dbg !3220
  %308 = tail call ptr @__ctype_b_loc() #47, !dbg !3221
  %309 = load ptr, ptr %308, align 8, !dbg !3221, !tbaa !863
  %310 = zext i8 %175 to i64
  %311 = getelementptr inbounds i16, ptr %309, i64 %310, !dbg !3221
  %312 = load i16, ptr %311, align 2, !dbg !3221, !tbaa !975
  %313 = and i16 %312, 16384, !dbg !3223
  %314 = icmp ne i16 %313, 0, !dbg !3223
  tail call void @llvm.dbg.value(metadata i16 %312, metadata !2935, metadata !DIExpression(DW_OP_constu, 14, DW_OP_shr, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3220
  br label %355, !dbg !3224

315:                                              ; preds = %306
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #44, !dbg !3225
  call void @llvm.dbg.value(metadata ptr %14, metadata !2996, metadata !DIExpression()), !dbg !3226
  call void @llvm.dbg.value(metadata ptr %14, metadata !3004, metadata !DIExpression()), !dbg !3228
  call void @llvm.dbg.value(metadata i32 0, metadata !3007, metadata !DIExpression()), !dbg !3228
  call void @llvm.dbg.value(metadata i64 8, metadata !3008, metadata !DIExpression()), !dbg !3228
  store i64 0, ptr %14, align 8, !dbg !3230
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2933, metadata !DIExpression()), !dbg !3220
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2935, metadata !DIExpression()), !dbg !3220
  %316 = icmp eq i64 %171, -1, !dbg !3231
  br i1 %316, label %317, label %319, !dbg !3233

317:                                              ; preds = %315
  %318 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #45, !dbg !3234
  tail call void @llvm.dbg.value(metadata i64 %318, metadata !2899, metadata !DIExpression()), !dbg !2966
  br label %319, !dbg !3235

319:                                              ; preds = %315, %317
  %320 = phi i64 [ %318, %317 ], [ %171, %315 ], !dbg !3073
  tail call void @llvm.dbg.value(metadata i64 %320, metadata !2899, metadata !DIExpression()), !dbg !2966
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #44, !dbg !3236
  %321 = sub i64 %320, %145, !dbg !3237
  %322 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %321, ptr noundef nonnull %14) #44, !dbg !3238
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !2943, metadata !DIExpression()), !dbg !2965
  switch i64 %322, label %336 [
    i64 0, label %351
    i64 -1, label %325
    i64 -2, label %323
  ], !dbg !3239

323:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2933, metadata !DIExpression()), !dbg !3220
  %324 = icmp ult i64 %145, %320, !dbg !3240
  br i1 %324, label %326, label %351, !dbg !3242

325:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2935, metadata !DIExpression()), !dbg !3220
  br label %351, !dbg !3243

326:                                              ; preds = %323, %332
  %327 = phi i64 [ %334, %332 ], [ %145, %323 ]
  %328 = phi i64 [ %333, %332 ], [ 0, %323 ]
  tail call void @llvm.dbg.value(metadata i64 %328, metadata !2933, metadata !DIExpression()), !dbg !3220
  %329 = getelementptr inbounds i8, ptr %2, i64 %327, !dbg !3245
  %330 = load i8, ptr %329, align 1, !dbg !3245, !tbaa !943
  %331 = icmp eq i8 %330, 0, !dbg !3242
  br i1 %331, label %351, label %332, !dbg !3246

332:                                              ; preds = %326
  %333 = add i64 %328, 1, !dbg !3247
  tail call void @llvm.dbg.value(metadata i64 %333, metadata !2933, metadata !DIExpression()), !dbg !3220
  %334 = add i64 %333, %145, !dbg !3248
  %335 = icmp eq i64 %333, %321, !dbg !3240
  br i1 %335, label %351, label %326, !dbg !3242, !llvm.loop !3249

336:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2944, metadata !DIExpression()), !dbg !3250
  %337 = icmp ugt i64 %322, 1
  %338 = and i1 %134, %337, !dbg !3251
  %339 = and i1 %338, %132, !dbg !3251
  br i1 %339, label %340, label %347, !dbg !3251

340:                                              ; preds = %336, %344
  %341 = phi i64 [ %345, %344 ], [ 1, %336 ]
  tail call void @llvm.dbg.value(metadata i64 %341, metadata !2944, metadata !DIExpression()), !dbg !3250
  %342 = getelementptr i8, ptr %174, i64 %341, !dbg !3252
  %343 = load i8, ptr %342, align 1, !dbg !3252, !tbaa !943
  switch i8 %343, label %344 [
    i8 91, label %354
    i8 92, label %354
    i8 94, label %354
    i8 96, label %354
    i8 124, label %354
  ], !dbg !3254

344:                                              ; preds = %340
  %345 = add nuw i64 %341, 1, !dbg !3255
  tail call void @llvm.dbg.value(metadata i64 %345, metadata !2944, metadata !DIExpression()), !dbg !3250
  %346 = icmp eq i64 %345, %322, !dbg !3256
  br i1 %346, label %347, label %340, !dbg !3257, !llvm.loop !3258

347:                                              ; preds = %344, %336
  %348 = load i32, ptr %15, align 4, !dbg !3260, !tbaa !934
  call void @llvm.dbg.value(metadata i32 %348, metadata !3262, metadata !DIExpression()), !dbg !3270
  %349 = call i32 @iswprint(i32 noundef %348) #44, !dbg !3272
  %350 = icmp ne i32 %349, 0, !dbg !3273
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2935, metadata !DIExpression()), !dbg !3220
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !2933, metadata !DIExpression()), !dbg !3220
  br label %351, !dbg !3274

351:                                              ; preds = %326, %332, %323, %325, %347, %319
  %352 = phi i64 [ %322, %319 ], [ %322, %347 ], [ 0, %325 ], [ 0, %323 ], [ %328, %326 ], [ %321, %332 ]
  %353 = phi i1 [ true, %319 ], [ %350, %347 ], [ false, %325 ], [ false, %323 ], [ false, %332 ], [ false, %326 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2935, metadata !DIExpression()), !dbg !3220
  tail call void @llvm.dbg.value(metadata i64 %352, metadata !2933, metadata !DIExpression()), !dbg !3220
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #44, !dbg !3275
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #44, !dbg !3276
  br label %355

354:                                              ; preds = %340, %340, %340, %340, %340
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2935, metadata !DIExpression()), !dbg !3220
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2933, metadata !DIExpression()), !dbg !3220
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #44, !dbg !3275
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #44, !dbg !3276
  br label %655

355:                                              ; preds = %351, %307
  %356 = phi i64 [ %171, %307 ], [ %320, %351 ], !dbg !3073
  %357 = phi i64 [ 1, %307 ], [ %352, %351 ], !dbg !3277
  %358 = phi i1 [ %314, %307 ], [ %353, %351 ], !dbg !3277
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2935, metadata !DIExpression()), !dbg !3220
  tail call void @llvm.dbg.value(metadata i64 %357, metadata !2933, metadata !DIExpression()), !dbg !3220
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !2899, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i1 %358, metadata !2927, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3073
  %359 = icmp ult i64 %357, 2, !dbg !3278
  %360 = select i1 %136, i1 true, i1 %358
  %361 = select i1 %359, i1 %360, i1 false, !dbg !3279
  br i1 %361, label %461, label %362, !dbg !3279

362:                                              ; preds = %355
  %363 = add i64 %357, %145, !dbg !3280
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !2952, metadata !DIExpression()), !dbg !3281
  br label %364, !dbg !3282

364:                                              ; preds = %457, %362
  %365 = phi i64 [ %140, %362 ], [ %458, %457 ], !dbg !2966
  %366 = phi i8 [ %144, %362 ], [ %453, %457 ], !dbg !3065
  %367 = phi i64 [ %145, %362 ], [ %432, %457 ], !dbg !3063
  %368 = phi i8 [ %173, %362 ], [ %429, %457 ], !dbg !3073
  %369 = phi i8 [ 0, %362 ], [ %430, %457 ], !dbg !3283
  %370 = phi i8 [ %175, %362 ], [ %460, %457 ], !dbg !3073
  tail call void @llvm.dbg.value(metadata i8 %370, metadata !2928, metadata !DIExpression()), !dbg !3073
  tail call void @llvm.dbg.value(metadata i8 %369, metadata !2926, metadata !DIExpression()), !dbg !3073
  tail call void @llvm.dbg.value(metadata i8 %368, metadata !2923, metadata !DIExpression()), !dbg !3073
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !2921, metadata !DIExpression()), !dbg !3063
  tail call void @llvm.dbg.value(metadata i8 %366, metadata !2915, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i64 %365, metadata !2906, metadata !DIExpression()), !dbg !2966
  br i1 %360, label %417, label %371, !dbg !3284

371:                                              ; preds = %364
  br i1 %131, label %372, label %659, !dbg !3289

372:                                              ; preds = %371
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2926, metadata !DIExpression()), !dbg !3073
  %373 = and i8 %366, 1, !dbg !3292
  %374 = icmp eq i8 %373, 0, !dbg !3292
  %375 = select i1 %132, i1 %374, i1 false, !dbg !3292
  br i1 %375, label %376, label %392, !dbg !3292

376:                                              ; preds = %372
  %377 = icmp ult i64 %365, %146, !dbg !3294
  br i1 %377, label %378, label %380, !dbg !3298

378:                                              ; preds = %376
  %379 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !3294
  store i8 39, ptr %379, align 1, !dbg !3294, !tbaa !943
  br label %380, !dbg !3294

380:                                              ; preds = %378, %376
  %381 = add i64 %365, 1, !dbg !3298
  tail call void @llvm.dbg.value(metadata i64 %381, metadata !2906, metadata !DIExpression()), !dbg !2966
  %382 = icmp ult i64 %381, %146, !dbg !3299
  br i1 %382, label %383, label %385, !dbg !3302

383:                                              ; preds = %380
  %384 = getelementptr inbounds i8, ptr %0, i64 %381, !dbg !3299
  store i8 36, ptr %384, align 1, !dbg !3299, !tbaa !943
  br label %385, !dbg !3299

385:                                              ; preds = %383, %380
  %386 = add i64 %365, 2, !dbg !3302
  tail call void @llvm.dbg.value(metadata i64 %386, metadata !2906, metadata !DIExpression()), !dbg !2966
  %387 = icmp ult i64 %386, %146, !dbg !3303
  br i1 %387, label %388, label %390, !dbg !3306

388:                                              ; preds = %385
  %389 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !3303
  store i8 39, ptr %389, align 1, !dbg !3303, !tbaa !943
  br label %390, !dbg !3303

390:                                              ; preds = %388, %385
  %391 = add i64 %365, 3, !dbg !3306
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !2906, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2915, metadata !DIExpression()), !dbg !2966
  br label %392, !dbg !3307

392:                                              ; preds = %372, %390
  %393 = phi i64 [ %391, %390 ], [ %365, %372 ], !dbg !2966
  %394 = phi i8 [ 1, %390 ], [ %366, %372 ], !dbg !2966
  tail call void @llvm.dbg.value(metadata i8 %394, metadata !2915, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i64 %393, metadata !2906, metadata !DIExpression()), !dbg !2966
  %395 = icmp ult i64 %393, %146, !dbg !3308
  br i1 %395, label %396, label %398, !dbg !3311

396:                                              ; preds = %392
  %397 = getelementptr inbounds i8, ptr %0, i64 %393, !dbg !3308
  store i8 92, ptr %397, align 1, !dbg !3308, !tbaa !943
  br label %398, !dbg !3308

398:                                              ; preds = %396, %392
  %399 = add i64 %393, 1, !dbg !3311
  tail call void @llvm.dbg.value(metadata i64 %399, metadata !2906, metadata !DIExpression()), !dbg !2966
  %400 = icmp ult i64 %399, %146, !dbg !3312
  br i1 %400, label %401, label %405, !dbg !3315

401:                                              ; preds = %398
  %402 = lshr i8 %370, 6
  %403 = or disjoint i8 %402, 48, !dbg !3312
  %404 = getelementptr inbounds i8, ptr %0, i64 %399, !dbg !3312
  store i8 %403, ptr %404, align 1, !dbg !3312, !tbaa !943
  br label %405, !dbg !3312

405:                                              ; preds = %401, %398
  %406 = add i64 %393, 2, !dbg !3315
  tail call void @llvm.dbg.value(metadata i64 %406, metadata !2906, metadata !DIExpression()), !dbg !2966
  %407 = icmp ult i64 %406, %146, !dbg !3316
  br i1 %407, label %408, label %413, !dbg !3319

408:                                              ; preds = %405
  %409 = lshr i8 %370, 3
  %410 = and i8 %409, 7, !dbg !3316
  %411 = or disjoint i8 %410, 48, !dbg !3316
  %412 = getelementptr inbounds i8, ptr %0, i64 %406, !dbg !3316
  store i8 %411, ptr %412, align 1, !dbg !3316, !tbaa !943
  br label %413, !dbg !3316

413:                                              ; preds = %408, %405
  %414 = add i64 %393, 3, !dbg !3319
  tail call void @llvm.dbg.value(metadata i64 %414, metadata !2906, metadata !DIExpression()), !dbg !2966
  %415 = and i8 %370, 7, !dbg !3320
  %416 = or disjoint i8 %415, 48, !dbg !3321
  tail call void @llvm.dbg.value(metadata i8 %416, metadata !2928, metadata !DIExpression()), !dbg !3073
  br label %426, !dbg !3322

417:                                              ; preds = %364
  %418 = and i8 %368, 1, !dbg !3323
  %419 = icmp eq i8 %418, 0, !dbg !3323
  br i1 %419, label %426, label %420, !dbg !3325

420:                                              ; preds = %417
  %421 = icmp ult i64 %365, %146, !dbg !3326
  br i1 %421, label %422, label %424, !dbg !3330

422:                                              ; preds = %420
  %423 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !3326
  store i8 92, ptr %423, align 1, !dbg !3326, !tbaa !943
  br label %424, !dbg !3326

424:                                              ; preds = %422, %420
  %425 = add i64 %365, 1, !dbg !3330
  tail call void @llvm.dbg.value(metadata i64 %425, metadata !2906, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2923, metadata !DIExpression()), !dbg !3073
  br label %426, !dbg !3331

426:                                              ; preds = %417, %424, %413
  %427 = phi i64 [ %425, %424 ], [ %365, %417 ], [ %414, %413 ], !dbg !2966
  %428 = phi i8 [ %366, %424 ], [ %366, %417 ], [ %394, %413 ], !dbg !3065
  %429 = phi i8 [ 0, %424 ], [ %368, %417 ], [ %368, %413 ], !dbg !3073
  %430 = phi i8 [ %369, %424 ], [ %369, %417 ], [ 1, %413 ], !dbg !3073
  %431 = phi i8 [ %370, %424 ], [ %370, %417 ], [ %416, %413 ], !dbg !3073
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !2928, metadata !DIExpression()), !dbg !3073
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !2926, metadata !DIExpression()), !dbg !3073
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !2923, metadata !DIExpression()), !dbg !3073
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !2915, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !2906, metadata !DIExpression()), !dbg !2966
  %432 = add i64 %367, 1, !dbg !3332
  %433 = icmp ugt i64 %363, %432, !dbg !3334
  br i1 %433, label %434, label %463, !dbg !3335

434:                                              ; preds = %426
  %435 = and i8 %428, 1, !dbg !3336
  %436 = icmp ne i8 %435, 0, !dbg !3336
  %437 = and i8 %430, 1, !dbg !3336
  %438 = icmp eq i8 %437, 0, !dbg !3336
  %439 = select i1 %436, i1 %438, i1 false, !dbg !3336
  br i1 %439, label %440, label %451, !dbg !3336

440:                                              ; preds = %434
  %441 = icmp ult i64 %427, %146, !dbg !3339
  br i1 %441, label %442, label %444, !dbg !3343

442:                                              ; preds = %440
  %443 = getelementptr inbounds i8, ptr %0, i64 %427, !dbg !3339
  store i8 39, ptr %443, align 1, !dbg !3339, !tbaa !943
  br label %444, !dbg !3339

444:                                              ; preds = %442, %440
  %445 = add i64 %427, 1, !dbg !3343
  tail call void @llvm.dbg.value(metadata i64 %445, metadata !2906, metadata !DIExpression()), !dbg !2966
  %446 = icmp ult i64 %445, %146, !dbg !3344
  br i1 %446, label %447, label %449, !dbg !3347

447:                                              ; preds = %444
  %448 = getelementptr inbounds i8, ptr %0, i64 %445, !dbg !3344
  store i8 39, ptr %448, align 1, !dbg !3344, !tbaa !943
  br label %449, !dbg !3344

449:                                              ; preds = %447, %444
  %450 = add i64 %427, 2, !dbg !3347
  tail call void @llvm.dbg.value(metadata i64 %450, metadata !2906, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2915, metadata !DIExpression()), !dbg !2966
  br label %451, !dbg !3348

451:                                              ; preds = %434, %449
  %452 = phi i64 [ %450, %449 ], [ %427, %434 ], !dbg !3349
  %453 = phi i8 [ 0, %449 ], [ %428, %434 ], !dbg !2966
  tail call void @llvm.dbg.value(metadata i8 %453, metadata !2915, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i64 %452, metadata !2906, metadata !DIExpression()), !dbg !2966
  %454 = icmp ult i64 %452, %146, !dbg !3350
  br i1 %454, label %455, label %457, !dbg !3353

455:                                              ; preds = %451
  %456 = getelementptr inbounds i8, ptr %0, i64 %452, !dbg !3350
  store i8 %431, ptr %456, align 1, !dbg !3350, !tbaa !943
  br label %457, !dbg !3350

457:                                              ; preds = %455, %451
  %458 = add i64 %452, 1, !dbg !3353
  tail call void @llvm.dbg.value(metadata i64 %458, metadata !2906, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i64 %432, metadata !2921, metadata !DIExpression()), !dbg !3063
  %459 = getelementptr inbounds i8, ptr %2, i64 %432, !dbg !3354
  %460 = load i8, ptr %459, align 1, !dbg !3354, !tbaa !943
  tail call void @llvm.dbg.value(metadata i8 %460, metadata !2928, metadata !DIExpression()), !dbg !3073
  br label %364, !dbg !3355, !llvm.loop !3356

461:                                              ; preds = %355
  %462 = zext i1 %358 to i8, !dbg !3073
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !2928, metadata !DIExpression()), !dbg !3073
  tail call void @llvm.dbg.value(metadata i8 %462, metadata !2927, metadata !DIExpression()), !dbg !3073
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2926, metadata !DIExpression()), !dbg !3073
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !2923, metadata !DIExpression()), !dbg !3073
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !2921, metadata !DIExpression()), !dbg !3063
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !2915, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2906, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !2899, metadata !DIExpression()), !dbg !2966
  br label %465

463:                                              ; preds = %426
  %464 = zext i1 %358 to i8, !dbg !3073
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !2928, metadata !DIExpression()), !dbg !3073
  tail call void @llvm.dbg.value(metadata i8 %464, metadata !2927, metadata !DIExpression()), !dbg !3073
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !2926, metadata !DIExpression()), !dbg !3073
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !2923, metadata !DIExpression()), !dbg !3073
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !2921, metadata !DIExpression()), !dbg !3063
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !2915, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !2906, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !2899, metadata !DIExpression()), !dbg !2966
  br label %558

465:                                              ; preds = %461, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %274, %206, %209, %223, %283, %304, %281, %278, %275, %226, %227, %259, %236, %232, %229, %228
  %466 = phi i64 [ %171, %304 ], [ %171, %283 ], [ %171, %281 ], [ %171, %278 ], [ -1, %275 ], [ %171, %226 ], [ %171, %236 ], [ %171, %259 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %274 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %356, %461 ], !dbg !3359
  %467 = phi i64 [ %305, %304 ], [ %140, %283 ], [ %140, %281 ], [ %140, %278 ], [ %140, %275 ], [ %140, %226 ], [ %140, %236 ], [ %260, %259 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %274 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %461 ], !dbg !2966
  %468 = phi i64 [ %289, %304 ], [ %141, %283 ], [ %141, %281 ], [ %141, %278 ], [ %141, %275 ], [ %141, %226 ], [ %141, %236 ], [ %141, %259 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %274 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %461 ], !dbg !2971
  %469 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %142, %281 ], [ %142, %278 ], [ %142, %275 ], [ %142, %226 ], [ %142, %236 ], [ %142, %259 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %274 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %461 ], !dbg !2966
  %470 = phi i8 [ 0, %304 ], [ %144, %283 ], [ %144, %281 ], [ %144, %278 ], [ %144, %275 ], [ %144, %226 ], [ %144, %236 ], [ %144, %259 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %274 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %461 ], !dbg !2966
  %471 = phi i64 [ %145, %304 ], [ %145, %283 ], [ %145, %281 ], [ %145, %278 ], [ %145, %275 ], [ %145, %226 ], [ %145, %236 ], [ %230, %259 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %274 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %461 ], !dbg !3063
  %472 = phi i8 [ 0, %304 ], [ 0, %283 ], [ 0, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %274 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %461 ], !dbg !3073
  %473 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %282, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %274 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %462, %461 ], !dbg !3073
  %474 = phi i8 [ 39, %304 ], [ 39, %283 ], [ %175, %281 ], [ %175, %278 ], [ %175, %275 ], [ 63, %226 ], [ 63, %236 ], [ %238, %259 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %274 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %461 ], !dbg !3073
  %475 = phi i64 [ %290, %304 ], [ %146, %283 ], [ %146, %281 ], [ %146, %278 ], [ %146, %275 ], [ %146, %226 ], [ %146, %236 ], [ %146, %259 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %274 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %461 ]
  tail call void @llvm.dbg.value(metadata i64 %475, metadata !2897, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i8 %474, metadata !2928, metadata !DIExpression()), !dbg !3073
  tail call void @llvm.dbg.value(metadata i8 %473, metadata !2927, metadata !DIExpression()), !dbg !3073
  tail call void @llvm.dbg.value(metadata i8 %472, metadata !2926, metadata !DIExpression()), !dbg !3073
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !2923, metadata !DIExpression()), !dbg !3073
  tail call void @llvm.dbg.value(metadata i64 %471, metadata !2921, metadata !DIExpression()), !dbg !3063
  tail call void @llvm.dbg.value(metadata i8 %470, metadata !2915, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i8 %469, metadata !2912, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i64 %468, metadata !2907, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i64 %467, metadata !2906, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i64 %466, metadata !2899, metadata !DIExpression()), !dbg !2966
  br i1 %126, label %487, label %476, !dbg !3360

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
  br i1 %137, label %488, label %509, !dbg !3362

487:                                              ; preds = %465
  br i1 %27, label %509, label %488, !dbg !3363

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
  %499 = lshr i8 %490, 5, !dbg !3364
  %500 = zext nneg i8 %499 to i64, !dbg !3364
  %501 = getelementptr inbounds i32, ptr %6, i64 %500, !dbg !3365
  %502 = load i32, ptr %501, align 4, !dbg !3365, !tbaa !934
  %503 = and i8 %490, 31, !dbg !3366
  %504 = zext nneg i8 %503 to i32, !dbg !3366
  %505 = shl nuw i32 1, %504, !dbg !3367
  %506 = and i32 %502, %505, !dbg !3367
  %507 = icmp eq i32 %506, 0, !dbg !3367
  %508 = and i1 %172, %507, !dbg !3368
  br i1 %508, label %558, label %520, !dbg !3368

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
  br i1 %172, label %558, label %520, !dbg !3369

520:                                              ; preds = %269, %272, %509, %488
  %521 = phi i64 [ %498, %488 ], [ %519, %509 ], [ %171, %272 ], [ %171, %269 ], !dbg !3359
  %522 = phi i64 [ %497, %488 ], [ %518, %509 ], [ %140, %272 ], [ %140, %269 ], !dbg !2966
  %523 = phi i64 [ %496, %488 ], [ %517, %509 ], [ %141, %272 ], [ %141, %269 ], !dbg !2971
  %524 = phi i8 [ %495, %488 ], [ %516, %509 ], [ %142, %272 ], [ %142, %269 ], !dbg !2975
  %525 = phi i8 [ %494, %488 ], [ %515, %509 ], [ %144, %272 ], [ %144, %269 ], !dbg !3065
  %526 = phi i64 [ %493, %488 ], [ %514, %509 ], [ %145, %272 ], [ %145, %269 ], !dbg !3370
  %527 = phi i8 [ %491, %488 ], [ %512, %509 ], [ 0, %272 ], [ 0, %269 ], !dbg !3073
  %528 = phi i8 [ %490, %488 ], [ %511, %509 ], [ %273, %272 ], [ 92, %269 ], !dbg !3073
  %529 = phi i64 [ %489, %488 ], [ %510, %509 ], [ %146, %272 ], [ %146, %269 ]
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !2897, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !2928, metadata !DIExpression()), !dbg !3073
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !2927, metadata !DIExpression()), !dbg !3073
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !2921, metadata !DIExpression()), !dbg !3063
  tail call void @llvm.dbg.value(metadata i8 %525, metadata !2915, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !2912, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !2907, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !2906, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !2899, metadata !DIExpression()), !dbg !2966
  call void @llvm.dbg.label(metadata !2955), !dbg !3371
  br i1 %131, label %530, label %659, !dbg !3372

530:                                              ; preds = %520
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2926, metadata !DIExpression()), !dbg !3073
  %531 = and i8 %525, 1, !dbg !3374
  %532 = icmp eq i8 %531, 0, !dbg !3374
  %533 = select i1 %132, i1 %532, i1 false, !dbg !3374
  br i1 %533, label %534, label %550, !dbg !3374

534:                                              ; preds = %530
  %535 = icmp ult i64 %522, %529, !dbg !3376
  br i1 %535, label %536, label %538, !dbg !3380

536:                                              ; preds = %534
  %537 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !3376
  store i8 39, ptr %537, align 1, !dbg !3376, !tbaa !943
  br label %538, !dbg !3376

538:                                              ; preds = %536, %534
  %539 = add i64 %522, 1, !dbg !3380
  tail call void @llvm.dbg.value(metadata i64 %539, metadata !2906, metadata !DIExpression()), !dbg !2966
  %540 = icmp ult i64 %539, %529, !dbg !3381
  br i1 %540, label %541, label %543, !dbg !3384

541:                                              ; preds = %538
  %542 = getelementptr inbounds i8, ptr %0, i64 %539, !dbg !3381
  store i8 36, ptr %542, align 1, !dbg !3381, !tbaa !943
  br label %543, !dbg !3381

543:                                              ; preds = %541, %538
  %544 = add i64 %522, 2, !dbg !3384
  tail call void @llvm.dbg.value(metadata i64 %544, metadata !2906, metadata !DIExpression()), !dbg !2966
  %545 = icmp ult i64 %544, %529, !dbg !3385
  br i1 %545, label %546, label %548, !dbg !3388

546:                                              ; preds = %543
  %547 = getelementptr inbounds i8, ptr %0, i64 %544, !dbg !3385
  store i8 39, ptr %547, align 1, !dbg !3385, !tbaa !943
  br label %548, !dbg !3385

548:                                              ; preds = %546, %543
  %549 = add i64 %522, 3, !dbg !3388
  tail call void @llvm.dbg.value(metadata i64 %549, metadata !2906, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2915, metadata !DIExpression()), !dbg !2966
  br label %550, !dbg !3389

550:                                              ; preds = %530, %548
  %551 = phi i64 [ %549, %548 ], [ %522, %530 ], !dbg !3073
  %552 = phi i8 [ 1, %548 ], [ %525, %530 ], !dbg !2966
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !2915, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i64 %551, metadata !2906, metadata !DIExpression()), !dbg !2966
  %553 = icmp ult i64 %551, %529, !dbg !3390
  br i1 %553, label %554, label %556, !dbg !3393

554:                                              ; preds = %550
  %555 = getelementptr inbounds i8, ptr %0, i64 %551, !dbg !3390
  store i8 92, ptr %555, align 1, !dbg !3390, !tbaa !943
  br label %556, !dbg !3390

556:                                              ; preds = %550, %554
  %557 = add i64 %551, 1, !dbg !3393
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !2897, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !2928, metadata !DIExpression()), !dbg !3073
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !2927, metadata !DIExpression()), !dbg !3073
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2926, metadata !DIExpression()), !dbg !3073
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !2921, metadata !DIExpression()), !dbg !3063
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !2915, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !2912, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !2907, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i64 %557, metadata !2906, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !2899, metadata !DIExpression()), !dbg !2966
  call void @llvm.dbg.label(metadata !2956), !dbg !3394
  br label %585, !dbg !3395

558:                                              ; preds = %463, %488, %267, %269, %509
  %559 = phi i64 [ %356, %463 ], [ %519, %509 ], [ %171, %267 ], [ %171, %269 ], [ %498, %488 ], !dbg !3359
  %560 = phi i64 [ %427, %463 ], [ %518, %509 ], [ %140, %267 ], [ %140, %269 ], [ %497, %488 ], !dbg !2966
  %561 = phi i64 [ %141, %463 ], [ %517, %509 ], [ %141, %267 ], [ %141, %269 ], [ %496, %488 ], !dbg !2971
  %562 = phi i8 [ %142, %463 ], [ %516, %509 ], [ %142, %267 ], [ %142, %269 ], [ %495, %488 ], !dbg !2975
  %563 = phi i8 [ %428, %463 ], [ %515, %509 ], [ %144, %267 ], [ %144, %269 ], [ %494, %488 ], !dbg !3065
  %564 = phi i64 [ %367, %463 ], [ %514, %509 ], [ %145, %267 ], [ %145, %269 ], [ %493, %488 ], !dbg !3370
  %565 = phi i8 [ %430, %463 ], [ %513, %509 ], [ 0, %267 ], [ 0, %269 ], [ %492, %488 ], !dbg !3073
  %566 = phi i8 [ %464, %463 ], [ %512, %509 ], [ 0, %267 ], [ 0, %269 ], [ %491, %488 ], !dbg !3073
  %567 = phi i8 [ %431, %463 ], [ %511, %509 ], [ 92, %267 ], [ 92, %269 ], [ %490, %488 ], !dbg !3398
  %568 = phi i64 [ %146, %463 ], [ %510, %509 ], [ %146, %267 ], [ %146, %269 ], [ %489, %488 ]
  tail call void @llvm.dbg.value(metadata i64 %568, metadata !2897, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i8 %567, metadata !2928, metadata !DIExpression()), !dbg !3073
  tail call void @llvm.dbg.value(metadata i8 %566, metadata !2927, metadata !DIExpression()), !dbg !3073
  tail call void @llvm.dbg.value(metadata i8 %565, metadata !2926, metadata !DIExpression()), !dbg !3073
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !2921, metadata !DIExpression()), !dbg !3063
  tail call void @llvm.dbg.value(metadata i8 %563, metadata !2915, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i8 %562, metadata !2912, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !2907, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i64 %560, metadata !2906, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i64 %559, metadata !2899, metadata !DIExpression()), !dbg !2966
  call void @llvm.dbg.label(metadata !2956), !dbg !3394
  %569 = and i8 %563, 1, !dbg !3395
  %570 = icmp ne i8 %569, 0, !dbg !3395
  %571 = and i8 %565, 1, !dbg !3395
  %572 = icmp eq i8 %571, 0, !dbg !3395
  %573 = select i1 %570, i1 %572, i1 false, !dbg !3395
  br i1 %573, label %574, label %585, !dbg !3395

574:                                              ; preds = %558
  %575 = icmp ult i64 %560, %568, !dbg !3399
  br i1 %575, label %576, label %578, !dbg !3403

576:                                              ; preds = %574
  %577 = getelementptr inbounds i8, ptr %0, i64 %560, !dbg !3399
  store i8 39, ptr %577, align 1, !dbg !3399, !tbaa !943
  br label %578, !dbg !3399

578:                                              ; preds = %576, %574
  %579 = add i64 %560, 1, !dbg !3403
  tail call void @llvm.dbg.value(metadata i64 %579, metadata !2906, metadata !DIExpression()), !dbg !2966
  %580 = icmp ult i64 %579, %568, !dbg !3404
  br i1 %580, label %581, label %583, !dbg !3407

581:                                              ; preds = %578
  %582 = getelementptr inbounds i8, ptr %0, i64 %579, !dbg !3404
  store i8 39, ptr %582, align 1, !dbg !3404, !tbaa !943
  br label %583, !dbg !3404

583:                                              ; preds = %581, %578
  %584 = add i64 %560, 2, !dbg !3407
  tail call void @llvm.dbg.value(metadata i64 %584, metadata !2906, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2915, metadata !DIExpression()), !dbg !2966
  br label %585, !dbg !3408

585:                                              ; preds = %556, %558, %583
  %586 = phi i64 [ %568, %583 ], [ %568, %558 ], [ %529, %556 ]
  %587 = phi i8 [ %567, %583 ], [ %567, %558 ], [ %528, %556 ]
  %588 = phi i8 [ %566, %583 ], [ %566, %558 ], [ %527, %556 ]
  %589 = phi i64 [ %564, %583 ], [ %564, %558 ], [ %526, %556 ]
  %590 = phi i8 [ %562, %583 ], [ %562, %558 ], [ %524, %556 ]
  %591 = phi i64 [ %561, %583 ], [ %561, %558 ], [ %523, %556 ]
  %592 = phi i64 [ %559, %583 ], [ %559, %558 ], [ %521, %556 ]
  %593 = phi i64 [ %584, %583 ], [ %560, %558 ], [ %557, %556 ], !dbg !3073
  %594 = phi i8 [ 0, %583 ], [ %563, %558 ], [ %552, %556 ], !dbg !2966
  tail call void @llvm.dbg.value(metadata i8 %594, metadata !2915, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i64 %593, metadata !2906, metadata !DIExpression()), !dbg !2966
  %595 = icmp ult i64 %593, %586, !dbg !3409
  br i1 %595, label %596, label %598, !dbg !3412

596:                                              ; preds = %585
  %597 = getelementptr inbounds i8, ptr %0, i64 %593, !dbg !3409
  store i8 %587, ptr %597, align 1, !dbg !3409, !tbaa !943
  br label %598, !dbg !3409

598:                                              ; preds = %596, %585
  %599 = add i64 %593, 1, !dbg !3412
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !2906, metadata !DIExpression()), !dbg !2966
  %600 = icmp eq i8 %588, 0, !dbg !3413
  %601 = select i1 %600, i8 0, i8 %143, !dbg !3415
  tail call void @llvm.dbg.value(metadata i8 %601, metadata !2913, metadata !DIExpression()), !dbg !2966
  br label %602, !dbg !3416

602:                                              ; preds = %225, %598
  %603 = phi i64 [ %592, %598 ], [ %171, %225 ], !dbg !3359
  %604 = phi i64 [ %599, %598 ], [ %140, %225 ], !dbg !2966
  %605 = phi i64 [ %591, %598 ], [ %141, %225 ], !dbg !2971
  %606 = phi i8 [ %590, %598 ], [ %142, %225 ], !dbg !2975
  %607 = phi i8 [ %601, %598 ], [ %143, %225 ], !dbg !2976
  %608 = phi i8 [ %594, %598 ], [ %144, %225 ], !dbg !3065
  %609 = phi i64 [ %589, %598 ], [ %145, %225 ], !dbg !3370
  %610 = phi i64 [ %586, %598 ], [ %146, %225 ]
  tail call void @llvm.dbg.value(metadata i64 %610, metadata !2897, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !2921, metadata !DIExpression()), !dbg !3063
  tail call void @llvm.dbg.value(metadata i8 %608, metadata !2915, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i8 %607, metadata !2913, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i8 %606, metadata !2912, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i64 %605, metadata !2907, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !2906, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i64 %603, metadata !2899, metadata !DIExpression()), !dbg !2966
  %611 = add i64 %609, 1, !dbg !3417
  tail call void @llvm.dbg.value(metadata i64 %611, metadata !2921, metadata !DIExpression()), !dbg !3063
  br label %138, !dbg !3418, !llvm.loop !3419

612:                                              ; preds = %152, %148
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !2897, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !2913, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !2912, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !2907, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2906, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !2899, metadata !DIExpression()), !dbg !2966
  %613 = icmp eq i64 %140, 0, !dbg !3421
  %614 = and i1 %132, %613, !dbg !3423
  %615 = xor i1 %614, true, !dbg !3423
  %616 = select i1 %615, i1 true, i1 %131, !dbg !3423
  br i1 %616, label %617, label %655, !dbg !3423

617:                                              ; preds = %612
  %618 = select i1 %132, i1 %131, i1 false, !dbg !3424
  %619 = and i8 %142, 1
  %620 = icmp ne i8 %619, 0
  %621 = select i1 %618, i1 %620, i1 false, !dbg !3424
  br i1 %621, label %622, label %631, !dbg !3424

622:                                              ; preds = %617
  %623 = and i8 %143, 1, !dbg !3426
  %624 = icmp eq i8 %623, 0, !dbg !3426
  br i1 %624, label %627, label %625, !dbg !3429

625:                                              ; preds = %622
  %626 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %116, ptr noundef %117), !dbg !3430
  br label %672, !dbg !3431

627:                                              ; preds = %622
  %628 = icmp eq i64 %146, 0, !dbg !3432
  %629 = icmp ne i64 %141, 0
  %630 = select i1 %628, i1 %629, i1 false, !dbg !3434
  br i1 %630, label %28, label %631, !dbg !3434

631:                                              ; preds = %627, %617
  %632 = phi i1 [ true, %627 ], [ %131, %617 ]
  %633 = icmp ne ptr %119, null, !dbg !3435
  %634 = select i1 %633, i1 %632, i1 false, !dbg !3437
  br i1 %634, label %635, label %650, !dbg !3437

635:                                              ; preds = %631
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !2908, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2906, metadata !DIExpression()), !dbg !2966
  %636 = load i8, ptr %119, align 1, !dbg !3438, !tbaa !943
  %637 = icmp eq i8 %636, 0, !dbg !3441
  br i1 %637, label %650, label %638, !dbg !3441

638:                                              ; preds = %635, %645
  %639 = phi i8 [ %648, %645 ], [ %636, %635 ]
  %640 = phi ptr [ %647, %645 ], [ %119, %635 ]
  %641 = phi i64 [ %646, %645 ], [ %140, %635 ]
  tail call void @llvm.dbg.value(metadata ptr %640, metadata !2908, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i64 %641, metadata !2906, metadata !DIExpression()), !dbg !2966
  %642 = icmp ult i64 %641, %146, !dbg !3442
  br i1 %642, label %643, label %645, !dbg !3445

643:                                              ; preds = %638
  %644 = getelementptr inbounds i8, ptr %0, i64 %641, !dbg !3442
  store i8 %639, ptr %644, align 1, !dbg !3442, !tbaa !943
  br label %645, !dbg !3442

645:                                              ; preds = %643, %638
  %646 = add i64 %641, 1, !dbg !3445
  tail call void @llvm.dbg.value(metadata i64 %646, metadata !2906, metadata !DIExpression()), !dbg !2966
  %647 = getelementptr inbounds i8, ptr %640, i64 1, !dbg !3446
  tail call void @llvm.dbg.value(metadata ptr %647, metadata !2908, metadata !DIExpression()), !dbg !2966
  %648 = load i8, ptr %647, align 1, !dbg !3438, !tbaa !943
  %649 = icmp eq i8 %648, 0, !dbg !3441
  br i1 %649, label %650, label %638, !dbg !3441, !llvm.loop !3447

650:                                              ; preds = %645, %635, %631
  %651 = phi i64 [ %140, %631 ], [ %140, %635 ], [ %646, %645 ], !dbg !3046
  tail call void @llvm.dbg.value(metadata i64 %651, metadata !2906, metadata !DIExpression()), !dbg !2966
  %652 = icmp ult i64 %651, %146, !dbg !3449
  br i1 %652, label %653, label %672, !dbg !3451

653:                                              ; preds = %650
  %654 = getelementptr inbounds i8, ptr %0, i64 %651, !dbg !3452
  store i8 0, ptr %654, align 1, !dbg !3453, !tbaa !943
  br label %672, !dbg !3452

655:                                              ; preds = %612, %227, %267, %270, %281, %284, %354
  %656 = phi i64 [ %320, %354 ], [ %171, %284 ], [ %171, %281 ], [ %171, %270 ], [ %171, %267 ], [ %171, %227 ], [ %139, %612 ]
  call void @llvm.dbg.label(metadata !2957), !dbg !3454
  %657 = icmp eq i8 %123, 0, !dbg !3455
  %658 = select i1 %657, i32 2, i32 4, !dbg !3455
  br label %666, !dbg !3455

659:                                              ; preds = %520, %177, %371
  %660 = phi i64 [ %146, %371 ], [ %529, %520 ], [ %146, %177 ]
  %661 = phi i64 [ %356, %371 ], [ %521, %520 ], [ %171, %177 ]
  call void @llvm.dbg.label(metadata !2957), !dbg !3454
  %662 = icmp eq i32 %115, 2, !dbg !3457
  %663 = icmp eq i8 %123, 0, !dbg !3455
  %664 = select i1 %663, i32 2, i32 4, !dbg !3455
  %665 = select i1 %662, i32 %664, i32 %115, !dbg !3455
  br label %666, !dbg !3455

666:                                              ; preds = %239, %163, %659, %655
  %667 = phi i64 [ %656, %655 ], [ %661, %659 ], [ %161, %163 ], [ %171, %239 ]
  %668 = phi i64 [ %146, %655 ], [ %660, %659 ], [ %146, %163 ], [ %146, %239 ]
  %669 = phi i32 [ %658, %655 ], [ %665, %659 ], [ %115, %163 ], [ 5, %239 ]
  tail call void @llvm.dbg.value(metadata i32 %669, metadata !2900, metadata !DIExpression()), !dbg !2966
  %670 = and i32 %5, -3, !dbg !3458
  %671 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %668, ptr noundef %2, i64 noundef %667, i32 noundef %669, i32 noundef %670, ptr noundef null, ptr noundef %116, ptr noundef %117), !dbg !3459
  br label %672, !dbg !3460

672:                                              ; preds = %650, %653, %666, %625
  %673 = phi i64 [ %671, %666 ], [ %626, %625 ], [ %651, %653 ], [ %651, %650 ]
  ret i64 %673, !dbg !3461
}

; Function Attrs: nounwind
declare !dbg !3462 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !3465 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !3468 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #20 !dbg !3470 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3474, metadata !DIExpression()), !dbg !3477
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3475, metadata !DIExpression()), !dbg !3477
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3476, metadata !DIExpression()), !dbg !3477
  call void @llvm.dbg.value(metadata ptr %0, metadata !3478, metadata !DIExpression()), !dbg !3491
  call void @llvm.dbg.value(metadata i64 %1, metadata !3483, metadata !DIExpression()), !dbg !3491
  call void @llvm.dbg.value(metadata ptr null, metadata !3484, metadata !DIExpression()), !dbg !3491
  call void @llvm.dbg.value(metadata ptr %2, metadata !3485, metadata !DIExpression()), !dbg !3491
  %4 = icmp eq ptr %2, null, !dbg !3493
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !3493
  call void @llvm.dbg.value(metadata ptr %5, metadata !3486, metadata !DIExpression()), !dbg !3491
  %6 = tail call ptr @__errno_location() #47, !dbg !3494
  %7 = load i32, ptr %6, align 4, !dbg !3494, !tbaa !934
  call void @llvm.dbg.value(metadata i32 %7, metadata !3487, metadata !DIExpression()), !dbg !3491
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !3495
  %9 = load i32, ptr %8, align 4, !dbg !3495, !tbaa !2840
  %10 = or i32 %9, 1, !dbg !3496
  call void @llvm.dbg.value(metadata i32 %10, metadata !3488, metadata !DIExpression()), !dbg !3491
  %11 = load i32, ptr %5, align 8, !dbg !3497, !tbaa !2790
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3498
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3499
  %14 = load ptr, ptr %13, align 8, !dbg !3499, !tbaa !2861
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3500
  %16 = load ptr, ptr %15, align 8, !dbg !3500, !tbaa !2864
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !3501
  %18 = add i64 %17, 1, !dbg !3502
  call void @llvm.dbg.value(metadata i64 %18, metadata !3489, metadata !DIExpression()), !dbg !3491
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #49, !dbg !3503
  call void @llvm.dbg.value(metadata ptr %19, metadata !3490, metadata !DIExpression()), !dbg !3491
  %20 = load i32, ptr %5, align 8, !dbg !3504, !tbaa !2790
  %21 = load ptr, ptr %13, align 8, !dbg !3505, !tbaa !2861
  %22 = load ptr, ptr %15, align 8, !dbg !3506, !tbaa !2864
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !3507
  store i32 %7, ptr %6, align 4, !dbg !3508, !tbaa !934
  ret ptr %19, !dbg !3509
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #20 !dbg !3479 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3478, metadata !DIExpression()), !dbg !3510
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3483, metadata !DIExpression()), !dbg !3510
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3484, metadata !DIExpression()), !dbg !3510
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3485, metadata !DIExpression()), !dbg !3510
  %5 = icmp eq ptr %3, null, !dbg !3511
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !3511
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3486, metadata !DIExpression()), !dbg !3510
  %7 = tail call ptr @__errno_location() #47, !dbg !3512
  %8 = load i32, ptr %7, align 4, !dbg !3512, !tbaa !934
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !3487, metadata !DIExpression()), !dbg !3510
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !3513
  %10 = load i32, ptr %9, align 4, !dbg !3513, !tbaa !2840
  %11 = icmp eq ptr %2, null, !dbg !3514
  %12 = zext i1 %11 to i32, !dbg !3514
  %13 = or i32 %10, %12, !dbg !3515
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !3488, metadata !DIExpression()), !dbg !3510
  %14 = load i32, ptr %6, align 8, !dbg !3516, !tbaa !2790
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !3517
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3518
  %17 = load ptr, ptr %16, align 8, !dbg !3518, !tbaa !2861
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3519
  %19 = load ptr, ptr %18, align 8, !dbg !3519, !tbaa !2864
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !3520
  %21 = add i64 %20, 1, !dbg !3521
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !3489, metadata !DIExpression()), !dbg !3510
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #49, !dbg !3522
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !3490, metadata !DIExpression()), !dbg !3510
  %23 = load i32, ptr %6, align 8, !dbg !3523, !tbaa !2790
  %24 = load ptr, ptr %16, align 8, !dbg !3524, !tbaa !2861
  %25 = load ptr, ptr %18, align 8, !dbg !3525, !tbaa !2864
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !3526
  store i32 %8, ptr %7, align 4, !dbg !3527, !tbaa !934
  br i1 %11, label %28, label %27, !dbg !3528

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !3529, !tbaa !1321
  br label %28, !dbg !3531

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !3532
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #20 !dbg !3533 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !3538, !tbaa !863
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3535, metadata !DIExpression()), !dbg !3539
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3536, metadata !DIExpression()), !dbg !3540
  %2 = load i32, ptr @nslots, align 4, !tbaa !934
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3536, metadata !DIExpression()), !dbg !3540
  %3 = icmp sgt i32 %2, 1, !dbg !3541
  br i1 %3, label %4, label %6, !dbg !3543

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !3541
  br label %10, !dbg !3543

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !3544
  %8 = load ptr, ptr %7, align 8, !dbg !3544, !tbaa !3546
  %9 = icmp eq ptr %8, @slot0, !dbg !3548
  br i1 %9, label %17, label %16, !dbg !3549

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3536, metadata !DIExpression()), !dbg !3540
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !3550
  %13 = load ptr, ptr %12, align 8, !dbg !3550, !tbaa !3546
  tail call void @free(ptr noundef %13) #44, !dbg !3551
  %14 = add nuw nsw i64 %11, 1, !dbg !3552
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !3536, metadata !DIExpression()), !dbg !3540
  %15 = icmp eq i64 %14, %5, !dbg !3541
  br i1 %15, label %6, label %10, !dbg !3543, !llvm.loop !3553

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #44, !dbg !3555
  store i64 256, ptr @slotvec0, align 8, !dbg !3557, !tbaa !3558
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !3559, !tbaa !3546
  br label %17, !dbg !3560

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !3561
  br i1 %18, label %20, label %19, !dbg !3563

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #44, !dbg !3564
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !3566, !tbaa !863
  br label %20, !dbg !3567

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !3568, !tbaa !934
  ret void, !dbg !3569
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #20 !dbg !3570 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3572, metadata !DIExpression()), !dbg !3574
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3573, metadata !DIExpression()), !dbg !3574
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3575
  ret ptr %3, !dbg !3576
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #20 !dbg !3577 {
  %5 = alloca i64, align 8, !DIAssignID !3597
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3591, metadata !DIExpression(), metadata !3597, metadata ptr %5, metadata !DIExpression()), !dbg !3598
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3581, metadata !DIExpression()), !dbg !3599
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3582, metadata !DIExpression()), !dbg !3599
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3583, metadata !DIExpression()), !dbg !3599
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3584, metadata !DIExpression()), !dbg !3599
  %6 = tail call ptr @__errno_location() #47, !dbg !3600
  %7 = load i32, ptr %6, align 4, !dbg !3600, !tbaa !934
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !3585, metadata !DIExpression()), !dbg !3599
  %8 = load ptr, ptr @slotvec, align 8, !dbg !3601, !tbaa !863
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !3586, metadata !DIExpression()), !dbg !3599
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !3587, metadata !DIExpression()), !dbg !3599
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3602
  br i1 %9, label %10, label %11, !dbg !3602

10:                                               ; preds = %4
  tail call void @abort() #46, !dbg !3604
  unreachable, !dbg !3604

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !3605, !tbaa !934
  %13 = icmp sgt i32 %12, %0, !dbg !3606
  br i1 %13, label %32, label %14, !dbg !3607

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3608
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !3588, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3598
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #44, !dbg !3609
  %16 = sext i32 %12 to i64, !dbg !3610
  store i64 %16, ptr %5, align 8, !dbg !3611, !tbaa !1321, !DIAssignID !3612
  call void @llvm.dbg.assign(metadata i64 %16, metadata !3591, metadata !DIExpression(), metadata !3612, metadata ptr %5, metadata !DIExpression()), !dbg !3598
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3613
  %18 = add nuw nsw i32 %0, 1, !dbg !3614
  %19 = sub i32 %18, %12, !dbg !3615
  %20 = sext i32 %19 to i64, !dbg !3616
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #44, !dbg !3617
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !3586, metadata !DIExpression()), !dbg !3599
  store ptr %21, ptr @slotvec, align 8, !dbg !3618, !tbaa !863
  br i1 %15, label %22, label %23, !dbg !3619

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3620, !tbaa.struct !3622
  br label %23, !dbg !3623

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3624, !tbaa !934
  %25 = sext i32 %24 to i64, !dbg !3625
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !3625
  %27 = load i64, ptr %5, align 8, !dbg !3626, !tbaa !1321
  %28 = sub nsw i64 %27, %25, !dbg !3627
  %29 = shl i64 %28, 4, !dbg !3628
  call void @llvm.dbg.value(metadata ptr %26, metadata !3004, metadata !DIExpression()), !dbg !3629
  call void @llvm.dbg.value(metadata i32 0, metadata !3007, metadata !DIExpression()), !dbg !3629
  call void @llvm.dbg.value(metadata i64 %29, metadata !3008, metadata !DIExpression()), !dbg !3629
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #44, !dbg !3631
  %30 = load i64, ptr %5, align 8, !dbg !3632, !tbaa !1321
  %31 = trunc i64 %30 to i32, !dbg !3632
  store i32 %31, ptr @nslots, align 4, !dbg !3633, !tbaa !934
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #44, !dbg !3634
  br label %32, !dbg !3635

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !3599
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !3586, metadata !DIExpression()), !dbg !3599
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3636
  %36 = load i64, ptr %35, align 8, !dbg !3637, !tbaa !3558
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !3592, metadata !DIExpression()), !dbg !3638
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3639
  %38 = load ptr, ptr %37, align 8, !dbg !3639, !tbaa !3546
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !3594, metadata !DIExpression()), !dbg !3638
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3640
  %40 = load i32, ptr %39, align 4, !dbg !3640, !tbaa !2840
  %41 = or i32 %40, 1, !dbg !3641
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !3595, metadata !DIExpression()), !dbg !3638
  %42 = load i32, ptr %3, align 8, !dbg !3642, !tbaa !2790
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3643
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3644
  %45 = load ptr, ptr %44, align 8, !dbg !3644, !tbaa !2861
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3645
  %47 = load ptr, ptr %46, align 8, !dbg !3645, !tbaa !2864
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3646
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !3596, metadata !DIExpression()), !dbg !3638
  %49 = icmp ugt i64 %36, %48, !dbg !3647
  br i1 %49, label %60, label %50, !dbg !3649

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3650
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !3592, metadata !DIExpression()), !dbg !3638
  store i64 %51, ptr %35, align 8, !dbg !3652, !tbaa !3558
  %52 = icmp eq ptr %38, @slot0, !dbg !3653
  br i1 %52, label %54, label %53, !dbg !3655

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #44, !dbg !3656
  br label %54, !dbg !3656

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #49, !dbg !3657
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !3594, metadata !DIExpression()), !dbg !3638
  store ptr %55, ptr %37, align 8, !dbg !3658, !tbaa !3546
  %56 = load i32, ptr %3, align 8, !dbg !3659, !tbaa !2790
  %57 = load ptr, ptr %44, align 8, !dbg !3660, !tbaa !2861
  %58 = load ptr, ptr %46, align 8, !dbg !3661, !tbaa !2864
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3662
  br label %60, !dbg !3663

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3638
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !3594, metadata !DIExpression()), !dbg !3638
  store i32 %7, ptr %6, align 4, !dbg !3664, !tbaa !934
  ret ptr %61, !dbg !3665
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #32

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #20 !dbg !3666 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3670, metadata !DIExpression()), !dbg !3673
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3671, metadata !DIExpression()), !dbg !3673
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3672, metadata !DIExpression()), !dbg !3673
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3674
  ret ptr %4, !dbg !3675
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #20 !dbg !3676 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3678, metadata !DIExpression()), !dbg !3679
  call void @llvm.dbg.value(metadata i32 0, metadata !3572, metadata !DIExpression()), !dbg !3680
  call void @llvm.dbg.value(metadata ptr %0, metadata !3573, metadata !DIExpression()), !dbg !3680
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3682
  ret ptr %2, !dbg !3683
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #20 !dbg !3684 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3688, metadata !DIExpression()), !dbg !3690
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3689, metadata !DIExpression()), !dbg !3690
  call void @llvm.dbg.value(metadata i32 0, metadata !3670, metadata !DIExpression()), !dbg !3691
  call void @llvm.dbg.value(metadata ptr %0, metadata !3671, metadata !DIExpression()), !dbg !3691
  call void @llvm.dbg.value(metadata i64 %1, metadata !3672, metadata !DIExpression()), !dbg !3691
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3693
  ret ptr %3, !dbg !3694
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #20 !dbg !3695 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3703
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3702, metadata !DIExpression(), metadata !3703, metadata ptr %4, metadata !DIExpression()), !dbg !3704
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3699, metadata !DIExpression()), !dbg !3704
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3700, metadata !DIExpression()), !dbg !3704
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3701, metadata !DIExpression()), !dbg !3704
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #44, !dbg !3705
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3706), !dbg !3709
  call void @llvm.dbg.value(metadata i32 %1, metadata !3710, metadata !DIExpression()), !dbg !3716
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3715, metadata !DIExpression()), !dbg !3718
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3718, !alias.scope !3706, !DIAssignID !3719
  call void @llvm.dbg.assign(metadata i8 0, metadata !3702, metadata !DIExpression(), metadata !3719, metadata ptr %4, metadata !DIExpression()), !dbg !3704
  %5 = icmp eq i32 %1, 10, !dbg !3720
  br i1 %5, label %6, label %7, !dbg !3722

6:                                                ; preds = %3
  tail call void @abort() #46, !dbg !3723, !noalias !3706
  unreachable, !dbg !3723

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3724, !tbaa !2790, !alias.scope !3706, !DIAssignID !3725
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3702, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3725, metadata ptr %4, metadata !DIExpression()), !dbg !3704
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3726
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #44, !dbg !3727
  ret ptr %8, !dbg !3728
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #20 !dbg !3729 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3738
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3737, metadata !DIExpression(), metadata !3738, metadata ptr %5, metadata !DIExpression()), !dbg !3739
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3733, metadata !DIExpression()), !dbg !3739
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3734, metadata !DIExpression()), !dbg !3739
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3735, metadata !DIExpression()), !dbg !3739
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3736, metadata !DIExpression()), !dbg !3739
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #44, !dbg !3740
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3741), !dbg !3744
  call void @llvm.dbg.value(metadata i32 %1, metadata !3710, metadata !DIExpression()), !dbg !3745
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3715, metadata !DIExpression()), !dbg !3747
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3747, !alias.scope !3741, !DIAssignID !3748
  call void @llvm.dbg.assign(metadata i8 0, metadata !3737, metadata !DIExpression(), metadata !3748, metadata ptr %5, metadata !DIExpression()), !dbg !3739
  %6 = icmp eq i32 %1, 10, !dbg !3749
  br i1 %6, label %7, label %8, !dbg !3750

7:                                                ; preds = %4
  tail call void @abort() #46, !dbg !3751, !noalias !3741
  unreachable, !dbg !3751

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3752, !tbaa !2790, !alias.scope !3741, !DIAssignID !3753
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3737, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3753, metadata ptr %5, metadata !DIExpression()), !dbg !3739
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3754
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #44, !dbg !3755
  ret ptr %9, !dbg !3756
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #20 !dbg !3757 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3763
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3761, metadata !DIExpression()), !dbg !3764
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3762, metadata !DIExpression()), !dbg !3764
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3702, metadata !DIExpression(), metadata !3763, metadata ptr %3, metadata !DIExpression()), !dbg !3765
  call void @llvm.dbg.value(metadata i32 0, metadata !3699, metadata !DIExpression()), !dbg !3765
  call void @llvm.dbg.value(metadata i32 %0, metadata !3700, metadata !DIExpression()), !dbg !3765
  call void @llvm.dbg.value(metadata ptr %1, metadata !3701, metadata !DIExpression()), !dbg !3765
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #44, !dbg !3767
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3768), !dbg !3771
  call void @llvm.dbg.value(metadata i32 %0, metadata !3710, metadata !DIExpression()), !dbg !3772
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3715, metadata !DIExpression()), !dbg !3774
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3774, !alias.scope !3768, !DIAssignID !3775
  call void @llvm.dbg.assign(metadata i8 0, metadata !3702, metadata !DIExpression(), metadata !3775, metadata ptr %3, metadata !DIExpression()), !dbg !3765
  %4 = icmp eq i32 %0, 10, !dbg !3776
  br i1 %4, label %5, label %6, !dbg !3777

5:                                                ; preds = %2
  tail call void @abort() #46, !dbg !3778, !noalias !3768
  unreachable, !dbg !3778

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3779, !tbaa !2790, !alias.scope !3768, !DIAssignID !3780
  call void @llvm.dbg.assign(metadata i32 %0, metadata !3702, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3780, metadata ptr %3, metadata !DIExpression()), !dbg !3765
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3781
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #44, !dbg !3782
  ret ptr %7, !dbg !3783
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #20 !dbg !3784 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3791
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3788, metadata !DIExpression()), !dbg !3792
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3789, metadata !DIExpression()), !dbg !3792
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3790, metadata !DIExpression()), !dbg !3792
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3737, metadata !DIExpression(), metadata !3791, metadata ptr %4, metadata !DIExpression()), !dbg !3793
  call void @llvm.dbg.value(metadata i32 0, metadata !3733, metadata !DIExpression()), !dbg !3793
  call void @llvm.dbg.value(metadata i32 %0, metadata !3734, metadata !DIExpression()), !dbg !3793
  call void @llvm.dbg.value(metadata ptr %1, metadata !3735, metadata !DIExpression()), !dbg !3793
  call void @llvm.dbg.value(metadata i64 %2, metadata !3736, metadata !DIExpression()), !dbg !3793
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #44, !dbg !3795
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3796), !dbg !3799
  call void @llvm.dbg.value(metadata i32 %0, metadata !3710, metadata !DIExpression()), !dbg !3800
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3715, metadata !DIExpression()), !dbg !3802
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3802, !alias.scope !3796, !DIAssignID !3803
  call void @llvm.dbg.assign(metadata i8 0, metadata !3737, metadata !DIExpression(), metadata !3803, metadata ptr %4, metadata !DIExpression()), !dbg !3793
  %5 = icmp eq i32 %0, 10, !dbg !3804
  br i1 %5, label %6, label %7, !dbg !3805

6:                                                ; preds = %3
  tail call void @abort() #46, !dbg !3806, !noalias !3796
  unreachable, !dbg !3806

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3807, !tbaa !2790, !alias.scope !3796, !DIAssignID !3808
  call void @llvm.dbg.assign(metadata i32 %0, metadata !3737, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3808, metadata ptr %4, metadata !DIExpression()), !dbg !3793
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3809
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #44, !dbg !3810
  ret ptr %8, !dbg !3811
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #20 !dbg !3812 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3820
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3819, metadata !DIExpression(), metadata !3820, metadata ptr %4, metadata !DIExpression()), !dbg !3821
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3816, metadata !DIExpression()), !dbg !3821
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3817, metadata !DIExpression()), !dbg !3821
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !3818, metadata !DIExpression()), !dbg !3821
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #44, !dbg !3822
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3823, !tbaa.struct !3824, !DIAssignID !3825
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3819, metadata !DIExpression(), metadata !3825, metadata ptr %4, metadata !DIExpression()), !dbg !3821
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2807, metadata !DIExpression()), !dbg !3826
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2808, metadata !DIExpression()), !dbg !3826
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2809, metadata !DIExpression()), !dbg !3826
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2810, metadata !DIExpression()), !dbg !3826
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !3828
  %6 = lshr i8 %2, 5, !dbg !3829
  %7 = zext nneg i8 %6 to i64, !dbg !3829
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !3830
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2811, metadata !DIExpression()), !dbg !3826
  %9 = and i8 %2, 31, !dbg !3831
  %10 = zext nneg i8 %9 to i32, !dbg !3831
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !2813, metadata !DIExpression()), !dbg !3826
  %11 = load i32, ptr %8, align 4, !dbg !3832, !tbaa !934
  %12 = lshr i32 %11, %10, !dbg !3833
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !2814, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3826
  %13 = and i32 %12, 1, !dbg !3834
  %14 = xor i32 %13, 1, !dbg !3834
  %15 = shl nuw i32 %14, %10, !dbg !3835
  %16 = xor i32 %15, %11, !dbg !3836
  store i32 %16, ptr %8, align 4, !dbg !3836, !tbaa !934
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !3837
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #44, !dbg !3838
  ret ptr %17, !dbg !3839
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #20 !dbg !3840 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3846
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3844, metadata !DIExpression()), !dbg !3847
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !3845, metadata !DIExpression()), !dbg !3847
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3819, metadata !DIExpression(), metadata !3846, metadata ptr %3, metadata !DIExpression()), !dbg !3848
  call void @llvm.dbg.value(metadata ptr %0, metadata !3816, metadata !DIExpression()), !dbg !3848
  call void @llvm.dbg.value(metadata i64 -1, metadata !3817, metadata !DIExpression()), !dbg !3848
  call void @llvm.dbg.value(metadata i8 %1, metadata !3818, metadata !DIExpression()), !dbg !3848
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #44, !dbg !3850
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3851, !tbaa.struct !3824, !DIAssignID !3852
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3819, metadata !DIExpression(), metadata !3852, metadata ptr %3, metadata !DIExpression()), !dbg !3848
  call void @llvm.dbg.value(metadata ptr %3, metadata !2807, metadata !DIExpression()), !dbg !3853
  call void @llvm.dbg.value(metadata i8 %1, metadata !2808, metadata !DIExpression()), !dbg !3853
  call void @llvm.dbg.value(metadata i32 1, metadata !2809, metadata !DIExpression()), !dbg !3853
  call void @llvm.dbg.value(metadata i8 %1, metadata !2810, metadata !DIExpression()), !dbg !3853
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3855
  %5 = lshr i8 %1, 5, !dbg !3856
  %6 = zext nneg i8 %5 to i64, !dbg !3856
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !3857
  call void @llvm.dbg.value(metadata ptr %7, metadata !2811, metadata !DIExpression()), !dbg !3853
  %8 = and i8 %1, 31, !dbg !3858
  %9 = zext nneg i8 %8 to i32, !dbg !3858
  call void @llvm.dbg.value(metadata i32 %9, metadata !2813, metadata !DIExpression()), !dbg !3853
  %10 = load i32, ptr %7, align 4, !dbg !3859, !tbaa !934
  %11 = lshr i32 %10, %9, !dbg !3860
  call void @llvm.dbg.value(metadata i32 %11, metadata !2814, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3853
  %12 = and i32 %11, 1, !dbg !3861
  %13 = xor i32 %12, 1, !dbg !3861
  %14 = shl nuw i32 %13, %9, !dbg !3862
  %15 = xor i32 %14, %10, !dbg !3863
  store i32 %15, ptr %7, align 4, !dbg !3863, !tbaa !934
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !3864
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #44, !dbg !3865
  ret ptr %16, !dbg !3866
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #20 !dbg !3867 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !3870
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3869, metadata !DIExpression()), !dbg !3871
  call void @llvm.dbg.value(metadata ptr %0, metadata !3844, metadata !DIExpression()), !dbg !3872
  call void @llvm.dbg.value(metadata i8 58, metadata !3845, metadata !DIExpression()), !dbg !3872
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3819, metadata !DIExpression(), metadata !3870, metadata ptr %2, metadata !DIExpression()), !dbg !3874
  call void @llvm.dbg.value(metadata ptr %0, metadata !3816, metadata !DIExpression()), !dbg !3874
  call void @llvm.dbg.value(metadata i64 -1, metadata !3817, metadata !DIExpression()), !dbg !3874
  call void @llvm.dbg.value(metadata i8 58, metadata !3818, metadata !DIExpression()), !dbg !3874
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #44, !dbg !3876
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3877, !tbaa.struct !3824, !DIAssignID !3878
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3819, metadata !DIExpression(), metadata !3878, metadata ptr %2, metadata !DIExpression()), !dbg !3874
  call void @llvm.dbg.value(metadata ptr %2, metadata !2807, metadata !DIExpression()), !dbg !3879
  call void @llvm.dbg.value(metadata i8 58, metadata !2808, metadata !DIExpression()), !dbg !3879
  call void @llvm.dbg.value(metadata i32 1, metadata !2809, metadata !DIExpression()), !dbg !3879
  call void @llvm.dbg.value(metadata i8 58, metadata !2810, metadata !DIExpression()), !dbg !3879
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !3881
  call void @llvm.dbg.value(metadata ptr %3, metadata !2811, metadata !DIExpression()), !dbg !3879
  call void @llvm.dbg.value(metadata i32 26, metadata !2813, metadata !DIExpression()), !dbg !3879
  %4 = load i32, ptr %3, align 4, !dbg !3882, !tbaa !934
  call void @llvm.dbg.value(metadata i32 %4, metadata !2814, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3879
  %5 = or i32 %4, 67108864, !dbg !3883
  store i32 %5, ptr %3, align 4, !dbg !3883, !tbaa !934
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !3884
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #44, !dbg !3885
  ret ptr %6, !dbg !3886
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #20 !dbg !3887 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3891
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3889, metadata !DIExpression()), !dbg !3892
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3890, metadata !DIExpression()), !dbg !3892
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3819, metadata !DIExpression(), metadata !3891, metadata ptr %3, metadata !DIExpression()), !dbg !3893
  call void @llvm.dbg.value(metadata ptr %0, metadata !3816, metadata !DIExpression()), !dbg !3893
  call void @llvm.dbg.value(metadata i64 %1, metadata !3817, metadata !DIExpression()), !dbg !3893
  call void @llvm.dbg.value(metadata i8 58, metadata !3818, metadata !DIExpression()), !dbg !3893
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #44, !dbg !3895
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3896, !tbaa.struct !3824, !DIAssignID !3897
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3819, metadata !DIExpression(), metadata !3897, metadata ptr %3, metadata !DIExpression()), !dbg !3893
  call void @llvm.dbg.value(metadata ptr %3, metadata !2807, metadata !DIExpression()), !dbg !3898
  call void @llvm.dbg.value(metadata i8 58, metadata !2808, metadata !DIExpression()), !dbg !3898
  call void @llvm.dbg.value(metadata i32 1, metadata !2809, metadata !DIExpression()), !dbg !3898
  call void @llvm.dbg.value(metadata i8 58, metadata !2810, metadata !DIExpression()), !dbg !3898
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3900
  call void @llvm.dbg.value(metadata ptr %4, metadata !2811, metadata !DIExpression()), !dbg !3898
  call void @llvm.dbg.value(metadata i32 26, metadata !2813, metadata !DIExpression()), !dbg !3898
  %5 = load i32, ptr %4, align 4, !dbg !3901, !tbaa !934
  call void @llvm.dbg.value(metadata i32 %5, metadata !2814, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3898
  %6 = or i32 %5, 67108864, !dbg !3902
  store i32 %6, ptr %4, align 4, !dbg !3902, !tbaa !934
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3903
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #44, !dbg !3904
  ret ptr %7, !dbg !3905
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #20 !dbg !3906 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3912
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3911, metadata !DIExpression(), metadata !3912, metadata ptr %4, metadata !DIExpression()), !dbg !3913
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3715, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3914
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3908, metadata !DIExpression()), !dbg !3913
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3909, metadata !DIExpression()), !dbg !3913
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3910, metadata !DIExpression()), !dbg !3913
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #44, !dbg !3916
  call void @llvm.dbg.value(metadata i32 %1, metadata !3710, metadata !DIExpression()), !dbg !3917
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3715, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3917
  %5 = icmp eq i32 %1, 10, !dbg !3918
  br i1 %5, label %6, label %7, !dbg !3919

6:                                                ; preds = %3
  tail call void @abort() #46, !dbg !3920, !noalias !3921
  unreachable, !dbg !3920

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3715, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3917
  store i32 %1, ptr %4, align 8, !dbg !3924, !tbaa.struct !3824, !DIAssignID !3925
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3924
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3924
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3911, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3925, metadata ptr %4, metadata !DIExpression()), !dbg !3913
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3911, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !3926, metadata ptr %8, metadata !DIExpression()), !dbg !3913
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2807, metadata !DIExpression()), !dbg !3927
  tail call void @llvm.dbg.value(metadata i8 58, metadata !2808, metadata !DIExpression()), !dbg !3927
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2809, metadata !DIExpression()), !dbg !3927
  tail call void @llvm.dbg.value(metadata i8 58, metadata !2810, metadata !DIExpression()), !dbg !3927
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3929
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2811, metadata !DIExpression()), !dbg !3927
  tail call void @llvm.dbg.value(metadata i32 26, metadata !2813, metadata !DIExpression()), !dbg !3927
  %10 = load i32, ptr %9, align 4, !dbg !3930, !tbaa !934
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !2814, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3927
  %11 = or i32 %10, 67108864, !dbg !3931
  store i32 %11, ptr %9, align 4, !dbg !3931, !tbaa !934, !DIAssignID !3932
  call void @llvm.dbg.assign(metadata i32 %11, metadata !3911, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !3932, metadata ptr %9, metadata !DIExpression()), !dbg !3913
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3933
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #44, !dbg !3934
  ret ptr %12, !dbg !3935
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #20 !dbg !3936 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3944
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3940, metadata !DIExpression()), !dbg !3945
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3941, metadata !DIExpression()), !dbg !3945
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3942, metadata !DIExpression()), !dbg !3945
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3943, metadata !DIExpression()), !dbg !3945
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3946, metadata !DIExpression(), metadata !3944, metadata ptr %5, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata i32 %0, metadata !3951, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata ptr %1, metadata !3952, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata ptr %2, metadata !3953, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata ptr %3, metadata !3954, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata i64 -1, metadata !3955, metadata !DIExpression()), !dbg !3956
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #44, !dbg !3958
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3959, !tbaa.struct !3824, !DIAssignID !3960
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3946, metadata !DIExpression(), metadata !3960, metadata ptr %5, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3946, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3961, metadata ptr undef, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata ptr %5, metadata !2847, metadata !DIExpression()), !dbg !3962
  call void @llvm.dbg.value(metadata ptr %1, metadata !2848, metadata !DIExpression()), !dbg !3962
  call void @llvm.dbg.value(metadata ptr %2, metadata !2849, metadata !DIExpression()), !dbg !3962
  call void @llvm.dbg.value(metadata ptr %5, metadata !2847, metadata !DIExpression()), !dbg !3962
  store i32 10, ptr %5, align 8, !dbg !3964, !tbaa !2790, !DIAssignID !3965
  call void @llvm.dbg.assign(metadata i32 10, metadata !3946, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3965, metadata ptr %5, metadata !DIExpression()), !dbg !3956
  %6 = icmp ne ptr %1, null, !dbg !3966
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3967
  br i1 %8, label %10, label %9, !dbg !3967

9:                                                ; preds = %4
  tail call void @abort() #46, !dbg !3968
  unreachable, !dbg !3968

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3969
  store ptr %1, ptr %11, align 8, !dbg !3970, !tbaa !2861, !DIAssignID !3971
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3946, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3971, metadata ptr %11, metadata !DIExpression()), !dbg !3956
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3972
  store ptr %2, ptr %12, align 8, !dbg !3973, !tbaa !2864, !DIAssignID !3974
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3946, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3974, metadata ptr %12, metadata !DIExpression()), !dbg !3956
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3975
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #44, !dbg !3976
  ret ptr %13, !dbg !3977
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #20 !dbg !3947 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !3978
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3946, metadata !DIExpression(), metadata !3978, metadata ptr %6, metadata !DIExpression()), !dbg !3979
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3951, metadata !DIExpression()), !dbg !3979
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3952, metadata !DIExpression()), !dbg !3979
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3953, metadata !DIExpression()), !dbg !3979
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3954, metadata !DIExpression()), !dbg !3979
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !3955, metadata !DIExpression()), !dbg !3979
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #44, !dbg !3980
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3981, !tbaa.struct !3824, !DIAssignID !3982
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3946, metadata !DIExpression(), metadata !3982, metadata ptr %6, metadata !DIExpression()), !dbg !3979
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3946, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3983, metadata ptr undef, metadata !DIExpression()), !dbg !3979
  call void @llvm.dbg.value(metadata ptr %6, metadata !2847, metadata !DIExpression()), !dbg !3984
  call void @llvm.dbg.value(metadata ptr %1, metadata !2848, metadata !DIExpression()), !dbg !3984
  call void @llvm.dbg.value(metadata ptr %2, metadata !2849, metadata !DIExpression()), !dbg !3984
  call void @llvm.dbg.value(metadata ptr %6, metadata !2847, metadata !DIExpression()), !dbg !3984
  store i32 10, ptr %6, align 8, !dbg !3986, !tbaa !2790, !DIAssignID !3987
  call void @llvm.dbg.assign(metadata i32 10, metadata !3946, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3987, metadata ptr %6, metadata !DIExpression()), !dbg !3979
  %7 = icmp ne ptr %1, null, !dbg !3988
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3989
  br i1 %9, label %11, label %10, !dbg !3989

10:                                               ; preds = %5
  tail call void @abort() #46, !dbg !3990
  unreachable, !dbg !3990

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3991
  store ptr %1, ptr %12, align 8, !dbg !3992, !tbaa !2861, !DIAssignID !3993
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3946, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3993, metadata ptr %12, metadata !DIExpression()), !dbg !3979
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3994
  store ptr %2, ptr %13, align 8, !dbg !3995, !tbaa !2864, !DIAssignID !3996
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3946, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3996, metadata ptr %13, metadata !DIExpression()), !dbg !3979
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3997
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #44, !dbg !3998
  ret ptr %14, !dbg !3999
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #20 !dbg !4000 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !4007
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4004, metadata !DIExpression()), !dbg !4008
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4005, metadata !DIExpression()), !dbg !4008
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4006, metadata !DIExpression()), !dbg !4008
  call void @llvm.dbg.value(metadata i32 0, metadata !3940, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata ptr %0, metadata !3941, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata ptr %1, metadata !3942, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata ptr %2, metadata !3943, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3946, metadata !DIExpression(), metadata !4007, metadata ptr %4, metadata !DIExpression()), !dbg !4011
  call void @llvm.dbg.value(metadata i32 0, metadata !3951, metadata !DIExpression()), !dbg !4011
  call void @llvm.dbg.value(metadata ptr %0, metadata !3952, metadata !DIExpression()), !dbg !4011
  call void @llvm.dbg.value(metadata ptr %1, metadata !3953, metadata !DIExpression()), !dbg !4011
  call void @llvm.dbg.value(metadata ptr %2, metadata !3954, metadata !DIExpression()), !dbg !4011
  call void @llvm.dbg.value(metadata i64 -1, metadata !3955, metadata !DIExpression()), !dbg !4011
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #44, !dbg !4013
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4014, !tbaa.struct !3824, !DIAssignID !4015
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3946, metadata !DIExpression(), metadata !4015, metadata ptr %4, metadata !DIExpression()), !dbg !4011
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3946, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !4016, metadata ptr undef, metadata !DIExpression()), !dbg !4011
  call void @llvm.dbg.value(metadata ptr %4, metadata !2847, metadata !DIExpression()), !dbg !4017
  call void @llvm.dbg.value(metadata ptr %0, metadata !2848, metadata !DIExpression()), !dbg !4017
  call void @llvm.dbg.value(metadata ptr %1, metadata !2849, metadata !DIExpression()), !dbg !4017
  call void @llvm.dbg.value(metadata ptr %4, metadata !2847, metadata !DIExpression()), !dbg !4017
  store i32 10, ptr %4, align 8, !dbg !4019, !tbaa !2790, !DIAssignID !4020
  call void @llvm.dbg.assign(metadata i32 10, metadata !3946, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4020, metadata ptr %4, metadata !DIExpression()), !dbg !4011
  %5 = icmp ne ptr %0, null, !dbg !4021
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !4022
  br i1 %7, label %9, label %8, !dbg !4022

8:                                                ; preds = %3
  tail call void @abort() #46, !dbg !4023
  unreachable, !dbg !4023

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !4024
  store ptr %0, ptr %10, align 8, !dbg !4025, !tbaa !2861, !DIAssignID !4026
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3946, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !4026, metadata ptr %10, metadata !DIExpression()), !dbg !4011
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !4027
  store ptr %1, ptr %11, align 8, !dbg !4028, !tbaa !2864, !DIAssignID !4029
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3946, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !4029, metadata ptr %11, metadata !DIExpression()), !dbg !4011
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !4030
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #44, !dbg !4031
  ret ptr %12, !dbg !4032
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #20 !dbg !4033 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !4041
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4037, metadata !DIExpression()), !dbg !4042
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4038, metadata !DIExpression()), !dbg !4042
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4039, metadata !DIExpression()), !dbg !4042
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !4040, metadata !DIExpression()), !dbg !4042
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3946, metadata !DIExpression(), metadata !4041, metadata ptr %5, metadata !DIExpression()), !dbg !4043
  call void @llvm.dbg.value(metadata i32 0, metadata !3951, metadata !DIExpression()), !dbg !4043
  call void @llvm.dbg.value(metadata ptr %0, metadata !3952, metadata !DIExpression()), !dbg !4043
  call void @llvm.dbg.value(metadata ptr %1, metadata !3953, metadata !DIExpression()), !dbg !4043
  call void @llvm.dbg.value(metadata ptr %2, metadata !3954, metadata !DIExpression()), !dbg !4043
  call void @llvm.dbg.value(metadata i64 %3, metadata !3955, metadata !DIExpression()), !dbg !4043
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #44, !dbg !4045
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4046, !tbaa.struct !3824, !DIAssignID !4047
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3946, metadata !DIExpression(), metadata !4047, metadata ptr %5, metadata !DIExpression()), !dbg !4043
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3946, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !4048, metadata ptr undef, metadata !DIExpression()), !dbg !4043
  call void @llvm.dbg.value(metadata ptr %5, metadata !2847, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata ptr %0, metadata !2848, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata ptr %1, metadata !2849, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata ptr %5, metadata !2847, metadata !DIExpression()), !dbg !4049
  store i32 10, ptr %5, align 8, !dbg !4051, !tbaa !2790, !DIAssignID !4052
  call void @llvm.dbg.assign(metadata i32 10, metadata !3946, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4052, metadata ptr %5, metadata !DIExpression()), !dbg !4043
  %6 = icmp ne ptr %0, null, !dbg !4053
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !4054
  br i1 %8, label %10, label %9, !dbg !4054

9:                                                ; preds = %4
  tail call void @abort() #46, !dbg !4055
  unreachable, !dbg !4055

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !4056
  store ptr %0, ptr %11, align 8, !dbg !4057, !tbaa !2861, !DIAssignID !4058
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3946, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !4058, metadata ptr %11, metadata !DIExpression()), !dbg !4043
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !4059
  store ptr %1, ptr %12, align 8, !dbg !4060, !tbaa !2864, !DIAssignID !4061
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3946, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !4061, metadata ptr %12, metadata !DIExpression()), !dbg !4043
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !4062
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #44, !dbg !4063
  ret ptr %13, !dbg !4064
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #20 !dbg !4065 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4069, metadata !DIExpression()), !dbg !4072
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4070, metadata !DIExpression()), !dbg !4072
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4071, metadata !DIExpression()), !dbg !4072
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !4073
  ret ptr %4, !dbg !4074
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #20 !dbg !4075 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4079, metadata !DIExpression()), !dbg !4081
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4080, metadata !DIExpression()), !dbg !4081
  call void @llvm.dbg.value(metadata i32 0, metadata !4069, metadata !DIExpression()), !dbg !4082
  call void @llvm.dbg.value(metadata ptr %0, metadata !4070, metadata !DIExpression()), !dbg !4082
  call void @llvm.dbg.value(metadata i64 %1, metadata !4071, metadata !DIExpression()), !dbg !4082
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !4084
  ret ptr %3, !dbg !4085
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #20 !dbg !4086 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4090, metadata !DIExpression()), !dbg !4092
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4091, metadata !DIExpression()), !dbg !4092
  call void @llvm.dbg.value(metadata i32 %0, metadata !4069, metadata !DIExpression()), !dbg !4093
  call void @llvm.dbg.value(metadata ptr %1, metadata !4070, metadata !DIExpression()), !dbg !4093
  call void @llvm.dbg.value(metadata i64 -1, metadata !4071, metadata !DIExpression()), !dbg !4093
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !4095
  ret ptr %3, !dbg !4096
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #20 !dbg !4097 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4101, metadata !DIExpression()), !dbg !4102
  call void @llvm.dbg.value(metadata i32 0, metadata !4090, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata ptr %0, metadata !4091, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata i32 0, metadata !4069, metadata !DIExpression()), !dbg !4105
  call void @llvm.dbg.value(metadata ptr %0, metadata !4070, metadata !DIExpression()), !dbg !4105
  call void @llvm.dbg.value(metadata i64 -1, metadata !4071, metadata !DIExpression()), !dbg !4105
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !4107
  ret ptr %2, !dbg !4108
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #20 !dbg !4109 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4148, metadata !DIExpression()), !dbg !4154
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4149, metadata !DIExpression()), !dbg !4154
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4150, metadata !DIExpression()), !dbg !4154
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4151, metadata !DIExpression()), !dbg !4154
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4152, metadata !DIExpression()), !dbg !4154
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !4153, metadata !DIExpression()), !dbg !4154
  %7 = icmp eq ptr %1, null, !dbg !4155
  br i1 %7, label %10, label %8, !dbg !4157

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.102, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #44, !dbg !4158
  br label %12, !dbg !4158

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.103, ptr noundef %2, ptr noundef %3) #44, !dbg !4159
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.3.105, i32 noundef 5) #44, !dbg !4160
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #44, !dbg !4160
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.106, ptr noundef %0), !dbg !4161
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.5.107, i32 noundef 5) #44, !dbg !4162
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.108) #44, !dbg !4162
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.106, ptr noundef %0), !dbg !4163
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
  ], !dbg !4164

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.7.109, i32 noundef 5) #44, !dbg !4165
  %21 = load ptr, ptr %4, align 8, !dbg !4165, !tbaa !863
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #44, !dbg !4165
  br label %147, !dbg !4167

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.8.110, i32 noundef 5) #44, !dbg !4168
  %25 = load ptr, ptr %4, align 8, !dbg !4168, !tbaa !863
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4168
  %27 = load ptr, ptr %26, align 8, !dbg !4168, !tbaa !863
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #44, !dbg !4168
  br label %147, !dbg !4169

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.9.111, i32 noundef 5) #44, !dbg !4170
  %31 = load ptr, ptr %4, align 8, !dbg !4170, !tbaa !863
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4170
  %33 = load ptr, ptr %32, align 8, !dbg !4170, !tbaa !863
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4170
  %35 = load ptr, ptr %34, align 8, !dbg !4170, !tbaa !863
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #44, !dbg !4170
  br label %147, !dbg !4171

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.10.112, i32 noundef 5) #44, !dbg !4172
  %39 = load ptr, ptr %4, align 8, !dbg !4172, !tbaa !863
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4172
  %41 = load ptr, ptr %40, align 8, !dbg !4172, !tbaa !863
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4172
  %43 = load ptr, ptr %42, align 8, !dbg !4172, !tbaa !863
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4172
  %45 = load ptr, ptr %44, align 8, !dbg !4172, !tbaa !863
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #44, !dbg !4172
  br label %147, !dbg !4173

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.11.113, i32 noundef 5) #44, !dbg !4174
  %49 = load ptr, ptr %4, align 8, !dbg !4174, !tbaa !863
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4174
  %51 = load ptr, ptr %50, align 8, !dbg !4174, !tbaa !863
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4174
  %53 = load ptr, ptr %52, align 8, !dbg !4174, !tbaa !863
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4174
  %55 = load ptr, ptr %54, align 8, !dbg !4174, !tbaa !863
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4174
  %57 = load ptr, ptr %56, align 8, !dbg !4174, !tbaa !863
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #44, !dbg !4174
  br label %147, !dbg !4175

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.12.114, i32 noundef 5) #44, !dbg !4176
  %61 = load ptr, ptr %4, align 8, !dbg !4176, !tbaa !863
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4176
  %63 = load ptr, ptr %62, align 8, !dbg !4176, !tbaa !863
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4176
  %65 = load ptr, ptr %64, align 8, !dbg !4176, !tbaa !863
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4176
  %67 = load ptr, ptr %66, align 8, !dbg !4176, !tbaa !863
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4176
  %69 = load ptr, ptr %68, align 8, !dbg !4176, !tbaa !863
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4176
  %71 = load ptr, ptr %70, align 8, !dbg !4176, !tbaa !863
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #44, !dbg !4176
  br label %147, !dbg !4177

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.13.115, i32 noundef 5) #44, !dbg !4178
  %75 = load ptr, ptr %4, align 8, !dbg !4178, !tbaa !863
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4178
  %77 = load ptr, ptr %76, align 8, !dbg !4178, !tbaa !863
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4178
  %79 = load ptr, ptr %78, align 8, !dbg !4178, !tbaa !863
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4178
  %81 = load ptr, ptr %80, align 8, !dbg !4178, !tbaa !863
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4178
  %83 = load ptr, ptr %82, align 8, !dbg !4178, !tbaa !863
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4178
  %85 = load ptr, ptr %84, align 8, !dbg !4178, !tbaa !863
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4178
  %87 = load ptr, ptr %86, align 8, !dbg !4178, !tbaa !863
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #44, !dbg !4178
  br label %147, !dbg !4179

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.14.116, i32 noundef 5) #44, !dbg !4180
  %91 = load ptr, ptr %4, align 8, !dbg !4180, !tbaa !863
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4180
  %93 = load ptr, ptr %92, align 8, !dbg !4180, !tbaa !863
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4180
  %95 = load ptr, ptr %94, align 8, !dbg !4180, !tbaa !863
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4180
  %97 = load ptr, ptr %96, align 8, !dbg !4180, !tbaa !863
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4180
  %99 = load ptr, ptr %98, align 8, !dbg !4180, !tbaa !863
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4180
  %101 = load ptr, ptr %100, align 8, !dbg !4180, !tbaa !863
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4180
  %103 = load ptr, ptr %102, align 8, !dbg !4180, !tbaa !863
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4180
  %105 = load ptr, ptr %104, align 8, !dbg !4180, !tbaa !863
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #44, !dbg !4180
  br label %147, !dbg !4181

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.15.117, i32 noundef 5) #44, !dbg !4182
  %109 = load ptr, ptr %4, align 8, !dbg !4182, !tbaa !863
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4182
  %111 = load ptr, ptr %110, align 8, !dbg !4182, !tbaa !863
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4182
  %113 = load ptr, ptr %112, align 8, !dbg !4182, !tbaa !863
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4182
  %115 = load ptr, ptr %114, align 8, !dbg !4182, !tbaa !863
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4182
  %117 = load ptr, ptr %116, align 8, !dbg !4182, !tbaa !863
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4182
  %119 = load ptr, ptr %118, align 8, !dbg !4182, !tbaa !863
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4182
  %121 = load ptr, ptr %120, align 8, !dbg !4182, !tbaa !863
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4182
  %123 = load ptr, ptr %122, align 8, !dbg !4182, !tbaa !863
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4182
  %125 = load ptr, ptr %124, align 8, !dbg !4182, !tbaa !863
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #44, !dbg !4182
  br label %147, !dbg !4183

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.16.118, i32 noundef 5) #44, !dbg !4184
  %129 = load ptr, ptr %4, align 8, !dbg !4184, !tbaa !863
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4184
  %131 = load ptr, ptr %130, align 8, !dbg !4184, !tbaa !863
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4184
  %133 = load ptr, ptr %132, align 8, !dbg !4184, !tbaa !863
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4184
  %135 = load ptr, ptr %134, align 8, !dbg !4184, !tbaa !863
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4184
  %137 = load ptr, ptr %136, align 8, !dbg !4184, !tbaa !863
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4184
  %139 = load ptr, ptr %138, align 8, !dbg !4184, !tbaa !863
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4184
  %141 = load ptr, ptr %140, align 8, !dbg !4184, !tbaa !863
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4184
  %143 = load ptr, ptr %142, align 8, !dbg !4184, !tbaa !863
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4184
  %145 = load ptr, ptr %144, align 8, !dbg !4184, !tbaa !863
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #44, !dbg !4184
  br label %147, !dbg !4185

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !4186
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #20 !dbg !4187 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4191, metadata !DIExpression()), !dbg !4197
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4192, metadata !DIExpression()), !dbg !4197
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4193, metadata !DIExpression()), !dbg !4197
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4194, metadata !DIExpression()), !dbg !4197
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4195, metadata !DIExpression()), !dbg !4197
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4196, metadata !DIExpression()), !dbg !4197
  br label %6, !dbg !4198

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4200
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !4196, metadata !DIExpression()), !dbg !4197
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !4201
  %9 = load ptr, ptr %8, align 8, !dbg !4201, !tbaa !863
  %10 = icmp eq ptr %9, null, !dbg !4203
  %11 = add i64 %7, 1, !dbg !4204
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !4196, metadata !DIExpression()), !dbg !4197
  br i1 %10, label %12, label %6, !dbg !4203, !llvm.loop !4205

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !4207
  ret void, !dbg !4208
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #20 !dbg !4209 {
  %6 = alloca [10 x ptr], align 16, !DIAssignID !4228
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4226, metadata !DIExpression(), metadata !4228, metadata ptr %6, metadata !DIExpression()), !dbg !4229
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4220, metadata !DIExpression()), !dbg !4229
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4221, metadata !DIExpression()), !dbg !4229
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4222, metadata !DIExpression()), !dbg !4229
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4223, metadata !DIExpression()), !dbg !4229
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4224, metadata !DIExpression()), !dbg !4229
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #44, !dbg !4230
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4225, metadata !DIExpression()), !dbg !4229
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4225, metadata !DIExpression()), !dbg !4229
  %10 = icmp ult i32 %9, 41, !dbg !4231
  br i1 %10, label %11, label %16, !dbg !4231

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !4231
  %13 = zext nneg i32 %9 to i64, !dbg !4231
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !4231
  %15 = add nuw nsw i32 %9, 8, !dbg !4231
  store i32 %15, ptr %4, align 8, !dbg !4231
  br label %19, !dbg !4231

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !4231
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !4231
  store ptr %18, ptr %7, align 8, !dbg !4231
  br label %19, !dbg !4231

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !4231
  %22 = load ptr, ptr %21, align 8, !dbg !4231
  store ptr %22, ptr %6, align 16, !dbg !4234, !tbaa !863
  %23 = icmp eq ptr %22, null, !dbg !4235
  br i1 %23, label %128, label %24, !dbg !4236

24:                                               ; preds = %19
  tail call void @llvm.dbg.value(metadata i64 1, metadata !4225, metadata !DIExpression()), !dbg !4229
  tail call void @llvm.dbg.value(metadata i64 1, metadata !4225, metadata !DIExpression()), !dbg !4229
  %25 = icmp ult i32 %20, 41, !dbg !4231
  br i1 %25, label %29, label %26, !dbg !4231

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !4231
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !4231
  store ptr %28, ptr %7, align 8, !dbg !4231
  br label %34, !dbg !4231

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !4231
  %31 = zext nneg i32 %20 to i64, !dbg !4231
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !4231
  %33 = add nuw nsw i32 %20, 8, !dbg !4231
  store i32 %33, ptr %4, align 8, !dbg !4231
  br label %34, !dbg !4231

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !4231
  %37 = load ptr, ptr %36, align 8, !dbg !4231
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !4237
  store ptr %37, ptr %38, align 8, !dbg !4234, !tbaa !863
  %39 = icmp eq ptr %37, null, !dbg !4235
  br i1 %39, label %128, label %40, !dbg !4236

40:                                               ; preds = %34
  tail call void @llvm.dbg.value(metadata i64 2, metadata !4225, metadata !DIExpression()), !dbg !4229
  tail call void @llvm.dbg.value(metadata i64 2, metadata !4225, metadata !DIExpression()), !dbg !4229
  %41 = icmp ult i32 %35, 41, !dbg !4231
  br i1 %41, label %45, label %42, !dbg !4231

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !4231
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !4231
  store ptr %44, ptr %7, align 8, !dbg !4231
  br label %50, !dbg !4231

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !4231
  %47 = zext nneg i32 %35 to i64, !dbg !4231
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !4231
  %49 = add nuw nsw i32 %35, 8, !dbg !4231
  store i32 %49, ptr %4, align 8, !dbg !4231
  br label %50, !dbg !4231

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !4231
  %53 = load ptr, ptr %52, align 8, !dbg !4231
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !4237
  store ptr %53, ptr %54, align 16, !dbg !4234, !tbaa !863
  %55 = icmp eq ptr %53, null, !dbg !4235
  br i1 %55, label %128, label %56, !dbg !4236

56:                                               ; preds = %50
  tail call void @llvm.dbg.value(metadata i64 3, metadata !4225, metadata !DIExpression()), !dbg !4229
  tail call void @llvm.dbg.value(metadata i64 3, metadata !4225, metadata !DIExpression()), !dbg !4229
  %57 = icmp ult i32 %51, 41, !dbg !4231
  br i1 %57, label %61, label %58, !dbg !4231

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !4231
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !4231
  store ptr %60, ptr %7, align 8, !dbg !4231
  br label %66, !dbg !4231

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !4231
  %63 = zext nneg i32 %51 to i64, !dbg !4231
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !4231
  %65 = add nuw nsw i32 %51, 8, !dbg !4231
  store i32 %65, ptr %4, align 8, !dbg !4231
  br label %66, !dbg !4231

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !4231
  %69 = load ptr, ptr %68, align 8, !dbg !4231
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !4237
  store ptr %69, ptr %70, align 8, !dbg !4234, !tbaa !863
  %71 = icmp eq ptr %69, null, !dbg !4235
  br i1 %71, label %128, label %72, !dbg !4236

72:                                               ; preds = %66
  tail call void @llvm.dbg.value(metadata i64 4, metadata !4225, metadata !DIExpression()), !dbg !4229
  tail call void @llvm.dbg.value(metadata i64 4, metadata !4225, metadata !DIExpression()), !dbg !4229
  %73 = icmp ult i32 %67, 41, !dbg !4231
  br i1 %73, label %77, label %74, !dbg !4231

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !4231
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !4231
  store ptr %76, ptr %7, align 8, !dbg !4231
  br label %82, !dbg !4231

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !4231
  %79 = zext nneg i32 %67 to i64, !dbg !4231
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !4231
  %81 = add nuw nsw i32 %67, 8, !dbg !4231
  store i32 %81, ptr %4, align 8, !dbg !4231
  br label %82, !dbg !4231

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !4231
  %85 = load ptr, ptr %84, align 8, !dbg !4231
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !4237
  store ptr %85, ptr %86, align 16, !dbg !4234, !tbaa !863
  %87 = icmp eq ptr %85, null, !dbg !4235
  br i1 %87, label %128, label %88, !dbg !4236

88:                                               ; preds = %82
  tail call void @llvm.dbg.value(metadata i64 5, metadata !4225, metadata !DIExpression()), !dbg !4229
  tail call void @llvm.dbg.value(metadata i64 5, metadata !4225, metadata !DIExpression()), !dbg !4229
  %89 = icmp ult i32 %83, 41, !dbg !4231
  br i1 %89, label %93, label %90, !dbg !4231

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !4231
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !4231
  store ptr %92, ptr %7, align 8, !dbg !4231
  br label %98, !dbg !4231

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !4231
  %95 = zext nneg i32 %83 to i64, !dbg !4231
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !4231
  %97 = add nuw nsw i32 %83, 8, !dbg !4231
  store i32 %97, ptr %4, align 8, !dbg !4231
  br label %98, !dbg !4231

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !4231
  %100 = load ptr, ptr %99, align 8, !dbg !4231
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !4237
  store ptr %100, ptr %101, align 8, !dbg !4234, !tbaa !863
  %102 = icmp eq ptr %100, null, !dbg !4235
  br i1 %102, label %128, label %103, !dbg !4236

103:                                              ; preds = %98
  tail call void @llvm.dbg.value(metadata i64 6, metadata !4225, metadata !DIExpression()), !dbg !4229
  %104 = load ptr, ptr %7, align 8, !dbg !4231
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !4231
  store ptr %105, ptr %7, align 8, !dbg !4231
  %106 = load ptr, ptr %104, align 8, !dbg !4231
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !4237
  store ptr %106, ptr %107, align 16, !dbg !4234, !tbaa !863
  %108 = icmp eq ptr %106, null, !dbg !4235
  br i1 %108, label %128, label %109, !dbg !4236

109:                                              ; preds = %103
  tail call void @llvm.dbg.value(metadata i64 7, metadata !4225, metadata !DIExpression()), !dbg !4229
  %110 = load ptr, ptr %7, align 8, !dbg !4231
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !4231
  store ptr %111, ptr %7, align 8, !dbg !4231
  %112 = load ptr, ptr %110, align 8, !dbg !4231
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !4237
  store ptr %112, ptr %113, align 8, !dbg !4234, !tbaa !863
  %114 = icmp eq ptr %112, null, !dbg !4235
  br i1 %114, label %128, label %115, !dbg !4236

115:                                              ; preds = %109
  tail call void @llvm.dbg.value(metadata i64 8, metadata !4225, metadata !DIExpression()), !dbg !4229
  %116 = load ptr, ptr %7, align 8, !dbg !4231
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !4231
  store ptr %117, ptr %7, align 8, !dbg !4231
  %118 = load ptr, ptr %116, align 8, !dbg !4231
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !4237
  store ptr %118, ptr %119, align 16, !dbg !4234, !tbaa !863
  %120 = icmp eq ptr %118, null, !dbg !4235
  br i1 %120, label %128, label %121, !dbg !4236

121:                                              ; preds = %115
  tail call void @llvm.dbg.value(metadata i64 9, metadata !4225, metadata !DIExpression()), !dbg !4229
  %122 = load ptr, ptr %7, align 8, !dbg !4231
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !4231
  store ptr %123, ptr %7, align 8, !dbg !4231
  %124 = load ptr, ptr %122, align 8, !dbg !4231
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !4237
  store ptr %124, ptr %125, align 8, !dbg !4234, !tbaa !863
  %126 = icmp eq ptr %124, null, !dbg !4235
  %127 = select i1 %126, i64 9, i64 10, !dbg !4236
  br label %128, !dbg !4236

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !4238
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !4239
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #44, !dbg !4240
  ret void, !dbg !4240
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #20 !dbg !4241 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !4254
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4249, metadata !DIExpression(), metadata !4254, metadata ptr %5, metadata !DIExpression()), !dbg !4255
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4245, metadata !DIExpression()), !dbg !4255
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4246, metadata !DIExpression()), !dbg !4255
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4247, metadata !DIExpression()), !dbg !4255
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4248, metadata !DIExpression()), !dbg !4255
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #44, !dbg !4256
  call void @llvm.va_start(ptr nonnull %5), !dbg !4257
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !4258
  call void @llvm.va_end(ptr nonnull %5), !dbg !4259
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #44, !dbg !4260
  ret void, !dbg !4260
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #20 !dbg !4261 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !4262, !tbaa !863
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.106, ptr noundef %1), !dbg !4262
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.17.123, i32 noundef 5) #44, !dbg !4263
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.124) #44, !dbg !4263
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.19.125, i32 noundef 5) #44, !dbg !4264
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.126, ptr noundef nonnull @.str.21.127) #44, !dbg !4264
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.104, ptr noundef nonnull @.str.22.128, i32 noundef 5) #44, !dbg !4265
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.129) #44, !dbg !4265
  ret void, !dbg !4266
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #33 !dbg !4267 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4272, metadata !DIExpression()), !dbg !4275
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4273, metadata !DIExpression()), !dbg !4275
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4274, metadata !DIExpression()), !dbg !4275
  call void @llvm.dbg.value(metadata ptr %0, metadata !4276, metadata !DIExpression()), !dbg !4281
  call void @llvm.dbg.value(metadata i64 %1, metadata !4279, metadata !DIExpression()), !dbg !4281
  call void @llvm.dbg.value(metadata i64 %2, metadata !4280, metadata !DIExpression()), !dbg !4281
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #44, !dbg !4283
  call void @llvm.dbg.value(metadata ptr %4, metadata !4284, metadata !DIExpression()), !dbg !4289
  %5 = icmp eq ptr %4, null, !dbg !4291
  br i1 %5, label %6, label %7, !dbg !4293

6:                                                ; preds = %3
  tail call void @xalloc_die() #46, !dbg !4294
  unreachable, !dbg !4294

7:                                                ; preds = %3
  ret ptr %4, !dbg !4295
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #34 !dbg !4277 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4276, metadata !DIExpression()), !dbg !4296
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4279, metadata !DIExpression()), !dbg !4296
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4280, metadata !DIExpression()), !dbg !4296
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #44, !dbg !4297
  call void @llvm.dbg.value(metadata ptr %4, metadata !4284, metadata !DIExpression()), !dbg !4298
  %5 = icmp eq ptr %4, null, !dbg !4300
  br i1 %5, label %6, label %7, !dbg !4301

6:                                                ; preds = %3
  tail call void @xalloc_die() #46, !dbg !4302
  unreachable, !dbg !4302

7:                                                ; preds = %3
  ret ptr %4, !dbg !4303
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #35 !dbg !4304 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4306, metadata !DIExpression()), !dbg !4307
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #49, !dbg !4308
  call void @llvm.dbg.value(metadata ptr %2, metadata !4284, metadata !DIExpression()), !dbg !4309
  %3 = icmp eq ptr %2, null, !dbg !4311
  br i1 %3, label %4, label %5, !dbg !4312

4:                                                ; preds = %1
  tail call void @xalloc_die() #46, !dbg !4313
  unreachable, !dbg !4313

5:                                                ; preds = %1
  ret ptr %2, !dbg !4314
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #35 !dbg !4315 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4319, metadata !DIExpression()), !dbg !4320
  call void @llvm.dbg.value(metadata i64 %0, metadata !4321, metadata !DIExpression()), !dbg !4325
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #49, !dbg !4327
  call void @llvm.dbg.value(metadata ptr %2, metadata !4284, metadata !DIExpression()), !dbg !4328
  %3 = icmp eq ptr %2, null, !dbg !4330
  br i1 %3, label %4, label %5, !dbg !4331

4:                                                ; preds = %1
  tail call void @xalloc_die() #46, !dbg !4332
  unreachable, !dbg !4332

5:                                                ; preds = %1
  ret ptr %2, !dbg !4333
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #35 !dbg !4334 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4338, metadata !DIExpression()), !dbg !4339
  call void @llvm.dbg.value(metadata i64 %0, metadata !4306, metadata !DIExpression()), !dbg !4340
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #49, !dbg !4342
  call void @llvm.dbg.value(metadata ptr %2, metadata !4284, metadata !DIExpression()), !dbg !4343
  %3 = icmp eq ptr %2, null, !dbg !4345
  br i1 %3, label %4, label %5, !dbg !4346

4:                                                ; preds = %1
  tail call void @xalloc_die() #46, !dbg !4347
  unreachable, !dbg !4347

5:                                                ; preds = %1
  ret ptr %2, !dbg !4348
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4349 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4353, metadata !DIExpression()), !dbg !4355
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4354, metadata !DIExpression()), !dbg !4355
  call void @llvm.dbg.value(metadata ptr %0, metadata !4356, metadata !DIExpression()), !dbg !4361
  call void @llvm.dbg.value(metadata i64 %1, metadata !4360, metadata !DIExpression()), !dbg !4361
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4363
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #51, !dbg !4364
  call void @llvm.dbg.value(metadata ptr %4, metadata !4284, metadata !DIExpression()), !dbg !4365
  %5 = icmp eq ptr %4, null, !dbg !4367
  br i1 %5, label %6, label %7, !dbg !4368

6:                                                ; preds = %2
  tail call void @xalloc_die() #46, !dbg !4369
  unreachable, !dbg !4369

7:                                                ; preds = %2
  ret ptr %4, !dbg !4370
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !4371 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #37

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4372 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4376, metadata !DIExpression()), !dbg !4378
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4377, metadata !DIExpression()), !dbg !4378
  call void @llvm.dbg.value(metadata ptr %0, metadata !4379, metadata !DIExpression()), !dbg !4383
  call void @llvm.dbg.value(metadata i64 %1, metadata !4382, metadata !DIExpression()), !dbg !4383
  call void @llvm.dbg.value(metadata ptr %0, metadata !4356, metadata !DIExpression()), !dbg !4385
  call void @llvm.dbg.value(metadata i64 %1, metadata !4360, metadata !DIExpression()), !dbg !4385
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4387
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #51, !dbg !4388
  call void @llvm.dbg.value(metadata ptr %4, metadata !4284, metadata !DIExpression()), !dbg !4389
  %5 = icmp eq ptr %4, null, !dbg !4391
  br i1 %5, label %6, label %7, !dbg !4392

6:                                                ; preds = %2
  tail call void @xalloc_die() #46, !dbg !4393
  unreachable, !dbg !4393

7:                                                ; preds = %2
  ret ptr %4, !dbg !4394
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #34 !dbg !4395 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4399, metadata !DIExpression()), !dbg !4402
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4400, metadata !DIExpression()), !dbg !4402
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4401, metadata !DIExpression()), !dbg !4402
  call void @llvm.dbg.value(metadata ptr %0, metadata !4403, metadata !DIExpression()), !dbg !4408
  call void @llvm.dbg.value(metadata i64 %1, metadata !4406, metadata !DIExpression()), !dbg !4408
  call void @llvm.dbg.value(metadata i64 %2, metadata !4407, metadata !DIExpression()), !dbg !4408
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #44, !dbg !4410
  call void @llvm.dbg.value(metadata ptr %4, metadata !4284, metadata !DIExpression()), !dbg !4411
  %5 = icmp eq ptr %4, null, !dbg !4413
  br i1 %5, label %6, label %7, !dbg !4414

6:                                                ; preds = %3
  tail call void @xalloc_die() #46, !dbg !4415
  unreachable, !dbg !4415

7:                                                ; preds = %3
  ret ptr %4, !dbg !4416
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #38 !dbg !4417 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4421, metadata !DIExpression()), !dbg !4423
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4422, metadata !DIExpression()), !dbg !4423
  call void @llvm.dbg.value(metadata ptr null, metadata !4276, metadata !DIExpression()), !dbg !4424
  call void @llvm.dbg.value(metadata i64 %0, metadata !4279, metadata !DIExpression()), !dbg !4424
  call void @llvm.dbg.value(metadata i64 %1, metadata !4280, metadata !DIExpression()), !dbg !4424
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #44, !dbg !4426
  call void @llvm.dbg.value(metadata ptr %3, metadata !4284, metadata !DIExpression()), !dbg !4427
  %4 = icmp eq ptr %3, null, !dbg !4429
  br i1 %4, label %5, label %6, !dbg !4430

5:                                                ; preds = %2
  tail call void @xalloc_die() #46, !dbg !4431
  unreachable, !dbg !4431

6:                                                ; preds = %2
  ret ptr %3, !dbg !4432
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #38 !dbg !4433 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4437, metadata !DIExpression()), !dbg !4439
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4438, metadata !DIExpression()), !dbg !4439
  call void @llvm.dbg.value(metadata ptr null, metadata !4399, metadata !DIExpression()), !dbg !4440
  call void @llvm.dbg.value(metadata i64 %0, metadata !4400, metadata !DIExpression()), !dbg !4440
  call void @llvm.dbg.value(metadata i64 %1, metadata !4401, metadata !DIExpression()), !dbg !4440
  call void @llvm.dbg.value(metadata ptr null, metadata !4403, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata i64 %0, metadata !4406, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata i64 %1, metadata !4407, metadata !DIExpression()), !dbg !4442
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #44, !dbg !4444
  call void @llvm.dbg.value(metadata ptr %3, metadata !4284, metadata !DIExpression()), !dbg !4445
  %4 = icmp eq ptr %3, null, !dbg !4447
  br i1 %4, label %5, label %6, !dbg !4448

5:                                                ; preds = %2
  tail call void @xalloc_die() #46, !dbg !4449
  unreachable, !dbg !4449

6:                                                ; preds = %2
  ret ptr %3, !dbg !4450
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #20 !dbg !4451 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4455, metadata !DIExpression()), !dbg !4457
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4456, metadata !DIExpression()), !dbg !4457
  call void @llvm.dbg.value(metadata ptr %0, metadata !793, metadata !DIExpression()), !dbg !4458
  call void @llvm.dbg.value(metadata ptr %1, metadata !794, metadata !DIExpression()), !dbg !4458
  call void @llvm.dbg.value(metadata i64 1, metadata !795, metadata !DIExpression()), !dbg !4458
  %3 = load i64, ptr %1, align 8, !dbg !4460, !tbaa !1321
  call void @llvm.dbg.value(metadata i64 %3, metadata !796, metadata !DIExpression()), !dbg !4458
  %4 = icmp eq ptr %0, null, !dbg !4461
  br i1 %4, label %5, label %8, !dbg !4463

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4464
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4467
  br label %15, !dbg !4467

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4468
  %10 = add nuw i64 %9, 1, !dbg !4468
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4468
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4468
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4468
  call void @llvm.dbg.value(metadata i64 %13, metadata !796, metadata !DIExpression()), !dbg !4458
  br i1 %12, label %14, label %15, !dbg !4471

14:                                               ; preds = %8
  tail call void @xalloc_die() #46, !dbg !4472
  unreachable, !dbg !4472

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4458
  call void @llvm.dbg.value(metadata i64 %16, metadata !796, metadata !DIExpression()), !dbg !4458
  call void @llvm.dbg.value(metadata ptr %0, metadata !4276, metadata !DIExpression()), !dbg !4473
  call void @llvm.dbg.value(metadata i64 %16, metadata !4279, metadata !DIExpression()), !dbg !4473
  call void @llvm.dbg.value(metadata i64 1, metadata !4280, metadata !DIExpression()), !dbg !4473
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #44, !dbg !4475
  call void @llvm.dbg.value(metadata ptr %17, metadata !4284, metadata !DIExpression()), !dbg !4476
  %18 = icmp eq ptr %17, null, !dbg !4478
  br i1 %18, label %19, label %20, !dbg !4479

19:                                               ; preds = %15
  tail call void @xalloc_die() #46, !dbg !4480
  unreachable, !dbg !4480

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !793, metadata !DIExpression()), !dbg !4458
  store i64 %16, ptr %1, align 8, !dbg !4481, !tbaa !1321
  ret ptr %17, !dbg !4482
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #20 !dbg !788 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !793, metadata !DIExpression()), !dbg !4483
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !794, metadata !DIExpression()), !dbg !4483
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !795, metadata !DIExpression()), !dbg !4483
  %4 = load i64, ptr %1, align 8, !dbg !4484, !tbaa !1321
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !796, metadata !DIExpression()), !dbg !4483
  %5 = icmp eq ptr %0, null, !dbg !4485
  br i1 %5, label %6, label %13, !dbg !4486

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4487
  br i1 %7, label %8, label %20, !dbg !4488

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4489
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !796, metadata !DIExpression()), !dbg !4483
  %10 = icmp ugt i64 %2, 128, !dbg !4491
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4492
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !796, metadata !DIExpression()), !dbg !4483
  br label %20, !dbg !4493

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4494
  %15 = add nuw i64 %14, 1, !dbg !4494
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4494
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4494
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4494
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !796, metadata !DIExpression()), !dbg !4483
  br i1 %17, label %19, label %20, !dbg !4495

19:                                               ; preds = %13
  tail call void @xalloc_die() #46, !dbg !4496
  unreachable, !dbg !4496

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4483
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !796, metadata !DIExpression()), !dbg !4483
  call void @llvm.dbg.value(metadata ptr %0, metadata !4276, metadata !DIExpression()), !dbg !4497
  call void @llvm.dbg.value(metadata i64 %21, metadata !4279, metadata !DIExpression()), !dbg !4497
  call void @llvm.dbg.value(metadata i64 %2, metadata !4280, metadata !DIExpression()), !dbg !4497
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #44, !dbg !4499
  call void @llvm.dbg.value(metadata ptr %22, metadata !4284, metadata !DIExpression()), !dbg !4500
  %23 = icmp eq ptr %22, null, !dbg !4502
  br i1 %23, label %24, label %25, !dbg !4503

24:                                               ; preds = %20
  tail call void @xalloc_die() #46, !dbg !4504
  unreachable, !dbg !4504

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !793, metadata !DIExpression()), !dbg !4483
  store i64 %21, ptr %1, align 8, !dbg !4505, !tbaa !1321
  ret ptr %22, !dbg !4506
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #20 !dbg !800 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !809, metadata !DIExpression()), !dbg !4507
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !810, metadata !DIExpression()), !dbg !4507
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !811, metadata !DIExpression()), !dbg !4507
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !812, metadata !DIExpression()), !dbg !4507
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !813, metadata !DIExpression()), !dbg !4507
  %6 = load i64, ptr %1, align 8, !dbg !4508, !tbaa !1321
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !814, metadata !DIExpression()), !dbg !4507
  %7 = ashr i64 %6, 1, !dbg !4509
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4509
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4509
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4509
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !815, metadata !DIExpression()), !dbg !4507
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4511
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !815, metadata !DIExpression()), !dbg !4507
  %12 = icmp sgt i64 %3, -1, !dbg !4512
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !4514
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !4514
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !815, metadata !DIExpression()), !dbg !4507
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !4515
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !4515
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !4515
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !816, metadata !DIExpression()), !dbg !4507
  %18 = icmp slt i64 %17, 128, !dbg !4515
  %19 = select i1 %18, i64 128, i64 0, !dbg !4515
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !4515
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !817, metadata !DIExpression()), !dbg !4507
  %21 = icmp eq i64 %20, 0, !dbg !4516
  br i1 %21, label %26, label %22, !dbg !4518

22:                                               ; preds = %5
  %23 = sdiv i64 %20, %4, !dbg !4519
  tail call void @llvm.dbg.value(metadata i64 %23, metadata !815, metadata !DIExpression()), !dbg !4507
  %24 = srem i64 %20, %4, !dbg !4521
  %25 = sub nsw i64 %20, %24, !dbg !4522
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !816, metadata !DIExpression()), !dbg !4507
  br label %26, !dbg !4523

26:                                               ; preds = %22, %5
  %27 = phi i64 [ %23, %22 ], [ %14, %5 ], !dbg !4507
  %28 = phi i64 [ %25, %22 ], [ %17, %5 ], !dbg !4507
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !816, metadata !DIExpression()), !dbg !4507
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !815, metadata !DIExpression()), !dbg !4507
  %29 = icmp eq ptr %0, null, !dbg !4524
  br i1 %29, label %30, label %31, !dbg !4526

30:                                               ; preds = %26
  store i64 0, ptr %1, align 8, !dbg !4527, !tbaa !1321
  br label %31, !dbg !4528

31:                                               ; preds = %30, %26
  %32 = sub nsw i64 %27, %6, !dbg !4529
  %33 = icmp slt i64 %32, %2, !dbg !4531
  br i1 %33, label %34, label %46, !dbg !4532

34:                                               ; preds = %31
  %35 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4533
  %36 = extractvalue { i64, i1 } %35, 1, !dbg !4533
  %37 = extractvalue { i64, i1 } %35, 0, !dbg !4533
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !815, metadata !DIExpression()), !dbg !4507
  %38 = icmp sgt i64 %37, %3
  %39 = select i1 %12, i1 %38, i1 false
  %40 = or i1 %36, %39, !dbg !4534
  br i1 %40, label %45, label %41, !dbg !4534

41:                                               ; preds = %34
  %42 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %37, i64 %4), !dbg !4535
  %43 = extractvalue { i64, i1 } %42, 1, !dbg !4535
  %44 = extractvalue { i64, i1 } %42, 0, !dbg !4535
  tail call void @llvm.dbg.value(metadata i64 %44, metadata !816, metadata !DIExpression()), !dbg !4507
  br i1 %43, label %45, label %46, !dbg !4536

45:                                               ; preds = %41, %34
  tail call void @xalloc_die() #46, !dbg !4537
  unreachable, !dbg !4537

46:                                               ; preds = %41, %31
  %47 = phi i64 [ %37, %41 ], [ %27, %31 ], !dbg !4507
  %48 = phi i64 [ %44, %41 ], [ %28, %31 ], !dbg !4507
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !816, metadata !DIExpression()), !dbg !4507
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !815, metadata !DIExpression()), !dbg !4507
  call void @llvm.dbg.value(metadata ptr %0, metadata !4353, metadata !DIExpression()), !dbg !4538
  call void @llvm.dbg.value(metadata i64 %48, metadata !4354, metadata !DIExpression()), !dbg !4538
  call void @llvm.dbg.value(metadata ptr %0, metadata !4356, metadata !DIExpression()), !dbg !4540
  call void @llvm.dbg.value(metadata i64 %48, metadata !4360, metadata !DIExpression()), !dbg !4540
  %49 = tail call i64 @llvm.umax.i64(i64 %48, i64 1), !dbg !4542
  %50 = tail call ptr @realloc(ptr noundef %0, i64 noundef %49) #51, !dbg !4543
  call void @llvm.dbg.value(metadata ptr %50, metadata !4284, metadata !DIExpression()), !dbg !4544
  %51 = icmp eq ptr %50, null, !dbg !4546
  br i1 %51, label %52, label %53, !dbg !4547

52:                                               ; preds = %46
  tail call void @xalloc_die() #46, !dbg !4548
  unreachable, !dbg !4548

53:                                               ; preds = %46
  tail call void @llvm.dbg.value(metadata ptr %50, metadata !809, metadata !DIExpression()), !dbg !4507
  store i64 %47, ptr %1, align 8, !dbg !4549, !tbaa !1321
  ret ptr %50, !dbg !4550
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #35 !dbg !4551 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4553, metadata !DIExpression()), !dbg !4554
  call void @llvm.dbg.value(metadata i64 %0, metadata !4555, metadata !DIExpression()), !dbg !4559
  call void @llvm.dbg.value(metadata i64 1, metadata !4558, metadata !DIExpression()), !dbg !4559
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #52, !dbg !4561
  call void @llvm.dbg.value(metadata ptr %2, metadata !4284, metadata !DIExpression()), !dbg !4562
  %3 = icmp eq ptr %2, null, !dbg !4564
  br i1 %3, label %4, label %5, !dbg !4565

4:                                                ; preds = %1
  tail call void @xalloc_die() #46, !dbg !4566
  unreachable, !dbg !4566

5:                                                ; preds = %1
  ret ptr %2, !dbg !4567
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4568 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #39

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #38 !dbg !4556 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4555, metadata !DIExpression()), !dbg !4569
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4558, metadata !DIExpression()), !dbg !4569
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #52, !dbg !4570
  call void @llvm.dbg.value(metadata ptr %3, metadata !4284, metadata !DIExpression()), !dbg !4571
  %4 = icmp eq ptr %3, null, !dbg !4573
  br i1 %4, label %5, label %6, !dbg !4574

5:                                                ; preds = %2
  tail call void @xalloc_die() #46, !dbg !4575
  unreachable, !dbg !4575

6:                                                ; preds = %2
  ret ptr %3, !dbg !4576
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #35 !dbg !4577 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4579, metadata !DIExpression()), !dbg !4580
  call void @llvm.dbg.value(metadata i64 %0, metadata !4581, metadata !DIExpression()), !dbg !4585
  call void @llvm.dbg.value(metadata i64 1, metadata !4584, metadata !DIExpression()), !dbg !4585
  call void @llvm.dbg.value(metadata i64 %0, metadata !4587, metadata !DIExpression()), !dbg !4591
  call void @llvm.dbg.value(metadata i64 1, metadata !4590, metadata !DIExpression()), !dbg !4591
  call void @llvm.dbg.value(metadata i64 %0, metadata !4587, metadata !DIExpression()), !dbg !4591
  call void @llvm.dbg.value(metadata i64 1, metadata !4590, metadata !DIExpression()), !dbg !4591
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #52, !dbg !4593
  call void @llvm.dbg.value(metadata ptr %2, metadata !4284, metadata !DIExpression()), !dbg !4594
  %3 = icmp eq ptr %2, null, !dbg !4596
  br i1 %3, label %4, label %5, !dbg !4597

4:                                                ; preds = %1
  tail call void @xalloc_die() #46, !dbg !4598
  unreachable, !dbg !4598

5:                                                ; preds = %1
  ret ptr %2, !dbg !4599
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #38 !dbg !4582 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4581, metadata !DIExpression()), !dbg !4600
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4584, metadata !DIExpression()), !dbg !4600
  call void @llvm.dbg.value(metadata i64 %0, metadata !4587, metadata !DIExpression()), !dbg !4601
  call void @llvm.dbg.value(metadata i64 %1, metadata !4590, metadata !DIExpression()), !dbg !4601
  call void @llvm.dbg.value(metadata i64 %0, metadata !4587, metadata !DIExpression()), !dbg !4601
  call void @llvm.dbg.value(metadata i64 %1, metadata !4590, metadata !DIExpression()), !dbg !4601
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #52, !dbg !4603
  call void @llvm.dbg.value(metadata ptr %3, metadata !4284, metadata !DIExpression()), !dbg !4604
  %4 = icmp eq ptr %3, null, !dbg !4606
  br i1 %4, label %5, label %6, !dbg !4607

5:                                                ; preds = %2
  tail call void @xalloc_die() #46, !dbg !4608
  unreachable, !dbg !4608

6:                                                ; preds = %2
  ret ptr %3, !dbg !4609
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4610 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4614, metadata !DIExpression()), !dbg !4616
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4615, metadata !DIExpression()), !dbg !4616
  call void @llvm.dbg.value(metadata i64 %1, metadata !4306, metadata !DIExpression()), !dbg !4617
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #49, !dbg !4619
  call void @llvm.dbg.value(metadata ptr %3, metadata !4284, metadata !DIExpression()), !dbg !4620
  %4 = icmp eq ptr %3, null, !dbg !4622
  br i1 %4, label %5, label %6, !dbg !4623

5:                                                ; preds = %2
  tail call void @xalloc_die() #46, !dbg !4624
  unreachable, !dbg !4624

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4625, metadata !DIExpression()), !dbg !4633
  call void @llvm.dbg.value(metadata ptr %0, metadata !4631, metadata !DIExpression()), !dbg !4633
  call void @llvm.dbg.value(metadata i64 %1, metadata !4632, metadata !DIExpression()), !dbg !4633
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #44, !dbg !4635
  ret ptr %3, !dbg !4636
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4637 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4641, metadata !DIExpression()), !dbg !4643
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4642, metadata !DIExpression()), !dbg !4643
  call void @llvm.dbg.value(metadata i64 %1, metadata !4319, metadata !DIExpression()), !dbg !4644
  call void @llvm.dbg.value(metadata i64 %1, metadata !4321, metadata !DIExpression()), !dbg !4646
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #49, !dbg !4648
  call void @llvm.dbg.value(metadata ptr %3, metadata !4284, metadata !DIExpression()), !dbg !4649
  %4 = icmp eq ptr %3, null, !dbg !4651
  br i1 %4, label %5, label %6, !dbg !4652

5:                                                ; preds = %2
  tail call void @xalloc_die() #46, !dbg !4653
  unreachable, !dbg !4653

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4625, metadata !DIExpression()), !dbg !4654
  call void @llvm.dbg.value(metadata ptr %0, metadata !4631, metadata !DIExpression()), !dbg !4654
  call void @llvm.dbg.value(metadata i64 %1, metadata !4632, metadata !DIExpression()), !dbg !4654
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #44, !dbg !4656
  ret ptr %3, !dbg !4657
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #20 !dbg !4658 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4662, metadata !DIExpression()), !dbg !4665
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4663, metadata !DIExpression()), !dbg !4665
  %3 = add nsw i64 %1, 1, !dbg !4666
  call void @llvm.dbg.value(metadata i64 %3, metadata !4319, metadata !DIExpression()), !dbg !4667
  call void @llvm.dbg.value(metadata i64 %3, metadata !4321, metadata !DIExpression()), !dbg !4669
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #49, !dbg !4671
  call void @llvm.dbg.value(metadata ptr %4, metadata !4284, metadata !DIExpression()), !dbg !4672
  %5 = icmp eq ptr %4, null, !dbg !4674
  br i1 %5, label %6, label %7, !dbg !4675

6:                                                ; preds = %2
  tail call void @xalloc_die() #46, !dbg !4676
  unreachable, !dbg !4676

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4664, metadata !DIExpression()), !dbg !4665
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4677
  store i8 0, ptr %8, align 1, !dbg !4678, !tbaa !943
  call void @llvm.dbg.value(metadata ptr %4, metadata !4625, metadata !DIExpression()), !dbg !4679
  call void @llvm.dbg.value(metadata ptr %0, metadata !4631, metadata !DIExpression()), !dbg !4679
  call void @llvm.dbg.value(metadata i64 %1, metadata !4632, metadata !DIExpression()), !dbg !4679
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #44, !dbg !4681
  ret ptr %4, !dbg !4682
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #20 !dbg !4683 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4685, metadata !DIExpression()), !dbg !4686
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #45, !dbg !4687
  %3 = add i64 %2, 1, !dbg !4688
  call void @llvm.dbg.value(metadata ptr %0, metadata !4614, metadata !DIExpression()), !dbg !4689
  call void @llvm.dbg.value(metadata i64 %3, metadata !4615, metadata !DIExpression()), !dbg !4689
  call void @llvm.dbg.value(metadata i64 %3, metadata !4306, metadata !DIExpression()), !dbg !4691
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #49, !dbg !4693
  call void @llvm.dbg.value(metadata ptr %4, metadata !4284, metadata !DIExpression()), !dbg !4694
  %5 = icmp eq ptr %4, null, !dbg !4696
  br i1 %5, label %6, label %7, !dbg !4697

6:                                                ; preds = %1
  tail call void @xalloc_die() #46, !dbg !4698
  unreachable, !dbg !4698

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4625, metadata !DIExpression()), !dbg !4699
  call void @llvm.dbg.value(metadata ptr %0, metadata !4631, metadata !DIExpression()), !dbg !4699
  call void @llvm.dbg.value(metadata i64 %3, metadata !4632, metadata !DIExpression()), !dbg !4699
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #44, !dbg !4701
  ret ptr %4, !dbg !4702
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4703 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4708, !tbaa !934
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !4705, metadata !DIExpression()), !dbg !4709
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.142, ptr noundef nonnull @.str.2.143, i32 noundef 5) #44, !dbg !4708
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.144, ptr noundef %2) #44, !dbg !4708
  %3 = icmp eq i32 %1, 0, !dbg !4708
  tail call void @llvm.assume(i1 %3), !dbg !4708
  tail call void @abort() #46, !dbg !4710
  unreachable, !dbg !4710
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #40

; Function Attrs: nounwind uwtable
define dso_local i32 @xstrtoimax(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr noundef readonly %4) local_unnamed_addr #20 !dbg !4711 {
  %6 = alloca ptr, align 8, !DIAssignID !4732
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4723, metadata !DIExpression(), metadata !4732, metadata ptr %6, metadata !DIExpression()), !dbg !4733
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4718, metadata !DIExpression()), !dbg !4733
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4719, metadata !DIExpression()), !dbg !4733
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !4720, metadata !DIExpression()), !dbg !4733
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4721, metadata !DIExpression()), !dbg !4733
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4722, metadata !DIExpression()), !dbg !4733
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #44, !dbg !4734
  %7 = icmp eq ptr %1, null, !dbg !4735
  %8 = select i1 %7, ptr %6, ptr %1, !dbg !4735
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !4724, metadata !DIExpression()), !dbg !4733
  %9 = tail call ptr @__errno_location() #47, !dbg !4736
  store i32 0, ptr %9, align 4, !dbg !4737, !tbaa !934
  %10 = call i64 @strtoimax(ptr noundef %0, ptr noundef nonnull %8, i32 noundef %2) #44, !dbg !4738
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !4725, metadata !DIExpression()), !dbg !4733
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4726, metadata !DIExpression()), !dbg !4733
  %11 = load ptr, ptr %8, align 8, !dbg !4739, !tbaa !863
  %12 = icmp eq ptr %11, %0, !dbg !4741
  br i1 %12, label %13, label %22, !dbg !4742

13:                                               ; preds = %5
  %14 = icmp eq ptr %4, null, !dbg !4743
  br i1 %14, label %490, label %15, !dbg !4746

15:                                               ; preds = %13
  %16 = load i8, ptr %0, align 1, !dbg !4747, !tbaa !943
  %17 = icmp eq i8 %16, 0, !dbg !4747
  br i1 %17, label %490, label %18, !dbg !4748

18:                                               ; preds = %15
  %19 = sext i8 %16 to i32, !dbg !4747
  %20 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %19) #45, !dbg !4749
  %21 = icmp eq ptr %20, null, !dbg !4749
  br i1 %21, label %490, label %29, !dbg !4750

22:                                               ; preds = %5
  %23 = load i32, ptr %9, align 4, !dbg !4751, !tbaa !934
  switch i32 %23, label %490 [
    i32 0, label %25
    i32 34, label %24
  ], !dbg !4753

24:                                               ; preds = %22
  tail call void @llvm.dbg.value(metadata i32 1, metadata !4726, metadata !DIExpression()), !dbg !4733
  br label %25, !dbg !4754

25:                                               ; preds = %22, %24
  %26 = phi i32 [ 1, %24 ], [ %23, %22 ], !dbg !4733
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !4725, metadata !DIExpression()), !dbg !4733
  tail call void @llvm.dbg.value(metadata i32 %26, metadata !4726, metadata !DIExpression()), !dbg !4733
  %27 = icmp eq ptr %4, null, !dbg !4756
  br i1 %27, label %28, label %29, !dbg !4758

28:                                               ; preds = %25
  store i64 %10, ptr %3, align 8, !dbg !4759, !tbaa !1321
  br label %490, !dbg !4761

29:                                               ; preds = %18, %25
  %30 = phi i32 [ %26, %25 ], [ 0, %18 ]
  %31 = phi i64 [ %10, %25 ], [ 1, %18 ]
  %32 = load i8, ptr %11, align 1, !dbg !4762, !tbaa !943
  %33 = icmp eq i8 %32, 0, !dbg !4763
  br i1 %33, label %487, label %34, !dbg !4764

34:                                               ; preds = %29
  %35 = sext i8 %32 to i32, !dbg !4762
  %36 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %35) #45, !dbg !4765
  %37 = icmp eq ptr %36, null, !dbg !4765
  br i1 %37, label %38, label %40, !dbg !4767

38:                                               ; preds = %34
  store i64 %31, ptr %3, align 8, !dbg !4768, !tbaa !1321
  %39 = or disjoint i32 %30, 2, !dbg !4770
  br label %490, !dbg !4771

40:                                               ; preds = %34
  tail call void @llvm.dbg.value(metadata i32 1024, metadata !4727, metadata !DIExpression()), !dbg !4772
  tail call void @llvm.dbg.value(metadata i32 1, metadata !4730, metadata !DIExpression()), !dbg !4772
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
  ], !dbg !4773

41:                                               ; preds = %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40
  %42 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef 48) #45, !dbg !4774
  %43 = icmp eq ptr %42, null, !dbg !4774
  br i1 %43, label %53, label %44, !dbg !4777

44:                                               ; preds = %41
  %45 = getelementptr inbounds i8, ptr %11, i64 1, !dbg !4778
  %46 = load i8, ptr %45, align 1, !dbg !4778, !tbaa !943
  switch i8 %46, label %53 [
    i8 105, label %47
    i8 66, label %52
    i8 68, label %52
  ], !dbg !4779

47:                                               ; preds = %44
  %48 = getelementptr inbounds i8, ptr %11, i64 2, !dbg !4780
  %49 = load i8, ptr %48, align 1, !dbg !4780, !tbaa !943
  %50 = icmp eq i8 %49, 66, !dbg !4783
  %51 = select i1 %50, i64 3, i64 1, !dbg !4784
  br label %53, !dbg !4784

52:                                               ; preds = %44, %44
  tail call void @llvm.dbg.value(metadata i32 1000, metadata !4727, metadata !DIExpression()), !dbg !4772
  tail call void @llvm.dbg.value(metadata i32 2, metadata !4730, metadata !DIExpression()), !dbg !4772
  br label %53, !dbg !4785

53:                                               ; preds = %47, %41, %44, %52, %40
  %54 = phi i64 [ 1024, %40 ], [ 1024, %44 ], [ 1000, %52 ], [ 1024, %41 ], [ 1024, %47 ], !dbg !4772
  %55 = phi i64 [ 1, %40 ], [ 1, %44 ], [ 2, %52 ], [ 1, %41 ], [ %51, %47 ], !dbg !4772
  tail call void @llvm.dbg.value(metadata i64 %55, metadata !4730, metadata !DIExpression()), !dbg !4772
  tail call void @llvm.dbg.value(metadata i64 %54, metadata !4727, metadata !DIExpression()), !dbg !4772
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
  ], !dbg !4786

56:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !4787, metadata !DIExpression()), !dbg !4795
  call void @llvm.dbg.value(metadata i32 7, metadata !4794, metadata !DIExpression()), !dbg !4795
  call void @llvm.dbg.value(metadata i32 6, metadata !4794, metadata !DIExpression()), !dbg !4795
  call void @llvm.dbg.value(metadata ptr undef, metadata !4798, metadata !DIExpression()), !dbg !4805
  call void @llvm.dbg.value(metadata i64 %54, metadata !4803, metadata !DIExpression()), !dbg !4805
  %57 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !4807
  %58 = extractvalue { i64, i1 } %57, 1, !dbg !4807
  call void @llvm.dbg.value(metadata i64 poison, metadata !4804, metadata !DIExpression()), !dbg !4805
  %59 = extractvalue { i64, i1 } %57, 0, !dbg !4809
  %60 = icmp slt i64 %31, 0, !dbg !4809
  %61 = select i1 %60, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4809
  %62 = select i1 %58, i64 %61, i64 %59, !dbg !4809
  call void @llvm.dbg.value(metadata i1 %58, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4795
  call void @llvm.dbg.value(metadata i32 6, metadata !4794, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4795
  call void @llvm.dbg.value(metadata i1 %58, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4795
  call void @llvm.dbg.value(metadata i32 6, metadata !4794, metadata !DIExpression()), !dbg !4795
  call void @llvm.dbg.value(metadata i32 5, metadata !4794, metadata !DIExpression()), !dbg !4795
  call void @llvm.dbg.value(metadata ptr undef, metadata !4798, metadata !DIExpression()), !dbg !4805
  call void @llvm.dbg.value(metadata i64 %54, metadata !4803, metadata !DIExpression()), !dbg !4805
  %63 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %62, i64 %54), !dbg !4807
  %64 = extractvalue { i64, i1 } %63, 1, !dbg !4807
  call void @llvm.dbg.value(metadata i64 poison, metadata !4804, metadata !DIExpression()), !dbg !4805
  %65 = extractvalue { i64, i1 } %63, 0, !dbg !4809
  %66 = icmp slt i64 %62, 0, !dbg !4809
  %67 = select i1 %66, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4809
  %68 = select i1 %64, i64 %67, i64 %65, !dbg !4809
  %69 = or i1 %58, %64, !dbg !4810
  call void @llvm.dbg.value(metadata i1 %69, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4795
  call void @llvm.dbg.value(metadata i32 5, metadata !4794, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4795
  call void @llvm.dbg.value(metadata i1 %69, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4795
  call void @llvm.dbg.value(metadata i32 5, metadata !4794, metadata !DIExpression()), !dbg !4795
  call void @llvm.dbg.value(metadata i32 4, metadata !4794, metadata !DIExpression()), !dbg !4795
  call void @llvm.dbg.value(metadata ptr undef, metadata !4798, metadata !DIExpression()), !dbg !4805
  call void @llvm.dbg.value(metadata i64 %54, metadata !4803, metadata !DIExpression()), !dbg !4805
  %70 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %68, i64 %54), !dbg !4807
  %71 = extractvalue { i64, i1 } %70, 1, !dbg !4807
  call void @llvm.dbg.value(metadata i64 poison, metadata !4804, metadata !DIExpression()), !dbg !4805
  %72 = extractvalue { i64, i1 } %70, 0, !dbg !4809
  %73 = icmp slt i64 %68, 0, !dbg !4809
  %74 = select i1 %73, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4809
  %75 = select i1 %71, i64 %74, i64 %72, !dbg !4809
  %76 = or i1 %69, %71, !dbg !4810
  call void @llvm.dbg.value(metadata i1 %76, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4795
  call void @llvm.dbg.value(metadata i32 4, metadata !4794, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4795
  call void @llvm.dbg.value(metadata i1 %76, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4795
  call void @llvm.dbg.value(metadata i32 4, metadata !4794, metadata !DIExpression()), !dbg !4795
  call void @llvm.dbg.value(metadata i32 3, metadata !4794, metadata !DIExpression()), !dbg !4795
  call void @llvm.dbg.value(metadata ptr undef, metadata !4798, metadata !DIExpression()), !dbg !4805
  call void @llvm.dbg.value(metadata i64 %54, metadata !4803, metadata !DIExpression()), !dbg !4805
  %77 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %75, i64 %54), !dbg !4807
  %78 = extractvalue { i64, i1 } %77, 1, !dbg !4807
  call void @llvm.dbg.value(metadata i64 poison, metadata !4804, metadata !DIExpression()), !dbg !4805
  %79 = extractvalue { i64, i1 } %77, 0, !dbg !4809
  %80 = icmp slt i64 %75, 0, !dbg !4809
  %81 = select i1 %80, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4809
  %82 = select i1 %78, i64 %81, i64 %79, !dbg !4809
  %83 = or i1 %76, %78, !dbg !4810
  call void @llvm.dbg.value(metadata i1 %83, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4795
  call void @llvm.dbg.value(metadata i32 3, metadata !4794, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4795
  call void @llvm.dbg.value(metadata i1 %83, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4795
  call void @llvm.dbg.value(metadata i32 3, metadata !4794, metadata !DIExpression()), !dbg !4795
  call void @llvm.dbg.value(metadata i32 2, metadata !4794, metadata !DIExpression()), !dbg !4795
  call void @llvm.dbg.value(metadata ptr undef, metadata !4798, metadata !DIExpression()), !dbg !4805
  call void @llvm.dbg.value(metadata i64 %54, metadata !4803, metadata !DIExpression()), !dbg !4805
  %84 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %82, i64 %54), !dbg !4807
  %85 = extractvalue { i64, i1 } %84, 1, !dbg !4807
  call void @llvm.dbg.value(metadata i64 poison, metadata !4804, metadata !DIExpression()), !dbg !4805
  %86 = extractvalue { i64, i1 } %84, 0, !dbg !4809
  %87 = icmp slt i64 %82, 0, !dbg !4809
  %88 = select i1 %87, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4809
  %89 = select i1 %85, i64 %88, i64 %86, !dbg !4809
  %90 = or i1 %83, %85, !dbg !4810
  call void @llvm.dbg.value(metadata i1 %90, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4795
  call void @llvm.dbg.value(metadata i32 2, metadata !4794, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4795
  call void @llvm.dbg.value(metadata i1 %90, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4795
  call void @llvm.dbg.value(metadata i32 2, metadata !4794, metadata !DIExpression()), !dbg !4795
  call void @llvm.dbg.value(metadata i32 1, metadata !4794, metadata !DIExpression()), !dbg !4795
  call void @llvm.dbg.value(metadata ptr undef, metadata !4798, metadata !DIExpression()), !dbg !4805
  call void @llvm.dbg.value(metadata i64 %54, metadata !4803, metadata !DIExpression()), !dbg !4805
  %91 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %89, i64 %54), !dbg !4807
  %92 = extractvalue { i64, i1 } %91, 1, !dbg !4807
  call void @llvm.dbg.value(metadata i64 poison, metadata !4804, metadata !DIExpression()), !dbg !4805
  %93 = extractvalue { i64, i1 } %91, 0, !dbg !4809
  %94 = icmp slt i64 %89, 0, !dbg !4809
  %95 = select i1 %94, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4809
  %96 = select i1 %92, i64 %95, i64 %93, !dbg !4809
  %97 = or i1 %90, %92, !dbg !4810
  call void @llvm.dbg.value(metadata i1 %97, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4795
  call void @llvm.dbg.value(metadata i32 1, metadata !4794, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4795
  call void @llvm.dbg.value(metadata i1 %97, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4795
  call void @llvm.dbg.value(metadata i32 1, metadata !4794, metadata !DIExpression()), !dbg !4795
  call void @llvm.dbg.value(metadata i32 0, metadata !4794, metadata !DIExpression()), !dbg !4795
  call void @llvm.dbg.value(metadata ptr undef, metadata !4798, metadata !DIExpression()), !dbg !4805
  call void @llvm.dbg.value(metadata i64 %54, metadata !4803, metadata !DIExpression()), !dbg !4805
  %98 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %96, i64 %54), !dbg !4807
  %99 = extractvalue { i64, i1 } %98, 1, !dbg !4807
  call void @llvm.dbg.value(metadata i64 poison, metadata !4804, metadata !DIExpression()), !dbg !4805
  %100 = extractvalue { i64, i1 } %98, 0, !dbg !4809
  %101 = icmp slt i64 %96, 0, !dbg !4809
  %102 = select i1 %101, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4809
  %103 = select i1 %99, i64 %102, i64 %100, !dbg !4809
  %104 = or i1 %97, %99, !dbg !4810
  %105 = zext i1 %104 to i32, !dbg !4810
  call void @llvm.dbg.value(metadata i32 %105, metadata !4787, metadata !DIExpression()), !dbg !4795
  call void @llvm.dbg.value(metadata i32 0, metadata !4794, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4795
  br label %476, !dbg !4811

106:                                              ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !4787, metadata !DIExpression()), !dbg !4812
  call void @llvm.dbg.value(metadata i32 8, metadata !4794, metadata !DIExpression()), !dbg !4812
  call void @llvm.dbg.value(metadata i32 7, metadata !4794, metadata !DIExpression()), !dbg !4812
  call void @llvm.dbg.value(metadata ptr undef, metadata !4798, metadata !DIExpression()), !dbg !4814
  call void @llvm.dbg.value(metadata i64 %54, metadata !4803, metadata !DIExpression()), !dbg !4814
  %107 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !4816
  %108 = extractvalue { i64, i1 } %107, 1, !dbg !4816
  call void @llvm.dbg.value(metadata i64 poison, metadata !4804, metadata !DIExpression()), !dbg !4814
  %109 = extractvalue { i64, i1 } %107, 0, !dbg !4817
  %110 = icmp slt i64 %31, 0, !dbg !4817
  %111 = select i1 %110, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4817
  %112 = select i1 %108, i64 %111, i64 %109, !dbg !4817
  call void @llvm.dbg.value(metadata i1 %108, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4812
  call void @llvm.dbg.value(metadata i32 7, metadata !4794, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4812
  call void @llvm.dbg.value(metadata i1 %108, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4812
  call void @llvm.dbg.value(metadata i32 7, metadata !4794, metadata !DIExpression()), !dbg !4812
  call void @llvm.dbg.value(metadata i32 6, metadata !4794, metadata !DIExpression()), !dbg !4812
  call void @llvm.dbg.value(metadata ptr undef, metadata !4798, metadata !DIExpression()), !dbg !4814
  call void @llvm.dbg.value(metadata i64 %54, metadata !4803, metadata !DIExpression()), !dbg !4814
  %113 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %112, i64 %54), !dbg !4816
  %114 = extractvalue { i64, i1 } %113, 1, !dbg !4816
  call void @llvm.dbg.value(metadata i64 poison, metadata !4804, metadata !DIExpression()), !dbg !4814
  %115 = extractvalue { i64, i1 } %113, 0, !dbg !4817
  %116 = icmp slt i64 %112, 0, !dbg !4817
  %117 = select i1 %116, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4817
  %118 = select i1 %114, i64 %117, i64 %115, !dbg !4817
  %119 = or i1 %108, %114, !dbg !4818
  call void @llvm.dbg.value(metadata i1 %119, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4812
  call void @llvm.dbg.value(metadata i32 6, metadata !4794, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4812
  call void @llvm.dbg.value(metadata i1 %119, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4812
  call void @llvm.dbg.value(metadata i32 6, metadata !4794, metadata !DIExpression()), !dbg !4812
  call void @llvm.dbg.value(metadata i32 5, metadata !4794, metadata !DIExpression()), !dbg !4812
  call void @llvm.dbg.value(metadata ptr undef, metadata !4798, metadata !DIExpression()), !dbg !4814
  call void @llvm.dbg.value(metadata i64 %54, metadata !4803, metadata !DIExpression()), !dbg !4814
  %120 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %118, i64 %54), !dbg !4816
  %121 = extractvalue { i64, i1 } %120, 1, !dbg !4816
  call void @llvm.dbg.value(metadata i64 poison, metadata !4804, metadata !DIExpression()), !dbg !4814
  %122 = extractvalue { i64, i1 } %120, 0, !dbg !4817
  %123 = icmp slt i64 %118, 0, !dbg !4817
  %124 = select i1 %123, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4817
  %125 = select i1 %121, i64 %124, i64 %122, !dbg !4817
  %126 = or i1 %119, %121, !dbg !4818
  call void @llvm.dbg.value(metadata i1 %126, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4812
  call void @llvm.dbg.value(metadata i32 5, metadata !4794, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4812
  call void @llvm.dbg.value(metadata i1 %126, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4812
  call void @llvm.dbg.value(metadata i32 5, metadata !4794, metadata !DIExpression()), !dbg !4812
  call void @llvm.dbg.value(metadata i32 4, metadata !4794, metadata !DIExpression()), !dbg !4812
  call void @llvm.dbg.value(metadata ptr undef, metadata !4798, metadata !DIExpression()), !dbg !4814
  call void @llvm.dbg.value(metadata i64 %54, metadata !4803, metadata !DIExpression()), !dbg !4814
  %127 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %125, i64 %54), !dbg !4816
  %128 = extractvalue { i64, i1 } %127, 1, !dbg !4816
  call void @llvm.dbg.value(metadata i64 poison, metadata !4804, metadata !DIExpression()), !dbg !4814
  %129 = extractvalue { i64, i1 } %127, 0, !dbg !4817
  %130 = icmp slt i64 %125, 0, !dbg !4817
  %131 = select i1 %130, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4817
  %132 = select i1 %128, i64 %131, i64 %129, !dbg !4817
  %133 = or i1 %126, %128, !dbg !4818
  call void @llvm.dbg.value(metadata i1 %133, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4812
  call void @llvm.dbg.value(metadata i32 4, metadata !4794, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4812
  call void @llvm.dbg.value(metadata i1 %133, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4812
  call void @llvm.dbg.value(metadata i32 4, metadata !4794, metadata !DIExpression()), !dbg !4812
  call void @llvm.dbg.value(metadata i32 3, metadata !4794, metadata !DIExpression()), !dbg !4812
  call void @llvm.dbg.value(metadata ptr undef, metadata !4798, metadata !DIExpression()), !dbg !4814
  call void @llvm.dbg.value(metadata i64 %54, metadata !4803, metadata !DIExpression()), !dbg !4814
  %134 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %132, i64 %54), !dbg !4816
  %135 = extractvalue { i64, i1 } %134, 1, !dbg !4816
  call void @llvm.dbg.value(metadata i64 poison, metadata !4804, metadata !DIExpression()), !dbg !4814
  %136 = extractvalue { i64, i1 } %134, 0, !dbg !4817
  %137 = icmp slt i64 %132, 0, !dbg !4817
  %138 = select i1 %137, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4817
  %139 = select i1 %135, i64 %138, i64 %136, !dbg !4817
  %140 = or i1 %133, %135, !dbg !4818
  call void @llvm.dbg.value(metadata i1 %140, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4812
  call void @llvm.dbg.value(metadata i32 3, metadata !4794, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4812
  call void @llvm.dbg.value(metadata i1 %140, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4812
  call void @llvm.dbg.value(metadata i32 3, metadata !4794, metadata !DIExpression()), !dbg !4812
  call void @llvm.dbg.value(metadata i32 2, metadata !4794, metadata !DIExpression()), !dbg !4812
  call void @llvm.dbg.value(metadata ptr undef, metadata !4798, metadata !DIExpression()), !dbg !4814
  call void @llvm.dbg.value(metadata i64 %54, metadata !4803, metadata !DIExpression()), !dbg !4814
  %141 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %139, i64 %54), !dbg !4816
  %142 = extractvalue { i64, i1 } %141, 1, !dbg !4816
  call void @llvm.dbg.value(metadata i64 poison, metadata !4804, metadata !DIExpression()), !dbg !4814
  %143 = extractvalue { i64, i1 } %141, 0, !dbg !4817
  %144 = icmp slt i64 %139, 0, !dbg !4817
  %145 = select i1 %144, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4817
  %146 = select i1 %142, i64 %145, i64 %143, !dbg !4817
  %147 = or i1 %140, %142, !dbg !4818
  call void @llvm.dbg.value(metadata i1 %147, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4812
  call void @llvm.dbg.value(metadata i32 2, metadata !4794, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4812
  call void @llvm.dbg.value(metadata i1 %147, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4812
  call void @llvm.dbg.value(metadata i32 2, metadata !4794, metadata !DIExpression()), !dbg !4812
  call void @llvm.dbg.value(metadata i32 1, metadata !4794, metadata !DIExpression()), !dbg !4812
  call void @llvm.dbg.value(metadata ptr undef, metadata !4798, metadata !DIExpression()), !dbg !4814
  call void @llvm.dbg.value(metadata i64 %54, metadata !4803, metadata !DIExpression()), !dbg !4814
  %148 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %146, i64 %54), !dbg !4816
  %149 = extractvalue { i64, i1 } %148, 1, !dbg !4816
  call void @llvm.dbg.value(metadata i64 poison, metadata !4804, metadata !DIExpression()), !dbg !4814
  %150 = extractvalue { i64, i1 } %148, 0, !dbg !4817
  %151 = icmp slt i64 %146, 0, !dbg !4817
  %152 = select i1 %151, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4817
  %153 = select i1 %149, i64 %152, i64 %150, !dbg !4817
  %154 = or i1 %147, %149, !dbg !4818
  call void @llvm.dbg.value(metadata i1 %154, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4812
  call void @llvm.dbg.value(metadata i32 1, metadata !4794, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4812
  call void @llvm.dbg.value(metadata i1 %154, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4812
  call void @llvm.dbg.value(metadata i32 1, metadata !4794, metadata !DIExpression()), !dbg !4812
  call void @llvm.dbg.value(metadata i32 0, metadata !4794, metadata !DIExpression()), !dbg !4812
  call void @llvm.dbg.value(metadata ptr undef, metadata !4798, metadata !DIExpression()), !dbg !4814
  call void @llvm.dbg.value(metadata i64 %54, metadata !4803, metadata !DIExpression()), !dbg !4814
  %155 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %153, i64 %54), !dbg !4816
  %156 = extractvalue { i64, i1 } %155, 1, !dbg !4816
  call void @llvm.dbg.value(metadata i64 poison, metadata !4804, metadata !DIExpression()), !dbg !4814
  %157 = extractvalue { i64, i1 } %155, 0, !dbg !4817
  %158 = icmp slt i64 %153, 0, !dbg !4817
  %159 = select i1 %158, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4817
  %160 = select i1 %156, i64 %159, i64 %157, !dbg !4817
  %161 = or i1 %154, %156, !dbg !4818
  %162 = zext i1 %161 to i32, !dbg !4818
  call void @llvm.dbg.value(metadata i32 %162, metadata !4787, metadata !DIExpression()), !dbg !4812
  call void @llvm.dbg.value(metadata i32 0, metadata !4794, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4812
  br label %476, !dbg !4811

163:                                              ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !4787, metadata !DIExpression()), !dbg !4819
  call void @llvm.dbg.value(metadata i32 9, metadata !4794, metadata !DIExpression()), !dbg !4819
  call void @llvm.dbg.value(metadata i32 8, metadata !4794, metadata !DIExpression()), !dbg !4819
  call void @llvm.dbg.value(metadata ptr undef, metadata !4798, metadata !DIExpression()), !dbg !4821
  call void @llvm.dbg.value(metadata i64 %54, metadata !4803, metadata !DIExpression()), !dbg !4821
  %164 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !4823
  %165 = extractvalue { i64, i1 } %164, 1, !dbg !4823
  call void @llvm.dbg.value(metadata i64 poison, metadata !4804, metadata !DIExpression()), !dbg !4821
  %166 = extractvalue { i64, i1 } %164, 0, !dbg !4824
  %167 = icmp slt i64 %31, 0, !dbg !4824
  %168 = select i1 %167, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4824
  %169 = select i1 %165, i64 %168, i64 %166, !dbg !4824
  call void @llvm.dbg.value(metadata i1 %165, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4819
  call void @llvm.dbg.value(metadata i32 8, metadata !4794, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4819
  call void @llvm.dbg.value(metadata i1 %165, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4819
  call void @llvm.dbg.value(metadata i32 8, metadata !4794, metadata !DIExpression()), !dbg !4819
  call void @llvm.dbg.value(metadata i32 7, metadata !4794, metadata !DIExpression()), !dbg !4819
  call void @llvm.dbg.value(metadata ptr undef, metadata !4798, metadata !DIExpression()), !dbg !4821
  call void @llvm.dbg.value(metadata i64 %54, metadata !4803, metadata !DIExpression()), !dbg !4821
  %170 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %169, i64 %54), !dbg !4823
  %171 = extractvalue { i64, i1 } %170, 1, !dbg !4823
  call void @llvm.dbg.value(metadata i64 poison, metadata !4804, metadata !DIExpression()), !dbg !4821
  %172 = extractvalue { i64, i1 } %170, 0, !dbg !4824
  %173 = icmp slt i64 %169, 0, !dbg !4824
  %174 = select i1 %173, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4824
  %175 = select i1 %171, i64 %174, i64 %172, !dbg !4824
  %176 = or i1 %165, %171, !dbg !4825
  call void @llvm.dbg.value(metadata i1 %176, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4819
  call void @llvm.dbg.value(metadata i32 7, metadata !4794, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4819
  call void @llvm.dbg.value(metadata i1 %176, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4819
  call void @llvm.dbg.value(metadata i32 7, metadata !4794, metadata !DIExpression()), !dbg !4819
  call void @llvm.dbg.value(metadata i32 6, metadata !4794, metadata !DIExpression()), !dbg !4819
  call void @llvm.dbg.value(metadata ptr undef, metadata !4798, metadata !DIExpression()), !dbg !4821
  call void @llvm.dbg.value(metadata i64 %54, metadata !4803, metadata !DIExpression()), !dbg !4821
  %177 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %175, i64 %54), !dbg !4823
  %178 = extractvalue { i64, i1 } %177, 1, !dbg !4823
  call void @llvm.dbg.value(metadata i64 poison, metadata !4804, metadata !DIExpression()), !dbg !4821
  %179 = extractvalue { i64, i1 } %177, 0, !dbg !4824
  %180 = icmp slt i64 %175, 0, !dbg !4824
  %181 = select i1 %180, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4824
  %182 = select i1 %178, i64 %181, i64 %179, !dbg !4824
  %183 = or i1 %176, %178, !dbg !4825
  call void @llvm.dbg.value(metadata i1 %183, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4819
  call void @llvm.dbg.value(metadata i32 6, metadata !4794, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4819
  call void @llvm.dbg.value(metadata i1 %183, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4819
  call void @llvm.dbg.value(metadata i32 6, metadata !4794, metadata !DIExpression()), !dbg !4819
  call void @llvm.dbg.value(metadata i32 5, metadata !4794, metadata !DIExpression()), !dbg !4819
  call void @llvm.dbg.value(metadata ptr undef, metadata !4798, metadata !DIExpression()), !dbg !4821
  call void @llvm.dbg.value(metadata i64 %54, metadata !4803, metadata !DIExpression()), !dbg !4821
  %184 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %182, i64 %54), !dbg !4823
  %185 = extractvalue { i64, i1 } %184, 1, !dbg !4823
  call void @llvm.dbg.value(metadata i64 poison, metadata !4804, metadata !DIExpression()), !dbg !4821
  %186 = extractvalue { i64, i1 } %184, 0, !dbg !4824
  %187 = icmp slt i64 %182, 0, !dbg !4824
  %188 = select i1 %187, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4824
  %189 = select i1 %185, i64 %188, i64 %186, !dbg !4824
  %190 = or i1 %183, %185, !dbg !4825
  call void @llvm.dbg.value(metadata i1 %190, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4819
  call void @llvm.dbg.value(metadata i32 5, metadata !4794, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4819
  call void @llvm.dbg.value(metadata i1 %190, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4819
  call void @llvm.dbg.value(metadata i32 5, metadata !4794, metadata !DIExpression()), !dbg !4819
  call void @llvm.dbg.value(metadata i32 4, metadata !4794, metadata !DIExpression()), !dbg !4819
  call void @llvm.dbg.value(metadata ptr undef, metadata !4798, metadata !DIExpression()), !dbg !4821
  call void @llvm.dbg.value(metadata i64 %54, metadata !4803, metadata !DIExpression()), !dbg !4821
  %191 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %189, i64 %54), !dbg !4823
  %192 = extractvalue { i64, i1 } %191, 1, !dbg !4823
  call void @llvm.dbg.value(metadata i64 poison, metadata !4804, metadata !DIExpression()), !dbg !4821
  %193 = extractvalue { i64, i1 } %191, 0, !dbg !4824
  %194 = icmp slt i64 %189, 0, !dbg !4824
  %195 = select i1 %194, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4824
  %196 = select i1 %192, i64 %195, i64 %193, !dbg !4824
  %197 = or i1 %190, %192, !dbg !4825
  call void @llvm.dbg.value(metadata i1 %197, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4819
  call void @llvm.dbg.value(metadata i32 4, metadata !4794, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4819
  call void @llvm.dbg.value(metadata i1 %197, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4819
  call void @llvm.dbg.value(metadata i32 4, metadata !4794, metadata !DIExpression()), !dbg !4819
  call void @llvm.dbg.value(metadata i32 3, metadata !4794, metadata !DIExpression()), !dbg !4819
  call void @llvm.dbg.value(metadata ptr undef, metadata !4798, metadata !DIExpression()), !dbg !4821
  call void @llvm.dbg.value(metadata i64 %54, metadata !4803, metadata !DIExpression()), !dbg !4821
  %198 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %196, i64 %54), !dbg !4823
  %199 = extractvalue { i64, i1 } %198, 1, !dbg !4823
  call void @llvm.dbg.value(metadata i64 poison, metadata !4804, metadata !DIExpression()), !dbg !4821
  %200 = extractvalue { i64, i1 } %198, 0, !dbg !4824
  %201 = icmp slt i64 %196, 0, !dbg !4824
  %202 = select i1 %201, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4824
  %203 = select i1 %199, i64 %202, i64 %200, !dbg !4824
  %204 = or i1 %197, %199, !dbg !4825
  call void @llvm.dbg.value(metadata i1 %204, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4819
  call void @llvm.dbg.value(metadata i32 3, metadata !4794, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4819
  call void @llvm.dbg.value(metadata i1 %204, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4819
  call void @llvm.dbg.value(metadata i32 3, metadata !4794, metadata !DIExpression()), !dbg !4819
  call void @llvm.dbg.value(metadata i32 2, metadata !4794, metadata !DIExpression()), !dbg !4819
  call void @llvm.dbg.value(metadata ptr undef, metadata !4798, metadata !DIExpression()), !dbg !4821
  call void @llvm.dbg.value(metadata i64 %54, metadata !4803, metadata !DIExpression()), !dbg !4821
  %205 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %203, i64 %54), !dbg !4823
  %206 = extractvalue { i64, i1 } %205, 1, !dbg !4823
  call void @llvm.dbg.value(metadata i64 poison, metadata !4804, metadata !DIExpression()), !dbg !4821
  %207 = extractvalue { i64, i1 } %205, 0, !dbg !4824
  %208 = icmp slt i64 %203, 0, !dbg !4824
  %209 = select i1 %208, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4824
  %210 = select i1 %206, i64 %209, i64 %207, !dbg !4824
  %211 = or i1 %204, %206, !dbg !4825
  call void @llvm.dbg.value(metadata i1 %211, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4819
  call void @llvm.dbg.value(metadata i32 2, metadata !4794, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4819
  call void @llvm.dbg.value(metadata i1 %211, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4819
  call void @llvm.dbg.value(metadata i32 2, metadata !4794, metadata !DIExpression()), !dbg !4819
  call void @llvm.dbg.value(metadata i32 1, metadata !4794, metadata !DIExpression()), !dbg !4819
  call void @llvm.dbg.value(metadata ptr undef, metadata !4798, metadata !DIExpression()), !dbg !4821
  call void @llvm.dbg.value(metadata i64 %54, metadata !4803, metadata !DIExpression()), !dbg !4821
  %212 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %210, i64 %54), !dbg !4823
  %213 = extractvalue { i64, i1 } %212, 1, !dbg !4823
  call void @llvm.dbg.value(metadata i64 poison, metadata !4804, metadata !DIExpression()), !dbg !4821
  %214 = extractvalue { i64, i1 } %212, 0, !dbg !4824
  %215 = icmp slt i64 %210, 0, !dbg !4824
  %216 = select i1 %215, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4824
  %217 = select i1 %213, i64 %216, i64 %214, !dbg !4824
  %218 = or i1 %211, %213, !dbg !4825
  call void @llvm.dbg.value(metadata i1 %218, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4819
  call void @llvm.dbg.value(metadata i32 1, metadata !4794, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4819
  call void @llvm.dbg.value(metadata i1 %218, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4819
  call void @llvm.dbg.value(metadata i32 1, metadata !4794, metadata !DIExpression()), !dbg !4819
  call void @llvm.dbg.value(metadata i32 0, metadata !4794, metadata !DIExpression()), !dbg !4819
  call void @llvm.dbg.value(metadata ptr undef, metadata !4798, metadata !DIExpression()), !dbg !4821
  call void @llvm.dbg.value(metadata i64 %54, metadata !4803, metadata !DIExpression()), !dbg !4821
  %219 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %217, i64 %54), !dbg !4823
  %220 = extractvalue { i64, i1 } %219, 1, !dbg !4823
  call void @llvm.dbg.value(metadata i64 poison, metadata !4804, metadata !DIExpression()), !dbg !4821
  %221 = extractvalue { i64, i1 } %219, 0, !dbg !4824
  %222 = icmp slt i64 %217, 0, !dbg !4824
  %223 = select i1 %222, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4824
  %224 = select i1 %220, i64 %223, i64 %221, !dbg !4824
  %225 = or i1 %218, %220, !dbg !4825
  %226 = zext i1 %225 to i32, !dbg !4825
  call void @llvm.dbg.value(metadata i32 %226, metadata !4787, metadata !DIExpression()), !dbg !4819
  call void @llvm.dbg.value(metadata i32 0, metadata !4794, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4819
  br label %476, !dbg !4811

227:                                              ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !4787, metadata !DIExpression()), !dbg !4826
  call void @llvm.dbg.value(metadata i32 10, metadata !4794, metadata !DIExpression()), !dbg !4826
  call void @llvm.dbg.value(metadata i32 9, metadata !4794, metadata !DIExpression()), !dbg !4826
  call void @llvm.dbg.value(metadata ptr undef, metadata !4798, metadata !DIExpression()), !dbg !4828
  call void @llvm.dbg.value(metadata i64 %54, metadata !4803, metadata !DIExpression()), !dbg !4828
  %228 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !4830
  %229 = extractvalue { i64, i1 } %228, 1, !dbg !4830
  call void @llvm.dbg.value(metadata i64 poison, metadata !4804, metadata !DIExpression()), !dbg !4828
  %230 = extractvalue { i64, i1 } %228, 0, !dbg !4831
  %231 = icmp slt i64 %31, 0, !dbg !4831
  %232 = select i1 %231, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4831
  %233 = select i1 %229, i64 %232, i64 %230, !dbg !4831
  call void @llvm.dbg.value(metadata i1 %229, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4826
  call void @llvm.dbg.value(metadata i32 9, metadata !4794, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4826
  call void @llvm.dbg.value(metadata i1 %229, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4826
  call void @llvm.dbg.value(metadata i32 9, metadata !4794, metadata !DIExpression()), !dbg !4826
  call void @llvm.dbg.value(metadata i32 8, metadata !4794, metadata !DIExpression()), !dbg !4826
  call void @llvm.dbg.value(metadata ptr undef, metadata !4798, metadata !DIExpression()), !dbg !4828
  call void @llvm.dbg.value(metadata i64 %54, metadata !4803, metadata !DIExpression()), !dbg !4828
  %234 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %233, i64 %54), !dbg !4830
  %235 = extractvalue { i64, i1 } %234, 1, !dbg !4830
  call void @llvm.dbg.value(metadata i64 poison, metadata !4804, metadata !DIExpression()), !dbg !4828
  %236 = extractvalue { i64, i1 } %234, 0, !dbg !4831
  %237 = icmp slt i64 %233, 0, !dbg !4831
  %238 = select i1 %237, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4831
  %239 = select i1 %235, i64 %238, i64 %236, !dbg !4831
  %240 = or i1 %229, %235, !dbg !4832
  call void @llvm.dbg.value(metadata i1 %240, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4826
  call void @llvm.dbg.value(metadata i32 8, metadata !4794, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4826
  call void @llvm.dbg.value(metadata i1 %240, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4826
  call void @llvm.dbg.value(metadata i32 8, metadata !4794, metadata !DIExpression()), !dbg !4826
  call void @llvm.dbg.value(metadata i32 7, metadata !4794, metadata !DIExpression()), !dbg !4826
  call void @llvm.dbg.value(metadata ptr undef, metadata !4798, metadata !DIExpression()), !dbg !4828
  call void @llvm.dbg.value(metadata i64 %54, metadata !4803, metadata !DIExpression()), !dbg !4828
  %241 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %239, i64 %54), !dbg !4830
  %242 = extractvalue { i64, i1 } %241, 1, !dbg !4830
  call void @llvm.dbg.value(metadata i64 poison, metadata !4804, metadata !DIExpression()), !dbg !4828
  %243 = extractvalue { i64, i1 } %241, 0, !dbg !4831
  %244 = icmp slt i64 %239, 0, !dbg !4831
  %245 = select i1 %244, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4831
  %246 = select i1 %242, i64 %245, i64 %243, !dbg !4831
  %247 = or i1 %240, %242, !dbg !4832
  call void @llvm.dbg.value(metadata i1 %247, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4826
  call void @llvm.dbg.value(metadata i32 7, metadata !4794, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4826
  call void @llvm.dbg.value(metadata i1 %247, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4826
  call void @llvm.dbg.value(metadata i32 7, metadata !4794, metadata !DIExpression()), !dbg !4826
  call void @llvm.dbg.value(metadata i32 6, metadata !4794, metadata !DIExpression()), !dbg !4826
  call void @llvm.dbg.value(metadata ptr undef, metadata !4798, metadata !DIExpression()), !dbg !4828
  call void @llvm.dbg.value(metadata i64 %54, metadata !4803, metadata !DIExpression()), !dbg !4828
  %248 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %246, i64 %54), !dbg !4830
  %249 = extractvalue { i64, i1 } %248, 1, !dbg !4830
  call void @llvm.dbg.value(metadata i64 poison, metadata !4804, metadata !DIExpression()), !dbg !4828
  %250 = extractvalue { i64, i1 } %248, 0, !dbg !4831
  %251 = icmp slt i64 %246, 0, !dbg !4831
  %252 = select i1 %251, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4831
  %253 = select i1 %249, i64 %252, i64 %250, !dbg !4831
  %254 = or i1 %247, %249, !dbg !4832
  call void @llvm.dbg.value(metadata i1 %254, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4826
  call void @llvm.dbg.value(metadata i32 6, metadata !4794, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4826
  call void @llvm.dbg.value(metadata i1 %254, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4826
  call void @llvm.dbg.value(metadata i32 6, metadata !4794, metadata !DIExpression()), !dbg !4826
  call void @llvm.dbg.value(metadata i32 5, metadata !4794, metadata !DIExpression()), !dbg !4826
  call void @llvm.dbg.value(metadata ptr undef, metadata !4798, metadata !DIExpression()), !dbg !4828
  call void @llvm.dbg.value(metadata i64 %54, metadata !4803, metadata !DIExpression()), !dbg !4828
  %255 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %253, i64 %54), !dbg !4830
  %256 = extractvalue { i64, i1 } %255, 1, !dbg !4830
  call void @llvm.dbg.value(metadata i64 poison, metadata !4804, metadata !DIExpression()), !dbg !4828
  %257 = extractvalue { i64, i1 } %255, 0, !dbg !4831
  %258 = icmp slt i64 %253, 0, !dbg !4831
  %259 = select i1 %258, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4831
  %260 = select i1 %256, i64 %259, i64 %257, !dbg !4831
  %261 = or i1 %254, %256, !dbg !4832
  call void @llvm.dbg.value(metadata i1 %261, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4826
  call void @llvm.dbg.value(metadata i32 5, metadata !4794, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4826
  call void @llvm.dbg.value(metadata i1 %261, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4826
  call void @llvm.dbg.value(metadata i32 5, metadata !4794, metadata !DIExpression()), !dbg !4826
  call void @llvm.dbg.value(metadata i32 4, metadata !4794, metadata !DIExpression()), !dbg !4826
  call void @llvm.dbg.value(metadata ptr undef, metadata !4798, metadata !DIExpression()), !dbg !4828
  call void @llvm.dbg.value(metadata i64 %54, metadata !4803, metadata !DIExpression()), !dbg !4828
  %262 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %260, i64 %54), !dbg !4830
  %263 = extractvalue { i64, i1 } %262, 1, !dbg !4830
  call void @llvm.dbg.value(metadata i64 poison, metadata !4804, metadata !DIExpression()), !dbg !4828
  %264 = extractvalue { i64, i1 } %262, 0, !dbg !4831
  %265 = icmp slt i64 %260, 0, !dbg !4831
  %266 = select i1 %265, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4831
  %267 = select i1 %263, i64 %266, i64 %264, !dbg !4831
  %268 = or i1 %261, %263, !dbg !4832
  call void @llvm.dbg.value(metadata i1 %268, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4826
  call void @llvm.dbg.value(metadata i32 4, metadata !4794, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4826
  call void @llvm.dbg.value(metadata i1 %268, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4826
  call void @llvm.dbg.value(metadata i32 4, metadata !4794, metadata !DIExpression()), !dbg !4826
  call void @llvm.dbg.value(metadata i32 3, metadata !4794, metadata !DIExpression()), !dbg !4826
  call void @llvm.dbg.value(metadata ptr undef, metadata !4798, metadata !DIExpression()), !dbg !4828
  call void @llvm.dbg.value(metadata i64 %54, metadata !4803, metadata !DIExpression()), !dbg !4828
  %269 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %267, i64 %54), !dbg !4830
  %270 = extractvalue { i64, i1 } %269, 1, !dbg !4830
  call void @llvm.dbg.value(metadata i64 poison, metadata !4804, metadata !DIExpression()), !dbg !4828
  %271 = extractvalue { i64, i1 } %269, 0, !dbg !4831
  %272 = icmp slt i64 %267, 0, !dbg !4831
  %273 = select i1 %272, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4831
  %274 = select i1 %270, i64 %273, i64 %271, !dbg !4831
  %275 = or i1 %268, %270, !dbg !4832
  call void @llvm.dbg.value(metadata i1 %275, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4826
  call void @llvm.dbg.value(metadata i32 3, metadata !4794, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4826
  call void @llvm.dbg.value(metadata i1 %275, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4826
  call void @llvm.dbg.value(metadata i32 3, metadata !4794, metadata !DIExpression()), !dbg !4826
  call void @llvm.dbg.value(metadata i32 2, metadata !4794, metadata !DIExpression()), !dbg !4826
  call void @llvm.dbg.value(metadata ptr undef, metadata !4798, metadata !DIExpression()), !dbg !4828
  call void @llvm.dbg.value(metadata i64 %54, metadata !4803, metadata !DIExpression()), !dbg !4828
  %276 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %274, i64 %54), !dbg !4830
  %277 = extractvalue { i64, i1 } %276, 1, !dbg !4830
  call void @llvm.dbg.value(metadata i64 poison, metadata !4804, metadata !DIExpression()), !dbg !4828
  %278 = extractvalue { i64, i1 } %276, 0, !dbg !4831
  %279 = icmp slt i64 %274, 0, !dbg !4831
  %280 = select i1 %279, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4831
  %281 = select i1 %277, i64 %280, i64 %278, !dbg !4831
  %282 = or i1 %275, %277, !dbg !4832
  call void @llvm.dbg.value(metadata i1 %282, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4826
  call void @llvm.dbg.value(metadata i32 2, metadata !4794, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4826
  call void @llvm.dbg.value(metadata i1 %282, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4826
  call void @llvm.dbg.value(metadata i32 2, metadata !4794, metadata !DIExpression()), !dbg !4826
  call void @llvm.dbg.value(metadata i32 1, metadata !4794, metadata !DIExpression()), !dbg !4826
  call void @llvm.dbg.value(metadata ptr undef, metadata !4798, metadata !DIExpression()), !dbg !4828
  call void @llvm.dbg.value(metadata i64 %54, metadata !4803, metadata !DIExpression()), !dbg !4828
  %283 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %281, i64 %54), !dbg !4830
  %284 = extractvalue { i64, i1 } %283, 1, !dbg !4830
  call void @llvm.dbg.value(metadata i64 poison, metadata !4804, metadata !DIExpression()), !dbg !4828
  %285 = extractvalue { i64, i1 } %283, 0, !dbg !4831
  %286 = icmp slt i64 %281, 0, !dbg !4831
  %287 = select i1 %286, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4831
  %288 = select i1 %284, i64 %287, i64 %285, !dbg !4831
  %289 = or i1 %282, %284, !dbg !4832
  call void @llvm.dbg.value(metadata i1 %289, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4826
  call void @llvm.dbg.value(metadata i32 1, metadata !4794, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4826
  call void @llvm.dbg.value(metadata i1 %289, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4826
  call void @llvm.dbg.value(metadata i32 1, metadata !4794, metadata !DIExpression()), !dbg !4826
  call void @llvm.dbg.value(metadata i32 0, metadata !4794, metadata !DIExpression()), !dbg !4826
  call void @llvm.dbg.value(metadata ptr undef, metadata !4798, metadata !DIExpression()), !dbg !4828
  call void @llvm.dbg.value(metadata i64 %54, metadata !4803, metadata !DIExpression()), !dbg !4828
  %290 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %288, i64 %54), !dbg !4830
  %291 = extractvalue { i64, i1 } %290, 1, !dbg !4830
  call void @llvm.dbg.value(metadata i64 poison, metadata !4804, metadata !DIExpression()), !dbg !4828
  %292 = extractvalue { i64, i1 } %290, 0, !dbg !4831
  %293 = icmp slt i64 %288, 0, !dbg !4831
  %294 = select i1 %293, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4831
  %295 = select i1 %291, i64 %294, i64 %292, !dbg !4831
  %296 = or i1 %289, %291, !dbg !4832
  %297 = zext i1 %296 to i32, !dbg !4832
  call void @llvm.dbg.value(metadata i32 %297, metadata !4787, metadata !DIExpression()), !dbg !4826
  call void @llvm.dbg.value(metadata i32 0, metadata !4794, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4826
  br label %476, !dbg !4811

298:                                              ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !4787, metadata !DIExpression()), !dbg !4833
  call void @llvm.dbg.value(metadata i32 5, metadata !4794, metadata !DIExpression()), !dbg !4833
  call void @llvm.dbg.value(metadata i32 4, metadata !4794, metadata !DIExpression()), !dbg !4833
  call void @llvm.dbg.value(metadata ptr undef, metadata !4798, metadata !DIExpression()), !dbg !4835
  call void @llvm.dbg.value(metadata i64 %54, metadata !4803, metadata !DIExpression()), !dbg !4835
  %299 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !4837
  %300 = extractvalue { i64, i1 } %299, 1, !dbg !4837
  call void @llvm.dbg.value(metadata i64 poison, metadata !4804, metadata !DIExpression()), !dbg !4835
  %301 = extractvalue { i64, i1 } %299, 0, !dbg !4838
  %302 = icmp slt i64 %31, 0, !dbg !4838
  %303 = select i1 %302, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4838
  %304 = select i1 %300, i64 %303, i64 %301, !dbg !4838
  call void @llvm.dbg.value(metadata i1 %300, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4833
  call void @llvm.dbg.value(metadata i32 4, metadata !4794, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4833
  call void @llvm.dbg.value(metadata i1 %300, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4833
  call void @llvm.dbg.value(metadata i32 4, metadata !4794, metadata !DIExpression()), !dbg !4833
  call void @llvm.dbg.value(metadata i32 3, metadata !4794, metadata !DIExpression()), !dbg !4833
  call void @llvm.dbg.value(metadata ptr undef, metadata !4798, metadata !DIExpression()), !dbg !4835
  call void @llvm.dbg.value(metadata i64 %54, metadata !4803, metadata !DIExpression()), !dbg !4835
  %305 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %304, i64 %54), !dbg !4837
  %306 = extractvalue { i64, i1 } %305, 1, !dbg !4837
  call void @llvm.dbg.value(metadata i64 poison, metadata !4804, metadata !DIExpression()), !dbg !4835
  %307 = extractvalue { i64, i1 } %305, 0, !dbg !4838
  %308 = icmp slt i64 %304, 0, !dbg !4838
  %309 = select i1 %308, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4838
  %310 = select i1 %306, i64 %309, i64 %307, !dbg !4838
  %311 = or i1 %300, %306, !dbg !4839
  call void @llvm.dbg.value(metadata i1 %311, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4833
  call void @llvm.dbg.value(metadata i32 3, metadata !4794, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4833
  call void @llvm.dbg.value(metadata i1 %311, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4833
  call void @llvm.dbg.value(metadata i32 3, metadata !4794, metadata !DIExpression()), !dbg !4833
  call void @llvm.dbg.value(metadata i32 2, metadata !4794, metadata !DIExpression()), !dbg !4833
  call void @llvm.dbg.value(metadata ptr undef, metadata !4798, metadata !DIExpression()), !dbg !4835
  call void @llvm.dbg.value(metadata i64 %54, metadata !4803, metadata !DIExpression()), !dbg !4835
  %312 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %310, i64 %54), !dbg !4837
  %313 = extractvalue { i64, i1 } %312, 1, !dbg !4837
  call void @llvm.dbg.value(metadata i64 poison, metadata !4804, metadata !DIExpression()), !dbg !4835
  %314 = extractvalue { i64, i1 } %312, 0, !dbg !4838
  %315 = icmp slt i64 %310, 0, !dbg !4838
  %316 = select i1 %315, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4838
  %317 = select i1 %313, i64 %316, i64 %314, !dbg !4838
  %318 = or i1 %311, %313, !dbg !4839
  call void @llvm.dbg.value(metadata i1 %318, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4833
  call void @llvm.dbg.value(metadata i32 2, metadata !4794, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4833
  call void @llvm.dbg.value(metadata i1 %318, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4833
  call void @llvm.dbg.value(metadata i32 2, metadata !4794, metadata !DIExpression()), !dbg !4833
  call void @llvm.dbg.value(metadata i32 1, metadata !4794, metadata !DIExpression()), !dbg !4833
  call void @llvm.dbg.value(metadata ptr undef, metadata !4798, metadata !DIExpression()), !dbg !4835
  call void @llvm.dbg.value(metadata i64 %54, metadata !4803, metadata !DIExpression()), !dbg !4835
  %319 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %317, i64 %54), !dbg !4837
  %320 = extractvalue { i64, i1 } %319, 1, !dbg !4837
  call void @llvm.dbg.value(metadata i64 poison, metadata !4804, metadata !DIExpression()), !dbg !4835
  %321 = extractvalue { i64, i1 } %319, 0, !dbg !4838
  %322 = icmp slt i64 %317, 0, !dbg !4838
  %323 = select i1 %322, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4838
  %324 = select i1 %320, i64 %323, i64 %321, !dbg !4838
  %325 = or i1 %318, %320, !dbg !4839
  call void @llvm.dbg.value(metadata i1 %325, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4833
  call void @llvm.dbg.value(metadata i32 1, metadata !4794, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4833
  call void @llvm.dbg.value(metadata i1 %325, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4833
  call void @llvm.dbg.value(metadata i32 1, metadata !4794, metadata !DIExpression()), !dbg !4833
  call void @llvm.dbg.value(metadata i32 0, metadata !4794, metadata !DIExpression()), !dbg !4833
  call void @llvm.dbg.value(metadata ptr undef, metadata !4798, metadata !DIExpression()), !dbg !4835
  call void @llvm.dbg.value(metadata i64 %54, metadata !4803, metadata !DIExpression()), !dbg !4835
  %326 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %324, i64 %54), !dbg !4837
  %327 = extractvalue { i64, i1 } %326, 1, !dbg !4837
  call void @llvm.dbg.value(metadata i64 poison, metadata !4804, metadata !DIExpression()), !dbg !4835
  %328 = extractvalue { i64, i1 } %326, 0, !dbg !4838
  %329 = icmp slt i64 %324, 0, !dbg !4838
  %330 = select i1 %329, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4838
  %331 = select i1 %327, i64 %330, i64 %328, !dbg !4838
  %332 = or i1 %325, %327, !dbg !4839
  %333 = zext i1 %332 to i32, !dbg !4839
  call void @llvm.dbg.value(metadata i32 %333, metadata !4787, metadata !DIExpression()), !dbg !4833
  call void @llvm.dbg.value(metadata i32 0, metadata !4794, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4833
  br label %476, !dbg !4811

334:                                              ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !4787, metadata !DIExpression()), !dbg !4840
  call void @llvm.dbg.value(metadata i32 6, metadata !4794, metadata !DIExpression()), !dbg !4840
  call void @llvm.dbg.value(metadata i32 5, metadata !4794, metadata !DIExpression()), !dbg !4840
  call void @llvm.dbg.value(metadata ptr undef, metadata !4798, metadata !DIExpression()), !dbg !4842
  call void @llvm.dbg.value(metadata i64 %54, metadata !4803, metadata !DIExpression()), !dbg !4842
  %335 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !4844
  %336 = extractvalue { i64, i1 } %335, 1, !dbg !4844
  call void @llvm.dbg.value(metadata i64 poison, metadata !4804, metadata !DIExpression()), !dbg !4842
  %337 = extractvalue { i64, i1 } %335, 0, !dbg !4845
  %338 = icmp slt i64 %31, 0, !dbg !4845
  %339 = select i1 %338, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4845
  %340 = select i1 %336, i64 %339, i64 %337, !dbg !4845
  call void @llvm.dbg.value(metadata i1 %336, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4840
  call void @llvm.dbg.value(metadata i32 5, metadata !4794, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4840
  call void @llvm.dbg.value(metadata i1 %336, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4840
  call void @llvm.dbg.value(metadata i32 5, metadata !4794, metadata !DIExpression()), !dbg !4840
  call void @llvm.dbg.value(metadata i32 4, metadata !4794, metadata !DIExpression()), !dbg !4840
  call void @llvm.dbg.value(metadata ptr undef, metadata !4798, metadata !DIExpression()), !dbg !4842
  call void @llvm.dbg.value(metadata i64 %54, metadata !4803, metadata !DIExpression()), !dbg !4842
  %341 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %340, i64 %54), !dbg !4844
  %342 = extractvalue { i64, i1 } %341, 1, !dbg !4844
  call void @llvm.dbg.value(metadata i64 poison, metadata !4804, metadata !DIExpression()), !dbg !4842
  %343 = extractvalue { i64, i1 } %341, 0, !dbg !4845
  %344 = icmp slt i64 %340, 0, !dbg !4845
  %345 = select i1 %344, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4845
  %346 = select i1 %342, i64 %345, i64 %343, !dbg !4845
  %347 = or i1 %336, %342, !dbg !4846
  call void @llvm.dbg.value(metadata i1 %347, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4840
  call void @llvm.dbg.value(metadata i32 4, metadata !4794, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4840
  call void @llvm.dbg.value(metadata i1 %347, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4840
  call void @llvm.dbg.value(metadata i32 4, metadata !4794, metadata !DIExpression()), !dbg !4840
  call void @llvm.dbg.value(metadata i32 3, metadata !4794, metadata !DIExpression()), !dbg !4840
  call void @llvm.dbg.value(metadata ptr undef, metadata !4798, metadata !DIExpression()), !dbg !4842
  call void @llvm.dbg.value(metadata i64 %54, metadata !4803, metadata !DIExpression()), !dbg !4842
  %348 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %346, i64 %54), !dbg !4844
  %349 = extractvalue { i64, i1 } %348, 1, !dbg !4844
  call void @llvm.dbg.value(metadata i64 poison, metadata !4804, metadata !DIExpression()), !dbg !4842
  %350 = extractvalue { i64, i1 } %348, 0, !dbg !4845
  %351 = icmp slt i64 %346, 0, !dbg !4845
  %352 = select i1 %351, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4845
  %353 = select i1 %349, i64 %352, i64 %350, !dbg !4845
  %354 = or i1 %347, %349, !dbg !4846
  call void @llvm.dbg.value(metadata i1 %354, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4840
  call void @llvm.dbg.value(metadata i32 3, metadata !4794, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4840
  call void @llvm.dbg.value(metadata i1 %354, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4840
  call void @llvm.dbg.value(metadata i32 3, metadata !4794, metadata !DIExpression()), !dbg !4840
  call void @llvm.dbg.value(metadata i32 2, metadata !4794, metadata !DIExpression()), !dbg !4840
  call void @llvm.dbg.value(metadata ptr undef, metadata !4798, metadata !DIExpression()), !dbg !4842
  call void @llvm.dbg.value(metadata i64 %54, metadata !4803, metadata !DIExpression()), !dbg !4842
  %355 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %353, i64 %54), !dbg !4844
  %356 = extractvalue { i64, i1 } %355, 1, !dbg !4844
  call void @llvm.dbg.value(metadata i64 poison, metadata !4804, metadata !DIExpression()), !dbg !4842
  %357 = extractvalue { i64, i1 } %355, 0, !dbg !4845
  %358 = icmp slt i64 %353, 0, !dbg !4845
  %359 = select i1 %358, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4845
  %360 = select i1 %356, i64 %359, i64 %357, !dbg !4845
  %361 = or i1 %354, %356, !dbg !4846
  call void @llvm.dbg.value(metadata i1 %361, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4840
  call void @llvm.dbg.value(metadata i32 2, metadata !4794, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4840
  call void @llvm.dbg.value(metadata i1 %361, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4840
  call void @llvm.dbg.value(metadata i32 2, metadata !4794, metadata !DIExpression()), !dbg !4840
  call void @llvm.dbg.value(metadata i32 1, metadata !4794, metadata !DIExpression()), !dbg !4840
  call void @llvm.dbg.value(metadata ptr undef, metadata !4798, metadata !DIExpression()), !dbg !4842
  call void @llvm.dbg.value(metadata i64 %54, metadata !4803, metadata !DIExpression()), !dbg !4842
  %362 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %360, i64 %54), !dbg !4844
  %363 = extractvalue { i64, i1 } %362, 1, !dbg !4844
  call void @llvm.dbg.value(metadata i64 poison, metadata !4804, metadata !DIExpression()), !dbg !4842
  %364 = extractvalue { i64, i1 } %362, 0, !dbg !4845
  %365 = icmp slt i64 %360, 0, !dbg !4845
  %366 = select i1 %365, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4845
  %367 = select i1 %363, i64 %366, i64 %364, !dbg !4845
  %368 = or i1 %361, %363, !dbg !4846
  call void @llvm.dbg.value(metadata i1 %368, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4840
  call void @llvm.dbg.value(metadata i32 1, metadata !4794, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4840
  call void @llvm.dbg.value(metadata i1 %368, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4840
  call void @llvm.dbg.value(metadata i32 1, metadata !4794, metadata !DIExpression()), !dbg !4840
  call void @llvm.dbg.value(metadata i32 0, metadata !4794, metadata !DIExpression()), !dbg !4840
  call void @llvm.dbg.value(metadata ptr undef, metadata !4798, metadata !DIExpression()), !dbg !4842
  call void @llvm.dbg.value(metadata i64 %54, metadata !4803, metadata !DIExpression()), !dbg !4842
  %369 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %367, i64 %54), !dbg !4844
  %370 = extractvalue { i64, i1 } %369, 1, !dbg !4844
  call void @llvm.dbg.value(metadata i64 poison, metadata !4804, metadata !DIExpression()), !dbg !4842
  %371 = extractvalue { i64, i1 } %369, 0, !dbg !4845
  %372 = icmp slt i64 %367, 0, !dbg !4845
  %373 = select i1 %372, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4845
  %374 = select i1 %370, i64 %373, i64 %371, !dbg !4845
  %375 = or i1 %368, %370, !dbg !4846
  %376 = zext i1 %375 to i32, !dbg !4846
  call void @llvm.dbg.value(metadata i32 %376, metadata !4787, metadata !DIExpression()), !dbg !4840
  call void @llvm.dbg.value(metadata i32 0, metadata !4794, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4840
  br label %476, !dbg !4811

377:                                              ; preds = %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !4798, metadata !DIExpression()), !dbg !4847
  call void @llvm.dbg.value(metadata i32 512, metadata !4803, metadata !DIExpression()), !dbg !4847
  %378 = add i64 %31, -18014398509481984, !dbg !4849
  %379 = icmp ult i64 %378, -36028797018963968, !dbg !4849
  call void @llvm.dbg.value(metadata i64 poison, metadata !4804, metadata !DIExpression()), !dbg !4847
  %380 = shl i64 %31, 9, !dbg !4850
  %381 = icmp slt i64 %31, 0, !dbg !4850
  %382 = select i1 %381, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4850
  %383 = select i1 %379, i64 %382, i64 %380, !dbg !4850
  %384 = zext i1 %379 to i32, !dbg !4850
  tail call void @llvm.dbg.value(metadata i64 %383, metadata !4725, metadata !DIExpression()), !dbg !4733
  tail call void @llvm.dbg.value(metadata i32 %384, metadata !4731, metadata !DIExpression()), !dbg !4772
  br label %476, !dbg !4851

385:                                              ; preds = %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !4798, metadata !DIExpression()), !dbg !4852
  call void @llvm.dbg.value(metadata i32 1024, metadata !4803, metadata !DIExpression()), !dbg !4852
  %386 = add i64 %31, -9007199254740992, !dbg !4854
  %387 = icmp ult i64 %386, -18014398509481984, !dbg !4854
  call void @llvm.dbg.value(metadata i64 poison, metadata !4804, metadata !DIExpression()), !dbg !4852
  %388 = shl i64 %31, 10, !dbg !4855
  %389 = icmp slt i64 %31, 0, !dbg !4855
  %390 = select i1 %389, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4855
  %391 = select i1 %387, i64 %390, i64 %388, !dbg !4855
  %392 = zext i1 %387 to i32, !dbg !4855
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !4725, metadata !DIExpression()), !dbg !4733
  tail call void @llvm.dbg.value(metadata i32 %392, metadata !4731, metadata !DIExpression()), !dbg !4772
  br label %476, !dbg !4856

393:                                              ; preds = %53, %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !4792, metadata !DIExpression()), !dbg !4857
  call void @llvm.dbg.value(metadata i64 %54, metadata !4793, metadata !DIExpression()), !dbg !4857
  call void @llvm.dbg.value(metadata i32 0, metadata !4787, metadata !DIExpression()), !dbg !4857
  call void @llvm.dbg.value(metadata i32 3, metadata !4794, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4857
  call void @llvm.dbg.value(metadata i32 0, metadata !4787, metadata !DIExpression()), !dbg !4857
  call void @llvm.dbg.value(metadata i32 3, metadata !4794, metadata !DIExpression()), !dbg !4857
  call void @llvm.dbg.value(metadata i32 2, metadata !4794, metadata !DIExpression()), !dbg !4857
  call void @llvm.dbg.value(metadata ptr undef, metadata !4798, metadata !DIExpression()), !dbg !4859
  call void @llvm.dbg.value(metadata i64 %54, metadata !4803, metadata !DIExpression()), !dbg !4859
  %394 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !4861
  %395 = extractvalue { i64, i1 } %394, 1, !dbg !4861
  call void @llvm.dbg.value(metadata i64 poison, metadata !4804, metadata !DIExpression()), !dbg !4859
  %396 = extractvalue { i64, i1 } %394, 0, !dbg !4862
  %397 = icmp slt i64 %31, 0, !dbg !4862
  %398 = select i1 %397, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4862
  %399 = select i1 %395, i64 %398, i64 %396, !dbg !4862
  call void @llvm.dbg.value(metadata i1 %395, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4857
  call void @llvm.dbg.value(metadata i32 2, metadata !4794, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4857
  call void @llvm.dbg.value(metadata i1 %395, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4857
  call void @llvm.dbg.value(metadata i32 2, metadata !4794, metadata !DIExpression()), !dbg !4857
  call void @llvm.dbg.value(metadata i32 1, metadata !4794, metadata !DIExpression()), !dbg !4857
  call void @llvm.dbg.value(metadata ptr undef, metadata !4798, metadata !DIExpression()), !dbg !4859
  call void @llvm.dbg.value(metadata i64 %54, metadata !4803, metadata !DIExpression()), !dbg !4859
  %400 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %399, i64 %54), !dbg !4861
  %401 = extractvalue { i64, i1 } %400, 1, !dbg !4861
  call void @llvm.dbg.value(metadata i64 poison, metadata !4804, metadata !DIExpression()), !dbg !4859
  %402 = extractvalue { i64, i1 } %400, 0, !dbg !4862
  %403 = icmp slt i64 %399, 0, !dbg !4862
  %404 = select i1 %403, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4862
  %405 = select i1 %401, i64 %404, i64 %402, !dbg !4862
  %406 = or i1 %395, %401, !dbg !4863
  call void @llvm.dbg.value(metadata i1 %406, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4857
  call void @llvm.dbg.value(metadata i32 1, metadata !4794, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4857
  call void @llvm.dbg.value(metadata i1 %406, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4857
  call void @llvm.dbg.value(metadata i32 1, metadata !4794, metadata !DIExpression()), !dbg !4857
  call void @llvm.dbg.value(metadata i32 0, metadata !4794, metadata !DIExpression()), !dbg !4857
  call void @llvm.dbg.value(metadata ptr undef, metadata !4798, metadata !DIExpression()), !dbg !4859
  call void @llvm.dbg.value(metadata i64 %54, metadata !4803, metadata !DIExpression()), !dbg !4859
  %407 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %405, i64 %54), !dbg !4861
  %408 = extractvalue { i64, i1 } %407, 1, !dbg !4861
  call void @llvm.dbg.value(metadata i64 poison, metadata !4804, metadata !DIExpression()), !dbg !4859
  %409 = extractvalue { i64, i1 } %407, 0, !dbg !4862
  %410 = icmp slt i64 %405, 0, !dbg !4862
  %411 = select i1 %410, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4862
  %412 = select i1 %408, i64 %411, i64 %409, !dbg !4862
  %413 = or i1 %406, %408, !dbg !4863
  %414 = zext i1 %413 to i32, !dbg !4863
  call void @llvm.dbg.value(metadata i32 %414, metadata !4787, metadata !DIExpression()), !dbg !4857
  call void @llvm.dbg.value(metadata i32 0, metadata !4794, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4857
  br label %476, !dbg !4811

415:                                              ; preds = %53, %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !4792, metadata !DIExpression()), !dbg !4864
  call void @llvm.dbg.value(metadata i64 %54, metadata !4793, metadata !DIExpression()), !dbg !4864
  call void @llvm.dbg.value(metadata i32 0, metadata !4787, metadata !DIExpression()), !dbg !4864
  call void @llvm.dbg.value(metadata i32 1, metadata !4794, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4864
  %416 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !4866
  %417 = extractvalue { i64, i1 } %416, 1, !dbg !4866
  %418 = icmp slt i64 %31, 0, !dbg !4868
  %419 = select i1 %418, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4868
  %420 = extractvalue { i64, i1 } %416, 0, !dbg !4868
  %421 = select i1 %417, i64 %419, i64 %420, !dbg !4868
  %422 = zext i1 %417 to i32, !dbg !4868
  call void @llvm.dbg.value(metadata i32 0, metadata !4787, metadata !DIExpression()), !dbg !4864
  call void @llvm.dbg.value(metadata i32 1, metadata !4794, metadata !DIExpression()), !dbg !4864
  call void @llvm.dbg.value(metadata ptr undef, metadata !4798, metadata !DIExpression()), !dbg !4869
  call void @llvm.dbg.value(metadata i64 %54, metadata !4803, metadata !DIExpression()), !dbg !4869
  call void @llvm.dbg.value(metadata i64 poison, metadata !4804, metadata !DIExpression()), !dbg !4869
  br label %476, !dbg !4811

423:                                              ; preds = %53, %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !4792, metadata !DIExpression()), !dbg !4870
  call void @llvm.dbg.value(metadata i64 %54, metadata !4793, metadata !DIExpression()), !dbg !4870
  call void @llvm.dbg.value(metadata i32 0, metadata !4787, metadata !DIExpression()), !dbg !4870
  call void @llvm.dbg.value(metadata i32 2, metadata !4794, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4870
  call void @llvm.dbg.value(metadata i32 0, metadata !4787, metadata !DIExpression()), !dbg !4870
  call void @llvm.dbg.value(metadata i32 2, metadata !4794, metadata !DIExpression()), !dbg !4870
  call void @llvm.dbg.value(metadata i32 1, metadata !4794, metadata !DIExpression()), !dbg !4870
  call void @llvm.dbg.value(metadata ptr undef, metadata !4798, metadata !DIExpression()), !dbg !4872
  call void @llvm.dbg.value(metadata i64 %54, metadata !4803, metadata !DIExpression()), !dbg !4872
  %424 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !4874
  %425 = extractvalue { i64, i1 } %424, 1, !dbg !4874
  call void @llvm.dbg.value(metadata i64 poison, metadata !4804, metadata !DIExpression()), !dbg !4872
  %426 = extractvalue { i64, i1 } %424, 0, !dbg !4875
  %427 = icmp slt i64 %31, 0, !dbg !4875
  %428 = select i1 %427, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4875
  %429 = select i1 %425, i64 %428, i64 %426, !dbg !4875
  call void @llvm.dbg.value(metadata i1 %425, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4870
  call void @llvm.dbg.value(metadata i32 1, metadata !4794, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4870
  call void @llvm.dbg.value(metadata i1 %425, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4870
  call void @llvm.dbg.value(metadata i32 1, metadata !4794, metadata !DIExpression()), !dbg !4870
  call void @llvm.dbg.value(metadata i32 0, metadata !4794, metadata !DIExpression()), !dbg !4870
  call void @llvm.dbg.value(metadata ptr undef, metadata !4798, metadata !DIExpression()), !dbg !4872
  call void @llvm.dbg.value(metadata i64 %54, metadata !4803, metadata !DIExpression()), !dbg !4872
  %430 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %429, i64 %54), !dbg !4874
  %431 = extractvalue { i64, i1 } %430, 1, !dbg !4874
  call void @llvm.dbg.value(metadata i64 poison, metadata !4804, metadata !DIExpression()), !dbg !4872
  %432 = extractvalue { i64, i1 } %430, 0, !dbg !4875
  %433 = icmp slt i64 %429, 0, !dbg !4875
  %434 = select i1 %433, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4875
  %435 = select i1 %431, i64 %434, i64 %432, !dbg !4875
  %436 = or i1 %425, %431, !dbg !4876
  %437 = zext i1 %436 to i32, !dbg !4876
  call void @llvm.dbg.value(metadata i32 %437, metadata !4787, metadata !DIExpression()), !dbg !4870
  call void @llvm.dbg.value(metadata i32 0, metadata !4794, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4870
  br label %476, !dbg !4811

438:                                              ; preds = %53, %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !4792, metadata !DIExpression()), !dbg !4877
  call void @llvm.dbg.value(metadata i64 %54, metadata !4793, metadata !DIExpression()), !dbg !4877
  call void @llvm.dbg.value(metadata i32 0, metadata !4787, metadata !DIExpression()), !dbg !4877
  call void @llvm.dbg.value(metadata i32 4, metadata !4794, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4877
  call void @llvm.dbg.value(metadata i32 0, metadata !4787, metadata !DIExpression()), !dbg !4877
  call void @llvm.dbg.value(metadata i32 4, metadata !4794, metadata !DIExpression()), !dbg !4877
  call void @llvm.dbg.value(metadata i32 3, metadata !4794, metadata !DIExpression()), !dbg !4877
  call void @llvm.dbg.value(metadata ptr undef, metadata !4798, metadata !DIExpression()), !dbg !4879
  call void @llvm.dbg.value(metadata i64 %54, metadata !4803, metadata !DIExpression()), !dbg !4879
  %439 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !4881
  %440 = extractvalue { i64, i1 } %439, 1, !dbg !4881
  call void @llvm.dbg.value(metadata i64 poison, metadata !4804, metadata !DIExpression()), !dbg !4879
  %441 = extractvalue { i64, i1 } %439, 0, !dbg !4882
  %442 = icmp slt i64 %31, 0, !dbg !4882
  %443 = select i1 %442, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4882
  %444 = select i1 %440, i64 %443, i64 %441, !dbg !4882
  call void @llvm.dbg.value(metadata i1 %440, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4877
  call void @llvm.dbg.value(metadata i32 3, metadata !4794, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4877
  call void @llvm.dbg.value(metadata i1 %440, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4877
  call void @llvm.dbg.value(metadata i32 3, metadata !4794, metadata !DIExpression()), !dbg !4877
  call void @llvm.dbg.value(metadata i32 2, metadata !4794, metadata !DIExpression()), !dbg !4877
  call void @llvm.dbg.value(metadata ptr undef, metadata !4798, metadata !DIExpression()), !dbg !4879
  call void @llvm.dbg.value(metadata i64 %54, metadata !4803, metadata !DIExpression()), !dbg !4879
  %445 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %444, i64 %54), !dbg !4881
  %446 = extractvalue { i64, i1 } %445, 1, !dbg !4881
  call void @llvm.dbg.value(metadata i64 poison, metadata !4804, metadata !DIExpression()), !dbg !4879
  %447 = extractvalue { i64, i1 } %445, 0, !dbg !4882
  %448 = icmp slt i64 %444, 0, !dbg !4882
  %449 = select i1 %448, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4882
  %450 = select i1 %446, i64 %449, i64 %447, !dbg !4882
  %451 = or i1 %440, %446, !dbg !4883
  call void @llvm.dbg.value(metadata i1 %451, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4877
  call void @llvm.dbg.value(metadata i32 2, metadata !4794, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4877
  call void @llvm.dbg.value(metadata i1 %451, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4877
  call void @llvm.dbg.value(metadata i32 2, metadata !4794, metadata !DIExpression()), !dbg !4877
  call void @llvm.dbg.value(metadata i32 1, metadata !4794, metadata !DIExpression()), !dbg !4877
  call void @llvm.dbg.value(metadata ptr undef, metadata !4798, metadata !DIExpression()), !dbg !4879
  call void @llvm.dbg.value(metadata i64 %54, metadata !4803, metadata !DIExpression()), !dbg !4879
  %452 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %450, i64 %54), !dbg !4881
  %453 = extractvalue { i64, i1 } %452, 1, !dbg !4881
  call void @llvm.dbg.value(metadata i64 poison, metadata !4804, metadata !DIExpression()), !dbg !4879
  %454 = extractvalue { i64, i1 } %452, 0, !dbg !4882
  %455 = icmp slt i64 %450, 0, !dbg !4882
  %456 = select i1 %455, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4882
  %457 = select i1 %453, i64 %456, i64 %454, !dbg !4882
  %458 = or i1 %451, %453, !dbg !4883
  call void @llvm.dbg.value(metadata i1 %458, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4877
  call void @llvm.dbg.value(metadata i32 1, metadata !4794, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4877
  call void @llvm.dbg.value(metadata i1 %458, metadata !4787, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4877
  call void @llvm.dbg.value(metadata i32 1, metadata !4794, metadata !DIExpression()), !dbg !4877
  call void @llvm.dbg.value(metadata i32 0, metadata !4794, metadata !DIExpression()), !dbg !4877
  call void @llvm.dbg.value(metadata ptr undef, metadata !4798, metadata !DIExpression()), !dbg !4879
  call void @llvm.dbg.value(metadata i64 %54, metadata !4803, metadata !DIExpression()), !dbg !4879
  %459 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %457, i64 %54), !dbg !4881
  %460 = extractvalue { i64, i1 } %459, 1, !dbg !4881
  call void @llvm.dbg.value(metadata i64 poison, metadata !4804, metadata !DIExpression()), !dbg !4879
  %461 = extractvalue { i64, i1 } %459, 0, !dbg !4882
  %462 = icmp slt i64 %457, 0, !dbg !4882
  %463 = select i1 %462, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4882
  %464 = select i1 %460, i64 %463, i64 %461, !dbg !4882
  %465 = or i1 %458, %460, !dbg !4883
  %466 = zext i1 %465 to i32, !dbg !4883
  call void @llvm.dbg.value(metadata i32 %466, metadata !4787, metadata !DIExpression()), !dbg !4877
  call void @llvm.dbg.value(metadata i32 0, metadata !4794, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4877
  br label %476, !dbg !4811

467:                                              ; preds = %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !4798, metadata !DIExpression()), !dbg !4884
  call void @llvm.dbg.value(metadata i32 2, metadata !4803, metadata !DIExpression()), !dbg !4884
  %468 = add i64 %31, 4611686018427387904, !dbg !4886
  %469 = icmp slt i64 %468, 0, !dbg !4886
  call void @llvm.dbg.value(metadata i64 poison, metadata !4804, metadata !DIExpression()), !dbg !4884
  %470 = shl i64 %31, 1, !dbg !4887
  %471 = icmp slt i64 %31, 0, !dbg !4887
  %472 = select i1 %471, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4887
  %473 = select i1 %469, i64 %472, i64 %470, !dbg !4887
  %474 = lshr i64 %468, 63, !dbg !4887
  %475 = trunc i64 %474 to i32, !dbg !4887
  tail call void @llvm.dbg.value(metadata i64 %473, metadata !4725, metadata !DIExpression()), !dbg !4733
  tail call void @llvm.dbg.value(metadata i32 %475, metadata !4731, metadata !DIExpression()), !dbg !4772
  br label %476, !dbg !4888

476:                                              ; preds = %56, %106, %438, %163, %227, %298, %423, %415, %393, %334, %377, %385, %467, %53
  %477 = phi i64 [ %473, %467 ], [ %31, %53 ], [ %391, %385 ], [ %383, %377 ], [ %374, %334 ], [ %412, %393 ], [ %421, %415 ], [ %435, %423 ], [ %331, %298 ], [ %295, %227 ], [ %224, %163 ], [ %464, %438 ], [ %160, %106 ], [ %103, %56 ], !dbg !4733
  %478 = phi i32 [ %475, %467 ], [ 0, %53 ], [ %392, %385 ], [ %384, %377 ], [ %376, %334 ], [ %414, %393 ], [ %422, %415 ], [ %437, %423 ], [ %333, %298 ], [ %297, %227 ], [ %226, %163 ], [ %466, %438 ], [ %162, %106 ], [ %105, %56 ], !dbg !4889
  tail call void @llvm.dbg.value(metadata i64 %477, metadata !4725, metadata !DIExpression()), !dbg !4733
  tail call void @llvm.dbg.value(metadata i32 %478, metadata !4731, metadata !DIExpression()), !dbg !4772
  %479 = or i32 %478, %30, !dbg !4811
  tail call void @llvm.dbg.value(metadata i32 %479, metadata !4726, metadata !DIExpression()), !dbg !4733
  %480 = getelementptr inbounds i8, ptr %11, i64 %55, !dbg !4890
  store ptr %480, ptr %8, align 8, !dbg !4890, !tbaa !863
  %481 = load i8, ptr %480, align 1, !dbg !4891, !tbaa !943
  %482 = icmp eq i8 %481, 0, !dbg !4891
  %483 = or disjoint i32 %479, 2
  %484 = select i1 %482, i32 %479, i32 %483, !dbg !4893
  tail call void @llvm.dbg.value(metadata i32 %484, metadata !4726, metadata !DIExpression()), !dbg !4733
  br label %487

485:                                              ; preds = %53
  store i64 %31, ptr %3, align 8, !dbg !4894, !tbaa !1321
  %486 = or disjoint i32 %30, 2, !dbg !4895
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !4725, metadata !DIExpression()), !dbg !4733
  tail call void @llvm.dbg.value(metadata i32 %30, metadata !4726, metadata !DIExpression()), !dbg !4733
  br label %490

487:                                              ; preds = %476, %29
  %488 = phi i64 [ %31, %29 ], [ %477, %476 ], !dbg !4896
  %489 = phi i32 [ %30, %29 ], [ %484, %476 ], !dbg !4897
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !4725, metadata !DIExpression()), !dbg !4733
  tail call void @llvm.dbg.value(metadata i32 %489, metadata !4726, metadata !DIExpression()), !dbg !4733
  store i64 %488, ptr %3, align 8, !dbg !4898, !tbaa !1321
  br label %490, !dbg !4899

490:                                              ; preds = %485, %22, %13, %15, %18, %487, %38, %28
  %491 = phi i32 [ %489, %487 ], [ %486, %485 ], [ %39, %38 ], [ %26, %28 ], [ 4, %18 ], [ 4, %15 ], [ 4, %13 ], [ 4, %22 ], !dbg !4733
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #44, !dbg !4900
  ret i32 %491, !dbg !4900
}

; Function Attrs: nounwind
declare !dbg !4901 i64 @strtoimax(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @rpl_fopen(ptr nocapture noundef nonnull readonly %0, ptr nocapture noundef nonnull readonly %1) local_unnamed_addr #20 !dbg !4906 {
  %3 = alloca [81 x i8], align 16, !DIAssignID !4968
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4949, metadata !DIExpression(), metadata !4968, metadata ptr %3, metadata !DIExpression()), !dbg !4969
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4944, metadata !DIExpression()), !dbg !4969
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4945, metadata !DIExpression()), !dbg !4969
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4946, metadata !DIExpression()), !dbg !4969
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4947, metadata !DIExpression()), !dbg !4969
  tail call void @llvm.dbg.value(metadata i8 0, metadata !4948, metadata !DIExpression()), !dbg !4969
  call void @llvm.lifetime.start.p0(i64 81, ptr nonnull %3) #44, !dbg !4970
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4953, metadata !DIExpression()), !dbg !4971
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4955, metadata !DIExpression()), !dbg !4971
  br label %4, !dbg !4972

4:                                                ; preds = %43, %2
  %5 = phi i8 [ 0, %2 ], [ %44, %43 ], !dbg !4969
  %6 = phi ptr [ %1, %2 ], [ %48, %43 ], !dbg !4971
  %7 = phi i64 [ 0, %2 ], [ %45, %43 ]
  %8 = phi i32 [ 0, %2 ], [ %46, %43 ], !dbg !4969
  %9 = phi i32 [ 0, %2 ], [ %47, %43 ], !dbg !4973
  %10 = getelementptr inbounds i8, ptr %3, i64 %7, !dbg !4974
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !4946, metadata !DIExpression()), !dbg !4969
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !4947, metadata !DIExpression()), !dbg !4969
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !4955, metadata !DIExpression()), !dbg !4971
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !4953, metadata !DIExpression()), !dbg !4971
  tail call void @llvm.dbg.value(metadata i8 %5, metadata !4948, metadata !DIExpression()), !dbg !4969
  %11 = load i8, ptr %6, align 1, !dbg !4974, !tbaa !943
  switch i8 %11, label %38 [
    i8 0, label %49
    i8 114, label %12
    i8 119, label %16
    i8 97, label %21
    i8 98, label %26
    i8 43, label %30
    i8 120, label %34
    i8 101, label %36
  ], !dbg !4975

12:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4946, metadata !DIExpression()), !dbg !4969
  %13 = icmp slt i64 %7, 80, !dbg !4976
  br i1 %13, label %14, label %43, !dbg !4979

14:                                               ; preds = %12
  %15 = add nsw i64 %7, 1, !dbg !4980
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %15), metadata !4955, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4971
  store i8 114, ptr %10, align 1, !dbg !4981, !tbaa !943
  br label %43, !dbg !4982

16:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 1, metadata !4946, metadata !DIExpression()), !dbg !4969
  %17 = or i32 %8, 576, !dbg !4983
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !4947, metadata !DIExpression()), !dbg !4969
  %18 = icmp slt i64 %7, 80, !dbg !4984
  br i1 %18, label %19, label %43, !dbg !4986

19:                                               ; preds = %16
  %20 = add nsw i64 %7, 1, !dbg !4987
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %20), metadata !4955, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4971
  store i8 119, ptr %10, align 1, !dbg !4988, !tbaa !943
  br label %43, !dbg !4989

21:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 1, metadata !4946, metadata !DIExpression()), !dbg !4969
  %22 = or i32 %8, 1088, !dbg !4990
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !4947, metadata !DIExpression()), !dbg !4969
  %23 = icmp slt i64 %7, 80, !dbg !4991
  br i1 %23, label %24, label %43, !dbg !4993

24:                                               ; preds = %21
  %25 = add nsw i64 %7, 1, !dbg !4994
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %25), metadata !4955, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4971
  store i8 97, ptr %10, align 1, !dbg !4995, !tbaa !943
  br label %43, !dbg !4996

26:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !4947, metadata !DIExpression()), !dbg !4969
  %27 = icmp slt i64 %7, 80, !dbg !4997
  br i1 %27, label %28, label %43, !dbg !4999

28:                                               ; preds = %26
  %29 = add nsw i64 %7, 1, !dbg !5000
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %29), metadata !4955, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4971
  store i8 98, ptr %10, align 1, !dbg !5001, !tbaa !943
  br label %43, !dbg !5002

30:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 2, metadata !4946, metadata !DIExpression()), !dbg !4969
  %31 = icmp slt i64 %7, 80, !dbg !5003
  br i1 %31, label %32, label %43, !dbg !5005

32:                                               ; preds = %30
  %33 = add nsw i64 %7, 1, !dbg !5006
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %33), metadata !4955, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4971
  store i8 43, ptr %10, align 1, !dbg !5007, !tbaa !943
  br label %43, !dbg !5008

34:                                               ; preds = %4
  %35 = or i32 %8, 128, !dbg !5009
  tail call void @llvm.dbg.value(metadata i32 %35, metadata !4947, metadata !DIExpression()), !dbg !4969
  tail call void @llvm.dbg.value(metadata i8 1, metadata !4948, metadata !DIExpression()), !dbg !4969
  br label %43, !dbg !5010

36:                                               ; preds = %4
  %37 = or i32 %8, 524288, !dbg !5011
  tail call void @llvm.dbg.value(metadata i32 %37, metadata !4947, metadata !DIExpression()), !dbg !4969
  tail call void @llvm.dbg.value(metadata i8 1, metadata !4948, metadata !DIExpression()), !dbg !4969
  br label %43, !dbg !5012

38:                                               ; preds = %4
  %39 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #45, !dbg !5013
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !4956, metadata !DIExpression()), !dbg !5014
  %40 = sub nsw i64 80, %7, !dbg !5015
  %41 = tail call i64 @llvm.umin.i64(i64 %39, i64 %40), !dbg !5017
  tail call void @llvm.dbg.value(metadata i64 %41, metadata !4956, metadata !DIExpression()), !dbg !5014
  call void @llvm.dbg.value(metadata ptr %10, metadata !5018, metadata !DIExpression()), !dbg !5023
  call void @llvm.dbg.value(metadata ptr %6, metadata !5021, metadata !DIExpression()), !dbg !5023
  call void @llvm.dbg.value(metadata i64 %41, metadata !5022, metadata !DIExpression()), !dbg !5023
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %10, ptr noundef nonnull align 1 %6, i64 noundef %41, i1 noundef false) #44, !dbg !5025
  %42 = getelementptr inbounds i8, ptr %10, i64 %41, !dbg !5026
  tail call void @llvm.dbg.value(metadata ptr %42, metadata !4955, metadata !DIExpression()), !dbg !4971
  br label %49, !dbg !5027

43:                                               ; preds = %30, %32, %26, %28, %21, %24, %16, %19, %12, %14, %36, %34
  %44 = phi i8 [ 1, %36 ], [ 1, %34 ], [ %5, %32 ], [ %5, %30 ], [ %5, %28 ], [ %5, %26 ], [ %5, %24 ], [ %5, %21 ], [ %5, %19 ], [ %5, %16 ], [ %5, %14 ], [ %5, %12 ], !dbg !4969
  %45 = phi i64 [ %7, %36 ], [ %7, %34 ], [ %33, %32 ], [ %7, %30 ], [ %29, %28 ], [ %7, %26 ], [ %25, %24 ], [ %7, %21 ], [ %20, %19 ], [ %7, %16 ], [ %15, %14 ], [ %7, %12 ]
  %46 = phi i32 [ %37, %36 ], [ %35, %34 ], [ %8, %32 ], [ %8, %30 ], [ %8, %28 ], [ %8, %26 ], [ %22, %24 ], [ %22, %21 ], [ %17, %19 ], [ %17, %16 ], [ %8, %14 ], [ %8, %12 ], !dbg !4969
  %47 = phi i32 [ %9, %36 ], [ %9, %34 ], [ 2, %32 ], [ 2, %30 ], [ %9, %28 ], [ %9, %26 ], [ 1, %24 ], [ 1, %21 ], [ 1, %19 ], [ 1, %16 ], [ 0, %14 ], [ 0, %12 ], !dbg !4969
  tail call void @llvm.dbg.value(metadata i32 %47, metadata !4946, metadata !DIExpression()), !dbg !4969
  tail call void @llvm.dbg.value(metadata i32 %46, metadata !4947, metadata !DIExpression()), !dbg !4969
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %45), metadata !4955, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4971
  tail call void @llvm.dbg.value(metadata i8 %44, metadata !4948, metadata !DIExpression()), !dbg !4969
  %48 = getelementptr inbounds i8, ptr %6, i64 1, !dbg !5028
  tail call void @llvm.dbg.value(metadata ptr %48, metadata !4953, metadata !DIExpression()), !dbg !4971
  br label %4, !dbg !5029, !llvm.loop !5030

49:                                               ; preds = %4, %38
  %50 = phi ptr [ %42, %38 ], [ %10, %4 ], !dbg !4971
  tail call void @llvm.dbg.value(metadata ptr %50, metadata !4955, metadata !DIExpression()), !dbg !4971
  store i8 0, ptr %50, align 1, !dbg !5032, !tbaa !943
  %51 = and i8 %5, 1, !dbg !5033
  %52 = icmp eq i8 %51, 0, !dbg !5033
  br i1 %52, label %64, label %53, !dbg !5034

53:                                               ; preds = %49
  %54 = or i32 %9, %8, !dbg !5035
  %55 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %0, i32 noundef %54, i32 noundef 438) #44, !dbg !5036
  tail call void @llvm.dbg.value(metadata i32 %55, metadata !4961, metadata !DIExpression()), !dbg !5037
  %56 = icmp slt i32 %55, 0, !dbg !5038
  br i1 %56, label %66, label %57, !dbg !5040

57:                                               ; preds = %53
  %58 = call noalias ptr @fdopen(i32 noundef %55, ptr noundef nonnull %3) #44, !dbg !5041
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !4964, metadata !DIExpression()), !dbg !5037
  %59 = icmp eq ptr %58, null, !dbg !5042
  br i1 %59, label %60, label %66, !dbg !5043

60:                                               ; preds = %57
  %61 = tail call ptr @__errno_location() #47, !dbg !5044
  %62 = load i32, ptr %61, align 4, !dbg !5044, !tbaa !934
  tail call void @llvm.dbg.value(metadata i32 %62, metadata !4965, metadata !DIExpression()), !dbg !5045
  %63 = tail call i32 @close(i32 noundef %55) #44, !dbg !5046
  store i32 %62, ptr %61, align 4, !dbg !5047, !tbaa !934
  br label %66, !dbg !5048

64:                                               ; preds = %49
  call void @llvm.dbg.value(metadata ptr %0, metadata !5049, metadata !DIExpression()), !dbg !5053
  call void @llvm.dbg.value(metadata ptr %1, metadata !5052, metadata !DIExpression()), !dbg !5053
  %65 = tail call noalias noundef ptr @fopen(ptr noundef nonnull %0, ptr noundef nonnull %1), !dbg !5055
  br label %66, !dbg !5056

66:                                               ; preds = %53, %60, %57, %64
  %67 = phi ptr [ %65, %64 ], [ null, %53 ], [ null, %60 ], [ %58, %57 ], !dbg !4969
  call void @llvm.lifetime.end.p0(i64 81, ptr nonnull %3) #44, !dbg !5057
  ret ptr %67, !dbg !5057
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #1

; Function Attrs: nofree
declare !dbg !5058 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #41

; Function Attrs: nofree nounwind
declare !dbg !5061 noalias noundef ptr @fdopen(i32 noundef, ptr nocapture noundef readonly) local_unnamed_addr #4

declare !dbg !5064 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !5065 noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #20 !dbg !5068 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5106, metadata !DIExpression()), !dbg !5111
  %2 = tail call i64 @__fpending(ptr noundef %0) #44, !dbg !5112
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5107, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5111
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5113, metadata !DIExpression()), !dbg !5116
  %3 = load i32, ptr %0, align 8, !dbg !5118, !tbaa !1301
  %4 = and i32 %3, 32, !dbg !5119
  %5 = icmp eq i32 %4, 0, !dbg !5119
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !5109, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5111
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #44, !dbg !5120
  %7 = icmp eq i32 %6, 0, !dbg !5121
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !5110, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5111
  br i1 %5, label %8, label %18, !dbg !5122

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !5124
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !5107, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5111
  %10 = select i1 %7, i1 true, i1 %9, !dbg !5125
  %11 = xor i1 %7, true, !dbg !5125
  %12 = sext i1 %11 to i32, !dbg !5125
  br i1 %10, label %21, label %13, !dbg !5125

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #47, !dbg !5126
  %15 = load i32, ptr %14, align 4, !dbg !5126, !tbaa !934
  %16 = icmp ne i32 %15, 9, !dbg !5127
  %17 = sext i1 %16 to i32, !dbg !5128
  br label %21, !dbg !5128

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !5129

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #47, !dbg !5131
  store i32 0, ptr %20, align 4, !dbg !5133, !tbaa !934
  br label %21, !dbg !5131

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !5111
  ret i32 %22, !dbg !5134
}

; Function Attrs: nounwind
declare !dbg !5135 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #20 !dbg !5138 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5143, metadata !DIExpression()), !dbg !5148
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5144, metadata !DIExpression()), !dbg !5148
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5145, metadata !DIExpression()), !dbg !5148
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !5146, metadata !DIExpression()), !dbg !5148
  %5 = icmp eq ptr %1, null, !dbg !5149
  %6 = select i1 %5, ptr null, ptr %0, !dbg !5151
  %7 = select i1 %5, ptr @.str.153, ptr %1, !dbg !5151
  %8 = select i1 %5, i64 1, i64 %2, !dbg !5151
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !5145, metadata !DIExpression()), !dbg !5148
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !5144, metadata !DIExpression()), !dbg !5148
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !5143, metadata !DIExpression()), !dbg !5148
  %9 = icmp eq ptr %3, null, !dbg !5152
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !5154
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !5146, metadata !DIExpression()), !dbg !5148
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #44, !dbg !5155
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !5147, metadata !DIExpression()), !dbg !5148
  %12 = icmp ult i64 %11, -3, !dbg !5156
  br i1 %12, label %13, label %17, !dbg !5158

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #45, !dbg !5159
  %15 = icmp eq i32 %14, 0, !dbg !5159
  br i1 %15, label %16, label %29, !dbg !5160

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !5161, metadata !DIExpression()), !dbg !5166
  call void @llvm.dbg.value(metadata ptr %10, metadata !5168, metadata !DIExpression()), !dbg !5173
  call void @llvm.dbg.value(metadata i32 0, metadata !5171, metadata !DIExpression()), !dbg !5173
  call void @llvm.dbg.value(metadata i64 8, metadata !5172, metadata !DIExpression()), !dbg !5173
  store i64 0, ptr %10, align 1, !dbg !5175
  br label %29, !dbg !5176

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !5177
  br i1 %18, label %19, label %20, !dbg !5179

19:                                               ; preds = %17
  tail call void @abort() #46, !dbg !5180
  unreachable, !dbg !5180

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !5181

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #44, !dbg !5183
  br i1 %23, label %29, label %24, !dbg !5184

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !5185
  br i1 %25, label %29, label %26, !dbg !5188

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !5189, !tbaa !943
  %28 = zext i8 %27 to i32, !dbg !5190
  store i32 %28, ptr %6, align 4, !dbg !5191, !tbaa !934
  br label %29, !dbg !5192

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !5148
  ret i64 %30, !dbg !5193
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !5194 i32 @mbsinit(ptr noundef) local_unnamed_addr #42

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #43 !dbg !5200 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5202, metadata !DIExpression()), !dbg !5206
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !5203, metadata !DIExpression()), !dbg !5206
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5204, metadata !DIExpression()), !dbg !5206
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !5207
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !5207
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !5205, metadata !DIExpression()), !dbg !5206
  br i1 %5, label %6, label %8, !dbg !5209

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #47, !dbg !5210
  store i32 12, ptr %7, align 4, !dbg !5212, !tbaa !934
  br label %12, !dbg !5213

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !5207
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !5205, metadata !DIExpression()), !dbg !5206
  call void @llvm.dbg.value(metadata ptr %0, metadata !5214, metadata !DIExpression()), !dbg !5218
  call void @llvm.dbg.value(metadata i64 %9, metadata !5217, metadata !DIExpression()), !dbg !5218
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !5220
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #51, !dbg !5221
  br label %12, !dbg !5222

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !5206
  ret ptr %13, !dbg !5223
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #20 !dbg !5224 {
  %2 = alloca [257 x i8], align 16, !DIAssignID !5233
  call void @llvm.dbg.assign(metadata i1 undef, metadata !5229, metadata !DIExpression(), metadata !5233, metadata ptr %2, metadata !DIExpression()), !dbg !5234
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5228, metadata !DIExpression()), !dbg !5234
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #44, !dbg !5235
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #44, !dbg !5236
  %4 = icmp eq i32 %3, 0, !dbg !5236
  br i1 %4, label %5, label %12, !dbg !5238

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !5239, metadata !DIExpression()), !dbg !5243
  call void @llvm.dbg.value(metadata !901, metadata !5242, metadata !DIExpression()), !dbg !5243
  %6 = load i16, ptr %2, align 16, !dbg !5246
  %7 = icmp eq i16 %6, 67, !dbg !5246
  br i1 %7, label %11, label %8, !dbg !5247

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !5239, metadata !DIExpression()), !dbg !5248
  call void @llvm.dbg.value(metadata ptr @.str.1.158, metadata !5242, metadata !DIExpression()), !dbg !5248
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.158, i64 6), !dbg !5250
  %10 = icmp eq i32 %9, 0, !dbg !5251
  br i1 %10, label %11, label %12, !dbg !5252

11:                                               ; preds = %8, %5
  br label %12, !dbg !5253

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !5234
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #44, !dbg !5254
  ret i1 %13, !dbg !5254
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #20 !dbg !5255 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5259, metadata !DIExpression()), !dbg !5262
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5260, metadata !DIExpression()), !dbg !5262
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5261, metadata !DIExpression()), !dbg !5262
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #44, !dbg !5263
  ret i32 %4, !dbg !5264
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #20 !dbg !5265 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5269, metadata !DIExpression()), !dbg !5270
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #44, !dbg !5271
  ret ptr %2, !dbg !5272
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #20 !dbg !5273 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5275, metadata !DIExpression()), !dbg !5277
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #44, !dbg !5278
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !5276, metadata !DIExpression()), !dbg !5277
  ret ptr %2, !dbg !5279
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #20 !dbg !5280 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5282, metadata !DIExpression()), !dbg !5289
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5283, metadata !DIExpression()), !dbg !5289
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5284, metadata !DIExpression()), !dbg !5289
  call void @llvm.dbg.value(metadata i32 %0, metadata !5275, metadata !DIExpression()), !dbg !5290
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #44, !dbg !5292
  call void @llvm.dbg.value(metadata ptr %4, metadata !5276, metadata !DIExpression()), !dbg !5290
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !5285, metadata !DIExpression()), !dbg !5289
  %5 = icmp eq ptr %4, null, !dbg !5293
  br i1 %5, label %6, label %9, !dbg !5294

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !5295
  br i1 %7, label %19, label %8, !dbg !5298

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !5299, !tbaa !943
  br label %19, !dbg !5300

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #45, !dbg !5301
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !5286, metadata !DIExpression()), !dbg !5302
  %11 = icmp ult i64 %10, %2, !dbg !5303
  br i1 %11, label %12, label %14, !dbg !5305

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !5306
  call void @llvm.dbg.value(metadata ptr %1, metadata !5308, metadata !DIExpression()), !dbg !5313
  call void @llvm.dbg.value(metadata ptr %4, metadata !5311, metadata !DIExpression()), !dbg !5313
  call void @llvm.dbg.value(metadata i64 %13, metadata !5312, metadata !DIExpression()), !dbg !5313
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #44, !dbg !5315
  br label %19, !dbg !5316

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !5317
  br i1 %15, label %19, label %16, !dbg !5320

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !5321
  call void @llvm.dbg.value(metadata ptr %1, metadata !5308, metadata !DIExpression()), !dbg !5323
  call void @llvm.dbg.value(metadata ptr %4, metadata !5311, metadata !DIExpression()), !dbg !5323
  call void @llvm.dbg.value(metadata i64 %17, metadata !5312, metadata !DIExpression()), !dbg !5323
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #44, !dbg !5325
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !5326
  store i8 0, ptr %18, align 1, !dbg !5327, !tbaa !943
  br label %19, !dbg !5328

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !5329
  ret i32 %20, !dbg !5330
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
attributes #14 = { nofree norecurse nosync nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nofree nosync nounwind willreturn }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nofree nounwind willreturn memory(argmem: read) }
attributes #29 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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

!llvm.dbg.cu = !{!74, !424, !428, !443, !458, !730, !762, !767, !769, !772, !774, !776, !509, !522, !570, !778, !722, !784, !819, !821, !830, !832, !746, !834, !836, !840, !842}
!llvm.ident = !{!844, !844, !844, !844, !844, !844, !844, !844, !844, !844, !844, !844, !844, !844, !844, !844, !844, !844, !844, !844, !844, !844, !844, !844, !844, !844, !844}
!llvm.module.flags = !{!845, !846, !847, !848, !849, !850, !851}

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
!457 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !458, file: !459, line: 66, type: !504, isLocal: false, isDefinition: true)
!458 = distinct !DICompileUnit(language: DW_LANG_C11, file: !459, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !460, globals: !461, splitDebugInlining: false, nameTableKind: None)
!459 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!460 = !{!131, !138}
!461 = !{!462, !464, !483, !485, !487, !489, !456, !491, !493, !495, !497, !502}
!462 = !DIGlobalVariableExpression(var: !463, expr: !DIExpression())
!463 = distinct !DIGlobalVariable(scope: null, file: !459, line: 272, type: !69, isLocal: true, isDefinition: true)
!464 = !DIGlobalVariableExpression(var: !465, expr: !DIExpression())
!465 = distinct !DIGlobalVariable(name: "old_file_name", scope: !466, file: !459, line: 304, type: !136, isLocal: true, isDefinition: true)
!466 = distinct !DISubprogram(name: "verror_at_line", scope: !459, file: !459, line: 298, type: !467, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !458, retainedNodes: !476)
!467 = !DISubroutineType(types: !468)
!468 = !{null, !87, !87, !136, !78, !136, !469}
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !471)
!471 = !{!472, !473, !474, !475}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !470, file: !459, baseType: !78, size: 32)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !470, file: !459, baseType: !78, size: 32, offset: 32)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !470, file: !459, baseType: !131, size: 64, offset: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !470, file: !459, baseType: !131, size: 64, offset: 128)
!476 = !{!477, !478, !479, !480, !481, !482}
!477 = !DILocalVariable(name: "status", arg: 1, scope: !466, file: !459, line: 298, type: !87)
!478 = !DILocalVariable(name: "errnum", arg: 2, scope: !466, file: !459, line: 298, type: !87)
!479 = !DILocalVariable(name: "file_name", arg: 3, scope: !466, file: !459, line: 298, type: !136)
!480 = !DILocalVariable(name: "line_number", arg: 4, scope: !466, file: !459, line: 298, type: !78)
!481 = !DILocalVariable(name: "message", arg: 5, scope: !466, file: !459, line: 298, type: !136)
!482 = !DILocalVariable(name: "args", arg: 6, scope: !466, file: !459, line: 298, type: !469)
!483 = !DIGlobalVariableExpression(var: !484, expr: !DIExpression())
!484 = distinct !DIGlobalVariable(name: "old_line_number", scope: !466, file: !459, line: 305, type: !78, isLocal: true, isDefinition: true)
!485 = !DIGlobalVariableExpression(var: !486, expr: !DIExpression())
!486 = distinct !DIGlobalVariable(scope: null, file: !459, line: 338, type: !273, isLocal: true, isDefinition: true)
!487 = !DIGlobalVariableExpression(var: !488, expr: !DIExpression())
!488 = distinct !DIGlobalVariable(scope: null, file: !459, line: 346, type: !299, isLocal: true, isDefinition: true)
!489 = !DIGlobalVariableExpression(var: !490, expr: !DIExpression())
!490 = distinct !DIGlobalVariable(scope: null, file: !459, line: 346, type: !164, isLocal: true, isDefinition: true)
!491 = !DIGlobalVariableExpression(var: !492, expr: !DIExpression())
!492 = distinct !DIGlobalVariable(name: "error_message_count", scope: !458, file: !459, line: 69, type: !78, isLocal: false, isDefinition: true)
!493 = !DIGlobalVariableExpression(var: !494, expr: !DIExpression())
!494 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !458, file: !459, line: 295, type: !87, isLocal: false, isDefinition: true)
!495 = !DIGlobalVariableExpression(var: !496, expr: !DIExpression())
!496 = distinct !DIGlobalVariable(scope: null, file: !459, line: 208, type: !19, isLocal: true, isDefinition: true)
!497 = !DIGlobalVariableExpression(var: !498, expr: !DIExpression())
!498 = distinct !DIGlobalVariable(scope: null, file: !459, line: 208, type: !499, isLocal: true, isDefinition: true)
!499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !500)
!500 = !{!501}
!501 = !DISubrange(count: 21)
!502 = !DIGlobalVariableExpression(var: !503, expr: !DIExpression())
!503 = distinct !DIGlobalVariable(scope: null, file: !459, line: 214, type: !69, isLocal: true, isDefinition: true)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DISubroutineType(types: !506)
!506 = !{null}
!507 = !DIGlobalVariableExpression(var: !508, expr: !DIExpression())
!508 = distinct !DIGlobalVariable(name: "program_name", scope: !509, file: !510, line: 31, type: !136, isLocal: false, isDefinition: true)
!509 = distinct !DICompileUnit(language: DW_LANG_C11, file: !510, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !430, globals: !511, splitDebugInlining: false, nameTableKind: None)
!510 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!511 = !{!507, !512, !514}
!512 = !DIGlobalVariableExpression(var: !513, expr: !DIExpression())
!513 = distinct !DIGlobalVariable(scope: null, file: !510, line: 46, type: !299, isLocal: true, isDefinition: true)
!514 = !DIGlobalVariableExpression(var: !515, expr: !DIExpression())
!515 = distinct !DIGlobalVariable(scope: null, file: !510, line: 49, type: !273, isLocal: true, isDefinition: true)
!516 = !DIGlobalVariableExpression(var: !517, expr: !DIExpression())
!517 = distinct !DIGlobalVariable(name: "utf07FF", scope: !518, file: !519, line: 46, type: !546, isLocal: true, isDefinition: true)
!518 = distinct !DISubprogram(name: "proper_name_lite", scope: !519, file: !519, line: 38, type: !520, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !524)
!519 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!520 = !DISubroutineType(types: !521)
!521 = !{!136, !136, !136}
!522 = distinct !DICompileUnit(language: DW_LANG_C11, file: !519, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !523, splitDebugInlining: false, nameTableKind: None)
!523 = !{!516}
!524 = !{!525, !526, !527, !528, !533}
!525 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !518, file: !519, line: 38, type: !136)
!526 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !518, file: !519, line: 38, type: !136)
!527 = !DILocalVariable(name: "translation", scope: !518, file: !519, line: 40, type: !136)
!528 = !DILocalVariable(name: "w", scope: !518, file: !519, line: 47, type: !529)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !530, line: 37, baseType: !531)
!530 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !236, line: 57, baseType: !532)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !236, line: 42, baseType: !78)
!533 = !DILocalVariable(name: "mbs", scope: !518, file: !519, line: 48, type: !534)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !535, line: 6, baseType: !536)
!535 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !537, line: 21, baseType: !538)
!537 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !537, line: 13, size: 64, elements: !539)
!539 = !{!540, !541}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !538, file: !537, line: 15, baseType: !87, size: 32)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !538, file: !537, line: 20, baseType: !542, size: 32, offset: 32)
!542 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !538, file: !537, line: 16, size: 32, elements: !543)
!543 = !{!544, !545}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !542, file: !537, line: 18, baseType: !78, size: 32)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !542, file: !537, line: 19, baseType: !273, size: 32)
!546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 16, elements: !165)
!547 = !DIGlobalVariableExpression(var: !548, expr: !DIExpression())
!548 = distinct !DIGlobalVariable(scope: null, file: !549, line: 78, type: !299, isLocal: true, isDefinition: true)
!549 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!550 = !DIGlobalVariableExpression(var: !551, expr: !DIExpression())
!551 = distinct !DIGlobalVariable(scope: null, file: !549, line: 79, type: !278, isLocal: true, isDefinition: true)
!552 = !DIGlobalVariableExpression(var: !553, expr: !DIExpression())
!553 = distinct !DIGlobalVariable(scope: null, file: !549, line: 80, type: !394, isLocal: true, isDefinition: true)
!554 = !DIGlobalVariableExpression(var: !555, expr: !DIExpression())
!555 = distinct !DIGlobalVariable(scope: null, file: !549, line: 81, type: !394, isLocal: true, isDefinition: true)
!556 = !DIGlobalVariableExpression(var: !557, expr: !DIExpression())
!557 = distinct !DIGlobalVariable(scope: null, file: !549, line: 82, type: !258, isLocal: true, isDefinition: true)
!558 = !DIGlobalVariableExpression(var: !559, expr: !DIExpression())
!559 = distinct !DIGlobalVariable(scope: null, file: !549, line: 83, type: !164, isLocal: true, isDefinition: true)
!560 = !DIGlobalVariableExpression(var: !561, expr: !DIExpression())
!561 = distinct !DIGlobalVariable(scope: null, file: !549, line: 84, type: !299, isLocal: true, isDefinition: true)
!562 = !DIGlobalVariableExpression(var: !563, expr: !DIExpression())
!563 = distinct !DIGlobalVariable(scope: null, file: !549, line: 85, type: !19, isLocal: true, isDefinition: true)
!564 = !DIGlobalVariableExpression(var: !565, expr: !DIExpression())
!565 = distinct !DIGlobalVariable(scope: null, file: !549, line: 86, type: !19, isLocal: true, isDefinition: true)
!566 = !DIGlobalVariableExpression(var: !567, expr: !DIExpression())
!567 = distinct !DIGlobalVariable(scope: null, file: !549, line: 87, type: !299, isLocal: true, isDefinition: true)
!568 = !DIGlobalVariableExpression(var: !569, expr: !DIExpression())
!569 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !570, file: !549, line: 76, type: !642, isLocal: false, isDefinition: true)
!570 = distinct !DICompileUnit(language: DW_LANG_C11, file: !549, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !571, retainedTypes: !579, globals: !580, splitDebugInlining: false, nameTableKind: None)
!571 = !{!572, !574, !114}
!572 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !573, line: 42, baseType: !78, size: 32, elements: !93)
!573 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!574 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !573, line: 254, baseType: !78, size: 32, elements: !575)
!575 = !{!576, !577, !578}
!576 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!577 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!578 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!579 = !{!131, !87, !132, !133}
!580 = !{!547, !550, !552, !554, !556, !558, !560, !562, !564, !566, !568, !581, !585, !595, !597, !600, !602, !604, !606, !608, !631, !638, !640}
!581 = !DIGlobalVariableExpression(var: !582, expr: !DIExpression())
!582 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !570, file: !549, line: 92, type: !583, isLocal: false, isDefinition: true)
!583 = !DICompositeType(tag: DW_TAG_array_type, baseType: !584, size: 320, elements: !60)
!584 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !572)
!585 = !DIGlobalVariableExpression(var: !586, expr: !DIExpression())
!586 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !570, file: !549, line: 1040, type: !587, isLocal: false, isDefinition: true)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !549, line: 56, size: 448, elements: !588)
!588 = !{!589, !590, !591, !593, !594}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !587, file: !549, line: 59, baseType: !572, size: 32)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !587, file: !549, line: 62, baseType: !87, size: 32, offset: 32)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !587, file: !549, line: 66, baseType: !592, size: 256, offset: 64)
!592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 256, elements: !300)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !587, file: !549, line: 69, baseType: !136, size: 64, offset: 320)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !587, file: !549, line: 72, baseType: !136, size: 64, offset: 384)
!595 = !DIGlobalVariableExpression(var: !596, expr: !DIExpression())
!596 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !570, file: !549, line: 107, type: !587, isLocal: true, isDefinition: true)
!597 = !DIGlobalVariableExpression(var: !598, expr: !DIExpression())
!598 = distinct !DIGlobalVariable(name: "slot0", scope: !570, file: !549, line: 831, type: !599, isLocal: true, isDefinition: true)
!599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !439)
!600 = !DIGlobalVariableExpression(var: !601, expr: !DIExpression())
!601 = distinct !DIGlobalVariable(scope: null, file: !549, line: 321, type: !164, isLocal: true, isDefinition: true)
!602 = !DIGlobalVariableExpression(var: !603, expr: !DIExpression())
!603 = distinct !DIGlobalVariable(scope: null, file: !549, line: 357, type: !164, isLocal: true, isDefinition: true)
!604 = !DIGlobalVariableExpression(var: !605, expr: !DIExpression())
!605 = distinct !DIGlobalVariable(scope: null, file: !549, line: 358, type: !164, isLocal: true, isDefinition: true)
!606 = !DIGlobalVariableExpression(var: !607, expr: !DIExpression())
!607 = distinct !DIGlobalVariable(scope: null, file: !549, line: 199, type: !19, isLocal: true, isDefinition: true)
!608 = !DIGlobalVariableExpression(var: !609, expr: !DIExpression())
!609 = distinct !DIGlobalVariable(name: "quote", scope: !610, file: !549, line: 228, type: !629, isLocal: true, isDefinition: true)
!610 = distinct !DISubprogram(name: "gettext_quote", scope: !549, file: !549, line: 197, type: !611, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !613)
!611 = !DISubroutineType(types: !612)
!612 = !{!136, !136, !572}
!613 = !{!614, !615, !616, !617, !618}
!614 = !DILocalVariable(name: "msgid", arg: 1, scope: !610, file: !549, line: 197, type: !136)
!615 = !DILocalVariable(name: "s", arg: 2, scope: !610, file: !549, line: 197, type: !572)
!616 = !DILocalVariable(name: "translation", scope: !610, file: !549, line: 199, type: !136)
!617 = !DILocalVariable(name: "w", scope: !610, file: !549, line: 229, type: !529)
!618 = !DILocalVariable(name: "mbs", scope: !610, file: !549, line: 230, type: !619)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !535, line: 6, baseType: !620)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !537, line: 21, baseType: !621)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !537, line: 13, size: 64, elements: !622)
!622 = !{!623, !624}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !621, file: !537, line: 15, baseType: !87, size: 32)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !621, file: !537, line: 20, baseType: !625, size: 32, offset: 32)
!625 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !621, file: !537, line: 16, size: 32, elements: !626)
!626 = !{!627, !628}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !625, file: !537, line: 18, baseType: !78, size: 32)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !625, file: !537, line: 19, baseType: !273, size: 32)
!629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 64, elements: !630)
!630 = !{!166, !275}
!631 = !DIGlobalVariableExpression(var: !632, expr: !DIExpression())
!632 = distinct !DIGlobalVariable(name: "slotvec", scope: !570, file: !549, line: 834, type: !633, isLocal: true, isDefinition: true)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !549, line: 823, size: 128, elements: !635)
!635 = !{!636, !637}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !634, file: !549, line: 825, baseType: !133, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !634, file: !549, line: 826, baseType: !130, size: 64, offset: 64)
!638 = !DIGlobalVariableExpression(var: !639, expr: !DIExpression())
!639 = distinct !DIGlobalVariable(name: "nslots", scope: !570, file: !549, line: 832, type: !87, isLocal: true, isDefinition: true)
!640 = !DIGlobalVariableExpression(var: !641, expr: !DIExpression())
!641 = distinct !DIGlobalVariable(name: "slotvec0", scope: !570, file: !549, line: 833, type: !634, isLocal: true, isDefinition: true)
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
!722 = distinct !DICompileUnit(language: DW_LANG_C11, file: !723, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !724, splitDebugInlining: false, nameTableKind: None)
!723 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!724 = !{!720}
!725 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 376, elements: !726)
!726 = !{!727}
!727 = !DISubrange(count: 47)
!728 = !DIGlobalVariableExpression(var: !729, expr: !DIExpression())
!729 = distinct !DIGlobalVariable(name: "exit_failure", scope: !730, file: !731, line: 24, type: !733, isLocal: false, isDefinition: true)
!730 = distinct !DICompileUnit(language: DW_LANG_C11, file: !731, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !732, splitDebugInlining: false, nameTableKind: None)
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
!746 = distinct !DICompileUnit(language: DW_LANG_C11, file: !743, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !747, globals: !748, splitDebugInlining: false, nameTableKind: None)
!747 = !{!131, !133, !138}
!748 = !{!741, !744}
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !535, line: 6, baseType: !750)
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !537, line: 21, baseType: !751)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !537, line: 13, size: 64, elements: !752)
!752 = !{!753, !754}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !751, file: !537, line: 15, baseType: !87, size: 32)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !751, file: !537, line: 20, baseType: !755, size: 32, offset: 32)
!755 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !751, file: !537, line: 16, size: 32, elements: !756)
!756 = !{!757, !758}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !755, file: !537, line: 18, baseType: !78, size: 32)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !755, file: !537, line: 19, baseType: !273, size: 32)
!759 = !DIGlobalVariableExpression(var: !760, expr: !DIExpression())
!760 = distinct !DIGlobalVariable(scope: null, file: !761, line: 35, type: !278, isLocal: true, isDefinition: true)
!761 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!762 = distinct !DICompileUnit(language: DW_LANG_C11, file: !763, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fadvise.o -MD -MP -MF lib/.deps/libcoreutils_a-fadvise.Tpo -c lib/fadvise.c -o lib/.libcoreutils_a-fadvise.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !764, splitDebugInlining: false, nameTableKind: None)
!763 = !DIFile(filename: "lib/fadvise.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4f050f925b6846c8ec117ac893b2a17f")
!764 = !{!765}
!765 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !766, line: 44, baseType: !78, size: 32, elements: !107)
!766 = !DIFile(filename: "lib/fadvise.h", directory: "/src", checksumkind: CSK_MD5, checksum: "8bbfadd819a4efc4455fc2741023266a")
!767 = distinct !DICompileUnit(language: DW_LANG_C11, file: !768, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!768 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!769 = distinct !DICompileUnit(language: DW_LANG_C11, file: !770, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !771, splitDebugInlining: false, nameTableKind: None)
!770 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!771 = !{!131}
!772 = distinct !DICompileUnit(language: DW_LANG_C11, file: !773, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fpurge.o -MD -MP -MF lib/.deps/libcoreutils_a-fpurge.Tpo -c lib/fpurge.c -o lib/.libcoreutils_a-fpurge.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!773 = !DIFile(filename: "lib/fpurge.c", directory: "/src", checksumkind: CSK_MD5, checksum: "33a2be68f69b8676b8fe51ee5bacb54f")
!774 = distinct !DICompileUnit(language: DW_LANG_C11, file: !775, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !771, splitDebugInlining: false, nameTableKind: None)
!775 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!776 = distinct !DICompileUnit(language: DW_LANG_C11, file: !777, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!777 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!778 = distinct !DICompileUnit(language: DW_LANG_C11, file: !646, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !779, retainedTypes: !771, globals: !783, splitDebugInlining: false, nameTableKind: None)
!779 = !{!780}
!780 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !646, line: 40, baseType: !78, size: 32, elements: !781)
!781 = !{!782}
!782 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!783 = !{!644, !647, !649, !651, !653, !655, !660, !665, !667, !669, !674, !676, !681, !683, !688, !693, !698, !703, !705, !707, !709, !711, !713, !715}
!784 = distinct !DICompileUnit(language: DW_LANG_C11, file: !785, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !786, retainedTypes: !818, splitDebugInlining: false, nameTableKind: None)
!785 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!786 = !{!787, !799}
!787 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !788, file: !785, line: 188, baseType: !78, size: 32, elements: !797)
!788 = distinct !DISubprogram(name: "x2nrealloc", scope: !785, file: !785, line: 176, type: !789, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !792)
!789 = !DISubroutineType(types: !790)
!790 = !{!131, !131, !791, !133}
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!792 = !{!793, !794, !795, !796}
!793 = !DILocalVariable(name: "p", arg: 1, scope: !788, file: !785, line: 176, type: !131)
!794 = !DILocalVariable(name: "pn", arg: 2, scope: !788, file: !785, line: 176, type: !791)
!795 = !DILocalVariable(name: "s", arg: 3, scope: !788, file: !785, line: 176, type: !133)
!796 = !DILocalVariable(name: "n", scope: !788, file: !785, line: 178, type: !133)
!797 = !{!798}
!798 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!799 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !800, file: !785, line: 228, baseType: !78, size: 32, elements: !797)
!800 = distinct !DISubprogram(name: "xpalloc", scope: !785, file: !785, line: 223, type: !801, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !808)
!801 = !DISubroutineType(types: !802)
!802 = !{!131, !131, !803, !804, !806, !804}
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !805, line: 130, baseType: !806)
!805 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !807, line: 18, baseType: !237)
!807 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!808 = !{!809, !810, !811, !812, !813, !814, !815, !816, !817}
!809 = !DILocalVariable(name: "pa", arg: 1, scope: !800, file: !785, line: 223, type: !131)
!810 = !DILocalVariable(name: "pn", arg: 2, scope: !800, file: !785, line: 223, type: !803)
!811 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !800, file: !785, line: 223, type: !804)
!812 = !DILocalVariable(name: "n_max", arg: 4, scope: !800, file: !785, line: 223, type: !806)
!813 = !DILocalVariable(name: "s", arg: 5, scope: !800, file: !785, line: 223, type: !804)
!814 = !DILocalVariable(name: "n0", scope: !800, file: !785, line: 230, type: !804)
!815 = !DILocalVariable(name: "n", scope: !800, file: !785, line: 237, type: !804)
!816 = !DILocalVariable(name: "nbytes", scope: !800, file: !785, line: 248, type: !804)
!817 = !DILocalVariable(name: "adjusted_nbytes", scope: !800, file: !785, line: 252, type: !804)
!818 = !{!130, !131}
!819 = distinct !DICompileUnit(language: DW_LANG_C11, file: !736, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !820, splitDebugInlining: false, nameTableKind: None)
!820 = !{!734, !737, !739}
!821 = distinct !DICompileUnit(language: DW_LANG_C11, file: !822, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xstrtoimax.o -MD -MP -MF lib/.deps/libcoreutils_a-xstrtoimax.Tpo -c lib/xstrtoimax.c -o lib/.libcoreutils_a-xstrtoimax.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !823, retainedTypes: !826, splitDebugInlining: false, nameTableKind: None)
!822 = !DIFile(filename: "lib/xstrtoimax.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d613cb456542443dde992ed5c05f2acb")
!823 = !{!824}
!824 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !825, line: 30, baseType: !78, size: 32, elements: !79)
!825 = !DIFile(filename: "lib/xstrtol.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c0c36b5479e234e245bae53a387a6d92")
!826 = !{!827}
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !828, line: 101, baseType: !829)
!828 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !236, line: 72, baseType: !237)
!830 = distinct !DICompileUnit(language: DW_LANG_C11, file: !831, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fopen.o -MD -MP -MF lib/.deps/libcoreutils_a-fopen.Tpo -c lib/fopen.c -o lib/.libcoreutils_a-fopen.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !771, splitDebugInlining: false, nameTableKind: None)
!831 = !DIFile(filename: "lib/fopen.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e2a73b267ffe85e9e2028d0b4278a6b8")
!832 = distinct !DICompileUnit(language: DW_LANG_C11, file: !833, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!833 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!834 = distinct !DICompileUnit(language: DW_LANG_C11, file: !835, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !771, splitDebugInlining: false, nameTableKind: None)
!835 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!836 = distinct !DICompileUnit(language: DW_LANG_C11, file: !761, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !837, splitDebugInlining: false, nameTableKind: None)
!837 = !{!838, !759}
!838 = !DIGlobalVariableExpression(var: !839, expr: !DIExpression())
!839 = distinct !DIGlobalVariable(scope: null, file: !761, line: 35, type: !164, isLocal: true, isDefinition: true)
!840 = distinct !DICompileUnit(language: DW_LANG_C11, file: !841, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!841 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!842 = distinct !DICompileUnit(language: DW_LANG_C11, file: !843, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !771, splitDebugInlining: false, nameTableKind: None)
!843 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!844 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!845 = !{i32 7, !"Dwarf Version", i32 5}
!846 = !{i32 2, !"Debug Info Version", i32 3}
!847 = !{i32 1, !"wchar_size", i32 4}
!848 = !{i32 8, !"PIC Level", i32 2}
!849 = !{i32 7, !"PIE Level", i32 2}
!850 = !{i32 7, !"uwtable", i32 2}
!851 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!852 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 97, type: !853, scopeLine: 98, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !855)
!853 = !DISubroutineType(types: !854)
!854 = !{null, !87}
!855 = !{!856}
!856 = !DILocalVariable(name: "status", arg: 1, scope: !852, file: !2, line: 97, type: !87)
!857 = !DILocation(line: 0, scope: !852)
!858 = !DILocation(line: 99, column: 14, scope: !859)
!859 = distinct !DILexicalBlock(scope: !852, file: !2, line: 99, column: 7)
!860 = !DILocation(line: 99, column: 7, scope: !852)
!861 = !DILocation(line: 100, column: 5, scope: !862)
!862 = distinct !DILexicalBlock(scope: !859, file: !2, line: 100, column: 5)
!863 = !{!864, !864, i64 0}
!864 = !{!"any pointer", !865, i64 0}
!865 = !{!"omnipotent char", !866, i64 0}
!866 = !{!"Simple C/C++ TBAA"}
!867 = !DILocation(line: 103, column: 7, scope: !868)
!868 = distinct !DILexicalBlock(scope: !859, file: !2, line: 102, column: 5)
!869 = !DILocation(line: 112, column: 7, scope: !868)
!870 = !DILocation(line: 729, column: 3, scope: !871, inlinedAt: !872)
!871 = distinct !DISubprogram(name: "emit_stdin_note", scope: !86, file: !86, line: 727, type: !505, scopeLine: 728, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74)
!872 = distinct !DILocation(line: 117, column: 7, scope: !868)
!873 = !DILocation(line: 736, column: 3, scope: !874, inlinedAt: !875)
!874 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !86, file: !86, line: 734, type: !505, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74)
!875 = distinct !DILocation(line: 118, column: 7, scope: !868)
!876 = !DILocation(line: 153, column: 7, scope: !868)
!877 = !DILocation(line: 157, column: 7, scope: !868)
!878 = !DILocation(line: 161, column: 7, scope: !868)
!879 = !DILocation(line: 174, column: 7, scope: !868)
!880 = !DILocation(line: 175, column: 7, scope: !868)
!881 = !DILocation(line: 184, column: 7, scope: !868)
!882 = !DILocalVariable(name: "program", arg: 1, scope: !883, file: !86, line: 836, type: !136)
!883 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !86, file: !86, line: 836, type: !884, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !886)
!884 = !DISubroutineType(types: !885)
!885 = !{null, !136}
!886 = !{!882, !887, !894, !895, !897, !898}
!887 = !DILocalVariable(name: "infomap", scope: !883, file: !86, line: 838, type: !888)
!888 = !DICompositeType(tag: DW_TAG_array_type, baseType: !889, size: 896, elements: !20)
!889 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !890)
!890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !883, file: !86, line: 838, size: 128, elements: !891)
!891 = !{!892, !893}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !890, file: !86, line: 838, baseType: !136, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !890, file: !86, line: 838, baseType: !136, size: 64, offset: 64)
!894 = !DILocalVariable(name: "node", scope: !883, file: !86, line: 848, type: !136)
!895 = !DILocalVariable(name: "map_prog", scope: !883, file: !86, line: 849, type: !896)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!897 = !DILocalVariable(name: "lc_messages", scope: !883, file: !86, line: 861, type: !136)
!898 = !DILocalVariable(name: "url_program", scope: !883, file: !86, line: 874, type: !136)
!899 = !DILocation(line: 0, scope: !883, inlinedAt: !900)
!900 = distinct !DILocation(line: 192, column: 7, scope: !868)
!901 = !{}
!902 = !DILocation(line: 857, column: 3, scope: !883, inlinedAt: !900)
!903 = !DILocation(line: 861, column: 29, scope: !883, inlinedAt: !900)
!904 = !DILocation(line: 862, column: 7, scope: !905, inlinedAt: !900)
!905 = distinct !DILexicalBlock(scope: !883, file: !86, line: 862, column: 7)
!906 = !DILocation(line: 862, column: 19, scope: !905, inlinedAt: !900)
!907 = !DILocation(line: 862, column: 22, scope: !905, inlinedAt: !900)
!908 = !DILocation(line: 862, column: 7, scope: !883, inlinedAt: !900)
!909 = !DILocation(line: 868, column: 7, scope: !910, inlinedAt: !900)
!910 = distinct !DILexicalBlock(scope: !905, file: !86, line: 863, column: 5)
!911 = !DILocation(line: 870, column: 5, scope: !910, inlinedAt: !900)
!912 = !DILocation(line: 875, column: 3, scope: !883, inlinedAt: !900)
!913 = !DILocation(line: 877, column: 3, scope: !883, inlinedAt: !900)
!914 = !DILocation(line: 195, column: 3, scope: !852)
!915 = !DISubprogram(name: "dcgettext", scope: !916, file: !916, line: 51, type: !917, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!916 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!917 = !DISubroutineType(types: !918)
!918 = !{!130, !136, !136, !87}
!919 = !DISubprogram(name: "__fprintf_chk", scope: !920, file: !920, line: 93, type: !921, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!920 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!921 = !DISubroutineType(types: !922)
!922 = !{!87, !923, !87, !924, null}
!923 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !209)
!924 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !136)
!925 = !DISubprogram(name: "__printf_chk", scope: !920, file: !920, line: 95, type: !926, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!926 = !DISubroutineType(types: !927)
!927 = !{!87, !87, !924, null}
!928 = !DISubprogram(name: "fputs_unlocked", scope: !929, file: !929, line: 691, type: !930, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!929 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!930 = !DISubroutineType(types: !931)
!931 = !{!87, !924, !923}
!932 = !DILocation(line: 0, scope: !186)
!933 = !DILocation(line: 581, column: 7, scope: !194)
!934 = !{!935, !935, i64 0}
!935 = !{!"int", !865, i64 0}
!936 = !DILocation(line: 581, column: 19, scope: !194)
!937 = !DILocation(line: 581, column: 7, scope: !186)
!938 = !DILocation(line: 585, column: 26, scope: !193)
!939 = !DILocation(line: 0, scope: !193)
!940 = !DILocation(line: 586, column: 23, scope: !193)
!941 = !DILocation(line: 586, column: 28, scope: !193)
!942 = !DILocation(line: 586, column: 32, scope: !193)
!943 = !{!865, !865, i64 0}
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
!976 = !{!"short", !865, i64 0}
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
!1005 = !DILocation(line: 636, column: 16, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !1001, file: !86, line: 636, column: 15)
!1007 = !DILocation(line: 636, column: 29, scope: !1006)
!1008 = !DILocation(line: 640, column: 16, scope: !992)
!1009 = distinct !{!1009, !987, !1010, !981}
!1010 = !DILocation(line: 641, column: 5, scope: !186)
!1011 = !DILocation(line: 644, column: 3, scope: !186)
!1012 = !DILocation(line: 0, scope: !946, inlinedAt: !1013)
!1013 = distinct !DILocation(line: 648, column: 31, scope: !186)
!1014 = !DILocation(line: 0, scope: !946, inlinedAt: !1015)
!1015 = distinct !DILocation(line: 649, column: 31, scope: !186)
!1016 = !DILocation(line: 0, scope: !946, inlinedAt: !1017)
!1017 = distinct !DILocation(line: 650, column: 31, scope: !186)
!1018 = !DILocation(line: 0, scope: !946, inlinedAt: !1019)
!1019 = distinct !DILocation(line: 651, column: 31, scope: !186)
!1020 = !DILocation(line: 0, scope: !946, inlinedAt: !1021)
!1021 = distinct !DILocation(line: 652, column: 31, scope: !186)
!1022 = !DILocation(line: 0, scope: !946, inlinedAt: !1023)
!1023 = distinct !DILocation(line: 653, column: 31, scope: !186)
!1024 = !DILocation(line: 0, scope: !946, inlinedAt: !1025)
!1025 = distinct !DILocation(line: 654, column: 31, scope: !186)
!1026 = !DILocation(line: 0, scope: !946, inlinedAt: !1027)
!1027 = distinct !DILocation(line: 655, column: 31, scope: !186)
!1028 = !DILocation(line: 0, scope: !946, inlinedAt: !1029)
!1029 = distinct !DILocation(line: 656, column: 31, scope: !186)
!1030 = !DILocation(line: 0, scope: !946, inlinedAt: !1031)
!1031 = distinct !DILocation(line: 657, column: 31, scope: !186)
!1032 = !DILocation(line: 663, column: 7, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !186, file: !86, line: 663, column: 7)
!1034 = !DILocation(line: 664, column: 7, scope: !1033)
!1035 = !DILocation(line: 664, column: 10, scope: !1033)
!1036 = !DILocation(line: 663, column: 7, scope: !186)
!1037 = !DILocation(line: 669, column: 7, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1033, file: !86, line: 665, column: 5)
!1039 = !DILocation(line: 671, column: 5, scope: !1038)
!1040 = !DILocation(line: 676, column: 7, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1033, file: !86, line: 673, column: 5)
!1042 = !DILocation(line: 679, column: 3, scope: !186)
!1043 = !DILocation(line: 683, column: 3, scope: !186)
!1044 = !DILocation(line: 686, column: 3, scope: !186)
!1045 = !DILocation(line: 688, column: 3, scope: !186)
!1046 = !DILocation(line: 691, column: 3, scope: !186)
!1047 = !DILocation(line: 695, column: 3, scope: !186)
!1048 = !DILocation(line: 696, column: 1, scope: !186)
!1049 = !DISubprogram(name: "setlocale", scope: !1050, file: !1050, line: 122, type: !1051, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1050 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!130, !87, !136}
!1053 = !DISubprogram(name: "strncmp", scope: !1054, file: !1054, line: 159, type: !1055, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1054 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!87, !136, !136, !133}
!1057 = !DISubprogram(name: "exit", scope: !1058, file: !1058, line: 624, type: !853, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1058 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1059 = !DISubprogram(name: "getenv", scope: !1058, file: !1058, line: 641, type: !1060, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1060 = !DISubroutineType(types: !1061)
!1061 = !{!130, !136}
!1062 = !DISubprogram(name: "strcmp", scope: !1054, file: !1054, line: 156, type: !1063, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!87, !136, !136}
!1065 = !DISubprogram(name: "strspn", scope: !1054, file: !1054, line: 297, type: !1066, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!135, !136, !136}
!1068 = !DISubprogram(name: "strchr", scope: !1054, file: !1054, line: 246, type: !1069, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{!130, !136, !87}
!1071 = !DISubprogram(name: "__ctype_b_loc", scope: !115, file: !115, line: 79, type: !1072, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!1074}
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !132)
!1077 = !DISubprogram(name: "strcspn", scope: !1054, file: !1054, line: 293, type: !1066, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1078 = !DISubprogram(name: "fwrite_unlocked", scope: !929, file: !929, line: 704, type: !1079, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{!133, !1081, !133, !133, !923}
!1081 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1082)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1084 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 1630, type: !1085, scopeLine: 1631, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1088)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!87, !87, !1087}
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!1088 = !{!1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1099, !1102}
!1089 = !DILocalVariable(name: "argc", arg: 1, scope: !1084, file: !2, line: 1630, type: !87)
!1090 = !DILocalVariable(name: "argv", arg: 2, scope: !1084, file: !2, line: 1630, type: !1087)
!1091 = !DILocalVariable(name: "opt", scope: !1084, file: !2, line: 1632, type: !87)
!1092 = !DILocalVariable(name: "input_fh", scope: !1084, file: !2, line: 1633, type: !209)
!1093 = !DILocalVariable(name: "infile", scope: !1084, file: !2, line: 1634, type: !136)
!1094 = !DILocalVariable(name: "decode", scope: !1084, file: !2, line: 1637, type: !196)
!1095 = !DILocalVariable(name: "ignore_garbage", scope: !1084, file: !2, line: 1639, type: !196)
!1096 = !DILocalVariable(name: "wrap_column", scope: !1084, file: !2, line: 1641, type: !1097)
!1097 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !1098, line: 130, baseType: !806)
!1098 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!1099 = !DILocalVariable(name: "w", scope: !1100, file: !2, line: 1664, type: !827)
!1100 = distinct !DILexicalBlock(scope: !1101, file: !2, line: 1663, column: 9)
!1101 = distinct !DILexicalBlock(scope: !1084, file: !2, line: 1657, column: 7)
!1102 = !DILocalVariable(name: "s_err", scope: !1100, file: !2, line: 1665, type: !1103)
!1103 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !77, line: 43, baseType: !76)
!1104 = distinct !DIAssignID()
!1105 = !DILocation(line: 0, scope: !1100)
!1106 = !DILocation(line: 0, scope: !1084)
!1107 = !DILocation(line: 1648, column: 21, scope: !1084)
!1108 = !DILocation(line: 1648, column: 3, scope: !1084)
!1109 = !DILocation(line: 1649, column: 3, scope: !1084)
!1110 = !DILocation(line: 1650, column: 3, scope: !1084)
!1111 = !DILocation(line: 1651, column: 3, scope: !1084)
!1112 = !DILocation(line: 1653, column: 3, scope: !1084)
!1113 = !DILocation(line: 1655, column: 3, scope: !1084)
!1114 = !DILocation(line: 1641, column: 9, scope: !1084)
!1115 = !DILocation(line: 1655, column: 17, scope: !1084)
!1116 = distinct !{!1116, !1113, !1117, !981}
!1117 = !DILocation(line: 1698, column: 7, scope: !1084)
!1118 = !DILocation(line: 1664, column: 11, scope: !1100)
!1119 = !DILocation(line: 1665, column: 44, scope: !1100)
!1120 = !DILocation(line: 1665, column: 32, scope: !1100)
!1121 = !DILocation(line: 1666, column: 32, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1100, file: !2, line: 1666, column: 15)
!1123 = !DILocation(line: 1666, column: 40, scope: !1122)
!1124 = !DILocation(line: 1667, column: 13, scope: !1122)
!1125 = !DILocation(line: 1669, column: 31, scope: !1100)
!1126 = !DILocation(line: 1669, column: 51, scope: !1100)
!1127 = !DILocation(line: 1670, column: 9, scope: !1101)
!1128 = !DILocation(line: 1671, column: 9, scope: !1101)
!1129 = !DILocation(line: 1675, column: 9, scope: !1101)
!1130 = !DILocation(line: 1691, column: 7, scope: !1101)
!1131 = !DILocation(line: 1693, column: 7, scope: !1101)
!1132 = !DILocation(line: 1696, column: 9, scope: !1101)
!1133 = !DILocation(line: 1805, column: 14, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1084, file: !2, line: 1805, column: 7)
!1135 = !DILocation(line: 1805, column: 12, scope: !1134)
!1136 = !DILocation(line: 1805, column: 21, scope: !1134)
!1137 = !DILocation(line: 1805, column: 7, scope: !1084)
!1138 = !DILocation(line: 1807, column: 7, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1134, file: !2, line: 1806, column: 5)
!1140 = !DILocation(line: 1808, column: 7, scope: !1139)
!1141 = !DILocation(line: 1811, column: 14, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1084, file: !2, line: 1811, column: 7)
!1143 = !DILocation(line: 1811, column: 7, scope: !1084)
!1144 = !DILocation(line: 1812, column: 14, scope: !1142)
!1145 = !DILocation(line: 1812, column: 5, scope: !1142)
!1146 = !DILocation(line: 0, scope: !1142)
!1147 = !DILocation(line: 0, scope: !946, inlinedAt: !1148)
!1148 = distinct !DILocation(line: 1816, column: 7, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1084, file: !2, line: 1816, column: 7)
!1150 = !DILocation(line: 1361, column: 11, scope: !946, inlinedAt: !1148)
!1151 = !DILocation(line: 1361, column: 10, scope: !946, inlinedAt: !1148)
!1152 = !DILocation(line: 1816, column: 7, scope: !1084)
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
!1163 = !DILocation(line: 1828, column: 3, scope: !1084)
!1164 = !DILocation(line: 0, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1084, file: !2, line: 1830, column: 7)
!1166 = !DILocation(line: 1830, column: 7, scope: !1084)
!1167 = !DILocation(line: 1831, column: 42, scope: !1165)
!1168 = !DILocation(line: 1831, column: 5, scope: !1165)
!1169 = !DILocation(line: 1833, column: 5, scope: !1165)
!1170 = !DISubprogram(name: "bindtextdomain", scope: !916, file: !916, line: 86, type: !1171, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{!130, !136, !136}
!1173 = !DISubprogram(name: "textdomain", scope: !916, file: !916, line: 82, type: !1060, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1174 = !DISubprogram(name: "atexit", scope: !1058, file: !1058, line: 602, type: !1175, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{!87, !504}
!1177 = !DISubprogram(name: "getopt_long", scope: !412, file: !412, line: 66, type: !1178, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1178 = !DISubroutineType(types: !1179)
!1179 = !{!87, !87, !1180, !136, !1182, !417}
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!1183 = !DISubprogram(name: "__errno_location", scope: !1184, file: !1184, line: 37, type: !1185, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
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
!1197 = !DILocalVariable(name: "sum", scope: !1187, file: !2, line: 1565, type: !1097)
!1198 = !DILocalVariable(name: "ctx", scope: !1187, file: !2, line: 1566, type: !1199)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "base64_decode_context", file: !1200, line: 47, size: 64, elements: !1201)
!1200 = !DIFile(filename: "./lib/base64.h", directory: "/src", checksumkind: CSK_MD5, checksum: "b7f4aff5f88956a8b1e90ed552346cd0")
!1201 = !{!1202, !1203}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !1199, file: !1200, line: 49, baseType: !87, size: 32)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1199, file: !1200, line: 50, baseType: !273, size: 32, offset: 32)
!1204 = !DILocalVariable(name: "ok", scope: !1205, file: !2, line: 1578, type: !196)
!1205 = distinct !DILexicalBlock(scope: !1187, file: !2, line: 1577, column: 5)
!1206 = !DILocalVariable(name: "n", scope: !1207, file: !2, line: 1583, type: !1097)
!1207 = distinct !DILexicalBlock(scope: !1205, file: !2, line: 1582, column: 9)
!1208 = !DILocalVariable(name: "i", scope: !1209, file: !2, line: 1588, type: !1097)
!1209 = distinct !DILexicalBlock(scope: !1210, file: !2, line: 1588, column: 15)
!1210 = distinct !DILexicalBlock(scope: !1211, file: !2, line: 1587, column: 13)
!1211 = distinct !DILexicalBlock(scope: !1207, file: !2, line: 1586, column: 15)
!1212 = !DILocalVariable(name: "n", scope: !1213, file: !2, line: 1607, type: !1097)
!1213 = distinct !DILexicalBlock(scope: !1205, file: !2, line: 1606, column: 9)
!1214 = !DILocalVariable(name: "__ptr", scope: !1215, file: !2, line: 1613, type: !136)
!1215 = distinct !DILexicalBlock(scope: !1216, file: !2, line: 1613, column: 15)
!1216 = distinct !DILexicalBlock(scope: !1213, file: !2, line: 1613, column: 15)
!1217 = !DILocalVariable(name: "__stream", scope: !1215, file: !2, line: 1613, type: !209)
!1218 = !DILocalVariable(name: "__cnt", scope: !1215, file: !2, line: 1613, type: !133)
!1219 = distinct !DIAssignID()
!1220 = distinct !DIAssignID()
!1221 = distinct !DIAssignID()
!1222 = !DILocation(line: 0, scope: !1187)
!1223 = distinct !DIAssignID()
!1224 = !DILocation(line: 0, scope: !1213)
!1225 = !DILocation(line: 1566, column: 3, scope: !1187)
!1226 = !DILocation(line: 1568, column: 11, scope: !1187)
!1227 = !DILocation(line: 1569, column: 12, scope: !1187)
!1228 = !DILocalVariable(name: "ctx", arg: 1, scope: !1229, file: !1200, line: 74, type: !1232)
!1229 = distinct !DISubprogram(name: "base64_decode_ctx_init", scope: !1200, file: !1200, line: 74, type: !1230, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1233)
!1230 = !DISubroutineType(types: !1231)
!1231 = !{null, !1232}
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1233 = !{!1228}
!1234 = !DILocation(line: 0, scope: !1229, inlinedAt: !1235)
!1235 = distinct !DILocation(line: 1574, column: 3, scope: !1187)
!1236 = !DILocation(line: 76, column: 10, scope: !1229, inlinedAt: !1235)
!1237 = !{!1238, !935, i64 0}
!1238 = !{!"base64_decode_context", !935, i64 0, !865, i64 4}
!1239 = distinct !DIAssignID()
!1240 = !DILocation(line: 1576, column: 3, scope: !1187)
!1241 = !DILocation(line: 0, scope: !1205)
!1242 = !DILocation(line: 1583, column: 21, scope: !1207)
!1243 = !DILocation(line: 0, scope: !1207)
!1244 = !DILocation(line: 0, scope: !1209)
!1245 = !DILocation(line: 1586, column: 15, scope: !1207)
!1246 = !DILocation(line: 1590, column: 32, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1248, file: !2, line: 1590, column: 23)
!1248 = distinct !DILexicalBlock(scope: !1249, file: !2, line: 1589, column: 17)
!1249 = distinct !DILexicalBlock(scope: !1209, file: !2, line: 1588, column: 15)
!1250 = !DILocalVariable(name: "ch", arg: 1, scope: !1251, file: !1200, line: 56, type: !138)
!1251 = distinct !DISubprogram(name: "isubase64", scope: !1200, file: !1200, line: 56, type: !1252, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1254)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{!196, !138}
!1254 = !{!1250}
!1255 = !DILocation(line: 0, scope: !1251, inlinedAt: !1256)
!1256 = distinct !DILocation(line: 1590, column: 23, scope: !1247)
!1257 = !DILocation(line: 58, column: 10, scope: !1251, inlinedAt: !1256)
!1258 = !DILocation(line: 58, column: 44, scope: !1251, inlinedAt: !1256)
!1259 = !DILocation(line: 58, column: 41, scope: !1251, inlinedAt: !1256)
!1260 = !DILocalVariable(name: "len", arg: 1, scope: !1261, file: !2, line: 209, type: !87)
!1261 = distinct !DISubprogram(name: "base64_required_padding", scope: !2, file: !2, line: 209, type: !1262, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1264)
!1262 = !DISubroutineType(types: !1263)
!1263 = !{!87, !87}
!1264 = !{!1260, !1265}
!1265 = !DILocalVariable(name: "partial", scope: !1261, file: !2, line: 211, type: !87)
!1266 = !DILocation(line: 0, scope: !1261, inlinedAt: !1267)
!1267 = distinct !DILocation(line: 1591, column: 27, scope: !1247)
!1268 = !DILocation(line: 1591, column: 23, scope: !1247)
!1269 = !DILocation(line: 1592, column: 22, scope: !1247)
!1270 = !DILocation(line: 1592, column: 21, scope: !1247)
!1271 = !DILocation(line: 1594, column: 63, scope: !1247)
!1272 = !DILocation(line: 1594, column: 68, scope: !1247)
!1273 = !DILocation(line: 1594, column: 72, scope: !1247)
!1274 = !DILocalVariable(name: "__dest", arg: 1, scope: !1275, file: !1276, line: 34, type: !131)
!1275 = distinct !DISubprogram(name: "memmove", scope: !1276, file: !1276, line: 34, type: !1277, scopeLine: 35, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1279)
!1276 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1277 = !DISubroutineType(types: !1278)
!1278 = !{!131, !131, !1082, !133}
!1279 = !{!1274, !1280, !1281}
!1280 = !DILocalVariable(name: "__src", arg: 2, scope: !1275, file: !1276, line: 34, type: !1082)
!1281 = !DILocalVariable(name: "__len", arg: 3, scope: !1275, file: !1276, line: 34, type: !133)
!1282 = !DILocation(line: 0, scope: !1275, inlinedAt: !1283)
!1283 = distinct !DILocation(line: 1594, column: 21, scope: !1247)
!1284 = !DILocation(line: 36, column: 10, scope: !1275, inlinedAt: !1283)
!1285 = !DILocation(line: 1588, column: 35, scope: !1249)
!1286 = !DILocation(line: 1588, column: 39, scope: !1249)
!1287 = !DILocation(line: 1588, column: 15, scope: !1209)
!1288 = distinct !{!1288, !1287, !1289, !981}
!1289 = !DILocation(line: 1595, column: 17, scope: !1209)
!1290 = !DILocation(line: 1583, column: 17, scope: !1207)
!1291 = !DILocalVariable(name: "__stream", arg: 1, scope: !1292, file: !1293, line: 135, type: !209)
!1292 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1293, file: !1293, line: 135, type: !1294, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1296)
!1293 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1294 = !DISubroutineType(types: !1295)
!1295 = !{!87, !209}
!1296 = !{!1291}
!1297 = !DILocation(line: 0, scope: !1292, inlinedAt: !1298)
!1298 = distinct !DILocation(line: 1600, column: 15, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1207, file: !2, line: 1600, column: 15)
!1300 = !DILocation(line: 137, column: 10, scope: !1292, inlinedAt: !1298)
!1301 = !{!1302, !935, i64 0}
!1302 = !{!"_IO_FILE", !935, i64 0, !864, i64 8, !864, i64 16, !864, i64 24, !864, i64 32, !864, i64 40, !864, i64 48, !864, i64 56, !864, i64 64, !864, i64 72, !864, i64 80, !864, i64 88, !864, i64 96, !864, i64 104, !935, i64 112, !935, i64 116, !1303, i64 120, !976, i64 128, !865, i64 130, !865, i64 131, !864, i64 136, !1303, i64 144, !864, i64 152, !864, i64 160, !864, i64 168, !864, i64 176, !1303, i64 184, !935, i64 192, !865, i64 196}
!1303 = !{!"long", !865, i64 0}
!1304 = !DILocation(line: 1600, column: 15, scope: !1299)
!1305 = !DILocation(line: 1600, column: 15, scope: !1207)
!1306 = !DILocation(line: 1601, column: 13, scope: !1299)
!1307 = !DILocation(line: 1598, column: 15, scope: !1207)
!1308 = !DILocation(line: 1603, column: 18, scope: !1205)
!1309 = !DILocalVariable(name: "__stream", arg: 1, scope: !1310, file: !1293, line: 128, type: !209)
!1310 = distinct !DISubprogram(name: "feof_unlocked", scope: !1293, file: !1293, line: 128, type: !1294, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1311)
!1311 = !{!1309}
!1312 = !DILocation(line: 0, scope: !1310, inlinedAt: !1313)
!1313 = distinct !DILocation(line: 1603, column: 52, scope: !1205)
!1314 = !DILocation(line: 1603, column: 48, scope: !1205)
!1315 = distinct !{!1315, !1240, !1316, !981}
!1316 = !DILocation(line: 1624, column: 20, scope: !1187)
!1317 = !DILocation(line: 1605, column: 14, scope: !1205)
!1318 = !DILocation(line: 1605, column: 18, scope: !1205)
!1319 = !DILocation(line: 1607, column: 11, scope: !1213)
!1320 = !DILocation(line: 1607, column: 17, scope: !1213)
!1321 = !{!1303, !1303, i64 0}
!1322 = distinct !DIAssignID()
!1323 = !DILocation(line: 1609, column: 18, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1213, file: !2, line: 1608, column: 15)
!1325 = !DILocation(line: 1613, column: 15, scope: !1216)
!1326 = !DILocation(line: 1609, column: 13, scope: !1324)
!1327 = !DILocation(line: 0, scope: !1310, inlinedAt: !1328)
!1328 = distinct !DILocation(line: 1605, column: 21, scope: !1205)
!1329 = !DILocation(line: 130, column: 10, scope: !1310, inlinedAt: !1328)
!1330 = !DILocation(line: 1605, column: 7, scope: !1205)
!1331 = !DILocalVariable(name: "padbuf", scope: !1332, file: !2, line: 424, type: !299)
!1332 = distinct !DISubprogram(name: "decode_ctx_finalize", scope: !2, file: !2, line: 414, type: !1333, scopeLine: 416, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1338)
!1333 = !DISubroutineType(types: !1334)
!1334 = !{!196, !1232, !1335, !1337}
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !130)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1338 = !{!1339, !1340, !1341, !1331, !1342, !1343, !1344, !1345}
!1339 = !DILocalVariable(name: "ctx", arg: 1, scope: !1332, file: !2, line: 414, type: !1232)
!1340 = !DILocalVariable(name: "out", arg: 2, scope: !1332, file: !2, line: 415, type: !1335)
!1341 = !DILocalVariable(name: "outlen", arg: 3, scope: !1332, file: !2, line: 415, type: !1337)
!1342 = !DILocalVariable(name: "pending_len", scope: !1332, file: !2, line: 425, type: !1097)
!1343 = !DILocalVariable(name: "auto_padding", scope: !1332, file: !2, line: 426, type: !1097)
!1344 = !DILocalVariable(name: "n", scope: !1332, file: !2, line: 427, type: !1097)
!1345 = !DILocalVariable(name: "result", scope: !1332, file: !2, line: 428, type: !196)
!1346 = !DILocation(line: 0, scope: !1332, inlinedAt: !1347)
!1347 = distinct !DILocation(line: 1611, column: 18, scope: !1324)
!1348 = !DILocalVariable(name: "ctx", arg: 1, scope: !1349, file: !2, line: 403, type: !1232)
!1349 = distinct !DISubprogram(name: "get_pending_length", scope: !2, file: !2, line: 403, type: !1350, scopeLine: 404, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1352)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{!87, !1232}
!1352 = !{!1348}
!1353 = !DILocation(line: 0, scope: !1349, inlinedAt: !1354)
!1354 = distinct !DILocation(line: 417, column: 7, scope: !1355, inlinedAt: !1347)
!1355 = distinct !DILexicalBlock(scope: !1332, file: !2, line: 417, column: 7)
!1356 = !DILocation(line: 405, column: 15, scope: !1349, inlinedAt: !1354)
!1357 = !DILocation(line: 417, column: 32, scope: !1355, inlinedAt: !1347)
!1358 = !DILocation(line: 417, column: 7, scope: !1332, inlinedAt: !1347)
!1359 = !DILocation(line: 424, column: 3, scope: !1332, inlinedAt: !1347)
!1360 = !DILocation(line: 424, column: 8, scope: !1332, inlinedAt: !1347)
!1361 = distinct !DIAssignID()
!1362 = !DILocation(line: 0, scope: !1349, inlinedAt: !1363)
!1363 = distinct !DILocation(line: 425, column: 23, scope: !1332, inlinedAt: !1347)
!1364 = !DILocation(line: 0, scope: !1261, inlinedAt: !1365)
!1365 = distinct !DILocation(line: 426, column: 24, scope: !1332, inlinedAt: !1347)
!1366 = !DILocation(line: 211, column: 21, scope: !1261, inlinedAt: !1365)
!1367 = !DILocation(line: 212, column: 10, scope: !1261, inlinedAt: !1365)
!1368 = !DILocation(line: 427, column: 3, scope: !1332, inlinedAt: !1347)
!1369 = !DILocation(line: 427, column: 9, scope: !1332, inlinedAt: !1347)
!1370 = distinct !DIAssignID()
!1371 = !DILocation(line: 430, column: 7, scope: !1372, inlinedAt: !1347)
!1372 = distinct !DILexicalBlock(scope: !1332, file: !2, line: 430, column: 7)
!1373 = !DILocation(line: 430, column: 20, scope: !1372, inlinedAt: !1347)
!1374 = !DILocalVariable(name: "ctx", arg: 1, scope: !1375, file: !2, line: 397, type: !1232)
!1375 = distinct !DISubprogram(name: "has_padding", scope: !2, file: !2, line: 397, type: !1376, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1378)
!1376 = !DISubroutineType(types: !1377)
!1377 = !{!196, !1232}
!1378 = !{!1374}
!1379 = !DILocation(line: 0, scope: !1375, inlinedAt: !1380)
!1380 = distinct !DILocation(line: 430, column: 25, scope: !1372, inlinedAt: !1347)
!1381 = !DILocation(line: 399, column: 36, scope: !1375, inlinedAt: !1380)
!1382 = !DILocation(line: 399, column: 20, scope: !1375, inlinedAt: !1380)
!1383 = !DILocation(line: 399, column: 41, scope: !1375, inlinedAt: !1380)
!1384 = !DILocation(line: 430, column: 7, scope: !1332, inlinedAt: !1347)
!1385 = !DILocation(line: 433, column: 16, scope: !1386, inlinedAt: !1347)
!1386 = distinct !DILexicalBlock(scope: !1372, file: !2, line: 431, column: 5)
!1387 = !DILocation(line: 434, column: 5, scope: !1386, inlinedAt: !1347)
!1388 = !DILocation(line: 437, column: 16, scope: !1389, inlinedAt: !1347)
!1389 = distinct !DILexicalBlock(scope: !1372, file: !2, line: 436, column: 5)
!1390 = !DILocation(line: 440, column: 13, scope: !1332, inlinedAt: !1347)
!1391 = !DILocation(line: 440, column: 11, scope: !1332, inlinedAt: !1347)
!1392 = distinct !DIAssignID()
!1393 = !DILocation(line: 442, column: 1, scope: !1332, inlinedAt: !1347)
!1394 = !DILocation(line: 419, column: 15, scope: !1395, inlinedAt: !1347)
!1395 = distinct !DILexicalBlock(scope: !1355, file: !2, line: 418, column: 5)
!1396 = distinct !DIAssignID()
!1397 = !DILocation(line: 420, column: 7, scope: !1395, inlinedAt: !1347)
!1398 = !DILocation(line: 1613, column: 44, scope: !1216)
!1399 = !DILocation(line: 1613, column: 42, scope: !1216)
!1400 = !DILocation(line: 1613, column: 15, scope: !1213)
!1401 = !DILocation(line: 1616, column: 15, scope: !1213)
!1402 = !DILocation(line: 1622, column: 9, scope: !1205)
!1403 = !DILocation(line: 948, column: 21, scope: !1404, inlinedAt: !1407)
!1404 = distinct !DISubprogram(name: "write_error", scope: !86, file: !86, line: 946, type: !505, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1405)
!1405 = !{!1406}
!1406 = !DILocalVariable(name: "saved_errno", scope: !1404, file: !86, line: 948, type: !87)
!1407 = distinct !DILocation(line: 1614, column: 13, scope: !1216)
!1408 = !DILocation(line: 0, scope: !1404, inlinedAt: !1407)
!1409 = !DILocation(line: 949, column: 3, scope: !1404, inlinedAt: !1407)
!1410 = !DILocation(line: 950, column: 11, scope: !1404, inlinedAt: !1407)
!1411 = !DILocation(line: 950, column: 3, scope: !1404, inlinedAt: !1407)
!1412 = !DILocation(line: 951, column: 3, scope: !1404, inlinedAt: !1407)
!1413 = !DILocation(line: 952, column: 3, scope: !1404, inlinedAt: !1407)
!1414 = !DILocation(line: 1617, column: 13, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1213, file: !2, line: 1616, column: 15)
!1416 = !DILocation(line: 130, column: 10, scope: !1310, inlinedAt: !1417)
!1417 = distinct !DILocation(line: 1624, column: 11, scope: !1187)
!1418 = !DILocation(line: 1624, column: 10, scope: !1187)
!1419 = !DILocation(line: 0, scope: !1310, inlinedAt: !1417)
!1420 = !DILocation(line: 1623, column: 5, scope: !1205)
!1421 = !DILocation(line: 1626, column: 3, scope: !1187)
!1422 = distinct !DISubprogram(name: "do_encode", scope: !2, file: !2, line: 1488, type: !1423, scopeLine: 1489, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1425)
!1423 = !DISubroutineType(types: !1424)
!1424 = !{null, !209, !136, !209, !1097}
!1425 = !{!1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434}
!1426 = !DILocalVariable(name: "in", arg: 1, scope: !1422, file: !2, line: 1488, type: !209)
!1427 = !DILocalVariable(name: "infile", arg: 2, scope: !1422, file: !2, line: 1488, type: !136)
!1428 = !DILocalVariable(name: "out", arg: 3, scope: !1422, file: !2, line: 1488, type: !209)
!1429 = !DILocalVariable(name: "wrap_column", arg: 4, scope: !1422, file: !2, line: 1488, type: !1097)
!1430 = !DILocalVariable(name: "current_column", scope: !1422, file: !2, line: 1490, type: !1097)
!1431 = !DILocalVariable(name: "inbuf", scope: !1422, file: !2, line: 1491, type: !130)
!1432 = !DILocalVariable(name: "outbuf", scope: !1422, file: !2, line: 1491, type: !130)
!1433 = !DILocalVariable(name: "sum", scope: !1422, file: !2, line: 1492, type: !1097)
!1434 = !DILocalVariable(name: "n", scope: !1435, file: !2, line: 1507, type: !1097)
!1435 = distinct !DILexicalBlock(scope: !1422, file: !2, line: 1506, column: 5)
!1436 = !DILocation(line: 0, scope: !1422)
!1437 = !DILocation(line: 1494, column: 11, scope: !1422)
!1438 = !DILocation(line: 1495, column: 12, scope: !1422)
!1439 = !DILocation(line: 1505, column: 3, scope: !1422)
!1440 = !DILocation(line: 1490, column: 9, scope: !1422)
!1441 = !DILocation(line: 1510, column: 7, scope: !1435)
!1442 = !DILocation(line: 0, scope: !1435)
!1443 = !DILocation(line: 1512, column: 15, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1435, file: !2, line: 1511, column: 9)
!1445 = !DILocation(line: 1513, column: 15, scope: !1444)
!1446 = !DILocation(line: 0, scope: !1310, inlinedAt: !1447)
!1447 = distinct !DILocation(line: 1515, column: 15, scope: !1435)
!1448 = !DILocation(line: 130, column: 10, scope: !1310, inlinedAt: !1447)
!1449 = !DILocation(line: 1515, column: 15, scope: !1435)
!1450 = !DILocation(line: 1515, column: 25, scope: !1435)
!1451 = !DILocation(line: 0, scope: !1292, inlinedAt: !1452)
!1452 = distinct !DILocation(line: 1515, column: 29, scope: !1435)
!1453 = !DILocation(line: 1515, column: 29, scope: !1435)
!1454 = !DILocation(line: 1515, column: 41, scope: !1435)
!1455 = distinct !{!1455, !1441, !1456, !981}
!1456 = !DILocation(line: 1515, column: 63, scope: !1435)
!1457 = !DILocation(line: 1517, column: 15, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1435, file: !2, line: 1517, column: 11)
!1459 = !DILocation(line: 1517, column: 11, scope: !1435)
!1460 = !DILocation(line: 1532, column: 48, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1462, file: !2, line: 1529, column: 13)
!1462 = distinct !DILexicalBlock(scope: !1458, file: !2, line: 1518, column: 9)
!1463 = !DILocation(line: 1532, column: 15, scope: !1461)
!1464 = !DILocalVariable(name: "buffer", arg: 1, scope: !1465, file: !2, line: 1443, type: !136)
!1465 = distinct !DISubprogram(name: "wrap_write", scope: !2, file: !2, line: 1443, type: !1466, scopeLine: 1445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1468)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{null, !136, !1097, !1097, !1337, !209}
!1468 = !{!1464, !1469, !1470, !1471, !1472, !1473, !1478, !1479, !1480, !1482, !1485, !1490, !1491}
!1469 = !DILocalVariable(name: "len", arg: 2, scope: !1465, file: !2, line: 1443, type: !1097)
!1470 = !DILocalVariable(name: "wrap_column", arg: 3, scope: !1465, file: !2, line: 1444, type: !1097)
!1471 = !DILocalVariable(name: "current_column", arg: 4, scope: !1465, file: !2, line: 1444, type: !1337)
!1472 = !DILocalVariable(name: "out", arg: 5, scope: !1465, file: !2, line: 1444, type: !209)
!1473 = !DILocalVariable(name: "__ptr", scope: !1474, file: !2, line: 1449, type: !136)
!1474 = distinct !DILexicalBlock(scope: !1475, file: !2, line: 1449, column: 11)
!1475 = distinct !DILexicalBlock(scope: !1476, file: !2, line: 1449, column: 11)
!1476 = distinct !DILexicalBlock(scope: !1477, file: !2, line: 1447, column: 5)
!1477 = distinct !DILexicalBlock(scope: !1465, file: !2, line: 1446, column: 7)
!1478 = !DILocalVariable(name: "__stream", scope: !1474, file: !2, line: 1449, type: !209)
!1479 = !DILocalVariable(name: "__cnt", scope: !1474, file: !2, line: 1449, type: !133)
!1480 = !DILocalVariable(name: "written", scope: !1481, file: !2, line: 1453, type: !1097)
!1481 = distinct !DILexicalBlock(scope: !1477, file: !2, line: 1453, column: 5)
!1482 = !DILocalVariable(name: "to_write", scope: !1483, file: !2, line: 1455, type: !1097)
!1483 = distinct !DILexicalBlock(scope: !1484, file: !2, line: 1454, column: 7)
!1484 = distinct !DILexicalBlock(scope: !1481, file: !2, line: 1453, column: 5)
!1485 = !DILocalVariable(name: "__ptr", scope: !1486, file: !2, line: 1465, type: !136)
!1486 = distinct !DILexicalBlock(scope: !1487, file: !2, line: 1465, column: 17)
!1487 = distinct !DILexicalBlock(scope: !1488, file: !2, line: 1465, column: 17)
!1488 = distinct !DILexicalBlock(scope: !1489, file: !2, line: 1464, column: 11)
!1489 = distinct !DILexicalBlock(scope: !1483, file: !2, line: 1457, column: 13)
!1490 = !DILocalVariable(name: "__stream", scope: !1486, file: !2, line: 1465, type: !209)
!1491 = !DILocalVariable(name: "__cnt", scope: !1486, file: !2, line: 1465, type: !133)
!1492 = !DILocation(line: 0, scope: !1465, inlinedAt: !1493)
!1493 = distinct !DILocation(line: 1534, column: 15, scope: !1461)
!1494 = !DILocation(line: 1446, column: 7, scope: !1465, inlinedAt: !1493)
!1495 = !DILocation(line: 1449, column: 11, scope: !1475, inlinedAt: !1493)
!1496 = !DILocation(line: 1449, column: 43, scope: !1475, inlinedAt: !1493)
!1497 = !DILocation(line: 1449, column: 11, scope: !1476, inlinedAt: !1493)
!1498 = !DILocation(line: 948, column: 21, scope: !1404, inlinedAt: !1499)
!1499 = distinct !DILocation(line: 1450, column: 9, scope: !1475, inlinedAt: !1493)
!1500 = !DILocation(line: 0, scope: !1404, inlinedAt: !1499)
!1501 = !DILocation(line: 949, column: 3, scope: !1404, inlinedAt: !1499)
!1502 = !DILocation(line: 950, column: 11, scope: !1404, inlinedAt: !1499)
!1503 = !DILocation(line: 950, column: 3, scope: !1404, inlinedAt: !1499)
!1504 = !DILocation(line: 951, column: 3, scope: !1404, inlinedAt: !1499)
!1505 = !DILocation(line: 952, column: 3, scope: !1404, inlinedAt: !1499)
!1506 = !DILocation(line: 0, scope: !1481, inlinedAt: !1493)
!1507 = !DILocation(line: 1455, column: 26, scope: !1483, inlinedAt: !1493)
!1508 = !DILocation(line: 0, scope: !1483, inlinedAt: !1493)
!1509 = !DILocation(line: 1457, column: 22, scope: !1489, inlinedAt: !1493)
!1510 = !DILocation(line: 1457, column: 13, scope: !1483, inlinedAt: !1493)
!1511 = !DILocalVariable(name: "__c", arg: 1, scope: !1512, file: !1293, line: 91, type: !87)
!1512 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1293, file: !1293, line: 91, type: !1513, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1515)
!1513 = !DISubroutineType(types: !1514)
!1514 = !{!87, !87, !209}
!1515 = !{!1511, !1516}
!1516 = !DILocalVariable(name: "__stream", arg: 2, scope: !1512, file: !1293, line: 91, type: !209)
!1517 = !DILocation(line: 0, scope: !1512, inlinedAt: !1518)
!1518 = distinct !DILocation(line: 1459, column: 17, scope: !1519, inlinedAt: !1493)
!1519 = distinct !DILexicalBlock(scope: !1520, file: !2, line: 1459, column: 17)
!1520 = distinct !DILexicalBlock(scope: !1489, file: !2, line: 1458, column: 11)
!1521 = !DILocation(line: 93, column: 10, scope: !1512, inlinedAt: !1518)
!1522 = !{!1302, !864, i64 40}
!1523 = !{!1302, !864, i64 48}
!1524 = !{!"branch_weights", i32 2000, i32 1}
!1525 = !DILocation(line: 1459, column: 17, scope: !1520, inlinedAt: !1493)
!1526 = !DILocation(line: 1459, column: 35, scope: !1519, inlinedAt: !1493)
!1527 = !DILocation(line: 948, column: 21, scope: !1404, inlinedAt: !1528)
!1528 = distinct !DILocation(line: 1460, column: 15, scope: !1519, inlinedAt: !1493)
!1529 = !DILocation(line: 0, scope: !1404, inlinedAt: !1528)
!1530 = !DILocation(line: 949, column: 3, scope: !1404, inlinedAt: !1528)
!1531 = !DILocation(line: 950, column: 11, scope: !1404, inlinedAt: !1528)
!1532 = !DILocation(line: 950, column: 3, scope: !1404, inlinedAt: !1528)
!1533 = !DILocation(line: 951, column: 3, scope: !1404, inlinedAt: !1528)
!1534 = !DILocation(line: 952, column: 3, scope: !1404, inlinedAt: !1528)
!1535 = !DILocation(line: 1465, column: 17, scope: !1487, inlinedAt: !1493)
!1536 = !DILocation(line: 1465, column: 64, scope: !1487, inlinedAt: !1493)
!1537 = !DILocation(line: 1465, column: 17, scope: !1488, inlinedAt: !1493)
!1538 = !DILocation(line: 948, column: 21, scope: !1404, inlinedAt: !1539)
!1539 = distinct !DILocation(line: 1466, column: 15, scope: !1487, inlinedAt: !1493)
!1540 = !DILocation(line: 0, scope: !1404, inlinedAt: !1539)
!1541 = !DILocation(line: 949, column: 3, scope: !1404, inlinedAt: !1539)
!1542 = !DILocation(line: 950, column: 11, scope: !1404, inlinedAt: !1539)
!1543 = !DILocation(line: 950, column: 3, scope: !1404, inlinedAt: !1539)
!1544 = !DILocation(line: 951, column: 3, scope: !1404, inlinedAt: !1539)
!1545 = !DILocation(line: 952, column: 3, scope: !1404, inlinedAt: !1539)
!1546 = !DILocation(line: 1467, column: 29, scope: !1488, inlinedAt: !1493)
!1547 = !DILocation(line: 1468, column: 21, scope: !1488, inlinedAt: !1493)
!1548 = !DILocation(line: 0, scope: !1489, inlinedAt: !1493)
!1549 = !DILocation(line: 1453, column: 37, scope: !1484, inlinedAt: !1493)
!1550 = !DILocation(line: 1453, column: 5, scope: !1481, inlinedAt: !1493)
!1551 = distinct !{!1551, !1550, !1552, !981}
!1552 = !DILocation(line: 1470, column: 7, scope: !1481, inlinedAt: !1493)
!1553 = !DILocation(line: 0, scope: !1310, inlinedAt: !1554)
!1554 = distinct !DILocation(line: 1539, column: 11, scope: !1422)
!1555 = !DILocation(line: 130, column: 10, scope: !1310, inlinedAt: !1554)
!1556 = !DILocation(line: 1539, column: 11, scope: !1422)
!1557 = !DILocation(line: 1539, column: 21, scope: !1422)
!1558 = !DILocation(line: 0, scope: !1292, inlinedAt: !1559)
!1559 = distinct !DILocation(line: 1539, column: 25, scope: !1422)
!1560 = !DILocation(line: 1539, column: 25, scope: !1422)
!1561 = !DILocation(line: 1539, column: 37, scope: !1422)
!1562 = distinct !{!1562, !1439, !1563, !981}
!1563 = !DILocation(line: 1539, column: 60, scope: !1422)
!1564 = !DILocation(line: 1552, column: 7, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1422, file: !2, line: 1552, column: 7)
!1566 = !DILocation(line: 1552, column: 19, scope: !1565)
!1567 = !DILocation(line: 0, scope: !1512, inlinedAt: !1568)
!1568 = distinct !DILocation(line: 1552, column: 44, scope: !1565)
!1569 = !DILocation(line: 93, column: 10, scope: !1512, inlinedAt: !1568)
!1570 = !DILocation(line: 1552, column: 7, scope: !1422)
!1571 = !DILocation(line: 1552, column: 62, scope: !1565)
!1572 = !DILocation(line: 948, column: 21, scope: !1404, inlinedAt: !1573)
!1573 = distinct !DILocation(line: 1553, column: 5, scope: !1565)
!1574 = !DILocation(line: 0, scope: !1404, inlinedAt: !1573)
!1575 = !DILocation(line: 949, column: 3, scope: !1404, inlinedAt: !1573)
!1576 = !DILocation(line: 950, column: 11, scope: !1404, inlinedAt: !1573)
!1577 = !DILocation(line: 950, column: 3, scope: !1404, inlinedAt: !1573)
!1578 = !DILocation(line: 951, column: 3, scope: !1404, inlinedAt: !1573)
!1579 = !DILocation(line: 952, column: 3, scope: !1404, inlinedAt: !1573)
!1580 = !DILocation(line: 0, scope: !1292, inlinedAt: !1581)
!1581 = distinct !DILocation(line: 1555, column: 7, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1422, file: !2, line: 1555, column: 7)
!1583 = !DILocation(line: 137, column: 10, scope: !1292, inlinedAt: !1581)
!1584 = !DILocation(line: 1555, column: 7, scope: !1582)
!1585 = !DILocation(line: 1555, column: 7, scope: !1422)
!1586 = !DILocation(line: 1556, column: 5, scope: !1582)
!1587 = !DILocation(line: 1558, column: 3, scope: !1422)
!1588 = !DISubprogram(name: "fflush_unlocked", scope: !929, file: !929, line: 239, type: !1294, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1589 = !DISubprogram(name: "clearerr_unlocked", scope: !929, file: !929, line: 794, type: !1590, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{null, !209}
!1592 = !DISubprogram(name: "__overflow", scope: !929, file: !929, line: 886, type: !1593, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1593 = !DISubroutineType(types: !1594)
!1594 = !{!87, !209, !87}
!1595 = distinct !DISubprogram(name: "finish_and_exit", scope: !2, file: !2, line: 1474, type: !1596, scopeLine: 1475, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !1598)
!1596 = !DISubroutineType(types: !1597)
!1597 = !{null, !209, !136}
!1598 = !{!1599, !1600}
!1599 = !DILocalVariable(name: "in", arg: 1, scope: !1595, file: !2, line: 1474, type: !209)
!1600 = !DILocalVariable(name: "infile", arg: 2, scope: !1595, file: !2, line: 1474, type: !136)
!1601 = !DILocation(line: 0, scope: !1595)
!1602 = !DILocation(line: 1476, column: 7, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1595, file: !2, line: 1476, column: 7)
!1604 = !DILocation(line: 1476, column: 19, scope: !1603)
!1605 = !DILocation(line: 1476, column: 7, scope: !1595)
!1606 = !DILocation(line: 0, scope: !946, inlinedAt: !1607)
!1607 = distinct !DILocation(line: 1478, column: 11, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1609, file: !2, line: 1478, column: 11)
!1609 = distinct !DILexicalBlock(scope: !1603, file: !2, line: 1477, column: 5)
!1610 = !DILocation(line: 1361, column: 11, scope: !946, inlinedAt: !1607)
!1611 = !DILocation(line: 1361, column: 10, scope: !946, inlinedAt: !1607)
!1612 = !DILocation(line: 0, scope: !1608)
!1613 = !DILocation(line: 1478, column: 11, scope: !1609)
!1614 = !DILocation(line: 1479, column: 9, scope: !1608)
!1615 = !DILocation(line: 1481, column: 9, scope: !1608)
!1616 = !DILocation(line: 1484, column: 3, scope: !1595)
!1617 = distinct !DISubprogram(name: "isubase64", scope: !1618, file: !1618, line: 56, type: !1252, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !1619)
!1618 = !DIFile(filename: "lib/base64.h", directory: "/src", checksumkind: CSK_MD5, checksum: "b7f4aff5f88956a8b1e90ed552346cd0")
!1619 = !{!1620}
!1620 = !DILocalVariable(name: "ch", arg: 1, scope: !1617, file: !1618, line: 56, type: !138)
!1621 = !DILocation(line: 0, scope: !1617)
!1622 = !DILocation(line: 58, column: 10, scope: !1617)
!1623 = !DILocation(line: 58, column: 44, scope: !1617)
!1624 = !DILocation(line: 58, column: 41, scope: !1617)
!1625 = !DILocation(line: 58, column: 3, scope: !1617)
!1626 = distinct !DISubprogram(name: "isbase64", scope: !1618, file: !1618, line: 62, type: !1627, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !1629)
!1627 = !DISubroutineType(types: !1628)
!1628 = !{!196, !4}
!1629 = !{!1630}
!1630 = !DILocalVariable(name: "ch", arg: 1, scope: !1626, file: !1618, line: 62, type: !4)
!1631 = !DILocation(line: 0, scope: !1626)
!1632 = !DILocation(line: 0, scope: !1617, inlinedAt: !1633)
!1633 = distinct !DILocation(line: 64, column: 10, scope: !1626)
!1634 = !DILocation(line: 58, column: 10, scope: !1617, inlinedAt: !1633)
!1635 = !DILocation(line: 58, column: 44, scope: !1617, inlinedAt: !1633)
!1636 = !DILocation(line: 58, column: 41, scope: !1617, inlinedAt: !1633)
!1637 = !DILocation(line: 64, column: 3, scope: !1626)
!1638 = distinct !DISubprogram(name: "base64_decode_ctx_init", scope: !1618, file: !1618, line: 74, type: !1639, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !1646)
!1639 = !DISubroutineType(types: !1640)
!1640 = !{null, !1641}
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "base64_decode_context", file: !1618, line: 47, size: 64, elements: !1643)
!1643 = !{!1644, !1645}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !1642, file: !1618, line: 49, baseType: !87, size: 32)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1642, file: !1618, line: 50, baseType: !273, size: 32, offset: 32)
!1646 = !{!1647}
!1647 = !DILocalVariable(name: "ctx", arg: 1, scope: !1638, file: !1618, line: 74, type: !1641)
!1648 = !DILocation(line: 0, scope: !1638)
!1649 = !DILocation(line: 76, column: 10, scope: !1638)
!1650 = !DILocation(line: 77, column: 1, scope: !1638)
!1651 = distinct !DISubprogram(name: "base64_encode", scope: !429, file: !429, line: 88, type: !1652, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !1654)
!1652 = !DISubroutineType(types: !1653)
!1653 = !{null, !924, !1097, !1336, !1097}
!1654 = !{!1655, !1656, !1657, !1658}
!1655 = !DILocalVariable(name: "in", arg: 1, scope: !1651, file: !429, line: 88, type: !924)
!1656 = !DILocalVariable(name: "inlen", arg: 2, scope: !1651, file: !429, line: 88, type: !1097)
!1657 = !DILocalVariable(name: "out", arg: 3, scope: !1651, file: !429, line: 89, type: !1336)
!1658 = !DILocalVariable(name: "outlen", arg: 4, scope: !1651, file: !429, line: 89, type: !1097)
!1659 = !DILocation(line: 0, scope: !1651)
!1660 = !DILocation(line: 98, column: 18, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1651, file: !429, line: 98, column: 7)
!1662 = !DILocation(line: 98, column: 23, scope: !1661)
!1663 = !DILocation(line: 98, column: 43, scope: !1661)
!1664 = !DILocation(line: 98, column: 49, scope: !1661)
!1665 = !DILocation(line: 98, column: 32, scope: !1661)
!1666 = !DILocation(line: 98, column: 7, scope: !1651)
!1667 = !{!1668}
!1668 = distinct !{!1668, !1669, !"base64_encode_fast: argument 0"}
!1669 = distinct !{!1669, !"base64_encode_fast"}
!1670 = !DILocation(line: 100, column: 7, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1661, file: !429, line: 99, column: 5)
!1672 = !{!1673}
!1673 = distinct !{!1673, !1669, !"base64_encode_fast: argument 1"}
!1674 = !DILocalVariable(name: "in", arg: 1, scope: !1675, file: !429, line: 69, type: !924)
!1675 = distinct !DISubprogram(name: "base64_encode_fast", scope: !429, file: !429, line: 69, type: !1676, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !1678)
!1676 = !DISubroutineType(types: !1677)
!1677 = !{null, !924, !1097, !1336}
!1678 = !{!1674, !1679, !1680}
!1679 = !DILocalVariable(name: "inlen", arg: 2, scope: !1675, file: !429, line: 69, type: !1097)
!1680 = !DILocalVariable(name: "out", arg: 3, scope: !1675, file: !429, line: 69, type: !1336)
!1681 = !DILocation(line: 0, scope: !1675, inlinedAt: !1682)
!1682 = distinct !DILocation(line: 100, column: 7, scope: !1671)
!1683 = !DILocation(line: 71, column: 3, scope: !1675, inlinedAt: !1682)
!1684 = !DILocation(line: 73, column: 32, scope: !1685, inlinedAt: !1682)
!1685 = distinct !DILexicalBlock(scope: !1675, file: !429, line: 72, column: 5)
!1686 = !DILocation(line: 73, column: 16, scope: !1685, inlinedAt: !1682)
!1687 = !{!1668, !1673}
!1688 = !DILocation(line: 73, column: 11, scope: !1685, inlinedAt: !1682)
!1689 = !DILocation(line: 73, column: 14, scope: !1685, inlinedAt: !1682)
!1690 = !DILocation(line: 74, column: 23, scope: !1685, inlinedAt: !1682)
!1691 = !DILocation(line: 74, column: 40, scope: !1685, inlinedAt: !1682)
!1692 = !DILocation(line: 74, column: 59, scope: !1685, inlinedAt: !1682)
!1693 = !DILocation(line: 74, column: 73, scope: !1685, inlinedAt: !1682)
!1694 = !DILocation(line: 74, column: 16, scope: !1685, inlinedAt: !1682)
!1695 = !DILocation(line: 74, column: 11, scope: !1685, inlinedAt: !1682)
!1696 = !DILocation(line: 74, column: 14, scope: !1685, inlinedAt: !1682)
!1697 = !DILocation(line: 75, column: 23, scope: !1685, inlinedAt: !1682)
!1698 = !DILocation(line: 75, column: 40, scope: !1685, inlinedAt: !1682)
!1699 = !DILocation(line: 75, column: 59, scope: !1685, inlinedAt: !1682)
!1700 = !DILocation(line: 75, column: 73, scope: !1685, inlinedAt: !1682)
!1701 = !DILocation(line: 75, column: 16, scope: !1685, inlinedAt: !1682)
!1702 = !DILocation(line: 75, column: 11, scope: !1685, inlinedAt: !1682)
!1703 = !DILocation(line: 75, column: 14, scope: !1685, inlinedAt: !1682)
!1704 = !DILocation(line: 76, column: 38, scope: !1685, inlinedAt: !1682)
!1705 = !DILocation(line: 76, column: 16, scope: !1685, inlinedAt: !1682)
!1706 = !DILocation(line: 76, column: 11, scope: !1685, inlinedAt: !1682)
!1707 = !DILocation(line: 76, column: 14, scope: !1685, inlinedAt: !1682)
!1708 = !DILocation(line: 78, column: 13, scope: !1685, inlinedAt: !1682)
!1709 = !DILocation(line: 79, column: 10, scope: !1685, inlinedAt: !1682)
!1710 = distinct !{!1710, !1683, !1711, !981}
!1711 = !DILocation(line: 80, column: 5, scope: !1675, inlinedAt: !1682)
!1712 = !DILocation(line: 104, column: 10, scope: !1651)
!1713 = !DILocation(line: 104, column: 16, scope: !1651)
!1714 = !DILocation(line: 104, column: 3, scope: !1651)
!1715 = !DILocation(line: 106, column: 32, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1651, file: !429, line: 105, column: 5)
!1717 = !DILocation(line: 106, column: 16, scope: !1716)
!1718 = !DILocation(line: 106, column: 11, scope: !1716)
!1719 = !DILocation(line: 106, column: 14, scope: !1716)
!1720 = !DILocation(line: 107, column: 12, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1716, file: !429, line: 107, column: 11)
!1722 = !DILocation(line: 107, column: 11, scope: !1716)
!1723 = !DILocation(line: 109, column: 23, scope: !1716)
!1724 = !DILocation(line: 109, column: 40, scope: !1716)
!1725 = !DILocation(line: 110, column: 27, scope: !1716)
!1726 = !DILocation(line: 111, column: 23, scope: !1716)
!1727 = !DILocation(line: 109, column: 16, scope: !1716)
!1728 = !DILocation(line: 109, column: 14, scope: !1716)
!1729 = !DILocation(line: 112, column: 12, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1716, file: !429, line: 112, column: 11)
!1731 = !DILocation(line: 112, column: 11, scope: !1716)
!1732 = !DILocation(line: 110, column: 47, scope: !1716)
!1733 = !DILocation(line: 109, column: 11, scope: !1716)
!1734 = !DILocation(line: 116, column: 19, scope: !1716)
!1735 = !DILocation(line: 116, column: 36, scope: !1716)
!1736 = !DILocation(line: 117, column: 23, scope: !1716)
!1737 = !DILocation(line: 118, column: 19, scope: !1716)
!1738 = !DILocation(line: 116, column: 12, scope: !1716)
!1739 = !DILocation(line: 114, column: 14, scope: !1716)
!1740 = !DILocation(line: 120, column: 12, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1716, file: !429, line: 120, column: 11)
!1742 = !DILocation(line: 120, column: 11, scope: !1716)
!1743 = !DILocation(line: 117, column: 43, scope: !1716)
!1744 = !DILocation(line: 122, column: 39, scope: !1716)
!1745 = !DILocation(line: 122, column: 46, scope: !1716)
!1746 = !DILocation(line: 122, column: 24, scope: !1716)
!1747 = !DILocation(line: 122, column: 16, scope: !1716)
!1748 = !DILocation(line: 114, column: 11, scope: !1716)
!1749 = !DILocation(line: 122, column: 14, scope: !1716)
!1750 = !DILocation(line: 123, column: 12, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1716, file: !429, line: 123, column: 11)
!1752 = !DILocation(line: 123, column: 11, scope: !1716)
!1753 = !DILocation(line: 122, column: 11, scope: !1716)
!1754 = !DILocation(line: 125, column: 11, scope: !1716)
!1755 = !DILocation(line: 127, column: 11, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1716, file: !429, line: 127, column: 11)
!1757 = !DILocation(line: 127, column: 11, scope: !1716)
!1758 = distinct !{!1758, !1714, !1759, !981}
!1759 = !DILocation(line: 129, column: 5, scope: !1651)
!1760 = !DILocation(line: 131, column: 7, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1651, file: !429, line: 131, column: 7)
!1762 = !DILocation(line: 131, column: 7, scope: !1651)
!1763 = !DILocation(line: 132, column: 10, scope: !1761)
!1764 = !DILocation(line: 132, column: 5, scope: !1761)
!1765 = !DILocation(line: 133, column: 1, scope: !1651)
!1766 = distinct !DISubprogram(name: "base64_encode_alloc", scope: !429, file: !429, line: 145, type: !1767, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !1769)
!1767 = !DISubroutineType(types: !1768)
!1768 = !{!1097, !136, !1097, !1087}
!1769 = !{!1770, !1771, !1772, !1773, !1774}
!1770 = !DILocalVariable(name: "in", arg: 1, scope: !1766, file: !429, line: 145, type: !136)
!1771 = !DILocalVariable(name: "inlen", arg: 2, scope: !1766, file: !429, line: 145, type: !1097)
!1772 = !DILocalVariable(name: "out", arg: 3, scope: !1766, file: !429, line: 145, type: !1087)
!1773 = !DILocalVariable(name: "in_over_3", scope: !1766, file: !429, line: 150, type: !1097)
!1774 = !DILocalVariable(name: "outlen", scope: !1766, file: !429, line: 150, type: !1097)
!1775 = !DILocation(line: 0, scope: !1766)
!1776 = !DILocation(line: 150, column: 27, scope: !1766)
!1777 = !DILocation(line: 150, column: 40, scope: !1766)
!1778 = !DILocation(line: 150, column: 44, scope: !1766)
!1779 = !DILocation(line: 150, column: 31, scope: !1766)
!1780 = !DILocation(line: 151, column: 7, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1766, file: !429, line: 151, column: 7)
!1782 = !DILocation(line: 151, column: 39, scope: !1781)
!1783 = !DILocation(line: 153, column: 12, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1781, file: !429, line: 152, column: 5)
!1785 = !DILocation(line: 154, column: 7, scope: !1784)
!1786 = !DILocation(line: 156, column: 9, scope: !1766)
!1787 = !DILocalVariable(name: "s", arg: 1, scope: !1788, file: !1789, line: 55, type: !1097)
!1788 = distinct !DISubprogram(name: "imalloc", scope: !1789, file: !1789, line: 55, type: !1790, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !1792)
!1789 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!1790 = !DISubroutineType(types: !1791)
!1791 = !{!131, !1097}
!1792 = !{!1787}
!1793 = !DILocation(line: 0, scope: !1788, inlinedAt: !1794)
!1794 = distinct !DILocation(line: 158, column: 10, scope: !1766)
!1795 = !DILocation(line: 57, column: 26, scope: !1788, inlinedAt: !1794)
!1796 = !DILocation(line: 158, column: 8, scope: !1766)
!1797 = !DILocation(line: 159, column: 8, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1766, file: !429, line: 159, column: 7)
!1799 = !DILocation(line: 159, column: 7, scope: !1766)
!1800 = !DILocation(line: 162, column: 3, scope: !1766)
!1801 = !DILocation(line: 164, column: 3, scope: !1766)
!1802 = !DILocation(line: 165, column: 1, scope: !1766)
!1803 = !DISubprogram(name: "malloc", scope: !1058, file: !1058, line: 540, type: !1804, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1804 = !DISubroutineType(types: !1805)
!1805 = !{!131, !133}
!1806 = distinct !DISubprogram(name: "base64_decode_ctx", scope: !429, file: !429, line: 466, type: !1807, scopeLine: 469, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !1809)
!1807 = !DISubroutineType(types: !1808)
!1808 = !{!196, !1641, !924, !1097, !1336, !1337}
!1809 = !{!1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1821, !1825}
!1810 = !DILocalVariable(name: "ctx", arg: 1, scope: !1806, file: !429, line: 466, type: !1641)
!1811 = !DILocalVariable(name: "in", arg: 2, scope: !1806, file: !429, line: 467, type: !924)
!1812 = !DILocalVariable(name: "inlen", arg: 3, scope: !1806, file: !429, line: 467, type: !1097)
!1813 = !DILocalVariable(name: "out", arg: 4, scope: !1806, file: !429, line: 468, type: !1336)
!1814 = !DILocalVariable(name: "outlen", arg: 5, scope: !1806, file: !429, line: 468, type: !1337)
!1815 = !DILocalVariable(name: "ignore_newlines", scope: !1806, file: !429, line: 470, type: !196)
!1816 = !DILocalVariable(name: "flush_ctx", scope: !1806, file: !429, line: 471, type: !196)
!1817 = !DILocalVariable(name: "ctx_i", scope: !1806, file: !429, line: 472, type: !78)
!1818 = !DILocalVariable(name: "outleft", scope: !1806, file: !429, line: 480, type: !1097)
!1819 = !DILocalVariable(name: "outleft_save", scope: !1820, file: !429, line: 484, type: !1097)
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
!1852 = !DILocation(line: 495, column: 18, scope: !1849)
!1853 = !DILocation(line: 496, column: 21, scope: !1849)
!1854 = !DILocation(line: 491, column: 30, scope: !1849)
!1855 = distinct !{!1855, !1856, !1857}
!1856 = !DILocation(line: 487, column: 11, scope: !1850)
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
!1878 = !DILocalVariable(name: "ctx", arg: 1, scope: !1879, file: !429, line: 318, type: !1641)
!1879 = distinct !DISubprogram(name: "get_4", scope: !429, file: !429, line: 318, type: !1880, scopeLine: 321, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !1883)
!1880 = !DISubroutineType(types: !1881)
!1881 = !{!130, !1641, !1882, !924, !1337}
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!1883 = !{!1878, !1884, !1885, !1886, !1887, !1890, !1892}
!1884 = !DILocalVariable(name: "in", arg: 2, scope: !1879, file: !429, line: 319, type: !1882)
!1885 = !DILocalVariable(name: "in_end", arg: 3, scope: !1879, file: !429, line: 319, type: !924)
!1886 = !DILocalVariable(name: "n_non_newline", arg: 4, scope: !1879, file: !429, line: 320, type: !1337)
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
!1933 = !DILocation(line: 352, column: 27, scope: !1891, inlinedAt: !1895)
!1934 = !DILocation(line: 352, column: 22, scope: !1891, inlinedAt: !1895)
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
!1949 = !{!196, !924, !1097, !1335, !1337}
!1950 = !{!1951, !1952, !1953, !1954, !1955}
!1951 = !DILocalVariable(name: "in", arg: 1, scope: !1947, file: !429, line: 372, type: !924)
!1952 = !DILocalVariable(name: "inlen", arg: 2, scope: !1947, file: !429, line: 372, type: !1097)
!1953 = !DILocalVariable(name: "outp", arg: 3, scope: !1947, file: !429, line: 373, type: !1335)
!1954 = !DILocalVariable(name: "outleft", arg: 4, scope: !1947, file: !429, line: 373, type: !1337)
!1955 = !DILocalVariable(name: "out", scope: !1947, file: !429, line: 381, type: !130)
!1956 = !DILocation(line: 0, scope: !1947)
!1957 = !DILocation(line: 375, column: 13, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1947, file: !429, line: 375, column: 7)
!1959 = !DILocation(line: 375, column: 7, scope: !1947)
!1960 = !DILocation(line: 378, column: 18, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1947, file: !429, line: 378, column: 7)
!1962 = !DILocation(line: 0, scope: !1626, inlinedAt: !1963)
!1963 = distinct !DILocation(line: 378, column: 8, scope: !1961)
!1964 = !DILocation(line: 0, scope: !1617, inlinedAt: !1965)
!1965 = distinct !DILocation(line: 64, column: 10, scope: !1626, inlinedAt: !1963)
!1966 = !DILocation(line: 58, column: 10, scope: !1617, inlinedAt: !1965)
!1967 = !DILocation(line: 58, column: 44, scope: !1617, inlinedAt: !1965)
!1968 = !DILocation(line: 58, column: 41, scope: !1617, inlinedAt: !1965)
!1969 = !DILocation(line: 378, column: 25, scope: !1961)
!1970 = !DILocation(line: 378, column: 39, scope: !1961)
!1971 = !DILocation(line: 0, scope: !1626, inlinedAt: !1972)
!1972 = distinct !DILocation(line: 378, column: 29, scope: !1961)
!1973 = !DILocation(line: 0, scope: !1617, inlinedAt: !1974)
!1974 = distinct !DILocation(line: 64, column: 10, scope: !1626, inlinedAt: !1972)
!1975 = !DILocation(line: 58, column: 10, scope: !1617, inlinedAt: !1974)
!1976 = !DILocation(line: 58, column: 44, scope: !1617, inlinedAt: !1974)
!1977 = !DILocation(line: 58, column: 41, scope: !1617, inlinedAt: !1974)
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
!2009 = !DILocation(line: 0, scope: !1626, inlinedAt: !2010)
!2010 = distinct !DILocation(line: 407, column: 12, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !1992, file: !429, line: 407, column: 11)
!2012 = !DILocation(line: 0, scope: !1617, inlinedAt: !2013)
!2013 = distinct !DILocation(line: 64, column: 10, scope: !1626, inlinedAt: !2010)
!2014 = !DILocation(line: 58, column: 10, scope: !1617, inlinedAt: !2013)
!2015 = !DILocation(line: 58, column: 44, scope: !1617, inlinedAt: !2013)
!2016 = !DILocation(line: 58, column: 41, scope: !1617, inlinedAt: !2013)
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
!2041 = !DILocation(line: 0, scope: !1626, inlinedAt: !2042)
!2042 = distinct !DILocation(line: 431, column: 16, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2028, file: !429, line: 431, column: 15)
!2044 = !DILocation(line: 0, scope: !1617, inlinedAt: !2045)
!2045 = distinct !DILocation(line: 64, column: 10, scope: !1626, inlinedAt: !2042)
!2046 = !DILocation(line: 58, column: 10, scope: !1617, inlinedAt: !2045)
!2047 = !DILocation(line: 58, column: 44, scope: !1617, inlinedAt: !2045)
!2048 = !DILocation(line: 58, column: 41, scope: !1617, inlinedAt: !2045)
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
!2060 = !DISubprogram(name: "memchr", scope: !1054, file: !1054, line: 107, type: !2061, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2061 = !DISubroutineType(types: !2062)
!2062 = !{!131, !1082, !87, !133}
!2063 = distinct !DISubprogram(name: "base64_decode_alloc_ctx", scope: !429, file: !429, line: 558, type: !2064, scopeLine: 561, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !2066)
!2064 = !DISubroutineType(types: !2065)
!2065 = !{!196, !1641, !136, !1097, !1087, !1337}
!2066 = !{!2067, !2068, !2069, !2070, !2071, !2072}
!2067 = !DILocalVariable(name: "ctx", arg: 1, scope: !2063, file: !429, line: 558, type: !1641)
!2068 = !DILocalVariable(name: "in", arg: 2, scope: !2063, file: !429, line: 559, type: !136)
!2069 = !DILocalVariable(name: "inlen", arg: 3, scope: !2063, file: !429, line: 559, type: !1097)
!2070 = !DILocalVariable(name: "out", arg: 4, scope: !2063, file: !429, line: 559, type: !1087)
!2071 = !DILocalVariable(name: "outlen", arg: 5, scope: !2063, file: !429, line: 560, type: !1337)
!2072 = !DILocalVariable(name: "needlen", scope: !2063, file: !429, line: 567, type: !1097)
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
!2102 = !DISubprogram(name: "free", scope: !947, file: !947, line: 752, type: !2103, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2103 = !DISubroutineType(types: !2104)
!2104 = !{null, !131}
!2105 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !444, file: !444, line: 50, type: !884, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !2106)
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
!2119 = !{!"_Bool", !865, i64 0}
!2120 = !DILocation(line: 90, column: 1, scope: !2111)
!2121 = distinct !DISubprogram(name: "close_stdout", scope: !444, file: !444, line: 116, type: !505, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !2122)
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
!2154 = !DISubprogram(name: "_exit", scope: !2155, file: !2155, line: 624, type: !853, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
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
!2173 = !DILocation(line: 282, column: 1, scope: !2156)
!2174 = distinct !DISubprogram(name: "flush_stdout", scope: !459, file: !459, line: 163, type: !505, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !458, retainedNodes: !2175)
!2175 = !{!2176}
!2176 = !DILocalVariable(name: "stdout_fd", scope: !2174, file: !459, line: 166, type: !87)
!2177 = !DILocation(line: 0, scope: !2174)
!2178 = !DILocalVariable(name: "fd", arg: 1, scope: !2179, file: !459, line: 145, type: !87)
!2179 = distinct !DISubprogram(name: "is_open", scope: !459, file: !459, line: 145, type: !1262, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !458, retainedNodes: !2180)
!2180 = !{!2178}
!2181 = !DILocation(line: 0, scope: !2179, inlinedAt: !2182)
!2182 = distinct !DILocation(line: 182, column: 25, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2174, file: !459, line: 182, column: 7)
!2184 = !DILocation(line: 157, column: 15, scope: !2179, inlinedAt: !2182)
!2185 = !DILocation(line: 157, column: 12, scope: !2179, inlinedAt: !2182)
!2186 = !DILocation(line: 182, column: 7, scope: !2174)
!2187 = !DILocation(line: 184, column: 5, scope: !2183)
!2188 = !DILocation(line: 185, column: 1, scope: !2174)
!2189 = distinct !DISubprogram(name: "error_tail", scope: !459, file: !459, line: 219, type: !2157, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !458, retainedNodes: !2190)
!2190 = !{!2191, !2192, !2193, !2194}
!2191 = !DILocalVariable(name: "status", arg: 1, scope: !2189, file: !459, line: 219, type: !87)
!2192 = !DILocalVariable(name: "errnum", arg: 2, scope: !2189, file: !459, line: 219, type: !87)
!2193 = !DILocalVariable(name: "message", arg: 3, scope: !2189, file: !459, line: 219, type: !136)
!2194 = !DILocalVariable(name: "args", arg: 4, scope: !2189, file: !459, line: 219, type: !469)
!2195 = distinct !DIAssignID()
!2196 = !DILocation(line: 0, scope: !2189)
!2197 = !DILocation(line: 229, column: 13, scope: !2189)
!2198 = !DILocalVariable(name: "__stream", arg: 1, scope: !2199, file: !920, line: 132, type: !2202)
!2199 = distinct !DISubprogram(name: "vfprintf", scope: !920, file: !920, line: 132, type: !2200, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !458, retainedNodes: !2237)
!2200 = !DISubroutineType(types: !2201)
!2201 = !{!87, !2202, !924, !469}
!2202 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2203)
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2204 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !211, line: 7, baseType: !2205)
!2205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !213, line: 49, size: 1728, elements: !2206)
!2206 = !{!2207, !2208, !2209, !2210, !2211, !2212, !2213, !2214, !2215, !2216, !2217, !2218, !2219, !2220, !2222, !2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2231, !2232, !2233, !2234, !2235, !2236}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2205, file: !213, line: 51, baseType: !87, size: 32)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2205, file: !213, line: 54, baseType: !130, size: 64, offset: 64)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2205, file: !213, line: 55, baseType: !130, size: 64, offset: 128)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2205, file: !213, line: 56, baseType: !130, size: 64, offset: 192)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2205, file: !213, line: 57, baseType: !130, size: 64, offset: 256)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2205, file: !213, line: 58, baseType: !130, size: 64, offset: 320)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2205, file: !213, line: 59, baseType: !130, size: 64, offset: 384)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2205, file: !213, line: 60, baseType: !130, size: 64, offset: 448)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2205, file: !213, line: 61, baseType: !130, size: 64, offset: 512)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2205, file: !213, line: 64, baseType: !130, size: 64, offset: 576)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2205, file: !213, line: 65, baseType: !130, size: 64, offset: 640)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2205, file: !213, line: 66, baseType: !130, size: 64, offset: 704)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2205, file: !213, line: 68, baseType: !228, size: 64, offset: 768)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2205, file: !213, line: 70, baseType: !2221, size: 64, offset: 832)
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2205, file: !213, line: 72, baseType: !87, size: 32, offset: 896)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2205, file: !213, line: 73, baseType: !87, size: 32, offset: 928)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2205, file: !213, line: 74, baseType: !235, size: 64, offset: 960)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2205, file: !213, line: 77, baseType: !132, size: 16, offset: 1024)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2205, file: !213, line: 78, baseType: !240, size: 8, offset: 1040)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2205, file: !213, line: 79, baseType: !54, size: 8, offset: 1048)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2205, file: !213, line: 81, baseType: !243, size: 64, offset: 1088)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2205, file: !213, line: 89, baseType: !246, size: 64, offset: 1152)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2205, file: !213, line: 91, baseType: !248, size: 64, offset: 1216)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2205, file: !213, line: 92, baseType: !251, size: 64, offset: 1280)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2205, file: !213, line: 93, baseType: !2221, size: 64, offset: 1344)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2205, file: !213, line: 94, baseType: !131, size: 64, offset: 1408)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2205, file: !213, line: 95, baseType: !133, size: 64, offset: 1472)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2205, file: !213, line: 96, baseType: !87, size: 32, offset: 1536)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2205, file: !213, line: 98, baseType: !258, size: 160, offset: 1568)
!2237 = !{!2198, !2238, !2239}
!2238 = !DILocalVariable(name: "__fmt", arg: 2, scope: !2199, file: !920, line: 133, type: !924)
!2239 = !DILocalVariable(name: "__ap", arg: 3, scope: !2199, file: !920, line: 133, type: !469)
!2240 = !DILocation(line: 0, scope: !2199, inlinedAt: !2241)
!2241 = distinct !DILocation(line: 229, column: 3, scope: !2189)
!2242 = !DILocation(line: 135, column: 10, scope: !2199, inlinedAt: !2241)
!2243 = !DILocation(line: 232, column: 3, scope: !2189)
!2244 = !DILocation(line: 233, column: 7, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2189, file: !459, line: 233, column: 7)
!2246 = !DILocation(line: 233, column: 7, scope: !2189)
!2247 = !DILocalVariable(name: "errbuf", scope: !2248, file: !459, line: 193, type: !2252)
!2248 = distinct !DISubprogram(name: "print_errno_message", scope: !459, file: !459, line: 188, type: !853, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !458, retainedNodes: !2249)
!2249 = !{!2250, !2251, !2247}
!2250 = !DILocalVariable(name: "errnum", arg: 1, scope: !2248, file: !459, line: 188, type: !87)
!2251 = !DILocalVariable(name: "s", scope: !2248, file: !459, line: 190, type: !136)
!2252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !2253)
!2253 = !{!2254}
!2254 = !DISubrange(count: 1024)
!2255 = !DILocation(line: 0, scope: !2248, inlinedAt: !2256)
!2256 = distinct !DILocation(line: 234, column: 5, scope: !2245)
!2257 = !DILocation(line: 193, column: 3, scope: !2248, inlinedAt: !2256)
!2258 = !DILocation(line: 195, column: 7, scope: !2248, inlinedAt: !2256)
!2259 = !DILocation(line: 207, column: 9, scope: !2260, inlinedAt: !2256)
!2260 = distinct !DILexicalBlock(scope: !2248, file: !459, line: 207, column: 7)
!2261 = !DILocation(line: 207, column: 7, scope: !2248, inlinedAt: !2256)
!2262 = !DILocation(line: 208, column: 9, scope: !2260, inlinedAt: !2256)
!2263 = !DILocation(line: 208, column: 5, scope: !2260, inlinedAt: !2256)
!2264 = !DILocation(line: 214, column: 3, scope: !2248, inlinedAt: !2256)
!2265 = !DILocation(line: 216, column: 1, scope: !2248, inlinedAt: !2256)
!2266 = !DILocation(line: 234, column: 5, scope: !2245)
!2267 = !DILocation(line: 238, column: 3, scope: !2189)
!2268 = !DILocalVariable(name: "__c", arg: 1, scope: !2269, file: !1293, line: 101, type: !87)
!2269 = distinct !DISubprogram(name: "putc_unlocked", scope: !1293, file: !1293, line: 101, type: !2270, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !458, retainedNodes: !2272)
!2270 = !DISubroutineType(types: !2271)
!2271 = !{!87, !87, !2203}
!2272 = !{!2268, !2273}
!2273 = !DILocalVariable(name: "__stream", arg: 2, scope: !2269, file: !1293, line: 101, type: !2203)
!2274 = !DILocation(line: 0, scope: !2269, inlinedAt: !2275)
!2275 = distinct !DILocation(line: 238, column: 3, scope: !2189)
!2276 = !DILocation(line: 103, column: 10, scope: !2269, inlinedAt: !2275)
!2277 = !DILocation(line: 240, column: 3, scope: !2189)
!2278 = !DILocation(line: 241, column: 7, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2189, file: !459, line: 241, column: 7)
!2280 = !DILocation(line: 241, column: 7, scope: !2189)
!2281 = !DILocation(line: 242, column: 5, scope: !2279)
!2282 = !DILocation(line: 243, column: 1, scope: !2189)
!2283 = !DISubprogram(name: "__vfprintf_chk", scope: !920, file: !920, line: 96, type: !2284, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2284 = !DISubroutineType(types: !2285)
!2285 = !{!87, !2202, !87, !924, !469}
!2286 = !DISubprogram(name: "strerror_r", scope: !1054, file: !1054, line: 444, type: !2287, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2287 = !DISubroutineType(types: !2288)
!2288 = !{!130, !87, !130, !133}
!2289 = !DISubprogram(name: "fcntl", scope: !2290, file: !2290, line: 149, type: !2291, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2290 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!2291 = !DISubroutineType(types: !2292)
!2292 = !{!87, !87, !87, null}
!2293 = distinct !DISubprogram(name: "error", scope: !459, file: !459, line: 285, type: !2294, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !458, retainedNodes: !2296)
!2294 = !DISubroutineType(types: !2295)
!2295 = !{null, !87, !87, !136, null}
!2296 = !{!2297, !2298, !2299, !2300}
!2297 = !DILocalVariable(name: "status", arg: 1, scope: !2293, file: !459, line: 285, type: !87)
!2298 = !DILocalVariable(name: "errnum", arg: 2, scope: !2293, file: !459, line: 285, type: !87)
!2299 = !DILocalVariable(name: "message", arg: 3, scope: !2293, file: !459, line: 285, type: !136)
!2300 = !DILocalVariable(name: "ap", scope: !2293, file: !459, line: 287, type: !2301)
!2301 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !929, line: 52, baseType: !2302)
!2302 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2303, line: 12, baseType: !2304)
!2303 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!2304 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !459, baseType: !2305)
!2305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !470, size: 192, elements: !55)
!2306 = distinct !DIAssignID()
!2307 = !DILocation(line: 0, scope: !2293)
!2308 = !DILocation(line: 287, column: 3, scope: !2293)
!2309 = !DILocation(line: 288, column: 3, scope: !2293)
!2310 = !DILocation(line: 289, column: 3, scope: !2293)
!2311 = !DILocation(line: 290, column: 3, scope: !2293)
!2312 = !DILocation(line: 291, column: 1, scope: !2293)
!2313 = !DILocation(line: 0, scope: !466)
!2314 = !DILocation(line: 302, column: 7, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !466, file: !459, line: 302, column: 7)
!2316 = !DILocation(line: 302, column: 7, scope: !466)
!2317 = !DILocation(line: 307, column: 11, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2319, file: !459, line: 307, column: 11)
!2319 = distinct !DILexicalBlock(scope: !2315, file: !459, line: 303, column: 5)
!2320 = !DILocation(line: 307, column: 27, scope: !2318)
!2321 = !DILocation(line: 308, column: 11, scope: !2318)
!2322 = !DILocation(line: 308, column: 28, scope: !2318)
!2323 = !DILocation(line: 308, column: 25, scope: !2318)
!2324 = !DILocation(line: 309, column: 15, scope: !2318)
!2325 = !DILocation(line: 309, column: 33, scope: !2318)
!2326 = !DILocation(line: 310, column: 19, scope: !2318)
!2327 = !DILocation(line: 311, column: 22, scope: !2318)
!2328 = !DILocation(line: 311, column: 56, scope: !2318)
!2329 = !DILocation(line: 307, column: 11, scope: !2319)
!2330 = !DILocation(line: 316, column: 21, scope: !2319)
!2331 = !DILocation(line: 317, column: 23, scope: !2319)
!2332 = !DILocation(line: 318, column: 5, scope: !2319)
!2333 = !DILocation(line: 327, column: 3, scope: !466)
!2334 = !DILocation(line: 331, column: 7, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !466, file: !459, line: 331, column: 7)
!2336 = !DILocation(line: 331, column: 7, scope: !466)
!2337 = !DILocation(line: 332, column: 5, scope: !2335)
!2338 = !DILocation(line: 338, column: 7, scope: !2339)
!2339 = distinct !DILexicalBlock(scope: !2335, file: !459, line: 334, column: 5)
!2340 = !DILocation(line: 346, column: 3, scope: !466)
!2341 = !DILocation(line: 350, column: 3, scope: !466)
!2342 = !DILocation(line: 356, column: 1, scope: !466)
!2343 = distinct !DISubprogram(name: "error_at_line", scope: !459, file: !459, line: 359, type: !2344, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !458, retainedNodes: !2346)
!2344 = !DISubroutineType(types: !2345)
!2345 = !{null, !87, !87, !136, !78, !136, null}
!2346 = !{!2347, !2348, !2349, !2350, !2351, !2352}
!2347 = !DILocalVariable(name: "status", arg: 1, scope: !2343, file: !459, line: 359, type: !87)
!2348 = !DILocalVariable(name: "errnum", arg: 2, scope: !2343, file: !459, line: 359, type: !87)
!2349 = !DILocalVariable(name: "file_name", arg: 3, scope: !2343, file: !459, line: 359, type: !136)
!2350 = !DILocalVariable(name: "line_number", arg: 4, scope: !2343, file: !459, line: 360, type: !78)
!2351 = !DILocalVariable(name: "message", arg: 5, scope: !2343, file: !459, line: 360, type: !136)
!2352 = !DILocalVariable(name: "ap", scope: !2343, file: !459, line: 362, type: !2301)
!2353 = distinct !DIAssignID()
!2354 = !DILocation(line: 0, scope: !2343)
!2355 = !DILocation(line: 362, column: 3, scope: !2343)
!2356 = !DILocation(line: 363, column: 3, scope: !2343)
!2357 = !DILocation(line: 364, column: 3, scope: !2343)
!2358 = !DILocation(line: 366, column: 3, scope: !2343)
!2359 = !DILocation(line: 367, column: 1, scope: !2343)
!2360 = distinct !DISubprogram(name: "fdadvise", scope: !763, file: !763, line: 25, type: !2361, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !762, retainedNodes: !2365)
!2361 = !DISubroutineType(types: !2362)
!2362 = !{null, !87, !2363, !2363, !2364}
!2363 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !929, line: 63, baseType: !235)
!2364 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !766, line: 51, baseType: !765)
!2365 = !{!2366, !2367, !2368, !2369}
!2366 = !DILocalVariable(name: "fd", arg: 1, scope: !2360, file: !763, line: 25, type: !87)
!2367 = !DILocalVariable(name: "offset", arg: 2, scope: !2360, file: !763, line: 25, type: !2363)
!2368 = !DILocalVariable(name: "len", arg: 3, scope: !2360, file: !763, line: 25, type: !2363)
!2369 = !DILocalVariable(name: "advice", arg: 4, scope: !2360, file: !763, line: 25, type: !2364)
!2370 = !DILocation(line: 0, scope: !2360)
!2371 = !DILocation(line: 28, column: 3, scope: !2360)
!2372 = !DILocation(line: 30, column: 1, scope: !2360)
!2373 = !DISubprogram(name: "posix_fadvise", scope: !2290, file: !2290, line: 273, type: !2374, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2374 = !DISubroutineType(types: !2375)
!2375 = !{!87, !87, !2363, !2363, !87}
!2376 = distinct !DISubprogram(name: "fadvise", scope: !763, file: !763, line: 33, type: !2377, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !762, retainedNodes: !2413)
!2377 = !DISubroutineType(types: !2378)
!2378 = !{null, !2379, !2364}
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2380 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !211, line: 7, baseType: !2381)
!2381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !213, line: 49, size: 1728, elements: !2382)
!2382 = !{!2383, !2384, !2385, !2386, !2387, !2388, !2389, !2390, !2391, !2392, !2393, !2394, !2395, !2396, !2398, !2399, !2400, !2401, !2402, !2403, !2404, !2405, !2406, !2407, !2408, !2409, !2410, !2411, !2412}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2381, file: !213, line: 51, baseType: !87, size: 32)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2381, file: !213, line: 54, baseType: !130, size: 64, offset: 64)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2381, file: !213, line: 55, baseType: !130, size: 64, offset: 128)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2381, file: !213, line: 56, baseType: !130, size: 64, offset: 192)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2381, file: !213, line: 57, baseType: !130, size: 64, offset: 256)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2381, file: !213, line: 58, baseType: !130, size: 64, offset: 320)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2381, file: !213, line: 59, baseType: !130, size: 64, offset: 384)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2381, file: !213, line: 60, baseType: !130, size: 64, offset: 448)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2381, file: !213, line: 61, baseType: !130, size: 64, offset: 512)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2381, file: !213, line: 64, baseType: !130, size: 64, offset: 576)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2381, file: !213, line: 65, baseType: !130, size: 64, offset: 640)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2381, file: !213, line: 66, baseType: !130, size: 64, offset: 704)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2381, file: !213, line: 68, baseType: !228, size: 64, offset: 768)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2381, file: !213, line: 70, baseType: !2397, size: 64, offset: 832)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2381, file: !213, line: 72, baseType: !87, size: 32, offset: 896)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2381, file: !213, line: 73, baseType: !87, size: 32, offset: 928)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2381, file: !213, line: 74, baseType: !235, size: 64, offset: 960)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2381, file: !213, line: 77, baseType: !132, size: 16, offset: 1024)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2381, file: !213, line: 78, baseType: !240, size: 8, offset: 1040)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2381, file: !213, line: 79, baseType: !54, size: 8, offset: 1048)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2381, file: !213, line: 81, baseType: !243, size: 64, offset: 1088)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2381, file: !213, line: 89, baseType: !246, size: 64, offset: 1152)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2381, file: !213, line: 91, baseType: !248, size: 64, offset: 1216)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2381, file: !213, line: 92, baseType: !251, size: 64, offset: 1280)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2381, file: !213, line: 93, baseType: !2397, size: 64, offset: 1344)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2381, file: !213, line: 94, baseType: !131, size: 64, offset: 1408)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2381, file: !213, line: 95, baseType: !133, size: 64, offset: 1472)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2381, file: !213, line: 96, baseType: !87, size: 32, offset: 1536)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2381, file: !213, line: 98, baseType: !258, size: 160, offset: 1568)
!2413 = !{!2414, !2415}
!2414 = !DILocalVariable(name: "fp", arg: 1, scope: !2376, file: !763, line: 33, type: !2379)
!2415 = !DILocalVariable(name: "advice", arg: 2, scope: !2376, file: !763, line: 33, type: !2364)
!2416 = !DILocation(line: 0, scope: !2376)
!2417 = !DILocation(line: 35, column: 7, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2376, file: !763, line: 35, column: 7)
!2419 = !DILocation(line: 35, column: 7, scope: !2376)
!2420 = !DILocation(line: 36, column: 15, scope: !2418)
!2421 = !DILocation(line: 0, scope: !2360, inlinedAt: !2422)
!2422 = distinct !DILocation(line: 36, column: 5, scope: !2418)
!2423 = !DILocation(line: 28, column: 3, scope: !2360, inlinedAt: !2422)
!2424 = !DILocation(line: 36, column: 5, scope: !2418)
!2425 = !DILocation(line: 37, column: 1, scope: !2376)
!2426 = !DISubprogram(name: "fileno", scope: !929, file: !929, line: 809, type: !2427, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2427 = !DISubroutineType(types: !2428)
!2428 = !{!87, !2379}
!2429 = distinct !DISubprogram(name: "rpl_fclose", scope: !768, file: !768, line: 58, type: !2430, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !2466)
!2430 = !DISubroutineType(types: !2431)
!2431 = !{!87, !2432}
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!2433 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !211, line: 7, baseType: !2434)
!2434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !213, line: 49, size: 1728, elements: !2435)
!2435 = !{!2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2444, !2445, !2446, !2447, !2448, !2449, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2459, !2460, !2461, !2462, !2463, !2464, !2465}
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2434, file: !213, line: 51, baseType: !87, size: 32)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2434, file: !213, line: 54, baseType: !130, size: 64, offset: 64)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2434, file: !213, line: 55, baseType: !130, size: 64, offset: 128)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2434, file: !213, line: 56, baseType: !130, size: 64, offset: 192)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2434, file: !213, line: 57, baseType: !130, size: 64, offset: 256)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2434, file: !213, line: 58, baseType: !130, size: 64, offset: 320)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2434, file: !213, line: 59, baseType: !130, size: 64, offset: 384)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2434, file: !213, line: 60, baseType: !130, size: 64, offset: 448)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2434, file: !213, line: 61, baseType: !130, size: 64, offset: 512)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2434, file: !213, line: 64, baseType: !130, size: 64, offset: 576)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2434, file: !213, line: 65, baseType: !130, size: 64, offset: 640)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2434, file: !213, line: 66, baseType: !130, size: 64, offset: 704)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2434, file: !213, line: 68, baseType: !228, size: 64, offset: 768)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2434, file: !213, line: 70, baseType: !2450, size: 64, offset: 832)
!2450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2434, size: 64)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2434, file: !213, line: 72, baseType: !87, size: 32, offset: 896)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2434, file: !213, line: 73, baseType: !87, size: 32, offset: 928)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2434, file: !213, line: 74, baseType: !235, size: 64, offset: 960)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2434, file: !213, line: 77, baseType: !132, size: 16, offset: 1024)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2434, file: !213, line: 78, baseType: !240, size: 8, offset: 1040)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2434, file: !213, line: 79, baseType: !54, size: 8, offset: 1048)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2434, file: !213, line: 81, baseType: !243, size: 64, offset: 1088)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2434, file: !213, line: 89, baseType: !246, size: 64, offset: 1152)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2434, file: !213, line: 91, baseType: !248, size: 64, offset: 1216)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2434, file: !213, line: 92, baseType: !251, size: 64, offset: 1280)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2434, file: !213, line: 93, baseType: !2450, size: 64, offset: 1344)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2434, file: !213, line: 94, baseType: !131, size: 64, offset: 1408)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2434, file: !213, line: 95, baseType: !133, size: 64, offset: 1472)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2434, file: !213, line: 96, baseType: !87, size: 32, offset: 1536)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2434, file: !213, line: 98, baseType: !258, size: 160, offset: 1568)
!2466 = !{!2467, !2468, !2469, !2470}
!2467 = !DILocalVariable(name: "fp", arg: 1, scope: !2429, file: !768, line: 58, type: !2432)
!2468 = !DILocalVariable(name: "saved_errno", scope: !2429, file: !768, line: 60, type: !87)
!2469 = !DILocalVariable(name: "fd", scope: !2429, file: !768, line: 63, type: !87)
!2470 = !DILocalVariable(name: "result", scope: !2429, file: !768, line: 74, type: !87)
!2471 = !DILocation(line: 0, scope: !2429)
!2472 = !DILocation(line: 63, column: 12, scope: !2429)
!2473 = !DILocation(line: 64, column: 10, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2429, file: !768, line: 64, column: 7)
!2475 = !DILocation(line: 64, column: 7, scope: !2429)
!2476 = !DILocation(line: 65, column: 12, scope: !2474)
!2477 = !DILocation(line: 65, column: 5, scope: !2474)
!2478 = !DILocation(line: 70, column: 9, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !2429, file: !768, line: 70, column: 7)
!2480 = !DILocation(line: 70, column: 23, scope: !2479)
!2481 = !DILocation(line: 70, column: 33, scope: !2479)
!2482 = !DILocation(line: 70, column: 26, scope: !2479)
!2483 = !DILocation(line: 70, column: 59, scope: !2479)
!2484 = !DILocation(line: 71, column: 7, scope: !2479)
!2485 = !DILocation(line: 71, column: 10, scope: !2479)
!2486 = !DILocation(line: 70, column: 7, scope: !2429)
!2487 = !DILocation(line: 100, column: 12, scope: !2429)
!2488 = !DILocation(line: 105, column: 7, scope: !2429)
!2489 = !DILocation(line: 72, column: 19, scope: !2479)
!2490 = !DILocation(line: 105, column: 19, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !2429, file: !768, line: 105, column: 7)
!2492 = !DILocation(line: 107, column: 13, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2491, file: !768, line: 106, column: 5)
!2494 = !DILocation(line: 109, column: 5, scope: !2493)
!2495 = !DILocation(line: 112, column: 1, scope: !2429)
!2496 = !DISubprogram(name: "fclose", scope: !929, file: !929, line: 178, type: !2430, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2497 = !DISubprogram(name: "__freading", scope: !2498, file: !2498, line: 51, type: !2430, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2498 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!2499 = !DISubprogram(name: "lseek", scope: !2155, file: !2155, line: 339, type: !2500, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2500 = !DISubroutineType(types: !2501)
!2501 = !{!235, !87, !235, !87}
!2502 = distinct !DISubprogram(name: "rpl_fflush", scope: !770, file: !770, line: 130, type: !2503, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !769, retainedNodes: !2539)
!2503 = !DISubroutineType(types: !2504)
!2504 = !{!87, !2505}
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!2506 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !211, line: 7, baseType: !2507)
!2507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !213, line: 49, size: 1728, elements: !2508)
!2508 = !{!2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538}
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2507, file: !213, line: 51, baseType: !87, size: 32)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2507, file: !213, line: 54, baseType: !130, size: 64, offset: 64)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2507, file: !213, line: 55, baseType: !130, size: 64, offset: 128)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2507, file: !213, line: 56, baseType: !130, size: 64, offset: 192)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2507, file: !213, line: 57, baseType: !130, size: 64, offset: 256)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2507, file: !213, line: 58, baseType: !130, size: 64, offset: 320)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2507, file: !213, line: 59, baseType: !130, size: 64, offset: 384)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2507, file: !213, line: 60, baseType: !130, size: 64, offset: 448)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2507, file: !213, line: 61, baseType: !130, size: 64, offset: 512)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2507, file: !213, line: 64, baseType: !130, size: 64, offset: 576)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2507, file: !213, line: 65, baseType: !130, size: 64, offset: 640)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2507, file: !213, line: 66, baseType: !130, size: 64, offset: 704)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2507, file: !213, line: 68, baseType: !228, size: 64, offset: 768)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2507, file: !213, line: 70, baseType: !2523, size: 64, offset: 832)
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2507, file: !213, line: 72, baseType: !87, size: 32, offset: 896)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2507, file: !213, line: 73, baseType: !87, size: 32, offset: 928)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2507, file: !213, line: 74, baseType: !235, size: 64, offset: 960)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2507, file: !213, line: 77, baseType: !132, size: 16, offset: 1024)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2507, file: !213, line: 78, baseType: !240, size: 8, offset: 1040)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2507, file: !213, line: 79, baseType: !54, size: 8, offset: 1048)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2507, file: !213, line: 81, baseType: !243, size: 64, offset: 1088)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2507, file: !213, line: 89, baseType: !246, size: 64, offset: 1152)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2507, file: !213, line: 91, baseType: !248, size: 64, offset: 1216)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2507, file: !213, line: 92, baseType: !251, size: 64, offset: 1280)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2507, file: !213, line: 93, baseType: !2523, size: 64, offset: 1344)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2507, file: !213, line: 94, baseType: !131, size: 64, offset: 1408)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2507, file: !213, line: 95, baseType: !133, size: 64, offset: 1472)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2507, file: !213, line: 96, baseType: !87, size: 32, offset: 1536)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2507, file: !213, line: 98, baseType: !258, size: 160, offset: 1568)
!2539 = !{!2540}
!2540 = !DILocalVariable(name: "stream", arg: 1, scope: !2502, file: !770, line: 130, type: !2505)
!2541 = !DILocation(line: 0, scope: !2502)
!2542 = !DILocation(line: 151, column: 14, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2502, file: !770, line: 151, column: 7)
!2544 = !DILocation(line: 151, column: 22, scope: !2543)
!2545 = !DILocation(line: 151, column: 27, scope: !2543)
!2546 = !DILocation(line: 151, column: 7, scope: !2502)
!2547 = !DILocation(line: 152, column: 12, scope: !2543)
!2548 = !DILocation(line: 152, column: 5, scope: !2543)
!2549 = !DILocalVariable(name: "fp", arg: 1, scope: !2550, file: !770, line: 42, type: !2505)
!2550 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !770, file: !770, line: 42, type: !2551, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !769, retainedNodes: !2553)
!2551 = !DISubroutineType(types: !2552)
!2552 = !{null, !2505}
!2553 = !{!2549}
!2554 = !DILocation(line: 0, scope: !2550, inlinedAt: !2555)
!2555 = distinct !DILocation(line: 157, column: 3, scope: !2502)
!2556 = !DILocation(line: 44, column: 12, scope: !2557, inlinedAt: !2555)
!2557 = distinct !DILexicalBlock(scope: !2550, file: !770, line: 44, column: 7)
!2558 = !DILocation(line: 44, column: 19, scope: !2557, inlinedAt: !2555)
!2559 = !DILocation(line: 44, column: 7, scope: !2550, inlinedAt: !2555)
!2560 = !DILocation(line: 46, column: 5, scope: !2557, inlinedAt: !2555)
!2561 = !DILocation(line: 159, column: 10, scope: !2502)
!2562 = !DILocation(line: 159, column: 3, scope: !2502)
!2563 = !DILocation(line: 236, column: 1, scope: !2502)
!2564 = !DISubprogram(name: "fflush", scope: !929, file: !929, line: 230, type: !2503, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2565 = distinct !DISubprogram(name: "fpurge", scope: !773, file: !773, line: 32, type: !2566, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !772, retainedNodes: !2602)
!2566 = !DISubroutineType(types: !2567)
!2567 = !{!87, !2568}
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !211, line: 7, baseType: !2570)
!2570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !213, line: 49, size: 1728, elements: !2571)
!2571 = !{!2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601}
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2570, file: !213, line: 51, baseType: !87, size: 32)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2570, file: !213, line: 54, baseType: !130, size: 64, offset: 64)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2570, file: !213, line: 55, baseType: !130, size: 64, offset: 128)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2570, file: !213, line: 56, baseType: !130, size: 64, offset: 192)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2570, file: !213, line: 57, baseType: !130, size: 64, offset: 256)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2570, file: !213, line: 58, baseType: !130, size: 64, offset: 320)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2570, file: !213, line: 59, baseType: !130, size: 64, offset: 384)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2570, file: !213, line: 60, baseType: !130, size: 64, offset: 448)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2570, file: !213, line: 61, baseType: !130, size: 64, offset: 512)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2570, file: !213, line: 64, baseType: !130, size: 64, offset: 576)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2570, file: !213, line: 65, baseType: !130, size: 64, offset: 640)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2570, file: !213, line: 66, baseType: !130, size: 64, offset: 704)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2570, file: !213, line: 68, baseType: !228, size: 64, offset: 768)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2570, file: !213, line: 70, baseType: !2586, size: 64, offset: 832)
!2586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2570, size: 64)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2570, file: !213, line: 72, baseType: !87, size: 32, offset: 896)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2570, file: !213, line: 73, baseType: !87, size: 32, offset: 928)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2570, file: !213, line: 74, baseType: !235, size: 64, offset: 960)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2570, file: !213, line: 77, baseType: !132, size: 16, offset: 1024)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2570, file: !213, line: 78, baseType: !240, size: 8, offset: 1040)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2570, file: !213, line: 79, baseType: !54, size: 8, offset: 1048)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2570, file: !213, line: 81, baseType: !243, size: 64, offset: 1088)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2570, file: !213, line: 89, baseType: !246, size: 64, offset: 1152)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2570, file: !213, line: 91, baseType: !248, size: 64, offset: 1216)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2570, file: !213, line: 92, baseType: !251, size: 64, offset: 1280)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2570, file: !213, line: 93, baseType: !2586, size: 64, offset: 1344)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2570, file: !213, line: 94, baseType: !131, size: 64, offset: 1408)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2570, file: !213, line: 95, baseType: !133, size: 64, offset: 1472)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2570, file: !213, line: 96, baseType: !87, size: 32, offset: 1536)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2570, file: !213, line: 98, baseType: !258, size: 160, offset: 1568)
!2602 = !{!2603}
!2603 = !DILocalVariable(name: "fp", arg: 1, scope: !2565, file: !773, line: 32, type: !2568)
!2604 = !DILocation(line: 0, scope: !2565)
!2605 = !DILocation(line: 36, column: 3, scope: !2565)
!2606 = !DILocation(line: 38, column: 3, scope: !2565)
!2607 = !DISubprogram(name: "__fpurge", scope: !2498, file: !2498, line: 72, type: !2608, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2608 = !DISubroutineType(types: !2609)
!2609 = !{null, !2568}
!2610 = distinct !DISubprogram(name: "rpl_fseeko", scope: !775, file: !775, line: 28, type: !2611, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !2647)
!2611 = !DISubroutineType(types: !2612)
!2612 = !{!87, !2613, !2363, !87}
!2613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2614, size: 64)
!2614 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !211, line: 7, baseType: !2615)
!2615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !213, line: 49, size: 1728, elements: !2616)
!2616 = !{!2617, !2618, !2619, !2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646}
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2615, file: !213, line: 51, baseType: !87, size: 32)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2615, file: !213, line: 54, baseType: !130, size: 64, offset: 64)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2615, file: !213, line: 55, baseType: !130, size: 64, offset: 128)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2615, file: !213, line: 56, baseType: !130, size: 64, offset: 192)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2615, file: !213, line: 57, baseType: !130, size: 64, offset: 256)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2615, file: !213, line: 58, baseType: !130, size: 64, offset: 320)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2615, file: !213, line: 59, baseType: !130, size: 64, offset: 384)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2615, file: !213, line: 60, baseType: !130, size: 64, offset: 448)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2615, file: !213, line: 61, baseType: !130, size: 64, offset: 512)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2615, file: !213, line: 64, baseType: !130, size: 64, offset: 576)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2615, file: !213, line: 65, baseType: !130, size: 64, offset: 640)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2615, file: !213, line: 66, baseType: !130, size: 64, offset: 704)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2615, file: !213, line: 68, baseType: !228, size: 64, offset: 768)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2615, file: !213, line: 70, baseType: !2631, size: 64, offset: 832)
!2631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2615, size: 64)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2615, file: !213, line: 72, baseType: !87, size: 32, offset: 896)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2615, file: !213, line: 73, baseType: !87, size: 32, offset: 928)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2615, file: !213, line: 74, baseType: !235, size: 64, offset: 960)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2615, file: !213, line: 77, baseType: !132, size: 16, offset: 1024)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2615, file: !213, line: 78, baseType: !240, size: 8, offset: 1040)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2615, file: !213, line: 79, baseType: !54, size: 8, offset: 1048)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2615, file: !213, line: 81, baseType: !243, size: 64, offset: 1088)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2615, file: !213, line: 89, baseType: !246, size: 64, offset: 1152)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2615, file: !213, line: 91, baseType: !248, size: 64, offset: 1216)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2615, file: !213, line: 92, baseType: !251, size: 64, offset: 1280)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2615, file: !213, line: 93, baseType: !2631, size: 64, offset: 1344)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2615, file: !213, line: 94, baseType: !131, size: 64, offset: 1408)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2615, file: !213, line: 95, baseType: !133, size: 64, offset: 1472)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2615, file: !213, line: 96, baseType: !87, size: 32, offset: 1536)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2615, file: !213, line: 98, baseType: !258, size: 160, offset: 1568)
!2647 = !{!2648, !2649, !2650, !2651}
!2648 = !DILocalVariable(name: "fp", arg: 1, scope: !2610, file: !775, line: 28, type: !2613)
!2649 = !DILocalVariable(name: "offset", arg: 2, scope: !2610, file: !775, line: 28, type: !2363)
!2650 = !DILocalVariable(name: "whence", arg: 3, scope: !2610, file: !775, line: 28, type: !87)
!2651 = !DILocalVariable(name: "pos", scope: !2652, file: !775, line: 123, type: !2363)
!2652 = distinct !DILexicalBlock(scope: !2653, file: !775, line: 119, column: 5)
!2653 = distinct !DILexicalBlock(scope: !2610, file: !775, line: 55, column: 7)
!2654 = !DILocation(line: 0, scope: !2610)
!2655 = !DILocation(line: 55, column: 12, scope: !2653)
!2656 = !{!1302, !864, i64 16}
!2657 = !DILocation(line: 55, column: 33, scope: !2653)
!2658 = !{!1302, !864, i64 8}
!2659 = !DILocation(line: 55, column: 25, scope: !2653)
!2660 = !DILocation(line: 56, column: 7, scope: !2653)
!2661 = !DILocation(line: 56, column: 15, scope: !2653)
!2662 = !DILocation(line: 56, column: 37, scope: !2653)
!2663 = !{!1302, !864, i64 32}
!2664 = !DILocation(line: 56, column: 29, scope: !2653)
!2665 = !DILocation(line: 57, column: 7, scope: !2653)
!2666 = !DILocation(line: 57, column: 15, scope: !2653)
!2667 = !{!1302, !864, i64 72}
!2668 = !DILocation(line: 57, column: 29, scope: !2653)
!2669 = !DILocation(line: 55, column: 7, scope: !2610)
!2670 = !DILocation(line: 123, column: 26, scope: !2652)
!2671 = !DILocation(line: 123, column: 19, scope: !2652)
!2672 = !DILocation(line: 0, scope: !2652)
!2673 = !DILocation(line: 124, column: 15, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2652, file: !775, line: 124, column: 11)
!2675 = !DILocation(line: 124, column: 11, scope: !2652)
!2676 = !DILocation(line: 135, column: 19, scope: !2652)
!2677 = !DILocation(line: 136, column: 12, scope: !2652)
!2678 = !DILocation(line: 136, column: 20, scope: !2652)
!2679 = !{!1302, !1303, i64 144}
!2680 = !DILocation(line: 167, column: 7, scope: !2652)
!2681 = !DILocation(line: 169, column: 10, scope: !2610)
!2682 = !DILocation(line: 169, column: 3, scope: !2610)
!2683 = !DILocation(line: 170, column: 1, scope: !2610)
!2684 = !DISubprogram(name: "fseeko", scope: !929, file: !929, line: 736, type: !2685, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2685 = !DISubroutineType(types: !2686)
!2686 = !{!87, !2613, !235, !87}
!2687 = distinct !DISubprogram(name: "getprogname", scope: !777, file: !777, line: 54, type: !2688, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !776)
!2688 = !DISubroutineType(types: !2689)
!2689 = !{!136}
!2690 = !DILocation(line: 58, column: 10, scope: !2687)
!2691 = !DILocation(line: 58, column: 3, scope: !2687)
!2692 = distinct !DISubprogram(name: "set_program_name", scope: !510, file: !510, line: 37, type: !884, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !509, retainedNodes: !2693)
!2693 = !{!2694, !2695, !2696}
!2694 = !DILocalVariable(name: "argv0", arg: 1, scope: !2692, file: !510, line: 37, type: !136)
!2695 = !DILocalVariable(name: "slash", scope: !2692, file: !510, line: 44, type: !136)
!2696 = !DILocalVariable(name: "base", scope: !2692, file: !510, line: 45, type: !136)
!2697 = !DILocation(line: 0, scope: !2692)
!2698 = !DILocation(line: 44, column: 23, scope: !2692)
!2699 = !DILocation(line: 45, column: 22, scope: !2692)
!2700 = !DILocation(line: 46, column: 17, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !2692, file: !510, line: 46, column: 7)
!2702 = !DILocation(line: 46, column: 9, scope: !2701)
!2703 = !DILocation(line: 46, column: 25, scope: !2701)
!2704 = !DILocation(line: 46, column: 40, scope: !2701)
!2705 = !DILocalVariable(name: "__s1", arg: 1, scope: !2706, file: !947, line: 974, type: !1082)
!2706 = distinct !DISubprogram(name: "memeq", scope: !947, file: !947, line: 974, type: !2707, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !509, retainedNodes: !2709)
!2707 = !DISubroutineType(types: !2708)
!2708 = !{!196, !1082, !1082, !133}
!2709 = !{!2705, !2710, !2711}
!2710 = !DILocalVariable(name: "__s2", arg: 2, scope: !2706, file: !947, line: 974, type: !1082)
!2711 = !DILocalVariable(name: "__n", arg: 3, scope: !2706, file: !947, line: 974, type: !133)
!2712 = !DILocation(line: 0, scope: !2706, inlinedAt: !2713)
!2713 = distinct !DILocation(line: 46, column: 28, scope: !2701)
!2714 = !DILocation(line: 976, column: 11, scope: !2706, inlinedAt: !2713)
!2715 = !DILocation(line: 976, column: 10, scope: !2706, inlinedAt: !2713)
!2716 = !DILocation(line: 46, column: 7, scope: !2692)
!2717 = !DILocation(line: 49, column: 11, scope: !2718)
!2718 = distinct !DILexicalBlock(scope: !2719, file: !510, line: 49, column: 11)
!2719 = distinct !DILexicalBlock(scope: !2701, file: !510, line: 47, column: 5)
!2720 = !DILocation(line: 49, column: 36, scope: !2718)
!2721 = !DILocation(line: 49, column: 11, scope: !2719)
!2722 = !DILocation(line: 65, column: 16, scope: !2692)
!2723 = !DILocation(line: 71, column: 27, scope: !2692)
!2724 = !DILocation(line: 74, column: 33, scope: !2692)
!2725 = !DILocation(line: 76, column: 1, scope: !2692)
!2726 = !DISubprogram(name: "strrchr", scope: !1054, file: !1054, line: 273, type: !1069, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2727 = distinct !DIAssignID()
!2728 = !DILocation(line: 0, scope: !518)
!2729 = distinct !DIAssignID()
!2730 = !DILocation(line: 40, column: 29, scope: !518)
!2731 = !DILocation(line: 41, column: 19, scope: !2732)
!2732 = distinct !DILexicalBlock(scope: !518, file: !519, line: 41, column: 7)
!2733 = !DILocation(line: 41, column: 7, scope: !518)
!2734 = !DILocation(line: 47, column: 3, scope: !518)
!2735 = !DILocation(line: 48, column: 3, scope: !518)
!2736 = !DILocalVariable(name: "ps", arg: 1, scope: !2737, file: !2738, line: 1135, type: !2741)
!2737 = distinct !DISubprogram(name: "mbszero", scope: !2738, file: !2738, line: 1135, type: !2739, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !2742)
!2738 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2739 = !DISubroutineType(types: !2740)
!2740 = !{null, !2741}
!2741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!2742 = !{!2736}
!2743 = !DILocation(line: 0, scope: !2737, inlinedAt: !2744)
!2744 = distinct !DILocation(line: 48, column: 18, scope: !518)
!2745 = !DILocalVariable(name: "__dest", arg: 1, scope: !2746, file: !1276, line: 57, type: !131)
!2746 = distinct !DISubprogram(name: "memset", scope: !1276, file: !1276, line: 57, type: !2747, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !2749)
!2747 = !DISubroutineType(types: !2748)
!2748 = !{!131, !131, !87, !133}
!2749 = !{!2745, !2750, !2751}
!2750 = !DILocalVariable(name: "__ch", arg: 2, scope: !2746, file: !1276, line: 57, type: !87)
!2751 = !DILocalVariable(name: "__len", arg: 3, scope: !2746, file: !1276, line: 57, type: !133)
!2752 = !DILocation(line: 0, scope: !2746, inlinedAt: !2753)
!2753 = distinct !DILocation(line: 1137, column: 3, scope: !2737, inlinedAt: !2744)
!2754 = !DILocation(line: 59, column: 10, scope: !2746, inlinedAt: !2753)
!2755 = !DILocation(line: 49, column: 7, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !518, file: !519, line: 49, column: 7)
!2757 = !DILocation(line: 49, column: 39, scope: !2756)
!2758 = !DILocation(line: 49, column: 44, scope: !2756)
!2759 = !DILocation(line: 54, column: 1, scope: !518)
!2760 = !DISubprogram(name: "mbrtoc32", scope: !530, file: !530, line: 57, type: !2761, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2761 = !DISubroutineType(types: !2762)
!2762 = !{!133, !2763, !924, !133, !2765}
!2763 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2764)
!2764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!2765 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2741)
!2766 = distinct !DISubprogram(name: "clone_quoting_options", scope: !549, file: !549, line: 113, type: !2767, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !2770)
!2767 = !DISubroutineType(types: !2768)
!2768 = !{!2769, !2769}
!2769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!2770 = !{!2771, !2772, !2773}
!2771 = !DILocalVariable(name: "o", arg: 1, scope: !2766, file: !549, line: 113, type: !2769)
!2772 = !DILocalVariable(name: "saved_errno", scope: !2766, file: !549, line: 115, type: !87)
!2773 = !DILocalVariable(name: "p", scope: !2766, file: !549, line: 116, type: !2769)
!2774 = !DILocation(line: 0, scope: !2766)
!2775 = !DILocation(line: 115, column: 21, scope: !2766)
!2776 = !DILocation(line: 116, column: 40, scope: !2766)
!2777 = !DILocation(line: 116, column: 31, scope: !2766)
!2778 = !DILocation(line: 118, column: 9, scope: !2766)
!2779 = !DILocation(line: 119, column: 3, scope: !2766)
!2780 = distinct !DISubprogram(name: "get_quoting_style", scope: !549, file: !549, line: 124, type: !2781, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !2785)
!2781 = !DISubroutineType(types: !2782)
!2782 = !{!572, !2783}
!2783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2784, size: 64)
!2784 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !587)
!2785 = !{!2786}
!2786 = !DILocalVariable(name: "o", arg: 1, scope: !2780, file: !549, line: 124, type: !2783)
!2787 = !DILocation(line: 0, scope: !2780)
!2788 = !DILocation(line: 126, column: 11, scope: !2780)
!2789 = !DILocation(line: 126, column: 46, scope: !2780)
!2790 = !{!2791, !935, i64 0}
!2791 = !{!"quoting_options", !935, i64 0, !935, i64 4, !865, i64 8, !864, i64 40, !864, i64 48}
!2792 = !DILocation(line: 126, column: 3, scope: !2780)
!2793 = distinct !DISubprogram(name: "set_quoting_style", scope: !549, file: !549, line: 132, type: !2794, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !2796)
!2794 = !DISubroutineType(types: !2795)
!2795 = !{null, !2769, !572}
!2796 = !{!2797, !2798}
!2797 = !DILocalVariable(name: "o", arg: 1, scope: !2793, file: !549, line: 132, type: !2769)
!2798 = !DILocalVariable(name: "s", arg: 2, scope: !2793, file: !549, line: 132, type: !572)
!2799 = !DILocation(line: 0, scope: !2793)
!2800 = !DILocation(line: 134, column: 4, scope: !2793)
!2801 = !DILocation(line: 134, column: 45, scope: !2793)
!2802 = !DILocation(line: 135, column: 1, scope: !2793)
!2803 = distinct !DISubprogram(name: "set_char_quoting", scope: !549, file: !549, line: 143, type: !2804, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !2806)
!2804 = !DISubroutineType(types: !2805)
!2805 = !{!87, !2769, !4, !87}
!2806 = !{!2807, !2808, !2809, !2810, !2811, !2813, !2814}
!2807 = !DILocalVariable(name: "o", arg: 1, scope: !2803, file: !549, line: 143, type: !2769)
!2808 = !DILocalVariable(name: "c", arg: 2, scope: !2803, file: !549, line: 143, type: !4)
!2809 = !DILocalVariable(name: "i", arg: 3, scope: !2803, file: !549, line: 143, type: !87)
!2810 = !DILocalVariable(name: "uc", scope: !2803, file: !549, line: 145, type: !138)
!2811 = !DILocalVariable(name: "p", scope: !2803, file: !549, line: 146, type: !2812)
!2812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!2813 = !DILocalVariable(name: "shift", scope: !2803, file: !549, line: 148, type: !87)
!2814 = !DILocalVariable(name: "r", scope: !2803, file: !549, line: 149, type: !78)
!2815 = !DILocation(line: 0, scope: !2803)
!2816 = !DILocation(line: 147, column: 6, scope: !2803)
!2817 = !DILocation(line: 147, column: 41, scope: !2803)
!2818 = !DILocation(line: 147, column: 62, scope: !2803)
!2819 = !DILocation(line: 147, column: 57, scope: !2803)
!2820 = !DILocation(line: 148, column: 15, scope: !2803)
!2821 = !DILocation(line: 149, column: 21, scope: !2803)
!2822 = !DILocation(line: 149, column: 24, scope: !2803)
!2823 = !DILocation(line: 149, column: 34, scope: !2803)
!2824 = !DILocation(line: 150, column: 19, scope: !2803)
!2825 = !DILocation(line: 150, column: 24, scope: !2803)
!2826 = !DILocation(line: 150, column: 6, scope: !2803)
!2827 = !DILocation(line: 151, column: 3, scope: !2803)
!2828 = distinct !DISubprogram(name: "set_quoting_flags", scope: !549, file: !549, line: 159, type: !2829, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !2831)
!2829 = !DISubroutineType(types: !2830)
!2830 = !{!87, !2769, !87}
!2831 = !{!2832, !2833, !2834}
!2832 = !DILocalVariable(name: "o", arg: 1, scope: !2828, file: !549, line: 159, type: !2769)
!2833 = !DILocalVariable(name: "i", arg: 2, scope: !2828, file: !549, line: 159, type: !87)
!2834 = !DILocalVariable(name: "r", scope: !2828, file: !549, line: 163, type: !87)
!2835 = !DILocation(line: 0, scope: !2828)
!2836 = !DILocation(line: 161, column: 8, scope: !2837)
!2837 = distinct !DILexicalBlock(scope: !2828, file: !549, line: 161, column: 7)
!2838 = !DILocation(line: 161, column: 7, scope: !2828)
!2839 = !DILocation(line: 163, column: 14, scope: !2828)
!2840 = !{!2791, !935, i64 4}
!2841 = !DILocation(line: 164, column: 12, scope: !2828)
!2842 = !DILocation(line: 165, column: 3, scope: !2828)
!2843 = distinct !DISubprogram(name: "set_custom_quoting", scope: !549, file: !549, line: 169, type: !2844, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !2846)
!2844 = !DISubroutineType(types: !2845)
!2845 = !{null, !2769, !136, !136}
!2846 = !{!2847, !2848, !2849}
!2847 = !DILocalVariable(name: "o", arg: 1, scope: !2843, file: !549, line: 169, type: !2769)
!2848 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2843, file: !549, line: 170, type: !136)
!2849 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2843, file: !549, line: 170, type: !136)
!2850 = !DILocation(line: 0, scope: !2843)
!2851 = !DILocation(line: 172, column: 8, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !2843, file: !549, line: 172, column: 7)
!2853 = !DILocation(line: 172, column: 7, scope: !2843)
!2854 = !DILocation(line: 174, column: 12, scope: !2843)
!2855 = !DILocation(line: 175, column: 8, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2843, file: !549, line: 175, column: 7)
!2857 = !DILocation(line: 175, column: 19, scope: !2856)
!2858 = !DILocation(line: 176, column: 5, scope: !2856)
!2859 = !DILocation(line: 177, column: 6, scope: !2843)
!2860 = !DILocation(line: 177, column: 17, scope: !2843)
!2861 = !{!2791, !864, i64 40}
!2862 = !DILocation(line: 178, column: 6, scope: !2843)
!2863 = !DILocation(line: 178, column: 18, scope: !2843)
!2864 = !{!2791, !864, i64 48}
!2865 = !DILocation(line: 179, column: 1, scope: !2843)
!2866 = !DISubprogram(name: "abort", scope: !1058, file: !1058, line: 598, type: !505, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2867 = distinct !DISubprogram(name: "quotearg_buffer", scope: !549, file: !549, line: 774, type: !2868, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !2870)
!2868 = !DISubroutineType(types: !2869)
!2869 = !{!133, !130, !133, !136, !133, !2783}
!2870 = !{!2871, !2872, !2873, !2874, !2875, !2876, !2877, !2878}
!2871 = !DILocalVariable(name: "buffer", arg: 1, scope: !2867, file: !549, line: 774, type: !130)
!2872 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2867, file: !549, line: 774, type: !133)
!2873 = !DILocalVariable(name: "arg", arg: 3, scope: !2867, file: !549, line: 775, type: !136)
!2874 = !DILocalVariable(name: "argsize", arg: 4, scope: !2867, file: !549, line: 775, type: !133)
!2875 = !DILocalVariable(name: "o", arg: 5, scope: !2867, file: !549, line: 776, type: !2783)
!2876 = !DILocalVariable(name: "p", scope: !2867, file: !549, line: 778, type: !2783)
!2877 = !DILocalVariable(name: "saved_errno", scope: !2867, file: !549, line: 779, type: !87)
!2878 = !DILocalVariable(name: "r", scope: !2867, file: !549, line: 780, type: !133)
!2879 = !DILocation(line: 0, scope: !2867)
!2880 = !DILocation(line: 778, column: 37, scope: !2867)
!2881 = !DILocation(line: 779, column: 21, scope: !2867)
!2882 = !DILocation(line: 781, column: 43, scope: !2867)
!2883 = !DILocation(line: 781, column: 53, scope: !2867)
!2884 = !DILocation(line: 781, column: 63, scope: !2867)
!2885 = !DILocation(line: 782, column: 43, scope: !2867)
!2886 = !DILocation(line: 782, column: 58, scope: !2867)
!2887 = !DILocation(line: 780, column: 14, scope: !2867)
!2888 = !DILocation(line: 783, column: 9, scope: !2867)
!2889 = !DILocation(line: 784, column: 3, scope: !2867)
!2890 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !549, file: !549, line: 251, type: !2891, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !2895)
!2891 = !DISubroutineType(types: !2892)
!2892 = !{!133, !130, !133, !136, !133, !572, !87, !2893, !136, !136}
!2893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2894, size: 64)
!2894 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!2895 = !{!2896, !2897, !2898, !2899, !2900, !2901, !2902, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2921, !2923, !2926, !2927, !2928, !2929, !2932, !2933, !2935, !2936, !2939, !2943, !2944, !2952, !2955, !2956, !2957}
!2896 = !DILocalVariable(name: "buffer", arg: 1, scope: !2890, file: !549, line: 251, type: !130)
!2897 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2890, file: !549, line: 251, type: !133)
!2898 = !DILocalVariable(name: "arg", arg: 3, scope: !2890, file: !549, line: 252, type: !136)
!2899 = !DILocalVariable(name: "argsize", arg: 4, scope: !2890, file: !549, line: 252, type: !133)
!2900 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2890, file: !549, line: 253, type: !572)
!2901 = !DILocalVariable(name: "flags", arg: 6, scope: !2890, file: !549, line: 253, type: !87)
!2902 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2890, file: !549, line: 254, type: !2893)
!2903 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2890, file: !549, line: 255, type: !136)
!2904 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2890, file: !549, line: 256, type: !136)
!2905 = !DILocalVariable(name: "unibyte_locale", scope: !2890, file: !549, line: 258, type: !196)
!2906 = !DILocalVariable(name: "len", scope: !2890, file: !549, line: 260, type: !133)
!2907 = !DILocalVariable(name: "orig_buffersize", scope: !2890, file: !549, line: 261, type: !133)
!2908 = !DILocalVariable(name: "quote_string", scope: !2890, file: !549, line: 262, type: !136)
!2909 = !DILocalVariable(name: "quote_string_len", scope: !2890, file: !549, line: 263, type: !133)
!2910 = !DILocalVariable(name: "backslash_escapes", scope: !2890, file: !549, line: 264, type: !196)
!2911 = !DILocalVariable(name: "elide_outer_quotes", scope: !2890, file: !549, line: 265, type: !196)
!2912 = !DILocalVariable(name: "encountered_single_quote", scope: !2890, file: !549, line: 266, type: !196)
!2913 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2890, file: !549, line: 267, type: !196)
!2914 = !DILabel(scope: !2890, name: "process_input", file: !549, line: 308)
!2915 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2890, file: !549, line: 309, type: !196)
!2916 = !DILocalVariable(name: "lq", scope: !2917, file: !549, line: 361, type: !136)
!2917 = distinct !DILexicalBlock(scope: !2918, file: !549, line: 361, column: 11)
!2918 = distinct !DILexicalBlock(scope: !2919, file: !549, line: 360, column: 13)
!2919 = distinct !DILexicalBlock(scope: !2920, file: !549, line: 333, column: 7)
!2920 = distinct !DILexicalBlock(scope: !2890, file: !549, line: 312, column: 5)
!2921 = !DILocalVariable(name: "i", scope: !2922, file: !549, line: 395, type: !133)
!2922 = distinct !DILexicalBlock(scope: !2890, file: !549, line: 395, column: 3)
!2923 = !DILocalVariable(name: "is_right_quote", scope: !2924, file: !549, line: 397, type: !196)
!2924 = distinct !DILexicalBlock(scope: !2925, file: !549, line: 396, column: 5)
!2925 = distinct !DILexicalBlock(scope: !2922, file: !549, line: 395, column: 3)
!2926 = !DILocalVariable(name: "escaping", scope: !2924, file: !549, line: 398, type: !196)
!2927 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2924, file: !549, line: 399, type: !196)
!2928 = !DILocalVariable(name: "c", scope: !2924, file: !549, line: 417, type: !138)
!2929 = !DILabel(scope: !2930, name: "c_and_shell_escape", file: !549, line: 502)
!2930 = distinct !DILexicalBlock(scope: !2931, file: !549, line: 478, column: 9)
!2931 = distinct !DILexicalBlock(scope: !2924, file: !549, line: 419, column: 9)
!2932 = !DILabel(scope: !2930, name: "c_escape", file: !549, line: 507)
!2933 = !DILocalVariable(name: "m", scope: !2934, file: !549, line: 598, type: !133)
!2934 = distinct !DILexicalBlock(scope: !2931, file: !549, line: 596, column: 11)
!2935 = !DILocalVariable(name: "printable", scope: !2934, file: !549, line: 600, type: !196)
!2936 = !DILocalVariable(name: "mbs", scope: !2937, file: !549, line: 609, type: !619)
!2937 = distinct !DILexicalBlock(scope: !2938, file: !549, line: 608, column: 15)
!2938 = distinct !DILexicalBlock(scope: !2934, file: !549, line: 602, column: 17)
!2939 = !DILocalVariable(name: "w", scope: !2940, file: !549, line: 618, type: !529)
!2940 = distinct !DILexicalBlock(scope: !2941, file: !549, line: 617, column: 19)
!2941 = distinct !DILexicalBlock(scope: !2942, file: !549, line: 616, column: 17)
!2942 = distinct !DILexicalBlock(scope: !2937, file: !549, line: 616, column: 17)
!2943 = !DILocalVariable(name: "bytes", scope: !2940, file: !549, line: 619, type: !133)
!2944 = !DILocalVariable(name: "j", scope: !2945, file: !549, line: 648, type: !133)
!2945 = distinct !DILexicalBlock(scope: !2946, file: !549, line: 648, column: 29)
!2946 = distinct !DILexicalBlock(scope: !2947, file: !549, line: 647, column: 27)
!2947 = distinct !DILexicalBlock(scope: !2948, file: !549, line: 645, column: 29)
!2948 = distinct !DILexicalBlock(scope: !2949, file: !549, line: 636, column: 23)
!2949 = distinct !DILexicalBlock(scope: !2950, file: !549, line: 628, column: 30)
!2950 = distinct !DILexicalBlock(scope: !2951, file: !549, line: 623, column: 30)
!2951 = distinct !DILexicalBlock(scope: !2940, file: !549, line: 621, column: 25)
!2952 = !DILocalVariable(name: "ilim", scope: !2953, file: !549, line: 674, type: !133)
!2953 = distinct !DILexicalBlock(scope: !2954, file: !549, line: 671, column: 15)
!2954 = distinct !DILexicalBlock(scope: !2934, file: !549, line: 670, column: 17)
!2955 = !DILabel(scope: !2924, name: "store_escape", file: !549, line: 709)
!2956 = !DILabel(scope: !2924, name: "store_c", file: !549, line: 712)
!2957 = !DILabel(scope: !2890, name: "force_outer_quoting_style", file: !549, line: 753)
!2958 = distinct !DIAssignID()
!2959 = distinct !DIAssignID()
!2960 = distinct !DIAssignID()
!2961 = distinct !DIAssignID()
!2962 = distinct !DIAssignID()
!2963 = !DILocation(line: 0, scope: !2937)
!2964 = distinct !DIAssignID()
!2965 = !DILocation(line: 0, scope: !2940)
!2966 = !DILocation(line: 0, scope: !2890)
!2967 = !DILocation(line: 258, column: 25, scope: !2890)
!2968 = !DILocation(line: 258, column: 36, scope: !2890)
!2969 = !DILocation(line: 265, column: 8, scope: !2890)
!2970 = !DILocation(line: 267, column: 3, scope: !2890)
!2971 = !DILocation(line: 261, column: 10, scope: !2890)
!2972 = !DILocation(line: 262, column: 15, scope: !2890)
!2973 = !DILocation(line: 263, column: 10, scope: !2890)
!2974 = !DILocation(line: 264, column: 8, scope: !2890)
!2975 = !DILocation(line: 266, column: 8, scope: !2890)
!2976 = !DILocation(line: 267, column: 8, scope: !2890)
!2977 = !DILocation(line: 308, column: 2, scope: !2890)
!2978 = !DILocation(line: 311, column: 3, scope: !2890)
!2979 = !DILocation(line: 318, column: 11, scope: !2920)
!2980 = !DILocation(line: 318, column: 12, scope: !2981)
!2981 = distinct !DILexicalBlock(scope: !2920, file: !549, line: 318, column: 11)
!2982 = !DILocation(line: 319, column: 9, scope: !2983)
!2983 = distinct !DILexicalBlock(scope: !2984, file: !549, line: 319, column: 9)
!2984 = distinct !DILexicalBlock(scope: !2981, file: !549, line: 319, column: 9)
!2985 = !DILocation(line: 319, column: 9, scope: !2984)
!2986 = !DILocation(line: 0, scope: !610, inlinedAt: !2987)
!2987 = distinct !DILocation(line: 357, column: 26, scope: !2988)
!2988 = distinct !DILexicalBlock(scope: !2989, file: !549, line: 335, column: 11)
!2989 = distinct !DILexicalBlock(scope: !2919, file: !549, line: 334, column: 13)
!2990 = !DILocation(line: 199, column: 29, scope: !610, inlinedAt: !2987)
!2991 = !DILocation(line: 201, column: 19, scope: !2992, inlinedAt: !2987)
!2992 = distinct !DILexicalBlock(scope: !610, file: !549, line: 201, column: 7)
!2993 = !DILocation(line: 201, column: 7, scope: !610, inlinedAt: !2987)
!2994 = !DILocation(line: 229, column: 3, scope: !610, inlinedAt: !2987)
!2995 = !DILocation(line: 230, column: 3, scope: !610, inlinedAt: !2987)
!2996 = !DILocalVariable(name: "ps", arg: 1, scope: !2997, file: !2738, line: 1135, type: !3000)
!2997 = distinct !DISubprogram(name: "mbszero", scope: !2738, file: !2738, line: 1135, type: !2998, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !3001)
!2998 = !DISubroutineType(types: !2999)
!2999 = !{null, !3000}
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!3001 = !{!2996}
!3002 = !DILocation(line: 0, scope: !2997, inlinedAt: !3003)
!3003 = distinct !DILocation(line: 230, column: 18, scope: !610, inlinedAt: !2987)
!3004 = !DILocalVariable(name: "__dest", arg: 1, scope: !3005, file: !1276, line: 57, type: !131)
!3005 = distinct !DISubprogram(name: "memset", scope: !1276, file: !1276, line: 57, type: !2747, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !3006)
!3006 = !{!3004, !3007, !3008}
!3007 = !DILocalVariable(name: "__ch", arg: 2, scope: !3005, file: !1276, line: 57, type: !87)
!3008 = !DILocalVariable(name: "__len", arg: 3, scope: !3005, file: !1276, line: 57, type: !133)
!3009 = !DILocation(line: 0, scope: !3005, inlinedAt: !3010)
!3010 = distinct !DILocation(line: 1137, column: 3, scope: !2997, inlinedAt: !3003)
!3011 = !DILocation(line: 59, column: 10, scope: !3005, inlinedAt: !3010)
!3012 = !DILocation(line: 231, column: 7, scope: !3013, inlinedAt: !2987)
!3013 = distinct !DILexicalBlock(scope: !610, file: !549, line: 231, column: 7)
!3014 = !DILocation(line: 231, column: 40, scope: !3013, inlinedAt: !2987)
!3015 = !DILocation(line: 231, column: 45, scope: !3013, inlinedAt: !2987)
!3016 = !DILocation(line: 235, column: 1, scope: !610, inlinedAt: !2987)
!3017 = !DILocation(line: 0, scope: !610, inlinedAt: !3018)
!3018 = distinct !DILocation(line: 358, column: 27, scope: !2988)
!3019 = !DILocation(line: 199, column: 29, scope: !610, inlinedAt: !3018)
!3020 = !DILocation(line: 201, column: 19, scope: !2992, inlinedAt: !3018)
!3021 = !DILocation(line: 201, column: 7, scope: !610, inlinedAt: !3018)
!3022 = !DILocation(line: 229, column: 3, scope: !610, inlinedAt: !3018)
!3023 = !DILocation(line: 230, column: 3, scope: !610, inlinedAt: !3018)
!3024 = !DILocation(line: 0, scope: !2997, inlinedAt: !3025)
!3025 = distinct !DILocation(line: 230, column: 18, scope: !610, inlinedAt: !3018)
!3026 = !DILocation(line: 0, scope: !3005, inlinedAt: !3027)
!3027 = distinct !DILocation(line: 1137, column: 3, scope: !2997, inlinedAt: !3025)
!3028 = !DILocation(line: 59, column: 10, scope: !3005, inlinedAt: !3027)
!3029 = !DILocation(line: 231, column: 7, scope: !3013, inlinedAt: !3018)
!3030 = !DILocation(line: 231, column: 40, scope: !3013, inlinedAt: !3018)
!3031 = !DILocation(line: 231, column: 45, scope: !3013, inlinedAt: !3018)
!3032 = !DILocation(line: 235, column: 1, scope: !610, inlinedAt: !3018)
!3033 = !DILocation(line: 360, column: 14, scope: !2918)
!3034 = !DILocation(line: 360, column: 13, scope: !2919)
!3035 = !DILocation(line: 0, scope: !2917)
!3036 = !DILocation(line: 361, column: 45, scope: !3037)
!3037 = distinct !DILexicalBlock(scope: !2917, file: !549, line: 361, column: 11)
!3038 = !DILocation(line: 361, column: 11, scope: !2917)
!3039 = !DILocation(line: 362, column: 13, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !3041, file: !549, line: 362, column: 13)
!3041 = distinct !DILexicalBlock(scope: !3037, file: !549, line: 362, column: 13)
!3042 = !DILocation(line: 362, column: 13, scope: !3041)
!3043 = !DILocation(line: 361, column: 52, scope: !3037)
!3044 = distinct !{!3044, !3038, !3045, !981}
!3045 = !DILocation(line: 362, column: 13, scope: !2917)
!3046 = !DILocation(line: 260, column: 10, scope: !2890)
!3047 = !DILocation(line: 365, column: 28, scope: !2919)
!3048 = !DILocation(line: 367, column: 7, scope: !2920)
!3049 = !DILocation(line: 370, column: 7, scope: !2920)
!3050 = !DILocation(line: 373, column: 7, scope: !2920)
!3051 = !DILocation(line: 376, column: 12, scope: !3052)
!3052 = distinct !DILexicalBlock(scope: !2920, file: !549, line: 376, column: 11)
!3053 = !DILocation(line: 376, column: 11, scope: !2920)
!3054 = !DILocation(line: 381, column: 12, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !2920, file: !549, line: 381, column: 11)
!3056 = !DILocation(line: 381, column: 11, scope: !2920)
!3057 = !DILocation(line: 382, column: 9, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !3059, file: !549, line: 382, column: 9)
!3059 = distinct !DILexicalBlock(scope: !3055, file: !549, line: 382, column: 9)
!3060 = !DILocation(line: 382, column: 9, scope: !3059)
!3061 = !DILocation(line: 389, column: 7, scope: !2920)
!3062 = !DILocation(line: 392, column: 7, scope: !2920)
!3063 = !DILocation(line: 0, scope: !2922)
!3064 = !DILocation(line: 395, column: 8, scope: !2922)
!3065 = !DILocation(line: 309, column: 8, scope: !2890)
!3066 = !DILocation(line: 395, scope: !2922)
!3067 = !DILocation(line: 395, column: 34, scope: !2925)
!3068 = !DILocation(line: 395, column: 26, scope: !2925)
!3069 = !DILocation(line: 395, column: 48, scope: !2925)
!3070 = !DILocation(line: 395, column: 55, scope: !2925)
!3071 = !DILocation(line: 395, column: 3, scope: !2922)
!3072 = !DILocation(line: 395, column: 67, scope: !2925)
!3073 = !DILocation(line: 0, scope: !2924)
!3074 = !DILocation(line: 402, column: 11, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !2924, file: !549, line: 401, column: 11)
!3076 = !DILocation(line: 404, column: 17, scope: !3075)
!3077 = !DILocation(line: 405, column: 39, scope: !3075)
!3078 = !DILocation(line: 409, column: 32, scope: !3075)
!3079 = !DILocation(line: 405, column: 19, scope: !3075)
!3080 = !DILocation(line: 405, column: 15, scope: !3075)
!3081 = !DILocation(line: 410, column: 11, scope: !3075)
!3082 = !DILocation(line: 410, column: 25, scope: !3075)
!3083 = !DILocalVariable(name: "__s1", arg: 1, scope: !3084, file: !947, line: 974, type: !1082)
!3084 = distinct !DISubprogram(name: "memeq", scope: !947, file: !947, line: 974, type: !2707, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !3085)
!3085 = !{!3083, !3086, !3087}
!3086 = !DILocalVariable(name: "__s2", arg: 2, scope: !3084, file: !947, line: 974, type: !1082)
!3087 = !DILocalVariable(name: "__n", arg: 3, scope: !3084, file: !947, line: 974, type: !133)
!3088 = !DILocation(line: 0, scope: !3084, inlinedAt: !3089)
!3089 = distinct !DILocation(line: 410, column: 14, scope: !3075)
!3090 = !DILocation(line: 976, column: 11, scope: !3084, inlinedAt: !3089)
!3091 = !DILocation(line: 976, column: 10, scope: !3084, inlinedAt: !3089)
!3092 = !DILocation(line: 401, column: 11, scope: !2924)
!3093 = !DILocation(line: 417, column: 25, scope: !2924)
!3094 = !DILocation(line: 418, column: 7, scope: !2924)
!3095 = !DILocation(line: 421, column: 15, scope: !2931)
!3096 = !DILocation(line: 423, column: 15, scope: !3097)
!3097 = distinct !DILexicalBlock(scope: !3098, file: !549, line: 423, column: 15)
!3098 = distinct !DILexicalBlock(scope: !3099, file: !549, line: 422, column: 13)
!3099 = distinct !DILexicalBlock(scope: !2931, file: !549, line: 421, column: 15)
!3100 = !DILocation(line: 423, column: 15, scope: !3101)
!3101 = distinct !DILexicalBlock(scope: !3097, file: !549, line: 423, column: 15)
!3102 = !DILocation(line: 423, column: 15, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !3104, file: !549, line: 423, column: 15)
!3104 = distinct !DILexicalBlock(scope: !3105, file: !549, line: 423, column: 15)
!3105 = distinct !DILexicalBlock(scope: !3101, file: !549, line: 423, column: 15)
!3106 = !DILocation(line: 423, column: 15, scope: !3104)
!3107 = !DILocation(line: 423, column: 15, scope: !3108)
!3108 = distinct !DILexicalBlock(scope: !3109, file: !549, line: 423, column: 15)
!3109 = distinct !DILexicalBlock(scope: !3105, file: !549, line: 423, column: 15)
!3110 = !DILocation(line: 423, column: 15, scope: !3109)
!3111 = !DILocation(line: 423, column: 15, scope: !3112)
!3112 = distinct !DILexicalBlock(scope: !3113, file: !549, line: 423, column: 15)
!3113 = distinct !DILexicalBlock(scope: !3105, file: !549, line: 423, column: 15)
!3114 = !DILocation(line: 423, column: 15, scope: !3113)
!3115 = !DILocation(line: 423, column: 15, scope: !3105)
!3116 = !DILocation(line: 423, column: 15, scope: !3117)
!3117 = distinct !DILexicalBlock(scope: !3118, file: !549, line: 423, column: 15)
!3118 = distinct !DILexicalBlock(scope: !3097, file: !549, line: 423, column: 15)
!3119 = !DILocation(line: 423, column: 15, scope: !3118)
!3120 = !DILocation(line: 431, column: 19, scope: !3121)
!3121 = distinct !DILexicalBlock(scope: !3098, file: !549, line: 430, column: 19)
!3122 = !DILocation(line: 431, column: 24, scope: !3121)
!3123 = !DILocation(line: 431, column: 28, scope: !3121)
!3124 = !DILocation(line: 431, column: 38, scope: !3121)
!3125 = !DILocation(line: 431, column: 48, scope: !3121)
!3126 = !DILocation(line: 431, column: 59, scope: !3121)
!3127 = !DILocation(line: 433, column: 19, scope: !3128)
!3128 = distinct !DILexicalBlock(scope: !3129, file: !549, line: 433, column: 19)
!3129 = distinct !DILexicalBlock(scope: !3130, file: !549, line: 433, column: 19)
!3130 = distinct !DILexicalBlock(scope: !3121, file: !549, line: 432, column: 17)
!3131 = !DILocation(line: 433, column: 19, scope: !3129)
!3132 = !DILocation(line: 434, column: 19, scope: !3133)
!3133 = distinct !DILexicalBlock(scope: !3134, file: !549, line: 434, column: 19)
!3134 = distinct !DILexicalBlock(scope: !3130, file: !549, line: 434, column: 19)
!3135 = !DILocation(line: 434, column: 19, scope: !3134)
!3136 = !DILocation(line: 435, column: 17, scope: !3130)
!3137 = !DILocation(line: 442, column: 20, scope: !3099)
!3138 = !DILocation(line: 447, column: 11, scope: !2931)
!3139 = !DILocation(line: 450, column: 19, scope: !3140)
!3140 = distinct !DILexicalBlock(scope: !2931, file: !549, line: 448, column: 13)
!3141 = !DILocation(line: 456, column: 19, scope: !3142)
!3142 = distinct !DILexicalBlock(scope: !3140, file: !549, line: 455, column: 19)
!3143 = !DILocation(line: 456, column: 24, scope: !3142)
!3144 = !DILocation(line: 456, column: 28, scope: !3142)
!3145 = !DILocation(line: 456, column: 38, scope: !3142)
!3146 = !DILocation(line: 456, column: 41, scope: !3142)
!3147 = !DILocation(line: 456, column: 52, scope: !3142)
!3148 = !DILocation(line: 455, column: 19, scope: !3140)
!3149 = !DILocation(line: 457, column: 25, scope: !3142)
!3150 = !DILocation(line: 457, column: 17, scope: !3142)
!3151 = !DILocation(line: 464, column: 25, scope: !3152)
!3152 = distinct !DILexicalBlock(scope: !3142, file: !549, line: 458, column: 19)
!3153 = !DILocation(line: 468, column: 21, scope: !3154)
!3154 = distinct !DILexicalBlock(scope: !3155, file: !549, line: 468, column: 21)
!3155 = distinct !DILexicalBlock(scope: !3152, file: !549, line: 468, column: 21)
!3156 = !DILocation(line: 468, column: 21, scope: !3155)
!3157 = !DILocation(line: 469, column: 21, scope: !3158)
!3158 = distinct !DILexicalBlock(scope: !3159, file: !549, line: 469, column: 21)
!3159 = distinct !DILexicalBlock(scope: !3152, file: !549, line: 469, column: 21)
!3160 = !DILocation(line: 469, column: 21, scope: !3159)
!3161 = !DILocation(line: 470, column: 21, scope: !3162)
!3162 = distinct !DILexicalBlock(scope: !3163, file: !549, line: 470, column: 21)
!3163 = distinct !DILexicalBlock(scope: !3152, file: !549, line: 470, column: 21)
!3164 = !DILocation(line: 470, column: 21, scope: !3163)
!3165 = !DILocation(line: 471, column: 21, scope: !3166)
!3166 = distinct !DILexicalBlock(scope: !3167, file: !549, line: 471, column: 21)
!3167 = distinct !DILexicalBlock(scope: !3152, file: !549, line: 471, column: 21)
!3168 = !DILocation(line: 471, column: 21, scope: !3167)
!3169 = !DILocation(line: 472, column: 21, scope: !3152)
!3170 = !DILocation(line: 482, column: 33, scope: !2930)
!3171 = !DILocation(line: 483, column: 33, scope: !2930)
!3172 = !DILocation(line: 485, column: 33, scope: !2930)
!3173 = !DILocation(line: 486, column: 33, scope: !2930)
!3174 = !DILocation(line: 487, column: 33, scope: !2930)
!3175 = !DILocation(line: 490, column: 17, scope: !2930)
!3176 = !DILocation(line: 492, column: 21, scope: !3177)
!3177 = distinct !DILexicalBlock(scope: !3178, file: !549, line: 491, column: 15)
!3178 = distinct !DILexicalBlock(scope: !2930, file: !549, line: 490, column: 17)
!3179 = !DILocation(line: 499, column: 35, scope: !3180)
!3180 = distinct !DILexicalBlock(scope: !2930, file: !549, line: 499, column: 17)
!3181 = !DILocation(line: 499, column: 57, scope: !3180)
!3182 = !DILocation(line: 0, scope: !2930)
!3183 = !DILocation(line: 502, column: 11, scope: !2930)
!3184 = !DILocation(line: 504, column: 17, scope: !3185)
!3185 = distinct !DILexicalBlock(scope: !2930, file: !549, line: 503, column: 17)
!3186 = !DILocation(line: 507, column: 11, scope: !2930)
!3187 = !DILocation(line: 508, column: 17, scope: !2930)
!3188 = !DILocation(line: 517, column: 15, scope: !2931)
!3189 = !DILocation(line: 517, column: 40, scope: !3190)
!3190 = distinct !DILexicalBlock(scope: !2931, file: !549, line: 517, column: 15)
!3191 = !DILocation(line: 517, column: 47, scope: !3190)
!3192 = !DILocation(line: 517, column: 18, scope: !3190)
!3193 = !DILocation(line: 521, column: 17, scope: !3194)
!3194 = distinct !DILexicalBlock(scope: !2931, file: !549, line: 521, column: 15)
!3195 = !DILocation(line: 521, column: 15, scope: !2931)
!3196 = !DILocation(line: 525, column: 11, scope: !2931)
!3197 = !DILocation(line: 537, column: 15, scope: !3198)
!3198 = distinct !DILexicalBlock(scope: !2931, file: !549, line: 536, column: 15)
!3199 = !DILocation(line: 544, column: 15, scope: !2931)
!3200 = !DILocation(line: 546, column: 19, scope: !3201)
!3201 = distinct !DILexicalBlock(scope: !3202, file: !549, line: 545, column: 13)
!3202 = distinct !DILexicalBlock(scope: !2931, file: !549, line: 544, column: 15)
!3203 = !DILocation(line: 549, column: 19, scope: !3204)
!3204 = distinct !DILexicalBlock(scope: !3201, file: !549, line: 549, column: 19)
!3205 = !DILocation(line: 549, column: 30, scope: !3204)
!3206 = !DILocation(line: 558, column: 15, scope: !3207)
!3207 = distinct !DILexicalBlock(scope: !3208, file: !549, line: 558, column: 15)
!3208 = distinct !DILexicalBlock(scope: !3201, file: !549, line: 558, column: 15)
!3209 = !DILocation(line: 558, column: 15, scope: !3208)
!3210 = !DILocation(line: 559, column: 15, scope: !3211)
!3211 = distinct !DILexicalBlock(scope: !3212, file: !549, line: 559, column: 15)
!3212 = distinct !DILexicalBlock(scope: !3201, file: !549, line: 559, column: 15)
!3213 = !DILocation(line: 559, column: 15, scope: !3212)
!3214 = !DILocation(line: 560, column: 15, scope: !3215)
!3215 = distinct !DILexicalBlock(scope: !3216, file: !549, line: 560, column: 15)
!3216 = distinct !DILexicalBlock(scope: !3201, file: !549, line: 560, column: 15)
!3217 = !DILocation(line: 560, column: 15, scope: !3216)
!3218 = !DILocation(line: 562, column: 13, scope: !3201)
!3219 = !DILocation(line: 602, column: 17, scope: !2934)
!3220 = !DILocation(line: 0, scope: !2934)
!3221 = !DILocation(line: 605, column: 29, scope: !3222)
!3222 = distinct !DILexicalBlock(scope: !2938, file: !549, line: 603, column: 15)
!3223 = !DILocation(line: 605, column: 27, scope: !3222)
!3224 = !DILocation(line: 606, column: 15, scope: !3222)
!3225 = !DILocation(line: 609, column: 17, scope: !2937)
!3226 = !DILocation(line: 0, scope: !2997, inlinedAt: !3227)
!3227 = distinct !DILocation(line: 609, column: 32, scope: !2937)
!3228 = !DILocation(line: 0, scope: !3005, inlinedAt: !3229)
!3229 = distinct !DILocation(line: 1137, column: 3, scope: !2997, inlinedAt: !3227)
!3230 = !DILocation(line: 59, column: 10, scope: !3005, inlinedAt: !3229)
!3231 = !DILocation(line: 613, column: 29, scope: !3232)
!3232 = distinct !DILexicalBlock(scope: !2937, file: !549, line: 613, column: 21)
!3233 = !DILocation(line: 613, column: 21, scope: !2937)
!3234 = !DILocation(line: 614, column: 29, scope: !3232)
!3235 = !DILocation(line: 614, column: 19, scope: !3232)
!3236 = !DILocation(line: 618, column: 21, scope: !2940)
!3237 = !DILocation(line: 620, column: 54, scope: !2940)
!3238 = !DILocation(line: 619, column: 36, scope: !2940)
!3239 = !DILocation(line: 621, column: 25, scope: !2940)
!3240 = !DILocation(line: 631, column: 38, scope: !3241)
!3241 = distinct !DILexicalBlock(scope: !2949, file: !549, line: 629, column: 23)
!3242 = !DILocation(line: 631, column: 48, scope: !3241)
!3243 = !DILocation(line: 626, column: 25, scope: !3244)
!3244 = distinct !DILexicalBlock(scope: !2950, file: !549, line: 624, column: 23)
!3245 = !DILocation(line: 631, column: 51, scope: !3241)
!3246 = !DILocation(line: 631, column: 25, scope: !3241)
!3247 = !DILocation(line: 632, column: 28, scope: !3241)
!3248 = !DILocation(line: 631, column: 34, scope: !3241)
!3249 = distinct !{!3249, !3246, !3247, !981}
!3250 = !DILocation(line: 0, scope: !2945)
!3251 = !DILocation(line: 646, column: 29, scope: !2947)
!3252 = !DILocation(line: 649, column: 39, scope: !3253)
!3253 = distinct !DILexicalBlock(scope: !2945, file: !549, line: 648, column: 29)
!3254 = !DILocation(line: 649, column: 31, scope: !3253)
!3255 = !DILocation(line: 648, column: 60, scope: !3253)
!3256 = !DILocation(line: 648, column: 50, scope: !3253)
!3257 = !DILocation(line: 648, column: 29, scope: !2945)
!3258 = distinct !{!3258, !3257, !3259, !981}
!3259 = !DILocation(line: 654, column: 33, scope: !2945)
!3260 = !DILocation(line: 657, column: 43, scope: !3261)
!3261 = distinct !DILexicalBlock(scope: !2948, file: !549, line: 657, column: 29)
!3262 = !DILocalVariable(name: "wc", arg: 1, scope: !3263, file: !3264, line: 865, type: !3267)
!3263 = distinct !DISubprogram(name: "c32isprint", scope: !3264, file: !3264, line: 865, type: !3265, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !3269)
!3264 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!3265 = !DISubroutineType(types: !3266)
!3266 = !{!87, !3267}
!3267 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !3268, line: 20, baseType: !78)
!3268 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!3269 = !{!3262}
!3270 = !DILocation(line: 0, scope: !3263, inlinedAt: !3271)
!3271 = distinct !DILocation(line: 657, column: 31, scope: !3261)
!3272 = !DILocation(line: 871, column: 10, scope: !3263, inlinedAt: !3271)
!3273 = !DILocation(line: 657, column: 31, scope: !3261)
!3274 = !DILocation(line: 664, column: 23, scope: !2940)
!3275 = !DILocation(line: 665, column: 19, scope: !2941)
!3276 = !DILocation(line: 666, column: 15, scope: !2938)
!3277 = !DILocation(line: 0, scope: !2938)
!3278 = !DILocation(line: 670, column: 19, scope: !2954)
!3279 = !DILocation(line: 670, column: 23, scope: !2954)
!3280 = !DILocation(line: 674, column: 33, scope: !2953)
!3281 = !DILocation(line: 0, scope: !2953)
!3282 = !DILocation(line: 676, column: 17, scope: !2953)
!3283 = !DILocation(line: 398, column: 12, scope: !2924)
!3284 = !DILocation(line: 678, column: 43, scope: !3285)
!3285 = distinct !DILexicalBlock(scope: !3286, file: !549, line: 678, column: 25)
!3286 = distinct !DILexicalBlock(scope: !3287, file: !549, line: 677, column: 19)
!3287 = distinct !DILexicalBlock(scope: !3288, file: !549, line: 676, column: 17)
!3288 = distinct !DILexicalBlock(scope: !2953, file: !549, line: 676, column: 17)
!3289 = !DILocation(line: 680, column: 25, scope: !3290)
!3290 = distinct !DILexicalBlock(scope: !3291, file: !549, line: 680, column: 25)
!3291 = distinct !DILexicalBlock(scope: !3285, file: !549, line: 679, column: 23)
!3292 = !DILocation(line: 680, column: 25, scope: !3293)
!3293 = distinct !DILexicalBlock(scope: !3290, file: !549, line: 680, column: 25)
!3294 = !DILocation(line: 680, column: 25, scope: !3295)
!3295 = distinct !DILexicalBlock(scope: !3296, file: !549, line: 680, column: 25)
!3296 = distinct !DILexicalBlock(scope: !3297, file: !549, line: 680, column: 25)
!3297 = distinct !DILexicalBlock(scope: !3293, file: !549, line: 680, column: 25)
!3298 = !DILocation(line: 680, column: 25, scope: !3296)
!3299 = !DILocation(line: 680, column: 25, scope: !3300)
!3300 = distinct !DILexicalBlock(scope: !3301, file: !549, line: 680, column: 25)
!3301 = distinct !DILexicalBlock(scope: !3297, file: !549, line: 680, column: 25)
!3302 = !DILocation(line: 680, column: 25, scope: !3301)
!3303 = !DILocation(line: 680, column: 25, scope: !3304)
!3304 = distinct !DILexicalBlock(scope: !3305, file: !549, line: 680, column: 25)
!3305 = distinct !DILexicalBlock(scope: !3297, file: !549, line: 680, column: 25)
!3306 = !DILocation(line: 680, column: 25, scope: !3305)
!3307 = !DILocation(line: 680, column: 25, scope: !3297)
!3308 = !DILocation(line: 680, column: 25, scope: !3309)
!3309 = distinct !DILexicalBlock(scope: !3310, file: !549, line: 680, column: 25)
!3310 = distinct !DILexicalBlock(scope: !3290, file: !549, line: 680, column: 25)
!3311 = !DILocation(line: 680, column: 25, scope: !3310)
!3312 = !DILocation(line: 681, column: 25, scope: !3313)
!3313 = distinct !DILexicalBlock(scope: !3314, file: !549, line: 681, column: 25)
!3314 = distinct !DILexicalBlock(scope: !3291, file: !549, line: 681, column: 25)
!3315 = !DILocation(line: 681, column: 25, scope: !3314)
!3316 = !DILocation(line: 682, column: 25, scope: !3317)
!3317 = distinct !DILexicalBlock(scope: !3318, file: !549, line: 682, column: 25)
!3318 = distinct !DILexicalBlock(scope: !3291, file: !549, line: 682, column: 25)
!3319 = !DILocation(line: 682, column: 25, scope: !3318)
!3320 = !DILocation(line: 683, column: 38, scope: !3291)
!3321 = !DILocation(line: 683, column: 33, scope: !3291)
!3322 = !DILocation(line: 684, column: 23, scope: !3291)
!3323 = !DILocation(line: 685, column: 30, scope: !3324)
!3324 = distinct !DILexicalBlock(scope: !3285, file: !549, line: 685, column: 30)
!3325 = !DILocation(line: 685, column: 30, scope: !3285)
!3326 = !DILocation(line: 687, column: 25, scope: !3327)
!3327 = distinct !DILexicalBlock(scope: !3328, file: !549, line: 687, column: 25)
!3328 = distinct !DILexicalBlock(scope: !3329, file: !549, line: 687, column: 25)
!3329 = distinct !DILexicalBlock(scope: !3324, file: !549, line: 686, column: 23)
!3330 = !DILocation(line: 687, column: 25, scope: !3328)
!3331 = !DILocation(line: 689, column: 23, scope: !3329)
!3332 = !DILocation(line: 690, column: 35, scope: !3333)
!3333 = distinct !DILexicalBlock(scope: !3286, file: !549, line: 690, column: 25)
!3334 = !DILocation(line: 690, column: 30, scope: !3333)
!3335 = !DILocation(line: 690, column: 25, scope: !3286)
!3336 = !DILocation(line: 692, column: 21, scope: !3337)
!3337 = distinct !DILexicalBlock(scope: !3338, file: !549, line: 692, column: 21)
!3338 = distinct !DILexicalBlock(scope: !3286, file: !549, line: 692, column: 21)
!3339 = !DILocation(line: 692, column: 21, scope: !3340)
!3340 = distinct !DILexicalBlock(scope: !3341, file: !549, line: 692, column: 21)
!3341 = distinct !DILexicalBlock(scope: !3342, file: !549, line: 692, column: 21)
!3342 = distinct !DILexicalBlock(scope: !3337, file: !549, line: 692, column: 21)
!3343 = !DILocation(line: 692, column: 21, scope: !3341)
!3344 = !DILocation(line: 692, column: 21, scope: !3345)
!3345 = distinct !DILexicalBlock(scope: !3346, file: !549, line: 692, column: 21)
!3346 = distinct !DILexicalBlock(scope: !3342, file: !549, line: 692, column: 21)
!3347 = !DILocation(line: 692, column: 21, scope: !3346)
!3348 = !DILocation(line: 692, column: 21, scope: !3342)
!3349 = !DILocation(line: 0, scope: !3286)
!3350 = !DILocation(line: 693, column: 21, scope: !3351)
!3351 = distinct !DILexicalBlock(scope: !3352, file: !549, line: 693, column: 21)
!3352 = distinct !DILexicalBlock(scope: !3286, file: !549, line: 693, column: 21)
!3353 = !DILocation(line: 693, column: 21, scope: !3352)
!3354 = !DILocation(line: 694, column: 25, scope: !3286)
!3355 = !DILocation(line: 676, column: 17, scope: !3287)
!3356 = distinct !{!3356, !3357, !3358}
!3357 = !DILocation(line: 676, column: 17, scope: !3288)
!3358 = !DILocation(line: 695, column: 19, scope: !3288)
!3359 = !DILocation(line: 409, column: 30, scope: !3075)
!3360 = !DILocation(line: 702, column: 34, scope: !3361)
!3361 = distinct !DILexicalBlock(scope: !2924, file: !549, line: 702, column: 11)
!3362 = !DILocation(line: 704, column: 14, scope: !3361)
!3363 = !DILocation(line: 705, column: 14, scope: !3361)
!3364 = !DILocation(line: 705, column: 35, scope: !3361)
!3365 = !DILocation(line: 705, column: 17, scope: !3361)
!3366 = !DILocation(line: 705, column: 47, scope: !3361)
!3367 = !DILocation(line: 705, column: 65, scope: !3361)
!3368 = !DILocation(line: 706, column: 11, scope: !3361)
!3369 = !DILocation(line: 702, column: 11, scope: !2924)
!3370 = !DILocation(line: 395, column: 15, scope: !2922)
!3371 = !DILocation(line: 709, column: 5, scope: !2924)
!3372 = !DILocation(line: 710, column: 7, scope: !3373)
!3373 = distinct !DILexicalBlock(scope: !2924, file: !549, line: 710, column: 7)
!3374 = !DILocation(line: 710, column: 7, scope: !3375)
!3375 = distinct !DILexicalBlock(scope: !3373, file: !549, line: 710, column: 7)
!3376 = !DILocation(line: 710, column: 7, scope: !3377)
!3377 = distinct !DILexicalBlock(scope: !3378, file: !549, line: 710, column: 7)
!3378 = distinct !DILexicalBlock(scope: !3379, file: !549, line: 710, column: 7)
!3379 = distinct !DILexicalBlock(scope: !3375, file: !549, line: 710, column: 7)
!3380 = !DILocation(line: 710, column: 7, scope: !3378)
!3381 = !DILocation(line: 710, column: 7, scope: !3382)
!3382 = distinct !DILexicalBlock(scope: !3383, file: !549, line: 710, column: 7)
!3383 = distinct !DILexicalBlock(scope: !3379, file: !549, line: 710, column: 7)
!3384 = !DILocation(line: 710, column: 7, scope: !3383)
!3385 = !DILocation(line: 710, column: 7, scope: !3386)
!3386 = distinct !DILexicalBlock(scope: !3387, file: !549, line: 710, column: 7)
!3387 = distinct !DILexicalBlock(scope: !3379, file: !549, line: 710, column: 7)
!3388 = !DILocation(line: 710, column: 7, scope: !3387)
!3389 = !DILocation(line: 710, column: 7, scope: !3379)
!3390 = !DILocation(line: 710, column: 7, scope: !3391)
!3391 = distinct !DILexicalBlock(scope: !3392, file: !549, line: 710, column: 7)
!3392 = distinct !DILexicalBlock(scope: !3373, file: !549, line: 710, column: 7)
!3393 = !DILocation(line: 710, column: 7, scope: !3392)
!3394 = !DILocation(line: 712, column: 5, scope: !2924)
!3395 = !DILocation(line: 713, column: 7, scope: !3396)
!3396 = distinct !DILexicalBlock(scope: !3397, file: !549, line: 713, column: 7)
!3397 = distinct !DILexicalBlock(scope: !2924, file: !549, line: 713, column: 7)
!3398 = !DILocation(line: 417, column: 21, scope: !2924)
!3399 = !DILocation(line: 713, column: 7, scope: !3400)
!3400 = distinct !DILexicalBlock(scope: !3401, file: !549, line: 713, column: 7)
!3401 = distinct !DILexicalBlock(scope: !3402, file: !549, line: 713, column: 7)
!3402 = distinct !DILexicalBlock(scope: !3396, file: !549, line: 713, column: 7)
!3403 = !DILocation(line: 713, column: 7, scope: !3401)
!3404 = !DILocation(line: 713, column: 7, scope: !3405)
!3405 = distinct !DILexicalBlock(scope: !3406, file: !549, line: 713, column: 7)
!3406 = distinct !DILexicalBlock(scope: !3402, file: !549, line: 713, column: 7)
!3407 = !DILocation(line: 713, column: 7, scope: !3406)
!3408 = !DILocation(line: 713, column: 7, scope: !3402)
!3409 = !DILocation(line: 714, column: 7, scope: !3410)
!3410 = distinct !DILexicalBlock(scope: !3411, file: !549, line: 714, column: 7)
!3411 = distinct !DILexicalBlock(scope: !2924, file: !549, line: 714, column: 7)
!3412 = !DILocation(line: 714, column: 7, scope: !3411)
!3413 = !DILocation(line: 716, column: 13, scope: !3414)
!3414 = distinct !DILexicalBlock(scope: !2924, file: !549, line: 716, column: 11)
!3415 = !DILocation(line: 716, column: 11, scope: !2924)
!3416 = !DILocation(line: 718, column: 5, scope: !2925)
!3417 = !DILocation(line: 395, column: 82, scope: !2925)
!3418 = !DILocation(line: 395, column: 3, scope: !2925)
!3419 = distinct !{!3419, !3071, !3420, !981}
!3420 = !DILocation(line: 718, column: 5, scope: !2922)
!3421 = !DILocation(line: 720, column: 11, scope: !3422)
!3422 = distinct !DILexicalBlock(scope: !2890, file: !549, line: 720, column: 7)
!3423 = !DILocation(line: 720, column: 16, scope: !3422)
!3424 = !DILocation(line: 728, column: 51, scope: !3425)
!3425 = distinct !DILexicalBlock(scope: !2890, file: !549, line: 728, column: 7)
!3426 = !DILocation(line: 731, column: 11, scope: !3427)
!3427 = distinct !DILexicalBlock(scope: !3428, file: !549, line: 731, column: 11)
!3428 = distinct !DILexicalBlock(scope: !3425, file: !549, line: 730, column: 5)
!3429 = !DILocation(line: 731, column: 11, scope: !3428)
!3430 = !DILocation(line: 732, column: 16, scope: !3427)
!3431 = !DILocation(line: 732, column: 9, scope: !3427)
!3432 = !DILocation(line: 736, column: 18, scope: !3433)
!3433 = distinct !DILexicalBlock(scope: !3427, file: !549, line: 736, column: 16)
!3434 = !DILocation(line: 736, column: 29, scope: !3433)
!3435 = !DILocation(line: 745, column: 7, scope: !3436)
!3436 = distinct !DILexicalBlock(scope: !2890, file: !549, line: 745, column: 7)
!3437 = !DILocation(line: 745, column: 20, scope: !3436)
!3438 = !DILocation(line: 746, column: 12, scope: !3439)
!3439 = distinct !DILexicalBlock(scope: !3440, file: !549, line: 746, column: 5)
!3440 = distinct !DILexicalBlock(scope: !3436, file: !549, line: 746, column: 5)
!3441 = !DILocation(line: 746, column: 5, scope: !3440)
!3442 = !DILocation(line: 747, column: 7, scope: !3443)
!3443 = distinct !DILexicalBlock(scope: !3444, file: !549, line: 747, column: 7)
!3444 = distinct !DILexicalBlock(scope: !3439, file: !549, line: 747, column: 7)
!3445 = !DILocation(line: 747, column: 7, scope: !3444)
!3446 = !DILocation(line: 746, column: 39, scope: !3439)
!3447 = distinct !{!3447, !3441, !3448, !981}
!3448 = !DILocation(line: 747, column: 7, scope: !3440)
!3449 = !DILocation(line: 749, column: 11, scope: !3450)
!3450 = distinct !DILexicalBlock(scope: !2890, file: !549, line: 749, column: 7)
!3451 = !DILocation(line: 749, column: 7, scope: !2890)
!3452 = !DILocation(line: 750, column: 5, scope: !3450)
!3453 = !DILocation(line: 750, column: 17, scope: !3450)
!3454 = !DILocation(line: 753, column: 2, scope: !2890)
!3455 = !DILocation(line: 756, column: 51, scope: !3456)
!3456 = distinct !DILexicalBlock(scope: !2890, file: !549, line: 756, column: 7)
!3457 = !DILocation(line: 756, column: 21, scope: !3456)
!3458 = !DILocation(line: 760, column: 42, scope: !2890)
!3459 = !DILocation(line: 758, column: 10, scope: !2890)
!3460 = !DILocation(line: 758, column: 3, scope: !2890)
!3461 = !DILocation(line: 762, column: 1, scope: !2890)
!3462 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1058, file: !1058, line: 98, type: !3463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3463 = !DISubroutineType(types: !3464)
!3464 = !{!133}
!3465 = !DISubprogram(name: "strlen", scope: !1054, file: !1054, line: 407, type: !3466, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3466 = !DISubroutineType(types: !3467)
!3467 = !{!135, !136}
!3468 = !DISubprogram(name: "iswprint", scope: !3469, file: !3469, line: 120, type: !3265, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3469 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!3470 = distinct !DISubprogram(name: "quotearg_alloc", scope: !549, file: !549, line: 788, type: !3471, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !3473)
!3471 = !DISubroutineType(types: !3472)
!3472 = !{!130, !136, !133, !2783}
!3473 = !{!3474, !3475, !3476}
!3474 = !DILocalVariable(name: "arg", arg: 1, scope: !3470, file: !549, line: 788, type: !136)
!3475 = !DILocalVariable(name: "argsize", arg: 2, scope: !3470, file: !549, line: 788, type: !133)
!3476 = !DILocalVariable(name: "o", arg: 3, scope: !3470, file: !549, line: 789, type: !2783)
!3477 = !DILocation(line: 0, scope: !3470)
!3478 = !DILocalVariable(name: "arg", arg: 1, scope: !3479, file: !549, line: 801, type: !136)
!3479 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !549, file: !549, line: 801, type: !3480, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !3482)
!3480 = !DISubroutineType(types: !3481)
!3481 = !{!130, !136, !133, !791, !2783}
!3482 = !{!3478, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490}
!3483 = !DILocalVariable(name: "argsize", arg: 2, scope: !3479, file: !549, line: 801, type: !133)
!3484 = !DILocalVariable(name: "size", arg: 3, scope: !3479, file: !549, line: 801, type: !791)
!3485 = !DILocalVariable(name: "o", arg: 4, scope: !3479, file: !549, line: 802, type: !2783)
!3486 = !DILocalVariable(name: "p", scope: !3479, file: !549, line: 804, type: !2783)
!3487 = !DILocalVariable(name: "saved_errno", scope: !3479, file: !549, line: 805, type: !87)
!3488 = !DILocalVariable(name: "flags", scope: !3479, file: !549, line: 807, type: !87)
!3489 = !DILocalVariable(name: "bufsize", scope: !3479, file: !549, line: 808, type: !133)
!3490 = !DILocalVariable(name: "buf", scope: !3479, file: !549, line: 812, type: !130)
!3491 = !DILocation(line: 0, scope: !3479, inlinedAt: !3492)
!3492 = distinct !DILocation(line: 791, column: 10, scope: !3470)
!3493 = !DILocation(line: 804, column: 37, scope: !3479, inlinedAt: !3492)
!3494 = !DILocation(line: 805, column: 21, scope: !3479, inlinedAt: !3492)
!3495 = !DILocation(line: 807, column: 18, scope: !3479, inlinedAt: !3492)
!3496 = !DILocation(line: 807, column: 24, scope: !3479, inlinedAt: !3492)
!3497 = !DILocation(line: 808, column: 72, scope: !3479, inlinedAt: !3492)
!3498 = !DILocation(line: 809, column: 56, scope: !3479, inlinedAt: !3492)
!3499 = !DILocation(line: 810, column: 49, scope: !3479, inlinedAt: !3492)
!3500 = !DILocation(line: 811, column: 49, scope: !3479, inlinedAt: !3492)
!3501 = !DILocation(line: 808, column: 20, scope: !3479, inlinedAt: !3492)
!3502 = !DILocation(line: 811, column: 62, scope: !3479, inlinedAt: !3492)
!3503 = !DILocation(line: 812, column: 15, scope: !3479, inlinedAt: !3492)
!3504 = !DILocation(line: 813, column: 60, scope: !3479, inlinedAt: !3492)
!3505 = !DILocation(line: 815, column: 32, scope: !3479, inlinedAt: !3492)
!3506 = !DILocation(line: 815, column: 47, scope: !3479, inlinedAt: !3492)
!3507 = !DILocation(line: 813, column: 3, scope: !3479, inlinedAt: !3492)
!3508 = !DILocation(line: 816, column: 9, scope: !3479, inlinedAt: !3492)
!3509 = !DILocation(line: 791, column: 3, scope: !3470)
!3510 = !DILocation(line: 0, scope: !3479)
!3511 = !DILocation(line: 804, column: 37, scope: !3479)
!3512 = !DILocation(line: 805, column: 21, scope: !3479)
!3513 = !DILocation(line: 807, column: 18, scope: !3479)
!3514 = !DILocation(line: 807, column: 27, scope: !3479)
!3515 = !DILocation(line: 807, column: 24, scope: !3479)
!3516 = !DILocation(line: 808, column: 72, scope: !3479)
!3517 = !DILocation(line: 809, column: 56, scope: !3479)
!3518 = !DILocation(line: 810, column: 49, scope: !3479)
!3519 = !DILocation(line: 811, column: 49, scope: !3479)
!3520 = !DILocation(line: 808, column: 20, scope: !3479)
!3521 = !DILocation(line: 811, column: 62, scope: !3479)
!3522 = !DILocation(line: 812, column: 15, scope: !3479)
!3523 = !DILocation(line: 813, column: 60, scope: !3479)
!3524 = !DILocation(line: 815, column: 32, scope: !3479)
!3525 = !DILocation(line: 815, column: 47, scope: !3479)
!3526 = !DILocation(line: 813, column: 3, scope: !3479)
!3527 = !DILocation(line: 816, column: 9, scope: !3479)
!3528 = !DILocation(line: 817, column: 7, scope: !3479)
!3529 = !DILocation(line: 818, column: 11, scope: !3530)
!3530 = distinct !DILexicalBlock(scope: !3479, file: !549, line: 817, column: 7)
!3531 = !DILocation(line: 818, column: 5, scope: !3530)
!3532 = !DILocation(line: 819, column: 3, scope: !3479)
!3533 = distinct !DISubprogram(name: "quotearg_free", scope: !549, file: !549, line: 837, type: !505, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !3534)
!3534 = !{!3535, !3536}
!3535 = !DILocalVariable(name: "sv", scope: !3533, file: !549, line: 839, type: !633)
!3536 = !DILocalVariable(name: "i", scope: !3537, file: !549, line: 840, type: !87)
!3537 = distinct !DILexicalBlock(scope: !3533, file: !549, line: 840, column: 3)
!3538 = !DILocation(line: 839, column: 24, scope: !3533)
!3539 = !DILocation(line: 0, scope: !3533)
!3540 = !DILocation(line: 0, scope: !3537)
!3541 = !DILocation(line: 840, column: 21, scope: !3542)
!3542 = distinct !DILexicalBlock(scope: !3537, file: !549, line: 840, column: 3)
!3543 = !DILocation(line: 840, column: 3, scope: !3537)
!3544 = !DILocation(line: 842, column: 13, scope: !3545)
!3545 = distinct !DILexicalBlock(scope: !3533, file: !549, line: 842, column: 7)
!3546 = !{!3547, !864, i64 8}
!3547 = !{!"slotvec", !1303, i64 0, !864, i64 8}
!3548 = !DILocation(line: 842, column: 17, scope: !3545)
!3549 = !DILocation(line: 842, column: 7, scope: !3533)
!3550 = !DILocation(line: 841, column: 17, scope: !3542)
!3551 = !DILocation(line: 841, column: 5, scope: !3542)
!3552 = !DILocation(line: 840, column: 32, scope: !3542)
!3553 = distinct !{!3553, !3543, !3554, !981}
!3554 = !DILocation(line: 841, column: 20, scope: !3537)
!3555 = !DILocation(line: 844, column: 7, scope: !3556)
!3556 = distinct !DILexicalBlock(scope: !3545, file: !549, line: 843, column: 5)
!3557 = !DILocation(line: 845, column: 21, scope: !3556)
!3558 = !{!3547, !1303, i64 0}
!3559 = !DILocation(line: 846, column: 20, scope: !3556)
!3560 = !DILocation(line: 847, column: 5, scope: !3556)
!3561 = !DILocation(line: 848, column: 10, scope: !3562)
!3562 = distinct !DILexicalBlock(scope: !3533, file: !549, line: 848, column: 7)
!3563 = !DILocation(line: 848, column: 7, scope: !3533)
!3564 = !DILocation(line: 850, column: 7, scope: !3565)
!3565 = distinct !DILexicalBlock(scope: !3562, file: !549, line: 849, column: 5)
!3566 = !DILocation(line: 851, column: 15, scope: !3565)
!3567 = !DILocation(line: 852, column: 5, scope: !3565)
!3568 = !DILocation(line: 853, column: 10, scope: !3533)
!3569 = !DILocation(line: 854, column: 1, scope: !3533)
!3570 = distinct !DISubprogram(name: "quotearg_n", scope: !549, file: !549, line: 919, type: !1051, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !3571)
!3571 = !{!3572, !3573}
!3572 = !DILocalVariable(name: "n", arg: 1, scope: !3570, file: !549, line: 919, type: !87)
!3573 = !DILocalVariable(name: "arg", arg: 2, scope: !3570, file: !549, line: 919, type: !136)
!3574 = !DILocation(line: 0, scope: !3570)
!3575 = !DILocation(line: 921, column: 10, scope: !3570)
!3576 = !DILocation(line: 921, column: 3, scope: !3570)
!3577 = distinct !DISubprogram(name: "quotearg_n_options", scope: !549, file: !549, line: 866, type: !3578, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !3580)
!3578 = !DISubroutineType(types: !3579)
!3579 = !{!130, !87, !136, !133, !2783}
!3580 = !{!3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3591, !3592, !3594, !3595, !3596}
!3581 = !DILocalVariable(name: "n", arg: 1, scope: !3577, file: !549, line: 866, type: !87)
!3582 = !DILocalVariable(name: "arg", arg: 2, scope: !3577, file: !549, line: 866, type: !136)
!3583 = !DILocalVariable(name: "argsize", arg: 3, scope: !3577, file: !549, line: 866, type: !133)
!3584 = !DILocalVariable(name: "options", arg: 4, scope: !3577, file: !549, line: 867, type: !2783)
!3585 = !DILocalVariable(name: "saved_errno", scope: !3577, file: !549, line: 869, type: !87)
!3586 = !DILocalVariable(name: "sv", scope: !3577, file: !549, line: 871, type: !633)
!3587 = !DILocalVariable(name: "nslots_max", scope: !3577, file: !549, line: 873, type: !87)
!3588 = !DILocalVariable(name: "preallocated", scope: !3589, file: !549, line: 879, type: !196)
!3589 = distinct !DILexicalBlock(scope: !3590, file: !549, line: 878, column: 5)
!3590 = distinct !DILexicalBlock(scope: !3577, file: !549, line: 877, column: 7)
!3591 = !DILocalVariable(name: "new_nslots", scope: !3589, file: !549, line: 880, type: !804)
!3592 = !DILocalVariable(name: "size", scope: !3593, file: !549, line: 891, type: !133)
!3593 = distinct !DILexicalBlock(scope: !3577, file: !549, line: 890, column: 3)
!3594 = !DILocalVariable(name: "val", scope: !3593, file: !549, line: 892, type: !130)
!3595 = !DILocalVariable(name: "flags", scope: !3593, file: !549, line: 894, type: !87)
!3596 = !DILocalVariable(name: "qsize", scope: !3593, file: !549, line: 895, type: !133)
!3597 = distinct !DIAssignID()
!3598 = !DILocation(line: 0, scope: !3589)
!3599 = !DILocation(line: 0, scope: !3577)
!3600 = !DILocation(line: 869, column: 21, scope: !3577)
!3601 = !DILocation(line: 871, column: 24, scope: !3577)
!3602 = !DILocation(line: 874, column: 17, scope: !3603)
!3603 = distinct !DILexicalBlock(scope: !3577, file: !549, line: 874, column: 7)
!3604 = !DILocation(line: 875, column: 5, scope: !3603)
!3605 = !DILocation(line: 877, column: 7, scope: !3590)
!3606 = !DILocation(line: 877, column: 14, scope: !3590)
!3607 = !DILocation(line: 877, column: 7, scope: !3577)
!3608 = !DILocation(line: 879, column: 31, scope: !3589)
!3609 = !DILocation(line: 880, column: 7, scope: !3589)
!3610 = !DILocation(line: 880, column: 26, scope: !3589)
!3611 = !DILocation(line: 880, column: 13, scope: !3589)
!3612 = distinct !DIAssignID()
!3613 = !DILocation(line: 882, column: 31, scope: !3589)
!3614 = !DILocation(line: 883, column: 33, scope: !3589)
!3615 = !DILocation(line: 883, column: 42, scope: !3589)
!3616 = !DILocation(line: 883, column: 31, scope: !3589)
!3617 = !DILocation(line: 882, column: 22, scope: !3589)
!3618 = !DILocation(line: 882, column: 15, scope: !3589)
!3619 = !DILocation(line: 884, column: 11, scope: !3589)
!3620 = !DILocation(line: 885, column: 15, scope: !3621)
!3621 = distinct !DILexicalBlock(scope: !3589, file: !549, line: 884, column: 11)
!3622 = !{i64 0, i64 8, !1321, i64 8, i64 8, !863}
!3623 = !DILocation(line: 885, column: 9, scope: !3621)
!3624 = !DILocation(line: 886, column: 20, scope: !3589)
!3625 = !DILocation(line: 886, column: 18, scope: !3589)
!3626 = !DILocation(line: 886, column: 32, scope: !3589)
!3627 = !DILocation(line: 886, column: 43, scope: !3589)
!3628 = !DILocation(line: 886, column: 53, scope: !3589)
!3629 = !DILocation(line: 0, scope: !3005, inlinedAt: !3630)
!3630 = distinct !DILocation(line: 886, column: 7, scope: !3589)
!3631 = !DILocation(line: 59, column: 10, scope: !3005, inlinedAt: !3630)
!3632 = !DILocation(line: 887, column: 16, scope: !3589)
!3633 = !DILocation(line: 887, column: 14, scope: !3589)
!3634 = !DILocation(line: 888, column: 5, scope: !3590)
!3635 = !DILocation(line: 888, column: 5, scope: !3589)
!3636 = !DILocation(line: 891, column: 19, scope: !3593)
!3637 = !DILocation(line: 891, column: 25, scope: !3593)
!3638 = !DILocation(line: 0, scope: !3593)
!3639 = !DILocation(line: 892, column: 23, scope: !3593)
!3640 = !DILocation(line: 894, column: 26, scope: !3593)
!3641 = !DILocation(line: 894, column: 32, scope: !3593)
!3642 = !DILocation(line: 896, column: 55, scope: !3593)
!3643 = !DILocation(line: 897, column: 55, scope: !3593)
!3644 = !DILocation(line: 898, column: 55, scope: !3593)
!3645 = !DILocation(line: 899, column: 55, scope: !3593)
!3646 = !DILocation(line: 895, column: 20, scope: !3593)
!3647 = !DILocation(line: 901, column: 14, scope: !3648)
!3648 = distinct !DILexicalBlock(scope: !3593, file: !549, line: 901, column: 9)
!3649 = !DILocation(line: 901, column: 9, scope: !3593)
!3650 = !DILocation(line: 903, column: 35, scope: !3651)
!3651 = distinct !DILexicalBlock(scope: !3648, file: !549, line: 902, column: 7)
!3652 = !DILocation(line: 903, column: 20, scope: !3651)
!3653 = !DILocation(line: 904, column: 17, scope: !3654)
!3654 = distinct !DILexicalBlock(scope: !3651, file: !549, line: 904, column: 13)
!3655 = !DILocation(line: 904, column: 13, scope: !3651)
!3656 = !DILocation(line: 905, column: 11, scope: !3654)
!3657 = !DILocation(line: 906, column: 27, scope: !3651)
!3658 = !DILocation(line: 906, column: 19, scope: !3651)
!3659 = !DILocation(line: 907, column: 69, scope: !3651)
!3660 = !DILocation(line: 909, column: 44, scope: !3651)
!3661 = !DILocation(line: 910, column: 44, scope: !3651)
!3662 = !DILocation(line: 907, column: 9, scope: !3651)
!3663 = !DILocation(line: 911, column: 7, scope: !3651)
!3664 = !DILocation(line: 913, column: 11, scope: !3593)
!3665 = !DILocation(line: 914, column: 5, scope: !3593)
!3666 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !549, file: !549, line: 925, type: !3667, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !3669)
!3667 = !DISubroutineType(types: !3668)
!3668 = !{!130, !87, !136, !133}
!3669 = !{!3670, !3671, !3672}
!3670 = !DILocalVariable(name: "n", arg: 1, scope: !3666, file: !549, line: 925, type: !87)
!3671 = !DILocalVariable(name: "arg", arg: 2, scope: !3666, file: !549, line: 925, type: !136)
!3672 = !DILocalVariable(name: "argsize", arg: 3, scope: !3666, file: !549, line: 925, type: !133)
!3673 = !DILocation(line: 0, scope: !3666)
!3674 = !DILocation(line: 927, column: 10, scope: !3666)
!3675 = !DILocation(line: 927, column: 3, scope: !3666)
!3676 = distinct !DISubprogram(name: "quotearg", scope: !549, file: !549, line: 931, type: !1060, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !3677)
!3677 = !{!3678}
!3678 = !DILocalVariable(name: "arg", arg: 1, scope: !3676, file: !549, line: 931, type: !136)
!3679 = !DILocation(line: 0, scope: !3676)
!3680 = !DILocation(line: 0, scope: !3570, inlinedAt: !3681)
!3681 = distinct !DILocation(line: 933, column: 10, scope: !3676)
!3682 = !DILocation(line: 921, column: 10, scope: !3570, inlinedAt: !3681)
!3683 = !DILocation(line: 933, column: 3, scope: !3676)
!3684 = distinct !DISubprogram(name: "quotearg_mem", scope: !549, file: !549, line: 937, type: !3685, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !3687)
!3685 = !DISubroutineType(types: !3686)
!3686 = !{!130, !136, !133}
!3687 = !{!3688, !3689}
!3688 = !DILocalVariable(name: "arg", arg: 1, scope: !3684, file: !549, line: 937, type: !136)
!3689 = !DILocalVariable(name: "argsize", arg: 2, scope: !3684, file: !549, line: 937, type: !133)
!3690 = !DILocation(line: 0, scope: !3684)
!3691 = !DILocation(line: 0, scope: !3666, inlinedAt: !3692)
!3692 = distinct !DILocation(line: 939, column: 10, scope: !3684)
!3693 = !DILocation(line: 927, column: 10, scope: !3666, inlinedAt: !3692)
!3694 = !DILocation(line: 939, column: 3, scope: !3684)
!3695 = distinct !DISubprogram(name: "quotearg_n_style", scope: !549, file: !549, line: 943, type: !3696, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !3698)
!3696 = !DISubroutineType(types: !3697)
!3697 = !{!130, !87, !572, !136}
!3698 = !{!3699, !3700, !3701, !3702}
!3699 = !DILocalVariable(name: "n", arg: 1, scope: !3695, file: !549, line: 943, type: !87)
!3700 = !DILocalVariable(name: "s", arg: 2, scope: !3695, file: !549, line: 943, type: !572)
!3701 = !DILocalVariable(name: "arg", arg: 3, scope: !3695, file: !549, line: 943, type: !136)
!3702 = !DILocalVariable(name: "o", scope: !3695, file: !549, line: 945, type: !2784)
!3703 = distinct !DIAssignID()
!3704 = !DILocation(line: 0, scope: !3695)
!3705 = !DILocation(line: 945, column: 3, scope: !3695)
!3706 = !{!3707}
!3707 = distinct !{!3707, !3708, !"quoting_options_from_style: argument 0"}
!3708 = distinct !{!3708, !"quoting_options_from_style"}
!3709 = !DILocation(line: 945, column: 36, scope: !3695)
!3710 = !DILocalVariable(name: "style", arg: 1, scope: !3711, file: !549, line: 183, type: !572)
!3711 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !549, file: !549, line: 183, type: !3712, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !3714)
!3712 = !DISubroutineType(types: !3713)
!3713 = !{!587, !572}
!3714 = !{!3710, !3715}
!3715 = !DILocalVariable(name: "o", scope: !3711, file: !549, line: 185, type: !587)
!3716 = !DILocation(line: 0, scope: !3711, inlinedAt: !3717)
!3717 = distinct !DILocation(line: 945, column: 36, scope: !3695)
!3718 = !DILocation(line: 185, column: 26, scope: !3711, inlinedAt: !3717)
!3719 = distinct !DIAssignID()
!3720 = !DILocation(line: 186, column: 13, scope: !3721, inlinedAt: !3717)
!3721 = distinct !DILexicalBlock(scope: !3711, file: !549, line: 186, column: 7)
!3722 = !DILocation(line: 186, column: 7, scope: !3711, inlinedAt: !3717)
!3723 = !DILocation(line: 187, column: 5, scope: !3721, inlinedAt: !3717)
!3724 = !DILocation(line: 188, column: 11, scope: !3711, inlinedAt: !3717)
!3725 = distinct !DIAssignID()
!3726 = !DILocation(line: 946, column: 10, scope: !3695)
!3727 = !DILocation(line: 947, column: 1, scope: !3695)
!3728 = !DILocation(line: 946, column: 3, scope: !3695)
!3729 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !549, file: !549, line: 950, type: !3730, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !3732)
!3730 = !DISubroutineType(types: !3731)
!3731 = !{!130, !87, !572, !136, !133}
!3732 = !{!3733, !3734, !3735, !3736, !3737}
!3733 = !DILocalVariable(name: "n", arg: 1, scope: !3729, file: !549, line: 950, type: !87)
!3734 = !DILocalVariable(name: "s", arg: 2, scope: !3729, file: !549, line: 950, type: !572)
!3735 = !DILocalVariable(name: "arg", arg: 3, scope: !3729, file: !549, line: 951, type: !136)
!3736 = !DILocalVariable(name: "argsize", arg: 4, scope: !3729, file: !549, line: 951, type: !133)
!3737 = !DILocalVariable(name: "o", scope: !3729, file: !549, line: 953, type: !2784)
!3738 = distinct !DIAssignID()
!3739 = !DILocation(line: 0, scope: !3729)
!3740 = !DILocation(line: 953, column: 3, scope: !3729)
!3741 = !{!3742}
!3742 = distinct !{!3742, !3743, !"quoting_options_from_style: argument 0"}
!3743 = distinct !{!3743, !"quoting_options_from_style"}
!3744 = !DILocation(line: 953, column: 36, scope: !3729)
!3745 = !DILocation(line: 0, scope: !3711, inlinedAt: !3746)
!3746 = distinct !DILocation(line: 953, column: 36, scope: !3729)
!3747 = !DILocation(line: 185, column: 26, scope: !3711, inlinedAt: !3746)
!3748 = distinct !DIAssignID()
!3749 = !DILocation(line: 186, column: 13, scope: !3721, inlinedAt: !3746)
!3750 = !DILocation(line: 186, column: 7, scope: !3711, inlinedAt: !3746)
!3751 = !DILocation(line: 187, column: 5, scope: !3721, inlinedAt: !3746)
!3752 = !DILocation(line: 188, column: 11, scope: !3711, inlinedAt: !3746)
!3753 = distinct !DIAssignID()
!3754 = !DILocation(line: 954, column: 10, scope: !3729)
!3755 = !DILocation(line: 955, column: 1, scope: !3729)
!3756 = !DILocation(line: 954, column: 3, scope: !3729)
!3757 = distinct !DISubprogram(name: "quotearg_style", scope: !549, file: !549, line: 958, type: !3758, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !3760)
!3758 = !DISubroutineType(types: !3759)
!3759 = !{!130, !572, !136}
!3760 = !{!3761, !3762}
!3761 = !DILocalVariable(name: "s", arg: 1, scope: !3757, file: !549, line: 958, type: !572)
!3762 = !DILocalVariable(name: "arg", arg: 2, scope: !3757, file: !549, line: 958, type: !136)
!3763 = distinct !DIAssignID()
!3764 = !DILocation(line: 0, scope: !3757)
!3765 = !DILocation(line: 0, scope: !3695, inlinedAt: !3766)
!3766 = distinct !DILocation(line: 960, column: 10, scope: !3757)
!3767 = !DILocation(line: 945, column: 3, scope: !3695, inlinedAt: !3766)
!3768 = !{!3769}
!3769 = distinct !{!3769, !3770, !"quoting_options_from_style: argument 0"}
!3770 = distinct !{!3770, !"quoting_options_from_style"}
!3771 = !DILocation(line: 945, column: 36, scope: !3695, inlinedAt: !3766)
!3772 = !DILocation(line: 0, scope: !3711, inlinedAt: !3773)
!3773 = distinct !DILocation(line: 945, column: 36, scope: !3695, inlinedAt: !3766)
!3774 = !DILocation(line: 185, column: 26, scope: !3711, inlinedAt: !3773)
!3775 = distinct !DIAssignID()
!3776 = !DILocation(line: 186, column: 13, scope: !3721, inlinedAt: !3773)
!3777 = !DILocation(line: 186, column: 7, scope: !3711, inlinedAt: !3773)
!3778 = !DILocation(line: 187, column: 5, scope: !3721, inlinedAt: !3773)
!3779 = !DILocation(line: 188, column: 11, scope: !3711, inlinedAt: !3773)
!3780 = distinct !DIAssignID()
!3781 = !DILocation(line: 946, column: 10, scope: !3695, inlinedAt: !3766)
!3782 = !DILocation(line: 947, column: 1, scope: !3695, inlinedAt: !3766)
!3783 = !DILocation(line: 960, column: 3, scope: !3757)
!3784 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !549, file: !549, line: 964, type: !3785, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !3787)
!3785 = !DISubroutineType(types: !3786)
!3786 = !{!130, !572, !136, !133}
!3787 = !{!3788, !3789, !3790}
!3788 = !DILocalVariable(name: "s", arg: 1, scope: !3784, file: !549, line: 964, type: !572)
!3789 = !DILocalVariable(name: "arg", arg: 2, scope: !3784, file: !549, line: 964, type: !136)
!3790 = !DILocalVariable(name: "argsize", arg: 3, scope: !3784, file: !549, line: 964, type: !133)
!3791 = distinct !DIAssignID()
!3792 = !DILocation(line: 0, scope: !3784)
!3793 = !DILocation(line: 0, scope: !3729, inlinedAt: !3794)
!3794 = distinct !DILocation(line: 966, column: 10, scope: !3784)
!3795 = !DILocation(line: 953, column: 3, scope: !3729, inlinedAt: !3794)
!3796 = !{!3797}
!3797 = distinct !{!3797, !3798, !"quoting_options_from_style: argument 0"}
!3798 = distinct !{!3798, !"quoting_options_from_style"}
!3799 = !DILocation(line: 953, column: 36, scope: !3729, inlinedAt: !3794)
!3800 = !DILocation(line: 0, scope: !3711, inlinedAt: !3801)
!3801 = distinct !DILocation(line: 953, column: 36, scope: !3729, inlinedAt: !3794)
!3802 = !DILocation(line: 185, column: 26, scope: !3711, inlinedAt: !3801)
!3803 = distinct !DIAssignID()
!3804 = !DILocation(line: 186, column: 13, scope: !3721, inlinedAt: !3801)
!3805 = !DILocation(line: 186, column: 7, scope: !3711, inlinedAt: !3801)
!3806 = !DILocation(line: 187, column: 5, scope: !3721, inlinedAt: !3801)
!3807 = !DILocation(line: 188, column: 11, scope: !3711, inlinedAt: !3801)
!3808 = distinct !DIAssignID()
!3809 = !DILocation(line: 954, column: 10, scope: !3729, inlinedAt: !3794)
!3810 = !DILocation(line: 955, column: 1, scope: !3729, inlinedAt: !3794)
!3811 = !DILocation(line: 966, column: 3, scope: !3784)
!3812 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !549, file: !549, line: 970, type: !3813, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !3815)
!3813 = !DISubroutineType(types: !3814)
!3814 = !{!130, !136, !133, !4}
!3815 = !{!3816, !3817, !3818, !3819}
!3816 = !DILocalVariable(name: "arg", arg: 1, scope: !3812, file: !549, line: 970, type: !136)
!3817 = !DILocalVariable(name: "argsize", arg: 2, scope: !3812, file: !549, line: 970, type: !133)
!3818 = !DILocalVariable(name: "ch", arg: 3, scope: !3812, file: !549, line: 970, type: !4)
!3819 = !DILocalVariable(name: "options", scope: !3812, file: !549, line: 972, type: !587)
!3820 = distinct !DIAssignID()
!3821 = !DILocation(line: 0, scope: !3812)
!3822 = !DILocation(line: 972, column: 3, scope: !3812)
!3823 = !DILocation(line: 973, column: 13, scope: !3812)
!3824 = !{i64 0, i64 4, !934, i64 4, i64 4, !934, i64 8, i64 32, !943, i64 40, i64 8, !863, i64 48, i64 8, !863}
!3825 = distinct !DIAssignID()
!3826 = !DILocation(line: 0, scope: !2803, inlinedAt: !3827)
!3827 = distinct !DILocation(line: 974, column: 3, scope: !3812)
!3828 = !DILocation(line: 147, column: 41, scope: !2803, inlinedAt: !3827)
!3829 = !DILocation(line: 147, column: 62, scope: !2803, inlinedAt: !3827)
!3830 = !DILocation(line: 147, column: 57, scope: !2803, inlinedAt: !3827)
!3831 = !DILocation(line: 148, column: 15, scope: !2803, inlinedAt: !3827)
!3832 = !DILocation(line: 149, column: 21, scope: !2803, inlinedAt: !3827)
!3833 = !DILocation(line: 149, column: 24, scope: !2803, inlinedAt: !3827)
!3834 = !DILocation(line: 150, column: 19, scope: !2803, inlinedAt: !3827)
!3835 = !DILocation(line: 150, column: 24, scope: !2803, inlinedAt: !3827)
!3836 = !DILocation(line: 150, column: 6, scope: !2803, inlinedAt: !3827)
!3837 = !DILocation(line: 975, column: 10, scope: !3812)
!3838 = !DILocation(line: 976, column: 1, scope: !3812)
!3839 = !DILocation(line: 975, column: 3, scope: !3812)
!3840 = distinct !DISubprogram(name: "quotearg_char", scope: !549, file: !549, line: 979, type: !3841, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !3843)
!3841 = !DISubroutineType(types: !3842)
!3842 = !{!130, !136, !4}
!3843 = !{!3844, !3845}
!3844 = !DILocalVariable(name: "arg", arg: 1, scope: !3840, file: !549, line: 979, type: !136)
!3845 = !DILocalVariable(name: "ch", arg: 2, scope: !3840, file: !549, line: 979, type: !4)
!3846 = distinct !DIAssignID()
!3847 = !DILocation(line: 0, scope: !3840)
!3848 = !DILocation(line: 0, scope: !3812, inlinedAt: !3849)
!3849 = distinct !DILocation(line: 981, column: 10, scope: !3840)
!3850 = !DILocation(line: 972, column: 3, scope: !3812, inlinedAt: !3849)
!3851 = !DILocation(line: 973, column: 13, scope: !3812, inlinedAt: !3849)
!3852 = distinct !DIAssignID()
!3853 = !DILocation(line: 0, scope: !2803, inlinedAt: !3854)
!3854 = distinct !DILocation(line: 974, column: 3, scope: !3812, inlinedAt: !3849)
!3855 = !DILocation(line: 147, column: 41, scope: !2803, inlinedAt: !3854)
!3856 = !DILocation(line: 147, column: 62, scope: !2803, inlinedAt: !3854)
!3857 = !DILocation(line: 147, column: 57, scope: !2803, inlinedAt: !3854)
!3858 = !DILocation(line: 148, column: 15, scope: !2803, inlinedAt: !3854)
!3859 = !DILocation(line: 149, column: 21, scope: !2803, inlinedAt: !3854)
!3860 = !DILocation(line: 149, column: 24, scope: !2803, inlinedAt: !3854)
!3861 = !DILocation(line: 150, column: 19, scope: !2803, inlinedAt: !3854)
!3862 = !DILocation(line: 150, column: 24, scope: !2803, inlinedAt: !3854)
!3863 = !DILocation(line: 150, column: 6, scope: !2803, inlinedAt: !3854)
!3864 = !DILocation(line: 975, column: 10, scope: !3812, inlinedAt: !3849)
!3865 = !DILocation(line: 976, column: 1, scope: !3812, inlinedAt: !3849)
!3866 = !DILocation(line: 981, column: 3, scope: !3840)
!3867 = distinct !DISubprogram(name: "quotearg_colon", scope: !549, file: !549, line: 985, type: !1060, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !3868)
!3868 = !{!3869}
!3869 = !DILocalVariable(name: "arg", arg: 1, scope: !3867, file: !549, line: 985, type: !136)
!3870 = distinct !DIAssignID()
!3871 = !DILocation(line: 0, scope: !3867)
!3872 = !DILocation(line: 0, scope: !3840, inlinedAt: !3873)
!3873 = distinct !DILocation(line: 987, column: 10, scope: !3867)
!3874 = !DILocation(line: 0, scope: !3812, inlinedAt: !3875)
!3875 = distinct !DILocation(line: 981, column: 10, scope: !3840, inlinedAt: !3873)
!3876 = !DILocation(line: 972, column: 3, scope: !3812, inlinedAt: !3875)
!3877 = !DILocation(line: 973, column: 13, scope: !3812, inlinedAt: !3875)
!3878 = distinct !DIAssignID()
!3879 = !DILocation(line: 0, scope: !2803, inlinedAt: !3880)
!3880 = distinct !DILocation(line: 974, column: 3, scope: !3812, inlinedAt: !3875)
!3881 = !DILocation(line: 147, column: 57, scope: !2803, inlinedAt: !3880)
!3882 = !DILocation(line: 149, column: 21, scope: !2803, inlinedAt: !3880)
!3883 = !DILocation(line: 150, column: 6, scope: !2803, inlinedAt: !3880)
!3884 = !DILocation(line: 975, column: 10, scope: !3812, inlinedAt: !3875)
!3885 = !DILocation(line: 976, column: 1, scope: !3812, inlinedAt: !3875)
!3886 = !DILocation(line: 987, column: 3, scope: !3867)
!3887 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !549, file: !549, line: 991, type: !3685, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !3888)
!3888 = !{!3889, !3890}
!3889 = !DILocalVariable(name: "arg", arg: 1, scope: !3887, file: !549, line: 991, type: !136)
!3890 = !DILocalVariable(name: "argsize", arg: 2, scope: !3887, file: !549, line: 991, type: !133)
!3891 = distinct !DIAssignID()
!3892 = !DILocation(line: 0, scope: !3887)
!3893 = !DILocation(line: 0, scope: !3812, inlinedAt: !3894)
!3894 = distinct !DILocation(line: 993, column: 10, scope: !3887)
!3895 = !DILocation(line: 972, column: 3, scope: !3812, inlinedAt: !3894)
!3896 = !DILocation(line: 973, column: 13, scope: !3812, inlinedAt: !3894)
!3897 = distinct !DIAssignID()
!3898 = !DILocation(line: 0, scope: !2803, inlinedAt: !3899)
!3899 = distinct !DILocation(line: 974, column: 3, scope: !3812, inlinedAt: !3894)
!3900 = !DILocation(line: 147, column: 57, scope: !2803, inlinedAt: !3899)
!3901 = !DILocation(line: 149, column: 21, scope: !2803, inlinedAt: !3899)
!3902 = !DILocation(line: 150, column: 6, scope: !2803, inlinedAt: !3899)
!3903 = !DILocation(line: 975, column: 10, scope: !3812, inlinedAt: !3894)
!3904 = !DILocation(line: 976, column: 1, scope: !3812, inlinedAt: !3894)
!3905 = !DILocation(line: 993, column: 3, scope: !3887)
!3906 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !549, file: !549, line: 997, type: !3696, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !3907)
!3907 = !{!3908, !3909, !3910, !3911}
!3908 = !DILocalVariable(name: "n", arg: 1, scope: !3906, file: !549, line: 997, type: !87)
!3909 = !DILocalVariable(name: "s", arg: 2, scope: !3906, file: !549, line: 997, type: !572)
!3910 = !DILocalVariable(name: "arg", arg: 3, scope: !3906, file: !549, line: 997, type: !136)
!3911 = !DILocalVariable(name: "options", scope: !3906, file: !549, line: 999, type: !587)
!3912 = distinct !DIAssignID()
!3913 = !DILocation(line: 0, scope: !3906)
!3914 = !DILocation(line: 185, column: 26, scope: !3711, inlinedAt: !3915)
!3915 = distinct !DILocation(line: 1000, column: 13, scope: !3906)
!3916 = !DILocation(line: 999, column: 3, scope: !3906)
!3917 = !DILocation(line: 0, scope: !3711, inlinedAt: !3915)
!3918 = !DILocation(line: 186, column: 13, scope: !3721, inlinedAt: !3915)
!3919 = !DILocation(line: 186, column: 7, scope: !3711, inlinedAt: !3915)
!3920 = !DILocation(line: 187, column: 5, scope: !3721, inlinedAt: !3915)
!3921 = !{!3922}
!3922 = distinct !{!3922, !3923, !"quoting_options_from_style: argument 0"}
!3923 = distinct !{!3923, !"quoting_options_from_style"}
!3924 = !DILocation(line: 1000, column: 13, scope: !3906)
!3925 = distinct !DIAssignID()
!3926 = distinct !DIAssignID()
!3927 = !DILocation(line: 0, scope: !2803, inlinedAt: !3928)
!3928 = distinct !DILocation(line: 1001, column: 3, scope: !3906)
!3929 = !DILocation(line: 147, column: 57, scope: !2803, inlinedAt: !3928)
!3930 = !DILocation(line: 149, column: 21, scope: !2803, inlinedAt: !3928)
!3931 = !DILocation(line: 150, column: 6, scope: !2803, inlinedAt: !3928)
!3932 = distinct !DIAssignID()
!3933 = !DILocation(line: 1002, column: 10, scope: !3906)
!3934 = !DILocation(line: 1003, column: 1, scope: !3906)
!3935 = !DILocation(line: 1002, column: 3, scope: !3906)
!3936 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !549, file: !549, line: 1006, type: !3937, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !3939)
!3937 = !DISubroutineType(types: !3938)
!3938 = !{!130, !87, !136, !136, !136}
!3939 = !{!3940, !3941, !3942, !3943}
!3940 = !DILocalVariable(name: "n", arg: 1, scope: !3936, file: !549, line: 1006, type: !87)
!3941 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3936, file: !549, line: 1006, type: !136)
!3942 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3936, file: !549, line: 1007, type: !136)
!3943 = !DILocalVariable(name: "arg", arg: 4, scope: !3936, file: !549, line: 1007, type: !136)
!3944 = distinct !DIAssignID()
!3945 = !DILocation(line: 0, scope: !3936)
!3946 = !DILocalVariable(name: "o", scope: !3947, file: !549, line: 1018, type: !587)
!3947 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !549, file: !549, line: 1014, type: !3948, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !3950)
!3948 = !DISubroutineType(types: !3949)
!3949 = !{!130, !87, !136, !136, !136, !133}
!3950 = !{!3951, !3952, !3953, !3954, !3955, !3946}
!3951 = !DILocalVariable(name: "n", arg: 1, scope: !3947, file: !549, line: 1014, type: !87)
!3952 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3947, file: !549, line: 1014, type: !136)
!3953 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3947, file: !549, line: 1015, type: !136)
!3954 = !DILocalVariable(name: "arg", arg: 4, scope: !3947, file: !549, line: 1016, type: !136)
!3955 = !DILocalVariable(name: "argsize", arg: 5, scope: !3947, file: !549, line: 1016, type: !133)
!3956 = !DILocation(line: 0, scope: !3947, inlinedAt: !3957)
!3957 = distinct !DILocation(line: 1009, column: 10, scope: !3936)
!3958 = !DILocation(line: 1018, column: 3, scope: !3947, inlinedAt: !3957)
!3959 = !DILocation(line: 1018, column: 30, scope: !3947, inlinedAt: !3957)
!3960 = distinct !DIAssignID()
!3961 = distinct !DIAssignID()
!3962 = !DILocation(line: 0, scope: !2843, inlinedAt: !3963)
!3963 = distinct !DILocation(line: 1019, column: 3, scope: !3947, inlinedAt: !3957)
!3964 = !DILocation(line: 174, column: 12, scope: !2843, inlinedAt: !3963)
!3965 = distinct !DIAssignID()
!3966 = !DILocation(line: 175, column: 8, scope: !2856, inlinedAt: !3963)
!3967 = !DILocation(line: 175, column: 19, scope: !2856, inlinedAt: !3963)
!3968 = !DILocation(line: 176, column: 5, scope: !2856, inlinedAt: !3963)
!3969 = !DILocation(line: 177, column: 6, scope: !2843, inlinedAt: !3963)
!3970 = !DILocation(line: 177, column: 17, scope: !2843, inlinedAt: !3963)
!3971 = distinct !DIAssignID()
!3972 = !DILocation(line: 178, column: 6, scope: !2843, inlinedAt: !3963)
!3973 = !DILocation(line: 178, column: 18, scope: !2843, inlinedAt: !3963)
!3974 = distinct !DIAssignID()
!3975 = !DILocation(line: 1020, column: 10, scope: !3947, inlinedAt: !3957)
!3976 = !DILocation(line: 1021, column: 1, scope: !3947, inlinedAt: !3957)
!3977 = !DILocation(line: 1009, column: 3, scope: !3936)
!3978 = distinct !DIAssignID()
!3979 = !DILocation(line: 0, scope: !3947)
!3980 = !DILocation(line: 1018, column: 3, scope: !3947)
!3981 = !DILocation(line: 1018, column: 30, scope: !3947)
!3982 = distinct !DIAssignID()
!3983 = distinct !DIAssignID()
!3984 = !DILocation(line: 0, scope: !2843, inlinedAt: !3985)
!3985 = distinct !DILocation(line: 1019, column: 3, scope: !3947)
!3986 = !DILocation(line: 174, column: 12, scope: !2843, inlinedAt: !3985)
!3987 = distinct !DIAssignID()
!3988 = !DILocation(line: 175, column: 8, scope: !2856, inlinedAt: !3985)
!3989 = !DILocation(line: 175, column: 19, scope: !2856, inlinedAt: !3985)
!3990 = !DILocation(line: 176, column: 5, scope: !2856, inlinedAt: !3985)
!3991 = !DILocation(line: 177, column: 6, scope: !2843, inlinedAt: !3985)
!3992 = !DILocation(line: 177, column: 17, scope: !2843, inlinedAt: !3985)
!3993 = distinct !DIAssignID()
!3994 = !DILocation(line: 178, column: 6, scope: !2843, inlinedAt: !3985)
!3995 = !DILocation(line: 178, column: 18, scope: !2843, inlinedAt: !3985)
!3996 = distinct !DIAssignID()
!3997 = !DILocation(line: 1020, column: 10, scope: !3947)
!3998 = !DILocation(line: 1021, column: 1, scope: !3947)
!3999 = !DILocation(line: 1020, column: 3, scope: !3947)
!4000 = distinct !DISubprogram(name: "quotearg_custom", scope: !549, file: !549, line: 1024, type: !4001, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !4003)
!4001 = !DISubroutineType(types: !4002)
!4002 = !{!130, !136, !136, !136}
!4003 = !{!4004, !4005, !4006}
!4004 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4000, file: !549, line: 1024, type: !136)
!4005 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4000, file: !549, line: 1024, type: !136)
!4006 = !DILocalVariable(name: "arg", arg: 3, scope: !4000, file: !549, line: 1025, type: !136)
!4007 = distinct !DIAssignID()
!4008 = !DILocation(line: 0, scope: !4000)
!4009 = !DILocation(line: 0, scope: !3936, inlinedAt: !4010)
!4010 = distinct !DILocation(line: 1027, column: 10, scope: !4000)
!4011 = !DILocation(line: 0, scope: !3947, inlinedAt: !4012)
!4012 = distinct !DILocation(line: 1009, column: 10, scope: !3936, inlinedAt: !4010)
!4013 = !DILocation(line: 1018, column: 3, scope: !3947, inlinedAt: !4012)
!4014 = !DILocation(line: 1018, column: 30, scope: !3947, inlinedAt: !4012)
!4015 = distinct !DIAssignID()
!4016 = distinct !DIAssignID()
!4017 = !DILocation(line: 0, scope: !2843, inlinedAt: !4018)
!4018 = distinct !DILocation(line: 1019, column: 3, scope: !3947, inlinedAt: !4012)
!4019 = !DILocation(line: 174, column: 12, scope: !2843, inlinedAt: !4018)
!4020 = distinct !DIAssignID()
!4021 = !DILocation(line: 175, column: 8, scope: !2856, inlinedAt: !4018)
!4022 = !DILocation(line: 175, column: 19, scope: !2856, inlinedAt: !4018)
!4023 = !DILocation(line: 176, column: 5, scope: !2856, inlinedAt: !4018)
!4024 = !DILocation(line: 177, column: 6, scope: !2843, inlinedAt: !4018)
!4025 = !DILocation(line: 177, column: 17, scope: !2843, inlinedAt: !4018)
!4026 = distinct !DIAssignID()
!4027 = !DILocation(line: 178, column: 6, scope: !2843, inlinedAt: !4018)
!4028 = !DILocation(line: 178, column: 18, scope: !2843, inlinedAt: !4018)
!4029 = distinct !DIAssignID()
!4030 = !DILocation(line: 1020, column: 10, scope: !3947, inlinedAt: !4012)
!4031 = !DILocation(line: 1021, column: 1, scope: !3947, inlinedAt: !4012)
!4032 = !DILocation(line: 1027, column: 3, scope: !4000)
!4033 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !549, file: !549, line: 1031, type: !4034, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !4036)
!4034 = !DISubroutineType(types: !4035)
!4035 = !{!130, !136, !136, !136, !133}
!4036 = !{!4037, !4038, !4039, !4040}
!4037 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4033, file: !549, line: 1031, type: !136)
!4038 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4033, file: !549, line: 1031, type: !136)
!4039 = !DILocalVariable(name: "arg", arg: 3, scope: !4033, file: !549, line: 1032, type: !136)
!4040 = !DILocalVariable(name: "argsize", arg: 4, scope: !4033, file: !549, line: 1032, type: !133)
!4041 = distinct !DIAssignID()
!4042 = !DILocation(line: 0, scope: !4033)
!4043 = !DILocation(line: 0, scope: !3947, inlinedAt: !4044)
!4044 = distinct !DILocation(line: 1034, column: 10, scope: !4033)
!4045 = !DILocation(line: 1018, column: 3, scope: !3947, inlinedAt: !4044)
!4046 = !DILocation(line: 1018, column: 30, scope: !3947, inlinedAt: !4044)
!4047 = distinct !DIAssignID()
!4048 = distinct !DIAssignID()
!4049 = !DILocation(line: 0, scope: !2843, inlinedAt: !4050)
!4050 = distinct !DILocation(line: 1019, column: 3, scope: !3947, inlinedAt: !4044)
!4051 = !DILocation(line: 174, column: 12, scope: !2843, inlinedAt: !4050)
!4052 = distinct !DIAssignID()
!4053 = !DILocation(line: 175, column: 8, scope: !2856, inlinedAt: !4050)
!4054 = !DILocation(line: 175, column: 19, scope: !2856, inlinedAt: !4050)
!4055 = !DILocation(line: 176, column: 5, scope: !2856, inlinedAt: !4050)
!4056 = !DILocation(line: 177, column: 6, scope: !2843, inlinedAt: !4050)
!4057 = !DILocation(line: 177, column: 17, scope: !2843, inlinedAt: !4050)
!4058 = distinct !DIAssignID()
!4059 = !DILocation(line: 178, column: 6, scope: !2843, inlinedAt: !4050)
!4060 = !DILocation(line: 178, column: 18, scope: !2843, inlinedAt: !4050)
!4061 = distinct !DIAssignID()
!4062 = !DILocation(line: 1020, column: 10, scope: !3947, inlinedAt: !4044)
!4063 = !DILocation(line: 1021, column: 1, scope: !3947, inlinedAt: !4044)
!4064 = !DILocation(line: 1034, column: 3, scope: !4033)
!4065 = distinct !DISubprogram(name: "quote_n_mem", scope: !549, file: !549, line: 1049, type: !4066, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !4068)
!4066 = !DISubroutineType(types: !4067)
!4067 = !{!136, !87, !136, !133}
!4068 = !{!4069, !4070, !4071}
!4069 = !DILocalVariable(name: "n", arg: 1, scope: !4065, file: !549, line: 1049, type: !87)
!4070 = !DILocalVariable(name: "arg", arg: 2, scope: !4065, file: !549, line: 1049, type: !136)
!4071 = !DILocalVariable(name: "argsize", arg: 3, scope: !4065, file: !549, line: 1049, type: !133)
!4072 = !DILocation(line: 0, scope: !4065)
!4073 = !DILocation(line: 1051, column: 10, scope: !4065)
!4074 = !DILocation(line: 1051, column: 3, scope: !4065)
!4075 = distinct !DISubprogram(name: "quote_mem", scope: !549, file: !549, line: 1055, type: !4076, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !4078)
!4076 = !DISubroutineType(types: !4077)
!4077 = !{!136, !136, !133}
!4078 = !{!4079, !4080}
!4079 = !DILocalVariable(name: "arg", arg: 1, scope: !4075, file: !549, line: 1055, type: !136)
!4080 = !DILocalVariable(name: "argsize", arg: 2, scope: !4075, file: !549, line: 1055, type: !133)
!4081 = !DILocation(line: 0, scope: !4075)
!4082 = !DILocation(line: 0, scope: !4065, inlinedAt: !4083)
!4083 = distinct !DILocation(line: 1057, column: 10, scope: !4075)
!4084 = !DILocation(line: 1051, column: 10, scope: !4065, inlinedAt: !4083)
!4085 = !DILocation(line: 1057, column: 3, scope: !4075)
!4086 = distinct !DISubprogram(name: "quote_n", scope: !549, file: !549, line: 1061, type: !4087, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !4089)
!4087 = !DISubroutineType(types: !4088)
!4088 = !{!136, !87, !136}
!4089 = !{!4090, !4091}
!4090 = !DILocalVariable(name: "n", arg: 1, scope: !4086, file: !549, line: 1061, type: !87)
!4091 = !DILocalVariable(name: "arg", arg: 2, scope: !4086, file: !549, line: 1061, type: !136)
!4092 = !DILocation(line: 0, scope: !4086)
!4093 = !DILocation(line: 0, scope: !4065, inlinedAt: !4094)
!4094 = distinct !DILocation(line: 1063, column: 10, scope: !4086)
!4095 = !DILocation(line: 1051, column: 10, scope: !4065, inlinedAt: !4094)
!4096 = !DILocation(line: 1063, column: 3, scope: !4086)
!4097 = distinct !DISubprogram(name: "quote", scope: !549, file: !549, line: 1067, type: !4098, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !4100)
!4098 = !DISubroutineType(types: !4099)
!4099 = !{!136, !136}
!4100 = !{!4101}
!4101 = !DILocalVariable(name: "arg", arg: 1, scope: !4097, file: !549, line: 1067, type: !136)
!4102 = !DILocation(line: 0, scope: !4097)
!4103 = !DILocation(line: 0, scope: !4086, inlinedAt: !4104)
!4104 = distinct !DILocation(line: 1069, column: 10, scope: !4097)
!4105 = !DILocation(line: 0, scope: !4065, inlinedAt: !4106)
!4106 = distinct !DILocation(line: 1063, column: 10, scope: !4086, inlinedAt: !4104)
!4107 = !DILocation(line: 1051, column: 10, scope: !4065, inlinedAt: !4106)
!4108 = !DILocation(line: 1069, column: 3, scope: !4097)
!4109 = distinct !DISubprogram(name: "version_etc_arn", scope: !646, file: !646, line: 61, type: !4110, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !778, retainedNodes: !4147)
!4110 = !DISubroutineType(types: !4111)
!4111 = !{null, !4112, !136, !136, !136, !4146, !133}
!4112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4113, size: 64)
!4113 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !211, line: 7, baseType: !4114)
!4114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !213, line: 49, size: 1728, elements: !4115)
!4115 = !{!4116, !4117, !4118, !4119, !4120, !4121, !4122, !4123, !4124, !4125, !4126, !4127, !4128, !4129, !4131, !4132, !4133, !4134, !4135, !4136, !4137, !4138, !4139, !4140, !4141, !4142, !4143, !4144, !4145}
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4114, file: !213, line: 51, baseType: !87, size: 32)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4114, file: !213, line: 54, baseType: !130, size: 64, offset: 64)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4114, file: !213, line: 55, baseType: !130, size: 64, offset: 128)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4114, file: !213, line: 56, baseType: !130, size: 64, offset: 192)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4114, file: !213, line: 57, baseType: !130, size: 64, offset: 256)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4114, file: !213, line: 58, baseType: !130, size: 64, offset: 320)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4114, file: !213, line: 59, baseType: !130, size: 64, offset: 384)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4114, file: !213, line: 60, baseType: !130, size: 64, offset: 448)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4114, file: !213, line: 61, baseType: !130, size: 64, offset: 512)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4114, file: !213, line: 64, baseType: !130, size: 64, offset: 576)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4114, file: !213, line: 65, baseType: !130, size: 64, offset: 640)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4114, file: !213, line: 66, baseType: !130, size: 64, offset: 704)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4114, file: !213, line: 68, baseType: !228, size: 64, offset: 768)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4114, file: !213, line: 70, baseType: !4130, size: 64, offset: 832)
!4130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4114, size: 64)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4114, file: !213, line: 72, baseType: !87, size: 32, offset: 896)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4114, file: !213, line: 73, baseType: !87, size: 32, offset: 928)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4114, file: !213, line: 74, baseType: !235, size: 64, offset: 960)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4114, file: !213, line: 77, baseType: !132, size: 16, offset: 1024)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4114, file: !213, line: 78, baseType: !240, size: 8, offset: 1040)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4114, file: !213, line: 79, baseType: !54, size: 8, offset: 1048)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4114, file: !213, line: 81, baseType: !243, size: 64, offset: 1088)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4114, file: !213, line: 89, baseType: !246, size: 64, offset: 1152)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4114, file: !213, line: 91, baseType: !248, size: 64, offset: 1216)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4114, file: !213, line: 92, baseType: !251, size: 64, offset: 1280)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4114, file: !213, line: 93, baseType: !4130, size: 64, offset: 1344)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4114, file: !213, line: 94, baseType: !131, size: 64, offset: 1408)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4114, file: !213, line: 95, baseType: !133, size: 64, offset: 1472)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4114, file: !213, line: 96, baseType: !87, size: 32, offset: 1536)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4114, file: !213, line: 98, baseType: !258, size: 160, offset: 1568)
!4146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!4147 = !{!4148, !4149, !4150, !4151, !4152, !4153}
!4148 = !DILocalVariable(name: "stream", arg: 1, scope: !4109, file: !646, line: 61, type: !4112)
!4149 = !DILocalVariable(name: "command_name", arg: 2, scope: !4109, file: !646, line: 62, type: !136)
!4150 = !DILocalVariable(name: "package", arg: 3, scope: !4109, file: !646, line: 62, type: !136)
!4151 = !DILocalVariable(name: "version", arg: 4, scope: !4109, file: !646, line: 63, type: !136)
!4152 = !DILocalVariable(name: "authors", arg: 5, scope: !4109, file: !646, line: 64, type: !4146)
!4153 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4109, file: !646, line: 64, type: !133)
!4154 = !DILocation(line: 0, scope: !4109)
!4155 = !DILocation(line: 66, column: 7, scope: !4156)
!4156 = distinct !DILexicalBlock(scope: !4109, file: !646, line: 66, column: 7)
!4157 = !DILocation(line: 66, column: 7, scope: !4109)
!4158 = !DILocation(line: 67, column: 5, scope: !4156)
!4159 = !DILocation(line: 69, column: 5, scope: !4156)
!4160 = !DILocation(line: 83, column: 3, scope: !4109)
!4161 = !DILocation(line: 85, column: 3, scope: !4109)
!4162 = !DILocation(line: 88, column: 3, scope: !4109)
!4163 = !DILocation(line: 95, column: 3, scope: !4109)
!4164 = !DILocation(line: 97, column: 3, scope: !4109)
!4165 = !DILocation(line: 105, column: 7, scope: !4166)
!4166 = distinct !DILexicalBlock(scope: !4109, file: !646, line: 98, column: 5)
!4167 = !DILocation(line: 106, column: 7, scope: !4166)
!4168 = !DILocation(line: 109, column: 7, scope: !4166)
!4169 = !DILocation(line: 110, column: 7, scope: !4166)
!4170 = !DILocation(line: 113, column: 7, scope: !4166)
!4171 = !DILocation(line: 115, column: 7, scope: !4166)
!4172 = !DILocation(line: 120, column: 7, scope: !4166)
!4173 = !DILocation(line: 122, column: 7, scope: !4166)
!4174 = !DILocation(line: 127, column: 7, scope: !4166)
!4175 = !DILocation(line: 129, column: 7, scope: !4166)
!4176 = !DILocation(line: 134, column: 7, scope: !4166)
!4177 = !DILocation(line: 137, column: 7, scope: !4166)
!4178 = !DILocation(line: 142, column: 7, scope: !4166)
!4179 = !DILocation(line: 145, column: 7, scope: !4166)
!4180 = !DILocation(line: 150, column: 7, scope: !4166)
!4181 = !DILocation(line: 154, column: 7, scope: !4166)
!4182 = !DILocation(line: 159, column: 7, scope: !4166)
!4183 = !DILocation(line: 163, column: 7, scope: !4166)
!4184 = !DILocation(line: 170, column: 7, scope: !4166)
!4185 = !DILocation(line: 174, column: 7, scope: !4166)
!4186 = !DILocation(line: 176, column: 1, scope: !4109)
!4187 = distinct !DISubprogram(name: "version_etc_ar", scope: !646, file: !646, line: 183, type: !4188, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !778, retainedNodes: !4190)
!4188 = !DISubroutineType(types: !4189)
!4189 = !{null, !4112, !136, !136, !136, !4146}
!4190 = !{!4191, !4192, !4193, !4194, !4195, !4196}
!4191 = !DILocalVariable(name: "stream", arg: 1, scope: !4187, file: !646, line: 183, type: !4112)
!4192 = !DILocalVariable(name: "command_name", arg: 2, scope: !4187, file: !646, line: 184, type: !136)
!4193 = !DILocalVariable(name: "package", arg: 3, scope: !4187, file: !646, line: 184, type: !136)
!4194 = !DILocalVariable(name: "version", arg: 4, scope: !4187, file: !646, line: 185, type: !136)
!4195 = !DILocalVariable(name: "authors", arg: 5, scope: !4187, file: !646, line: 185, type: !4146)
!4196 = !DILocalVariable(name: "n_authors", scope: !4187, file: !646, line: 187, type: !133)
!4197 = !DILocation(line: 0, scope: !4187)
!4198 = !DILocation(line: 189, column: 8, scope: !4199)
!4199 = distinct !DILexicalBlock(scope: !4187, file: !646, line: 189, column: 3)
!4200 = !DILocation(line: 189, scope: !4199)
!4201 = !DILocation(line: 189, column: 23, scope: !4202)
!4202 = distinct !DILexicalBlock(scope: !4199, file: !646, line: 189, column: 3)
!4203 = !DILocation(line: 189, column: 3, scope: !4199)
!4204 = !DILocation(line: 189, column: 52, scope: !4202)
!4205 = distinct !{!4205, !4203, !4206, !981}
!4206 = !DILocation(line: 190, column: 5, scope: !4199)
!4207 = !DILocation(line: 191, column: 3, scope: !4187)
!4208 = !DILocation(line: 192, column: 1, scope: !4187)
!4209 = distinct !DISubprogram(name: "version_etc_va", scope: !646, file: !646, line: 199, type: !4210, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !778, retainedNodes: !4219)
!4210 = !DISubroutineType(types: !4211)
!4211 = !{null, !4112, !136, !136, !136, !4212}
!4212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4213, size: 64)
!4213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !4214)
!4214 = !{!4215, !4216, !4217, !4218}
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4213, file: !646, line: 192, baseType: !78, size: 32)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4213, file: !646, line: 192, baseType: !78, size: 32, offset: 32)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4213, file: !646, line: 192, baseType: !131, size: 64, offset: 64)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4213, file: !646, line: 192, baseType: !131, size: 64, offset: 128)
!4219 = !{!4220, !4221, !4222, !4223, !4224, !4225, !4226}
!4220 = !DILocalVariable(name: "stream", arg: 1, scope: !4209, file: !646, line: 199, type: !4112)
!4221 = !DILocalVariable(name: "command_name", arg: 2, scope: !4209, file: !646, line: 200, type: !136)
!4222 = !DILocalVariable(name: "package", arg: 3, scope: !4209, file: !646, line: 200, type: !136)
!4223 = !DILocalVariable(name: "version", arg: 4, scope: !4209, file: !646, line: 201, type: !136)
!4224 = !DILocalVariable(name: "authors", arg: 5, scope: !4209, file: !646, line: 201, type: !4212)
!4225 = !DILocalVariable(name: "n_authors", scope: !4209, file: !646, line: 203, type: !133)
!4226 = !DILocalVariable(name: "authtab", scope: !4209, file: !646, line: 204, type: !4227)
!4227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 640, elements: !60)
!4228 = distinct !DIAssignID()
!4229 = !DILocation(line: 0, scope: !4209)
!4230 = !DILocation(line: 204, column: 3, scope: !4209)
!4231 = !DILocation(line: 208, column: 35, scope: !4232)
!4232 = distinct !DILexicalBlock(scope: !4233, file: !646, line: 206, column: 3)
!4233 = distinct !DILexicalBlock(scope: !4209, file: !646, line: 206, column: 3)
!4234 = !DILocation(line: 208, column: 33, scope: !4232)
!4235 = !DILocation(line: 208, column: 67, scope: !4232)
!4236 = !DILocation(line: 206, column: 3, scope: !4233)
!4237 = !DILocation(line: 208, column: 14, scope: !4232)
!4238 = !DILocation(line: 0, scope: !4233)
!4239 = !DILocation(line: 211, column: 3, scope: !4209)
!4240 = !DILocation(line: 213, column: 1, scope: !4209)
!4241 = distinct !DISubprogram(name: "version_etc", scope: !646, file: !646, line: 230, type: !4242, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !778, retainedNodes: !4244)
!4242 = !DISubroutineType(types: !4243)
!4243 = !{null, !4112, !136, !136, !136, null}
!4244 = !{!4245, !4246, !4247, !4248, !4249}
!4245 = !DILocalVariable(name: "stream", arg: 1, scope: !4241, file: !646, line: 230, type: !4112)
!4246 = !DILocalVariable(name: "command_name", arg: 2, scope: !4241, file: !646, line: 231, type: !136)
!4247 = !DILocalVariable(name: "package", arg: 3, scope: !4241, file: !646, line: 231, type: !136)
!4248 = !DILocalVariable(name: "version", arg: 4, scope: !4241, file: !646, line: 232, type: !136)
!4249 = !DILocalVariable(name: "authors", scope: !4241, file: !646, line: 234, type: !4250)
!4250 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !929, line: 52, baseType: !4251)
!4251 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2303, line: 12, baseType: !4252)
!4252 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !646, baseType: !4253)
!4253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4213, size: 192, elements: !55)
!4254 = distinct !DIAssignID()
!4255 = !DILocation(line: 0, scope: !4241)
!4256 = !DILocation(line: 234, column: 3, scope: !4241)
!4257 = !DILocation(line: 235, column: 3, scope: !4241)
!4258 = !DILocation(line: 236, column: 3, scope: !4241)
!4259 = !DILocation(line: 237, column: 3, scope: !4241)
!4260 = !DILocation(line: 238, column: 1, scope: !4241)
!4261 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !646, file: !646, line: 241, type: !505, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !778)
!4262 = !DILocation(line: 243, column: 3, scope: !4261)
!4263 = !DILocation(line: 248, column: 3, scope: !4261)
!4264 = !DILocation(line: 254, column: 3, scope: !4261)
!4265 = !DILocation(line: 259, column: 3, scope: !4261)
!4266 = !DILocation(line: 261, column: 1, scope: !4261)
!4267 = distinct !DISubprogram(name: "xnrealloc", scope: !4268, file: !4268, line: 147, type: !4269, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !4271)
!4268 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!4269 = !DISubroutineType(types: !4270)
!4270 = !{!131, !131, !133, !133}
!4271 = !{!4272, !4273, !4274}
!4272 = !DILocalVariable(name: "p", arg: 1, scope: !4267, file: !4268, line: 147, type: !131)
!4273 = !DILocalVariable(name: "n", arg: 2, scope: !4267, file: !4268, line: 147, type: !133)
!4274 = !DILocalVariable(name: "s", arg: 3, scope: !4267, file: !4268, line: 147, type: !133)
!4275 = !DILocation(line: 0, scope: !4267)
!4276 = !DILocalVariable(name: "p", arg: 1, scope: !4277, file: !785, line: 83, type: !131)
!4277 = distinct !DISubprogram(name: "xreallocarray", scope: !785, file: !785, line: 83, type: !4269, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !4278)
!4278 = !{!4276, !4279, !4280}
!4279 = !DILocalVariable(name: "n", arg: 2, scope: !4277, file: !785, line: 83, type: !133)
!4280 = !DILocalVariable(name: "s", arg: 3, scope: !4277, file: !785, line: 83, type: !133)
!4281 = !DILocation(line: 0, scope: !4277, inlinedAt: !4282)
!4282 = distinct !DILocation(line: 149, column: 10, scope: !4267)
!4283 = !DILocation(line: 85, column: 25, scope: !4277, inlinedAt: !4282)
!4284 = !DILocalVariable(name: "p", arg: 1, scope: !4285, file: !785, line: 37, type: !131)
!4285 = distinct !DISubprogram(name: "check_nonnull", scope: !785, file: !785, line: 37, type: !4286, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !4288)
!4286 = !DISubroutineType(types: !4287)
!4287 = !{!131, !131}
!4288 = !{!4284}
!4289 = !DILocation(line: 0, scope: !4285, inlinedAt: !4290)
!4290 = distinct !DILocation(line: 85, column: 10, scope: !4277, inlinedAt: !4282)
!4291 = !DILocation(line: 39, column: 8, scope: !4292, inlinedAt: !4290)
!4292 = distinct !DILexicalBlock(scope: !4285, file: !785, line: 39, column: 7)
!4293 = !DILocation(line: 39, column: 7, scope: !4285, inlinedAt: !4290)
!4294 = !DILocation(line: 40, column: 5, scope: !4292, inlinedAt: !4290)
!4295 = !DILocation(line: 149, column: 3, scope: !4267)
!4296 = !DILocation(line: 0, scope: !4277)
!4297 = !DILocation(line: 85, column: 25, scope: !4277)
!4298 = !DILocation(line: 0, scope: !4285, inlinedAt: !4299)
!4299 = distinct !DILocation(line: 85, column: 10, scope: !4277)
!4300 = !DILocation(line: 39, column: 8, scope: !4292, inlinedAt: !4299)
!4301 = !DILocation(line: 39, column: 7, scope: !4285, inlinedAt: !4299)
!4302 = !DILocation(line: 40, column: 5, scope: !4292, inlinedAt: !4299)
!4303 = !DILocation(line: 85, column: 3, scope: !4277)
!4304 = distinct !DISubprogram(name: "xmalloc", scope: !785, file: !785, line: 47, type: !1804, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !4305)
!4305 = !{!4306}
!4306 = !DILocalVariable(name: "s", arg: 1, scope: !4304, file: !785, line: 47, type: !133)
!4307 = !DILocation(line: 0, scope: !4304)
!4308 = !DILocation(line: 49, column: 25, scope: !4304)
!4309 = !DILocation(line: 0, scope: !4285, inlinedAt: !4310)
!4310 = distinct !DILocation(line: 49, column: 10, scope: !4304)
!4311 = !DILocation(line: 39, column: 8, scope: !4292, inlinedAt: !4310)
!4312 = !DILocation(line: 39, column: 7, scope: !4285, inlinedAt: !4310)
!4313 = !DILocation(line: 40, column: 5, scope: !4292, inlinedAt: !4310)
!4314 = !DILocation(line: 49, column: 3, scope: !4304)
!4315 = distinct !DISubprogram(name: "ximalloc", scope: !785, file: !785, line: 53, type: !4316, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !4318)
!4316 = !DISubroutineType(types: !4317)
!4317 = !{!131, !804}
!4318 = !{!4319}
!4319 = !DILocalVariable(name: "s", arg: 1, scope: !4315, file: !785, line: 53, type: !804)
!4320 = !DILocation(line: 0, scope: !4315)
!4321 = !DILocalVariable(name: "s", arg: 1, scope: !4322, file: !4323, line: 55, type: !804)
!4322 = distinct !DISubprogram(name: "imalloc", scope: !4323, file: !4323, line: 55, type: !4316, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !4324)
!4323 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4324 = !{!4321}
!4325 = !DILocation(line: 0, scope: !4322, inlinedAt: !4326)
!4326 = distinct !DILocation(line: 55, column: 25, scope: !4315)
!4327 = !DILocation(line: 57, column: 26, scope: !4322, inlinedAt: !4326)
!4328 = !DILocation(line: 0, scope: !4285, inlinedAt: !4329)
!4329 = distinct !DILocation(line: 55, column: 10, scope: !4315)
!4330 = !DILocation(line: 39, column: 8, scope: !4292, inlinedAt: !4329)
!4331 = !DILocation(line: 39, column: 7, scope: !4285, inlinedAt: !4329)
!4332 = !DILocation(line: 40, column: 5, scope: !4292, inlinedAt: !4329)
!4333 = !DILocation(line: 55, column: 3, scope: !4315)
!4334 = distinct !DISubprogram(name: "xcharalloc", scope: !785, file: !785, line: 59, type: !4335, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !4337)
!4335 = !DISubroutineType(types: !4336)
!4336 = !{!130, !133}
!4337 = !{!4338}
!4338 = !DILocalVariable(name: "n", arg: 1, scope: !4334, file: !785, line: 59, type: !133)
!4339 = !DILocation(line: 0, scope: !4334)
!4340 = !DILocation(line: 0, scope: !4304, inlinedAt: !4341)
!4341 = distinct !DILocation(line: 61, column: 10, scope: !4334)
!4342 = !DILocation(line: 49, column: 25, scope: !4304, inlinedAt: !4341)
!4343 = !DILocation(line: 0, scope: !4285, inlinedAt: !4344)
!4344 = distinct !DILocation(line: 49, column: 10, scope: !4304, inlinedAt: !4341)
!4345 = !DILocation(line: 39, column: 8, scope: !4292, inlinedAt: !4344)
!4346 = !DILocation(line: 39, column: 7, scope: !4285, inlinedAt: !4344)
!4347 = !DILocation(line: 40, column: 5, scope: !4292, inlinedAt: !4344)
!4348 = !DILocation(line: 61, column: 3, scope: !4334)
!4349 = distinct !DISubprogram(name: "xrealloc", scope: !785, file: !785, line: 68, type: !4350, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !4352)
!4350 = !DISubroutineType(types: !4351)
!4351 = !{!131, !131, !133}
!4352 = !{!4353, !4354}
!4353 = !DILocalVariable(name: "p", arg: 1, scope: !4349, file: !785, line: 68, type: !131)
!4354 = !DILocalVariable(name: "s", arg: 2, scope: !4349, file: !785, line: 68, type: !133)
!4355 = !DILocation(line: 0, scope: !4349)
!4356 = !DILocalVariable(name: "ptr", arg: 1, scope: !4357, file: !4358, line: 2057, type: !131)
!4357 = distinct !DISubprogram(name: "rpl_realloc", scope: !4358, file: !4358, line: 2057, type: !4350, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !4359)
!4358 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4359 = !{!4356, !4360}
!4360 = !DILocalVariable(name: "size", arg: 2, scope: !4357, file: !4358, line: 2057, type: !133)
!4361 = !DILocation(line: 0, scope: !4357, inlinedAt: !4362)
!4362 = distinct !DILocation(line: 70, column: 25, scope: !4349)
!4363 = !DILocation(line: 2059, column: 24, scope: !4357, inlinedAt: !4362)
!4364 = !DILocation(line: 2059, column: 10, scope: !4357, inlinedAt: !4362)
!4365 = !DILocation(line: 0, scope: !4285, inlinedAt: !4366)
!4366 = distinct !DILocation(line: 70, column: 10, scope: !4349)
!4367 = !DILocation(line: 39, column: 8, scope: !4292, inlinedAt: !4366)
!4368 = !DILocation(line: 39, column: 7, scope: !4285, inlinedAt: !4366)
!4369 = !DILocation(line: 40, column: 5, scope: !4292, inlinedAt: !4366)
!4370 = !DILocation(line: 70, column: 3, scope: !4349)
!4371 = !DISubprogram(name: "realloc", scope: !1058, file: !1058, line: 551, type: !4350, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4372 = distinct !DISubprogram(name: "xirealloc", scope: !785, file: !785, line: 74, type: !4373, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !4375)
!4373 = !DISubroutineType(types: !4374)
!4374 = !{!131, !131, !804}
!4375 = !{!4376, !4377}
!4376 = !DILocalVariable(name: "p", arg: 1, scope: !4372, file: !785, line: 74, type: !131)
!4377 = !DILocalVariable(name: "s", arg: 2, scope: !4372, file: !785, line: 74, type: !804)
!4378 = !DILocation(line: 0, scope: !4372)
!4379 = !DILocalVariable(name: "p", arg: 1, scope: !4380, file: !4323, line: 66, type: !131)
!4380 = distinct !DISubprogram(name: "irealloc", scope: !4323, file: !4323, line: 66, type: !4373, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !4381)
!4381 = !{!4379, !4382}
!4382 = !DILocalVariable(name: "s", arg: 2, scope: !4380, file: !4323, line: 66, type: !804)
!4383 = !DILocation(line: 0, scope: !4380, inlinedAt: !4384)
!4384 = distinct !DILocation(line: 76, column: 25, scope: !4372)
!4385 = !DILocation(line: 0, scope: !4357, inlinedAt: !4386)
!4386 = distinct !DILocation(line: 68, column: 26, scope: !4380, inlinedAt: !4384)
!4387 = !DILocation(line: 2059, column: 24, scope: !4357, inlinedAt: !4386)
!4388 = !DILocation(line: 2059, column: 10, scope: !4357, inlinedAt: !4386)
!4389 = !DILocation(line: 0, scope: !4285, inlinedAt: !4390)
!4390 = distinct !DILocation(line: 76, column: 10, scope: !4372)
!4391 = !DILocation(line: 39, column: 8, scope: !4292, inlinedAt: !4390)
!4392 = !DILocation(line: 39, column: 7, scope: !4285, inlinedAt: !4390)
!4393 = !DILocation(line: 40, column: 5, scope: !4292, inlinedAt: !4390)
!4394 = !DILocation(line: 76, column: 3, scope: !4372)
!4395 = distinct !DISubprogram(name: "xireallocarray", scope: !785, file: !785, line: 89, type: !4396, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !4398)
!4396 = !DISubroutineType(types: !4397)
!4397 = !{!131, !131, !804, !804}
!4398 = !{!4399, !4400, !4401}
!4399 = !DILocalVariable(name: "p", arg: 1, scope: !4395, file: !785, line: 89, type: !131)
!4400 = !DILocalVariable(name: "n", arg: 2, scope: !4395, file: !785, line: 89, type: !804)
!4401 = !DILocalVariable(name: "s", arg: 3, scope: !4395, file: !785, line: 89, type: !804)
!4402 = !DILocation(line: 0, scope: !4395)
!4403 = !DILocalVariable(name: "p", arg: 1, scope: !4404, file: !4323, line: 98, type: !131)
!4404 = distinct !DISubprogram(name: "ireallocarray", scope: !4323, file: !4323, line: 98, type: !4396, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !4405)
!4405 = !{!4403, !4406, !4407}
!4406 = !DILocalVariable(name: "n", arg: 2, scope: !4404, file: !4323, line: 98, type: !804)
!4407 = !DILocalVariable(name: "s", arg: 3, scope: !4404, file: !4323, line: 98, type: !804)
!4408 = !DILocation(line: 0, scope: !4404, inlinedAt: !4409)
!4409 = distinct !DILocation(line: 91, column: 25, scope: !4395)
!4410 = !DILocation(line: 101, column: 13, scope: !4404, inlinedAt: !4409)
!4411 = !DILocation(line: 0, scope: !4285, inlinedAt: !4412)
!4412 = distinct !DILocation(line: 91, column: 10, scope: !4395)
!4413 = !DILocation(line: 39, column: 8, scope: !4292, inlinedAt: !4412)
!4414 = !DILocation(line: 39, column: 7, scope: !4285, inlinedAt: !4412)
!4415 = !DILocation(line: 40, column: 5, scope: !4292, inlinedAt: !4412)
!4416 = !DILocation(line: 91, column: 3, scope: !4395)
!4417 = distinct !DISubprogram(name: "xnmalloc", scope: !785, file: !785, line: 98, type: !4418, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !4420)
!4418 = !DISubroutineType(types: !4419)
!4419 = !{!131, !133, !133}
!4420 = !{!4421, !4422}
!4421 = !DILocalVariable(name: "n", arg: 1, scope: !4417, file: !785, line: 98, type: !133)
!4422 = !DILocalVariable(name: "s", arg: 2, scope: !4417, file: !785, line: 98, type: !133)
!4423 = !DILocation(line: 0, scope: !4417)
!4424 = !DILocation(line: 0, scope: !4277, inlinedAt: !4425)
!4425 = distinct !DILocation(line: 100, column: 10, scope: !4417)
!4426 = !DILocation(line: 85, column: 25, scope: !4277, inlinedAt: !4425)
!4427 = !DILocation(line: 0, scope: !4285, inlinedAt: !4428)
!4428 = distinct !DILocation(line: 85, column: 10, scope: !4277, inlinedAt: !4425)
!4429 = !DILocation(line: 39, column: 8, scope: !4292, inlinedAt: !4428)
!4430 = !DILocation(line: 39, column: 7, scope: !4285, inlinedAt: !4428)
!4431 = !DILocation(line: 40, column: 5, scope: !4292, inlinedAt: !4428)
!4432 = !DILocation(line: 100, column: 3, scope: !4417)
!4433 = distinct !DISubprogram(name: "xinmalloc", scope: !785, file: !785, line: 104, type: !4434, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !4436)
!4434 = !DISubroutineType(types: !4435)
!4435 = !{!131, !804, !804}
!4436 = !{!4437, !4438}
!4437 = !DILocalVariable(name: "n", arg: 1, scope: !4433, file: !785, line: 104, type: !804)
!4438 = !DILocalVariable(name: "s", arg: 2, scope: !4433, file: !785, line: 104, type: !804)
!4439 = !DILocation(line: 0, scope: !4433)
!4440 = !DILocation(line: 0, scope: !4395, inlinedAt: !4441)
!4441 = distinct !DILocation(line: 106, column: 10, scope: !4433)
!4442 = !DILocation(line: 0, scope: !4404, inlinedAt: !4443)
!4443 = distinct !DILocation(line: 91, column: 25, scope: !4395, inlinedAt: !4441)
!4444 = !DILocation(line: 101, column: 13, scope: !4404, inlinedAt: !4443)
!4445 = !DILocation(line: 0, scope: !4285, inlinedAt: !4446)
!4446 = distinct !DILocation(line: 91, column: 10, scope: !4395, inlinedAt: !4441)
!4447 = !DILocation(line: 39, column: 8, scope: !4292, inlinedAt: !4446)
!4448 = !DILocation(line: 39, column: 7, scope: !4285, inlinedAt: !4446)
!4449 = !DILocation(line: 40, column: 5, scope: !4292, inlinedAt: !4446)
!4450 = !DILocation(line: 106, column: 3, scope: !4433)
!4451 = distinct !DISubprogram(name: "x2realloc", scope: !785, file: !785, line: 116, type: !4452, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !4454)
!4452 = !DISubroutineType(types: !4453)
!4453 = !{!131, !131, !791}
!4454 = !{!4455, !4456}
!4455 = !DILocalVariable(name: "p", arg: 1, scope: !4451, file: !785, line: 116, type: !131)
!4456 = !DILocalVariable(name: "ps", arg: 2, scope: !4451, file: !785, line: 116, type: !791)
!4457 = !DILocation(line: 0, scope: !4451)
!4458 = !DILocation(line: 0, scope: !788, inlinedAt: !4459)
!4459 = distinct !DILocation(line: 118, column: 10, scope: !4451)
!4460 = !DILocation(line: 178, column: 14, scope: !788, inlinedAt: !4459)
!4461 = !DILocation(line: 180, column: 9, scope: !4462, inlinedAt: !4459)
!4462 = distinct !DILexicalBlock(scope: !788, file: !785, line: 180, column: 7)
!4463 = !DILocation(line: 180, column: 7, scope: !788, inlinedAt: !4459)
!4464 = !DILocation(line: 182, column: 13, scope: !4465, inlinedAt: !4459)
!4465 = distinct !DILexicalBlock(scope: !4466, file: !785, line: 182, column: 11)
!4466 = distinct !DILexicalBlock(scope: !4462, file: !785, line: 181, column: 5)
!4467 = !DILocation(line: 182, column: 11, scope: !4466, inlinedAt: !4459)
!4468 = !DILocation(line: 197, column: 11, scope: !4469, inlinedAt: !4459)
!4469 = distinct !DILexicalBlock(scope: !4470, file: !785, line: 197, column: 11)
!4470 = distinct !DILexicalBlock(scope: !4462, file: !785, line: 195, column: 5)
!4471 = !DILocation(line: 197, column: 11, scope: !4470, inlinedAt: !4459)
!4472 = !DILocation(line: 198, column: 9, scope: !4469, inlinedAt: !4459)
!4473 = !DILocation(line: 0, scope: !4277, inlinedAt: !4474)
!4474 = distinct !DILocation(line: 201, column: 7, scope: !788, inlinedAt: !4459)
!4475 = !DILocation(line: 85, column: 25, scope: !4277, inlinedAt: !4474)
!4476 = !DILocation(line: 0, scope: !4285, inlinedAt: !4477)
!4477 = distinct !DILocation(line: 85, column: 10, scope: !4277, inlinedAt: !4474)
!4478 = !DILocation(line: 39, column: 8, scope: !4292, inlinedAt: !4477)
!4479 = !DILocation(line: 39, column: 7, scope: !4285, inlinedAt: !4477)
!4480 = !DILocation(line: 40, column: 5, scope: !4292, inlinedAt: !4477)
!4481 = !DILocation(line: 202, column: 7, scope: !788, inlinedAt: !4459)
!4482 = !DILocation(line: 118, column: 3, scope: !4451)
!4483 = !DILocation(line: 0, scope: !788)
!4484 = !DILocation(line: 178, column: 14, scope: !788)
!4485 = !DILocation(line: 180, column: 9, scope: !4462)
!4486 = !DILocation(line: 180, column: 7, scope: !788)
!4487 = !DILocation(line: 182, column: 13, scope: !4465)
!4488 = !DILocation(line: 182, column: 11, scope: !4466)
!4489 = !DILocation(line: 190, column: 30, scope: !4490)
!4490 = distinct !DILexicalBlock(scope: !4465, file: !785, line: 183, column: 9)
!4491 = !DILocation(line: 191, column: 16, scope: !4490)
!4492 = !DILocation(line: 191, column: 13, scope: !4490)
!4493 = !DILocation(line: 192, column: 9, scope: !4490)
!4494 = !DILocation(line: 197, column: 11, scope: !4469)
!4495 = !DILocation(line: 197, column: 11, scope: !4470)
!4496 = !DILocation(line: 198, column: 9, scope: !4469)
!4497 = !DILocation(line: 0, scope: !4277, inlinedAt: !4498)
!4498 = distinct !DILocation(line: 201, column: 7, scope: !788)
!4499 = !DILocation(line: 85, column: 25, scope: !4277, inlinedAt: !4498)
!4500 = !DILocation(line: 0, scope: !4285, inlinedAt: !4501)
!4501 = distinct !DILocation(line: 85, column: 10, scope: !4277, inlinedAt: !4498)
!4502 = !DILocation(line: 39, column: 8, scope: !4292, inlinedAt: !4501)
!4503 = !DILocation(line: 39, column: 7, scope: !4285, inlinedAt: !4501)
!4504 = !DILocation(line: 40, column: 5, scope: !4292, inlinedAt: !4501)
!4505 = !DILocation(line: 202, column: 7, scope: !788)
!4506 = !DILocation(line: 203, column: 3, scope: !788)
!4507 = !DILocation(line: 0, scope: !800)
!4508 = !DILocation(line: 230, column: 14, scope: !800)
!4509 = !DILocation(line: 238, column: 7, scope: !4510)
!4510 = distinct !DILexicalBlock(scope: !800, file: !785, line: 238, column: 7)
!4511 = !DILocation(line: 238, column: 7, scope: !800)
!4512 = !DILocation(line: 240, column: 9, scope: !4513)
!4513 = distinct !DILexicalBlock(scope: !800, file: !785, line: 240, column: 7)
!4514 = !DILocation(line: 240, column: 18, scope: !4513)
!4515 = !DILocation(line: 253, column: 8, scope: !800)
!4516 = !DILocation(line: 256, column: 7, scope: !4517)
!4517 = distinct !DILexicalBlock(scope: !800, file: !785, line: 256, column: 7)
!4518 = !DILocation(line: 256, column: 7, scope: !800)
!4519 = !DILocation(line: 258, column: 27, scope: !4520)
!4520 = distinct !DILexicalBlock(scope: !4517, file: !785, line: 257, column: 5)
!4521 = !DILocation(line: 259, column: 50, scope: !4520)
!4522 = !DILocation(line: 259, column: 32, scope: !4520)
!4523 = !DILocation(line: 260, column: 5, scope: !4520)
!4524 = !DILocation(line: 262, column: 9, scope: !4525)
!4525 = distinct !DILexicalBlock(scope: !800, file: !785, line: 262, column: 7)
!4526 = !DILocation(line: 262, column: 7, scope: !800)
!4527 = !DILocation(line: 263, column: 9, scope: !4525)
!4528 = !DILocation(line: 263, column: 5, scope: !4525)
!4529 = !DILocation(line: 264, column: 9, scope: !4530)
!4530 = distinct !DILexicalBlock(scope: !800, file: !785, line: 264, column: 7)
!4531 = !DILocation(line: 264, column: 14, scope: !4530)
!4532 = !DILocation(line: 265, column: 7, scope: !4530)
!4533 = !DILocation(line: 265, column: 11, scope: !4530)
!4534 = !DILocation(line: 266, column: 11, scope: !4530)
!4535 = !DILocation(line: 267, column: 14, scope: !4530)
!4536 = !DILocation(line: 264, column: 7, scope: !800)
!4537 = !DILocation(line: 268, column: 5, scope: !4530)
!4538 = !DILocation(line: 0, scope: !4349, inlinedAt: !4539)
!4539 = distinct !DILocation(line: 269, column: 8, scope: !800)
!4540 = !DILocation(line: 0, scope: !4357, inlinedAt: !4541)
!4541 = distinct !DILocation(line: 70, column: 25, scope: !4349, inlinedAt: !4539)
!4542 = !DILocation(line: 2059, column: 24, scope: !4357, inlinedAt: !4541)
!4543 = !DILocation(line: 2059, column: 10, scope: !4357, inlinedAt: !4541)
!4544 = !DILocation(line: 0, scope: !4285, inlinedAt: !4545)
!4545 = distinct !DILocation(line: 70, column: 10, scope: !4349, inlinedAt: !4539)
!4546 = !DILocation(line: 39, column: 8, scope: !4292, inlinedAt: !4545)
!4547 = !DILocation(line: 39, column: 7, scope: !4285, inlinedAt: !4545)
!4548 = !DILocation(line: 40, column: 5, scope: !4292, inlinedAt: !4545)
!4549 = !DILocation(line: 270, column: 7, scope: !800)
!4550 = !DILocation(line: 271, column: 3, scope: !800)
!4551 = distinct !DISubprogram(name: "xzalloc", scope: !785, file: !785, line: 279, type: !1804, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !4552)
!4552 = !{!4553}
!4553 = !DILocalVariable(name: "s", arg: 1, scope: !4551, file: !785, line: 279, type: !133)
!4554 = !DILocation(line: 0, scope: !4551)
!4555 = !DILocalVariable(name: "n", arg: 1, scope: !4556, file: !785, line: 294, type: !133)
!4556 = distinct !DISubprogram(name: "xcalloc", scope: !785, file: !785, line: 294, type: !4418, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !4557)
!4557 = !{!4555, !4558}
!4558 = !DILocalVariable(name: "s", arg: 2, scope: !4556, file: !785, line: 294, type: !133)
!4559 = !DILocation(line: 0, scope: !4556, inlinedAt: !4560)
!4560 = distinct !DILocation(line: 281, column: 10, scope: !4551)
!4561 = !DILocation(line: 296, column: 25, scope: !4556, inlinedAt: !4560)
!4562 = !DILocation(line: 0, scope: !4285, inlinedAt: !4563)
!4563 = distinct !DILocation(line: 296, column: 10, scope: !4556, inlinedAt: !4560)
!4564 = !DILocation(line: 39, column: 8, scope: !4292, inlinedAt: !4563)
!4565 = !DILocation(line: 39, column: 7, scope: !4285, inlinedAt: !4563)
!4566 = !DILocation(line: 40, column: 5, scope: !4292, inlinedAt: !4563)
!4567 = !DILocation(line: 281, column: 3, scope: !4551)
!4568 = !DISubprogram(name: "calloc", scope: !1058, file: !1058, line: 543, type: !4418, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4569 = !DILocation(line: 0, scope: !4556)
!4570 = !DILocation(line: 296, column: 25, scope: !4556)
!4571 = !DILocation(line: 0, scope: !4285, inlinedAt: !4572)
!4572 = distinct !DILocation(line: 296, column: 10, scope: !4556)
!4573 = !DILocation(line: 39, column: 8, scope: !4292, inlinedAt: !4572)
!4574 = !DILocation(line: 39, column: 7, scope: !4285, inlinedAt: !4572)
!4575 = !DILocation(line: 40, column: 5, scope: !4292, inlinedAt: !4572)
!4576 = !DILocation(line: 296, column: 3, scope: !4556)
!4577 = distinct !DISubprogram(name: "xizalloc", scope: !785, file: !785, line: 285, type: !4316, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !4578)
!4578 = !{!4579}
!4579 = !DILocalVariable(name: "s", arg: 1, scope: !4577, file: !785, line: 285, type: !804)
!4580 = !DILocation(line: 0, scope: !4577)
!4581 = !DILocalVariable(name: "n", arg: 1, scope: !4582, file: !785, line: 300, type: !804)
!4582 = distinct !DISubprogram(name: "xicalloc", scope: !785, file: !785, line: 300, type: !4434, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !4583)
!4583 = !{!4581, !4584}
!4584 = !DILocalVariable(name: "s", arg: 2, scope: !4582, file: !785, line: 300, type: !804)
!4585 = !DILocation(line: 0, scope: !4582, inlinedAt: !4586)
!4586 = distinct !DILocation(line: 287, column: 10, scope: !4577)
!4587 = !DILocalVariable(name: "n", arg: 1, scope: !4588, file: !4323, line: 77, type: !804)
!4588 = distinct !DISubprogram(name: "icalloc", scope: !4323, file: !4323, line: 77, type: !4434, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !4589)
!4589 = !{!4587, !4590}
!4590 = !DILocalVariable(name: "s", arg: 2, scope: !4588, file: !4323, line: 77, type: !804)
!4591 = !DILocation(line: 0, scope: !4588, inlinedAt: !4592)
!4592 = distinct !DILocation(line: 302, column: 25, scope: !4582, inlinedAt: !4586)
!4593 = !DILocation(line: 91, column: 10, scope: !4588, inlinedAt: !4592)
!4594 = !DILocation(line: 0, scope: !4285, inlinedAt: !4595)
!4595 = distinct !DILocation(line: 302, column: 10, scope: !4582, inlinedAt: !4586)
!4596 = !DILocation(line: 39, column: 8, scope: !4292, inlinedAt: !4595)
!4597 = !DILocation(line: 39, column: 7, scope: !4285, inlinedAt: !4595)
!4598 = !DILocation(line: 40, column: 5, scope: !4292, inlinedAt: !4595)
!4599 = !DILocation(line: 287, column: 3, scope: !4577)
!4600 = !DILocation(line: 0, scope: !4582)
!4601 = !DILocation(line: 0, scope: !4588, inlinedAt: !4602)
!4602 = distinct !DILocation(line: 302, column: 25, scope: !4582)
!4603 = !DILocation(line: 91, column: 10, scope: !4588, inlinedAt: !4602)
!4604 = !DILocation(line: 0, scope: !4285, inlinedAt: !4605)
!4605 = distinct !DILocation(line: 302, column: 10, scope: !4582)
!4606 = !DILocation(line: 39, column: 8, scope: !4292, inlinedAt: !4605)
!4607 = !DILocation(line: 39, column: 7, scope: !4285, inlinedAt: !4605)
!4608 = !DILocation(line: 40, column: 5, scope: !4292, inlinedAt: !4605)
!4609 = !DILocation(line: 302, column: 3, scope: !4582)
!4610 = distinct !DISubprogram(name: "xmemdup", scope: !785, file: !785, line: 310, type: !4611, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !4613)
!4611 = !DISubroutineType(types: !4612)
!4612 = !{!131, !1082, !133}
!4613 = !{!4614, !4615}
!4614 = !DILocalVariable(name: "p", arg: 1, scope: !4610, file: !785, line: 310, type: !1082)
!4615 = !DILocalVariable(name: "s", arg: 2, scope: !4610, file: !785, line: 310, type: !133)
!4616 = !DILocation(line: 0, scope: !4610)
!4617 = !DILocation(line: 0, scope: !4304, inlinedAt: !4618)
!4618 = distinct !DILocation(line: 312, column: 18, scope: !4610)
!4619 = !DILocation(line: 49, column: 25, scope: !4304, inlinedAt: !4618)
!4620 = !DILocation(line: 0, scope: !4285, inlinedAt: !4621)
!4621 = distinct !DILocation(line: 49, column: 10, scope: !4304, inlinedAt: !4618)
!4622 = !DILocation(line: 39, column: 8, scope: !4292, inlinedAt: !4621)
!4623 = !DILocation(line: 39, column: 7, scope: !4285, inlinedAt: !4621)
!4624 = !DILocation(line: 40, column: 5, scope: !4292, inlinedAt: !4621)
!4625 = !DILocalVariable(name: "__dest", arg: 1, scope: !4626, file: !1276, line: 26, type: !4629)
!4626 = distinct !DISubprogram(name: "memcpy", scope: !1276, file: !1276, line: 26, type: !4627, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !4630)
!4627 = !DISubroutineType(types: !4628)
!4628 = !{!131, !4629, !1081, !133}
!4629 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !131)
!4630 = !{!4625, !4631, !4632}
!4631 = !DILocalVariable(name: "__src", arg: 2, scope: !4626, file: !1276, line: 26, type: !1081)
!4632 = !DILocalVariable(name: "__len", arg: 3, scope: !4626, file: !1276, line: 26, type: !133)
!4633 = !DILocation(line: 0, scope: !4626, inlinedAt: !4634)
!4634 = distinct !DILocation(line: 312, column: 10, scope: !4610)
!4635 = !DILocation(line: 29, column: 10, scope: !4626, inlinedAt: !4634)
!4636 = !DILocation(line: 312, column: 3, scope: !4610)
!4637 = distinct !DISubprogram(name: "ximemdup", scope: !785, file: !785, line: 316, type: !4638, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !4640)
!4638 = !DISubroutineType(types: !4639)
!4639 = !{!131, !1082, !804}
!4640 = !{!4641, !4642}
!4641 = !DILocalVariable(name: "p", arg: 1, scope: !4637, file: !785, line: 316, type: !1082)
!4642 = !DILocalVariable(name: "s", arg: 2, scope: !4637, file: !785, line: 316, type: !804)
!4643 = !DILocation(line: 0, scope: !4637)
!4644 = !DILocation(line: 0, scope: !4315, inlinedAt: !4645)
!4645 = distinct !DILocation(line: 318, column: 18, scope: !4637)
!4646 = !DILocation(line: 0, scope: !4322, inlinedAt: !4647)
!4647 = distinct !DILocation(line: 55, column: 25, scope: !4315, inlinedAt: !4645)
!4648 = !DILocation(line: 57, column: 26, scope: !4322, inlinedAt: !4647)
!4649 = !DILocation(line: 0, scope: !4285, inlinedAt: !4650)
!4650 = distinct !DILocation(line: 55, column: 10, scope: !4315, inlinedAt: !4645)
!4651 = !DILocation(line: 39, column: 8, scope: !4292, inlinedAt: !4650)
!4652 = !DILocation(line: 39, column: 7, scope: !4285, inlinedAt: !4650)
!4653 = !DILocation(line: 40, column: 5, scope: !4292, inlinedAt: !4650)
!4654 = !DILocation(line: 0, scope: !4626, inlinedAt: !4655)
!4655 = distinct !DILocation(line: 318, column: 10, scope: !4637)
!4656 = !DILocation(line: 29, column: 10, scope: !4626, inlinedAt: !4655)
!4657 = !DILocation(line: 318, column: 3, scope: !4637)
!4658 = distinct !DISubprogram(name: "ximemdup0", scope: !785, file: !785, line: 325, type: !4659, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !4661)
!4659 = !DISubroutineType(types: !4660)
!4660 = !{!130, !1082, !804}
!4661 = !{!4662, !4663, !4664}
!4662 = !DILocalVariable(name: "p", arg: 1, scope: !4658, file: !785, line: 325, type: !1082)
!4663 = !DILocalVariable(name: "s", arg: 2, scope: !4658, file: !785, line: 325, type: !804)
!4664 = !DILocalVariable(name: "result", scope: !4658, file: !785, line: 327, type: !130)
!4665 = !DILocation(line: 0, scope: !4658)
!4666 = !DILocation(line: 327, column: 30, scope: !4658)
!4667 = !DILocation(line: 0, scope: !4315, inlinedAt: !4668)
!4668 = distinct !DILocation(line: 327, column: 18, scope: !4658)
!4669 = !DILocation(line: 0, scope: !4322, inlinedAt: !4670)
!4670 = distinct !DILocation(line: 55, column: 25, scope: !4315, inlinedAt: !4668)
!4671 = !DILocation(line: 57, column: 26, scope: !4322, inlinedAt: !4670)
!4672 = !DILocation(line: 0, scope: !4285, inlinedAt: !4673)
!4673 = distinct !DILocation(line: 55, column: 10, scope: !4315, inlinedAt: !4668)
!4674 = !DILocation(line: 39, column: 8, scope: !4292, inlinedAt: !4673)
!4675 = !DILocation(line: 39, column: 7, scope: !4285, inlinedAt: !4673)
!4676 = !DILocation(line: 40, column: 5, scope: !4292, inlinedAt: !4673)
!4677 = !DILocation(line: 328, column: 3, scope: !4658)
!4678 = !DILocation(line: 328, column: 13, scope: !4658)
!4679 = !DILocation(line: 0, scope: !4626, inlinedAt: !4680)
!4680 = distinct !DILocation(line: 329, column: 10, scope: !4658)
!4681 = !DILocation(line: 29, column: 10, scope: !4626, inlinedAt: !4680)
!4682 = !DILocation(line: 329, column: 3, scope: !4658)
!4683 = distinct !DISubprogram(name: "xstrdup", scope: !785, file: !785, line: 335, type: !1060, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !4684)
!4684 = !{!4685}
!4685 = !DILocalVariable(name: "string", arg: 1, scope: !4683, file: !785, line: 335, type: !136)
!4686 = !DILocation(line: 0, scope: !4683)
!4687 = !DILocation(line: 337, column: 27, scope: !4683)
!4688 = !DILocation(line: 337, column: 43, scope: !4683)
!4689 = !DILocation(line: 0, scope: !4610, inlinedAt: !4690)
!4690 = distinct !DILocation(line: 337, column: 10, scope: !4683)
!4691 = !DILocation(line: 0, scope: !4304, inlinedAt: !4692)
!4692 = distinct !DILocation(line: 312, column: 18, scope: !4610, inlinedAt: !4690)
!4693 = !DILocation(line: 49, column: 25, scope: !4304, inlinedAt: !4692)
!4694 = !DILocation(line: 0, scope: !4285, inlinedAt: !4695)
!4695 = distinct !DILocation(line: 49, column: 10, scope: !4304, inlinedAt: !4692)
!4696 = !DILocation(line: 39, column: 8, scope: !4292, inlinedAt: !4695)
!4697 = !DILocation(line: 39, column: 7, scope: !4285, inlinedAt: !4695)
!4698 = !DILocation(line: 40, column: 5, scope: !4292, inlinedAt: !4695)
!4699 = !DILocation(line: 0, scope: !4626, inlinedAt: !4700)
!4700 = distinct !DILocation(line: 312, column: 10, scope: !4610, inlinedAt: !4690)
!4701 = !DILocation(line: 29, column: 10, scope: !4626, inlinedAt: !4700)
!4702 = !DILocation(line: 337, column: 3, scope: !4683)
!4703 = distinct !DISubprogram(name: "xalloc_die", scope: !736, file: !736, line: 32, type: !505, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !819, retainedNodes: !4704)
!4704 = !{!4705}
!4705 = !DILocalVariable(name: "__errstatus", scope: !4706, file: !736, line: 34, type: !4707)
!4706 = distinct !DILexicalBlock(scope: !4703, file: !736, line: 34, column: 3)
!4707 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!4708 = !DILocation(line: 34, column: 3, scope: !4706)
!4709 = !DILocation(line: 0, scope: !4706)
!4710 = !DILocation(line: 40, column: 3, scope: !4703)
!4711 = distinct !DISubprogram(name: "xstrtoimax", scope: !4712, file: !4712, line: 71, type: !4713, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !821, retainedNodes: !4717)
!4712 = !DIFile(filename: "lib/xstrtol.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a1112be551b7ea11a9f6293a4923a73")
!4713 = !DISubroutineType(types: !4714)
!4714 = !{!4715, !136, !1087, !87, !4716, !136}
!4715 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !825, line: 43, baseType: !824)
!4716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!4717 = !{!4718, !4719, !4720, !4721, !4722, !4723, !4724, !4725, !4726, !4727, !4730, !4731}
!4718 = !DILocalVariable(name: "nptr", arg: 1, scope: !4711, file: !4712, line: 71, type: !136)
!4719 = !DILocalVariable(name: "endptr", arg: 2, scope: !4711, file: !4712, line: 71, type: !1087)
!4720 = !DILocalVariable(name: "base", arg: 3, scope: !4711, file: !4712, line: 71, type: !87)
!4721 = !DILocalVariable(name: "val", arg: 4, scope: !4711, file: !4712, line: 72, type: !4716)
!4722 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !4711, file: !4712, line: 72, type: !136)
!4723 = !DILocalVariable(name: "t_ptr", scope: !4711, file: !4712, line: 74, type: !130)
!4724 = !DILocalVariable(name: "p", scope: !4711, file: !4712, line: 75, type: !1087)
!4725 = !DILocalVariable(name: "tmp", scope: !4711, file: !4712, line: 91, type: !827)
!4726 = !DILocalVariable(name: "err", scope: !4711, file: !4712, line: 92, type: !4715)
!4727 = !DILocalVariable(name: "xbase", scope: !4728, file: !4712, line: 126, type: !87)
!4728 = distinct !DILexicalBlock(scope: !4729, file: !4712, line: 119, column: 5)
!4729 = distinct !DILexicalBlock(scope: !4711, file: !4712, line: 118, column: 7)
!4730 = !DILocalVariable(name: "suffixes", scope: !4728, file: !4712, line: 127, type: !87)
!4731 = !DILocalVariable(name: "overflow", scope: !4728, file: !4712, line: 156, type: !4715)
!4732 = distinct !DIAssignID()
!4733 = !DILocation(line: 0, scope: !4711)
!4734 = !DILocation(line: 74, column: 3, scope: !4711)
!4735 = !DILocation(line: 75, column: 14, scope: !4711)
!4736 = !DILocation(line: 90, column: 3, scope: !4711)
!4737 = !DILocation(line: 90, column: 9, scope: !4711)
!4738 = !DILocation(line: 91, column: 20, scope: !4711)
!4739 = !DILocation(line: 94, column: 7, scope: !4740)
!4740 = distinct !DILexicalBlock(scope: !4711, file: !4712, line: 94, column: 7)
!4741 = !DILocation(line: 94, column: 10, scope: !4740)
!4742 = !DILocation(line: 94, column: 7, scope: !4711)
!4743 = !DILocation(line: 98, column: 14, scope: !4744)
!4744 = distinct !DILexicalBlock(scope: !4745, file: !4712, line: 98, column: 11)
!4745 = distinct !DILexicalBlock(scope: !4740, file: !4712, line: 95, column: 5)
!4746 = !DILocation(line: 98, column: 29, scope: !4744)
!4747 = !DILocation(line: 98, column: 32, scope: !4744)
!4748 = !DILocation(line: 98, column: 38, scope: !4744)
!4749 = !DILocation(line: 98, column: 41, scope: !4744)
!4750 = !DILocation(line: 98, column: 11, scope: !4745)
!4751 = !DILocation(line: 102, column: 12, scope: !4752)
!4752 = distinct !DILexicalBlock(scope: !4740, file: !4712, line: 102, column: 12)
!4753 = !DILocation(line: 102, column: 12, scope: !4740)
!4754 = !DILocation(line: 107, column: 5, scope: !4755)
!4755 = distinct !DILexicalBlock(scope: !4752, file: !4712, line: 103, column: 5)
!4756 = !DILocation(line: 112, column: 8, scope: !4757)
!4757 = distinct !DILexicalBlock(scope: !4711, file: !4712, line: 112, column: 7)
!4758 = !DILocation(line: 112, column: 7, scope: !4711)
!4759 = !DILocation(line: 114, column: 12, scope: !4760)
!4760 = distinct !DILexicalBlock(scope: !4757, file: !4712, line: 113, column: 5)
!4761 = !DILocation(line: 115, column: 7, scope: !4760)
!4762 = !DILocation(line: 118, column: 7, scope: !4729)
!4763 = !DILocation(line: 118, column: 11, scope: !4729)
!4764 = !DILocation(line: 118, column: 7, scope: !4711)
!4765 = !DILocation(line: 120, column: 12, scope: !4766)
!4766 = distinct !DILexicalBlock(scope: !4728, file: !4712, line: 120, column: 11)
!4767 = !DILocation(line: 120, column: 11, scope: !4728)
!4768 = !DILocation(line: 122, column: 16, scope: !4769)
!4769 = distinct !DILexicalBlock(scope: !4766, file: !4712, line: 121, column: 9)
!4770 = !DILocation(line: 123, column: 22, scope: !4769)
!4771 = !DILocation(line: 123, column: 11, scope: !4769)
!4772 = !DILocation(line: 0, scope: !4728)
!4773 = !DILocation(line: 128, column: 7, scope: !4728)
!4774 = !DILocation(line: 140, column: 15, scope: !4775)
!4775 = distinct !DILexicalBlock(scope: !4776, file: !4712, line: 140, column: 15)
!4776 = distinct !DILexicalBlock(scope: !4728, file: !4712, line: 129, column: 9)
!4777 = !DILocation(line: 140, column: 15, scope: !4776)
!4778 = !DILocation(line: 141, column: 21, scope: !4775)
!4779 = !DILocation(line: 141, column: 13, scope: !4775)
!4780 = !DILocation(line: 144, column: 21, scope: !4781)
!4781 = distinct !DILexicalBlock(scope: !4782, file: !4712, line: 144, column: 21)
!4782 = distinct !DILexicalBlock(scope: !4775, file: !4712, line: 142, column: 15)
!4783 = !DILocation(line: 144, column: 29, scope: !4781)
!4784 = !DILocation(line: 144, column: 21, scope: !4782)
!4785 = !DILocation(line: 152, column: 17, scope: !4782)
!4786 = !DILocation(line: 157, column: 7, scope: !4728)
!4787 = !DILocalVariable(name: "err", scope: !4788, file: !4712, line: 64, type: !4715)
!4788 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !4712, file: !4712, line: 62, type: !4789, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !821, retainedNodes: !4791)
!4789 = !DISubroutineType(types: !4790)
!4790 = !{!4715, !4716, !87, !87}
!4791 = !{!4792, !4793, !4794, !4787}
!4792 = !DILocalVariable(name: "x", arg: 1, scope: !4788, file: !4712, line: 62, type: !4716)
!4793 = !DILocalVariable(name: "base", arg: 2, scope: !4788, file: !4712, line: 62, type: !87)
!4794 = !DILocalVariable(name: "power", arg: 3, scope: !4788, file: !4712, line: 62, type: !87)
!4795 = !DILocation(line: 0, scope: !4788, inlinedAt: !4796)
!4796 = distinct !DILocation(line: 219, column: 22, scope: !4797)
!4797 = distinct !DILexicalBlock(scope: !4728, file: !4712, line: 158, column: 9)
!4798 = !DILocalVariable(name: "x", arg: 1, scope: !4799, file: !4712, line: 47, type: !4716)
!4799 = distinct !DISubprogram(name: "bkm_scale", scope: !4712, file: !4712, line: 47, type: !4800, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !821, retainedNodes: !4802)
!4800 = !DISubroutineType(types: !4801)
!4801 = !{!4715, !4716, !87}
!4802 = !{!4798, !4803, !4804}
!4803 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !4799, file: !4712, line: 47, type: !87)
!4804 = !DILocalVariable(name: "scaled", scope: !4799, file: !4712, line: 49, type: !827)
!4805 = !DILocation(line: 0, scope: !4799, inlinedAt: !4806)
!4806 = distinct !DILocation(line: 66, column: 12, scope: !4788, inlinedAt: !4796)
!4807 = !DILocation(line: 50, column: 7, scope: !4808, inlinedAt: !4806)
!4808 = distinct !DILexicalBlock(scope: !4799, file: !4712, line: 50, column: 7)
!4809 = !DILocation(line: 50, column: 7, scope: !4799, inlinedAt: !4806)
!4810 = !DILocation(line: 66, column: 9, scope: !4788, inlinedAt: !4796)
!4811 = !DILocation(line: 227, column: 11, scope: !4728)
!4812 = !DILocation(line: 0, scope: !4788, inlinedAt: !4813)
!4813 = distinct !DILocation(line: 215, column: 22, scope: !4797)
!4814 = !DILocation(line: 0, scope: !4799, inlinedAt: !4815)
!4815 = distinct !DILocation(line: 66, column: 12, scope: !4788, inlinedAt: !4813)
!4816 = !DILocation(line: 50, column: 7, scope: !4808, inlinedAt: !4815)
!4817 = !DILocation(line: 50, column: 7, scope: !4799, inlinedAt: !4815)
!4818 = !DILocation(line: 66, column: 9, scope: !4788, inlinedAt: !4813)
!4819 = !DILocation(line: 0, scope: !4788, inlinedAt: !4820)
!4820 = distinct !DILocation(line: 202, column: 22, scope: !4797)
!4821 = !DILocation(line: 0, scope: !4799, inlinedAt: !4822)
!4822 = distinct !DILocation(line: 66, column: 12, scope: !4788, inlinedAt: !4820)
!4823 = !DILocation(line: 50, column: 7, scope: !4808, inlinedAt: !4822)
!4824 = !DILocation(line: 50, column: 7, scope: !4799, inlinedAt: !4822)
!4825 = !DILocation(line: 66, column: 9, scope: !4788, inlinedAt: !4820)
!4826 = !DILocation(line: 0, scope: !4788, inlinedAt: !4827)
!4827 = distinct !DILocation(line: 198, column: 22, scope: !4797)
!4828 = !DILocation(line: 0, scope: !4799, inlinedAt: !4829)
!4829 = distinct !DILocation(line: 66, column: 12, scope: !4788, inlinedAt: !4827)
!4830 = !DILocation(line: 50, column: 7, scope: !4808, inlinedAt: !4829)
!4831 = !DILocation(line: 50, column: 7, scope: !4799, inlinedAt: !4829)
!4832 = !DILocation(line: 66, column: 9, scope: !4788, inlinedAt: !4827)
!4833 = !DILocation(line: 0, scope: !4788, inlinedAt: !4834)
!4834 = distinct !DILocation(line: 194, column: 22, scope: !4797)
!4835 = !DILocation(line: 0, scope: !4799, inlinedAt: !4836)
!4836 = distinct !DILocation(line: 66, column: 12, scope: !4788, inlinedAt: !4834)
!4837 = !DILocation(line: 50, column: 7, scope: !4808, inlinedAt: !4836)
!4838 = !DILocation(line: 50, column: 7, scope: !4799, inlinedAt: !4836)
!4839 = !DILocation(line: 66, column: 9, scope: !4788, inlinedAt: !4834)
!4840 = !DILocation(line: 0, scope: !4788, inlinedAt: !4841)
!4841 = distinct !DILocation(line: 175, column: 22, scope: !4797)
!4842 = !DILocation(line: 0, scope: !4799, inlinedAt: !4843)
!4843 = distinct !DILocation(line: 66, column: 12, scope: !4788, inlinedAt: !4841)
!4844 = !DILocation(line: 50, column: 7, scope: !4808, inlinedAt: !4843)
!4845 = !DILocation(line: 50, column: 7, scope: !4799, inlinedAt: !4843)
!4846 = !DILocation(line: 66, column: 9, scope: !4788, inlinedAt: !4841)
!4847 = !DILocation(line: 0, scope: !4799, inlinedAt: !4848)
!4848 = distinct !DILocation(line: 160, column: 22, scope: !4797)
!4849 = !DILocation(line: 50, column: 7, scope: !4808, inlinedAt: !4848)
!4850 = !DILocation(line: 50, column: 7, scope: !4799, inlinedAt: !4848)
!4851 = !DILocation(line: 161, column: 11, scope: !4797)
!4852 = !DILocation(line: 0, scope: !4799, inlinedAt: !4853)
!4853 = distinct !DILocation(line: 167, column: 22, scope: !4797)
!4854 = !DILocation(line: 50, column: 7, scope: !4808, inlinedAt: !4853)
!4855 = !DILocation(line: 50, column: 7, scope: !4799, inlinedAt: !4853)
!4856 = !DILocation(line: 168, column: 11, scope: !4797)
!4857 = !DILocation(line: 0, scope: !4788, inlinedAt: !4858)
!4858 = distinct !DILocation(line: 180, column: 22, scope: !4797)
!4859 = !DILocation(line: 0, scope: !4799, inlinedAt: !4860)
!4860 = distinct !DILocation(line: 66, column: 12, scope: !4788, inlinedAt: !4858)
!4861 = !DILocation(line: 50, column: 7, scope: !4808, inlinedAt: !4860)
!4862 = !DILocation(line: 50, column: 7, scope: !4799, inlinedAt: !4860)
!4863 = !DILocation(line: 66, column: 9, scope: !4788, inlinedAt: !4858)
!4864 = !DILocation(line: 0, scope: !4788, inlinedAt: !4865)
!4865 = distinct !DILocation(line: 185, column: 22, scope: !4797)
!4866 = !DILocation(line: 50, column: 7, scope: !4808, inlinedAt: !4867)
!4867 = distinct !DILocation(line: 66, column: 12, scope: !4788, inlinedAt: !4865)
!4868 = !DILocation(line: 50, column: 7, scope: !4799, inlinedAt: !4867)
!4869 = !DILocation(line: 0, scope: !4799, inlinedAt: !4867)
!4870 = !DILocation(line: 0, scope: !4788, inlinedAt: !4871)
!4871 = distinct !DILocation(line: 190, column: 22, scope: !4797)
!4872 = !DILocation(line: 0, scope: !4799, inlinedAt: !4873)
!4873 = distinct !DILocation(line: 66, column: 12, scope: !4788, inlinedAt: !4871)
!4874 = !DILocation(line: 50, column: 7, scope: !4808, inlinedAt: !4873)
!4875 = !DILocation(line: 50, column: 7, scope: !4799, inlinedAt: !4873)
!4876 = !DILocation(line: 66, column: 9, scope: !4788, inlinedAt: !4871)
!4877 = !DILocation(line: 0, scope: !4788, inlinedAt: !4878)
!4878 = distinct !DILocation(line: 207, column: 22, scope: !4797)
!4879 = !DILocation(line: 0, scope: !4799, inlinedAt: !4880)
!4880 = distinct !DILocation(line: 66, column: 12, scope: !4788, inlinedAt: !4878)
!4881 = !DILocation(line: 50, column: 7, scope: !4808, inlinedAt: !4880)
!4882 = !DILocation(line: 50, column: 7, scope: !4799, inlinedAt: !4880)
!4883 = !DILocation(line: 66, column: 9, scope: !4788, inlinedAt: !4878)
!4884 = !DILocation(line: 0, scope: !4799, inlinedAt: !4885)
!4885 = distinct !DILocation(line: 211, column: 22, scope: !4797)
!4886 = !DILocation(line: 50, column: 7, scope: !4808, inlinedAt: !4885)
!4887 = !DILocation(line: 50, column: 7, scope: !4799, inlinedAt: !4885)
!4888 = !DILocation(line: 212, column: 11, scope: !4797)
!4889 = !DILocation(line: 0, scope: !4797)
!4890 = !DILocation(line: 228, column: 10, scope: !4728)
!4891 = !DILocation(line: 229, column: 11, scope: !4892)
!4892 = distinct !DILexicalBlock(scope: !4728, file: !4712, line: 229, column: 11)
!4893 = !DILocation(line: 229, column: 11, scope: !4728)
!4894 = !DILocation(line: 223, column: 16, scope: !4797)
!4895 = !DILocation(line: 224, column: 22, scope: !4797)
!4896 = !DILocation(line: 100, column: 11, scope: !4745)
!4897 = !DILocation(line: 92, column: 16, scope: !4711)
!4898 = !DILocation(line: 233, column: 8, scope: !4711)
!4899 = !DILocation(line: 234, column: 3, scope: !4711)
!4900 = !DILocation(line: 235, column: 1, scope: !4711)
!4901 = !DISubprogram(name: "strtoimax", scope: !4902, file: !4902, line: 297, type: !4903, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4902 = !DIFile(filename: "/usr/include/inttypes.h", directory: "", checksumkind: CSK_MD5, checksum: "e498a0d76716f3e3909f4b6f2cb2f20f")
!4903 = !DISubroutineType(types: !4904)
!4904 = !{!827, !924, !4905, !87}
!4905 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1087)
!4906 = distinct !DISubprogram(name: "rpl_fopen", scope: !831, file: !831, line: 46, type: !4907, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !830, retainedNodes: !4943)
!4907 = !DISubroutineType(types: !4908)
!4908 = !{!4909, !136, !136}
!4909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4910, size: 64)
!4910 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !211, line: 7, baseType: !4911)
!4911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !213, line: 49, size: 1728, elements: !4912)
!4912 = !{!4913, !4914, !4915, !4916, !4917, !4918, !4919, !4920, !4921, !4922, !4923, !4924, !4925, !4926, !4928, !4929, !4930, !4931, !4932, !4933, !4934, !4935, !4936, !4937, !4938, !4939, !4940, !4941, !4942}
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4911, file: !213, line: 51, baseType: !87, size: 32)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4911, file: !213, line: 54, baseType: !130, size: 64, offset: 64)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4911, file: !213, line: 55, baseType: !130, size: 64, offset: 128)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4911, file: !213, line: 56, baseType: !130, size: 64, offset: 192)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4911, file: !213, line: 57, baseType: !130, size: 64, offset: 256)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4911, file: !213, line: 58, baseType: !130, size: 64, offset: 320)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4911, file: !213, line: 59, baseType: !130, size: 64, offset: 384)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4911, file: !213, line: 60, baseType: !130, size: 64, offset: 448)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4911, file: !213, line: 61, baseType: !130, size: 64, offset: 512)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4911, file: !213, line: 64, baseType: !130, size: 64, offset: 576)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4911, file: !213, line: 65, baseType: !130, size: 64, offset: 640)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4911, file: !213, line: 66, baseType: !130, size: 64, offset: 704)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4911, file: !213, line: 68, baseType: !228, size: 64, offset: 768)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4911, file: !213, line: 70, baseType: !4927, size: 64, offset: 832)
!4927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4911, size: 64)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4911, file: !213, line: 72, baseType: !87, size: 32, offset: 896)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4911, file: !213, line: 73, baseType: !87, size: 32, offset: 928)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4911, file: !213, line: 74, baseType: !235, size: 64, offset: 960)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4911, file: !213, line: 77, baseType: !132, size: 16, offset: 1024)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4911, file: !213, line: 78, baseType: !240, size: 8, offset: 1040)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4911, file: !213, line: 79, baseType: !54, size: 8, offset: 1048)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4911, file: !213, line: 81, baseType: !243, size: 64, offset: 1088)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4911, file: !213, line: 89, baseType: !246, size: 64, offset: 1152)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4911, file: !213, line: 91, baseType: !248, size: 64, offset: 1216)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4911, file: !213, line: 92, baseType: !251, size: 64, offset: 1280)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4911, file: !213, line: 93, baseType: !4927, size: 64, offset: 1344)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4911, file: !213, line: 94, baseType: !131, size: 64, offset: 1408)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4911, file: !213, line: 95, baseType: !133, size: 64, offset: 1472)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4911, file: !213, line: 96, baseType: !87, size: 32, offset: 1536)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4911, file: !213, line: 98, baseType: !258, size: 160, offset: 1568)
!4943 = !{!4944, !4945, !4946, !4947, !4948, !4949, !4953, !4955, !4956, !4961, !4964, !4965}
!4944 = !DILocalVariable(name: "filename", arg: 1, scope: !4906, file: !831, line: 46, type: !136)
!4945 = !DILocalVariable(name: "mode", arg: 2, scope: !4906, file: !831, line: 46, type: !136)
!4946 = !DILocalVariable(name: "open_direction", scope: !4906, file: !831, line: 54, type: !87)
!4947 = !DILocalVariable(name: "open_flags", scope: !4906, file: !831, line: 55, type: !87)
!4948 = !DILocalVariable(name: "open_flags_gnu", scope: !4906, file: !831, line: 57, type: !196)
!4949 = !DILocalVariable(name: "fdopen_mode_buf", scope: !4906, file: !831, line: 59, type: !4950)
!4950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 648, elements: !4951)
!4951 = !{!4952}
!4952 = !DISubrange(count: 81)
!4953 = !DILocalVariable(name: "p", scope: !4954, file: !831, line: 62, type: !136)
!4954 = distinct !DILexicalBlock(scope: !4906, file: !831, line: 61, column: 3)
!4955 = !DILocalVariable(name: "q", scope: !4954, file: !831, line: 64, type: !130)
!4956 = !DILocalVariable(name: "len", scope: !4957, file: !831, line: 128, type: !133)
!4957 = distinct !DILexicalBlock(scope: !4958, file: !831, line: 127, column: 9)
!4958 = distinct !DILexicalBlock(scope: !4959, file: !831, line: 68, column: 7)
!4959 = distinct !DILexicalBlock(scope: !4960, file: !831, line: 67, column: 5)
!4960 = distinct !DILexicalBlock(scope: !4954, file: !831, line: 67, column: 5)
!4961 = !DILocalVariable(name: "fd", scope: !4962, file: !831, line: 199, type: !87)
!4962 = distinct !DILexicalBlock(scope: !4963, file: !831, line: 198, column: 5)
!4963 = distinct !DILexicalBlock(scope: !4906, file: !831, line: 197, column: 7)
!4964 = !DILocalVariable(name: "fp", scope: !4962, file: !831, line: 204, type: !4909)
!4965 = !DILocalVariable(name: "saved_errno", scope: !4966, file: !831, line: 207, type: !87)
!4966 = distinct !DILexicalBlock(scope: !4967, file: !831, line: 206, column: 9)
!4967 = distinct !DILexicalBlock(scope: !4962, file: !831, line: 205, column: 11)
!4968 = distinct !DIAssignID()
!4969 = !DILocation(line: 0, scope: !4906)
!4970 = !DILocation(line: 59, column: 3, scope: !4906)
!4971 = !DILocation(line: 0, scope: !4954)
!4972 = !DILocation(line: 67, column: 5, scope: !4954)
!4973 = !DILocation(line: 54, column: 7, scope: !4906)
!4974 = !DILocation(line: 67, column: 12, scope: !4959)
!4975 = !DILocation(line: 67, column: 5, scope: !4960)
!4976 = !DILocation(line: 74, column: 19, scope: !4977)
!4977 = distinct !DILexicalBlock(scope: !4978, file: !831, line: 74, column: 17)
!4978 = distinct !DILexicalBlock(scope: !4958, file: !831, line: 70, column: 11)
!4979 = !DILocation(line: 74, column: 17, scope: !4978)
!4980 = !DILocation(line: 75, column: 17, scope: !4977)
!4981 = !DILocation(line: 75, column: 20, scope: !4977)
!4982 = !DILocation(line: 75, column: 15, scope: !4977)
!4983 = !DILocation(line: 80, column: 24, scope: !4978)
!4984 = !DILocation(line: 82, column: 19, scope: !4985)
!4985 = distinct !DILexicalBlock(scope: !4978, file: !831, line: 82, column: 17)
!4986 = !DILocation(line: 82, column: 17, scope: !4978)
!4987 = !DILocation(line: 83, column: 17, scope: !4985)
!4988 = !DILocation(line: 83, column: 20, scope: !4985)
!4989 = !DILocation(line: 83, column: 15, scope: !4985)
!4990 = !DILocation(line: 88, column: 24, scope: !4978)
!4991 = !DILocation(line: 90, column: 19, scope: !4992)
!4992 = distinct !DILexicalBlock(scope: !4978, file: !831, line: 90, column: 17)
!4993 = !DILocation(line: 90, column: 17, scope: !4978)
!4994 = !DILocation(line: 91, column: 17, scope: !4992)
!4995 = !DILocation(line: 91, column: 20, scope: !4992)
!4996 = !DILocation(line: 91, column: 15, scope: !4992)
!4997 = !DILocation(line: 100, column: 19, scope: !4998)
!4998 = distinct !DILexicalBlock(scope: !4978, file: !831, line: 100, column: 17)
!4999 = !DILocation(line: 100, column: 17, scope: !4978)
!5000 = !DILocation(line: 101, column: 17, scope: !4998)
!5001 = !DILocation(line: 101, column: 20, scope: !4998)
!5002 = !DILocation(line: 101, column: 15, scope: !4998)
!5003 = !DILocation(line: 107, column: 19, scope: !5004)
!5004 = distinct !DILexicalBlock(scope: !4978, file: !831, line: 107, column: 17)
!5005 = !DILocation(line: 107, column: 17, scope: !4978)
!5006 = !DILocation(line: 108, column: 17, scope: !5004)
!5007 = !DILocation(line: 108, column: 20, scope: !5004)
!5008 = !DILocation(line: 108, column: 15, scope: !5004)
!5009 = !DILocation(line: 113, column: 24, scope: !4978)
!5010 = !DILocation(line: 115, column: 13, scope: !4978)
!5011 = !DILocation(line: 117, column: 24, scope: !4978)
!5012 = !DILocation(line: 119, column: 13, scope: !4978)
!5013 = !DILocation(line: 128, column: 24, scope: !4957)
!5014 = !DILocation(line: 0, scope: !4957)
!5015 = !DILocation(line: 129, column: 48, scope: !5016)
!5016 = distinct !DILexicalBlock(scope: !4957, file: !831, line: 129, column: 15)
!5017 = !DILocation(line: 129, column: 15, scope: !4957)
!5018 = !DILocalVariable(name: "__dest", arg: 1, scope: !5019, file: !1276, line: 26, type: !4629)
!5019 = distinct !DISubprogram(name: "memcpy", scope: !1276, file: !1276, line: 26, type: !4627, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !830, retainedNodes: !5020)
!5020 = !{!5018, !5021, !5022}
!5021 = !DILocalVariable(name: "__src", arg: 2, scope: !5019, file: !1276, line: 26, type: !1081)
!5022 = !DILocalVariable(name: "__len", arg: 3, scope: !5019, file: !1276, line: 26, type: !133)
!5023 = !DILocation(line: 0, scope: !5019, inlinedAt: !5024)
!5024 = distinct !DILocation(line: 131, column: 11, scope: !4957)
!5025 = !DILocation(line: 29, column: 10, scope: !5019, inlinedAt: !5024)
!5026 = !DILocation(line: 132, column: 13, scope: !4957)
!5027 = !DILocation(line: 135, column: 9, scope: !4958)
!5028 = !DILocation(line: 67, column: 25, scope: !4959)
!5029 = !DILocation(line: 67, column: 5, scope: !4959)
!5030 = distinct !{!5030, !4975, !5031, !981}
!5031 = !DILocation(line: 136, column: 7, scope: !4960)
!5032 = !DILocation(line: 138, column: 8, scope: !4954)
!5033 = !DILocation(line: 197, column: 7, scope: !4963)
!5034 = !DILocation(line: 197, column: 7, scope: !4906)
!5035 = !DILocation(line: 199, column: 47, scope: !4962)
!5036 = !DILocation(line: 199, column: 16, scope: !4962)
!5037 = !DILocation(line: 0, scope: !4962)
!5038 = !DILocation(line: 201, column: 14, scope: !5039)
!5039 = distinct !DILexicalBlock(scope: !4962, file: !831, line: 201, column: 11)
!5040 = !DILocation(line: 201, column: 11, scope: !4962)
!5041 = !DILocation(line: 204, column: 18, scope: !4962)
!5042 = !DILocation(line: 205, column: 14, scope: !4967)
!5043 = !DILocation(line: 205, column: 11, scope: !4962)
!5044 = !DILocation(line: 207, column: 29, scope: !4966)
!5045 = !DILocation(line: 0, scope: !4966)
!5046 = !DILocation(line: 208, column: 11, scope: !4966)
!5047 = !DILocation(line: 209, column: 17, scope: !4966)
!5048 = !DILocation(line: 210, column: 9, scope: !4966)
!5049 = !DILocalVariable(name: "filename", arg: 1, scope: !5050, file: !831, line: 30, type: !136)
!5050 = distinct !DISubprogram(name: "orig_fopen", scope: !831, file: !831, line: 30, type: !4907, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !830, retainedNodes: !5051)
!5051 = !{!5049, !5052}
!5052 = !DILocalVariable(name: "mode", arg: 2, scope: !5050, file: !831, line: 30, type: !136)
!5053 = !DILocation(line: 0, scope: !5050, inlinedAt: !5054)
!5054 = distinct !DILocation(line: 219, column: 10, scope: !4906)
!5055 = !DILocation(line: 32, column: 10, scope: !5050, inlinedAt: !5054)
!5056 = !DILocation(line: 219, column: 3, scope: !4906)
!5057 = !DILocation(line: 220, column: 1, scope: !4906)
!5058 = !DISubprogram(name: "open", scope: !2290, file: !2290, line: 181, type: !5059, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5059 = !DISubroutineType(types: !5060)
!5060 = !{!87, !136, !87, null}
!5061 = !DISubprogram(name: "fdopen", scope: !929, file: !929, line: 293, type: !5062, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5062 = !DISubroutineType(types: !5063)
!5063 = !{!4909, !87, !136}
!5064 = !DISubprogram(name: "close", scope: !2155, file: !2155, line: 358, type: !1262, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5065 = !DISubprogram(name: "fopen", scope: !929, file: !929, line: 258, type: !5066, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5066 = !DISubroutineType(types: !5067)
!5067 = !{!4909, !924, !924}
!5068 = distinct !DISubprogram(name: "close_stream", scope: !833, file: !833, line: 55, type: !5069, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !832, retainedNodes: !5105)
!5069 = !DISubroutineType(types: !5070)
!5070 = !{!87, !5071}
!5071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5072, size: 64)
!5072 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !211, line: 7, baseType: !5073)
!5073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !213, line: 49, size: 1728, elements: !5074)
!5074 = !{!5075, !5076, !5077, !5078, !5079, !5080, !5081, !5082, !5083, !5084, !5085, !5086, !5087, !5088, !5090, !5091, !5092, !5093, !5094, !5095, !5096, !5097, !5098, !5099, !5100, !5101, !5102, !5103, !5104}
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5073, file: !213, line: 51, baseType: !87, size: 32)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5073, file: !213, line: 54, baseType: !130, size: 64, offset: 64)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5073, file: !213, line: 55, baseType: !130, size: 64, offset: 128)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5073, file: !213, line: 56, baseType: !130, size: 64, offset: 192)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5073, file: !213, line: 57, baseType: !130, size: 64, offset: 256)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5073, file: !213, line: 58, baseType: !130, size: 64, offset: 320)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5073, file: !213, line: 59, baseType: !130, size: 64, offset: 384)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5073, file: !213, line: 60, baseType: !130, size: 64, offset: 448)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5073, file: !213, line: 61, baseType: !130, size: 64, offset: 512)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5073, file: !213, line: 64, baseType: !130, size: 64, offset: 576)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5073, file: !213, line: 65, baseType: !130, size: 64, offset: 640)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5073, file: !213, line: 66, baseType: !130, size: 64, offset: 704)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5073, file: !213, line: 68, baseType: !228, size: 64, offset: 768)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5073, file: !213, line: 70, baseType: !5089, size: 64, offset: 832)
!5089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5073, size: 64)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5073, file: !213, line: 72, baseType: !87, size: 32, offset: 896)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5073, file: !213, line: 73, baseType: !87, size: 32, offset: 928)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5073, file: !213, line: 74, baseType: !235, size: 64, offset: 960)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5073, file: !213, line: 77, baseType: !132, size: 16, offset: 1024)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5073, file: !213, line: 78, baseType: !240, size: 8, offset: 1040)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5073, file: !213, line: 79, baseType: !54, size: 8, offset: 1048)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5073, file: !213, line: 81, baseType: !243, size: 64, offset: 1088)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5073, file: !213, line: 89, baseType: !246, size: 64, offset: 1152)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5073, file: !213, line: 91, baseType: !248, size: 64, offset: 1216)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5073, file: !213, line: 92, baseType: !251, size: 64, offset: 1280)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5073, file: !213, line: 93, baseType: !5089, size: 64, offset: 1344)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5073, file: !213, line: 94, baseType: !131, size: 64, offset: 1408)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5073, file: !213, line: 95, baseType: !133, size: 64, offset: 1472)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5073, file: !213, line: 96, baseType: !87, size: 32, offset: 1536)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5073, file: !213, line: 98, baseType: !258, size: 160, offset: 1568)
!5105 = !{!5106, !5107, !5109, !5110}
!5106 = !DILocalVariable(name: "stream", arg: 1, scope: !5068, file: !833, line: 55, type: !5071)
!5107 = !DILocalVariable(name: "some_pending", scope: !5068, file: !833, line: 57, type: !5108)
!5108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !196)
!5109 = !DILocalVariable(name: "prev_fail", scope: !5068, file: !833, line: 58, type: !5108)
!5110 = !DILocalVariable(name: "fclose_fail", scope: !5068, file: !833, line: 59, type: !5108)
!5111 = !DILocation(line: 0, scope: !5068)
!5112 = !DILocation(line: 57, column: 30, scope: !5068)
!5113 = !DILocalVariable(name: "__stream", arg: 1, scope: !5114, file: !1293, line: 135, type: !5071)
!5114 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1293, file: !1293, line: 135, type: !5069, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !832, retainedNodes: !5115)
!5115 = !{!5113}
!5116 = !DILocation(line: 0, scope: !5114, inlinedAt: !5117)
!5117 = distinct !DILocation(line: 58, column: 27, scope: !5068)
!5118 = !DILocation(line: 137, column: 10, scope: !5114, inlinedAt: !5117)
!5119 = !DILocation(line: 58, column: 43, scope: !5068)
!5120 = !DILocation(line: 59, column: 29, scope: !5068)
!5121 = !DILocation(line: 59, column: 45, scope: !5068)
!5122 = !DILocation(line: 69, column: 17, scope: !5123)
!5123 = distinct !DILexicalBlock(scope: !5068, file: !833, line: 69, column: 7)
!5124 = !DILocation(line: 57, column: 50, scope: !5068)
!5125 = !DILocation(line: 69, column: 33, scope: !5123)
!5126 = !DILocation(line: 69, column: 53, scope: !5123)
!5127 = !DILocation(line: 69, column: 59, scope: !5123)
!5128 = !DILocation(line: 69, column: 7, scope: !5068)
!5129 = !DILocation(line: 71, column: 11, scope: !5130)
!5130 = distinct !DILexicalBlock(scope: !5123, file: !833, line: 70, column: 5)
!5131 = !DILocation(line: 72, column: 9, scope: !5132)
!5132 = distinct !DILexicalBlock(scope: !5130, file: !833, line: 71, column: 11)
!5133 = !DILocation(line: 72, column: 15, scope: !5132)
!5134 = !DILocation(line: 77, column: 1, scope: !5068)
!5135 = !DISubprogram(name: "__fpending", scope: !2498, file: !2498, line: 75, type: !5136, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5136 = !DISubroutineType(types: !5137)
!5137 = !{!133, !5071}
!5138 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !743, file: !743, line: 100, type: !5139, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !5142)
!5139 = !DISubroutineType(types: !5140)
!5140 = !{!133, !2764, !136, !133, !5141}
!5141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!5142 = !{!5143, !5144, !5145, !5146, !5147}
!5143 = !DILocalVariable(name: "pwc", arg: 1, scope: !5138, file: !743, line: 100, type: !2764)
!5144 = !DILocalVariable(name: "s", arg: 2, scope: !5138, file: !743, line: 100, type: !136)
!5145 = !DILocalVariable(name: "n", arg: 3, scope: !5138, file: !743, line: 100, type: !133)
!5146 = !DILocalVariable(name: "ps", arg: 4, scope: !5138, file: !743, line: 100, type: !5141)
!5147 = !DILocalVariable(name: "ret", scope: !5138, file: !743, line: 130, type: !133)
!5148 = !DILocation(line: 0, scope: !5138)
!5149 = !DILocation(line: 105, column: 9, scope: !5150)
!5150 = distinct !DILexicalBlock(scope: !5138, file: !743, line: 105, column: 7)
!5151 = !DILocation(line: 105, column: 7, scope: !5138)
!5152 = !DILocation(line: 117, column: 10, scope: !5153)
!5153 = distinct !DILexicalBlock(scope: !5138, file: !743, line: 117, column: 7)
!5154 = !DILocation(line: 117, column: 7, scope: !5138)
!5155 = !DILocation(line: 130, column: 16, scope: !5138)
!5156 = !DILocation(line: 135, column: 11, scope: !5157)
!5157 = distinct !DILexicalBlock(scope: !5138, file: !743, line: 135, column: 7)
!5158 = !DILocation(line: 135, column: 25, scope: !5157)
!5159 = !DILocation(line: 135, column: 30, scope: !5157)
!5160 = !DILocation(line: 135, column: 7, scope: !5138)
!5161 = !DILocalVariable(name: "ps", arg: 1, scope: !5162, file: !2738, line: 1135, type: !5141)
!5162 = distinct !DISubprogram(name: "mbszero", scope: !2738, file: !2738, line: 1135, type: !5163, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !5165)
!5163 = !DISubroutineType(types: !5164)
!5164 = !{null, !5141}
!5165 = !{!5161}
!5166 = !DILocation(line: 0, scope: !5162, inlinedAt: !5167)
!5167 = distinct !DILocation(line: 137, column: 5, scope: !5157)
!5168 = !DILocalVariable(name: "__dest", arg: 1, scope: !5169, file: !1276, line: 57, type: !131)
!5169 = distinct !DISubprogram(name: "memset", scope: !1276, file: !1276, line: 57, type: !2747, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !5170)
!5170 = !{!5168, !5171, !5172}
!5171 = !DILocalVariable(name: "__ch", arg: 2, scope: !5169, file: !1276, line: 57, type: !87)
!5172 = !DILocalVariable(name: "__len", arg: 3, scope: !5169, file: !1276, line: 57, type: !133)
!5173 = !DILocation(line: 0, scope: !5169, inlinedAt: !5174)
!5174 = distinct !DILocation(line: 1137, column: 3, scope: !5162, inlinedAt: !5167)
!5175 = !DILocation(line: 59, column: 10, scope: !5169, inlinedAt: !5174)
!5176 = !DILocation(line: 137, column: 5, scope: !5157)
!5177 = !DILocation(line: 138, column: 11, scope: !5178)
!5178 = distinct !DILexicalBlock(scope: !5138, file: !743, line: 138, column: 7)
!5179 = !DILocation(line: 138, column: 7, scope: !5138)
!5180 = !DILocation(line: 139, column: 5, scope: !5178)
!5181 = !DILocation(line: 143, column: 26, scope: !5182)
!5182 = distinct !DILexicalBlock(scope: !5138, file: !743, line: 143, column: 7)
!5183 = !DILocation(line: 143, column: 41, scope: !5182)
!5184 = !DILocation(line: 143, column: 7, scope: !5138)
!5185 = !DILocation(line: 145, column: 15, scope: !5186)
!5186 = distinct !DILexicalBlock(scope: !5187, file: !743, line: 145, column: 11)
!5187 = distinct !DILexicalBlock(scope: !5182, file: !743, line: 144, column: 5)
!5188 = !DILocation(line: 145, column: 11, scope: !5187)
!5189 = !DILocation(line: 146, column: 32, scope: !5186)
!5190 = !DILocation(line: 146, column: 16, scope: !5186)
!5191 = !DILocation(line: 146, column: 14, scope: !5186)
!5192 = !DILocation(line: 146, column: 9, scope: !5186)
!5193 = !DILocation(line: 286, column: 1, scope: !5138)
!5194 = !DISubprogram(name: "mbsinit", scope: !5195, file: !5195, line: 293, type: !5196, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5195 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!5196 = !DISubroutineType(types: !5197)
!5197 = !{!87, !5198}
!5198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5199, size: 64)
!5199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !749)
!5200 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !835, file: !835, line: 27, type: !4269, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !834, retainedNodes: !5201)
!5201 = !{!5202, !5203, !5204, !5205}
!5202 = !DILocalVariable(name: "ptr", arg: 1, scope: !5200, file: !835, line: 27, type: !131)
!5203 = !DILocalVariable(name: "nmemb", arg: 2, scope: !5200, file: !835, line: 27, type: !133)
!5204 = !DILocalVariable(name: "size", arg: 3, scope: !5200, file: !835, line: 27, type: !133)
!5205 = !DILocalVariable(name: "nbytes", scope: !5200, file: !835, line: 29, type: !133)
!5206 = !DILocation(line: 0, scope: !5200)
!5207 = !DILocation(line: 30, column: 7, scope: !5208)
!5208 = distinct !DILexicalBlock(scope: !5200, file: !835, line: 30, column: 7)
!5209 = !DILocation(line: 30, column: 7, scope: !5200)
!5210 = !DILocation(line: 32, column: 7, scope: !5211)
!5211 = distinct !DILexicalBlock(scope: !5208, file: !835, line: 31, column: 5)
!5212 = !DILocation(line: 32, column: 13, scope: !5211)
!5213 = !DILocation(line: 33, column: 7, scope: !5211)
!5214 = !DILocalVariable(name: "ptr", arg: 1, scope: !5215, file: !4358, line: 2057, type: !131)
!5215 = distinct !DISubprogram(name: "rpl_realloc", scope: !4358, file: !4358, line: 2057, type: !4350, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !834, retainedNodes: !5216)
!5216 = !{!5214, !5217}
!5217 = !DILocalVariable(name: "size", arg: 2, scope: !5215, file: !4358, line: 2057, type: !133)
!5218 = !DILocation(line: 0, scope: !5215, inlinedAt: !5219)
!5219 = distinct !DILocation(line: 37, column: 10, scope: !5200)
!5220 = !DILocation(line: 2059, column: 24, scope: !5215, inlinedAt: !5219)
!5221 = !DILocation(line: 2059, column: 10, scope: !5215, inlinedAt: !5219)
!5222 = !DILocation(line: 37, column: 3, scope: !5200)
!5223 = !DILocation(line: 38, column: 1, scope: !5200)
!5224 = distinct !DISubprogram(name: "hard_locale", scope: !761, file: !761, line: 28, type: !5225, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !836, retainedNodes: !5227)
!5225 = !DISubroutineType(types: !5226)
!5226 = !{!196, !87}
!5227 = !{!5228, !5229}
!5228 = !DILocalVariable(name: "category", arg: 1, scope: !5224, file: !761, line: 28, type: !87)
!5229 = !DILocalVariable(name: "locale", scope: !5224, file: !761, line: 30, type: !5230)
!5230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !5231)
!5231 = !{!5232}
!5232 = !DISubrange(count: 257)
!5233 = distinct !DIAssignID()
!5234 = !DILocation(line: 0, scope: !5224)
!5235 = !DILocation(line: 30, column: 3, scope: !5224)
!5236 = !DILocation(line: 32, column: 7, scope: !5237)
!5237 = distinct !DILexicalBlock(scope: !5224, file: !761, line: 32, column: 7)
!5238 = !DILocation(line: 32, column: 7, scope: !5224)
!5239 = !DILocalVariable(name: "__s1", arg: 1, scope: !5240, file: !947, line: 1359, type: !136)
!5240 = distinct !DISubprogram(name: "streq", scope: !947, file: !947, line: 1359, type: !948, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !836, retainedNodes: !5241)
!5241 = !{!5239, !5242}
!5242 = !DILocalVariable(name: "__s2", arg: 2, scope: !5240, file: !947, line: 1359, type: !136)
!5243 = !DILocation(line: 0, scope: !5240, inlinedAt: !5244)
!5244 = distinct !DILocation(line: 35, column: 9, scope: !5245)
!5245 = distinct !DILexicalBlock(scope: !5224, file: !761, line: 35, column: 7)
!5246 = !DILocation(line: 1361, column: 11, scope: !5240, inlinedAt: !5244)
!5247 = !DILocation(line: 35, column: 29, scope: !5245)
!5248 = !DILocation(line: 0, scope: !5240, inlinedAt: !5249)
!5249 = distinct !DILocation(line: 35, column: 32, scope: !5245)
!5250 = !DILocation(line: 1361, column: 11, scope: !5240, inlinedAt: !5249)
!5251 = !DILocation(line: 1361, column: 10, scope: !5240, inlinedAt: !5249)
!5252 = !DILocation(line: 35, column: 7, scope: !5224)
!5253 = !DILocation(line: 46, column: 3, scope: !5224)
!5254 = !DILocation(line: 47, column: 1, scope: !5224)
!5255 = distinct !DISubprogram(name: "setlocale_null_r", scope: !841, file: !841, line: 154, type: !5256, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !840, retainedNodes: !5258)
!5256 = !DISubroutineType(types: !5257)
!5257 = !{!87, !87, !130, !133}
!5258 = !{!5259, !5260, !5261}
!5259 = !DILocalVariable(name: "category", arg: 1, scope: !5255, file: !841, line: 154, type: !87)
!5260 = !DILocalVariable(name: "buf", arg: 2, scope: !5255, file: !841, line: 154, type: !130)
!5261 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5255, file: !841, line: 154, type: !133)
!5262 = !DILocation(line: 0, scope: !5255)
!5263 = !DILocation(line: 159, column: 10, scope: !5255)
!5264 = !DILocation(line: 159, column: 3, scope: !5255)
!5265 = distinct !DISubprogram(name: "setlocale_null", scope: !841, file: !841, line: 186, type: !5266, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !840, retainedNodes: !5268)
!5266 = !DISubroutineType(types: !5267)
!5267 = !{!136, !87}
!5268 = !{!5269}
!5269 = !DILocalVariable(name: "category", arg: 1, scope: !5265, file: !841, line: 186, type: !87)
!5270 = !DILocation(line: 0, scope: !5265)
!5271 = !DILocation(line: 189, column: 10, scope: !5265)
!5272 = !DILocation(line: 189, column: 3, scope: !5265)
!5273 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !843, file: !843, line: 35, type: !5266, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !842, retainedNodes: !5274)
!5274 = !{!5275, !5276}
!5275 = !DILocalVariable(name: "category", arg: 1, scope: !5273, file: !843, line: 35, type: !87)
!5276 = !DILocalVariable(name: "result", scope: !5273, file: !843, line: 37, type: !136)
!5277 = !DILocation(line: 0, scope: !5273)
!5278 = !DILocation(line: 37, column: 24, scope: !5273)
!5279 = !DILocation(line: 62, column: 3, scope: !5273)
!5280 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !843, file: !843, line: 66, type: !5256, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !842, retainedNodes: !5281)
!5281 = !{!5282, !5283, !5284, !5285, !5286}
!5282 = !DILocalVariable(name: "category", arg: 1, scope: !5280, file: !843, line: 66, type: !87)
!5283 = !DILocalVariable(name: "buf", arg: 2, scope: !5280, file: !843, line: 66, type: !130)
!5284 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5280, file: !843, line: 66, type: !133)
!5285 = !DILocalVariable(name: "result", scope: !5280, file: !843, line: 111, type: !136)
!5286 = !DILocalVariable(name: "length", scope: !5287, file: !843, line: 125, type: !133)
!5287 = distinct !DILexicalBlock(scope: !5288, file: !843, line: 124, column: 5)
!5288 = distinct !DILexicalBlock(scope: !5280, file: !843, line: 113, column: 7)
!5289 = !DILocation(line: 0, scope: !5280)
!5290 = !DILocation(line: 0, scope: !5273, inlinedAt: !5291)
!5291 = distinct !DILocation(line: 111, column: 24, scope: !5280)
!5292 = !DILocation(line: 37, column: 24, scope: !5273, inlinedAt: !5291)
!5293 = !DILocation(line: 113, column: 14, scope: !5288)
!5294 = !DILocation(line: 113, column: 7, scope: !5280)
!5295 = !DILocation(line: 116, column: 19, scope: !5296)
!5296 = distinct !DILexicalBlock(scope: !5297, file: !843, line: 116, column: 11)
!5297 = distinct !DILexicalBlock(scope: !5288, file: !843, line: 114, column: 5)
!5298 = !DILocation(line: 116, column: 11, scope: !5297)
!5299 = !DILocation(line: 120, column: 16, scope: !5296)
!5300 = !DILocation(line: 120, column: 9, scope: !5296)
!5301 = !DILocation(line: 125, column: 23, scope: !5287)
!5302 = !DILocation(line: 0, scope: !5287)
!5303 = !DILocation(line: 126, column: 18, scope: !5304)
!5304 = distinct !DILexicalBlock(scope: !5287, file: !843, line: 126, column: 11)
!5305 = !DILocation(line: 126, column: 11, scope: !5287)
!5306 = !DILocation(line: 128, column: 39, scope: !5307)
!5307 = distinct !DILexicalBlock(scope: !5304, file: !843, line: 127, column: 9)
!5308 = !DILocalVariable(name: "__dest", arg: 1, scope: !5309, file: !1276, line: 26, type: !4629)
!5309 = distinct !DISubprogram(name: "memcpy", scope: !1276, file: !1276, line: 26, type: !4627, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !842, retainedNodes: !5310)
!5310 = !{!5308, !5311, !5312}
!5311 = !DILocalVariable(name: "__src", arg: 2, scope: !5309, file: !1276, line: 26, type: !1081)
!5312 = !DILocalVariable(name: "__len", arg: 3, scope: !5309, file: !1276, line: 26, type: !133)
!5313 = !DILocation(line: 0, scope: !5309, inlinedAt: !5314)
!5314 = distinct !DILocation(line: 128, column: 11, scope: !5307)
!5315 = !DILocation(line: 29, column: 10, scope: !5309, inlinedAt: !5314)
!5316 = !DILocation(line: 129, column: 11, scope: !5307)
!5317 = !DILocation(line: 133, column: 23, scope: !5318)
!5318 = distinct !DILexicalBlock(scope: !5319, file: !843, line: 133, column: 15)
!5319 = distinct !DILexicalBlock(scope: !5304, file: !843, line: 132, column: 9)
!5320 = !DILocation(line: 133, column: 15, scope: !5319)
!5321 = !DILocation(line: 138, column: 44, scope: !5322)
!5322 = distinct !DILexicalBlock(scope: !5318, file: !843, line: 134, column: 13)
!5323 = !DILocation(line: 0, scope: !5309, inlinedAt: !5324)
!5324 = distinct !DILocation(line: 138, column: 15, scope: !5322)
!5325 = !DILocation(line: 29, column: 10, scope: !5309, inlinedAt: !5324)
!5326 = !DILocation(line: 139, column: 15, scope: !5322)
!5327 = !DILocation(line: 139, column: 32, scope: !5322)
!5328 = !DILocation(line: 140, column: 13, scope: !5322)
!5329 = !DILocation(line: 0, scope: !5288)
!5330 = !DILocation(line: 145, column: 1, scope: !5280)
