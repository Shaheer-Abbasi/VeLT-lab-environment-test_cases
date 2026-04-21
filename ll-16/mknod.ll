; ModuleID = 'src/mknod.bc'
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
%struct.mode_change = type { i8, i8, i32, i32, i32 }
%struct.stat = type { i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, %struct.timespec, %struct.timespec, %struct.timespec, [2 x i32] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [47 x i8] c"Usage: %s [OPTION]... NAME TYPE [MAJOR MINOR]\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [49 x i8] c"Create the special file NAME of the given TYPE.\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [6 x i8] c"mknod\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [79 x i8] c"  -m, --mode=MODE\0A         set file permission bits to MODE, not a=rw - umask\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [64 x i8] c"  -Z\0A         set the SELinux security context to default type\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [127 x i8] c"      --context[=CTX]\0A         like -Z, or if CTX is specified then set the\0A         SELinux or SMACK security context to CTX\0A\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1, !dbg !42
@.str.9 = private unnamed_addr constant [261 x i8] c"\0ABoth MAJOR and MINOR must be specified when TYPE is b, c, or u, and they\0Amust be omitted when TYPE is p.  If MAJOR or MINOR begins with 0x or 0X,\0Ait is interpreted as hexadecimal; otherwise, if it begins with 0, as octal;\0Aotherwise, as decimal.  TYPE may be:\0A\00", align 1, !dbg !47
@.str.10 = private unnamed_addr constant [127 x i8] c"\0A  b      create a block (buffered) special file\0A  c, u   create a character (unbuffered) special file\0A  p      create a FIFO\0A\00", align 1, !dbg !52
@.str.11 = private unnamed_addr constant [185 x i8] c"\0AYour shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1, !dbg !54
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !59
@.str.13 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !64
@.str.14 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1, !dbg !69
@.str.15 = private unnamed_addr constant [4 x i8] c"m:Z\00", align 1, !dbg !74
@longopts = internal constant [5 x %struct.option] [%struct.option { ptr @.str.70, i32 2, ptr null, i32 90 }, %struct.option { ptr @.str.71, i32 1, ptr null, i32 109 }, %struct.option { ptr @.str.72, i32 0, ptr null, i32 -2 }, %struct.option { ptr @.str.73, i32 0, ptr null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !79
@optarg = external local_unnamed_addr global ptr, align 8
@.str.16 = private unnamed_addr constant [73 x i8] c"warning: ignoring --context; it requires an SELinux/SMACK-enabled kernel\00", align 1, !dbg !142
@.str.17 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !147
@.str.18 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1, !dbg !152
@.str.19 = private unnamed_addr constant [13 x i8] c"invalid mode\00", align 1, !dbg !157
@.str.20 = private unnamed_addr constant [44 x i8] c"mode must specify only file permission bits\00", align 1, !dbg !162
@optind = external local_unnamed_addr global i32, align 4
@.str.21 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1, !dbg !167
@.str.22 = private unnamed_addr constant [25 x i8] c"missing operand after %s\00", align 1, !dbg !169
@.str.23 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1, !dbg !174
@.str.24 = private unnamed_addr constant [54 x i8] c"Special files require major and minor device numbers.\00", align 1, !dbg !176
@.str.25 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1, !dbg !181
@.str.26 = private unnamed_addr constant [50 x i8] c"Fifos do not have major and minor device numbers.\00", align 1, !dbg !186
@.str.28 = private unnamed_addr constant [31 x i8] c"invalid major device number %s\00", align 1, !dbg !190
@.str.29 = private unnamed_addr constant [31 x i8] c"invalid minor device number %s\00", align 1, !dbg !195
@.str.30 = private unnamed_addr constant [21 x i8] c"invalid device %s %s\00", align 1, !dbg !197
@.str.31 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !202
@.str.32 = private unnamed_addr constant [23 x i8] c"invalid device type %s\00", align 1, !dbg !207
@.str.33 = private unnamed_addr constant [29 x i8] c"cannot set permissions of %s\00", align 1, !dbg !212
@.str.34 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1, !dbg !217
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !222
@.str.35 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !304
@.str.36 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !309
@.str.37 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !311
@.str.38 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !313
@.str.52 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !350
@.str.53 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !352
@.str.54 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !354
@.str.55 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !356
@.str.56 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !361
@.str.57 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !366
@.str.58 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !371
@.str.59 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !373
@.str.60 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !375
@.str.61 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !377
@.str.65 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !388
@.str.66 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !390
@.str.67 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !395
@.str.68 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !400
@.str.69 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !405
@.str.70 = private unnamed_addr constant [8 x i8] c"context\00", align 1, !dbg !410
@.str.71 = private unnamed_addr constant [5 x i8] c"mode\00", align 1, !dbg !412
@.str.72 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !414
@.str.73 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !416
@.str.27 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1, !dbg !428
@Version = dso_local local_unnamed_addr global ptr @.str.27, align 8, !dbg !431
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !435
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !448
@.str.39 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !440
@.str.1.40 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !442
@.str.2.41 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !444
@.str.3.42 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !446
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !450
@stderr = external local_unnamed_addr global ptr, align 8
@.str.43 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !456
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !493
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !458
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !483
@.str.1.49 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !485
@.str.2.51 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !487
@.str.3.50 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !489
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !491
@.str.4.44 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !495
@.str.5.45 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !497
@.str.6.46 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !499
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !504
@.str.74 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !510
@.str.1.75 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !512
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !514
@.str.78 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !545
@.str.1.79 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !548
@.str.2.80 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !550
@.str.3.81 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !552
@.str.4.82 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !554
@.str.5.83 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !556
@.str.6.84 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !558
@.str.7.85 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !560
@.str.8.86 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !562
@.str.9.87 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !564
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.78, ptr @.str.1.79, ptr @.str.2.80, ptr @.str.3.81, ptr @.str.4.82, ptr @.str.5.83, ptr @.str.6.84, ptr @.str.7.85, ptr @.str.8.86, ptr @.str.9.87, ptr null], align 8, !dbg !566
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !577
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !591
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !629
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !636
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !593
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !638
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !581
@.str.10.90 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !598
@.str.11.88 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !600
@.str.12.91 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !602
@.str.13.89 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !604
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !606
@.str.100 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !644
@.str.1.101 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !647
@.str.2.102 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !649
@.str.3.103 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !651
@.str.4.104 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !653
@.str.5.105 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !655
@.str.6.106 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !660
@.str.7.107 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !665
@.str.8.108 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !667
@.str.9.109 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !669
@.str.10.110 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !674
@.str.11.111 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !679
@.str.12.112 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !684
@.str.13.113 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !686
@.str.14.114 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !688
@.str.15.115 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !693
@.str.16.116 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !698
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.121 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !703
@.str.18.122 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !705
@.str.19.123 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !707
@.str.20.124 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !709
@.str.21.125 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !711
@.str.22.126 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !713
@.str.23.127 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !715
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !717
@exit_failure = dso_local global i32 1, align 4, !dbg !723
@.str.144 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !729
@.str.1.142 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !732
@.str.2.143 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !734
@.str.157 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !736
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !739
@.str.162 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !754
@.str.1.163 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !757

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !849 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !853, metadata !DIExpression()), !dbg !854
  %2 = icmp eq i32 %0, 0, !dbg !855
  br i1 %2, label %8, label %3, !dbg !857

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !858, !tbaa !860
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #36, !dbg !858
  %6 = load ptr, ptr @program_name, align 8, !dbg !858, !tbaa !860
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #36, !dbg !858
  br label %45, !dbg !858

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #36, !dbg !864
  %10 = load ptr, ptr @program_name, align 8, !dbg !864, !tbaa !860
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #36, !dbg !864
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #36, !dbg !866
  %13 = load ptr, ptr @stdout, align 8, !dbg !866, !tbaa !860
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !866
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.34, i32 noundef 5) #36, !dbg !867
  %16 = load ptr, ptr @stdout, align 8, !dbg !867, !tbaa !860
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !867
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #36, !dbg !871
  tail call fastcc void @oputs_(ptr noundef %18), !dbg !871
  %19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #36, !dbg !872
  tail call fastcc void @oputs_(ptr noundef %19), !dbg !872
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #36, !dbg !873
  tail call fastcc void @oputs_(ptr noundef %20), !dbg !873
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #36, !dbg !874
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !874
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #36, !dbg !875
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !875
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #36, !dbg !876
  %24 = load ptr, ptr @stdout, align 8, !dbg !876, !tbaa !860
  %25 = tail call i32 @fputs_unlocked(ptr noundef %23, ptr noundef %24), !dbg !876
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #36, !dbg !877
  %27 = load ptr, ptr @stdout, align 8, !dbg !877, !tbaa !860
  %28 = tail call i32 @fputs_unlocked(ptr noundef %26, ptr noundef %27), !dbg !877
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #36, !dbg !878
  %30 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %29, ptr noundef nonnull @.str.3) #36, !dbg !878
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !879, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !891, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata ptr poison, metadata !891, metadata !DIExpression()), !dbg !896
  tail call void @emit_bug_reporting_address() #36, !dbg !898
  %31 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #36, !dbg !899
  call void @llvm.dbg.value(metadata ptr %31, metadata !894, metadata !DIExpression()), !dbg !896
  %32 = icmp eq ptr %31, null, !dbg !900
  br i1 %32, label %40, label %33, !dbg !902

33:                                               ; preds = %8
  %34 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %31, ptr noundef nonnull dereferenceable(4) @.str.65, i64 noundef 3) #37, !dbg !903
  %35 = icmp eq i32 %34, 0, !dbg !903
  br i1 %35, label %40, label %36, !dbg !904

36:                                               ; preds = %33
  %37 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.66, i32 noundef 5) #36, !dbg !905
  %38 = load ptr, ptr @stdout, align 8, !dbg !905, !tbaa !860
  %39 = tail call i32 @fputs_unlocked(ptr noundef %37, ptr noundef %38), !dbg !905
  br label %40, !dbg !907

40:                                               ; preds = %8, %33, %36
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !891, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !895, metadata !DIExpression()), !dbg !896
  %41 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.67, i32 noundef 5) #36, !dbg !908
  %42 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %41, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.3) #36, !dbg !908
  %43 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.68, i32 noundef 5) #36, !dbg !909
  %44 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %43, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.69) #36, !dbg !909
  br label %45

45:                                               ; preds = %40, %3
  tail call void @exit(i32 noundef %0) #38, !dbg !910
  unreachable, !dbg !910
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !911 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !915 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !921 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !924 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !224 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !228, metadata !DIExpression()), !dbg !927
  call void @llvm.dbg.value(metadata ptr %0, metadata !229, metadata !DIExpression()), !dbg !927
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !928, !tbaa !929
  %3 = icmp eq i32 %2, -1, !dbg !931
  br i1 %3, label %4, label %16, !dbg !932

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.35) #36, !dbg !933
  call void @llvm.dbg.value(metadata ptr %5, metadata !230, metadata !DIExpression()), !dbg !934
  %6 = icmp eq ptr %5, null, !dbg !935
  br i1 %6, label %14, label %7, !dbg !936

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !937, !tbaa !938
  %9 = icmp eq i8 %8, 0, !dbg !937
  br i1 %9, label %14, label %10, !dbg !939

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !940, metadata !DIExpression()), !dbg !947
  call void @llvm.dbg.value(metadata ptr @.str.36, metadata !946, metadata !DIExpression()), !dbg !947
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.36) #37, !dbg !949
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
  %20 = load ptr, ptr @stdout, align 8, !dbg !956, !tbaa !860
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !956
  br label %122, !dbg !958

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !233, metadata !DIExpression()), !dbg !927
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.37) #37, !dbg !959
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !960
  call void @llvm.dbg.value(metadata ptr %24, metadata !235, metadata !DIExpression()), !dbg !927
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #37, !dbg !961
  call void @llvm.dbg.value(metadata ptr %25, metadata !236, metadata !DIExpression()), !dbg !927
  %26 = icmp eq ptr %25, null, !dbg !962
  br i1 %26, label %54, label %27, !dbg !963

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !964
  br i1 %28, label %54, label %29, !dbg !965

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !237, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.value(metadata i64 0, metadata !241, metadata !DIExpression()), !dbg !966
  %30 = icmp ult ptr %24, %25, !dbg !967
  br i1 %30, label %31, label %52, !dbg !968

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #39, !dbg !927
  %33 = load ptr, ptr %32, align 8, !tbaa !860
  br label %34, !dbg !968

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !237, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.value(metadata i64 %36, metadata !241, metadata !DIExpression()), !dbg !966
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !969
  call void @llvm.dbg.value(metadata ptr %37, metadata !237, metadata !DIExpression()), !dbg !966
  %38 = load i8, ptr %35, align 1, !dbg !969, !tbaa !938
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !969
  %41 = load i16, ptr %40, align 2, !dbg !969, !tbaa !970
  %42 = freeze i16 %41, !dbg !972
  %43 = lshr i16 %42, 13, !dbg !972
  %44 = and i16 %43, 1, !dbg !972
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !973
  call void @llvm.dbg.value(metadata i64 %46, metadata !241, metadata !DIExpression()), !dbg !966
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

54:                                               ; preds = %52, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %52 ], [ %24, %50 ], !dbg !927
  %56 = phi i1 [ true, %27 ], [ false, %22 ], [ %53, %52 ], [ %51, %50 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !233, metadata !DIExpression()), !dbg !927
  call void @llvm.dbg.value(metadata ptr %55, metadata !236, metadata !DIExpression()), !dbg !927
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.38) #37, !dbg !980
  call void @llvm.dbg.value(metadata i64 %57, metadata !242, metadata !DIExpression()), !dbg !927
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !981
  call void @llvm.dbg.value(metadata ptr %58, metadata !243, metadata !DIExpression()), !dbg !927
  br label %59, !dbg !982

59:                                               ; preds = %90, %54
  %60 = phi ptr [ %58, %54 ], [ %91, %90 ], !dbg !927
  %61 = phi i1 [ %56, %54 ], [ %69, %90 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !233, metadata !DIExpression()), !dbg !927
  call void @llvm.dbg.value(metadata ptr %60, metadata !243, metadata !DIExpression()), !dbg !927
  %62 = load i8, ptr %60, align 1, !dbg !983, !tbaa !938
  switch i8 %62, label %68 [
    i8 0, label %92
    i8 10, label %92
    i8 45, label %63
  ], !dbg !984

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !985
  %65 = load i8, ptr %64, align 1, !dbg !988, !tbaa !938
  %66 = icmp ne i8 %65, 45, !dbg !989
  %67 = select i1 %66, i1 %61, i1 false, !dbg !990
  br label %68, !dbg !990

68:                                               ; preds = %63, %59
  %69 = phi i1 [ %61, %59 ], [ %67, %63 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !233, metadata !DIExpression()), !dbg !927
  %70 = tail call ptr @__ctype_b_loc() #39, !dbg !991
  %71 = load ptr, ptr %70, align 8, !dbg !991, !tbaa !860
  %72 = zext i8 %62 to i64
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !991
  %74 = load i16, ptr %73, align 2, !dbg !991, !tbaa !970
  %75 = and i16 %74, 8192, !dbg !991
  %76 = icmp eq i16 %75, 0, !dbg !991
  br i1 %76, label %90, label %77, !dbg !993

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !994
  br i1 %78, label %92, label %79, !dbg !997

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !998
  %81 = load i8, ptr %80, align 1, !dbg !998, !tbaa !938
  %82 = zext i8 %81 to i64
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !998
  %84 = load i16, ptr %83, align 2, !dbg !998, !tbaa !970
  %85 = and i16 %84, 8192, !dbg !998
  %86 = icmp eq i16 %85, 0, !dbg !998
  %87 = icmp eq i8 %81, 45
  %88 = select i1 %69, i1 true, i1 %87
  %89 = select i1 %86, i1 %88, i1 false, !dbg !999
  br i1 %89, label %90, label %92, !dbg !999

90:                                               ; preds = %79, %68
  %91 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1000
  call void @llvm.dbg.value(metadata ptr %91, metadata !243, metadata !DIExpression()), !dbg !927
  br label %59, !dbg !982, !llvm.loop !1001

92:                                               ; preds = %59, %59, %77, %79
  %93 = ptrtoint ptr %24 to i64, !dbg !1003
  %94 = load ptr, ptr @stdout, align 8, !dbg !1003, !tbaa !860
  %95 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %94), !dbg !1003
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !940, metadata !DIExpression()), !dbg !1004
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !940, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !940, metadata !DIExpression()), !dbg !1008
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !940, metadata !DIExpression()), !dbg !1010
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !940, metadata !DIExpression()), !dbg !1012
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !940, metadata !DIExpression()), !dbg !1014
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !940, metadata !DIExpression()), !dbg !1016
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !940, metadata !DIExpression()), !dbg !1018
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !940, metadata !DIExpression()), !dbg !1020
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !940, metadata !DIExpression()), !dbg !1022
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !299, metadata !DIExpression()), !dbg !927
  %96 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.52, i64 noundef 6) #37, !dbg !1024
  %97 = icmp eq i32 %96, 0, !dbg !1024
  br i1 %97, label %101, label %98, !dbg !1026

98:                                               ; preds = %92
  %99 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.53, i64 noundef 9) #37, !dbg !1027
  %100 = icmp eq i32 %99, 0, !dbg !1027
  br i1 %100, label %101, label %104, !dbg !1028

101:                                              ; preds = %98, %92
  %102 = trunc i64 %57 to i32, !dbg !1029
  %103 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %102, ptr noundef %55) #36, !dbg !1029
  br label %107, !dbg !1031

104:                                              ; preds = %98
  %105 = trunc i64 %57 to i32, !dbg !1032
  %106 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.3, i32 noundef %105, ptr noundef %55) #36, !dbg !1032
  br label %107

107:                                              ; preds = %104, %101
  %108 = load ptr, ptr @stdout, align 8, !dbg !1034, !tbaa !860
  %109 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.58, ptr noundef %108), !dbg !1034
  %110 = load ptr, ptr @stdout, align 8, !dbg !1035, !tbaa !860
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.59, ptr noundef %110), !dbg !1035
  %112 = ptrtoint ptr %60 to i64, !dbg !1036
  %113 = sub i64 %112, %93, !dbg !1036
  %114 = load ptr, ptr @stdout, align 8, !dbg !1036, !tbaa !860
  %115 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %113, ptr noundef %114), !dbg !1036
  %116 = load ptr, ptr @stdout, align 8, !dbg !1037, !tbaa !860
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.60, ptr noundef %116), !dbg !1037
  %118 = load ptr, ptr @stdout, align 8, !dbg !1038, !tbaa !860
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.61, ptr noundef %118), !dbg !1038
  %120 = load ptr, ptr @stdout, align 8, !dbg !1039, !tbaa !860
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %120), !dbg !1039
  br label %122, !dbg !1040

122:                                              ; preds = %107, %19
  ret void, !dbg !1040
}

; Function Attrs: nounwind
declare !dbg !1041 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1045 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1049 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1051 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1054 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1057 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1060 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1063 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1069 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1070 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1076 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1081, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata ptr %1, metadata !1082, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata ptr null, metadata !1083, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata ptr null, metadata !1084, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata ptr null, metadata !1085, metadata !DIExpression()), !dbg !1113
  %5 = load ptr, ptr %1, align 8, !dbg !1114, !tbaa !860
  tail call void @set_program_name(ptr noundef %5) #36, !dbg !1115
  %6 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.12) #36, !dbg !1116
  %7 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #36, !dbg !1117
  %8 = tail call ptr @textdomain(ptr noundef nonnull @.str.13) #36, !dbg !1118
  %9 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #36, !dbg !1119
  br label %10, !dbg !1120

10:                                               ; preds = %14, %2
  %11 = phi ptr [ %15, %14 ], [ null, %2 ]
  br label %12, !dbg !1120

12:                                               ; preds = %21, %10
  call void @llvm.dbg.value(metadata ptr %11, metadata !1083, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata ptr null, metadata !1084, metadata !DIExpression()), !dbg !1113
  %13 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.15, ptr noundef nonnull @longopts, ptr noundef null) #36, !dbg !1121
  call void @llvm.dbg.value(metadata i32 %13, metadata !1089, metadata !DIExpression()), !dbg !1113
  switch i32 %13, label %27 [
    i32 -1, label %28
    i32 109, label %14
    i32 90, label %16
    i32 -2, label %22
    i32 -3, label %23
  ], !dbg !1120

14:                                               ; preds = %12
  %15 = load ptr, ptr @optarg, align 8, !dbg !1122, !tbaa !860
  call void @llvm.dbg.value(metadata ptr %15, metadata !1083, metadata !DIExpression()), !dbg !1113
  br label %10, !dbg !1125, !llvm.loop !1126

16:                                               ; preds = %12
  %17 = load ptr, ptr @optarg, align 8, !dbg !1128, !tbaa !860
  %18 = icmp eq ptr %17, null, !dbg !1128
  br i1 %18, label %21, label %19, !dbg !1132

19:                                               ; preds = %16
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #36, !dbg !1133
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %20) #36, !dbg !1133
  br label %21, !dbg !1135

21:                                               ; preds = %19, %16
  br label %12, !dbg !1113, !llvm.loop !1126

22:                                               ; preds = %12
  tail call void @usage(i32 noundef 0) #40, !dbg !1136
  unreachable, !dbg !1136

23:                                               ; preds = %12
  %24 = load ptr, ptr @stdout, align 8, !dbg !1137, !tbaa !860
  %25 = load ptr, ptr @Version, align 8, !dbg !1137, !tbaa !860
  %26 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.18) #36, !dbg !1137
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %24, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.17, ptr noundef %25, ptr noundef %26, ptr noundef null) #36, !dbg !1137
  tail call void @exit(i32 noundef 0) #38, !dbg !1137
  unreachable, !dbg !1137

27:                                               ; preds = %12
  tail call void @usage(i32 noundef 1) #40, !dbg !1138
  unreachable, !dbg !1138

28:                                               ; preds = %12
  call void @llvm.dbg.value(metadata i32 438, metadata !1090, metadata !DIExpression()), !dbg !1113
  %29 = icmp eq ptr %11, null, !dbg !1139
  br i1 %29, label %42, label %30, !dbg !1140

30:                                               ; preds = %28
  %31 = tail call noalias ptr @mode_compile(ptr noundef nonnull %11) #36, !dbg !1141
  call void @llvm.dbg.value(metadata ptr %31, metadata !1093, metadata !DIExpression()), !dbg !1142
  %32 = icmp eq ptr %31, null, !dbg !1143
  br i1 %32, label %33, label %35, !dbg !1145

33:                                               ; preds = %30
  %34 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.19, i32 noundef 5) #36, !dbg !1146
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %34) #36, !dbg !1146
  unreachable, !dbg !1146

35:                                               ; preds = %30
  %36 = tail call i32 @umask(i32 noundef 0) #36, !dbg !1147
  call void @llvm.dbg.value(metadata i32 %36, metadata !1099, metadata !DIExpression()), !dbg !1142
  %37 = tail call i32 @umask(i32 noundef %36) #36, !dbg !1148
  %38 = tail call i32 @mode_adjust(i32 noundef 438, i1 noundef false, i32 noundef %36, ptr noundef nonnull %31, ptr noundef null) #37, !dbg !1149
  call void @llvm.dbg.value(metadata i32 %38, metadata !1090, metadata !DIExpression()), !dbg !1113
  tail call void @free(ptr noundef nonnull %31) #36, !dbg !1150
  %39 = icmp ult i32 %38, 512, !dbg !1151
  br i1 %39, label %42, label %40, !dbg !1153

40:                                               ; preds = %35
  %41 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.20, i32 noundef 5) #36, !dbg !1154
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %41) #36, !dbg !1154
  unreachable, !dbg !1154

42:                                               ; preds = %35, %28
  %43 = phi i32 [ 438, %28 ], [ %38, %35 ], !dbg !1113
  call void @llvm.dbg.value(metadata i32 %43, metadata !1090, metadata !DIExpression()), !dbg !1113
  %44 = load i32, ptr @optind, align 4, !dbg !1155, !tbaa !929
  %45 = icmp slt i32 %44, %0, !dbg !1156
  br i1 %45, label %46, label %56, !dbg !1157

46:                                               ; preds = %42
  %47 = add nsw i32 %44, 1, !dbg !1158
  %48 = icmp slt i32 %47, %0, !dbg !1159
  br i1 %48, label %49, label %57, !dbg !1160

49:                                               ; preds = %46
  %50 = sext i32 %47 to i64, !dbg !1161
  %51 = getelementptr inbounds ptr, ptr %1, i64 %50, !dbg !1161
  %52 = load ptr, ptr %51, align 8, !dbg !1161, !tbaa !860
  %53 = load i8, ptr %52, align 1, !dbg !1161, !tbaa !938
  %54 = freeze i8 %53, !dbg !1162
  %55 = icmp eq i8 %54, 112, !dbg !1162
  br i1 %55, label %56, label %57, !dbg !1163

56:                                               ; preds = %42, %49
  br label %57, !dbg !1163

57:                                               ; preds = %46, %49, %56
  %58 = phi i1 [ true, %56 ], [ false, %49 ], [ false, %46 ]
  %59 = phi i32 [ 2, %56 ], [ 4, %49 ], [ 4, %46 ]
  call void @llvm.dbg.value(metadata i32 %59, metadata !1100, metadata !DIExpression()), !dbg !1113
  %60 = sub nsw i32 %0, %44, !dbg !1164
  %61 = icmp slt i32 %60, %59, !dbg !1166
  br i1 %61, label %62, label %82, !dbg !1167

62:                                               ; preds = %57
  br i1 %45, label %65, label %63, !dbg !1168

63:                                               ; preds = %62
  %64 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.21, i32 noundef 5) #36, !dbg !1170
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %64) #36, !dbg !1170
  br label %72, !dbg !1170

65:                                               ; preds = %62
  %66 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.22, i32 noundef 5) #36, !dbg !1172
  %67 = add nsw i32 %0, -1, !dbg !1172
  %68 = sext i32 %67 to i64, !dbg !1172
  %69 = getelementptr inbounds ptr, ptr %1, i64 %68, !dbg !1172
  %70 = load ptr, ptr %69, align 8, !dbg !1172, !tbaa !860
  %71 = tail call ptr @quote(ptr noundef %70) #36, !dbg !1172
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %66, ptr noundef %71) #36, !dbg !1172
  br label %72

72:                                               ; preds = %65, %63
  br i1 %58, label %81, label %73, !dbg !1173

73:                                               ; preds = %72
  %74 = load i32, ptr @optind, align 4, !dbg !1175, !tbaa !929
  %75 = sub nsw i32 %0, %74, !dbg !1176
  %76 = icmp eq i32 %75, 2, !dbg !1177
  br i1 %76, label %77, label %81, !dbg !1178

77:                                               ; preds = %73
  %78 = load ptr, ptr @stderr, align 8, !dbg !1179, !tbaa !860
  %79 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.24, i32 noundef 5) #36, !dbg !1179
  %80 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %78, i32 noundef 1, ptr noundef nonnull @.str.23, ptr noundef %79) #36, !dbg !1179
  br label %81, !dbg !1179

81:                                               ; preds = %77, %73, %72
  tail call void @usage(i32 noundef 1) #40, !dbg !1180
  unreachable, !dbg !1180

82:                                               ; preds = %57
  %83 = icmp slt i32 %59, %60, !dbg !1181
  br i1 %83, label %84, label %101, !dbg !1183

84:                                               ; preds = %82
  %85 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.25, i32 noundef 5) #36, !dbg !1184
  %86 = load i32, ptr @optind, align 4, !dbg !1184, !tbaa !929
  %87 = add nsw i32 %86, %59, !dbg !1184
  %88 = sext i32 %87 to i64, !dbg !1184
  %89 = getelementptr inbounds ptr, ptr %1, i64 %88, !dbg !1184
  %90 = load ptr, ptr %89, align 8, !dbg !1184, !tbaa !860
  %91 = tail call ptr @quote(ptr noundef %90) #36, !dbg !1184
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %85, ptr noundef %91) #36, !dbg !1184
  br i1 %58, label %92, label %100, !dbg !1186

92:                                               ; preds = %84
  %93 = load i32, ptr @optind, align 4, !dbg !1188, !tbaa !929
  %94 = sub nsw i32 %0, %93, !dbg !1189
  %95 = icmp eq i32 %94, 4, !dbg !1190
  br i1 %95, label %96, label %100, !dbg !1191

96:                                               ; preds = %92
  %97 = load ptr, ptr @stderr, align 8, !dbg !1192, !tbaa !860
  %98 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.26, i32 noundef 5) #36, !dbg !1192
  %99 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %97, i32 noundef 1, ptr noundef nonnull @.str.23, ptr noundef %98) #36, !dbg !1192
  br label %100, !dbg !1192

100:                                              ; preds = %96, %92, %84
  tail call void @usage(i32 noundef 1) #40, !dbg !1193
  unreachable, !dbg !1193

101:                                              ; preds = %82
  %102 = add nsw i32 %44, 1, !dbg !1194
  %103 = sext i32 %102 to i64, !dbg !1195
  %104 = getelementptr inbounds ptr, ptr %1, i64 %103, !dbg !1195
  %105 = load ptr, ptr %104, align 8, !dbg !1195, !tbaa !860
  %106 = load i8, ptr %105, align 1, !dbg !1195, !tbaa !938
  switch i8 %106, label %182 [
    i8 98, label %108
    i8 99, label %107
    i8 117, label %107
    i8 112, label %168
  ], !dbg !1196

107:                                              ; preds = %101, %101
  call void @llvm.dbg.value(metadata i32 8192, metadata !1104, metadata !DIExpression()), !dbg !1113
  br label %108, !dbg !1197

108:                                              ; preds = %101, %107
  %109 = phi i32 [ 8192, %107 ], [ 24576, %101 ], !dbg !1198
  call void @llvm.dbg.value(metadata i32 %109, metadata !1104, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.label(metadata !1112), !dbg !1199
  %110 = add nsw i32 %44, 2, !dbg !1200
  %111 = sext i32 %110 to i64, !dbg !1201
  %112 = getelementptr inbounds ptr, ptr %1, i64 %111, !dbg !1201
  %113 = load ptr, ptr %112, align 8, !dbg !1201, !tbaa !860
  call void @llvm.dbg.value(metadata ptr %113, metadata !1105, metadata !DIExpression()), !dbg !1202
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #36, !dbg !1203
  call void @llvm.dbg.value(metadata ptr %3, metadata !1108, metadata !DIExpression(DW_OP_deref)), !dbg !1202
  %114 = call i32 @xstrtoumax(ptr noundef %113, ptr noundef null, i32 noundef 0, ptr noundef nonnull %3, ptr noundef nonnull @.str.12) #36, !dbg !1204
  %115 = icmp eq i32 %114, 0, !dbg !1206
  %116 = load i64, ptr %3, align 8
  %117 = icmp ult i64 %116, 4294967296
  %118 = select i1 %115, i1 %117, i1 false, !dbg !1207
  call void @llvm.dbg.value(metadata i64 %116, metadata !1108, metadata !DIExpression()), !dbg !1202
  br i1 %118, label %122, label %119, !dbg !1207

119:                                              ; preds = %108
  %120 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.28, i32 noundef 5) #36, !dbg !1208
  %121 = call ptr @quote(ptr noundef %113) #36, !dbg !1208
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %120, ptr noundef %121) #36, !dbg !1208
  unreachable, !dbg !1208

122:                                              ; preds = %108
  %123 = load i32, ptr @optind, align 4, !dbg !1209, !tbaa !929
  %124 = add nsw i32 %123, 3, !dbg !1210
  %125 = sext i32 %124 to i64, !dbg !1211
  %126 = getelementptr inbounds ptr, ptr %1, i64 %125, !dbg !1211
  %127 = load ptr, ptr %126, align 8, !dbg !1211, !tbaa !860
  call void @llvm.dbg.value(metadata ptr %127, metadata !1109, metadata !DIExpression()), !dbg !1202
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #36, !dbg !1212
  call void @llvm.dbg.value(metadata ptr %4, metadata !1110, metadata !DIExpression(DW_OP_deref)), !dbg !1202
  %128 = call i32 @xstrtoumax(ptr noundef %127, ptr noundef null, i32 noundef 0, ptr noundef nonnull %4, ptr noundef nonnull @.str.12) #36, !dbg !1213
  %129 = icmp eq i32 %128, 0, !dbg !1215
  br i1 %129, label %130, label %133, !dbg !1216

130:                                              ; preds = %122
  %131 = load i64, ptr %4, align 8, !dbg !1217, !tbaa !1218
  call void @llvm.dbg.value(metadata i64 %131, metadata !1110, metadata !DIExpression()), !dbg !1202
  %132 = icmp ult i64 %131, 4294967296, !dbg !1220
  br i1 %132, label %136, label %133, !dbg !1221

133:                                              ; preds = %130, %122
  %134 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.29, i32 noundef 5) #36, !dbg !1222
  %135 = call ptr @quote(ptr noundef %127) #36, !dbg !1222
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %134, ptr noundef %135) #36, !dbg !1222
  unreachable, !dbg !1222

136:                                              ; preds = %130
  %137 = load i64, ptr %3, align 8, !dbg !1223, !tbaa !1218
  call void @llvm.dbg.value(metadata i64 %137, metadata !1108, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i64 %137, metadata !1224, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1232
  call void @llvm.dbg.value(metadata i64 %131, metadata !1230, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1232
  %138 = shl i64 %137, 8, !dbg !1234
  %139 = and i64 %138, 1048320, !dbg !1234
  call void @llvm.dbg.value(metadata i64 %139, metadata !1231, metadata !DIExpression()), !dbg !1232
  %140 = shl i64 %137, 32, !dbg !1234
  %141 = and i64 %140, -17592186044416, !dbg !1234
  call void @llvm.dbg.value(metadata i64 poison, metadata !1231, metadata !DIExpression()), !dbg !1232
  %142 = and i64 %131, 255, !dbg !1234
  call void @llvm.dbg.value(metadata i64 poison, metadata !1231, metadata !DIExpression()), !dbg !1232
  %143 = shl nuw nsw i64 %131, 12, !dbg !1234
  %144 = and i64 %143, 17592184995840, !dbg !1234
  %145 = or i64 %144, %142, !dbg !1234
  %146 = or i64 %145, %139, !dbg !1234
  %147 = or i64 %146, %141, !dbg !1234
  call void @llvm.dbg.value(metadata i64 %147, metadata !1231, metadata !DIExpression()), !dbg !1232
  call void @llvm.dbg.value(metadata i64 %147, metadata !1111, metadata !DIExpression()), !dbg !1202
  %148 = icmp eq i64 %147, -1, !dbg !1235
  br i1 %148, label %149, label %151, !dbg !1237

149:                                              ; preds = %136
  %150 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.30, i32 noundef 5) #36, !dbg !1238
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %150, ptr noundef %113, ptr noundef %127) #36, !dbg !1238
  unreachable, !dbg !1238

151:                                              ; preds = %136
  %152 = load i32, ptr @optind, align 4, !dbg !1239, !tbaa !929
  %153 = sext i32 %152 to i64, !dbg !1241
  %154 = getelementptr inbounds ptr, ptr %1, i64 %153, !dbg !1241
  %155 = load ptr, ptr %154, align 8, !dbg !1241, !tbaa !860
  %156 = or i32 %109, %43, !dbg !1242
  %157 = call i32 @rpl_mknod(ptr noundef %155, i32 noundef %156, i64 noundef %147) #36, !dbg !1243
  %158 = icmp eq i32 %157, 0, !dbg !1244
  br i1 %158, label %167, label %159, !dbg !1245

159:                                              ; preds = %151
  %160 = tail call ptr @__errno_location() #39, !dbg !1246
  %161 = load i32, ptr %160, align 4, !dbg !1246, !tbaa !929
  %162 = load i32, ptr @optind, align 4, !dbg !1246, !tbaa !929
  %163 = sext i32 %162 to i64, !dbg !1246
  %164 = getelementptr inbounds ptr, ptr %1, i64 %163, !dbg !1246
  %165 = load ptr, ptr %164, align 8, !dbg !1246, !tbaa !860
  %166 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %165) #36, !dbg !1246
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %161, ptr noundef nonnull @.str.31, ptr noundef %166) #36, !dbg !1246
  unreachable, !dbg !1246

167:                                              ; preds = %151
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #36, !dbg !1247
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #36, !dbg !1247
  br label %190, !dbg !1248

168:                                              ; preds = %101
  %169 = sext i32 %44 to i64, !dbg !1249
  %170 = getelementptr inbounds ptr, ptr %1, i64 %169, !dbg !1249
  %171 = load ptr, ptr %170, align 8, !dbg !1249, !tbaa !860
  %172 = tail call i32 @mkfifo(ptr noundef %171, i32 noundef %43) #36, !dbg !1251
  %173 = icmp eq i32 %172, 0, !dbg !1252
  br i1 %173, label %190, label %174, !dbg !1253

174:                                              ; preds = %168
  %175 = tail call ptr @__errno_location() #39, !dbg !1254
  %176 = load i32, ptr %175, align 4, !dbg !1254, !tbaa !929
  %177 = load i32, ptr @optind, align 4, !dbg !1254, !tbaa !929
  %178 = sext i32 %177 to i64, !dbg !1254
  %179 = getelementptr inbounds ptr, ptr %1, i64 %178, !dbg !1254
  %180 = load ptr, ptr %179, align 8, !dbg !1254, !tbaa !860
  %181 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %180) #36, !dbg !1254
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %176, ptr noundef nonnull @.str.31, ptr noundef %181) #36, !dbg !1254
  unreachable, !dbg !1254

182:                                              ; preds = %101
  %183 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.32, i32 noundef 5) #36, !dbg !1255
  %184 = load i32, ptr @optind, align 4, !dbg !1255, !tbaa !929
  %185 = add nsw i32 %184, 1, !dbg !1255
  %186 = sext i32 %185 to i64, !dbg !1255
  %187 = getelementptr inbounds ptr, ptr %1, i64 %186, !dbg !1255
  %188 = load ptr, ptr %187, align 8, !dbg !1255, !tbaa !860
  %189 = tail call ptr @quote(ptr noundef %188) #36, !dbg !1255
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %183, ptr noundef %189) #36, !dbg !1255
  tail call void @usage(i32 noundef 1) #40, !dbg !1256
  unreachable, !dbg !1256

190:                                              ; preds = %168, %167
  br i1 %29, label %207, label %191, !dbg !1257

191:                                              ; preds = %190
  %192 = load i32, ptr @optind, align 4, !dbg !1259, !tbaa !929
  %193 = sext i32 %192 to i64, !dbg !1260
  %194 = getelementptr inbounds ptr, ptr %1, i64 %193, !dbg !1260
  %195 = load ptr, ptr %194, align 8, !dbg !1260, !tbaa !860
  %196 = call i32 @lchmod(ptr noundef %195, i32 noundef %43) #36, !dbg !1261
  %197 = icmp eq i32 %196, 0, !dbg !1262
  br i1 %197, label %207, label %198, !dbg !1263

198:                                              ; preds = %191
  %199 = tail call ptr @__errno_location() #39, !dbg !1264
  %200 = load i32, ptr %199, align 4, !dbg !1264, !tbaa !929
  %201 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.33, i32 noundef 5) #36, !dbg !1264
  %202 = load i32, ptr @optind, align 4, !dbg !1264, !tbaa !929
  %203 = sext i32 %202 to i64, !dbg !1264
  %204 = getelementptr inbounds ptr, ptr %1, i64 %203, !dbg !1264
  %205 = load ptr, ptr %204, align 8, !dbg !1264, !tbaa !860
  %206 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %205) #36, !dbg !1264
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %200, ptr noundef %201, ptr noundef %206) #36, !dbg !1264
  unreachable, !dbg !1264

207:                                              ; preds = %191, %190
  ret i32 0, !dbg !1265
}

; Function Attrs: nounwind
declare !dbg !1266 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1269 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1270 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1273 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1279 i32 @umask(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1283 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #12

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1286 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #12

; Function Attrs: nounwind
declare !dbg !1290 i32 @mkfifo(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1293 i32 @lchmod(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #13 !dbg !1294 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1296, metadata !DIExpression()), !dbg !1297
  store ptr %0, ptr @file_name, align 8, !dbg !1298, !tbaa !860
  ret void, !dbg !1299
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #13 !dbg !1300 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1304, metadata !DIExpression()), !dbg !1305
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !1306, !tbaa !1307
  ret void, !dbg !1309
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1310 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1315, !tbaa !860
  %2 = tail call i32 @close_stream(ptr noundef %1) #36, !dbg !1316
  %3 = icmp eq i32 %2, 0, !dbg !1317
  br i1 %3, label %22, label %4, !dbg !1318

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !1319, !tbaa !1307, !range !1320, !noundef !869
  %6 = icmp eq i8 %5, 0, !dbg !1319
  br i1 %6, label %11, label %7, !dbg !1321

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #39, !dbg !1322
  %9 = load i32, ptr %8, align 4, !dbg !1322, !tbaa !929
  %10 = icmp eq i32 %9, 32, !dbg !1323
  br i1 %10, label %22, label %11, !dbg !1324

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.1.40, i32 noundef 5) #36, !dbg !1325
  call void @llvm.dbg.value(metadata ptr %12, metadata !1312, metadata !DIExpression()), !dbg !1326
  %13 = load ptr, ptr @file_name, align 8, !dbg !1327, !tbaa !860
  %14 = icmp eq ptr %13, null, !dbg !1327
  %15 = tail call ptr @__errno_location() #39, !dbg !1329
  %16 = load i32, ptr %15, align 4, !dbg !1329, !tbaa !929
  br i1 %14, label %19, label %17, !dbg !1330

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #36, !dbg !1331
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.41, ptr noundef %18, ptr noundef %12) #36, !dbg !1331
  br label %20, !dbg !1331

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.42, ptr noundef %12) #36, !dbg !1332
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1333, !tbaa !929
  tail call void @_exit(i32 noundef %21) #38, !dbg !1334
  unreachable, !dbg !1334

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1335, !tbaa !860
  %24 = tail call i32 @close_stream(ptr noundef %23) #36, !dbg !1337
  %25 = icmp eq i32 %24, 0, !dbg !1338
  br i1 %25, label %28, label %26, !dbg !1339

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1340, !tbaa !929
  tail call void @_exit(i32 noundef %27) #38, !dbg !1341
  unreachable, !dbg !1341

28:                                               ; preds = %22
  ret void, !dbg !1342
}

; Function Attrs: noreturn
declare !dbg !1343 void @_exit(i32 noundef) local_unnamed_addr #14

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #15 !dbg !1345 {
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1349, metadata !DIExpression()), !dbg !1353
  call void @llvm.dbg.value(metadata i32 %1, metadata !1350, metadata !DIExpression()), !dbg !1353
  call void @llvm.dbg.value(metadata ptr %2, metadata !1351, metadata !DIExpression()), !dbg !1353
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1352, metadata !DIExpression()), !dbg !1354
  tail call fastcc void @flush_stdout(), !dbg !1355
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !1356, !tbaa !860
  %7 = icmp eq ptr %6, null, !dbg !1356
  br i1 %7, label %9, label %8, !dbg !1358

8:                                                ; preds = %4
  tail call void %6() #36, !dbg !1359
  br label %13, !dbg !1359

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !1360, !tbaa !860
  %11 = tail call ptr @getprogname() #37, !dbg !1360
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.43, ptr noundef %11) #36, !dbg !1360
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #36, !dbg !1362
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1362, !tbaa.struct !1363
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !1362
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #36, !dbg !1362
  ret void, !dbg !1364
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1365 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1367, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.value(metadata i32 1, metadata !1369, metadata !DIExpression()), !dbg !1374
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #36, !dbg !1377
  %2 = icmp slt i32 %1, 0, !dbg !1378
  br i1 %2, label %6, label %3, !dbg !1379

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1380, !tbaa !860
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #36, !dbg !1380
  br label %6, !dbg !1380

6:                                                ; preds = %3, %0
  ret void, !dbg !1381
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #16

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !1382 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1384, metadata !DIExpression()), !dbg !1388
  call void @llvm.dbg.value(metadata i32 %1, metadata !1385, metadata !DIExpression()), !dbg !1388
  call void @llvm.dbg.value(metadata ptr %2, metadata !1386, metadata !DIExpression()), !dbg !1388
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1387, metadata !DIExpression()), !dbg !1389
  %7 = load ptr, ptr @stderr, align 8, !dbg !1390, !tbaa !860
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #36, !dbg !1391, !noalias !1435
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1439
  call void @llvm.dbg.value(metadata ptr %7, metadata !1431, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata ptr %2, metadata !1432, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.declare(metadata ptr poison, metadata !1433, metadata !DIExpression()), !dbg !1441
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #36, !dbg !1391
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #36, !dbg !1391, !noalias !1435
  %9 = load i32, ptr @error_message_count, align 4, !dbg !1442, !tbaa !929
  %10 = add i32 %9, 1, !dbg !1442
  store i32 %10, ptr @error_message_count, align 4, !dbg !1442, !tbaa !929
  %11 = icmp eq i32 %1, 0, !dbg !1443
  br i1 %11, label %21, label %12, !dbg !1445

12:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1446, metadata !DIExpression()), !dbg !1454
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #36, !dbg !1456
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1450, metadata !DIExpression()), !dbg !1457
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #36, !dbg !1458
  call void @llvm.dbg.value(metadata ptr %13, metadata !1449, metadata !DIExpression()), !dbg !1454
  %14 = icmp eq ptr %13, null, !dbg !1459
  br i1 %14, label %15, label %17, !dbg !1461

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.44, ptr noundef nonnull @.str.5.45, i32 noundef 5) #36, !dbg !1462
  call void @llvm.dbg.value(metadata ptr %16, metadata !1449, metadata !DIExpression()), !dbg !1454
  br label %17, !dbg !1463

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !1454
  call void @llvm.dbg.value(metadata ptr %18, metadata !1449, metadata !DIExpression()), !dbg !1454
  %19 = load ptr, ptr @stderr, align 8, !dbg !1464, !tbaa !860
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.46, ptr noundef %18) #36, !dbg !1464
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #36, !dbg !1465
  br label %21, !dbg !1466

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !1467, !tbaa !860
  call void @llvm.dbg.value(metadata i32 10, metadata !1468, metadata !DIExpression()), !dbg !1475
  call void @llvm.dbg.value(metadata ptr %22, metadata !1474, metadata !DIExpression()), !dbg !1475
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !1477
  %24 = load ptr, ptr %23, align 8, !dbg !1477, !tbaa !1478
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !1477
  %26 = load ptr, ptr %25, align 8, !dbg !1477, !tbaa !1480
  %27 = icmp ult ptr %24, %26, !dbg !1477
  br i1 %27, label %30, label %28, !dbg !1477, !prof !1481

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #36, !dbg !1477
  br label %32, !dbg !1477

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !1477
  store ptr %31, ptr %23, align 8, !dbg !1477, !tbaa !1478
  store i8 10, ptr %24, align 1, !dbg !1477, !tbaa !938
  br label %32, !dbg !1477

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !1482, !tbaa !860
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #36, !dbg !1482
  %35 = icmp eq i32 %0, 0, !dbg !1483
  br i1 %35, label %37, label %36, !dbg !1485

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #38, !dbg !1486
  unreachable, !dbg !1486

37:                                               ; preds = %32
  ret void, !dbg !1487
}

declare !dbg !1488 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1491 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1494 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1497 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1500 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1504 {
  %4 = alloca %struct.__va_list, align 8
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1508, metadata !DIExpression()), !dbg !1512
  call void @llvm.dbg.value(metadata i32 %1, metadata !1509, metadata !DIExpression()), !dbg !1512
  call void @llvm.dbg.value(metadata ptr %2, metadata !1510, metadata !DIExpression()), !dbg !1512
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #36, !dbg !1513
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1511, metadata !DIExpression()), !dbg !1514
  call void @llvm.va_start(ptr nonnull %4), !dbg !1515
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #36, !dbg !1516
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !1516, !tbaa.struct !1363
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #41, !dbg !1516
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #36, !dbg !1516
  call void @llvm.va_end(ptr nonnull %4), !dbg !1517
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #36, !dbg !1518
  ret void, !dbg !1518
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #17

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #15 !dbg !460 {
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !477, metadata !DIExpression()), !dbg !1519
  call void @llvm.dbg.value(metadata i32 %1, metadata !478, metadata !DIExpression()), !dbg !1519
  call void @llvm.dbg.value(metadata ptr %2, metadata !479, metadata !DIExpression()), !dbg !1519
  call void @llvm.dbg.value(metadata i32 %3, metadata !480, metadata !DIExpression()), !dbg !1519
  call void @llvm.dbg.value(metadata ptr %4, metadata !481, metadata !DIExpression()), !dbg !1519
  call void @llvm.dbg.declare(metadata ptr %5, metadata !482, metadata !DIExpression()), !dbg !1520
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !1521, !tbaa !929
  %9 = icmp eq i32 %8, 0, !dbg !1521
  br i1 %9, label %24, label %10, !dbg !1523

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1524, !tbaa !929
  %12 = icmp eq i32 %11, %3, !dbg !1527
  br i1 %12, label %13, label %23, !dbg !1528

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1529, !tbaa !860
  %15 = icmp eq ptr %14, %2, !dbg !1530
  br i1 %15, label %37, label %16, !dbg !1531

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !1532
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !1533
  br i1 %19, label %20, label %23, !dbg !1533

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #37, !dbg !1534
  %22 = icmp eq i32 %21, 0, !dbg !1535
  br i1 %22, label %37, label %23, !dbg !1536

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1537, !tbaa !860
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1538, !tbaa !929
  br label %24, !dbg !1539

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1540
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !1541, !tbaa !860
  %26 = icmp eq ptr %25, null, !dbg !1541
  br i1 %26, label %28, label %27, !dbg !1543

27:                                               ; preds = %24
  tail call void %25() #36, !dbg !1544
  br label %32, !dbg !1544

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !1545, !tbaa !860
  %30 = tail call ptr @getprogname() #37, !dbg !1545
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.49, ptr noundef %30) #36, !dbg !1545
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !1547, !tbaa !860
  %34 = icmp eq ptr %2, null, !dbg !1547
  %35 = select i1 %34, ptr @.str.3.50, ptr @.str.2.51, !dbg !1547
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #36, !dbg !1547
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #36, !dbg !1548
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !1548, !tbaa.struct !1363
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !1548
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #36, !dbg !1548
  br label %37, !dbg !1549

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !1549
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1550 {
  %6 = alloca %struct.__va_list, align 8
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1554, metadata !DIExpression()), !dbg !1560
  call void @llvm.dbg.value(metadata i32 %1, metadata !1555, metadata !DIExpression()), !dbg !1560
  call void @llvm.dbg.value(metadata ptr %2, metadata !1556, metadata !DIExpression()), !dbg !1560
  call void @llvm.dbg.value(metadata i32 %3, metadata !1557, metadata !DIExpression()), !dbg !1560
  call void @llvm.dbg.value(metadata ptr %4, metadata !1558, metadata !DIExpression()), !dbg !1560
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #36, !dbg !1561
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1559, metadata !DIExpression()), !dbg !1562
  call void @llvm.va_start(ptr nonnull %6), !dbg !1563
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #36, !dbg !1564
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1564, !tbaa.struct !1363
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #41, !dbg !1564
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #36, !dbg !1564
  call void @llvm.va_end(ptr nonnull %6), !dbg !1565
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #36, !dbg !1566
  ret void, !dbg !1566
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #18 !dbg !1567 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1570, !tbaa !860
  ret ptr %1, !dbg !1571
}

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_mknod(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !1572 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1576, metadata !DIExpression()), !dbg !1579
  call void @llvm.dbg.value(metadata i32 %1, metadata !1577, metadata !DIExpression()), !dbg !1579
  call void @llvm.dbg.value(metadata i64 %2, metadata !1578, metadata !DIExpression()), !dbg !1579
  %4 = and i32 %1, 61440, !dbg !1580
  %5 = icmp eq i32 %4, 4096, !dbg !1580
  %6 = icmp eq i64 %2, 0
  %7 = and i1 %5, %6, !dbg !1582
  br i1 %7, label %8, label %11, !dbg !1582

8:                                                ; preds = %3
  %9 = and i32 %1, -4097, !dbg !1583
  %10 = tail call i32 @mkfifo(ptr noundef nonnull %0, i32 noundef %9) #36, !dbg !1584
  br label %13, !dbg !1585

11:                                               ; preds = %3
  %12 = tail call i32 @mknod(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %2) #36, !dbg !1586
  br label %13, !dbg !1587

13:                                               ; preds = %11, %8
  %14 = phi i32 [ %10, %8 ], [ %12, %11 ], !dbg !1579
  ret i32 %14, !dbg !1588
}

; Function Attrs: nounwind
declare !dbg !1589 i32 @mknod(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @mode_compile(ptr noundef %0) local_unnamed_addr #10 !dbg !1592 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1604, metadata !DIExpression()), !dbg !1634
  %2 = load i8, ptr %0, align 1, !dbg !1635, !tbaa !938
  %3 = and i8 %2, -8, !dbg !1636
  %4 = icmp eq i8 %3, 48, !dbg !1636
  br i1 %4, label %5, label %34, !dbg !1636

5:                                                ; preds = %1, %14
  %6 = phi i8 [ %16, %14 ], [ %2, %1 ], !dbg !1637
  %7 = phi i32 [ %12, %14 ], [ 0, %1 ], !dbg !1639
  %8 = phi ptr [ %15, %14 ], [ %0, %1 ], !dbg !1639
  call void @llvm.dbg.value(metadata ptr %8, metadata !1605, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i32 %7, metadata !1608, metadata !DIExpression()), !dbg !1639
  %9 = shl i32 %7, 3, !dbg !1640
  call void @llvm.dbg.value(metadata ptr %8, metadata !1605, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1639
  %10 = zext i8 %6 to i32, !dbg !1637
  %11 = add i32 %9, -48, !dbg !1641
  %12 = add i32 %11, %10, !dbg !1642
  call void @llvm.dbg.value(metadata i32 %12, metadata !1608, metadata !DIExpression()), !dbg !1639
  %13 = icmp ugt i32 %12, 4095, !dbg !1643
  br i1 %13, label %139, label %14, !dbg !1645

14:                                               ; preds = %5
  %15 = getelementptr inbounds i8, ptr %8, i64 1, !dbg !1646
  call void @llvm.dbg.value(metadata ptr %15, metadata !1605, metadata !DIExpression()), !dbg !1639
  %16 = load i8, ptr %15, align 1, !dbg !1647, !tbaa !938
  %17 = and i8 %16, -8, !dbg !1648
  %18 = icmp eq i8 %17, 48, !dbg !1648
  br i1 %18, label %5, label %19, !dbg !1648, !llvm.loop !1649

19:                                               ; preds = %14
  %20 = icmp eq i8 %16, 0, !dbg !1652
  br i1 %20, label %21, label %139, !dbg !1654

21:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i32 %12, metadata !1609, metadata !DIExpression()), !dbg !1639
  %22 = ptrtoint ptr %15 to i64, !dbg !1655
  %23 = ptrtoint ptr %0 to i64, !dbg !1655
  %24 = sub i64 %22, %23, !dbg !1655
  %25 = icmp slt i64 %24, 5, !dbg !1656
  %26 = or i32 %12, 1023, !dbg !1657
  %27 = select i1 %25, i32 %26, i32 4095, !dbg !1657
  call void @llvm.dbg.value(metadata i32 %27, metadata !1610, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i32 %12, metadata !1658, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata i32 %27, metadata !1663, metadata !DIExpression()), !dbg !1665
  %28 = tail call noalias nonnull dereferenceable(32) ptr @xmalloc(i64 noundef 32) #42, !dbg !1667
  call void @llvm.dbg.value(metadata ptr %28, metadata !1664, metadata !DIExpression()), !dbg !1665
  store i8 61, ptr %28, align 4, !dbg !1668, !tbaa !1669
  %29 = getelementptr inbounds %struct.mode_change, ptr %28, i64 0, i32 1, !dbg !1671
  store i8 1, ptr %29, align 1, !dbg !1672, !tbaa !1673
  %30 = getelementptr inbounds %struct.mode_change, ptr %28, i64 0, i32 2, !dbg !1674
  store i32 4095, ptr %30, align 4, !dbg !1675, !tbaa !1676
  %31 = getelementptr inbounds %struct.mode_change, ptr %28, i64 0, i32 3, !dbg !1677
  store i32 %12, ptr %31, align 4, !dbg !1678, !tbaa !1679
  %32 = getelementptr inbounds %struct.mode_change, ptr %28, i64 0, i32 4, !dbg !1680
  store i32 %27, ptr %32, align 4, !dbg !1681, !tbaa !1682
  %33 = getelementptr inbounds %struct.mode_change, ptr %28, i64 1, i32 1, !dbg !1683
  store i8 0, ptr %33, align 1, !dbg !1684, !tbaa !1673
  br label %139, !dbg !1685

34:                                               ; preds = %1, %41
  %35 = phi i8 [ %45, %41 ], [ %2, %1 ], !dbg !1686
  %36 = phi i64 [ %43, %41 ], [ 1, %1 ], !dbg !1688
  %37 = phi ptr [ %44, %41 ], [ %0, %1 ], !dbg !1689
  call void @llvm.dbg.value(metadata ptr %37, metadata !1614, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i64 %36, metadata !1612, metadata !DIExpression()), !dbg !1688
  switch i8 %35, label %40 [
    i8 0, label %38
    i8 61, label %41
    i8 43, label %41
    i8 45, label %41
  ], !dbg !1691

38:                                               ; preds = %34
  %39 = tail call noalias nonnull ptr @xnmalloc(i64 noundef %36, i64 noundef 16) #43, !dbg !1692
  call void @llvm.dbg.value(metadata ptr %39, metadata !1611, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i64 0, metadata !1616, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata ptr %0, metadata !1617, metadata !DIExpression()), !dbg !1634
  br label %46, !dbg !1693

40:                                               ; preds = %34
  br label %41, !dbg !1694

41:                                               ; preds = %34, %34, %34, %40
  %42 = phi i64 [ 0, %40 ], [ 1, %34 ], [ 1, %34 ], [ 1, %34 ]
  %43 = add i64 %42, %36, !dbg !1695
  call void @llvm.dbg.value(metadata i64 %43, metadata !1612, metadata !DIExpression()), !dbg !1688
  %44 = getelementptr inbounds i8, ptr %37, i64 1, !dbg !1696
  call void @llvm.dbg.value(metadata ptr %44, metadata !1614, metadata !DIExpression()), !dbg !1690
  %45 = load i8, ptr %44, align 1, !dbg !1686, !tbaa !938
  br label %34, !dbg !1697, !llvm.loop !1698

46:                                               ; preds = %134, %38
  %47 = phi i64 [ 0, %38 ], [ %122, %134 ], !dbg !1700
  %48 = phi ptr [ %0, %38 ], [ %135, %134 ], !dbg !1701
  call void @llvm.dbg.value(metadata i32 poison, metadata !1624, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata ptr %48, metadata !1617, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i64 %47, metadata !1616, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i32 0, metadata !1618, metadata !DIExpression()), !dbg !1703
  br label %49, !dbg !1704

49:                                               ; preds = %60, %46
  %50 = phi ptr [ %48, %46 ], [ %62, %60 ], !dbg !1705
  %51 = phi i32 [ 0, %46 ], [ %61, %60 ], !dbg !1703
  call void @llvm.dbg.value(metadata i32 %51, metadata !1618, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata ptr %50, metadata !1617, metadata !DIExpression()), !dbg !1634
  %52 = load i8, ptr %50, align 1, !dbg !1706, !tbaa !938
  switch i8 %52, label %138 [
    i8 117, label %54
    i8 103, label %56
    i8 111, label %58
    i8 97, label %60
    i8 61, label %53
    i8 43, label %53
    i8 45, label %53
  ], !dbg !1709

53:                                               ; preds = %49, %49, %49
  br label %63, !dbg !1710

54:                                               ; preds = %49
  %55 = or i32 %51, 2496, !dbg !1711
  call void @llvm.dbg.value(metadata i32 %55, metadata !1618, metadata !DIExpression()), !dbg !1703
  br label %60, !dbg !1713

56:                                               ; preds = %49
  %57 = or i32 %51, 1080, !dbg !1714
  call void @llvm.dbg.value(metadata i32 %57, metadata !1618, metadata !DIExpression()), !dbg !1703
  br label %60, !dbg !1715

58:                                               ; preds = %49
  %59 = or i32 %51, 519, !dbg !1716
  call void @llvm.dbg.value(metadata i32 %59, metadata !1618, metadata !DIExpression()), !dbg !1703
  br label %60, !dbg !1717

60:                                               ; preds = %49, %54, %56, %58
  %61 = phi i32 [ %59, %58 ], [ %57, %56 ], [ %55, %54 ], [ 4095, %49 ], !dbg !1718
  call void @llvm.dbg.value(metadata i32 %61, metadata !1618, metadata !DIExpression()), !dbg !1703
  %62 = getelementptr inbounds i8, ptr %50, i64 1, !dbg !1719
  call void @llvm.dbg.value(metadata ptr %62, metadata !1617, metadata !DIExpression()), !dbg !1634
  br label %49, !dbg !1720, !llvm.loop !1721

63:                                               ; preds = %133, %53
  %64 = phi i8 [ %52, %53 ], [ %132, %133 ], !dbg !1724
  %65 = phi i64 [ %47, %53 ], [ %122, %133 ], !dbg !1634
  %66 = phi ptr [ %50, %53 ], [ %115, %133 ], !dbg !1705
  %67 = phi i32 [ %51, %53 ], [ %121, %133 ], !dbg !1725
  call void @llvm.dbg.value(metadata i32 poison, metadata !1624, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i32 %67, metadata !1618, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata ptr %66, metadata !1617, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i64 %65, metadata !1616, metadata !DIExpression()), !dbg !1634
  %68 = getelementptr inbounds i8, ptr %66, i64 1, !dbg !1726
  call void @llvm.dbg.value(metadata ptr %68, metadata !1617, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i8 %64, metadata !1622, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i32 0, metadata !1625, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i8 3, metadata !1626, metadata !DIExpression()), !dbg !1702
  %69 = load i8, ptr %68, align 1, !dbg !1727, !tbaa !938
  switch i8 %69, label %94 [
    i8 48, label %70
    i8 49, label %70
    i8 50, label %70
    i8 51, label %70
    i8 52, label %70
    i8 53, label %70
    i8 54, label %70
    i8 55, label %70
    i8 117, label %88
    i8 103, label %90
    i8 111, label %92
  ], !dbg !1710

70:                                               ; preds = %63, %63, %63, %63, %63, %63, %63, %63
  br label %71, !dbg !1728

71:                                               ; preds = %70, %80
  %72 = phi i8 [ %82, %80 ], [ %69, %70 ], !dbg !1729
  %73 = phi ptr [ %81, %80 ], [ %68, %70 ], !dbg !1702
  %74 = phi i32 [ %78, %80 ], [ 0, %70 ], !dbg !1731
  call void @llvm.dbg.value(metadata i32 %74, metadata !1627, metadata !DIExpression()), !dbg !1731
  call void @llvm.dbg.value(metadata ptr %73, metadata !1617, metadata !DIExpression()), !dbg !1634
  %75 = shl i32 %74, 3, !dbg !1732
  call void @llvm.dbg.value(metadata ptr %73, metadata !1617, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1634
  %76 = zext i8 %72 to i32, !dbg !1729
  %77 = add i32 %75, -48, !dbg !1733
  %78 = add i32 %77, %76, !dbg !1734
  call void @llvm.dbg.value(metadata i32 %78, metadata !1627, metadata !DIExpression()), !dbg !1731
  %79 = icmp ugt i32 %78, 4095, !dbg !1735
  br i1 %79, label %138, label %80, !dbg !1737

80:                                               ; preds = %71
  %81 = getelementptr inbounds i8, ptr %73, i64 1, !dbg !1738
  call void @llvm.dbg.value(metadata ptr %81, metadata !1617, metadata !DIExpression()), !dbg !1634
  %82 = load i8, ptr %81, align 1, !dbg !1739, !tbaa !938
  %83 = and i8 %82, -8, !dbg !1740
  %84 = icmp eq i8 %83, 48, !dbg !1740
  br i1 %84, label %71, label %85, !dbg !1740, !llvm.loop !1741

85:                                               ; preds = %80
  %86 = icmp eq i32 %67, 0, !dbg !1743
  br i1 %86, label %87, label %138, !dbg !1745

87:                                               ; preds = %85
  switch i8 %82, label %138 [
    i8 0, label %114
    i8 44, label %114
  ], !dbg !1746

88:                                               ; preds = %63
  call void @llvm.dbg.value(metadata i32 448, metadata !1624, metadata !DIExpression()), !dbg !1702
  %89 = getelementptr inbounds i8, ptr %66, i64 2, !dbg !1747
  call void @llvm.dbg.value(metadata ptr %89, metadata !1617, metadata !DIExpression()), !dbg !1634
  br label %114, !dbg !1748

90:                                               ; preds = %63
  call void @llvm.dbg.value(metadata i32 56, metadata !1624, metadata !DIExpression()), !dbg !1702
  %91 = getelementptr inbounds i8, ptr %66, i64 2, !dbg !1749
  call void @llvm.dbg.value(metadata ptr %91, metadata !1617, metadata !DIExpression()), !dbg !1634
  br label %114, !dbg !1750

92:                                               ; preds = %63
  call void @llvm.dbg.value(metadata i32 7, metadata !1624, metadata !DIExpression()), !dbg !1702
  %93 = getelementptr inbounds i8, ptr %66, i64 2, !dbg !1751
  call void @llvm.dbg.value(metadata ptr %93, metadata !1617, metadata !DIExpression()), !dbg !1634
  br label %114, !dbg !1752

94:                                               ; preds = %63, %109
  %95 = phi i8 [ %113, %109 ], [ %69, %63 ], !dbg !1753
  %96 = phi ptr [ %112, %109 ], [ %68, %63 ], !dbg !1702
  %97 = phi i32 [ %110, %109 ], [ 0, %63 ], !dbg !1756
  %98 = phi i8 [ %111, %109 ], [ 1, %63 ], !dbg !1757
  call void @llvm.dbg.value(metadata i8 %98, metadata !1626, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i32 %97, metadata !1624, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata ptr %96, metadata !1617, metadata !DIExpression()), !dbg !1634
  switch i8 %95, label %114 [
    i8 114, label %99
    i8 119, label %101
    i8 120, label %103
    i8 88, label %109
    i8 115, label %105
    i8 116, label %107
  ], !dbg !1758

99:                                               ; preds = %94
  %100 = or i32 %97, 292, !dbg !1759
  call void @llvm.dbg.value(metadata i32 %100, metadata !1624, metadata !DIExpression()), !dbg !1702
  br label %109, !dbg !1761

101:                                              ; preds = %94
  %102 = or i32 %97, 146, !dbg !1762
  call void @llvm.dbg.value(metadata i32 %102, metadata !1624, metadata !DIExpression()), !dbg !1702
  br label %109, !dbg !1763

103:                                              ; preds = %94
  %104 = or i32 %97, 73, !dbg !1764
  call void @llvm.dbg.value(metadata i32 %104, metadata !1624, metadata !DIExpression()), !dbg !1702
  br label %109, !dbg !1765

105:                                              ; preds = %94
  %106 = or i32 %97, 3072, !dbg !1766
  call void @llvm.dbg.value(metadata i32 %106, metadata !1624, metadata !DIExpression()), !dbg !1702
  br label %109, !dbg !1767

107:                                              ; preds = %94
  %108 = or i32 %97, 512, !dbg !1768
  call void @llvm.dbg.value(metadata i32 %108, metadata !1624, metadata !DIExpression()), !dbg !1702
  br label %109, !dbg !1769

109:                                              ; preds = %94, %99, %101, %103, %105, %107
  %110 = phi i32 [ %108, %107 ], [ %106, %105 ], [ %104, %103 ], [ %102, %101 ], [ %100, %99 ], [ %97, %94 ], !dbg !1756
  %111 = phi i8 [ %98, %107 ], [ %98, %105 ], [ %98, %103 ], [ %98, %101 ], [ %98, %99 ], [ 2, %94 ], !dbg !1756
  call void @llvm.dbg.value(metadata i8 %111, metadata !1626, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i32 %110, metadata !1624, metadata !DIExpression()), !dbg !1702
  %112 = getelementptr inbounds i8, ptr %96, i64 1, !dbg !1770
  call void @llvm.dbg.value(metadata ptr %112, metadata !1617, metadata !DIExpression()), !dbg !1634
  %113 = load i8, ptr %112, align 1, !dbg !1753, !tbaa !938
  br label %94, !dbg !1771, !llvm.loop !1772

114:                                              ; preds = %94, %87, %87, %92, %90, %88
  %115 = phi ptr [ %93, %92 ], [ %91, %90 ], [ %89, %88 ], [ %81, %87 ], [ %81, %87 ], [ %96, %94 ], !dbg !1702
  %116 = phi i32 [ %67, %92 ], [ %67, %90 ], [ %67, %88 ], [ 4095, %87 ], [ 4095, %87 ], [ %67, %94 ], !dbg !1725
  %117 = phi i32 [ 7, %92 ], [ 56, %90 ], [ 448, %88 ], [ %78, %87 ], [ %78, %87 ], [ %97, %94 ]
  %118 = phi i1 [ true, %92 ], [ true, %90 ], [ true, %88 ], [ false, %87 ], [ false, %87 ], [ true, %94 ], !dbg !1775
  %119 = phi i32 [ 0, %92 ], [ 0, %90 ], [ 0, %88 ], [ 4095, %87 ], [ 4095, %87 ], [ 0, %94 ], !dbg !1775
  %120 = phi i8 [ 3, %92 ], [ 3, %90 ], [ 3, %88 ], [ 1, %87 ], [ 1, %87 ], [ %98, %94 ], !dbg !1702
  %121 = freeze i32 %116, !dbg !1776
  call void @llvm.dbg.value(metadata i8 %120, metadata !1626, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i32 %119, metadata !1625, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i32 %117, metadata !1624, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i32 %116, metadata !1618, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata ptr %115, metadata !1617, metadata !DIExpression()), !dbg !1634
  %122 = add i64 %65, 1, !dbg !1777
  call void @llvm.dbg.value(metadata i64 %122, metadata !1616, metadata !DIExpression()), !dbg !1634
  %123 = getelementptr inbounds %struct.mode_change, ptr %39, i64 %65, !dbg !1778
  call void @llvm.dbg.value(metadata ptr %123, metadata !1630, metadata !DIExpression()), !dbg !1702
  store i8 %64, ptr %123, align 4, !dbg !1779, !tbaa !1669
  %124 = getelementptr inbounds %struct.mode_change, ptr %39, i64 %65, i32 1, !dbg !1780
  store i8 %120, ptr %124, align 1, !dbg !1781, !tbaa !1673
  %125 = getelementptr inbounds %struct.mode_change, ptr %39, i64 %65, i32 2, !dbg !1782
  store i32 %121, ptr %125, align 4, !dbg !1783, !tbaa !1676
  %126 = getelementptr inbounds %struct.mode_change, ptr %39, i64 %65, i32 3, !dbg !1784
  store i32 %117, ptr %126, align 4, !dbg !1785, !tbaa !1679
  %127 = icmp eq i32 %121, 0, !dbg !1776
  %128 = select i1 %127, i32 -1, i32 %121, !dbg !1776
  %129 = and i32 %128, %117, !dbg !1776
  %130 = select i1 %118, i32 %129, i32 %119, !dbg !1776
  %131 = getelementptr inbounds %struct.mode_change, ptr %39, i64 %65, i32 4, !dbg !1786
  store i32 %130, ptr %131, align 4, !dbg !1787, !tbaa !1682
  %132 = load i8, ptr %115, align 1, !dbg !1788, !tbaa !938
  switch i8 %132, label %138 [
    i8 61, label %133
    i8 43, label %133
    i8 45, label %133
    i8 44, label %134
    i8 0, label %136
  ], !dbg !1789

133:                                              ; preds = %114, %114, %114
  br label %63, !dbg !1702

134:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i32 poison, metadata !1624, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata ptr %115, metadata !1617, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i64 %122, metadata !1616, metadata !DIExpression()), !dbg !1634
  %135 = getelementptr inbounds i8, ptr %115, i64 1, !dbg !1790
  call void @llvm.dbg.value(metadata ptr %135, metadata !1617, metadata !DIExpression()), !dbg !1634
  br label %46, !dbg !1791, !llvm.loop !1792

136:                                              ; preds = %114
  %137 = getelementptr inbounds %struct.mode_change, ptr %39, i64 %122, i32 1, !dbg !1795
  store i8 0, ptr %137, align 1, !dbg !1798, !tbaa !1673
  br label %139, !dbg !1799

138:                                              ; preds = %49, %85, %87, %114, %71
  call void @llvm.dbg.label(metadata !1633), !dbg !1800
  tail call void @free(ptr noundef nonnull %39) #36, !dbg !1801
  br label %139, !dbg !1802

139:                                              ; preds = %5, %136, %138, %21, %19
  %140 = phi ptr [ %28, %21 ], [ null, %19 ], [ null, %138 ], [ %39, %136 ], [ null, %5 ]
  ret ptr %140, !dbg !1803
}

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @mode_create_from_ref(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !1804 {
  %2 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !1806, metadata !DIExpression()), !dbg !1841
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #36, !dbg !1842
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1807, metadata !DIExpression()), !dbg !1843
  %3 = call i32 @stat(ptr noundef %0, ptr noundef nonnull %2) #36, !dbg !1844
  %4 = icmp eq i32 %3, 0, !dbg !1846
  br i1 %4, label %5, label %14, !dbg !1847

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 2, !dbg !1848
  %7 = load i32, ptr %6, align 8, !dbg !1848, !tbaa !1849
  call void @llvm.dbg.value(metadata i32 %7, metadata !1658, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata i32 4095, metadata !1663, metadata !DIExpression()), !dbg !1852
  %8 = tail call noalias nonnull dereferenceable(32) ptr @xmalloc(i64 noundef 32) #42, !dbg !1854
  call void @llvm.dbg.value(metadata ptr %8, metadata !1664, metadata !DIExpression()), !dbg !1852
  store i8 61, ptr %8, align 4, !dbg !1855, !tbaa !1669
  %9 = getelementptr inbounds %struct.mode_change, ptr %8, i64 0, i32 1, !dbg !1856
  store i8 1, ptr %9, align 1, !dbg !1857, !tbaa !1673
  %10 = getelementptr inbounds %struct.mode_change, ptr %8, i64 0, i32 2, !dbg !1858
  store i32 4095, ptr %10, align 4, !dbg !1859, !tbaa !1676
  %11 = getelementptr inbounds %struct.mode_change, ptr %8, i64 0, i32 3, !dbg !1860
  store i32 %7, ptr %11, align 4, !dbg !1861, !tbaa !1679
  %12 = getelementptr inbounds %struct.mode_change, ptr %8, i64 0, i32 4, !dbg !1862
  store i32 4095, ptr %12, align 4, !dbg !1863, !tbaa !1682
  %13 = getelementptr inbounds %struct.mode_change, ptr %8, i64 1, i32 1, !dbg !1864
  store i8 0, ptr %13, align 1, !dbg !1865, !tbaa !1673
  br label %14, !dbg !1866

14:                                               ; preds = %1, %5
  %15 = phi ptr [ %8, %5 ], [ null, %1 ], !dbg !1841
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #36, !dbg !1867
  ret ptr %15, !dbg !1867
}

; Function Attrs: nofree nounwind
declare !dbg !1868 noundef i32 @stat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @mode_adjust(i32 noundef %0, i1 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr noundef writeonly %4) local_unnamed_addr #19 !dbg !1873 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1880, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i1 %1, metadata !1881, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1896
  call void @llvm.dbg.value(metadata i32 %2, metadata !1882, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata ptr %3, metadata !1883, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata ptr %4, metadata !1884, metadata !DIExpression()), !dbg !1896
  %6 = and i32 %0, 4095, !dbg !1897
  call void @llvm.dbg.value(metadata i32 %6, metadata !1885, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i32 0, metadata !1886, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata ptr %3, metadata !1883, metadata !DIExpression()), !dbg !1896
  %7 = getelementptr inbounds %struct.mode_change, ptr %3, i64 0, i32 1, !dbg !1898
  %8 = load i8, ptr %7, align 1, !dbg !1898, !tbaa !1673
  %9 = icmp eq i8 %8, 0, !dbg !1899
  br i1 %9, label %78, label %10, !dbg !1900

10:                                               ; preds = %5
  %11 = select i1 %1, i32 3072, i32 0
  %12 = zext i1 %1 to i32
  %13 = xor i32 %2, -1
  br label %14, !dbg !1900

14:                                               ; preds = %10, %71
  %15 = phi i8 [ %8, %10 ], [ %76, %71 ]
  %16 = phi ptr [ %3, %10 ], [ %74, %71 ]
  %17 = phi i32 [ %6, %10 ], [ %73, %71 ]
  %18 = phi i32 [ 0, %10 ], [ %72, %71 ]
  call void @llvm.dbg.value(metadata ptr %16, metadata !1883, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i32 %17, metadata !1885, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i32 %18, metadata !1886, metadata !DIExpression()), !dbg !1896
  %19 = getelementptr inbounds %struct.mode_change, ptr %16, i64 0, i32 2, !dbg !1901
  %20 = load i32, ptr %19, align 4, !dbg !1901, !tbaa !1676
  call void @llvm.dbg.value(metadata i32 %20, metadata !1887, metadata !DIExpression()), !dbg !1902
  %21 = getelementptr inbounds %struct.mode_change, ptr %16, i64 0, i32 4, !dbg !1903
  %22 = load i32, ptr %21, align 4, !dbg !1903, !tbaa !1682
  %23 = xor i32 %22, -1, !dbg !1904
  %24 = and i32 %11, %23, !dbg !1905
  call void @llvm.dbg.value(metadata i32 %24, metadata !1891, metadata !DIExpression()), !dbg !1902
  %25 = getelementptr inbounds %struct.mode_change, ptr %16, i64 0, i32 3, !dbg !1906
  %26 = load i32, ptr %25, align 4, !dbg !1906, !tbaa !1679
  call void @llvm.dbg.value(metadata i32 %26, metadata !1892, metadata !DIExpression()), !dbg !1902
  switch i8 %15, label %47 [
    i8 2, label %41
    i8 3, label %27
  ], !dbg !1907

27:                                               ; preds = %14
  %28 = and i32 %26, %17, !dbg !1908
  call void @llvm.dbg.value(metadata i32 %28, metadata !1892, metadata !DIExpression()), !dbg !1902
  %29 = and i32 %28, 292, !dbg !1910
  %30 = icmp eq i32 %29, 0, !dbg !1911
  %31 = select i1 %30, i32 0, i32 292, !dbg !1911
  %32 = and i32 %28, 146, !dbg !1912
  %33 = icmp eq i32 %32, 0, !dbg !1913
  %34 = select i1 %33, i32 0, i32 146, !dbg !1913
  %35 = and i32 %28, 73, !dbg !1914
  %36 = icmp eq i32 %35, 0, !dbg !1915
  %37 = select i1 %36, i32 0, i32 73, !dbg !1915
  %38 = or i32 %34, %31, !dbg !1916
  %39 = or i32 %38, %37, !dbg !1917
  %40 = or i32 %39, %28, !dbg !1917
  call void @llvm.dbg.value(metadata i32 %40, metadata !1892, metadata !DIExpression()), !dbg !1902
  br label %47, !dbg !1918

41:                                               ; preds = %14
  %42 = and i32 %17, 73, !dbg !1919
  %43 = or i32 %42, %12, !dbg !1921
  %44 = icmp eq i32 %43, 0, !dbg !1921
  %45 = or i32 %26, 73
  %46 = select i1 %44, i32 %26, i32 %45, !dbg !1922
  br label %47, !dbg !1922

47:                                               ; preds = %41, %14, %27
  %48 = phi i32 [ %26, %14 ], [ %40, %27 ], [ %46, %41 ], !dbg !1902
  call void @llvm.dbg.value(metadata i32 %48, metadata !1892, metadata !DIExpression()), !dbg !1902
  %49 = icmp eq i32 %20, 0, !dbg !1923
  %50 = select i1 %49, i32 %13, i32 %20, !dbg !1923
  %51 = xor i32 %24, -1, !dbg !1924
  %52 = and i32 %50, %51, !dbg !1925
  %53 = and i32 %52, %48, !dbg !1926
  call void @llvm.dbg.value(metadata i32 %53, metadata !1892, metadata !DIExpression()), !dbg !1902
  %54 = load i8, ptr %16, align 4, !dbg !1927, !tbaa !1669
  switch i8 %54, label %71 [
    i8 61, label %55
    i8 43, label %64
    i8 45, label %67
  ], !dbg !1928

55:                                               ; preds = %47
  %56 = xor i32 %20, -1, !dbg !1929
  %57 = select i1 %49, i32 0, i32 %56, !dbg !1929
  %58 = or i32 %57, %24, !dbg !1930
  call void @llvm.dbg.value(metadata i32 %58, metadata !1893, metadata !DIExpression()), !dbg !1931
  %59 = and i32 %58, 4095, !dbg !1932
  %60 = xor i32 %59, 4095, !dbg !1932
  %61 = or i32 %60, %18, !dbg !1933
  call void @llvm.dbg.value(metadata i32 %61, metadata !1886, metadata !DIExpression()), !dbg !1896
  %62 = and i32 %58, %17, !dbg !1934
  %63 = or i32 %53, %62, !dbg !1935
  call void @llvm.dbg.value(metadata i32 %63, metadata !1885, metadata !DIExpression()), !dbg !1896
  br label %71

64:                                               ; preds = %47
  %65 = or i32 %53, %18, !dbg !1936
  call void @llvm.dbg.value(metadata i32 %65, metadata !1886, metadata !DIExpression()), !dbg !1896
  %66 = or i32 %53, %17, !dbg !1937
  call void @llvm.dbg.value(metadata i32 %66, metadata !1885, metadata !DIExpression()), !dbg !1896
  br label %71, !dbg !1938

67:                                               ; preds = %47
  %68 = or i32 %53, %18, !dbg !1939
  call void @llvm.dbg.value(metadata i32 %68, metadata !1886, metadata !DIExpression()), !dbg !1896
  %69 = xor i32 %53, -1, !dbg !1940
  %70 = and i32 %17, %69, !dbg !1941
  call void @llvm.dbg.value(metadata i32 %70, metadata !1885, metadata !DIExpression()), !dbg !1896
  br label %71, !dbg !1942

71:                                               ; preds = %47, %67, %64, %55
  %72 = phi i32 [ %18, %47 ], [ %68, %67 ], [ %65, %64 ], [ %61, %55 ], !dbg !1896
  %73 = phi i32 [ %17, %47 ], [ %70, %67 ], [ %66, %64 ], [ %63, %55 ], !dbg !1896
  call void @llvm.dbg.value(metadata i32 %73, metadata !1885, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i32 %72, metadata !1886, metadata !DIExpression()), !dbg !1896
  %74 = getelementptr inbounds %struct.mode_change, ptr %16, i64 1, !dbg !1943
  call void @llvm.dbg.value(metadata ptr %74, metadata !1883, metadata !DIExpression()), !dbg !1896
  %75 = getelementptr inbounds %struct.mode_change, ptr %16, i64 1, i32 1, !dbg !1898
  %76 = load i8, ptr %75, align 1, !dbg !1898, !tbaa !1673
  %77 = icmp eq i8 %76, 0, !dbg !1899
  br i1 %77, label %78, label %14, !dbg !1900, !llvm.loop !1944

78:                                               ; preds = %71, %5
  %79 = phi i32 [ 0, %5 ], [ %72, %71 ], !dbg !1946
  %80 = phi i32 [ %6, %5 ], [ %73, %71 ], !dbg !1947
  %81 = icmp eq ptr %4, null, !dbg !1948
  br i1 %81, label %83, label %82, !dbg !1950

82:                                               ; preds = %78
  store i32 %79, ptr %4, align 4, !dbg !1951, !tbaa !929
  br label %83, !dbg !1952

83:                                               ; preds = %82, %78
  ret i32 %80, !dbg !1953
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #20 !dbg !1954 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1956, metadata !DIExpression()), !dbg !1959
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #37, !dbg !1960
  call void @llvm.dbg.value(metadata ptr %2, metadata !1957, metadata !DIExpression()), !dbg !1959
  %3 = icmp eq ptr %2, null, !dbg !1961
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1961
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1961
  call void @llvm.dbg.value(metadata ptr %5, metadata !1958, metadata !DIExpression()), !dbg !1959
  %6 = ptrtoint ptr %5 to i64, !dbg !1962
  %7 = ptrtoint ptr %0 to i64, !dbg !1962
  %8 = sub i64 %6, %7, !dbg !1962
  %9 = icmp sgt i64 %8, 6, !dbg !1964
  br i1 %9, label %10, label %19, !dbg !1965

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1966
  call void @llvm.dbg.value(metadata ptr %11, metadata !1967, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata ptr @.str.74, metadata !1972, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i64 7, metadata !1973, metadata !DIExpression()), !dbg !1974
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.74, i64 7), !dbg !1976
  %13 = icmp eq i32 %12, 0, !dbg !1977
  br i1 %13, label %14, label %19, !dbg !1978

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !1956, metadata !DIExpression()), !dbg !1959
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.75, i64 noundef 3) #37, !dbg !1979
  %16 = icmp eq i32 %15, 0, !dbg !1982
  %17 = select i1 %16, i64 3, i64 0, !dbg !1983
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !1983
  br label %19, !dbg !1983

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1959
  call void @llvm.dbg.value(metadata ptr %21, metadata !1958, metadata !DIExpression()), !dbg !1959
  call void @llvm.dbg.value(metadata ptr %20, metadata !1956, metadata !DIExpression()), !dbg !1959
  store ptr %20, ptr @program_name, align 8, !dbg !1984, !tbaa !860
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1985, !tbaa !860
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1986, !tbaa !860
  ret void, !dbg !1987
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1988 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #21

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !516 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !523, metadata !DIExpression()), !dbg !1989
  call void @llvm.dbg.value(metadata ptr %1, metadata !524, metadata !DIExpression()), !dbg !1989
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #36, !dbg !1990
  call void @llvm.dbg.value(metadata ptr %5, metadata !525, metadata !DIExpression()), !dbg !1989
  %6 = icmp eq ptr %5, %0, !dbg !1991
  br i1 %6, label %7, label %14, !dbg !1993

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #36, !dbg !1994
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #36, !dbg !1995
  call void @llvm.dbg.declare(metadata ptr %4, metadata !531, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata ptr %4, metadata !1997, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata ptr %4, metadata !2006, metadata !DIExpression()), !dbg !2014
  call void @llvm.dbg.value(metadata i32 0, metadata !2012, metadata !DIExpression()), !dbg !2014
  call void @llvm.dbg.value(metadata i64 8, metadata !2013, metadata !DIExpression()), !dbg !2014
  store i64 0, ptr %4, align 8, !dbg !2016
  call void @llvm.dbg.value(metadata ptr %3, metadata !526, metadata !DIExpression(DW_OP_deref)), !dbg !1989
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #36, !dbg !2017
  %9 = icmp eq i64 %8, 2, !dbg !2019
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !526, metadata !DIExpression()), !dbg !1989
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2020
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1989
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #36, !dbg !2021
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #36, !dbg !2021
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1989
  ret ptr %15, !dbg !2021
}

; Function Attrs: nounwind
declare !dbg !2022 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !2028 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2033, metadata !DIExpression()), !dbg !2036
  %2 = tail call ptr @__errno_location() #39, !dbg !2037
  %3 = load i32, ptr %2, align 4, !dbg !2037, !tbaa !929
  call void @llvm.dbg.value(metadata i32 %3, metadata !2034, metadata !DIExpression()), !dbg !2036
  %4 = icmp eq ptr %0, null, !dbg !2038
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2038
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #44, !dbg !2039
  call void @llvm.dbg.value(metadata ptr %6, metadata !2035, metadata !DIExpression()), !dbg !2036
  store i32 %3, ptr %2, align 4, !dbg !2040, !tbaa !929
  ret ptr %6, !dbg !2041
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #19 !dbg !2042 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2048, metadata !DIExpression()), !dbg !2049
  %2 = icmp eq ptr %0, null, !dbg !2050
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2050
  %4 = load i32, ptr %3, align 8, !dbg !2051, !tbaa !2052
  ret i32 %4, !dbg !2054
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #22 !dbg !2055 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2059, metadata !DIExpression()), !dbg !2061
  call void @llvm.dbg.value(metadata i32 %1, metadata !2060, metadata !DIExpression()), !dbg !2061
  %3 = icmp eq ptr %0, null, !dbg !2062
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2062
  store i32 %1, ptr %4, align 8, !dbg !2063, !tbaa !2052
  ret void, !dbg !2064
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #23 !dbg !2065 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2069, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i8 %1, metadata !2070, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i32 %2, metadata !2071, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i8 %1, metadata !2072, metadata !DIExpression()), !dbg !2077
  %4 = icmp eq ptr %0, null, !dbg !2078
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2078
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2079
  %7 = lshr i8 %1, 5, !dbg !2080
  %8 = zext i8 %7 to i64, !dbg !2080
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !2081
  call void @llvm.dbg.value(metadata ptr %9, metadata !2073, metadata !DIExpression()), !dbg !2077
  %10 = and i8 %1, 31, !dbg !2082
  %11 = zext i8 %10 to i32, !dbg !2082
  call void @llvm.dbg.value(metadata i32 %11, metadata !2075, metadata !DIExpression()), !dbg !2077
  %12 = load i32, ptr %9, align 4, !dbg !2083, !tbaa !929
  %13 = lshr i32 %12, %11, !dbg !2084
  %14 = and i32 %13, 1, !dbg !2085
  call void @llvm.dbg.value(metadata i32 %14, metadata !2076, metadata !DIExpression()), !dbg !2077
  %15 = xor i32 %13, %2, !dbg !2086
  %16 = and i32 %15, 1, !dbg !2086
  %17 = shl nuw i32 %16, %11, !dbg !2087
  %18 = xor i32 %17, %12, !dbg !2088
  store i32 %18, ptr %9, align 4, !dbg !2088, !tbaa !929
  ret i32 %14, !dbg !2089
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #23 !dbg !2090 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2094, metadata !DIExpression()), !dbg !2097
  call void @llvm.dbg.value(metadata i32 %1, metadata !2095, metadata !DIExpression()), !dbg !2097
  %3 = icmp eq ptr %0, null, !dbg !2098
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2100
  call void @llvm.dbg.value(metadata ptr %4, metadata !2094, metadata !DIExpression()), !dbg !2097
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !2101
  %6 = load i32, ptr %5, align 4, !dbg !2101, !tbaa !2102
  call void @llvm.dbg.value(metadata i32 %6, metadata !2096, metadata !DIExpression()), !dbg !2097
  store i32 %1, ptr %5, align 4, !dbg !2103, !tbaa !2102
  ret i32 %6, !dbg !2104
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2105 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2109, metadata !DIExpression()), !dbg !2112
  call void @llvm.dbg.value(metadata ptr %1, metadata !2110, metadata !DIExpression()), !dbg !2112
  call void @llvm.dbg.value(metadata ptr %2, metadata !2111, metadata !DIExpression()), !dbg !2112
  %4 = icmp eq ptr %0, null, !dbg !2113
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2115
  call void @llvm.dbg.value(metadata ptr %5, metadata !2109, metadata !DIExpression()), !dbg !2112
  store i32 10, ptr %5, align 8, !dbg !2116, !tbaa !2052
  %6 = icmp ne ptr %1, null, !dbg !2117
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2119
  br i1 %8, label %10, label %9, !dbg !2119

9:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2120
  unreachable, !dbg !2120

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2121
  store ptr %1, ptr %11, align 8, !dbg !2122, !tbaa !2123
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2124
  store ptr %2, ptr %12, align 8, !dbg !2125, !tbaa !2126
  ret void, !dbg !2127
}

; Function Attrs: noreturn nounwind
declare !dbg !2128 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !2129 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2133, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.value(metadata i64 %1, metadata !2134, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.value(metadata ptr %2, metadata !2135, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.value(metadata i64 %3, metadata !2136, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.value(metadata ptr %4, metadata !2137, metadata !DIExpression()), !dbg !2141
  %6 = icmp eq ptr %4, null, !dbg !2142
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !2142
  call void @llvm.dbg.value(metadata ptr %7, metadata !2138, metadata !DIExpression()), !dbg !2141
  %8 = tail call ptr @__errno_location() #39, !dbg !2143
  %9 = load i32, ptr %8, align 4, !dbg !2143, !tbaa !929
  call void @llvm.dbg.value(metadata i32 %9, metadata !2139, metadata !DIExpression()), !dbg !2141
  %10 = load i32, ptr %7, align 8, !dbg !2144, !tbaa !2052
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !2145
  %12 = load i32, ptr %11, align 4, !dbg !2145, !tbaa !2102
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !2146
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !2147
  %15 = load ptr, ptr %14, align 8, !dbg !2147, !tbaa !2123
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !2148
  %17 = load ptr, ptr %16, align 8, !dbg !2148, !tbaa !2126
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !2149
  call void @llvm.dbg.value(metadata i64 %18, metadata !2140, metadata !DIExpression()), !dbg !2141
  store i32 %9, ptr %8, align 4, !dbg !2150, !tbaa !929
  ret i64 %18, !dbg !2151
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !2152 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !2158, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i64 %1, metadata !2159, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata ptr %2, metadata !2160, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i64 %3, metadata !2161, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i32 %4, metadata !2162, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i32 %5, metadata !2163, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata ptr %6, metadata !2164, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata ptr %7, metadata !2165, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata ptr %8, metadata !2166, metadata !DIExpression()), !dbg !2220
  %16 = tail call i64 @__ctype_get_mb_cur_max() #36, !dbg !2221
  %17 = icmp eq i64 %16, 1, !dbg !2222
  call void @llvm.dbg.value(metadata i1 %17, metadata !2167, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2220
  call void @llvm.dbg.value(metadata i64 0, metadata !2168, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i64 0, metadata !2169, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata ptr null, metadata !2170, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i64 0, metadata !2171, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i8 0, metadata !2172, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i32 %5, metadata !2173, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2220
  call void @llvm.dbg.value(metadata i8 0, metadata !2174, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i8 1, metadata !2175, metadata !DIExpression()), !dbg !2220
  %18 = and i32 %5, 2, !dbg !2223
  %19 = icmp ne i32 %18, 0, !dbg !2223
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !2223

27:                                               ; preds = %591, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %591 ]
  %29 = phi ptr [ %7, %9 ], [ %104, %591 ]
  %30 = phi ptr [ %8, %9 ], [ %105, %591 ]
  %31 = phi i64 [ %3, %9 ], [ %123, %591 ]
  %32 = phi i64 [ 0, %9 ], [ %125, %591 ], !dbg !2224
  %33 = phi ptr [ null, %9 ], [ %107, %591 ], !dbg !2225
  %34 = phi i64 [ 0, %9 ], [ %108, %591 ], !dbg !2226
  %35 = phi i1 [ false, %9 ], [ %109, %591 ]
  %36 = phi i1 [ %19, %9 ], [ false, %591 ]
  %37 = phi i1 [ false, %9 ], [ %126, %591 ]
  %38 = phi i1 [ true, %9 ], [ false, %591 ]
  %39 = phi i64 [ %1, %9 ], [ %125, %591 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !2159, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i8 poison, metadata !2175, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i8 poison, metadata !2174, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i8 poison, metadata !2173, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i8 poison, metadata !2172, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i64 %34, metadata !2171, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata ptr %33, metadata !2170, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i64 %32, metadata !2169, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i64 0, metadata !2168, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i64 %31, metadata !2161, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata ptr %30, metadata !2166, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata ptr %29, metadata !2165, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i32 %28, metadata !2162, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.label(metadata !2213), !dbg !2227
  call void @llvm.dbg.value(metadata i8 0, metadata !2176, metadata !DIExpression()), !dbg !2220
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
  ], !dbg !2228

40:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2173, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i32 5, metadata !2162, metadata !DIExpression()), !dbg !2220
  br label %102, !dbg !2229

41:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2173, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i32 5, metadata !2162, metadata !DIExpression()), !dbg !2220
  br i1 %36, label %102, label %42, !dbg !2229

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !2230
  br i1 %43, label %102, label %44, !dbg !2234

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !2230, !tbaa !938
  br label %102, !dbg !2230

45:                                               ; preds = %27, %27
  call void @llvm.dbg.value(metadata ptr @.str.11.88, metadata !612, metadata !DIExpression()), !dbg !2235
  call void @llvm.dbg.value(metadata i32 %28, metadata !613, metadata !DIExpression()), !dbg !2235
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.89, ptr noundef nonnull @.str.11.88, i32 noundef 5) #36, !dbg !2239
  call void @llvm.dbg.value(metadata ptr %46, metadata !614, metadata !DIExpression()), !dbg !2235
  %47 = icmp eq ptr %46, @.str.11.88, !dbg !2240
  br i1 %47, label %48, label %57, !dbg !2242

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #36, !dbg !2243
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #36, !dbg !2244
  call void @llvm.dbg.declare(metadata ptr %13, metadata !616, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata ptr %13, metadata !2246, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata ptr %13, metadata !2254, metadata !DIExpression()), !dbg !2259
  call void @llvm.dbg.value(metadata i32 0, metadata !2257, metadata !DIExpression()), !dbg !2259
  call void @llvm.dbg.value(metadata i64 8, metadata !2258, metadata !DIExpression()), !dbg !2259
  store i64 0, ptr %13, align 8, !dbg !2261
  call void @llvm.dbg.value(metadata ptr %12, metadata !615, metadata !DIExpression(DW_OP_deref)), !dbg !2235
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #36, !dbg !2262
  %50 = icmp eq i64 %49, 3, !dbg !2264
  %51 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %51, metadata !615, metadata !DIExpression()), !dbg !2235
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !2265
  %54 = icmp eq i32 %28, 9, !dbg !2265
  %55 = select i1 %54, ptr @.str.10.90, ptr @.str.12.91, !dbg !2265
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !2265
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #36, !dbg !2266
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #36, !dbg !2266
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !2235
  call void @llvm.dbg.value(metadata ptr %58, metadata !2165, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata ptr @.str.12.91, metadata !612, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i32 %28, metadata !613, metadata !DIExpression()), !dbg !2267
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.89, ptr noundef nonnull @.str.12.91, i32 noundef 5) #36, !dbg !2269
  call void @llvm.dbg.value(metadata ptr %59, metadata !614, metadata !DIExpression()), !dbg !2267
  %60 = icmp eq ptr %59, @.str.12.91, !dbg !2270
  br i1 %60, label %61, label %70, !dbg !2271

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #36, !dbg !2272
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #36, !dbg !2273
  call void @llvm.dbg.declare(metadata ptr %11, metadata !616, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.value(metadata ptr %11, metadata !2246, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata ptr %11, metadata !2254, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.value(metadata i32 0, metadata !2257, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.value(metadata i64 8, metadata !2258, metadata !DIExpression()), !dbg !2277
  store i64 0, ptr %11, align 8, !dbg !2279
  call void @llvm.dbg.value(metadata ptr %10, metadata !615, metadata !DIExpression(DW_OP_deref)), !dbg !2267
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #36, !dbg !2280
  %63 = icmp eq i64 %62, 3, !dbg !2281
  %64 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %64, metadata !615, metadata !DIExpression()), !dbg !2267
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !2282
  %67 = icmp eq i32 %28, 9, !dbg !2282
  %68 = select i1 %67, ptr @.str.10.90, ptr @.str.12.91, !dbg !2282
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !2282
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #36, !dbg !2283
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #36, !dbg !2283
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  call void @llvm.dbg.value(metadata ptr %72, metadata !2166, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata ptr %71, metadata !2165, metadata !DIExpression()), !dbg !2220
  br i1 %36, label %88, label %73, !dbg !2284

73:                                               ; preds = %70
  call void @llvm.dbg.value(metadata ptr %71, metadata !2177, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i64 0, metadata !2168, metadata !DIExpression()), !dbg !2220
  %74 = load i8, ptr %71, align 1, !dbg !2286, !tbaa !938
  %75 = icmp eq i8 %74, 0, !dbg !2288
  br i1 %75, label %88, label %76, !dbg !2288

76:                                               ; preds = %73, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %73 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %73 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %73 ]
  call void @llvm.dbg.value(metadata ptr %78, metadata !2177, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i64 %79, metadata !2168, metadata !DIExpression()), !dbg !2220
  %80 = icmp ult i64 %79, %39, !dbg !2289
  br i1 %80, label %81, label %83, !dbg !2292

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !2289
  store i8 %77, ptr %82, align 1, !dbg !2289, !tbaa !938
  br label %83, !dbg !2289

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !2292
  call void @llvm.dbg.value(metadata i64 %84, metadata !2168, metadata !DIExpression()), !dbg !2220
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !2293
  call void @llvm.dbg.value(metadata ptr %85, metadata !2177, metadata !DIExpression()), !dbg !2285
  %86 = load i8, ptr %85, align 1, !dbg !2286, !tbaa !938
  %87 = icmp eq i8 %86, 0, !dbg !2288
  br i1 %87, label %88, label %76, !dbg !2288, !llvm.loop !2294

88:                                               ; preds = %83, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %84, %83 ], !dbg !2296
  call void @llvm.dbg.value(metadata i64 %89, metadata !2168, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i8 1, metadata !2172, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata ptr %72, metadata !2170, metadata !DIExpression()), !dbg !2220
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #37, !dbg !2297
  call void @llvm.dbg.value(metadata i64 %90, metadata !2171, metadata !DIExpression()), !dbg !2220
  br label %102, !dbg !2298

91:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !2172, metadata !DIExpression()), !dbg !2220
  br label %93, !dbg !2299

92:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2173, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i8 poison, metadata !2172, metadata !DIExpression()), !dbg !2220
  br i1 %36, label %102, label %96, !dbg !2300

93:                                               ; preds = %91, %27
  %94 = phi i1 [ true, %91 ], [ %35, %27 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2173, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i8 poison, metadata !2172, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i32 2, metadata !2162, metadata !DIExpression()), !dbg !2220
  br label %102, !dbg !2301

95:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2173, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i8 poison, metadata !2172, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i32 2, metadata !2162, metadata !DIExpression()), !dbg !2220
  br i1 %36, label %102, label %96, !dbg !2301

96:                                               ; preds = %92, %95
  %97 = phi i1 [ %35, %95 ], [ true, %92 ]
  %98 = icmp eq i64 %39, 0, !dbg !2302
  br i1 %98, label %102, label %99, !dbg !2306

99:                                               ; preds = %96
  store i8 39, ptr %0, align 1, !dbg !2302, !tbaa !938
  br label %102, !dbg !2302

100:                                              ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !2173, metadata !DIExpression()), !dbg !2220
  br label %102, !dbg !2307

101:                                              ; preds = %27
  call void @abort() #38, !dbg !2308
  unreachable, !dbg !2308

102:                                              ; preds = %92, %93, %40, %95, %99, %96, %27, %41, %44, %42, %100, %88
  %103 = phi i32 [ 0, %100 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %96 ], [ 2, %99 ], [ 2, %95 ], [ 5, %40 ], [ 2, %93 ], [ 2, %92 ]
  %104 = phi ptr [ %29, %100 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %96 ], [ %29, %99 ], [ %29, %95 ], [ %29, %40 ], [ %29, %93 ], [ %29, %92 ]
  %105 = phi ptr [ %30, %100 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %96 ], [ %30, %99 ], [ %30, %95 ], [ %30, %40 ], [ %30, %93 ], [ %30, %92 ]
  %106 = phi i64 [ 0, %100 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %96 ], [ 1, %99 ], [ 0, %95 ], [ 0, %40 ], [ 0, %93 ], [ 0, %92 ], !dbg !2296
  %107 = phi ptr [ %33, %100 ], [ %72, %88 ], [ @.str.10.90, %42 ], [ @.str.10.90, %44 ], [ @.str.10.90, %41 ], [ %33, %27 ], [ @.str.12.91, %96 ], [ @.str.12.91, %99 ], [ @.str.12.91, %95 ], [ @.str.10.90, %40 ], [ @.str.12.91, %93 ], [ @.str.12.91, %92 ], !dbg !2220
  %108 = phi i64 [ %34, %100 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %96 ], [ 1, %99 ], [ 1, %95 ], [ 1, %40 ], [ 1, %93 ], [ 1, %92 ], !dbg !2220
  %109 = phi i1 [ %35, %100 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %97, %96 ], [ %97, %99 ], [ %35, %95 ], [ true, %40 ], [ %94, %93 ], [ %35, %92 ]
  %110 = phi i1 [ false, %100 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %96 ], [ false, %99 ], [ true, %95 ], [ true, %40 ], [ true, %93 ], [ true, %92 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2173, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i8 poison, metadata !2172, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i64 %108, metadata !2171, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata ptr %107, metadata !2170, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i64 %106, metadata !2168, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata ptr %105, metadata !2166, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata ptr %104, metadata !2165, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i32 %103, metadata !2162, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i64 0, metadata !2182, metadata !DIExpression()), !dbg !2309
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
  br label %122, !dbg !2310

122:                                              ; preds = %569, %102
  %123 = phi i64 [ %31, %102 ], [ %570, %569 ]
  %124 = phi i64 [ %106, %102 ], [ %571, %569 ], !dbg !2296
  %125 = phi i64 [ %32, %102 ], [ %572, %569 ], !dbg !2224
  %126 = phi i1 [ %37, %102 ], [ %573, %569 ]
  %127 = phi i1 [ %38, %102 ], [ %574, %569 ]
  %128 = phi i1 [ false, %102 ], [ %575, %569 ]
  %129 = phi i64 [ 0, %102 ], [ %578, %569 ], !dbg !2311
  %130 = phi i64 [ %39, %102 ], [ %577, %569 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !2159, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i64 %129, metadata !2182, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i8 poison, metadata !2176, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i8 poison, metadata !2175, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i8 poison, metadata !2174, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i64 %125, metadata !2169, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i64 %124, metadata !2168, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i64 %123, metadata !2161, metadata !DIExpression()), !dbg !2220
  %131 = icmp eq i64 %123, -1, !dbg !2312
  br i1 %131, label %132, label %136, !dbg !2313

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !2314
  %134 = load i8, ptr %133, align 1, !dbg !2314, !tbaa !938
  %135 = icmp eq i8 %134, 0, !dbg !2315
  br i1 %135, label %579, label %138, !dbg !2316

136:                                              ; preds = %122
  %137 = icmp eq i64 %129, %123, !dbg !2317
  br i1 %137, label %579, label %138, !dbg !2316

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !2184, metadata !DIExpression()), !dbg !2318
  call void @llvm.dbg.value(metadata i8 0, metadata !2187, metadata !DIExpression()), !dbg !2318
  call void @llvm.dbg.value(metadata i8 0, metadata !2188, metadata !DIExpression()), !dbg !2318
  br i1 %114, label %139, label %152, !dbg !2319

139:                                              ; preds = %138
  %140 = add i64 %129, %108, !dbg !2321
  %141 = select i1 %131, i1 %115, i1 false, !dbg !2322
  br i1 %141, label %142, label %144, !dbg !2322

142:                                              ; preds = %139
  %143 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #37, !dbg !2323
  call void @llvm.dbg.value(metadata i64 %143, metadata !2161, metadata !DIExpression()), !dbg !2220
  br label %144, !dbg !2324

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %123, %139 ], !dbg !2324
  call void @llvm.dbg.value(metadata i64 %145, metadata !2161, metadata !DIExpression()), !dbg !2220
  %146 = icmp ugt i64 %140, %145, !dbg !2325
  br i1 %146, label %152, label %147, !dbg !2326

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !2327
  call void @llvm.dbg.value(metadata ptr %148, metadata !2328, metadata !DIExpression()), !dbg !2333
  call void @llvm.dbg.value(metadata ptr %107, metadata !2331, metadata !DIExpression()), !dbg !2333
  call void @llvm.dbg.value(metadata i64 %108, metadata !2332, metadata !DIExpression()), !dbg !2333
  %149 = call i32 @bcmp(ptr %148, ptr %107, i64 %108), !dbg !2335
  %150 = icmp eq i32 %149, 0, !dbg !2336
  %151 = and i1 %150, %110, !dbg !2337
  br i1 %151, label %630, label %152, !dbg !2337

152:                                              ; preds = %147, %144, %138
  %153 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %123, %138 ]
  %154 = phi i1 [ %150, %147 ], [ false, %144 ], [ false, %138 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2184, metadata !DIExpression()), !dbg !2318
  call void @llvm.dbg.value(metadata i64 %153, metadata !2161, metadata !DIExpression()), !dbg !2220
  %155 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !2338
  %156 = load i8, ptr %155, align 1, !dbg !2338, !tbaa !938
  call void @llvm.dbg.value(metadata i8 %156, metadata !2189, metadata !DIExpression()), !dbg !2318
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
  ], !dbg !2339

157:                                              ; preds = %152
  br i1 %109, label %158, label %204, !dbg !2340

158:                                              ; preds = %157
  br i1 %110, label %619, label %159, !dbg !2341

159:                                              ; preds = %158
  call void @llvm.dbg.value(metadata i8 1, metadata !2187, metadata !DIExpression()), !dbg !2318
  %160 = select i1 %111, i1 true, i1 %128, !dbg !2345
  br i1 %160, label %177, label %161, !dbg !2345

161:                                              ; preds = %159
  %162 = icmp ult i64 %124, %130, !dbg !2347
  br i1 %162, label %163, label %165, !dbg !2351

163:                                              ; preds = %161
  %164 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !2347
  store i8 39, ptr %164, align 1, !dbg !2347, !tbaa !938
  br label %165, !dbg !2347

165:                                              ; preds = %163, %161
  %166 = add i64 %124, 1, !dbg !2351
  call void @llvm.dbg.value(metadata i64 %166, metadata !2168, metadata !DIExpression()), !dbg !2220
  %167 = icmp ult i64 %166, %130, !dbg !2352
  br i1 %167, label %168, label %170, !dbg !2355

168:                                              ; preds = %165
  %169 = getelementptr inbounds i8, ptr %0, i64 %166, !dbg !2352
  store i8 36, ptr %169, align 1, !dbg !2352, !tbaa !938
  br label %170, !dbg !2352

170:                                              ; preds = %168, %165
  %171 = add i64 %124, 2, !dbg !2355
  call void @llvm.dbg.value(metadata i64 %171, metadata !2168, metadata !DIExpression()), !dbg !2220
  %172 = icmp ult i64 %171, %130, !dbg !2356
  br i1 %172, label %173, label %175, !dbg !2359

173:                                              ; preds = %170
  %174 = getelementptr inbounds i8, ptr %0, i64 %171, !dbg !2356
  store i8 39, ptr %174, align 1, !dbg !2356, !tbaa !938
  br label %175, !dbg !2356

175:                                              ; preds = %173, %170
  %176 = add i64 %124, 3, !dbg !2359
  call void @llvm.dbg.value(metadata i64 %176, metadata !2168, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i8 1, metadata !2176, metadata !DIExpression()), !dbg !2220
  br label %177, !dbg !2360

177:                                              ; preds = %159, %175
  %178 = phi i64 [ %176, %175 ], [ %124, %159 ], !dbg !2220
  %179 = phi i1 [ true, %175 ], [ %128, %159 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2176, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i64 %178, metadata !2168, metadata !DIExpression()), !dbg !2220
  %180 = icmp ult i64 %178, %130, !dbg !2361
  br i1 %180, label %181, label %183, !dbg !2364

181:                                              ; preds = %177
  %182 = getelementptr inbounds i8, ptr %0, i64 %178, !dbg !2361
  store i8 92, ptr %182, align 1, !dbg !2361, !tbaa !938
  br label %183, !dbg !2361

183:                                              ; preds = %181, %177
  %184 = add i64 %178, 1, !dbg !2364
  call void @llvm.dbg.value(metadata i64 %184, metadata !2168, metadata !DIExpression()), !dbg !2220
  br i1 %111, label %185, label %482, !dbg !2365

185:                                              ; preds = %183
  %186 = add i64 %129, 1, !dbg !2367
  %187 = icmp ult i64 %186, %153, !dbg !2368
  br i1 %187, label %188, label %439, !dbg !2369

188:                                              ; preds = %185
  %189 = getelementptr inbounds i8, ptr %2, i64 %186, !dbg !2370
  %190 = load i8, ptr %189, align 1, !dbg !2370, !tbaa !938
  %191 = add i8 %190, -48, !dbg !2371
  %192 = icmp ult i8 %191, 10, !dbg !2371
  br i1 %192, label %193, label %439, !dbg !2371

193:                                              ; preds = %188
  %194 = icmp ult i64 %184, %130, !dbg !2372
  br i1 %194, label %195, label %197, !dbg !2376

195:                                              ; preds = %193
  %196 = getelementptr inbounds i8, ptr %0, i64 %184, !dbg !2372
  store i8 48, ptr %196, align 1, !dbg !2372, !tbaa !938
  br label %197, !dbg !2372

197:                                              ; preds = %195, %193
  %198 = add i64 %178, 2, !dbg !2376
  call void @llvm.dbg.value(metadata i64 %198, metadata !2168, metadata !DIExpression()), !dbg !2220
  %199 = icmp ult i64 %198, %130, !dbg !2377
  br i1 %199, label %200, label %202, !dbg !2380

200:                                              ; preds = %197
  %201 = getelementptr inbounds i8, ptr %0, i64 %198, !dbg !2377
  store i8 48, ptr %201, align 1, !dbg !2377, !tbaa !938
  br label %202, !dbg !2377

202:                                              ; preds = %200, %197
  %203 = add i64 %178, 3, !dbg !2380
  call void @llvm.dbg.value(metadata i64 %203, metadata !2168, metadata !DIExpression()), !dbg !2220
  br label %439, !dbg !2381

204:                                              ; preds = %157
  br i1 %24, label %450, label %569, !dbg !2382

205:                                              ; preds = %152
  switch i32 %103, label %439 [
    i32 2, label %206
    i32 5, label %207
  ], !dbg !2383

206:                                              ; preds = %205
  br i1 %110, label %621, label %439, !dbg !2384

207:                                              ; preds = %205
  br i1 %22, label %439, label %208, !dbg !2386

208:                                              ; preds = %207
  %209 = add i64 %129, 2, !dbg !2388
  %210 = icmp ult i64 %209, %153, !dbg !2389
  br i1 %210, label %211, label %439, !dbg !2390

211:                                              ; preds = %208
  %212 = add i64 %129, 1, !dbg !2391
  %213 = getelementptr inbounds i8, ptr %2, i64 %212, !dbg !2392
  %214 = load i8, ptr %213, align 1, !dbg !2392, !tbaa !938
  %215 = icmp eq i8 %214, 63, !dbg !2393
  br i1 %215, label %216, label %439, !dbg !2394

216:                                              ; preds = %211
  %217 = getelementptr inbounds i8, ptr %2, i64 %209, !dbg !2395
  %218 = load i8, ptr %217, align 1, !dbg !2395, !tbaa !938
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
  ], !dbg !2396

219:                                              ; preds = %216, %216, %216, %216, %216, %216, %216, %216, %216
  br i1 %110, label %621, label %220, !dbg !2397

220:                                              ; preds = %219
  call void @llvm.dbg.value(metadata i8 %218, metadata !2189, metadata !DIExpression()), !dbg !2318
  call void @llvm.dbg.value(metadata i64 %209, metadata !2182, metadata !DIExpression()), !dbg !2309
  %221 = icmp ult i64 %124, %130, !dbg !2399
  br i1 %221, label %222, label %224, !dbg !2402

222:                                              ; preds = %220
  %223 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !2399
  store i8 63, ptr %223, align 1, !dbg !2399, !tbaa !938
  br label %224, !dbg !2399

224:                                              ; preds = %222, %220
  %225 = add i64 %124, 1, !dbg !2402
  call void @llvm.dbg.value(metadata i64 %225, metadata !2168, metadata !DIExpression()), !dbg !2220
  %226 = icmp ult i64 %225, %130, !dbg !2403
  br i1 %226, label %227, label %229, !dbg !2406

227:                                              ; preds = %224
  %228 = getelementptr inbounds i8, ptr %0, i64 %225, !dbg !2403
  store i8 34, ptr %228, align 1, !dbg !2403, !tbaa !938
  br label %229, !dbg !2403

229:                                              ; preds = %227, %224
  %230 = add i64 %124, 2, !dbg !2406
  call void @llvm.dbg.value(metadata i64 %230, metadata !2168, metadata !DIExpression()), !dbg !2220
  %231 = icmp ult i64 %230, %130, !dbg !2407
  br i1 %231, label %232, label %234, !dbg !2410

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, ptr %0, i64 %230, !dbg !2407
  store i8 34, ptr %233, align 1, !dbg !2407, !tbaa !938
  br label %234, !dbg !2407

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 3, !dbg !2410
  call void @llvm.dbg.value(metadata i64 %235, metadata !2168, metadata !DIExpression()), !dbg !2220
  %236 = icmp ult i64 %235, %130, !dbg !2411
  br i1 %236, label %237, label %239, !dbg !2414

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, ptr %0, i64 %235, !dbg !2411
  store i8 63, ptr %238, align 1, !dbg !2411, !tbaa !938
  br label %239, !dbg !2411

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 4, !dbg !2414
  call void @llvm.dbg.value(metadata i64 %240, metadata !2168, metadata !DIExpression()), !dbg !2220
  br label %439, !dbg !2415

241:                                              ; preds = %152
  br label %251, !dbg !2416

242:                                              ; preds = %152
  br label %251, !dbg !2417

243:                                              ; preds = %152
  br label %249, !dbg !2418

244:                                              ; preds = %152
  br label %249, !dbg !2419

245:                                              ; preds = %152
  br label %251, !dbg !2420

246:                                              ; preds = %152
  br i1 %116, label %247, label %248, !dbg !2421

247:                                              ; preds = %246
  br i1 %110, label %621, label %529, !dbg !2422

248:                                              ; preds = %246
  br i1 %118, label %529, label %251, !dbg !2425

249:                                              ; preds = %152, %244, %243
  %250 = phi i8 [ 116, %244 ], [ 114, %243 ], [ 110, %152 ], !dbg !2427
  call void @llvm.dbg.label(metadata !2214), !dbg !2428
  br i1 %119, label %621, label %251, !dbg !2429

251:                                              ; preds = %248, %249, %152, %245, %242, %241
  %252 = phi i8 [ %250, %249 ], [ 118, %245 ], [ 102, %242 ], [ 98, %241 ], [ 97, %152 ], [ 92, %248 ], !dbg !2427
  call void @llvm.dbg.label(metadata !2216), !dbg !2431
  br i1 %109, label %493, label %450, !dbg !2432

253:                                              ; preds = %152, %152
  switch i64 %153, label %439 [
    i64 -1, label %254
    i64 1, label %257
  ], !dbg !2433

254:                                              ; preds = %253
  %255 = load i8, ptr %20, align 1, !dbg !2434, !tbaa !938
  %256 = icmp eq i8 %255, 0, !dbg !2436
  br i1 %256, label %257, label %439, !dbg !2437

257:                                              ; preds = %253, %254, %152, %152
  %258 = icmp eq i64 %129, 0, !dbg !2438
  br i1 %258, label %259, label %439, !dbg !2440

259:                                              ; preds = %257, %152
  call void @llvm.dbg.value(metadata i8 1, metadata !2188, metadata !DIExpression()), !dbg !2318
  br label %260, !dbg !2441

260:                                              ; preds = %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %259
  %261 = phi i1 [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ true, %259 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2188, metadata !DIExpression()), !dbg !2318
  br i1 %116, label %262, label %439, !dbg !2442

262:                                              ; preds = %260
  br i1 %110, label %621, label %439, !dbg !2444

263:                                              ; preds = %152
  call void @llvm.dbg.value(metadata i8 1, metadata !2174, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i8 1, metadata !2188, metadata !DIExpression()), !dbg !2318
  br i1 %116, label %264, label %439, !dbg !2445

264:                                              ; preds = %263
  br i1 %110, label %621, label %265, !dbg !2446

265:                                              ; preds = %264
  %266 = icmp eq i64 %130, 0, !dbg !2449
  %267 = icmp ne i64 %125, 0
  %268 = select i1 %266, i1 true, i1 %267, !dbg !2451
  %269 = select i1 %268, i64 %125, i64 %130, !dbg !2451
  %270 = select i1 %268, i64 %130, i64 0, !dbg !2451
  call void @llvm.dbg.value(metadata i64 %270, metadata !2159, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i64 %269, metadata !2169, metadata !DIExpression()), !dbg !2220
  %271 = icmp ult i64 %124, %270, !dbg !2452
  br i1 %271, label %272, label %274, !dbg !2455

272:                                              ; preds = %265
  %273 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !2452
  store i8 39, ptr %273, align 1, !dbg !2452, !tbaa !938
  br label %274, !dbg !2452

274:                                              ; preds = %272, %265
  %275 = add i64 %124, 1, !dbg !2455
  call void @llvm.dbg.value(metadata i64 %275, metadata !2168, metadata !DIExpression()), !dbg !2220
  %276 = icmp ult i64 %275, %270, !dbg !2456
  br i1 %276, label %277, label %279, !dbg !2459

277:                                              ; preds = %274
  %278 = getelementptr inbounds i8, ptr %0, i64 %275, !dbg !2456
  store i8 92, ptr %278, align 1, !dbg !2456, !tbaa !938
  br label %279, !dbg !2456

279:                                              ; preds = %277, %274
  %280 = add i64 %124, 2, !dbg !2459
  call void @llvm.dbg.value(metadata i64 %280, metadata !2168, metadata !DIExpression()), !dbg !2220
  %281 = icmp ult i64 %280, %270, !dbg !2460
  br i1 %281, label %282, label %284, !dbg !2463

282:                                              ; preds = %279
  %283 = getelementptr inbounds i8, ptr %0, i64 %280, !dbg !2460
  store i8 39, ptr %283, align 1, !dbg !2460, !tbaa !938
  br label %284, !dbg !2460

284:                                              ; preds = %282, %279
  %285 = add i64 %124, 3, !dbg !2463
  call void @llvm.dbg.value(metadata i64 %285, metadata !2168, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i8 0, metadata !2176, metadata !DIExpression()), !dbg !2220
  br label %439, !dbg !2464

286:                                              ; preds = %152
  br i1 %17, label %287, label %295, !dbg !2465

287:                                              ; preds = %286
  call void @llvm.dbg.value(metadata i64 1, metadata !2190, metadata !DIExpression()), !dbg !2466
  %288 = tail call ptr @__ctype_b_loc() #39, !dbg !2467
  %289 = load ptr, ptr %288, align 8, !dbg !2467, !tbaa !860
  %290 = zext i8 %156 to i64
  %291 = getelementptr inbounds i16, ptr %289, i64 %290, !dbg !2467
  %292 = load i16, ptr %291, align 2, !dbg !2467, !tbaa !970
  %293 = and i16 %292, 16384, !dbg !2467
  %294 = icmp ne i16 %293, 0, !dbg !2469
  call void @llvm.dbg.value(metadata i1 %294, metadata !2193, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2466
  br label %337, !dbg !2470

295:                                              ; preds = %286
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #36, !dbg !2471
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2194, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.value(metadata ptr %14, metadata !2246, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata ptr %14, metadata !2254, metadata !DIExpression()), !dbg !2475
  call void @llvm.dbg.value(metadata i32 0, metadata !2257, metadata !DIExpression()), !dbg !2475
  call void @llvm.dbg.value(metadata i64 8, metadata !2258, metadata !DIExpression()), !dbg !2475
  store i64 0, ptr %14, align 8, !dbg !2477
  call void @llvm.dbg.value(metadata i64 0, metadata !2190, metadata !DIExpression()), !dbg !2466
  call void @llvm.dbg.value(metadata i8 1, metadata !2193, metadata !DIExpression()), !dbg !2466
  %296 = icmp eq i64 %153, -1, !dbg !2478
  br i1 %296, label %297, label %299, !dbg !2480

297:                                              ; preds = %295
  %298 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #37, !dbg !2481
  call void @llvm.dbg.value(metadata i64 %298, metadata !2161, metadata !DIExpression()), !dbg !2220
  br label %299, !dbg !2482

299:                                              ; preds = %295, %297
  %300 = phi i64 [ %298, %297 ], [ %153, %295 ], !dbg !2318
  call void @llvm.dbg.value(metadata i64 %300, metadata !2161, metadata !DIExpression()), !dbg !2220
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #36, !dbg !2483
  %301 = sub i64 %300, %129, !dbg !2484
  call void @llvm.dbg.value(metadata ptr %15, metadata !2197, metadata !DIExpression(DW_OP_deref)), !dbg !2485
  %302 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %155, i64 noundef %301, ptr noundef nonnull %14) #36, !dbg !2486
  call void @llvm.dbg.value(metadata i64 %302, metadata !2201, metadata !DIExpression()), !dbg !2485
  switch i64 %302, label %316 [
    i64 0, label %332
    i64 -1, label %305
    i64 -2, label %303
  ], !dbg !2487

303:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i64 0, metadata !2190, metadata !DIExpression()), !dbg !2466
  %304 = icmp ugt i64 %300, %129, !dbg !2488
  br i1 %304, label %306, label %332, !dbg !2490

305:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i8 0, metadata !2193, metadata !DIExpression()), !dbg !2466
  br label %332, !dbg !2491

306:                                              ; preds = %303, %312
  %307 = phi i64 [ %314, %312 ], [ %129, %303 ]
  %308 = phi i64 [ %313, %312 ], [ 0, %303 ]
  call void @llvm.dbg.value(metadata i64 %308, metadata !2190, metadata !DIExpression()), !dbg !2466
  %309 = getelementptr inbounds i8, ptr %2, i64 %307, !dbg !2493
  %310 = load i8, ptr %309, align 1, !dbg !2493, !tbaa !938
  %311 = icmp eq i8 %310, 0, !dbg !2490
  br i1 %311, label %332, label %312, !dbg !2494

312:                                              ; preds = %306
  %313 = add i64 %308, 1, !dbg !2495
  call void @llvm.dbg.value(metadata i64 %313, metadata !2190, metadata !DIExpression()), !dbg !2466
  %314 = add i64 %313, %129, !dbg !2496
  %315 = icmp eq i64 %313, %301, !dbg !2488
  br i1 %315, label %332, label %306, !dbg !2490, !llvm.loop !2497

316:                                              ; preds = %299
  %317 = icmp ugt i64 %302, 1
  %318 = and i1 %116, %317, !dbg !2498
  %319 = and i1 %318, %110, !dbg !2498
  call void @llvm.dbg.value(metadata i64 1, metadata !2202, metadata !DIExpression()), !dbg !2499
  br i1 %319, label %320, label %328, !dbg !2498

320:                                              ; preds = %316, %325
  %321 = phi i64 [ %326, %325 ], [ 1, %316 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !2202, metadata !DIExpression()), !dbg !2499
  %322 = add i64 %321, %129, !dbg !2500
  %323 = getelementptr inbounds i8, ptr %2, i64 %322, !dbg !2502
  %324 = load i8, ptr %323, align 1, !dbg !2502, !tbaa !938
  switch i8 %324, label %325 [
    i8 91, label %335
    i8 92, label %335
    i8 94, label %335
    i8 96, label %335
    i8 124, label %335
  ], !dbg !2503

325:                                              ; preds = %320
  %326 = add nuw i64 %321, 1, !dbg !2504
  call void @llvm.dbg.value(metadata i64 %326, metadata !2202, metadata !DIExpression()), !dbg !2499
  %327 = icmp eq i64 %326, %302, !dbg !2505
  br i1 %327, label %328, label %320, !dbg !2506, !llvm.loop !2507

328:                                              ; preds = %325, %316
  %329 = load i32, ptr %15, align 4, !dbg !2509, !tbaa !929
  call void @llvm.dbg.value(metadata i32 %329, metadata !2197, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata i32 %329, metadata !2511, metadata !DIExpression()), !dbg !2519
  %330 = call i32 @iswprint(i32 noundef %329) #36, !dbg !2521
  %331 = icmp ne i32 %330, 0, !dbg !2522
  call void @llvm.dbg.value(metadata i8 poison, metadata !2193, metadata !DIExpression()), !dbg !2466
  call void @llvm.dbg.value(metadata i64 %302, metadata !2190, metadata !DIExpression()), !dbg !2466
  br label %332, !dbg !2523

332:                                              ; preds = %306, %312, %303, %305, %328, %299
  %333 = phi i64 [ %302, %299 ], [ %302, %328 ], [ 0, %305 ], [ 0, %303 ], [ %308, %306 ], [ %301, %312 ]
  %334 = phi i1 [ true, %299 ], [ %331, %328 ], [ false, %305 ], [ false, %303 ], [ false, %312 ], [ false, %306 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2193, metadata !DIExpression()), !dbg !2466
  call void @llvm.dbg.value(metadata i64 %333, metadata !2190, metadata !DIExpression()), !dbg !2466
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !2524
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !2525
  br label %337

335:                                              ; preds = %320, %320, %320, %320, %320
  call void @llvm.dbg.value(metadata i8 poison, metadata !2193, metadata !DIExpression()), !dbg !2466
  call void @llvm.dbg.value(metadata i64 0, metadata !2190, metadata !DIExpression()), !dbg !2466
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !2524
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !2525
  call void @llvm.dbg.label(metadata !2219), !dbg !2526
  %336 = select i1 %109, i32 4, i32 2, !dbg !2527
  br label %626, !dbg !2527

337:                                              ; preds = %332, %287
  %338 = phi i64 [ %153, %287 ], [ %300, %332 ], !dbg !2318
  %339 = phi i64 [ 1, %287 ], [ %333, %332 ], !dbg !2529
  %340 = phi i1 [ %294, %287 ], [ %334, %332 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2193, metadata !DIExpression()), !dbg !2466
  call void @llvm.dbg.value(metadata i64 %339, metadata !2190, metadata !DIExpression()), !dbg !2466
  call void @llvm.dbg.value(metadata i64 %338, metadata !2161, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i1 %340, metadata !2188, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2318
  %341 = icmp ult i64 %339, 2, !dbg !2530
  %342 = select i1 %120, i1 true, i1 %340
  %343 = select i1 %341, i1 %342, i1 false, !dbg !2531
  br i1 %343, label %439, label %344, !dbg !2531

344:                                              ; preds = %337
  %345 = add i64 %339, %129, !dbg !2532
  call void @llvm.dbg.value(metadata i64 %345, metadata !2210, metadata !DIExpression()), !dbg !2533
  br label %346, !dbg !2534

346:                                              ; preds = %433, %344
  %347 = phi i64 [ %124, %344 ], [ %434, %433 ], !dbg !2220
  %348 = phi i1 [ %128, %344 ], [ %429, %433 ]
  %349 = phi i64 [ %129, %344 ], [ %410, %433 ], !dbg !2309
  %350 = phi i1 [ %154, %344 ], [ %407, %433 ]
  %351 = phi i8 [ 0, %344 ], [ %408, %433 ], !dbg !2535
  %352 = phi i8 [ %156, %344 ], [ %436, %433 ], !dbg !2318
  call void @llvm.dbg.value(metadata i8 %352, metadata !2189, metadata !DIExpression()), !dbg !2318
  call void @llvm.dbg.value(metadata i8 %351, metadata !2187, metadata !DIExpression()), !dbg !2318
  call void @llvm.dbg.value(metadata i8 poison, metadata !2184, metadata !DIExpression()), !dbg !2318
  call void @llvm.dbg.value(metadata i64 %349, metadata !2182, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i8 poison, metadata !2176, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i64 %347, metadata !2168, metadata !DIExpression()), !dbg !2220
  br i1 %342, label %397, label %353, !dbg !2536

353:                                              ; preds = %346
  br i1 %110, label %621, label %354, !dbg !2541

354:                                              ; preds = %353
  call void @llvm.dbg.value(metadata i8 1, metadata !2187, metadata !DIExpression()), !dbg !2318
  %355 = select i1 %111, i1 true, i1 %348, !dbg !2544
  br i1 %355, label %372, label %356, !dbg !2544

356:                                              ; preds = %354
  %357 = icmp ult i64 %347, %130, !dbg !2546
  br i1 %357, label %358, label %360, !dbg !2550

358:                                              ; preds = %356
  %359 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !2546
  store i8 39, ptr %359, align 1, !dbg !2546, !tbaa !938
  br label %360, !dbg !2546

360:                                              ; preds = %358, %356
  %361 = add i64 %347, 1, !dbg !2550
  call void @llvm.dbg.value(metadata i64 %361, metadata !2168, metadata !DIExpression()), !dbg !2220
  %362 = icmp ult i64 %361, %130, !dbg !2551
  br i1 %362, label %363, label %365, !dbg !2554

363:                                              ; preds = %360
  %364 = getelementptr inbounds i8, ptr %0, i64 %361, !dbg !2551
  store i8 36, ptr %364, align 1, !dbg !2551, !tbaa !938
  br label %365, !dbg !2551

365:                                              ; preds = %363, %360
  %366 = add i64 %347, 2, !dbg !2554
  call void @llvm.dbg.value(metadata i64 %366, metadata !2168, metadata !DIExpression()), !dbg !2220
  %367 = icmp ult i64 %366, %130, !dbg !2555
  br i1 %367, label %368, label %370, !dbg !2558

368:                                              ; preds = %365
  %369 = getelementptr inbounds i8, ptr %0, i64 %366, !dbg !2555
  store i8 39, ptr %369, align 1, !dbg !2555, !tbaa !938
  br label %370, !dbg !2555

370:                                              ; preds = %368, %365
  %371 = add i64 %347, 3, !dbg !2558
  call void @llvm.dbg.value(metadata i64 %371, metadata !2168, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i8 1, metadata !2176, metadata !DIExpression()), !dbg !2220
  br label %372, !dbg !2559

372:                                              ; preds = %354, %370
  %373 = phi i64 [ %371, %370 ], [ %347, %354 ], !dbg !2220
  %374 = phi i1 [ true, %370 ], [ %348, %354 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2176, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i64 %373, metadata !2168, metadata !DIExpression()), !dbg !2220
  %375 = icmp ult i64 %373, %130, !dbg !2560
  br i1 %375, label %376, label %378, !dbg !2563

376:                                              ; preds = %372
  %377 = getelementptr inbounds i8, ptr %0, i64 %373, !dbg !2560
  store i8 92, ptr %377, align 1, !dbg !2560, !tbaa !938
  br label %378, !dbg !2560

378:                                              ; preds = %376, %372
  %379 = add i64 %373, 1, !dbg !2563
  call void @llvm.dbg.value(metadata i64 %379, metadata !2168, metadata !DIExpression()), !dbg !2220
  %380 = icmp ult i64 %379, %130, !dbg !2564
  br i1 %380, label %381, label %385, !dbg !2567

381:                                              ; preds = %378
  %382 = lshr i8 %352, 6
  %383 = or i8 %382, 48, !dbg !2564
  %384 = getelementptr inbounds i8, ptr %0, i64 %379, !dbg !2564
  store i8 %383, ptr %384, align 1, !dbg !2564, !tbaa !938
  br label %385, !dbg !2564

385:                                              ; preds = %381, %378
  %386 = add i64 %373, 2, !dbg !2567
  call void @llvm.dbg.value(metadata i64 %386, metadata !2168, metadata !DIExpression()), !dbg !2220
  %387 = icmp ult i64 %386, %130, !dbg !2568
  br i1 %387, label %388, label %393, !dbg !2571

388:                                              ; preds = %385
  %389 = lshr i8 %352, 3
  %390 = and i8 %389, 7, !dbg !2568
  %391 = or i8 %390, 48, !dbg !2568
  %392 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !2568
  store i8 %391, ptr %392, align 1, !dbg !2568, !tbaa !938
  br label %393, !dbg !2568

393:                                              ; preds = %388, %385
  %394 = add i64 %373, 3, !dbg !2571
  call void @llvm.dbg.value(metadata i64 %394, metadata !2168, metadata !DIExpression()), !dbg !2220
  %395 = and i8 %352, 7, !dbg !2572
  %396 = or i8 %395, 48, !dbg !2573
  call void @llvm.dbg.value(metadata i8 %396, metadata !2189, metadata !DIExpression()), !dbg !2318
  br label %404, !dbg !2574

397:                                              ; preds = %346
  br i1 %350, label %398, label %404, !dbg !2575

398:                                              ; preds = %397
  %399 = icmp ult i64 %347, %130, !dbg !2576
  br i1 %399, label %400, label %402, !dbg !2581

400:                                              ; preds = %398
  %401 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !2576
  store i8 92, ptr %401, align 1, !dbg !2576, !tbaa !938
  br label %402, !dbg !2576

402:                                              ; preds = %400, %398
  %403 = add i64 %347, 1, !dbg !2581
  call void @llvm.dbg.value(metadata i64 %403, metadata !2168, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i8 0, metadata !2184, metadata !DIExpression()), !dbg !2318
  br label %404, !dbg !2582

404:                                              ; preds = %397, %402, %393
  %405 = phi i64 [ %403, %402 ], [ %347, %397 ], [ %394, %393 ], !dbg !2220
  %406 = phi i1 [ %348, %402 ], [ %348, %397 ], [ %374, %393 ]
  %407 = phi i1 [ false, %402 ], [ false, %397 ], [ %350, %393 ]
  %408 = phi i8 [ %351, %402 ], [ %351, %397 ], [ 1, %393 ], !dbg !2318
  %409 = phi i8 [ %352, %402 ], [ %352, %397 ], [ %396, %393 ], !dbg !2318
  call void @llvm.dbg.value(metadata i8 %409, metadata !2189, metadata !DIExpression()), !dbg !2318
  call void @llvm.dbg.value(metadata i8 %408, metadata !2187, metadata !DIExpression()), !dbg !2318
  call void @llvm.dbg.value(metadata i8 poison, metadata !2184, metadata !DIExpression()), !dbg !2318
  call void @llvm.dbg.value(metadata i8 poison, metadata !2176, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i64 %405, metadata !2168, metadata !DIExpression()), !dbg !2220
  %410 = add i64 %349, 1, !dbg !2583
  %411 = icmp ugt i64 %345, %410, !dbg !2585
  %412 = and i8 %408, 1
  br i1 %411, label %413, label %437, !dbg !2586

413:                                              ; preds = %404
  %414 = icmp eq i8 %412, 0, !dbg !2587
  %415 = select i1 %406, i1 %414, i1 false, !dbg !2587
  br i1 %415, label %416, label %427, !dbg !2587

416:                                              ; preds = %413
  %417 = icmp ult i64 %405, %130, !dbg !2590
  br i1 %417, label %418, label %420, !dbg !2594

418:                                              ; preds = %416
  %419 = getelementptr inbounds i8, ptr %0, i64 %405, !dbg !2590
  store i8 39, ptr %419, align 1, !dbg !2590, !tbaa !938
  br label %420, !dbg !2590

420:                                              ; preds = %418, %416
  %421 = add i64 %405, 1, !dbg !2594
  call void @llvm.dbg.value(metadata i64 %421, metadata !2168, metadata !DIExpression()), !dbg !2220
  %422 = icmp ult i64 %421, %130, !dbg !2595
  br i1 %422, label %423, label %425, !dbg !2598

423:                                              ; preds = %420
  %424 = getelementptr inbounds i8, ptr %0, i64 %421, !dbg !2595
  store i8 39, ptr %424, align 1, !dbg !2595, !tbaa !938
  br label %425, !dbg !2595

425:                                              ; preds = %423, %420
  %426 = add i64 %405, 2, !dbg !2598
  call void @llvm.dbg.value(metadata i64 %426, metadata !2168, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i8 0, metadata !2176, metadata !DIExpression()), !dbg !2220
  br label %427, !dbg !2599

427:                                              ; preds = %413, %425
  %428 = phi i64 [ %426, %425 ], [ %405, %413 ], !dbg !2600
  %429 = phi i1 [ false, %425 ], [ %406, %413 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2176, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i64 %428, metadata !2168, metadata !DIExpression()), !dbg !2220
  %430 = icmp ult i64 %428, %130, !dbg !2601
  br i1 %430, label %431, label %433, !dbg !2604

431:                                              ; preds = %427
  %432 = getelementptr inbounds i8, ptr %0, i64 %428, !dbg !2601
  store i8 %409, ptr %432, align 1, !dbg !2601, !tbaa !938
  br label %433, !dbg !2601

433:                                              ; preds = %431, %427
  %434 = add i64 %428, 1, !dbg !2604
  call void @llvm.dbg.value(metadata i64 %434, metadata !2168, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i64 %410, metadata !2182, metadata !DIExpression()), !dbg !2309
  %435 = getelementptr inbounds i8, ptr %2, i64 %410, !dbg !2605
  %436 = load i8, ptr %435, align 1, !dbg !2605, !tbaa !938
  call void @llvm.dbg.value(metadata i8 %436, metadata !2189, metadata !DIExpression()), !dbg !2318
  br label %346, !dbg !2606, !llvm.loop !2607

437:                                              ; preds = %404
  call void @llvm.dbg.value(metadata i8 %409, metadata !2189, metadata !DIExpression()), !dbg !2318
  call void @llvm.dbg.value(metadata i1 %340, metadata !2188, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2318
  call void @llvm.dbg.value(metadata i8 %408, metadata !2187, metadata !DIExpression()), !dbg !2318
  call void @llvm.dbg.value(metadata i8 poison, metadata !2184, metadata !DIExpression()), !dbg !2318
  call void @llvm.dbg.value(metadata i64 %349, metadata !2182, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i8 poison, metadata !2176, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i64 %405, metadata !2168, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i64 %338, metadata !2161, metadata !DIExpression()), !dbg !2220
  %438 = icmp ne i8 %412, 0
  br label %529

439:                                              ; preds = %337, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %253, %185, %188, %202, %263, %284, %260, %262, %257, %254, %205, %206, %239, %216, %211, %208, %207
  %440 = phi i64 [ %153, %284 ], [ %153, %263 ], [ %153, %262 ], [ %153, %260 ], [ %153, %257 ], [ -1, %254 ], [ %153, %205 ], [ %153, %216 ], [ %153, %239 ], [ %153, %211 ], [ %153, %208 ], [ %153, %207 ], [ %153, %206 ], [ %153, %202 ], [ %153, %188 ], [ %153, %185 ], [ %153, %253 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %338, %337 ], !dbg !2610
  %441 = phi i64 [ %285, %284 ], [ %124, %263 ], [ %124, %262 ], [ %124, %260 ], [ %124, %257 ], [ %124, %254 ], [ %124, %205 ], [ %124, %216 ], [ %240, %239 ], [ %124, %211 ], [ %124, %208 ], [ %124, %207 ], [ %124, %206 ], [ %203, %202 ], [ %184, %188 ], [ %184, %185 ], [ %124, %253 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %337 ], !dbg !2220
  %442 = phi i64 [ %269, %284 ], [ %125, %263 ], [ %125, %262 ], [ %125, %260 ], [ %125, %257 ], [ %125, %254 ], [ %125, %205 ], [ %125, %216 ], [ %125, %239 ], [ %125, %211 ], [ %125, %208 ], [ %125, %207 ], [ %125, %206 ], [ %125, %202 ], [ %125, %188 ], [ %125, %185 ], [ %125, %253 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %337 ], !dbg !2224
  %443 = phi i1 [ true, %284 ], [ true, %263 ], [ %126, %262 ], [ %126, %260 ], [ %126, %257 ], [ %126, %254 ], [ %126, %205 ], [ %126, %216 ], [ %126, %239 ], [ %126, %211 ], [ %126, %208 ], [ %126, %207 ], [ %126, %206 ], [ %126, %202 ], [ %126, %188 ], [ %126, %185 ], [ %126, %253 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %337 ]
  %444 = phi i1 [ false, %284 ], [ %128, %263 ], [ %128, %262 ], [ %128, %260 ], [ %128, %257 ], [ %128, %254 ], [ %128, %205 ], [ %128, %216 ], [ %128, %239 ], [ %128, %211 ], [ %128, %208 ], [ %128, %207 ], [ %128, %206 ], [ %179, %202 ], [ %179, %188 ], [ %179, %185 ], [ %128, %253 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %337 ]
  %445 = phi i64 [ %129, %284 ], [ %129, %263 ], [ %129, %262 ], [ %129, %260 ], [ %129, %257 ], [ %129, %254 ], [ %129, %205 ], [ %129, %216 ], [ %209, %239 ], [ %129, %211 ], [ %129, %208 ], [ %129, %207 ], [ %129, %206 ], [ %129, %202 ], [ %129, %188 ], [ %129, %185 ], [ %129, %253 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %337 ], !dbg !2309
  %446 = phi i1 [ false, %284 ], [ false, %263 ], [ false, %262 ], [ false, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ true, %202 ], [ true, %188 ], [ true, %185 ], [ false, %253 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %337 ]
  %447 = phi i1 [ true, %284 ], [ true, %263 ], [ %261, %262 ], [ %261, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ false, %202 ], [ false, %188 ], [ false, %185 ], [ false, %253 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ %340, %337 ]
  %448 = phi i8 [ 39, %284 ], [ 39, %263 ], [ %156, %262 ], [ %156, %260 ], [ %156, %257 ], [ %156, %254 ], [ 63, %205 ], [ 63, %216 ], [ %218, %239 ], [ 63, %211 ], [ 63, %208 ], [ 63, %207 ], [ 63, %206 ], [ 48, %202 ], [ 48, %188 ], [ 48, %185 ], [ %156, %253 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %337 ], !dbg !2318
  %449 = phi i64 [ %270, %284 ], [ %130, %263 ], [ %130, %262 ], [ %130, %260 ], [ %130, %257 ], [ %130, %254 ], [ %130, %205 ], [ %130, %216 ], [ %130, %239 ], [ %130, %211 ], [ %130, %208 ], [ %130, %207 ], [ %130, %206 ], [ %130, %202 ], [ %130, %188 ], [ %130, %185 ], [ %130, %253 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %337 ]
  call void @llvm.dbg.value(metadata i64 %449, metadata !2159, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i8 %448, metadata !2189, metadata !DIExpression()), !dbg !2318
  call void @llvm.dbg.value(metadata i8 poison, metadata !2188, metadata !DIExpression()), !dbg !2318
  call void @llvm.dbg.value(metadata i8 poison, metadata !2187, metadata !DIExpression()), !dbg !2318
  call void @llvm.dbg.value(metadata i8 poison, metadata !2184, metadata !DIExpression()), !dbg !2318
  call void @llvm.dbg.value(metadata i64 %445, metadata !2182, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i8 poison, metadata !2176, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i8 poison, metadata !2174, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i64 %442, metadata !2169, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i64 %441, metadata !2168, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i64 %440, metadata !2161, metadata !DIExpression()), !dbg !2220
  br i1 %112, label %461, label %450, !dbg !2611

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
  br i1 %121, label %462, label %482, !dbg !2613

461:                                              ; preds = %439
  br i1 %26, label %482, label %462, !dbg !2614

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
  %473 = lshr i8 %464, 5, !dbg !2615
  %474 = zext i8 %473 to i64, !dbg !2615
  %475 = getelementptr inbounds i32, ptr %6, i64 %474, !dbg !2616
  %476 = load i32, ptr %475, align 4, !dbg !2616, !tbaa !929
  %477 = and i8 %464, 31, !dbg !2617
  %478 = zext i8 %477 to i32, !dbg !2617
  %479 = shl nuw i32 1, %478, !dbg !2618
  %480 = and i32 %476, %479, !dbg !2618
  %481 = icmp eq i32 %480, 0, !dbg !2618
  br i1 %481, label %482, label %493, !dbg !2619

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
  br i1 %154, label %493, label %529, !dbg !2620

493:                                              ; preds = %251, %482, %462
  %494 = phi i64 [ %472, %462 ], [ %492, %482 ], [ %153, %251 ], !dbg !2610
  %495 = phi i64 [ %471, %462 ], [ %491, %482 ], [ %124, %251 ], !dbg !2220
  %496 = phi i64 [ %470, %462 ], [ %490, %482 ], [ %125, %251 ], !dbg !2224
  %497 = phi i1 [ %469, %462 ], [ %489, %482 ], [ %126, %251 ]
  %498 = phi i1 [ %468, %462 ], [ %488, %482 ], [ %128, %251 ]
  %499 = phi i64 [ %467, %462 ], [ %487, %482 ], [ %129, %251 ], !dbg !2621
  %500 = phi i1 [ %465, %462 ], [ %485, %482 ], [ false, %251 ]
  %501 = phi i8 [ %464, %462 ], [ %484, %482 ], [ %252, %251 ], !dbg !2318
  %502 = phi i64 [ %463, %462 ], [ %483, %482 ], [ %130, %251 ]
  call void @llvm.dbg.value(metadata i64 %502, metadata !2159, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i8 %501, metadata !2189, metadata !DIExpression()), !dbg !2318
  call void @llvm.dbg.value(metadata i8 poison, metadata !2188, metadata !DIExpression()), !dbg !2318
  call void @llvm.dbg.value(metadata i64 %499, metadata !2182, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i8 poison, metadata !2176, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i8 poison, metadata !2174, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i64 %496, metadata !2169, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i64 %495, metadata !2168, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i64 %494, metadata !2161, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.label(metadata !2217), !dbg !2622
  br i1 %110, label %621, label %503, !dbg !2623

503:                                              ; preds = %493
  call void @llvm.dbg.value(metadata i8 1, metadata !2187, metadata !DIExpression()), !dbg !2318
  %504 = select i1 %111, i1 true, i1 %498, !dbg !2625
  br i1 %504, label %521, label %505, !dbg !2625

505:                                              ; preds = %503
  %506 = icmp ult i64 %495, %502, !dbg !2627
  br i1 %506, label %507, label %509, !dbg !2631

507:                                              ; preds = %505
  %508 = getelementptr inbounds i8, ptr %0, i64 %495, !dbg !2627
  store i8 39, ptr %508, align 1, !dbg !2627, !tbaa !938
  br label %509, !dbg !2627

509:                                              ; preds = %507, %505
  %510 = add i64 %495, 1, !dbg !2631
  call void @llvm.dbg.value(metadata i64 %510, metadata !2168, metadata !DIExpression()), !dbg !2220
  %511 = icmp ult i64 %510, %502, !dbg !2632
  br i1 %511, label %512, label %514, !dbg !2635

512:                                              ; preds = %509
  %513 = getelementptr inbounds i8, ptr %0, i64 %510, !dbg !2632
  store i8 36, ptr %513, align 1, !dbg !2632, !tbaa !938
  br label %514, !dbg !2632

514:                                              ; preds = %512, %509
  %515 = add i64 %495, 2, !dbg !2635
  call void @llvm.dbg.value(metadata i64 %515, metadata !2168, metadata !DIExpression()), !dbg !2220
  %516 = icmp ult i64 %515, %502, !dbg !2636
  br i1 %516, label %517, label %519, !dbg !2639

517:                                              ; preds = %514
  %518 = getelementptr inbounds i8, ptr %0, i64 %515, !dbg !2636
  store i8 39, ptr %518, align 1, !dbg !2636, !tbaa !938
  br label %519, !dbg !2636

519:                                              ; preds = %517, %514
  %520 = add i64 %495, 3, !dbg !2639
  call void @llvm.dbg.value(metadata i64 %520, metadata !2168, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i8 1, metadata !2176, metadata !DIExpression()), !dbg !2220
  br label %521, !dbg !2640

521:                                              ; preds = %503, %519
  %522 = phi i64 [ %520, %519 ], [ %495, %503 ], !dbg !2318
  %523 = phi i1 [ true, %519 ], [ %498, %503 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2176, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i64 %522, metadata !2168, metadata !DIExpression()), !dbg !2220
  %524 = icmp ult i64 %522, %502, !dbg !2641
  br i1 %524, label %525, label %527, !dbg !2644

525:                                              ; preds = %521
  %526 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !2641
  store i8 92, ptr %526, align 1, !dbg !2641, !tbaa !938
  br label %527, !dbg !2641

527:                                              ; preds = %521, %525
  %528 = add i64 %522, 1, !dbg !2644
  call void @llvm.dbg.value(metadata i64 %502, metadata !2159, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i8 %501, metadata !2189, metadata !DIExpression()), !dbg !2318
  call void @llvm.dbg.value(metadata i8 poison, metadata !2188, metadata !DIExpression()), !dbg !2318
  call void @llvm.dbg.value(metadata i8 poison, metadata !2187, metadata !DIExpression()), !dbg !2318
  call void @llvm.dbg.value(metadata i64 %499, metadata !2182, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i8 poison, metadata !2176, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i8 poison, metadata !2174, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i64 %496, metadata !2169, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i64 %528, metadata !2168, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i64 %494, metadata !2161, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.label(metadata !2218), !dbg !2645
  br label %553, !dbg !2646

529:                                              ; preds = %437, %248, %247, %482
  %530 = phi i64 [ %338, %437 ], [ %492, %482 ], [ %153, %247 ], [ %153, %248 ], !dbg !2610
  %531 = phi i64 [ %405, %437 ], [ %491, %482 ], [ %124, %247 ], [ %124, %248 ], !dbg !2220
  %532 = phi i64 [ %125, %437 ], [ %490, %482 ], [ %125, %247 ], [ %125, %248 ], !dbg !2224
  %533 = phi i1 [ %126, %437 ], [ %489, %482 ], [ %126, %247 ], [ %126, %248 ]
  %534 = phi i1 [ %406, %437 ], [ %488, %482 ], [ %128, %247 ], [ %128, %248 ]
  %535 = phi i64 [ %349, %437 ], [ %487, %482 ], [ %129, %247 ], [ %129, %248 ], !dbg !2621
  %536 = phi i1 [ %438, %437 ], [ %486, %482 ], [ false, %247 ], [ false, %248 ]
  %537 = phi i1 [ %340, %437 ], [ %485, %482 ], [ false, %247 ], [ false, %248 ]
  %538 = phi i8 [ %409, %437 ], [ %484, %482 ], [ 92, %247 ], [ 92, %248 ], !dbg !2649
  %539 = phi i64 [ %130, %437 ], [ %483, %482 ], [ %130, %247 ], [ %130, %248 ]
  call void @llvm.dbg.value(metadata i64 %539, metadata !2159, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i8 %538, metadata !2189, metadata !DIExpression()), !dbg !2318
  call void @llvm.dbg.value(metadata i8 poison, metadata !2188, metadata !DIExpression()), !dbg !2318
  call void @llvm.dbg.value(metadata i8 poison, metadata !2187, metadata !DIExpression()), !dbg !2318
  call void @llvm.dbg.value(metadata i64 %535, metadata !2182, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i8 poison, metadata !2176, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i8 poison, metadata !2174, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i64 %532, metadata !2169, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i64 %531, metadata !2168, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i64 %530, metadata !2161, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.label(metadata !2218), !dbg !2645
  %540 = xor i1 %534, true, !dbg !2646
  %541 = select i1 %540, i1 true, i1 %536, !dbg !2646
  br i1 %541, label %553, label %542, !dbg !2646

542:                                              ; preds = %529
  %543 = icmp ult i64 %531, %539, !dbg !2650
  br i1 %543, label %544, label %546, !dbg !2654

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, ptr %0, i64 %531, !dbg !2650
  store i8 39, ptr %545, align 1, !dbg !2650, !tbaa !938
  br label %546, !dbg !2650

546:                                              ; preds = %544, %542
  %547 = add i64 %531, 1, !dbg !2654
  call void @llvm.dbg.value(metadata i64 %547, metadata !2168, metadata !DIExpression()), !dbg !2220
  %548 = icmp ult i64 %547, %539, !dbg !2655
  br i1 %548, label %549, label %551, !dbg !2658

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, ptr %0, i64 %547, !dbg !2655
  store i8 39, ptr %550, align 1, !dbg !2655, !tbaa !938
  br label %551, !dbg !2655

551:                                              ; preds = %549, %546
  %552 = add i64 %531, 2, !dbg !2658
  call void @llvm.dbg.value(metadata i64 %552, metadata !2168, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i8 0, metadata !2176, metadata !DIExpression()), !dbg !2220
  br label %553, !dbg !2659

553:                                              ; preds = %527, %529, %551
  %554 = phi i64 [ %539, %551 ], [ %539, %529 ], [ %502, %527 ]
  %555 = phi i8 [ %538, %551 ], [ %538, %529 ], [ %501, %527 ]
  %556 = phi i1 [ %537, %551 ], [ %537, %529 ], [ %500, %527 ]
  %557 = phi i64 [ %535, %551 ], [ %535, %529 ], [ %499, %527 ]
  %558 = phi i1 [ %533, %551 ], [ %533, %529 ], [ %497, %527 ]
  %559 = phi i64 [ %532, %551 ], [ %532, %529 ], [ %496, %527 ]
  %560 = phi i64 [ %530, %551 ], [ %530, %529 ], [ %494, %527 ]
  %561 = phi i64 [ %552, %551 ], [ %531, %529 ], [ %528, %527 ], !dbg !2318
  %562 = phi i1 [ false, %551 ], [ %534, %529 ], [ %523, %527 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2176, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i64 %561, metadata !2168, metadata !DIExpression()), !dbg !2220
  %563 = icmp ult i64 %561, %554, !dbg !2660
  br i1 %563, label %564, label %566, !dbg !2663

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, ptr %0, i64 %561, !dbg !2660
  store i8 %555, ptr %565, align 1, !dbg !2660, !tbaa !938
  br label %566, !dbg !2660

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !2663
  call void @llvm.dbg.value(metadata i64 %567, metadata !2168, metadata !DIExpression()), !dbg !2220
  %568 = select i1 %556, i1 %127, i1 false, !dbg !2664
  call void @llvm.dbg.value(metadata i8 poison, metadata !2175, metadata !DIExpression()), !dbg !2220
  br label %569, !dbg !2665

569:                                              ; preds = %204, %566
  %570 = phi i64 [ %560, %566 ], [ %153, %204 ], !dbg !2610
  %571 = phi i64 [ %567, %566 ], [ %124, %204 ], !dbg !2220
  %572 = phi i64 [ %559, %566 ], [ %125, %204 ], !dbg !2224
  %573 = phi i1 [ %558, %566 ], [ %126, %204 ]
  %574 = phi i1 [ %568, %566 ], [ %127, %204 ]
  %575 = phi i1 [ %562, %566 ], [ %128, %204 ]
  %576 = phi i64 [ %557, %566 ], [ %129, %204 ], !dbg !2621
  %577 = phi i64 [ %554, %566 ], [ %130, %204 ]
  call void @llvm.dbg.value(metadata i64 %577, metadata !2159, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i64 %576, metadata !2182, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i8 poison, metadata !2176, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i8 poison, metadata !2175, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i8 poison, metadata !2174, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i64 %572, metadata !2169, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i64 %571, metadata !2168, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i64 %570, metadata !2161, metadata !DIExpression()), !dbg !2220
  %578 = add i64 %576, 1, !dbg !2666
  call void @llvm.dbg.value(metadata i64 %578, metadata !2182, metadata !DIExpression()), !dbg !2309
  br label %122, !dbg !2667, !llvm.loop !2668

579:                                              ; preds = %136, %132
  call void @llvm.dbg.value(metadata i64 %130, metadata !2159, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i8 poison, metadata !2175, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i8 poison, metadata !2174, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i64 %125, metadata !2169, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i64 %124, metadata !2168, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i64 %123, metadata !2161, metadata !DIExpression()), !dbg !2220
  %580 = icmp ne i64 %124, 0, !dbg !2670
  %581 = xor i1 %110, true, !dbg !2672
  %582 = or i1 %580, %581, !dbg !2672
  %583 = or i1 %582, %111, !dbg !2672
  br i1 %583, label %584, label %621, !dbg !2672

584:                                              ; preds = %579
  %585 = or i1 %111, %110, !dbg !2673
  %586 = xor i1 %126, true, !dbg !2673
  %587 = select i1 %585, i1 true, i1 %586, !dbg !2673
  br i1 %587, label %595, label %588, !dbg !2673

588:                                              ; preds = %584
  br i1 %127, label %589, label %591, !dbg !2675

589:                                              ; preds = %588
  %590 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %125, ptr noundef %2, i64 noundef %123, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %104, ptr noundef %105), !dbg !2677
  br label %636, !dbg !2679

591:                                              ; preds = %588
  %592 = icmp eq i64 %130, 0, !dbg !2680
  %593 = icmp ne i64 %125, 0
  %594 = select i1 %592, i1 %593, i1 false, !dbg !2682
  br i1 %594, label %27, label %595, !dbg !2682

595:                                              ; preds = %584, %591
  %596 = phi i1 [ %110, %584 ], [ false, %591 ]
  %597 = icmp eq ptr %107, null, !dbg !2683
  %598 = or i1 %597, %596, !dbg !2685
  br i1 %598, label %614, label %599, !dbg !2685

599:                                              ; preds = %595
  call void @llvm.dbg.value(metadata ptr %107, metadata !2170, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i64 %124, metadata !2168, metadata !DIExpression()), !dbg !2220
  %600 = load i8, ptr %107, align 1, !dbg !2686, !tbaa !938
  %601 = icmp eq i8 %600, 0, !dbg !2689
  br i1 %601, label %614, label %602, !dbg !2689

602:                                              ; preds = %599, %609
  %603 = phi i8 [ %612, %609 ], [ %600, %599 ]
  %604 = phi ptr [ %611, %609 ], [ %107, %599 ]
  %605 = phi i64 [ %610, %609 ], [ %124, %599 ]
  call void @llvm.dbg.value(metadata ptr %604, metadata !2170, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i64 %605, metadata !2168, metadata !DIExpression()), !dbg !2220
  %606 = icmp ult i64 %605, %130, !dbg !2690
  br i1 %606, label %607, label %609, !dbg !2693

607:                                              ; preds = %602
  %608 = getelementptr inbounds i8, ptr %0, i64 %605, !dbg !2690
  store i8 %603, ptr %608, align 1, !dbg !2690, !tbaa !938
  br label %609, !dbg !2690

609:                                              ; preds = %607, %602
  %610 = add i64 %605, 1, !dbg !2693
  call void @llvm.dbg.value(metadata i64 %610, metadata !2168, metadata !DIExpression()), !dbg !2220
  %611 = getelementptr inbounds i8, ptr %604, i64 1, !dbg !2694
  call void @llvm.dbg.value(metadata ptr %611, metadata !2170, metadata !DIExpression()), !dbg !2220
  %612 = load i8, ptr %611, align 1, !dbg !2686, !tbaa !938
  %613 = icmp eq i8 %612, 0, !dbg !2689
  br i1 %613, label %614, label %602, !dbg !2689, !llvm.loop !2695

614:                                              ; preds = %609, %599, %595
  %615 = phi i64 [ %124, %595 ], [ %124, %599 ], [ %610, %609 ], !dbg !2296
  call void @llvm.dbg.value(metadata i64 %615, metadata !2168, metadata !DIExpression()), !dbg !2220
  %616 = icmp ult i64 %615, %130, !dbg !2697
  br i1 %616, label %617, label %636, !dbg !2699

617:                                              ; preds = %614
  %618 = getelementptr inbounds i8, ptr %0, i64 %615, !dbg !2700
  store i8 0, ptr %618, align 1, !dbg !2701, !tbaa !938
  br label %636, !dbg !2700

619:                                              ; preds = %158
  call void @llvm.dbg.label(metadata !2219), !dbg !2526
  %620 = icmp eq i32 %103, 2, !dbg !2702
  br i1 %620, label %626, label %630, !dbg !2527

621:                                              ; preds = %579, %493, %264, %262, %249, %247, %219, %206, %353
  %622 = phi i64 [ %130, %353 ], [ %502, %493 ], [ %130, %264 ], [ %130, %262 ], [ %130, %249 ], [ %130, %247 ], [ %130, %219 ], [ %130, %206 ], [ %130, %579 ]
  %623 = phi i64 [ %338, %353 ], [ %494, %493 ], [ %153, %264 ], [ %153, %262 ], [ %153, %249 ], [ %153, %247 ], [ %153, %219 ], [ %153, %206 ], [ %123, %579 ]
  call void @llvm.dbg.label(metadata !2219), !dbg !2526
  %624 = icmp eq i32 %103, 2, !dbg !2702
  %625 = select i1 %109, i32 4, i32 2, !dbg !2527
  br i1 %624, label %626, label %630, !dbg !2527

626:                                              ; preds = %335, %621, %619
  %627 = phi i32 [ 4, %619 ], [ %336, %335 ], [ %625, %621 ]
  %628 = phi i64 [ %130, %619 ], [ %130, %335 ], [ %622, %621 ]
  %629 = phi i64 [ %153, %619 ], [ %300, %335 ], [ %623, %621 ]
  br label %630, !dbg !2527

630:                                              ; preds = %147, %621, %619, %626
  %631 = phi i64 [ %628, %626 ], [ %130, %619 ], [ %622, %621 ], [ %130, %147 ]
  %632 = phi i64 [ %629, %626 ], [ %153, %619 ], [ %623, %621 ], [ %145, %147 ]
  %633 = phi i32 [ %627, %626 ], [ %103, %619 ], [ %103, %621 ], [ %103, %147 ]
  call void @llvm.dbg.value(metadata i32 %633, metadata !2162, metadata !DIExpression()), !dbg !2220
  %634 = and i32 %5, -3, !dbg !2703
  %635 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %631, ptr noundef %2, i64 noundef %632, i32 noundef %633, i32 noundef %634, ptr noundef null, ptr noundef %104, ptr noundef %105), !dbg !2704
  br label %636, !dbg !2705

636:                                              ; preds = %614, %617, %630, %589
  %637 = phi i64 [ %635, %630 ], [ %590, %589 ], [ %615, %617 ], [ %615, %614 ]
  ret i64 %637, !dbg !2706
}

; Function Attrs: nounwind
declare !dbg !2707 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2710 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !2713 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2715 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2719, metadata !DIExpression()), !dbg !2722
  call void @llvm.dbg.value(metadata i64 %1, metadata !2720, metadata !DIExpression()), !dbg !2722
  call void @llvm.dbg.value(metadata ptr %2, metadata !2721, metadata !DIExpression()), !dbg !2722
  call void @llvm.dbg.value(metadata ptr %0, metadata !2723, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.value(metadata i64 %1, metadata !2728, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.value(metadata ptr null, metadata !2729, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.value(metadata ptr %2, metadata !2730, metadata !DIExpression()), !dbg !2736
  %4 = icmp eq ptr %2, null, !dbg !2738
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2738
  call void @llvm.dbg.value(metadata ptr %5, metadata !2731, metadata !DIExpression()), !dbg !2736
  %6 = tail call ptr @__errno_location() #39, !dbg !2739
  %7 = load i32, ptr %6, align 4, !dbg !2739, !tbaa !929
  call void @llvm.dbg.value(metadata i32 %7, metadata !2732, metadata !DIExpression()), !dbg !2736
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2740
  %9 = load i32, ptr %8, align 4, !dbg !2740, !tbaa !2102
  %10 = or i32 %9, 1, !dbg !2741
  call void @llvm.dbg.value(metadata i32 %10, metadata !2733, metadata !DIExpression()), !dbg !2736
  %11 = load i32, ptr %5, align 8, !dbg !2742, !tbaa !2052
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2743
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2744
  %14 = load ptr, ptr %13, align 8, !dbg !2744, !tbaa !2123
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2745
  %16 = load ptr, ptr %15, align 8, !dbg !2745, !tbaa !2126
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2746
  %18 = add i64 %17, 1, !dbg !2747
  call void @llvm.dbg.value(metadata i64 %18, metadata !2734, metadata !DIExpression()), !dbg !2736
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #42, !dbg !2748
  call void @llvm.dbg.value(metadata ptr %19, metadata !2735, metadata !DIExpression()), !dbg !2736
  %20 = load i32, ptr %5, align 8, !dbg !2749, !tbaa !2052
  %21 = load ptr, ptr %13, align 8, !dbg !2750, !tbaa !2123
  %22 = load ptr, ptr %15, align 8, !dbg !2751, !tbaa !2126
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2752
  store i32 %7, ptr %6, align 4, !dbg !2753, !tbaa !929
  ret ptr %19, !dbg !2754
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2724 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2723, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i64 %1, metadata !2728, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata ptr %2, metadata !2729, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata ptr %3, metadata !2730, metadata !DIExpression()), !dbg !2755
  %5 = icmp eq ptr %3, null, !dbg !2756
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2756
  call void @llvm.dbg.value(metadata ptr %6, metadata !2731, metadata !DIExpression()), !dbg !2755
  %7 = tail call ptr @__errno_location() #39, !dbg !2757
  %8 = load i32, ptr %7, align 4, !dbg !2757, !tbaa !929
  call void @llvm.dbg.value(metadata i32 %8, metadata !2732, metadata !DIExpression()), !dbg !2755
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2758
  %10 = load i32, ptr %9, align 4, !dbg !2758, !tbaa !2102
  %11 = icmp eq ptr %2, null, !dbg !2759
  %12 = zext i1 %11 to i32, !dbg !2759
  %13 = or i32 %10, %12, !dbg !2760
  call void @llvm.dbg.value(metadata i32 %13, metadata !2733, metadata !DIExpression()), !dbg !2755
  %14 = load i32, ptr %6, align 8, !dbg !2761, !tbaa !2052
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2762
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2763
  %17 = load ptr, ptr %16, align 8, !dbg !2763, !tbaa !2123
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2764
  %19 = load ptr, ptr %18, align 8, !dbg !2764, !tbaa !2126
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2765
  %21 = add i64 %20, 1, !dbg !2766
  call void @llvm.dbg.value(metadata i64 %21, metadata !2734, metadata !DIExpression()), !dbg !2755
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #42, !dbg !2767
  call void @llvm.dbg.value(metadata ptr %22, metadata !2735, metadata !DIExpression()), !dbg !2755
  %23 = load i32, ptr %6, align 8, !dbg !2768, !tbaa !2052
  %24 = load ptr, ptr %16, align 8, !dbg !2769, !tbaa !2123
  %25 = load ptr, ptr %18, align 8, !dbg !2770, !tbaa !2126
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2771
  store i32 %8, ptr %7, align 4, !dbg !2772, !tbaa !929
  br i1 %11, label %28, label %27, !dbg !2773

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2774, !tbaa !1218
  br label %28, !dbg !2776

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2777
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2778 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2783, !tbaa !860
  call void @llvm.dbg.value(metadata ptr %1, metadata !2780, metadata !DIExpression()), !dbg !2784
  call void @llvm.dbg.value(metadata i32 1, metadata !2781, metadata !DIExpression()), !dbg !2785
  %2 = load i32, ptr @nslots, align 4, !tbaa !929
  call void @llvm.dbg.value(metadata i32 1, metadata !2781, metadata !DIExpression()), !dbg !2785
  %3 = icmp sgt i32 %2, 1, !dbg !2786
  br i1 %3, label %4, label %6, !dbg !2788

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2786
  br label %10, !dbg !2788

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2789
  %8 = load ptr, ptr %7, align 8, !dbg !2789, !tbaa !2791
  %9 = icmp eq ptr %8, @slot0, !dbg !2793
  br i1 %9, label %17, label %16, !dbg !2794

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2781, metadata !DIExpression()), !dbg !2785
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2795
  %13 = load ptr, ptr %12, align 8, !dbg !2795, !tbaa !2791
  tail call void @free(ptr noundef %13) #36, !dbg !2796
  %14 = add nuw nsw i64 %11, 1, !dbg !2797
  call void @llvm.dbg.value(metadata i64 %14, metadata !2781, metadata !DIExpression()), !dbg !2785
  %15 = icmp eq i64 %14, %5, !dbg !2786
  br i1 %15, label %6, label %10, !dbg !2788, !llvm.loop !2798

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #36, !dbg !2800
  store i64 256, ptr @slotvec0, align 8, !dbg !2802, !tbaa !2803
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2804, !tbaa !2791
  br label %17, !dbg !2805

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2806
  br i1 %18, label %20, label %19, !dbg !2808

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #36, !dbg !2809
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2811, !tbaa !860
  br label %20, !dbg !2812

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2813, !tbaa !929
  ret void, !dbg !2814
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2815 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2817, metadata !DIExpression()), !dbg !2819
  call void @llvm.dbg.value(metadata ptr %1, metadata !2818, metadata !DIExpression()), !dbg !2819
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2820
  ret ptr %3, !dbg !2821
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2822 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2826, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata ptr %1, metadata !2827, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i64 %2, metadata !2828, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata ptr %3, metadata !2829, metadata !DIExpression()), !dbg !2842
  %6 = tail call ptr @__errno_location() #39, !dbg !2843
  %7 = load i32, ptr %6, align 4, !dbg !2843, !tbaa !929
  call void @llvm.dbg.value(metadata i32 %7, metadata !2830, metadata !DIExpression()), !dbg !2842
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2844, !tbaa !860
  call void @llvm.dbg.value(metadata ptr %8, metadata !2831, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2832, metadata !DIExpression()), !dbg !2842
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2845
  br i1 %9, label %10, label %11, !dbg !2845

10:                                               ; preds = %4
  tail call void @abort() #38, !dbg !2847
  unreachable, !dbg !2847

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2848, !tbaa !929
  %13 = icmp sgt i32 %12, %0, !dbg !2849
  br i1 %13, label %32, label %14, !dbg !2850

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2851
  call void @llvm.dbg.value(metadata i1 %15, metadata !2833, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2852
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #36, !dbg !2853
  %16 = sext i32 %12 to i64, !dbg !2854
  call void @llvm.dbg.value(metadata i64 %16, metadata !2836, metadata !DIExpression()), !dbg !2852
  store i64 %16, ptr %5, align 8, !dbg !2855, !tbaa !1218
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2856
  %18 = add nuw nsw i32 %0, 1, !dbg !2857
  %19 = sub i32 %18, %12, !dbg !2858
  %20 = sext i32 %19 to i64, !dbg !2859
  call void @llvm.dbg.value(metadata ptr %5, metadata !2836, metadata !DIExpression(DW_OP_deref)), !dbg !2852
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #36, !dbg !2860
  call void @llvm.dbg.value(metadata ptr %21, metadata !2831, metadata !DIExpression()), !dbg !2842
  store ptr %21, ptr @slotvec, align 8, !dbg !2861, !tbaa !860
  br i1 %15, label %22, label %23, !dbg !2862

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2863, !tbaa.struct !2865
  br label %23, !dbg !2866

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2867, !tbaa !929
  %25 = sext i32 %24 to i64, !dbg !2868
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2868
  %27 = load i64, ptr %5, align 8, !dbg !2869, !tbaa !1218
  call void @llvm.dbg.value(metadata i64 %27, metadata !2836, metadata !DIExpression()), !dbg !2852
  %28 = sub nsw i64 %27, %25, !dbg !2870
  %29 = shl i64 %28, 4, !dbg !2871
  call void @llvm.dbg.value(metadata ptr %26, metadata !2254, metadata !DIExpression()), !dbg !2872
  call void @llvm.dbg.value(metadata i32 0, metadata !2257, metadata !DIExpression()), !dbg !2872
  call void @llvm.dbg.value(metadata i64 %29, metadata !2258, metadata !DIExpression()), !dbg !2872
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #36, !dbg !2874
  %30 = load i64, ptr %5, align 8, !dbg !2875, !tbaa !1218
  call void @llvm.dbg.value(metadata i64 %30, metadata !2836, metadata !DIExpression()), !dbg !2852
  %31 = trunc i64 %30 to i32, !dbg !2875
  store i32 %31, ptr @nslots, align 4, !dbg !2876, !tbaa !929
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #36, !dbg !2877
  br label %32, !dbg !2878

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2842
  call void @llvm.dbg.value(metadata ptr %33, metadata !2831, metadata !DIExpression()), !dbg !2842
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2879
  %36 = load i64, ptr %35, align 8, !dbg !2880, !tbaa !2803
  call void @llvm.dbg.value(metadata i64 %36, metadata !2837, metadata !DIExpression()), !dbg !2881
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2882
  %38 = load ptr, ptr %37, align 8, !dbg !2882, !tbaa !2791
  call void @llvm.dbg.value(metadata ptr %38, metadata !2839, metadata !DIExpression()), !dbg !2881
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2883
  %40 = load i32, ptr %39, align 4, !dbg !2883, !tbaa !2102
  %41 = or i32 %40, 1, !dbg !2884
  call void @llvm.dbg.value(metadata i32 %41, metadata !2840, metadata !DIExpression()), !dbg !2881
  %42 = load i32, ptr %3, align 8, !dbg !2885, !tbaa !2052
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2886
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2887
  %45 = load ptr, ptr %44, align 8, !dbg !2887, !tbaa !2123
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2888
  %47 = load ptr, ptr %46, align 8, !dbg !2888, !tbaa !2126
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2889
  call void @llvm.dbg.value(metadata i64 %48, metadata !2841, metadata !DIExpression()), !dbg !2881
  %49 = icmp ugt i64 %36, %48, !dbg !2890
  br i1 %49, label %60, label %50, !dbg !2892

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2893
  call void @llvm.dbg.value(metadata i64 %51, metadata !2837, metadata !DIExpression()), !dbg !2881
  store i64 %51, ptr %35, align 8, !dbg !2895, !tbaa !2803
  %52 = icmp eq ptr %38, @slot0, !dbg !2896
  br i1 %52, label %54, label %53, !dbg !2898

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #36, !dbg !2899
  br label %54, !dbg !2899

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #42, !dbg !2900
  call void @llvm.dbg.value(metadata ptr %55, metadata !2839, metadata !DIExpression()), !dbg !2881
  store ptr %55, ptr %37, align 8, !dbg !2901, !tbaa !2791
  %56 = load i32, ptr %3, align 8, !dbg !2902, !tbaa !2052
  %57 = load ptr, ptr %44, align 8, !dbg !2903, !tbaa !2123
  %58 = load ptr, ptr %46, align 8, !dbg !2904, !tbaa !2126
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2905
  br label %60, !dbg !2906

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2881
  call void @llvm.dbg.value(metadata ptr %61, metadata !2839, metadata !DIExpression()), !dbg !2881
  store i32 %7, ptr %6, align 4, !dbg !2907, !tbaa !929
  ret ptr %61, !dbg !2908
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #24

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2909 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2913, metadata !DIExpression()), !dbg !2916
  call void @llvm.dbg.value(metadata ptr %1, metadata !2914, metadata !DIExpression()), !dbg !2916
  call void @llvm.dbg.value(metadata i64 %2, metadata !2915, metadata !DIExpression()), !dbg !2916
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2917
  ret ptr %4, !dbg !2918
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2919 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2921, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.value(metadata i32 0, metadata !2817, metadata !DIExpression()), !dbg !2923
  call void @llvm.dbg.value(metadata ptr %0, metadata !2818, metadata !DIExpression()), !dbg !2923
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2925
  ret ptr %2, !dbg !2926
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2927 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2931, metadata !DIExpression()), !dbg !2933
  call void @llvm.dbg.value(metadata i64 %1, metadata !2932, metadata !DIExpression()), !dbg !2933
  call void @llvm.dbg.value(metadata i32 0, metadata !2913, metadata !DIExpression()), !dbg !2934
  call void @llvm.dbg.value(metadata ptr %0, metadata !2914, metadata !DIExpression()), !dbg !2934
  call void @llvm.dbg.value(metadata i64 %1, metadata !2915, metadata !DIExpression()), !dbg !2934
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2936
  ret ptr %3, !dbg !2937
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2938 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2942, metadata !DIExpression()), !dbg !2946
  call void @llvm.dbg.value(metadata i32 %1, metadata !2943, metadata !DIExpression()), !dbg !2946
  call void @llvm.dbg.value(metadata ptr %2, metadata !2944, metadata !DIExpression()), !dbg !2946
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2947
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2945, metadata !DIExpression()), !dbg !2948
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2949), !dbg !2952
  call void @llvm.dbg.value(metadata i32 %1, metadata !2953, metadata !DIExpression()), !dbg !2959
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2958, metadata !DIExpression()), !dbg !2961
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2961, !alias.scope !2949
  %5 = icmp eq i32 %1, 10, !dbg !2962
  br i1 %5, label %6, label %7, !dbg !2964

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2965, !noalias !2949
  unreachable, !dbg !2965

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2966, !tbaa !2052, !alias.scope !2949
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2967
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2968
  ret ptr %8, !dbg !2969
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2970 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2974, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata i32 %1, metadata !2975, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata ptr %2, metadata !2976, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata i64 %3, metadata !2977, metadata !DIExpression()), !dbg !2979
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !2980
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2978, metadata !DIExpression()), !dbg !2981
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2982), !dbg !2985
  call void @llvm.dbg.value(metadata i32 %1, metadata !2953, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2958, metadata !DIExpression()), !dbg !2988
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2988, !alias.scope !2982
  %6 = icmp eq i32 %1, 10, !dbg !2989
  br i1 %6, label %7, label %8, !dbg !2990

7:                                                ; preds = %4
  tail call void @abort() #38, !dbg !2991, !noalias !2982
  unreachable, !dbg !2991

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2992, !tbaa !2052, !alias.scope !2982
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2993
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !2994
  ret ptr %9, !dbg !2995
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2996 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3000, metadata !DIExpression()), !dbg !3002
  call void @llvm.dbg.value(metadata ptr %1, metadata !3001, metadata !DIExpression()), !dbg !3002
  call void @llvm.dbg.value(metadata i32 0, metadata !2942, metadata !DIExpression()), !dbg !3003
  call void @llvm.dbg.value(metadata i32 %0, metadata !2943, metadata !DIExpression()), !dbg !3003
  call void @llvm.dbg.value(metadata ptr %1, metadata !2944, metadata !DIExpression()), !dbg !3003
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !3005
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2945, metadata !DIExpression()), !dbg !3006
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3007), !dbg !3010
  call void @llvm.dbg.value(metadata i32 %0, metadata !2953, metadata !DIExpression()), !dbg !3011
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2958, metadata !DIExpression()), !dbg !3013
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3013, !alias.scope !3007
  %4 = icmp eq i32 %0, 10, !dbg !3014
  br i1 %4, label %5, label %6, !dbg !3015

5:                                                ; preds = %2
  tail call void @abort() #38, !dbg !3016, !noalias !3007
  unreachable, !dbg !3016

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3017, !tbaa !2052, !alias.scope !3007
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3018
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !3019
  ret ptr %7, !dbg !3020
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3021 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3025, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata ptr %1, metadata !3026, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i64 %2, metadata !3027, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i32 0, metadata !2974, metadata !DIExpression()), !dbg !3029
  call void @llvm.dbg.value(metadata i32 %0, metadata !2975, metadata !DIExpression()), !dbg !3029
  call void @llvm.dbg.value(metadata ptr %1, metadata !2976, metadata !DIExpression()), !dbg !3029
  call void @llvm.dbg.value(metadata i64 %2, metadata !2977, metadata !DIExpression()), !dbg !3029
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !3031
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2978, metadata !DIExpression()), !dbg !3032
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3033), !dbg !3036
  call void @llvm.dbg.value(metadata i32 %0, metadata !2953, metadata !DIExpression()), !dbg !3037
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2958, metadata !DIExpression()), !dbg !3039
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3039, !alias.scope !3033
  %5 = icmp eq i32 %0, 10, !dbg !3040
  br i1 %5, label %6, label %7, !dbg !3041

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !3042, !noalias !3033
  unreachable, !dbg !3042

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3043, !tbaa !2052, !alias.scope !3033
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3044
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !3045
  ret ptr %8, !dbg !3046
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !3047 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3051, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i64 %1, metadata !3052, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i8 %2, metadata !3053, metadata !DIExpression()), !dbg !3055
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !3056
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3054, metadata !DIExpression()), !dbg !3057
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3058, !tbaa.struct !3059
  call void @llvm.dbg.value(metadata ptr %4, metadata !2069, metadata !DIExpression()), !dbg !3060
  call void @llvm.dbg.value(metadata i8 %2, metadata !2070, metadata !DIExpression()), !dbg !3060
  call void @llvm.dbg.value(metadata i32 1, metadata !2071, metadata !DIExpression()), !dbg !3060
  call void @llvm.dbg.value(metadata i8 %2, metadata !2072, metadata !DIExpression()), !dbg !3060
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !3062
  %6 = lshr i8 %2, 5, !dbg !3063
  %7 = zext i8 %6 to i64, !dbg !3063
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !3064
  call void @llvm.dbg.value(metadata ptr %8, metadata !2073, metadata !DIExpression()), !dbg !3060
  %9 = and i8 %2, 31, !dbg !3065
  %10 = zext i8 %9 to i32, !dbg !3065
  call void @llvm.dbg.value(metadata i32 %10, metadata !2075, metadata !DIExpression()), !dbg !3060
  %11 = load i32, ptr %8, align 4, !dbg !3066, !tbaa !929
  %12 = lshr i32 %11, %10, !dbg !3067
  call void @llvm.dbg.value(metadata i32 %12, metadata !2076, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3060
  %13 = and i32 %12, 1, !dbg !3068
  %14 = xor i32 %13, 1, !dbg !3068
  %15 = shl nuw i32 %14, %10, !dbg !3069
  %16 = xor i32 %15, %11, !dbg !3070
  store i32 %16, ptr %8, align 4, !dbg !3070, !tbaa !929
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !3071
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !3072
  ret ptr %17, !dbg !3073
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !3074 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3078, metadata !DIExpression()), !dbg !3080
  call void @llvm.dbg.value(metadata i8 %1, metadata !3079, metadata !DIExpression()), !dbg !3080
  call void @llvm.dbg.value(metadata ptr %0, metadata !3051, metadata !DIExpression()), !dbg !3081
  call void @llvm.dbg.value(metadata i64 -1, metadata !3052, metadata !DIExpression()), !dbg !3081
  call void @llvm.dbg.value(metadata i8 %1, metadata !3053, metadata !DIExpression()), !dbg !3081
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !3083
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3054, metadata !DIExpression()), !dbg !3084
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3085, !tbaa.struct !3059
  call void @llvm.dbg.value(metadata ptr %3, metadata !2069, metadata !DIExpression()), !dbg !3086
  call void @llvm.dbg.value(metadata i8 %1, metadata !2070, metadata !DIExpression()), !dbg !3086
  call void @llvm.dbg.value(metadata i32 1, metadata !2071, metadata !DIExpression()), !dbg !3086
  call void @llvm.dbg.value(metadata i8 %1, metadata !2072, metadata !DIExpression()), !dbg !3086
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3088
  %5 = lshr i8 %1, 5, !dbg !3089
  %6 = zext i8 %5 to i64, !dbg !3089
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !3090
  call void @llvm.dbg.value(metadata ptr %7, metadata !2073, metadata !DIExpression()), !dbg !3086
  %8 = and i8 %1, 31, !dbg !3091
  %9 = zext i8 %8 to i32, !dbg !3091
  call void @llvm.dbg.value(metadata i32 %9, metadata !2075, metadata !DIExpression()), !dbg !3086
  %10 = load i32, ptr %7, align 4, !dbg !3092, !tbaa !929
  %11 = lshr i32 %10, %9, !dbg !3093
  call void @llvm.dbg.value(metadata i32 %11, metadata !2076, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3086
  %12 = and i32 %11, 1, !dbg !3094
  %13 = xor i32 %12, 1, !dbg !3094
  %14 = shl nuw i32 %13, %9, !dbg !3095
  %15 = xor i32 %14, %10, !dbg !3096
  store i32 %15, ptr %7, align 4, !dbg !3096, !tbaa !929
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !3097
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !3098
  ret ptr %16, !dbg !3099
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !3100 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3102, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata ptr %0, metadata !3078, metadata !DIExpression()), !dbg !3104
  call void @llvm.dbg.value(metadata i8 58, metadata !3079, metadata !DIExpression()), !dbg !3104
  call void @llvm.dbg.value(metadata ptr %0, metadata !3051, metadata !DIExpression()), !dbg !3106
  call void @llvm.dbg.value(metadata i64 -1, metadata !3052, metadata !DIExpression()), !dbg !3106
  call void @llvm.dbg.value(metadata i8 58, metadata !3053, metadata !DIExpression()), !dbg !3106
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #36, !dbg !3108
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3054, metadata !DIExpression()), !dbg !3109
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3110, !tbaa.struct !3059
  call void @llvm.dbg.value(metadata ptr %2, metadata !2069, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata i8 58, metadata !2070, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata i32 1, metadata !2071, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata i8 58, metadata !2072, metadata !DIExpression()), !dbg !3111
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !3113
  call void @llvm.dbg.value(metadata ptr %3, metadata !2073, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata i32 26, metadata !2075, metadata !DIExpression()), !dbg !3111
  %4 = load i32, ptr %3, align 4, !dbg !3114, !tbaa !929
  call void @llvm.dbg.value(metadata i32 %4, metadata !2076, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3111
  %5 = or i32 %4, 67108864, !dbg !3115
  store i32 %5, ptr %3, align 4, !dbg !3115, !tbaa !929
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !3116
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #36, !dbg !3117
  ret ptr %6, !dbg !3118
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3119 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3121, metadata !DIExpression()), !dbg !3123
  call void @llvm.dbg.value(metadata i64 %1, metadata !3122, metadata !DIExpression()), !dbg !3123
  call void @llvm.dbg.value(metadata ptr %0, metadata !3051, metadata !DIExpression()), !dbg !3124
  call void @llvm.dbg.value(metadata i64 %1, metadata !3052, metadata !DIExpression()), !dbg !3124
  call void @llvm.dbg.value(metadata i8 58, metadata !3053, metadata !DIExpression()), !dbg !3124
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !3126
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3054, metadata !DIExpression()), !dbg !3127
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3128, !tbaa.struct !3059
  call void @llvm.dbg.value(metadata ptr %3, metadata !2069, metadata !DIExpression()), !dbg !3129
  call void @llvm.dbg.value(metadata i8 58, metadata !2070, metadata !DIExpression()), !dbg !3129
  call void @llvm.dbg.value(metadata i32 1, metadata !2071, metadata !DIExpression()), !dbg !3129
  call void @llvm.dbg.value(metadata i8 58, metadata !2072, metadata !DIExpression()), !dbg !3129
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3131
  call void @llvm.dbg.value(metadata ptr %4, metadata !2073, metadata !DIExpression()), !dbg !3129
  call void @llvm.dbg.value(metadata i32 26, metadata !2075, metadata !DIExpression()), !dbg !3129
  %5 = load i32, ptr %4, align 4, !dbg !3132, !tbaa !929
  call void @llvm.dbg.value(metadata i32 %5, metadata !2076, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3129
  %6 = or i32 %5, 67108864, !dbg !3133
  store i32 %6, ptr %4, align 4, !dbg !3133, !tbaa !929
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3134
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !3135
  ret ptr %7, !dbg !3136
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3137 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2958, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3143
  call void @llvm.dbg.value(metadata i32 %0, metadata !3139, metadata !DIExpression()), !dbg !3145
  call void @llvm.dbg.value(metadata i32 %1, metadata !3140, metadata !DIExpression()), !dbg !3145
  call void @llvm.dbg.value(metadata ptr %2, metadata !3141, metadata !DIExpression()), !dbg !3145
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !3146
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3142, metadata !DIExpression()), !dbg !3147
  call void @llvm.dbg.value(metadata i32 %1, metadata !2953, metadata !DIExpression()), !dbg !3148
  call void @llvm.dbg.value(metadata i32 0, metadata !2958, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3148
  %5 = icmp eq i32 %1, 10, !dbg !3149
  br i1 %5, label %6, label %7, !dbg !3150

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !3151, !noalias !3152
  unreachable, !dbg !3151

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2958, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3148
  store i32 %1, ptr %4, align 8, !dbg !3155, !tbaa.struct !3059
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3155
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3155
  call void @llvm.dbg.value(metadata ptr %4, metadata !2069, metadata !DIExpression()), !dbg !3156
  call void @llvm.dbg.value(metadata i8 58, metadata !2070, metadata !DIExpression()), !dbg !3156
  call void @llvm.dbg.value(metadata i32 1, metadata !2071, metadata !DIExpression()), !dbg !3156
  call void @llvm.dbg.value(metadata i8 58, metadata !2072, metadata !DIExpression()), !dbg !3156
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3158
  call void @llvm.dbg.value(metadata ptr %9, metadata !2073, metadata !DIExpression()), !dbg !3156
  call void @llvm.dbg.value(metadata i32 26, metadata !2075, metadata !DIExpression()), !dbg !3156
  %10 = load i32, ptr %9, align 4, !dbg !3159, !tbaa !929
  call void @llvm.dbg.value(metadata i32 %10, metadata !2076, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3156
  %11 = or i32 %10, 67108864, !dbg !3160
  store i32 %11, ptr %9, align 4, !dbg !3160, !tbaa !929
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3161
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !3162
  ret ptr %12, !dbg !3163
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3164 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3168, metadata !DIExpression()), !dbg !3172
  call void @llvm.dbg.value(metadata ptr %1, metadata !3169, metadata !DIExpression()), !dbg !3172
  call void @llvm.dbg.value(metadata ptr %2, metadata !3170, metadata !DIExpression()), !dbg !3172
  call void @llvm.dbg.value(metadata ptr %3, metadata !3171, metadata !DIExpression()), !dbg !3172
  call void @llvm.dbg.value(metadata i32 %0, metadata !3173, metadata !DIExpression()), !dbg !3183
  call void @llvm.dbg.value(metadata ptr %1, metadata !3178, metadata !DIExpression()), !dbg !3183
  call void @llvm.dbg.value(metadata ptr %2, metadata !3179, metadata !DIExpression()), !dbg !3183
  call void @llvm.dbg.value(metadata ptr %3, metadata !3180, metadata !DIExpression()), !dbg !3183
  call void @llvm.dbg.value(metadata i64 -1, metadata !3181, metadata !DIExpression()), !dbg !3183
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !3185
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3182, metadata !DIExpression()), !dbg !3186
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3187, !tbaa.struct !3059
  call void @llvm.dbg.value(metadata ptr %5, metadata !2109, metadata !DIExpression()), !dbg !3188
  call void @llvm.dbg.value(metadata ptr %1, metadata !2110, metadata !DIExpression()), !dbg !3188
  call void @llvm.dbg.value(metadata ptr %2, metadata !2111, metadata !DIExpression()), !dbg !3188
  call void @llvm.dbg.value(metadata ptr %5, metadata !2109, metadata !DIExpression()), !dbg !3188
  store i32 10, ptr %5, align 8, !dbg !3190, !tbaa !2052
  %6 = icmp ne ptr %1, null, !dbg !3191
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3192
  br i1 %8, label %10, label %9, !dbg !3192

9:                                                ; preds = %4
  tail call void @abort() #38, !dbg !3193
  unreachable, !dbg !3193

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3194
  store ptr %1, ptr %11, align 8, !dbg !3195, !tbaa !2123
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3196
  store ptr %2, ptr %12, align 8, !dbg !3197, !tbaa !2126
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3198
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !3199
  ret ptr %13, !dbg !3200
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !3174 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3173, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata ptr %1, metadata !3178, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata ptr %2, metadata !3179, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata ptr %3, metadata !3180, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64 %4, metadata !3181, metadata !DIExpression()), !dbg !3201
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #36, !dbg !3202
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3182, metadata !DIExpression()), !dbg !3203
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3204, !tbaa.struct !3059
  call void @llvm.dbg.value(metadata ptr %6, metadata !2109, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata ptr %1, metadata !2110, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata ptr %2, metadata !2111, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata ptr %6, metadata !2109, metadata !DIExpression()), !dbg !3205
  store i32 10, ptr %6, align 8, !dbg !3207, !tbaa !2052
  %7 = icmp ne ptr %1, null, !dbg !3208
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3209
  br i1 %9, label %11, label %10, !dbg !3209

10:                                               ; preds = %5
  tail call void @abort() #38, !dbg !3210
  unreachable, !dbg !3210

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3211
  store ptr %1, ptr %12, align 8, !dbg !3212, !tbaa !2123
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3213
  store ptr %2, ptr %13, align 8, !dbg !3214, !tbaa !2126
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3215
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #36, !dbg !3216
  ret ptr %14, !dbg !3217
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3218 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3222, metadata !DIExpression()), !dbg !3225
  call void @llvm.dbg.value(metadata ptr %1, metadata !3223, metadata !DIExpression()), !dbg !3225
  call void @llvm.dbg.value(metadata ptr %2, metadata !3224, metadata !DIExpression()), !dbg !3225
  call void @llvm.dbg.value(metadata i32 0, metadata !3168, metadata !DIExpression()), !dbg !3226
  call void @llvm.dbg.value(metadata ptr %0, metadata !3169, metadata !DIExpression()), !dbg !3226
  call void @llvm.dbg.value(metadata ptr %1, metadata !3170, metadata !DIExpression()), !dbg !3226
  call void @llvm.dbg.value(metadata ptr %2, metadata !3171, metadata !DIExpression()), !dbg !3226
  call void @llvm.dbg.value(metadata i32 0, metadata !3173, metadata !DIExpression()), !dbg !3228
  call void @llvm.dbg.value(metadata ptr %0, metadata !3178, metadata !DIExpression()), !dbg !3228
  call void @llvm.dbg.value(metadata ptr %1, metadata !3179, metadata !DIExpression()), !dbg !3228
  call void @llvm.dbg.value(metadata ptr %2, metadata !3180, metadata !DIExpression()), !dbg !3228
  call void @llvm.dbg.value(metadata i64 -1, metadata !3181, metadata !DIExpression()), !dbg !3228
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !3230
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3182, metadata !DIExpression()), !dbg !3231
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3232, !tbaa.struct !3059
  call void @llvm.dbg.value(metadata ptr %4, metadata !2109, metadata !DIExpression()), !dbg !3233
  call void @llvm.dbg.value(metadata ptr %0, metadata !2110, metadata !DIExpression()), !dbg !3233
  call void @llvm.dbg.value(metadata ptr %1, metadata !2111, metadata !DIExpression()), !dbg !3233
  call void @llvm.dbg.value(metadata ptr %4, metadata !2109, metadata !DIExpression()), !dbg !3233
  store i32 10, ptr %4, align 8, !dbg !3235, !tbaa !2052
  %5 = icmp ne ptr %0, null, !dbg !3236
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3237
  br i1 %7, label %9, label %8, !dbg !3237

8:                                                ; preds = %3
  tail call void @abort() #38, !dbg !3238
  unreachable, !dbg !3238

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3239
  store ptr %0, ptr %10, align 8, !dbg !3240, !tbaa !2123
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3241
  store ptr %1, ptr %11, align 8, !dbg !3242, !tbaa !2126
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3243
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !3244
  ret ptr %12, !dbg !3245
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3246 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3250, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata ptr %1, metadata !3251, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata ptr %2, metadata !3252, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata i64 %3, metadata !3253, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata i32 0, metadata !3173, metadata !DIExpression()), !dbg !3255
  call void @llvm.dbg.value(metadata ptr %0, metadata !3178, metadata !DIExpression()), !dbg !3255
  call void @llvm.dbg.value(metadata ptr %1, metadata !3179, metadata !DIExpression()), !dbg !3255
  call void @llvm.dbg.value(metadata ptr %2, metadata !3180, metadata !DIExpression()), !dbg !3255
  call void @llvm.dbg.value(metadata i64 %3, metadata !3181, metadata !DIExpression()), !dbg !3255
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !3257
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3182, metadata !DIExpression()), !dbg !3258
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3259, !tbaa.struct !3059
  call void @llvm.dbg.value(metadata ptr %5, metadata !2109, metadata !DIExpression()), !dbg !3260
  call void @llvm.dbg.value(metadata ptr %0, metadata !2110, metadata !DIExpression()), !dbg !3260
  call void @llvm.dbg.value(metadata ptr %1, metadata !2111, metadata !DIExpression()), !dbg !3260
  call void @llvm.dbg.value(metadata ptr %5, metadata !2109, metadata !DIExpression()), !dbg !3260
  store i32 10, ptr %5, align 8, !dbg !3262, !tbaa !2052
  %6 = icmp ne ptr %0, null, !dbg !3263
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3264
  br i1 %8, label %10, label %9, !dbg !3264

9:                                                ; preds = %4
  tail call void @abort() #38, !dbg !3265
  unreachable, !dbg !3265

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3266
  store ptr %0, ptr %11, align 8, !dbg !3267, !tbaa !2123
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3268
  store ptr %1, ptr %12, align 8, !dbg !3269, !tbaa !2126
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3270
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !3271
  ret ptr %13, !dbg !3272
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3273 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3277, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata ptr %1, metadata !3278, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i64 %2, metadata !3279, metadata !DIExpression()), !dbg !3280
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3281
  ret ptr %4, !dbg !3282
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3283 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3287, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata i64 %1, metadata !3288, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata i32 0, metadata !3277, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.value(metadata ptr %0, metadata !3278, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.value(metadata i64 %1, metadata !3279, metadata !DIExpression()), !dbg !3290
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3292
  ret ptr %3, !dbg !3293
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3294 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3298, metadata !DIExpression()), !dbg !3300
  call void @llvm.dbg.value(metadata ptr %1, metadata !3299, metadata !DIExpression()), !dbg !3300
  call void @llvm.dbg.value(metadata i32 %0, metadata !3277, metadata !DIExpression()), !dbg !3301
  call void @llvm.dbg.value(metadata ptr %1, metadata !3278, metadata !DIExpression()), !dbg !3301
  call void @llvm.dbg.value(metadata i64 -1, metadata !3279, metadata !DIExpression()), !dbg !3301
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3303
  ret ptr %3, !dbg !3304
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !3305 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3309, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata i32 0, metadata !3298, metadata !DIExpression()), !dbg !3311
  call void @llvm.dbg.value(metadata ptr %0, metadata !3299, metadata !DIExpression()), !dbg !3311
  call void @llvm.dbg.value(metadata i32 0, metadata !3277, metadata !DIExpression()), !dbg !3313
  call void @llvm.dbg.value(metadata ptr %0, metadata !3278, metadata !DIExpression()), !dbg !3313
  call void @llvm.dbg.value(metadata i64 -1, metadata !3279, metadata !DIExpression()), !dbg !3313
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3315
  ret ptr %2, !dbg !3316
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !3317 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3356, metadata !DIExpression()), !dbg !3362
  call void @llvm.dbg.value(metadata ptr %1, metadata !3357, metadata !DIExpression()), !dbg !3362
  call void @llvm.dbg.value(metadata ptr %2, metadata !3358, metadata !DIExpression()), !dbg !3362
  call void @llvm.dbg.value(metadata ptr %3, metadata !3359, metadata !DIExpression()), !dbg !3362
  call void @llvm.dbg.value(metadata ptr %4, metadata !3360, metadata !DIExpression()), !dbg !3362
  call void @llvm.dbg.value(metadata i64 %5, metadata !3361, metadata !DIExpression()), !dbg !3362
  %7 = icmp eq ptr %1, null, !dbg !3363
  br i1 %7, label %10, label %8, !dbg !3365

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.100, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #36, !dbg !3366
  br label %12, !dbg !3366

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.101, ptr noundef %2, ptr noundef %3) #36, !dbg !3367
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.3.103, i32 noundef 5) #36, !dbg !3368
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #36, !dbg !3368
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.104, ptr noundef %0), !dbg !3369
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.5.105, i32 noundef 5) #36, !dbg !3370
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.106) #36, !dbg !3370
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.104, ptr noundef %0), !dbg !3371
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
  ], !dbg !3372

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.7.107, i32 noundef 5) #36, !dbg !3373
  %21 = load ptr, ptr %4, align 8, !dbg !3373, !tbaa !860
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #36, !dbg !3373
  br label %147, !dbg !3375

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.8.108, i32 noundef 5) #36, !dbg !3376
  %25 = load ptr, ptr %4, align 8, !dbg !3376, !tbaa !860
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3376
  %27 = load ptr, ptr %26, align 8, !dbg !3376, !tbaa !860
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #36, !dbg !3376
  br label %147, !dbg !3377

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.9.109, i32 noundef 5) #36, !dbg !3378
  %31 = load ptr, ptr %4, align 8, !dbg !3378, !tbaa !860
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3378
  %33 = load ptr, ptr %32, align 8, !dbg !3378, !tbaa !860
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3378
  %35 = load ptr, ptr %34, align 8, !dbg !3378, !tbaa !860
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #36, !dbg !3378
  br label %147, !dbg !3379

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.10.110, i32 noundef 5) #36, !dbg !3380
  %39 = load ptr, ptr %4, align 8, !dbg !3380, !tbaa !860
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3380
  %41 = load ptr, ptr %40, align 8, !dbg !3380, !tbaa !860
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3380
  %43 = load ptr, ptr %42, align 8, !dbg !3380, !tbaa !860
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3380
  %45 = load ptr, ptr %44, align 8, !dbg !3380, !tbaa !860
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #36, !dbg !3380
  br label %147, !dbg !3381

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.11.111, i32 noundef 5) #36, !dbg !3382
  %49 = load ptr, ptr %4, align 8, !dbg !3382, !tbaa !860
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3382
  %51 = load ptr, ptr %50, align 8, !dbg !3382, !tbaa !860
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3382
  %53 = load ptr, ptr %52, align 8, !dbg !3382, !tbaa !860
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3382
  %55 = load ptr, ptr %54, align 8, !dbg !3382, !tbaa !860
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3382
  %57 = load ptr, ptr %56, align 8, !dbg !3382, !tbaa !860
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #36, !dbg !3382
  br label %147, !dbg !3383

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.12.112, i32 noundef 5) #36, !dbg !3384
  %61 = load ptr, ptr %4, align 8, !dbg !3384, !tbaa !860
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3384
  %63 = load ptr, ptr %62, align 8, !dbg !3384, !tbaa !860
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3384
  %65 = load ptr, ptr %64, align 8, !dbg !3384, !tbaa !860
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3384
  %67 = load ptr, ptr %66, align 8, !dbg !3384, !tbaa !860
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3384
  %69 = load ptr, ptr %68, align 8, !dbg !3384, !tbaa !860
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3384
  %71 = load ptr, ptr %70, align 8, !dbg !3384, !tbaa !860
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #36, !dbg !3384
  br label %147, !dbg !3385

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.13.113, i32 noundef 5) #36, !dbg !3386
  %75 = load ptr, ptr %4, align 8, !dbg !3386, !tbaa !860
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3386
  %77 = load ptr, ptr %76, align 8, !dbg !3386, !tbaa !860
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3386
  %79 = load ptr, ptr %78, align 8, !dbg !3386, !tbaa !860
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3386
  %81 = load ptr, ptr %80, align 8, !dbg !3386, !tbaa !860
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3386
  %83 = load ptr, ptr %82, align 8, !dbg !3386, !tbaa !860
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3386
  %85 = load ptr, ptr %84, align 8, !dbg !3386, !tbaa !860
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3386
  %87 = load ptr, ptr %86, align 8, !dbg !3386, !tbaa !860
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #36, !dbg !3386
  br label %147, !dbg !3387

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.14.114, i32 noundef 5) #36, !dbg !3388
  %91 = load ptr, ptr %4, align 8, !dbg !3388, !tbaa !860
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3388
  %93 = load ptr, ptr %92, align 8, !dbg !3388, !tbaa !860
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3388
  %95 = load ptr, ptr %94, align 8, !dbg !3388, !tbaa !860
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3388
  %97 = load ptr, ptr %96, align 8, !dbg !3388, !tbaa !860
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3388
  %99 = load ptr, ptr %98, align 8, !dbg !3388, !tbaa !860
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3388
  %101 = load ptr, ptr %100, align 8, !dbg !3388, !tbaa !860
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3388
  %103 = load ptr, ptr %102, align 8, !dbg !3388, !tbaa !860
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3388
  %105 = load ptr, ptr %104, align 8, !dbg !3388, !tbaa !860
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #36, !dbg !3388
  br label %147, !dbg !3389

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.15.115, i32 noundef 5) #36, !dbg !3390
  %109 = load ptr, ptr %4, align 8, !dbg !3390, !tbaa !860
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3390
  %111 = load ptr, ptr %110, align 8, !dbg !3390, !tbaa !860
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3390
  %113 = load ptr, ptr %112, align 8, !dbg !3390, !tbaa !860
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3390
  %115 = load ptr, ptr %114, align 8, !dbg !3390, !tbaa !860
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3390
  %117 = load ptr, ptr %116, align 8, !dbg !3390, !tbaa !860
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3390
  %119 = load ptr, ptr %118, align 8, !dbg !3390, !tbaa !860
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3390
  %121 = load ptr, ptr %120, align 8, !dbg !3390, !tbaa !860
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3390
  %123 = load ptr, ptr %122, align 8, !dbg !3390, !tbaa !860
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3390
  %125 = load ptr, ptr %124, align 8, !dbg !3390, !tbaa !860
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #36, !dbg !3390
  br label %147, !dbg !3391

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.16.116, i32 noundef 5) #36, !dbg !3392
  %129 = load ptr, ptr %4, align 8, !dbg !3392, !tbaa !860
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3392
  %131 = load ptr, ptr %130, align 8, !dbg !3392, !tbaa !860
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3392
  %133 = load ptr, ptr %132, align 8, !dbg !3392, !tbaa !860
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3392
  %135 = load ptr, ptr %134, align 8, !dbg !3392, !tbaa !860
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3392
  %137 = load ptr, ptr %136, align 8, !dbg !3392, !tbaa !860
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3392
  %139 = load ptr, ptr %138, align 8, !dbg !3392, !tbaa !860
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3392
  %141 = load ptr, ptr %140, align 8, !dbg !3392, !tbaa !860
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3392
  %143 = load ptr, ptr %142, align 8, !dbg !3392, !tbaa !860
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3392
  %145 = load ptr, ptr %144, align 8, !dbg !3392, !tbaa !860
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #36, !dbg !3392
  br label %147, !dbg !3393

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3394
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !3395 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3399, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata ptr %1, metadata !3400, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata ptr %2, metadata !3401, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata ptr %3, metadata !3402, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata ptr %4, metadata !3403, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata i64 0, metadata !3404, metadata !DIExpression()), !dbg !3405
  br label %6, !dbg !3406

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3408
  call void @llvm.dbg.value(metadata i64 %7, metadata !3404, metadata !DIExpression()), !dbg !3405
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3409
  %9 = load ptr, ptr %8, align 8, !dbg !3409, !tbaa !860
  %10 = icmp eq ptr %9, null, !dbg !3411
  %11 = add i64 %7, 1, !dbg !3412
  call void @llvm.dbg.value(metadata i64 %11, metadata !3404, metadata !DIExpression()), !dbg !3405
  br i1 %10, label %12, label %6, !dbg !3411, !llvm.loop !3413

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !3415
  ret void, !dbg !3416
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !3417 {
  %6 = alloca [10 x ptr], align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3432, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.value(metadata ptr %1, metadata !3433, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.value(metadata ptr %2, metadata !3434, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.value(metadata ptr %3, metadata !3435, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3436, metadata !DIExpression()), !dbg !3441
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #36, !dbg !3442
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3438, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i64 0, metadata !3437, metadata !DIExpression()), !dbg !3440
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !3437, metadata !DIExpression()), !dbg !3440
  %10 = icmp sgt i32 %9, -1, !dbg !3444
  br i1 %10, label %18, label %11, !dbg !3444

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !3444
  store i32 %12, ptr %7, align 8, !dbg !3444
  %13 = icmp ult i32 %9, -7, !dbg !3444
  br i1 %13, label %14, label %18, !dbg !3444

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !3444
  %16 = sext i32 %9 to i64, !dbg !3444
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !3444
  br label %22, !dbg !3444

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !3444
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !3444
  store ptr %21, ptr %4, align 8, !dbg !3444
  br label %22, !dbg !3444

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !3444
  %25 = load ptr, ptr %24, align 8, !dbg !3444
  store ptr %25, ptr %6, align 8, !dbg !3447, !tbaa !860
  %26 = icmp eq ptr %25, null, !dbg !3448
  br i1 %26, label %197, label %27, !dbg !3449

27:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i64 1, metadata !3437, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.value(metadata i64 1, metadata !3437, metadata !DIExpression()), !dbg !3440
  %28 = icmp sgt i32 %23, -1, !dbg !3444
  br i1 %28, label %36, label %29, !dbg !3444

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !3444
  store i32 %30, ptr %7, align 8, !dbg !3444
  %31 = icmp ult i32 %23, -7, !dbg !3444
  br i1 %31, label %32, label %36, !dbg !3444

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !3444
  %34 = sext i32 %23 to i64, !dbg !3444
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !3444
  br label %40, !dbg !3444

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !3444
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !3444
  store ptr %39, ptr %4, align 8, !dbg !3444
  br label %40, !dbg !3444

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !3444
  %43 = load ptr, ptr %42, align 8, !dbg !3444
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3450
  store ptr %43, ptr %44, align 8, !dbg !3447, !tbaa !860
  %45 = icmp eq ptr %43, null, !dbg !3448
  br i1 %45, label %197, label %46, !dbg !3449

46:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3437, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.value(metadata i64 2, metadata !3437, metadata !DIExpression()), !dbg !3440
  %47 = icmp sgt i32 %41, -1, !dbg !3444
  br i1 %47, label %55, label %48, !dbg !3444

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !3444
  store i32 %49, ptr %7, align 8, !dbg !3444
  %50 = icmp ult i32 %41, -7, !dbg !3444
  br i1 %50, label %51, label %55, !dbg !3444

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !3444
  %53 = sext i32 %41 to i64, !dbg !3444
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !3444
  br label %59, !dbg !3444

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !3444
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !3444
  store ptr %58, ptr %4, align 8, !dbg !3444
  br label %59, !dbg !3444

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !3444
  %62 = load ptr, ptr %61, align 8, !dbg !3444
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3450
  store ptr %62, ptr %63, align 8, !dbg !3447, !tbaa !860
  %64 = icmp eq ptr %62, null, !dbg !3448
  br i1 %64, label %197, label %65, !dbg !3449

65:                                               ; preds = %59
  call void @llvm.dbg.value(metadata i64 3, metadata !3437, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.value(metadata i64 3, metadata !3437, metadata !DIExpression()), !dbg !3440
  %66 = icmp sgt i32 %60, -1, !dbg !3444
  br i1 %66, label %74, label %67, !dbg !3444

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !3444
  store i32 %68, ptr %7, align 8, !dbg !3444
  %69 = icmp ult i32 %60, -7, !dbg !3444
  br i1 %69, label %70, label %74, !dbg !3444

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !3444
  %72 = sext i32 %60 to i64, !dbg !3444
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !3444
  br label %78, !dbg !3444

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !3444
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !3444
  store ptr %77, ptr %4, align 8, !dbg !3444
  br label %78, !dbg !3444

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !3444
  %81 = load ptr, ptr %80, align 8, !dbg !3444
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3450
  store ptr %81, ptr %82, align 8, !dbg !3447, !tbaa !860
  %83 = icmp eq ptr %81, null, !dbg !3448
  br i1 %83, label %197, label %84, !dbg !3449

84:                                               ; preds = %78
  call void @llvm.dbg.value(metadata i64 4, metadata !3437, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.value(metadata i64 4, metadata !3437, metadata !DIExpression()), !dbg !3440
  %85 = icmp sgt i32 %79, -1, !dbg !3444
  br i1 %85, label %93, label %86, !dbg !3444

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !3444
  store i32 %87, ptr %7, align 8, !dbg !3444
  %88 = icmp ult i32 %79, -7, !dbg !3444
  br i1 %88, label %89, label %93, !dbg !3444

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !3444
  %91 = sext i32 %79 to i64, !dbg !3444
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !3444
  br label %97, !dbg !3444

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !3444
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !3444
  store ptr %96, ptr %4, align 8, !dbg !3444
  br label %97, !dbg !3444

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !3444
  %100 = load ptr, ptr %99, align 8, !dbg !3444
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3450
  store ptr %100, ptr %101, align 8, !dbg !3447, !tbaa !860
  %102 = icmp eq ptr %100, null, !dbg !3448
  br i1 %102, label %197, label %103, !dbg !3449

103:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i64 5, metadata !3437, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.value(metadata i64 5, metadata !3437, metadata !DIExpression()), !dbg !3440
  %104 = icmp sgt i32 %98, -1, !dbg !3444
  br i1 %104, label %112, label %105, !dbg !3444

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !3444
  store i32 %106, ptr %7, align 8, !dbg !3444
  %107 = icmp ult i32 %98, -7, !dbg !3444
  br i1 %107, label %108, label %112, !dbg !3444

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !3444
  %110 = sext i32 %98 to i64, !dbg !3444
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !3444
  br label %116, !dbg !3444

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !3444
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !3444
  store ptr %115, ptr %4, align 8, !dbg !3444
  br label %116, !dbg !3444

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !3444
  %119 = load ptr, ptr %118, align 8, !dbg !3444
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3450
  store ptr %119, ptr %120, align 8, !dbg !3447, !tbaa !860
  %121 = icmp eq ptr %119, null, !dbg !3448
  br i1 %121, label %197, label %122, !dbg !3449

122:                                              ; preds = %116
  call void @llvm.dbg.value(metadata i64 6, metadata !3437, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.value(metadata i64 6, metadata !3437, metadata !DIExpression()), !dbg !3440
  %123 = icmp sgt i32 %117, -1, !dbg !3444
  br i1 %123, label %131, label %124, !dbg !3444

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !3444
  store i32 %125, ptr %7, align 8, !dbg !3444
  %126 = icmp ult i32 %117, -7, !dbg !3444
  br i1 %126, label %127, label %131, !dbg !3444

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !3444
  %129 = sext i32 %117 to i64, !dbg !3444
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !3444
  br label %135, !dbg !3444

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !3444
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !3444
  store ptr %134, ptr %4, align 8, !dbg !3444
  br label %135, !dbg !3444

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !3444
  %138 = load ptr, ptr %137, align 8, !dbg !3444
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3450
  store ptr %138, ptr %139, align 8, !dbg !3447, !tbaa !860
  %140 = icmp eq ptr %138, null, !dbg !3448
  br i1 %140, label %197, label %141, !dbg !3449

141:                                              ; preds = %135
  call void @llvm.dbg.value(metadata i64 7, metadata !3437, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.value(metadata i64 7, metadata !3437, metadata !DIExpression()), !dbg !3440
  %142 = icmp sgt i32 %136, -1, !dbg !3444
  br i1 %142, label %150, label %143, !dbg !3444

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !3444
  store i32 %144, ptr %7, align 8, !dbg !3444
  %145 = icmp ult i32 %136, -7, !dbg !3444
  br i1 %145, label %146, label %150, !dbg !3444

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !3444
  %148 = sext i32 %136 to i64, !dbg !3444
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !3444
  br label %154, !dbg !3444

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !3444
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !3444
  store ptr %153, ptr %4, align 8, !dbg !3444
  br label %154, !dbg !3444

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !3444
  %157 = load ptr, ptr %156, align 8, !dbg !3444
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3450
  store ptr %157, ptr %158, align 8, !dbg !3447, !tbaa !860
  %159 = icmp eq ptr %157, null, !dbg !3448
  br i1 %159, label %197, label %160, !dbg !3449

160:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i64 8, metadata !3437, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.value(metadata i64 8, metadata !3437, metadata !DIExpression()), !dbg !3440
  %161 = icmp sgt i32 %155, -1, !dbg !3444
  br i1 %161, label %169, label %162, !dbg !3444

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !3444
  store i32 %163, ptr %7, align 8, !dbg !3444
  %164 = icmp ult i32 %155, -7, !dbg !3444
  br i1 %164, label %165, label %169, !dbg !3444

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !3444
  %167 = sext i32 %155 to i64, !dbg !3444
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !3444
  br label %173, !dbg !3444

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !3444
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !3444
  store ptr %172, ptr %4, align 8, !dbg !3444
  br label %173, !dbg !3444

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !3444
  %176 = load ptr, ptr %175, align 8, !dbg !3444
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3450
  store ptr %176, ptr %177, align 8, !dbg !3447, !tbaa !860
  %178 = icmp eq ptr %176, null, !dbg !3448
  br i1 %178, label %197, label %179, !dbg !3449

179:                                              ; preds = %173
  call void @llvm.dbg.value(metadata i64 9, metadata !3437, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.value(metadata i64 9, metadata !3437, metadata !DIExpression()), !dbg !3440
  %180 = icmp sgt i32 %174, -1, !dbg !3444
  br i1 %180, label %188, label %181, !dbg !3444

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !3444
  store i32 %182, ptr %7, align 8, !dbg !3444
  %183 = icmp ult i32 %174, -7, !dbg !3444
  br i1 %183, label %184, label %188, !dbg !3444

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !3444
  %186 = sext i32 %174 to i64, !dbg !3444
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !3444
  br label %191, !dbg !3444

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !3444
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !3444
  store ptr %190, ptr %4, align 8, !dbg !3444
  br label %191, !dbg !3444

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !3444
  %193 = load ptr, ptr %192, align 8, !dbg !3444
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3450
  store ptr %193, ptr %194, align 8, !dbg !3447, !tbaa !860
  %195 = icmp eq ptr %193, null, !dbg !3448
  %196 = select i1 %195, i64 9, i64 10, !dbg !3449
  br label %197, !dbg !3449

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !3451
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !3452
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #36, !dbg !3453
  ret void, !dbg !3453
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3454 {
  %5 = alloca %struct.__va_list, align 8
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3458, metadata !DIExpression()), !dbg !3463
  call void @llvm.dbg.value(metadata ptr %1, metadata !3459, metadata !DIExpression()), !dbg !3463
  call void @llvm.dbg.value(metadata ptr %2, metadata !3460, metadata !DIExpression()), !dbg !3463
  call void @llvm.dbg.value(metadata ptr %3, metadata !3461, metadata !DIExpression()), !dbg !3463
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #36, !dbg !3464
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3462, metadata !DIExpression()), !dbg !3465
  call void @llvm.va_start(ptr nonnull %5), !dbg !3466
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #36, !dbg !3467
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !3467, !tbaa.struct !1363
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !3467
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #36, !dbg !3467
  call void @llvm.va_end(ptr nonnull %5), !dbg !3468
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #36, !dbg !3469
  ret void, !dbg !3469
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3470 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3471, !tbaa !860
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.104, ptr noundef %1), !dbg !3471
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.17.121, i32 noundef 5) #36, !dbg !3472
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.122) #36, !dbg !3472
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.19.123, i32 noundef 5) #36, !dbg !3473
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.124, ptr noundef nonnull @.str.21.125) #36, !dbg !3473
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.22.126, i32 noundef 5) #36, !dbg !3474
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.127) #36, !dbg !3474
  ret void, !dbg !3475
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !3476 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3481, metadata !DIExpression()), !dbg !3484
  call void @llvm.dbg.value(metadata i64 %1, metadata !3482, metadata !DIExpression()), !dbg !3484
  call void @llvm.dbg.value(metadata i64 %2, metadata !3483, metadata !DIExpression()), !dbg !3484
  call void @llvm.dbg.value(metadata ptr %0, metadata !3485, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i64 %1, metadata !3488, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i64 %2, metadata !3489, metadata !DIExpression()), !dbg !3490
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !3492
  call void @llvm.dbg.value(metadata ptr %4, metadata !3493, metadata !DIExpression()), !dbg !3498
  %5 = icmp eq ptr %4, null, !dbg !3500
  br i1 %5, label %6, label %7, !dbg !3502

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !3503
  unreachable, !dbg !3503

7:                                                ; preds = %3
  ret ptr %4, !dbg !3504
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3486 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3485, metadata !DIExpression()), !dbg !3505
  call void @llvm.dbg.value(metadata i64 %1, metadata !3488, metadata !DIExpression()), !dbg !3505
  call void @llvm.dbg.value(metadata i64 %2, metadata !3489, metadata !DIExpression()), !dbg !3505
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !3506
  call void @llvm.dbg.value(metadata ptr %4, metadata !3493, metadata !DIExpression()), !dbg !3507
  %5 = icmp eq ptr %4, null, !dbg !3509
  br i1 %5, label %6, label %7, !dbg !3510

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !3511
  unreachable, !dbg !3511

7:                                                ; preds = %3
  ret ptr %4, !dbg !3512
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3513 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3517, metadata !DIExpression()), !dbg !3518
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #42, !dbg !3519
  call void @llvm.dbg.value(metadata ptr %2, metadata !3493, metadata !DIExpression()), !dbg !3520
  %3 = icmp eq ptr %2, null, !dbg !3522
  br i1 %3, label %4, label %5, !dbg !3523

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3524
  unreachable, !dbg !3524

5:                                                ; preds = %1
  ret ptr %2, !dbg !3525
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3526 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3527 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3531, metadata !DIExpression()), !dbg !3532
  call void @llvm.dbg.value(metadata i64 %0, metadata !3533, metadata !DIExpression()), !dbg !3537
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #42, !dbg !3539
  call void @llvm.dbg.value(metadata ptr %2, metadata !3493, metadata !DIExpression()), !dbg !3540
  %3 = icmp eq ptr %2, null, !dbg !3542
  br i1 %3, label %4, label %5, !dbg !3543

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3544
  unreachable, !dbg !3544

5:                                                ; preds = %1
  ret ptr %2, !dbg !3545
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3546 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3550, metadata !DIExpression()), !dbg !3551
  call void @llvm.dbg.value(metadata i64 %0, metadata !3517, metadata !DIExpression()), !dbg !3552
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #42, !dbg !3554
  call void @llvm.dbg.value(metadata ptr %2, metadata !3493, metadata !DIExpression()), !dbg !3555
  %3 = icmp eq ptr %2, null, !dbg !3557
  br i1 %3, label %4, label %5, !dbg !3558

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3559
  unreachable, !dbg !3559

5:                                                ; preds = %1
  ret ptr %2, !dbg !3560
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3561 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3565, metadata !DIExpression()), !dbg !3567
  call void @llvm.dbg.value(metadata i64 %1, metadata !3566, metadata !DIExpression()), !dbg !3567
  call void @llvm.dbg.value(metadata ptr %0, metadata !3568, metadata !DIExpression()), !dbg !3573
  call void @llvm.dbg.value(metadata i64 %1, metadata !3572, metadata !DIExpression()), !dbg !3573
  %3 = icmp eq i64 %1, 0, !dbg !3575
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3575
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #44, !dbg !3576
  call void @llvm.dbg.value(metadata ptr %5, metadata !3493, metadata !DIExpression()), !dbg !3577
  %6 = icmp eq ptr %5, null, !dbg !3579
  br i1 %6, label %7, label %8, !dbg !3580

7:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3581
  unreachable, !dbg !3581

8:                                                ; preds = %2
  ret ptr %5, !dbg !3582
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3583 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3584 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3588, metadata !DIExpression()), !dbg !3590
  call void @llvm.dbg.value(metadata i64 %1, metadata !3589, metadata !DIExpression()), !dbg !3590
  call void @llvm.dbg.value(metadata ptr %0, metadata !3591, metadata !DIExpression()), !dbg !3595
  call void @llvm.dbg.value(metadata i64 %1, metadata !3594, metadata !DIExpression()), !dbg !3595
  call void @llvm.dbg.value(metadata ptr %0, metadata !3568, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i64 %1, metadata !3572, metadata !DIExpression()), !dbg !3597
  %3 = icmp eq i64 %1, 0, !dbg !3599
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3599
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #44, !dbg !3600
  call void @llvm.dbg.value(metadata ptr %5, metadata !3493, metadata !DIExpression()), !dbg !3601
  %6 = icmp eq ptr %5, null, !dbg !3603
  br i1 %6, label %7, label %8, !dbg !3604

7:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3605
  unreachable, !dbg !3605

8:                                                ; preds = %2
  ret ptr %5, !dbg !3606
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3607 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3611, metadata !DIExpression()), !dbg !3614
  call void @llvm.dbg.value(metadata i64 %1, metadata !3612, metadata !DIExpression()), !dbg !3614
  call void @llvm.dbg.value(metadata i64 %2, metadata !3613, metadata !DIExpression()), !dbg !3614
  call void @llvm.dbg.value(metadata ptr %0, metadata !3615, metadata !DIExpression()), !dbg !3620
  call void @llvm.dbg.value(metadata i64 %1, metadata !3618, metadata !DIExpression()), !dbg !3620
  call void @llvm.dbg.value(metadata i64 %2, metadata !3619, metadata !DIExpression()), !dbg !3620
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !3622
  call void @llvm.dbg.value(metadata ptr %4, metadata !3493, metadata !DIExpression()), !dbg !3623
  %5 = icmp eq ptr %4, null, !dbg !3625
  br i1 %5, label %6, label %7, !dbg !3626

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !3627
  unreachable, !dbg !3627

7:                                                ; preds = %3
  ret ptr %4, !dbg !3628
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3629 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3633, metadata !DIExpression()), !dbg !3635
  call void @llvm.dbg.value(metadata i64 %1, metadata !3634, metadata !DIExpression()), !dbg !3635
  call void @llvm.dbg.value(metadata ptr null, metadata !3485, metadata !DIExpression()), !dbg !3636
  call void @llvm.dbg.value(metadata i64 %0, metadata !3488, metadata !DIExpression()), !dbg !3636
  call void @llvm.dbg.value(metadata i64 %1, metadata !3489, metadata !DIExpression()), !dbg !3636
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #36, !dbg !3638
  call void @llvm.dbg.value(metadata ptr %3, metadata !3493, metadata !DIExpression()), !dbg !3639
  %4 = icmp eq ptr %3, null, !dbg !3641
  br i1 %4, label %5, label %6, !dbg !3642

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3643
  unreachable, !dbg !3643

6:                                                ; preds = %2
  ret ptr %3, !dbg !3644
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3645 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3649, metadata !DIExpression()), !dbg !3651
  call void @llvm.dbg.value(metadata i64 %1, metadata !3650, metadata !DIExpression()), !dbg !3651
  call void @llvm.dbg.value(metadata ptr null, metadata !3611, metadata !DIExpression()), !dbg !3652
  call void @llvm.dbg.value(metadata i64 %0, metadata !3612, metadata !DIExpression()), !dbg !3652
  call void @llvm.dbg.value(metadata i64 %1, metadata !3613, metadata !DIExpression()), !dbg !3652
  call void @llvm.dbg.value(metadata ptr null, metadata !3615, metadata !DIExpression()), !dbg !3654
  call void @llvm.dbg.value(metadata i64 %0, metadata !3618, metadata !DIExpression()), !dbg !3654
  call void @llvm.dbg.value(metadata i64 %1, metadata !3619, metadata !DIExpression()), !dbg !3654
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #36, !dbg !3656
  call void @llvm.dbg.value(metadata ptr %3, metadata !3493, metadata !DIExpression()), !dbg !3657
  %4 = icmp eq ptr %3, null, !dbg !3659
  br i1 %4, label %5, label %6, !dbg !3660

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3661
  unreachable, !dbg !3661

6:                                                ; preds = %2
  ret ptr %3, !dbg !3662
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3663 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3667, metadata !DIExpression()), !dbg !3669
  call void @llvm.dbg.value(metadata ptr %1, metadata !3668, metadata !DIExpression()), !dbg !3669
  call void @llvm.dbg.value(metadata ptr %0, metadata !790, metadata !DIExpression()), !dbg !3670
  call void @llvm.dbg.value(metadata ptr %1, metadata !791, metadata !DIExpression()), !dbg !3670
  call void @llvm.dbg.value(metadata i64 1, metadata !792, metadata !DIExpression()), !dbg !3670
  %3 = load i64, ptr %1, align 8, !dbg !3672, !tbaa !1218
  call void @llvm.dbg.value(metadata i64 %3, metadata !793, metadata !DIExpression()), !dbg !3670
  %4 = icmp eq ptr %0, null, !dbg !3673
  br i1 %4, label %5, label %8, !dbg !3675

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3676
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3679
  br label %15, !dbg !3679

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3680
  %10 = add nuw i64 %9, 1, !dbg !3680
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3680
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3680
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3680
  call void @llvm.dbg.value(metadata i64 %13, metadata !793, metadata !DIExpression()), !dbg !3670
  br i1 %12, label %14, label %15, !dbg !3683

14:                                               ; preds = %8
  tail call void @xalloc_die() #38, !dbg !3684
  unreachable, !dbg !3684

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3670
  call void @llvm.dbg.value(metadata i64 %16, metadata !793, metadata !DIExpression()), !dbg !3670
  call void @llvm.dbg.value(metadata ptr %0, metadata !3485, metadata !DIExpression()), !dbg !3685
  call void @llvm.dbg.value(metadata i64 %16, metadata !3488, metadata !DIExpression()), !dbg !3685
  call void @llvm.dbg.value(metadata i64 1, metadata !3489, metadata !DIExpression()), !dbg !3685
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #36, !dbg !3687
  call void @llvm.dbg.value(metadata ptr %17, metadata !3493, metadata !DIExpression()), !dbg !3688
  %18 = icmp eq ptr %17, null, !dbg !3690
  br i1 %18, label %19, label %20, !dbg !3691

19:                                               ; preds = %15
  tail call void @xalloc_die() #38, !dbg !3692
  unreachable, !dbg !3692

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !790, metadata !DIExpression()), !dbg !3670
  store i64 %16, ptr %1, align 8, !dbg !3693, !tbaa !1218
  ret ptr %17, !dbg !3694
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !785 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !790, metadata !DIExpression()), !dbg !3695
  call void @llvm.dbg.value(metadata ptr %1, metadata !791, metadata !DIExpression()), !dbg !3695
  call void @llvm.dbg.value(metadata i64 %2, metadata !792, metadata !DIExpression()), !dbg !3695
  %4 = load i64, ptr %1, align 8, !dbg !3696, !tbaa !1218
  call void @llvm.dbg.value(metadata i64 %4, metadata !793, metadata !DIExpression()), !dbg !3695
  %5 = icmp eq ptr %0, null, !dbg !3697
  br i1 %5, label %6, label %13, !dbg !3698

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3699
  br i1 %7, label %8, label %20, !dbg !3700

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3701
  call void @llvm.dbg.value(metadata i64 %9, metadata !793, metadata !DIExpression()), !dbg !3695
  %10 = icmp ugt i64 %2, 128, !dbg !3703
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3704
  call void @llvm.dbg.value(metadata i64 %12, metadata !793, metadata !DIExpression()), !dbg !3695
  br label %20, !dbg !3705

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3706
  %15 = add nuw i64 %14, 1, !dbg !3706
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3706
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3706
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3706
  call void @llvm.dbg.value(metadata i64 %18, metadata !793, metadata !DIExpression()), !dbg !3695
  br i1 %17, label %19, label %20, !dbg !3707

19:                                               ; preds = %13
  tail call void @xalloc_die() #38, !dbg !3708
  unreachable, !dbg !3708

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3695
  call void @llvm.dbg.value(metadata i64 %21, metadata !793, metadata !DIExpression()), !dbg !3695
  call void @llvm.dbg.value(metadata ptr %0, metadata !3485, metadata !DIExpression()), !dbg !3709
  call void @llvm.dbg.value(metadata i64 %21, metadata !3488, metadata !DIExpression()), !dbg !3709
  call void @llvm.dbg.value(metadata i64 %2, metadata !3489, metadata !DIExpression()), !dbg !3709
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #36, !dbg !3711
  call void @llvm.dbg.value(metadata ptr %22, metadata !3493, metadata !DIExpression()), !dbg !3712
  %23 = icmp eq ptr %22, null, !dbg !3714
  br i1 %23, label %24, label %25, !dbg !3715

24:                                               ; preds = %20
  tail call void @xalloc_die() #38, !dbg !3716
  unreachable, !dbg !3716

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !790, metadata !DIExpression()), !dbg !3695
  store i64 %21, ptr %1, align 8, !dbg !3717, !tbaa !1218
  ret ptr %22, !dbg !3718
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !797 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !805, metadata !DIExpression()), !dbg !3719
  call void @llvm.dbg.value(metadata ptr %1, metadata !806, metadata !DIExpression()), !dbg !3719
  call void @llvm.dbg.value(metadata i64 %2, metadata !807, metadata !DIExpression()), !dbg !3719
  call void @llvm.dbg.value(metadata i64 %3, metadata !808, metadata !DIExpression()), !dbg !3719
  call void @llvm.dbg.value(metadata i64 %4, metadata !809, metadata !DIExpression()), !dbg !3719
  %6 = load i64, ptr %1, align 8, !dbg !3720, !tbaa !1218
  call void @llvm.dbg.value(metadata i64 %6, metadata !810, metadata !DIExpression()), !dbg !3719
  %7 = ashr i64 %6, 1, !dbg !3721
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3721
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3721
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3721
  call void @llvm.dbg.value(metadata i64 %10, metadata !811, metadata !DIExpression()), !dbg !3719
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3723
  call void @llvm.dbg.value(metadata i64 %11, metadata !811, metadata !DIExpression()), !dbg !3719
  %12 = icmp sgt i64 %3, -1, !dbg !3724
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3726
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3726
  call void @llvm.dbg.value(metadata i64 %15, metadata !811, metadata !DIExpression()), !dbg !3719
  %16 = icmp slt i64 %4, 0, !dbg !3727
  br i1 %16, label %17, label %30, !dbg !3727

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3727
  br i1 %18, label %19, label %24, !dbg !3727

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3727
  %21 = udiv i64 9223372036854775807, %20, !dbg !3727
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3727
  br i1 %23, label %46, label %43, !dbg !3727

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3727
  br i1 %25, label %43, label %26, !dbg !3727

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3727
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3727
  %29 = icmp ult i64 %28, %15, !dbg !3727
  br i1 %29, label %46, label %43, !dbg !3727

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3727
  br i1 %31, label %43, label %32, !dbg !3727

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3727
  br i1 %33, label %34, label %40, !dbg !3727

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3727
  br i1 %35, label %43, label %36, !dbg !3727

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3727
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3727
  %39 = icmp ult i64 %38, %4, !dbg !3727
  br i1 %39, label %46, label %43, !dbg !3727

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !3727
  br i1 %42, label %46, label %43, !dbg !3727

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !812, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3719
  %44 = mul i64 %15, %4, !dbg !3727
  call void @llvm.dbg.value(metadata i64 %44, metadata !812, metadata !DIExpression()), !dbg !3719
  %45 = icmp slt i64 %44, 128, !dbg !3727
  br i1 %45, label %46, label %52, !dbg !3727

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !813, metadata !DIExpression()), !dbg !3719
  %48 = sdiv i64 %47, %4, !dbg !3728
  call void @llvm.dbg.value(metadata i64 %48, metadata !811, metadata !DIExpression()), !dbg !3719
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !3731
  call void @llvm.dbg.value(metadata i64 %51, metadata !812, metadata !DIExpression()), !dbg !3719
  br label %52, !dbg !3732

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3719
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !3719
  call void @llvm.dbg.value(metadata i64 %54, metadata !812, metadata !DIExpression()), !dbg !3719
  call void @llvm.dbg.value(metadata i64 %53, metadata !811, metadata !DIExpression()), !dbg !3719
  %55 = icmp eq ptr %0, null, !dbg !3733
  br i1 %55, label %56, label %57, !dbg !3735

56:                                               ; preds = %52
  store i64 0, ptr %1, align 8, !dbg !3736, !tbaa !1218
  br label %57, !dbg !3737

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !3738
  %59 = icmp slt i64 %58, %2, !dbg !3740
  br i1 %59, label %60, label %97, !dbg !3741

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3742
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !3742
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !3742
  call void @llvm.dbg.value(metadata i64 %63, metadata !811, metadata !DIExpression()), !dbg !3719
  %64 = icmp sgt i64 %63, %3
  %65 = select i1 %12, i1 %64, i1 false
  %66 = or i1 %62, %65, !dbg !3743
  br i1 %66, label %96, label %67, !dbg !3743

67:                                               ; preds = %60
  br i1 %16, label %68, label %81, !dbg !3744

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !3744
  br i1 %69, label %70, label %75, !dbg !3744

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !3744
  %72 = udiv i64 9223372036854775807, %71, !dbg !3744
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !3744
  br i1 %74, label %96, label %94, !dbg !3744

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !3744
  br i1 %76, label %94, label %77, !dbg !3744

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !3744
  %79 = udiv i64 -9223372036854775808, %78, !dbg !3744
  %80 = icmp ult i64 %79, %63, !dbg !3744
  br i1 %80, label %96, label %94, !dbg !3744

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !3744
  br i1 %82, label %94, label %83, !dbg !3744

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !3744
  br i1 %84, label %85, label %91, !dbg !3744

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !3744
  br i1 %86, label %94, label %87, !dbg !3744

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !3744
  %89 = udiv i64 -9223372036854775808, %88, !dbg !3744
  %90 = icmp ult i64 %89, %4, !dbg !3744
  br i1 %90, label %96, label %94, !dbg !3744

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4
  %93 = icmp ult i64 %92, %63, !dbg !3744
  br i1 %93, label %96, label %94, !dbg !3744

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !812, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3719
  %95 = mul i64 %63, %4, !dbg !3744
  call void @llvm.dbg.value(metadata i64 %95, metadata !812, metadata !DIExpression()), !dbg !3719
  br label %97, !dbg !3745

96:                                               ; preds = %70, %77, %87, %91, %60
  tail call void @xalloc_die() #38, !dbg !3746
  unreachable, !dbg !3746

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !3719
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !3719
  call void @llvm.dbg.value(metadata i64 %99, metadata !812, metadata !DIExpression()), !dbg !3719
  call void @llvm.dbg.value(metadata i64 %98, metadata !811, metadata !DIExpression()), !dbg !3719
  call void @llvm.dbg.value(metadata ptr %0, metadata !3565, metadata !DIExpression()), !dbg !3747
  call void @llvm.dbg.value(metadata i64 %99, metadata !3566, metadata !DIExpression()), !dbg !3747
  call void @llvm.dbg.value(metadata ptr %0, metadata !3568, metadata !DIExpression()), !dbg !3749
  call void @llvm.dbg.value(metadata i64 %99, metadata !3572, metadata !DIExpression()), !dbg !3749
  %100 = icmp eq i64 %99, 0, !dbg !3751
  %101 = select i1 %100, i64 1, i64 %99, !dbg !3751
  %102 = tail call ptr @realloc(ptr noundef %0, i64 noundef %101) #44, !dbg !3752
  call void @llvm.dbg.value(metadata ptr %102, metadata !3493, metadata !DIExpression()), !dbg !3753
  %103 = icmp eq ptr %102, null, !dbg !3755
  br i1 %103, label %104, label %105, !dbg !3756

104:                                              ; preds = %97
  tail call void @xalloc_die() #38, !dbg !3757
  unreachable, !dbg !3757

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata ptr %102, metadata !805, metadata !DIExpression()), !dbg !3719
  store i64 %98, ptr %1, align 8, !dbg !3758, !tbaa !1218
  ret ptr %102, !dbg !3759
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3760 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3762, metadata !DIExpression()), !dbg !3763
  call void @llvm.dbg.value(metadata i64 %0, metadata !3764, metadata !DIExpression()), !dbg !3768
  call void @llvm.dbg.value(metadata i64 1, metadata !3767, metadata !DIExpression()), !dbg !3768
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #43, !dbg !3770
  call void @llvm.dbg.value(metadata ptr %2, metadata !3493, metadata !DIExpression()), !dbg !3771
  %3 = icmp eq ptr %2, null, !dbg !3773
  br i1 %3, label %4, label %5, !dbg !3774

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3775
  unreachable, !dbg !3775

5:                                                ; preds = %1
  ret ptr %2, !dbg !3776
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3777 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3765 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3764, metadata !DIExpression()), !dbg !3778
  call void @llvm.dbg.value(metadata i64 %1, metadata !3767, metadata !DIExpression()), !dbg !3778
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #43, !dbg !3779
  call void @llvm.dbg.value(metadata ptr %3, metadata !3493, metadata !DIExpression()), !dbg !3780
  %4 = icmp eq ptr %3, null, !dbg !3782
  br i1 %4, label %5, label %6, !dbg !3783

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3784
  unreachable, !dbg !3784

6:                                                ; preds = %2
  ret ptr %3, !dbg !3785
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3786 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3788, metadata !DIExpression()), !dbg !3789
  call void @llvm.dbg.value(metadata i64 %0, metadata !3790, metadata !DIExpression()), !dbg !3794
  call void @llvm.dbg.value(metadata i64 1, metadata !3793, metadata !DIExpression()), !dbg !3794
  call void @llvm.dbg.value(metadata i64 %0, metadata !3796, metadata !DIExpression()), !dbg !3800
  call void @llvm.dbg.value(metadata i64 1, metadata !3799, metadata !DIExpression()), !dbg !3800
  call void @llvm.dbg.value(metadata i64 %0, metadata !3796, metadata !DIExpression()), !dbg !3800
  call void @llvm.dbg.value(metadata i64 1, metadata !3799, metadata !DIExpression()), !dbg !3800
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #43, !dbg !3802
  call void @llvm.dbg.value(metadata ptr %2, metadata !3493, metadata !DIExpression()), !dbg !3803
  %3 = icmp eq ptr %2, null, !dbg !3805
  br i1 %3, label %4, label %5, !dbg !3806

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3807
  unreachable, !dbg !3807

5:                                                ; preds = %1
  ret ptr %2, !dbg !3808
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3791 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3790, metadata !DIExpression()), !dbg !3809
  call void @llvm.dbg.value(metadata i64 %1, metadata !3793, metadata !DIExpression()), !dbg !3809
  call void @llvm.dbg.value(metadata i64 %0, metadata !3796, metadata !DIExpression()), !dbg !3810
  call void @llvm.dbg.value(metadata i64 %1, metadata !3799, metadata !DIExpression()), !dbg !3810
  call void @llvm.dbg.value(metadata i64 %0, metadata !3796, metadata !DIExpression()), !dbg !3810
  call void @llvm.dbg.value(metadata i64 %1, metadata !3799, metadata !DIExpression()), !dbg !3810
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #43, !dbg !3812
  call void @llvm.dbg.value(metadata ptr %3, metadata !3493, metadata !DIExpression()), !dbg !3813
  %4 = icmp eq ptr %3, null, !dbg !3815
  br i1 %4, label %5, label %6, !dbg !3816

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3817
  unreachable, !dbg !3817

6:                                                ; preds = %2
  ret ptr %3, !dbg !3818
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3819 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3823, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.value(metadata i64 %1, metadata !3824, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.value(metadata i64 %1, metadata !3517, metadata !DIExpression()), !dbg !3826
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #42, !dbg !3828
  call void @llvm.dbg.value(metadata ptr %3, metadata !3493, metadata !DIExpression()), !dbg !3829
  %4 = icmp eq ptr %3, null, !dbg !3831
  br i1 %4, label %5, label %6, !dbg !3832

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3833
  unreachable, !dbg !3833

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3834, metadata !DIExpression()), !dbg !3842
  call void @llvm.dbg.value(metadata ptr %0, metadata !3840, metadata !DIExpression()), !dbg !3842
  call void @llvm.dbg.value(metadata i64 %1, metadata !3841, metadata !DIExpression()), !dbg !3842
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3844
  ret ptr %3, !dbg !3845
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3846 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3850, metadata !DIExpression()), !dbg !3852
  call void @llvm.dbg.value(metadata i64 %1, metadata !3851, metadata !DIExpression()), !dbg !3852
  call void @llvm.dbg.value(metadata i64 %1, metadata !3531, metadata !DIExpression()), !dbg !3853
  call void @llvm.dbg.value(metadata i64 %1, metadata !3533, metadata !DIExpression()), !dbg !3855
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #42, !dbg !3857
  call void @llvm.dbg.value(metadata ptr %3, metadata !3493, metadata !DIExpression()), !dbg !3858
  %4 = icmp eq ptr %3, null, !dbg !3860
  br i1 %4, label %5, label %6, !dbg !3861

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3862
  unreachable, !dbg !3862

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3834, metadata !DIExpression()), !dbg !3863
  call void @llvm.dbg.value(metadata ptr %0, metadata !3840, metadata !DIExpression()), !dbg !3863
  call void @llvm.dbg.value(metadata i64 %1, metadata !3841, metadata !DIExpression()), !dbg !3863
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3865
  ret ptr %3, !dbg !3866
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3867 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3871, metadata !DIExpression()), !dbg !3874
  call void @llvm.dbg.value(metadata i64 %1, metadata !3872, metadata !DIExpression()), !dbg !3874
  %3 = add nsw i64 %1, 1, !dbg !3875
  call void @llvm.dbg.value(metadata i64 %3, metadata !3531, metadata !DIExpression()), !dbg !3876
  call void @llvm.dbg.value(metadata i64 %3, metadata !3533, metadata !DIExpression()), !dbg !3878
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #42, !dbg !3880
  call void @llvm.dbg.value(metadata ptr %4, metadata !3493, metadata !DIExpression()), !dbg !3881
  %5 = icmp eq ptr %4, null, !dbg !3883
  br i1 %5, label %6, label %7, !dbg !3884

6:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3885
  unreachable, !dbg !3885

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !3873, metadata !DIExpression()), !dbg !3874
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3886
  store i8 0, ptr %8, align 1, !dbg !3887, !tbaa !938
  call void @llvm.dbg.value(metadata ptr %4, metadata !3834, metadata !DIExpression()), !dbg !3888
  call void @llvm.dbg.value(metadata ptr %0, metadata !3840, metadata !DIExpression()), !dbg !3888
  call void @llvm.dbg.value(metadata i64 %1, metadata !3841, metadata !DIExpression()), !dbg !3888
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3890
  ret ptr %4, !dbg !3891
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3892 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3894, metadata !DIExpression()), !dbg !3895
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #37, !dbg !3896
  %3 = add i64 %2, 1, !dbg !3897
  call void @llvm.dbg.value(metadata ptr %0, metadata !3823, metadata !DIExpression()), !dbg !3898
  call void @llvm.dbg.value(metadata i64 %3, metadata !3824, metadata !DIExpression()), !dbg !3898
  call void @llvm.dbg.value(metadata i64 %3, metadata !3517, metadata !DIExpression()), !dbg !3900
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #42, !dbg !3902
  call void @llvm.dbg.value(metadata ptr %4, metadata !3493, metadata !DIExpression()), !dbg !3903
  %5 = icmp eq ptr %4, null, !dbg !3905
  br i1 %5, label %6, label %7, !dbg !3906

6:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3907
  unreachable, !dbg !3907

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3834, metadata !DIExpression()), !dbg !3908
  call void @llvm.dbg.value(metadata ptr %0, metadata !3840, metadata !DIExpression()), !dbg !3908
  call void @llvm.dbg.value(metadata i64 %3, metadata !3841, metadata !DIExpression()), !dbg !3908
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #36, !dbg !3910
  ret ptr %4, !dbg !3911
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3912 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3917, !tbaa !929
  call void @llvm.dbg.value(metadata i32 %1, metadata !3914, metadata !DIExpression()), !dbg !3918
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.142, ptr noundef nonnull @.str.2.143, i32 noundef 5) #36, !dbg !3917
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.144, ptr noundef %2) #36, !dbg !3917
  %3 = icmp eq i32 %1, 0, !dbg !3917
  tail call void @llvm.assume(i1 %3), !dbg !3917
  tail call void @abort() #38, !dbg !3919
  unreachable, !dbg !3919
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nounwind uwtable
define dso_local i32 @xstrtoumax(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr noundef readonly %4) local_unnamed_addr #10 !dbg !3920 {
  %6 = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3927, metadata !DIExpression()), !dbg !3945
  call void @llvm.dbg.value(metadata ptr %1, metadata !3928, metadata !DIExpression()), !dbg !3945
  call void @llvm.dbg.value(metadata i32 %2, metadata !3929, metadata !DIExpression()), !dbg !3945
  call void @llvm.dbg.value(metadata ptr %3, metadata !3930, metadata !DIExpression()), !dbg !3945
  call void @llvm.dbg.value(metadata ptr %4, metadata !3931, metadata !DIExpression()), !dbg !3945
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #36, !dbg !3946
  %7 = icmp eq ptr %1, null, !dbg !3947
  call void @llvm.dbg.value(metadata ptr %20, metadata !3933, metadata !DIExpression()), !dbg !3945
  call void @llvm.dbg.value(metadata ptr %0, metadata !3934, metadata !DIExpression()), !dbg !3948
  call void @llvm.dbg.value(metadata i8 poison, metadata !3937, metadata !DIExpression()), !dbg !3948
  %8 = tail call ptr @__ctype_b_loc() #39, !dbg !3945
  %9 = load ptr, ptr %8, align 8, !tbaa !860
  br label %10, !dbg !3949

10:                                               ; preds = %10, %5
  %11 = phi ptr [ %0, %5 ], [ %18, %10 ], !dbg !3948
  %12 = load i8, ptr %11, align 1, !dbg !3948, !tbaa !938
  call void @llvm.dbg.value(metadata i8 %12, metadata !3937, metadata !DIExpression()), !dbg !3948
  call void @llvm.dbg.value(metadata ptr %11, metadata !3934, metadata !DIExpression()), !dbg !3948
  %13 = zext i8 %12 to i64
  %14 = getelementptr inbounds i16, ptr %9, i64 %13, !dbg !3950
  %15 = load i16, ptr %14, align 2, !dbg !3950, !tbaa !970
  %16 = and i16 %15, 8192, !dbg !3950
  %17 = icmp eq i16 %16, 0, !dbg !3949
  %18 = getelementptr inbounds i8, ptr %11, i64 1, !dbg !3951
  call void @llvm.dbg.value(metadata ptr %18, metadata !3934, metadata !DIExpression()), !dbg !3948
  call void @llvm.dbg.value(metadata i8 poison, metadata !3937, metadata !DIExpression()), !dbg !3948
  br i1 %17, label %19, label %10, !dbg !3949, !llvm.loop !3952

19:                                               ; preds = %10
  %20 = select i1 %7, ptr %6, ptr %1, !dbg !3947
  %21 = icmp eq i8 %12, 45, !dbg !3954
  br i1 %21, label %22, label %23, !dbg !3956

22:                                               ; preds = %19
  store ptr %0, ptr %20, align 8, !dbg !3957, !tbaa !860
  br label %386

23:                                               ; preds = %19
  %24 = tail call ptr @__errno_location() #39, !dbg !3959
  store i32 0, ptr %24, align 4, !dbg !3960, !tbaa !929
  %25 = call i64 @strtoumax(ptr noundef %0, ptr noundef %20, i32 noundef %2) #36, !dbg !3961
  call void @llvm.dbg.value(metadata i64 %25, metadata !3938, metadata !DIExpression()), !dbg !3945
  call void @llvm.dbg.value(metadata i32 0, metadata !3939, metadata !DIExpression()), !dbg !3945
  %26 = load ptr, ptr %20, align 8, !dbg !3962, !tbaa !860
  %27 = icmp eq ptr %26, %0, !dbg !3964
  br i1 %27, label %28, label %37, !dbg !3965

28:                                               ; preds = %23
  %29 = icmp eq ptr %4, null, !dbg !3966
  br i1 %29, label %386, label %30, !dbg !3969

30:                                               ; preds = %28
  %31 = load i8, ptr %0, align 1, !dbg !3970, !tbaa !938
  %32 = icmp eq i8 %31, 0, !dbg !3970
  br i1 %32, label %386, label %33, !dbg !3971

33:                                               ; preds = %30
  %34 = zext i8 %31 to i32, !dbg !3970
  %35 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %34) #37, !dbg !3972
  %36 = icmp eq ptr %35, null, !dbg !3972
  br i1 %36, label %386, label %44, !dbg !3973

37:                                               ; preds = %23
  %38 = load i32, ptr %24, align 4, !dbg !3974, !tbaa !929
  switch i32 %38, label %386 [
    i32 0, label %40
    i32 34, label %39
  ], !dbg !3976

39:                                               ; preds = %37
  call void @llvm.dbg.value(metadata i32 1, metadata !3939, metadata !DIExpression()), !dbg !3945
  br label %40, !dbg !3977

40:                                               ; preds = %37, %39
  %41 = phi i32 [ 1, %39 ], [ %38, %37 ], !dbg !3945
  call void @llvm.dbg.value(metadata i32 %41, metadata !3939, metadata !DIExpression()), !dbg !3945
  %42 = icmp eq ptr %4, null, !dbg !3979
  br i1 %42, label %43, label %44, !dbg !3981

43:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 %25, metadata !3938, metadata !DIExpression()), !dbg !3945
  store i64 %25, ptr %3, align 8, !dbg !3982, !tbaa !1218
  br label %386, !dbg !3984

44:                                               ; preds = %33, %40
  %45 = phi i32 [ %41, %40 ], [ 0, %33 ]
  %46 = phi i64 [ %25, %40 ], [ 1, %33 ]
  %47 = load i8, ptr %26, align 1, !dbg !3985, !tbaa !938
  %48 = icmp eq i8 %47, 0, !dbg !3986
  br i1 %48, label %383, label %49, !dbg !3987

49:                                               ; preds = %44
  %50 = zext i8 %47 to i32, !dbg !3985
  %51 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %50) #37, !dbg !3988
  %52 = icmp eq ptr %51, null, !dbg !3988
  br i1 %52, label %53, label %55, !dbg !3990

53:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i64 %25, metadata !3938, metadata !DIExpression()), !dbg !3945
  store i64 %46, ptr %3, align 8, !dbg !3991, !tbaa !1218
  %54 = or i32 %45, 2, !dbg !3993
  br label %386, !dbg !3994

55:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i32 1024, metadata !3940, metadata !DIExpression()), !dbg !3995
  call void @llvm.dbg.value(metadata i32 1, metadata !3943, metadata !DIExpression()), !dbg !3995
  switch i8 %47, label %68 [
    i8 69, label %56
    i8 71, label %56
    i8 103, label %56
    i8 107, label %56
    i8 75, label %56
    i8 77, label %56
    i8 109, label %56
    i8 80, label %56
    i8 81, label %56
    i8 82, label %56
    i8 84, label %56
    i8 116, label %56
    i8 89, label %56
    i8 90, label %56
  ], !dbg !3996

56:                                               ; preds = %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55
  %57 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef 48) #37, !dbg !3997
  %58 = icmp eq ptr %57, null, !dbg !3997
  br i1 %58, label %68, label %59, !dbg !4000

59:                                               ; preds = %56
  %60 = getelementptr inbounds i8, ptr %26, i64 1, !dbg !4001
  %61 = load i8, ptr %60, align 1, !dbg !4001, !tbaa !938
  switch i8 %61, label %68 [
    i8 105, label %62
    i8 66, label %67
    i8 68, label %67
  ], !dbg !4002

62:                                               ; preds = %59
  %63 = getelementptr inbounds i8, ptr %26, i64 2, !dbg !4003
  %64 = load i8, ptr %63, align 1, !dbg !4003, !tbaa !938
  %65 = icmp eq i8 %64, 66, !dbg !4006
  %66 = select i1 %65, i64 3, i64 1, !dbg !4007
  br label %68, !dbg !4007

67:                                               ; preds = %59, %59
  call void @llvm.dbg.value(metadata i32 1000, metadata !3940, metadata !DIExpression()), !dbg !3995
  call void @llvm.dbg.value(metadata i32 2, metadata !3943, metadata !DIExpression()), !dbg !3995
  br label %68, !dbg !4008

68:                                               ; preds = %62, %56, %59, %67, %55
  %69 = phi i64 [ 1024, %55 ], [ 1024, %59 ], [ 1000, %67 ], [ 1024, %56 ], [ 1024, %62 ]
  %70 = phi i64 [ 1, %55 ], [ 1, %59 ], [ 2, %67 ], [ 1, %56 ], [ %66, %62 ]
  call void @llvm.dbg.value(metadata i32 poison, metadata !3943, metadata !DIExpression()), !dbg !3995
  call void @llvm.dbg.value(metadata i32 poison, metadata !3940, metadata !DIExpression()), !dbg !3995
  switch i8 %47, label %381 [
    i8 98, label %302
    i8 66, label %307
    i8 99, label %372
    i8 69, label %271
    i8 71, label %312
    i8 103, label %312
    i8 107, label %328
    i8 75, label %328
    i8 77, label %334
    i8 109, label %334
    i8 80, label %245
    i8 81, label %194
    i8 82, label %148
    i8 84, label %345
    i8 116, label %345
    i8 119, label %366
    i8 89, label %107
    i8 90, label %71
  ], !dbg !4009

71:                                               ; preds = %68
  call void @llvm.dbg.value(metadata i32 0, metadata !4010, metadata !DIExpression()), !dbg !4018
  call void @llvm.dbg.value(metadata i32 7, metadata !4017, metadata !DIExpression()), !dbg !4018
  call void @llvm.dbg.value(metadata i32 6, metadata !4017, metadata !DIExpression()), !dbg !4018
  call void @llvm.dbg.value(metadata ptr undef, metadata !4021, metadata !DIExpression()), !dbg !4028
  call void @llvm.dbg.value(metadata i32 poison, metadata !4026, metadata !DIExpression()), !dbg !4028
  %72 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4030
  %73 = extractvalue { i64, i1 } %72, 1, !dbg !4030
  %74 = mul i64 %46, %69, !dbg !4030
  call void @llvm.dbg.value(metadata i64 %74, metadata !4027, metadata !DIExpression()), !dbg !4028
  %75 = select i1 %73, i64 -1, i64 %74, !dbg !4028
  call void @llvm.dbg.value(metadata i1 %73, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4018
  call void @llvm.dbg.value(metadata i32 6, metadata !4017, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4018
  call void @llvm.dbg.value(metadata i1 %73, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4018
  call void @llvm.dbg.value(metadata i32 6, metadata !4017, metadata !DIExpression()), !dbg !4018
  call void @llvm.dbg.value(metadata i32 5, metadata !4017, metadata !DIExpression()), !dbg !4018
  call void @llvm.dbg.value(metadata ptr undef, metadata !4021, metadata !DIExpression()), !dbg !4028
  call void @llvm.dbg.value(metadata i32 poison, metadata !4026, metadata !DIExpression()), !dbg !4028
  %76 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %75), !dbg !4030
  %77 = extractvalue { i64, i1 } %76, 1, !dbg !4030
  %78 = mul i64 %75, %69, !dbg !4030
  call void @llvm.dbg.value(metadata i64 %78, metadata !4027, metadata !DIExpression()), !dbg !4028
  %79 = select i1 %77, i64 -1, i64 %78, !dbg !4028
  %80 = or i1 %73, %77, !dbg !4032
  call void @llvm.dbg.value(metadata i1 %80, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4018
  call void @llvm.dbg.value(metadata i32 5, metadata !4017, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4018
  call void @llvm.dbg.value(metadata i1 %80, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4018
  call void @llvm.dbg.value(metadata i32 5, metadata !4017, metadata !DIExpression()), !dbg !4018
  call void @llvm.dbg.value(metadata i32 4, metadata !4017, metadata !DIExpression()), !dbg !4018
  call void @llvm.dbg.value(metadata ptr undef, metadata !4021, metadata !DIExpression()), !dbg !4028
  call void @llvm.dbg.value(metadata i32 poison, metadata !4026, metadata !DIExpression()), !dbg !4028
  %81 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %79), !dbg !4030
  %82 = extractvalue { i64, i1 } %81, 1, !dbg !4030
  %83 = mul i64 %79, %69, !dbg !4030
  call void @llvm.dbg.value(metadata i64 %83, metadata !4027, metadata !DIExpression()), !dbg !4028
  %84 = select i1 %82, i64 -1, i64 %83, !dbg !4028
  %85 = or i1 %80, %82, !dbg !4032
  call void @llvm.dbg.value(metadata i1 %85, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4018
  call void @llvm.dbg.value(metadata i32 4, metadata !4017, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4018
  call void @llvm.dbg.value(metadata i1 %85, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4018
  call void @llvm.dbg.value(metadata i32 4, metadata !4017, metadata !DIExpression()), !dbg !4018
  call void @llvm.dbg.value(metadata i32 3, metadata !4017, metadata !DIExpression()), !dbg !4018
  call void @llvm.dbg.value(metadata ptr undef, metadata !4021, metadata !DIExpression()), !dbg !4028
  call void @llvm.dbg.value(metadata i32 poison, metadata !4026, metadata !DIExpression()), !dbg !4028
  %86 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %84), !dbg !4030
  %87 = extractvalue { i64, i1 } %86, 1, !dbg !4030
  %88 = mul i64 %84, %69, !dbg !4030
  call void @llvm.dbg.value(metadata i64 %88, metadata !4027, metadata !DIExpression()), !dbg !4028
  %89 = select i1 %87, i64 -1, i64 %88, !dbg !4028
  %90 = or i1 %85, %87, !dbg !4032
  call void @llvm.dbg.value(metadata i1 %90, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4018
  call void @llvm.dbg.value(metadata i32 3, metadata !4017, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4018
  call void @llvm.dbg.value(metadata i1 %90, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4018
  call void @llvm.dbg.value(metadata i32 3, metadata !4017, metadata !DIExpression()), !dbg !4018
  call void @llvm.dbg.value(metadata i32 2, metadata !4017, metadata !DIExpression()), !dbg !4018
  call void @llvm.dbg.value(metadata ptr undef, metadata !4021, metadata !DIExpression()), !dbg !4028
  call void @llvm.dbg.value(metadata i32 poison, metadata !4026, metadata !DIExpression()), !dbg !4028
  %91 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %89), !dbg !4030
  %92 = extractvalue { i64, i1 } %91, 1, !dbg !4030
  %93 = mul i64 %89, %69, !dbg !4030
  call void @llvm.dbg.value(metadata i64 %93, metadata !4027, metadata !DIExpression()), !dbg !4028
  %94 = select i1 %92, i64 -1, i64 %93, !dbg !4028
  %95 = or i1 %90, %92, !dbg !4032
  call void @llvm.dbg.value(metadata i1 %95, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4018
  call void @llvm.dbg.value(metadata i32 2, metadata !4017, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4018
  call void @llvm.dbg.value(metadata i1 %95, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4018
  call void @llvm.dbg.value(metadata i32 2, metadata !4017, metadata !DIExpression()), !dbg !4018
  call void @llvm.dbg.value(metadata i32 1, metadata !4017, metadata !DIExpression()), !dbg !4018
  call void @llvm.dbg.value(metadata ptr undef, metadata !4021, metadata !DIExpression()), !dbg !4028
  call void @llvm.dbg.value(metadata i32 poison, metadata !4026, metadata !DIExpression()), !dbg !4028
  %96 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %94), !dbg !4030
  %97 = extractvalue { i64, i1 } %96, 1, !dbg !4030
  %98 = mul i64 %94, %69, !dbg !4030
  call void @llvm.dbg.value(metadata i64 %98, metadata !4027, metadata !DIExpression()), !dbg !4028
  %99 = select i1 %97, i64 -1, i64 %98, !dbg !4028
  %100 = or i1 %95, %97, !dbg !4032
  call void @llvm.dbg.value(metadata i1 %100, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4018
  call void @llvm.dbg.value(metadata i32 1, metadata !4017, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4018
  call void @llvm.dbg.value(metadata i1 %100, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4018
  call void @llvm.dbg.value(metadata i32 1, metadata !4017, metadata !DIExpression()), !dbg !4018
  call void @llvm.dbg.value(metadata i32 0, metadata !4017, metadata !DIExpression()), !dbg !4018
  call void @llvm.dbg.value(metadata ptr undef, metadata !4021, metadata !DIExpression()), !dbg !4028
  call void @llvm.dbg.value(metadata i32 poison, metadata !4026, metadata !DIExpression()), !dbg !4028
  %101 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %99), !dbg !4030
  %102 = extractvalue { i64, i1 } %101, 1, !dbg !4030
  %103 = mul i64 %99, %69, !dbg !4030
  call void @llvm.dbg.value(metadata i64 %103, metadata !4027, metadata !DIExpression()), !dbg !4028
  %104 = select i1 %102, i64 -1, i64 %103, !dbg !4028
  %105 = or i1 %100, %102, !dbg !4032
  %106 = zext i1 %105 to i32, !dbg !4032
  call void @llvm.dbg.value(metadata i32 %106, metadata !4010, metadata !DIExpression()), !dbg !4018
  call void @llvm.dbg.value(metadata i32 0, metadata !4017, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4018
  br label %372, !dbg !4033

107:                                              ; preds = %68
  call void @llvm.dbg.value(metadata i32 0, metadata !4010, metadata !DIExpression()), !dbg !4034
  call void @llvm.dbg.value(metadata i32 8, metadata !4017, metadata !DIExpression()), !dbg !4034
  call void @llvm.dbg.value(metadata i32 7, metadata !4017, metadata !DIExpression()), !dbg !4034
  call void @llvm.dbg.value(metadata ptr undef, metadata !4021, metadata !DIExpression()), !dbg !4036
  call void @llvm.dbg.value(metadata i32 poison, metadata !4026, metadata !DIExpression()), !dbg !4036
  %108 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4038
  %109 = extractvalue { i64, i1 } %108, 1, !dbg !4038
  %110 = mul i64 %46, %69, !dbg !4038
  call void @llvm.dbg.value(metadata i64 %110, metadata !4027, metadata !DIExpression()), !dbg !4036
  %111 = select i1 %109, i64 -1, i64 %110, !dbg !4036
  call void @llvm.dbg.value(metadata i1 %109, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4034
  call void @llvm.dbg.value(metadata i32 7, metadata !4017, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4034
  call void @llvm.dbg.value(metadata i1 %109, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4034
  call void @llvm.dbg.value(metadata i32 7, metadata !4017, metadata !DIExpression()), !dbg !4034
  call void @llvm.dbg.value(metadata i32 6, metadata !4017, metadata !DIExpression()), !dbg !4034
  call void @llvm.dbg.value(metadata ptr undef, metadata !4021, metadata !DIExpression()), !dbg !4036
  call void @llvm.dbg.value(metadata i32 poison, metadata !4026, metadata !DIExpression()), !dbg !4036
  %112 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %111), !dbg !4038
  %113 = extractvalue { i64, i1 } %112, 1, !dbg !4038
  %114 = mul i64 %111, %69, !dbg !4038
  call void @llvm.dbg.value(metadata i64 %114, metadata !4027, metadata !DIExpression()), !dbg !4036
  %115 = select i1 %113, i64 -1, i64 %114, !dbg !4036
  %116 = or i1 %109, %113, !dbg !4039
  call void @llvm.dbg.value(metadata i1 %116, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4034
  call void @llvm.dbg.value(metadata i32 6, metadata !4017, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4034
  call void @llvm.dbg.value(metadata i1 %116, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4034
  call void @llvm.dbg.value(metadata i32 6, metadata !4017, metadata !DIExpression()), !dbg !4034
  call void @llvm.dbg.value(metadata i32 5, metadata !4017, metadata !DIExpression()), !dbg !4034
  call void @llvm.dbg.value(metadata ptr undef, metadata !4021, metadata !DIExpression()), !dbg !4036
  call void @llvm.dbg.value(metadata i32 poison, metadata !4026, metadata !DIExpression()), !dbg !4036
  %117 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %115), !dbg !4038
  %118 = extractvalue { i64, i1 } %117, 1, !dbg !4038
  %119 = mul i64 %115, %69, !dbg !4038
  call void @llvm.dbg.value(metadata i64 %119, metadata !4027, metadata !DIExpression()), !dbg !4036
  %120 = select i1 %118, i64 -1, i64 %119, !dbg !4036
  %121 = or i1 %116, %118, !dbg !4039
  call void @llvm.dbg.value(metadata i1 %121, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4034
  call void @llvm.dbg.value(metadata i32 5, metadata !4017, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4034
  call void @llvm.dbg.value(metadata i1 %121, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4034
  call void @llvm.dbg.value(metadata i32 5, metadata !4017, metadata !DIExpression()), !dbg !4034
  call void @llvm.dbg.value(metadata i32 4, metadata !4017, metadata !DIExpression()), !dbg !4034
  call void @llvm.dbg.value(metadata ptr undef, metadata !4021, metadata !DIExpression()), !dbg !4036
  call void @llvm.dbg.value(metadata i32 poison, metadata !4026, metadata !DIExpression()), !dbg !4036
  %122 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %120), !dbg !4038
  %123 = extractvalue { i64, i1 } %122, 1, !dbg !4038
  %124 = mul i64 %120, %69, !dbg !4038
  call void @llvm.dbg.value(metadata i64 %124, metadata !4027, metadata !DIExpression()), !dbg !4036
  %125 = select i1 %123, i64 -1, i64 %124, !dbg !4036
  %126 = or i1 %121, %123, !dbg !4039
  call void @llvm.dbg.value(metadata i1 %126, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4034
  call void @llvm.dbg.value(metadata i32 4, metadata !4017, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4034
  call void @llvm.dbg.value(metadata i1 %126, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4034
  call void @llvm.dbg.value(metadata i32 4, metadata !4017, metadata !DIExpression()), !dbg !4034
  call void @llvm.dbg.value(metadata i32 3, metadata !4017, metadata !DIExpression()), !dbg !4034
  call void @llvm.dbg.value(metadata ptr undef, metadata !4021, metadata !DIExpression()), !dbg !4036
  call void @llvm.dbg.value(metadata i32 poison, metadata !4026, metadata !DIExpression()), !dbg !4036
  %127 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %125), !dbg !4038
  %128 = extractvalue { i64, i1 } %127, 1, !dbg !4038
  %129 = mul i64 %125, %69, !dbg !4038
  call void @llvm.dbg.value(metadata i64 %129, metadata !4027, metadata !DIExpression()), !dbg !4036
  %130 = select i1 %128, i64 -1, i64 %129, !dbg !4036
  %131 = or i1 %126, %128, !dbg !4039
  call void @llvm.dbg.value(metadata i1 %131, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4034
  call void @llvm.dbg.value(metadata i32 3, metadata !4017, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4034
  call void @llvm.dbg.value(metadata i1 %131, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4034
  call void @llvm.dbg.value(metadata i32 3, metadata !4017, metadata !DIExpression()), !dbg !4034
  call void @llvm.dbg.value(metadata i32 2, metadata !4017, metadata !DIExpression()), !dbg !4034
  call void @llvm.dbg.value(metadata ptr undef, metadata !4021, metadata !DIExpression()), !dbg !4036
  call void @llvm.dbg.value(metadata i32 poison, metadata !4026, metadata !DIExpression()), !dbg !4036
  %132 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %130), !dbg !4038
  %133 = extractvalue { i64, i1 } %132, 1, !dbg !4038
  %134 = mul i64 %130, %69, !dbg !4038
  call void @llvm.dbg.value(metadata i64 %134, metadata !4027, metadata !DIExpression()), !dbg !4036
  %135 = select i1 %133, i64 -1, i64 %134, !dbg !4036
  %136 = or i1 %131, %133, !dbg !4039
  call void @llvm.dbg.value(metadata i1 %136, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4034
  call void @llvm.dbg.value(metadata i32 2, metadata !4017, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4034
  call void @llvm.dbg.value(metadata i1 %136, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4034
  call void @llvm.dbg.value(metadata i32 2, metadata !4017, metadata !DIExpression()), !dbg !4034
  call void @llvm.dbg.value(metadata i32 1, metadata !4017, metadata !DIExpression()), !dbg !4034
  call void @llvm.dbg.value(metadata ptr undef, metadata !4021, metadata !DIExpression()), !dbg !4036
  call void @llvm.dbg.value(metadata i32 poison, metadata !4026, metadata !DIExpression()), !dbg !4036
  %137 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %135), !dbg !4038
  %138 = extractvalue { i64, i1 } %137, 1, !dbg !4038
  %139 = mul i64 %135, %69, !dbg !4038
  call void @llvm.dbg.value(metadata i64 %139, metadata !4027, metadata !DIExpression()), !dbg !4036
  %140 = select i1 %138, i64 -1, i64 %139, !dbg !4036
  %141 = or i1 %136, %138, !dbg !4039
  call void @llvm.dbg.value(metadata i1 %141, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4034
  call void @llvm.dbg.value(metadata i32 1, metadata !4017, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4034
  call void @llvm.dbg.value(metadata i1 %141, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4034
  call void @llvm.dbg.value(metadata i32 1, metadata !4017, metadata !DIExpression()), !dbg !4034
  call void @llvm.dbg.value(metadata i32 0, metadata !4017, metadata !DIExpression()), !dbg !4034
  call void @llvm.dbg.value(metadata ptr undef, metadata !4021, metadata !DIExpression()), !dbg !4036
  call void @llvm.dbg.value(metadata i32 poison, metadata !4026, metadata !DIExpression()), !dbg !4036
  %142 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %140), !dbg !4038
  %143 = extractvalue { i64, i1 } %142, 1, !dbg !4038
  %144 = mul i64 %140, %69, !dbg !4038
  call void @llvm.dbg.value(metadata i64 %144, metadata !4027, metadata !DIExpression()), !dbg !4036
  %145 = select i1 %143, i64 -1, i64 %144, !dbg !4036
  %146 = or i1 %141, %143, !dbg !4039
  %147 = zext i1 %146 to i32, !dbg !4039
  call void @llvm.dbg.value(metadata i32 %147, metadata !4010, metadata !DIExpression()), !dbg !4034
  call void @llvm.dbg.value(metadata i32 0, metadata !4017, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4034
  br label %372, !dbg !4033

148:                                              ; preds = %68
  call void @llvm.dbg.value(metadata i32 0, metadata !4010, metadata !DIExpression()), !dbg !4040
  call void @llvm.dbg.value(metadata i32 9, metadata !4017, metadata !DIExpression()), !dbg !4040
  call void @llvm.dbg.value(metadata i32 8, metadata !4017, metadata !DIExpression()), !dbg !4040
  call void @llvm.dbg.value(metadata ptr undef, metadata !4021, metadata !DIExpression()), !dbg !4042
  call void @llvm.dbg.value(metadata i32 poison, metadata !4026, metadata !DIExpression()), !dbg !4042
  %149 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4044
  %150 = extractvalue { i64, i1 } %149, 1, !dbg !4044
  %151 = mul i64 %46, %69, !dbg !4044
  call void @llvm.dbg.value(metadata i64 %151, metadata !4027, metadata !DIExpression()), !dbg !4042
  %152 = select i1 %150, i64 -1, i64 %151, !dbg !4042
  call void @llvm.dbg.value(metadata i1 %150, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4040
  call void @llvm.dbg.value(metadata i32 8, metadata !4017, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4040
  call void @llvm.dbg.value(metadata i1 %150, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4040
  call void @llvm.dbg.value(metadata i32 8, metadata !4017, metadata !DIExpression()), !dbg !4040
  call void @llvm.dbg.value(metadata i32 7, metadata !4017, metadata !DIExpression()), !dbg !4040
  call void @llvm.dbg.value(metadata ptr undef, metadata !4021, metadata !DIExpression()), !dbg !4042
  call void @llvm.dbg.value(metadata i32 poison, metadata !4026, metadata !DIExpression()), !dbg !4042
  %153 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %152), !dbg !4044
  %154 = extractvalue { i64, i1 } %153, 1, !dbg !4044
  %155 = mul i64 %152, %69, !dbg !4044
  call void @llvm.dbg.value(metadata i64 %155, metadata !4027, metadata !DIExpression()), !dbg !4042
  %156 = select i1 %154, i64 -1, i64 %155, !dbg !4042
  %157 = or i1 %150, %154, !dbg !4045
  call void @llvm.dbg.value(metadata i1 %157, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4040
  call void @llvm.dbg.value(metadata i32 7, metadata !4017, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4040
  call void @llvm.dbg.value(metadata i1 %157, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4040
  call void @llvm.dbg.value(metadata i32 7, metadata !4017, metadata !DIExpression()), !dbg !4040
  call void @llvm.dbg.value(metadata i32 6, metadata !4017, metadata !DIExpression()), !dbg !4040
  call void @llvm.dbg.value(metadata ptr undef, metadata !4021, metadata !DIExpression()), !dbg !4042
  call void @llvm.dbg.value(metadata i32 poison, metadata !4026, metadata !DIExpression()), !dbg !4042
  %158 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %156), !dbg !4044
  %159 = extractvalue { i64, i1 } %158, 1, !dbg !4044
  %160 = mul i64 %156, %69, !dbg !4044
  call void @llvm.dbg.value(metadata i64 %160, metadata !4027, metadata !DIExpression()), !dbg !4042
  %161 = select i1 %159, i64 -1, i64 %160, !dbg !4042
  %162 = or i1 %157, %159, !dbg !4045
  call void @llvm.dbg.value(metadata i1 %162, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4040
  call void @llvm.dbg.value(metadata i32 6, metadata !4017, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4040
  call void @llvm.dbg.value(metadata i1 %162, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4040
  call void @llvm.dbg.value(metadata i32 6, metadata !4017, metadata !DIExpression()), !dbg !4040
  call void @llvm.dbg.value(metadata i32 5, metadata !4017, metadata !DIExpression()), !dbg !4040
  call void @llvm.dbg.value(metadata ptr undef, metadata !4021, metadata !DIExpression()), !dbg !4042
  call void @llvm.dbg.value(metadata i32 poison, metadata !4026, metadata !DIExpression()), !dbg !4042
  %163 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %161), !dbg !4044
  %164 = extractvalue { i64, i1 } %163, 1, !dbg !4044
  %165 = mul i64 %161, %69, !dbg !4044
  call void @llvm.dbg.value(metadata i64 %165, metadata !4027, metadata !DIExpression()), !dbg !4042
  %166 = select i1 %164, i64 -1, i64 %165, !dbg !4042
  %167 = or i1 %162, %164, !dbg !4045
  call void @llvm.dbg.value(metadata i1 %167, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4040
  call void @llvm.dbg.value(metadata i32 5, metadata !4017, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4040
  call void @llvm.dbg.value(metadata i1 %167, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4040
  call void @llvm.dbg.value(metadata i32 5, metadata !4017, metadata !DIExpression()), !dbg !4040
  call void @llvm.dbg.value(metadata i32 4, metadata !4017, metadata !DIExpression()), !dbg !4040
  call void @llvm.dbg.value(metadata ptr undef, metadata !4021, metadata !DIExpression()), !dbg !4042
  call void @llvm.dbg.value(metadata i32 poison, metadata !4026, metadata !DIExpression()), !dbg !4042
  %168 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %166), !dbg !4044
  %169 = extractvalue { i64, i1 } %168, 1, !dbg !4044
  %170 = mul i64 %166, %69, !dbg !4044
  call void @llvm.dbg.value(metadata i64 %170, metadata !4027, metadata !DIExpression()), !dbg !4042
  %171 = select i1 %169, i64 -1, i64 %170, !dbg !4042
  %172 = or i1 %167, %169, !dbg !4045
  call void @llvm.dbg.value(metadata i1 %172, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4040
  call void @llvm.dbg.value(metadata i32 4, metadata !4017, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4040
  call void @llvm.dbg.value(metadata i1 %172, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4040
  call void @llvm.dbg.value(metadata i32 4, metadata !4017, metadata !DIExpression()), !dbg !4040
  call void @llvm.dbg.value(metadata i32 3, metadata !4017, metadata !DIExpression()), !dbg !4040
  call void @llvm.dbg.value(metadata ptr undef, metadata !4021, metadata !DIExpression()), !dbg !4042
  call void @llvm.dbg.value(metadata i32 poison, metadata !4026, metadata !DIExpression()), !dbg !4042
  %173 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %171), !dbg !4044
  %174 = extractvalue { i64, i1 } %173, 1, !dbg !4044
  %175 = mul i64 %171, %69, !dbg !4044
  call void @llvm.dbg.value(metadata i64 %175, metadata !4027, metadata !DIExpression()), !dbg !4042
  %176 = select i1 %174, i64 -1, i64 %175, !dbg !4042
  %177 = or i1 %172, %174, !dbg !4045
  call void @llvm.dbg.value(metadata i1 %177, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4040
  call void @llvm.dbg.value(metadata i32 3, metadata !4017, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4040
  call void @llvm.dbg.value(metadata i1 %177, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4040
  call void @llvm.dbg.value(metadata i32 3, metadata !4017, metadata !DIExpression()), !dbg !4040
  call void @llvm.dbg.value(metadata i32 2, metadata !4017, metadata !DIExpression()), !dbg !4040
  call void @llvm.dbg.value(metadata ptr undef, metadata !4021, metadata !DIExpression()), !dbg !4042
  call void @llvm.dbg.value(metadata i32 poison, metadata !4026, metadata !DIExpression()), !dbg !4042
  %178 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %176), !dbg !4044
  %179 = extractvalue { i64, i1 } %178, 1, !dbg !4044
  %180 = mul i64 %176, %69, !dbg !4044
  call void @llvm.dbg.value(metadata i64 %180, metadata !4027, metadata !DIExpression()), !dbg !4042
  %181 = select i1 %179, i64 -1, i64 %180, !dbg !4042
  %182 = or i1 %177, %179, !dbg !4045
  call void @llvm.dbg.value(metadata i1 %182, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4040
  call void @llvm.dbg.value(metadata i32 2, metadata !4017, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4040
  call void @llvm.dbg.value(metadata i1 %182, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4040
  call void @llvm.dbg.value(metadata i32 2, metadata !4017, metadata !DIExpression()), !dbg !4040
  call void @llvm.dbg.value(metadata i32 1, metadata !4017, metadata !DIExpression()), !dbg !4040
  call void @llvm.dbg.value(metadata ptr undef, metadata !4021, metadata !DIExpression()), !dbg !4042
  call void @llvm.dbg.value(metadata i32 poison, metadata !4026, metadata !DIExpression()), !dbg !4042
  %183 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %181), !dbg !4044
  %184 = extractvalue { i64, i1 } %183, 1, !dbg !4044
  %185 = mul i64 %181, %69, !dbg !4044
  call void @llvm.dbg.value(metadata i64 %185, metadata !4027, metadata !DIExpression()), !dbg !4042
  %186 = select i1 %184, i64 -1, i64 %185, !dbg !4042
  %187 = or i1 %182, %184, !dbg !4045
  call void @llvm.dbg.value(metadata i1 %187, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4040
  call void @llvm.dbg.value(metadata i32 1, metadata !4017, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4040
  call void @llvm.dbg.value(metadata i1 %187, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4040
  call void @llvm.dbg.value(metadata i32 1, metadata !4017, metadata !DIExpression()), !dbg !4040
  call void @llvm.dbg.value(metadata i32 0, metadata !4017, metadata !DIExpression()), !dbg !4040
  call void @llvm.dbg.value(metadata ptr undef, metadata !4021, metadata !DIExpression()), !dbg !4042
  call void @llvm.dbg.value(metadata i32 poison, metadata !4026, metadata !DIExpression()), !dbg !4042
  %188 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %186), !dbg !4044
  %189 = extractvalue { i64, i1 } %188, 1, !dbg !4044
  %190 = mul i64 %186, %69, !dbg !4044
  call void @llvm.dbg.value(metadata i64 %190, metadata !4027, metadata !DIExpression()), !dbg !4042
  %191 = select i1 %189, i64 -1, i64 %190, !dbg !4042
  %192 = or i1 %187, %189, !dbg !4045
  %193 = zext i1 %192 to i32, !dbg !4045
  call void @llvm.dbg.value(metadata i32 %193, metadata !4010, metadata !DIExpression()), !dbg !4040
  call void @llvm.dbg.value(metadata i32 0, metadata !4017, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4040
  br label %372, !dbg !4033

194:                                              ; preds = %68
  call void @llvm.dbg.value(metadata i32 0, metadata !4010, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.value(metadata i32 10, metadata !4017, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.value(metadata i32 9, metadata !4017, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.value(metadata ptr undef, metadata !4021, metadata !DIExpression()), !dbg !4048
  call void @llvm.dbg.value(metadata i32 poison, metadata !4026, metadata !DIExpression()), !dbg !4048
  %195 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4050
  %196 = extractvalue { i64, i1 } %195, 1, !dbg !4050
  %197 = mul i64 %46, %69, !dbg !4050
  call void @llvm.dbg.value(metadata i64 %197, metadata !4027, metadata !DIExpression()), !dbg !4048
  %198 = select i1 %196, i64 -1, i64 %197, !dbg !4048
  call void @llvm.dbg.value(metadata i1 %196, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4046
  call void @llvm.dbg.value(metadata i32 9, metadata !4017, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4046
  call void @llvm.dbg.value(metadata i1 %196, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4046
  call void @llvm.dbg.value(metadata i32 9, metadata !4017, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.value(metadata i32 8, metadata !4017, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.value(metadata ptr undef, metadata !4021, metadata !DIExpression()), !dbg !4048
  call void @llvm.dbg.value(metadata i32 poison, metadata !4026, metadata !DIExpression()), !dbg !4048
  %199 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %198), !dbg !4050
  %200 = extractvalue { i64, i1 } %199, 1, !dbg !4050
  %201 = mul i64 %198, %69, !dbg !4050
  call void @llvm.dbg.value(metadata i64 %201, metadata !4027, metadata !DIExpression()), !dbg !4048
  %202 = select i1 %200, i64 -1, i64 %201, !dbg !4048
  %203 = or i1 %196, %200, !dbg !4051
  call void @llvm.dbg.value(metadata i1 %203, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4046
  call void @llvm.dbg.value(metadata i32 8, metadata !4017, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4046
  call void @llvm.dbg.value(metadata i1 %203, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4046
  call void @llvm.dbg.value(metadata i32 8, metadata !4017, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.value(metadata i32 7, metadata !4017, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.value(metadata ptr undef, metadata !4021, metadata !DIExpression()), !dbg !4048
  call void @llvm.dbg.value(metadata i32 poison, metadata !4026, metadata !DIExpression()), !dbg !4048
  %204 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %202), !dbg !4050
  %205 = extractvalue { i64, i1 } %204, 1, !dbg !4050
  %206 = mul i64 %202, %69, !dbg !4050
  call void @llvm.dbg.value(metadata i64 %206, metadata !4027, metadata !DIExpression()), !dbg !4048
  %207 = select i1 %205, i64 -1, i64 %206, !dbg !4048
  %208 = or i1 %203, %205, !dbg !4051
  call void @llvm.dbg.value(metadata i1 %208, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4046
  call void @llvm.dbg.value(metadata i32 7, metadata !4017, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4046
  call void @llvm.dbg.value(metadata i1 %208, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4046
  call void @llvm.dbg.value(metadata i32 7, metadata !4017, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.value(metadata i32 6, metadata !4017, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.value(metadata ptr undef, metadata !4021, metadata !DIExpression()), !dbg !4048
  call void @llvm.dbg.value(metadata i32 poison, metadata !4026, metadata !DIExpression()), !dbg !4048
  %209 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %207), !dbg !4050
  %210 = extractvalue { i64, i1 } %209, 1, !dbg !4050
  %211 = mul i64 %207, %69, !dbg !4050
  call void @llvm.dbg.value(metadata i64 %211, metadata !4027, metadata !DIExpression()), !dbg !4048
  %212 = select i1 %210, i64 -1, i64 %211, !dbg !4048
  %213 = or i1 %208, %210, !dbg !4051
  call void @llvm.dbg.value(metadata i1 %213, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4046
  call void @llvm.dbg.value(metadata i32 6, metadata !4017, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4046
  call void @llvm.dbg.value(metadata i1 %213, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4046
  call void @llvm.dbg.value(metadata i32 6, metadata !4017, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.value(metadata i32 5, metadata !4017, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.value(metadata ptr undef, metadata !4021, metadata !DIExpression()), !dbg !4048
  call void @llvm.dbg.value(metadata i32 poison, metadata !4026, metadata !DIExpression()), !dbg !4048
  %214 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %212), !dbg !4050
  %215 = extractvalue { i64, i1 } %214, 1, !dbg !4050
  %216 = mul i64 %212, %69, !dbg !4050
  call void @llvm.dbg.value(metadata i64 %216, metadata !4027, metadata !DIExpression()), !dbg !4048
  %217 = select i1 %215, i64 -1, i64 %216, !dbg !4048
  %218 = or i1 %213, %215, !dbg !4051
  call void @llvm.dbg.value(metadata i1 %218, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4046
  call void @llvm.dbg.value(metadata i32 5, metadata !4017, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4046
  call void @llvm.dbg.value(metadata i1 %218, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4046
  call void @llvm.dbg.value(metadata i32 5, metadata !4017, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.value(metadata i32 4, metadata !4017, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.value(metadata ptr undef, metadata !4021, metadata !DIExpression()), !dbg !4048
  call void @llvm.dbg.value(metadata i32 poison, metadata !4026, metadata !DIExpression()), !dbg !4048
  %219 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %217), !dbg !4050
  %220 = extractvalue { i64, i1 } %219, 1, !dbg !4050
  %221 = mul i64 %217, %69, !dbg !4050
  call void @llvm.dbg.value(metadata i64 %221, metadata !4027, metadata !DIExpression()), !dbg !4048
  %222 = select i1 %220, i64 -1, i64 %221, !dbg !4048
  %223 = or i1 %218, %220, !dbg !4051
  call void @llvm.dbg.value(metadata i1 %223, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4046
  call void @llvm.dbg.value(metadata i32 4, metadata !4017, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4046
  call void @llvm.dbg.value(metadata i1 %223, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4046
  call void @llvm.dbg.value(metadata i32 4, metadata !4017, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.value(metadata i32 3, metadata !4017, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.value(metadata ptr undef, metadata !4021, metadata !DIExpression()), !dbg !4048
  call void @llvm.dbg.value(metadata i32 poison, metadata !4026, metadata !DIExpression()), !dbg !4048
  %224 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %222), !dbg !4050
  %225 = extractvalue { i64, i1 } %224, 1, !dbg !4050
  %226 = mul i64 %222, %69, !dbg !4050
  call void @llvm.dbg.value(metadata i64 %226, metadata !4027, metadata !DIExpression()), !dbg !4048
  %227 = select i1 %225, i64 -1, i64 %226, !dbg !4048
  %228 = or i1 %223, %225, !dbg !4051
  call void @llvm.dbg.value(metadata i1 %228, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4046
  call void @llvm.dbg.value(metadata i32 3, metadata !4017, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4046
  call void @llvm.dbg.value(metadata i1 %228, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4046
  call void @llvm.dbg.value(metadata i32 3, metadata !4017, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.value(metadata i32 2, metadata !4017, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.value(metadata ptr undef, metadata !4021, metadata !DIExpression()), !dbg !4048
  call void @llvm.dbg.value(metadata i32 poison, metadata !4026, metadata !DIExpression()), !dbg !4048
  %229 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %227), !dbg !4050
  %230 = extractvalue { i64, i1 } %229, 1, !dbg !4050
  %231 = mul i64 %227, %69, !dbg !4050
  call void @llvm.dbg.value(metadata i64 %231, metadata !4027, metadata !DIExpression()), !dbg !4048
  %232 = select i1 %230, i64 -1, i64 %231, !dbg !4048
  %233 = or i1 %228, %230, !dbg !4051
  call void @llvm.dbg.value(metadata i1 %233, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4046
  call void @llvm.dbg.value(metadata i32 2, metadata !4017, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4046
  call void @llvm.dbg.value(metadata i1 %233, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4046
  call void @llvm.dbg.value(metadata i32 2, metadata !4017, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.value(metadata i32 1, metadata !4017, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.value(metadata ptr undef, metadata !4021, metadata !DIExpression()), !dbg !4048
  call void @llvm.dbg.value(metadata i32 poison, metadata !4026, metadata !DIExpression()), !dbg !4048
  %234 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %232), !dbg !4050
  %235 = extractvalue { i64, i1 } %234, 1, !dbg !4050
  %236 = mul i64 %232, %69, !dbg !4050
  call void @llvm.dbg.value(metadata i64 %236, metadata !4027, metadata !DIExpression()), !dbg !4048
  %237 = select i1 %235, i64 -1, i64 %236, !dbg !4048
  %238 = or i1 %233, %235, !dbg !4051
  call void @llvm.dbg.value(metadata i1 %238, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4046
  call void @llvm.dbg.value(metadata i32 1, metadata !4017, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4046
  call void @llvm.dbg.value(metadata i1 %238, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4046
  call void @llvm.dbg.value(metadata i32 1, metadata !4017, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.value(metadata i32 0, metadata !4017, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.value(metadata ptr undef, metadata !4021, metadata !DIExpression()), !dbg !4048
  call void @llvm.dbg.value(metadata i32 poison, metadata !4026, metadata !DIExpression()), !dbg !4048
  %239 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %237), !dbg !4050
  %240 = extractvalue { i64, i1 } %239, 1, !dbg !4050
  %241 = mul i64 %237, %69, !dbg !4050
  call void @llvm.dbg.value(metadata i64 %241, metadata !4027, metadata !DIExpression()), !dbg !4048
  %242 = select i1 %240, i64 -1, i64 %241, !dbg !4048
  %243 = or i1 %238, %240, !dbg !4051
  %244 = zext i1 %243 to i32, !dbg !4051
  call void @llvm.dbg.value(metadata i32 %244, metadata !4010, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.value(metadata i32 0, metadata !4017, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4046
  br label %372, !dbg !4033

245:                                              ; preds = %68
  call void @llvm.dbg.value(metadata i32 0, metadata !4010, metadata !DIExpression()), !dbg !4052
  call void @llvm.dbg.value(metadata i32 5, metadata !4017, metadata !DIExpression()), !dbg !4052
  call void @llvm.dbg.value(metadata i32 4, metadata !4017, metadata !DIExpression()), !dbg !4052
  call void @llvm.dbg.value(metadata ptr undef, metadata !4021, metadata !DIExpression()), !dbg !4054
  call void @llvm.dbg.value(metadata i32 poison, metadata !4026, metadata !DIExpression()), !dbg !4054
  %246 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4056
  %247 = extractvalue { i64, i1 } %246, 1, !dbg !4056
  %248 = mul i64 %46, %69, !dbg !4056
  call void @llvm.dbg.value(metadata i64 %248, metadata !4027, metadata !DIExpression()), !dbg !4054
  %249 = select i1 %247, i64 -1, i64 %248, !dbg !4054
  call void @llvm.dbg.value(metadata i1 %247, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4052
  call void @llvm.dbg.value(metadata i32 4, metadata !4017, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4052
  call void @llvm.dbg.value(metadata i1 %247, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4052
  call void @llvm.dbg.value(metadata i32 4, metadata !4017, metadata !DIExpression()), !dbg !4052
  call void @llvm.dbg.value(metadata i32 3, metadata !4017, metadata !DIExpression()), !dbg !4052
  call void @llvm.dbg.value(metadata ptr undef, metadata !4021, metadata !DIExpression()), !dbg !4054
  call void @llvm.dbg.value(metadata i32 poison, metadata !4026, metadata !DIExpression()), !dbg !4054
  %250 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %249), !dbg !4056
  %251 = extractvalue { i64, i1 } %250, 1, !dbg !4056
  %252 = mul i64 %249, %69, !dbg !4056
  call void @llvm.dbg.value(metadata i64 %252, metadata !4027, metadata !DIExpression()), !dbg !4054
  %253 = select i1 %251, i64 -1, i64 %252, !dbg !4054
  %254 = or i1 %247, %251, !dbg !4057
  call void @llvm.dbg.value(metadata i1 %254, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4052
  call void @llvm.dbg.value(metadata i32 3, metadata !4017, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4052
  call void @llvm.dbg.value(metadata i1 %254, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4052
  call void @llvm.dbg.value(metadata i32 3, metadata !4017, metadata !DIExpression()), !dbg !4052
  call void @llvm.dbg.value(metadata i32 2, metadata !4017, metadata !DIExpression()), !dbg !4052
  call void @llvm.dbg.value(metadata ptr undef, metadata !4021, metadata !DIExpression()), !dbg !4054
  call void @llvm.dbg.value(metadata i32 poison, metadata !4026, metadata !DIExpression()), !dbg !4054
  %255 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %253), !dbg !4056
  %256 = extractvalue { i64, i1 } %255, 1, !dbg !4056
  %257 = mul i64 %253, %69, !dbg !4056
  call void @llvm.dbg.value(metadata i64 %257, metadata !4027, metadata !DIExpression()), !dbg !4054
  %258 = select i1 %256, i64 -1, i64 %257, !dbg !4054
  %259 = or i1 %254, %256, !dbg !4057
  call void @llvm.dbg.value(metadata i1 %259, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4052
  call void @llvm.dbg.value(metadata i32 2, metadata !4017, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4052
  call void @llvm.dbg.value(metadata i1 %259, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4052
  call void @llvm.dbg.value(metadata i32 2, metadata !4017, metadata !DIExpression()), !dbg !4052
  call void @llvm.dbg.value(metadata i32 1, metadata !4017, metadata !DIExpression()), !dbg !4052
  call void @llvm.dbg.value(metadata ptr undef, metadata !4021, metadata !DIExpression()), !dbg !4054
  call void @llvm.dbg.value(metadata i32 poison, metadata !4026, metadata !DIExpression()), !dbg !4054
  %260 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %258), !dbg !4056
  %261 = extractvalue { i64, i1 } %260, 1, !dbg !4056
  %262 = mul i64 %258, %69, !dbg !4056
  call void @llvm.dbg.value(metadata i64 %262, metadata !4027, metadata !DIExpression()), !dbg !4054
  %263 = select i1 %261, i64 -1, i64 %262, !dbg !4054
  %264 = or i1 %259, %261, !dbg !4057
  call void @llvm.dbg.value(metadata i1 %264, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4052
  call void @llvm.dbg.value(metadata i32 1, metadata !4017, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4052
  call void @llvm.dbg.value(metadata i1 %264, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4052
  call void @llvm.dbg.value(metadata i32 1, metadata !4017, metadata !DIExpression()), !dbg !4052
  call void @llvm.dbg.value(metadata i32 0, metadata !4017, metadata !DIExpression()), !dbg !4052
  call void @llvm.dbg.value(metadata ptr undef, metadata !4021, metadata !DIExpression()), !dbg !4054
  call void @llvm.dbg.value(metadata i32 poison, metadata !4026, metadata !DIExpression()), !dbg !4054
  %265 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %263), !dbg !4056
  %266 = extractvalue { i64, i1 } %265, 1, !dbg !4056
  %267 = mul i64 %263, %69, !dbg !4056
  call void @llvm.dbg.value(metadata i64 %267, metadata !4027, metadata !DIExpression()), !dbg !4054
  %268 = select i1 %266, i64 -1, i64 %267, !dbg !4054
  %269 = or i1 %264, %266, !dbg !4057
  %270 = zext i1 %269 to i32, !dbg !4057
  call void @llvm.dbg.value(metadata i32 %270, metadata !4010, metadata !DIExpression()), !dbg !4052
  call void @llvm.dbg.value(metadata i32 0, metadata !4017, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4052
  br label %372, !dbg !4033

271:                                              ; preds = %68
  call void @llvm.dbg.value(metadata i32 0, metadata !4010, metadata !DIExpression()), !dbg !4058
  call void @llvm.dbg.value(metadata i32 6, metadata !4017, metadata !DIExpression()), !dbg !4058
  call void @llvm.dbg.value(metadata i32 5, metadata !4017, metadata !DIExpression()), !dbg !4058
  call void @llvm.dbg.value(metadata ptr undef, metadata !4021, metadata !DIExpression()), !dbg !4060
  call void @llvm.dbg.value(metadata i32 poison, metadata !4026, metadata !DIExpression()), !dbg !4060
  %272 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4062
  %273 = extractvalue { i64, i1 } %272, 1, !dbg !4062
  %274 = mul i64 %46, %69, !dbg !4062
  call void @llvm.dbg.value(metadata i64 %274, metadata !4027, metadata !DIExpression()), !dbg !4060
  %275 = select i1 %273, i64 -1, i64 %274, !dbg !4060
  call void @llvm.dbg.value(metadata i1 %273, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4058
  call void @llvm.dbg.value(metadata i32 5, metadata !4017, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4058
  call void @llvm.dbg.value(metadata i1 %273, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4058
  call void @llvm.dbg.value(metadata i32 5, metadata !4017, metadata !DIExpression()), !dbg !4058
  call void @llvm.dbg.value(metadata i32 4, metadata !4017, metadata !DIExpression()), !dbg !4058
  call void @llvm.dbg.value(metadata ptr undef, metadata !4021, metadata !DIExpression()), !dbg !4060
  call void @llvm.dbg.value(metadata i32 poison, metadata !4026, metadata !DIExpression()), !dbg !4060
  %276 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %275), !dbg !4062
  %277 = extractvalue { i64, i1 } %276, 1, !dbg !4062
  %278 = mul i64 %275, %69, !dbg !4062
  call void @llvm.dbg.value(metadata i64 %278, metadata !4027, metadata !DIExpression()), !dbg !4060
  %279 = select i1 %277, i64 -1, i64 %278, !dbg !4060
  %280 = or i1 %273, %277, !dbg !4063
  call void @llvm.dbg.value(metadata i1 %280, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4058
  call void @llvm.dbg.value(metadata i32 4, metadata !4017, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4058
  call void @llvm.dbg.value(metadata i1 %280, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4058
  call void @llvm.dbg.value(metadata i32 4, metadata !4017, metadata !DIExpression()), !dbg !4058
  call void @llvm.dbg.value(metadata i32 3, metadata !4017, metadata !DIExpression()), !dbg !4058
  call void @llvm.dbg.value(metadata ptr undef, metadata !4021, metadata !DIExpression()), !dbg !4060
  call void @llvm.dbg.value(metadata i32 poison, metadata !4026, metadata !DIExpression()), !dbg !4060
  %281 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %279), !dbg !4062
  %282 = extractvalue { i64, i1 } %281, 1, !dbg !4062
  %283 = mul i64 %279, %69, !dbg !4062
  call void @llvm.dbg.value(metadata i64 %283, metadata !4027, metadata !DIExpression()), !dbg !4060
  %284 = select i1 %282, i64 -1, i64 %283, !dbg !4060
  %285 = or i1 %280, %282, !dbg !4063
  call void @llvm.dbg.value(metadata i1 %285, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4058
  call void @llvm.dbg.value(metadata i32 3, metadata !4017, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4058
  call void @llvm.dbg.value(metadata i1 %285, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4058
  call void @llvm.dbg.value(metadata i32 3, metadata !4017, metadata !DIExpression()), !dbg !4058
  call void @llvm.dbg.value(metadata i32 2, metadata !4017, metadata !DIExpression()), !dbg !4058
  call void @llvm.dbg.value(metadata ptr undef, metadata !4021, metadata !DIExpression()), !dbg !4060
  call void @llvm.dbg.value(metadata i32 poison, metadata !4026, metadata !DIExpression()), !dbg !4060
  %286 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %284), !dbg !4062
  %287 = extractvalue { i64, i1 } %286, 1, !dbg !4062
  %288 = mul i64 %284, %69, !dbg !4062
  call void @llvm.dbg.value(metadata i64 %288, metadata !4027, metadata !DIExpression()), !dbg !4060
  %289 = select i1 %287, i64 -1, i64 %288, !dbg !4060
  %290 = or i1 %285, %287, !dbg !4063
  call void @llvm.dbg.value(metadata i1 %290, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4058
  call void @llvm.dbg.value(metadata i32 2, metadata !4017, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4058
  call void @llvm.dbg.value(metadata i1 %290, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4058
  call void @llvm.dbg.value(metadata i32 2, metadata !4017, metadata !DIExpression()), !dbg !4058
  call void @llvm.dbg.value(metadata i32 1, metadata !4017, metadata !DIExpression()), !dbg !4058
  call void @llvm.dbg.value(metadata ptr undef, metadata !4021, metadata !DIExpression()), !dbg !4060
  call void @llvm.dbg.value(metadata i32 poison, metadata !4026, metadata !DIExpression()), !dbg !4060
  %291 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %289), !dbg !4062
  %292 = extractvalue { i64, i1 } %291, 1, !dbg !4062
  %293 = mul i64 %289, %69, !dbg !4062
  call void @llvm.dbg.value(metadata i64 %293, metadata !4027, metadata !DIExpression()), !dbg !4060
  %294 = select i1 %292, i64 -1, i64 %293, !dbg !4060
  %295 = or i1 %290, %292, !dbg !4063
  call void @llvm.dbg.value(metadata i1 %295, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4058
  call void @llvm.dbg.value(metadata i32 1, metadata !4017, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4058
  call void @llvm.dbg.value(metadata i1 %295, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4058
  call void @llvm.dbg.value(metadata i32 1, metadata !4017, metadata !DIExpression()), !dbg !4058
  call void @llvm.dbg.value(metadata i32 0, metadata !4017, metadata !DIExpression()), !dbg !4058
  call void @llvm.dbg.value(metadata ptr undef, metadata !4021, metadata !DIExpression()), !dbg !4060
  call void @llvm.dbg.value(metadata i32 poison, metadata !4026, metadata !DIExpression()), !dbg !4060
  %296 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %294), !dbg !4062
  %297 = extractvalue { i64, i1 } %296, 1, !dbg !4062
  %298 = mul i64 %294, %69, !dbg !4062
  call void @llvm.dbg.value(metadata i64 %298, metadata !4027, metadata !DIExpression()), !dbg !4060
  %299 = select i1 %297, i64 -1, i64 %298, !dbg !4060
  %300 = or i1 %295, %297, !dbg !4063
  %301 = zext i1 %300 to i32, !dbg !4063
  call void @llvm.dbg.value(metadata i32 %301, metadata !4010, metadata !DIExpression()), !dbg !4058
  call void @llvm.dbg.value(metadata i32 0, metadata !4017, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4058
  br label %372, !dbg !4033

302:                                              ; preds = %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4021, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i32 512, metadata !4026, metadata !DIExpression()), !dbg !4064
  %303 = icmp ugt i64 %46, 36028797018963967, !dbg !4066
  %304 = shl i64 %46, 9, !dbg !4066
  call void @llvm.dbg.value(metadata i64 %304, metadata !4027, metadata !DIExpression()), !dbg !4064
  %305 = select i1 %303, i64 -1, i64 %304, !dbg !4064
  %306 = zext i1 %303 to i32, !dbg !4064
  call void @llvm.dbg.value(metadata i32 %306, metadata !3944, metadata !DIExpression()), !dbg !3995
  br label %372, !dbg !4067

307:                                              ; preds = %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4021, metadata !DIExpression()), !dbg !4068
  call void @llvm.dbg.value(metadata i32 1024, metadata !4026, metadata !DIExpression()), !dbg !4068
  %308 = icmp ugt i64 %46, 18014398509481983, !dbg !4070
  %309 = shl i64 %46, 10, !dbg !4070
  call void @llvm.dbg.value(metadata i64 %309, metadata !4027, metadata !DIExpression()), !dbg !4068
  %310 = select i1 %308, i64 -1, i64 %309, !dbg !4068
  %311 = zext i1 %308 to i32, !dbg !4068
  call void @llvm.dbg.value(metadata i32 %311, metadata !3944, metadata !DIExpression()), !dbg !3995
  br label %372, !dbg !4071

312:                                              ; preds = %68, %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4015, metadata !DIExpression()), !dbg !4072
  call void @llvm.dbg.value(metadata i32 poison, metadata !4016, metadata !DIExpression()), !dbg !4072
  call void @llvm.dbg.value(metadata i32 0, metadata !4010, metadata !DIExpression()), !dbg !4072
  call void @llvm.dbg.value(metadata i32 3, metadata !4017, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4072
  call void @llvm.dbg.value(metadata i32 0, metadata !4010, metadata !DIExpression()), !dbg !4072
  call void @llvm.dbg.value(metadata i32 3, metadata !4017, metadata !DIExpression()), !dbg !4072
  call void @llvm.dbg.value(metadata i32 2, metadata !4017, metadata !DIExpression()), !dbg !4072
  call void @llvm.dbg.value(metadata ptr undef, metadata !4021, metadata !DIExpression()), !dbg !4074
  call void @llvm.dbg.value(metadata i32 poison, metadata !4026, metadata !DIExpression()), !dbg !4074
  %313 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4076
  %314 = extractvalue { i64, i1 } %313, 1, !dbg !4076
  %315 = mul i64 %46, %69, !dbg !4076
  call void @llvm.dbg.value(metadata i64 %315, metadata !4027, metadata !DIExpression()), !dbg !4074
  %316 = select i1 %314, i64 -1, i64 %315, !dbg !4074
  call void @llvm.dbg.value(metadata i1 %314, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4072
  call void @llvm.dbg.value(metadata i32 2, metadata !4017, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4072
  call void @llvm.dbg.value(metadata i1 %314, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4072
  call void @llvm.dbg.value(metadata i32 2, metadata !4017, metadata !DIExpression()), !dbg !4072
  call void @llvm.dbg.value(metadata i32 1, metadata !4017, metadata !DIExpression()), !dbg !4072
  call void @llvm.dbg.value(metadata ptr undef, metadata !4021, metadata !DIExpression()), !dbg !4074
  call void @llvm.dbg.value(metadata i32 poison, metadata !4026, metadata !DIExpression()), !dbg !4074
  %317 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %316), !dbg !4076
  %318 = extractvalue { i64, i1 } %317, 1, !dbg !4076
  %319 = mul i64 %316, %69, !dbg !4076
  call void @llvm.dbg.value(metadata i64 %319, metadata !4027, metadata !DIExpression()), !dbg !4074
  %320 = select i1 %318, i64 -1, i64 %319, !dbg !4074
  %321 = or i1 %314, %318, !dbg !4077
  call void @llvm.dbg.value(metadata i1 %321, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4072
  call void @llvm.dbg.value(metadata i32 1, metadata !4017, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4072
  call void @llvm.dbg.value(metadata i1 %321, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4072
  call void @llvm.dbg.value(metadata i32 1, metadata !4017, metadata !DIExpression()), !dbg !4072
  call void @llvm.dbg.value(metadata i32 0, metadata !4017, metadata !DIExpression()), !dbg !4072
  call void @llvm.dbg.value(metadata ptr undef, metadata !4021, metadata !DIExpression()), !dbg !4074
  call void @llvm.dbg.value(metadata i32 poison, metadata !4026, metadata !DIExpression()), !dbg !4074
  %322 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %320), !dbg !4076
  %323 = extractvalue { i64, i1 } %322, 1, !dbg !4076
  %324 = mul i64 %320, %69, !dbg !4076
  call void @llvm.dbg.value(metadata i64 %324, metadata !4027, metadata !DIExpression()), !dbg !4074
  %325 = select i1 %323, i64 -1, i64 %324, !dbg !4074
  %326 = or i1 %321, %323, !dbg !4077
  %327 = zext i1 %326 to i32, !dbg !4077
  call void @llvm.dbg.value(metadata i32 %327, metadata !4010, metadata !DIExpression()), !dbg !4072
  call void @llvm.dbg.value(metadata i32 0, metadata !4017, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4072
  br label %372, !dbg !4033

328:                                              ; preds = %68, %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4015, metadata !DIExpression()), !dbg !4078
  call void @llvm.dbg.value(metadata i32 poison, metadata !4016, metadata !DIExpression()), !dbg !4078
  call void @llvm.dbg.value(metadata i32 0, metadata !4010, metadata !DIExpression()), !dbg !4078
  call void @llvm.dbg.value(metadata i32 1, metadata !4017, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4078
  %329 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4080
  %330 = extractvalue { i64, i1 } %329, 1, !dbg !4080
  %331 = mul i64 %46, %69, !dbg !4080
  %332 = select i1 %330, i64 -1, i64 %331, !dbg !4082
  %333 = zext i1 %330 to i32, !dbg !4082
  call void @llvm.dbg.value(metadata i32 poison, metadata !4010, metadata !DIExpression()), !dbg !4078
  call void @llvm.dbg.value(metadata i32 poison, metadata !4017, metadata !DIExpression()), !dbg !4078
  call void @llvm.dbg.value(metadata ptr poison, metadata !4021, metadata !DIExpression()), !dbg !4082
  call void @llvm.dbg.value(metadata i32 poison, metadata !4026, metadata !DIExpression()), !dbg !4082
  call void @llvm.dbg.value(metadata i64 poison, metadata !4027, metadata !DIExpression()), !dbg !4082
  br label %372, !dbg !4033

334:                                              ; preds = %68, %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4015, metadata !DIExpression()), !dbg !4083
  call void @llvm.dbg.value(metadata i32 poison, metadata !4016, metadata !DIExpression()), !dbg !4083
  call void @llvm.dbg.value(metadata i32 0, metadata !4010, metadata !DIExpression()), !dbg !4083
  call void @llvm.dbg.value(metadata i32 2, metadata !4017, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4083
  call void @llvm.dbg.value(metadata i32 0, metadata !4010, metadata !DIExpression()), !dbg !4083
  call void @llvm.dbg.value(metadata i32 2, metadata !4017, metadata !DIExpression()), !dbg !4083
  call void @llvm.dbg.value(metadata i32 1, metadata !4017, metadata !DIExpression()), !dbg !4083
  call void @llvm.dbg.value(metadata ptr undef, metadata !4021, metadata !DIExpression()), !dbg !4085
  call void @llvm.dbg.value(metadata i32 poison, metadata !4026, metadata !DIExpression()), !dbg !4085
  %335 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4087
  %336 = extractvalue { i64, i1 } %335, 1, !dbg !4087
  %337 = mul i64 %46, %69, !dbg !4087
  call void @llvm.dbg.value(metadata i64 %337, metadata !4027, metadata !DIExpression()), !dbg !4085
  %338 = select i1 %336, i64 -1, i64 %337, !dbg !4085
  call void @llvm.dbg.value(metadata i1 %336, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4083
  call void @llvm.dbg.value(metadata i32 1, metadata !4017, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4083
  call void @llvm.dbg.value(metadata i1 %336, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4083
  call void @llvm.dbg.value(metadata i32 1, metadata !4017, metadata !DIExpression()), !dbg !4083
  call void @llvm.dbg.value(metadata i32 0, metadata !4017, metadata !DIExpression()), !dbg !4083
  call void @llvm.dbg.value(metadata ptr undef, metadata !4021, metadata !DIExpression()), !dbg !4085
  call void @llvm.dbg.value(metadata i32 poison, metadata !4026, metadata !DIExpression()), !dbg !4085
  %339 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %338), !dbg !4087
  %340 = extractvalue { i64, i1 } %339, 1, !dbg !4087
  %341 = mul i64 %338, %69, !dbg !4087
  call void @llvm.dbg.value(metadata i64 %341, metadata !4027, metadata !DIExpression()), !dbg !4085
  %342 = select i1 %340, i64 -1, i64 %341, !dbg !4085
  %343 = or i1 %336, %340, !dbg !4088
  %344 = zext i1 %343 to i32, !dbg !4088
  call void @llvm.dbg.value(metadata i32 %344, metadata !4010, metadata !DIExpression()), !dbg !4083
  call void @llvm.dbg.value(metadata i32 0, metadata !4017, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4083
  br label %372, !dbg !4033

345:                                              ; preds = %68, %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4015, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata i32 poison, metadata !4016, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata i32 0, metadata !4010, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata i32 4, metadata !4017, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4089
  call void @llvm.dbg.value(metadata i32 0, metadata !4010, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata i32 4, metadata !4017, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata i32 3, metadata !4017, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata ptr undef, metadata !4021, metadata !DIExpression()), !dbg !4091
  call void @llvm.dbg.value(metadata i32 poison, metadata !4026, metadata !DIExpression()), !dbg !4091
  %346 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4093
  %347 = extractvalue { i64, i1 } %346, 1, !dbg !4093
  %348 = mul i64 %46, %69, !dbg !4093
  call void @llvm.dbg.value(metadata i64 %348, metadata !4027, metadata !DIExpression()), !dbg !4091
  %349 = select i1 %347, i64 -1, i64 %348, !dbg !4091
  call void @llvm.dbg.value(metadata i1 %347, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4089
  call void @llvm.dbg.value(metadata i32 3, metadata !4017, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4089
  call void @llvm.dbg.value(metadata i1 %347, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4089
  call void @llvm.dbg.value(metadata i32 3, metadata !4017, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata i32 2, metadata !4017, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata ptr undef, metadata !4021, metadata !DIExpression()), !dbg !4091
  call void @llvm.dbg.value(metadata i32 poison, metadata !4026, metadata !DIExpression()), !dbg !4091
  %350 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %349), !dbg !4093
  %351 = extractvalue { i64, i1 } %350, 1, !dbg !4093
  %352 = mul i64 %349, %69, !dbg !4093
  call void @llvm.dbg.value(metadata i64 %352, metadata !4027, metadata !DIExpression()), !dbg !4091
  %353 = select i1 %351, i64 -1, i64 %352, !dbg !4091
  %354 = or i1 %347, %351, !dbg !4094
  call void @llvm.dbg.value(metadata i1 %354, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4089
  call void @llvm.dbg.value(metadata i32 2, metadata !4017, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4089
  call void @llvm.dbg.value(metadata i1 %354, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4089
  call void @llvm.dbg.value(metadata i32 2, metadata !4017, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata i32 1, metadata !4017, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata ptr undef, metadata !4021, metadata !DIExpression()), !dbg !4091
  call void @llvm.dbg.value(metadata i32 poison, metadata !4026, metadata !DIExpression()), !dbg !4091
  %355 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %353), !dbg !4093
  %356 = extractvalue { i64, i1 } %355, 1, !dbg !4093
  %357 = mul i64 %353, %69, !dbg !4093
  call void @llvm.dbg.value(metadata i64 %357, metadata !4027, metadata !DIExpression()), !dbg !4091
  %358 = select i1 %356, i64 -1, i64 %357, !dbg !4091
  %359 = or i1 %354, %356, !dbg !4094
  call void @llvm.dbg.value(metadata i1 %359, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4089
  call void @llvm.dbg.value(metadata i32 1, metadata !4017, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4089
  call void @llvm.dbg.value(metadata i1 %359, metadata !4010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4089
  call void @llvm.dbg.value(metadata i32 1, metadata !4017, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata i32 0, metadata !4017, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata ptr undef, metadata !4021, metadata !DIExpression()), !dbg !4091
  call void @llvm.dbg.value(metadata i32 poison, metadata !4026, metadata !DIExpression()), !dbg !4091
  %360 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %358), !dbg !4093
  %361 = extractvalue { i64, i1 } %360, 1, !dbg !4093
  %362 = mul i64 %358, %69, !dbg !4093
  call void @llvm.dbg.value(metadata i64 %362, metadata !4027, metadata !DIExpression()), !dbg !4091
  %363 = select i1 %361, i64 -1, i64 %362, !dbg !4091
  %364 = or i1 %359, %361, !dbg !4094
  %365 = zext i1 %364 to i32, !dbg !4094
  call void @llvm.dbg.value(metadata i32 %365, metadata !4010, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata i32 0, metadata !4017, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4089
  br label %372, !dbg !4033

366:                                              ; preds = %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4021, metadata !DIExpression()), !dbg !4095
  call void @llvm.dbg.value(metadata i32 2, metadata !4026, metadata !DIExpression()), !dbg !4095
  %367 = shl i64 %46, 1, !dbg !4097
  call void @llvm.dbg.value(metadata i64 %367, metadata !4027, metadata !DIExpression()), !dbg !4095
  %368 = icmp sgt i64 %46, -1, !dbg !4095
  %369 = select i1 %368, i64 %367, i64 -1, !dbg !4095
  %370 = lshr i64 %46, 63, !dbg !4095
  %371 = trunc i64 %370 to i32, !dbg !4095
  call void @llvm.dbg.value(metadata i32 %371, metadata !3944, metadata !DIExpression()), !dbg !3995
  br label %372, !dbg !4098

372:                                              ; preds = %71, %107, %345, %148, %194, %245, %334, %328, %312, %271, %302, %307, %366, %68
  %373 = phi i64 [ %369, %366 ], [ %46, %68 ], [ %310, %307 ], [ %305, %302 ], [ %299, %271 ], [ %325, %312 ], [ %332, %328 ], [ %342, %334 ], [ %268, %245 ], [ %242, %194 ], [ %191, %148 ], [ %363, %345 ], [ %145, %107 ], [ %104, %71 ], !dbg !3945
  %374 = phi i32 [ %371, %366 ], [ 0, %68 ], [ %311, %307 ], [ %306, %302 ], [ %301, %271 ], [ %327, %312 ], [ %333, %328 ], [ %344, %334 ], [ %270, %245 ], [ %244, %194 ], [ %193, %148 ], [ %365, %345 ], [ %147, %107 ], [ %106, %71 ], !dbg !4099
  call void @llvm.dbg.value(metadata i32 %374, metadata !3944, metadata !DIExpression()), !dbg !3995
  %375 = or i32 %374, %45, !dbg !4033
  call void @llvm.dbg.value(metadata i32 %375, metadata !3939, metadata !DIExpression()), !dbg !3945
  %376 = getelementptr inbounds i8, ptr %26, i64 %70, !dbg !4100
  store ptr %376, ptr %20, align 8, !dbg !4100, !tbaa !860
  %377 = load i8, ptr %376, align 1, !dbg !4101, !tbaa !938
  %378 = icmp eq i8 %377, 0, !dbg !4101
  %379 = or i32 %375, 2
  %380 = select i1 %378, i32 %375, i32 %379, !dbg !4103
  call void @llvm.dbg.value(metadata i32 %380, metadata !3939, metadata !DIExpression()), !dbg !3945
  br label %383

381:                                              ; preds = %68
  call void @llvm.dbg.value(metadata i64 %25, metadata !3938, metadata !DIExpression()), !dbg !3945
  store i64 %46, ptr %3, align 8, !dbg !4104, !tbaa !1218
  %382 = or i32 %45, 2, !dbg !4105
  call void @llvm.dbg.value(metadata i32 %45, metadata !3939, metadata !DIExpression()), !dbg !3945
  br label %386

383:                                              ; preds = %372, %44
  %384 = phi i64 [ %46, %44 ], [ %373, %372 ], !dbg !4106
  %385 = phi i32 [ %45, %44 ], [ %380, %372 ], !dbg !4107
  call void @llvm.dbg.value(metadata i32 %385, metadata !3939, metadata !DIExpression()), !dbg !3945
  call void @llvm.dbg.value(metadata i64 %384, metadata !3938, metadata !DIExpression()), !dbg !3945
  store i64 %384, ptr %3, align 8, !dbg !4108, !tbaa !1218
  br label %386, !dbg !4109

386:                                              ; preds = %43, %53, %383, %33, %30, %28, %37, %381, %22
  %387 = phi i32 [ 4, %22 ], [ %385, %383 ], [ %382, %381 ], [ %54, %53 ], [ %41, %43 ], [ 4, %33 ], [ 4, %30 ], [ 4, %28 ], [ 4, %37 ], !dbg !3945
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #36, !dbg !4110
  ret i32 %387, !dbg !4110
}

; Function Attrs: nounwind
declare !dbg !4111 i64 @strtoumax(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !4116 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4154, metadata !DIExpression()), !dbg !4159
  %2 = tail call i64 @__fpending(ptr noundef %0) #36, !dbg !4160
  call void @llvm.dbg.value(metadata i1 poison, metadata !4155, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4159
  call void @llvm.dbg.value(metadata ptr %0, metadata !4161, metadata !DIExpression()), !dbg !4164
  %3 = load i32, ptr %0, align 8, !dbg !4166, !tbaa !4167
  %4 = and i32 %3, 32, !dbg !4168
  %5 = icmp eq i32 %4, 0, !dbg !4168
  call void @llvm.dbg.value(metadata i1 %5, metadata !4157, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4159
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #36, !dbg !4169
  %7 = icmp eq i32 %6, 0, !dbg !4170
  call void @llvm.dbg.value(metadata i1 %7, metadata !4158, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4159
  br i1 %5, label %8, label %18, !dbg !4171

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !4173
  call void @llvm.dbg.value(metadata i1 %9, metadata !4155, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4159
  %10 = select i1 %7, i1 true, i1 %9, !dbg !4174
  %11 = xor i1 %7, true, !dbg !4174
  %12 = sext i1 %11 to i32, !dbg !4174
  br i1 %10, label %21, label %13, !dbg !4174

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #39, !dbg !4175
  %15 = load i32, ptr %14, align 4, !dbg !4175, !tbaa !929
  %16 = icmp ne i32 %15, 9, !dbg !4176
  %17 = sext i1 %16 to i32, !dbg !4177
  br label %21, !dbg !4177

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !4178

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #39, !dbg !4180
  store i32 0, ptr %20, align 4, !dbg !4182, !tbaa !929
  br label %21, !dbg !4180

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !4159
  ret i32 %22, !dbg !4183
}

; Function Attrs: nounwind
declare !dbg !4184 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !4188 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4226, metadata !DIExpression()), !dbg !4230
  call void @llvm.dbg.value(metadata i32 0, metadata !4227, metadata !DIExpression()), !dbg !4230
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !4231
  call void @llvm.dbg.value(metadata i32 %2, metadata !4228, metadata !DIExpression()), !dbg !4230
  %3 = icmp slt i32 %2, 0, !dbg !4232
  br i1 %3, label %4, label %6, !dbg !4234

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4235
  br label %24, !dbg !4236

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #36, !dbg !4237
  %8 = icmp eq i32 %7, 0, !dbg !4237
  br i1 %8, label %13, label %9, !dbg !4239

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !4240
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #36, !dbg !4241
  %12 = icmp eq i64 %11, -1, !dbg !4242
  br i1 %12, label %16, label %13, !dbg !4243

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #36, !dbg !4244
  %15 = icmp eq i32 %14, 0, !dbg !4244
  br i1 %15, label %16, label %18, !dbg !4245

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !4227, metadata !DIExpression()), !dbg !4230
  call void @llvm.dbg.value(metadata i32 0, metadata !4229, metadata !DIExpression()), !dbg !4230
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4246
  call void @llvm.dbg.value(metadata i32 %17, metadata !4229, metadata !DIExpression()), !dbg !4230
  br label %24, !dbg !4247

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #39, !dbg !4248
  %20 = load i32, ptr %19, align 4, !dbg !4248, !tbaa !929
  call void @llvm.dbg.value(metadata i32 %20, metadata !4227, metadata !DIExpression()), !dbg !4230
  call void @llvm.dbg.value(metadata i32 0, metadata !4229, metadata !DIExpression()), !dbg !4230
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4246
  call void @llvm.dbg.value(metadata i32 %21, metadata !4229, metadata !DIExpression()), !dbg !4230
  %22 = icmp eq i32 %20, 0, !dbg !4249
  br i1 %22, label %24, label %23, !dbg !4247

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !4251, !tbaa !929
  call void @llvm.dbg.value(metadata i32 -1, metadata !4229, metadata !DIExpression()), !dbg !4230
  br label %24, !dbg !4253

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4230
  ret i32 %25, !dbg !4254
}

; Function Attrs: nofree nounwind
declare !dbg !4255 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !4256 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !4257 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4258 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !4261 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4299, metadata !DIExpression()), !dbg !4300
  %2 = icmp eq ptr %0, null, !dbg !4301
  br i1 %2, label %6, label %3, !dbg !4303

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #36, !dbg !4304
  %5 = icmp eq i32 %4, 0, !dbg !4304
  br i1 %5, label %6, label %8, !dbg !4305

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !4306
  br label %16, !dbg !4307

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !4308, metadata !DIExpression()), !dbg !4313
  %9 = load i32, ptr %0, align 8, !dbg !4315, !tbaa !4167
  %10 = and i32 %9, 256, !dbg !4317
  %11 = icmp eq i32 %10, 0, !dbg !4317
  br i1 %11, label %14, label %12, !dbg !4318

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #36, !dbg !4319
  br label %14, !dbg !4319

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !4320
  br label %16, !dbg !4321

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !4300
  ret i32 %17, !dbg !4322
}

; Function Attrs: nofree nounwind
declare !dbg !4323 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !4324 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4363, metadata !DIExpression()), !dbg !4369
  call void @llvm.dbg.value(metadata i64 %1, metadata !4364, metadata !DIExpression()), !dbg !4369
  call void @llvm.dbg.value(metadata i32 %2, metadata !4365, metadata !DIExpression()), !dbg !4369
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !4370
  %5 = load ptr, ptr %4, align 8, !dbg !4370, !tbaa !4371
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !4372
  %7 = load ptr, ptr %6, align 8, !dbg !4372, !tbaa !4373
  %8 = icmp eq ptr %5, %7, !dbg !4374
  br i1 %8, label %9, label %27, !dbg !4375

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !4376
  %11 = load ptr, ptr %10, align 8, !dbg !4376, !tbaa !1478
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !4377
  %13 = load ptr, ptr %12, align 8, !dbg !4377, !tbaa !4378
  %14 = icmp eq ptr %11, %13, !dbg !4379
  br i1 %14, label %15, label %27, !dbg !4380

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !4381
  %17 = load ptr, ptr %16, align 8, !dbg !4381, !tbaa !4382
  %18 = icmp eq ptr %17, null, !dbg !4383
  br i1 %18, label %19, label %27, !dbg !4384

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !4385
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #36, !dbg !4386
  call void @llvm.dbg.value(metadata i64 %21, metadata !4366, metadata !DIExpression()), !dbg !4387
  %22 = icmp eq i64 %21, -1, !dbg !4388
  br i1 %22, label %29, label %23, !dbg !4390

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !4391, !tbaa !4167
  %25 = and i32 %24, -17, !dbg !4391
  store i32 %25, ptr %0, align 8, !dbg !4391, !tbaa !4167
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !4392
  store i64 %21, ptr %26, align 8, !dbg !4393, !tbaa !4394
  br label %29, !dbg !4395

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !4396
  br label %29, !dbg !4397

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !4369
  ret i32 %30, !dbg !4398
}

; Function Attrs: nofree nounwind
declare !dbg !4399 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4402 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4407, metadata !DIExpression()), !dbg !4412
  call void @llvm.dbg.value(metadata ptr %1, metadata !4408, metadata !DIExpression()), !dbg !4412
  call void @llvm.dbg.value(metadata i64 %2, metadata !4409, metadata !DIExpression()), !dbg !4412
  call void @llvm.dbg.value(metadata ptr %3, metadata !4410, metadata !DIExpression()), !dbg !4412
  %5 = icmp eq ptr %1, null, !dbg !4413
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4415
  %7 = select i1 %5, ptr @.str.157, ptr %1, !dbg !4415
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4415
  call void @llvm.dbg.value(metadata i64 %8, metadata !4409, metadata !DIExpression()), !dbg !4412
  call void @llvm.dbg.value(metadata ptr %7, metadata !4408, metadata !DIExpression()), !dbg !4412
  call void @llvm.dbg.value(metadata ptr %6, metadata !4407, metadata !DIExpression()), !dbg !4412
  %9 = icmp eq ptr %3, null, !dbg !4416
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4418
  call void @llvm.dbg.value(metadata ptr %10, metadata !4410, metadata !DIExpression()), !dbg !4412
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #36, !dbg !4419
  call void @llvm.dbg.value(metadata i64 %11, metadata !4411, metadata !DIExpression()), !dbg !4412
  %12 = icmp ult i64 %11, -3, !dbg !4420
  br i1 %12, label %13, label %17, !dbg !4422

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #37, !dbg !4423
  %15 = icmp eq i32 %14, 0, !dbg !4423
  br i1 %15, label %16, label %29, !dbg !4424

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4425, metadata !DIExpression()), !dbg !4430
  call void @llvm.dbg.value(metadata ptr %10, metadata !4432, metadata !DIExpression()), !dbg !4437
  call void @llvm.dbg.value(metadata i32 0, metadata !4435, metadata !DIExpression()), !dbg !4437
  call void @llvm.dbg.value(metadata i64 8, metadata !4436, metadata !DIExpression()), !dbg !4437
  store i64 0, ptr %10, align 1, !dbg !4439
  br label %29, !dbg !4440

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4441
  br i1 %18, label %19, label %20, !dbg !4443

19:                                               ; preds = %17
  tail call void @abort() #38, !dbg !4444
  unreachable, !dbg !4444

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4445

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #36, !dbg !4447
  br i1 %23, label %29, label %24, !dbg !4448

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4449
  br i1 %25, label %29, label %26, !dbg !4452

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4453, !tbaa !938
  %28 = zext i8 %27 to i32, !dbg !4454
  store i32 %28, ptr %6, align 4, !dbg !4455, !tbaa !929
  br label %29, !dbg !4456

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4412
  ret i64 %30, !dbg !4457
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4458 i32 @mbsinit(ptr noundef) local_unnamed_addr #34

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #35 !dbg !4464 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4466, metadata !DIExpression()), !dbg !4470
  call void @llvm.dbg.value(metadata i64 %1, metadata !4467, metadata !DIExpression()), !dbg !4470
  call void @llvm.dbg.value(metadata i64 %2, metadata !4468, metadata !DIExpression()), !dbg !4470
  %4 = icmp eq i64 %2, 0, !dbg !4471
  br i1 %4, label %8, label %5, !dbg !4471

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !4471
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4471
  br i1 %7, label %13, label %8, !dbg !4471

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4469, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4470
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4469, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4470
  %9 = mul i64 %2, %1, !dbg !4471
  call void @llvm.dbg.value(metadata i64 %9, metadata !4469, metadata !DIExpression()), !dbg !4470
  call void @llvm.dbg.value(metadata ptr %0, metadata !4473, metadata !DIExpression()), !dbg !4477
  call void @llvm.dbg.value(metadata i64 %9, metadata !4476, metadata !DIExpression()), !dbg !4477
  %10 = icmp eq i64 %9, 0, !dbg !4479
  %11 = select i1 %10, i64 1, i64 %9, !dbg !4479
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #44, !dbg !4480
  br label %15, !dbg !4481

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4469, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4470
  %14 = tail call ptr @__errno_location() #39, !dbg !4482
  store i32 12, ptr %14, align 4, !dbg !4484, !tbaa !929
  br label %15, !dbg !4485

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !4470
  ret ptr %16, !dbg !4486
}

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !4487 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !4491, metadata !DIExpression()), !dbg !4496
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #36, !dbg !4497
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4492, metadata !DIExpression()), !dbg !4498
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #36, !dbg !4499
  %4 = icmp eq i32 %3, 0, !dbg !4499
  br i1 %4, label %5, label %12, !dbg !4501

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4502, metadata !DIExpression()), !dbg !4506
  call void @llvm.dbg.value(metadata ptr @.str.162, metadata !4505, metadata !DIExpression()), !dbg !4506
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.162, i64 2), !dbg !4509
  %7 = icmp eq i32 %6, 0, !dbg !4510
  br i1 %7, label %11, label %8, !dbg !4511

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4502, metadata !DIExpression()), !dbg !4512
  call void @llvm.dbg.value(metadata ptr @.str.1.163, metadata !4505, metadata !DIExpression()), !dbg !4512
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.163, i64 6), !dbg !4514
  %10 = icmp eq i32 %9, 0, !dbg !4515
  br i1 %10, label %11, label %12, !dbg !4516

11:                                               ; preds = %8, %5
  br label %12, !dbg !4517

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4496
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #36, !dbg !4518
  ret i1 %13, !dbg !4518
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4519 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4523, metadata !DIExpression()), !dbg !4526
  call void @llvm.dbg.value(metadata ptr %1, metadata !4524, metadata !DIExpression()), !dbg !4526
  call void @llvm.dbg.value(metadata i64 %2, metadata !4525, metadata !DIExpression()), !dbg !4526
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #36, !dbg !4527
  ret i32 %4, !dbg !4528
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !4529 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4533, metadata !DIExpression()), !dbg !4534
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #36, !dbg !4535
  ret ptr %2, !dbg !4536
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !4537 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4539, metadata !DIExpression()), !dbg !4541
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #36, !dbg !4542
  call void @llvm.dbg.value(metadata ptr %2, metadata !4540, metadata !DIExpression()), !dbg !4541
  ret ptr %2, !dbg !4543
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4544 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4546, metadata !DIExpression()), !dbg !4553
  call void @llvm.dbg.value(metadata ptr %1, metadata !4547, metadata !DIExpression()), !dbg !4553
  call void @llvm.dbg.value(metadata i64 %2, metadata !4548, metadata !DIExpression()), !dbg !4553
  call void @llvm.dbg.value(metadata i32 %0, metadata !4539, metadata !DIExpression()), !dbg !4554
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #36, !dbg !4556
  call void @llvm.dbg.value(metadata ptr %4, metadata !4540, metadata !DIExpression()), !dbg !4554
  call void @llvm.dbg.value(metadata ptr %4, metadata !4549, metadata !DIExpression()), !dbg !4553
  %5 = icmp eq ptr %4, null, !dbg !4557
  br i1 %5, label %6, label %9, !dbg !4558

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4559
  br i1 %7, label %19, label %8, !dbg !4562

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !4563, !tbaa !938
  br label %19, !dbg !4564

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #37, !dbg !4565
  call void @llvm.dbg.value(metadata i64 %10, metadata !4550, metadata !DIExpression()), !dbg !4566
  %11 = icmp ult i64 %10, %2, !dbg !4567
  br i1 %11, label %12, label %14, !dbg !4569

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4570
  call void @llvm.dbg.value(metadata ptr %1, metadata !4572, metadata !DIExpression()), !dbg !4577
  call void @llvm.dbg.value(metadata ptr %4, metadata !4575, metadata !DIExpression()), !dbg !4577
  call void @llvm.dbg.value(metadata i64 %13, metadata !4576, metadata !DIExpression()), !dbg !4577
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #36, !dbg !4579
  br label %19, !dbg !4580

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4581
  br i1 %15, label %19, label %16, !dbg !4584

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4585
  call void @llvm.dbg.value(metadata ptr %1, metadata !4572, metadata !DIExpression()), !dbg !4587
  call void @llvm.dbg.value(metadata ptr %4, metadata !4575, metadata !DIExpression()), !dbg !4587
  call void @llvm.dbg.value(metadata i64 %17, metadata !4576, metadata !DIExpression()), !dbg !4587
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #36, !dbg !4589
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !4590
  store i8 0, ptr %18, align 1, !dbg !4591, !tbaa !938
  br label %19, !dbg !4592

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4593
  ret i32 %20, !dbg !4594
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
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #14 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #15 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #17 = { nocallback nofree nosync nounwind willreturn }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #20 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #21 = { nofree nounwind willreturn memory(argmem: read) }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
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
attributes #42 = { nounwind allocsize(0) }
attributes #43 = { nounwind allocsize(0,1) }
attributes #44 = { nounwind allocsize(1) }

!llvm.dbg.cu = !{!81, !759, !433, !437, !452, !725, !761, !763, !765, !506, !520, !568, !774, !719, !781, !815, !817, !824, !826, !828, !830, !741, !832, !835, !837, !839}
!llvm.ident = !{!841, !841, !841, !841, !841, !841, !841, !841, !841, !841, !841, !841, !841, !841, !841, !841, !841, !841, !841, !841, !841, !841, !841, !841, !841, !841}
!llvm.module.flags = !{!842, !843, !844, !845, !846, !847, !848}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 50, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/mknod.c", directory: "/src", checksumkind: CSK_MD5, checksum: "71829bff1470ae8ec88dbb00f89cc303")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 53, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 376, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 47)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 55, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 392, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 49)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 61, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 6)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 61, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 632, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 79)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 65, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 64)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 69, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1016, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 127)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 74, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 50)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 75, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 62)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 76, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2088, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 261)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !2, line: 83, type: !34, isLocal: true, isDefinition: true)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(scope: null, file: !2, line: 89, type: !56, isLocal: true, isDefinition: true)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1480, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 185)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(scope: null, file: !2, line: 104, type: !61, isLocal: true, isDefinition: true)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 1)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(scope: null, file: !2, line: 105, type: !66, isLocal: true, isDefinition: true)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 10)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(scope: null, file: !2, line: 105, type: !71, isLocal: true, isDefinition: true)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 24)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(scope: null, file: !2, line: 111, type: !76, isLocal: true, isDefinition: true)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 4)
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(name: "longopts", scope: !81, file: !2, line: 37, type: !418, isLocal: true, isDefinition: true)
!81 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !82, retainedTypes: !127, globals: !141, splitDebugInlining: false, nameTableKind: None)
!82 = !{!83, !89, !98, !112}
!83 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !84, line: 337, baseType: !85, size: 32, elements: !86)
!84 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!85 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!86 = !{!87, !88}
!87 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -2)
!88 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -3)
!89 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !90, line: 30, baseType: !91, size: 32, elements: !92)
!90 = !DIFile(filename: "./lib/xstrtol.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c0c36b5479e234e245bae53a387a6d92")
!91 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!92 = !{!93, !94, !95, !96, !97}
!93 = !DIEnumerator(name: "LONGINT_OK", value: 0)
!94 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1)
!95 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2)
!96 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3)
!97 = !DIEnumerator(name: "LONGINT_INVALID", value: 4)
!98 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !99, line: 42, baseType: !91, size: 32, elements: !100)
!99 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!100 = !{!101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111}
!101 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!102 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!103 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!104 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!105 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!106 = !DIEnumerator(name: "c_quoting_style", value: 5)
!107 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!108 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!109 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!110 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!111 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!112 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !113, line: 46, baseType: !91, size: 32, elements: !114)
!113 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!114 = !{!115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126}
!115 = !DIEnumerator(name: "_ISupper", value: 256)
!116 = !DIEnumerator(name: "_ISlower", value: 512)
!117 = !DIEnumerator(name: "_ISalpha", value: 1024)
!118 = !DIEnumerator(name: "_ISdigit", value: 2048)
!119 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!120 = !DIEnumerator(name: "_ISspace", value: 8192)
!121 = !DIEnumerator(name: "_ISprint", value: 16384)
!122 = !DIEnumerator(name: "_ISgraph", value: 32768)
!123 = !DIEnumerator(name: "_ISblank", value: 1)
!124 = !DIEnumerator(name: "_IScntrl", value: 2)
!125 = !DIEnumerator(name: "_ISpunct", value: 4)
!126 = !DIEnumerator(name: "_ISalnum", value: 8)
!127 = !{!128, !129, !91, !130, !85, !135, !136, !138, !140, !132}
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !131, line: 59, baseType: !132)
!131 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !133, line: 145, baseType: !134)
!133 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!134 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!135 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !137, line: 46, baseType: !134)
!137 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!140 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!141 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !52, !54, !59, !64, !69, !74, !142, !147, !152, !157, !162, !167, !169, !174, !176, !181, !186, !188, !190, !195, !197, !202, !207, !212, !217, !222, !304, !309, !311, !313, !315, !320, !322, !324, !326, !328, !330, !332, !337, !342, !344, !346, !348, !350, !352, !354, !356, !361, !366, !371, !373, !375, !377, !379, !381, !386, !388, !390, !395, !400, !405, !410, !412, !414, !416, !79}
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(scope: null, file: !2, line: 138, type: !144, isLocal: true, isDefinition: true)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 584, elements: !145)
!145 = !{!146}
!146 = !DISubrange(count: 73)
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(scope: null, file: !2, line: 144, type: !149, isLocal: true, isDefinition: true)
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !150)
!150 = !{!151}
!151 = !DISubrange(count: 14)
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(scope: null, file: !2, line: 144, type: !154, isLocal: true, isDefinition: true)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !155)
!155 = !{!156}
!156 = !DISubrange(count: 16)
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(scope: null, file: !2, line: 155, type: !159, isLocal: true, isDefinition: true)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !160)
!160 = !{!161}
!161 = !DISubrange(count: 13)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(scope: null, file: !2, line: 161, type: !164, isLocal: true, isDefinition: true)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !165)
!165 = !{!166}
!166 = !DISubrange(count: 44)
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(scope: null, file: !2, line: 175, type: !154, isLocal: true, isDefinition: true)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(scope: null, file: !2, line: 177, type: !171, isLocal: true, isDefinition: true)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !172)
!172 = !{!173}
!173 = !DISubrange(count: 25)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(scope: null, file: !2, line: 179, type: !76, isLocal: true, isDefinition: true)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(scope: null, file: !2, line: 179, type: !178, isLocal: true, isDefinition: true)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 432, elements: !179)
!179 = !{!180}
!180 = !DISubrange(count: 54)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(scope: null, file: !2, line: 186, type: !183, isLocal: true, isDefinition: true)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !184)
!184 = !{!185}
!185 = !DISubrange(count: 17)
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(scope: null, file: !2, line: 189, type: !39, isLocal: true, isDefinition: true)
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression())
!189 = distinct !DIGlobalVariable(scope: null, file: !2, line: 203, type: !39, isLocal: true, isDefinition: true)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(scope: null, file: !2, line: 237, type: !192, isLocal: true, isDefinition: true)
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !193)
!193 = !{!194}
!194 = !DISubrange(count: 31)
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(scope: null, file: !2, line: 244, type: !192, isLocal: true, isDefinition: true)
!197 = !DIGlobalVariableExpression(var: !198, expr: !DIExpression())
!198 = distinct !DIGlobalVariable(scope: null, file: !2, line: 250, type: !199, isLocal: true, isDefinition: true)
!199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !200)
!200 = !{!201}
!201 = !DISubrange(count: 21)
!202 = !DIGlobalVariableExpression(var: !203, expr: !DIExpression())
!203 = distinct !DIGlobalVariable(scope: null, file: !2, line: 258, type: !204, isLocal: true, isDefinition: true)
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !205)
!205 = !{!206}
!206 = !DISubrange(count: 3)
!207 = !DIGlobalVariableExpression(var: !208, expr: !DIExpression())
!208 = distinct !DIGlobalVariable(scope: null, file: !2, line: 270, type: !209, isLocal: true, isDefinition: true)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !210)
!210 = !{!211}
!211 = !DISubrange(count: 23)
!212 = !DIGlobalVariableExpression(var: !213, expr: !DIExpression())
!213 = distinct !DIGlobalVariable(scope: null, file: !2, line: 275, type: !214, isLocal: true, isDefinition: true)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !215)
!215 = !{!216}
!216 = !DISubrange(count: 29)
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(scope: null, file: !84, line: 736, type: !219, isLocal: true, isDefinition: true)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 600, elements: !220)
!220 = !{!221}
!221 = !DISubrange(count: 75)
!222 = !DIGlobalVariableExpression(var: !223, expr: !DIExpression())
!223 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !224, file: !84, line: 575, type: !85, isLocal: true, isDefinition: true)
!224 = distinct !DISubprogram(name: "oputs_", scope: !84, file: !84, line: 573, type: !225, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !227)
!225 = !DISubroutineType(cc: DW_CC_nocall, types: !226)
!226 = !{null, !138, !138}
!227 = !{!228, !229, !230, !233, !235, !236, !237, !241, !242, !243, !244, !246, !298, !299, !300, !302, !303}
!228 = !DILocalVariable(name: "program", arg: 1, scope: !224, file: !84, line: 573, type: !138)
!229 = !DILocalVariable(name: "option", arg: 2, scope: !224, file: !84, line: 573, type: !138)
!230 = !DILocalVariable(name: "term", scope: !231, file: !84, line: 585, type: !138)
!231 = distinct !DILexicalBlock(scope: !232, file: !84, line: 582, column: 5)
!232 = distinct !DILexicalBlock(scope: !224, file: !84, line: 581, column: 7)
!233 = !DILocalVariable(name: "double_space", scope: !224, file: !84, line: 594, type: !234)
!234 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!235 = !DILocalVariable(name: "first_word", scope: !224, file: !84, line: 595, type: !138)
!236 = !DILocalVariable(name: "option_text", scope: !224, file: !84, line: 596, type: !138)
!237 = !DILocalVariable(name: "s", scope: !238, file: !84, line: 608, type: !138)
!238 = distinct !DILexicalBlock(scope: !239, file: !84, line: 605, column: 5)
!239 = distinct !DILexicalBlock(scope: !240, file: !84, line: 604, column: 12)
!240 = distinct !DILexicalBlock(scope: !224, file: !84, line: 597, column: 7)
!241 = !DILocalVariable(name: "spaces", scope: !238, file: !84, line: 609, type: !136)
!242 = !DILocalVariable(name: "anchor_len", scope: !224, file: !84, line: 620, type: !136)
!243 = !DILocalVariable(name: "desc_text", scope: !224, file: !84, line: 625, type: !138)
!244 = !DILocalVariable(name: "__ptr", scope: !245, file: !84, line: 644, type: !138)
!245 = distinct !DILexicalBlock(scope: !224, file: !84, line: 644, column: 3)
!246 = !DILocalVariable(name: "__stream", scope: !245, file: !84, line: 644, type: !247)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !249, line: 7, baseType: !250)
!249 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !251, line: 49, size: 1728, elements: !252)
!251 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!252 = !{!253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !268, !270, !271, !272, !275, !276, !278, !279, !282, !284, !287, !290, !291, !292, !293, !294}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !250, file: !251, line: 51, baseType: !85, size: 32)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !250, file: !251, line: 54, baseType: !128, size: 64, offset: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !250, file: !251, line: 55, baseType: !128, size: 64, offset: 128)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !250, file: !251, line: 56, baseType: !128, size: 64, offset: 192)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !250, file: !251, line: 57, baseType: !128, size: 64, offset: 256)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !250, file: !251, line: 58, baseType: !128, size: 64, offset: 320)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !250, file: !251, line: 59, baseType: !128, size: 64, offset: 384)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !250, file: !251, line: 60, baseType: !128, size: 64, offset: 448)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !250, file: !251, line: 61, baseType: !128, size: 64, offset: 512)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !250, file: !251, line: 64, baseType: !128, size: 64, offset: 576)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !250, file: !251, line: 65, baseType: !128, size: 64, offset: 640)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !250, file: !251, line: 66, baseType: !128, size: 64, offset: 704)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !250, file: !251, line: 68, baseType: !266, size: 64, offset: 768)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !251, line: 36, flags: DIFlagFwdDecl)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !250, file: !251, line: 70, baseType: !269, size: 64, offset: 832)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !250, file: !251, line: 72, baseType: !85, size: 32, offset: 896)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !250, file: !251, line: 73, baseType: !85, size: 32, offset: 928)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !250, file: !251, line: 74, baseType: !273, size: 64, offset: 960)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !133, line: 152, baseType: !274)
!274 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !250, file: !251, line: 77, baseType: !135, size: 16, offset: 1024)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !250, file: !251, line: 78, baseType: !277, size: 8, offset: 1040)
!277 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !250, file: !251, line: 79, baseType: !61, size: 8, offset: 1048)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !250, file: !251, line: 81, baseType: !280, size: 64, offset: 1088)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !251, line: 43, baseType: null)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !250, file: !251, line: 89, baseType: !283, size: 64, offset: 1152)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !133, line: 153, baseType: !274)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !250, file: !251, line: 91, baseType: !285, size: 64, offset: 1216)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !251, line: 37, flags: DIFlagFwdDecl)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !250, file: !251, line: 92, baseType: !288, size: 64, offset: 1280)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !251, line: 38, flags: DIFlagFwdDecl)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !250, file: !251, line: 93, baseType: !269, size: 64, offset: 1344)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !250, file: !251, line: 94, baseType: !129, size: 64, offset: 1408)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !250, file: !251, line: 95, baseType: !136, size: 64, offset: 1472)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !250, file: !251, line: 96, baseType: !85, size: 32, offset: 1536)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !250, file: !251, line: 98, baseType: !295, size: 160, offset: 1568)
!295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !296)
!296 = !{!297}
!297 = !DISubrange(count: 20)
!298 = !DILocalVariable(name: "__cnt", scope: !245, file: !84, line: 644, type: !136)
!299 = !DILocalVariable(name: "url_program", scope: !224, file: !84, line: 648, type: !138)
!300 = !DILocalVariable(name: "__ptr", scope: !301, file: !84, line: 686, type: !138)
!301 = distinct !DILexicalBlock(scope: !224, file: !84, line: 686, column: 3)
!302 = !DILocalVariable(name: "__stream", scope: !301, file: !84, line: 686, type: !247)
!303 = !DILocalVariable(name: "__cnt", scope: !301, file: !84, line: 686, type: !136)
!304 = !DIGlobalVariableExpression(var: !305, expr: !DIExpression())
!305 = distinct !DIGlobalVariable(scope: null, file: !84, line: 585, type: !306, isLocal: true, isDefinition: true)
!306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !307)
!307 = !{!308}
!308 = !DISubrange(count: 5)
!309 = !DIGlobalVariableExpression(var: !310, expr: !DIExpression())
!310 = distinct !DIGlobalVariable(scope: null, file: !84, line: 586, type: !306, isLocal: true, isDefinition: true)
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(scope: null, file: !84, line: 595, type: !76, isLocal: true, isDefinition: true)
!313 = !DIGlobalVariableExpression(var: !314, expr: !DIExpression())
!314 = distinct !DIGlobalVariable(scope: null, file: !84, line: 620, type: !19, isLocal: true, isDefinition: true)
!315 = !DIGlobalVariableExpression(var: !316, expr: !DIExpression())
!316 = distinct !DIGlobalVariable(scope: null, file: !84, line: 648, type: !317, isLocal: true, isDefinition: true)
!317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !318)
!318 = !{!319}
!319 = !DISubrange(count: 2)
!320 = !DIGlobalVariableExpression(var: !321, expr: !DIExpression())
!321 = distinct !DIGlobalVariable(scope: null, file: !84, line: 648, type: !306, isLocal: true, isDefinition: true)
!322 = !DIGlobalVariableExpression(var: !323, expr: !DIExpression())
!323 = distinct !DIGlobalVariable(scope: null, file: !84, line: 649, type: !76, isLocal: true, isDefinition: true)
!324 = !DIGlobalVariableExpression(var: !325, expr: !DIExpression())
!325 = distinct !DIGlobalVariable(scope: null, file: !84, line: 649, type: !204, isLocal: true, isDefinition: true)
!326 = !DIGlobalVariableExpression(var: !327, expr: !DIExpression())
!327 = distinct !DIGlobalVariable(scope: null, file: !84, line: 650, type: !306, isLocal: true, isDefinition: true)
!328 = !DIGlobalVariableExpression(var: !329, expr: !DIExpression())
!329 = distinct !DIGlobalVariable(scope: null, file: !84, line: 651, type: !19, isLocal: true, isDefinition: true)
!330 = !DIGlobalVariableExpression(var: !331, expr: !DIExpression())
!331 = distinct !DIGlobalVariable(scope: null, file: !84, line: 651, type: !19, isLocal: true, isDefinition: true)
!332 = !DIGlobalVariableExpression(var: !333, expr: !DIExpression())
!333 = distinct !DIGlobalVariable(scope: null, file: !84, line: 652, type: !334, isLocal: true, isDefinition: true)
!334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !335)
!335 = !{!336}
!336 = !DISubrange(count: 7)
!337 = !DIGlobalVariableExpression(var: !338, expr: !DIExpression())
!338 = distinct !DIGlobalVariable(scope: null, file: !84, line: 653, type: !339, isLocal: true, isDefinition: true)
!339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !340)
!340 = !{!341}
!341 = !DISubrange(count: 8)
!342 = !DIGlobalVariableExpression(var: !343, expr: !DIExpression())
!343 = distinct !DIGlobalVariable(scope: null, file: !84, line: 654, type: !66, isLocal: true, isDefinition: true)
!344 = !DIGlobalVariableExpression(var: !345, expr: !DIExpression())
!345 = distinct !DIGlobalVariable(scope: null, file: !84, line: 655, type: !66, isLocal: true, isDefinition: true)
!346 = !DIGlobalVariableExpression(var: !347, expr: !DIExpression())
!347 = distinct !DIGlobalVariable(scope: null, file: !84, line: 656, type: !66, isLocal: true, isDefinition: true)
!348 = !DIGlobalVariableExpression(var: !349, expr: !DIExpression())
!349 = distinct !DIGlobalVariable(scope: null, file: !84, line: 657, type: !66, isLocal: true, isDefinition: true)
!350 = !DIGlobalVariableExpression(var: !351, expr: !DIExpression())
!351 = distinct !DIGlobalVariable(scope: null, file: !84, line: 663, type: !334, isLocal: true, isDefinition: true)
!352 = !DIGlobalVariableExpression(var: !353, expr: !DIExpression())
!353 = distinct !DIGlobalVariable(scope: null, file: !84, line: 664, type: !66, isLocal: true, isDefinition: true)
!354 = !DIGlobalVariableExpression(var: !355, expr: !DIExpression())
!355 = distinct !DIGlobalVariable(scope: null, file: !84, line: 669, type: !183, isLocal: true, isDefinition: true)
!356 = !DIGlobalVariableExpression(var: !357, expr: !DIExpression())
!357 = distinct !DIGlobalVariable(scope: null, file: !84, line: 669, type: !358, isLocal: true, isDefinition: true)
!358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !359)
!359 = !{!360}
!360 = !DISubrange(count: 40)
!361 = !DIGlobalVariableExpression(var: !362, expr: !DIExpression())
!362 = distinct !DIGlobalVariable(scope: null, file: !84, line: 676, type: !363, isLocal: true, isDefinition: true)
!363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !364)
!364 = !{!365}
!365 = !DISubrange(count: 15)
!366 = !DIGlobalVariableExpression(var: !367, expr: !DIExpression())
!367 = distinct !DIGlobalVariable(scope: null, file: !84, line: 676, type: !368, isLocal: true, isDefinition: true)
!368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !369)
!369 = !{!370}
!370 = !DISubrange(count: 61)
!371 = !DIGlobalVariableExpression(var: !372, expr: !DIExpression())
!372 = distinct !DIGlobalVariable(scope: null, file: !84, line: 679, type: !204, isLocal: true, isDefinition: true)
!373 = !DIGlobalVariableExpression(var: !374, expr: !DIExpression())
!374 = distinct !DIGlobalVariable(scope: null, file: !84, line: 683, type: !306, isLocal: true, isDefinition: true)
!375 = !DIGlobalVariableExpression(var: !376, expr: !DIExpression())
!376 = distinct !DIGlobalVariable(scope: null, file: !84, line: 688, type: !306, isLocal: true, isDefinition: true)
!377 = !DIGlobalVariableExpression(var: !378, expr: !DIExpression())
!378 = distinct !DIGlobalVariable(scope: null, file: !84, line: 691, type: !339, isLocal: true, isDefinition: true)
!379 = !DIGlobalVariableExpression(var: !380, expr: !DIExpression())
!380 = distinct !DIGlobalVariable(scope: null, file: !84, line: 839, type: !154, isLocal: true, isDefinition: true)
!381 = !DIGlobalVariableExpression(var: !382, expr: !DIExpression())
!382 = distinct !DIGlobalVariable(scope: null, file: !84, line: 840, type: !383, isLocal: true, isDefinition: true)
!383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !384)
!384 = !{!385}
!385 = !DISubrange(count: 22)
!386 = !DIGlobalVariableExpression(var: !387, expr: !DIExpression())
!387 = distinct !DIGlobalVariable(scope: null, file: !84, line: 841, type: !363, isLocal: true, isDefinition: true)
!388 = !DIGlobalVariableExpression(var: !389, expr: !DIExpression())
!389 = distinct !DIGlobalVariable(scope: null, file: !84, line: 862, type: !76, isLocal: true, isDefinition: true)
!390 = !DIGlobalVariableExpression(var: !391, expr: !DIExpression())
!391 = distinct !DIGlobalVariable(scope: null, file: !84, line: 868, type: !392, isLocal: true, isDefinition: true)
!392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !393)
!393 = !{!394}
!394 = !DISubrange(count: 71)
!395 = !DIGlobalVariableExpression(var: !396, expr: !DIExpression())
!396 = distinct !DIGlobalVariable(scope: null, file: !84, line: 875, type: !397, isLocal: true, isDefinition: true)
!397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !398)
!398 = !{!399}
!399 = !DISubrange(count: 27)
!400 = !DIGlobalVariableExpression(var: !401, expr: !DIExpression())
!401 = distinct !DIGlobalVariable(scope: null, file: !84, line: 877, type: !402, isLocal: true, isDefinition: true)
!402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !403)
!403 = !{!404}
!404 = !DISubrange(count: 51)
!405 = !DIGlobalVariableExpression(var: !406, expr: !DIExpression())
!406 = distinct !DIGlobalVariable(scope: null, file: !84, line: 877, type: !407, isLocal: true, isDefinition: true)
!407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !408)
!408 = !{!409}
!409 = !DISubrange(count: 12)
!410 = !DIGlobalVariableExpression(var: !411, expr: !DIExpression())
!411 = distinct !DIGlobalVariable(scope: null, file: !2, line: 39, type: !339, isLocal: true, isDefinition: true)
!412 = !DIGlobalVariableExpression(var: !413, expr: !DIExpression())
!413 = distinct !DIGlobalVariable(scope: null, file: !2, line: 40, type: !306, isLocal: true, isDefinition: true)
!414 = !DIGlobalVariableExpression(var: !415, expr: !DIExpression())
!415 = distinct !DIGlobalVariable(scope: null, file: !2, line: 41, type: !306, isLocal: true, isDefinition: true)
!416 = !DIGlobalVariableExpression(var: !417, expr: !DIExpression())
!417 = distinct !DIGlobalVariable(scope: null, file: !2, line: 42, type: !339, isLocal: true, isDefinition: true)
!418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, size: 1280, elements: !307)
!419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !420)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !421, line: 50, size: 256, elements: !422)
!421 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!422 = !{!423, !424, !425, !427}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !420, file: !421, line: 52, baseType: !138, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !420, file: !421, line: 55, baseType: !85, size: 32, offset: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !420, file: !421, line: 56, baseType: !426, size: 64, offset: 128)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !420, file: !421, line: 57, baseType: !85, size: 32, offset: 192)
!428 = !DIGlobalVariableExpression(var: !429, expr: !DIExpression())
!429 = distinct !DIGlobalVariable(scope: null, file: !430, line: 3, type: !363, isLocal: true, isDefinition: true)
!430 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!431 = !DIGlobalVariableExpression(var: !432, expr: !DIExpression())
!432 = distinct !DIGlobalVariable(name: "Version", scope: !433, file: !430, line: 3, type: !138, isLocal: false, isDefinition: true)
!433 = distinct !DICompileUnit(language: DW_LANG_C11, file: !430, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !434, splitDebugInlining: false, nameTableKind: None)
!434 = !{!428, !431}
!435 = !DIGlobalVariableExpression(var: !436, expr: !DIExpression())
!436 = distinct !DIGlobalVariable(name: "file_name", scope: !437, file: !438, line: 45, type: !138, isLocal: true, isDefinition: true)
!437 = distinct !DICompileUnit(language: DW_LANG_C11, file: !438, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !439, splitDebugInlining: false, nameTableKind: None)
!438 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!439 = !{!440, !442, !444, !446, !435, !448}
!440 = !DIGlobalVariableExpression(var: !441, expr: !DIExpression())
!441 = distinct !DIGlobalVariable(scope: null, file: !438, line: 121, type: !334, isLocal: true, isDefinition: true)
!442 = !DIGlobalVariableExpression(var: !443, expr: !DIExpression())
!443 = distinct !DIGlobalVariable(scope: null, file: !438, line: 121, type: !407, isLocal: true, isDefinition: true)
!444 = !DIGlobalVariableExpression(var: !445, expr: !DIExpression())
!445 = distinct !DIGlobalVariable(scope: null, file: !438, line: 123, type: !334, isLocal: true, isDefinition: true)
!446 = !DIGlobalVariableExpression(var: !447, expr: !DIExpression())
!447 = distinct !DIGlobalVariable(scope: null, file: !438, line: 126, type: !204, isLocal: true, isDefinition: true)
!448 = !DIGlobalVariableExpression(var: !449, expr: !DIExpression())
!449 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !437, file: !438, line: 55, type: !234, isLocal: true, isDefinition: true)
!450 = !DIGlobalVariableExpression(var: !451, expr: !DIExpression())
!451 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !452, file: !453, line: 66, type: !501, isLocal: false, isDefinition: true)
!452 = distinct !DICompileUnit(language: DW_LANG_C11, file: !453, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !454, globals: !455, splitDebugInlining: false, nameTableKind: None)
!453 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!454 = !{!129, !140}
!455 = !{!456, !458, !483, !485, !487, !489, !450, !491, !493, !495, !497, !499}
!456 = !DIGlobalVariableExpression(var: !457, expr: !DIExpression())
!457 = distinct !DIGlobalVariable(scope: null, file: !453, line: 272, type: !306, isLocal: true, isDefinition: true)
!458 = !DIGlobalVariableExpression(var: !459, expr: !DIExpression())
!459 = distinct !DIGlobalVariable(name: "old_file_name", scope: !460, file: !453, line: 304, type: !138, isLocal: true, isDefinition: true)
!460 = distinct !DISubprogram(name: "verror_at_line", scope: !453, file: !453, line: 298, type: !461, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !452, retainedNodes: !476)
!461 = !DISubroutineType(types: !462)
!462 = !{null, !85, !85, !138, !91, !138, !463}
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !464, line: 52, baseType: !465)
!464 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !466, line: 14, baseType: !467)
!466 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !468, baseType: !469)
!468 = !DIFile(filename: "lib/error.c", directory: "/src")
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !470)
!470 = !{!471, !472, !473, !474, !475}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !469, file: !468, baseType: !129, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !469, file: !468, baseType: !129, size: 64, offset: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !469, file: !468, baseType: !129, size: 64, offset: 128)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !469, file: !468, baseType: !85, size: 32, offset: 192)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !469, file: !468, baseType: !85, size: 32, offset: 224)
!476 = !{!477, !478, !479, !480, !481, !482}
!477 = !DILocalVariable(name: "status", arg: 1, scope: !460, file: !453, line: 298, type: !85)
!478 = !DILocalVariable(name: "errnum", arg: 2, scope: !460, file: !453, line: 298, type: !85)
!479 = !DILocalVariable(name: "file_name", arg: 3, scope: !460, file: !453, line: 298, type: !138)
!480 = !DILocalVariable(name: "line_number", arg: 4, scope: !460, file: !453, line: 298, type: !91)
!481 = !DILocalVariable(name: "message", arg: 5, scope: !460, file: !453, line: 298, type: !138)
!482 = !DILocalVariable(name: "args", arg: 6, scope: !460, file: !453, line: 298, type: !463)
!483 = !DIGlobalVariableExpression(var: !484, expr: !DIExpression())
!484 = distinct !DIGlobalVariable(name: "old_line_number", scope: !460, file: !453, line: 305, type: !91, isLocal: true, isDefinition: true)
!485 = !DIGlobalVariableExpression(var: !486, expr: !DIExpression())
!486 = distinct !DIGlobalVariable(scope: null, file: !453, line: 338, type: !76, isLocal: true, isDefinition: true)
!487 = !DIGlobalVariableExpression(var: !488, expr: !DIExpression())
!488 = distinct !DIGlobalVariable(scope: null, file: !453, line: 346, type: !339, isLocal: true, isDefinition: true)
!489 = !DIGlobalVariableExpression(var: !490, expr: !DIExpression())
!490 = distinct !DIGlobalVariable(scope: null, file: !453, line: 346, type: !317, isLocal: true, isDefinition: true)
!491 = !DIGlobalVariableExpression(var: !492, expr: !DIExpression())
!492 = distinct !DIGlobalVariable(name: "error_message_count", scope: !452, file: !453, line: 69, type: !91, isLocal: false, isDefinition: true)
!493 = !DIGlobalVariableExpression(var: !494, expr: !DIExpression())
!494 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !452, file: !453, line: 295, type: !85, isLocal: false, isDefinition: true)
!495 = !DIGlobalVariableExpression(var: !496, expr: !DIExpression())
!496 = distinct !DIGlobalVariable(scope: null, file: !453, line: 208, type: !334, isLocal: true, isDefinition: true)
!497 = !DIGlobalVariableExpression(var: !498, expr: !DIExpression())
!498 = distinct !DIGlobalVariable(scope: null, file: !453, line: 208, type: !199, isLocal: true, isDefinition: true)
!499 = !DIGlobalVariableExpression(var: !500, expr: !DIExpression())
!500 = distinct !DIGlobalVariable(scope: null, file: !453, line: 214, type: !306, isLocal: true, isDefinition: true)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DISubroutineType(types: !503)
!503 = !{null}
!504 = !DIGlobalVariableExpression(var: !505, expr: !DIExpression())
!505 = distinct !DIGlobalVariable(name: "program_name", scope: !506, file: !507, line: 31, type: !138, isLocal: false, isDefinition: true)
!506 = distinct !DICompileUnit(language: DW_LANG_C11, file: !507, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !508, globals: !509, splitDebugInlining: false, nameTableKind: None)
!507 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!508 = !{!128}
!509 = !{!504, !510, !512}
!510 = !DIGlobalVariableExpression(var: !511, expr: !DIExpression())
!511 = distinct !DIGlobalVariable(scope: null, file: !507, line: 46, type: !339, isLocal: true, isDefinition: true)
!512 = !DIGlobalVariableExpression(var: !513, expr: !DIExpression())
!513 = distinct !DIGlobalVariable(scope: null, file: !507, line: 49, type: !76, isLocal: true, isDefinition: true)
!514 = !DIGlobalVariableExpression(var: !515, expr: !DIExpression())
!515 = distinct !DIGlobalVariable(name: "utf07FF", scope: !516, file: !517, line: 46, type: !544, isLocal: true, isDefinition: true)
!516 = distinct !DISubprogram(name: "proper_name_lite", scope: !517, file: !517, line: 38, type: !518, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !520, retainedNodes: !522)
!517 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!518 = !DISubroutineType(types: !519)
!519 = !{!138, !138, !138}
!520 = distinct !DICompileUnit(language: DW_LANG_C11, file: !517, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !521, splitDebugInlining: false, nameTableKind: None)
!521 = !{!514}
!522 = !{!523, !524, !525, !526, !531}
!523 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !516, file: !517, line: 38, type: !138)
!524 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !516, file: !517, line: 38, type: !138)
!525 = !DILocalVariable(name: "translation", scope: !516, file: !517, line: 40, type: !138)
!526 = !DILocalVariable(name: "w", scope: !516, file: !517, line: 47, type: !527)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !528, line: 37, baseType: !529)
!528 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !133, line: 57, baseType: !530)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !133, line: 42, baseType: !91)
!531 = !DILocalVariable(name: "mbs", scope: !516, file: !517, line: 48, type: !532)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !533, line: 6, baseType: !534)
!533 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !535, line: 21, baseType: !536)
!535 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !535, line: 13, size: 64, elements: !537)
!537 = !{!538, !539}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !536, file: !535, line: 15, baseType: !85, size: 32)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !536, file: !535, line: 20, baseType: !540, size: 32, offset: 32)
!540 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !536, file: !535, line: 16, size: 32, elements: !541)
!541 = !{!542, !543}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !540, file: !535, line: 18, baseType: !91, size: 32)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !540, file: !535, line: 19, baseType: !76, size: 32)
!544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 16, elements: !318)
!545 = !DIGlobalVariableExpression(var: !546, expr: !DIExpression())
!546 = distinct !DIGlobalVariable(scope: null, file: !547, line: 78, type: !339, isLocal: true, isDefinition: true)
!547 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!548 = !DIGlobalVariableExpression(var: !549, expr: !DIExpression())
!549 = distinct !DIGlobalVariable(scope: null, file: !547, line: 79, type: !19, isLocal: true, isDefinition: true)
!550 = !DIGlobalVariableExpression(var: !551, expr: !DIExpression())
!551 = distinct !DIGlobalVariable(scope: null, file: !547, line: 80, type: !159, isLocal: true, isDefinition: true)
!552 = !DIGlobalVariableExpression(var: !553, expr: !DIExpression())
!553 = distinct !DIGlobalVariable(scope: null, file: !547, line: 81, type: !159, isLocal: true, isDefinition: true)
!554 = !DIGlobalVariableExpression(var: !555, expr: !DIExpression())
!555 = distinct !DIGlobalVariable(scope: null, file: !547, line: 82, type: !295, isLocal: true, isDefinition: true)
!556 = !DIGlobalVariableExpression(var: !557, expr: !DIExpression())
!557 = distinct !DIGlobalVariable(scope: null, file: !547, line: 83, type: !317, isLocal: true, isDefinition: true)
!558 = !DIGlobalVariableExpression(var: !559, expr: !DIExpression())
!559 = distinct !DIGlobalVariable(scope: null, file: !547, line: 84, type: !339, isLocal: true, isDefinition: true)
!560 = !DIGlobalVariableExpression(var: !561, expr: !DIExpression())
!561 = distinct !DIGlobalVariable(scope: null, file: !547, line: 85, type: !334, isLocal: true, isDefinition: true)
!562 = !DIGlobalVariableExpression(var: !563, expr: !DIExpression())
!563 = distinct !DIGlobalVariable(scope: null, file: !547, line: 86, type: !334, isLocal: true, isDefinition: true)
!564 = !DIGlobalVariableExpression(var: !565, expr: !DIExpression())
!565 = distinct !DIGlobalVariable(scope: null, file: !547, line: 87, type: !339, isLocal: true, isDefinition: true)
!566 = !DIGlobalVariableExpression(var: !567, expr: !DIExpression())
!567 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !568, file: !547, line: 76, type: !640, isLocal: false, isDefinition: true)
!568 = distinct !DICompileUnit(language: DW_LANG_C11, file: !547, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !569, retainedTypes: !575, globals: !576, splitDebugInlining: false, nameTableKind: None)
!569 = !{!98, !570, !112}
!570 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !99, line: 254, baseType: !91, size: 32, elements: !571)
!571 = !{!572, !573, !574}
!572 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!573 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!574 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!575 = !{!85, !135, !136}
!576 = !{!545, !548, !550, !552, !554, !556, !558, !560, !562, !564, !566, !577, !581, !591, !593, !598, !600, !602, !604, !606, !629, !636, !638}
!577 = !DIGlobalVariableExpression(var: !578, expr: !DIExpression())
!578 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !568, file: !547, line: 92, type: !579, isLocal: false, isDefinition: true)
!579 = !DICompositeType(tag: DW_TAG_array_type, baseType: !580, size: 320, elements: !67)
!580 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!581 = !DIGlobalVariableExpression(var: !582, expr: !DIExpression())
!582 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !568, file: !547, line: 1040, type: !583, isLocal: false, isDefinition: true)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !547, line: 56, size: 448, elements: !584)
!584 = !{!585, !586, !587, !589, !590}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !583, file: !547, line: 59, baseType: !98, size: 32)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !583, file: !547, line: 62, baseType: !85, size: 32, offset: 32)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !583, file: !547, line: 66, baseType: !588, size: 256, offset: 64)
!588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 256, elements: !340)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !583, file: !547, line: 69, baseType: !138, size: 64, offset: 320)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !583, file: !547, line: 72, baseType: !138, size: 64, offset: 384)
!591 = !DIGlobalVariableExpression(var: !592, expr: !DIExpression())
!592 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !568, file: !547, line: 107, type: !583, isLocal: true, isDefinition: true)
!593 = !DIGlobalVariableExpression(var: !594, expr: !DIExpression())
!594 = distinct !DIGlobalVariable(name: "slot0", scope: !568, file: !547, line: 831, type: !595, isLocal: true, isDefinition: true)
!595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !596)
!596 = !{!597}
!597 = !DISubrange(count: 256)
!598 = !DIGlobalVariableExpression(var: !599, expr: !DIExpression())
!599 = distinct !DIGlobalVariable(scope: null, file: !547, line: 321, type: !317, isLocal: true, isDefinition: true)
!600 = !DIGlobalVariableExpression(var: !601, expr: !DIExpression())
!601 = distinct !DIGlobalVariable(scope: null, file: !547, line: 357, type: !317, isLocal: true, isDefinition: true)
!602 = !DIGlobalVariableExpression(var: !603, expr: !DIExpression())
!603 = distinct !DIGlobalVariable(scope: null, file: !547, line: 358, type: !317, isLocal: true, isDefinition: true)
!604 = !DIGlobalVariableExpression(var: !605, expr: !DIExpression())
!605 = distinct !DIGlobalVariable(scope: null, file: !547, line: 199, type: !334, isLocal: true, isDefinition: true)
!606 = !DIGlobalVariableExpression(var: !607, expr: !DIExpression())
!607 = distinct !DIGlobalVariable(name: "quote", scope: !608, file: !547, line: 228, type: !627, isLocal: true, isDefinition: true)
!608 = distinct !DISubprogram(name: "gettext_quote", scope: !547, file: !547, line: 197, type: !609, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !611)
!609 = !DISubroutineType(types: !610)
!610 = !{!138, !138, !98}
!611 = !{!612, !613, !614, !615, !616}
!612 = !DILocalVariable(name: "msgid", arg: 1, scope: !608, file: !547, line: 197, type: !138)
!613 = !DILocalVariable(name: "s", arg: 2, scope: !608, file: !547, line: 197, type: !98)
!614 = !DILocalVariable(name: "translation", scope: !608, file: !547, line: 199, type: !138)
!615 = !DILocalVariable(name: "w", scope: !608, file: !547, line: 229, type: !527)
!616 = !DILocalVariable(name: "mbs", scope: !608, file: !547, line: 230, type: !617)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !533, line: 6, baseType: !618)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !535, line: 21, baseType: !619)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !535, line: 13, size: 64, elements: !620)
!620 = !{!621, !622}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !619, file: !535, line: 15, baseType: !85, size: 32)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !619, file: !535, line: 20, baseType: !623, size: 32, offset: 32)
!623 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !619, file: !535, line: 16, size: 32, elements: !624)
!624 = !{!625, !626}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !623, file: !535, line: 18, baseType: !91, size: 32)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !623, file: !535, line: 19, baseType: !76, size: 32)
!627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 64, elements: !628)
!628 = !{!319, !78}
!629 = !DIGlobalVariableExpression(var: !630, expr: !DIExpression())
!630 = distinct !DIGlobalVariable(name: "slotvec", scope: !568, file: !547, line: 834, type: !631, isLocal: true, isDefinition: true)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !547, line: 823, size: 128, elements: !633)
!633 = !{!634, !635}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !632, file: !547, line: 825, baseType: !136, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !632, file: !547, line: 826, baseType: !128, size: 64, offset: 64)
!636 = !DIGlobalVariableExpression(var: !637, expr: !DIExpression())
!637 = distinct !DIGlobalVariable(name: "nslots", scope: !568, file: !547, line: 832, type: !85, isLocal: true, isDefinition: true)
!638 = !DIGlobalVariableExpression(var: !639, expr: !DIExpression())
!639 = distinct !DIGlobalVariable(name: "slotvec0", scope: !568, file: !547, line: 833, type: !632, isLocal: true, isDefinition: true)
!640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !641, size: 704, elements: !642)
!641 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !138)
!642 = !{!643}
!643 = !DISubrange(count: 11)
!644 = !DIGlobalVariableExpression(var: !645, expr: !DIExpression())
!645 = distinct !DIGlobalVariable(scope: null, file: !646, line: 67, type: !407, isLocal: true, isDefinition: true)
!646 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!647 = !DIGlobalVariableExpression(var: !648, expr: !DIExpression())
!648 = distinct !DIGlobalVariable(scope: null, file: !646, line: 69, type: !334, isLocal: true, isDefinition: true)
!649 = !DIGlobalVariableExpression(var: !650, expr: !DIExpression())
!650 = distinct !DIGlobalVariable(scope: null, file: !646, line: 83, type: !334, isLocal: true, isDefinition: true)
!651 = !DIGlobalVariableExpression(var: !652, expr: !DIExpression())
!652 = distinct !DIGlobalVariable(scope: null, file: !646, line: 83, type: !76, isLocal: true, isDefinition: true)
!653 = !DIGlobalVariableExpression(var: !654, expr: !DIExpression())
!654 = distinct !DIGlobalVariable(scope: null, file: !646, line: 85, type: !317, isLocal: true, isDefinition: true)
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
!668 = distinct !DIGlobalVariable(scope: null, file: !646, line: 109, type: !209, isLocal: true, isDefinition: true)
!669 = !DIGlobalVariableExpression(var: !670, expr: !DIExpression())
!670 = distinct !DIGlobalVariable(scope: null, file: !646, line: 113, type: !671, isLocal: true, isDefinition: true)
!671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !672)
!672 = !{!673}
!673 = !DISubrange(count: 28)
!674 = !DIGlobalVariableExpression(var: !675, expr: !DIExpression())
!675 = distinct !DIGlobalVariable(scope: null, file: !646, line: 120, type: !676, isLocal: true, isDefinition: true)
!676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !677)
!677 = !{!678}
!678 = !DISubrange(count: 32)
!679 = !DIGlobalVariableExpression(var: !680, expr: !DIExpression())
!680 = distinct !DIGlobalVariable(scope: null, file: !646, line: 127, type: !681, isLocal: true, isDefinition: true)
!681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !682)
!682 = !{!683}
!683 = !DISubrange(count: 36)
!684 = !DIGlobalVariableExpression(var: !685, expr: !DIExpression())
!685 = distinct !DIGlobalVariable(scope: null, file: !646, line: 134, type: !358, isLocal: true, isDefinition: true)
!686 = !DIGlobalVariableExpression(var: !687, expr: !DIExpression())
!687 = distinct !DIGlobalVariable(scope: null, file: !646, line: 142, type: !164, isLocal: true, isDefinition: true)
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
!704 = distinct !DIGlobalVariable(scope: null, file: !646, line: 248, type: !295, isLocal: true, isDefinition: true)
!705 = !DIGlobalVariableExpression(var: !706, expr: !DIExpression())
!706 = distinct !DIGlobalVariable(scope: null, file: !646, line: 248, type: !383, isLocal: true, isDefinition: true)
!707 = !DIGlobalVariableExpression(var: !708, expr: !DIExpression())
!708 = distinct !DIGlobalVariable(scope: null, file: !646, line: 254, type: !295, isLocal: true, isDefinition: true)
!709 = !DIGlobalVariableExpression(var: !710, expr: !DIExpression())
!710 = distinct !DIGlobalVariable(scope: null, file: !646, line: 254, type: !149, isLocal: true, isDefinition: true)
!711 = !DIGlobalVariableExpression(var: !712, expr: !DIExpression())
!712 = distinct !DIGlobalVariable(scope: null, file: !646, line: 254, type: !358, isLocal: true, isDefinition: true)
!713 = !DIGlobalVariableExpression(var: !714, expr: !DIExpression())
!714 = distinct !DIGlobalVariable(scope: null, file: !646, line: 259, type: !3, isLocal: true, isDefinition: true)
!715 = !DIGlobalVariableExpression(var: !716, expr: !DIExpression())
!716 = distinct !DIGlobalVariable(scope: null, file: !646, line: 259, type: !214, isLocal: true, isDefinition: true)
!717 = !DIGlobalVariableExpression(var: !718, expr: !DIExpression())
!718 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !719, file: !720, line: 26, type: !722, isLocal: false, isDefinition: true)
!719 = distinct !DICompileUnit(language: DW_LANG_C11, file: !720, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !721, splitDebugInlining: false, nameTableKind: None)
!720 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!721 = !{!717}
!722 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 376, elements: !10)
!723 = !DIGlobalVariableExpression(var: !724, expr: !DIExpression())
!724 = distinct !DIGlobalVariable(name: "exit_failure", scope: !725, file: !726, line: 24, type: !728, isLocal: false, isDefinition: true)
!725 = distinct !DICompileUnit(language: DW_LANG_C11, file: !726, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !727, splitDebugInlining: false, nameTableKind: None)
!726 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!727 = !{!723}
!728 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !85)
!729 = !DIGlobalVariableExpression(var: !730, expr: !DIExpression())
!730 = distinct !DIGlobalVariable(scope: null, file: !731, line: 34, type: !204, isLocal: true, isDefinition: true)
!731 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!732 = !DIGlobalVariableExpression(var: !733, expr: !DIExpression())
!733 = distinct !DIGlobalVariable(scope: null, file: !731, line: 34, type: !334, isLocal: true, isDefinition: true)
!734 = !DIGlobalVariableExpression(var: !735, expr: !DIExpression())
!735 = distinct !DIGlobalVariable(scope: null, file: !731, line: 34, type: !183, isLocal: true, isDefinition: true)
!736 = !DIGlobalVariableExpression(var: !737, expr: !DIExpression())
!737 = distinct !DIGlobalVariable(scope: null, file: !738, line: 108, type: !61, isLocal: true, isDefinition: true)
!738 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!739 = !DIGlobalVariableExpression(var: !740, expr: !DIExpression())
!740 = distinct !DIGlobalVariable(name: "internal_state", scope: !741, file: !738, line: 97, type: !744, isLocal: true, isDefinition: true)
!741 = distinct !DICompileUnit(language: DW_LANG_C11, file: !738, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !742, globals: !743, splitDebugInlining: false, nameTableKind: None)
!742 = !{!129, !136, !140}
!743 = !{!736, !739}
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !533, line: 6, baseType: !745)
!745 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !535, line: 21, baseType: !746)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !535, line: 13, size: 64, elements: !747)
!747 = !{!748, !749}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !746, file: !535, line: 15, baseType: !85, size: 32)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !746, file: !535, line: 20, baseType: !750, size: 32, offset: 32)
!750 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !746, file: !535, line: 16, size: 32, elements: !751)
!751 = !{!752, !753}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !750, file: !535, line: 18, baseType: !91, size: 32)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !750, file: !535, line: 19, baseType: !76, size: 32)
!754 = !DIGlobalVariableExpression(var: !755, expr: !DIExpression())
!755 = distinct !DIGlobalVariable(scope: null, file: !756, line: 35, type: !317, isLocal: true, isDefinition: true)
!756 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!757 = !DIGlobalVariableExpression(var: !758, expr: !DIExpression())
!758 = distinct !DIGlobalVariable(scope: null, file: !756, line: 35, type: !19, isLocal: true, isDefinition: true)
!759 = distinct !DICompileUnit(language: DW_LANG_C11, file: !760, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!760 = !DIFile(filename: "src/selinux.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f2fe0a2ae80ab081d56e5c6fc8b81c38")
!761 = distinct !DICompileUnit(language: DW_LANG_C11, file: !762, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!762 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!763 = distinct !DICompileUnit(language: DW_LANG_C11, file: !764, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!764 = !DIFile(filename: "lib/mknod.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a1171358cd5346ce916515df55db10ad")
!765 = distinct !DICompileUnit(language: DW_LANG_C11, file: !766, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !767, splitDebugInlining: false, nameTableKind: None)
!766 = !DIFile(filename: "lib/modechange.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d9d9323c1a974dc920f948d08984b73e")
!767 = !{!768}
!768 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !766, line: 78, baseType: !91, size: 32, elements: !769)
!769 = !{!770, !771, !772, !773}
!770 = !DIEnumerator(name: "MODE_DONE", value: 0)
!771 = !DIEnumerator(name: "MODE_ORDINARY_CHANGE", value: 1)
!772 = !DIEnumerator(name: "MODE_X_IF_ANY_X", value: 2)
!773 = !DIEnumerator(name: "MODE_COPY_EXISTING", value: 3)
!774 = distinct !DICompileUnit(language: DW_LANG_C11, file: !646, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !775, retainedTypes: !779, globals: !780, splitDebugInlining: false, nameTableKind: None)
!775 = !{!776}
!776 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !646, line: 40, baseType: !91, size: 32, elements: !777)
!777 = !{!778}
!778 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!779 = !{!129}
!780 = !{!644, !647, !649, !651, !653, !655, !660, !665, !667, !669, !674, !679, !684, !686, !688, !693, !698, !703, !705, !707, !709, !711, !713, !715}
!781 = distinct !DICompileUnit(language: DW_LANG_C11, file: !782, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !783, retainedTypes: !814, splitDebugInlining: false, nameTableKind: None)
!782 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!783 = !{!784, !796}
!784 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !785, file: !782, line: 188, baseType: !91, size: 32, elements: !794)
!785 = distinct !DISubprogram(name: "x2nrealloc", scope: !782, file: !782, line: 176, type: !786, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !781, retainedNodes: !789)
!786 = !DISubroutineType(types: !787)
!787 = !{!129, !129, !788, !136}
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!789 = !{!790, !791, !792, !793}
!790 = !DILocalVariable(name: "p", arg: 1, scope: !785, file: !782, line: 176, type: !129)
!791 = !DILocalVariable(name: "pn", arg: 2, scope: !785, file: !782, line: 176, type: !788)
!792 = !DILocalVariable(name: "s", arg: 3, scope: !785, file: !782, line: 176, type: !136)
!793 = !DILocalVariable(name: "n", scope: !785, file: !782, line: 178, type: !136)
!794 = !{!795}
!795 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!796 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !797, file: !782, line: 228, baseType: !91, size: 32, elements: !794)
!797 = distinct !DISubprogram(name: "xpalloc", scope: !782, file: !782, line: 223, type: !798, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !781, retainedNodes: !804)
!798 = !DISubroutineType(types: !799)
!799 = !{!129, !129, !800, !801, !803, !801}
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !802, line: 130, baseType: !803)
!802 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !137, line: 35, baseType: !274)
!804 = !{!805, !806, !807, !808, !809, !810, !811, !812, !813}
!805 = !DILocalVariable(name: "pa", arg: 1, scope: !797, file: !782, line: 223, type: !129)
!806 = !DILocalVariable(name: "pn", arg: 2, scope: !797, file: !782, line: 223, type: !800)
!807 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !797, file: !782, line: 223, type: !801)
!808 = !DILocalVariable(name: "n_max", arg: 4, scope: !797, file: !782, line: 223, type: !803)
!809 = !DILocalVariable(name: "s", arg: 5, scope: !797, file: !782, line: 223, type: !801)
!810 = !DILocalVariable(name: "n0", scope: !797, file: !782, line: 230, type: !801)
!811 = !DILocalVariable(name: "n", scope: !797, file: !782, line: 237, type: !801)
!812 = !DILocalVariable(name: "nbytes", scope: !797, file: !782, line: 248, type: !801)
!813 = !DILocalVariable(name: "adjusted_nbytes", scope: !797, file: !782, line: 252, type: !801)
!814 = !{!128, !129, !234, !274, !134}
!815 = distinct !DICompileUnit(language: DW_LANG_C11, file: !731, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !816, splitDebugInlining: false, nameTableKind: None)
!816 = !{!729, !732, !734}
!817 = distinct !DICompileUnit(language: DW_LANG_C11, file: !818, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !819, retainedTypes: !820, splitDebugInlining: false, nameTableKind: None)
!818 = !DIFile(filename: "lib/xstrtoumax.c", directory: "/src", checksumkind: CSK_MD5, checksum: "54ffbccd458a53dd64c9445b3f0c9b17")
!819 = !{!89, !112}
!820 = !{!85, !135, !128, !234, !134, !821}
!821 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !822, line: 102, baseType: !823)
!822 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!823 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !133, line: 73, baseType: !134)
!824 = distinct !DICompileUnit(language: DW_LANG_C11, file: !825, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!825 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!826 = distinct !DICompileUnit(language: DW_LANG_C11, file: !827, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!827 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!828 = distinct !DICompileUnit(language: DW_LANG_C11, file: !829, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !779, splitDebugInlining: false, nameTableKind: None)
!829 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!830 = distinct !DICompileUnit(language: DW_LANG_C11, file: !831, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !779, splitDebugInlining: false, nameTableKind: None)
!831 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!832 = distinct !DICompileUnit(language: DW_LANG_C11, file: !833, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !834, splitDebugInlining: false, nameTableKind: None)
!833 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!834 = !{!234, !134, !129}
!835 = distinct !DICompileUnit(language: DW_LANG_C11, file: !756, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !836, splitDebugInlining: false, nameTableKind: None)
!836 = !{!754, !757}
!837 = distinct !DICompileUnit(language: DW_LANG_C11, file: !838, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!838 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!839 = distinct !DICompileUnit(language: DW_LANG_C11, file: !840, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !779, splitDebugInlining: false, nameTableKind: None)
!840 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!841 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!842 = !{i32 7, !"Dwarf Version", i32 5}
!843 = !{i32 2, !"Debug Info Version", i32 3}
!844 = !{i32 1, !"wchar_size", i32 4}
!845 = !{i32 8, !"PIC Level", i32 2}
!846 = !{i32 7, !"PIE Level", i32 2}
!847 = !{i32 7, !"uwtable", i32 2}
!848 = !{i32 7, !"frame-pointer", i32 1}
!849 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 47, type: !850, scopeLine: 48, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !852)
!850 = !DISubroutineType(types: !851)
!851 = !{null, !85}
!852 = !{!853}
!853 = !DILocalVariable(name: "status", arg: 1, scope: !849, file: !2, line: 47, type: !85)
!854 = !DILocation(line: 0, scope: !849)
!855 = !DILocation(line: 49, column: 14, scope: !856)
!856 = distinct !DILexicalBlock(scope: !849, file: !2, line: 49, column: 7)
!857 = !DILocation(line: 49, column: 7, scope: !849)
!858 = !DILocation(line: 50, column: 5, scope: !859)
!859 = distinct !DILexicalBlock(scope: !856, file: !2, line: 50, column: 5)
!860 = !{!861, !861, i64 0}
!861 = !{!"any pointer", !862, i64 0}
!862 = !{!"omnipotent char", !863, i64 0}
!863 = !{!"Simple C/C++ TBAA"}
!864 = !DILocation(line: 53, column: 7, scope: !865)
!865 = distinct !DILexicalBlock(scope: !856, file: !2, line: 52, column: 5)
!866 = !DILocation(line: 55, column: 7, scope: !865)
!867 = !DILocation(line: 736, column: 3, scope: !868, inlinedAt: !870)
!868 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !84, file: !84, line: 734, type: !502, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !869)
!869 = !{}
!870 = distinct !DILocation(line: 59, column: 7, scope: !865)
!871 = !DILocation(line: 61, column: 7, scope: !865)
!872 = !DILocation(line: 65, column: 7, scope: !865)
!873 = !DILocation(line: 69, column: 7, scope: !865)
!874 = !DILocation(line: 74, column: 7, scope: !865)
!875 = !DILocation(line: 75, column: 7, scope: !865)
!876 = !DILocation(line: 76, column: 7, scope: !865)
!877 = !DILocation(line: 83, column: 7, scope: !865)
!878 = !DILocation(line: 89, column: 7, scope: !865)
!879 = !DILocalVariable(name: "program", arg: 1, scope: !880, file: !84, line: 836, type: !138)
!880 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !84, file: !84, line: 836, type: !881, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !883)
!881 = !DISubroutineType(types: !882)
!882 = !{null, !138}
!883 = !{!879, !884, !891, !892, !894, !895}
!884 = !DILocalVariable(name: "infomap", scope: !880, file: !84, line: 838, type: !885)
!885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !886, size: 896, elements: !335)
!886 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !887)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !880, file: !84, line: 838, size: 128, elements: !888)
!888 = !{!889, !890}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !887, file: !84, line: 838, baseType: !138, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !887, file: !84, line: 838, baseType: !138, size: 64, offset: 64)
!891 = !DILocalVariable(name: "node", scope: !880, file: !84, line: 848, type: !138)
!892 = !DILocalVariable(name: "map_prog", scope: !880, file: !84, line: 849, type: !893)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!894 = !DILocalVariable(name: "lc_messages", scope: !880, file: !84, line: 861, type: !138)
!895 = !DILocalVariable(name: "url_program", scope: !880, file: !84, line: 874, type: !138)
!896 = !DILocation(line: 0, scope: !880, inlinedAt: !897)
!897 = distinct !DILocation(line: 90, column: 7, scope: !865)
!898 = !DILocation(line: 857, column: 3, scope: !880, inlinedAt: !897)
!899 = !DILocation(line: 861, column: 29, scope: !880, inlinedAt: !897)
!900 = !DILocation(line: 862, column: 7, scope: !901, inlinedAt: !897)
!901 = distinct !DILexicalBlock(scope: !880, file: !84, line: 862, column: 7)
!902 = !DILocation(line: 862, column: 19, scope: !901, inlinedAt: !897)
!903 = !DILocation(line: 862, column: 22, scope: !901, inlinedAt: !897)
!904 = !DILocation(line: 862, column: 7, scope: !880, inlinedAt: !897)
!905 = !DILocation(line: 868, column: 7, scope: !906, inlinedAt: !897)
!906 = distinct !DILexicalBlock(scope: !901, file: !84, line: 863, column: 5)
!907 = !DILocation(line: 870, column: 5, scope: !906, inlinedAt: !897)
!908 = !DILocation(line: 875, column: 3, scope: !880, inlinedAt: !897)
!909 = !DILocation(line: 877, column: 3, scope: !880, inlinedAt: !897)
!910 = !DILocation(line: 92, column: 3, scope: !849)
!911 = !DISubprogram(name: "dcgettext", scope: !912, file: !912, line: 51, type: !913, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !869)
!912 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!913 = !DISubroutineType(types: !914)
!914 = !{!128, !138, !138, !85}
!915 = !DISubprogram(name: "__fprintf_chk", scope: !916, file: !916, line: 93, type: !917, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !869)
!916 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!917 = !DISubroutineType(types: !918)
!918 = !{!85, !919, !85, !920, null}
!919 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !247)
!920 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !138)
!921 = !DISubprogram(name: "__printf_chk", scope: !916, file: !916, line: 95, type: !922, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !869)
!922 = !DISubroutineType(types: !923)
!923 = !{!85, !85, !920, null}
!924 = !DISubprogram(name: "fputs_unlocked", scope: !464, file: !464, line: 691, type: !925, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !869)
!925 = !DISubroutineType(types: !926)
!926 = !{!85, !920, !919}
!927 = !DILocation(line: 0, scope: !224)
!928 = !DILocation(line: 581, column: 7, scope: !232)
!929 = !{!930, !930, i64 0}
!930 = !{!"int", !862, i64 0}
!931 = !DILocation(line: 581, column: 19, scope: !232)
!932 = !DILocation(line: 581, column: 7, scope: !224)
!933 = !DILocation(line: 585, column: 26, scope: !231)
!934 = !DILocation(line: 0, scope: !231)
!935 = !DILocation(line: 586, column: 23, scope: !231)
!936 = !DILocation(line: 586, column: 28, scope: !231)
!937 = !DILocation(line: 586, column: 32, scope: !231)
!938 = !{!862, !862, i64 0}
!939 = !DILocation(line: 586, column: 38, scope: !231)
!940 = !DILocalVariable(name: "__s1", arg: 1, scope: !941, file: !942, line: 1359, type: !138)
!941 = distinct !DISubprogram(name: "streq", scope: !942, file: !942, line: 1359, type: !943, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !945)
!942 = !DIFile(filename: "./lib/string.h", directory: "/src")
!943 = !DISubroutineType(types: !944)
!944 = !{!234, !138, !138}
!945 = !{!940, !946}
!946 = !DILocalVariable(name: "__s2", arg: 2, scope: !941, file: !942, line: 1359, type: !138)
!947 = !DILocation(line: 0, scope: !941, inlinedAt: !948)
!948 = distinct !DILocation(line: 586, column: 41, scope: !231)
!949 = !DILocation(line: 1361, column: 11, scope: !941, inlinedAt: !948)
!950 = !DILocation(line: 1361, column: 10, scope: !941, inlinedAt: !948)
!951 = !DILocation(line: 586, column: 19, scope: !231)
!952 = !DILocation(line: 587, column: 5, scope: !231)
!953 = !DILocation(line: 588, column: 7, scope: !954)
!954 = distinct !DILexicalBlock(scope: !224, file: !84, line: 588, column: 7)
!955 = !DILocation(line: 588, column: 7, scope: !224)
!956 = !DILocation(line: 590, column: 7, scope: !957)
!957 = distinct !DILexicalBlock(scope: !954, file: !84, line: 589, column: 5)
!958 = !DILocation(line: 591, column: 7, scope: !957)
!959 = !DILocation(line: 595, column: 37, scope: !224)
!960 = !DILocation(line: 595, column: 35, scope: !224)
!961 = !DILocation(line: 596, column: 29, scope: !224)
!962 = !DILocation(line: 597, column: 8, scope: !240)
!963 = !DILocation(line: 597, column: 7, scope: !224)
!964 = !DILocation(line: 604, column: 24, scope: !239)
!965 = !DILocation(line: 604, column: 12, scope: !240)
!966 = !DILocation(line: 0, scope: !238)
!967 = !DILocation(line: 610, column: 16, scope: !238)
!968 = !DILocation(line: 610, column: 7, scope: !238)
!969 = !DILocation(line: 611, column: 21, scope: !238)
!970 = !{!971, !971, i64 0}
!971 = !{!"short", !862, i64 0}
!972 = !DILocation(line: 611, column: 19, scope: !238)
!973 = !DILocation(line: 611, column: 16, scope: !238)
!974 = !DILocation(line: 610, column: 30, scope: !238)
!975 = distinct !{!975, !968, !969, !976}
!976 = !{!"llvm.loop.mustprogress"}
!977 = !DILocation(line: 612, column: 18, scope: !978)
!978 = distinct !DILexicalBlock(scope: !238, file: !84, line: 612, column: 11)
!979 = !DILocation(line: 612, column: 11, scope: !238)
!980 = !DILocation(line: 620, column: 23, scope: !224)
!981 = !DILocation(line: 625, column: 39, scope: !224)
!982 = !DILocation(line: 626, column: 3, scope: !224)
!983 = !DILocation(line: 626, column: 10, scope: !224)
!984 = !DILocation(line: 626, column: 21, scope: !224)
!985 = !DILocation(line: 628, column: 44, scope: !986)
!986 = distinct !DILexicalBlock(scope: !987, file: !84, line: 628, column: 11)
!987 = distinct !DILexicalBlock(scope: !224, file: !84, line: 627, column: 5)
!988 = !DILocation(line: 628, column: 32, scope: !986)
!989 = !DILocation(line: 628, column: 49, scope: !986)
!990 = !DILocation(line: 628, column: 11, scope: !987)
!991 = !DILocation(line: 630, column: 11, scope: !992)
!992 = distinct !DILexicalBlock(scope: !987, file: !84, line: 630, column: 11)
!993 = !DILocation(line: 630, column: 11, scope: !987)
!994 = !DILocation(line: 632, column: 26, scope: !995)
!995 = distinct !DILexicalBlock(scope: !996, file: !84, line: 632, column: 15)
!996 = distinct !DILexicalBlock(scope: !992, file: !84, line: 631, column: 9)
!997 = !DILocation(line: 632, column: 34, scope: !995)
!998 = !DILocation(line: 632, column: 37, scope: !995)
!999 = !DILocation(line: 632, column: 15, scope: !996)
!1000 = !DILocation(line: 640, column: 16, scope: !987)
!1001 = distinct !{!1001, !982, !1002, !976}
!1002 = !DILocation(line: 641, column: 5, scope: !224)
!1003 = !DILocation(line: 644, column: 3, scope: !224)
!1004 = !DILocation(line: 0, scope: !941, inlinedAt: !1005)
!1005 = distinct !DILocation(line: 648, column: 31, scope: !224)
!1006 = !DILocation(line: 0, scope: !941, inlinedAt: !1007)
!1007 = distinct !DILocation(line: 649, column: 31, scope: !224)
!1008 = !DILocation(line: 0, scope: !941, inlinedAt: !1009)
!1009 = distinct !DILocation(line: 650, column: 31, scope: !224)
!1010 = !DILocation(line: 0, scope: !941, inlinedAt: !1011)
!1011 = distinct !DILocation(line: 651, column: 31, scope: !224)
!1012 = !DILocation(line: 0, scope: !941, inlinedAt: !1013)
!1013 = distinct !DILocation(line: 652, column: 31, scope: !224)
!1014 = !DILocation(line: 0, scope: !941, inlinedAt: !1015)
!1015 = distinct !DILocation(line: 653, column: 31, scope: !224)
!1016 = !DILocation(line: 0, scope: !941, inlinedAt: !1017)
!1017 = distinct !DILocation(line: 654, column: 31, scope: !224)
!1018 = !DILocation(line: 0, scope: !941, inlinedAt: !1019)
!1019 = distinct !DILocation(line: 655, column: 31, scope: !224)
!1020 = !DILocation(line: 0, scope: !941, inlinedAt: !1021)
!1021 = distinct !DILocation(line: 656, column: 31, scope: !224)
!1022 = !DILocation(line: 0, scope: !941, inlinedAt: !1023)
!1023 = distinct !DILocation(line: 657, column: 31, scope: !224)
!1024 = !DILocation(line: 663, column: 7, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !224, file: !84, line: 663, column: 7)
!1026 = !DILocation(line: 664, column: 7, scope: !1025)
!1027 = !DILocation(line: 664, column: 10, scope: !1025)
!1028 = !DILocation(line: 663, column: 7, scope: !224)
!1029 = !DILocation(line: 669, column: 7, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1025, file: !84, line: 665, column: 5)
!1031 = !DILocation(line: 671, column: 5, scope: !1030)
!1032 = !DILocation(line: 676, column: 7, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1025, file: !84, line: 673, column: 5)
!1034 = !DILocation(line: 679, column: 3, scope: !224)
!1035 = !DILocation(line: 683, column: 3, scope: !224)
!1036 = !DILocation(line: 686, column: 3, scope: !224)
!1037 = !DILocation(line: 688, column: 3, scope: !224)
!1038 = !DILocation(line: 691, column: 3, scope: !224)
!1039 = !DILocation(line: 695, column: 3, scope: !224)
!1040 = !DILocation(line: 696, column: 1, scope: !224)
!1041 = !DISubprogram(name: "setlocale", scope: !1042, file: !1042, line: 122, type: !1043, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !869)
!1042 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!128, !85, !138}
!1045 = !DISubprogram(name: "strncmp", scope: !1046, file: !1046, line: 159, type: !1047, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !869)
!1046 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!85, !138, !138, !136}
!1049 = !DISubprogram(name: "exit", scope: !1050, file: !1050, line: 624, type: !850, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !869)
!1050 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1051 = !DISubprogram(name: "getenv", scope: !1050, file: !1050, line: 641, type: !1052, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !869)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!128, !138}
!1054 = !DISubprogram(name: "strcmp", scope: !1046, file: !1046, line: 156, type: !1055, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !869)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!85, !138, !138}
!1057 = !DISubprogram(name: "strspn", scope: !1046, file: !1046, line: 297, type: !1058, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !869)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{!134, !138, !138}
!1060 = !DISubprogram(name: "strchr", scope: !1046, file: !1046, line: 246, type: !1061, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !869)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{!128, !138, !85}
!1063 = !DISubprogram(name: "__ctype_b_loc", scope: !113, file: !113, line: 79, type: !1064, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !869)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{!1066}
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !135)
!1069 = !DISubprogram(name: "strcspn", scope: !1046, file: !1046, line: 293, type: !1058, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !869)
!1070 = !DISubprogram(name: "fwrite_unlocked", scope: !464, file: !464, line: 704, type: !1071, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !869)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!136, !1073, !136, !136, !919}
!1073 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1074)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1076 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 96, type: !1077, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !1080)
!1077 = !DISubroutineType(types: !1078)
!1078 = !{!85, !85, !1079}
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!1080 = !{!1081, !1082, !1083, !1084, !1085, !1089, !1090, !1093, !1099, !1100, !1101, !1104, !1105, !1108, !1109, !1110, !1111, !1112}
!1081 = !DILocalVariable(name: "argc", arg: 1, scope: !1076, file: !2, line: 96, type: !85)
!1082 = !DILocalVariable(name: "argv", arg: 2, scope: !1076, file: !2, line: 96, type: !1079)
!1083 = !DILocalVariable(name: "specified_mode", scope: !1076, file: !2, line: 98, type: !138)
!1084 = !DILocalVariable(name: "scontext", scope: !1076, file: !2, line: 99, type: !138)
!1085 = !DILocalVariable(name: "set_security_context", scope: !1076, file: !2, line: 100, type: !1086)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = !DICompositeType(tag: DW_TAG_structure_type, name: "selabel_handle", file: !1088, line: 53, flags: DIFlagFwdDecl)
!1088 = !DIFile(filename: "./lib/selinux/label.h", directory: "/src", checksumkind: CSK_MD5, checksum: "a430a70cff1d2c3fd1539e29c9e5e879")
!1089 = !DILocalVariable(name: "optc", scope: !1076, file: !2, line: 110, type: !85)
!1090 = !DILocalVariable(name: "newmode", scope: !1076, file: !2, line: 150, type: !1091)
!1091 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !131, line: 69, baseType: !1092)
!1092 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !133, line: 150, baseType: !91)
!1093 = !DILocalVariable(name: "change", scope: !1094, file: !2, line: 153, type: !1096)
!1094 = distinct !DILexicalBlock(scope: !1095, file: !2, line: 152, column: 5)
!1095 = distinct !DILexicalBlock(scope: !1076, file: !2, line: 151, column: 7)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = !DICompositeType(tag: DW_TAG_structure_type, name: "mode_change", file: !1098, line: 35, flags: DIFlagFwdDecl)
!1098 = !DIFile(filename: "./lib/modechange.h", directory: "/src", checksumkind: CSK_MD5, checksum: "41f2efe3cfeccb00721320834728c24b")
!1099 = !DILocalVariable(name: "umask_value", scope: !1094, file: !2, line: 156, type: !1091)
!1100 = !DILocalVariable(name: "expected_operands", scope: !1076, file: !2, line: 168, type: !85)
!1101 = !DILocalVariable(name: "ret", scope: !1102, file: !2, line: 196, type: !85)
!1102 = distinct !DILexicalBlock(scope: !1103, file: !2, line: 195, column: 5)
!1103 = distinct !DILexicalBlock(scope: !1076, file: !2, line: 194, column: 7)
!1104 = !DILocalVariable(name: "node_type", scope: !1076, file: !2, line: 211, type: !1091)
!1105 = !DILocalVariable(name: "s_major", scope: !1106, file: !2, line: 233, type: !138)
!1106 = distinct !DILexicalBlock(scope: !1107, file: !2, line: 232, column: 7)
!1107 = distinct !DILexicalBlock(scope: !1076, file: !2, line: 213, column: 5)
!1108 = !DILocalVariable(name: "i_major", scope: !1106, file: !2, line: 234, type: !821)
!1109 = !DILocalVariable(name: "s_minor", scope: !1106, file: !2, line: 240, type: !138)
!1110 = !DILocalVariable(name: "i_minor", scope: !1106, file: !2, line: 241, type: !821)
!1111 = !DILocalVariable(name: "device", scope: !1106, file: !2, line: 247, type: !130)
!1112 = !DILabel(scope: !1107, name: "block_or_character", file: !2, line: 231)
!1113 = !DILocation(line: 0, scope: !1076)
!1114 = !DILocation(line: 103, column: 21, scope: !1076)
!1115 = !DILocation(line: 103, column: 3, scope: !1076)
!1116 = !DILocation(line: 104, column: 3, scope: !1076)
!1117 = !DILocation(line: 105, column: 3, scope: !1076)
!1118 = !DILocation(line: 106, column: 3, scope: !1076)
!1119 = !DILocation(line: 108, column: 3, scope: !1076)
!1120 = !DILocation(line: 111, column: 3, scope: !1076)
!1121 = !DILocation(line: 111, column: 18, scope: !1076)
!1122 = !DILocation(line: 116, column: 28, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1124, file: !2, line: 114, column: 9)
!1124 = distinct !DILexicalBlock(scope: !1076, file: !2, line: 112, column: 5)
!1125 = !DILocation(line: 117, column: 11, scope: !1123)
!1126 = distinct !{!1126, !1120, !1127, !976}
!1127 = !DILocation(line: 148, column: 5, scope: !1076)
!1128 = !DILocation(line: 136, column: 20, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1130, file: !2, line: 136, column: 20)
!1130 = distinct !DILexicalBlock(scope: !1131, file: !2, line: 124, column: 20)
!1131 = distinct !DILexicalBlock(scope: !1123, file: !2, line: 119, column: 15)
!1132 = !DILocation(line: 136, column: 20, scope: !1130)
!1133 = !DILocation(line: 138, column: 15, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1129, file: !2, line: 137, column: 13)
!1135 = !DILocation(line: 141, column: 13, scope: !1134)
!1136 = !DILocation(line: 143, column: 9, scope: !1123)
!1137 = !DILocation(line: 144, column: 9, scope: !1123)
!1138 = !DILocation(line: 146, column: 11, scope: !1123)
!1139 = !DILocation(line: 151, column: 7, scope: !1095)
!1140 = !DILocation(line: 151, column: 7, scope: !1076)
!1141 = !DILocation(line: 153, column: 36, scope: !1094)
!1142 = !DILocation(line: 0, scope: !1094)
!1143 = !DILocation(line: 154, column: 12, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1094, file: !2, line: 154, column: 11)
!1145 = !DILocation(line: 154, column: 11, scope: !1094)
!1146 = !DILocation(line: 155, column: 9, scope: !1144)
!1147 = !DILocation(line: 156, column: 28, scope: !1094)
!1148 = !DILocation(line: 157, column: 7, scope: !1094)
!1149 = !DILocation(line: 158, column: 17, scope: !1094)
!1150 = !DILocation(line: 159, column: 7, scope: !1094)
!1151 = !DILocation(line: 160, column: 19, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1094, file: !2, line: 160, column: 11)
!1153 = !DILocation(line: 160, column: 11, scope: !1094)
!1154 = !DILocation(line: 161, column: 9, scope: !1152)
!1155 = !DILocation(line: 168, column: 36, scope: !1076)
!1156 = !DILocation(line: 168, column: 33, scope: !1076)
!1157 = !DILocation(line: 169, column: 28, scope: !1076)
!1158 = !DILocation(line: 169, column: 39, scope: !1076)
!1159 = !DILocation(line: 169, column: 43, scope: !1076)
!1160 = !DILocation(line: 169, column: 50, scope: !1076)
!1161 = !DILocation(line: 169, column: 53, scope: !1076)
!1162 = !DILocation(line: 169, column: 73, scope: !1076)
!1163 = !DILocation(line: 168, column: 28, scope: !1076)
!1164 = !DILocation(line: 172, column: 12, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1076, file: !2, line: 172, column: 7)
!1166 = !DILocation(line: 172, column: 21, scope: !1165)
!1167 = !DILocation(line: 172, column: 7, scope: !1076)
!1168 = !DILocation(line: 174, column: 11, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1165, file: !2, line: 173, column: 5)
!1170 = !DILocation(line: 175, column: 9, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1169, file: !2, line: 174, column: 11)
!1172 = !DILocation(line: 177, column: 9, scope: !1171)
!1173 = !DILocation(line: 178, column: 34, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1169, file: !2, line: 178, column: 11)
!1175 = !DILocation(line: 178, column: 44, scope: !1174)
!1176 = !DILocation(line: 178, column: 42, scope: !1174)
!1177 = !DILocation(line: 178, column: 51, scope: !1174)
!1178 = !DILocation(line: 178, column: 11, scope: !1169)
!1179 = !DILocation(line: 179, column: 9, scope: !1174)
!1180 = !DILocation(line: 181, column: 7, scope: !1169)
!1181 = !DILocation(line: 184, column: 25, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1076, file: !2, line: 184, column: 7)
!1183 = !DILocation(line: 184, column: 7, scope: !1076)
!1184 = !DILocation(line: 186, column: 7, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1182, file: !2, line: 185, column: 5)
!1186 = !DILocation(line: 188, column: 34, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1185, file: !2, line: 188, column: 11)
!1188 = !DILocation(line: 188, column: 44, scope: !1187)
!1189 = !DILocation(line: 188, column: 42, scope: !1187)
!1190 = !DILocation(line: 188, column: 51, scope: !1187)
!1191 = !DILocation(line: 188, column: 11, scope: !1185)
!1192 = !DILocation(line: 189, column: 9, scope: !1187)
!1193 = !DILocation(line: 191, column: 7, scope: !1185)
!1194 = !DILocation(line: 212, column: 23, scope: !1076)
!1195 = !DILocation(line: 212, column: 11, scope: !1076)
!1196 = !DILocation(line: 212, column: 3, scope: !1076)
!1197 = !DILocation(line: 229, column: 7, scope: !1107)
!1198 = !DILocation(line: 0, scope: !1107)
!1199 = !DILocation(line: 231, column: 5, scope: !1107)
!1200 = !DILocation(line: 233, column: 43, scope: !1106)
!1201 = !DILocation(line: 233, column: 31, scope: !1106)
!1202 = !DILocation(line: 0, scope: !1106)
!1203 = !DILocation(line: 234, column: 9, scope: !1106)
!1204 = !DILocation(line: 235, column: 13, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1106, file: !2, line: 235, column: 13)
!1206 = !DILocation(line: 235, column: 57, scope: !1205)
!1207 = !DILocation(line: 236, column: 13, scope: !1205)
!1208 = !DILocation(line: 237, column: 11, scope: !1205)
!1209 = !DILocation(line: 240, column: 36, scope: !1106)
!1210 = !DILocation(line: 240, column: 43, scope: !1106)
!1211 = !DILocation(line: 240, column: 31, scope: !1106)
!1212 = !DILocation(line: 241, column: 9, scope: !1106)
!1213 = !DILocation(line: 242, column: 13, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1106, file: !2, line: 242, column: 13)
!1215 = !DILocation(line: 242, column: 57, scope: !1214)
!1216 = !DILocation(line: 243, column: 13, scope: !1214)
!1217 = !DILocation(line: 243, column: 16, scope: !1214)
!1218 = !{!1219, !1219, i64 0}
!1219 = !{!"long", !862, i64 0}
!1220 = !DILocation(line: 243, column: 24, scope: !1214)
!1221 = !DILocation(line: 242, column: 13, scope: !1106)
!1222 = !DILocation(line: 244, column: 11, scope: !1214)
!1223 = !DILocation(line: 247, column: 24, scope: !1106)
!1224 = !DILocalVariable(name: "__major", arg: 1, scope: !1225, file: !1226, line: 43, type: !91)
!1225 = distinct !DISubprogram(name: "gnu_dev_makedev", scope: !1226, file: !1226, line: 43, type: !1227, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !1229)
!1226 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/sysmacros.h", directory: "", checksumkind: CSK_MD5, checksum: "55fcf1d6b566cf23c756196786ec2d1a")
!1227 = !DISubroutineType(types: !1228)
!1228 = !{!132, !91, !91}
!1229 = !{!1224, !1230, !1231}
!1230 = !DILocalVariable(name: "__minor", arg: 2, scope: !1225, file: !1226, line: 43, type: !91)
!1231 = !DILocalVariable(name: "__dev", scope: !1225, file: !1226, line: 43, type: !132)
!1232 = !DILocation(line: 0, scope: !1225, inlinedAt: !1233)
!1233 = distinct !DILocation(line: 247, column: 24, scope: !1106)
!1234 = !DILocation(line: 43, column: 1, scope: !1225, inlinedAt: !1233)
!1235 = !DILocation(line: 249, column: 20, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1106, file: !2, line: 249, column: 13)
!1237 = !DILocation(line: 249, column: 13, scope: !1106)
!1238 = !DILocation(line: 250, column: 11, scope: !1236)
!1239 = !DILocation(line: 257, column: 25, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1106, file: !2, line: 257, column: 13)
!1241 = !DILocation(line: 257, column: 20, scope: !1240)
!1242 = !DILocation(line: 257, column: 42, scope: !1240)
!1243 = !DILocation(line: 257, column: 13, scope: !1240)
!1244 = !DILocation(line: 257, column: 63, scope: !1240)
!1245 = !DILocation(line: 257, column: 13, scope: !1106)
!1246 = !DILocation(line: 258, column: 11, scope: !1240)
!1247 = !DILocation(line: 259, column: 7, scope: !1107)
!1248 = !DILocation(line: 260, column: 7, scope: !1107)
!1249 = !DILocation(line: 265, column: 19, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1107, file: !2, line: 265, column: 11)
!1251 = !DILocation(line: 265, column: 11, scope: !1250)
!1252 = !DILocation(line: 265, column: 42, scope: !1250)
!1253 = !DILocation(line: 265, column: 11, scope: !1107)
!1254 = !DILocation(line: 266, column: 9, scope: !1250)
!1255 = !DILocation(line: 270, column: 7, scope: !1107)
!1256 = !DILocation(line: 271, column: 7, scope: !1107)
!1257 = !DILocation(line: 274, column: 22, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1076, file: !2, line: 274, column: 7)
!1259 = !DILocation(line: 274, column: 38, scope: !1258)
!1260 = !DILocation(line: 274, column: 33, scope: !1258)
!1261 = !DILocation(line: 274, column: 25, scope: !1258)
!1262 = !DILocation(line: 274, column: 56, scope: !1258)
!1263 = !DILocation(line: 274, column: 7, scope: !1076)
!1264 = !DILocation(line: 275, column: 5, scope: !1258)
!1265 = !DILocation(line: 278, column: 3, scope: !1076)
!1266 = !DISubprogram(name: "bindtextdomain", scope: !912, file: !912, line: 86, type: !1267, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !869)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{!128, !138, !138}
!1269 = !DISubprogram(name: "textdomain", scope: !912, file: !912, line: 82, type: !1052, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !869)
!1270 = !DISubprogram(name: "atexit", scope: !1050, file: !1050, line: 602, type: !1271, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !869)
!1271 = !DISubroutineType(types: !1272)
!1272 = !{!85, !501}
!1273 = !DISubprogram(name: "getopt_long", scope: !421, file: !421, line: 66, type: !1274, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !869)
!1274 = !DISubroutineType(types: !1275)
!1275 = !{!85, !85, !1276, !138, !1278, !426}
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !128)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!1279 = !DISubprogram(name: "umask", scope: !1280, file: !1280, line: 380, type: !1281, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !869)
!1280 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!1281 = !DISubroutineType(types: !1282)
!1282 = !{!1092, !1092}
!1283 = !DISubprogram(name: "free", scope: !1050, file: !1050, line: 555, type: !1284, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !869)
!1284 = !DISubroutineType(types: !1285)
!1285 = !{null, !129}
!1286 = !DISubprogram(name: "__errno_location", scope: !1287, file: !1287, line: 37, type: !1288, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !869)
!1287 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1288 = !DISubroutineType(types: !1289)
!1289 = !{!426}
!1290 = !DISubprogram(name: "mkfifo", scope: !1280, file: !1280, line: 418, type: !1291, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !869)
!1291 = !DISubroutineType(types: !1292)
!1292 = !{!85, !138, !1092}
!1293 = !DISubprogram(name: "lchmod", scope: !1280, file: !1280, line: 359, type: !1291, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !869)
!1294 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !438, file: !438, line: 50, type: !881, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !1295)
!1295 = !{!1296}
!1296 = !DILocalVariable(name: "file", arg: 1, scope: !1294, file: !438, line: 50, type: !138)
!1297 = !DILocation(line: 0, scope: !1294)
!1298 = !DILocation(line: 52, column: 13, scope: !1294)
!1299 = !DILocation(line: 53, column: 1, scope: !1294)
!1300 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !438, file: !438, line: 87, type: !1301, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !1303)
!1301 = !DISubroutineType(types: !1302)
!1302 = !{null, !234}
!1303 = !{!1304}
!1304 = !DILocalVariable(name: "ignore", arg: 1, scope: !1300, file: !438, line: 87, type: !234)
!1305 = !DILocation(line: 0, scope: !1300)
!1306 = !DILocation(line: 89, column: 16, scope: !1300)
!1307 = !{!1308, !1308, i64 0}
!1308 = !{!"_Bool", !862, i64 0}
!1309 = !DILocation(line: 90, column: 1, scope: !1300)
!1310 = distinct !DISubprogram(name: "close_stdout", scope: !438, file: !438, line: 116, type: !502, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !1311)
!1311 = !{!1312}
!1312 = !DILocalVariable(name: "write_error", scope: !1313, file: !438, line: 121, type: !138)
!1313 = distinct !DILexicalBlock(scope: !1314, file: !438, line: 120, column: 5)
!1314 = distinct !DILexicalBlock(scope: !1310, file: !438, line: 118, column: 7)
!1315 = !DILocation(line: 118, column: 21, scope: !1314)
!1316 = !DILocation(line: 118, column: 7, scope: !1314)
!1317 = !DILocation(line: 118, column: 29, scope: !1314)
!1318 = !DILocation(line: 119, column: 7, scope: !1314)
!1319 = !DILocation(line: 119, column: 12, scope: !1314)
!1320 = !{i8 0, i8 2}
!1321 = !DILocation(line: 119, column: 25, scope: !1314)
!1322 = !DILocation(line: 119, column: 28, scope: !1314)
!1323 = !DILocation(line: 119, column: 34, scope: !1314)
!1324 = !DILocation(line: 118, column: 7, scope: !1310)
!1325 = !DILocation(line: 121, column: 33, scope: !1313)
!1326 = !DILocation(line: 0, scope: !1313)
!1327 = !DILocation(line: 122, column: 11, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1313, file: !438, line: 122, column: 11)
!1329 = !DILocation(line: 0, scope: !1328)
!1330 = !DILocation(line: 122, column: 11, scope: !1313)
!1331 = !DILocation(line: 123, column: 9, scope: !1328)
!1332 = !DILocation(line: 126, column: 9, scope: !1328)
!1333 = !DILocation(line: 128, column: 14, scope: !1313)
!1334 = !DILocation(line: 128, column: 7, scope: !1313)
!1335 = !DILocation(line: 133, column: 42, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1310, file: !438, line: 133, column: 7)
!1337 = !DILocation(line: 133, column: 28, scope: !1336)
!1338 = !DILocation(line: 133, column: 50, scope: !1336)
!1339 = !DILocation(line: 133, column: 7, scope: !1310)
!1340 = !DILocation(line: 134, column: 12, scope: !1336)
!1341 = !DILocation(line: 134, column: 5, scope: !1336)
!1342 = !DILocation(line: 135, column: 1, scope: !1310)
!1343 = !DISubprogram(name: "_exit", scope: !1344, file: !1344, line: 624, type: !850, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !869)
!1344 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1345 = distinct !DISubprogram(name: "verror", scope: !453, file: !453, line: 251, type: !1346, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !452, retainedNodes: !1348)
!1346 = !DISubroutineType(types: !1347)
!1347 = !{null, !85, !85, !138, !463}
!1348 = !{!1349, !1350, !1351, !1352}
!1349 = !DILocalVariable(name: "status", arg: 1, scope: !1345, file: !453, line: 251, type: !85)
!1350 = !DILocalVariable(name: "errnum", arg: 2, scope: !1345, file: !453, line: 251, type: !85)
!1351 = !DILocalVariable(name: "message", arg: 3, scope: !1345, file: !453, line: 251, type: !138)
!1352 = !DILocalVariable(name: "args", arg: 4, scope: !1345, file: !453, line: 251, type: !463)
!1353 = !DILocation(line: 0, scope: !1345)
!1354 = !DILocation(line: 251, column: 1, scope: !1345)
!1355 = !DILocation(line: 261, column: 3, scope: !1345)
!1356 = !DILocation(line: 265, column: 7, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1345, file: !453, line: 265, column: 7)
!1358 = !DILocation(line: 265, column: 7, scope: !1345)
!1359 = !DILocation(line: 266, column: 5, scope: !1357)
!1360 = !DILocation(line: 272, column: 7, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1357, file: !453, line: 268, column: 5)
!1362 = !DILocation(line: 276, column: 3, scope: !1345)
!1363 = !{i64 0, i64 8, !860, i64 8, i64 8, !860, i64 16, i64 8, !860, i64 24, i64 4, !929, i64 28, i64 4, !929}
!1364 = !DILocation(line: 282, column: 1, scope: !1345)
!1365 = distinct !DISubprogram(name: "flush_stdout", scope: !453, file: !453, line: 163, type: !502, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !452, retainedNodes: !1366)
!1366 = !{!1367}
!1367 = !DILocalVariable(name: "stdout_fd", scope: !1365, file: !453, line: 166, type: !85)
!1368 = !DILocation(line: 0, scope: !1365)
!1369 = !DILocalVariable(name: "fd", arg: 1, scope: !1370, file: !453, line: 145, type: !85)
!1370 = distinct !DISubprogram(name: "is_open", scope: !453, file: !453, line: 145, type: !1371, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !452, retainedNodes: !1373)
!1371 = !DISubroutineType(types: !1372)
!1372 = !{!85, !85}
!1373 = !{!1369}
!1374 = !DILocation(line: 0, scope: !1370, inlinedAt: !1375)
!1375 = distinct !DILocation(line: 182, column: 25, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1365, file: !453, line: 182, column: 7)
!1377 = !DILocation(line: 157, column: 15, scope: !1370, inlinedAt: !1375)
!1378 = !DILocation(line: 157, column: 12, scope: !1370, inlinedAt: !1375)
!1379 = !DILocation(line: 182, column: 7, scope: !1365)
!1380 = !DILocation(line: 184, column: 5, scope: !1376)
!1381 = !DILocation(line: 185, column: 1, scope: !1365)
!1382 = distinct !DISubprogram(name: "error_tail", scope: !453, file: !453, line: 219, type: !1346, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !452, retainedNodes: !1383)
!1383 = !{!1384, !1385, !1386, !1387}
!1384 = !DILocalVariable(name: "status", arg: 1, scope: !1382, file: !453, line: 219, type: !85)
!1385 = !DILocalVariable(name: "errnum", arg: 2, scope: !1382, file: !453, line: 219, type: !85)
!1386 = !DILocalVariable(name: "message", arg: 3, scope: !1382, file: !453, line: 219, type: !138)
!1387 = !DILocalVariable(name: "args", arg: 4, scope: !1382, file: !453, line: 219, type: !463)
!1388 = !DILocation(line: 0, scope: !1382)
!1389 = !DILocation(line: 219, column: 1, scope: !1382)
!1390 = !DILocation(line: 229, column: 13, scope: !1382)
!1391 = !DILocation(line: 135, column: 10, scope: !1392, inlinedAt: !1434)
!1392 = distinct !DISubprogram(name: "vfprintf", scope: !916, file: !916, line: 132, type: !1393, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !452, retainedNodes: !1430)
!1393 = !DISubroutineType(types: !1394)
!1394 = !{!85, !1395, !920, !465}
!1395 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1396)
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1397 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !249, line: 7, baseType: !1398)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !251, line: 49, size: 1728, elements: !1399)
!1399 = !{!1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1398, file: !251, line: 51, baseType: !85, size: 32)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1398, file: !251, line: 54, baseType: !128, size: 64, offset: 64)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1398, file: !251, line: 55, baseType: !128, size: 64, offset: 128)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1398, file: !251, line: 56, baseType: !128, size: 64, offset: 192)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1398, file: !251, line: 57, baseType: !128, size: 64, offset: 256)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1398, file: !251, line: 58, baseType: !128, size: 64, offset: 320)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1398, file: !251, line: 59, baseType: !128, size: 64, offset: 384)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1398, file: !251, line: 60, baseType: !128, size: 64, offset: 448)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1398, file: !251, line: 61, baseType: !128, size: 64, offset: 512)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1398, file: !251, line: 64, baseType: !128, size: 64, offset: 576)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1398, file: !251, line: 65, baseType: !128, size: 64, offset: 640)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1398, file: !251, line: 66, baseType: !128, size: 64, offset: 704)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1398, file: !251, line: 68, baseType: !266, size: 64, offset: 768)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1398, file: !251, line: 70, baseType: !1414, size: 64, offset: 832)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1398, file: !251, line: 72, baseType: !85, size: 32, offset: 896)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1398, file: !251, line: 73, baseType: !85, size: 32, offset: 928)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1398, file: !251, line: 74, baseType: !273, size: 64, offset: 960)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1398, file: !251, line: 77, baseType: !135, size: 16, offset: 1024)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1398, file: !251, line: 78, baseType: !277, size: 8, offset: 1040)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1398, file: !251, line: 79, baseType: !61, size: 8, offset: 1048)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1398, file: !251, line: 81, baseType: !280, size: 64, offset: 1088)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1398, file: !251, line: 89, baseType: !283, size: 64, offset: 1152)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1398, file: !251, line: 91, baseType: !285, size: 64, offset: 1216)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1398, file: !251, line: 92, baseType: !288, size: 64, offset: 1280)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1398, file: !251, line: 93, baseType: !1414, size: 64, offset: 1344)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1398, file: !251, line: 94, baseType: !129, size: 64, offset: 1408)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1398, file: !251, line: 95, baseType: !136, size: 64, offset: 1472)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1398, file: !251, line: 96, baseType: !85, size: 32, offset: 1536)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1398, file: !251, line: 98, baseType: !295, size: 160, offset: 1568)
!1430 = !{!1431, !1432, !1433}
!1431 = !DILocalVariable(name: "__stream", arg: 1, scope: !1392, file: !916, line: 132, type: !1395)
!1432 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1392, file: !916, line: 133, type: !920)
!1433 = !DILocalVariable(name: "__ap", arg: 3, scope: !1392, file: !916, line: 133, type: !465)
!1434 = distinct !DILocation(line: 229, column: 3, scope: !1382)
!1435 = !{!1436, !1438}
!1436 = distinct !{!1436, !1437, !"vfprintf.inline: argument 0"}
!1437 = distinct !{!1437, !"vfprintf.inline"}
!1438 = distinct !{!1438, !1437, !"vfprintf.inline: argument 1"}
!1439 = !DILocation(line: 229, column: 3, scope: !1382)
!1440 = !DILocation(line: 0, scope: !1392, inlinedAt: !1434)
!1441 = !DILocation(line: 133, column: 49, scope: !1392, inlinedAt: !1434)
!1442 = !DILocation(line: 232, column: 3, scope: !1382)
!1443 = !DILocation(line: 233, column: 7, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1382, file: !453, line: 233, column: 7)
!1445 = !DILocation(line: 233, column: 7, scope: !1382)
!1446 = !DILocalVariable(name: "errnum", arg: 1, scope: !1447, file: !453, line: 188, type: !85)
!1447 = distinct !DISubprogram(name: "print_errno_message", scope: !453, file: !453, line: 188, type: !850, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !452, retainedNodes: !1448)
!1448 = !{!1446, !1449, !1450}
!1449 = !DILocalVariable(name: "s", scope: !1447, file: !453, line: 190, type: !138)
!1450 = !DILocalVariable(name: "errbuf", scope: !1447, file: !453, line: 193, type: !1451)
!1451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1452)
!1452 = !{!1453}
!1453 = !DISubrange(count: 1024)
!1454 = !DILocation(line: 0, scope: !1447, inlinedAt: !1455)
!1455 = distinct !DILocation(line: 234, column: 5, scope: !1444)
!1456 = !DILocation(line: 193, column: 3, scope: !1447, inlinedAt: !1455)
!1457 = !DILocation(line: 193, column: 8, scope: !1447, inlinedAt: !1455)
!1458 = !DILocation(line: 195, column: 7, scope: !1447, inlinedAt: !1455)
!1459 = !DILocation(line: 207, column: 9, scope: !1460, inlinedAt: !1455)
!1460 = distinct !DILexicalBlock(scope: !1447, file: !453, line: 207, column: 7)
!1461 = !DILocation(line: 207, column: 7, scope: !1447, inlinedAt: !1455)
!1462 = !DILocation(line: 208, column: 9, scope: !1460, inlinedAt: !1455)
!1463 = !DILocation(line: 208, column: 5, scope: !1460, inlinedAt: !1455)
!1464 = !DILocation(line: 214, column: 3, scope: !1447, inlinedAt: !1455)
!1465 = !DILocation(line: 216, column: 1, scope: !1447, inlinedAt: !1455)
!1466 = !DILocation(line: 234, column: 5, scope: !1444)
!1467 = !DILocation(line: 238, column: 3, scope: !1382)
!1468 = !DILocalVariable(name: "__c", arg: 1, scope: !1469, file: !1470, line: 101, type: !85)
!1469 = distinct !DISubprogram(name: "putc_unlocked", scope: !1470, file: !1470, line: 101, type: !1471, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !452, retainedNodes: !1473)
!1470 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1471 = !DISubroutineType(types: !1472)
!1472 = !{!85, !85, !1396}
!1473 = !{!1468, !1474}
!1474 = !DILocalVariable(name: "__stream", arg: 2, scope: !1469, file: !1470, line: 101, type: !1396)
!1475 = !DILocation(line: 0, scope: !1469, inlinedAt: !1476)
!1476 = distinct !DILocation(line: 238, column: 3, scope: !1382)
!1477 = !DILocation(line: 103, column: 10, scope: !1469, inlinedAt: !1476)
!1478 = !{!1479, !861, i64 40}
!1479 = !{!"_IO_FILE", !930, i64 0, !861, i64 8, !861, i64 16, !861, i64 24, !861, i64 32, !861, i64 40, !861, i64 48, !861, i64 56, !861, i64 64, !861, i64 72, !861, i64 80, !861, i64 88, !861, i64 96, !861, i64 104, !930, i64 112, !930, i64 116, !1219, i64 120, !971, i64 128, !862, i64 130, !862, i64 131, !861, i64 136, !1219, i64 144, !861, i64 152, !861, i64 160, !861, i64 168, !861, i64 176, !1219, i64 184, !930, i64 192, !862, i64 196}
!1480 = !{!1479, !861, i64 48}
!1481 = !{!"branch_weights", i32 2000, i32 1}
!1482 = !DILocation(line: 240, column: 3, scope: !1382)
!1483 = !DILocation(line: 241, column: 7, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1382, file: !453, line: 241, column: 7)
!1485 = !DILocation(line: 241, column: 7, scope: !1382)
!1486 = !DILocation(line: 242, column: 5, scope: !1484)
!1487 = !DILocation(line: 243, column: 1, scope: !1382)
!1488 = !DISubprogram(name: "__vfprintf_chk", scope: !916, file: !916, line: 96, type: !1489, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !869)
!1489 = !DISubroutineType(types: !1490)
!1490 = !{!85, !1395, !85, !920, !465}
!1491 = !DISubprogram(name: "strerror_r", scope: !1046, file: !1046, line: 444, type: !1492, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !869)
!1492 = !DISubroutineType(types: !1493)
!1493 = !{!128, !85, !128, !136}
!1494 = !DISubprogram(name: "__overflow", scope: !464, file: !464, line: 886, type: !1495, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !869)
!1495 = !DISubroutineType(types: !1496)
!1496 = !{!85, !1396, !85}
!1497 = !DISubprogram(name: "fflush_unlocked", scope: !464, file: !464, line: 239, type: !1498, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !869)
!1498 = !DISubroutineType(types: !1499)
!1499 = !{!85, !1396}
!1500 = !DISubprogram(name: "fcntl", scope: !1501, file: !1501, line: 149, type: !1502, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !869)
!1501 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1502 = !DISubroutineType(types: !1503)
!1503 = !{!85, !85, !85, null}
!1504 = distinct !DISubprogram(name: "error", scope: !453, file: !453, line: 285, type: !1505, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !452, retainedNodes: !1507)
!1505 = !DISubroutineType(types: !1506)
!1506 = !{null, !85, !85, !138, null}
!1507 = !{!1508, !1509, !1510, !1511}
!1508 = !DILocalVariable(name: "status", arg: 1, scope: !1504, file: !453, line: 285, type: !85)
!1509 = !DILocalVariable(name: "errnum", arg: 2, scope: !1504, file: !453, line: 285, type: !85)
!1510 = !DILocalVariable(name: "message", arg: 3, scope: !1504, file: !453, line: 285, type: !138)
!1511 = !DILocalVariable(name: "ap", scope: !1504, file: !453, line: 287, type: !463)
!1512 = !DILocation(line: 0, scope: !1504)
!1513 = !DILocation(line: 287, column: 3, scope: !1504)
!1514 = !DILocation(line: 287, column: 11, scope: !1504)
!1515 = !DILocation(line: 288, column: 3, scope: !1504)
!1516 = !DILocation(line: 289, column: 3, scope: !1504)
!1517 = !DILocation(line: 290, column: 3, scope: !1504)
!1518 = !DILocation(line: 291, column: 1, scope: !1504)
!1519 = !DILocation(line: 0, scope: !460)
!1520 = !DILocation(line: 298, column: 1, scope: !460)
!1521 = !DILocation(line: 302, column: 7, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !460, file: !453, line: 302, column: 7)
!1523 = !DILocation(line: 302, column: 7, scope: !460)
!1524 = !DILocation(line: 307, column: 11, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1526, file: !453, line: 307, column: 11)
!1526 = distinct !DILexicalBlock(scope: !1522, file: !453, line: 303, column: 5)
!1527 = !DILocation(line: 307, column: 27, scope: !1525)
!1528 = !DILocation(line: 308, column: 11, scope: !1525)
!1529 = !DILocation(line: 308, column: 28, scope: !1525)
!1530 = !DILocation(line: 308, column: 25, scope: !1525)
!1531 = !DILocation(line: 309, column: 15, scope: !1525)
!1532 = !DILocation(line: 309, column: 33, scope: !1525)
!1533 = !DILocation(line: 310, column: 19, scope: !1525)
!1534 = !DILocation(line: 311, column: 22, scope: !1525)
!1535 = !DILocation(line: 311, column: 56, scope: !1525)
!1536 = !DILocation(line: 307, column: 11, scope: !1526)
!1537 = !DILocation(line: 316, column: 21, scope: !1526)
!1538 = !DILocation(line: 317, column: 23, scope: !1526)
!1539 = !DILocation(line: 318, column: 5, scope: !1526)
!1540 = !DILocation(line: 327, column: 3, scope: !460)
!1541 = !DILocation(line: 331, column: 7, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !460, file: !453, line: 331, column: 7)
!1543 = !DILocation(line: 331, column: 7, scope: !460)
!1544 = !DILocation(line: 332, column: 5, scope: !1542)
!1545 = !DILocation(line: 338, column: 7, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1542, file: !453, line: 334, column: 5)
!1547 = !DILocation(line: 346, column: 3, scope: !460)
!1548 = !DILocation(line: 350, column: 3, scope: !460)
!1549 = !DILocation(line: 356, column: 1, scope: !460)
!1550 = distinct !DISubprogram(name: "error_at_line", scope: !453, file: !453, line: 359, type: !1551, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !452, retainedNodes: !1553)
!1551 = !DISubroutineType(types: !1552)
!1552 = !{null, !85, !85, !138, !91, !138, null}
!1553 = !{!1554, !1555, !1556, !1557, !1558, !1559}
!1554 = !DILocalVariable(name: "status", arg: 1, scope: !1550, file: !453, line: 359, type: !85)
!1555 = !DILocalVariable(name: "errnum", arg: 2, scope: !1550, file: !453, line: 359, type: !85)
!1556 = !DILocalVariable(name: "file_name", arg: 3, scope: !1550, file: !453, line: 359, type: !138)
!1557 = !DILocalVariable(name: "line_number", arg: 4, scope: !1550, file: !453, line: 360, type: !91)
!1558 = !DILocalVariable(name: "message", arg: 5, scope: !1550, file: !453, line: 360, type: !138)
!1559 = !DILocalVariable(name: "ap", scope: !1550, file: !453, line: 362, type: !463)
!1560 = !DILocation(line: 0, scope: !1550)
!1561 = !DILocation(line: 362, column: 3, scope: !1550)
!1562 = !DILocation(line: 362, column: 11, scope: !1550)
!1563 = !DILocation(line: 363, column: 3, scope: !1550)
!1564 = !DILocation(line: 364, column: 3, scope: !1550)
!1565 = !DILocation(line: 366, column: 3, scope: !1550)
!1566 = !DILocation(line: 367, column: 1, scope: !1550)
!1567 = distinct !DISubprogram(name: "getprogname", scope: !762, file: !762, line: 54, type: !1568, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !761, retainedNodes: !869)
!1568 = !DISubroutineType(types: !1569)
!1569 = !{!138}
!1570 = !DILocation(line: 58, column: 10, scope: !1567)
!1571 = !DILocation(line: 58, column: 3, scope: !1567)
!1572 = distinct !DISubprogram(name: "rpl_mknod", scope: !764, file: !764, line: 47, type: !1573, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !763, retainedNodes: !1575)
!1573 = !DISubroutineType(types: !1574)
!1574 = !{!85, !138, !1091, !130}
!1575 = !{!1576, !1577, !1578}
!1576 = !DILocalVariable(name: "name", arg: 1, scope: !1572, file: !764, line: 47, type: !138)
!1577 = !DILocalVariable(name: "mode", arg: 2, scope: !1572, file: !764, line: 47, type: !1091)
!1578 = !DILocalVariable(name: "dev", arg: 3, scope: !1572, file: !764, line: 47, type: !130)
!1579 = !DILocation(line: 0, scope: !1572)
!1580 = !DILocation(line: 68, column: 7, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1572, file: !764, line: 68, column: 7)
!1582 = !DILocation(line: 68, column: 23, scope: !1581)
!1583 = !DILocation(line: 69, column: 31, scope: !1581)
!1584 = !DILocation(line: 69, column: 12, scope: !1581)
!1585 = !DILocation(line: 69, column: 5, scope: !1581)
!1586 = !DILocation(line: 71, column: 10, scope: !1572)
!1587 = !DILocation(line: 71, column: 3, scope: !1572)
!1588 = !DILocation(line: 72, column: 1, scope: !1572)
!1589 = !DISubprogram(name: "mknod", scope: !1280, file: !1280, line: 404, type: !1590, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !869)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{!85, !138, !1092, !132}
!1592 = distinct !DISubprogram(name: "mode_compile", scope: !766, file: !766, line: 134, type: !1593, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !765, retainedNodes: !1603)
!1593 = !DISubroutineType(types: !1594)
!1594 = !{!1595, !138}
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mode_change", file: !766, line: 98, size: 128, elements: !1597)
!1597 = !{!1598, !1599, !1600, !1601, !1602}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1596, file: !766, line: 100, baseType: !4, size: 8)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !1596, file: !766, line: 101, baseType: !4, size: 8, offset: 8)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "affected", scope: !1596, file: !766, line: 102, baseType: !1091, size: 32, offset: 32)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1596, file: !766, line: 103, baseType: !1091, size: 32, offset: 64)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "mentioned", scope: !1596, file: !766, line: 104, baseType: !1091, size: 32, offset: 96)
!1603 = !{!1604, !1605, !1608, !1609, !1610, !1611, !1612, !1614, !1616, !1617, !1618, !1622, !1624, !1625, !1626, !1627, !1630, !1631, !1632, !1633}
!1604 = !DILocalVariable(name: "mode_string", arg: 1, scope: !1592, file: !766, line: 134, type: !138)
!1605 = !DILocalVariable(name: "p", scope: !1606, file: !766, line: 138, type: !138)
!1606 = distinct !DILexicalBlock(scope: !1607, file: !766, line: 137, column: 5)
!1607 = distinct !DILexicalBlock(scope: !1592, file: !766, line: 136, column: 7)
!1608 = !DILocalVariable(name: "octal_mode", scope: !1606, file: !766, line: 139, type: !91)
!1609 = !DILocalVariable(name: "mode", scope: !1606, file: !766, line: 140, type: !1091)
!1610 = !DILocalVariable(name: "mentioned", scope: !1606, file: !766, line: 141, type: !1091)
!1611 = !DILocalVariable(name: "mc", scope: !1592, file: !766, line: 163, type: !1595)
!1612 = !DILocalVariable(name: "needed", scope: !1613, file: !766, line: 167, type: !136)
!1613 = distinct !DILexicalBlock(scope: !1592, file: !766, line: 166, column: 3)
!1614 = !DILocalVariable(name: "p", scope: !1615, file: !766, line: 168, type: !138)
!1615 = distinct !DILexicalBlock(scope: !1613, file: !766, line: 168, column: 5)
!1616 = !DILocalVariable(name: "used", scope: !1592, file: !766, line: 175, type: !136)
!1617 = !DILocalVariable(name: "p", scope: !1592, file: !766, line: 176, type: !138)
!1618 = !DILocalVariable(name: "affected", scope: !1619, file: !766, line: 180, type: !1091)
!1619 = distinct !DILexicalBlock(scope: !1620, file: !766, line: 178, column: 5)
!1620 = distinct !DILexicalBlock(scope: !1621, file: !766, line: 177, column: 3)
!1621 = distinct !DILexicalBlock(scope: !1592, file: !766, line: 177, column: 3)
!1622 = !DILocalVariable(name: "op", scope: !1623, file: !766, line: 207, type: !4)
!1623 = distinct !DILexicalBlock(scope: !1619, file: !766, line: 206, column: 9)
!1624 = !DILocalVariable(name: "value", scope: !1623, file: !766, line: 208, type: !1091)
!1625 = !DILocalVariable(name: "mentioned", scope: !1623, file: !766, line: 209, type: !1091)
!1626 = !DILocalVariable(name: "flag", scope: !1623, file: !766, line: 210, type: !4)
!1627 = !DILocalVariable(name: "octal_mode", scope: !1628, file: !766, line: 217, type: !91)
!1628 = distinct !DILexicalBlock(scope: !1629, file: !766, line: 216, column: 15)
!1629 = distinct !DILexicalBlock(scope: !1623, file: !766, line: 213, column: 13)
!1630 = !DILocalVariable(name: "change", scope: !1623, file: !766, line: 287, type: !1595)
!1631 = !DILabel(scope: !1619, name: "no_more_affected", file: !766, line: 203)
!1632 = !DILabel(scope: !1629, name: "no_more_values", file: !766, line: 284)
!1633 = !DILabel(scope: !1592, name: "invalid", file: !766, line: 308)
!1634 = !DILocation(line: 0, scope: !1592)
!1635 = !DILocation(line: 136, column: 14, scope: !1607)
!1636 = !DILocation(line: 136, column: 27, scope: !1607)
!1637 = !DILocation(line: 146, column: 41, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1606, file: !766, line: 145, column: 9)
!1639 = !DILocation(line: 0, scope: !1606)
!1640 = !DILocation(line: 146, column: 26, scope: !1638)
!1641 = !DILocation(line: 146, column: 39, scope: !1638)
!1642 = !DILocation(line: 146, column: 46, scope: !1638)
!1643 = !DILocation(line: 147, column: 20, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1638, file: !766, line: 147, column: 15)
!1645 = !DILocation(line: 147, column: 15, scope: !1638)
!1646 = !DILocation(line: 146, column: 43, scope: !1638)
!1647 = !DILocation(line: 150, column: 21, scope: !1606)
!1648 = !DILocation(line: 150, column: 24, scope: !1606)
!1649 = distinct !{!1649, !1650, !1651, !976}
!1650 = !DILocation(line: 144, column: 7, scope: !1606)
!1651 = !DILocation(line: 150, column: 35, scope: !1606)
!1652 = !DILocation(line: 152, column: 11, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1606, file: !766, line: 152, column: 11)
!1654 = !DILocation(line: 152, column: 11, scope: !1606)
!1655 = !DILocation(line: 156, column: 22, scope: !1606)
!1656 = !DILocation(line: 156, column: 36, scope: !1606)
!1657 = !DILocation(line: 156, column: 20, scope: !1606)
!1658 = !DILocalVariable(name: "new_mode", arg: 1, scope: !1659, file: !766, line: 112, type: !1091)
!1659 = distinct !DISubprogram(name: "make_node_op_equals", scope: !766, file: !766, line: 112, type: !1660, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !765, retainedNodes: !1662)
!1660 = !DISubroutineType(types: !1661)
!1661 = !{!1595, !1091, !1091}
!1662 = !{!1658, !1663, !1664}
!1663 = !DILocalVariable(name: "mentioned", arg: 2, scope: !1659, file: !766, line: 112, type: !1091)
!1664 = !DILocalVariable(name: "p", scope: !1659, file: !766, line: 114, type: !1595)
!1665 = !DILocation(line: 0, scope: !1659, inlinedAt: !1666)
!1666 = distinct !DILocation(line: 159, column: 14, scope: !1606)
!1667 = !DILocation(line: 114, column: 27, scope: !1659, inlinedAt: !1666)
!1668 = !DILocation(line: 115, column: 9, scope: !1659, inlinedAt: !1666)
!1669 = !{!1670, !862, i64 0}
!1670 = !{!"mode_change", !862, i64 0, !862, i64 1, !930, i64 4, !930, i64 8, !930, i64 12}
!1671 = !DILocation(line: 116, column: 6, scope: !1659, inlinedAt: !1666)
!1672 = !DILocation(line: 116, column: 11, scope: !1659, inlinedAt: !1666)
!1673 = !{!1670, !862, i64 1}
!1674 = !DILocation(line: 117, column: 6, scope: !1659, inlinedAt: !1666)
!1675 = !DILocation(line: 117, column: 15, scope: !1659, inlinedAt: !1666)
!1676 = !{!1670, !930, i64 4}
!1677 = !DILocation(line: 118, column: 6, scope: !1659, inlinedAt: !1666)
!1678 = !DILocation(line: 118, column: 12, scope: !1659, inlinedAt: !1666)
!1679 = !{!1670, !930, i64 8}
!1680 = !DILocation(line: 119, column: 6, scope: !1659, inlinedAt: !1666)
!1681 = !DILocation(line: 119, column: 16, scope: !1659, inlinedAt: !1666)
!1682 = !{!1670, !930, i64 12}
!1683 = !DILocation(line: 120, column: 8, scope: !1659, inlinedAt: !1666)
!1684 = !DILocation(line: 120, column: 13, scope: !1659, inlinedAt: !1666)
!1685 = !DILocation(line: 159, column: 7, scope: !1606)
!1686 = !DILocation(line: 168, column: 39, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1615, file: !766, line: 168, column: 5)
!1688 = !DILocation(line: 0, scope: !1613)
!1689 = !DILocation(line: 168, scope: !1615)
!1690 = !DILocation(line: 0, scope: !1615)
!1691 = !DILocation(line: 168, column: 5, scope: !1615)
!1692 = !DILocation(line: 170, column: 10, scope: !1613)
!1693 = !DILocation(line: 177, column: 8, scope: !1621)
!1694 = !DILocation(line: 169, column: 41, scope: !1687)
!1695 = !DILocation(line: 169, column: 14, scope: !1687)
!1696 = !DILocation(line: 168, column: 44, scope: !1687)
!1697 = !DILocation(line: 168, column: 5, scope: !1687)
!1698 = distinct !{!1698, !1691, !1699, !976}
!1699 = !DILocation(line: 169, column: 53, scope: !1615)
!1700 = !DILocation(line: 175, column: 10, scope: !1592)
!1701 = !DILocation(line: 177, scope: !1621)
!1702 = !DILocation(line: 0, scope: !1623)
!1703 = !DILocation(line: 0, scope: !1619)
!1704 = !DILocation(line: 183, column: 7, scope: !1619)
!1705 = !DILocation(line: 0, scope: !1621)
!1706 = !DILocation(line: 184, column: 17, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1708, file: !766, line: 183, column: 7)
!1708 = distinct !DILexicalBlock(scope: !1619, file: !766, line: 183, column: 7)
!1709 = !DILocation(line: 184, column: 9, scope: !1707)
!1710 = !DILocation(line: 212, column: 11, scope: !1623)
!1711 = !DILocation(line: 189, column: 22, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1707, file: !766, line: 185, column: 11)
!1713 = !DILocation(line: 190, column: 13, scope: !1712)
!1714 = !DILocation(line: 192, column: 22, scope: !1712)
!1715 = !DILocation(line: 193, column: 13, scope: !1712)
!1716 = !DILocation(line: 195, column: 22, scope: !1712)
!1717 = !DILocation(line: 196, column: 13, scope: !1712)
!1718 = !DILocation(line: 0, scope: !1712)
!1719 = !DILocation(line: 183, column: 16, scope: !1707)
!1720 = !DILocation(line: 183, column: 7, scope: !1707)
!1721 = distinct !{!1721, !1722, !1723}
!1722 = !DILocation(line: 183, column: 7, scope: !1708)
!1723 = !DILocation(line: 202, column: 11, scope: !1708)
!1724 = !DILocation(line: 207, column: 21, scope: !1623)
!1725 = !DILocation(line: 180, column: 14, scope: !1619)
!1726 = !DILocation(line: 207, column: 23, scope: !1623)
!1727 = !DILocation(line: 212, column: 19, scope: !1623)
!1728 = !DILocation(line: 219, column: 17, scope: !1628)
!1729 = !DILocation(line: 221, column: 51, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1628, file: !766, line: 220, column: 19)
!1731 = !DILocation(line: 0, scope: !1628)
!1732 = !DILocation(line: 221, column: 36, scope: !1730)
!1733 = !DILocation(line: 221, column: 49, scope: !1730)
!1734 = !DILocation(line: 221, column: 56, scope: !1730)
!1735 = !DILocation(line: 222, column: 30, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1730, file: !766, line: 222, column: 25)
!1737 = !DILocation(line: 222, column: 25, scope: !1730)
!1738 = !DILocation(line: 221, column: 53, scope: !1730)
!1739 = !DILocation(line: 225, column: 31, scope: !1628)
!1740 = !DILocation(line: 225, column: 34, scope: !1628)
!1741 = distinct !{!1741, !1728, !1742, !976}
!1742 = !DILocation(line: 225, column: 45, scope: !1628)
!1743 = !DILocation(line: 227, column: 21, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1628, file: !766, line: 227, column: 21)
!1745 = !DILocation(line: 227, column: 30, scope: !1744)
!1746 = !DILocation(line: 227, column: 37, scope: !1744)
!1747 = !DILocation(line: 239, column: 16, scope: !1629)
!1748 = !DILocation(line: 240, column: 15, scope: !1629)
!1749 = !DILocation(line: 245, column: 16, scope: !1629)
!1750 = !DILocation(line: 246, column: 15, scope: !1629)
!1751 = !DILocation(line: 251, column: 16, scope: !1629)
!1752 = !DILocation(line: 252, column: 15, scope: !1629)
!1753 = !DILocation(line: 259, column: 25, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1755, file: !766, line: 258, column: 15)
!1755 = distinct !DILexicalBlock(scope: !1629, file: !766, line: 258, column: 15)
!1756 = !DILocation(line: 0, scope: !1629)
!1757 = !DILocation(line: 256, column: 20, scope: !1629)
!1758 = !DILocation(line: 259, column: 17, scope: !1754)
!1759 = !DILocation(line: 262, column: 27, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1754, file: !766, line: 260, column: 19)
!1761 = !DILocation(line: 263, column: 21, scope: !1760)
!1762 = !DILocation(line: 265, column: 27, scope: !1760)
!1763 = !DILocation(line: 266, column: 21, scope: !1760)
!1764 = !DILocation(line: 268, column: 27, scope: !1760)
!1765 = !DILocation(line: 269, column: 21, scope: !1760)
!1766 = !DILocation(line: 275, column: 27, scope: !1760)
!1767 = !DILocation(line: 276, column: 21, scope: !1760)
!1768 = !DILocation(line: 279, column: 27, scope: !1760)
!1769 = !DILocation(line: 280, column: 21, scope: !1760)
!1770 = !DILocation(line: 258, column: 24, scope: !1754)
!1771 = !DILocation(line: 258, column: 15, scope: !1754)
!1772 = distinct !{!1772, !1773, !1774}
!1773 = !DILocation(line: 258, column: 15, scope: !1755)
!1774 = !DILocation(line: 283, column: 19, scope: !1755)
!1775 = !DILocation(line: 209, column: 18, scope: !1623)
!1776 = !DILocation(line: 294, column: 14, scope: !1623)
!1777 = !DILocation(line: 288, column: 28, scope: !1623)
!1778 = !DILocation(line: 288, column: 21, scope: !1623)
!1779 = !DILocation(line: 289, column: 22, scope: !1623)
!1780 = !DILocation(line: 290, column: 19, scope: !1623)
!1781 = !DILocation(line: 290, column: 24, scope: !1623)
!1782 = !DILocation(line: 291, column: 19, scope: !1623)
!1783 = !DILocation(line: 291, column: 28, scope: !1623)
!1784 = !DILocation(line: 292, column: 19, scope: !1623)
!1785 = !DILocation(line: 292, column: 25, scope: !1623)
!1786 = !DILocation(line: 293, column: 19, scope: !1623)
!1787 = !DILocation(line: 293, column: 29, scope: !1623)
!1788 = !DILocation(line: 296, column: 14, scope: !1619)
!1789 = !DILocation(line: 296, column: 24, scope: !1619)
!1790 = !DILocation(line: 177, column: 28, scope: !1620)
!1791 = !DILocation(line: 177, column: 3, scope: !1620)
!1792 = distinct !{!1792, !1793, !1794}
!1793 = !DILocation(line: 177, column: 3, scope: !1621)
!1794 = !DILocation(line: 300, column: 5, scope: !1621)
!1795 = !DILocation(line: 304, column: 16, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1797, file: !766, line: 303, column: 5)
!1797 = distinct !DILexicalBlock(scope: !1592, file: !766, line: 302, column: 7)
!1798 = !DILocation(line: 304, column: 21, scope: !1796)
!1799 = !DILocation(line: 305, column: 7, scope: !1796)
!1800 = !DILocation(line: 308, column: 1, scope: !1592)
!1801 = !DILocation(line: 309, column: 3, scope: !1592)
!1802 = !DILocation(line: 310, column: 3, scope: !1592)
!1803 = !DILocation(line: 311, column: 1, scope: !1592)
!1804 = distinct !DISubprogram(name: "mode_create_from_ref", scope: !766, file: !766, line: 317, type: !1593, scopeLine: 318, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !765, retainedNodes: !1805)
!1805 = !{!1806, !1807}
!1806 = !DILocalVariable(name: "ref_file", arg: 1, scope: !1804, file: !766, line: 317, type: !138)
!1807 = !DILocalVariable(name: "ref_stats", scope: !1804, file: !766, line: 319, type: !1808)
!1808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1809, line: 44, size: 1024, elements: !1810)
!1809 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "910289113a4b669f8271729077b0f267")
!1810 = !{!1811, !1812, !1814, !1815, !1817, !1819, !1821, !1822, !1823, !1824, !1826, !1827, !1829, !1837, !1838, !1839}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1808, file: !1809, line: 46, baseType: !132, size: 64)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1808, file: !1809, line: 47, baseType: !1813, size: 64, offset: 64)
!1813 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !133, line: 148, baseType: !134)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1808, file: !1809, line: 48, baseType: !1092, size: 32, offset: 128)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1808, file: !1809, line: 49, baseType: !1816, size: 32, offset: 160)
!1816 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !133, line: 151, baseType: !91)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1808, file: !1809, line: 50, baseType: !1818, size: 32, offset: 192)
!1818 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !133, line: 146, baseType: !91)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1808, file: !1809, line: 51, baseType: !1820, size: 32, offset: 224)
!1820 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !133, line: 147, baseType: !91)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1808, file: !1809, line: 52, baseType: !132, size: 64, offset: 256)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1808, file: !1809, line: 53, baseType: !132, size: 64, offset: 320)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1808, file: !1809, line: 54, baseType: !273, size: 64, offset: 384)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1808, file: !1809, line: 55, baseType: !1825, size: 32, offset: 448)
!1825 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !133, line: 175, baseType: !85)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1808, file: !1809, line: 56, baseType: !85, size: 32, offset: 480)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1808, file: !1809, line: 57, baseType: !1828, size: 64, offset: 512)
!1828 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !133, line: 180, baseType: !274)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1808, file: !1809, line: 65, baseType: !1830, size: 128, offset: 576)
!1830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1831, line: 11, size: 128, elements: !1832)
!1831 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!1832 = !{!1833, !1835}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1830, file: !1831, line: 16, baseType: !1834, size: 64)
!1834 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !133, line: 160, baseType: !274)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1830, file: !1831, line: 21, baseType: !1836, size: 64, offset: 64)
!1836 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !133, line: 197, baseType: !274)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1808, file: !1809, line: 66, baseType: !1830, size: 128, offset: 704)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1808, file: !1809, line: 67, baseType: !1830, size: 128, offset: 832)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1808, file: !1809, line: 79, baseType: !1840, size: 64, offset: 960)
!1840 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 64, elements: !318)
!1841 = !DILocation(line: 0, scope: !1804)
!1842 = !DILocation(line: 319, column: 3, scope: !1804)
!1843 = !DILocation(line: 319, column: 15, scope: !1804)
!1844 = !DILocation(line: 321, column: 7, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1804, file: !766, line: 321, column: 7)
!1846 = !DILocation(line: 321, column: 35, scope: !1845)
!1847 = !DILocation(line: 321, column: 7, scope: !1804)
!1848 = !DILocation(line: 323, column: 41, scope: !1804)
!1849 = !{!1850, !930, i64 16}
!1850 = !{!"stat", !1219, i64 0, !1219, i64 8, !930, i64 16, !930, i64 20, !930, i64 24, !930, i64 28, !1219, i64 32, !1219, i64 40, !1219, i64 48, !930, i64 56, !930, i64 60, !1219, i64 64, !1851, i64 72, !1851, i64 88, !1851, i64 104, !862, i64 120}
!1851 = !{!"timespec", !1219, i64 0, !1219, i64 8}
!1852 = !DILocation(line: 0, scope: !1659, inlinedAt: !1853)
!1853 = distinct !DILocation(line: 323, column: 10, scope: !1804)
!1854 = !DILocation(line: 114, column: 27, scope: !1659, inlinedAt: !1853)
!1855 = !DILocation(line: 115, column: 9, scope: !1659, inlinedAt: !1853)
!1856 = !DILocation(line: 116, column: 6, scope: !1659, inlinedAt: !1853)
!1857 = !DILocation(line: 116, column: 11, scope: !1659, inlinedAt: !1853)
!1858 = !DILocation(line: 117, column: 6, scope: !1659, inlinedAt: !1853)
!1859 = !DILocation(line: 117, column: 15, scope: !1659, inlinedAt: !1853)
!1860 = !DILocation(line: 118, column: 6, scope: !1659, inlinedAt: !1853)
!1861 = !DILocation(line: 118, column: 12, scope: !1659, inlinedAt: !1853)
!1862 = !DILocation(line: 119, column: 6, scope: !1659, inlinedAt: !1853)
!1863 = !DILocation(line: 119, column: 16, scope: !1659, inlinedAt: !1853)
!1864 = !DILocation(line: 120, column: 8, scope: !1659, inlinedAt: !1853)
!1865 = !DILocation(line: 120, column: 13, scope: !1659, inlinedAt: !1853)
!1866 = !DILocation(line: 323, column: 3, scope: !1804)
!1867 = !DILocation(line: 324, column: 1, scope: !1804)
!1868 = !DISubprogram(name: "stat", scope: !1280, file: !1280, line: 205, type: !1869, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !869)
!1869 = !DISubroutineType(types: !1870)
!1870 = !{!85, !920, !1871}
!1871 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1872)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1873 = distinct !DISubprogram(name: "mode_adjust", scope: !766, file: !766, line: 340, type: !1874, scopeLine: 342, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !765, retainedNodes: !1879)
!1874 = !DISubroutineType(types: !1875)
!1875 = !{!1091, !1091, !234, !1091, !1876, !1878}
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1877 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1596)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1879 = !{!1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1891, !1892, !1893}
!1880 = !DILocalVariable(name: "oldmode", arg: 1, scope: !1873, file: !766, line: 340, type: !1091)
!1881 = !DILocalVariable(name: "dir", arg: 2, scope: !1873, file: !766, line: 340, type: !234)
!1882 = !DILocalVariable(name: "umask_value", arg: 3, scope: !1873, file: !766, line: 340, type: !1091)
!1883 = !DILocalVariable(name: "changes", arg: 4, scope: !1873, file: !766, line: 341, type: !1876)
!1884 = !DILocalVariable(name: "pmode_bits", arg: 5, scope: !1873, file: !766, line: 341, type: !1878)
!1885 = !DILocalVariable(name: "newmode", scope: !1873, file: !766, line: 344, type: !1091)
!1886 = !DILocalVariable(name: "mode_bits", scope: !1873, file: !766, line: 347, type: !1091)
!1887 = !DILocalVariable(name: "affected", scope: !1888, file: !766, line: 351, type: !1091)
!1888 = distinct !DILexicalBlock(scope: !1889, file: !766, line: 350, column: 5)
!1889 = distinct !DILexicalBlock(scope: !1890, file: !766, line: 349, column: 3)
!1890 = distinct !DILexicalBlock(scope: !1873, file: !766, line: 349, column: 3)
!1891 = !DILocalVariable(name: "omit_change", scope: !1888, file: !766, line: 352, type: !1091)
!1892 = !DILocalVariable(name: "value", scope: !1888, file: !766, line: 354, type: !1091)
!1893 = !DILocalVariable(name: "preserved", scope: !1894, file: !766, line: 394, type: !1091)
!1894 = distinct !DILexicalBlock(scope: !1895, file: !766, line: 393, column: 11)
!1895 = distinct !DILexicalBlock(scope: !1888, file: !766, line: 388, column: 9)
!1896 = !DILocation(line: 0, scope: !1873)
!1897 = !DILocation(line: 344, column: 28, scope: !1873)
!1898 = !DILocation(line: 349, column: 19, scope: !1889)
!1899 = !DILocation(line: 349, column: 24, scope: !1889)
!1900 = !DILocation(line: 349, column: 3, scope: !1890)
!1901 = !DILocation(line: 351, column: 34, scope: !1888)
!1902 = !DILocation(line: 0, scope: !1888)
!1903 = !DILocation(line: 353, column: 52, scope: !1888)
!1904 = !DILocation(line: 353, column: 41, scope: !1888)
!1905 = !DILocation(line: 353, column: 39, scope: !1888)
!1906 = !DILocation(line: 354, column: 31, scope: !1888)
!1907 = !DILocation(line: 356, column: 7, scope: !1888)
!1908 = !DILocation(line: 363, column: 17, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1888, file: !766, line: 357, column: 9)
!1910 = !DILocation(line: 366, column: 28, scope: !1909)
!1911 = !DILocation(line: 366, column: 22, scope: !1909)
!1912 = !DILocation(line: 368, column: 30, scope: !1909)
!1913 = !DILocation(line: 368, column: 24, scope: !1909)
!1914 = !DILocation(line: 370, column: 30, scope: !1909)
!1915 = !DILocation(line: 370, column: 24, scope: !1909)
!1916 = !DILocation(line: 370, column: 21, scope: !1909)
!1917 = !DILocation(line: 366, column: 17, scope: !1909)
!1918 = !DILocation(line: 372, column: 11, scope: !1909)
!1919 = !DILocation(line: 377, column: 24, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1909, file: !766, line: 377, column: 15)
!1921 = !DILocation(line: 377, column: 57, scope: !1920)
!1922 = !DILocation(line: 377, column: 15, scope: !1909)
!1923 = !DILocation(line: 385, column: 17, scope: !1888)
!1924 = !DILocation(line: 385, column: 55, scope: !1888)
!1925 = !DILocation(line: 385, column: 53, scope: !1888)
!1926 = !DILocation(line: 385, column: 13, scope: !1888)
!1927 = !DILocation(line: 387, column: 24, scope: !1888)
!1928 = !DILocation(line: 387, column: 7, scope: !1888)
!1929 = !DILocation(line: 394, column: 33, scope: !1894)
!1930 = !DILocation(line: 394, column: 59, scope: !1894)
!1931 = !DILocation(line: 0, scope: !1894)
!1932 = !DILocation(line: 395, column: 42, scope: !1894)
!1933 = !DILocation(line: 395, column: 23, scope: !1894)
!1934 = !DILocation(line: 396, column: 32, scope: !1894)
!1935 = !DILocation(line: 396, column: 45, scope: !1894)
!1936 = !DILocation(line: 401, column: 21, scope: !1895)
!1937 = !DILocation(line: 402, column: 19, scope: !1895)
!1938 = !DILocation(line: 403, column: 11, scope: !1895)
!1939 = !DILocation(line: 406, column: 21, scope: !1895)
!1940 = !DILocation(line: 407, column: 22, scope: !1895)
!1941 = !DILocation(line: 407, column: 19, scope: !1895)
!1942 = !DILocation(line: 408, column: 11, scope: !1895)
!1943 = !DILocation(line: 349, column: 45, scope: !1889)
!1944 = distinct !{!1944, !1900, !1945, !976}
!1945 = !DILocation(line: 410, column: 5, scope: !1890)
!1946 = !DILocation(line: 347, column: 10, scope: !1873)
!1947 = !DILocation(line: 344, column: 10, scope: !1873)
!1948 = !DILocation(line: 412, column: 7, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1873, file: !766, line: 412, column: 7)
!1950 = !DILocation(line: 412, column: 7, scope: !1873)
!1951 = !DILocation(line: 413, column: 17, scope: !1949)
!1952 = !DILocation(line: 413, column: 5, scope: !1949)
!1953 = !DILocation(line: 414, column: 3, scope: !1873)
!1954 = distinct !DISubprogram(name: "set_program_name", scope: !507, file: !507, line: 37, type: !881, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !506, retainedNodes: !1955)
!1955 = !{!1956, !1957, !1958}
!1956 = !DILocalVariable(name: "argv0", arg: 1, scope: !1954, file: !507, line: 37, type: !138)
!1957 = !DILocalVariable(name: "slash", scope: !1954, file: !507, line: 44, type: !138)
!1958 = !DILocalVariable(name: "base", scope: !1954, file: !507, line: 45, type: !138)
!1959 = !DILocation(line: 0, scope: !1954)
!1960 = !DILocation(line: 44, column: 23, scope: !1954)
!1961 = !DILocation(line: 45, column: 22, scope: !1954)
!1962 = !DILocation(line: 46, column: 17, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1954, file: !507, line: 46, column: 7)
!1964 = !DILocation(line: 46, column: 9, scope: !1963)
!1965 = !DILocation(line: 46, column: 25, scope: !1963)
!1966 = !DILocation(line: 46, column: 40, scope: !1963)
!1967 = !DILocalVariable(name: "__s1", arg: 1, scope: !1968, file: !942, line: 974, type: !1074)
!1968 = distinct !DISubprogram(name: "memeq", scope: !942, file: !942, line: 974, type: !1969, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !506, retainedNodes: !1971)
!1969 = !DISubroutineType(types: !1970)
!1970 = !{!234, !1074, !1074, !136}
!1971 = !{!1967, !1972, !1973}
!1972 = !DILocalVariable(name: "__s2", arg: 2, scope: !1968, file: !942, line: 974, type: !1074)
!1973 = !DILocalVariable(name: "__n", arg: 3, scope: !1968, file: !942, line: 974, type: !136)
!1974 = !DILocation(line: 0, scope: !1968, inlinedAt: !1975)
!1975 = distinct !DILocation(line: 46, column: 28, scope: !1963)
!1976 = !DILocation(line: 976, column: 11, scope: !1968, inlinedAt: !1975)
!1977 = !DILocation(line: 976, column: 10, scope: !1968, inlinedAt: !1975)
!1978 = !DILocation(line: 46, column: 7, scope: !1954)
!1979 = !DILocation(line: 49, column: 11, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1981, file: !507, line: 49, column: 11)
!1981 = distinct !DILexicalBlock(scope: !1963, file: !507, line: 47, column: 5)
!1982 = !DILocation(line: 49, column: 36, scope: !1980)
!1983 = !DILocation(line: 49, column: 11, scope: !1981)
!1984 = !DILocation(line: 65, column: 16, scope: !1954)
!1985 = !DILocation(line: 71, column: 27, scope: !1954)
!1986 = !DILocation(line: 74, column: 33, scope: !1954)
!1987 = !DILocation(line: 76, column: 1, scope: !1954)
!1988 = !DISubprogram(name: "strrchr", scope: !1046, file: !1046, line: 273, type: !1061, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !869)
!1989 = !DILocation(line: 0, scope: !516)
!1990 = !DILocation(line: 40, column: 29, scope: !516)
!1991 = !DILocation(line: 41, column: 19, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !516, file: !517, line: 41, column: 7)
!1993 = !DILocation(line: 41, column: 7, scope: !516)
!1994 = !DILocation(line: 47, column: 3, scope: !516)
!1995 = !DILocation(line: 48, column: 3, scope: !516)
!1996 = !DILocation(line: 48, column: 13, scope: !516)
!1997 = !DILocalVariable(name: "ps", arg: 1, scope: !1998, file: !1999, line: 1135, type: !2002)
!1998 = distinct !DISubprogram(name: "mbszero", scope: !1999, file: !1999, line: 1135, type: !2000, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !520, retainedNodes: !2003)
!1999 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2000 = !DISubroutineType(types: !2001)
!2001 = !{null, !2002}
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!2003 = !{!1997}
!2004 = !DILocation(line: 0, scope: !1998, inlinedAt: !2005)
!2005 = distinct !DILocation(line: 48, column: 18, scope: !516)
!2006 = !DILocalVariable(name: "__dest", arg: 1, scope: !2007, file: !2008, line: 57, type: !129)
!2007 = distinct !DISubprogram(name: "memset", scope: !2008, file: !2008, line: 57, type: !2009, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !520, retainedNodes: !2011)
!2008 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!2009 = !DISubroutineType(types: !2010)
!2010 = !{!129, !129, !85, !136}
!2011 = !{!2006, !2012, !2013}
!2012 = !DILocalVariable(name: "__ch", arg: 2, scope: !2007, file: !2008, line: 57, type: !85)
!2013 = !DILocalVariable(name: "__len", arg: 3, scope: !2007, file: !2008, line: 57, type: !136)
!2014 = !DILocation(line: 0, scope: !2007, inlinedAt: !2015)
!2015 = distinct !DILocation(line: 1137, column: 3, scope: !1998, inlinedAt: !2005)
!2016 = !DILocation(line: 59, column: 10, scope: !2007, inlinedAt: !2015)
!2017 = !DILocation(line: 49, column: 7, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !516, file: !517, line: 49, column: 7)
!2019 = !DILocation(line: 49, column: 39, scope: !2018)
!2020 = !DILocation(line: 49, column: 44, scope: !2018)
!2021 = !DILocation(line: 54, column: 1, scope: !516)
!2022 = !DISubprogram(name: "mbrtoc32", scope: !528, file: !528, line: 57, type: !2023, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !869)
!2023 = !DISubroutineType(types: !2024)
!2024 = !{!136, !2025, !920, !136, !2027}
!2025 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2026)
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!2027 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2002)
!2028 = distinct !DISubprogram(name: "clone_quoting_options", scope: !547, file: !547, line: 113, type: !2029, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !2032)
!2029 = !DISubroutineType(types: !2030)
!2030 = !{!2031, !2031}
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!2032 = !{!2033, !2034, !2035}
!2033 = !DILocalVariable(name: "o", arg: 1, scope: !2028, file: !547, line: 113, type: !2031)
!2034 = !DILocalVariable(name: "saved_errno", scope: !2028, file: !547, line: 115, type: !85)
!2035 = !DILocalVariable(name: "p", scope: !2028, file: !547, line: 116, type: !2031)
!2036 = !DILocation(line: 0, scope: !2028)
!2037 = !DILocation(line: 115, column: 21, scope: !2028)
!2038 = !DILocation(line: 116, column: 40, scope: !2028)
!2039 = !DILocation(line: 116, column: 31, scope: !2028)
!2040 = !DILocation(line: 118, column: 9, scope: !2028)
!2041 = !DILocation(line: 119, column: 3, scope: !2028)
!2042 = distinct !DISubprogram(name: "get_quoting_style", scope: !547, file: !547, line: 124, type: !2043, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !2047)
!2043 = !DISubroutineType(types: !2044)
!2044 = !{!98, !2045}
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !583)
!2047 = !{!2048}
!2048 = !DILocalVariable(name: "o", arg: 1, scope: !2042, file: !547, line: 124, type: !2045)
!2049 = !DILocation(line: 0, scope: !2042)
!2050 = !DILocation(line: 126, column: 11, scope: !2042)
!2051 = !DILocation(line: 126, column: 46, scope: !2042)
!2052 = !{!2053, !862, i64 0}
!2053 = !{!"quoting_options", !862, i64 0, !930, i64 4, !862, i64 8, !861, i64 40, !861, i64 48}
!2054 = !DILocation(line: 126, column: 3, scope: !2042)
!2055 = distinct !DISubprogram(name: "set_quoting_style", scope: !547, file: !547, line: 132, type: !2056, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !2058)
!2056 = !DISubroutineType(types: !2057)
!2057 = !{null, !2031, !98}
!2058 = !{!2059, !2060}
!2059 = !DILocalVariable(name: "o", arg: 1, scope: !2055, file: !547, line: 132, type: !2031)
!2060 = !DILocalVariable(name: "s", arg: 2, scope: !2055, file: !547, line: 132, type: !98)
!2061 = !DILocation(line: 0, scope: !2055)
!2062 = !DILocation(line: 134, column: 4, scope: !2055)
!2063 = !DILocation(line: 134, column: 45, scope: !2055)
!2064 = !DILocation(line: 135, column: 1, scope: !2055)
!2065 = distinct !DISubprogram(name: "set_char_quoting", scope: !547, file: !547, line: 143, type: !2066, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !2068)
!2066 = !DISubroutineType(types: !2067)
!2067 = !{!85, !2031, !4, !85}
!2068 = !{!2069, !2070, !2071, !2072, !2073, !2075, !2076}
!2069 = !DILocalVariable(name: "o", arg: 1, scope: !2065, file: !547, line: 143, type: !2031)
!2070 = !DILocalVariable(name: "c", arg: 2, scope: !2065, file: !547, line: 143, type: !4)
!2071 = !DILocalVariable(name: "i", arg: 3, scope: !2065, file: !547, line: 143, type: !85)
!2072 = !DILocalVariable(name: "uc", scope: !2065, file: !547, line: 145, type: !140)
!2073 = !DILocalVariable(name: "p", scope: !2065, file: !547, line: 146, type: !2074)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!2075 = !DILocalVariable(name: "shift", scope: !2065, file: !547, line: 148, type: !85)
!2076 = !DILocalVariable(name: "r", scope: !2065, file: !547, line: 149, type: !91)
!2077 = !DILocation(line: 0, scope: !2065)
!2078 = !DILocation(line: 147, column: 6, scope: !2065)
!2079 = !DILocation(line: 147, column: 41, scope: !2065)
!2080 = !DILocation(line: 147, column: 62, scope: !2065)
!2081 = !DILocation(line: 147, column: 57, scope: !2065)
!2082 = !DILocation(line: 148, column: 15, scope: !2065)
!2083 = !DILocation(line: 149, column: 21, scope: !2065)
!2084 = !DILocation(line: 149, column: 24, scope: !2065)
!2085 = !DILocation(line: 149, column: 34, scope: !2065)
!2086 = !DILocation(line: 150, column: 19, scope: !2065)
!2087 = !DILocation(line: 150, column: 24, scope: !2065)
!2088 = !DILocation(line: 150, column: 6, scope: !2065)
!2089 = !DILocation(line: 151, column: 3, scope: !2065)
!2090 = distinct !DISubprogram(name: "set_quoting_flags", scope: !547, file: !547, line: 159, type: !2091, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !2093)
!2091 = !DISubroutineType(types: !2092)
!2092 = !{!85, !2031, !85}
!2093 = !{!2094, !2095, !2096}
!2094 = !DILocalVariable(name: "o", arg: 1, scope: !2090, file: !547, line: 159, type: !2031)
!2095 = !DILocalVariable(name: "i", arg: 2, scope: !2090, file: !547, line: 159, type: !85)
!2096 = !DILocalVariable(name: "r", scope: !2090, file: !547, line: 163, type: !85)
!2097 = !DILocation(line: 0, scope: !2090)
!2098 = !DILocation(line: 161, column: 8, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2090, file: !547, line: 161, column: 7)
!2100 = !DILocation(line: 161, column: 7, scope: !2090)
!2101 = !DILocation(line: 163, column: 14, scope: !2090)
!2102 = !{!2053, !930, i64 4}
!2103 = !DILocation(line: 164, column: 12, scope: !2090)
!2104 = !DILocation(line: 165, column: 3, scope: !2090)
!2105 = distinct !DISubprogram(name: "set_custom_quoting", scope: !547, file: !547, line: 169, type: !2106, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !2108)
!2106 = !DISubroutineType(types: !2107)
!2107 = !{null, !2031, !138, !138}
!2108 = !{!2109, !2110, !2111}
!2109 = !DILocalVariable(name: "o", arg: 1, scope: !2105, file: !547, line: 169, type: !2031)
!2110 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2105, file: !547, line: 170, type: !138)
!2111 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2105, file: !547, line: 170, type: !138)
!2112 = !DILocation(line: 0, scope: !2105)
!2113 = !DILocation(line: 172, column: 8, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2105, file: !547, line: 172, column: 7)
!2115 = !DILocation(line: 172, column: 7, scope: !2105)
!2116 = !DILocation(line: 174, column: 12, scope: !2105)
!2117 = !DILocation(line: 175, column: 8, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2105, file: !547, line: 175, column: 7)
!2119 = !DILocation(line: 175, column: 19, scope: !2118)
!2120 = !DILocation(line: 176, column: 5, scope: !2118)
!2121 = !DILocation(line: 177, column: 6, scope: !2105)
!2122 = !DILocation(line: 177, column: 17, scope: !2105)
!2123 = !{!2053, !861, i64 40}
!2124 = !DILocation(line: 178, column: 6, scope: !2105)
!2125 = !DILocation(line: 178, column: 18, scope: !2105)
!2126 = !{!2053, !861, i64 48}
!2127 = !DILocation(line: 179, column: 1, scope: !2105)
!2128 = !DISubprogram(name: "abort", scope: !1050, file: !1050, line: 598, type: !502, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !869)
!2129 = distinct !DISubprogram(name: "quotearg_buffer", scope: !547, file: !547, line: 774, type: !2130, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !2132)
!2130 = !DISubroutineType(types: !2131)
!2131 = !{!136, !128, !136, !138, !136, !2045}
!2132 = !{!2133, !2134, !2135, !2136, !2137, !2138, !2139, !2140}
!2133 = !DILocalVariable(name: "buffer", arg: 1, scope: !2129, file: !547, line: 774, type: !128)
!2134 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2129, file: !547, line: 774, type: !136)
!2135 = !DILocalVariable(name: "arg", arg: 3, scope: !2129, file: !547, line: 775, type: !138)
!2136 = !DILocalVariable(name: "argsize", arg: 4, scope: !2129, file: !547, line: 775, type: !136)
!2137 = !DILocalVariable(name: "o", arg: 5, scope: !2129, file: !547, line: 776, type: !2045)
!2138 = !DILocalVariable(name: "p", scope: !2129, file: !547, line: 778, type: !2045)
!2139 = !DILocalVariable(name: "saved_errno", scope: !2129, file: !547, line: 779, type: !85)
!2140 = !DILocalVariable(name: "r", scope: !2129, file: !547, line: 780, type: !136)
!2141 = !DILocation(line: 0, scope: !2129)
!2142 = !DILocation(line: 778, column: 37, scope: !2129)
!2143 = !DILocation(line: 779, column: 21, scope: !2129)
!2144 = !DILocation(line: 781, column: 43, scope: !2129)
!2145 = !DILocation(line: 781, column: 53, scope: !2129)
!2146 = !DILocation(line: 781, column: 63, scope: !2129)
!2147 = !DILocation(line: 782, column: 43, scope: !2129)
!2148 = !DILocation(line: 782, column: 58, scope: !2129)
!2149 = !DILocation(line: 780, column: 14, scope: !2129)
!2150 = !DILocation(line: 783, column: 9, scope: !2129)
!2151 = !DILocation(line: 784, column: 3, scope: !2129)
!2152 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !547, file: !547, line: 251, type: !2153, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !2157)
!2153 = !DISubroutineType(types: !2154)
!2154 = !{!136, !128, !136, !138, !136, !98, !85, !2155, !138, !138}
!2155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2156, size: 64)
!2156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !91)
!2157 = !{!2158, !2159, !2160, !2161, !2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175, !2176, !2177, !2182, !2184, !2187, !2188, !2189, !2190, !2193, !2194, !2197, !2201, !2202, !2210, !2213, !2214, !2216, !2217, !2218, !2219}
!2158 = !DILocalVariable(name: "buffer", arg: 1, scope: !2152, file: !547, line: 251, type: !128)
!2159 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2152, file: !547, line: 251, type: !136)
!2160 = !DILocalVariable(name: "arg", arg: 3, scope: !2152, file: !547, line: 252, type: !138)
!2161 = !DILocalVariable(name: "argsize", arg: 4, scope: !2152, file: !547, line: 252, type: !136)
!2162 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2152, file: !547, line: 253, type: !98)
!2163 = !DILocalVariable(name: "flags", arg: 6, scope: !2152, file: !547, line: 253, type: !85)
!2164 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2152, file: !547, line: 254, type: !2155)
!2165 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2152, file: !547, line: 255, type: !138)
!2166 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2152, file: !547, line: 256, type: !138)
!2167 = !DILocalVariable(name: "unibyte_locale", scope: !2152, file: !547, line: 258, type: !234)
!2168 = !DILocalVariable(name: "len", scope: !2152, file: !547, line: 260, type: !136)
!2169 = !DILocalVariable(name: "orig_buffersize", scope: !2152, file: !547, line: 261, type: !136)
!2170 = !DILocalVariable(name: "quote_string", scope: !2152, file: !547, line: 262, type: !138)
!2171 = !DILocalVariable(name: "quote_string_len", scope: !2152, file: !547, line: 263, type: !136)
!2172 = !DILocalVariable(name: "backslash_escapes", scope: !2152, file: !547, line: 264, type: !234)
!2173 = !DILocalVariable(name: "elide_outer_quotes", scope: !2152, file: !547, line: 265, type: !234)
!2174 = !DILocalVariable(name: "encountered_single_quote", scope: !2152, file: !547, line: 266, type: !234)
!2175 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2152, file: !547, line: 267, type: !234)
!2176 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2152, file: !547, line: 309, type: !234)
!2177 = !DILocalVariable(name: "lq", scope: !2178, file: !547, line: 361, type: !138)
!2178 = distinct !DILexicalBlock(scope: !2179, file: !547, line: 361, column: 11)
!2179 = distinct !DILexicalBlock(scope: !2180, file: !547, line: 360, column: 13)
!2180 = distinct !DILexicalBlock(scope: !2181, file: !547, line: 333, column: 7)
!2181 = distinct !DILexicalBlock(scope: !2152, file: !547, line: 312, column: 5)
!2182 = !DILocalVariable(name: "i", scope: !2183, file: !547, line: 395, type: !136)
!2183 = distinct !DILexicalBlock(scope: !2152, file: !547, line: 395, column: 3)
!2184 = !DILocalVariable(name: "is_right_quote", scope: !2185, file: !547, line: 397, type: !234)
!2185 = distinct !DILexicalBlock(scope: !2186, file: !547, line: 396, column: 5)
!2186 = distinct !DILexicalBlock(scope: !2183, file: !547, line: 395, column: 3)
!2187 = !DILocalVariable(name: "escaping", scope: !2185, file: !547, line: 398, type: !234)
!2188 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2185, file: !547, line: 399, type: !234)
!2189 = !DILocalVariable(name: "c", scope: !2185, file: !547, line: 417, type: !140)
!2190 = !DILocalVariable(name: "m", scope: !2191, file: !547, line: 598, type: !136)
!2191 = distinct !DILexicalBlock(scope: !2192, file: !547, line: 596, column: 11)
!2192 = distinct !DILexicalBlock(scope: !2185, file: !547, line: 419, column: 9)
!2193 = !DILocalVariable(name: "printable", scope: !2191, file: !547, line: 600, type: !234)
!2194 = !DILocalVariable(name: "mbs", scope: !2195, file: !547, line: 609, type: !617)
!2195 = distinct !DILexicalBlock(scope: !2196, file: !547, line: 608, column: 15)
!2196 = distinct !DILexicalBlock(scope: !2191, file: !547, line: 602, column: 17)
!2197 = !DILocalVariable(name: "w", scope: !2198, file: !547, line: 618, type: !527)
!2198 = distinct !DILexicalBlock(scope: !2199, file: !547, line: 617, column: 19)
!2199 = distinct !DILexicalBlock(scope: !2200, file: !547, line: 616, column: 17)
!2200 = distinct !DILexicalBlock(scope: !2195, file: !547, line: 616, column: 17)
!2201 = !DILocalVariable(name: "bytes", scope: !2198, file: !547, line: 619, type: !136)
!2202 = !DILocalVariable(name: "j", scope: !2203, file: !547, line: 648, type: !136)
!2203 = distinct !DILexicalBlock(scope: !2204, file: !547, line: 648, column: 29)
!2204 = distinct !DILexicalBlock(scope: !2205, file: !547, line: 647, column: 27)
!2205 = distinct !DILexicalBlock(scope: !2206, file: !547, line: 645, column: 29)
!2206 = distinct !DILexicalBlock(scope: !2207, file: !547, line: 636, column: 23)
!2207 = distinct !DILexicalBlock(scope: !2208, file: !547, line: 628, column: 30)
!2208 = distinct !DILexicalBlock(scope: !2209, file: !547, line: 623, column: 30)
!2209 = distinct !DILexicalBlock(scope: !2198, file: !547, line: 621, column: 25)
!2210 = !DILocalVariable(name: "ilim", scope: !2211, file: !547, line: 674, type: !136)
!2211 = distinct !DILexicalBlock(scope: !2212, file: !547, line: 671, column: 15)
!2212 = distinct !DILexicalBlock(scope: !2191, file: !547, line: 670, column: 17)
!2213 = !DILabel(scope: !2152, name: "process_input", file: !547, line: 308)
!2214 = !DILabel(scope: !2215, name: "c_and_shell_escape", file: !547, line: 502)
!2215 = distinct !DILexicalBlock(scope: !2192, file: !547, line: 478, column: 9)
!2216 = !DILabel(scope: !2215, name: "c_escape", file: !547, line: 507)
!2217 = !DILabel(scope: !2185, name: "store_escape", file: !547, line: 709)
!2218 = !DILabel(scope: !2185, name: "store_c", file: !547, line: 712)
!2219 = !DILabel(scope: !2152, name: "force_outer_quoting_style", file: !547, line: 753)
!2220 = !DILocation(line: 0, scope: !2152)
!2221 = !DILocation(line: 258, column: 25, scope: !2152)
!2222 = !DILocation(line: 258, column: 36, scope: !2152)
!2223 = !DILocation(line: 267, column: 3, scope: !2152)
!2224 = !DILocation(line: 261, column: 10, scope: !2152)
!2225 = !DILocation(line: 262, column: 15, scope: !2152)
!2226 = !DILocation(line: 263, column: 10, scope: !2152)
!2227 = !DILocation(line: 308, column: 2, scope: !2152)
!2228 = !DILocation(line: 311, column: 3, scope: !2152)
!2229 = !DILocation(line: 318, column: 11, scope: !2181)
!2230 = !DILocation(line: 319, column: 9, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2232, file: !547, line: 319, column: 9)
!2232 = distinct !DILexicalBlock(scope: !2233, file: !547, line: 319, column: 9)
!2233 = distinct !DILexicalBlock(scope: !2181, file: !547, line: 318, column: 11)
!2234 = !DILocation(line: 319, column: 9, scope: !2232)
!2235 = !DILocation(line: 0, scope: !608, inlinedAt: !2236)
!2236 = distinct !DILocation(line: 357, column: 26, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2238, file: !547, line: 335, column: 11)
!2238 = distinct !DILexicalBlock(scope: !2180, file: !547, line: 334, column: 13)
!2239 = !DILocation(line: 199, column: 29, scope: !608, inlinedAt: !2236)
!2240 = !DILocation(line: 201, column: 19, scope: !2241, inlinedAt: !2236)
!2241 = distinct !DILexicalBlock(scope: !608, file: !547, line: 201, column: 7)
!2242 = !DILocation(line: 201, column: 7, scope: !608, inlinedAt: !2236)
!2243 = !DILocation(line: 229, column: 3, scope: !608, inlinedAt: !2236)
!2244 = !DILocation(line: 230, column: 3, scope: !608, inlinedAt: !2236)
!2245 = !DILocation(line: 230, column: 13, scope: !608, inlinedAt: !2236)
!2246 = !DILocalVariable(name: "ps", arg: 1, scope: !2247, file: !1999, line: 1135, type: !2250)
!2247 = distinct !DISubprogram(name: "mbszero", scope: !1999, file: !1999, line: 1135, type: !2248, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !2251)
!2248 = !DISubroutineType(types: !2249)
!2249 = !{null, !2250}
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!2251 = !{!2246}
!2252 = !DILocation(line: 0, scope: !2247, inlinedAt: !2253)
!2253 = distinct !DILocation(line: 230, column: 18, scope: !608, inlinedAt: !2236)
!2254 = !DILocalVariable(name: "__dest", arg: 1, scope: !2255, file: !2008, line: 57, type: !129)
!2255 = distinct !DISubprogram(name: "memset", scope: !2008, file: !2008, line: 57, type: !2009, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !2256)
!2256 = !{!2254, !2257, !2258}
!2257 = !DILocalVariable(name: "__ch", arg: 2, scope: !2255, file: !2008, line: 57, type: !85)
!2258 = !DILocalVariable(name: "__len", arg: 3, scope: !2255, file: !2008, line: 57, type: !136)
!2259 = !DILocation(line: 0, scope: !2255, inlinedAt: !2260)
!2260 = distinct !DILocation(line: 1137, column: 3, scope: !2247, inlinedAt: !2253)
!2261 = !DILocation(line: 59, column: 10, scope: !2255, inlinedAt: !2260)
!2262 = !DILocation(line: 231, column: 7, scope: !2263, inlinedAt: !2236)
!2263 = distinct !DILexicalBlock(scope: !608, file: !547, line: 231, column: 7)
!2264 = !DILocation(line: 231, column: 40, scope: !2263, inlinedAt: !2236)
!2265 = !DILocation(line: 231, column: 45, scope: !2263, inlinedAt: !2236)
!2266 = !DILocation(line: 235, column: 1, scope: !608, inlinedAt: !2236)
!2267 = !DILocation(line: 0, scope: !608, inlinedAt: !2268)
!2268 = distinct !DILocation(line: 358, column: 27, scope: !2237)
!2269 = !DILocation(line: 199, column: 29, scope: !608, inlinedAt: !2268)
!2270 = !DILocation(line: 201, column: 19, scope: !2241, inlinedAt: !2268)
!2271 = !DILocation(line: 201, column: 7, scope: !608, inlinedAt: !2268)
!2272 = !DILocation(line: 229, column: 3, scope: !608, inlinedAt: !2268)
!2273 = !DILocation(line: 230, column: 3, scope: !608, inlinedAt: !2268)
!2274 = !DILocation(line: 230, column: 13, scope: !608, inlinedAt: !2268)
!2275 = !DILocation(line: 0, scope: !2247, inlinedAt: !2276)
!2276 = distinct !DILocation(line: 230, column: 18, scope: !608, inlinedAt: !2268)
!2277 = !DILocation(line: 0, scope: !2255, inlinedAt: !2278)
!2278 = distinct !DILocation(line: 1137, column: 3, scope: !2247, inlinedAt: !2276)
!2279 = !DILocation(line: 59, column: 10, scope: !2255, inlinedAt: !2278)
!2280 = !DILocation(line: 231, column: 7, scope: !2263, inlinedAt: !2268)
!2281 = !DILocation(line: 231, column: 40, scope: !2263, inlinedAt: !2268)
!2282 = !DILocation(line: 231, column: 45, scope: !2263, inlinedAt: !2268)
!2283 = !DILocation(line: 235, column: 1, scope: !608, inlinedAt: !2268)
!2284 = !DILocation(line: 360, column: 13, scope: !2180)
!2285 = !DILocation(line: 0, scope: !2178)
!2286 = !DILocation(line: 361, column: 45, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2178, file: !547, line: 361, column: 11)
!2288 = !DILocation(line: 361, column: 11, scope: !2178)
!2289 = !DILocation(line: 362, column: 13, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2291, file: !547, line: 362, column: 13)
!2291 = distinct !DILexicalBlock(scope: !2287, file: !547, line: 362, column: 13)
!2292 = !DILocation(line: 362, column: 13, scope: !2291)
!2293 = !DILocation(line: 361, column: 52, scope: !2287)
!2294 = distinct !{!2294, !2288, !2295, !976}
!2295 = !DILocation(line: 362, column: 13, scope: !2178)
!2296 = !DILocation(line: 260, column: 10, scope: !2152)
!2297 = !DILocation(line: 365, column: 28, scope: !2180)
!2298 = !DILocation(line: 367, column: 7, scope: !2181)
!2299 = !DILocation(line: 370, column: 7, scope: !2181)
!2300 = !DILocation(line: 376, column: 11, scope: !2181)
!2301 = !DILocation(line: 381, column: 11, scope: !2181)
!2302 = !DILocation(line: 382, column: 9, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2304, file: !547, line: 382, column: 9)
!2304 = distinct !DILexicalBlock(scope: !2305, file: !547, line: 382, column: 9)
!2305 = distinct !DILexicalBlock(scope: !2181, file: !547, line: 381, column: 11)
!2306 = !DILocation(line: 382, column: 9, scope: !2304)
!2307 = !DILocation(line: 389, column: 7, scope: !2181)
!2308 = !DILocation(line: 392, column: 7, scope: !2181)
!2309 = !DILocation(line: 0, scope: !2183)
!2310 = !DILocation(line: 395, column: 8, scope: !2183)
!2311 = !DILocation(line: 395, scope: !2183)
!2312 = !DILocation(line: 395, column: 34, scope: !2186)
!2313 = !DILocation(line: 395, column: 26, scope: !2186)
!2314 = !DILocation(line: 395, column: 48, scope: !2186)
!2315 = !DILocation(line: 395, column: 55, scope: !2186)
!2316 = !DILocation(line: 395, column: 3, scope: !2183)
!2317 = !DILocation(line: 395, column: 67, scope: !2186)
!2318 = !DILocation(line: 0, scope: !2185)
!2319 = !DILocation(line: 402, column: 11, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2185, file: !547, line: 401, column: 11)
!2321 = !DILocation(line: 404, column: 17, scope: !2320)
!2322 = !DILocation(line: 405, column: 39, scope: !2320)
!2323 = !DILocation(line: 409, column: 32, scope: !2320)
!2324 = !DILocation(line: 405, column: 19, scope: !2320)
!2325 = !DILocation(line: 405, column: 15, scope: !2320)
!2326 = !DILocation(line: 410, column: 11, scope: !2320)
!2327 = !DILocation(line: 410, column: 25, scope: !2320)
!2328 = !DILocalVariable(name: "__s1", arg: 1, scope: !2329, file: !942, line: 974, type: !1074)
!2329 = distinct !DISubprogram(name: "memeq", scope: !942, file: !942, line: 974, type: !1969, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !2330)
!2330 = !{!2328, !2331, !2332}
!2331 = !DILocalVariable(name: "__s2", arg: 2, scope: !2329, file: !942, line: 974, type: !1074)
!2332 = !DILocalVariable(name: "__n", arg: 3, scope: !2329, file: !942, line: 974, type: !136)
!2333 = !DILocation(line: 0, scope: !2329, inlinedAt: !2334)
!2334 = distinct !DILocation(line: 410, column: 14, scope: !2320)
!2335 = !DILocation(line: 976, column: 11, scope: !2329, inlinedAt: !2334)
!2336 = !DILocation(line: 976, column: 10, scope: !2329, inlinedAt: !2334)
!2337 = !DILocation(line: 401, column: 11, scope: !2185)
!2338 = !DILocation(line: 417, column: 25, scope: !2185)
!2339 = !DILocation(line: 418, column: 7, scope: !2185)
!2340 = !DILocation(line: 421, column: 15, scope: !2192)
!2341 = !DILocation(line: 423, column: 15, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2343, file: !547, line: 423, column: 15)
!2343 = distinct !DILexicalBlock(scope: !2344, file: !547, line: 422, column: 13)
!2344 = distinct !DILexicalBlock(scope: !2192, file: !547, line: 421, column: 15)
!2345 = !DILocation(line: 423, column: 15, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2342, file: !547, line: 423, column: 15)
!2347 = !DILocation(line: 423, column: 15, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2349, file: !547, line: 423, column: 15)
!2349 = distinct !DILexicalBlock(scope: !2350, file: !547, line: 423, column: 15)
!2350 = distinct !DILexicalBlock(scope: !2346, file: !547, line: 423, column: 15)
!2351 = !DILocation(line: 423, column: 15, scope: !2349)
!2352 = !DILocation(line: 423, column: 15, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2354, file: !547, line: 423, column: 15)
!2354 = distinct !DILexicalBlock(scope: !2350, file: !547, line: 423, column: 15)
!2355 = !DILocation(line: 423, column: 15, scope: !2354)
!2356 = !DILocation(line: 423, column: 15, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2358, file: !547, line: 423, column: 15)
!2358 = distinct !DILexicalBlock(scope: !2350, file: !547, line: 423, column: 15)
!2359 = !DILocation(line: 423, column: 15, scope: !2358)
!2360 = !DILocation(line: 423, column: 15, scope: !2350)
!2361 = !DILocation(line: 423, column: 15, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2363, file: !547, line: 423, column: 15)
!2363 = distinct !DILexicalBlock(scope: !2342, file: !547, line: 423, column: 15)
!2364 = !DILocation(line: 423, column: 15, scope: !2363)
!2365 = !DILocation(line: 431, column: 19, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !2343, file: !547, line: 430, column: 19)
!2367 = !DILocation(line: 431, column: 24, scope: !2366)
!2368 = !DILocation(line: 431, column: 28, scope: !2366)
!2369 = !DILocation(line: 431, column: 38, scope: !2366)
!2370 = !DILocation(line: 431, column: 48, scope: !2366)
!2371 = !DILocation(line: 431, column: 59, scope: !2366)
!2372 = !DILocation(line: 433, column: 19, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2374, file: !547, line: 433, column: 19)
!2374 = distinct !DILexicalBlock(scope: !2375, file: !547, line: 433, column: 19)
!2375 = distinct !DILexicalBlock(scope: !2366, file: !547, line: 432, column: 17)
!2376 = !DILocation(line: 433, column: 19, scope: !2374)
!2377 = !DILocation(line: 434, column: 19, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !2379, file: !547, line: 434, column: 19)
!2379 = distinct !DILexicalBlock(scope: !2375, file: !547, line: 434, column: 19)
!2380 = !DILocation(line: 434, column: 19, scope: !2379)
!2381 = !DILocation(line: 435, column: 17, scope: !2375)
!2382 = !DILocation(line: 442, column: 20, scope: !2344)
!2383 = !DILocation(line: 447, column: 11, scope: !2192)
!2384 = !DILocation(line: 450, column: 19, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2192, file: !547, line: 448, column: 13)
!2386 = !DILocation(line: 456, column: 19, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2385, file: !547, line: 455, column: 19)
!2388 = !DILocation(line: 456, column: 24, scope: !2387)
!2389 = !DILocation(line: 456, column: 28, scope: !2387)
!2390 = !DILocation(line: 456, column: 38, scope: !2387)
!2391 = !DILocation(line: 456, column: 47, scope: !2387)
!2392 = !DILocation(line: 456, column: 41, scope: !2387)
!2393 = !DILocation(line: 456, column: 52, scope: !2387)
!2394 = !DILocation(line: 455, column: 19, scope: !2385)
!2395 = !DILocation(line: 457, column: 25, scope: !2387)
!2396 = !DILocation(line: 457, column: 17, scope: !2387)
!2397 = !DILocation(line: 464, column: 25, scope: !2398)
!2398 = distinct !DILexicalBlock(scope: !2387, file: !547, line: 458, column: 19)
!2399 = !DILocation(line: 468, column: 21, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !2401, file: !547, line: 468, column: 21)
!2401 = distinct !DILexicalBlock(scope: !2398, file: !547, line: 468, column: 21)
!2402 = !DILocation(line: 468, column: 21, scope: !2401)
!2403 = !DILocation(line: 469, column: 21, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2405, file: !547, line: 469, column: 21)
!2405 = distinct !DILexicalBlock(scope: !2398, file: !547, line: 469, column: 21)
!2406 = !DILocation(line: 469, column: 21, scope: !2405)
!2407 = !DILocation(line: 470, column: 21, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2409, file: !547, line: 470, column: 21)
!2409 = distinct !DILexicalBlock(scope: !2398, file: !547, line: 470, column: 21)
!2410 = !DILocation(line: 470, column: 21, scope: !2409)
!2411 = !DILocation(line: 471, column: 21, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2413, file: !547, line: 471, column: 21)
!2413 = distinct !DILexicalBlock(scope: !2398, file: !547, line: 471, column: 21)
!2414 = !DILocation(line: 471, column: 21, scope: !2413)
!2415 = !DILocation(line: 472, column: 21, scope: !2398)
!2416 = !DILocation(line: 482, column: 33, scope: !2215)
!2417 = !DILocation(line: 483, column: 33, scope: !2215)
!2418 = !DILocation(line: 485, column: 33, scope: !2215)
!2419 = !DILocation(line: 486, column: 33, scope: !2215)
!2420 = !DILocation(line: 487, column: 33, scope: !2215)
!2421 = !DILocation(line: 490, column: 17, scope: !2215)
!2422 = !DILocation(line: 492, column: 21, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2424, file: !547, line: 491, column: 15)
!2424 = distinct !DILexicalBlock(scope: !2215, file: !547, line: 490, column: 17)
!2425 = !DILocation(line: 499, column: 35, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2215, file: !547, line: 499, column: 17)
!2427 = !DILocation(line: 0, scope: !2215)
!2428 = !DILocation(line: 502, column: 11, scope: !2215)
!2429 = !DILocation(line: 504, column: 17, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2215, file: !547, line: 503, column: 17)
!2431 = !DILocation(line: 507, column: 11, scope: !2215)
!2432 = !DILocation(line: 508, column: 17, scope: !2215)
!2433 = !DILocation(line: 517, column: 15, scope: !2192)
!2434 = !DILocation(line: 517, column: 40, scope: !2435)
!2435 = distinct !DILexicalBlock(scope: !2192, file: !547, line: 517, column: 15)
!2436 = !DILocation(line: 517, column: 47, scope: !2435)
!2437 = !DILocation(line: 517, column: 18, scope: !2435)
!2438 = !DILocation(line: 521, column: 17, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !2192, file: !547, line: 521, column: 15)
!2440 = !DILocation(line: 521, column: 15, scope: !2192)
!2441 = !DILocation(line: 525, column: 11, scope: !2192)
!2442 = !DILocation(line: 537, column: 15, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2192, file: !547, line: 536, column: 15)
!2444 = !DILocation(line: 536, column: 15, scope: !2192)
!2445 = !DILocation(line: 544, column: 15, scope: !2192)
!2446 = !DILocation(line: 546, column: 19, scope: !2447)
!2447 = distinct !DILexicalBlock(scope: !2448, file: !547, line: 545, column: 13)
!2448 = distinct !DILexicalBlock(scope: !2192, file: !547, line: 544, column: 15)
!2449 = !DILocation(line: 549, column: 19, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2447, file: !547, line: 549, column: 19)
!2451 = !DILocation(line: 549, column: 30, scope: !2450)
!2452 = !DILocation(line: 558, column: 15, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !2454, file: !547, line: 558, column: 15)
!2454 = distinct !DILexicalBlock(scope: !2447, file: !547, line: 558, column: 15)
!2455 = !DILocation(line: 558, column: 15, scope: !2454)
!2456 = !DILocation(line: 559, column: 15, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2458, file: !547, line: 559, column: 15)
!2458 = distinct !DILexicalBlock(scope: !2447, file: !547, line: 559, column: 15)
!2459 = !DILocation(line: 559, column: 15, scope: !2458)
!2460 = !DILocation(line: 560, column: 15, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2462, file: !547, line: 560, column: 15)
!2462 = distinct !DILexicalBlock(scope: !2447, file: !547, line: 560, column: 15)
!2463 = !DILocation(line: 560, column: 15, scope: !2462)
!2464 = !DILocation(line: 562, column: 13, scope: !2447)
!2465 = !DILocation(line: 602, column: 17, scope: !2191)
!2466 = !DILocation(line: 0, scope: !2191)
!2467 = !DILocation(line: 605, column: 29, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2196, file: !547, line: 603, column: 15)
!2469 = !DILocation(line: 605, column: 41, scope: !2468)
!2470 = !DILocation(line: 606, column: 15, scope: !2468)
!2471 = !DILocation(line: 609, column: 17, scope: !2195)
!2472 = !DILocation(line: 609, column: 27, scope: !2195)
!2473 = !DILocation(line: 0, scope: !2247, inlinedAt: !2474)
!2474 = distinct !DILocation(line: 609, column: 32, scope: !2195)
!2475 = !DILocation(line: 0, scope: !2255, inlinedAt: !2476)
!2476 = distinct !DILocation(line: 1137, column: 3, scope: !2247, inlinedAt: !2474)
!2477 = !DILocation(line: 59, column: 10, scope: !2255, inlinedAt: !2476)
!2478 = !DILocation(line: 613, column: 29, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !2195, file: !547, line: 613, column: 21)
!2480 = !DILocation(line: 613, column: 21, scope: !2195)
!2481 = !DILocation(line: 614, column: 29, scope: !2479)
!2482 = !DILocation(line: 614, column: 19, scope: !2479)
!2483 = !DILocation(line: 618, column: 21, scope: !2198)
!2484 = !DILocation(line: 620, column: 54, scope: !2198)
!2485 = !DILocation(line: 0, scope: !2198)
!2486 = !DILocation(line: 619, column: 36, scope: !2198)
!2487 = !DILocation(line: 621, column: 25, scope: !2198)
!2488 = !DILocation(line: 631, column: 38, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2207, file: !547, line: 629, column: 23)
!2490 = !DILocation(line: 631, column: 48, scope: !2489)
!2491 = !DILocation(line: 626, column: 25, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2208, file: !547, line: 624, column: 23)
!2493 = !DILocation(line: 631, column: 51, scope: !2489)
!2494 = !DILocation(line: 631, column: 25, scope: !2489)
!2495 = !DILocation(line: 632, column: 28, scope: !2489)
!2496 = !DILocation(line: 631, column: 34, scope: !2489)
!2497 = distinct !{!2497, !2494, !2495, !976}
!2498 = !DILocation(line: 646, column: 29, scope: !2205)
!2499 = !DILocation(line: 0, scope: !2203)
!2500 = !DILocation(line: 649, column: 49, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !2203, file: !547, line: 648, column: 29)
!2502 = !DILocation(line: 649, column: 39, scope: !2501)
!2503 = !DILocation(line: 649, column: 31, scope: !2501)
!2504 = !DILocation(line: 648, column: 60, scope: !2501)
!2505 = !DILocation(line: 648, column: 50, scope: !2501)
!2506 = !DILocation(line: 648, column: 29, scope: !2203)
!2507 = distinct !{!2507, !2506, !2508, !976}
!2508 = !DILocation(line: 654, column: 33, scope: !2203)
!2509 = !DILocation(line: 657, column: 43, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2206, file: !547, line: 657, column: 29)
!2511 = !DILocalVariable(name: "wc", arg: 1, scope: !2512, file: !2513, line: 865, type: !2516)
!2512 = distinct !DISubprogram(name: "c32isprint", scope: !2513, file: !2513, line: 865, type: !2514, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !2518)
!2513 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2514 = !DISubroutineType(types: !2515)
!2515 = !{!85, !2516}
!2516 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2517, line: 20, baseType: !91)
!2517 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2518 = !{!2511}
!2519 = !DILocation(line: 0, scope: !2512, inlinedAt: !2520)
!2520 = distinct !DILocation(line: 657, column: 31, scope: !2510)
!2521 = !DILocation(line: 871, column: 10, scope: !2512, inlinedAt: !2520)
!2522 = !DILocation(line: 657, column: 31, scope: !2510)
!2523 = !DILocation(line: 664, column: 23, scope: !2198)
!2524 = !DILocation(line: 665, column: 19, scope: !2199)
!2525 = !DILocation(line: 666, column: 15, scope: !2196)
!2526 = !DILocation(line: 753, column: 2, scope: !2152)
!2527 = !DILocation(line: 756, column: 51, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2152, file: !547, line: 756, column: 7)
!2529 = !DILocation(line: 0, scope: !2196)
!2530 = !DILocation(line: 670, column: 19, scope: !2212)
!2531 = !DILocation(line: 670, column: 23, scope: !2212)
!2532 = !DILocation(line: 674, column: 33, scope: !2211)
!2533 = !DILocation(line: 0, scope: !2211)
!2534 = !DILocation(line: 676, column: 17, scope: !2211)
!2535 = !DILocation(line: 398, column: 12, scope: !2185)
!2536 = !DILocation(line: 678, column: 43, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2538, file: !547, line: 678, column: 25)
!2538 = distinct !DILexicalBlock(scope: !2539, file: !547, line: 677, column: 19)
!2539 = distinct !DILexicalBlock(scope: !2540, file: !547, line: 676, column: 17)
!2540 = distinct !DILexicalBlock(scope: !2211, file: !547, line: 676, column: 17)
!2541 = !DILocation(line: 680, column: 25, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !2543, file: !547, line: 680, column: 25)
!2543 = distinct !DILexicalBlock(scope: !2537, file: !547, line: 679, column: 23)
!2544 = !DILocation(line: 680, column: 25, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2542, file: !547, line: 680, column: 25)
!2546 = !DILocation(line: 680, column: 25, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2548, file: !547, line: 680, column: 25)
!2548 = distinct !DILexicalBlock(scope: !2549, file: !547, line: 680, column: 25)
!2549 = distinct !DILexicalBlock(scope: !2545, file: !547, line: 680, column: 25)
!2550 = !DILocation(line: 680, column: 25, scope: !2548)
!2551 = !DILocation(line: 680, column: 25, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2553, file: !547, line: 680, column: 25)
!2553 = distinct !DILexicalBlock(scope: !2549, file: !547, line: 680, column: 25)
!2554 = !DILocation(line: 680, column: 25, scope: !2553)
!2555 = !DILocation(line: 680, column: 25, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2557, file: !547, line: 680, column: 25)
!2557 = distinct !DILexicalBlock(scope: !2549, file: !547, line: 680, column: 25)
!2558 = !DILocation(line: 680, column: 25, scope: !2557)
!2559 = !DILocation(line: 680, column: 25, scope: !2549)
!2560 = !DILocation(line: 680, column: 25, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2562, file: !547, line: 680, column: 25)
!2562 = distinct !DILexicalBlock(scope: !2542, file: !547, line: 680, column: 25)
!2563 = !DILocation(line: 680, column: 25, scope: !2562)
!2564 = !DILocation(line: 681, column: 25, scope: !2565)
!2565 = distinct !DILexicalBlock(scope: !2566, file: !547, line: 681, column: 25)
!2566 = distinct !DILexicalBlock(scope: !2543, file: !547, line: 681, column: 25)
!2567 = !DILocation(line: 681, column: 25, scope: !2566)
!2568 = !DILocation(line: 682, column: 25, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2570, file: !547, line: 682, column: 25)
!2570 = distinct !DILexicalBlock(scope: !2543, file: !547, line: 682, column: 25)
!2571 = !DILocation(line: 682, column: 25, scope: !2570)
!2572 = !DILocation(line: 683, column: 38, scope: !2543)
!2573 = !DILocation(line: 683, column: 33, scope: !2543)
!2574 = !DILocation(line: 684, column: 23, scope: !2543)
!2575 = !DILocation(line: 685, column: 30, scope: !2537)
!2576 = !DILocation(line: 687, column: 25, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2578, file: !547, line: 687, column: 25)
!2578 = distinct !DILexicalBlock(scope: !2579, file: !547, line: 687, column: 25)
!2579 = distinct !DILexicalBlock(scope: !2580, file: !547, line: 686, column: 23)
!2580 = distinct !DILexicalBlock(scope: !2537, file: !547, line: 685, column: 30)
!2581 = !DILocation(line: 687, column: 25, scope: !2578)
!2582 = !DILocation(line: 689, column: 23, scope: !2579)
!2583 = !DILocation(line: 690, column: 35, scope: !2584)
!2584 = distinct !DILexicalBlock(scope: !2538, file: !547, line: 690, column: 25)
!2585 = !DILocation(line: 690, column: 30, scope: !2584)
!2586 = !DILocation(line: 690, column: 25, scope: !2538)
!2587 = !DILocation(line: 692, column: 21, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2589, file: !547, line: 692, column: 21)
!2589 = distinct !DILexicalBlock(scope: !2538, file: !547, line: 692, column: 21)
!2590 = !DILocation(line: 692, column: 21, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2592, file: !547, line: 692, column: 21)
!2592 = distinct !DILexicalBlock(scope: !2593, file: !547, line: 692, column: 21)
!2593 = distinct !DILexicalBlock(scope: !2588, file: !547, line: 692, column: 21)
!2594 = !DILocation(line: 692, column: 21, scope: !2592)
!2595 = !DILocation(line: 692, column: 21, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2597, file: !547, line: 692, column: 21)
!2597 = distinct !DILexicalBlock(scope: !2593, file: !547, line: 692, column: 21)
!2598 = !DILocation(line: 692, column: 21, scope: !2597)
!2599 = !DILocation(line: 692, column: 21, scope: !2593)
!2600 = !DILocation(line: 0, scope: !2538)
!2601 = !DILocation(line: 693, column: 21, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !2603, file: !547, line: 693, column: 21)
!2603 = distinct !DILexicalBlock(scope: !2538, file: !547, line: 693, column: 21)
!2604 = !DILocation(line: 693, column: 21, scope: !2603)
!2605 = !DILocation(line: 694, column: 25, scope: !2538)
!2606 = !DILocation(line: 676, column: 17, scope: !2539)
!2607 = distinct !{!2607, !2608, !2609}
!2608 = !DILocation(line: 676, column: 17, scope: !2540)
!2609 = !DILocation(line: 695, column: 19, scope: !2540)
!2610 = !DILocation(line: 409, column: 30, scope: !2320)
!2611 = !DILocation(line: 702, column: 34, scope: !2612)
!2612 = distinct !DILexicalBlock(scope: !2185, file: !547, line: 702, column: 11)
!2613 = !DILocation(line: 704, column: 14, scope: !2612)
!2614 = !DILocation(line: 705, column: 14, scope: !2612)
!2615 = !DILocation(line: 705, column: 35, scope: !2612)
!2616 = !DILocation(line: 705, column: 17, scope: !2612)
!2617 = !DILocation(line: 705, column: 47, scope: !2612)
!2618 = !DILocation(line: 705, column: 65, scope: !2612)
!2619 = !DILocation(line: 706, column: 11, scope: !2612)
!2620 = !DILocation(line: 702, column: 11, scope: !2185)
!2621 = !DILocation(line: 395, column: 15, scope: !2183)
!2622 = !DILocation(line: 709, column: 5, scope: !2185)
!2623 = !DILocation(line: 710, column: 7, scope: !2624)
!2624 = distinct !DILexicalBlock(scope: !2185, file: !547, line: 710, column: 7)
!2625 = !DILocation(line: 710, column: 7, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2624, file: !547, line: 710, column: 7)
!2627 = !DILocation(line: 710, column: 7, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2629, file: !547, line: 710, column: 7)
!2629 = distinct !DILexicalBlock(scope: !2630, file: !547, line: 710, column: 7)
!2630 = distinct !DILexicalBlock(scope: !2626, file: !547, line: 710, column: 7)
!2631 = !DILocation(line: 710, column: 7, scope: !2629)
!2632 = !DILocation(line: 710, column: 7, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2634, file: !547, line: 710, column: 7)
!2634 = distinct !DILexicalBlock(scope: !2630, file: !547, line: 710, column: 7)
!2635 = !DILocation(line: 710, column: 7, scope: !2634)
!2636 = !DILocation(line: 710, column: 7, scope: !2637)
!2637 = distinct !DILexicalBlock(scope: !2638, file: !547, line: 710, column: 7)
!2638 = distinct !DILexicalBlock(scope: !2630, file: !547, line: 710, column: 7)
!2639 = !DILocation(line: 710, column: 7, scope: !2638)
!2640 = !DILocation(line: 710, column: 7, scope: !2630)
!2641 = !DILocation(line: 710, column: 7, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2643, file: !547, line: 710, column: 7)
!2643 = distinct !DILexicalBlock(scope: !2624, file: !547, line: 710, column: 7)
!2644 = !DILocation(line: 710, column: 7, scope: !2643)
!2645 = !DILocation(line: 712, column: 5, scope: !2185)
!2646 = !DILocation(line: 713, column: 7, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2648, file: !547, line: 713, column: 7)
!2648 = distinct !DILexicalBlock(scope: !2185, file: !547, line: 713, column: 7)
!2649 = !DILocation(line: 417, column: 21, scope: !2185)
!2650 = !DILocation(line: 713, column: 7, scope: !2651)
!2651 = distinct !DILexicalBlock(scope: !2652, file: !547, line: 713, column: 7)
!2652 = distinct !DILexicalBlock(scope: !2653, file: !547, line: 713, column: 7)
!2653 = distinct !DILexicalBlock(scope: !2647, file: !547, line: 713, column: 7)
!2654 = !DILocation(line: 713, column: 7, scope: !2652)
!2655 = !DILocation(line: 713, column: 7, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2657, file: !547, line: 713, column: 7)
!2657 = distinct !DILexicalBlock(scope: !2653, file: !547, line: 713, column: 7)
!2658 = !DILocation(line: 713, column: 7, scope: !2657)
!2659 = !DILocation(line: 713, column: 7, scope: !2653)
!2660 = !DILocation(line: 714, column: 7, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2662, file: !547, line: 714, column: 7)
!2662 = distinct !DILexicalBlock(scope: !2185, file: !547, line: 714, column: 7)
!2663 = !DILocation(line: 714, column: 7, scope: !2662)
!2664 = !DILocation(line: 716, column: 11, scope: !2185)
!2665 = !DILocation(line: 718, column: 5, scope: !2186)
!2666 = !DILocation(line: 395, column: 82, scope: !2186)
!2667 = !DILocation(line: 395, column: 3, scope: !2186)
!2668 = distinct !{!2668, !2316, !2669, !976}
!2669 = !DILocation(line: 718, column: 5, scope: !2183)
!2670 = !DILocation(line: 720, column: 11, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2152, file: !547, line: 720, column: 7)
!2672 = !DILocation(line: 720, column: 16, scope: !2671)
!2673 = !DILocation(line: 728, column: 51, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2152, file: !547, line: 728, column: 7)
!2675 = !DILocation(line: 731, column: 11, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2674, file: !547, line: 730, column: 5)
!2677 = !DILocation(line: 732, column: 16, scope: !2678)
!2678 = distinct !DILexicalBlock(scope: !2676, file: !547, line: 731, column: 11)
!2679 = !DILocation(line: 732, column: 9, scope: !2678)
!2680 = !DILocation(line: 736, column: 18, scope: !2681)
!2681 = distinct !DILexicalBlock(scope: !2678, file: !547, line: 736, column: 16)
!2682 = !DILocation(line: 736, column: 29, scope: !2681)
!2683 = !DILocation(line: 745, column: 7, scope: !2684)
!2684 = distinct !DILexicalBlock(scope: !2152, file: !547, line: 745, column: 7)
!2685 = !DILocation(line: 745, column: 20, scope: !2684)
!2686 = !DILocation(line: 746, column: 12, scope: !2687)
!2687 = distinct !DILexicalBlock(scope: !2688, file: !547, line: 746, column: 5)
!2688 = distinct !DILexicalBlock(scope: !2684, file: !547, line: 746, column: 5)
!2689 = !DILocation(line: 746, column: 5, scope: !2688)
!2690 = !DILocation(line: 747, column: 7, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !2692, file: !547, line: 747, column: 7)
!2692 = distinct !DILexicalBlock(scope: !2687, file: !547, line: 747, column: 7)
!2693 = !DILocation(line: 747, column: 7, scope: !2692)
!2694 = !DILocation(line: 746, column: 39, scope: !2687)
!2695 = distinct !{!2695, !2689, !2696, !976}
!2696 = !DILocation(line: 747, column: 7, scope: !2688)
!2697 = !DILocation(line: 749, column: 11, scope: !2698)
!2698 = distinct !DILexicalBlock(scope: !2152, file: !547, line: 749, column: 7)
!2699 = !DILocation(line: 749, column: 7, scope: !2152)
!2700 = !DILocation(line: 750, column: 5, scope: !2698)
!2701 = !DILocation(line: 750, column: 17, scope: !2698)
!2702 = !DILocation(line: 756, column: 21, scope: !2528)
!2703 = !DILocation(line: 760, column: 42, scope: !2152)
!2704 = !DILocation(line: 758, column: 10, scope: !2152)
!2705 = !DILocation(line: 758, column: 3, scope: !2152)
!2706 = !DILocation(line: 762, column: 1, scope: !2152)
!2707 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1050, file: !1050, line: 98, type: !2708, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !869)
!2708 = !DISubroutineType(types: !2709)
!2709 = !{!136}
!2710 = !DISubprogram(name: "strlen", scope: !1046, file: !1046, line: 407, type: !2711, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !869)
!2711 = !DISubroutineType(types: !2712)
!2712 = !{!134, !138}
!2713 = !DISubprogram(name: "iswprint", scope: !2714, file: !2714, line: 120, type: !2514, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !869)
!2714 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2715 = distinct !DISubprogram(name: "quotearg_alloc", scope: !547, file: !547, line: 788, type: !2716, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !2718)
!2716 = !DISubroutineType(types: !2717)
!2717 = !{!128, !138, !136, !2045}
!2718 = !{!2719, !2720, !2721}
!2719 = !DILocalVariable(name: "arg", arg: 1, scope: !2715, file: !547, line: 788, type: !138)
!2720 = !DILocalVariable(name: "argsize", arg: 2, scope: !2715, file: !547, line: 788, type: !136)
!2721 = !DILocalVariable(name: "o", arg: 3, scope: !2715, file: !547, line: 789, type: !2045)
!2722 = !DILocation(line: 0, scope: !2715)
!2723 = !DILocalVariable(name: "arg", arg: 1, scope: !2724, file: !547, line: 801, type: !138)
!2724 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !547, file: !547, line: 801, type: !2725, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !2727)
!2725 = !DISubroutineType(types: !2726)
!2726 = !{!128, !138, !136, !788, !2045}
!2727 = !{!2723, !2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735}
!2728 = !DILocalVariable(name: "argsize", arg: 2, scope: !2724, file: !547, line: 801, type: !136)
!2729 = !DILocalVariable(name: "size", arg: 3, scope: !2724, file: !547, line: 801, type: !788)
!2730 = !DILocalVariable(name: "o", arg: 4, scope: !2724, file: !547, line: 802, type: !2045)
!2731 = !DILocalVariable(name: "p", scope: !2724, file: !547, line: 804, type: !2045)
!2732 = !DILocalVariable(name: "saved_errno", scope: !2724, file: !547, line: 805, type: !85)
!2733 = !DILocalVariable(name: "flags", scope: !2724, file: !547, line: 807, type: !85)
!2734 = !DILocalVariable(name: "bufsize", scope: !2724, file: !547, line: 808, type: !136)
!2735 = !DILocalVariable(name: "buf", scope: !2724, file: !547, line: 812, type: !128)
!2736 = !DILocation(line: 0, scope: !2724, inlinedAt: !2737)
!2737 = distinct !DILocation(line: 791, column: 10, scope: !2715)
!2738 = !DILocation(line: 804, column: 37, scope: !2724, inlinedAt: !2737)
!2739 = !DILocation(line: 805, column: 21, scope: !2724, inlinedAt: !2737)
!2740 = !DILocation(line: 807, column: 18, scope: !2724, inlinedAt: !2737)
!2741 = !DILocation(line: 807, column: 24, scope: !2724, inlinedAt: !2737)
!2742 = !DILocation(line: 808, column: 72, scope: !2724, inlinedAt: !2737)
!2743 = !DILocation(line: 809, column: 56, scope: !2724, inlinedAt: !2737)
!2744 = !DILocation(line: 810, column: 49, scope: !2724, inlinedAt: !2737)
!2745 = !DILocation(line: 811, column: 49, scope: !2724, inlinedAt: !2737)
!2746 = !DILocation(line: 808, column: 20, scope: !2724, inlinedAt: !2737)
!2747 = !DILocation(line: 811, column: 62, scope: !2724, inlinedAt: !2737)
!2748 = !DILocation(line: 812, column: 15, scope: !2724, inlinedAt: !2737)
!2749 = !DILocation(line: 813, column: 60, scope: !2724, inlinedAt: !2737)
!2750 = !DILocation(line: 815, column: 32, scope: !2724, inlinedAt: !2737)
!2751 = !DILocation(line: 815, column: 47, scope: !2724, inlinedAt: !2737)
!2752 = !DILocation(line: 813, column: 3, scope: !2724, inlinedAt: !2737)
!2753 = !DILocation(line: 816, column: 9, scope: !2724, inlinedAt: !2737)
!2754 = !DILocation(line: 791, column: 3, scope: !2715)
!2755 = !DILocation(line: 0, scope: !2724)
!2756 = !DILocation(line: 804, column: 37, scope: !2724)
!2757 = !DILocation(line: 805, column: 21, scope: !2724)
!2758 = !DILocation(line: 807, column: 18, scope: !2724)
!2759 = !DILocation(line: 807, column: 27, scope: !2724)
!2760 = !DILocation(line: 807, column: 24, scope: !2724)
!2761 = !DILocation(line: 808, column: 72, scope: !2724)
!2762 = !DILocation(line: 809, column: 56, scope: !2724)
!2763 = !DILocation(line: 810, column: 49, scope: !2724)
!2764 = !DILocation(line: 811, column: 49, scope: !2724)
!2765 = !DILocation(line: 808, column: 20, scope: !2724)
!2766 = !DILocation(line: 811, column: 62, scope: !2724)
!2767 = !DILocation(line: 812, column: 15, scope: !2724)
!2768 = !DILocation(line: 813, column: 60, scope: !2724)
!2769 = !DILocation(line: 815, column: 32, scope: !2724)
!2770 = !DILocation(line: 815, column: 47, scope: !2724)
!2771 = !DILocation(line: 813, column: 3, scope: !2724)
!2772 = !DILocation(line: 816, column: 9, scope: !2724)
!2773 = !DILocation(line: 817, column: 7, scope: !2724)
!2774 = !DILocation(line: 818, column: 11, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2724, file: !547, line: 817, column: 7)
!2776 = !DILocation(line: 818, column: 5, scope: !2775)
!2777 = !DILocation(line: 819, column: 3, scope: !2724)
!2778 = distinct !DISubprogram(name: "quotearg_free", scope: !547, file: !547, line: 837, type: !502, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !2779)
!2779 = !{!2780, !2781}
!2780 = !DILocalVariable(name: "sv", scope: !2778, file: !547, line: 839, type: !631)
!2781 = !DILocalVariable(name: "i", scope: !2782, file: !547, line: 840, type: !85)
!2782 = distinct !DILexicalBlock(scope: !2778, file: !547, line: 840, column: 3)
!2783 = !DILocation(line: 839, column: 24, scope: !2778)
!2784 = !DILocation(line: 0, scope: !2778)
!2785 = !DILocation(line: 0, scope: !2782)
!2786 = !DILocation(line: 840, column: 21, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2782, file: !547, line: 840, column: 3)
!2788 = !DILocation(line: 840, column: 3, scope: !2782)
!2789 = !DILocation(line: 842, column: 13, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !2778, file: !547, line: 842, column: 7)
!2791 = !{!2792, !861, i64 8}
!2792 = !{!"slotvec", !1219, i64 0, !861, i64 8}
!2793 = !DILocation(line: 842, column: 17, scope: !2790)
!2794 = !DILocation(line: 842, column: 7, scope: !2778)
!2795 = !DILocation(line: 841, column: 17, scope: !2787)
!2796 = !DILocation(line: 841, column: 5, scope: !2787)
!2797 = !DILocation(line: 840, column: 32, scope: !2787)
!2798 = distinct !{!2798, !2788, !2799, !976}
!2799 = !DILocation(line: 841, column: 20, scope: !2782)
!2800 = !DILocation(line: 844, column: 7, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !2790, file: !547, line: 843, column: 5)
!2802 = !DILocation(line: 845, column: 21, scope: !2801)
!2803 = !{!2792, !1219, i64 0}
!2804 = !DILocation(line: 846, column: 20, scope: !2801)
!2805 = !DILocation(line: 847, column: 5, scope: !2801)
!2806 = !DILocation(line: 848, column: 10, scope: !2807)
!2807 = distinct !DILexicalBlock(scope: !2778, file: !547, line: 848, column: 7)
!2808 = !DILocation(line: 848, column: 7, scope: !2778)
!2809 = !DILocation(line: 850, column: 7, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !2807, file: !547, line: 849, column: 5)
!2811 = !DILocation(line: 851, column: 15, scope: !2810)
!2812 = !DILocation(line: 852, column: 5, scope: !2810)
!2813 = !DILocation(line: 853, column: 10, scope: !2778)
!2814 = !DILocation(line: 854, column: 1, scope: !2778)
!2815 = distinct !DISubprogram(name: "quotearg_n", scope: !547, file: !547, line: 919, type: !1043, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !2816)
!2816 = !{!2817, !2818}
!2817 = !DILocalVariable(name: "n", arg: 1, scope: !2815, file: !547, line: 919, type: !85)
!2818 = !DILocalVariable(name: "arg", arg: 2, scope: !2815, file: !547, line: 919, type: !138)
!2819 = !DILocation(line: 0, scope: !2815)
!2820 = !DILocation(line: 921, column: 10, scope: !2815)
!2821 = !DILocation(line: 921, column: 3, scope: !2815)
!2822 = distinct !DISubprogram(name: "quotearg_n_options", scope: !547, file: !547, line: 866, type: !2823, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !2825)
!2823 = !DISubroutineType(types: !2824)
!2824 = !{!128, !85, !138, !136, !2045}
!2825 = !{!2826, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2836, !2837, !2839, !2840, !2841}
!2826 = !DILocalVariable(name: "n", arg: 1, scope: !2822, file: !547, line: 866, type: !85)
!2827 = !DILocalVariable(name: "arg", arg: 2, scope: !2822, file: !547, line: 866, type: !138)
!2828 = !DILocalVariable(name: "argsize", arg: 3, scope: !2822, file: !547, line: 866, type: !136)
!2829 = !DILocalVariable(name: "options", arg: 4, scope: !2822, file: !547, line: 867, type: !2045)
!2830 = !DILocalVariable(name: "saved_errno", scope: !2822, file: !547, line: 869, type: !85)
!2831 = !DILocalVariable(name: "sv", scope: !2822, file: !547, line: 871, type: !631)
!2832 = !DILocalVariable(name: "nslots_max", scope: !2822, file: !547, line: 873, type: !85)
!2833 = !DILocalVariable(name: "preallocated", scope: !2834, file: !547, line: 879, type: !234)
!2834 = distinct !DILexicalBlock(scope: !2835, file: !547, line: 878, column: 5)
!2835 = distinct !DILexicalBlock(scope: !2822, file: !547, line: 877, column: 7)
!2836 = !DILocalVariable(name: "new_nslots", scope: !2834, file: !547, line: 880, type: !801)
!2837 = !DILocalVariable(name: "size", scope: !2838, file: !547, line: 891, type: !136)
!2838 = distinct !DILexicalBlock(scope: !2822, file: !547, line: 890, column: 3)
!2839 = !DILocalVariable(name: "val", scope: !2838, file: !547, line: 892, type: !128)
!2840 = !DILocalVariable(name: "flags", scope: !2838, file: !547, line: 894, type: !85)
!2841 = !DILocalVariable(name: "qsize", scope: !2838, file: !547, line: 895, type: !136)
!2842 = !DILocation(line: 0, scope: !2822)
!2843 = !DILocation(line: 869, column: 21, scope: !2822)
!2844 = !DILocation(line: 871, column: 24, scope: !2822)
!2845 = !DILocation(line: 874, column: 17, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2822, file: !547, line: 874, column: 7)
!2847 = !DILocation(line: 875, column: 5, scope: !2846)
!2848 = !DILocation(line: 877, column: 7, scope: !2835)
!2849 = !DILocation(line: 877, column: 14, scope: !2835)
!2850 = !DILocation(line: 877, column: 7, scope: !2822)
!2851 = !DILocation(line: 879, column: 31, scope: !2834)
!2852 = !DILocation(line: 0, scope: !2834)
!2853 = !DILocation(line: 880, column: 7, scope: !2834)
!2854 = !DILocation(line: 880, column: 26, scope: !2834)
!2855 = !DILocation(line: 880, column: 13, scope: !2834)
!2856 = !DILocation(line: 882, column: 31, scope: !2834)
!2857 = !DILocation(line: 883, column: 33, scope: !2834)
!2858 = !DILocation(line: 883, column: 42, scope: !2834)
!2859 = !DILocation(line: 883, column: 31, scope: !2834)
!2860 = !DILocation(line: 882, column: 22, scope: !2834)
!2861 = !DILocation(line: 882, column: 15, scope: !2834)
!2862 = !DILocation(line: 884, column: 11, scope: !2834)
!2863 = !DILocation(line: 885, column: 15, scope: !2864)
!2864 = distinct !DILexicalBlock(scope: !2834, file: !547, line: 884, column: 11)
!2865 = !{i64 0, i64 8, !1218, i64 8, i64 8, !860}
!2866 = !DILocation(line: 885, column: 9, scope: !2864)
!2867 = !DILocation(line: 886, column: 20, scope: !2834)
!2868 = !DILocation(line: 886, column: 18, scope: !2834)
!2869 = !DILocation(line: 886, column: 32, scope: !2834)
!2870 = !DILocation(line: 886, column: 43, scope: !2834)
!2871 = !DILocation(line: 886, column: 53, scope: !2834)
!2872 = !DILocation(line: 0, scope: !2255, inlinedAt: !2873)
!2873 = distinct !DILocation(line: 886, column: 7, scope: !2834)
!2874 = !DILocation(line: 59, column: 10, scope: !2255, inlinedAt: !2873)
!2875 = !DILocation(line: 887, column: 16, scope: !2834)
!2876 = !DILocation(line: 887, column: 14, scope: !2834)
!2877 = !DILocation(line: 888, column: 5, scope: !2835)
!2878 = !DILocation(line: 888, column: 5, scope: !2834)
!2879 = !DILocation(line: 891, column: 19, scope: !2838)
!2880 = !DILocation(line: 891, column: 25, scope: !2838)
!2881 = !DILocation(line: 0, scope: !2838)
!2882 = !DILocation(line: 892, column: 23, scope: !2838)
!2883 = !DILocation(line: 894, column: 26, scope: !2838)
!2884 = !DILocation(line: 894, column: 32, scope: !2838)
!2885 = !DILocation(line: 896, column: 55, scope: !2838)
!2886 = !DILocation(line: 897, column: 55, scope: !2838)
!2887 = !DILocation(line: 898, column: 55, scope: !2838)
!2888 = !DILocation(line: 899, column: 55, scope: !2838)
!2889 = !DILocation(line: 895, column: 20, scope: !2838)
!2890 = !DILocation(line: 901, column: 14, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2838, file: !547, line: 901, column: 9)
!2892 = !DILocation(line: 901, column: 9, scope: !2838)
!2893 = !DILocation(line: 903, column: 35, scope: !2894)
!2894 = distinct !DILexicalBlock(scope: !2891, file: !547, line: 902, column: 7)
!2895 = !DILocation(line: 903, column: 20, scope: !2894)
!2896 = !DILocation(line: 904, column: 17, scope: !2897)
!2897 = distinct !DILexicalBlock(scope: !2894, file: !547, line: 904, column: 13)
!2898 = !DILocation(line: 904, column: 13, scope: !2894)
!2899 = !DILocation(line: 905, column: 11, scope: !2897)
!2900 = !DILocation(line: 906, column: 27, scope: !2894)
!2901 = !DILocation(line: 906, column: 19, scope: !2894)
!2902 = !DILocation(line: 907, column: 69, scope: !2894)
!2903 = !DILocation(line: 909, column: 44, scope: !2894)
!2904 = !DILocation(line: 910, column: 44, scope: !2894)
!2905 = !DILocation(line: 907, column: 9, scope: !2894)
!2906 = !DILocation(line: 911, column: 7, scope: !2894)
!2907 = !DILocation(line: 913, column: 11, scope: !2838)
!2908 = !DILocation(line: 914, column: 5, scope: !2838)
!2909 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !547, file: !547, line: 925, type: !2910, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !2912)
!2910 = !DISubroutineType(types: !2911)
!2911 = !{!128, !85, !138, !136}
!2912 = !{!2913, !2914, !2915}
!2913 = !DILocalVariable(name: "n", arg: 1, scope: !2909, file: !547, line: 925, type: !85)
!2914 = !DILocalVariable(name: "arg", arg: 2, scope: !2909, file: !547, line: 925, type: !138)
!2915 = !DILocalVariable(name: "argsize", arg: 3, scope: !2909, file: !547, line: 925, type: !136)
!2916 = !DILocation(line: 0, scope: !2909)
!2917 = !DILocation(line: 927, column: 10, scope: !2909)
!2918 = !DILocation(line: 927, column: 3, scope: !2909)
!2919 = distinct !DISubprogram(name: "quotearg", scope: !547, file: !547, line: 931, type: !1052, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !2920)
!2920 = !{!2921}
!2921 = !DILocalVariable(name: "arg", arg: 1, scope: !2919, file: !547, line: 931, type: !138)
!2922 = !DILocation(line: 0, scope: !2919)
!2923 = !DILocation(line: 0, scope: !2815, inlinedAt: !2924)
!2924 = distinct !DILocation(line: 933, column: 10, scope: !2919)
!2925 = !DILocation(line: 921, column: 10, scope: !2815, inlinedAt: !2924)
!2926 = !DILocation(line: 933, column: 3, scope: !2919)
!2927 = distinct !DISubprogram(name: "quotearg_mem", scope: !547, file: !547, line: 937, type: !2928, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !2930)
!2928 = !DISubroutineType(types: !2929)
!2929 = !{!128, !138, !136}
!2930 = !{!2931, !2932}
!2931 = !DILocalVariable(name: "arg", arg: 1, scope: !2927, file: !547, line: 937, type: !138)
!2932 = !DILocalVariable(name: "argsize", arg: 2, scope: !2927, file: !547, line: 937, type: !136)
!2933 = !DILocation(line: 0, scope: !2927)
!2934 = !DILocation(line: 0, scope: !2909, inlinedAt: !2935)
!2935 = distinct !DILocation(line: 939, column: 10, scope: !2927)
!2936 = !DILocation(line: 927, column: 10, scope: !2909, inlinedAt: !2935)
!2937 = !DILocation(line: 939, column: 3, scope: !2927)
!2938 = distinct !DISubprogram(name: "quotearg_n_style", scope: !547, file: !547, line: 943, type: !2939, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !2941)
!2939 = !DISubroutineType(types: !2940)
!2940 = !{!128, !85, !98, !138}
!2941 = !{!2942, !2943, !2944, !2945}
!2942 = !DILocalVariable(name: "n", arg: 1, scope: !2938, file: !547, line: 943, type: !85)
!2943 = !DILocalVariable(name: "s", arg: 2, scope: !2938, file: !547, line: 943, type: !98)
!2944 = !DILocalVariable(name: "arg", arg: 3, scope: !2938, file: !547, line: 943, type: !138)
!2945 = !DILocalVariable(name: "o", scope: !2938, file: !547, line: 945, type: !2046)
!2946 = !DILocation(line: 0, scope: !2938)
!2947 = !DILocation(line: 945, column: 3, scope: !2938)
!2948 = !DILocation(line: 945, column: 32, scope: !2938)
!2949 = !{!2950}
!2950 = distinct !{!2950, !2951, !"quoting_options_from_style: argument 0"}
!2951 = distinct !{!2951, !"quoting_options_from_style"}
!2952 = !DILocation(line: 945, column: 36, scope: !2938)
!2953 = !DILocalVariable(name: "style", arg: 1, scope: !2954, file: !547, line: 183, type: !98)
!2954 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !547, file: !547, line: 183, type: !2955, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !2957)
!2955 = !DISubroutineType(types: !2956)
!2956 = !{!583, !98}
!2957 = !{!2953, !2958}
!2958 = !DILocalVariable(name: "o", scope: !2954, file: !547, line: 185, type: !583)
!2959 = !DILocation(line: 0, scope: !2954, inlinedAt: !2960)
!2960 = distinct !DILocation(line: 945, column: 36, scope: !2938)
!2961 = !DILocation(line: 185, column: 26, scope: !2954, inlinedAt: !2960)
!2962 = !DILocation(line: 186, column: 13, scope: !2963, inlinedAt: !2960)
!2963 = distinct !DILexicalBlock(scope: !2954, file: !547, line: 186, column: 7)
!2964 = !DILocation(line: 186, column: 7, scope: !2954, inlinedAt: !2960)
!2965 = !DILocation(line: 187, column: 5, scope: !2963, inlinedAt: !2960)
!2966 = !DILocation(line: 188, column: 11, scope: !2954, inlinedAt: !2960)
!2967 = !DILocation(line: 946, column: 10, scope: !2938)
!2968 = !DILocation(line: 947, column: 1, scope: !2938)
!2969 = !DILocation(line: 946, column: 3, scope: !2938)
!2970 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !547, file: !547, line: 950, type: !2971, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !2973)
!2971 = !DISubroutineType(types: !2972)
!2972 = !{!128, !85, !98, !138, !136}
!2973 = !{!2974, !2975, !2976, !2977, !2978}
!2974 = !DILocalVariable(name: "n", arg: 1, scope: !2970, file: !547, line: 950, type: !85)
!2975 = !DILocalVariable(name: "s", arg: 2, scope: !2970, file: !547, line: 950, type: !98)
!2976 = !DILocalVariable(name: "arg", arg: 3, scope: !2970, file: !547, line: 951, type: !138)
!2977 = !DILocalVariable(name: "argsize", arg: 4, scope: !2970, file: !547, line: 951, type: !136)
!2978 = !DILocalVariable(name: "o", scope: !2970, file: !547, line: 953, type: !2046)
!2979 = !DILocation(line: 0, scope: !2970)
!2980 = !DILocation(line: 953, column: 3, scope: !2970)
!2981 = !DILocation(line: 953, column: 32, scope: !2970)
!2982 = !{!2983}
!2983 = distinct !{!2983, !2984, !"quoting_options_from_style: argument 0"}
!2984 = distinct !{!2984, !"quoting_options_from_style"}
!2985 = !DILocation(line: 953, column: 36, scope: !2970)
!2986 = !DILocation(line: 0, scope: !2954, inlinedAt: !2987)
!2987 = distinct !DILocation(line: 953, column: 36, scope: !2970)
!2988 = !DILocation(line: 185, column: 26, scope: !2954, inlinedAt: !2987)
!2989 = !DILocation(line: 186, column: 13, scope: !2963, inlinedAt: !2987)
!2990 = !DILocation(line: 186, column: 7, scope: !2954, inlinedAt: !2987)
!2991 = !DILocation(line: 187, column: 5, scope: !2963, inlinedAt: !2987)
!2992 = !DILocation(line: 188, column: 11, scope: !2954, inlinedAt: !2987)
!2993 = !DILocation(line: 954, column: 10, scope: !2970)
!2994 = !DILocation(line: 955, column: 1, scope: !2970)
!2995 = !DILocation(line: 954, column: 3, scope: !2970)
!2996 = distinct !DISubprogram(name: "quotearg_style", scope: !547, file: !547, line: 958, type: !2997, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !2999)
!2997 = !DISubroutineType(types: !2998)
!2998 = !{!128, !98, !138}
!2999 = !{!3000, !3001}
!3000 = !DILocalVariable(name: "s", arg: 1, scope: !2996, file: !547, line: 958, type: !98)
!3001 = !DILocalVariable(name: "arg", arg: 2, scope: !2996, file: !547, line: 958, type: !138)
!3002 = !DILocation(line: 0, scope: !2996)
!3003 = !DILocation(line: 0, scope: !2938, inlinedAt: !3004)
!3004 = distinct !DILocation(line: 960, column: 10, scope: !2996)
!3005 = !DILocation(line: 945, column: 3, scope: !2938, inlinedAt: !3004)
!3006 = !DILocation(line: 945, column: 32, scope: !2938, inlinedAt: !3004)
!3007 = !{!3008}
!3008 = distinct !{!3008, !3009, !"quoting_options_from_style: argument 0"}
!3009 = distinct !{!3009, !"quoting_options_from_style"}
!3010 = !DILocation(line: 945, column: 36, scope: !2938, inlinedAt: !3004)
!3011 = !DILocation(line: 0, scope: !2954, inlinedAt: !3012)
!3012 = distinct !DILocation(line: 945, column: 36, scope: !2938, inlinedAt: !3004)
!3013 = !DILocation(line: 185, column: 26, scope: !2954, inlinedAt: !3012)
!3014 = !DILocation(line: 186, column: 13, scope: !2963, inlinedAt: !3012)
!3015 = !DILocation(line: 186, column: 7, scope: !2954, inlinedAt: !3012)
!3016 = !DILocation(line: 187, column: 5, scope: !2963, inlinedAt: !3012)
!3017 = !DILocation(line: 188, column: 11, scope: !2954, inlinedAt: !3012)
!3018 = !DILocation(line: 946, column: 10, scope: !2938, inlinedAt: !3004)
!3019 = !DILocation(line: 947, column: 1, scope: !2938, inlinedAt: !3004)
!3020 = !DILocation(line: 960, column: 3, scope: !2996)
!3021 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !547, file: !547, line: 964, type: !3022, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !3024)
!3022 = !DISubroutineType(types: !3023)
!3023 = !{!128, !98, !138, !136}
!3024 = !{!3025, !3026, !3027}
!3025 = !DILocalVariable(name: "s", arg: 1, scope: !3021, file: !547, line: 964, type: !98)
!3026 = !DILocalVariable(name: "arg", arg: 2, scope: !3021, file: !547, line: 964, type: !138)
!3027 = !DILocalVariable(name: "argsize", arg: 3, scope: !3021, file: !547, line: 964, type: !136)
!3028 = !DILocation(line: 0, scope: !3021)
!3029 = !DILocation(line: 0, scope: !2970, inlinedAt: !3030)
!3030 = distinct !DILocation(line: 966, column: 10, scope: !3021)
!3031 = !DILocation(line: 953, column: 3, scope: !2970, inlinedAt: !3030)
!3032 = !DILocation(line: 953, column: 32, scope: !2970, inlinedAt: !3030)
!3033 = !{!3034}
!3034 = distinct !{!3034, !3035, !"quoting_options_from_style: argument 0"}
!3035 = distinct !{!3035, !"quoting_options_from_style"}
!3036 = !DILocation(line: 953, column: 36, scope: !2970, inlinedAt: !3030)
!3037 = !DILocation(line: 0, scope: !2954, inlinedAt: !3038)
!3038 = distinct !DILocation(line: 953, column: 36, scope: !2970, inlinedAt: !3030)
!3039 = !DILocation(line: 185, column: 26, scope: !2954, inlinedAt: !3038)
!3040 = !DILocation(line: 186, column: 13, scope: !2963, inlinedAt: !3038)
!3041 = !DILocation(line: 186, column: 7, scope: !2954, inlinedAt: !3038)
!3042 = !DILocation(line: 187, column: 5, scope: !2963, inlinedAt: !3038)
!3043 = !DILocation(line: 188, column: 11, scope: !2954, inlinedAt: !3038)
!3044 = !DILocation(line: 954, column: 10, scope: !2970, inlinedAt: !3030)
!3045 = !DILocation(line: 955, column: 1, scope: !2970, inlinedAt: !3030)
!3046 = !DILocation(line: 966, column: 3, scope: !3021)
!3047 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !547, file: !547, line: 970, type: !3048, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !3050)
!3048 = !DISubroutineType(types: !3049)
!3049 = !{!128, !138, !136, !4}
!3050 = !{!3051, !3052, !3053, !3054}
!3051 = !DILocalVariable(name: "arg", arg: 1, scope: !3047, file: !547, line: 970, type: !138)
!3052 = !DILocalVariable(name: "argsize", arg: 2, scope: !3047, file: !547, line: 970, type: !136)
!3053 = !DILocalVariable(name: "ch", arg: 3, scope: !3047, file: !547, line: 970, type: !4)
!3054 = !DILocalVariable(name: "options", scope: !3047, file: !547, line: 972, type: !583)
!3055 = !DILocation(line: 0, scope: !3047)
!3056 = !DILocation(line: 972, column: 3, scope: !3047)
!3057 = !DILocation(line: 972, column: 26, scope: !3047)
!3058 = !DILocation(line: 973, column: 13, scope: !3047)
!3059 = !{i64 0, i64 4, !938, i64 4, i64 4, !929, i64 8, i64 32, !938, i64 40, i64 8, !860, i64 48, i64 8, !860}
!3060 = !DILocation(line: 0, scope: !2065, inlinedAt: !3061)
!3061 = distinct !DILocation(line: 974, column: 3, scope: !3047)
!3062 = !DILocation(line: 147, column: 41, scope: !2065, inlinedAt: !3061)
!3063 = !DILocation(line: 147, column: 62, scope: !2065, inlinedAt: !3061)
!3064 = !DILocation(line: 147, column: 57, scope: !2065, inlinedAt: !3061)
!3065 = !DILocation(line: 148, column: 15, scope: !2065, inlinedAt: !3061)
!3066 = !DILocation(line: 149, column: 21, scope: !2065, inlinedAt: !3061)
!3067 = !DILocation(line: 149, column: 24, scope: !2065, inlinedAt: !3061)
!3068 = !DILocation(line: 150, column: 19, scope: !2065, inlinedAt: !3061)
!3069 = !DILocation(line: 150, column: 24, scope: !2065, inlinedAt: !3061)
!3070 = !DILocation(line: 150, column: 6, scope: !2065, inlinedAt: !3061)
!3071 = !DILocation(line: 975, column: 10, scope: !3047)
!3072 = !DILocation(line: 976, column: 1, scope: !3047)
!3073 = !DILocation(line: 975, column: 3, scope: !3047)
!3074 = distinct !DISubprogram(name: "quotearg_char", scope: !547, file: !547, line: 979, type: !3075, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !3077)
!3075 = !DISubroutineType(types: !3076)
!3076 = !{!128, !138, !4}
!3077 = !{!3078, !3079}
!3078 = !DILocalVariable(name: "arg", arg: 1, scope: !3074, file: !547, line: 979, type: !138)
!3079 = !DILocalVariable(name: "ch", arg: 2, scope: !3074, file: !547, line: 979, type: !4)
!3080 = !DILocation(line: 0, scope: !3074)
!3081 = !DILocation(line: 0, scope: !3047, inlinedAt: !3082)
!3082 = distinct !DILocation(line: 981, column: 10, scope: !3074)
!3083 = !DILocation(line: 972, column: 3, scope: !3047, inlinedAt: !3082)
!3084 = !DILocation(line: 972, column: 26, scope: !3047, inlinedAt: !3082)
!3085 = !DILocation(line: 973, column: 13, scope: !3047, inlinedAt: !3082)
!3086 = !DILocation(line: 0, scope: !2065, inlinedAt: !3087)
!3087 = distinct !DILocation(line: 974, column: 3, scope: !3047, inlinedAt: !3082)
!3088 = !DILocation(line: 147, column: 41, scope: !2065, inlinedAt: !3087)
!3089 = !DILocation(line: 147, column: 62, scope: !2065, inlinedAt: !3087)
!3090 = !DILocation(line: 147, column: 57, scope: !2065, inlinedAt: !3087)
!3091 = !DILocation(line: 148, column: 15, scope: !2065, inlinedAt: !3087)
!3092 = !DILocation(line: 149, column: 21, scope: !2065, inlinedAt: !3087)
!3093 = !DILocation(line: 149, column: 24, scope: !2065, inlinedAt: !3087)
!3094 = !DILocation(line: 150, column: 19, scope: !2065, inlinedAt: !3087)
!3095 = !DILocation(line: 150, column: 24, scope: !2065, inlinedAt: !3087)
!3096 = !DILocation(line: 150, column: 6, scope: !2065, inlinedAt: !3087)
!3097 = !DILocation(line: 975, column: 10, scope: !3047, inlinedAt: !3082)
!3098 = !DILocation(line: 976, column: 1, scope: !3047, inlinedAt: !3082)
!3099 = !DILocation(line: 981, column: 3, scope: !3074)
!3100 = distinct !DISubprogram(name: "quotearg_colon", scope: !547, file: !547, line: 985, type: !1052, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !3101)
!3101 = !{!3102}
!3102 = !DILocalVariable(name: "arg", arg: 1, scope: !3100, file: !547, line: 985, type: !138)
!3103 = !DILocation(line: 0, scope: !3100)
!3104 = !DILocation(line: 0, scope: !3074, inlinedAt: !3105)
!3105 = distinct !DILocation(line: 987, column: 10, scope: !3100)
!3106 = !DILocation(line: 0, scope: !3047, inlinedAt: !3107)
!3107 = distinct !DILocation(line: 981, column: 10, scope: !3074, inlinedAt: !3105)
!3108 = !DILocation(line: 972, column: 3, scope: !3047, inlinedAt: !3107)
!3109 = !DILocation(line: 972, column: 26, scope: !3047, inlinedAt: !3107)
!3110 = !DILocation(line: 973, column: 13, scope: !3047, inlinedAt: !3107)
!3111 = !DILocation(line: 0, scope: !2065, inlinedAt: !3112)
!3112 = distinct !DILocation(line: 974, column: 3, scope: !3047, inlinedAt: !3107)
!3113 = !DILocation(line: 147, column: 57, scope: !2065, inlinedAt: !3112)
!3114 = !DILocation(line: 149, column: 21, scope: !2065, inlinedAt: !3112)
!3115 = !DILocation(line: 150, column: 6, scope: !2065, inlinedAt: !3112)
!3116 = !DILocation(line: 975, column: 10, scope: !3047, inlinedAt: !3107)
!3117 = !DILocation(line: 976, column: 1, scope: !3047, inlinedAt: !3107)
!3118 = !DILocation(line: 987, column: 3, scope: !3100)
!3119 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !547, file: !547, line: 991, type: !2928, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !3120)
!3120 = !{!3121, !3122}
!3121 = !DILocalVariable(name: "arg", arg: 1, scope: !3119, file: !547, line: 991, type: !138)
!3122 = !DILocalVariable(name: "argsize", arg: 2, scope: !3119, file: !547, line: 991, type: !136)
!3123 = !DILocation(line: 0, scope: !3119)
!3124 = !DILocation(line: 0, scope: !3047, inlinedAt: !3125)
!3125 = distinct !DILocation(line: 993, column: 10, scope: !3119)
!3126 = !DILocation(line: 972, column: 3, scope: !3047, inlinedAt: !3125)
!3127 = !DILocation(line: 972, column: 26, scope: !3047, inlinedAt: !3125)
!3128 = !DILocation(line: 973, column: 13, scope: !3047, inlinedAt: !3125)
!3129 = !DILocation(line: 0, scope: !2065, inlinedAt: !3130)
!3130 = distinct !DILocation(line: 974, column: 3, scope: !3047, inlinedAt: !3125)
!3131 = !DILocation(line: 147, column: 57, scope: !2065, inlinedAt: !3130)
!3132 = !DILocation(line: 149, column: 21, scope: !2065, inlinedAt: !3130)
!3133 = !DILocation(line: 150, column: 6, scope: !2065, inlinedAt: !3130)
!3134 = !DILocation(line: 975, column: 10, scope: !3047, inlinedAt: !3125)
!3135 = !DILocation(line: 976, column: 1, scope: !3047, inlinedAt: !3125)
!3136 = !DILocation(line: 993, column: 3, scope: !3119)
!3137 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !547, file: !547, line: 997, type: !2939, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !3138)
!3138 = !{!3139, !3140, !3141, !3142}
!3139 = !DILocalVariable(name: "n", arg: 1, scope: !3137, file: !547, line: 997, type: !85)
!3140 = !DILocalVariable(name: "s", arg: 2, scope: !3137, file: !547, line: 997, type: !98)
!3141 = !DILocalVariable(name: "arg", arg: 3, scope: !3137, file: !547, line: 997, type: !138)
!3142 = !DILocalVariable(name: "options", scope: !3137, file: !547, line: 999, type: !583)
!3143 = !DILocation(line: 185, column: 26, scope: !2954, inlinedAt: !3144)
!3144 = distinct !DILocation(line: 1000, column: 13, scope: !3137)
!3145 = !DILocation(line: 0, scope: !3137)
!3146 = !DILocation(line: 999, column: 3, scope: !3137)
!3147 = !DILocation(line: 999, column: 26, scope: !3137)
!3148 = !DILocation(line: 0, scope: !2954, inlinedAt: !3144)
!3149 = !DILocation(line: 186, column: 13, scope: !2963, inlinedAt: !3144)
!3150 = !DILocation(line: 186, column: 7, scope: !2954, inlinedAt: !3144)
!3151 = !DILocation(line: 187, column: 5, scope: !2963, inlinedAt: !3144)
!3152 = !{!3153}
!3153 = distinct !{!3153, !3154, !"quoting_options_from_style: argument 0"}
!3154 = distinct !{!3154, !"quoting_options_from_style"}
!3155 = !DILocation(line: 1000, column: 13, scope: !3137)
!3156 = !DILocation(line: 0, scope: !2065, inlinedAt: !3157)
!3157 = distinct !DILocation(line: 1001, column: 3, scope: !3137)
!3158 = !DILocation(line: 147, column: 57, scope: !2065, inlinedAt: !3157)
!3159 = !DILocation(line: 149, column: 21, scope: !2065, inlinedAt: !3157)
!3160 = !DILocation(line: 150, column: 6, scope: !2065, inlinedAt: !3157)
!3161 = !DILocation(line: 1002, column: 10, scope: !3137)
!3162 = !DILocation(line: 1003, column: 1, scope: !3137)
!3163 = !DILocation(line: 1002, column: 3, scope: !3137)
!3164 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !547, file: !547, line: 1006, type: !3165, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !3167)
!3165 = !DISubroutineType(types: !3166)
!3166 = !{!128, !85, !138, !138, !138}
!3167 = !{!3168, !3169, !3170, !3171}
!3168 = !DILocalVariable(name: "n", arg: 1, scope: !3164, file: !547, line: 1006, type: !85)
!3169 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3164, file: !547, line: 1006, type: !138)
!3170 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3164, file: !547, line: 1007, type: !138)
!3171 = !DILocalVariable(name: "arg", arg: 4, scope: !3164, file: !547, line: 1007, type: !138)
!3172 = !DILocation(line: 0, scope: !3164)
!3173 = !DILocalVariable(name: "n", arg: 1, scope: !3174, file: !547, line: 1014, type: !85)
!3174 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !547, file: !547, line: 1014, type: !3175, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !3177)
!3175 = !DISubroutineType(types: !3176)
!3176 = !{!128, !85, !138, !138, !138, !136}
!3177 = !{!3173, !3178, !3179, !3180, !3181, !3182}
!3178 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3174, file: !547, line: 1014, type: !138)
!3179 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3174, file: !547, line: 1015, type: !138)
!3180 = !DILocalVariable(name: "arg", arg: 4, scope: !3174, file: !547, line: 1016, type: !138)
!3181 = !DILocalVariable(name: "argsize", arg: 5, scope: !3174, file: !547, line: 1016, type: !136)
!3182 = !DILocalVariable(name: "o", scope: !3174, file: !547, line: 1018, type: !583)
!3183 = !DILocation(line: 0, scope: !3174, inlinedAt: !3184)
!3184 = distinct !DILocation(line: 1009, column: 10, scope: !3164)
!3185 = !DILocation(line: 1018, column: 3, scope: !3174, inlinedAt: !3184)
!3186 = !DILocation(line: 1018, column: 26, scope: !3174, inlinedAt: !3184)
!3187 = !DILocation(line: 1018, column: 30, scope: !3174, inlinedAt: !3184)
!3188 = !DILocation(line: 0, scope: !2105, inlinedAt: !3189)
!3189 = distinct !DILocation(line: 1019, column: 3, scope: !3174, inlinedAt: !3184)
!3190 = !DILocation(line: 174, column: 12, scope: !2105, inlinedAt: !3189)
!3191 = !DILocation(line: 175, column: 8, scope: !2118, inlinedAt: !3189)
!3192 = !DILocation(line: 175, column: 19, scope: !2118, inlinedAt: !3189)
!3193 = !DILocation(line: 176, column: 5, scope: !2118, inlinedAt: !3189)
!3194 = !DILocation(line: 177, column: 6, scope: !2105, inlinedAt: !3189)
!3195 = !DILocation(line: 177, column: 17, scope: !2105, inlinedAt: !3189)
!3196 = !DILocation(line: 178, column: 6, scope: !2105, inlinedAt: !3189)
!3197 = !DILocation(line: 178, column: 18, scope: !2105, inlinedAt: !3189)
!3198 = !DILocation(line: 1020, column: 10, scope: !3174, inlinedAt: !3184)
!3199 = !DILocation(line: 1021, column: 1, scope: !3174, inlinedAt: !3184)
!3200 = !DILocation(line: 1009, column: 3, scope: !3164)
!3201 = !DILocation(line: 0, scope: !3174)
!3202 = !DILocation(line: 1018, column: 3, scope: !3174)
!3203 = !DILocation(line: 1018, column: 26, scope: !3174)
!3204 = !DILocation(line: 1018, column: 30, scope: !3174)
!3205 = !DILocation(line: 0, scope: !2105, inlinedAt: !3206)
!3206 = distinct !DILocation(line: 1019, column: 3, scope: !3174)
!3207 = !DILocation(line: 174, column: 12, scope: !2105, inlinedAt: !3206)
!3208 = !DILocation(line: 175, column: 8, scope: !2118, inlinedAt: !3206)
!3209 = !DILocation(line: 175, column: 19, scope: !2118, inlinedAt: !3206)
!3210 = !DILocation(line: 176, column: 5, scope: !2118, inlinedAt: !3206)
!3211 = !DILocation(line: 177, column: 6, scope: !2105, inlinedAt: !3206)
!3212 = !DILocation(line: 177, column: 17, scope: !2105, inlinedAt: !3206)
!3213 = !DILocation(line: 178, column: 6, scope: !2105, inlinedAt: !3206)
!3214 = !DILocation(line: 178, column: 18, scope: !2105, inlinedAt: !3206)
!3215 = !DILocation(line: 1020, column: 10, scope: !3174)
!3216 = !DILocation(line: 1021, column: 1, scope: !3174)
!3217 = !DILocation(line: 1020, column: 3, scope: !3174)
!3218 = distinct !DISubprogram(name: "quotearg_custom", scope: !547, file: !547, line: 1024, type: !3219, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !3221)
!3219 = !DISubroutineType(types: !3220)
!3220 = !{!128, !138, !138, !138}
!3221 = !{!3222, !3223, !3224}
!3222 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3218, file: !547, line: 1024, type: !138)
!3223 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3218, file: !547, line: 1024, type: !138)
!3224 = !DILocalVariable(name: "arg", arg: 3, scope: !3218, file: !547, line: 1025, type: !138)
!3225 = !DILocation(line: 0, scope: !3218)
!3226 = !DILocation(line: 0, scope: !3164, inlinedAt: !3227)
!3227 = distinct !DILocation(line: 1027, column: 10, scope: !3218)
!3228 = !DILocation(line: 0, scope: !3174, inlinedAt: !3229)
!3229 = distinct !DILocation(line: 1009, column: 10, scope: !3164, inlinedAt: !3227)
!3230 = !DILocation(line: 1018, column: 3, scope: !3174, inlinedAt: !3229)
!3231 = !DILocation(line: 1018, column: 26, scope: !3174, inlinedAt: !3229)
!3232 = !DILocation(line: 1018, column: 30, scope: !3174, inlinedAt: !3229)
!3233 = !DILocation(line: 0, scope: !2105, inlinedAt: !3234)
!3234 = distinct !DILocation(line: 1019, column: 3, scope: !3174, inlinedAt: !3229)
!3235 = !DILocation(line: 174, column: 12, scope: !2105, inlinedAt: !3234)
!3236 = !DILocation(line: 175, column: 8, scope: !2118, inlinedAt: !3234)
!3237 = !DILocation(line: 175, column: 19, scope: !2118, inlinedAt: !3234)
!3238 = !DILocation(line: 176, column: 5, scope: !2118, inlinedAt: !3234)
!3239 = !DILocation(line: 177, column: 6, scope: !2105, inlinedAt: !3234)
!3240 = !DILocation(line: 177, column: 17, scope: !2105, inlinedAt: !3234)
!3241 = !DILocation(line: 178, column: 6, scope: !2105, inlinedAt: !3234)
!3242 = !DILocation(line: 178, column: 18, scope: !2105, inlinedAt: !3234)
!3243 = !DILocation(line: 1020, column: 10, scope: !3174, inlinedAt: !3229)
!3244 = !DILocation(line: 1021, column: 1, scope: !3174, inlinedAt: !3229)
!3245 = !DILocation(line: 1027, column: 3, scope: !3218)
!3246 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !547, file: !547, line: 1031, type: !3247, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !3249)
!3247 = !DISubroutineType(types: !3248)
!3248 = !{!128, !138, !138, !138, !136}
!3249 = !{!3250, !3251, !3252, !3253}
!3250 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3246, file: !547, line: 1031, type: !138)
!3251 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3246, file: !547, line: 1031, type: !138)
!3252 = !DILocalVariable(name: "arg", arg: 3, scope: !3246, file: !547, line: 1032, type: !138)
!3253 = !DILocalVariable(name: "argsize", arg: 4, scope: !3246, file: !547, line: 1032, type: !136)
!3254 = !DILocation(line: 0, scope: !3246)
!3255 = !DILocation(line: 0, scope: !3174, inlinedAt: !3256)
!3256 = distinct !DILocation(line: 1034, column: 10, scope: !3246)
!3257 = !DILocation(line: 1018, column: 3, scope: !3174, inlinedAt: !3256)
!3258 = !DILocation(line: 1018, column: 26, scope: !3174, inlinedAt: !3256)
!3259 = !DILocation(line: 1018, column: 30, scope: !3174, inlinedAt: !3256)
!3260 = !DILocation(line: 0, scope: !2105, inlinedAt: !3261)
!3261 = distinct !DILocation(line: 1019, column: 3, scope: !3174, inlinedAt: !3256)
!3262 = !DILocation(line: 174, column: 12, scope: !2105, inlinedAt: !3261)
!3263 = !DILocation(line: 175, column: 8, scope: !2118, inlinedAt: !3261)
!3264 = !DILocation(line: 175, column: 19, scope: !2118, inlinedAt: !3261)
!3265 = !DILocation(line: 176, column: 5, scope: !2118, inlinedAt: !3261)
!3266 = !DILocation(line: 177, column: 6, scope: !2105, inlinedAt: !3261)
!3267 = !DILocation(line: 177, column: 17, scope: !2105, inlinedAt: !3261)
!3268 = !DILocation(line: 178, column: 6, scope: !2105, inlinedAt: !3261)
!3269 = !DILocation(line: 178, column: 18, scope: !2105, inlinedAt: !3261)
!3270 = !DILocation(line: 1020, column: 10, scope: !3174, inlinedAt: !3256)
!3271 = !DILocation(line: 1021, column: 1, scope: !3174, inlinedAt: !3256)
!3272 = !DILocation(line: 1034, column: 3, scope: !3246)
!3273 = distinct !DISubprogram(name: "quote_n_mem", scope: !547, file: !547, line: 1049, type: !3274, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !3276)
!3274 = !DISubroutineType(types: !3275)
!3275 = !{!138, !85, !138, !136}
!3276 = !{!3277, !3278, !3279}
!3277 = !DILocalVariable(name: "n", arg: 1, scope: !3273, file: !547, line: 1049, type: !85)
!3278 = !DILocalVariable(name: "arg", arg: 2, scope: !3273, file: !547, line: 1049, type: !138)
!3279 = !DILocalVariable(name: "argsize", arg: 3, scope: !3273, file: !547, line: 1049, type: !136)
!3280 = !DILocation(line: 0, scope: !3273)
!3281 = !DILocation(line: 1051, column: 10, scope: !3273)
!3282 = !DILocation(line: 1051, column: 3, scope: !3273)
!3283 = distinct !DISubprogram(name: "quote_mem", scope: !547, file: !547, line: 1055, type: !3284, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !3286)
!3284 = !DISubroutineType(types: !3285)
!3285 = !{!138, !138, !136}
!3286 = !{!3287, !3288}
!3287 = !DILocalVariable(name: "arg", arg: 1, scope: !3283, file: !547, line: 1055, type: !138)
!3288 = !DILocalVariable(name: "argsize", arg: 2, scope: !3283, file: !547, line: 1055, type: !136)
!3289 = !DILocation(line: 0, scope: !3283)
!3290 = !DILocation(line: 0, scope: !3273, inlinedAt: !3291)
!3291 = distinct !DILocation(line: 1057, column: 10, scope: !3283)
!3292 = !DILocation(line: 1051, column: 10, scope: !3273, inlinedAt: !3291)
!3293 = !DILocation(line: 1057, column: 3, scope: !3283)
!3294 = distinct !DISubprogram(name: "quote_n", scope: !547, file: !547, line: 1061, type: !3295, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !3297)
!3295 = !DISubroutineType(types: !3296)
!3296 = !{!138, !85, !138}
!3297 = !{!3298, !3299}
!3298 = !DILocalVariable(name: "n", arg: 1, scope: !3294, file: !547, line: 1061, type: !85)
!3299 = !DILocalVariable(name: "arg", arg: 2, scope: !3294, file: !547, line: 1061, type: !138)
!3300 = !DILocation(line: 0, scope: !3294)
!3301 = !DILocation(line: 0, scope: !3273, inlinedAt: !3302)
!3302 = distinct !DILocation(line: 1063, column: 10, scope: !3294)
!3303 = !DILocation(line: 1051, column: 10, scope: !3273, inlinedAt: !3302)
!3304 = !DILocation(line: 1063, column: 3, scope: !3294)
!3305 = distinct !DISubprogram(name: "quote", scope: !547, file: !547, line: 1067, type: !3306, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !3308)
!3306 = !DISubroutineType(types: !3307)
!3307 = !{!138, !138}
!3308 = !{!3309}
!3309 = !DILocalVariable(name: "arg", arg: 1, scope: !3305, file: !547, line: 1067, type: !138)
!3310 = !DILocation(line: 0, scope: !3305)
!3311 = !DILocation(line: 0, scope: !3294, inlinedAt: !3312)
!3312 = distinct !DILocation(line: 1069, column: 10, scope: !3305)
!3313 = !DILocation(line: 0, scope: !3273, inlinedAt: !3314)
!3314 = distinct !DILocation(line: 1063, column: 10, scope: !3294, inlinedAt: !3312)
!3315 = !DILocation(line: 1051, column: 10, scope: !3273, inlinedAt: !3314)
!3316 = !DILocation(line: 1069, column: 3, scope: !3305)
!3317 = distinct !DISubprogram(name: "version_etc_arn", scope: !646, file: !646, line: 61, type: !3318, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !3355)
!3318 = !DISubroutineType(types: !3319)
!3319 = !{null, !3320, !138, !138, !138, !3354, !136}
!3320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3321, size: 64)
!3321 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !249, line: 7, baseType: !3322)
!3322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !251, line: 49, size: 1728, elements: !3323)
!3323 = !{!3324, !3325, !3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353}
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3322, file: !251, line: 51, baseType: !85, size: 32)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3322, file: !251, line: 54, baseType: !128, size: 64, offset: 64)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3322, file: !251, line: 55, baseType: !128, size: 64, offset: 128)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3322, file: !251, line: 56, baseType: !128, size: 64, offset: 192)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3322, file: !251, line: 57, baseType: !128, size: 64, offset: 256)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3322, file: !251, line: 58, baseType: !128, size: 64, offset: 320)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3322, file: !251, line: 59, baseType: !128, size: 64, offset: 384)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3322, file: !251, line: 60, baseType: !128, size: 64, offset: 448)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3322, file: !251, line: 61, baseType: !128, size: 64, offset: 512)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3322, file: !251, line: 64, baseType: !128, size: 64, offset: 576)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3322, file: !251, line: 65, baseType: !128, size: 64, offset: 640)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3322, file: !251, line: 66, baseType: !128, size: 64, offset: 704)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3322, file: !251, line: 68, baseType: !266, size: 64, offset: 768)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3322, file: !251, line: 70, baseType: !3338, size: 64, offset: 832)
!3338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3322, size: 64)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3322, file: !251, line: 72, baseType: !85, size: 32, offset: 896)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3322, file: !251, line: 73, baseType: !85, size: 32, offset: 928)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3322, file: !251, line: 74, baseType: !273, size: 64, offset: 960)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3322, file: !251, line: 77, baseType: !135, size: 16, offset: 1024)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3322, file: !251, line: 78, baseType: !277, size: 8, offset: 1040)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3322, file: !251, line: 79, baseType: !61, size: 8, offset: 1048)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3322, file: !251, line: 81, baseType: !280, size: 64, offset: 1088)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3322, file: !251, line: 89, baseType: !283, size: 64, offset: 1152)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3322, file: !251, line: 91, baseType: !285, size: 64, offset: 1216)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3322, file: !251, line: 92, baseType: !288, size: 64, offset: 1280)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3322, file: !251, line: 93, baseType: !3338, size: 64, offset: 1344)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3322, file: !251, line: 94, baseType: !129, size: 64, offset: 1408)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3322, file: !251, line: 95, baseType: !136, size: 64, offset: 1472)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3322, file: !251, line: 96, baseType: !85, size: 32, offset: 1536)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3322, file: !251, line: 98, baseType: !295, size: 160, offset: 1568)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!3355 = !{!3356, !3357, !3358, !3359, !3360, !3361}
!3356 = !DILocalVariable(name: "stream", arg: 1, scope: !3317, file: !646, line: 61, type: !3320)
!3357 = !DILocalVariable(name: "command_name", arg: 2, scope: !3317, file: !646, line: 62, type: !138)
!3358 = !DILocalVariable(name: "package", arg: 3, scope: !3317, file: !646, line: 62, type: !138)
!3359 = !DILocalVariable(name: "version", arg: 4, scope: !3317, file: !646, line: 63, type: !138)
!3360 = !DILocalVariable(name: "authors", arg: 5, scope: !3317, file: !646, line: 64, type: !3354)
!3361 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3317, file: !646, line: 64, type: !136)
!3362 = !DILocation(line: 0, scope: !3317)
!3363 = !DILocation(line: 66, column: 7, scope: !3364)
!3364 = distinct !DILexicalBlock(scope: !3317, file: !646, line: 66, column: 7)
!3365 = !DILocation(line: 66, column: 7, scope: !3317)
!3366 = !DILocation(line: 67, column: 5, scope: !3364)
!3367 = !DILocation(line: 69, column: 5, scope: !3364)
!3368 = !DILocation(line: 83, column: 3, scope: !3317)
!3369 = !DILocation(line: 85, column: 3, scope: !3317)
!3370 = !DILocation(line: 88, column: 3, scope: !3317)
!3371 = !DILocation(line: 95, column: 3, scope: !3317)
!3372 = !DILocation(line: 97, column: 3, scope: !3317)
!3373 = !DILocation(line: 105, column: 7, scope: !3374)
!3374 = distinct !DILexicalBlock(scope: !3317, file: !646, line: 98, column: 5)
!3375 = !DILocation(line: 106, column: 7, scope: !3374)
!3376 = !DILocation(line: 109, column: 7, scope: !3374)
!3377 = !DILocation(line: 110, column: 7, scope: !3374)
!3378 = !DILocation(line: 113, column: 7, scope: !3374)
!3379 = !DILocation(line: 115, column: 7, scope: !3374)
!3380 = !DILocation(line: 120, column: 7, scope: !3374)
!3381 = !DILocation(line: 122, column: 7, scope: !3374)
!3382 = !DILocation(line: 127, column: 7, scope: !3374)
!3383 = !DILocation(line: 129, column: 7, scope: !3374)
!3384 = !DILocation(line: 134, column: 7, scope: !3374)
!3385 = !DILocation(line: 137, column: 7, scope: !3374)
!3386 = !DILocation(line: 142, column: 7, scope: !3374)
!3387 = !DILocation(line: 145, column: 7, scope: !3374)
!3388 = !DILocation(line: 150, column: 7, scope: !3374)
!3389 = !DILocation(line: 154, column: 7, scope: !3374)
!3390 = !DILocation(line: 159, column: 7, scope: !3374)
!3391 = !DILocation(line: 163, column: 7, scope: !3374)
!3392 = !DILocation(line: 170, column: 7, scope: !3374)
!3393 = !DILocation(line: 174, column: 7, scope: !3374)
!3394 = !DILocation(line: 176, column: 1, scope: !3317)
!3395 = distinct !DISubprogram(name: "version_etc_ar", scope: !646, file: !646, line: 183, type: !3396, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !3398)
!3396 = !DISubroutineType(types: !3397)
!3397 = !{null, !3320, !138, !138, !138, !3354}
!3398 = !{!3399, !3400, !3401, !3402, !3403, !3404}
!3399 = !DILocalVariable(name: "stream", arg: 1, scope: !3395, file: !646, line: 183, type: !3320)
!3400 = !DILocalVariable(name: "command_name", arg: 2, scope: !3395, file: !646, line: 184, type: !138)
!3401 = !DILocalVariable(name: "package", arg: 3, scope: !3395, file: !646, line: 184, type: !138)
!3402 = !DILocalVariable(name: "version", arg: 4, scope: !3395, file: !646, line: 185, type: !138)
!3403 = !DILocalVariable(name: "authors", arg: 5, scope: !3395, file: !646, line: 185, type: !3354)
!3404 = !DILocalVariable(name: "n_authors", scope: !3395, file: !646, line: 187, type: !136)
!3405 = !DILocation(line: 0, scope: !3395)
!3406 = !DILocation(line: 189, column: 8, scope: !3407)
!3407 = distinct !DILexicalBlock(scope: !3395, file: !646, line: 189, column: 3)
!3408 = !DILocation(line: 189, scope: !3407)
!3409 = !DILocation(line: 189, column: 23, scope: !3410)
!3410 = distinct !DILexicalBlock(scope: !3407, file: !646, line: 189, column: 3)
!3411 = !DILocation(line: 189, column: 3, scope: !3407)
!3412 = !DILocation(line: 189, column: 52, scope: !3410)
!3413 = distinct !{!3413, !3411, !3414, !976}
!3414 = !DILocation(line: 190, column: 5, scope: !3407)
!3415 = !DILocation(line: 191, column: 3, scope: !3395)
!3416 = !DILocation(line: 192, column: 1, scope: !3395)
!3417 = distinct !DISubprogram(name: "version_etc_va", scope: !646, file: !646, line: 199, type: !3418, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !3431)
!3418 = !DISubroutineType(types: !3419)
!3419 = !{null, !3320, !138, !138, !138, !3420}
!3420 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !464, line: 52, baseType: !3421)
!3421 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !466, line: 14, baseType: !3422)
!3422 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3423, baseType: !3424)
!3423 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !3425)
!3425 = !{!3426, !3427, !3428, !3429, !3430}
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3424, file: !3423, line: 192, baseType: !129, size: 64)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3424, file: !3423, line: 192, baseType: !129, size: 64, offset: 64)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3424, file: !3423, line: 192, baseType: !129, size: 64, offset: 128)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3424, file: !3423, line: 192, baseType: !85, size: 32, offset: 192)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3424, file: !3423, line: 192, baseType: !85, size: 32, offset: 224)
!3431 = !{!3432, !3433, !3434, !3435, !3436, !3437, !3438}
!3432 = !DILocalVariable(name: "stream", arg: 1, scope: !3417, file: !646, line: 199, type: !3320)
!3433 = !DILocalVariable(name: "command_name", arg: 2, scope: !3417, file: !646, line: 200, type: !138)
!3434 = !DILocalVariable(name: "package", arg: 3, scope: !3417, file: !646, line: 200, type: !138)
!3435 = !DILocalVariable(name: "version", arg: 4, scope: !3417, file: !646, line: 201, type: !138)
!3436 = !DILocalVariable(name: "authors", arg: 5, scope: !3417, file: !646, line: 201, type: !3420)
!3437 = !DILocalVariable(name: "n_authors", scope: !3417, file: !646, line: 203, type: !136)
!3438 = !DILocalVariable(name: "authtab", scope: !3417, file: !646, line: 204, type: !3439)
!3439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 640, elements: !67)
!3440 = !DILocation(line: 0, scope: !3417)
!3441 = !DILocation(line: 201, column: 46, scope: !3417)
!3442 = !DILocation(line: 204, column: 3, scope: !3417)
!3443 = !DILocation(line: 204, column: 15, scope: !3417)
!3444 = !DILocation(line: 208, column: 35, scope: !3445)
!3445 = distinct !DILexicalBlock(scope: !3446, file: !646, line: 206, column: 3)
!3446 = distinct !DILexicalBlock(scope: !3417, file: !646, line: 206, column: 3)
!3447 = !DILocation(line: 208, column: 33, scope: !3445)
!3448 = !DILocation(line: 208, column: 67, scope: !3445)
!3449 = !DILocation(line: 206, column: 3, scope: !3446)
!3450 = !DILocation(line: 208, column: 14, scope: !3445)
!3451 = !DILocation(line: 0, scope: !3446)
!3452 = !DILocation(line: 211, column: 3, scope: !3417)
!3453 = !DILocation(line: 213, column: 1, scope: !3417)
!3454 = distinct !DISubprogram(name: "version_etc", scope: !646, file: !646, line: 230, type: !3455, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !3457)
!3455 = !DISubroutineType(types: !3456)
!3456 = !{null, !3320, !138, !138, !138, null}
!3457 = !{!3458, !3459, !3460, !3461, !3462}
!3458 = !DILocalVariable(name: "stream", arg: 1, scope: !3454, file: !646, line: 230, type: !3320)
!3459 = !DILocalVariable(name: "command_name", arg: 2, scope: !3454, file: !646, line: 231, type: !138)
!3460 = !DILocalVariable(name: "package", arg: 3, scope: !3454, file: !646, line: 231, type: !138)
!3461 = !DILocalVariable(name: "version", arg: 4, scope: !3454, file: !646, line: 232, type: !138)
!3462 = !DILocalVariable(name: "authors", scope: !3454, file: !646, line: 234, type: !3420)
!3463 = !DILocation(line: 0, scope: !3454)
!3464 = !DILocation(line: 234, column: 3, scope: !3454)
!3465 = !DILocation(line: 234, column: 11, scope: !3454)
!3466 = !DILocation(line: 235, column: 3, scope: !3454)
!3467 = !DILocation(line: 236, column: 3, scope: !3454)
!3468 = !DILocation(line: 237, column: 3, scope: !3454)
!3469 = !DILocation(line: 238, column: 1, scope: !3454)
!3470 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !646, file: !646, line: 241, type: !502, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !869)
!3471 = !DILocation(line: 243, column: 3, scope: !3470)
!3472 = !DILocation(line: 248, column: 3, scope: !3470)
!3473 = !DILocation(line: 254, column: 3, scope: !3470)
!3474 = !DILocation(line: 259, column: 3, scope: !3470)
!3475 = !DILocation(line: 261, column: 1, scope: !3470)
!3476 = distinct !DISubprogram(name: "xnrealloc", scope: !3477, file: !3477, line: 147, type: !3478, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !781, retainedNodes: !3480)
!3477 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3478 = !DISubroutineType(types: !3479)
!3479 = !{!129, !129, !136, !136}
!3480 = !{!3481, !3482, !3483}
!3481 = !DILocalVariable(name: "p", arg: 1, scope: !3476, file: !3477, line: 147, type: !129)
!3482 = !DILocalVariable(name: "n", arg: 2, scope: !3476, file: !3477, line: 147, type: !136)
!3483 = !DILocalVariable(name: "s", arg: 3, scope: !3476, file: !3477, line: 147, type: !136)
!3484 = !DILocation(line: 0, scope: !3476)
!3485 = !DILocalVariable(name: "p", arg: 1, scope: !3486, file: !782, line: 83, type: !129)
!3486 = distinct !DISubprogram(name: "xreallocarray", scope: !782, file: !782, line: 83, type: !3478, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !781, retainedNodes: !3487)
!3487 = !{!3485, !3488, !3489}
!3488 = !DILocalVariable(name: "n", arg: 2, scope: !3486, file: !782, line: 83, type: !136)
!3489 = !DILocalVariable(name: "s", arg: 3, scope: !3486, file: !782, line: 83, type: !136)
!3490 = !DILocation(line: 0, scope: !3486, inlinedAt: !3491)
!3491 = distinct !DILocation(line: 149, column: 10, scope: !3476)
!3492 = !DILocation(line: 85, column: 25, scope: !3486, inlinedAt: !3491)
!3493 = !DILocalVariable(name: "p", arg: 1, scope: !3494, file: !782, line: 37, type: !129)
!3494 = distinct !DISubprogram(name: "check_nonnull", scope: !782, file: !782, line: 37, type: !3495, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !781, retainedNodes: !3497)
!3495 = !DISubroutineType(types: !3496)
!3496 = !{!129, !129}
!3497 = !{!3493}
!3498 = !DILocation(line: 0, scope: !3494, inlinedAt: !3499)
!3499 = distinct !DILocation(line: 85, column: 10, scope: !3486, inlinedAt: !3491)
!3500 = !DILocation(line: 39, column: 8, scope: !3501, inlinedAt: !3499)
!3501 = distinct !DILexicalBlock(scope: !3494, file: !782, line: 39, column: 7)
!3502 = !DILocation(line: 39, column: 7, scope: !3494, inlinedAt: !3499)
!3503 = !DILocation(line: 40, column: 5, scope: !3501, inlinedAt: !3499)
!3504 = !DILocation(line: 149, column: 3, scope: !3476)
!3505 = !DILocation(line: 0, scope: !3486)
!3506 = !DILocation(line: 85, column: 25, scope: !3486)
!3507 = !DILocation(line: 0, scope: !3494, inlinedAt: !3508)
!3508 = distinct !DILocation(line: 85, column: 10, scope: !3486)
!3509 = !DILocation(line: 39, column: 8, scope: !3501, inlinedAt: !3508)
!3510 = !DILocation(line: 39, column: 7, scope: !3494, inlinedAt: !3508)
!3511 = !DILocation(line: 40, column: 5, scope: !3501, inlinedAt: !3508)
!3512 = !DILocation(line: 85, column: 3, scope: !3486)
!3513 = distinct !DISubprogram(name: "xmalloc", scope: !782, file: !782, line: 47, type: !3514, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !781, retainedNodes: !3516)
!3514 = !DISubroutineType(types: !3515)
!3515 = !{!129, !136}
!3516 = !{!3517}
!3517 = !DILocalVariable(name: "s", arg: 1, scope: !3513, file: !782, line: 47, type: !136)
!3518 = !DILocation(line: 0, scope: !3513)
!3519 = !DILocation(line: 49, column: 25, scope: !3513)
!3520 = !DILocation(line: 0, scope: !3494, inlinedAt: !3521)
!3521 = distinct !DILocation(line: 49, column: 10, scope: !3513)
!3522 = !DILocation(line: 39, column: 8, scope: !3501, inlinedAt: !3521)
!3523 = !DILocation(line: 39, column: 7, scope: !3494, inlinedAt: !3521)
!3524 = !DILocation(line: 40, column: 5, scope: !3501, inlinedAt: !3521)
!3525 = !DILocation(line: 49, column: 3, scope: !3513)
!3526 = !DISubprogram(name: "malloc", scope: !1050, file: !1050, line: 540, type: !3514, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !869)
!3527 = distinct !DISubprogram(name: "ximalloc", scope: !782, file: !782, line: 53, type: !3528, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !781, retainedNodes: !3530)
!3528 = !DISubroutineType(types: !3529)
!3529 = !{!129, !801}
!3530 = !{!3531}
!3531 = !DILocalVariable(name: "s", arg: 1, scope: !3527, file: !782, line: 53, type: !801)
!3532 = !DILocation(line: 0, scope: !3527)
!3533 = !DILocalVariable(name: "s", arg: 1, scope: !3534, file: !3535, line: 55, type: !801)
!3534 = distinct !DISubprogram(name: "imalloc", scope: !3535, file: !3535, line: 55, type: !3528, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !781, retainedNodes: !3536)
!3535 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3536 = !{!3533}
!3537 = !DILocation(line: 0, scope: !3534, inlinedAt: !3538)
!3538 = distinct !DILocation(line: 55, column: 25, scope: !3527)
!3539 = !DILocation(line: 57, column: 26, scope: !3534, inlinedAt: !3538)
!3540 = !DILocation(line: 0, scope: !3494, inlinedAt: !3541)
!3541 = distinct !DILocation(line: 55, column: 10, scope: !3527)
!3542 = !DILocation(line: 39, column: 8, scope: !3501, inlinedAt: !3541)
!3543 = !DILocation(line: 39, column: 7, scope: !3494, inlinedAt: !3541)
!3544 = !DILocation(line: 40, column: 5, scope: !3501, inlinedAt: !3541)
!3545 = !DILocation(line: 55, column: 3, scope: !3527)
!3546 = distinct !DISubprogram(name: "xcharalloc", scope: !782, file: !782, line: 59, type: !3547, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !781, retainedNodes: !3549)
!3547 = !DISubroutineType(types: !3548)
!3548 = !{!128, !136}
!3549 = !{!3550}
!3550 = !DILocalVariable(name: "n", arg: 1, scope: !3546, file: !782, line: 59, type: !136)
!3551 = !DILocation(line: 0, scope: !3546)
!3552 = !DILocation(line: 0, scope: !3513, inlinedAt: !3553)
!3553 = distinct !DILocation(line: 61, column: 10, scope: !3546)
!3554 = !DILocation(line: 49, column: 25, scope: !3513, inlinedAt: !3553)
!3555 = !DILocation(line: 0, scope: !3494, inlinedAt: !3556)
!3556 = distinct !DILocation(line: 49, column: 10, scope: !3513, inlinedAt: !3553)
!3557 = !DILocation(line: 39, column: 8, scope: !3501, inlinedAt: !3556)
!3558 = !DILocation(line: 39, column: 7, scope: !3494, inlinedAt: !3556)
!3559 = !DILocation(line: 40, column: 5, scope: !3501, inlinedAt: !3556)
!3560 = !DILocation(line: 61, column: 3, scope: !3546)
!3561 = distinct !DISubprogram(name: "xrealloc", scope: !782, file: !782, line: 68, type: !3562, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !781, retainedNodes: !3564)
!3562 = !DISubroutineType(types: !3563)
!3563 = !{!129, !129, !136}
!3564 = !{!3565, !3566}
!3565 = !DILocalVariable(name: "p", arg: 1, scope: !3561, file: !782, line: 68, type: !129)
!3566 = !DILocalVariable(name: "s", arg: 2, scope: !3561, file: !782, line: 68, type: !136)
!3567 = !DILocation(line: 0, scope: !3561)
!3568 = !DILocalVariable(name: "ptr", arg: 1, scope: !3569, file: !3570, line: 2057, type: !129)
!3569 = distinct !DISubprogram(name: "rpl_realloc", scope: !3570, file: !3570, line: 2057, type: !3562, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !781, retainedNodes: !3571)
!3570 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3571 = !{!3568, !3572}
!3572 = !DILocalVariable(name: "size", arg: 2, scope: !3569, file: !3570, line: 2057, type: !136)
!3573 = !DILocation(line: 0, scope: !3569, inlinedAt: !3574)
!3574 = distinct !DILocation(line: 70, column: 25, scope: !3561)
!3575 = !DILocation(line: 2059, column: 24, scope: !3569, inlinedAt: !3574)
!3576 = !DILocation(line: 2059, column: 10, scope: !3569, inlinedAt: !3574)
!3577 = !DILocation(line: 0, scope: !3494, inlinedAt: !3578)
!3578 = distinct !DILocation(line: 70, column: 10, scope: !3561)
!3579 = !DILocation(line: 39, column: 8, scope: !3501, inlinedAt: !3578)
!3580 = !DILocation(line: 39, column: 7, scope: !3494, inlinedAt: !3578)
!3581 = !DILocation(line: 40, column: 5, scope: !3501, inlinedAt: !3578)
!3582 = !DILocation(line: 70, column: 3, scope: !3561)
!3583 = !DISubprogram(name: "realloc", scope: !1050, file: !1050, line: 551, type: !3562, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !869)
!3584 = distinct !DISubprogram(name: "xirealloc", scope: !782, file: !782, line: 74, type: !3585, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !781, retainedNodes: !3587)
!3585 = !DISubroutineType(types: !3586)
!3586 = !{!129, !129, !801}
!3587 = !{!3588, !3589}
!3588 = !DILocalVariable(name: "p", arg: 1, scope: !3584, file: !782, line: 74, type: !129)
!3589 = !DILocalVariable(name: "s", arg: 2, scope: !3584, file: !782, line: 74, type: !801)
!3590 = !DILocation(line: 0, scope: !3584)
!3591 = !DILocalVariable(name: "p", arg: 1, scope: !3592, file: !3535, line: 66, type: !129)
!3592 = distinct !DISubprogram(name: "irealloc", scope: !3535, file: !3535, line: 66, type: !3585, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !781, retainedNodes: !3593)
!3593 = !{!3591, !3594}
!3594 = !DILocalVariable(name: "s", arg: 2, scope: !3592, file: !3535, line: 66, type: !801)
!3595 = !DILocation(line: 0, scope: !3592, inlinedAt: !3596)
!3596 = distinct !DILocation(line: 76, column: 25, scope: !3584)
!3597 = !DILocation(line: 0, scope: !3569, inlinedAt: !3598)
!3598 = distinct !DILocation(line: 68, column: 26, scope: !3592, inlinedAt: !3596)
!3599 = !DILocation(line: 2059, column: 24, scope: !3569, inlinedAt: !3598)
!3600 = !DILocation(line: 2059, column: 10, scope: !3569, inlinedAt: !3598)
!3601 = !DILocation(line: 0, scope: !3494, inlinedAt: !3602)
!3602 = distinct !DILocation(line: 76, column: 10, scope: !3584)
!3603 = !DILocation(line: 39, column: 8, scope: !3501, inlinedAt: !3602)
!3604 = !DILocation(line: 39, column: 7, scope: !3494, inlinedAt: !3602)
!3605 = !DILocation(line: 40, column: 5, scope: !3501, inlinedAt: !3602)
!3606 = !DILocation(line: 76, column: 3, scope: !3584)
!3607 = distinct !DISubprogram(name: "xireallocarray", scope: !782, file: !782, line: 89, type: !3608, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !781, retainedNodes: !3610)
!3608 = !DISubroutineType(types: !3609)
!3609 = !{!129, !129, !801, !801}
!3610 = !{!3611, !3612, !3613}
!3611 = !DILocalVariable(name: "p", arg: 1, scope: !3607, file: !782, line: 89, type: !129)
!3612 = !DILocalVariable(name: "n", arg: 2, scope: !3607, file: !782, line: 89, type: !801)
!3613 = !DILocalVariable(name: "s", arg: 3, scope: !3607, file: !782, line: 89, type: !801)
!3614 = !DILocation(line: 0, scope: !3607)
!3615 = !DILocalVariable(name: "p", arg: 1, scope: !3616, file: !3535, line: 98, type: !129)
!3616 = distinct !DISubprogram(name: "ireallocarray", scope: !3535, file: !3535, line: 98, type: !3608, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !781, retainedNodes: !3617)
!3617 = !{!3615, !3618, !3619}
!3618 = !DILocalVariable(name: "n", arg: 2, scope: !3616, file: !3535, line: 98, type: !801)
!3619 = !DILocalVariable(name: "s", arg: 3, scope: !3616, file: !3535, line: 98, type: !801)
!3620 = !DILocation(line: 0, scope: !3616, inlinedAt: !3621)
!3621 = distinct !DILocation(line: 91, column: 25, scope: !3607)
!3622 = !DILocation(line: 101, column: 13, scope: !3616, inlinedAt: !3621)
!3623 = !DILocation(line: 0, scope: !3494, inlinedAt: !3624)
!3624 = distinct !DILocation(line: 91, column: 10, scope: !3607)
!3625 = !DILocation(line: 39, column: 8, scope: !3501, inlinedAt: !3624)
!3626 = !DILocation(line: 39, column: 7, scope: !3494, inlinedAt: !3624)
!3627 = !DILocation(line: 40, column: 5, scope: !3501, inlinedAt: !3624)
!3628 = !DILocation(line: 91, column: 3, scope: !3607)
!3629 = distinct !DISubprogram(name: "xnmalloc", scope: !782, file: !782, line: 98, type: !3630, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !781, retainedNodes: !3632)
!3630 = !DISubroutineType(types: !3631)
!3631 = !{!129, !136, !136}
!3632 = !{!3633, !3634}
!3633 = !DILocalVariable(name: "n", arg: 1, scope: !3629, file: !782, line: 98, type: !136)
!3634 = !DILocalVariable(name: "s", arg: 2, scope: !3629, file: !782, line: 98, type: !136)
!3635 = !DILocation(line: 0, scope: !3629)
!3636 = !DILocation(line: 0, scope: !3486, inlinedAt: !3637)
!3637 = distinct !DILocation(line: 100, column: 10, scope: !3629)
!3638 = !DILocation(line: 85, column: 25, scope: !3486, inlinedAt: !3637)
!3639 = !DILocation(line: 0, scope: !3494, inlinedAt: !3640)
!3640 = distinct !DILocation(line: 85, column: 10, scope: !3486, inlinedAt: !3637)
!3641 = !DILocation(line: 39, column: 8, scope: !3501, inlinedAt: !3640)
!3642 = !DILocation(line: 39, column: 7, scope: !3494, inlinedAt: !3640)
!3643 = !DILocation(line: 40, column: 5, scope: !3501, inlinedAt: !3640)
!3644 = !DILocation(line: 100, column: 3, scope: !3629)
!3645 = distinct !DISubprogram(name: "xinmalloc", scope: !782, file: !782, line: 104, type: !3646, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !781, retainedNodes: !3648)
!3646 = !DISubroutineType(types: !3647)
!3647 = !{!129, !801, !801}
!3648 = !{!3649, !3650}
!3649 = !DILocalVariable(name: "n", arg: 1, scope: !3645, file: !782, line: 104, type: !801)
!3650 = !DILocalVariable(name: "s", arg: 2, scope: !3645, file: !782, line: 104, type: !801)
!3651 = !DILocation(line: 0, scope: !3645)
!3652 = !DILocation(line: 0, scope: !3607, inlinedAt: !3653)
!3653 = distinct !DILocation(line: 106, column: 10, scope: !3645)
!3654 = !DILocation(line: 0, scope: !3616, inlinedAt: !3655)
!3655 = distinct !DILocation(line: 91, column: 25, scope: !3607, inlinedAt: !3653)
!3656 = !DILocation(line: 101, column: 13, scope: !3616, inlinedAt: !3655)
!3657 = !DILocation(line: 0, scope: !3494, inlinedAt: !3658)
!3658 = distinct !DILocation(line: 91, column: 10, scope: !3607, inlinedAt: !3653)
!3659 = !DILocation(line: 39, column: 8, scope: !3501, inlinedAt: !3658)
!3660 = !DILocation(line: 39, column: 7, scope: !3494, inlinedAt: !3658)
!3661 = !DILocation(line: 40, column: 5, scope: !3501, inlinedAt: !3658)
!3662 = !DILocation(line: 106, column: 3, scope: !3645)
!3663 = distinct !DISubprogram(name: "x2realloc", scope: !782, file: !782, line: 116, type: !3664, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !781, retainedNodes: !3666)
!3664 = !DISubroutineType(types: !3665)
!3665 = !{!129, !129, !788}
!3666 = !{!3667, !3668}
!3667 = !DILocalVariable(name: "p", arg: 1, scope: !3663, file: !782, line: 116, type: !129)
!3668 = !DILocalVariable(name: "ps", arg: 2, scope: !3663, file: !782, line: 116, type: !788)
!3669 = !DILocation(line: 0, scope: !3663)
!3670 = !DILocation(line: 0, scope: !785, inlinedAt: !3671)
!3671 = distinct !DILocation(line: 118, column: 10, scope: !3663)
!3672 = !DILocation(line: 178, column: 14, scope: !785, inlinedAt: !3671)
!3673 = !DILocation(line: 180, column: 9, scope: !3674, inlinedAt: !3671)
!3674 = distinct !DILexicalBlock(scope: !785, file: !782, line: 180, column: 7)
!3675 = !DILocation(line: 180, column: 7, scope: !785, inlinedAt: !3671)
!3676 = !DILocation(line: 182, column: 13, scope: !3677, inlinedAt: !3671)
!3677 = distinct !DILexicalBlock(scope: !3678, file: !782, line: 182, column: 11)
!3678 = distinct !DILexicalBlock(scope: !3674, file: !782, line: 181, column: 5)
!3679 = !DILocation(line: 182, column: 11, scope: !3678, inlinedAt: !3671)
!3680 = !DILocation(line: 197, column: 11, scope: !3681, inlinedAt: !3671)
!3681 = distinct !DILexicalBlock(scope: !3682, file: !782, line: 197, column: 11)
!3682 = distinct !DILexicalBlock(scope: !3674, file: !782, line: 195, column: 5)
!3683 = !DILocation(line: 197, column: 11, scope: !3682, inlinedAt: !3671)
!3684 = !DILocation(line: 198, column: 9, scope: !3681, inlinedAt: !3671)
!3685 = !DILocation(line: 0, scope: !3486, inlinedAt: !3686)
!3686 = distinct !DILocation(line: 201, column: 7, scope: !785, inlinedAt: !3671)
!3687 = !DILocation(line: 85, column: 25, scope: !3486, inlinedAt: !3686)
!3688 = !DILocation(line: 0, scope: !3494, inlinedAt: !3689)
!3689 = distinct !DILocation(line: 85, column: 10, scope: !3486, inlinedAt: !3686)
!3690 = !DILocation(line: 39, column: 8, scope: !3501, inlinedAt: !3689)
!3691 = !DILocation(line: 39, column: 7, scope: !3494, inlinedAt: !3689)
!3692 = !DILocation(line: 40, column: 5, scope: !3501, inlinedAt: !3689)
!3693 = !DILocation(line: 202, column: 7, scope: !785, inlinedAt: !3671)
!3694 = !DILocation(line: 118, column: 3, scope: !3663)
!3695 = !DILocation(line: 0, scope: !785)
!3696 = !DILocation(line: 178, column: 14, scope: !785)
!3697 = !DILocation(line: 180, column: 9, scope: !3674)
!3698 = !DILocation(line: 180, column: 7, scope: !785)
!3699 = !DILocation(line: 182, column: 13, scope: !3677)
!3700 = !DILocation(line: 182, column: 11, scope: !3678)
!3701 = !DILocation(line: 190, column: 30, scope: !3702)
!3702 = distinct !DILexicalBlock(scope: !3677, file: !782, line: 183, column: 9)
!3703 = !DILocation(line: 191, column: 16, scope: !3702)
!3704 = !DILocation(line: 191, column: 13, scope: !3702)
!3705 = !DILocation(line: 192, column: 9, scope: !3702)
!3706 = !DILocation(line: 197, column: 11, scope: !3681)
!3707 = !DILocation(line: 197, column: 11, scope: !3682)
!3708 = !DILocation(line: 198, column: 9, scope: !3681)
!3709 = !DILocation(line: 0, scope: !3486, inlinedAt: !3710)
!3710 = distinct !DILocation(line: 201, column: 7, scope: !785)
!3711 = !DILocation(line: 85, column: 25, scope: !3486, inlinedAt: !3710)
!3712 = !DILocation(line: 0, scope: !3494, inlinedAt: !3713)
!3713 = distinct !DILocation(line: 85, column: 10, scope: !3486, inlinedAt: !3710)
!3714 = !DILocation(line: 39, column: 8, scope: !3501, inlinedAt: !3713)
!3715 = !DILocation(line: 39, column: 7, scope: !3494, inlinedAt: !3713)
!3716 = !DILocation(line: 40, column: 5, scope: !3501, inlinedAt: !3713)
!3717 = !DILocation(line: 202, column: 7, scope: !785)
!3718 = !DILocation(line: 203, column: 3, scope: !785)
!3719 = !DILocation(line: 0, scope: !797)
!3720 = !DILocation(line: 230, column: 14, scope: !797)
!3721 = !DILocation(line: 238, column: 7, scope: !3722)
!3722 = distinct !DILexicalBlock(scope: !797, file: !782, line: 238, column: 7)
!3723 = !DILocation(line: 238, column: 7, scope: !797)
!3724 = !DILocation(line: 240, column: 9, scope: !3725)
!3725 = distinct !DILexicalBlock(scope: !797, file: !782, line: 240, column: 7)
!3726 = !DILocation(line: 240, column: 18, scope: !3725)
!3727 = !DILocation(line: 253, column: 8, scope: !797)
!3728 = !DILocation(line: 258, column: 27, scope: !3729)
!3729 = distinct !DILexicalBlock(scope: !3730, file: !782, line: 257, column: 5)
!3730 = distinct !DILexicalBlock(scope: !797, file: !782, line: 256, column: 7)
!3731 = !DILocation(line: 259, column: 32, scope: !3729)
!3732 = !DILocation(line: 260, column: 5, scope: !3729)
!3733 = !DILocation(line: 262, column: 9, scope: !3734)
!3734 = distinct !DILexicalBlock(scope: !797, file: !782, line: 262, column: 7)
!3735 = !DILocation(line: 262, column: 7, scope: !797)
!3736 = !DILocation(line: 263, column: 9, scope: !3734)
!3737 = !DILocation(line: 263, column: 5, scope: !3734)
!3738 = !DILocation(line: 264, column: 9, scope: !3739)
!3739 = distinct !DILexicalBlock(scope: !797, file: !782, line: 264, column: 7)
!3740 = !DILocation(line: 264, column: 14, scope: !3739)
!3741 = !DILocation(line: 265, column: 7, scope: !3739)
!3742 = !DILocation(line: 265, column: 11, scope: !3739)
!3743 = !DILocation(line: 266, column: 11, scope: !3739)
!3744 = !DILocation(line: 267, column: 14, scope: !3739)
!3745 = !DILocation(line: 264, column: 7, scope: !797)
!3746 = !DILocation(line: 268, column: 5, scope: !3739)
!3747 = !DILocation(line: 0, scope: !3561, inlinedAt: !3748)
!3748 = distinct !DILocation(line: 269, column: 8, scope: !797)
!3749 = !DILocation(line: 0, scope: !3569, inlinedAt: !3750)
!3750 = distinct !DILocation(line: 70, column: 25, scope: !3561, inlinedAt: !3748)
!3751 = !DILocation(line: 2059, column: 24, scope: !3569, inlinedAt: !3750)
!3752 = !DILocation(line: 2059, column: 10, scope: !3569, inlinedAt: !3750)
!3753 = !DILocation(line: 0, scope: !3494, inlinedAt: !3754)
!3754 = distinct !DILocation(line: 70, column: 10, scope: !3561, inlinedAt: !3748)
!3755 = !DILocation(line: 39, column: 8, scope: !3501, inlinedAt: !3754)
!3756 = !DILocation(line: 39, column: 7, scope: !3494, inlinedAt: !3754)
!3757 = !DILocation(line: 40, column: 5, scope: !3501, inlinedAt: !3754)
!3758 = !DILocation(line: 270, column: 7, scope: !797)
!3759 = !DILocation(line: 271, column: 3, scope: !797)
!3760 = distinct !DISubprogram(name: "xzalloc", scope: !782, file: !782, line: 279, type: !3514, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !781, retainedNodes: !3761)
!3761 = !{!3762}
!3762 = !DILocalVariable(name: "s", arg: 1, scope: !3760, file: !782, line: 279, type: !136)
!3763 = !DILocation(line: 0, scope: !3760)
!3764 = !DILocalVariable(name: "n", arg: 1, scope: !3765, file: !782, line: 294, type: !136)
!3765 = distinct !DISubprogram(name: "xcalloc", scope: !782, file: !782, line: 294, type: !3630, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !781, retainedNodes: !3766)
!3766 = !{!3764, !3767}
!3767 = !DILocalVariable(name: "s", arg: 2, scope: !3765, file: !782, line: 294, type: !136)
!3768 = !DILocation(line: 0, scope: !3765, inlinedAt: !3769)
!3769 = distinct !DILocation(line: 281, column: 10, scope: !3760)
!3770 = !DILocation(line: 296, column: 25, scope: !3765, inlinedAt: !3769)
!3771 = !DILocation(line: 0, scope: !3494, inlinedAt: !3772)
!3772 = distinct !DILocation(line: 296, column: 10, scope: !3765, inlinedAt: !3769)
!3773 = !DILocation(line: 39, column: 8, scope: !3501, inlinedAt: !3772)
!3774 = !DILocation(line: 39, column: 7, scope: !3494, inlinedAt: !3772)
!3775 = !DILocation(line: 40, column: 5, scope: !3501, inlinedAt: !3772)
!3776 = !DILocation(line: 281, column: 3, scope: !3760)
!3777 = !DISubprogram(name: "calloc", scope: !1050, file: !1050, line: 543, type: !3630, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !869)
!3778 = !DILocation(line: 0, scope: !3765)
!3779 = !DILocation(line: 296, column: 25, scope: !3765)
!3780 = !DILocation(line: 0, scope: !3494, inlinedAt: !3781)
!3781 = distinct !DILocation(line: 296, column: 10, scope: !3765)
!3782 = !DILocation(line: 39, column: 8, scope: !3501, inlinedAt: !3781)
!3783 = !DILocation(line: 39, column: 7, scope: !3494, inlinedAt: !3781)
!3784 = !DILocation(line: 40, column: 5, scope: !3501, inlinedAt: !3781)
!3785 = !DILocation(line: 296, column: 3, scope: !3765)
!3786 = distinct !DISubprogram(name: "xizalloc", scope: !782, file: !782, line: 285, type: !3528, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !781, retainedNodes: !3787)
!3787 = !{!3788}
!3788 = !DILocalVariable(name: "s", arg: 1, scope: !3786, file: !782, line: 285, type: !801)
!3789 = !DILocation(line: 0, scope: !3786)
!3790 = !DILocalVariable(name: "n", arg: 1, scope: !3791, file: !782, line: 300, type: !801)
!3791 = distinct !DISubprogram(name: "xicalloc", scope: !782, file: !782, line: 300, type: !3646, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !781, retainedNodes: !3792)
!3792 = !{!3790, !3793}
!3793 = !DILocalVariable(name: "s", arg: 2, scope: !3791, file: !782, line: 300, type: !801)
!3794 = !DILocation(line: 0, scope: !3791, inlinedAt: !3795)
!3795 = distinct !DILocation(line: 287, column: 10, scope: !3786)
!3796 = !DILocalVariable(name: "n", arg: 1, scope: !3797, file: !3535, line: 77, type: !801)
!3797 = distinct !DISubprogram(name: "icalloc", scope: !3535, file: !3535, line: 77, type: !3646, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !781, retainedNodes: !3798)
!3798 = !{!3796, !3799}
!3799 = !DILocalVariable(name: "s", arg: 2, scope: !3797, file: !3535, line: 77, type: !801)
!3800 = !DILocation(line: 0, scope: !3797, inlinedAt: !3801)
!3801 = distinct !DILocation(line: 302, column: 25, scope: !3791, inlinedAt: !3795)
!3802 = !DILocation(line: 91, column: 10, scope: !3797, inlinedAt: !3801)
!3803 = !DILocation(line: 0, scope: !3494, inlinedAt: !3804)
!3804 = distinct !DILocation(line: 302, column: 10, scope: !3791, inlinedAt: !3795)
!3805 = !DILocation(line: 39, column: 8, scope: !3501, inlinedAt: !3804)
!3806 = !DILocation(line: 39, column: 7, scope: !3494, inlinedAt: !3804)
!3807 = !DILocation(line: 40, column: 5, scope: !3501, inlinedAt: !3804)
!3808 = !DILocation(line: 287, column: 3, scope: !3786)
!3809 = !DILocation(line: 0, scope: !3791)
!3810 = !DILocation(line: 0, scope: !3797, inlinedAt: !3811)
!3811 = distinct !DILocation(line: 302, column: 25, scope: !3791)
!3812 = !DILocation(line: 91, column: 10, scope: !3797, inlinedAt: !3811)
!3813 = !DILocation(line: 0, scope: !3494, inlinedAt: !3814)
!3814 = distinct !DILocation(line: 302, column: 10, scope: !3791)
!3815 = !DILocation(line: 39, column: 8, scope: !3501, inlinedAt: !3814)
!3816 = !DILocation(line: 39, column: 7, scope: !3494, inlinedAt: !3814)
!3817 = !DILocation(line: 40, column: 5, scope: !3501, inlinedAt: !3814)
!3818 = !DILocation(line: 302, column: 3, scope: !3791)
!3819 = distinct !DISubprogram(name: "xmemdup", scope: !782, file: !782, line: 310, type: !3820, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !781, retainedNodes: !3822)
!3820 = !DISubroutineType(types: !3821)
!3821 = !{!129, !1074, !136}
!3822 = !{!3823, !3824}
!3823 = !DILocalVariable(name: "p", arg: 1, scope: !3819, file: !782, line: 310, type: !1074)
!3824 = !DILocalVariable(name: "s", arg: 2, scope: !3819, file: !782, line: 310, type: !136)
!3825 = !DILocation(line: 0, scope: !3819)
!3826 = !DILocation(line: 0, scope: !3513, inlinedAt: !3827)
!3827 = distinct !DILocation(line: 312, column: 18, scope: !3819)
!3828 = !DILocation(line: 49, column: 25, scope: !3513, inlinedAt: !3827)
!3829 = !DILocation(line: 0, scope: !3494, inlinedAt: !3830)
!3830 = distinct !DILocation(line: 49, column: 10, scope: !3513, inlinedAt: !3827)
!3831 = !DILocation(line: 39, column: 8, scope: !3501, inlinedAt: !3830)
!3832 = !DILocation(line: 39, column: 7, scope: !3494, inlinedAt: !3830)
!3833 = !DILocation(line: 40, column: 5, scope: !3501, inlinedAt: !3830)
!3834 = !DILocalVariable(name: "__dest", arg: 1, scope: !3835, file: !2008, line: 26, type: !3838)
!3835 = distinct !DISubprogram(name: "memcpy", scope: !2008, file: !2008, line: 26, type: !3836, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !781, retainedNodes: !3839)
!3836 = !DISubroutineType(types: !3837)
!3837 = !{!129, !3838, !1073, !136}
!3838 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !129)
!3839 = !{!3834, !3840, !3841}
!3840 = !DILocalVariable(name: "__src", arg: 2, scope: !3835, file: !2008, line: 26, type: !1073)
!3841 = !DILocalVariable(name: "__len", arg: 3, scope: !3835, file: !2008, line: 26, type: !136)
!3842 = !DILocation(line: 0, scope: !3835, inlinedAt: !3843)
!3843 = distinct !DILocation(line: 312, column: 10, scope: !3819)
!3844 = !DILocation(line: 29, column: 10, scope: !3835, inlinedAt: !3843)
!3845 = !DILocation(line: 312, column: 3, scope: !3819)
!3846 = distinct !DISubprogram(name: "ximemdup", scope: !782, file: !782, line: 316, type: !3847, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !781, retainedNodes: !3849)
!3847 = !DISubroutineType(types: !3848)
!3848 = !{!129, !1074, !801}
!3849 = !{!3850, !3851}
!3850 = !DILocalVariable(name: "p", arg: 1, scope: !3846, file: !782, line: 316, type: !1074)
!3851 = !DILocalVariable(name: "s", arg: 2, scope: !3846, file: !782, line: 316, type: !801)
!3852 = !DILocation(line: 0, scope: !3846)
!3853 = !DILocation(line: 0, scope: !3527, inlinedAt: !3854)
!3854 = distinct !DILocation(line: 318, column: 18, scope: !3846)
!3855 = !DILocation(line: 0, scope: !3534, inlinedAt: !3856)
!3856 = distinct !DILocation(line: 55, column: 25, scope: !3527, inlinedAt: !3854)
!3857 = !DILocation(line: 57, column: 26, scope: !3534, inlinedAt: !3856)
!3858 = !DILocation(line: 0, scope: !3494, inlinedAt: !3859)
!3859 = distinct !DILocation(line: 55, column: 10, scope: !3527, inlinedAt: !3854)
!3860 = !DILocation(line: 39, column: 8, scope: !3501, inlinedAt: !3859)
!3861 = !DILocation(line: 39, column: 7, scope: !3494, inlinedAt: !3859)
!3862 = !DILocation(line: 40, column: 5, scope: !3501, inlinedAt: !3859)
!3863 = !DILocation(line: 0, scope: !3835, inlinedAt: !3864)
!3864 = distinct !DILocation(line: 318, column: 10, scope: !3846)
!3865 = !DILocation(line: 29, column: 10, scope: !3835, inlinedAt: !3864)
!3866 = !DILocation(line: 318, column: 3, scope: !3846)
!3867 = distinct !DISubprogram(name: "ximemdup0", scope: !782, file: !782, line: 325, type: !3868, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !781, retainedNodes: !3870)
!3868 = !DISubroutineType(types: !3869)
!3869 = !{!128, !1074, !801}
!3870 = !{!3871, !3872, !3873}
!3871 = !DILocalVariable(name: "p", arg: 1, scope: !3867, file: !782, line: 325, type: !1074)
!3872 = !DILocalVariable(name: "s", arg: 2, scope: !3867, file: !782, line: 325, type: !801)
!3873 = !DILocalVariable(name: "result", scope: !3867, file: !782, line: 327, type: !128)
!3874 = !DILocation(line: 0, scope: !3867)
!3875 = !DILocation(line: 327, column: 30, scope: !3867)
!3876 = !DILocation(line: 0, scope: !3527, inlinedAt: !3877)
!3877 = distinct !DILocation(line: 327, column: 18, scope: !3867)
!3878 = !DILocation(line: 0, scope: !3534, inlinedAt: !3879)
!3879 = distinct !DILocation(line: 55, column: 25, scope: !3527, inlinedAt: !3877)
!3880 = !DILocation(line: 57, column: 26, scope: !3534, inlinedAt: !3879)
!3881 = !DILocation(line: 0, scope: !3494, inlinedAt: !3882)
!3882 = distinct !DILocation(line: 55, column: 10, scope: !3527, inlinedAt: !3877)
!3883 = !DILocation(line: 39, column: 8, scope: !3501, inlinedAt: !3882)
!3884 = !DILocation(line: 39, column: 7, scope: !3494, inlinedAt: !3882)
!3885 = !DILocation(line: 40, column: 5, scope: !3501, inlinedAt: !3882)
!3886 = !DILocation(line: 328, column: 3, scope: !3867)
!3887 = !DILocation(line: 328, column: 13, scope: !3867)
!3888 = !DILocation(line: 0, scope: !3835, inlinedAt: !3889)
!3889 = distinct !DILocation(line: 329, column: 10, scope: !3867)
!3890 = !DILocation(line: 29, column: 10, scope: !3835, inlinedAt: !3889)
!3891 = !DILocation(line: 329, column: 3, scope: !3867)
!3892 = distinct !DISubprogram(name: "xstrdup", scope: !782, file: !782, line: 335, type: !1052, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !781, retainedNodes: !3893)
!3893 = !{!3894}
!3894 = !DILocalVariable(name: "string", arg: 1, scope: !3892, file: !782, line: 335, type: !138)
!3895 = !DILocation(line: 0, scope: !3892)
!3896 = !DILocation(line: 337, column: 27, scope: !3892)
!3897 = !DILocation(line: 337, column: 43, scope: !3892)
!3898 = !DILocation(line: 0, scope: !3819, inlinedAt: !3899)
!3899 = distinct !DILocation(line: 337, column: 10, scope: !3892)
!3900 = !DILocation(line: 0, scope: !3513, inlinedAt: !3901)
!3901 = distinct !DILocation(line: 312, column: 18, scope: !3819, inlinedAt: !3899)
!3902 = !DILocation(line: 49, column: 25, scope: !3513, inlinedAt: !3901)
!3903 = !DILocation(line: 0, scope: !3494, inlinedAt: !3904)
!3904 = distinct !DILocation(line: 49, column: 10, scope: !3513, inlinedAt: !3901)
!3905 = !DILocation(line: 39, column: 8, scope: !3501, inlinedAt: !3904)
!3906 = !DILocation(line: 39, column: 7, scope: !3494, inlinedAt: !3904)
!3907 = !DILocation(line: 40, column: 5, scope: !3501, inlinedAt: !3904)
!3908 = !DILocation(line: 0, scope: !3835, inlinedAt: !3909)
!3909 = distinct !DILocation(line: 312, column: 10, scope: !3819, inlinedAt: !3899)
!3910 = !DILocation(line: 29, column: 10, scope: !3835, inlinedAt: !3909)
!3911 = !DILocation(line: 337, column: 3, scope: !3892)
!3912 = distinct !DISubprogram(name: "xalloc_die", scope: !731, file: !731, line: 32, type: !502, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !3913)
!3913 = !{!3914}
!3914 = !DILocalVariable(name: "__errstatus", scope: !3915, file: !731, line: 34, type: !3916)
!3915 = distinct !DILexicalBlock(scope: !3912, file: !731, line: 34, column: 3)
!3916 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!3917 = !DILocation(line: 34, column: 3, scope: !3915)
!3918 = !DILocation(line: 0, scope: !3915)
!3919 = !DILocation(line: 40, column: 3, scope: !3912)
!3920 = distinct !DISubprogram(name: "xstrtoumax", scope: !3921, file: !3921, line: 71, type: !3922, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !817, retainedNodes: !3926)
!3921 = !DIFile(filename: "./lib/xstrtol.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a1112be551b7ea11a9f6293a4923a73")
!3922 = !DISubroutineType(types: !3923)
!3923 = !{!3924, !138, !1079, !85, !3925, !138}
!3924 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !90, line: 43, baseType: !89)
!3925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!3926 = !{!3927, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3937, !3938, !3939, !3940, !3943, !3944}
!3927 = !DILocalVariable(name: "nptr", arg: 1, scope: !3920, file: !3921, line: 71, type: !138)
!3928 = !DILocalVariable(name: "endptr", arg: 2, scope: !3920, file: !3921, line: 71, type: !1079)
!3929 = !DILocalVariable(name: "base", arg: 3, scope: !3920, file: !3921, line: 71, type: !85)
!3930 = !DILocalVariable(name: "val", arg: 4, scope: !3920, file: !3921, line: 72, type: !3925)
!3931 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !3920, file: !3921, line: 72, type: !138)
!3932 = !DILocalVariable(name: "t_ptr", scope: !3920, file: !3921, line: 74, type: !128)
!3933 = !DILocalVariable(name: "p", scope: !3920, file: !3921, line: 75, type: !1079)
!3934 = !DILocalVariable(name: "q", scope: !3935, file: !3921, line: 79, type: !138)
!3935 = distinct !DILexicalBlock(scope: !3936, file: !3921, line: 78, column: 5)
!3936 = distinct !DILexicalBlock(scope: !3920, file: !3921, line: 77, column: 7)
!3937 = !DILocalVariable(name: "ch", scope: !3935, file: !3921, line: 80, type: !140)
!3938 = !DILocalVariable(name: "tmp", scope: !3920, file: !3921, line: 91, type: !821)
!3939 = !DILocalVariable(name: "err", scope: !3920, file: !3921, line: 92, type: !3924)
!3940 = !DILocalVariable(name: "xbase", scope: !3941, file: !3921, line: 126, type: !85)
!3941 = distinct !DILexicalBlock(scope: !3942, file: !3921, line: 119, column: 5)
!3942 = distinct !DILexicalBlock(scope: !3920, file: !3921, line: 118, column: 7)
!3943 = !DILocalVariable(name: "suffixes", scope: !3941, file: !3921, line: 127, type: !85)
!3944 = !DILocalVariable(name: "overflow", scope: !3941, file: !3921, line: 156, type: !3924)
!3945 = !DILocation(line: 0, scope: !3920)
!3946 = !DILocation(line: 74, column: 3, scope: !3920)
!3947 = !DILocation(line: 75, column: 14, scope: !3920)
!3948 = !DILocation(line: 0, scope: !3935)
!3949 = !DILocation(line: 81, column: 7, scope: !3935)
!3950 = !DILocation(line: 81, column: 14, scope: !3935)
!3951 = !DILocation(line: 82, column: 15, scope: !3935)
!3952 = distinct !{!3952, !3949, !3953, !976}
!3953 = !DILocation(line: 82, column: 17, scope: !3935)
!3954 = !DILocation(line: 83, column: 14, scope: !3955)
!3955 = distinct !DILexicalBlock(scope: !3935, file: !3921, line: 83, column: 11)
!3956 = !DILocation(line: 83, column: 11, scope: !3935)
!3957 = !DILocation(line: 85, column: 14, scope: !3958)
!3958 = distinct !DILexicalBlock(scope: !3955, file: !3921, line: 84, column: 9)
!3959 = !DILocation(line: 90, column: 3, scope: !3920)
!3960 = !DILocation(line: 90, column: 9, scope: !3920)
!3961 = !DILocation(line: 91, column: 20, scope: !3920)
!3962 = !DILocation(line: 94, column: 7, scope: !3963)
!3963 = distinct !DILexicalBlock(scope: !3920, file: !3921, line: 94, column: 7)
!3964 = !DILocation(line: 94, column: 10, scope: !3963)
!3965 = !DILocation(line: 94, column: 7, scope: !3920)
!3966 = !DILocation(line: 98, column: 14, scope: !3967)
!3967 = distinct !DILexicalBlock(scope: !3968, file: !3921, line: 98, column: 11)
!3968 = distinct !DILexicalBlock(scope: !3963, file: !3921, line: 95, column: 5)
!3969 = !DILocation(line: 98, column: 29, scope: !3967)
!3970 = !DILocation(line: 98, column: 32, scope: !3967)
!3971 = !DILocation(line: 98, column: 38, scope: !3967)
!3972 = !DILocation(line: 98, column: 41, scope: !3967)
!3973 = !DILocation(line: 98, column: 11, scope: !3968)
!3974 = !DILocation(line: 102, column: 12, scope: !3975)
!3975 = distinct !DILexicalBlock(scope: !3963, file: !3921, line: 102, column: 12)
!3976 = !DILocation(line: 102, column: 12, scope: !3963)
!3977 = !DILocation(line: 107, column: 5, scope: !3978)
!3978 = distinct !DILexicalBlock(scope: !3975, file: !3921, line: 103, column: 5)
!3979 = !DILocation(line: 112, column: 8, scope: !3980)
!3980 = distinct !DILexicalBlock(scope: !3920, file: !3921, line: 112, column: 7)
!3981 = !DILocation(line: 112, column: 7, scope: !3920)
!3982 = !DILocation(line: 114, column: 12, scope: !3983)
!3983 = distinct !DILexicalBlock(scope: !3980, file: !3921, line: 113, column: 5)
!3984 = !DILocation(line: 115, column: 7, scope: !3983)
!3985 = !DILocation(line: 118, column: 7, scope: !3942)
!3986 = !DILocation(line: 118, column: 11, scope: !3942)
!3987 = !DILocation(line: 118, column: 7, scope: !3920)
!3988 = !DILocation(line: 120, column: 12, scope: !3989)
!3989 = distinct !DILexicalBlock(scope: !3941, file: !3921, line: 120, column: 11)
!3990 = !DILocation(line: 120, column: 11, scope: !3941)
!3991 = !DILocation(line: 122, column: 16, scope: !3992)
!3992 = distinct !DILexicalBlock(scope: !3989, file: !3921, line: 121, column: 9)
!3993 = !DILocation(line: 123, column: 22, scope: !3992)
!3994 = !DILocation(line: 123, column: 11, scope: !3992)
!3995 = !DILocation(line: 0, scope: !3941)
!3996 = !DILocation(line: 128, column: 7, scope: !3941)
!3997 = !DILocation(line: 140, column: 15, scope: !3998)
!3998 = distinct !DILexicalBlock(scope: !3999, file: !3921, line: 140, column: 15)
!3999 = distinct !DILexicalBlock(scope: !3941, file: !3921, line: 129, column: 9)
!4000 = !DILocation(line: 140, column: 15, scope: !3999)
!4001 = !DILocation(line: 141, column: 21, scope: !3998)
!4002 = !DILocation(line: 141, column: 13, scope: !3998)
!4003 = !DILocation(line: 144, column: 21, scope: !4004)
!4004 = distinct !DILexicalBlock(scope: !4005, file: !3921, line: 144, column: 21)
!4005 = distinct !DILexicalBlock(scope: !3998, file: !3921, line: 142, column: 15)
!4006 = !DILocation(line: 144, column: 29, scope: !4004)
!4007 = !DILocation(line: 144, column: 21, scope: !4005)
!4008 = !DILocation(line: 152, column: 17, scope: !4005)
!4009 = !DILocation(line: 157, column: 7, scope: !3941)
!4010 = !DILocalVariable(name: "err", scope: !4011, file: !3921, line: 64, type: !3924)
!4011 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !3921, file: !3921, line: 62, type: !4012, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !817, retainedNodes: !4014)
!4012 = !DISubroutineType(types: !4013)
!4013 = !{!3924, !3925, !85, !85}
!4014 = !{!4015, !4016, !4017, !4010}
!4015 = !DILocalVariable(name: "x", arg: 1, scope: !4011, file: !3921, line: 62, type: !3925)
!4016 = !DILocalVariable(name: "base", arg: 2, scope: !4011, file: !3921, line: 62, type: !85)
!4017 = !DILocalVariable(name: "power", arg: 3, scope: !4011, file: !3921, line: 62, type: !85)
!4018 = !DILocation(line: 0, scope: !4011, inlinedAt: !4019)
!4019 = distinct !DILocation(line: 219, column: 22, scope: !4020)
!4020 = distinct !DILexicalBlock(scope: !3941, file: !3921, line: 158, column: 9)
!4021 = !DILocalVariable(name: "x", arg: 1, scope: !4022, file: !3921, line: 47, type: !3925)
!4022 = distinct !DISubprogram(name: "bkm_scale", scope: !3921, file: !3921, line: 47, type: !4023, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !817, retainedNodes: !4025)
!4023 = !DISubroutineType(types: !4024)
!4024 = !{!3924, !3925, !85}
!4025 = !{!4021, !4026, !4027}
!4026 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !4022, file: !3921, line: 47, type: !85)
!4027 = !DILocalVariable(name: "scaled", scope: !4022, file: !3921, line: 49, type: !821)
!4028 = !DILocation(line: 0, scope: !4022, inlinedAt: !4029)
!4029 = distinct !DILocation(line: 66, column: 12, scope: !4011, inlinedAt: !4019)
!4030 = !DILocation(line: 50, column: 7, scope: !4031, inlinedAt: !4029)
!4031 = distinct !DILexicalBlock(scope: !4022, file: !3921, line: 50, column: 7)
!4032 = !DILocation(line: 66, column: 9, scope: !4011, inlinedAt: !4019)
!4033 = !DILocation(line: 227, column: 11, scope: !3941)
!4034 = !DILocation(line: 0, scope: !4011, inlinedAt: !4035)
!4035 = distinct !DILocation(line: 215, column: 22, scope: !4020)
!4036 = !DILocation(line: 0, scope: !4022, inlinedAt: !4037)
!4037 = distinct !DILocation(line: 66, column: 12, scope: !4011, inlinedAt: !4035)
!4038 = !DILocation(line: 50, column: 7, scope: !4031, inlinedAt: !4037)
!4039 = !DILocation(line: 66, column: 9, scope: !4011, inlinedAt: !4035)
!4040 = !DILocation(line: 0, scope: !4011, inlinedAt: !4041)
!4041 = distinct !DILocation(line: 202, column: 22, scope: !4020)
!4042 = !DILocation(line: 0, scope: !4022, inlinedAt: !4043)
!4043 = distinct !DILocation(line: 66, column: 12, scope: !4011, inlinedAt: !4041)
!4044 = !DILocation(line: 50, column: 7, scope: !4031, inlinedAt: !4043)
!4045 = !DILocation(line: 66, column: 9, scope: !4011, inlinedAt: !4041)
!4046 = !DILocation(line: 0, scope: !4011, inlinedAt: !4047)
!4047 = distinct !DILocation(line: 198, column: 22, scope: !4020)
!4048 = !DILocation(line: 0, scope: !4022, inlinedAt: !4049)
!4049 = distinct !DILocation(line: 66, column: 12, scope: !4011, inlinedAt: !4047)
!4050 = !DILocation(line: 50, column: 7, scope: !4031, inlinedAt: !4049)
!4051 = !DILocation(line: 66, column: 9, scope: !4011, inlinedAt: !4047)
!4052 = !DILocation(line: 0, scope: !4011, inlinedAt: !4053)
!4053 = distinct !DILocation(line: 194, column: 22, scope: !4020)
!4054 = !DILocation(line: 0, scope: !4022, inlinedAt: !4055)
!4055 = distinct !DILocation(line: 66, column: 12, scope: !4011, inlinedAt: !4053)
!4056 = !DILocation(line: 50, column: 7, scope: !4031, inlinedAt: !4055)
!4057 = !DILocation(line: 66, column: 9, scope: !4011, inlinedAt: !4053)
!4058 = !DILocation(line: 0, scope: !4011, inlinedAt: !4059)
!4059 = distinct !DILocation(line: 175, column: 22, scope: !4020)
!4060 = !DILocation(line: 0, scope: !4022, inlinedAt: !4061)
!4061 = distinct !DILocation(line: 66, column: 12, scope: !4011, inlinedAt: !4059)
!4062 = !DILocation(line: 50, column: 7, scope: !4031, inlinedAt: !4061)
!4063 = !DILocation(line: 66, column: 9, scope: !4011, inlinedAt: !4059)
!4064 = !DILocation(line: 0, scope: !4022, inlinedAt: !4065)
!4065 = distinct !DILocation(line: 160, column: 22, scope: !4020)
!4066 = !DILocation(line: 50, column: 7, scope: !4031, inlinedAt: !4065)
!4067 = !DILocation(line: 161, column: 11, scope: !4020)
!4068 = !DILocation(line: 0, scope: !4022, inlinedAt: !4069)
!4069 = distinct !DILocation(line: 167, column: 22, scope: !4020)
!4070 = !DILocation(line: 50, column: 7, scope: !4031, inlinedAt: !4069)
!4071 = !DILocation(line: 168, column: 11, scope: !4020)
!4072 = !DILocation(line: 0, scope: !4011, inlinedAt: !4073)
!4073 = distinct !DILocation(line: 180, column: 22, scope: !4020)
!4074 = !DILocation(line: 0, scope: !4022, inlinedAt: !4075)
!4075 = distinct !DILocation(line: 66, column: 12, scope: !4011, inlinedAt: !4073)
!4076 = !DILocation(line: 50, column: 7, scope: !4031, inlinedAt: !4075)
!4077 = !DILocation(line: 66, column: 9, scope: !4011, inlinedAt: !4073)
!4078 = !DILocation(line: 0, scope: !4011, inlinedAt: !4079)
!4079 = distinct !DILocation(line: 185, column: 22, scope: !4020)
!4080 = !DILocation(line: 50, column: 7, scope: !4031, inlinedAt: !4081)
!4081 = distinct !DILocation(line: 66, column: 12, scope: !4011, inlinedAt: !4079)
!4082 = !DILocation(line: 0, scope: !4022, inlinedAt: !4081)
!4083 = !DILocation(line: 0, scope: !4011, inlinedAt: !4084)
!4084 = distinct !DILocation(line: 190, column: 22, scope: !4020)
!4085 = !DILocation(line: 0, scope: !4022, inlinedAt: !4086)
!4086 = distinct !DILocation(line: 66, column: 12, scope: !4011, inlinedAt: !4084)
!4087 = !DILocation(line: 50, column: 7, scope: !4031, inlinedAt: !4086)
!4088 = !DILocation(line: 66, column: 9, scope: !4011, inlinedAt: !4084)
!4089 = !DILocation(line: 0, scope: !4011, inlinedAt: !4090)
!4090 = distinct !DILocation(line: 207, column: 22, scope: !4020)
!4091 = !DILocation(line: 0, scope: !4022, inlinedAt: !4092)
!4092 = distinct !DILocation(line: 66, column: 12, scope: !4011, inlinedAt: !4090)
!4093 = !DILocation(line: 50, column: 7, scope: !4031, inlinedAt: !4092)
!4094 = !DILocation(line: 66, column: 9, scope: !4011, inlinedAt: !4090)
!4095 = !DILocation(line: 0, scope: !4022, inlinedAt: !4096)
!4096 = distinct !DILocation(line: 211, column: 22, scope: !4020)
!4097 = !DILocation(line: 50, column: 7, scope: !4031, inlinedAt: !4096)
!4098 = !DILocation(line: 212, column: 11, scope: !4020)
!4099 = !DILocation(line: 0, scope: !4020)
!4100 = !DILocation(line: 228, column: 10, scope: !3941)
!4101 = !DILocation(line: 229, column: 11, scope: !4102)
!4102 = distinct !DILexicalBlock(scope: !3941, file: !3921, line: 229, column: 11)
!4103 = !DILocation(line: 229, column: 11, scope: !3941)
!4104 = !DILocation(line: 223, column: 16, scope: !4020)
!4105 = !DILocation(line: 224, column: 22, scope: !4020)
!4106 = !DILocation(line: 100, column: 11, scope: !3968)
!4107 = !DILocation(line: 92, column: 16, scope: !3920)
!4108 = !DILocation(line: 233, column: 8, scope: !3920)
!4109 = !DILocation(line: 234, column: 3, scope: !3920)
!4110 = !DILocation(line: 235, column: 1, scope: !3920)
!4111 = !DISubprogram(name: "strtoumax", scope: !4112, file: !4112, line: 301, type: !4113, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !869)
!4112 = !DIFile(filename: "/usr/include/inttypes.h", directory: "", checksumkind: CSK_MD5, checksum: "e498a0d76716f3e3909f4b6f2cb2f20f")
!4113 = !DISubroutineType(types: !4114)
!4114 = !{!821, !920, !4115, !85}
!4115 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1079)
!4116 = distinct !DISubprogram(name: "close_stream", scope: !825, file: !825, line: 55, type: !4117, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !824, retainedNodes: !4153)
!4117 = !DISubroutineType(types: !4118)
!4118 = !{!85, !4119}
!4119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4120, size: 64)
!4120 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !249, line: 7, baseType: !4121)
!4121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !251, line: 49, size: 1728, elements: !4122)
!4122 = !{!4123, !4124, !4125, !4126, !4127, !4128, !4129, !4130, !4131, !4132, !4133, !4134, !4135, !4136, !4138, !4139, !4140, !4141, !4142, !4143, !4144, !4145, !4146, !4147, !4148, !4149, !4150, !4151, !4152}
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4121, file: !251, line: 51, baseType: !85, size: 32)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4121, file: !251, line: 54, baseType: !128, size: 64, offset: 64)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4121, file: !251, line: 55, baseType: !128, size: 64, offset: 128)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4121, file: !251, line: 56, baseType: !128, size: 64, offset: 192)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4121, file: !251, line: 57, baseType: !128, size: 64, offset: 256)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4121, file: !251, line: 58, baseType: !128, size: 64, offset: 320)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4121, file: !251, line: 59, baseType: !128, size: 64, offset: 384)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4121, file: !251, line: 60, baseType: !128, size: 64, offset: 448)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4121, file: !251, line: 61, baseType: !128, size: 64, offset: 512)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4121, file: !251, line: 64, baseType: !128, size: 64, offset: 576)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4121, file: !251, line: 65, baseType: !128, size: 64, offset: 640)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4121, file: !251, line: 66, baseType: !128, size: 64, offset: 704)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4121, file: !251, line: 68, baseType: !266, size: 64, offset: 768)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4121, file: !251, line: 70, baseType: !4137, size: 64, offset: 832)
!4137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4121, size: 64)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4121, file: !251, line: 72, baseType: !85, size: 32, offset: 896)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4121, file: !251, line: 73, baseType: !85, size: 32, offset: 928)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4121, file: !251, line: 74, baseType: !273, size: 64, offset: 960)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4121, file: !251, line: 77, baseType: !135, size: 16, offset: 1024)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4121, file: !251, line: 78, baseType: !277, size: 8, offset: 1040)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4121, file: !251, line: 79, baseType: !61, size: 8, offset: 1048)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4121, file: !251, line: 81, baseType: !280, size: 64, offset: 1088)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4121, file: !251, line: 89, baseType: !283, size: 64, offset: 1152)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4121, file: !251, line: 91, baseType: !285, size: 64, offset: 1216)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4121, file: !251, line: 92, baseType: !288, size: 64, offset: 1280)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4121, file: !251, line: 93, baseType: !4137, size: 64, offset: 1344)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4121, file: !251, line: 94, baseType: !129, size: 64, offset: 1408)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4121, file: !251, line: 95, baseType: !136, size: 64, offset: 1472)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4121, file: !251, line: 96, baseType: !85, size: 32, offset: 1536)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4121, file: !251, line: 98, baseType: !295, size: 160, offset: 1568)
!4153 = !{!4154, !4155, !4157, !4158}
!4154 = !DILocalVariable(name: "stream", arg: 1, scope: !4116, file: !825, line: 55, type: !4119)
!4155 = !DILocalVariable(name: "some_pending", scope: !4116, file: !825, line: 57, type: !4156)
!4156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !234)
!4157 = !DILocalVariable(name: "prev_fail", scope: !4116, file: !825, line: 58, type: !4156)
!4158 = !DILocalVariable(name: "fclose_fail", scope: !4116, file: !825, line: 59, type: !4156)
!4159 = !DILocation(line: 0, scope: !4116)
!4160 = !DILocation(line: 57, column: 30, scope: !4116)
!4161 = !DILocalVariable(name: "__stream", arg: 1, scope: !4162, file: !1470, line: 135, type: !4119)
!4162 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1470, file: !1470, line: 135, type: !4117, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !824, retainedNodes: !4163)
!4163 = !{!4161}
!4164 = !DILocation(line: 0, scope: !4162, inlinedAt: !4165)
!4165 = distinct !DILocation(line: 58, column: 27, scope: !4116)
!4166 = !DILocation(line: 137, column: 10, scope: !4162, inlinedAt: !4165)
!4167 = !{!1479, !930, i64 0}
!4168 = !DILocation(line: 58, column: 43, scope: !4116)
!4169 = !DILocation(line: 59, column: 29, scope: !4116)
!4170 = !DILocation(line: 59, column: 45, scope: !4116)
!4171 = !DILocation(line: 69, column: 17, scope: !4172)
!4172 = distinct !DILexicalBlock(scope: !4116, file: !825, line: 69, column: 7)
!4173 = !DILocation(line: 57, column: 50, scope: !4116)
!4174 = !DILocation(line: 69, column: 33, scope: !4172)
!4175 = !DILocation(line: 69, column: 53, scope: !4172)
!4176 = !DILocation(line: 69, column: 59, scope: !4172)
!4177 = !DILocation(line: 69, column: 7, scope: !4116)
!4178 = !DILocation(line: 71, column: 11, scope: !4179)
!4179 = distinct !DILexicalBlock(scope: !4172, file: !825, line: 70, column: 5)
!4180 = !DILocation(line: 72, column: 9, scope: !4181)
!4181 = distinct !DILexicalBlock(scope: !4179, file: !825, line: 71, column: 11)
!4182 = !DILocation(line: 72, column: 15, scope: !4181)
!4183 = !DILocation(line: 77, column: 1, scope: !4116)
!4184 = !DISubprogram(name: "__fpending", scope: !4185, file: !4185, line: 75, type: !4186, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !869)
!4185 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!4186 = !DISubroutineType(types: !4187)
!4187 = !{!136, !4119}
!4188 = distinct !DISubprogram(name: "rpl_fclose", scope: !827, file: !827, line: 58, type: !4189, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !4225)
!4189 = !DISubroutineType(types: !4190)
!4190 = !{!85, !4191}
!4191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4192, size: 64)
!4192 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !249, line: 7, baseType: !4193)
!4193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !251, line: 49, size: 1728, elements: !4194)
!4194 = !{!4195, !4196, !4197, !4198, !4199, !4200, !4201, !4202, !4203, !4204, !4205, !4206, !4207, !4208, !4210, !4211, !4212, !4213, !4214, !4215, !4216, !4217, !4218, !4219, !4220, !4221, !4222, !4223, !4224}
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4193, file: !251, line: 51, baseType: !85, size: 32)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4193, file: !251, line: 54, baseType: !128, size: 64, offset: 64)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4193, file: !251, line: 55, baseType: !128, size: 64, offset: 128)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4193, file: !251, line: 56, baseType: !128, size: 64, offset: 192)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4193, file: !251, line: 57, baseType: !128, size: 64, offset: 256)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4193, file: !251, line: 58, baseType: !128, size: 64, offset: 320)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4193, file: !251, line: 59, baseType: !128, size: 64, offset: 384)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4193, file: !251, line: 60, baseType: !128, size: 64, offset: 448)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4193, file: !251, line: 61, baseType: !128, size: 64, offset: 512)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4193, file: !251, line: 64, baseType: !128, size: 64, offset: 576)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4193, file: !251, line: 65, baseType: !128, size: 64, offset: 640)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4193, file: !251, line: 66, baseType: !128, size: 64, offset: 704)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4193, file: !251, line: 68, baseType: !266, size: 64, offset: 768)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4193, file: !251, line: 70, baseType: !4209, size: 64, offset: 832)
!4209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4193, size: 64)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4193, file: !251, line: 72, baseType: !85, size: 32, offset: 896)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4193, file: !251, line: 73, baseType: !85, size: 32, offset: 928)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4193, file: !251, line: 74, baseType: !273, size: 64, offset: 960)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4193, file: !251, line: 77, baseType: !135, size: 16, offset: 1024)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4193, file: !251, line: 78, baseType: !277, size: 8, offset: 1040)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4193, file: !251, line: 79, baseType: !61, size: 8, offset: 1048)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4193, file: !251, line: 81, baseType: !280, size: 64, offset: 1088)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4193, file: !251, line: 89, baseType: !283, size: 64, offset: 1152)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4193, file: !251, line: 91, baseType: !285, size: 64, offset: 1216)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4193, file: !251, line: 92, baseType: !288, size: 64, offset: 1280)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4193, file: !251, line: 93, baseType: !4209, size: 64, offset: 1344)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4193, file: !251, line: 94, baseType: !129, size: 64, offset: 1408)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4193, file: !251, line: 95, baseType: !136, size: 64, offset: 1472)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4193, file: !251, line: 96, baseType: !85, size: 32, offset: 1536)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4193, file: !251, line: 98, baseType: !295, size: 160, offset: 1568)
!4225 = !{!4226, !4227, !4228, !4229}
!4226 = !DILocalVariable(name: "fp", arg: 1, scope: !4188, file: !827, line: 58, type: !4191)
!4227 = !DILocalVariable(name: "saved_errno", scope: !4188, file: !827, line: 60, type: !85)
!4228 = !DILocalVariable(name: "fd", scope: !4188, file: !827, line: 63, type: !85)
!4229 = !DILocalVariable(name: "result", scope: !4188, file: !827, line: 74, type: !85)
!4230 = !DILocation(line: 0, scope: !4188)
!4231 = !DILocation(line: 63, column: 12, scope: !4188)
!4232 = !DILocation(line: 64, column: 10, scope: !4233)
!4233 = distinct !DILexicalBlock(scope: !4188, file: !827, line: 64, column: 7)
!4234 = !DILocation(line: 64, column: 7, scope: !4188)
!4235 = !DILocation(line: 65, column: 12, scope: !4233)
!4236 = !DILocation(line: 65, column: 5, scope: !4233)
!4237 = !DILocation(line: 70, column: 9, scope: !4238)
!4238 = distinct !DILexicalBlock(scope: !4188, file: !827, line: 70, column: 7)
!4239 = !DILocation(line: 70, column: 23, scope: !4238)
!4240 = !DILocation(line: 70, column: 33, scope: !4238)
!4241 = !DILocation(line: 70, column: 26, scope: !4238)
!4242 = !DILocation(line: 70, column: 59, scope: !4238)
!4243 = !DILocation(line: 71, column: 7, scope: !4238)
!4244 = !DILocation(line: 71, column: 10, scope: !4238)
!4245 = !DILocation(line: 70, column: 7, scope: !4188)
!4246 = !DILocation(line: 100, column: 12, scope: !4188)
!4247 = !DILocation(line: 105, column: 7, scope: !4188)
!4248 = !DILocation(line: 72, column: 19, scope: !4238)
!4249 = !DILocation(line: 105, column: 19, scope: !4250)
!4250 = distinct !DILexicalBlock(scope: !4188, file: !827, line: 105, column: 7)
!4251 = !DILocation(line: 107, column: 13, scope: !4252)
!4252 = distinct !DILexicalBlock(scope: !4250, file: !827, line: 106, column: 5)
!4253 = !DILocation(line: 109, column: 5, scope: !4252)
!4254 = !DILocation(line: 112, column: 1, scope: !4188)
!4255 = !DISubprogram(name: "fileno", scope: !464, file: !464, line: 809, type: !4189, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !869)
!4256 = !DISubprogram(name: "fclose", scope: !464, file: !464, line: 178, type: !4189, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !869)
!4257 = !DISubprogram(name: "__freading", scope: !4185, file: !4185, line: 51, type: !4189, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !869)
!4258 = !DISubprogram(name: "lseek", scope: !1344, file: !1344, line: 339, type: !4259, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !869)
!4259 = !DISubroutineType(types: !4260)
!4260 = !{!273, !85, !273, !85}
!4261 = distinct !DISubprogram(name: "rpl_fflush", scope: !829, file: !829, line: 130, type: !4262, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !828, retainedNodes: !4298)
!4262 = !DISubroutineType(types: !4263)
!4263 = !{!85, !4264}
!4264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4265, size: 64)
!4265 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !249, line: 7, baseType: !4266)
!4266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !251, line: 49, size: 1728, elements: !4267)
!4267 = !{!4268, !4269, !4270, !4271, !4272, !4273, !4274, !4275, !4276, !4277, !4278, !4279, !4280, !4281, !4283, !4284, !4285, !4286, !4287, !4288, !4289, !4290, !4291, !4292, !4293, !4294, !4295, !4296, !4297}
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4266, file: !251, line: 51, baseType: !85, size: 32)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4266, file: !251, line: 54, baseType: !128, size: 64, offset: 64)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4266, file: !251, line: 55, baseType: !128, size: 64, offset: 128)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4266, file: !251, line: 56, baseType: !128, size: 64, offset: 192)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4266, file: !251, line: 57, baseType: !128, size: 64, offset: 256)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4266, file: !251, line: 58, baseType: !128, size: 64, offset: 320)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4266, file: !251, line: 59, baseType: !128, size: 64, offset: 384)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4266, file: !251, line: 60, baseType: !128, size: 64, offset: 448)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4266, file: !251, line: 61, baseType: !128, size: 64, offset: 512)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4266, file: !251, line: 64, baseType: !128, size: 64, offset: 576)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4266, file: !251, line: 65, baseType: !128, size: 64, offset: 640)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4266, file: !251, line: 66, baseType: !128, size: 64, offset: 704)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4266, file: !251, line: 68, baseType: !266, size: 64, offset: 768)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4266, file: !251, line: 70, baseType: !4282, size: 64, offset: 832)
!4282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4266, size: 64)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4266, file: !251, line: 72, baseType: !85, size: 32, offset: 896)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4266, file: !251, line: 73, baseType: !85, size: 32, offset: 928)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4266, file: !251, line: 74, baseType: !273, size: 64, offset: 960)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4266, file: !251, line: 77, baseType: !135, size: 16, offset: 1024)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4266, file: !251, line: 78, baseType: !277, size: 8, offset: 1040)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4266, file: !251, line: 79, baseType: !61, size: 8, offset: 1048)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4266, file: !251, line: 81, baseType: !280, size: 64, offset: 1088)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4266, file: !251, line: 89, baseType: !283, size: 64, offset: 1152)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4266, file: !251, line: 91, baseType: !285, size: 64, offset: 1216)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4266, file: !251, line: 92, baseType: !288, size: 64, offset: 1280)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4266, file: !251, line: 93, baseType: !4282, size: 64, offset: 1344)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4266, file: !251, line: 94, baseType: !129, size: 64, offset: 1408)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4266, file: !251, line: 95, baseType: !136, size: 64, offset: 1472)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4266, file: !251, line: 96, baseType: !85, size: 32, offset: 1536)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4266, file: !251, line: 98, baseType: !295, size: 160, offset: 1568)
!4298 = !{!4299}
!4299 = !DILocalVariable(name: "stream", arg: 1, scope: !4261, file: !829, line: 130, type: !4264)
!4300 = !DILocation(line: 0, scope: !4261)
!4301 = !DILocation(line: 151, column: 14, scope: !4302)
!4302 = distinct !DILexicalBlock(scope: !4261, file: !829, line: 151, column: 7)
!4303 = !DILocation(line: 151, column: 22, scope: !4302)
!4304 = !DILocation(line: 151, column: 27, scope: !4302)
!4305 = !DILocation(line: 151, column: 7, scope: !4261)
!4306 = !DILocation(line: 152, column: 12, scope: !4302)
!4307 = !DILocation(line: 152, column: 5, scope: !4302)
!4308 = !DILocalVariable(name: "fp", arg: 1, scope: !4309, file: !829, line: 42, type: !4264)
!4309 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !829, file: !829, line: 42, type: !4310, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !828, retainedNodes: !4312)
!4310 = !DISubroutineType(types: !4311)
!4311 = !{null, !4264}
!4312 = !{!4308}
!4313 = !DILocation(line: 0, scope: !4309, inlinedAt: !4314)
!4314 = distinct !DILocation(line: 157, column: 3, scope: !4261)
!4315 = !DILocation(line: 44, column: 12, scope: !4316, inlinedAt: !4314)
!4316 = distinct !DILexicalBlock(scope: !4309, file: !829, line: 44, column: 7)
!4317 = !DILocation(line: 44, column: 19, scope: !4316, inlinedAt: !4314)
!4318 = !DILocation(line: 44, column: 7, scope: !4309, inlinedAt: !4314)
!4319 = !DILocation(line: 46, column: 5, scope: !4316, inlinedAt: !4314)
!4320 = !DILocation(line: 159, column: 10, scope: !4261)
!4321 = !DILocation(line: 159, column: 3, scope: !4261)
!4322 = !DILocation(line: 236, column: 1, scope: !4261)
!4323 = !DISubprogram(name: "fflush", scope: !464, file: !464, line: 230, type: !4262, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !869)
!4324 = distinct !DISubprogram(name: "rpl_fseeko", scope: !831, file: !831, line: 28, type: !4325, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !830, retainedNodes: !4362)
!4325 = !DISubroutineType(types: !4326)
!4326 = !{!85, !4327, !4361, !85}
!4327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4328, size: 64)
!4328 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !249, line: 7, baseType: !4329)
!4329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !251, line: 49, size: 1728, elements: !4330)
!4330 = !{!4331, !4332, !4333, !4334, !4335, !4336, !4337, !4338, !4339, !4340, !4341, !4342, !4343, !4344, !4346, !4347, !4348, !4349, !4350, !4351, !4352, !4353, !4354, !4355, !4356, !4357, !4358, !4359, !4360}
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4329, file: !251, line: 51, baseType: !85, size: 32)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4329, file: !251, line: 54, baseType: !128, size: 64, offset: 64)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4329, file: !251, line: 55, baseType: !128, size: 64, offset: 128)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4329, file: !251, line: 56, baseType: !128, size: 64, offset: 192)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4329, file: !251, line: 57, baseType: !128, size: 64, offset: 256)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4329, file: !251, line: 58, baseType: !128, size: 64, offset: 320)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4329, file: !251, line: 59, baseType: !128, size: 64, offset: 384)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4329, file: !251, line: 60, baseType: !128, size: 64, offset: 448)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4329, file: !251, line: 61, baseType: !128, size: 64, offset: 512)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4329, file: !251, line: 64, baseType: !128, size: 64, offset: 576)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4329, file: !251, line: 65, baseType: !128, size: 64, offset: 640)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4329, file: !251, line: 66, baseType: !128, size: 64, offset: 704)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4329, file: !251, line: 68, baseType: !266, size: 64, offset: 768)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4329, file: !251, line: 70, baseType: !4345, size: 64, offset: 832)
!4345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4329, size: 64)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4329, file: !251, line: 72, baseType: !85, size: 32, offset: 896)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4329, file: !251, line: 73, baseType: !85, size: 32, offset: 928)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4329, file: !251, line: 74, baseType: !273, size: 64, offset: 960)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4329, file: !251, line: 77, baseType: !135, size: 16, offset: 1024)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4329, file: !251, line: 78, baseType: !277, size: 8, offset: 1040)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4329, file: !251, line: 79, baseType: !61, size: 8, offset: 1048)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4329, file: !251, line: 81, baseType: !280, size: 64, offset: 1088)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4329, file: !251, line: 89, baseType: !283, size: 64, offset: 1152)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4329, file: !251, line: 91, baseType: !285, size: 64, offset: 1216)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4329, file: !251, line: 92, baseType: !288, size: 64, offset: 1280)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4329, file: !251, line: 93, baseType: !4345, size: 64, offset: 1344)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4329, file: !251, line: 94, baseType: !129, size: 64, offset: 1408)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4329, file: !251, line: 95, baseType: !136, size: 64, offset: 1472)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4329, file: !251, line: 96, baseType: !85, size: 32, offset: 1536)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4329, file: !251, line: 98, baseType: !295, size: 160, offset: 1568)
!4361 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !464, line: 63, baseType: !273)
!4362 = !{!4363, !4364, !4365, !4366}
!4363 = !DILocalVariable(name: "fp", arg: 1, scope: !4324, file: !831, line: 28, type: !4327)
!4364 = !DILocalVariable(name: "offset", arg: 2, scope: !4324, file: !831, line: 28, type: !4361)
!4365 = !DILocalVariable(name: "whence", arg: 3, scope: !4324, file: !831, line: 28, type: !85)
!4366 = !DILocalVariable(name: "pos", scope: !4367, file: !831, line: 123, type: !4361)
!4367 = distinct !DILexicalBlock(scope: !4368, file: !831, line: 119, column: 5)
!4368 = distinct !DILexicalBlock(scope: !4324, file: !831, line: 55, column: 7)
!4369 = !DILocation(line: 0, scope: !4324)
!4370 = !DILocation(line: 55, column: 12, scope: !4368)
!4371 = !{!1479, !861, i64 16}
!4372 = !DILocation(line: 55, column: 33, scope: !4368)
!4373 = !{!1479, !861, i64 8}
!4374 = !DILocation(line: 55, column: 25, scope: !4368)
!4375 = !DILocation(line: 56, column: 7, scope: !4368)
!4376 = !DILocation(line: 56, column: 15, scope: !4368)
!4377 = !DILocation(line: 56, column: 37, scope: !4368)
!4378 = !{!1479, !861, i64 32}
!4379 = !DILocation(line: 56, column: 29, scope: !4368)
!4380 = !DILocation(line: 57, column: 7, scope: !4368)
!4381 = !DILocation(line: 57, column: 15, scope: !4368)
!4382 = !{!1479, !861, i64 72}
!4383 = !DILocation(line: 57, column: 29, scope: !4368)
!4384 = !DILocation(line: 55, column: 7, scope: !4324)
!4385 = !DILocation(line: 123, column: 26, scope: !4367)
!4386 = !DILocation(line: 123, column: 19, scope: !4367)
!4387 = !DILocation(line: 0, scope: !4367)
!4388 = !DILocation(line: 124, column: 15, scope: !4389)
!4389 = distinct !DILexicalBlock(scope: !4367, file: !831, line: 124, column: 11)
!4390 = !DILocation(line: 124, column: 11, scope: !4367)
!4391 = !DILocation(line: 135, column: 19, scope: !4367)
!4392 = !DILocation(line: 136, column: 12, scope: !4367)
!4393 = !DILocation(line: 136, column: 20, scope: !4367)
!4394 = !{!1479, !1219, i64 144}
!4395 = !DILocation(line: 167, column: 7, scope: !4367)
!4396 = !DILocation(line: 169, column: 10, scope: !4324)
!4397 = !DILocation(line: 169, column: 3, scope: !4324)
!4398 = !DILocation(line: 170, column: 1, scope: !4324)
!4399 = !DISubprogram(name: "fseeko", scope: !464, file: !464, line: 736, type: !4400, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !869)
!4400 = !DISubroutineType(types: !4401)
!4401 = !{!85, !4327, !273, !85}
!4402 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !738, file: !738, line: 100, type: !4403, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !741, retainedNodes: !4406)
!4403 = !DISubroutineType(types: !4404)
!4404 = !{!136, !2026, !138, !136, !4405}
!4405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!4406 = !{!4407, !4408, !4409, !4410, !4411}
!4407 = !DILocalVariable(name: "pwc", arg: 1, scope: !4402, file: !738, line: 100, type: !2026)
!4408 = !DILocalVariable(name: "s", arg: 2, scope: !4402, file: !738, line: 100, type: !138)
!4409 = !DILocalVariable(name: "n", arg: 3, scope: !4402, file: !738, line: 100, type: !136)
!4410 = !DILocalVariable(name: "ps", arg: 4, scope: !4402, file: !738, line: 100, type: !4405)
!4411 = !DILocalVariable(name: "ret", scope: !4402, file: !738, line: 130, type: !136)
!4412 = !DILocation(line: 0, scope: !4402)
!4413 = !DILocation(line: 105, column: 9, scope: !4414)
!4414 = distinct !DILexicalBlock(scope: !4402, file: !738, line: 105, column: 7)
!4415 = !DILocation(line: 105, column: 7, scope: !4402)
!4416 = !DILocation(line: 117, column: 10, scope: !4417)
!4417 = distinct !DILexicalBlock(scope: !4402, file: !738, line: 117, column: 7)
!4418 = !DILocation(line: 117, column: 7, scope: !4402)
!4419 = !DILocation(line: 130, column: 16, scope: !4402)
!4420 = !DILocation(line: 135, column: 11, scope: !4421)
!4421 = distinct !DILexicalBlock(scope: !4402, file: !738, line: 135, column: 7)
!4422 = !DILocation(line: 135, column: 25, scope: !4421)
!4423 = !DILocation(line: 135, column: 30, scope: !4421)
!4424 = !DILocation(line: 135, column: 7, scope: !4402)
!4425 = !DILocalVariable(name: "ps", arg: 1, scope: !4426, file: !1999, line: 1135, type: !4405)
!4426 = distinct !DISubprogram(name: "mbszero", scope: !1999, file: !1999, line: 1135, type: !4427, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !741, retainedNodes: !4429)
!4427 = !DISubroutineType(types: !4428)
!4428 = !{null, !4405}
!4429 = !{!4425}
!4430 = !DILocation(line: 0, scope: !4426, inlinedAt: !4431)
!4431 = distinct !DILocation(line: 137, column: 5, scope: !4421)
!4432 = !DILocalVariable(name: "__dest", arg: 1, scope: !4433, file: !2008, line: 57, type: !129)
!4433 = distinct !DISubprogram(name: "memset", scope: !2008, file: !2008, line: 57, type: !2009, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !741, retainedNodes: !4434)
!4434 = !{!4432, !4435, !4436}
!4435 = !DILocalVariable(name: "__ch", arg: 2, scope: !4433, file: !2008, line: 57, type: !85)
!4436 = !DILocalVariable(name: "__len", arg: 3, scope: !4433, file: !2008, line: 57, type: !136)
!4437 = !DILocation(line: 0, scope: !4433, inlinedAt: !4438)
!4438 = distinct !DILocation(line: 1137, column: 3, scope: !4426, inlinedAt: !4431)
!4439 = !DILocation(line: 59, column: 10, scope: !4433, inlinedAt: !4438)
!4440 = !DILocation(line: 137, column: 5, scope: !4421)
!4441 = !DILocation(line: 138, column: 11, scope: !4442)
!4442 = distinct !DILexicalBlock(scope: !4402, file: !738, line: 138, column: 7)
!4443 = !DILocation(line: 138, column: 7, scope: !4402)
!4444 = !DILocation(line: 139, column: 5, scope: !4442)
!4445 = !DILocation(line: 143, column: 26, scope: !4446)
!4446 = distinct !DILexicalBlock(scope: !4402, file: !738, line: 143, column: 7)
!4447 = !DILocation(line: 143, column: 41, scope: !4446)
!4448 = !DILocation(line: 143, column: 7, scope: !4402)
!4449 = !DILocation(line: 145, column: 15, scope: !4450)
!4450 = distinct !DILexicalBlock(scope: !4451, file: !738, line: 145, column: 11)
!4451 = distinct !DILexicalBlock(scope: !4446, file: !738, line: 144, column: 5)
!4452 = !DILocation(line: 145, column: 11, scope: !4451)
!4453 = !DILocation(line: 146, column: 32, scope: !4450)
!4454 = !DILocation(line: 146, column: 16, scope: !4450)
!4455 = !DILocation(line: 146, column: 14, scope: !4450)
!4456 = !DILocation(line: 146, column: 9, scope: !4450)
!4457 = !DILocation(line: 286, column: 1, scope: !4402)
!4458 = !DISubprogram(name: "mbsinit", scope: !4459, file: !4459, line: 293, type: !4460, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !869)
!4459 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4460 = !DISubroutineType(types: !4461)
!4461 = !{!85, !4462}
!4462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4463, size: 64)
!4463 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !744)
!4464 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !833, file: !833, line: 27, type: !3478, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !832, retainedNodes: !4465)
!4465 = !{!4466, !4467, !4468, !4469}
!4466 = !DILocalVariable(name: "ptr", arg: 1, scope: !4464, file: !833, line: 27, type: !129)
!4467 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4464, file: !833, line: 27, type: !136)
!4468 = !DILocalVariable(name: "size", arg: 3, scope: !4464, file: !833, line: 27, type: !136)
!4469 = !DILocalVariable(name: "nbytes", scope: !4464, file: !833, line: 29, type: !136)
!4470 = !DILocation(line: 0, scope: !4464)
!4471 = !DILocation(line: 30, column: 7, scope: !4472)
!4472 = distinct !DILexicalBlock(scope: !4464, file: !833, line: 30, column: 7)
!4473 = !DILocalVariable(name: "ptr", arg: 1, scope: !4474, file: !3570, line: 2057, type: !129)
!4474 = distinct !DISubprogram(name: "rpl_realloc", scope: !3570, file: !3570, line: 2057, type: !3562, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !832, retainedNodes: !4475)
!4475 = !{!4473, !4476}
!4476 = !DILocalVariable(name: "size", arg: 2, scope: !4474, file: !3570, line: 2057, type: !136)
!4477 = !DILocation(line: 0, scope: !4474, inlinedAt: !4478)
!4478 = distinct !DILocation(line: 37, column: 10, scope: !4464)
!4479 = !DILocation(line: 2059, column: 24, scope: !4474, inlinedAt: !4478)
!4480 = !DILocation(line: 2059, column: 10, scope: !4474, inlinedAt: !4478)
!4481 = !DILocation(line: 37, column: 3, scope: !4464)
!4482 = !DILocation(line: 32, column: 7, scope: !4483)
!4483 = distinct !DILexicalBlock(scope: !4472, file: !833, line: 31, column: 5)
!4484 = !DILocation(line: 32, column: 13, scope: !4483)
!4485 = !DILocation(line: 33, column: 7, scope: !4483)
!4486 = !DILocation(line: 38, column: 1, scope: !4464)
!4487 = distinct !DISubprogram(name: "hard_locale", scope: !756, file: !756, line: 28, type: !4488, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !835, retainedNodes: !4490)
!4488 = !DISubroutineType(types: !4489)
!4489 = !{!234, !85}
!4490 = !{!4491, !4492}
!4491 = !DILocalVariable(name: "category", arg: 1, scope: !4487, file: !756, line: 28, type: !85)
!4492 = !DILocalVariable(name: "locale", scope: !4487, file: !756, line: 30, type: !4493)
!4493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4494)
!4494 = !{!4495}
!4495 = !DISubrange(count: 257)
!4496 = !DILocation(line: 0, scope: !4487)
!4497 = !DILocation(line: 30, column: 3, scope: !4487)
!4498 = !DILocation(line: 30, column: 8, scope: !4487)
!4499 = !DILocation(line: 32, column: 7, scope: !4500)
!4500 = distinct !DILexicalBlock(scope: !4487, file: !756, line: 32, column: 7)
!4501 = !DILocation(line: 32, column: 7, scope: !4487)
!4502 = !DILocalVariable(name: "__s1", arg: 1, scope: !4503, file: !942, line: 1359, type: !138)
!4503 = distinct !DISubprogram(name: "streq", scope: !942, file: !942, line: 1359, type: !943, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !835, retainedNodes: !4504)
!4504 = !{!4502, !4505}
!4505 = !DILocalVariable(name: "__s2", arg: 2, scope: !4503, file: !942, line: 1359, type: !138)
!4506 = !DILocation(line: 0, scope: !4503, inlinedAt: !4507)
!4507 = distinct !DILocation(line: 35, column: 9, scope: !4508)
!4508 = distinct !DILexicalBlock(scope: !4487, file: !756, line: 35, column: 7)
!4509 = !DILocation(line: 1361, column: 11, scope: !4503, inlinedAt: !4507)
!4510 = !DILocation(line: 1361, column: 10, scope: !4503, inlinedAt: !4507)
!4511 = !DILocation(line: 35, column: 29, scope: !4508)
!4512 = !DILocation(line: 0, scope: !4503, inlinedAt: !4513)
!4513 = distinct !DILocation(line: 35, column: 32, scope: !4508)
!4514 = !DILocation(line: 1361, column: 11, scope: !4503, inlinedAt: !4513)
!4515 = !DILocation(line: 1361, column: 10, scope: !4503, inlinedAt: !4513)
!4516 = !DILocation(line: 35, column: 7, scope: !4487)
!4517 = !DILocation(line: 46, column: 3, scope: !4487)
!4518 = !DILocation(line: 47, column: 1, scope: !4487)
!4519 = distinct !DISubprogram(name: "setlocale_null_r", scope: !838, file: !838, line: 154, type: !4520, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !837, retainedNodes: !4522)
!4520 = !DISubroutineType(types: !4521)
!4521 = !{!85, !85, !128, !136}
!4522 = !{!4523, !4524, !4525}
!4523 = !DILocalVariable(name: "category", arg: 1, scope: !4519, file: !838, line: 154, type: !85)
!4524 = !DILocalVariable(name: "buf", arg: 2, scope: !4519, file: !838, line: 154, type: !128)
!4525 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4519, file: !838, line: 154, type: !136)
!4526 = !DILocation(line: 0, scope: !4519)
!4527 = !DILocation(line: 159, column: 10, scope: !4519)
!4528 = !DILocation(line: 159, column: 3, scope: !4519)
!4529 = distinct !DISubprogram(name: "setlocale_null", scope: !838, file: !838, line: 186, type: !4530, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !837, retainedNodes: !4532)
!4530 = !DISubroutineType(types: !4531)
!4531 = !{!138, !85}
!4532 = !{!4533}
!4533 = !DILocalVariable(name: "category", arg: 1, scope: !4529, file: !838, line: 186, type: !85)
!4534 = !DILocation(line: 0, scope: !4529)
!4535 = !DILocation(line: 189, column: 10, scope: !4529)
!4536 = !DILocation(line: 189, column: 3, scope: !4529)
!4537 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !840, file: !840, line: 35, type: !4530, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !839, retainedNodes: !4538)
!4538 = !{!4539, !4540}
!4539 = !DILocalVariable(name: "category", arg: 1, scope: !4537, file: !840, line: 35, type: !85)
!4540 = !DILocalVariable(name: "result", scope: !4537, file: !840, line: 37, type: !138)
!4541 = !DILocation(line: 0, scope: !4537)
!4542 = !DILocation(line: 37, column: 24, scope: !4537)
!4543 = !DILocation(line: 62, column: 3, scope: !4537)
!4544 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !840, file: !840, line: 66, type: !4520, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !839, retainedNodes: !4545)
!4545 = !{!4546, !4547, !4548, !4549, !4550}
!4546 = !DILocalVariable(name: "category", arg: 1, scope: !4544, file: !840, line: 66, type: !85)
!4547 = !DILocalVariable(name: "buf", arg: 2, scope: !4544, file: !840, line: 66, type: !128)
!4548 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4544, file: !840, line: 66, type: !136)
!4549 = !DILocalVariable(name: "result", scope: !4544, file: !840, line: 111, type: !138)
!4550 = !DILocalVariable(name: "length", scope: !4551, file: !840, line: 125, type: !136)
!4551 = distinct !DILexicalBlock(scope: !4552, file: !840, line: 124, column: 5)
!4552 = distinct !DILexicalBlock(scope: !4544, file: !840, line: 113, column: 7)
!4553 = !DILocation(line: 0, scope: !4544)
!4554 = !DILocation(line: 0, scope: !4537, inlinedAt: !4555)
!4555 = distinct !DILocation(line: 111, column: 24, scope: !4544)
!4556 = !DILocation(line: 37, column: 24, scope: !4537, inlinedAt: !4555)
!4557 = !DILocation(line: 113, column: 14, scope: !4552)
!4558 = !DILocation(line: 113, column: 7, scope: !4544)
!4559 = !DILocation(line: 116, column: 19, scope: !4560)
!4560 = distinct !DILexicalBlock(scope: !4561, file: !840, line: 116, column: 11)
!4561 = distinct !DILexicalBlock(scope: !4552, file: !840, line: 114, column: 5)
!4562 = !DILocation(line: 116, column: 11, scope: !4561)
!4563 = !DILocation(line: 120, column: 16, scope: !4560)
!4564 = !DILocation(line: 120, column: 9, scope: !4560)
!4565 = !DILocation(line: 125, column: 23, scope: !4551)
!4566 = !DILocation(line: 0, scope: !4551)
!4567 = !DILocation(line: 126, column: 18, scope: !4568)
!4568 = distinct !DILexicalBlock(scope: !4551, file: !840, line: 126, column: 11)
!4569 = !DILocation(line: 126, column: 11, scope: !4551)
!4570 = !DILocation(line: 128, column: 39, scope: !4571)
!4571 = distinct !DILexicalBlock(scope: !4568, file: !840, line: 127, column: 9)
!4572 = !DILocalVariable(name: "__dest", arg: 1, scope: !4573, file: !2008, line: 26, type: !3838)
!4573 = distinct !DISubprogram(name: "memcpy", scope: !2008, file: !2008, line: 26, type: !3836, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !839, retainedNodes: !4574)
!4574 = !{!4572, !4575, !4576}
!4575 = !DILocalVariable(name: "__src", arg: 2, scope: !4573, file: !2008, line: 26, type: !1073)
!4576 = !DILocalVariable(name: "__len", arg: 3, scope: !4573, file: !2008, line: 26, type: !136)
!4577 = !DILocation(line: 0, scope: !4573, inlinedAt: !4578)
!4578 = distinct !DILocation(line: 128, column: 11, scope: !4571)
!4579 = !DILocation(line: 29, column: 10, scope: !4573, inlinedAt: !4578)
!4580 = !DILocation(line: 129, column: 11, scope: !4571)
!4581 = !DILocation(line: 133, column: 23, scope: !4582)
!4582 = distinct !DILexicalBlock(scope: !4583, file: !840, line: 133, column: 15)
!4583 = distinct !DILexicalBlock(scope: !4568, file: !840, line: 132, column: 9)
!4584 = !DILocation(line: 133, column: 15, scope: !4583)
!4585 = !DILocation(line: 138, column: 44, scope: !4586)
!4586 = distinct !DILexicalBlock(scope: !4582, file: !840, line: 134, column: 13)
!4587 = !DILocation(line: 0, scope: !4573, inlinedAt: !4588)
!4588 = distinct !DILocation(line: 138, column: 15, scope: !4586)
!4589 = !DILocation(line: 29, column: 10, scope: !4573, inlinedAt: !4588)
!4590 = !DILocation(line: 139, column: 15, scope: !4586)
!4591 = !DILocation(line: 139, column: 32, scope: !4586)
!4592 = !DILocation(line: 140, column: 13, scope: !4586)
!4593 = !DILocation(line: 0, scope: !4552)
!4594 = !DILocation(line: 145, column: 1, scope: !4544)
