; ModuleID = 'src/mknod.bc'
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
%struct.mode_change = type { i8, i8, i32, i32, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
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
@longopts = internal constant [5 x %struct.option] [%struct.option { ptr @.str.70, i32 2, ptr null, i32 90 }, %struct.option { ptr @.str.71, i32 1, ptr null, i32 109 }, %struct.option { ptr @.str.72, i32 0, ptr null, i32 -130 }, %struct.option { ptr @.str.73, i32 0, ptr null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !79
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
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !448
@.str.39 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !440
@.str.1.40 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !442
@.str.2.41 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !444
@.str.3.42 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !446
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !450
@stderr = external local_unnamed_addr global ptr, align 8
@.str.43 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !456
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !488
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !458
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !478
@.str.1.49 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !480
@.str.2.51 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !482
@.str.3.50 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !484
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !486
@.str.4.44 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !490
@.str.5.45 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !492
@.str.6.46 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !494
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !499
@.str.74 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !505
@.str.1.75 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !507
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !509
@.str.78 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !540
@.str.1.79 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !543
@.str.2.80 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !545
@.str.3.81 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !547
@.str.4.82 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !549
@.str.5.83 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !551
@.str.6.84 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !553
@.str.7.85 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !555
@.str.8.86 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !557
@.str.9.87 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !559
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.78, ptr @.str.1.79, ptr @.str.2.80, ptr @.str.3.81, ptr @.str.4.82, ptr @.str.5.83, ptr @.str.6.84, ptr @.str.7.85, ptr @.str.8.86, ptr @.str.9.87, ptr null], align 16, !dbg !561
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !572
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !586
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !624
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !631
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !588
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !633
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !576
@.str.10.90 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !593
@.str.11.88 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !595
@.str.12.91 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !597
@.str.13.89 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !599
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !601
@.str.100 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !639
@.str.1.101 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !642
@.str.2.102 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !644
@.str.3.103 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !646
@.str.4.104 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !648
@.str.5.105 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !650
@.str.6.106 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !655
@.str.7.107 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !660
@.str.8.108 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !662
@.str.9.109 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !664
@.str.10.110 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !669
@.str.11.111 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !674
@.str.12.112 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !679
@.str.13.113 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !681
@.str.14.114 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !683
@.str.15.115 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !688
@.str.16.116 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !693
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.121 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !698
@.str.18.122 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !700
@.str.19.123 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !702
@.str.20.124 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !704
@.str.21.125 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !706
@.str.22.126 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !708
@.str.23.127 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !710
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !712
@exit_failure = dso_local global i32 1, align 4, !dbg !718
@.str.144 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !724
@.str.1.142 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !727
@.str.2.143 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !729
@.str.157 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !731
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !734
@.str.1.162 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !749

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !843 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !847, metadata !DIExpression()), !dbg !848
  %2 = icmp eq i32 %0, 0, !dbg !849
  br i1 %2, label %8, label %3, !dbg !851

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !852, !tbaa !854
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #36, !dbg !852
  %6 = load ptr, ptr @program_name, align 8, !dbg !852, !tbaa !854
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #36, !dbg !852
  br label %45, !dbg !852

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #36, !dbg !858
  %10 = load ptr, ptr @program_name, align 8, !dbg !858, !tbaa !854
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #36, !dbg !858
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #36, !dbg !860
  %13 = load ptr, ptr @stdout, align 8, !dbg !860, !tbaa !854
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !860
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.34, i32 noundef 5) #36, !dbg !861
  %16 = load ptr, ptr @stdout, align 8, !dbg !861, !tbaa !854
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !861
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #36, !dbg !865
  tail call fastcc void @oputs_(ptr noundef %18), !dbg !865
  %19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #36, !dbg !866
  tail call fastcc void @oputs_(ptr noundef %19), !dbg !866
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #36, !dbg !867
  tail call fastcc void @oputs_(ptr noundef %20), !dbg !867
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #36, !dbg !868
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !868
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #36, !dbg !869
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !869
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #36, !dbg !870
  %24 = load ptr, ptr @stdout, align 8, !dbg !870, !tbaa !854
  %25 = tail call i32 @fputs_unlocked(ptr noundef %23, ptr noundef %24), !dbg !870
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #36, !dbg !871
  %27 = load ptr, ptr @stdout, align 8, !dbg !871, !tbaa !854
  %28 = tail call i32 @fputs_unlocked(ptr noundef %26, ptr noundef %27), !dbg !871
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #36, !dbg !872
  %30 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %29, ptr noundef nonnull @.str.3) #36, !dbg !872
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !873, metadata !DIExpression()), !dbg !890
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !885, metadata !DIExpression()), !dbg !890
  call void @llvm.dbg.value(metadata ptr poison, metadata !885, metadata !DIExpression()), !dbg !890
  tail call void @emit_bug_reporting_address() #36, !dbg !892
  %31 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #36, !dbg !893
  call void @llvm.dbg.value(metadata ptr %31, metadata !888, metadata !DIExpression()), !dbg !890
  %32 = icmp eq ptr %31, null, !dbg !894
  br i1 %32, label %40, label %33, !dbg !896

33:                                               ; preds = %8
  %34 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %31, ptr noundef nonnull dereferenceable(4) @.str.65, i64 noundef 3) #37, !dbg !897
  %35 = icmp eq i32 %34, 0, !dbg !897
  br i1 %35, label %40, label %36, !dbg !898

36:                                               ; preds = %33
  %37 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.66, i32 noundef 5) #36, !dbg !899
  %38 = load ptr, ptr @stdout, align 8, !dbg !899, !tbaa !854
  %39 = tail call i32 @fputs_unlocked(ptr noundef %37, ptr noundef %38), !dbg !899
  br label %40, !dbg !901

40:                                               ; preds = %8, %33, %36
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !885, metadata !DIExpression()), !dbg !890
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !889, metadata !DIExpression()), !dbg !890
  %41 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.67, i32 noundef 5) #36, !dbg !902
  %42 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %41, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.3) #36, !dbg !902
  %43 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.68, i32 noundef 5) #36, !dbg !903
  %44 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %43, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.69) #36, !dbg !903
  br label %45

45:                                               ; preds = %40, %3
  tail call void @exit(i32 noundef %0) #38, !dbg !904
  unreachable, !dbg !904
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !905 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !909 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !915 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !918 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !224 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !228, metadata !DIExpression()), !dbg !922
  call void @llvm.dbg.value(metadata ptr %0, metadata !229, metadata !DIExpression()), !dbg !922
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !923, !tbaa !924
  %3 = icmp eq i32 %2, -1, !dbg !926
  br i1 %3, label %4, label %16, !dbg !927

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.35) #36, !dbg !928
  call void @llvm.dbg.value(metadata ptr %5, metadata !230, metadata !DIExpression()), !dbg !929
  %6 = icmp eq ptr %5, null, !dbg !930
  br i1 %6, label %14, label %7, !dbg !931

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !932, !tbaa !933
  %9 = icmp eq i8 %8, 0, !dbg !932
  br i1 %9, label %14, label %10, !dbg !934

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !935, metadata !DIExpression()), !dbg !942
  call void @llvm.dbg.value(metadata ptr @.str.36, metadata !941, metadata !DIExpression()), !dbg !942
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.36) #37, !dbg !944
  %12 = icmp eq i32 %11, 0, !dbg !945
  %13 = zext i1 %12 to i32, !dbg !934
  br label %14, !dbg !934

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !946, !tbaa !924
  br label %16, !dbg !947

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !948
  %18 = icmp eq i32 %17, 0, !dbg !948
  br i1 %18, label %22, label %19, !dbg !950

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !951, !tbaa !854
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !951
  br label %128, !dbg !953

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !233, metadata !DIExpression()), !dbg !922
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.37) #37, !dbg !954
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !955
  call void @llvm.dbg.value(metadata ptr %24, metadata !235, metadata !DIExpression()), !dbg !922
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #37, !dbg !956
  call void @llvm.dbg.value(metadata ptr %25, metadata !236, metadata !DIExpression()), !dbg !922
  %26 = icmp eq ptr %25, null, !dbg !957
  br i1 %26, label %58, label %27, !dbg !958

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !959
  br i1 %28, label %58, label %29, !dbg !960

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !237, metadata !DIExpression()), !dbg !961
  call void @llvm.dbg.value(metadata i64 0, metadata !241, metadata !DIExpression()), !dbg !961
  %30 = icmp ult ptr %24, %25, !dbg !962
  br i1 %30, label %31, label %52, !dbg !963

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #39, !dbg !922
  %33 = load ptr, ptr %32, align 8, !tbaa !854
  br label %34, !dbg !963

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !237, metadata !DIExpression()), !dbg !961
  call void @llvm.dbg.value(metadata i64 %36, metadata !241, metadata !DIExpression()), !dbg !961
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !964
  call void @llvm.dbg.value(metadata ptr %37, metadata !237, metadata !DIExpression()), !dbg !961
  %38 = load i8, ptr %35, align 1, !dbg !964, !tbaa !933
  %39 = sext i8 %38 to i64, !dbg !964
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !964
  %41 = load i16, ptr %40, align 2, !dbg !964, !tbaa !965
  %42 = freeze i16 %41, !dbg !967
  %43 = lshr i16 %42, 13, !dbg !967
  %44 = and i16 %43, 1, !dbg !967
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !968
  call void @llvm.dbg.value(metadata i64 %46, metadata !241, metadata !DIExpression()), !dbg !961
  %47 = icmp ult ptr %37, %25, !dbg !962
  %48 = icmp ult i64 %46, 2, !dbg !969
  %49 = select i1 %47, i1 %48, i1 false, !dbg !969
  br i1 %49, label %34, label %50, !dbg !963, !llvm.loop !970

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !972
  br i1 %51, label %52, label %54, !dbg !974

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !974

54:                                               ; preds = %50, %52
  %55 = phi i1 [ %53, %52 ], [ %51, %50 ]
  %56 = phi ptr [ %25, %52 ], [ %24, %50 ]
  %57 = zext i1 %55 to i8, !dbg !974
  call void @llvm.dbg.value(metadata i8 %57, metadata !233, metadata !DIExpression()), !dbg !922
  call void @llvm.dbg.value(metadata ptr %56, metadata !236, metadata !DIExpression()), !dbg !922
  br label %58, !dbg !975

58:                                               ; preds = %22, %27, %54
  %59 = phi ptr [ %56, %54 ], [ %24, %27 ], [ %24, %22 ], !dbg !922
  %60 = phi i8 [ %57, %54 ], [ 1, %27 ], [ 0, %22 ], !dbg !922
  call void @llvm.dbg.value(metadata i8 %60, metadata !233, metadata !DIExpression()), !dbg !922
  call void @llvm.dbg.value(metadata ptr %59, metadata !236, metadata !DIExpression()), !dbg !922
  %61 = tail call i64 @strcspn(ptr noundef %59, ptr noundef nonnull @.str.38) #37, !dbg !976
  call void @llvm.dbg.value(metadata i64 %61, metadata !242, metadata !DIExpression()), !dbg !922
  %62 = getelementptr inbounds i8, ptr %59, i64 %61, !dbg !977
  call void @llvm.dbg.value(metadata ptr %62, metadata !243, metadata !DIExpression()), !dbg !922
  br label %63, !dbg !978

63:                                               ; preds = %96, %58
  %64 = phi ptr [ %62, %58 ], [ %97, %96 ], !dbg !922
  %65 = phi i8 [ %60, %58 ], [ %73, %96 ], !dbg !922
  call void @llvm.dbg.value(metadata i8 %65, metadata !233, metadata !DIExpression()), !dbg !922
  call void @llvm.dbg.value(metadata ptr %64, metadata !243, metadata !DIExpression()), !dbg !922
  %66 = load i8, ptr %64, align 1, !dbg !979, !tbaa !933
  switch i8 %66, label %72 [
    i8 0, label %98
    i8 10, label %98
    i8 45, label %67
  ], !dbg !980

67:                                               ; preds = %63
  %68 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !981
  %69 = load i8, ptr %68, align 1, !dbg !984, !tbaa !933
  %70 = icmp eq i8 %69, 45, !dbg !985
  %71 = select i1 %70, i8 0, i8 %65, !dbg !986
  br label %72, !dbg !986

72:                                               ; preds = %67, %63
  %73 = phi i8 [ %65, %63 ], [ %71, %67 ], !dbg !922
  call void @llvm.dbg.value(metadata i8 %73, metadata !233, metadata !DIExpression()), !dbg !922
  %74 = tail call ptr @__ctype_b_loc() #39, !dbg !987
  %75 = load ptr, ptr %74, align 8, !dbg !987, !tbaa !854
  %76 = sext i8 %66 to i64, !dbg !987
  %77 = getelementptr inbounds i16, ptr %75, i64 %76, !dbg !987
  %78 = load i16, ptr %77, align 2, !dbg !987, !tbaa !965
  %79 = and i16 %78, 8192, !dbg !987
  %80 = icmp eq i16 %79, 0, !dbg !987
  br i1 %80, label %96, label %81, !dbg !989

81:                                               ; preds = %72
  %82 = icmp eq i8 %66, 9, !dbg !990
  br i1 %82, label %98, label %83, !dbg !993

83:                                               ; preds = %81
  %84 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !994
  %85 = load i8, ptr %84, align 1, !dbg !994, !tbaa !933
  %86 = sext i8 %85 to i64, !dbg !994
  %87 = getelementptr inbounds i16, ptr %75, i64 %86, !dbg !994
  %88 = load i16, ptr %87, align 2, !dbg !994, !tbaa !965
  %89 = and i16 %88, 8192, !dbg !994
  %90 = icmp eq i16 %89, 0, !dbg !994
  br i1 %90, label %91, label %98, !dbg !995

91:                                               ; preds = %83
  %92 = and i8 %73, 1, !dbg !996
  %93 = icmp ne i8 %92, 0, !dbg !996
  %94 = icmp eq i8 %85, 45
  %95 = select i1 %93, i1 true, i1 %94, !dbg !998
  br i1 %95, label %96, label %98, !dbg !998

96:                                               ; preds = %91, %72
  %97 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !999
  call void @llvm.dbg.value(metadata ptr %97, metadata !243, metadata !DIExpression()), !dbg !922
  br label %63, !dbg !978, !llvm.loop !1000

98:                                               ; preds = %91, %63, %63, %81, %83
  %99 = ptrtoint ptr %24 to i64, !dbg !1002
  %100 = load ptr, ptr @stdout, align 8, !dbg !1002, !tbaa !854
  %101 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %100), !dbg !1002
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !935, metadata !DIExpression()), !dbg !1003
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !935, metadata !DIExpression()), !dbg !1005
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !935, metadata !DIExpression()), !dbg !1007
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !935, metadata !DIExpression()), !dbg !1009
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !935, metadata !DIExpression()), !dbg !1011
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !935, metadata !DIExpression()), !dbg !1013
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !935, metadata !DIExpression()), !dbg !1015
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !935, metadata !DIExpression()), !dbg !1017
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !935, metadata !DIExpression()), !dbg !1019
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !935, metadata !DIExpression()), !dbg !1021
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !299, metadata !DIExpression()), !dbg !922
  %102 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(7) @.str.52, i64 noundef 6) #37, !dbg !1023
  %103 = icmp eq i32 %102, 0, !dbg !1023
  br i1 %103, label %107, label %104, !dbg !1025

104:                                              ; preds = %98
  %105 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(10) @.str.53, i64 noundef 9) #37, !dbg !1026
  %106 = icmp eq i32 %105, 0, !dbg !1026
  br i1 %106, label %107, label %110, !dbg !1027

107:                                              ; preds = %104, %98
  %108 = trunc i64 %61 to i32, !dbg !1028
  %109 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %108, ptr noundef %59) #36, !dbg !1028
  br label %113, !dbg !1030

110:                                              ; preds = %104
  %111 = trunc i64 %61 to i32, !dbg !1031
  %112 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.3, i32 noundef %111, ptr noundef %59) #36, !dbg !1031
  br label %113

113:                                              ; preds = %110, %107
  %114 = load ptr, ptr @stdout, align 8, !dbg !1033, !tbaa !854
  %115 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.58, ptr noundef %114), !dbg !1033
  %116 = load ptr, ptr @stdout, align 8, !dbg !1034, !tbaa !854
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.59, ptr noundef %116), !dbg !1034
  %118 = ptrtoint ptr %64 to i64, !dbg !1035
  %119 = sub i64 %118, %99, !dbg !1035
  %120 = load ptr, ptr @stdout, align 8, !dbg !1035, !tbaa !854
  %121 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %119, ptr noundef %120), !dbg !1035
  %122 = load ptr, ptr @stdout, align 8, !dbg !1036, !tbaa !854
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.60, ptr noundef %122), !dbg !1036
  %124 = load ptr, ptr @stdout, align 8, !dbg !1037, !tbaa !854
  %125 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.61, ptr noundef %124), !dbg !1037
  %126 = load ptr, ptr @stdout, align 8, !dbg !1038, !tbaa !854
  %127 = tail call i32 @fputs_unlocked(ptr noundef nonnull %64, ptr noundef %126), !dbg !1038
  br label %128, !dbg !1039

128:                                              ; preds = %113, %19
  ret void, !dbg !1039
}

; Function Attrs: nounwind
declare !dbg !1040 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1044 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1048 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1050 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1053 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1056 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1059 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1062 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1068 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1069 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1075 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1080, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata ptr %1, metadata !1081, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata ptr null, metadata !1082, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata ptr null, metadata !1083, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata ptr null, metadata !1084, metadata !DIExpression()), !dbg !1112
  %5 = load ptr, ptr %1, align 8, !dbg !1113, !tbaa !854
  tail call void @set_program_name(ptr noundef %5) #36, !dbg !1114
  %6 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.12) #36, !dbg !1115
  %7 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #36, !dbg !1116
  %8 = tail call ptr @textdomain(ptr noundef nonnull @.str.13) #36, !dbg !1117
  %9 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #36, !dbg !1118
  br label %10, !dbg !1119

10:                                               ; preds = %14, %2
  %11 = phi ptr [ %15, %14 ], [ null, %2 ]
  br label %12, !dbg !1119

12:                                               ; preds = %21, %10
  call void @llvm.dbg.value(metadata ptr %11, metadata !1082, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata ptr null, metadata !1083, metadata !DIExpression()), !dbg !1112
  %13 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.15, ptr noundef nonnull @longopts, ptr noundef null) #36, !dbg !1120
  call void @llvm.dbg.value(metadata i32 %13, metadata !1088, metadata !DIExpression()), !dbg !1112
  switch i32 %13, label %27 [
    i32 -1, label %28
    i32 109, label %14
    i32 90, label %16
    i32 -130, label %22
    i32 -131, label %23
  ], !dbg !1119

14:                                               ; preds = %12
  %15 = load ptr, ptr @optarg, align 8, !dbg !1121, !tbaa !854
  call void @llvm.dbg.value(metadata ptr %15, metadata !1082, metadata !DIExpression()), !dbg !1112
  br label %10, !dbg !1124, !llvm.loop !1125

16:                                               ; preds = %12
  %17 = load ptr, ptr @optarg, align 8, !dbg !1127, !tbaa !854
  %18 = icmp eq ptr %17, null, !dbg !1127
  br i1 %18, label %21, label %19, !dbg !1131

19:                                               ; preds = %16
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #36, !dbg !1132
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %20) #36, !dbg !1132
  br label %21, !dbg !1134

21:                                               ; preds = %19, %16
  br label %12, !dbg !1112, !llvm.loop !1125

22:                                               ; preds = %12
  tail call void @usage(i32 noundef 0) #40, !dbg !1135
  unreachable, !dbg !1135

23:                                               ; preds = %12
  %24 = load ptr, ptr @stdout, align 8, !dbg !1136, !tbaa !854
  %25 = load ptr, ptr @Version, align 8, !dbg !1136, !tbaa !854
  %26 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.18) #36, !dbg !1136
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %24, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.17, ptr noundef %25, ptr noundef %26, ptr noundef null) #36, !dbg !1136
  tail call void @exit(i32 noundef 0) #38, !dbg !1136
  unreachable, !dbg !1136

27:                                               ; preds = %12
  tail call void @usage(i32 noundef 1) #40, !dbg !1137
  unreachable, !dbg !1137

28:                                               ; preds = %12
  call void @llvm.dbg.value(metadata i32 438, metadata !1089, metadata !DIExpression()), !dbg !1112
  %29 = icmp eq ptr %11, null, !dbg !1138
  br i1 %29, label %42, label %30, !dbg !1139

30:                                               ; preds = %28
  %31 = tail call noalias ptr @mode_compile(ptr noundef nonnull %11) #36, !dbg !1140
  call void @llvm.dbg.value(metadata ptr %31, metadata !1092, metadata !DIExpression()), !dbg !1141
  %32 = icmp eq ptr %31, null, !dbg !1142
  br i1 %32, label %33, label %35, !dbg !1144

33:                                               ; preds = %30
  %34 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.19, i32 noundef 5) #36, !dbg !1145
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %34) #36, !dbg !1145
  unreachable, !dbg !1145

35:                                               ; preds = %30
  %36 = tail call i32 @umask(i32 noundef 0) #36, !dbg !1146
  call void @llvm.dbg.value(metadata i32 %36, metadata !1098, metadata !DIExpression()), !dbg !1141
  %37 = tail call i32 @umask(i32 noundef %36) #36, !dbg !1147
  %38 = tail call i32 @mode_adjust(i32 noundef 438, i1 noundef zeroext false, i32 noundef %36, ptr noundef nonnull %31, ptr noundef null) #37, !dbg !1148
  call void @llvm.dbg.value(metadata i32 %38, metadata !1089, metadata !DIExpression()), !dbg !1112
  tail call void @free(ptr noundef nonnull %31) #36, !dbg !1149
  %39 = icmp ult i32 %38, 512, !dbg !1150
  br i1 %39, label %42, label %40, !dbg !1152

40:                                               ; preds = %35
  %41 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.20, i32 noundef 5) #36, !dbg !1153
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %41) #36, !dbg !1153
  unreachable, !dbg !1153

42:                                               ; preds = %35, %28
  %43 = phi i32 [ 438, %28 ], [ %38, %35 ], !dbg !1112
  call void @llvm.dbg.value(metadata i32 %43, metadata !1089, metadata !DIExpression()), !dbg !1112
  %44 = load i32, ptr @optind, align 4, !dbg !1154, !tbaa !924
  %45 = icmp slt i32 %44, %0, !dbg !1155
  br i1 %45, label %46, label %56, !dbg !1156

46:                                               ; preds = %42
  %47 = add nsw i32 %44, 1, !dbg !1157
  %48 = icmp slt i32 %47, %0, !dbg !1158
  br i1 %48, label %49, label %57, !dbg !1159

49:                                               ; preds = %46
  %50 = sext i32 %47 to i64, !dbg !1160
  %51 = getelementptr inbounds ptr, ptr %1, i64 %50, !dbg !1160
  %52 = load ptr, ptr %51, align 8, !dbg !1160, !tbaa !854
  %53 = load i8, ptr %52, align 1, !dbg !1160, !tbaa !933
  %54 = freeze i8 %53, !dbg !1161
  %55 = icmp eq i8 %54, 112, !dbg !1161
  br i1 %55, label %56, label %57, !dbg !1162

56:                                               ; preds = %42, %49
  br label %57, !dbg !1162

57:                                               ; preds = %46, %49, %56
  %58 = phi i1 [ true, %56 ], [ false, %49 ], [ false, %46 ]
  %59 = phi i32 [ 2, %56 ], [ 4, %49 ], [ 4, %46 ]
  call void @llvm.dbg.value(metadata i32 %59, metadata !1099, metadata !DIExpression()), !dbg !1112
  %60 = sub nsw i32 %0, %44, !dbg !1163
  %61 = icmp slt i32 %60, %59, !dbg !1165
  br i1 %61, label %62, label %82, !dbg !1166

62:                                               ; preds = %57
  br i1 %45, label %65, label %63, !dbg !1167

63:                                               ; preds = %62
  %64 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.21, i32 noundef 5) #36, !dbg !1169
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %64) #36, !dbg !1169
  br label %72, !dbg !1169

65:                                               ; preds = %62
  %66 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.22, i32 noundef 5) #36, !dbg !1171
  %67 = add nsw i32 %0, -1, !dbg !1171
  %68 = sext i32 %67 to i64, !dbg !1171
  %69 = getelementptr inbounds ptr, ptr %1, i64 %68, !dbg !1171
  %70 = load ptr, ptr %69, align 8, !dbg !1171, !tbaa !854
  %71 = tail call ptr @quote(ptr noundef %70) #36, !dbg !1171
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %66, ptr noundef %71) #36, !dbg !1171
  br label %72

72:                                               ; preds = %65, %63
  br i1 %58, label %81, label %73, !dbg !1172

73:                                               ; preds = %72
  %74 = load i32, ptr @optind, align 4, !dbg !1174, !tbaa !924
  %75 = sub nsw i32 %0, %74, !dbg !1175
  %76 = icmp eq i32 %75, 2, !dbg !1176
  br i1 %76, label %77, label %81, !dbg !1177

77:                                               ; preds = %73
  %78 = load ptr, ptr @stderr, align 8, !dbg !1178, !tbaa !854
  %79 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.24, i32 noundef 5) #36, !dbg !1178
  %80 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %78, i32 noundef 1, ptr noundef nonnull @.str.23, ptr noundef %79) #36, !dbg !1178
  br label %81, !dbg !1178

81:                                               ; preds = %77, %73, %72
  tail call void @usage(i32 noundef 1) #40, !dbg !1179
  unreachable, !dbg !1179

82:                                               ; preds = %57
  %83 = icmp slt i32 %59, %60, !dbg !1180
  br i1 %83, label %84, label %101, !dbg !1182

84:                                               ; preds = %82
  %85 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.25, i32 noundef 5) #36, !dbg !1183
  %86 = load i32, ptr @optind, align 4, !dbg !1183, !tbaa !924
  %87 = add nsw i32 %86, %59, !dbg !1183
  %88 = sext i32 %87 to i64, !dbg !1183
  %89 = getelementptr inbounds ptr, ptr %1, i64 %88, !dbg !1183
  %90 = load ptr, ptr %89, align 8, !dbg !1183, !tbaa !854
  %91 = tail call ptr @quote(ptr noundef %90) #36, !dbg !1183
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %85, ptr noundef %91) #36, !dbg !1183
  br i1 %58, label %92, label %100, !dbg !1185

92:                                               ; preds = %84
  %93 = load i32, ptr @optind, align 4, !dbg !1187, !tbaa !924
  %94 = sub nsw i32 %0, %93, !dbg !1188
  %95 = icmp eq i32 %94, 4, !dbg !1189
  br i1 %95, label %96, label %100, !dbg !1190

96:                                               ; preds = %92
  %97 = load ptr, ptr @stderr, align 8, !dbg !1191, !tbaa !854
  %98 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.26, i32 noundef 5) #36, !dbg !1191
  %99 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %97, i32 noundef 1, ptr noundef nonnull @.str.23, ptr noundef %98) #36, !dbg !1191
  br label %100, !dbg !1191

100:                                              ; preds = %96, %92, %84
  tail call void @usage(i32 noundef 1) #40, !dbg !1192
  unreachable, !dbg !1192

101:                                              ; preds = %82
  %102 = add nsw i32 %44, 1, !dbg !1193
  %103 = sext i32 %102 to i64, !dbg !1194
  %104 = getelementptr inbounds ptr, ptr %1, i64 %103, !dbg !1194
  %105 = load ptr, ptr %104, align 8, !dbg !1194, !tbaa !854
  %106 = load i8, ptr %105, align 1, !dbg !1194, !tbaa !933
  %107 = sext i8 %106 to i32, !dbg !1194
  switch i32 %107, label %183 [
    i32 98, label %109
    i32 99, label %108
    i32 117, label %108
    i32 112, label %169
  ], !dbg !1195

108:                                              ; preds = %101, %101
  call void @llvm.dbg.value(metadata i32 8192, metadata !1103, metadata !DIExpression()), !dbg !1112
  br label %109, !dbg !1196

109:                                              ; preds = %101, %108
  %110 = phi i32 [ 8192, %108 ], [ 24576, %101 ], !dbg !1197
  call void @llvm.dbg.value(metadata i32 %110, metadata !1103, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.label(metadata !1111), !dbg !1198
  %111 = add nsw i32 %44, 2, !dbg !1199
  %112 = sext i32 %111 to i64, !dbg !1200
  %113 = getelementptr inbounds ptr, ptr %1, i64 %112, !dbg !1200
  %114 = load ptr, ptr %113, align 8, !dbg !1200, !tbaa !854
  call void @llvm.dbg.value(metadata ptr %114, metadata !1104, metadata !DIExpression()), !dbg !1201
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #36, !dbg !1202
  call void @llvm.dbg.value(metadata ptr %3, metadata !1107, metadata !DIExpression(DW_OP_deref)), !dbg !1201
  %115 = call i32 @xstrtoumax(ptr noundef %114, ptr noundef null, i32 noundef 0, ptr noundef nonnull %3, ptr noundef nonnull @.str.12) #36, !dbg !1203
  %116 = icmp eq i32 %115, 0, !dbg !1205
  %117 = load i64, ptr %3, align 8
  %118 = icmp ult i64 %117, 4294967296
  %119 = select i1 %116, i1 %118, i1 false, !dbg !1206
  call void @llvm.dbg.value(metadata i64 %117, metadata !1107, metadata !DIExpression()), !dbg !1201
  br i1 %119, label %123, label %120, !dbg !1206

120:                                              ; preds = %109
  %121 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.28, i32 noundef 5) #36, !dbg !1207
  %122 = call ptr @quote(ptr noundef %114) #36, !dbg !1207
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %121, ptr noundef %122) #36, !dbg !1207
  unreachable, !dbg !1207

123:                                              ; preds = %109
  %124 = load i32, ptr @optind, align 4, !dbg !1208, !tbaa !924
  %125 = add nsw i32 %124, 3, !dbg !1209
  %126 = sext i32 %125 to i64, !dbg !1210
  %127 = getelementptr inbounds ptr, ptr %1, i64 %126, !dbg !1210
  %128 = load ptr, ptr %127, align 8, !dbg !1210, !tbaa !854
  call void @llvm.dbg.value(metadata ptr %128, metadata !1108, metadata !DIExpression()), !dbg !1201
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #36, !dbg !1211
  call void @llvm.dbg.value(metadata ptr %4, metadata !1109, metadata !DIExpression(DW_OP_deref)), !dbg !1201
  %129 = call i32 @xstrtoumax(ptr noundef %128, ptr noundef null, i32 noundef 0, ptr noundef nonnull %4, ptr noundef nonnull @.str.12) #36, !dbg !1212
  %130 = icmp eq i32 %129, 0, !dbg !1214
  br i1 %130, label %131, label %134, !dbg !1215

131:                                              ; preds = %123
  %132 = load i64, ptr %4, align 8, !dbg !1216, !tbaa !1217
  call void @llvm.dbg.value(metadata i64 %132, metadata !1109, metadata !DIExpression()), !dbg !1201
  %133 = icmp ult i64 %132, 4294967296, !dbg !1219
  br i1 %133, label %137, label %134, !dbg !1220

134:                                              ; preds = %131, %123
  %135 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.29, i32 noundef 5) #36, !dbg !1221
  %136 = call ptr @quote(ptr noundef %128) #36, !dbg !1221
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %135, ptr noundef %136) #36, !dbg !1221
  unreachable, !dbg !1221

137:                                              ; preds = %131
  %138 = load i64, ptr %3, align 8, !dbg !1222, !tbaa !1217
  call void @llvm.dbg.value(metadata i64 %138, metadata !1107, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i64 %138, metadata !1223, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %132, metadata !1229, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1231
  %139 = shl i64 %138, 8, !dbg !1233
  %140 = and i64 %139, 1048320, !dbg !1233
  call void @llvm.dbg.value(metadata i64 %140, metadata !1230, metadata !DIExpression()), !dbg !1231
  %141 = shl i64 %138, 32, !dbg !1233
  %142 = and i64 %141, -17592186044416, !dbg !1233
  call void @llvm.dbg.value(metadata i64 poison, metadata !1230, metadata !DIExpression()), !dbg !1231
  %143 = and i64 %132, 255, !dbg !1233
  call void @llvm.dbg.value(metadata i64 poison, metadata !1230, metadata !DIExpression()), !dbg !1231
  %144 = shl nuw nsw i64 %132, 12, !dbg !1233
  %145 = and i64 %144, 17592184995840, !dbg !1233
  %146 = or i64 %145, %143, !dbg !1233
  %147 = or i64 %146, %140, !dbg !1233
  %148 = or i64 %147, %142, !dbg !1233
  call void @llvm.dbg.value(metadata i64 %148, metadata !1230, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %148, metadata !1110, metadata !DIExpression()), !dbg !1201
  %149 = icmp eq i64 %148, -1, !dbg !1234
  br i1 %149, label %150, label %152, !dbg !1236

150:                                              ; preds = %137
  %151 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.30, i32 noundef 5) #36, !dbg !1237
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %151, ptr noundef %114, ptr noundef %128) #36, !dbg !1237
  unreachable, !dbg !1237

152:                                              ; preds = %137
  %153 = load i32, ptr @optind, align 4, !dbg !1238, !tbaa !924
  %154 = sext i32 %153 to i64, !dbg !1240
  %155 = getelementptr inbounds ptr, ptr %1, i64 %154, !dbg !1240
  %156 = load ptr, ptr %155, align 8, !dbg !1240, !tbaa !854
  %157 = or i32 %110, %43, !dbg !1241
  %158 = call i32 @rpl_mknod(ptr noundef %156, i32 noundef %157, i64 noundef %148) #36, !dbg !1242
  %159 = icmp eq i32 %158, 0, !dbg !1243
  br i1 %159, label %168, label %160, !dbg !1244

160:                                              ; preds = %152
  %161 = tail call ptr @__errno_location() #39, !dbg !1245
  %162 = load i32, ptr %161, align 4, !dbg !1245, !tbaa !924
  %163 = load i32, ptr @optind, align 4, !dbg !1245, !tbaa !924
  %164 = sext i32 %163 to i64, !dbg !1245
  %165 = getelementptr inbounds ptr, ptr %1, i64 %164, !dbg !1245
  %166 = load ptr, ptr %165, align 8, !dbg !1245, !tbaa !854
  %167 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %166) #36, !dbg !1245
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %162, ptr noundef nonnull @.str.31, ptr noundef %167) #36, !dbg !1245
  unreachable, !dbg !1245

168:                                              ; preds = %152
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #36, !dbg !1246
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #36, !dbg !1246
  br label %191, !dbg !1247

169:                                              ; preds = %101
  %170 = sext i32 %44 to i64, !dbg !1248
  %171 = getelementptr inbounds ptr, ptr %1, i64 %170, !dbg !1248
  %172 = load ptr, ptr %171, align 8, !dbg !1248, !tbaa !854
  %173 = tail call i32 @mkfifo(ptr noundef %172, i32 noundef %43) #36, !dbg !1250
  %174 = icmp eq i32 %173, 0, !dbg !1251
  br i1 %174, label %191, label %175, !dbg !1252

175:                                              ; preds = %169
  %176 = tail call ptr @__errno_location() #39, !dbg !1253
  %177 = load i32, ptr %176, align 4, !dbg !1253, !tbaa !924
  %178 = load i32, ptr @optind, align 4, !dbg !1253, !tbaa !924
  %179 = sext i32 %178 to i64, !dbg !1253
  %180 = getelementptr inbounds ptr, ptr %1, i64 %179, !dbg !1253
  %181 = load ptr, ptr %180, align 8, !dbg !1253, !tbaa !854
  %182 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %181) #36, !dbg !1253
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %177, ptr noundef nonnull @.str.31, ptr noundef %182) #36, !dbg !1253
  unreachable, !dbg !1253

183:                                              ; preds = %101
  %184 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.32, i32 noundef 5) #36, !dbg !1254
  %185 = load i32, ptr @optind, align 4, !dbg !1254, !tbaa !924
  %186 = add nsw i32 %185, 1, !dbg !1254
  %187 = sext i32 %186 to i64, !dbg !1254
  %188 = getelementptr inbounds ptr, ptr %1, i64 %187, !dbg !1254
  %189 = load ptr, ptr %188, align 8, !dbg !1254, !tbaa !854
  %190 = tail call ptr @quote(ptr noundef %189) #36, !dbg !1254
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %184, ptr noundef %190) #36, !dbg !1254
  tail call void @usage(i32 noundef 1) #40, !dbg !1255
  unreachable, !dbg !1255

191:                                              ; preds = %169, %168
  br i1 %29, label %208, label %192, !dbg !1256

192:                                              ; preds = %191
  %193 = load i32, ptr @optind, align 4, !dbg !1258, !tbaa !924
  %194 = sext i32 %193 to i64, !dbg !1259
  %195 = getelementptr inbounds ptr, ptr %1, i64 %194, !dbg !1259
  %196 = load ptr, ptr %195, align 8, !dbg !1259, !tbaa !854
  %197 = call i32 @lchmod(ptr noundef %196, i32 noundef %43) #36, !dbg !1260
  %198 = icmp eq i32 %197, 0, !dbg !1261
  br i1 %198, label %208, label %199, !dbg !1262

199:                                              ; preds = %192
  %200 = tail call ptr @__errno_location() #39, !dbg !1263
  %201 = load i32, ptr %200, align 4, !dbg !1263, !tbaa !924
  %202 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.33, i32 noundef 5) #36, !dbg !1263
  %203 = load i32, ptr @optind, align 4, !dbg !1263, !tbaa !924
  %204 = sext i32 %203 to i64, !dbg !1263
  %205 = getelementptr inbounds ptr, ptr %1, i64 %204, !dbg !1263
  %206 = load ptr, ptr %205, align 8, !dbg !1263, !tbaa !854
  %207 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %206) #36, !dbg !1263
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %201, ptr noundef %202, ptr noundef %207) #36, !dbg !1263
  unreachable, !dbg !1263

208:                                              ; preds = %192, %191
  ret i32 0, !dbg !1264
}

; Function Attrs: nounwind
declare !dbg !1265 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1268 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1269 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1272 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1278 i32 @umask(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1282 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #12

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1285 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #12

; Function Attrs: nounwind
declare !dbg !1289 i32 @mkfifo(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1292 i32 @lchmod(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #13 !dbg !1293 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1295, metadata !DIExpression()), !dbg !1296
  store ptr %0, ptr @file_name, align 8, !dbg !1297, !tbaa !854
  ret void, !dbg !1298
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #13 !dbg !1299 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1303, metadata !DIExpression()), !dbg !1304
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !1305, !tbaa !1306
  ret void, !dbg !1308
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1309 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1314, !tbaa !854
  %2 = tail call i32 @close_stream(ptr noundef %1) #36, !dbg !1315
  %3 = icmp eq i32 %2, 0, !dbg !1316
  br i1 %3, label %22, label %4, !dbg !1317

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !1318, !tbaa !1306, !range !1319, !noundef !863
  %6 = icmp eq i8 %5, 0, !dbg !1318
  br i1 %6, label %11, label %7, !dbg !1320

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #39, !dbg !1321
  %9 = load i32, ptr %8, align 4, !dbg !1321, !tbaa !924
  %10 = icmp eq i32 %9, 32, !dbg !1322
  br i1 %10, label %22, label %11, !dbg !1323

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.1.40, i32 noundef 5) #36, !dbg !1324
  call void @llvm.dbg.value(metadata ptr %12, metadata !1311, metadata !DIExpression()), !dbg !1325
  %13 = load ptr, ptr @file_name, align 8, !dbg !1326, !tbaa !854
  %14 = icmp eq ptr %13, null, !dbg !1326
  %15 = tail call ptr @__errno_location() #39, !dbg !1328
  %16 = load i32, ptr %15, align 4, !dbg !1328, !tbaa !924
  br i1 %14, label %19, label %17, !dbg !1329

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #36, !dbg !1330
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.41, ptr noundef %18, ptr noundef %12) #36, !dbg !1330
  br label %20, !dbg !1330

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.42, ptr noundef %12) #36, !dbg !1331
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1332, !tbaa !924
  tail call void @_exit(i32 noundef %21) #38, !dbg !1333
  unreachable, !dbg !1333

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1334, !tbaa !854
  %24 = tail call i32 @close_stream(ptr noundef %23) #36, !dbg !1336
  %25 = icmp eq i32 %24, 0, !dbg !1337
  br i1 %25, label %28, label %26, !dbg !1338

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1339, !tbaa !924
  tail call void @_exit(i32 noundef %27) #38, !dbg !1340
  unreachable, !dbg !1340

28:                                               ; preds = %22
  ret void, !dbg !1341
}

; Function Attrs: noreturn
declare !dbg !1342 void @_exit(i32 noundef) local_unnamed_addr #14

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #15 !dbg !1344 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1348, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata i32 %1, metadata !1349, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata ptr %2, metadata !1350, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata ptr %3, metadata !1351, metadata !DIExpression()), !dbg !1352
  tail call fastcc void @flush_stdout(), !dbg !1353
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !1354, !tbaa !854
  %6 = icmp eq ptr %5, null, !dbg !1354
  br i1 %6, label %8, label %7, !dbg !1356

7:                                                ; preds = %4
  tail call void %5() #36, !dbg !1357
  br label %12, !dbg !1357

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !1358, !tbaa !854
  %10 = tail call ptr @getprogname() #37, !dbg !1358
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.43, ptr noundef %10) #36, !dbg !1358
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !1360
  ret void, !dbg !1361
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1362 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1364, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i32 1, metadata !1366, metadata !DIExpression()), !dbg !1371
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #36, !dbg !1374
  %2 = icmp slt i32 %1, 0, !dbg !1375
  br i1 %2, label %6, label %3, !dbg !1376

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1377, !tbaa !854
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #36, !dbg !1377
  br label %6, !dbg !1377

6:                                                ; preds = %3, %0
  ret void, !dbg !1378
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !1379 {
  %5 = alloca [1024 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1381, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i32 %1, metadata !1382, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata ptr %2, metadata !1383, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata ptr %3, metadata !1384, metadata !DIExpression()), !dbg !1385
  %6 = load ptr, ptr @stderr, align 8, !dbg !1386, !tbaa !854
  call void @llvm.dbg.value(metadata ptr %6, metadata !1387, metadata !DIExpression()), !dbg !1429
  call void @llvm.dbg.value(metadata ptr %2, metadata !1427, metadata !DIExpression()), !dbg !1429
  call void @llvm.dbg.value(metadata ptr %3, metadata !1428, metadata !DIExpression()), !dbg !1429
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #36, !dbg !1431
  %8 = load i32, ptr @error_message_count, align 4, !dbg !1432, !tbaa !924
  %9 = add i32 %8, 1, !dbg !1432
  store i32 %9, ptr @error_message_count, align 4, !dbg !1432, !tbaa !924
  %10 = icmp eq i32 %1, 0, !dbg !1433
  br i1 %10, label %20, label %11, !dbg !1435

11:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1436, metadata !DIExpression()), !dbg !1444
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #36, !dbg !1446
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1440, metadata !DIExpression()), !dbg !1447
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #36, !dbg !1448
  call void @llvm.dbg.value(metadata ptr %12, metadata !1439, metadata !DIExpression()), !dbg !1444
  %13 = icmp eq ptr %12, null, !dbg !1449
  br i1 %13, label %14, label %16, !dbg !1451

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.44, ptr noundef nonnull @.str.5.45, i32 noundef 5) #36, !dbg !1452
  call void @llvm.dbg.value(metadata ptr %15, metadata !1439, metadata !DIExpression()), !dbg !1444
  br label %16, !dbg !1453

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !1444
  call void @llvm.dbg.value(metadata ptr %17, metadata !1439, metadata !DIExpression()), !dbg !1444
  %18 = load ptr, ptr @stderr, align 8, !dbg !1454, !tbaa !854
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.46, ptr noundef %17) #36, !dbg !1454
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #36, !dbg !1455
  br label %20, !dbg !1456

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !1457, !tbaa !854
  call void @llvm.dbg.value(metadata i32 10, metadata !1458, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata ptr %21, metadata !1464, metadata !DIExpression()), !dbg !1465
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !1467
  %23 = load ptr, ptr %22, align 8, !dbg !1467, !tbaa !1468
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !1467
  %25 = load ptr, ptr %24, align 8, !dbg !1467, !tbaa !1470
  %26 = icmp ult ptr %23, %25, !dbg !1467
  br i1 %26, label %29, label %27, !dbg !1467, !prof !1471

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #36, !dbg !1467
  br label %31, !dbg !1467

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !1467
  store ptr %30, ptr %22, align 8, !dbg !1467, !tbaa !1468
  store i8 10, ptr %23, align 1, !dbg !1467, !tbaa !933
  br label %31, !dbg !1467

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !1472, !tbaa !854
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #36, !dbg !1472
  %34 = icmp eq i32 %0, 0, !dbg !1473
  br i1 %34, label %36, label %35, !dbg !1475

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #38, !dbg !1476
  unreachable, !dbg !1476

36:                                               ; preds = %31
  ret void, !dbg !1477
}

declare !dbg !1478 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1481 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1484 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1487 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1490 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1494 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1498, metadata !DIExpression()), !dbg !1507
  call void @llvm.dbg.value(metadata i32 %1, metadata !1499, metadata !DIExpression()), !dbg !1507
  call void @llvm.dbg.value(metadata ptr %2, metadata !1500, metadata !DIExpression()), !dbg !1507
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #36, !dbg !1508
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1501, metadata !DIExpression()), !dbg !1509
  call void @llvm.va_start(ptr nonnull %4), !dbg !1510
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #41, !dbg !1511
  call void @llvm.va_end(ptr nonnull %4), !dbg !1512
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #36, !dbg !1513
  ret void, !dbg !1513
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #15 !dbg !460 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !472, metadata !DIExpression()), !dbg !1514
  call void @llvm.dbg.value(metadata i32 %1, metadata !473, metadata !DIExpression()), !dbg !1514
  call void @llvm.dbg.value(metadata ptr %2, metadata !474, metadata !DIExpression()), !dbg !1514
  call void @llvm.dbg.value(metadata i32 %3, metadata !475, metadata !DIExpression()), !dbg !1514
  call void @llvm.dbg.value(metadata ptr %4, metadata !476, metadata !DIExpression()), !dbg !1514
  call void @llvm.dbg.value(metadata ptr %5, metadata !477, metadata !DIExpression()), !dbg !1514
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !1515, !tbaa !924
  %8 = icmp eq i32 %7, 0, !dbg !1515
  br i1 %8, label %23, label %9, !dbg !1517

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1518, !tbaa !924
  %11 = icmp eq i32 %10, %3, !dbg !1521
  br i1 %11, label %12, label %22, !dbg !1522

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1523, !tbaa !854
  %14 = icmp eq ptr %13, %2, !dbg !1524
  br i1 %14, label %36, label %15, !dbg !1525

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !1526
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !1527
  br i1 %18, label %19, label %22, !dbg !1527

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #37, !dbg !1528
  %21 = icmp eq i32 %20, 0, !dbg !1529
  br i1 %21, label %36, label %22, !dbg !1530

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1531, !tbaa !854
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1532, !tbaa !924
  br label %23, !dbg !1533

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !1534
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !1535, !tbaa !854
  %25 = icmp eq ptr %24, null, !dbg !1535
  br i1 %25, label %27, label %26, !dbg !1537

26:                                               ; preds = %23
  tail call void %24() #36, !dbg !1538
  br label %31, !dbg !1538

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !1539, !tbaa !854
  %29 = tail call ptr @getprogname() #37, !dbg !1539
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.49, ptr noundef %29) #36, !dbg !1539
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !1541, !tbaa !854
  %33 = icmp eq ptr %2, null, !dbg !1541
  %34 = select i1 %33, ptr @.str.3.50, ptr @.str.2.51, !dbg !1541
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #36, !dbg !1541
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !1542
  br label %36, !dbg !1543

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !1543
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1544 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1548, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i32 %1, metadata !1549, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata ptr %2, metadata !1550, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i32 %3, metadata !1551, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata ptr %4, metadata !1552, metadata !DIExpression()), !dbg !1554
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #36, !dbg !1555
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1553, metadata !DIExpression()), !dbg !1556
  call void @llvm.va_start(ptr nonnull %6), !dbg !1557
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #41, !dbg !1558
  call void @llvm.va_end(ptr nonnull %6), !dbg !1559
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #36, !dbg !1560
  ret void, !dbg !1560
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #17 !dbg !1561 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1564, !tbaa !854
  ret ptr %1, !dbg !1565
}

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_mknod(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !1566 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1570, metadata !DIExpression()), !dbg !1573
  call void @llvm.dbg.value(metadata i32 %1, metadata !1571, metadata !DIExpression()), !dbg !1573
  call void @llvm.dbg.value(metadata i64 %2, metadata !1572, metadata !DIExpression()), !dbg !1573
  %4 = and i32 %1, 61440, !dbg !1574
  %5 = icmp eq i32 %4, 4096, !dbg !1574
  %6 = icmp eq i64 %2, 0
  %7 = and i1 %5, %6, !dbg !1576
  br i1 %7, label %8, label %11, !dbg !1576

8:                                                ; preds = %3
  %9 = and i32 %1, -4097, !dbg !1577
  %10 = tail call i32 @mkfifo(ptr noundef nonnull %0, i32 noundef %9) #36, !dbg !1578
  br label %13, !dbg !1579

11:                                               ; preds = %3
  %12 = tail call i32 @mknod(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %2) #36, !dbg !1580
  br label %13, !dbg !1581

13:                                               ; preds = %11, %8
  %14 = phi i32 [ %10, %8 ], [ %12, %11 ], !dbg !1573
  ret i32 %14, !dbg !1582
}

; Function Attrs: nounwind
declare !dbg !1583 i32 @mknod(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @mode_compile(ptr noundef %0) local_unnamed_addr #10 !dbg !1586 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1598, metadata !DIExpression()), !dbg !1628
  %2 = load i8, ptr %0, align 1, !dbg !1629, !tbaa !933
  %3 = and i8 %2, -8, !dbg !1630
  %4 = icmp eq i8 %3, 48, !dbg !1630
  br i1 %4, label %5, label %34, !dbg !1630

5:                                                ; preds = %1, %14
  %6 = phi i8 [ %16, %14 ], [ %2, %1 ], !dbg !1631
  %7 = phi i32 [ %12, %14 ], [ 0, %1 ], !dbg !1633
  %8 = phi ptr [ %15, %14 ], [ %0, %1 ], !dbg !1633
  call void @llvm.dbg.value(metadata ptr %8, metadata !1599, metadata !DIExpression()), !dbg !1633
  call void @llvm.dbg.value(metadata i32 %7, metadata !1602, metadata !DIExpression()), !dbg !1633
  %9 = shl i32 %7, 3, !dbg !1634
  call void @llvm.dbg.value(metadata ptr %8, metadata !1599, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1633
  %10 = zext i8 %6 to i32, !dbg !1631
  %11 = add i32 %9, -48, !dbg !1635
  %12 = add i32 %11, %10, !dbg !1636
  call void @llvm.dbg.value(metadata i32 %12, metadata !1602, metadata !DIExpression()), !dbg !1633
  %13 = icmp ugt i32 %12, 4095, !dbg !1637
  br i1 %13, label %142, label %14, !dbg !1639

14:                                               ; preds = %5
  %15 = getelementptr inbounds i8, ptr %8, i64 1, !dbg !1640
  call void @llvm.dbg.value(metadata ptr %15, metadata !1599, metadata !DIExpression()), !dbg !1633
  %16 = load i8, ptr %15, align 1, !dbg !1641, !tbaa !933
  %17 = and i8 %16, -8, !dbg !1642
  %18 = icmp eq i8 %17, 48, !dbg !1642
  br i1 %18, label %5, label %19, !dbg !1642, !llvm.loop !1643

19:                                               ; preds = %14
  %20 = icmp eq i8 %16, 0, !dbg !1646
  br i1 %20, label %21, label %142, !dbg !1648

21:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i32 %12, metadata !1603, metadata !DIExpression()), !dbg !1633
  %22 = ptrtoint ptr %15 to i64, !dbg !1649
  %23 = ptrtoint ptr %0 to i64, !dbg !1649
  %24 = sub i64 %22, %23, !dbg !1649
  %25 = icmp slt i64 %24, 5, !dbg !1650
  %26 = or i32 %12, 1023, !dbg !1651
  %27 = select i1 %25, i32 %26, i32 4095, !dbg !1651
  call void @llvm.dbg.value(metadata i32 %27, metadata !1604, metadata !DIExpression()), !dbg !1633
  call void @llvm.dbg.value(metadata i32 %12, metadata !1652, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i32 %27, metadata !1657, metadata !DIExpression()), !dbg !1659
  %28 = tail call noalias nonnull dereferenceable(32) ptr @xmalloc(i64 noundef 32) #42, !dbg !1661
  call void @llvm.dbg.value(metadata ptr %28, metadata !1658, metadata !DIExpression()), !dbg !1659
  store i8 61, ptr %28, align 4, !dbg !1662, !tbaa !1663
  %29 = getelementptr inbounds %struct.mode_change, ptr %28, i64 0, i32 1, !dbg !1665
  store i8 1, ptr %29, align 1, !dbg !1666, !tbaa !1667
  %30 = getelementptr inbounds %struct.mode_change, ptr %28, i64 0, i32 2, !dbg !1668
  store i32 4095, ptr %30, align 4, !dbg !1669, !tbaa !1670
  %31 = getelementptr inbounds %struct.mode_change, ptr %28, i64 0, i32 3, !dbg !1671
  store i32 %12, ptr %31, align 4, !dbg !1672, !tbaa !1673
  %32 = getelementptr inbounds %struct.mode_change, ptr %28, i64 0, i32 4, !dbg !1674
  store i32 %27, ptr %32, align 4, !dbg !1675, !tbaa !1676
  %33 = getelementptr inbounds %struct.mode_change, ptr %28, i64 1, i32 1, !dbg !1677
  store i8 0, ptr %33, align 1, !dbg !1678, !tbaa !1667
  br label %142, !dbg !1679

34:                                               ; preds = %1, %41
  %35 = phi i8 [ %45, %41 ], [ %2, %1 ], !dbg !1680
  %36 = phi i64 [ %43, %41 ], [ 1, %1 ], !dbg !1682
  %37 = phi ptr [ %44, %41 ], [ %0, %1 ], !dbg !1683
  call void @llvm.dbg.value(metadata ptr %37, metadata !1608, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i64 %36, metadata !1606, metadata !DIExpression()), !dbg !1682
  switch i8 %35, label %40 [
    i8 0, label %38
    i8 61, label %41
    i8 43, label %41
    i8 45, label %41
  ], !dbg !1685

38:                                               ; preds = %34
  %39 = tail call noalias nonnull ptr @xnmalloc(i64 noundef %36, i64 noundef 16) #43, !dbg !1686
  call void @llvm.dbg.value(metadata ptr %39, metadata !1605, metadata !DIExpression()), !dbg !1628
  call void @llvm.dbg.value(metadata i64 0, metadata !1610, metadata !DIExpression()), !dbg !1628
  call void @llvm.dbg.value(metadata ptr %0, metadata !1611, metadata !DIExpression()), !dbg !1628
  br label %46, !dbg !1687

40:                                               ; preds = %34
  br label %41, !dbg !1688

41:                                               ; preds = %34, %34, %34, %40
  %42 = phi i64 [ 0, %40 ], [ 1, %34 ], [ 1, %34 ], [ 1, %34 ]
  %43 = add i64 %42, %36, !dbg !1689
  call void @llvm.dbg.value(metadata i64 %43, metadata !1606, metadata !DIExpression()), !dbg !1682
  %44 = getelementptr inbounds i8, ptr %37, i64 1, !dbg !1690
  call void @llvm.dbg.value(metadata ptr %44, metadata !1608, metadata !DIExpression()), !dbg !1684
  %45 = load i8, ptr %44, align 1, !dbg !1680, !tbaa !933
  br label %34, !dbg !1691, !llvm.loop !1692

46:                                               ; preds = %137, %38
  %47 = phi i64 [ 0, %38 ], [ %125, %137 ], !dbg !1694
  %48 = phi ptr [ %0, %38 ], [ %138, %137 ], !dbg !1695
  call void @llvm.dbg.value(metadata i32 poison, metadata !1618, metadata !DIExpression()), !dbg !1696
  call void @llvm.dbg.value(metadata ptr %48, metadata !1611, metadata !DIExpression()), !dbg !1628
  call void @llvm.dbg.value(metadata i64 %47, metadata !1610, metadata !DIExpression()), !dbg !1628
  call void @llvm.dbg.value(metadata i32 0, metadata !1612, metadata !DIExpression()), !dbg !1697
  br label %49, !dbg !1698

49:                                               ; preds = %61, %46
  %50 = phi ptr [ %48, %46 ], [ %63, %61 ], !dbg !1699
  %51 = phi i32 [ 0, %46 ], [ %62, %61 ], !dbg !1697
  call void @llvm.dbg.value(metadata i32 %51, metadata !1612, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata ptr %50, metadata !1611, metadata !DIExpression()), !dbg !1628
  %52 = load i8, ptr %50, align 1, !dbg !1700, !tbaa !933
  %53 = sext i8 %52 to i32, !dbg !1700
  switch i32 %53, label %141 [
    i32 117, label %55
    i32 103, label %57
    i32 111, label %59
    i32 97, label %61
    i32 61, label %54
    i32 43, label %54
    i32 45, label %54
  ], !dbg !1703

54:                                               ; preds = %49, %49, %49
  br label %64, !dbg !1704

55:                                               ; preds = %49
  %56 = or i32 %51, 2496, !dbg !1705
  call void @llvm.dbg.value(metadata i32 %56, metadata !1612, metadata !DIExpression()), !dbg !1697
  br label %61, !dbg !1707

57:                                               ; preds = %49
  %58 = or i32 %51, 1080, !dbg !1708
  call void @llvm.dbg.value(metadata i32 %58, metadata !1612, metadata !DIExpression()), !dbg !1697
  br label %61, !dbg !1709

59:                                               ; preds = %49
  %60 = or i32 %51, 519, !dbg !1710
  call void @llvm.dbg.value(metadata i32 %60, metadata !1612, metadata !DIExpression()), !dbg !1697
  br label %61, !dbg !1711

61:                                               ; preds = %49, %55, %57, %59
  %62 = phi i32 [ %60, %59 ], [ %58, %57 ], [ %56, %55 ], [ 4095, %49 ], !dbg !1712
  call void @llvm.dbg.value(metadata i32 %62, metadata !1612, metadata !DIExpression()), !dbg !1697
  %63 = getelementptr inbounds i8, ptr %50, i64 1, !dbg !1713
  call void @llvm.dbg.value(metadata ptr %63, metadata !1611, metadata !DIExpression()), !dbg !1628
  br label %49, !dbg !1714, !llvm.loop !1715

64:                                               ; preds = %136, %54
  %65 = phi i8 [ %52, %54 ], [ %135, %136 ], !dbg !1718
  %66 = phi i64 [ %47, %54 ], [ %125, %136 ], !dbg !1628
  %67 = phi ptr [ %50, %54 ], [ %118, %136 ], !dbg !1699
  %68 = phi i32 [ %51, %54 ], [ %124, %136 ], !dbg !1719
  call void @llvm.dbg.value(metadata i32 poison, metadata !1618, metadata !DIExpression()), !dbg !1696
  call void @llvm.dbg.value(metadata i32 %68, metadata !1612, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata ptr %67, metadata !1611, metadata !DIExpression()), !dbg !1628
  call void @llvm.dbg.value(metadata i64 %66, metadata !1610, metadata !DIExpression()), !dbg !1628
  %69 = getelementptr inbounds i8, ptr %67, i64 1, !dbg !1720
  call void @llvm.dbg.value(metadata ptr %69, metadata !1611, metadata !DIExpression()), !dbg !1628
  call void @llvm.dbg.value(metadata i8 %65, metadata !1616, metadata !DIExpression()), !dbg !1696
  call void @llvm.dbg.value(metadata i32 0, metadata !1619, metadata !DIExpression()), !dbg !1696
  call void @llvm.dbg.value(metadata i8 3, metadata !1620, metadata !DIExpression()), !dbg !1696
  %70 = load i8, ptr %69, align 1, !dbg !1721, !tbaa !933
  %71 = sext i8 %70 to i32, !dbg !1721
  switch i32 %71, label %96 [
    i32 48, label %72
    i32 49, label %72
    i32 50, label %72
    i32 51, label %72
    i32 52, label %72
    i32 53, label %72
    i32 54, label %72
    i32 55, label %72
    i32 117, label %90
    i32 103, label %92
    i32 111, label %94
  ], !dbg !1704

72:                                               ; preds = %64, %64, %64, %64, %64, %64, %64, %64
  br label %73, !dbg !1722

73:                                               ; preds = %72, %82
  %74 = phi i8 [ %84, %82 ], [ %70, %72 ], !dbg !1723
  %75 = phi ptr [ %83, %82 ], [ %69, %72 ], !dbg !1696
  %76 = phi i32 [ %80, %82 ], [ 0, %72 ], !dbg !1725
  call void @llvm.dbg.value(metadata i32 %76, metadata !1621, metadata !DIExpression()), !dbg !1725
  call void @llvm.dbg.value(metadata ptr %75, metadata !1611, metadata !DIExpression()), !dbg !1628
  %77 = shl i32 %76, 3, !dbg !1726
  call void @llvm.dbg.value(metadata ptr %75, metadata !1611, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1628
  %78 = sext i8 %74 to i32, !dbg !1723
  %79 = add i32 %77, -48, !dbg !1727
  %80 = add i32 %79, %78, !dbg !1728
  call void @llvm.dbg.value(metadata i32 %80, metadata !1621, metadata !DIExpression()), !dbg !1725
  %81 = icmp ugt i32 %80, 4095, !dbg !1729
  br i1 %81, label %141, label %82, !dbg !1731

82:                                               ; preds = %73
  %83 = getelementptr inbounds i8, ptr %75, i64 1, !dbg !1732
  call void @llvm.dbg.value(metadata ptr %83, metadata !1611, metadata !DIExpression()), !dbg !1628
  %84 = load i8, ptr %83, align 1, !dbg !1733, !tbaa !933
  %85 = and i8 %84, -8, !dbg !1734
  %86 = icmp eq i8 %85, 48, !dbg !1734
  br i1 %86, label %73, label %87, !dbg !1734, !llvm.loop !1735

87:                                               ; preds = %82
  %88 = icmp eq i32 %68, 0, !dbg !1737
  br i1 %88, label %89, label %141, !dbg !1739

89:                                               ; preds = %87
  switch i8 %84, label %141 [
    i8 0, label %117
    i8 44, label %117
  ], !dbg !1740

90:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i32 448, metadata !1618, metadata !DIExpression()), !dbg !1696
  %91 = getelementptr inbounds i8, ptr %67, i64 2, !dbg !1741
  call void @llvm.dbg.value(metadata ptr %91, metadata !1611, metadata !DIExpression()), !dbg !1628
  br label %117, !dbg !1742

92:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i32 56, metadata !1618, metadata !DIExpression()), !dbg !1696
  %93 = getelementptr inbounds i8, ptr %67, i64 2, !dbg !1743
  call void @llvm.dbg.value(metadata ptr %93, metadata !1611, metadata !DIExpression()), !dbg !1628
  br label %117, !dbg !1744

94:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i32 7, metadata !1618, metadata !DIExpression()), !dbg !1696
  %95 = getelementptr inbounds i8, ptr %67, i64 2, !dbg !1745
  call void @llvm.dbg.value(metadata ptr %95, metadata !1611, metadata !DIExpression()), !dbg !1628
  br label %117, !dbg !1746

96:                                               ; preds = %64, %112
  %97 = phi i8 [ %116, %112 ], [ %70, %64 ], !dbg !1747
  %98 = phi ptr [ %115, %112 ], [ %69, %64 ], !dbg !1696
  %99 = phi i32 [ %113, %112 ], [ 0, %64 ], !dbg !1750
  %100 = phi i8 [ %114, %112 ], [ 1, %64 ], !dbg !1751
  call void @llvm.dbg.value(metadata i8 %100, metadata !1620, metadata !DIExpression()), !dbg !1696
  call void @llvm.dbg.value(metadata i32 %99, metadata !1618, metadata !DIExpression()), !dbg !1696
  call void @llvm.dbg.value(metadata ptr %98, metadata !1611, metadata !DIExpression()), !dbg !1628
  %101 = sext i8 %97 to i32, !dbg !1747
  switch i32 %101, label %117 [
    i32 114, label %102
    i32 119, label %104
    i32 120, label %106
    i32 88, label %112
    i32 115, label %108
    i32 116, label %110
  ], !dbg !1752

102:                                              ; preds = %96
  %103 = or i32 %99, 292, !dbg !1753
  call void @llvm.dbg.value(metadata i32 %103, metadata !1618, metadata !DIExpression()), !dbg !1696
  br label %112, !dbg !1755

104:                                              ; preds = %96
  %105 = or i32 %99, 146, !dbg !1756
  call void @llvm.dbg.value(metadata i32 %105, metadata !1618, metadata !DIExpression()), !dbg !1696
  br label %112, !dbg !1757

106:                                              ; preds = %96
  %107 = or i32 %99, 73, !dbg !1758
  call void @llvm.dbg.value(metadata i32 %107, metadata !1618, metadata !DIExpression()), !dbg !1696
  br label %112, !dbg !1759

108:                                              ; preds = %96
  %109 = or i32 %99, 3072, !dbg !1760
  call void @llvm.dbg.value(metadata i32 %109, metadata !1618, metadata !DIExpression()), !dbg !1696
  br label %112, !dbg !1761

110:                                              ; preds = %96
  %111 = or i32 %99, 512, !dbg !1762
  call void @llvm.dbg.value(metadata i32 %111, metadata !1618, metadata !DIExpression()), !dbg !1696
  br label %112, !dbg !1763

112:                                              ; preds = %96, %102, %104, %106, %108, %110
  %113 = phi i32 [ %111, %110 ], [ %109, %108 ], [ %107, %106 ], [ %105, %104 ], [ %103, %102 ], [ %99, %96 ], !dbg !1750
  %114 = phi i8 [ %100, %110 ], [ %100, %108 ], [ %100, %106 ], [ %100, %104 ], [ %100, %102 ], [ 2, %96 ], !dbg !1750
  call void @llvm.dbg.value(metadata i8 %114, metadata !1620, metadata !DIExpression()), !dbg !1696
  call void @llvm.dbg.value(metadata i32 %113, metadata !1618, metadata !DIExpression()), !dbg !1696
  %115 = getelementptr inbounds i8, ptr %98, i64 1, !dbg !1764
  call void @llvm.dbg.value(metadata ptr %115, metadata !1611, metadata !DIExpression()), !dbg !1628
  %116 = load i8, ptr %115, align 1, !dbg !1747, !tbaa !933
  br label %96, !dbg !1765, !llvm.loop !1766

117:                                              ; preds = %96, %89, %89, %94, %92, %90
  %118 = phi ptr [ %95, %94 ], [ %93, %92 ], [ %91, %90 ], [ %83, %89 ], [ %83, %89 ], [ %98, %96 ], !dbg !1696
  %119 = phi i32 [ %68, %94 ], [ %68, %92 ], [ %68, %90 ], [ 4095, %89 ], [ 4095, %89 ], [ %68, %96 ], !dbg !1719
  %120 = phi i32 [ 7, %94 ], [ 56, %92 ], [ 448, %90 ], [ %80, %89 ], [ %80, %89 ], [ %99, %96 ]
  %121 = phi i1 [ true, %94 ], [ true, %92 ], [ true, %90 ], [ false, %89 ], [ false, %89 ], [ true, %96 ], !dbg !1769
  %122 = phi i32 [ 0, %94 ], [ 0, %92 ], [ 0, %90 ], [ 4095, %89 ], [ 4095, %89 ], [ 0, %96 ], !dbg !1769
  %123 = phi i8 [ 3, %94 ], [ 3, %92 ], [ 3, %90 ], [ 1, %89 ], [ 1, %89 ], [ %100, %96 ], !dbg !1696
  %124 = freeze i32 %119, !dbg !1770
  call void @llvm.dbg.value(metadata i8 %123, metadata !1620, metadata !DIExpression()), !dbg !1696
  call void @llvm.dbg.value(metadata i32 %122, metadata !1619, metadata !DIExpression()), !dbg !1696
  call void @llvm.dbg.value(metadata i32 %120, metadata !1618, metadata !DIExpression()), !dbg !1696
  call void @llvm.dbg.value(metadata i32 %119, metadata !1612, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata ptr %118, metadata !1611, metadata !DIExpression()), !dbg !1628
  %125 = add i64 %66, 1, !dbg !1771
  call void @llvm.dbg.value(metadata i64 %125, metadata !1610, metadata !DIExpression()), !dbg !1628
  %126 = getelementptr inbounds %struct.mode_change, ptr %39, i64 %66, !dbg !1772
  call void @llvm.dbg.value(metadata ptr %126, metadata !1624, metadata !DIExpression()), !dbg !1696
  store i8 %65, ptr %126, align 4, !dbg !1773, !tbaa !1663
  %127 = getelementptr inbounds %struct.mode_change, ptr %39, i64 %66, i32 1, !dbg !1774
  store i8 %123, ptr %127, align 1, !dbg !1775, !tbaa !1667
  %128 = getelementptr inbounds %struct.mode_change, ptr %39, i64 %66, i32 2, !dbg !1776
  store i32 %124, ptr %128, align 4, !dbg !1777, !tbaa !1670
  %129 = getelementptr inbounds %struct.mode_change, ptr %39, i64 %66, i32 3, !dbg !1778
  store i32 %120, ptr %129, align 4, !dbg !1779, !tbaa !1673
  %130 = icmp eq i32 %124, 0, !dbg !1770
  %131 = select i1 %130, i32 -1, i32 %124, !dbg !1770
  %132 = and i32 %131, %120, !dbg !1770
  %133 = select i1 %121, i32 %132, i32 %122, !dbg !1770
  %134 = getelementptr inbounds %struct.mode_change, ptr %39, i64 %66, i32 4, !dbg !1780
  store i32 %133, ptr %134, align 4, !dbg !1781, !tbaa !1676
  %135 = load i8, ptr %118, align 1, !dbg !1782, !tbaa !933
  switch i8 %135, label %141 [
    i8 61, label %136
    i8 43, label %136
    i8 45, label %136
    i8 44, label %137
    i8 0, label %139
  ], !dbg !1783

136:                                              ; preds = %117, %117, %117
  br label %64, !dbg !1696

137:                                              ; preds = %117
  call void @llvm.dbg.value(metadata i32 poison, metadata !1618, metadata !DIExpression()), !dbg !1696
  call void @llvm.dbg.value(metadata ptr %118, metadata !1611, metadata !DIExpression()), !dbg !1628
  call void @llvm.dbg.value(metadata i64 %125, metadata !1610, metadata !DIExpression()), !dbg !1628
  %138 = getelementptr inbounds i8, ptr %118, i64 1, !dbg !1784
  call void @llvm.dbg.value(metadata ptr %138, metadata !1611, metadata !DIExpression()), !dbg !1628
  br label %46, !dbg !1785, !llvm.loop !1786

139:                                              ; preds = %117
  %140 = getelementptr inbounds %struct.mode_change, ptr %39, i64 %125, i32 1, !dbg !1789
  store i8 0, ptr %140, align 1, !dbg !1792, !tbaa !1667
  br label %142, !dbg !1793

141:                                              ; preds = %49, %87, %89, %117, %73
  call void @llvm.dbg.label(metadata !1627), !dbg !1794
  tail call void @free(ptr noundef nonnull %39) #36, !dbg !1795
  br label %142, !dbg !1796

142:                                              ; preds = %5, %139, %141, %21, %19
  %143 = phi ptr [ %28, %21 ], [ null, %19 ], [ null, %141 ], [ %39, %139 ], [ null, %5 ]
  ret ptr %143, !dbg !1797
}

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @mode_create_from_ref(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !1798 {
  %2 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !1800, metadata !DIExpression()), !dbg !1834
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %2) #36, !dbg !1835
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1801, metadata !DIExpression()), !dbg !1836
  %3 = call i32 @stat(ptr noundef %0, ptr noundef nonnull %2) #36, !dbg !1837
  %4 = icmp eq i32 %3, 0, !dbg !1839
  br i1 %4, label %5, label %14, !dbg !1840

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 3, !dbg !1841
  %7 = load i32, ptr %6, align 8, !dbg !1841, !tbaa !1842
  call void @llvm.dbg.value(metadata i32 %7, metadata !1652, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i32 4095, metadata !1657, metadata !DIExpression()), !dbg !1845
  %8 = tail call noalias nonnull dereferenceable(32) ptr @xmalloc(i64 noundef 32) #42, !dbg !1847
  call void @llvm.dbg.value(metadata ptr %8, metadata !1658, metadata !DIExpression()), !dbg !1845
  store i8 61, ptr %8, align 4, !dbg !1848, !tbaa !1663
  %9 = getelementptr inbounds %struct.mode_change, ptr %8, i64 0, i32 1, !dbg !1849
  store i8 1, ptr %9, align 1, !dbg !1850, !tbaa !1667
  %10 = getelementptr inbounds %struct.mode_change, ptr %8, i64 0, i32 2, !dbg !1851
  store i32 4095, ptr %10, align 4, !dbg !1852, !tbaa !1670
  %11 = getelementptr inbounds %struct.mode_change, ptr %8, i64 0, i32 3, !dbg !1853
  store i32 %7, ptr %11, align 4, !dbg !1854, !tbaa !1673
  %12 = getelementptr inbounds %struct.mode_change, ptr %8, i64 0, i32 4, !dbg !1855
  store i32 4095, ptr %12, align 4, !dbg !1856, !tbaa !1676
  %13 = getelementptr inbounds %struct.mode_change, ptr %8, i64 1, i32 1, !dbg !1857
  store i8 0, ptr %13, align 1, !dbg !1858, !tbaa !1667
  br label %14, !dbg !1859

14:                                               ; preds = %1, %5
  %15 = phi ptr [ %8, %5 ], [ null, %1 ], !dbg !1834
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %2) #36, !dbg !1860
  ret ptr %15, !dbg !1860
}

; Function Attrs: nofree nounwind
declare !dbg !1861 noundef i32 @stat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @mode_adjust(i32 noundef %0, i1 noundef zeroext %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr noundef writeonly %4) local_unnamed_addr #18 !dbg !1866 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1873, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.value(metadata i1 %1, metadata !1874, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1889
  call void @llvm.dbg.value(metadata i32 %2, metadata !1875, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.value(metadata ptr %3, metadata !1876, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.value(metadata ptr %4, metadata !1877, metadata !DIExpression()), !dbg !1889
  %6 = and i32 %0, 4095, !dbg !1890
  call void @llvm.dbg.value(metadata i32 %6, metadata !1878, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.value(metadata i32 0, metadata !1879, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.value(metadata ptr %3, metadata !1876, metadata !DIExpression()), !dbg !1889
  %7 = getelementptr inbounds %struct.mode_change, ptr %3, i64 0, i32 1, !dbg !1891
  %8 = load i8, ptr %7, align 1, !dbg !1891, !tbaa !1667
  %9 = icmp eq i8 %8, 0, !dbg !1892
  br i1 %9, label %80, label %10, !dbg !1893

10:                                               ; preds = %5
  %11 = select i1 %1, i32 3072, i32 0
  %12 = zext i1 %1 to i32
  %13 = xor i32 %2, -1
  br label %14, !dbg !1893

14:                                               ; preds = %10, %73
  %15 = phi i8 [ %8, %10 ], [ %78, %73 ]
  %16 = phi ptr [ %3, %10 ], [ %76, %73 ]
  %17 = phi i32 [ %6, %10 ], [ %75, %73 ]
  %18 = phi i32 [ 0, %10 ], [ %74, %73 ]
  call void @llvm.dbg.value(metadata ptr %16, metadata !1876, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.value(metadata i32 %17, metadata !1878, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.value(metadata i32 %18, metadata !1879, metadata !DIExpression()), !dbg !1889
  %19 = sext i8 %15 to i32, !dbg !1894
  %20 = getelementptr inbounds %struct.mode_change, ptr %16, i64 0, i32 2, !dbg !1895
  %21 = load i32, ptr %20, align 4, !dbg !1895, !tbaa !1670
  call void @llvm.dbg.value(metadata i32 %21, metadata !1880, metadata !DIExpression()), !dbg !1896
  %22 = getelementptr inbounds %struct.mode_change, ptr %16, i64 0, i32 4, !dbg !1897
  %23 = load i32, ptr %22, align 4, !dbg !1897, !tbaa !1676
  %24 = xor i32 %23, -1, !dbg !1898
  %25 = and i32 %11, %24, !dbg !1899
  call void @llvm.dbg.value(metadata i32 %25, metadata !1884, metadata !DIExpression()), !dbg !1896
  %26 = getelementptr inbounds %struct.mode_change, ptr %16, i64 0, i32 3, !dbg !1900
  %27 = load i32, ptr %26, align 4, !dbg !1900, !tbaa !1673
  call void @llvm.dbg.value(metadata i32 %27, metadata !1885, metadata !DIExpression()), !dbg !1896
  switch i32 %19, label %48 [
    i32 2, label %42
    i32 3, label %28
  ], !dbg !1901

28:                                               ; preds = %14
  %29 = and i32 %27, %17, !dbg !1902
  call void @llvm.dbg.value(metadata i32 %29, metadata !1885, metadata !DIExpression()), !dbg !1896
  %30 = and i32 %29, 292, !dbg !1904
  %31 = icmp eq i32 %30, 0, !dbg !1905
  %32 = select i1 %31, i32 0, i32 292, !dbg !1905
  %33 = and i32 %29, 146, !dbg !1906
  %34 = icmp eq i32 %33, 0, !dbg !1907
  %35 = select i1 %34, i32 0, i32 146, !dbg !1907
  %36 = and i32 %29, 73, !dbg !1908
  %37 = icmp eq i32 %36, 0, !dbg !1909
  %38 = select i1 %37, i32 0, i32 73, !dbg !1909
  %39 = or i32 %35, %32, !dbg !1910
  %40 = or i32 %39, %38, !dbg !1911
  %41 = or i32 %40, %29, !dbg !1911
  call void @llvm.dbg.value(metadata i32 %41, metadata !1885, metadata !DIExpression()), !dbg !1896
  br label %48, !dbg !1912

42:                                               ; preds = %14
  %43 = and i32 %17, 73, !dbg !1913
  %44 = or i32 %43, %12, !dbg !1915
  %45 = icmp eq i32 %44, 0, !dbg !1915
  %46 = or i32 %27, 73
  %47 = select i1 %45, i32 %27, i32 %46, !dbg !1916
  br label %48, !dbg !1916

48:                                               ; preds = %42, %14, %28
  %49 = phi i32 [ %27, %14 ], [ %41, %28 ], [ %47, %42 ], !dbg !1896
  call void @llvm.dbg.value(metadata i32 %49, metadata !1885, metadata !DIExpression()), !dbg !1896
  %50 = icmp eq i32 %21, 0, !dbg !1917
  %51 = select i1 %50, i32 %13, i32 %21, !dbg !1917
  %52 = xor i32 %25, -1, !dbg !1918
  %53 = and i32 %51, %52, !dbg !1919
  %54 = and i32 %53, %49, !dbg !1920
  call void @llvm.dbg.value(metadata i32 %54, metadata !1885, metadata !DIExpression()), !dbg !1896
  %55 = load i8, ptr %16, align 4, !dbg !1921, !tbaa !1663
  %56 = sext i8 %55 to i32, !dbg !1922
  switch i32 %56, label %73 [
    i32 61, label %57
    i32 43, label %66
    i32 45, label %69
  ], !dbg !1923

57:                                               ; preds = %48
  %58 = xor i32 %21, -1, !dbg !1924
  %59 = select i1 %50, i32 0, i32 %58, !dbg !1924
  %60 = or i32 %59, %25, !dbg !1925
  call void @llvm.dbg.value(metadata i32 %60, metadata !1886, metadata !DIExpression()), !dbg !1926
  %61 = and i32 %60, 4095, !dbg !1927
  %62 = xor i32 %61, 4095, !dbg !1927
  %63 = or i32 %62, %18, !dbg !1928
  call void @llvm.dbg.value(metadata i32 %63, metadata !1879, metadata !DIExpression()), !dbg !1889
  %64 = and i32 %60, %17, !dbg !1929
  %65 = or i32 %54, %64, !dbg !1930
  call void @llvm.dbg.value(metadata i32 %65, metadata !1878, metadata !DIExpression()), !dbg !1889
  br label %73

66:                                               ; preds = %48
  %67 = or i32 %54, %18, !dbg !1931
  call void @llvm.dbg.value(metadata i32 %67, metadata !1879, metadata !DIExpression()), !dbg !1889
  %68 = or i32 %54, %17, !dbg !1932
  call void @llvm.dbg.value(metadata i32 %68, metadata !1878, metadata !DIExpression()), !dbg !1889
  br label %73, !dbg !1933

69:                                               ; preds = %48
  %70 = or i32 %54, %18, !dbg !1934
  call void @llvm.dbg.value(metadata i32 %70, metadata !1879, metadata !DIExpression()), !dbg !1889
  %71 = xor i32 %54, -1, !dbg !1935
  %72 = and i32 %17, %71, !dbg !1936
  call void @llvm.dbg.value(metadata i32 %72, metadata !1878, metadata !DIExpression()), !dbg !1889
  br label %73, !dbg !1937

73:                                               ; preds = %48, %69, %66, %57
  %74 = phi i32 [ %18, %48 ], [ %70, %69 ], [ %67, %66 ], [ %63, %57 ], !dbg !1889
  %75 = phi i32 [ %17, %48 ], [ %72, %69 ], [ %68, %66 ], [ %65, %57 ], !dbg !1889
  call void @llvm.dbg.value(metadata i32 %75, metadata !1878, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.value(metadata i32 %74, metadata !1879, metadata !DIExpression()), !dbg !1889
  %76 = getelementptr inbounds %struct.mode_change, ptr %16, i64 1, !dbg !1938
  call void @llvm.dbg.value(metadata ptr %76, metadata !1876, metadata !DIExpression()), !dbg !1889
  %77 = getelementptr inbounds %struct.mode_change, ptr %16, i64 1, i32 1, !dbg !1891
  %78 = load i8, ptr %77, align 1, !dbg !1891, !tbaa !1667
  %79 = icmp eq i8 %78, 0, !dbg !1892
  br i1 %79, label %80, label %14, !dbg !1893, !llvm.loop !1939

80:                                               ; preds = %73, %5
  %81 = phi i32 [ 0, %5 ], [ %74, %73 ], !dbg !1941
  %82 = phi i32 [ %6, %5 ], [ %75, %73 ], !dbg !1942
  %83 = icmp eq ptr %4, null, !dbg !1943
  br i1 %83, label %85, label %84, !dbg !1945

84:                                               ; preds = %80
  store i32 %81, ptr %4, align 4, !dbg !1946, !tbaa !924
  br label %85, !dbg !1947

85:                                               ; preds = %84, %80
  ret i32 %82, !dbg !1948
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #19 !dbg !1949 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1951, metadata !DIExpression()), !dbg !1954
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #37, !dbg !1955
  call void @llvm.dbg.value(metadata ptr %2, metadata !1952, metadata !DIExpression()), !dbg !1954
  %3 = icmp eq ptr %2, null, !dbg !1956
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1956
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1956
  call void @llvm.dbg.value(metadata ptr %5, metadata !1953, metadata !DIExpression()), !dbg !1954
  %6 = ptrtoint ptr %5 to i64, !dbg !1957
  %7 = ptrtoint ptr %0 to i64, !dbg !1957
  %8 = sub i64 %6, %7, !dbg !1957
  %9 = icmp sgt i64 %8, 6, !dbg !1959
  br i1 %9, label %10, label %19, !dbg !1960

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1961
  call void @llvm.dbg.value(metadata ptr %11, metadata !1962, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata ptr @.str.74, metadata !1967, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i64 7, metadata !1968, metadata !DIExpression()), !dbg !1969
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.74, i64 7), !dbg !1971
  %13 = icmp eq i32 %12, 0, !dbg !1972
  br i1 %13, label %14, label %19, !dbg !1973

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !1951, metadata !DIExpression()), !dbg !1954
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.75, i64 noundef 3) #37, !dbg !1974
  %16 = icmp eq i32 %15, 0, !dbg !1977
  %17 = select i1 %16, i64 3, i64 0, !dbg !1978
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !1978
  br label %19, !dbg !1978

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1954
  call void @llvm.dbg.value(metadata ptr %21, metadata !1953, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata ptr %20, metadata !1951, metadata !DIExpression()), !dbg !1954
  store ptr %20, ptr @program_name, align 8, !dbg !1979, !tbaa !854
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1980, !tbaa !854
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1981, !tbaa !854
  ret void, !dbg !1982
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1983 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #20

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !511 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !518, metadata !DIExpression()), !dbg !1984
  call void @llvm.dbg.value(metadata ptr %1, metadata !519, metadata !DIExpression()), !dbg !1984
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #36, !dbg !1985
  call void @llvm.dbg.value(metadata ptr %5, metadata !520, metadata !DIExpression()), !dbg !1984
  %6 = icmp eq ptr %5, %0, !dbg !1986
  br i1 %6, label %7, label %14, !dbg !1988

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #36, !dbg !1989
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #36, !dbg !1990
  call void @llvm.dbg.declare(metadata ptr %4, metadata !526, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata ptr %4, metadata !1992, metadata !DIExpression()), !dbg !1999
  call void @llvm.dbg.value(metadata ptr %4, metadata !2001, metadata !DIExpression()), !dbg !2009
  call void @llvm.dbg.value(metadata i32 0, metadata !2007, metadata !DIExpression()), !dbg !2009
  call void @llvm.dbg.value(metadata i64 8, metadata !2008, metadata !DIExpression()), !dbg !2009
  store i64 0, ptr %4, align 8, !dbg !2011
  call void @llvm.dbg.value(metadata ptr %3, metadata !521, metadata !DIExpression(DW_OP_deref)), !dbg !1984
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #36, !dbg !2012
  %9 = icmp eq i64 %8, 2, !dbg !2014
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !521, metadata !DIExpression()), !dbg !1984
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2015
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1984
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #36, !dbg !2016
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #36, !dbg !2016
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1984
  ret ptr %15, !dbg !2016
}

; Function Attrs: nounwind
declare !dbg !2017 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !2023 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2028, metadata !DIExpression()), !dbg !2031
  %2 = tail call ptr @__errno_location() #39, !dbg !2032
  %3 = load i32, ptr %2, align 4, !dbg !2032, !tbaa !924
  call void @llvm.dbg.value(metadata i32 %3, metadata !2029, metadata !DIExpression()), !dbg !2031
  %4 = icmp eq ptr %0, null, !dbg !2033
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2033
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #44, !dbg !2034
  call void @llvm.dbg.value(metadata ptr %6, metadata !2030, metadata !DIExpression()), !dbg !2031
  store i32 %3, ptr %2, align 4, !dbg !2035, !tbaa !924
  ret ptr %6, !dbg !2036
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #18 !dbg !2037 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2043, metadata !DIExpression()), !dbg !2044
  %2 = icmp eq ptr %0, null, !dbg !2045
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2045
  %4 = load i32, ptr %3, align 8, !dbg !2046, !tbaa !2047
  ret i32 %4, !dbg !2049
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #21 !dbg !2050 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2054, metadata !DIExpression()), !dbg !2056
  call void @llvm.dbg.value(metadata i32 %1, metadata !2055, metadata !DIExpression()), !dbg !2056
  %3 = icmp eq ptr %0, null, !dbg !2057
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2057
  store i32 %1, ptr %4, align 8, !dbg !2058, !tbaa !2047
  ret void, !dbg !2059
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #22 !dbg !2060 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2064, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i8 %1, metadata !2065, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i32 %2, metadata !2066, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i8 %1, metadata !2067, metadata !DIExpression()), !dbg !2072
  %4 = icmp eq ptr %0, null, !dbg !2073
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2073
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2074
  %7 = lshr i8 %1, 5, !dbg !2075
  %8 = zext i8 %7 to i64, !dbg !2075
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !2076
  call void @llvm.dbg.value(metadata ptr %9, metadata !2068, metadata !DIExpression()), !dbg !2072
  %10 = and i8 %1, 31, !dbg !2077
  %11 = zext i8 %10 to i32, !dbg !2077
  call void @llvm.dbg.value(metadata i32 %11, metadata !2070, metadata !DIExpression()), !dbg !2072
  %12 = load i32, ptr %9, align 4, !dbg !2078, !tbaa !924
  %13 = lshr i32 %12, %11, !dbg !2079
  %14 = and i32 %13, 1, !dbg !2080
  call void @llvm.dbg.value(metadata i32 %14, metadata !2071, metadata !DIExpression()), !dbg !2072
  %15 = xor i32 %13, %2, !dbg !2081
  %16 = and i32 %15, 1, !dbg !2081
  %17 = shl nuw i32 %16, %11, !dbg !2082
  %18 = xor i32 %17, %12, !dbg !2083
  store i32 %18, ptr %9, align 4, !dbg !2083, !tbaa !924
  ret i32 %14, !dbg !2084
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #22 !dbg !2085 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2089, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i32 %1, metadata !2090, metadata !DIExpression()), !dbg !2092
  %3 = icmp eq ptr %0, null, !dbg !2093
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2095
  call void @llvm.dbg.value(metadata ptr %4, metadata !2089, metadata !DIExpression()), !dbg !2092
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !2096
  %6 = load i32, ptr %5, align 4, !dbg !2096, !tbaa !2097
  call void @llvm.dbg.value(metadata i32 %6, metadata !2091, metadata !DIExpression()), !dbg !2092
  store i32 %1, ptr %5, align 4, !dbg !2098, !tbaa !2097
  ret i32 %6, !dbg !2099
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2100 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2104, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata ptr %1, metadata !2105, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata ptr %2, metadata !2106, metadata !DIExpression()), !dbg !2107
  %4 = icmp eq ptr %0, null, !dbg !2108
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2110
  call void @llvm.dbg.value(metadata ptr %5, metadata !2104, metadata !DIExpression()), !dbg !2107
  store i32 10, ptr %5, align 8, !dbg !2111, !tbaa !2047
  %6 = icmp ne ptr %1, null, !dbg !2112
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2114
  br i1 %8, label %10, label %9, !dbg !2114

9:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2115
  unreachable, !dbg !2115

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2116
  store ptr %1, ptr %11, align 8, !dbg !2117, !tbaa !2118
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2119
  store ptr %2, ptr %12, align 8, !dbg !2120, !tbaa !2121
  ret void, !dbg !2122
}

; Function Attrs: noreturn nounwind
declare !dbg !2123 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !2124 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2128, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata i64 %1, metadata !2129, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata ptr %2, metadata !2130, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata i64 %3, metadata !2131, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata ptr %4, metadata !2132, metadata !DIExpression()), !dbg !2136
  %6 = icmp eq ptr %4, null, !dbg !2137
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !2137
  call void @llvm.dbg.value(metadata ptr %7, metadata !2133, metadata !DIExpression()), !dbg !2136
  %8 = tail call ptr @__errno_location() #39, !dbg !2138
  %9 = load i32, ptr %8, align 4, !dbg !2138, !tbaa !924
  call void @llvm.dbg.value(metadata i32 %9, metadata !2134, metadata !DIExpression()), !dbg !2136
  %10 = load i32, ptr %7, align 8, !dbg !2139, !tbaa !2047
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !2140
  %12 = load i32, ptr %11, align 4, !dbg !2140, !tbaa !2097
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !2141
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !2142
  %15 = load ptr, ptr %14, align 8, !dbg !2142, !tbaa !2118
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !2143
  %17 = load ptr, ptr %16, align 8, !dbg !2143, !tbaa !2121
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !2144
  call void @llvm.dbg.value(metadata i64 %18, metadata !2135, metadata !DIExpression()), !dbg !2136
  store i32 %9, ptr %8, align 4, !dbg !2145, !tbaa !924
  ret i64 %18, !dbg !2146
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !2147 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !2153, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i64 %1, metadata !2154, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata ptr %2, metadata !2155, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i64 %3, metadata !2156, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i32 %4, metadata !2157, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i32 %5, metadata !2158, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata ptr %6, metadata !2159, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata ptr %7, metadata !2160, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata ptr %8, metadata !2161, metadata !DIExpression()), !dbg !2215
  %16 = tail call i64 @__ctype_get_mb_cur_max() #36, !dbg !2216
  %17 = icmp eq i64 %16, 1, !dbg !2217
  call void @llvm.dbg.value(metadata i1 %17, metadata !2162, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2215
  call void @llvm.dbg.value(metadata i64 0, metadata !2163, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i64 0, metadata !2164, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata ptr null, metadata !2165, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i64 0, metadata !2166, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i8 0, metadata !2167, metadata !DIExpression()), !dbg !2215
  %18 = trunc i32 %5 to i8, !dbg !2218
  %19 = lshr i8 %18, 1, !dbg !2218
  %20 = and i8 %19, 1, !dbg !2218
  call void @llvm.dbg.value(metadata i8 %20, metadata !2168, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i8 0, metadata !2169, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i8 1, metadata !2170, metadata !DIExpression()), !dbg !2215
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !2219

28:                                               ; preds = %642, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %642 ]
  %30 = phi ptr [ %7, %9 ], [ %117, %642 ]
  %31 = phi ptr [ %8, %9 ], [ %118, %642 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %642 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %642 ], !dbg !2220
  %34 = phi ptr [ null, %9 ], [ %120, %642 ], !dbg !2221
  %35 = phi i64 [ 0, %9 ], [ %121, %642 ], !dbg !2222
  %36 = phi i8 [ 0, %9 ], [ %122, %642 ], !dbg !2223
  %37 = phi i8 [ %20, %9 ], [ %123, %642 ], !dbg !2215
  %38 = phi i8 [ 0, %9 ], [ %142, %642 ], !dbg !2224
  %39 = phi i8 [ 1, %9 ], [ %143, %642 ], !dbg !2225
  %40 = phi i64 [ %1, %9 ], [ %141, %642 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !2154, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i8 %39, metadata !2170, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i8 %38, metadata !2169, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i8 %37, metadata !2168, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i8 %36, metadata !2167, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i64 %35, metadata !2166, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata ptr %34, metadata !2165, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i64 %33, metadata !2164, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i64 0, metadata !2163, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i64 %32, metadata !2156, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata ptr %31, metadata !2161, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata ptr %30, metadata !2160, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i32 %29, metadata !2157, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.label(metadata !2208), !dbg !2226
  call void @llvm.dbg.value(metadata i8 0, metadata !2171, metadata !DIExpression()), !dbg !2215
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
  ], !dbg !2227

41:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !2168, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i32 5, metadata !2157, metadata !DIExpression()), !dbg !2215
  br label %115, !dbg !2228

42:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 %37, metadata !2168, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i32 5, metadata !2157, metadata !DIExpression()), !dbg !2215
  %43 = and i8 %37, 1, !dbg !2229
  %44 = icmp eq i8 %43, 0, !dbg !2229
  br i1 %44, label %45, label %115, !dbg !2228

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2231
  br i1 %46, label %115, label %47, !dbg !2234

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !2231, !tbaa !933
  br label %115, !dbg !2231

48:                                               ; preds = %28, %28
  call void @llvm.dbg.value(metadata ptr @.str.11.88, metadata !607, metadata !DIExpression()), !dbg !2235
  call void @llvm.dbg.value(metadata i32 %29, metadata !608, metadata !DIExpression()), !dbg !2235
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.89, ptr noundef nonnull @.str.11.88, i32 noundef 5) #36, !dbg !2239
  call void @llvm.dbg.value(metadata ptr %49, metadata !609, metadata !DIExpression()), !dbg !2235
  %50 = icmp eq ptr %49, @.str.11.88, !dbg !2240
  br i1 %50, label %51, label %60, !dbg !2242

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #36, !dbg !2243
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #36, !dbg !2244
  call void @llvm.dbg.declare(metadata ptr %13, metadata !611, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata ptr %13, metadata !2246, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata ptr %13, metadata !2254, metadata !DIExpression()), !dbg !2259
  call void @llvm.dbg.value(metadata i32 0, metadata !2257, metadata !DIExpression()), !dbg !2259
  call void @llvm.dbg.value(metadata i64 8, metadata !2258, metadata !DIExpression()), !dbg !2259
  store i64 0, ptr %13, align 8, !dbg !2261
  call void @llvm.dbg.value(metadata ptr %12, metadata !610, metadata !DIExpression(DW_OP_deref)), !dbg !2235
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #36, !dbg !2262
  %53 = icmp eq i64 %52, 3, !dbg !2264
  %54 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %54, metadata !610, metadata !DIExpression()), !dbg !2235
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !2265
  %57 = icmp eq i32 %29, 9, !dbg !2265
  %58 = select i1 %57, ptr @.str.10.90, ptr @.str.12.91, !dbg !2265
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !2265
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #36, !dbg !2266
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #36, !dbg !2266
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !2235
  call void @llvm.dbg.value(metadata ptr %61, metadata !2160, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata ptr @.str.12.91, metadata !607, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i32 %29, metadata !608, metadata !DIExpression()), !dbg !2267
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.89, ptr noundef nonnull @.str.12.91, i32 noundef 5) #36, !dbg !2269
  call void @llvm.dbg.value(metadata ptr %62, metadata !609, metadata !DIExpression()), !dbg !2267
  %63 = icmp eq ptr %62, @.str.12.91, !dbg !2270
  br i1 %63, label %64, label %73, !dbg !2271

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #36, !dbg !2272
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #36, !dbg !2273
  call void @llvm.dbg.declare(metadata ptr %11, metadata !611, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.value(metadata ptr %11, metadata !2246, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata ptr %11, metadata !2254, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.value(metadata i32 0, metadata !2257, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.value(metadata i64 8, metadata !2258, metadata !DIExpression()), !dbg !2277
  store i64 0, ptr %11, align 8, !dbg !2279
  call void @llvm.dbg.value(metadata ptr %10, metadata !610, metadata !DIExpression(DW_OP_deref)), !dbg !2267
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #36, !dbg !2280
  %66 = icmp eq i64 %65, 3, !dbg !2281
  %67 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %67, metadata !610, metadata !DIExpression()), !dbg !2267
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !2282
  %70 = icmp eq i32 %29, 9, !dbg !2282
  %71 = select i1 %70, ptr @.str.10.90, ptr @.str.12.91, !dbg !2282
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !2282
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #36, !dbg !2283
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #36, !dbg !2283
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  call void @llvm.dbg.value(metadata ptr %75, metadata !2161, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata ptr %74, metadata !2160, metadata !DIExpression()), !dbg !2215
  %76 = and i8 %37, 1, !dbg !2284
  %77 = icmp eq i8 %76, 0, !dbg !2284
  br i1 %77, label %78, label %93, !dbg !2285

78:                                               ; preds = %73
  call void @llvm.dbg.value(metadata ptr %74, metadata !2172, metadata !DIExpression()), !dbg !2286
  call void @llvm.dbg.value(metadata i64 0, metadata !2163, metadata !DIExpression()), !dbg !2215
  %79 = load i8, ptr %74, align 1, !dbg !2287, !tbaa !933
  %80 = icmp eq i8 %79, 0, !dbg !2289
  br i1 %80, label %93, label %81, !dbg !2289

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  call void @llvm.dbg.value(metadata ptr %83, metadata !2172, metadata !DIExpression()), !dbg !2286
  call void @llvm.dbg.value(metadata i64 %84, metadata !2163, metadata !DIExpression()), !dbg !2215
  %85 = icmp ult i64 %84, %40, !dbg !2290
  br i1 %85, label %86, label %88, !dbg !2293

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !2290
  store i8 %82, ptr %87, align 1, !dbg !2290, !tbaa !933
  br label %88, !dbg !2290

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !2293
  call void @llvm.dbg.value(metadata i64 %89, metadata !2163, metadata !DIExpression()), !dbg !2215
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !2294
  call void @llvm.dbg.value(metadata ptr %90, metadata !2172, metadata !DIExpression()), !dbg !2286
  %91 = load i8, ptr %90, align 1, !dbg !2287, !tbaa !933
  %92 = icmp eq i8 %91, 0, !dbg !2289
  br i1 %92, label %93, label %81, !dbg !2289, !llvm.loop !2295

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !2297
  call void @llvm.dbg.value(metadata i64 %94, metadata !2163, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i8 1, metadata !2167, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata ptr %75, metadata !2165, metadata !DIExpression()), !dbg !2215
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #37, !dbg !2298
  call void @llvm.dbg.value(metadata i64 %95, metadata !2166, metadata !DIExpression()), !dbg !2215
  br label %115, !dbg !2299

96:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !2167, metadata !DIExpression()), !dbg !2215
  br label %97, !dbg !2300

97:                                               ; preds = %28, %96
  %98 = phi i8 [ %36, %28 ], [ 1, %96 ], !dbg !2215
  call void @llvm.dbg.value(metadata i8 %98, metadata !2167, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i8 1, metadata !2168, metadata !DIExpression()), !dbg !2215
  br label %99, !dbg !2301

99:                                               ; preds = %28, %97
  %100 = phi i8 [ %36, %28 ], [ %98, %97 ], !dbg !2223
  %101 = phi i8 [ %37, %28 ], [ 1, %97 ], !dbg !2215
  call void @llvm.dbg.value(metadata i8 %101, metadata !2168, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i8 %100, metadata !2167, metadata !DIExpression()), !dbg !2215
  %102 = and i8 %101, 1, !dbg !2302
  %103 = icmp eq i8 %102, 0, !dbg !2302
  %104 = select i1 %103, i8 1, i8 %100, !dbg !2304
  br label %105, !dbg !2304

105:                                              ; preds = %99, %28
  %106 = phi i8 [ %36, %28 ], [ %104, %99 ], !dbg !2215
  %107 = phi i8 [ %37, %28 ], [ %101, %99 ], !dbg !2218
  call void @llvm.dbg.value(metadata i8 %107, metadata !2168, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i8 %106, metadata !2167, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i32 2, metadata !2157, metadata !DIExpression()), !dbg !2215
  %108 = and i8 %107, 1, !dbg !2305
  %109 = icmp eq i8 %108, 0, !dbg !2305
  br i1 %109, label %110, label %115, !dbg !2307

110:                                              ; preds = %105
  %111 = icmp eq i64 %40, 0, !dbg !2308
  br i1 %111, label %115, label %112, !dbg !2311

112:                                              ; preds = %110
  store i8 39, ptr %0, align 1, !dbg !2308, !tbaa !933
  br label %115, !dbg !2308

113:                                              ; preds = %28
  call void @llvm.dbg.value(metadata i8 0, metadata !2168, metadata !DIExpression()), !dbg !2215
  br label %115, !dbg !2312

114:                                              ; preds = %28
  call void @abort() #38, !dbg !2313
  unreachable, !dbg !2313

115:                                              ; preds = %41, %105, %112, %110, %28, %42, %47, %45, %113, %93
  %116 = phi i32 [ 0, %113 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %110 ], [ 2, %112 ], [ 2, %105 ], [ 5, %41 ]
  %117 = phi ptr [ %30, %113 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %110 ], [ %30, %112 ], [ %30, %105 ], [ %30, %41 ]
  %118 = phi ptr [ %31, %113 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %110 ], [ %31, %112 ], [ %31, %105 ], [ %31, %41 ]
  %119 = phi i64 [ 0, %113 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %110 ], [ 1, %112 ], [ 0, %105 ], [ 0, %41 ], !dbg !2297
  %120 = phi ptr [ %34, %113 ], [ %75, %93 ], [ @.str.10.90, %45 ], [ @.str.10.90, %47 ], [ @.str.10.90, %42 ], [ %34, %28 ], [ @.str.12.91, %110 ], [ @.str.12.91, %112 ], [ @.str.12.91, %105 ], [ @.str.10.90, %41 ], !dbg !2215
  %121 = phi i64 [ %35, %113 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %110 ], [ 1, %112 ], [ 1, %105 ], [ 1, %41 ], !dbg !2215
  %122 = phi i8 [ %36, %113 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %106, %110 ], [ %106, %112 ], [ %106, %105 ], [ 1, %41 ], !dbg !2215
  %123 = phi i8 [ 0, %113 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %107, %110 ], [ %107, %112 ], [ %107, %105 ], [ 1, %41 ], !dbg !2215
  call void @llvm.dbg.value(metadata i8 %123, metadata !2168, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i8 %122, metadata !2167, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i64 %121, metadata !2166, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata ptr %120, metadata !2165, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i64 %119, metadata !2163, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata ptr %118, metadata !2161, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata ptr %117, metadata !2160, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i32 %116, metadata !2157, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i64 0, metadata !2177, metadata !DIExpression()), !dbg !2314
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
  br label %138, !dbg !2315

138:                                              ; preds = %617, %115
  %139 = phi i64 [ %32, %115 ], [ %618, %617 ]
  %140 = phi i64 [ %119, %115 ], [ %619, %617 ], !dbg !2297
  %141 = phi i64 [ %33, %115 ], [ %620, %617 ], !dbg !2220
  %142 = phi i8 [ %38, %115 ], [ %621, %617 ], !dbg !2224
  %143 = phi i8 [ %39, %115 ], [ %622, %617 ], !dbg !2225
  %144 = phi i8 [ 0, %115 ], [ %623, %617 ], !dbg !2316
  %145 = phi i64 [ 0, %115 ], [ %626, %617 ], !dbg !2317
  %146 = phi i64 [ %40, %115 ], [ %625, %617 ]
  call void @llvm.dbg.value(metadata i64 %146, metadata !2154, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i64 %145, metadata !2177, metadata !DIExpression()), !dbg !2314
  call void @llvm.dbg.value(metadata i8 %144, metadata !2171, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i8 %143, metadata !2170, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i8 %142, metadata !2169, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i64 %141, metadata !2164, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i64 %140, metadata !2163, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i64 %139, metadata !2156, metadata !DIExpression()), !dbg !2215
  %147 = icmp eq i64 %139, -1, !dbg !2318
  br i1 %147, label %148, label %152, !dbg !2319

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2320
  %150 = load i8, ptr %149, align 1, !dbg !2320, !tbaa !933
  %151 = icmp eq i8 %150, 0, !dbg !2321
  br i1 %151, label %627, label %154, !dbg !2322

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !2323
  br i1 %153, label %627, label %154, !dbg !2322

154:                                              ; preds = %148, %152
  call void @llvm.dbg.value(metadata i8 0, metadata !2179, metadata !DIExpression()), !dbg !2324
  call void @llvm.dbg.value(metadata i8 0, metadata !2182, metadata !DIExpression()), !dbg !2324
  call void @llvm.dbg.value(metadata i8 0, metadata !2183, metadata !DIExpression()), !dbg !2324
  br i1 %129, label %155, label %170, !dbg !2325

155:                                              ; preds = %154
  %156 = add i64 %145, %121, !dbg !2327
  %157 = select i1 %147, i1 %130, i1 false, !dbg !2328
  br i1 %157, label %158, label %160, !dbg !2328

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #37, !dbg !2329
  call void @llvm.dbg.value(metadata i64 %159, metadata !2156, metadata !DIExpression()), !dbg !2215
  br label %160, !dbg !2330

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !2330
  call void @llvm.dbg.value(metadata i64 %161, metadata !2156, metadata !DIExpression()), !dbg !2215
  %162 = icmp ugt i64 %156, %161, !dbg !2331
  br i1 %162, label %170, label %163, !dbg !2332

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2333
  call void @llvm.dbg.value(metadata ptr %164, metadata !2334, metadata !DIExpression()), !dbg !2339
  call void @llvm.dbg.value(metadata ptr %120, metadata !2337, metadata !DIExpression()), !dbg !2339
  call void @llvm.dbg.value(metadata i64 %121, metadata !2338, metadata !DIExpression()), !dbg !2339
  %165 = call i32 @bcmp(ptr %164, ptr %120, i64 %121), !dbg !2341
  %166 = icmp ne i32 %165, 0, !dbg !2342
  %167 = select i1 %166, i1 true, i1 %132, !dbg !2343
  %168 = xor i1 %166, true, !dbg !2343
  %169 = zext i1 %168 to i8, !dbg !2343
  br i1 %167, label %170, label %688, !dbg !2343

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !2324
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !2324
  call void @llvm.dbg.value(metadata i8 %173, metadata !2179, metadata !DIExpression()), !dbg !2324
  call void @llvm.dbg.value(metadata i64 %171, metadata !2156, metadata !DIExpression()), !dbg !2215
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2344
  %175 = load i8, ptr %174, align 1, !dbg !2344, !tbaa !933
  call void @llvm.dbg.value(metadata i8 %175, metadata !2184, metadata !DIExpression()), !dbg !2324
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
  ], !dbg !2345

176:                                              ; preds = %170
  br i1 %125, label %177, label %225, !dbg !2346

177:                                              ; preds = %176
  br i1 %132, label %178, label %674, !dbg !2347

178:                                              ; preds = %177
  call void @llvm.dbg.value(metadata i8 1, metadata !2182, metadata !DIExpression()), !dbg !2324
  %179 = and i8 %144, 1, !dbg !2351
  %180 = icmp eq i8 %179, 0, !dbg !2351
  %181 = select i1 %133, i1 %180, i1 false, !dbg !2351
  br i1 %181, label %182, label %198, !dbg !2351

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !2353
  br i1 %183, label %184, label %186, !dbg !2357

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2353
  store i8 39, ptr %185, align 1, !dbg !2353, !tbaa !933
  br label %186, !dbg !2353

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !2357
  call void @llvm.dbg.value(metadata i64 %187, metadata !2163, metadata !DIExpression()), !dbg !2215
  %188 = icmp ult i64 %187, %146, !dbg !2358
  br i1 %188, label %189, label %191, !dbg !2361

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !2358
  store i8 36, ptr %190, align 1, !dbg !2358, !tbaa !933
  br label %191, !dbg !2358

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !2361
  call void @llvm.dbg.value(metadata i64 %192, metadata !2163, metadata !DIExpression()), !dbg !2215
  %193 = icmp ult i64 %192, %146, !dbg !2362
  br i1 %193, label %194, label %196, !dbg !2365

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !2362
  store i8 39, ptr %195, align 1, !dbg !2362, !tbaa !933
  br label %196, !dbg !2362

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !2365
  call void @llvm.dbg.value(metadata i64 %197, metadata !2163, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i8 1, metadata !2171, metadata !DIExpression()), !dbg !2215
  br label %198, !dbg !2366

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !2215
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !2215
  call void @llvm.dbg.value(metadata i8 %200, metadata !2171, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i64 %199, metadata !2163, metadata !DIExpression()), !dbg !2215
  %201 = icmp ult i64 %199, %146, !dbg !2367
  br i1 %201, label %202, label %204, !dbg !2370

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !2367
  store i8 92, ptr %203, align 1, !dbg !2367, !tbaa !933
  br label %204, !dbg !2367

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !2370
  call void @llvm.dbg.value(metadata i64 %205, metadata !2163, metadata !DIExpression()), !dbg !2215
  br i1 %126, label %206, label %491, !dbg !2371

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !2373
  %208 = icmp ult i64 %207, %171, !dbg !2374
  br i1 %208, label %209, label %480, !dbg !2375

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !2376
  %211 = load i8, ptr %210, align 1, !dbg !2376, !tbaa !933
  %212 = add i8 %211, -48, !dbg !2377
  %213 = icmp ult i8 %212, 10, !dbg !2377
  br i1 %213, label %214, label %480, !dbg !2377

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !2378
  br i1 %215, label %216, label %218, !dbg !2382

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !2378
  store i8 48, ptr %217, align 1, !dbg !2378, !tbaa !933
  br label %218, !dbg !2378

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !2382
  call void @llvm.dbg.value(metadata i64 %219, metadata !2163, metadata !DIExpression()), !dbg !2215
  %220 = icmp ult i64 %219, %146, !dbg !2383
  br i1 %220, label %221, label %223, !dbg !2386

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !2383
  store i8 48, ptr %222, align 1, !dbg !2383, !tbaa !933
  br label %223, !dbg !2383

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !2386
  call void @llvm.dbg.value(metadata i64 %224, metadata !2163, metadata !DIExpression()), !dbg !2215
  br label %480, !dbg !2387

225:                                              ; preds = %176
  br i1 %25, label %491, label %617, !dbg !2388

226:                                              ; preds = %170
  switch i32 %116, label %480 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !2389

227:                                              ; preds = %226
  br i1 %132, label %480, label %670, !dbg !2390

228:                                              ; preds = %226
  br i1 %23, label %480, label %229, !dbg !2392

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !2394
  %231 = icmp ult i64 %230, %171, !dbg !2395
  br i1 %231, label %232, label %480, !dbg !2396

232:                                              ; preds = %229
  %233 = add i64 %145, 1, !dbg !2397
  %234 = getelementptr inbounds i8, ptr %2, i64 %233, !dbg !2398
  %235 = load i8, ptr %234, align 1, !dbg !2398, !tbaa !933
  %236 = icmp eq i8 %235, 63, !dbg !2399
  br i1 %236, label %237, label %480, !dbg !2400

237:                                              ; preds = %232
  %238 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !2401
  %239 = load i8, ptr %238, align 1, !dbg !2401, !tbaa !933
  %240 = sext i8 %239 to i32, !dbg !2401
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
  ], !dbg !2402

241:                                              ; preds = %237, %237, %237, %237, %237, %237, %237, %237, %237
  br i1 %132, label %242, label %688, !dbg !2403

242:                                              ; preds = %241
  call void @llvm.dbg.value(metadata i8 %239, metadata !2184, metadata !DIExpression()), !dbg !2324
  call void @llvm.dbg.value(metadata i64 %230, metadata !2177, metadata !DIExpression()), !dbg !2314
  %243 = icmp ult i64 %140, %146, !dbg !2405
  br i1 %243, label %244, label %246, !dbg !2408

244:                                              ; preds = %242
  %245 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2405
  store i8 63, ptr %245, align 1, !dbg !2405, !tbaa !933
  br label %246, !dbg !2405

246:                                              ; preds = %244, %242
  %247 = add i64 %140, 1, !dbg !2408
  call void @llvm.dbg.value(metadata i64 %247, metadata !2163, metadata !DIExpression()), !dbg !2215
  %248 = icmp ult i64 %247, %146, !dbg !2409
  br i1 %248, label %249, label %251, !dbg !2412

249:                                              ; preds = %246
  %250 = getelementptr inbounds i8, ptr %0, i64 %247, !dbg !2409
  store i8 34, ptr %250, align 1, !dbg !2409, !tbaa !933
  br label %251, !dbg !2409

251:                                              ; preds = %249, %246
  %252 = add i64 %140, 2, !dbg !2412
  call void @llvm.dbg.value(metadata i64 %252, metadata !2163, metadata !DIExpression()), !dbg !2215
  %253 = icmp ult i64 %252, %146, !dbg !2413
  br i1 %253, label %254, label %256, !dbg !2416

254:                                              ; preds = %251
  %255 = getelementptr inbounds i8, ptr %0, i64 %252, !dbg !2413
  store i8 34, ptr %255, align 1, !dbg !2413, !tbaa !933
  br label %256, !dbg !2413

256:                                              ; preds = %254, %251
  %257 = add i64 %140, 3, !dbg !2416
  call void @llvm.dbg.value(metadata i64 %257, metadata !2163, metadata !DIExpression()), !dbg !2215
  %258 = icmp ult i64 %257, %146, !dbg !2417
  br i1 %258, label %259, label %261, !dbg !2420

259:                                              ; preds = %256
  %260 = getelementptr inbounds i8, ptr %0, i64 %257, !dbg !2417
  store i8 63, ptr %260, align 1, !dbg !2417, !tbaa !933
  br label %261, !dbg !2417

261:                                              ; preds = %259, %256
  %262 = add i64 %140, 4, !dbg !2420
  call void @llvm.dbg.value(metadata i64 %262, metadata !2163, metadata !DIExpression()), !dbg !2215
  br label %480, !dbg !2421

263:                                              ; preds = %170
  br label %274, !dbg !2422

264:                                              ; preds = %170
  br label %274, !dbg !2423

265:                                              ; preds = %170
  br label %272, !dbg !2424

266:                                              ; preds = %170
  br label %272, !dbg !2425

267:                                              ; preds = %170
  br label %274, !dbg !2426

268:                                              ; preds = %170
  br i1 %133, label %269, label %270, !dbg !2427

269:                                              ; preds = %268
  br i1 %132, label %573, label %670, !dbg !2428

270:                                              ; preds = %268
  br i1 %125, label %271, label %491, !dbg !2431

271:                                              ; preds = %270
  br i1 %136, label %573, label %535, !dbg !2433

272:                                              ; preds = %170, %266, %265
  %273 = phi i8 [ 116, %266 ], [ 114, %265 ], [ 110, %170 ], !dbg !2434
  call void @llvm.dbg.label(metadata !2209), !dbg !2435
  br i1 %134, label %274, label %670, !dbg !2436

274:                                              ; preds = %170, %272, %267, %264, %263
  %275 = phi i8 [ %273, %272 ], [ 118, %267 ], [ 102, %264 ], [ 98, %263 ], [ 97, %170 ], !dbg !2434
  call void @llvm.dbg.label(metadata !2211), !dbg !2438
  br i1 %125, label %535, label %491, !dbg !2439

276:                                              ; preds = %170, %170
  switch i64 %171, label %480 [
    i64 -1, label %277
    i64 1, label %280
  ], !dbg !2440

277:                                              ; preds = %276
  %278 = load i8, ptr %21, align 1, !dbg !2441, !tbaa !933
  %279 = icmp eq i8 %278, 0, !dbg !2443
  br i1 %279, label %280, label %480, !dbg !2444

280:                                              ; preds = %276, %277, %170, %170
  %281 = icmp eq i64 %145, 0, !dbg !2445
  br i1 %281, label %282, label %480, !dbg !2447

282:                                              ; preds = %280, %170
  call void @llvm.dbg.value(metadata i8 1, metadata !2183, metadata !DIExpression()), !dbg !2324
  br label %283, !dbg !2448

283:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %282
  %284 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %282 ], !dbg !2324
  call void @llvm.dbg.value(metadata i8 %284, metadata !2183, metadata !DIExpression()), !dbg !2324
  br i1 %134, label %480, label %670, !dbg !2449

285:                                              ; preds = %170
  call void @llvm.dbg.value(metadata i8 1, metadata !2169, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i8 1, metadata !2183, metadata !DIExpression()), !dbg !2324
  br i1 %133, label %286, label %480, !dbg !2451

286:                                              ; preds = %285
  br i1 %132, label %287, label %670, !dbg !2452

287:                                              ; preds = %286
  %288 = icmp eq i64 %146, 0, !dbg !2455
  %289 = icmp ne i64 %141, 0
  %290 = select i1 %288, i1 true, i1 %289, !dbg !2457
  %291 = select i1 %290, i64 %141, i64 %146, !dbg !2457
  %292 = select i1 %290, i64 %146, i64 0, !dbg !2457
  call void @llvm.dbg.value(metadata i64 %292, metadata !2154, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i64 %291, metadata !2164, metadata !DIExpression()), !dbg !2215
  %293 = icmp ult i64 %140, %292, !dbg !2458
  br i1 %293, label %294, label %296, !dbg !2461

294:                                              ; preds = %287
  %295 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2458
  store i8 39, ptr %295, align 1, !dbg !2458, !tbaa !933
  br label %296, !dbg !2458

296:                                              ; preds = %294, %287
  %297 = add i64 %140, 1, !dbg !2461
  call void @llvm.dbg.value(metadata i64 %297, metadata !2163, metadata !DIExpression()), !dbg !2215
  %298 = icmp ult i64 %297, %292, !dbg !2462
  br i1 %298, label %299, label %301, !dbg !2465

299:                                              ; preds = %296
  %300 = getelementptr inbounds i8, ptr %0, i64 %297, !dbg !2462
  store i8 92, ptr %300, align 1, !dbg !2462, !tbaa !933
  br label %301, !dbg !2462

301:                                              ; preds = %299, %296
  %302 = add i64 %140, 2, !dbg !2465
  call void @llvm.dbg.value(metadata i64 %302, metadata !2163, metadata !DIExpression()), !dbg !2215
  %303 = icmp ult i64 %302, %292, !dbg !2466
  br i1 %303, label %304, label %306, !dbg !2469

304:                                              ; preds = %301
  %305 = getelementptr inbounds i8, ptr %0, i64 %302, !dbg !2466
  store i8 39, ptr %305, align 1, !dbg !2466, !tbaa !933
  br label %306, !dbg !2466

306:                                              ; preds = %304, %301
  %307 = add i64 %140, 3, !dbg !2469
  call void @llvm.dbg.value(metadata i64 %307, metadata !2163, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i8 0, metadata !2171, metadata !DIExpression()), !dbg !2215
  br label %480, !dbg !2470

308:                                              ; preds = %170
  br i1 %17, label %309, label %319, !dbg !2471

309:                                              ; preds = %308
  call void @llvm.dbg.value(metadata i64 1, metadata !2185, metadata !DIExpression()), !dbg !2472
  %310 = tail call ptr @__ctype_b_loc() #39, !dbg !2473
  %311 = load ptr, ptr %310, align 8, !dbg !2473, !tbaa !854
  %312 = zext i8 %175 to i64
  %313 = getelementptr inbounds i16, ptr %311, i64 %312, !dbg !2473
  %314 = load i16, ptr %313, align 2, !dbg !2473, !tbaa !965
  %315 = lshr i16 %314, 14, !dbg !2475
  %316 = trunc i16 %315 to i8, !dbg !2475
  %317 = and i8 %316, 1, !dbg !2475
  call void @llvm.dbg.value(metadata i8 %317, metadata !2188, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.value(metadata i64 %171, metadata !2156, metadata !DIExpression()), !dbg !2215
  %318 = icmp eq i8 %317, 0, !dbg !2476
  call void @llvm.dbg.value(metadata i1 %318, metadata !2183, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2324
  br label %368, !dbg !2477

319:                                              ; preds = %308
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #36, !dbg !2478
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2189, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata ptr %14, metadata !2246, metadata !DIExpression()), !dbg !2480
  call void @llvm.dbg.value(metadata ptr %14, metadata !2254, metadata !DIExpression()), !dbg !2482
  call void @llvm.dbg.value(metadata i32 0, metadata !2257, metadata !DIExpression()), !dbg !2482
  call void @llvm.dbg.value(metadata i64 8, metadata !2258, metadata !DIExpression()), !dbg !2482
  store i64 0, ptr %14, align 8, !dbg !2484
  call void @llvm.dbg.value(metadata i64 0, metadata !2185, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.value(metadata i8 1, metadata !2188, metadata !DIExpression()), !dbg !2472
  %320 = icmp eq i64 %171, -1, !dbg !2485
  br i1 %320, label %321, label %323, !dbg !2487

321:                                              ; preds = %319
  %322 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #37, !dbg !2488
  call void @llvm.dbg.value(metadata i64 %322, metadata !2156, metadata !DIExpression()), !dbg !2215
  br label %323, !dbg !2489

323:                                              ; preds = %319, %321
  %324 = phi i64 [ %322, %321 ], [ %171, %319 ], !dbg !2324
  call void @llvm.dbg.value(metadata i64 %324, metadata !2156, metadata !DIExpression()), !dbg !2215
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #36, !dbg !2490
  %325 = sub i64 %324, %145, !dbg !2491
  call void @llvm.dbg.value(metadata ptr %15, metadata !2192, metadata !DIExpression(DW_OP_deref)), !dbg !2492
  %326 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %325, ptr noundef nonnull %14) #36, !dbg !2493
  call void @llvm.dbg.value(metadata i64 %326, metadata !2196, metadata !DIExpression()), !dbg !2492
  switch i64 %326, label %341 [
    i64 0, label %360
    i64 -1, label %330
    i64 -2, label %327
  ], !dbg !2494

327:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i64 0, metadata !2185, metadata !DIExpression()), !dbg !2472
  %328 = icmp ugt i64 %324, %145, !dbg !2495
  br i1 %328, label %331, label %329, !dbg !2497

329:                                              ; preds = %327
  call void @llvm.dbg.value(metadata i8 0, metadata !2188, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.value(metadata i64 0, metadata !2185, metadata !DIExpression()), !dbg !2472
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !2498
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !2499
  call void @llvm.dbg.value(metadata i64 %324, metadata !2156, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i1 true, metadata !2183, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2324
  br label %368, !dbg !2477

330:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i8 0, metadata !2188, metadata !DIExpression()), !dbg !2472
  br label %360, !dbg !2500

331:                                              ; preds = %327, %337
  %332 = phi i64 [ %339, %337 ], [ %145, %327 ]
  %333 = phi i64 [ %338, %337 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !2185, metadata !DIExpression()), !dbg !2472
  %334 = getelementptr inbounds i8, ptr %2, i64 %332, !dbg !2502
  %335 = load i8, ptr %334, align 1, !dbg !2502, !tbaa !933
  %336 = icmp eq i8 %335, 0, !dbg !2497
  br i1 %336, label %363, label %337, !dbg !2503

337:                                              ; preds = %331
  %338 = add i64 %333, 1, !dbg !2504
  call void @llvm.dbg.value(metadata i64 %338, metadata !2185, metadata !DIExpression()), !dbg !2472
  %339 = add i64 %338, %145, !dbg !2505
  %340 = icmp eq i64 %338, %325, !dbg !2495
  br i1 %340, label %363, label %331, !dbg !2497, !llvm.loop !2506

341:                                              ; preds = %323
  %342 = icmp ugt i64 %326, 1
  %343 = and i1 %135, %342, !dbg !2507
  %344 = and i1 %343, %133, !dbg !2507
  call void @llvm.dbg.value(metadata i64 1, metadata !2197, metadata !DIExpression()), !dbg !2508
  br i1 %344, label %345, label %354, !dbg !2507

345:                                              ; preds = %341, %351
  %346 = phi i64 [ %352, %351 ], [ 1, %341 ]
  call void @llvm.dbg.value(metadata i64 %346, metadata !2197, metadata !DIExpression()), !dbg !2508
  %347 = add i64 %346, %145, !dbg !2509
  %348 = getelementptr inbounds i8, ptr %2, i64 %347, !dbg !2511
  %349 = load i8, ptr %348, align 1, !dbg !2511, !tbaa !933
  %350 = sext i8 %349 to i32, !dbg !2511
  switch i32 %350, label %351 [
    i32 91, label %359
    i32 92, label %359
    i32 94, label %359
    i32 96, label %359
    i32 124, label %359
  ], !dbg !2512

351:                                              ; preds = %345
  %352 = add nuw i64 %346, 1, !dbg !2513
  call void @llvm.dbg.value(metadata i64 %352, metadata !2197, metadata !DIExpression()), !dbg !2508
  %353 = icmp eq i64 %352, %326, !dbg !2514
  br i1 %353, label %354, label %345, !dbg !2515, !llvm.loop !2516

354:                                              ; preds = %351, %341
  %355 = load i32, ptr %15, align 4, !dbg !2518, !tbaa !924
  call void @llvm.dbg.value(metadata i32 %355, metadata !2192, metadata !DIExpression()), !dbg !2492
  call void @llvm.dbg.value(metadata i32 %355, metadata !2520, metadata !DIExpression()), !dbg !2528
  %356 = call i32 @iswprint(i32 noundef %355) #36, !dbg !2530
  %357 = icmp ne i32 %356, 0, !dbg !2531
  %358 = zext i1 %357 to i8, !dbg !2532
  call void @llvm.dbg.value(metadata i8 %358, metadata !2188, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.value(metadata i64 %326, metadata !2185, metadata !DIExpression()), !dbg !2472
  br label %363, !dbg !2533

359:                                              ; preds = %345, %345, %345, %345, %345
  call void @llvm.dbg.value(metadata i8 1, metadata !2188, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.value(metadata i64 0, metadata !2185, metadata !DIExpression()), !dbg !2472
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !2498
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !2499
  br label %670

360:                                              ; preds = %323, %330
  %361 = phi i1 [ false, %323 ], [ true, %330 ]
  %362 = phi i8 [ 1, %323 ], [ 0, %330 ]
  call void @llvm.dbg.value(metadata i8 %362, metadata !2188, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.value(metadata i64 0, metadata !2185, metadata !DIExpression()), !dbg !2472
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !2498
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !2499
  call void @llvm.dbg.value(metadata i64 %324, metadata !2156, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i1 %361, metadata !2183, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2324
  br label %368, !dbg !2477

363:                                              ; preds = %331, %337, %354
  %364 = phi i64 [ %326, %354 ], [ %333, %331 ], [ %325, %337 ]
  %365 = phi i8 [ %358, %354 ], [ 0, %337 ], [ 0, %331 ]
  call void @llvm.dbg.value(metadata i8 %365, metadata !2188, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.value(metadata i64 %364, metadata !2185, metadata !DIExpression()), !dbg !2472
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !2498
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !2499
  call void @llvm.dbg.value(metadata i64 %324, metadata !2156, metadata !DIExpression()), !dbg !2215
  %366 = icmp eq i8 %365, 0, !dbg !2476
  call void @llvm.dbg.value(metadata i1 %366, metadata !2183, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2324
  %367 = icmp ugt i64 %364, 1, !dbg !2534
  br i1 %367, label %374, label %368, !dbg !2477

368:                                              ; preds = %329, %360, %309, %363
  %369 = phi i1 [ %318, %309 ], [ %366, %363 ], [ %361, %360 ], [ true, %329 ]
  %370 = phi i8 [ %317, %309 ], [ %365, %363 ], [ %362, %360 ], [ 0, %329 ]
  %371 = phi i64 [ 1, %309 ], [ %364, %363 ], [ 0, %360 ], [ 0, %329 ]
  %372 = phi i64 [ %171, %309 ], [ %324, %363 ], [ %324, %360 ], [ %324, %329 ]
  %373 = select i1 %125, i1 %369, i1 false, !dbg !2535
  br i1 %373, label %374, label %480, !dbg !2535

374:                                              ; preds = %368, %363
  %375 = phi i1 [ true, %368 ], [ %366, %363 ]
  %376 = phi i8 [ %370, %368 ], [ %365, %363 ]
  %377 = phi i64 [ %371, %368 ], [ %364, %363 ]
  %378 = phi i64 [ %372, %368 ], [ %324, %363 ]
  %379 = add i64 %377, %145, !dbg !2536
  call void @llvm.dbg.value(metadata i64 %379, metadata !2205, metadata !DIExpression()), !dbg !2537
  %380 = select i1 %125, i1 %375, i1 false
  br label %381, !dbg !2538

381:                                              ; preds = %474, %374
  %382 = phi i64 [ %140, %374 ], [ %475, %474 ], !dbg !2215
  %383 = phi i8 [ %144, %374 ], [ %470, %474 ], !dbg !2316
  %384 = phi i64 [ %145, %374 ], [ %449, %474 ], !dbg !2314
  %385 = phi i8 [ %173, %374 ], [ %446, %474 ], !dbg !2324
  %386 = phi i8 [ 0, %374 ], [ %447, %474 ], !dbg !2539
  %387 = phi i8 [ %175, %374 ], [ %477, %474 ], !dbg !2324
  call void @llvm.dbg.value(metadata i8 %387, metadata !2184, metadata !DIExpression()), !dbg !2324
  call void @llvm.dbg.value(metadata i8 %386, metadata !2182, metadata !DIExpression()), !dbg !2324
  call void @llvm.dbg.value(metadata i8 %385, metadata !2179, metadata !DIExpression()), !dbg !2324
  call void @llvm.dbg.value(metadata i64 %384, metadata !2177, metadata !DIExpression()), !dbg !2314
  call void @llvm.dbg.value(metadata i8 %383, metadata !2171, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i64 %382, metadata !2163, metadata !DIExpression()), !dbg !2215
  br i1 %380, label %388, label %434, !dbg !2540

388:                                              ; preds = %381
  br i1 %132, label %389, label %679, !dbg !2545

389:                                              ; preds = %388
  call void @llvm.dbg.value(metadata i8 1, metadata !2182, metadata !DIExpression()), !dbg !2324
  %390 = and i8 %383, 1, !dbg !2548
  %391 = icmp eq i8 %390, 0, !dbg !2548
  %392 = select i1 %133, i1 %391, i1 false, !dbg !2548
  br i1 %392, label %393, label %409, !dbg !2548

393:                                              ; preds = %389
  %394 = icmp ult i64 %382, %146, !dbg !2550
  br i1 %394, label %395, label %397, !dbg !2554

395:                                              ; preds = %393
  %396 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !2550
  store i8 39, ptr %396, align 1, !dbg !2550, !tbaa !933
  br label %397, !dbg !2550

397:                                              ; preds = %395, %393
  %398 = add i64 %382, 1, !dbg !2554
  call void @llvm.dbg.value(metadata i64 %398, metadata !2163, metadata !DIExpression()), !dbg !2215
  %399 = icmp ult i64 %398, %146, !dbg !2555
  br i1 %399, label %400, label %402, !dbg !2558

400:                                              ; preds = %397
  %401 = getelementptr inbounds i8, ptr %0, i64 %398, !dbg !2555
  store i8 36, ptr %401, align 1, !dbg !2555, !tbaa !933
  br label %402, !dbg !2555

402:                                              ; preds = %400, %397
  %403 = add i64 %382, 2, !dbg !2558
  call void @llvm.dbg.value(metadata i64 %403, metadata !2163, metadata !DIExpression()), !dbg !2215
  %404 = icmp ult i64 %403, %146, !dbg !2559
  br i1 %404, label %405, label %407, !dbg !2562

405:                                              ; preds = %402
  %406 = getelementptr inbounds i8, ptr %0, i64 %403, !dbg !2559
  store i8 39, ptr %406, align 1, !dbg !2559, !tbaa !933
  br label %407, !dbg !2559

407:                                              ; preds = %405, %402
  %408 = add i64 %382, 3, !dbg !2562
  call void @llvm.dbg.value(metadata i64 %408, metadata !2163, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i8 1, metadata !2171, metadata !DIExpression()), !dbg !2215
  br label %409, !dbg !2563

409:                                              ; preds = %389, %407
  %410 = phi i64 [ %408, %407 ], [ %382, %389 ], !dbg !2215
  %411 = phi i8 [ 1, %407 ], [ %383, %389 ], !dbg !2215
  call void @llvm.dbg.value(metadata i8 %411, metadata !2171, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i64 %410, metadata !2163, metadata !DIExpression()), !dbg !2215
  %412 = icmp ult i64 %410, %146, !dbg !2564
  br i1 %412, label %413, label %415, !dbg !2567

413:                                              ; preds = %409
  %414 = getelementptr inbounds i8, ptr %0, i64 %410, !dbg !2564
  store i8 92, ptr %414, align 1, !dbg !2564, !tbaa !933
  br label %415, !dbg !2564

415:                                              ; preds = %413, %409
  %416 = add i64 %410, 1, !dbg !2567
  call void @llvm.dbg.value(metadata i64 %416, metadata !2163, metadata !DIExpression()), !dbg !2215
  %417 = icmp ult i64 %416, %146, !dbg !2568
  br i1 %417, label %418, label %422, !dbg !2571

418:                                              ; preds = %415
  %419 = lshr i8 %387, 6
  %420 = or i8 %419, 48, !dbg !2568
  %421 = getelementptr inbounds i8, ptr %0, i64 %416, !dbg !2568
  store i8 %420, ptr %421, align 1, !dbg !2568, !tbaa !933
  br label %422, !dbg !2568

422:                                              ; preds = %418, %415
  %423 = add i64 %410, 2, !dbg !2571
  call void @llvm.dbg.value(metadata i64 %423, metadata !2163, metadata !DIExpression()), !dbg !2215
  %424 = icmp ult i64 %423, %146, !dbg !2572
  br i1 %424, label %425, label %430, !dbg !2575

425:                                              ; preds = %422
  %426 = lshr i8 %387, 3
  %427 = and i8 %426, 7, !dbg !2572
  %428 = or i8 %427, 48, !dbg !2572
  %429 = getelementptr inbounds i8, ptr %0, i64 %423, !dbg !2572
  store i8 %428, ptr %429, align 1, !dbg !2572, !tbaa !933
  br label %430, !dbg !2572

430:                                              ; preds = %425, %422
  %431 = add i64 %410, 3, !dbg !2575
  call void @llvm.dbg.value(metadata i64 %431, metadata !2163, metadata !DIExpression()), !dbg !2215
  %432 = and i8 %387, 7, !dbg !2576
  %433 = or i8 %432, 48, !dbg !2577
  call void @llvm.dbg.value(metadata i8 %433, metadata !2184, metadata !DIExpression()), !dbg !2324
  br label %443, !dbg !2578

434:                                              ; preds = %381
  %435 = and i8 %385, 1, !dbg !2579
  %436 = icmp eq i8 %435, 0, !dbg !2579
  br i1 %436, label %443, label %437, !dbg !2581

437:                                              ; preds = %434
  %438 = icmp ult i64 %382, %146, !dbg !2582
  br i1 %438, label %439, label %441, !dbg !2586

439:                                              ; preds = %437
  %440 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !2582
  store i8 92, ptr %440, align 1, !dbg !2582, !tbaa !933
  br label %441, !dbg !2582

441:                                              ; preds = %439, %437
  %442 = add i64 %382, 1, !dbg !2586
  call void @llvm.dbg.value(metadata i64 %442, metadata !2163, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i8 0, metadata !2179, metadata !DIExpression()), !dbg !2324
  br label %443, !dbg !2587

443:                                              ; preds = %434, %441, %430
  %444 = phi i64 [ %442, %441 ], [ %382, %434 ], [ %431, %430 ], !dbg !2215
  %445 = phi i8 [ %383, %441 ], [ %383, %434 ], [ %411, %430 ], !dbg !2316
  %446 = phi i8 [ 0, %441 ], [ %385, %434 ], [ %385, %430 ], !dbg !2324
  %447 = phi i8 [ %386, %441 ], [ %386, %434 ], [ 1, %430 ], !dbg !2324
  %448 = phi i8 [ %387, %441 ], [ %387, %434 ], [ %433, %430 ], !dbg !2324
  call void @llvm.dbg.value(metadata i8 %448, metadata !2184, metadata !DIExpression()), !dbg !2324
  call void @llvm.dbg.value(metadata i8 %447, metadata !2182, metadata !DIExpression()), !dbg !2324
  call void @llvm.dbg.value(metadata i8 %446, metadata !2179, metadata !DIExpression()), !dbg !2324
  call void @llvm.dbg.value(metadata i8 %445, metadata !2171, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i64 %444, metadata !2163, metadata !DIExpression()), !dbg !2215
  %449 = add i64 %384, 1, !dbg !2588
  %450 = icmp ugt i64 %379, %449, !dbg !2590
  br i1 %450, label %451, label %478, !dbg !2591

451:                                              ; preds = %443
  %452 = and i8 %445, 1, !dbg !2592
  %453 = icmp ne i8 %452, 0, !dbg !2592
  %454 = and i8 %447, 1, !dbg !2592
  %455 = icmp eq i8 %454, 0, !dbg !2592
  %456 = select i1 %453, i1 %455, i1 false, !dbg !2592
  br i1 %456, label %457, label %468, !dbg !2592

457:                                              ; preds = %451
  %458 = icmp ult i64 %444, %146, !dbg !2595
  br i1 %458, label %459, label %461, !dbg !2599

459:                                              ; preds = %457
  %460 = getelementptr inbounds i8, ptr %0, i64 %444, !dbg !2595
  store i8 39, ptr %460, align 1, !dbg !2595, !tbaa !933
  br label %461, !dbg !2595

461:                                              ; preds = %459, %457
  %462 = add i64 %444, 1, !dbg !2599
  call void @llvm.dbg.value(metadata i64 %462, metadata !2163, metadata !DIExpression()), !dbg !2215
  %463 = icmp ult i64 %462, %146, !dbg !2600
  br i1 %463, label %464, label %466, !dbg !2603

464:                                              ; preds = %461
  %465 = getelementptr inbounds i8, ptr %0, i64 %462, !dbg !2600
  store i8 39, ptr %465, align 1, !dbg !2600, !tbaa !933
  br label %466, !dbg !2600

466:                                              ; preds = %464, %461
  %467 = add i64 %444, 2, !dbg !2603
  call void @llvm.dbg.value(metadata i64 %467, metadata !2163, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i8 0, metadata !2171, metadata !DIExpression()), !dbg !2215
  br label %468, !dbg !2604

468:                                              ; preds = %451, %466
  %469 = phi i64 [ %467, %466 ], [ %444, %451 ], !dbg !2605
  %470 = phi i8 [ 0, %466 ], [ %445, %451 ], !dbg !2215
  call void @llvm.dbg.value(metadata i8 %470, metadata !2171, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i64 %469, metadata !2163, metadata !DIExpression()), !dbg !2215
  %471 = icmp ult i64 %469, %146, !dbg !2606
  br i1 %471, label %472, label %474, !dbg !2609

472:                                              ; preds = %468
  %473 = getelementptr inbounds i8, ptr %0, i64 %469, !dbg !2606
  store i8 %448, ptr %473, align 1, !dbg !2606, !tbaa !933
  br label %474, !dbg !2606

474:                                              ; preds = %472, %468
  %475 = add i64 %469, 1, !dbg !2609
  call void @llvm.dbg.value(metadata i64 %475, metadata !2163, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i64 %449, metadata !2177, metadata !DIExpression()), !dbg !2314
  %476 = getelementptr inbounds i8, ptr %2, i64 %449, !dbg !2610
  %477 = load i8, ptr %476, align 1, !dbg !2610, !tbaa !933
  call void @llvm.dbg.value(metadata i8 %477, metadata !2184, metadata !DIExpression()), !dbg !2324
  br label %381, !dbg !2611, !llvm.loop !2612

478:                                              ; preds = %443
  %479 = and i8 %376, 1, !dbg !2324
  call void @llvm.dbg.value(metadata i8 %448, metadata !2184, metadata !DIExpression()), !dbg !2324
  call void @llvm.dbg.value(metadata i8 %479, metadata !2183, metadata !DIExpression()), !dbg !2324
  call void @llvm.dbg.value(metadata i8 %447, metadata !2182, metadata !DIExpression()), !dbg !2324
  call void @llvm.dbg.value(metadata i8 %446, metadata !2179, metadata !DIExpression()), !dbg !2324
  call void @llvm.dbg.value(metadata i64 %384, metadata !2177, metadata !DIExpression()), !dbg !2314
  call void @llvm.dbg.value(metadata i8 %445, metadata !2171, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i64 %444, metadata !2163, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i64 %378, metadata !2156, metadata !DIExpression()), !dbg !2215
  br label %573

480:                                              ; preds = %368, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %276, %206, %209, %223, %285, %306, %283, %280, %277, %226, %227, %261, %237, %232, %229, %228
  %481 = phi i64 [ %171, %306 ], [ %171, %285 ], [ %171, %283 ], [ %171, %280 ], [ -1, %277 ], [ %171, %226 ], [ %171, %237 ], [ %171, %261 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %276 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %372, %368 ], !dbg !2615
  %482 = phi i64 [ %307, %306 ], [ %140, %285 ], [ %140, %283 ], [ %140, %280 ], [ %140, %277 ], [ %140, %226 ], [ %140, %237 ], [ %262, %261 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %276 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %368 ], !dbg !2215
  %483 = phi i64 [ %291, %306 ], [ %141, %285 ], [ %141, %283 ], [ %141, %280 ], [ %141, %277 ], [ %141, %226 ], [ %141, %237 ], [ %141, %261 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %276 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %368 ], !dbg !2220
  %484 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %142, %283 ], [ %142, %280 ], [ %142, %277 ], [ %142, %226 ], [ %142, %237 ], [ %142, %261 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %276 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %368 ], !dbg !2215
  %485 = phi i8 [ 0, %306 ], [ %144, %285 ], [ %144, %283 ], [ %144, %280 ], [ %144, %277 ], [ %144, %226 ], [ %144, %237 ], [ %144, %261 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %276 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %368 ], !dbg !2215
  %486 = phi i64 [ %145, %306 ], [ %145, %285 ], [ %145, %283 ], [ %145, %280 ], [ %145, %277 ], [ %145, %226 ], [ %145, %237 ], [ %230, %261 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %276 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %368 ], !dbg !2314
  %487 = phi i8 [ 0, %306 ], [ 0, %285 ], [ 0, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %276 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %368 ], !dbg !2324
  %488 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %284, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %276 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %370, %368 ], !dbg !2324
  %489 = phi i8 [ 39, %306 ], [ 39, %285 ], [ %175, %283 ], [ %175, %280 ], [ %175, %277 ], [ 63, %226 ], [ 63, %237 ], [ %239, %261 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %276 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %368 ], !dbg !2324
  %490 = phi i64 [ %292, %306 ], [ %146, %285 ], [ %146, %283 ], [ %146, %280 ], [ %146, %277 ], [ %146, %226 ], [ %146, %237 ], [ %146, %261 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %276 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %368 ]
  call void @llvm.dbg.value(metadata i64 %490, metadata !2154, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i8 %489, metadata !2184, metadata !DIExpression()), !dbg !2324
  call void @llvm.dbg.value(metadata i8 %488, metadata !2183, metadata !DIExpression()), !dbg !2324
  call void @llvm.dbg.value(metadata i8 %487, metadata !2182, metadata !DIExpression()), !dbg !2324
  call void @llvm.dbg.value(metadata i8 %173, metadata !2179, metadata !DIExpression()), !dbg !2324
  call void @llvm.dbg.value(metadata i64 %486, metadata !2177, metadata !DIExpression()), !dbg !2314
  call void @llvm.dbg.value(metadata i8 %485, metadata !2171, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i8 %484, metadata !2169, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i64 %483, metadata !2164, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i64 %482, metadata !2163, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i64 %481, metadata !2156, metadata !DIExpression()), !dbg !2215
  br i1 %127, label %502, label %491, !dbg !2616

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
  br i1 %137, label %503, label %524, !dbg !2618

502:                                              ; preds = %480
  br i1 %27, label %524, label %503, !dbg !2619

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
  %514 = lshr i8 %505, 5, !dbg !2620
  %515 = zext i8 %514 to i64, !dbg !2620
  %516 = getelementptr inbounds i32, ptr %6, i64 %515, !dbg !2621
  %517 = load i32, ptr %516, align 4, !dbg !2621, !tbaa !924
  %518 = and i8 %505, 31, !dbg !2622
  %519 = zext i8 %518 to i32, !dbg !2622
  %520 = shl nuw i32 1, %519, !dbg !2623
  %521 = and i32 %517, %520, !dbg !2623
  %522 = icmp eq i32 %521, 0, !dbg !2623
  %523 = and i1 %172, %522, !dbg !2624
  br i1 %523, label %573, label %535, !dbg !2624

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
  br i1 %172, label %573, label %535, !dbg !2625

535:                                              ; preds = %271, %274, %524, %503
  %536 = phi i64 [ %513, %503 ], [ %534, %524 ], [ %171, %274 ], [ %171, %271 ], !dbg !2615
  %537 = phi i64 [ %512, %503 ], [ %533, %524 ], [ %140, %274 ], [ %140, %271 ], !dbg !2215
  %538 = phi i64 [ %511, %503 ], [ %532, %524 ], [ %141, %274 ], [ %141, %271 ], !dbg !2220
  %539 = phi i8 [ %510, %503 ], [ %531, %524 ], [ %142, %274 ], [ %142, %271 ], !dbg !2224
  %540 = phi i8 [ %509, %503 ], [ %530, %524 ], [ %144, %274 ], [ %144, %271 ], !dbg !2316
  %541 = phi i64 [ %508, %503 ], [ %529, %524 ], [ %145, %274 ], [ %145, %271 ], !dbg !2626
  %542 = phi i8 [ %506, %503 ], [ %527, %524 ], [ 0, %274 ], [ 0, %271 ], !dbg !2324
  %543 = phi i8 [ %505, %503 ], [ %526, %524 ], [ %275, %274 ], [ 92, %271 ], !dbg !2324
  %544 = phi i64 [ %504, %503 ], [ %525, %524 ], [ %146, %274 ], [ %146, %271 ]
  call void @llvm.dbg.value(metadata i64 %544, metadata !2154, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i8 %543, metadata !2184, metadata !DIExpression()), !dbg !2324
  call void @llvm.dbg.value(metadata i8 %542, metadata !2183, metadata !DIExpression()), !dbg !2324
  call void @llvm.dbg.value(metadata i64 %541, metadata !2177, metadata !DIExpression()), !dbg !2314
  call void @llvm.dbg.value(metadata i8 %540, metadata !2171, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i8 %539, metadata !2169, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i64 %538, metadata !2164, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i64 %537, metadata !2163, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i64 %536, metadata !2156, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.label(metadata !2212), !dbg !2627
  br i1 %132, label %545, label %674, !dbg !2628

545:                                              ; preds = %535
  call void @llvm.dbg.value(metadata i8 1, metadata !2182, metadata !DIExpression()), !dbg !2324
  %546 = and i8 %540, 1, !dbg !2630
  %547 = icmp eq i8 %546, 0, !dbg !2630
  %548 = select i1 %133, i1 %547, i1 false, !dbg !2630
  br i1 %548, label %549, label %565, !dbg !2630

549:                                              ; preds = %545
  %550 = icmp ult i64 %537, %544, !dbg !2632
  br i1 %550, label %551, label %553, !dbg !2636

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, ptr %0, i64 %537, !dbg !2632
  store i8 39, ptr %552, align 1, !dbg !2632, !tbaa !933
  br label %553, !dbg !2632

553:                                              ; preds = %551, %549
  %554 = add i64 %537, 1, !dbg !2636
  call void @llvm.dbg.value(metadata i64 %554, metadata !2163, metadata !DIExpression()), !dbg !2215
  %555 = icmp ult i64 %554, %544, !dbg !2637
  br i1 %555, label %556, label %558, !dbg !2640

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, ptr %0, i64 %554, !dbg !2637
  store i8 36, ptr %557, align 1, !dbg !2637, !tbaa !933
  br label %558, !dbg !2637

558:                                              ; preds = %556, %553
  %559 = add i64 %537, 2, !dbg !2640
  call void @llvm.dbg.value(metadata i64 %559, metadata !2163, metadata !DIExpression()), !dbg !2215
  %560 = icmp ult i64 %559, %544, !dbg !2641
  br i1 %560, label %561, label %563, !dbg !2644

561:                                              ; preds = %558
  %562 = getelementptr inbounds i8, ptr %0, i64 %559, !dbg !2641
  store i8 39, ptr %562, align 1, !dbg !2641, !tbaa !933
  br label %563, !dbg !2641

563:                                              ; preds = %561, %558
  %564 = add i64 %537, 3, !dbg !2644
  call void @llvm.dbg.value(metadata i64 %564, metadata !2163, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i8 1, metadata !2171, metadata !DIExpression()), !dbg !2215
  br label %565, !dbg !2645

565:                                              ; preds = %545, %563
  %566 = phi i64 [ %564, %563 ], [ %537, %545 ], !dbg !2324
  %567 = phi i8 [ 1, %563 ], [ %540, %545 ], !dbg !2215
  call void @llvm.dbg.value(metadata i8 %567, metadata !2171, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i64 %566, metadata !2163, metadata !DIExpression()), !dbg !2215
  %568 = icmp ult i64 %566, %544, !dbg !2646
  br i1 %568, label %569, label %571, !dbg !2649

569:                                              ; preds = %565
  %570 = getelementptr inbounds i8, ptr %0, i64 %566, !dbg !2646
  store i8 92, ptr %570, align 1, !dbg !2646, !tbaa !933
  br label %571, !dbg !2646

571:                                              ; preds = %565, %569
  %572 = add i64 %566, 1, !dbg !2649
  call void @llvm.dbg.value(metadata i64 %544, metadata !2154, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i8 %543, metadata !2184, metadata !DIExpression()), !dbg !2324
  call void @llvm.dbg.value(metadata i8 %542, metadata !2183, metadata !DIExpression()), !dbg !2324
  call void @llvm.dbg.value(metadata i8 1, metadata !2182, metadata !DIExpression()), !dbg !2324
  call void @llvm.dbg.value(metadata i64 %541, metadata !2177, metadata !DIExpression()), !dbg !2314
  call void @llvm.dbg.value(metadata i8 %567, metadata !2171, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i8 %539, metadata !2169, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i64 %538, metadata !2164, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i64 %572, metadata !2163, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i64 %536, metadata !2156, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.label(metadata !2213), !dbg !2650
  br label %600, !dbg !2651

573:                                              ; preds = %478, %503, %269, %271, %524
  %574 = phi i64 [ %378, %478 ], [ %534, %524 ], [ %171, %269 ], [ %171, %271 ], [ %513, %503 ], !dbg !2615
  %575 = phi i64 [ %444, %478 ], [ %533, %524 ], [ %140, %269 ], [ %140, %271 ], [ %512, %503 ], !dbg !2215
  %576 = phi i64 [ %141, %478 ], [ %532, %524 ], [ %141, %269 ], [ %141, %271 ], [ %511, %503 ], !dbg !2220
  %577 = phi i8 [ %142, %478 ], [ %531, %524 ], [ %142, %269 ], [ %142, %271 ], [ %510, %503 ], !dbg !2224
  %578 = phi i8 [ %445, %478 ], [ %530, %524 ], [ %144, %269 ], [ %144, %271 ], [ %509, %503 ], !dbg !2316
  %579 = phi i64 [ %384, %478 ], [ %529, %524 ], [ %145, %269 ], [ %145, %271 ], [ %508, %503 ], !dbg !2626
  %580 = phi i8 [ %447, %478 ], [ %528, %524 ], [ 0, %269 ], [ 0, %271 ], [ %507, %503 ], !dbg !2324
  %581 = phi i8 [ %479, %478 ], [ %527, %524 ], [ 0, %269 ], [ 0, %271 ], [ %506, %503 ], !dbg !2324
  %582 = phi i8 [ %448, %478 ], [ %526, %524 ], [ 92, %269 ], [ 92, %271 ], [ %505, %503 ], !dbg !2654
  %583 = phi i64 [ %146, %478 ], [ %525, %524 ], [ %146, %269 ], [ %146, %271 ], [ %504, %503 ]
  call void @llvm.dbg.value(metadata i64 %583, metadata !2154, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i8 %582, metadata !2184, metadata !DIExpression()), !dbg !2324
  call void @llvm.dbg.value(metadata i8 %581, metadata !2183, metadata !DIExpression()), !dbg !2324
  call void @llvm.dbg.value(metadata i8 %580, metadata !2182, metadata !DIExpression()), !dbg !2324
  call void @llvm.dbg.value(metadata i64 %579, metadata !2177, metadata !DIExpression()), !dbg !2314
  call void @llvm.dbg.value(metadata i8 %578, metadata !2171, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i8 %577, metadata !2169, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i64 %576, metadata !2164, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i64 %575, metadata !2163, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i64 %574, metadata !2156, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.label(metadata !2213), !dbg !2650
  %584 = and i8 %578, 1, !dbg !2651
  %585 = icmp ne i8 %584, 0, !dbg !2651
  %586 = and i8 %580, 1, !dbg !2651
  %587 = icmp eq i8 %586, 0, !dbg !2651
  %588 = select i1 %585, i1 %587, i1 false, !dbg !2651
  br i1 %588, label %589, label %600, !dbg !2651

589:                                              ; preds = %573
  %590 = icmp ult i64 %575, %583, !dbg !2655
  br i1 %590, label %591, label %593, !dbg !2659

591:                                              ; preds = %589
  %592 = getelementptr inbounds i8, ptr %0, i64 %575, !dbg !2655
  store i8 39, ptr %592, align 1, !dbg !2655, !tbaa !933
  br label %593, !dbg !2655

593:                                              ; preds = %591, %589
  %594 = add i64 %575, 1, !dbg !2659
  call void @llvm.dbg.value(metadata i64 %594, metadata !2163, metadata !DIExpression()), !dbg !2215
  %595 = icmp ult i64 %594, %583, !dbg !2660
  br i1 %595, label %596, label %598, !dbg !2663

596:                                              ; preds = %593
  %597 = getelementptr inbounds i8, ptr %0, i64 %594, !dbg !2660
  store i8 39, ptr %597, align 1, !dbg !2660, !tbaa !933
  br label %598, !dbg !2660

598:                                              ; preds = %596, %593
  %599 = add i64 %575, 2, !dbg !2663
  call void @llvm.dbg.value(metadata i64 %599, metadata !2163, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i8 0, metadata !2171, metadata !DIExpression()), !dbg !2215
  br label %600, !dbg !2664

600:                                              ; preds = %571, %573, %598
  %601 = phi i64 [ %583, %598 ], [ %583, %573 ], [ %544, %571 ]
  %602 = phi i8 [ %582, %598 ], [ %582, %573 ], [ %543, %571 ]
  %603 = phi i8 [ %581, %598 ], [ %581, %573 ], [ %542, %571 ]
  %604 = phi i64 [ %579, %598 ], [ %579, %573 ], [ %541, %571 ]
  %605 = phi i8 [ %577, %598 ], [ %577, %573 ], [ %539, %571 ]
  %606 = phi i64 [ %576, %598 ], [ %576, %573 ], [ %538, %571 ]
  %607 = phi i64 [ %574, %598 ], [ %574, %573 ], [ %536, %571 ]
  %608 = phi i64 [ %599, %598 ], [ %575, %573 ], [ %572, %571 ], !dbg !2324
  %609 = phi i8 [ 0, %598 ], [ %578, %573 ], [ %567, %571 ], !dbg !2215
  call void @llvm.dbg.value(metadata i8 %609, metadata !2171, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i64 %608, metadata !2163, metadata !DIExpression()), !dbg !2215
  %610 = icmp ult i64 %608, %601, !dbg !2665
  br i1 %610, label %611, label %613, !dbg !2668

611:                                              ; preds = %600
  %612 = getelementptr inbounds i8, ptr %0, i64 %608, !dbg !2665
  store i8 %602, ptr %612, align 1, !dbg !2665, !tbaa !933
  br label %613, !dbg !2665

613:                                              ; preds = %611, %600
  %614 = add i64 %608, 1, !dbg !2668
  call void @llvm.dbg.value(metadata i64 %614, metadata !2163, metadata !DIExpression()), !dbg !2215
  %615 = icmp eq i8 %603, 0, !dbg !2669
  %616 = select i1 %615, i8 0, i8 %143, !dbg !2671
  call void @llvm.dbg.value(metadata i8 %616, metadata !2170, metadata !DIExpression()), !dbg !2215
  br label %617, !dbg !2672

617:                                              ; preds = %225, %613
  %618 = phi i64 [ %607, %613 ], [ %171, %225 ], !dbg !2615
  %619 = phi i64 [ %614, %613 ], [ %140, %225 ], !dbg !2215
  %620 = phi i64 [ %606, %613 ], [ %141, %225 ], !dbg !2220
  %621 = phi i8 [ %605, %613 ], [ %142, %225 ], !dbg !2224
  %622 = phi i8 [ %616, %613 ], [ %143, %225 ], !dbg !2225
  %623 = phi i8 [ %609, %613 ], [ %144, %225 ], !dbg !2316
  %624 = phi i64 [ %604, %613 ], [ %145, %225 ], !dbg !2626
  %625 = phi i64 [ %601, %613 ], [ %146, %225 ]
  call void @llvm.dbg.value(metadata i64 %625, metadata !2154, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i64 %624, metadata !2177, metadata !DIExpression()), !dbg !2314
  call void @llvm.dbg.value(metadata i8 %623, metadata !2171, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i8 %622, metadata !2170, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i8 %621, metadata !2169, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i64 %620, metadata !2164, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i64 %619, metadata !2163, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i64 %618, metadata !2156, metadata !DIExpression()), !dbg !2215
  %626 = add i64 %624, 1, !dbg !2673
  call void @llvm.dbg.value(metadata i64 %626, metadata !2177, metadata !DIExpression()), !dbg !2314
  br label %138, !dbg !2674, !llvm.loop !2675

627:                                              ; preds = %152, %148
  call void @llvm.dbg.value(metadata i64 %146, metadata !2154, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i8 %143, metadata !2170, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i8 %142, metadata !2169, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i64 %141, metadata !2164, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i64 %140, metadata !2163, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i64 %139, metadata !2156, metadata !DIExpression()), !dbg !2215
  %628 = icmp eq i64 %140, 0, !dbg !2677
  %629 = and i1 %133, %628, !dbg !2679
  %630 = xor i1 %629, true, !dbg !2679
  %631 = select i1 %630, i1 true, i1 %132, !dbg !2679
  br i1 %631, label %632, label %670, !dbg !2679

632:                                              ; preds = %627
  %633 = select i1 %133, i1 %132, i1 false, !dbg !2680
  %634 = and i8 %142, 1
  %635 = icmp ne i8 %634, 0
  %636 = select i1 %633, i1 %635, i1 false, !dbg !2680
  br i1 %636, label %637, label %646, !dbg !2680

637:                                              ; preds = %632
  %638 = and i8 %143, 1, !dbg !2682
  %639 = icmp eq i8 %638, 0, !dbg !2682
  br i1 %639, label %642, label %640, !dbg !2685

640:                                              ; preds = %637
  %641 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %117, ptr noundef %118), !dbg !2686
  br label %694, !dbg !2687

642:                                              ; preds = %637
  %643 = icmp eq i64 %146, 0, !dbg !2688
  %644 = icmp ne i64 %141, 0
  %645 = select i1 %643, i1 %644, i1 false, !dbg !2690
  br i1 %645, label %28, label %646, !dbg !2690

646:                                              ; preds = %642, %632
  %647 = phi i1 [ true, %642 ], [ %132, %632 ]
  %648 = icmp ne ptr %120, null, !dbg !2691
  %649 = select i1 %648, i1 %647, i1 false, !dbg !2693
  br i1 %649, label %650, label %665, !dbg !2693

650:                                              ; preds = %646
  call void @llvm.dbg.value(metadata ptr %120, metadata !2165, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i64 %140, metadata !2163, metadata !DIExpression()), !dbg !2215
  %651 = load i8, ptr %120, align 1, !dbg !2694, !tbaa !933
  %652 = icmp eq i8 %651, 0, !dbg !2697
  br i1 %652, label %665, label %653, !dbg !2697

653:                                              ; preds = %650, %660
  %654 = phi i8 [ %663, %660 ], [ %651, %650 ]
  %655 = phi ptr [ %662, %660 ], [ %120, %650 ]
  %656 = phi i64 [ %661, %660 ], [ %140, %650 ]
  call void @llvm.dbg.value(metadata ptr %655, metadata !2165, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i64 %656, metadata !2163, metadata !DIExpression()), !dbg !2215
  %657 = icmp ult i64 %656, %146, !dbg !2698
  br i1 %657, label %658, label %660, !dbg !2701

658:                                              ; preds = %653
  %659 = getelementptr inbounds i8, ptr %0, i64 %656, !dbg !2698
  store i8 %654, ptr %659, align 1, !dbg !2698, !tbaa !933
  br label %660, !dbg !2698

660:                                              ; preds = %658, %653
  %661 = add i64 %656, 1, !dbg !2701
  call void @llvm.dbg.value(metadata i64 %661, metadata !2163, metadata !DIExpression()), !dbg !2215
  %662 = getelementptr inbounds i8, ptr %655, i64 1, !dbg !2702
  call void @llvm.dbg.value(metadata ptr %662, metadata !2165, metadata !DIExpression()), !dbg !2215
  %663 = load i8, ptr %662, align 1, !dbg !2694, !tbaa !933
  %664 = icmp eq i8 %663, 0, !dbg !2697
  br i1 %664, label %665, label %653, !dbg !2697, !llvm.loop !2703

665:                                              ; preds = %660, %650, %646
  %666 = phi i64 [ %140, %646 ], [ %140, %650 ], [ %661, %660 ], !dbg !2297
  call void @llvm.dbg.value(metadata i64 %666, metadata !2163, metadata !DIExpression()), !dbg !2215
  %667 = icmp ult i64 %666, %146, !dbg !2705
  br i1 %667, label %668, label %694, !dbg !2707

668:                                              ; preds = %665
  %669 = getelementptr inbounds i8, ptr %0, i64 %666, !dbg !2708
  store i8 0, ptr %669, align 1, !dbg !2709, !tbaa !933
  br label %694, !dbg !2708

670:                                              ; preds = %627, %227, %269, %272, %283, %286, %359
  %671 = phi i64 [ %324, %359 ], [ %171, %286 ], [ %171, %283 ], [ %171, %272 ], [ %171, %269 ], [ %171, %227 ], [ %139, %627 ]
  call void @llvm.dbg.label(metadata !2214), !dbg !2710
  %672 = icmp eq i8 %124, 0, !dbg !2711
  %673 = select i1 %672, i32 2, i32 4, !dbg !2711
  br label %684, !dbg !2711

674:                                              ; preds = %177, %535
  %675 = phi i64 [ %146, %177 ], [ %544, %535 ]
  %676 = phi i64 [ %171, %177 ], [ %536, %535 ]
  %677 = icmp eq i8 %124, 0, !dbg !2711
  %678 = select i1 %677, i32 2, i32 4, !dbg !2711
  br label %679, !dbg !2713

679:                                              ; preds = %388, %674
  %680 = phi i32 [ %678, %674 ], [ 4, %388 ]
  %681 = phi i64 [ %675, %674 ], [ %146, %388 ]
  %682 = phi i64 [ %676, %674 ], [ %378, %388 ]
  call void @llvm.dbg.label(metadata !2214), !dbg !2710
  %683 = icmp eq i32 %116, 2, !dbg !2713
  br i1 %683, label %684, label %688, !dbg !2711

684:                                              ; preds = %670, %679
  %685 = phi i32 [ %673, %670 ], [ %680, %679 ]
  %686 = phi i64 [ %671, %670 ], [ %682, %679 ]
  %687 = phi i64 [ %146, %670 ], [ %681, %679 ]
  br label %688, !dbg !2711

688:                                              ; preds = %241, %163, %679, %684
  %689 = phi i64 [ %686, %684 ], [ %682, %679 ], [ %161, %163 ], [ %171, %241 ]
  %690 = phi i64 [ %687, %684 ], [ %681, %679 ], [ %146, %163 ], [ %146, %241 ]
  %691 = phi i32 [ %685, %684 ], [ %116, %679 ], [ %116, %163 ], [ 5, %241 ]
  call void @llvm.dbg.value(metadata i32 %691, metadata !2157, metadata !DIExpression()), !dbg !2215
  %692 = and i32 %5, -3, !dbg !2714
  %693 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %690, ptr noundef %2, i64 noundef %689, i32 noundef %691, i32 noundef %692, ptr noundef null, ptr noundef %117, ptr noundef %118), !dbg !2715
  br label %694, !dbg !2716

694:                                              ; preds = %665, %668, %688, %640
  %695 = phi i64 [ %693, %688 ], [ %641, %640 ], [ %666, %668 ], [ %666, %665 ]
  ret i64 %695, !dbg !2717
}

; Function Attrs: nounwind
declare !dbg !2718 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2721 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !2724 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2726 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2730, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %1, metadata !2731, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata ptr %2, metadata !2732, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata ptr %0, metadata !2734, metadata !DIExpression()), !dbg !2747
  call void @llvm.dbg.value(metadata i64 %1, metadata !2739, metadata !DIExpression()), !dbg !2747
  call void @llvm.dbg.value(metadata ptr null, metadata !2740, metadata !DIExpression()), !dbg !2747
  call void @llvm.dbg.value(metadata ptr %2, metadata !2741, metadata !DIExpression()), !dbg !2747
  %4 = icmp eq ptr %2, null, !dbg !2749
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2749
  call void @llvm.dbg.value(metadata ptr %5, metadata !2742, metadata !DIExpression()), !dbg !2747
  %6 = tail call ptr @__errno_location() #39, !dbg !2750
  %7 = load i32, ptr %6, align 4, !dbg !2750, !tbaa !924
  call void @llvm.dbg.value(metadata i32 %7, metadata !2743, metadata !DIExpression()), !dbg !2747
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2751
  %9 = load i32, ptr %8, align 4, !dbg !2751, !tbaa !2097
  %10 = or i32 %9, 1, !dbg !2752
  call void @llvm.dbg.value(metadata i32 %10, metadata !2744, metadata !DIExpression()), !dbg !2747
  %11 = load i32, ptr %5, align 8, !dbg !2753, !tbaa !2047
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2754
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2755
  %14 = load ptr, ptr %13, align 8, !dbg !2755, !tbaa !2118
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2756
  %16 = load ptr, ptr %15, align 8, !dbg !2756, !tbaa !2121
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2757
  %18 = add i64 %17, 1, !dbg !2758
  call void @llvm.dbg.value(metadata i64 %18, metadata !2745, metadata !DIExpression()), !dbg !2747
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #42, !dbg !2759
  call void @llvm.dbg.value(metadata ptr %19, metadata !2746, metadata !DIExpression()), !dbg !2747
  %20 = load i32, ptr %5, align 8, !dbg !2760, !tbaa !2047
  %21 = load ptr, ptr %13, align 8, !dbg !2761, !tbaa !2118
  %22 = load ptr, ptr %15, align 8, !dbg !2762, !tbaa !2121
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2763
  store i32 %7, ptr %6, align 4, !dbg !2764, !tbaa !924
  ret ptr %19, !dbg !2765
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2735 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2734, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata i64 %1, metadata !2739, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata ptr %2, metadata !2740, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata ptr %3, metadata !2741, metadata !DIExpression()), !dbg !2766
  %5 = icmp eq ptr %3, null, !dbg !2767
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2767
  call void @llvm.dbg.value(metadata ptr %6, metadata !2742, metadata !DIExpression()), !dbg !2766
  %7 = tail call ptr @__errno_location() #39, !dbg !2768
  %8 = load i32, ptr %7, align 4, !dbg !2768, !tbaa !924
  call void @llvm.dbg.value(metadata i32 %8, metadata !2743, metadata !DIExpression()), !dbg !2766
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2769
  %10 = load i32, ptr %9, align 4, !dbg !2769, !tbaa !2097
  %11 = icmp eq ptr %2, null, !dbg !2770
  %12 = zext i1 %11 to i32, !dbg !2770
  %13 = or i32 %10, %12, !dbg !2771
  call void @llvm.dbg.value(metadata i32 %13, metadata !2744, metadata !DIExpression()), !dbg !2766
  %14 = load i32, ptr %6, align 8, !dbg !2772, !tbaa !2047
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2773
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2774
  %17 = load ptr, ptr %16, align 8, !dbg !2774, !tbaa !2118
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2775
  %19 = load ptr, ptr %18, align 8, !dbg !2775, !tbaa !2121
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2776
  %21 = add i64 %20, 1, !dbg !2777
  call void @llvm.dbg.value(metadata i64 %21, metadata !2745, metadata !DIExpression()), !dbg !2766
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #42, !dbg !2778
  call void @llvm.dbg.value(metadata ptr %22, metadata !2746, metadata !DIExpression()), !dbg !2766
  %23 = load i32, ptr %6, align 8, !dbg !2779, !tbaa !2047
  %24 = load ptr, ptr %16, align 8, !dbg !2780, !tbaa !2118
  %25 = load ptr, ptr %18, align 8, !dbg !2781, !tbaa !2121
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2782
  store i32 %8, ptr %7, align 4, !dbg !2783, !tbaa !924
  br i1 %11, label %28, label %27, !dbg !2784

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2785, !tbaa !1217
  br label %28, !dbg !2787

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2788
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2789 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2794, !tbaa !854
  call void @llvm.dbg.value(metadata ptr %1, metadata !2791, metadata !DIExpression()), !dbg !2795
  call void @llvm.dbg.value(metadata i32 1, metadata !2792, metadata !DIExpression()), !dbg !2796
  %2 = load i32, ptr @nslots, align 4, !tbaa !924
  call void @llvm.dbg.value(metadata i32 1, metadata !2792, metadata !DIExpression()), !dbg !2796
  %3 = icmp sgt i32 %2, 1, !dbg !2797
  br i1 %3, label %4, label %6, !dbg !2799

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2797
  br label %10, !dbg !2799

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2800
  %8 = load ptr, ptr %7, align 8, !dbg !2800, !tbaa !2802
  %9 = icmp eq ptr %8, @slot0, !dbg !2804
  br i1 %9, label %17, label %16, !dbg !2805

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2792, metadata !DIExpression()), !dbg !2796
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2806
  %13 = load ptr, ptr %12, align 8, !dbg !2806, !tbaa !2802
  tail call void @free(ptr noundef %13) #36, !dbg !2807
  %14 = add nuw nsw i64 %11, 1, !dbg !2808
  call void @llvm.dbg.value(metadata i64 %14, metadata !2792, metadata !DIExpression()), !dbg !2796
  %15 = icmp eq i64 %14, %5, !dbg !2797
  br i1 %15, label %6, label %10, !dbg !2799, !llvm.loop !2809

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #36, !dbg !2811
  store i64 256, ptr @slotvec0, align 8, !dbg !2813, !tbaa !2814
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2815, !tbaa !2802
  br label %17, !dbg !2816

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2817
  br i1 %18, label %20, label %19, !dbg !2819

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #36, !dbg !2820
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2822, !tbaa !854
  br label %20, !dbg !2823

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2824, !tbaa !924
  ret void, !dbg !2825
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2826 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2828, metadata !DIExpression()), !dbg !2830
  call void @llvm.dbg.value(metadata ptr %1, metadata !2829, metadata !DIExpression()), !dbg !2830
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2831
  ret ptr %3, !dbg !2832
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2833 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2837, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata ptr %1, metadata !2838, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i64 %2, metadata !2839, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata ptr %3, metadata !2840, metadata !DIExpression()), !dbg !2853
  %6 = tail call ptr @__errno_location() #39, !dbg !2854
  %7 = load i32, ptr %6, align 4, !dbg !2854, !tbaa !924
  call void @llvm.dbg.value(metadata i32 %7, metadata !2841, metadata !DIExpression()), !dbg !2853
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2855, !tbaa !854
  call void @llvm.dbg.value(metadata ptr %8, metadata !2842, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2843, metadata !DIExpression()), !dbg !2853
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2856
  br i1 %9, label %10, label %11, !dbg !2856

10:                                               ; preds = %4
  tail call void @abort() #38, !dbg !2858
  unreachable, !dbg !2858

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2859, !tbaa !924
  %13 = icmp sgt i32 %12, %0, !dbg !2860
  br i1 %13, label %32, label %14, !dbg !2861

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2862
  call void @llvm.dbg.value(metadata i1 %15, metadata !2844, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2863
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #36, !dbg !2864
  %16 = sext i32 %12 to i64, !dbg !2865
  call void @llvm.dbg.value(metadata i64 %16, metadata !2847, metadata !DIExpression()), !dbg !2863
  store i64 %16, ptr %5, align 8, !dbg !2866, !tbaa !1217
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2867
  %18 = add nuw nsw i32 %0, 1, !dbg !2868
  %19 = sub i32 %18, %12, !dbg !2869
  %20 = sext i32 %19 to i64, !dbg !2870
  call void @llvm.dbg.value(metadata ptr %5, metadata !2847, metadata !DIExpression(DW_OP_deref)), !dbg !2863
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #36, !dbg !2871
  call void @llvm.dbg.value(metadata ptr %21, metadata !2842, metadata !DIExpression()), !dbg !2853
  store ptr %21, ptr @slotvec, align 8, !dbg !2872, !tbaa !854
  br i1 %15, label %22, label %23, !dbg !2873

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2874, !tbaa.struct !2876
  br label %23, !dbg !2877

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2878, !tbaa !924
  %25 = sext i32 %24 to i64, !dbg !2879
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2879
  %27 = load i64, ptr %5, align 8, !dbg !2880, !tbaa !1217
  call void @llvm.dbg.value(metadata i64 %27, metadata !2847, metadata !DIExpression()), !dbg !2863
  %28 = sub nsw i64 %27, %25, !dbg !2881
  %29 = shl i64 %28, 4, !dbg !2882
  call void @llvm.dbg.value(metadata ptr %26, metadata !2254, metadata !DIExpression()), !dbg !2883
  call void @llvm.dbg.value(metadata i32 0, metadata !2257, metadata !DIExpression()), !dbg !2883
  call void @llvm.dbg.value(metadata i64 %29, metadata !2258, metadata !DIExpression()), !dbg !2883
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #36, !dbg !2885
  %30 = load i64, ptr %5, align 8, !dbg !2886, !tbaa !1217
  call void @llvm.dbg.value(metadata i64 %30, metadata !2847, metadata !DIExpression()), !dbg !2863
  %31 = trunc i64 %30 to i32, !dbg !2886
  store i32 %31, ptr @nslots, align 4, !dbg !2887, !tbaa !924
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #36, !dbg !2888
  br label %32, !dbg !2889

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2853
  call void @llvm.dbg.value(metadata ptr %33, metadata !2842, metadata !DIExpression()), !dbg !2853
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2890
  %36 = load i64, ptr %35, align 8, !dbg !2891, !tbaa !2814
  call void @llvm.dbg.value(metadata i64 %36, metadata !2848, metadata !DIExpression()), !dbg !2892
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2893
  %38 = load ptr, ptr %37, align 8, !dbg !2893, !tbaa !2802
  call void @llvm.dbg.value(metadata ptr %38, metadata !2850, metadata !DIExpression()), !dbg !2892
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2894
  %40 = load i32, ptr %39, align 4, !dbg !2894, !tbaa !2097
  %41 = or i32 %40, 1, !dbg !2895
  call void @llvm.dbg.value(metadata i32 %41, metadata !2851, metadata !DIExpression()), !dbg !2892
  %42 = load i32, ptr %3, align 8, !dbg !2896, !tbaa !2047
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2897
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2898
  %45 = load ptr, ptr %44, align 8, !dbg !2898, !tbaa !2118
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2899
  %47 = load ptr, ptr %46, align 8, !dbg !2899, !tbaa !2121
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2900
  call void @llvm.dbg.value(metadata i64 %48, metadata !2852, metadata !DIExpression()), !dbg !2892
  %49 = icmp ugt i64 %36, %48, !dbg !2901
  br i1 %49, label %60, label %50, !dbg !2903

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2904
  call void @llvm.dbg.value(metadata i64 %51, metadata !2848, metadata !DIExpression()), !dbg !2892
  store i64 %51, ptr %35, align 8, !dbg !2906, !tbaa !2814
  %52 = icmp eq ptr %38, @slot0, !dbg !2907
  br i1 %52, label %54, label %53, !dbg !2909

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #36, !dbg !2910
  br label %54, !dbg !2910

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #42, !dbg !2911
  call void @llvm.dbg.value(metadata ptr %55, metadata !2850, metadata !DIExpression()), !dbg !2892
  store ptr %55, ptr %37, align 8, !dbg !2912, !tbaa !2802
  %56 = load i32, ptr %3, align 8, !dbg !2913, !tbaa !2047
  %57 = load ptr, ptr %44, align 8, !dbg !2914, !tbaa !2118
  %58 = load ptr, ptr %46, align 8, !dbg !2915, !tbaa !2121
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2916
  br label %60, !dbg !2917

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2892
  call void @llvm.dbg.value(metadata ptr %61, metadata !2850, metadata !DIExpression()), !dbg !2892
  store i32 %7, ptr %6, align 4, !dbg !2918, !tbaa !924
  ret ptr %61, !dbg !2919
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #23

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #24

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2920 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2924, metadata !DIExpression()), !dbg !2927
  call void @llvm.dbg.value(metadata ptr %1, metadata !2925, metadata !DIExpression()), !dbg !2927
  call void @llvm.dbg.value(metadata i64 %2, metadata !2926, metadata !DIExpression()), !dbg !2927
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2928
  ret ptr %4, !dbg !2929
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2930 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2932, metadata !DIExpression()), !dbg !2933
  call void @llvm.dbg.value(metadata i32 0, metadata !2828, metadata !DIExpression()), !dbg !2934
  call void @llvm.dbg.value(metadata ptr %0, metadata !2829, metadata !DIExpression()), !dbg !2934
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2936
  ret ptr %2, !dbg !2937
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2938 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2942, metadata !DIExpression()), !dbg !2944
  call void @llvm.dbg.value(metadata i64 %1, metadata !2943, metadata !DIExpression()), !dbg !2944
  call void @llvm.dbg.value(metadata i32 0, metadata !2924, metadata !DIExpression()), !dbg !2945
  call void @llvm.dbg.value(metadata ptr %0, metadata !2925, metadata !DIExpression()), !dbg !2945
  call void @llvm.dbg.value(metadata i64 %1, metadata !2926, metadata !DIExpression()), !dbg !2945
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2947
  ret ptr %3, !dbg !2948
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2949 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2953, metadata !DIExpression()), !dbg !2957
  call void @llvm.dbg.value(metadata i32 %1, metadata !2954, metadata !DIExpression()), !dbg !2957
  call void @llvm.dbg.value(metadata ptr %2, metadata !2955, metadata !DIExpression()), !dbg !2957
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2958
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2956, metadata !DIExpression()), !dbg !2959
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2960), !dbg !2963
  call void @llvm.dbg.value(metadata i32 %1, metadata !2964, metadata !DIExpression()), !dbg !2970
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2969, metadata !DIExpression()), !dbg !2972
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2972, !alias.scope !2960
  %5 = icmp eq i32 %1, 10, !dbg !2973
  br i1 %5, label %6, label %7, !dbg !2975

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2976, !noalias !2960
  unreachable, !dbg !2976

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2977, !tbaa !2047, !alias.scope !2960
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2978
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2979
  ret ptr %8, !dbg !2980
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2981 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2985, metadata !DIExpression()), !dbg !2990
  call void @llvm.dbg.value(metadata i32 %1, metadata !2986, metadata !DIExpression()), !dbg !2990
  call void @llvm.dbg.value(metadata ptr %2, metadata !2987, metadata !DIExpression()), !dbg !2990
  call void @llvm.dbg.value(metadata i64 %3, metadata !2988, metadata !DIExpression()), !dbg !2990
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !2991
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2989, metadata !DIExpression()), !dbg !2992
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2993), !dbg !2996
  call void @llvm.dbg.value(metadata i32 %1, metadata !2964, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2969, metadata !DIExpression()), !dbg !2999
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2999, !alias.scope !2993
  %6 = icmp eq i32 %1, 10, !dbg !3000
  br i1 %6, label %7, label %8, !dbg !3001

7:                                                ; preds = %4
  tail call void @abort() #38, !dbg !3002, !noalias !2993
  unreachable, !dbg !3002

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3003, !tbaa !2047, !alias.scope !2993
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3004
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !3005
  ret ptr %9, !dbg !3006
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3007 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3011, metadata !DIExpression()), !dbg !3013
  call void @llvm.dbg.value(metadata ptr %1, metadata !3012, metadata !DIExpression()), !dbg !3013
  call void @llvm.dbg.value(metadata i32 0, metadata !2953, metadata !DIExpression()), !dbg !3014
  call void @llvm.dbg.value(metadata i32 %0, metadata !2954, metadata !DIExpression()), !dbg !3014
  call void @llvm.dbg.value(metadata ptr %1, metadata !2955, metadata !DIExpression()), !dbg !3014
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !3016
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2956, metadata !DIExpression()), !dbg !3017
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3018), !dbg !3021
  call void @llvm.dbg.value(metadata i32 %0, metadata !2964, metadata !DIExpression()), !dbg !3022
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2969, metadata !DIExpression()), !dbg !3024
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3024, !alias.scope !3018
  %4 = icmp eq i32 %0, 10, !dbg !3025
  br i1 %4, label %5, label %6, !dbg !3026

5:                                                ; preds = %2
  tail call void @abort() #38, !dbg !3027, !noalias !3018
  unreachable, !dbg !3027

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3028, !tbaa !2047, !alias.scope !3018
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3029
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !3030
  ret ptr %7, !dbg !3031
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3032 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3036, metadata !DIExpression()), !dbg !3039
  call void @llvm.dbg.value(metadata ptr %1, metadata !3037, metadata !DIExpression()), !dbg !3039
  call void @llvm.dbg.value(metadata i64 %2, metadata !3038, metadata !DIExpression()), !dbg !3039
  call void @llvm.dbg.value(metadata i32 0, metadata !2985, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata i32 %0, metadata !2986, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata ptr %1, metadata !2987, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata i64 %2, metadata !2988, metadata !DIExpression()), !dbg !3040
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !3042
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2989, metadata !DIExpression()), !dbg !3043
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3044), !dbg !3047
  call void @llvm.dbg.value(metadata i32 %0, metadata !2964, metadata !DIExpression()), !dbg !3048
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2969, metadata !DIExpression()), !dbg !3050
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3050, !alias.scope !3044
  %5 = icmp eq i32 %0, 10, !dbg !3051
  br i1 %5, label %6, label %7, !dbg !3052

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !3053, !noalias !3044
  unreachable, !dbg !3053

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3054, !tbaa !2047, !alias.scope !3044
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3055
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !3056
  ret ptr %8, !dbg !3057
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !3058 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3062, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata i64 %1, metadata !3063, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata i8 %2, metadata !3064, metadata !DIExpression()), !dbg !3066
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !3067
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3065, metadata !DIExpression()), !dbg !3068
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3069, !tbaa.struct !3070
  call void @llvm.dbg.value(metadata ptr %4, metadata !2064, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata i8 %2, metadata !2065, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata i32 1, metadata !2066, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata i8 %2, metadata !2067, metadata !DIExpression()), !dbg !3071
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !3073
  %6 = lshr i8 %2, 5, !dbg !3074
  %7 = zext i8 %6 to i64, !dbg !3074
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !3075
  call void @llvm.dbg.value(metadata ptr %8, metadata !2068, metadata !DIExpression()), !dbg !3071
  %9 = and i8 %2, 31, !dbg !3076
  %10 = zext i8 %9 to i32, !dbg !3076
  call void @llvm.dbg.value(metadata i32 %10, metadata !2070, metadata !DIExpression()), !dbg !3071
  %11 = load i32, ptr %8, align 4, !dbg !3077, !tbaa !924
  %12 = lshr i32 %11, %10, !dbg !3078
  call void @llvm.dbg.value(metadata i32 %12, metadata !2071, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3071
  %13 = and i32 %12, 1, !dbg !3079
  %14 = xor i32 %13, 1, !dbg !3079
  %15 = shl nuw i32 %14, %10, !dbg !3080
  %16 = xor i32 %15, %11, !dbg !3081
  store i32 %16, ptr %8, align 4, !dbg !3081, !tbaa !924
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !3082
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !3083
  ret ptr %17, !dbg !3084
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !3085 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3089, metadata !DIExpression()), !dbg !3091
  call void @llvm.dbg.value(metadata i8 %1, metadata !3090, metadata !DIExpression()), !dbg !3091
  call void @llvm.dbg.value(metadata ptr %0, metadata !3062, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.value(metadata i64 -1, metadata !3063, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.value(metadata i8 %1, metadata !3064, metadata !DIExpression()), !dbg !3092
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !3094
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3065, metadata !DIExpression()), !dbg !3095
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3096, !tbaa.struct !3070
  call void @llvm.dbg.value(metadata ptr %3, metadata !2064, metadata !DIExpression()), !dbg !3097
  call void @llvm.dbg.value(metadata i8 %1, metadata !2065, metadata !DIExpression()), !dbg !3097
  call void @llvm.dbg.value(metadata i32 1, metadata !2066, metadata !DIExpression()), !dbg !3097
  call void @llvm.dbg.value(metadata i8 %1, metadata !2067, metadata !DIExpression()), !dbg !3097
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3099
  %5 = lshr i8 %1, 5, !dbg !3100
  %6 = zext i8 %5 to i64, !dbg !3100
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !3101
  call void @llvm.dbg.value(metadata ptr %7, metadata !2068, metadata !DIExpression()), !dbg !3097
  %8 = and i8 %1, 31, !dbg !3102
  %9 = zext i8 %8 to i32, !dbg !3102
  call void @llvm.dbg.value(metadata i32 %9, metadata !2070, metadata !DIExpression()), !dbg !3097
  %10 = load i32, ptr %7, align 4, !dbg !3103, !tbaa !924
  %11 = lshr i32 %10, %9, !dbg !3104
  call void @llvm.dbg.value(metadata i32 %11, metadata !2071, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3097
  %12 = and i32 %11, 1, !dbg !3105
  %13 = xor i32 %12, 1, !dbg !3105
  %14 = shl nuw i32 %13, %9, !dbg !3106
  %15 = xor i32 %14, %10, !dbg !3107
  store i32 %15, ptr %7, align 4, !dbg !3107, !tbaa !924
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !3108
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !3109
  ret ptr %16, !dbg !3110
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !3111 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3113, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.value(metadata ptr %0, metadata !3089, metadata !DIExpression()), !dbg !3115
  call void @llvm.dbg.value(metadata i8 58, metadata !3090, metadata !DIExpression()), !dbg !3115
  call void @llvm.dbg.value(metadata ptr %0, metadata !3062, metadata !DIExpression()), !dbg !3117
  call void @llvm.dbg.value(metadata i64 -1, metadata !3063, metadata !DIExpression()), !dbg !3117
  call void @llvm.dbg.value(metadata i8 58, metadata !3064, metadata !DIExpression()), !dbg !3117
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #36, !dbg !3119
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3065, metadata !DIExpression()), !dbg !3120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3121, !tbaa.struct !3070
  call void @llvm.dbg.value(metadata ptr %2, metadata !2064, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i8 58, metadata !2065, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i32 1, metadata !2066, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i8 58, metadata !2067, metadata !DIExpression()), !dbg !3122
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !3124
  call void @llvm.dbg.value(metadata ptr %3, metadata !2068, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i32 26, metadata !2070, metadata !DIExpression()), !dbg !3122
  %4 = load i32, ptr %3, align 4, !dbg !3125, !tbaa !924
  call void @llvm.dbg.value(metadata i32 %4, metadata !2071, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3122
  %5 = or i32 %4, 67108864, !dbg !3126
  store i32 %5, ptr %3, align 4, !dbg !3126, !tbaa !924
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !3127
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #36, !dbg !3128
  ret ptr %6, !dbg !3129
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3130 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3132, metadata !DIExpression()), !dbg !3134
  call void @llvm.dbg.value(metadata i64 %1, metadata !3133, metadata !DIExpression()), !dbg !3134
  call void @llvm.dbg.value(metadata ptr %0, metadata !3062, metadata !DIExpression()), !dbg !3135
  call void @llvm.dbg.value(metadata i64 %1, metadata !3063, metadata !DIExpression()), !dbg !3135
  call void @llvm.dbg.value(metadata i8 58, metadata !3064, metadata !DIExpression()), !dbg !3135
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !3137
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3065, metadata !DIExpression()), !dbg !3138
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3139, !tbaa.struct !3070
  call void @llvm.dbg.value(metadata ptr %3, metadata !2064, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i8 58, metadata !2065, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i32 1, metadata !2066, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i8 58, metadata !2067, metadata !DIExpression()), !dbg !3140
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3142
  call void @llvm.dbg.value(metadata ptr %4, metadata !2068, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i32 26, metadata !2070, metadata !DIExpression()), !dbg !3140
  %5 = load i32, ptr %4, align 4, !dbg !3143, !tbaa !924
  call void @llvm.dbg.value(metadata i32 %5, metadata !2071, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3140
  %6 = or i32 %5, 67108864, !dbg !3144
  store i32 %6, ptr %4, align 4, !dbg !3144, !tbaa !924
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3145
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !3146
  ret ptr %7, !dbg !3147
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3148 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2969, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3154
  call void @llvm.dbg.value(metadata i32 %0, metadata !3150, metadata !DIExpression()), !dbg !3156
  call void @llvm.dbg.value(metadata i32 %1, metadata !3151, metadata !DIExpression()), !dbg !3156
  call void @llvm.dbg.value(metadata ptr %2, metadata !3152, metadata !DIExpression()), !dbg !3156
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !3157
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3153, metadata !DIExpression()), !dbg !3158
  call void @llvm.dbg.value(metadata i32 %1, metadata !2964, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i32 0, metadata !2969, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3159
  %5 = icmp eq i32 %1, 10, !dbg !3160
  br i1 %5, label %6, label %7, !dbg !3161

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !3162, !noalias !3163
  unreachable, !dbg !3162

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2969, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3159
  store i32 %1, ptr %4, align 8, !dbg !3166, !tbaa.struct !3070
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3166
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3166
  call void @llvm.dbg.value(metadata ptr %4, metadata !2064, metadata !DIExpression()), !dbg !3167
  call void @llvm.dbg.value(metadata i8 58, metadata !2065, metadata !DIExpression()), !dbg !3167
  call void @llvm.dbg.value(metadata i32 1, metadata !2066, metadata !DIExpression()), !dbg !3167
  call void @llvm.dbg.value(metadata i8 58, metadata !2067, metadata !DIExpression()), !dbg !3167
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3169
  call void @llvm.dbg.value(metadata ptr %9, metadata !2068, metadata !DIExpression()), !dbg !3167
  call void @llvm.dbg.value(metadata i32 26, metadata !2070, metadata !DIExpression()), !dbg !3167
  %10 = load i32, ptr %9, align 4, !dbg !3170, !tbaa !924
  call void @llvm.dbg.value(metadata i32 %10, metadata !2071, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3167
  %11 = or i32 %10, 67108864, !dbg !3171
  store i32 %11, ptr %9, align 4, !dbg !3171, !tbaa !924
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3172
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !3173
  ret ptr %12, !dbg !3174
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3175 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3179, metadata !DIExpression()), !dbg !3183
  call void @llvm.dbg.value(metadata ptr %1, metadata !3180, metadata !DIExpression()), !dbg !3183
  call void @llvm.dbg.value(metadata ptr %2, metadata !3181, metadata !DIExpression()), !dbg !3183
  call void @llvm.dbg.value(metadata ptr %3, metadata !3182, metadata !DIExpression()), !dbg !3183
  call void @llvm.dbg.value(metadata i32 %0, metadata !3184, metadata !DIExpression()), !dbg !3194
  call void @llvm.dbg.value(metadata ptr %1, metadata !3189, metadata !DIExpression()), !dbg !3194
  call void @llvm.dbg.value(metadata ptr %2, metadata !3190, metadata !DIExpression()), !dbg !3194
  call void @llvm.dbg.value(metadata ptr %3, metadata !3191, metadata !DIExpression()), !dbg !3194
  call void @llvm.dbg.value(metadata i64 -1, metadata !3192, metadata !DIExpression()), !dbg !3194
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !3196
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3193, metadata !DIExpression()), !dbg !3197
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3198, !tbaa.struct !3070
  call void @llvm.dbg.value(metadata ptr %5, metadata !2104, metadata !DIExpression()), !dbg !3199
  call void @llvm.dbg.value(metadata ptr %1, metadata !2105, metadata !DIExpression()), !dbg !3199
  call void @llvm.dbg.value(metadata ptr %2, metadata !2106, metadata !DIExpression()), !dbg !3199
  call void @llvm.dbg.value(metadata ptr %5, metadata !2104, metadata !DIExpression()), !dbg !3199
  store i32 10, ptr %5, align 8, !dbg !3201, !tbaa !2047
  %6 = icmp ne ptr %1, null, !dbg !3202
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3203
  br i1 %8, label %10, label %9, !dbg !3203

9:                                                ; preds = %4
  tail call void @abort() #38, !dbg !3204
  unreachable, !dbg !3204

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3205
  store ptr %1, ptr %11, align 8, !dbg !3206, !tbaa !2118
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3207
  store ptr %2, ptr %12, align 8, !dbg !3208, !tbaa !2121
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3209
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !3210
  ret ptr %13, !dbg !3211
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !3185 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3184, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata ptr %1, metadata !3189, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata ptr %2, metadata !3190, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata ptr %3, metadata !3191, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %4, metadata !3192, metadata !DIExpression()), !dbg !3212
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #36, !dbg !3213
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3193, metadata !DIExpression()), !dbg !3214
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3215, !tbaa.struct !3070
  call void @llvm.dbg.value(metadata ptr %6, metadata !2104, metadata !DIExpression()), !dbg !3216
  call void @llvm.dbg.value(metadata ptr %1, metadata !2105, metadata !DIExpression()), !dbg !3216
  call void @llvm.dbg.value(metadata ptr %2, metadata !2106, metadata !DIExpression()), !dbg !3216
  call void @llvm.dbg.value(metadata ptr %6, metadata !2104, metadata !DIExpression()), !dbg !3216
  store i32 10, ptr %6, align 8, !dbg !3218, !tbaa !2047
  %7 = icmp ne ptr %1, null, !dbg !3219
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3220
  br i1 %9, label %11, label %10, !dbg !3220

10:                                               ; preds = %5
  tail call void @abort() #38, !dbg !3221
  unreachable, !dbg !3221

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3222
  store ptr %1, ptr %12, align 8, !dbg !3223, !tbaa !2118
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3224
  store ptr %2, ptr %13, align 8, !dbg !3225, !tbaa !2121
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3226
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #36, !dbg !3227
  ret ptr %14, !dbg !3228
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3229 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3233, metadata !DIExpression()), !dbg !3236
  call void @llvm.dbg.value(metadata ptr %1, metadata !3234, metadata !DIExpression()), !dbg !3236
  call void @llvm.dbg.value(metadata ptr %2, metadata !3235, metadata !DIExpression()), !dbg !3236
  call void @llvm.dbg.value(metadata i32 0, metadata !3179, metadata !DIExpression()), !dbg !3237
  call void @llvm.dbg.value(metadata ptr %0, metadata !3180, metadata !DIExpression()), !dbg !3237
  call void @llvm.dbg.value(metadata ptr %1, metadata !3181, metadata !DIExpression()), !dbg !3237
  call void @llvm.dbg.value(metadata ptr %2, metadata !3182, metadata !DIExpression()), !dbg !3237
  call void @llvm.dbg.value(metadata i32 0, metadata !3184, metadata !DIExpression()), !dbg !3239
  call void @llvm.dbg.value(metadata ptr %0, metadata !3189, metadata !DIExpression()), !dbg !3239
  call void @llvm.dbg.value(metadata ptr %1, metadata !3190, metadata !DIExpression()), !dbg !3239
  call void @llvm.dbg.value(metadata ptr %2, metadata !3191, metadata !DIExpression()), !dbg !3239
  call void @llvm.dbg.value(metadata i64 -1, metadata !3192, metadata !DIExpression()), !dbg !3239
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !3241
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3193, metadata !DIExpression()), !dbg !3242
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3243, !tbaa.struct !3070
  call void @llvm.dbg.value(metadata ptr %4, metadata !2104, metadata !DIExpression()), !dbg !3244
  call void @llvm.dbg.value(metadata ptr %0, metadata !2105, metadata !DIExpression()), !dbg !3244
  call void @llvm.dbg.value(metadata ptr %1, metadata !2106, metadata !DIExpression()), !dbg !3244
  call void @llvm.dbg.value(metadata ptr %4, metadata !2104, metadata !DIExpression()), !dbg !3244
  store i32 10, ptr %4, align 8, !dbg !3246, !tbaa !2047
  %5 = icmp ne ptr %0, null, !dbg !3247
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3248
  br i1 %7, label %9, label %8, !dbg !3248

8:                                                ; preds = %3
  tail call void @abort() #38, !dbg !3249
  unreachable, !dbg !3249

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3250
  store ptr %0, ptr %10, align 8, !dbg !3251, !tbaa !2118
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3252
  store ptr %1, ptr %11, align 8, !dbg !3253, !tbaa !2121
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3254
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !3255
  ret ptr %12, !dbg !3256
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3257 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3261, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.value(metadata ptr %1, metadata !3262, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.value(metadata ptr %2, metadata !3263, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.value(metadata i64 %3, metadata !3264, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.value(metadata i32 0, metadata !3184, metadata !DIExpression()), !dbg !3266
  call void @llvm.dbg.value(metadata ptr %0, metadata !3189, metadata !DIExpression()), !dbg !3266
  call void @llvm.dbg.value(metadata ptr %1, metadata !3190, metadata !DIExpression()), !dbg !3266
  call void @llvm.dbg.value(metadata ptr %2, metadata !3191, metadata !DIExpression()), !dbg !3266
  call void @llvm.dbg.value(metadata i64 %3, metadata !3192, metadata !DIExpression()), !dbg !3266
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !3268
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3193, metadata !DIExpression()), !dbg !3269
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3270, !tbaa.struct !3070
  call void @llvm.dbg.value(metadata ptr %5, metadata !2104, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata ptr %0, metadata !2105, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata ptr %1, metadata !2106, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata ptr %5, metadata !2104, metadata !DIExpression()), !dbg !3271
  store i32 10, ptr %5, align 8, !dbg !3273, !tbaa !2047
  %6 = icmp ne ptr %0, null, !dbg !3274
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3275
  br i1 %8, label %10, label %9, !dbg !3275

9:                                                ; preds = %4
  tail call void @abort() #38, !dbg !3276
  unreachable, !dbg !3276

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3277
  store ptr %0, ptr %11, align 8, !dbg !3278, !tbaa !2118
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3279
  store ptr %1, ptr %12, align 8, !dbg !3280, !tbaa !2121
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3281
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !3282
  ret ptr %13, !dbg !3283
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3284 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3288, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.value(metadata ptr %1, metadata !3289, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.value(metadata i64 %2, metadata !3290, metadata !DIExpression()), !dbg !3291
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3292
  ret ptr %4, !dbg !3293
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3294 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3298, metadata !DIExpression()), !dbg !3300
  call void @llvm.dbg.value(metadata i64 %1, metadata !3299, metadata !DIExpression()), !dbg !3300
  call void @llvm.dbg.value(metadata i32 0, metadata !3288, metadata !DIExpression()), !dbg !3301
  call void @llvm.dbg.value(metadata ptr %0, metadata !3289, metadata !DIExpression()), !dbg !3301
  call void @llvm.dbg.value(metadata i64 %1, metadata !3290, metadata !DIExpression()), !dbg !3301
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3303
  ret ptr %3, !dbg !3304
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3305 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3309, metadata !DIExpression()), !dbg !3311
  call void @llvm.dbg.value(metadata ptr %1, metadata !3310, metadata !DIExpression()), !dbg !3311
  call void @llvm.dbg.value(metadata i32 %0, metadata !3288, metadata !DIExpression()), !dbg !3312
  call void @llvm.dbg.value(metadata ptr %1, metadata !3289, metadata !DIExpression()), !dbg !3312
  call void @llvm.dbg.value(metadata i64 -1, metadata !3290, metadata !DIExpression()), !dbg !3312
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3314
  ret ptr %3, !dbg !3315
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !3316 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3320, metadata !DIExpression()), !dbg !3321
  call void @llvm.dbg.value(metadata i32 0, metadata !3309, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata ptr %0, metadata !3310, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata i32 0, metadata !3288, metadata !DIExpression()), !dbg !3324
  call void @llvm.dbg.value(metadata ptr %0, metadata !3289, metadata !DIExpression()), !dbg !3324
  call void @llvm.dbg.value(metadata i64 -1, metadata !3290, metadata !DIExpression()), !dbg !3324
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3326
  ret ptr %2, !dbg !3327
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !3328 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3367, metadata !DIExpression()), !dbg !3373
  call void @llvm.dbg.value(metadata ptr %1, metadata !3368, metadata !DIExpression()), !dbg !3373
  call void @llvm.dbg.value(metadata ptr %2, metadata !3369, metadata !DIExpression()), !dbg !3373
  call void @llvm.dbg.value(metadata ptr %3, metadata !3370, metadata !DIExpression()), !dbg !3373
  call void @llvm.dbg.value(metadata ptr %4, metadata !3371, metadata !DIExpression()), !dbg !3373
  call void @llvm.dbg.value(metadata i64 %5, metadata !3372, metadata !DIExpression()), !dbg !3373
  %7 = icmp eq ptr %1, null, !dbg !3374
  br i1 %7, label %10, label %8, !dbg !3376

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.100, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #36, !dbg !3377
  br label %12, !dbg !3377

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.101, ptr noundef %2, ptr noundef %3) #36, !dbg !3378
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.3.103, i32 noundef 5) #36, !dbg !3379
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #36, !dbg !3379
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.104, ptr noundef %0), !dbg !3380
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.5.105, i32 noundef 5) #36, !dbg !3381
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.106) #36, !dbg !3381
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.104, ptr noundef %0), !dbg !3382
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
  ], !dbg !3383

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.7.107, i32 noundef 5) #36, !dbg !3384
  %21 = load ptr, ptr %4, align 8, !dbg !3384, !tbaa !854
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #36, !dbg !3384
  br label %147, !dbg !3386

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.8.108, i32 noundef 5) #36, !dbg !3387
  %25 = load ptr, ptr %4, align 8, !dbg !3387, !tbaa !854
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3387
  %27 = load ptr, ptr %26, align 8, !dbg !3387, !tbaa !854
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #36, !dbg !3387
  br label %147, !dbg !3388

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.9.109, i32 noundef 5) #36, !dbg !3389
  %31 = load ptr, ptr %4, align 8, !dbg !3389, !tbaa !854
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3389
  %33 = load ptr, ptr %32, align 8, !dbg !3389, !tbaa !854
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3389
  %35 = load ptr, ptr %34, align 8, !dbg !3389, !tbaa !854
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #36, !dbg !3389
  br label %147, !dbg !3390

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.10.110, i32 noundef 5) #36, !dbg !3391
  %39 = load ptr, ptr %4, align 8, !dbg !3391, !tbaa !854
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3391
  %41 = load ptr, ptr %40, align 8, !dbg !3391, !tbaa !854
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3391
  %43 = load ptr, ptr %42, align 8, !dbg !3391, !tbaa !854
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3391
  %45 = load ptr, ptr %44, align 8, !dbg !3391, !tbaa !854
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #36, !dbg !3391
  br label %147, !dbg !3392

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.11.111, i32 noundef 5) #36, !dbg !3393
  %49 = load ptr, ptr %4, align 8, !dbg !3393, !tbaa !854
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3393
  %51 = load ptr, ptr %50, align 8, !dbg !3393, !tbaa !854
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3393
  %53 = load ptr, ptr %52, align 8, !dbg !3393, !tbaa !854
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3393
  %55 = load ptr, ptr %54, align 8, !dbg !3393, !tbaa !854
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3393
  %57 = load ptr, ptr %56, align 8, !dbg !3393, !tbaa !854
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #36, !dbg !3393
  br label %147, !dbg !3394

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.12.112, i32 noundef 5) #36, !dbg !3395
  %61 = load ptr, ptr %4, align 8, !dbg !3395, !tbaa !854
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3395
  %63 = load ptr, ptr %62, align 8, !dbg !3395, !tbaa !854
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3395
  %65 = load ptr, ptr %64, align 8, !dbg !3395, !tbaa !854
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3395
  %67 = load ptr, ptr %66, align 8, !dbg !3395, !tbaa !854
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3395
  %69 = load ptr, ptr %68, align 8, !dbg !3395, !tbaa !854
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3395
  %71 = load ptr, ptr %70, align 8, !dbg !3395, !tbaa !854
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #36, !dbg !3395
  br label %147, !dbg !3396

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.13.113, i32 noundef 5) #36, !dbg !3397
  %75 = load ptr, ptr %4, align 8, !dbg !3397, !tbaa !854
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3397
  %77 = load ptr, ptr %76, align 8, !dbg !3397, !tbaa !854
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3397
  %79 = load ptr, ptr %78, align 8, !dbg !3397, !tbaa !854
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3397
  %81 = load ptr, ptr %80, align 8, !dbg !3397, !tbaa !854
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3397
  %83 = load ptr, ptr %82, align 8, !dbg !3397, !tbaa !854
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3397
  %85 = load ptr, ptr %84, align 8, !dbg !3397, !tbaa !854
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3397
  %87 = load ptr, ptr %86, align 8, !dbg !3397, !tbaa !854
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #36, !dbg !3397
  br label %147, !dbg !3398

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.14.114, i32 noundef 5) #36, !dbg !3399
  %91 = load ptr, ptr %4, align 8, !dbg !3399, !tbaa !854
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3399
  %93 = load ptr, ptr %92, align 8, !dbg !3399, !tbaa !854
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3399
  %95 = load ptr, ptr %94, align 8, !dbg !3399, !tbaa !854
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3399
  %97 = load ptr, ptr %96, align 8, !dbg !3399, !tbaa !854
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3399
  %99 = load ptr, ptr %98, align 8, !dbg !3399, !tbaa !854
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3399
  %101 = load ptr, ptr %100, align 8, !dbg !3399, !tbaa !854
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3399
  %103 = load ptr, ptr %102, align 8, !dbg !3399, !tbaa !854
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3399
  %105 = load ptr, ptr %104, align 8, !dbg !3399, !tbaa !854
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #36, !dbg !3399
  br label %147, !dbg !3400

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.15.115, i32 noundef 5) #36, !dbg !3401
  %109 = load ptr, ptr %4, align 8, !dbg !3401, !tbaa !854
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3401
  %111 = load ptr, ptr %110, align 8, !dbg !3401, !tbaa !854
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3401
  %113 = load ptr, ptr %112, align 8, !dbg !3401, !tbaa !854
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3401
  %115 = load ptr, ptr %114, align 8, !dbg !3401, !tbaa !854
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3401
  %117 = load ptr, ptr %116, align 8, !dbg !3401, !tbaa !854
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3401
  %119 = load ptr, ptr %118, align 8, !dbg !3401, !tbaa !854
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3401
  %121 = load ptr, ptr %120, align 8, !dbg !3401, !tbaa !854
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3401
  %123 = load ptr, ptr %122, align 8, !dbg !3401, !tbaa !854
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3401
  %125 = load ptr, ptr %124, align 8, !dbg !3401, !tbaa !854
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #36, !dbg !3401
  br label %147, !dbg !3402

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.16.116, i32 noundef 5) #36, !dbg !3403
  %129 = load ptr, ptr %4, align 8, !dbg !3403, !tbaa !854
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3403
  %131 = load ptr, ptr %130, align 8, !dbg !3403, !tbaa !854
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3403
  %133 = load ptr, ptr %132, align 8, !dbg !3403, !tbaa !854
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3403
  %135 = load ptr, ptr %134, align 8, !dbg !3403, !tbaa !854
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3403
  %137 = load ptr, ptr %136, align 8, !dbg !3403, !tbaa !854
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3403
  %139 = load ptr, ptr %138, align 8, !dbg !3403, !tbaa !854
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3403
  %141 = load ptr, ptr %140, align 8, !dbg !3403, !tbaa !854
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3403
  %143 = load ptr, ptr %142, align 8, !dbg !3403, !tbaa !854
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3403
  %145 = load ptr, ptr %144, align 8, !dbg !3403, !tbaa !854
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #36, !dbg !3403
  br label %147, !dbg !3404

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3405
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !3406 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3410, metadata !DIExpression()), !dbg !3416
  call void @llvm.dbg.value(metadata ptr %1, metadata !3411, metadata !DIExpression()), !dbg !3416
  call void @llvm.dbg.value(metadata ptr %2, metadata !3412, metadata !DIExpression()), !dbg !3416
  call void @llvm.dbg.value(metadata ptr %3, metadata !3413, metadata !DIExpression()), !dbg !3416
  call void @llvm.dbg.value(metadata ptr %4, metadata !3414, metadata !DIExpression()), !dbg !3416
  call void @llvm.dbg.value(metadata i64 0, metadata !3415, metadata !DIExpression()), !dbg !3416
  br label %6, !dbg !3417

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3419
  call void @llvm.dbg.value(metadata i64 %7, metadata !3415, metadata !DIExpression()), !dbg !3416
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3420
  %9 = load ptr, ptr %8, align 8, !dbg !3420, !tbaa !854
  %10 = icmp eq ptr %9, null, !dbg !3422
  %11 = add i64 %7, 1, !dbg !3423
  call void @llvm.dbg.value(metadata i64 %11, metadata !3415, metadata !DIExpression()), !dbg !3416
  br i1 %10, label %12, label %6, !dbg !3422, !llvm.loop !3424

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !3426
  ret void, !dbg !3427
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !3428 {
  %6 = alloca [10 x ptr], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !3440, metadata !DIExpression()), !dbg !3448
  call void @llvm.dbg.value(metadata ptr %1, metadata !3441, metadata !DIExpression()), !dbg !3448
  call void @llvm.dbg.value(metadata ptr %2, metadata !3442, metadata !DIExpression()), !dbg !3448
  call void @llvm.dbg.value(metadata ptr %3, metadata !3443, metadata !DIExpression()), !dbg !3448
  call void @llvm.dbg.value(metadata ptr %4, metadata !3444, metadata !DIExpression()), !dbg !3448
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #36, !dbg !3449
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3446, metadata !DIExpression()), !dbg !3450
  call void @llvm.dbg.value(metadata i64 0, metadata !3445, metadata !DIExpression()), !dbg !3448
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !3445, metadata !DIExpression()), !dbg !3448
  %10 = icmp ult i32 %9, 41, !dbg !3451
  br i1 %10, label %11, label %16, !dbg !3451

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !3451
  %13 = zext i32 %9 to i64, !dbg !3451
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !3451
  %15 = add nuw nsw i32 %9, 8, !dbg !3451
  store i32 %15, ptr %4, align 8, !dbg !3451
  br label %19, !dbg !3451

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !3451
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !3451
  store ptr %18, ptr %7, align 8, !dbg !3451
  br label %19, !dbg !3451

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !3451
  %22 = load ptr, ptr %21, align 8, !dbg !3451
  store ptr %22, ptr %6, align 16, !dbg !3454, !tbaa !854
  %23 = icmp eq ptr %22, null, !dbg !3455
  br i1 %23, label %128, label %24, !dbg !3456

24:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i64 1, metadata !3445, metadata !DIExpression()), !dbg !3448
  call void @llvm.dbg.value(metadata i64 1, metadata !3445, metadata !DIExpression()), !dbg !3448
  %25 = icmp ult i32 %20, 41, !dbg !3451
  br i1 %25, label %29, label %26, !dbg !3451

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !3451
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !3451
  store ptr %28, ptr %7, align 8, !dbg !3451
  br label %34, !dbg !3451

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !3451
  %31 = zext i32 %20 to i64, !dbg !3451
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !3451
  %33 = add nuw nsw i32 %20, 8, !dbg !3451
  store i32 %33, ptr %4, align 8, !dbg !3451
  br label %34, !dbg !3451

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !3451
  %37 = load ptr, ptr %36, align 8, !dbg !3451
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3457
  store ptr %37, ptr %38, align 8, !dbg !3454, !tbaa !854
  %39 = icmp eq ptr %37, null, !dbg !3455
  br i1 %39, label %128, label %40, !dbg !3456

40:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i64 2, metadata !3445, metadata !DIExpression()), !dbg !3448
  call void @llvm.dbg.value(metadata i64 2, metadata !3445, metadata !DIExpression()), !dbg !3448
  %41 = icmp ult i32 %35, 41, !dbg !3451
  br i1 %41, label %45, label %42, !dbg !3451

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !3451
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !3451
  store ptr %44, ptr %7, align 8, !dbg !3451
  br label %50, !dbg !3451

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !3451
  %47 = zext i32 %35 to i64, !dbg !3451
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !3451
  %49 = add nuw nsw i32 %35, 8, !dbg !3451
  store i32 %49, ptr %4, align 8, !dbg !3451
  br label %50, !dbg !3451

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !3451
  %53 = load ptr, ptr %52, align 8, !dbg !3451
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3457
  store ptr %53, ptr %54, align 16, !dbg !3454, !tbaa !854
  %55 = icmp eq ptr %53, null, !dbg !3455
  br i1 %55, label %128, label %56, !dbg !3456

56:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 3, metadata !3445, metadata !DIExpression()), !dbg !3448
  call void @llvm.dbg.value(metadata i64 3, metadata !3445, metadata !DIExpression()), !dbg !3448
  %57 = icmp ult i32 %51, 41, !dbg !3451
  br i1 %57, label %61, label %58, !dbg !3451

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !3451
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !3451
  store ptr %60, ptr %7, align 8, !dbg !3451
  br label %66, !dbg !3451

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !3451
  %63 = zext i32 %51 to i64, !dbg !3451
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !3451
  %65 = add nuw nsw i32 %51, 8, !dbg !3451
  store i32 %65, ptr %4, align 8, !dbg !3451
  br label %66, !dbg !3451

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !3451
  %69 = load ptr, ptr %68, align 8, !dbg !3451
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3457
  store ptr %69, ptr %70, align 8, !dbg !3454, !tbaa !854
  %71 = icmp eq ptr %69, null, !dbg !3455
  br i1 %71, label %128, label %72, !dbg !3456

72:                                               ; preds = %66
  call void @llvm.dbg.value(metadata i64 4, metadata !3445, metadata !DIExpression()), !dbg !3448
  call void @llvm.dbg.value(metadata i64 4, metadata !3445, metadata !DIExpression()), !dbg !3448
  %73 = icmp ult i32 %67, 41, !dbg !3451
  br i1 %73, label %77, label %74, !dbg !3451

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !3451
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !3451
  store ptr %76, ptr %7, align 8, !dbg !3451
  br label %82, !dbg !3451

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !3451
  %79 = zext i32 %67 to i64, !dbg !3451
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !3451
  %81 = add nuw nsw i32 %67, 8, !dbg !3451
  store i32 %81, ptr %4, align 8, !dbg !3451
  br label %82, !dbg !3451

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !3451
  %85 = load ptr, ptr %84, align 8, !dbg !3451
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3457
  store ptr %85, ptr %86, align 16, !dbg !3454, !tbaa !854
  %87 = icmp eq ptr %85, null, !dbg !3455
  br i1 %87, label %128, label %88, !dbg !3456

88:                                               ; preds = %82
  call void @llvm.dbg.value(metadata i64 5, metadata !3445, metadata !DIExpression()), !dbg !3448
  call void @llvm.dbg.value(metadata i64 5, metadata !3445, metadata !DIExpression()), !dbg !3448
  %89 = icmp ult i32 %83, 41, !dbg !3451
  br i1 %89, label %93, label %90, !dbg !3451

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !3451
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !3451
  store ptr %92, ptr %7, align 8, !dbg !3451
  br label %98, !dbg !3451

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !3451
  %95 = zext i32 %83 to i64, !dbg !3451
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !3451
  %97 = add nuw nsw i32 %83, 8, !dbg !3451
  store i32 %97, ptr %4, align 8, !dbg !3451
  br label %98, !dbg !3451

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !3451
  %100 = load ptr, ptr %99, align 8, !dbg !3451
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3457
  store ptr %100, ptr %101, align 8, !dbg !3454, !tbaa !854
  %102 = icmp eq ptr %100, null, !dbg !3455
  br i1 %102, label %128, label %103, !dbg !3456

103:                                              ; preds = %98
  call void @llvm.dbg.value(metadata i64 6, metadata !3445, metadata !DIExpression()), !dbg !3448
  %104 = load ptr, ptr %7, align 8, !dbg !3451
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !3451
  store ptr %105, ptr %7, align 8, !dbg !3451
  %106 = load ptr, ptr %104, align 8, !dbg !3451
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3457
  store ptr %106, ptr %107, align 16, !dbg !3454, !tbaa !854
  %108 = icmp eq ptr %106, null, !dbg !3455
  br i1 %108, label %128, label %109, !dbg !3456

109:                                              ; preds = %103
  call void @llvm.dbg.value(metadata i64 7, metadata !3445, metadata !DIExpression()), !dbg !3448
  %110 = load ptr, ptr %7, align 8, !dbg !3451
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !3451
  store ptr %111, ptr %7, align 8, !dbg !3451
  %112 = load ptr, ptr %110, align 8, !dbg !3451
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3457
  store ptr %112, ptr %113, align 8, !dbg !3454, !tbaa !854
  %114 = icmp eq ptr %112, null, !dbg !3455
  br i1 %114, label %128, label %115, !dbg !3456

115:                                              ; preds = %109
  call void @llvm.dbg.value(metadata i64 8, metadata !3445, metadata !DIExpression()), !dbg !3448
  %116 = load ptr, ptr %7, align 8, !dbg !3451
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !3451
  store ptr %117, ptr %7, align 8, !dbg !3451
  %118 = load ptr, ptr %116, align 8, !dbg !3451
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3457
  store ptr %118, ptr %119, align 16, !dbg !3454, !tbaa !854
  %120 = icmp eq ptr %118, null, !dbg !3455
  br i1 %120, label %128, label %121, !dbg !3456

121:                                              ; preds = %115
  call void @llvm.dbg.value(metadata i64 9, metadata !3445, metadata !DIExpression()), !dbg !3448
  %122 = load ptr, ptr %7, align 8, !dbg !3451
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !3451
  store ptr %123, ptr %7, align 8, !dbg !3451
  %124 = load ptr, ptr %122, align 8, !dbg !3451
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3457
  store ptr %124, ptr %125, align 8, !dbg !3454, !tbaa !854
  %126 = icmp eq ptr %124, null, !dbg !3455
  %127 = select i1 %126, i64 9, i64 10, !dbg !3456
  br label %128, !dbg !3456

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !3458
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !3459
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #36, !dbg !3460
  ret void, !dbg !3460
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3461 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !3465, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata ptr %1, metadata !3466, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata ptr %2, metadata !3467, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata ptr %3, metadata !3468, metadata !DIExpression()), !dbg !3474
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #36, !dbg !3475
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3469, metadata !DIExpression()), !dbg !3476
  call void @llvm.va_start(ptr nonnull %5), !dbg !3477
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !3478
  call void @llvm.va_end(ptr nonnull %5), !dbg !3479
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #36, !dbg !3480
  ret void, !dbg !3480
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3481 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3482, !tbaa !854
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.104, ptr noundef %1), !dbg !3482
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.17.121, i32 noundef 5) #36, !dbg !3483
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.122) #36, !dbg !3483
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.19.123, i32 noundef 5) #36, !dbg !3484
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.124, ptr noundef nonnull @.str.21.125) #36, !dbg !3484
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.22.126, i32 noundef 5) #36, !dbg !3485
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.127) #36, !dbg !3485
  ret void, !dbg !3486
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !3487 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3492, metadata !DIExpression()), !dbg !3495
  call void @llvm.dbg.value(metadata i64 %1, metadata !3493, metadata !DIExpression()), !dbg !3495
  call void @llvm.dbg.value(metadata i64 %2, metadata !3494, metadata !DIExpression()), !dbg !3495
  call void @llvm.dbg.value(metadata ptr %0, metadata !3496, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.value(metadata i64 %1, metadata !3499, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.value(metadata i64 %2, metadata !3500, metadata !DIExpression()), !dbg !3501
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !3503
  call void @llvm.dbg.value(metadata ptr %4, metadata !3504, metadata !DIExpression()), !dbg !3509
  %5 = icmp eq ptr %4, null, !dbg !3511
  br i1 %5, label %6, label %7, !dbg !3513

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !3514
  unreachable, !dbg !3514

7:                                                ; preds = %3
  ret ptr %4, !dbg !3515
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3497 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3496, metadata !DIExpression()), !dbg !3516
  call void @llvm.dbg.value(metadata i64 %1, metadata !3499, metadata !DIExpression()), !dbg !3516
  call void @llvm.dbg.value(metadata i64 %2, metadata !3500, metadata !DIExpression()), !dbg !3516
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !3517
  call void @llvm.dbg.value(metadata ptr %4, metadata !3504, metadata !DIExpression()), !dbg !3518
  %5 = icmp eq ptr %4, null, !dbg !3520
  br i1 %5, label %6, label %7, !dbg !3521

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !3522
  unreachable, !dbg !3522

7:                                                ; preds = %3
  ret ptr %4, !dbg !3523
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3524 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3528, metadata !DIExpression()), !dbg !3529
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #42, !dbg !3530
  call void @llvm.dbg.value(metadata ptr %2, metadata !3504, metadata !DIExpression()), !dbg !3531
  %3 = icmp eq ptr %2, null, !dbg !3533
  br i1 %3, label %4, label %5, !dbg !3534

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3535
  unreachable, !dbg !3535

5:                                                ; preds = %1
  ret ptr %2, !dbg !3536
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3537 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3538 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3542, metadata !DIExpression()), !dbg !3543
  call void @llvm.dbg.value(metadata i64 %0, metadata !3544, metadata !DIExpression()), !dbg !3548
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #42, !dbg !3550
  call void @llvm.dbg.value(metadata ptr %2, metadata !3504, metadata !DIExpression()), !dbg !3551
  %3 = icmp eq ptr %2, null, !dbg !3553
  br i1 %3, label %4, label %5, !dbg !3554

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3555
  unreachable, !dbg !3555

5:                                                ; preds = %1
  ret ptr %2, !dbg !3556
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3557 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3561, metadata !DIExpression()), !dbg !3562
  call void @llvm.dbg.value(metadata i64 %0, metadata !3528, metadata !DIExpression()), !dbg !3563
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #42, !dbg !3565
  call void @llvm.dbg.value(metadata ptr %2, metadata !3504, metadata !DIExpression()), !dbg !3566
  %3 = icmp eq ptr %2, null, !dbg !3568
  br i1 %3, label %4, label %5, !dbg !3569

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3570
  unreachable, !dbg !3570

5:                                                ; preds = %1
  ret ptr %2, !dbg !3571
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3572 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3576, metadata !DIExpression()), !dbg !3578
  call void @llvm.dbg.value(metadata i64 %1, metadata !3577, metadata !DIExpression()), !dbg !3578
  call void @llvm.dbg.value(metadata ptr %0, metadata !3579, metadata !DIExpression()), !dbg !3584
  call void @llvm.dbg.value(metadata i64 %1, metadata !3583, metadata !DIExpression()), !dbg !3584
  %3 = icmp eq i64 %1, 0, !dbg !3586
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3586
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #44, !dbg !3587
  call void @llvm.dbg.value(metadata ptr %5, metadata !3504, metadata !DIExpression()), !dbg !3588
  %6 = icmp eq ptr %5, null, !dbg !3590
  br i1 %6, label %7, label %8, !dbg !3591

7:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3592
  unreachable, !dbg !3592

8:                                                ; preds = %2
  ret ptr %5, !dbg !3593
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3594 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3595 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3599, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i64 %1, metadata !3600, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata ptr %0, metadata !3602, metadata !DIExpression()), !dbg !3606
  call void @llvm.dbg.value(metadata i64 %1, metadata !3605, metadata !DIExpression()), !dbg !3606
  call void @llvm.dbg.value(metadata ptr %0, metadata !3579, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata i64 %1, metadata !3583, metadata !DIExpression()), !dbg !3608
  %3 = icmp eq i64 %1, 0, !dbg !3610
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3610
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #44, !dbg !3611
  call void @llvm.dbg.value(metadata ptr %5, metadata !3504, metadata !DIExpression()), !dbg !3612
  %6 = icmp eq ptr %5, null, !dbg !3614
  br i1 %6, label %7, label %8, !dbg !3615

7:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3616
  unreachable, !dbg !3616

8:                                                ; preds = %2
  ret ptr %5, !dbg !3617
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3618 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3622, metadata !DIExpression()), !dbg !3625
  call void @llvm.dbg.value(metadata i64 %1, metadata !3623, metadata !DIExpression()), !dbg !3625
  call void @llvm.dbg.value(metadata i64 %2, metadata !3624, metadata !DIExpression()), !dbg !3625
  call void @llvm.dbg.value(metadata ptr %0, metadata !3626, metadata !DIExpression()), !dbg !3631
  call void @llvm.dbg.value(metadata i64 %1, metadata !3629, metadata !DIExpression()), !dbg !3631
  call void @llvm.dbg.value(metadata i64 %2, metadata !3630, metadata !DIExpression()), !dbg !3631
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !3633
  call void @llvm.dbg.value(metadata ptr %4, metadata !3504, metadata !DIExpression()), !dbg !3634
  %5 = icmp eq ptr %4, null, !dbg !3636
  br i1 %5, label %6, label %7, !dbg !3637

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !3638
  unreachable, !dbg !3638

7:                                                ; preds = %3
  ret ptr %4, !dbg !3639
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3640 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3644, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i64 %1, metadata !3645, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata ptr null, metadata !3496, metadata !DIExpression()), !dbg !3647
  call void @llvm.dbg.value(metadata i64 %0, metadata !3499, metadata !DIExpression()), !dbg !3647
  call void @llvm.dbg.value(metadata i64 %1, metadata !3500, metadata !DIExpression()), !dbg !3647
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #36, !dbg !3649
  call void @llvm.dbg.value(metadata ptr %3, metadata !3504, metadata !DIExpression()), !dbg !3650
  %4 = icmp eq ptr %3, null, !dbg !3652
  br i1 %4, label %5, label %6, !dbg !3653

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3654
  unreachable, !dbg !3654

6:                                                ; preds = %2
  ret ptr %3, !dbg !3655
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3656 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3660, metadata !DIExpression()), !dbg !3662
  call void @llvm.dbg.value(metadata i64 %1, metadata !3661, metadata !DIExpression()), !dbg !3662
  call void @llvm.dbg.value(metadata ptr null, metadata !3622, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata i64 %0, metadata !3623, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata i64 %1, metadata !3624, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata ptr null, metadata !3626, metadata !DIExpression()), !dbg !3665
  call void @llvm.dbg.value(metadata i64 %0, metadata !3629, metadata !DIExpression()), !dbg !3665
  call void @llvm.dbg.value(metadata i64 %1, metadata !3630, metadata !DIExpression()), !dbg !3665
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #36, !dbg !3667
  call void @llvm.dbg.value(metadata ptr %3, metadata !3504, metadata !DIExpression()), !dbg !3668
  %4 = icmp eq ptr %3, null, !dbg !3670
  br i1 %4, label %5, label %6, !dbg !3671

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3672
  unreachable, !dbg !3672

6:                                                ; preds = %2
  ret ptr %3, !dbg !3673
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3674 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3678, metadata !DIExpression()), !dbg !3680
  call void @llvm.dbg.value(metadata ptr %1, metadata !3679, metadata !DIExpression()), !dbg !3680
  call void @llvm.dbg.value(metadata ptr %0, metadata !783, metadata !DIExpression()), !dbg !3681
  call void @llvm.dbg.value(metadata ptr %1, metadata !784, metadata !DIExpression()), !dbg !3681
  call void @llvm.dbg.value(metadata i64 1, metadata !785, metadata !DIExpression()), !dbg !3681
  %3 = load i64, ptr %1, align 8, !dbg !3683, !tbaa !1217
  call void @llvm.dbg.value(metadata i64 %3, metadata !786, metadata !DIExpression()), !dbg !3681
  %4 = icmp eq ptr %0, null, !dbg !3684
  br i1 %4, label %5, label %8, !dbg !3686

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3687
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3690
  br label %15, !dbg !3690

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3691
  %10 = add nuw i64 %9, 1, !dbg !3691
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3691
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3691
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3691
  call void @llvm.dbg.value(metadata i64 %13, metadata !786, metadata !DIExpression()), !dbg !3681
  br i1 %12, label %14, label %15, !dbg !3694

14:                                               ; preds = %8
  tail call void @xalloc_die() #38, !dbg !3695
  unreachable, !dbg !3695

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3681
  call void @llvm.dbg.value(metadata i64 %16, metadata !786, metadata !DIExpression()), !dbg !3681
  call void @llvm.dbg.value(metadata ptr %0, metadata !3496, metadata !DIExpression()), !dbg !3696
  call void @llvm.dbg.value(metadata i64 %16, metadata !3499, metadata !DIExpression()), !dbg !3696
  call void @llvm.dbg.value(metadata i64 1, metadata !3500, metadata !DIExpression()), !dbg !3696
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #36, !dbg !3698
  call void @llvm.dbg.value(metadata ptr %17, metadata !3504, metadata !DIExpression()), !dbg !3699
  %18 = icmp eq ptr %17, null, !dbg !3701
  br i1 %18, label %19, label %20, !dbg !3702

19:                                               ; preds = %15
  tail call void @xalloc_die() #38, !dbg !3703
  unreachable, !dbg !3703

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !783, metadata !DIExpression()), !dbg !3681
  store i64 %16, ptr %1, align 8, !dbg !3704, !tbaa !1217
  ret ptr %17, !dbg !3705
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !778 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !783, metadata !DIExpression()), !dbg !3706
  call void @llvm.dbg.value(metadata ptr %1, metadata !784, metadata !DIExpression()), !dbg !3706
  call void @llvm.dbg.value(metadata i64 %2, metadata !785, metadata !DIExpression()), !dbg !3706
  %4 = load i64, ptr %1, align 8, !dbg !3707, !tbaa !1217
  call void @llvm.dbg.value(metadata i64 %4, metadata !786, metadata !DIExpression()), !dbg !3706
  %5 = icmp eq ptr %0, null, !dbg !3708
  br i1 %5, label %6, label %13, !dbg !3709

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3710
  br i1 %7, label %8, label %20, !dbg !3711

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3712
  call void @llvm.dbg.value(metadata i64 %9, metadata !786, metadata !DIExpression()), !dbg !3706
  %10 = icmp ugt i64 %2, 128, !dbg !3714
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3715
  call void @llvm.dbg.value(metadata i64 %12, metadata !786, metadata !DIExpression()), !dbg !3706
  br label %20, !dbg !3716

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3717
  %15 = add nuw i64 %14, 1, !dbg !3717
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3717
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3717
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3717
  call void @llvm.dbg.value(metadata i64 %18, metadata !786, metadata !DIExpression()), !dbg !3706
  br i1 %17, label %19, label %20, !dbg !3718

19:                                               ; preds = %13
  tail call void @xalloc_die() #38, !dbg !3719
  unreachable, !dbg !3719

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3706
  call void @llvm.dbg.value(metadata i64 %21, metadata !786, metadata !DIExpression()), !dbg !3706
  call void @llvm.dbg.value(metadata ptr %0, metadata !3496, metadata !DIExpression()), !dbg !3720
  call void @llvm.dbg.value(metadata i64 %21, metadata !3499, metadata !DIExpression()), !dbg !3720
  call void @llvm.dbg.value(metadata i64 %2, metadata !3500, metadata !DIExpression()), !dbg !3720
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #36, !dbg !3722
  call void @llvm.dbg.value(metadata ptr %22, metadata !3504, metadata !DIExpression()), !dbg !3723
  %23 = icmp eq ptr %22, null, !dbg !3725
  br i1 %23, label %24, label %25, !dbg !3726

24:                                               ; preds = %20
  tail call void @xalloc_die() #38, !dbg !3727
  unreachable, !dbg !3727

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !783, metadata !DIExpression()), !dbg !3706
  store i64 %21, ptr %1, align 8, !dbg !3728, !tbaa !1217
  ret ptr %22, !dbg !3729
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !790 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !798, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata ptr %1, metadata !799, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata i64 %2, metadata !800, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata i64 %3, metadata !801, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata i64 %4, metadata !802, metadata !DIExpression()), !dbg !3730
  %6 = load i64, ptr %1, align 8, !dbg !3731, !tbaa !1217
  call void @llvm.dbg.value(metadata i64 %6, metadata !803, metadata !DIExpression()), !dbg !3730
  %7 = ashr i64 %6, 1, !dbg !3732
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3732
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3732
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3732
  call void @llvm.dbg.value(metadata i64 %10, metadata !804, metadata !DIExpression()), !dbg !3730
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3734
  call void @llvm.dbg.value(metadata i64 %11, metadata !804, metadata !DIExpression()), !dbg !3730
  %12 = icmp sgt i64 %3, -1, !dbg !3735
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3737
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3737
  call void @llvm.dbg.value(metadata i64 %15, metadata !804, metadata !DIExpression()), !dbg !3730
  %16 = icmp slt i64 %4, 0, !dbg !3738
  br i1 %16, label %17, label %30, !dbg !3738

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3738
  br i1 %18, label %19, label %24, !dbg !3738

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3738
  %21 = udiv i64 9223372036854775807, %20, !dbg !3738
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3738
  br i1 %23, label %46, label %43, !dbg !3738

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3738
  br i1 %25, label %43, label %26, !dbg !3738

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3738
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3738
  %29 = icmp ult i64 %28, %15, !dbg !3738
  br i1 %29, label %46, label %43, !dbg !3738

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3738
  br i1 %31, label %43, label %32, !dbg !3738

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3738
  br i1 %33, label %34, label %40, !dbg !3738

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3738
  br i1 %35, label %43, label %36, !dbg !3738

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3738
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3738
  %39 = icmp ult i64 %38, %4, !dbg !3738
  br i1 %39, label %46, label %43, !dbg !3738

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !3738
  br i1 %42, label %46, label %43, !dbg !3738

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !805, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3730
  %44 = mul i64 %15, %4, !dbg !3738
  call void @llvm.dbg.value(metadata i64 %44, metadata !805, metadata !DIExpression()), !dbg !3730
  %45 = icmp slt i64 %44, 128, !dbg !3738
  br i1 %45, label %46, label %51, !dbg !3738

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !806, metadata !DIExpression()), !dbg !3730
  %48 = sdiv i64 %47, %4, !dbg !3739
  call void @llvm.dbg.value(metadata i64 %48, metadata !804, metadata !DIExpression()), !dbg !3730
  %49 = srem i64 %47, %4, !dbg !3742
  %50 = sub nsw i64 %47, %49, !dbg !3743
  call void @llvm.dbg.value(metadata i64 %50, metadata !805, metadata !DIExpression()), !dbg !3730
  br label %51, !dbg !3744

51:                                               ; preds = %43, %46
  %52 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3730
  %53 = phi i64 [ %50, %46 ], [ %44, %43 ], !dbg !3730
  call void @llvm.dbg.value(metadata i64 %53, metadata !805, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata i64 %52, metadata !804, metadata !DIExpression()), !dbg !3730
  %54 = icmp eq ptr %0, null, !dbg !3745
  br i1 %54, label %55, label %56, !dbg !3747

55:                                               ; preds = %51
  store i64 0, ptr %1, align 8, !dbg !3748, !tbaa !1217
  br label %56, !dbg !3749

56:                                               ; preds = %55, %51
  %57 = sub nsw i64 %52, %6, !dbg !3750
  %58 = icmp slt i64 %57, %2, !dbg !3752
  br i1 %58, label %59, label %96, !dbg !3753

59:                                               ; preds = %56
  %60 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3754
  %61 = extractvalue { i64, i1 } %60, 1, !dbg !3754
  %62 = extractvalue { i64, i1 } %60, 0, !dbg !3754
  call void @llvm.dbg.value(metadata i64 %62, metadata !804, metadata !DIExpression()), !dbg !3730
  %63 = icmp sgt i64 %62, %3
  %64 = select i1 %12, i1 %63, i1 false
  %65 = or i1 %61, %64, !dbg !3755
  br i1 %65, label %95, label %66, !dbg !3755

66:                                               ; preds = %59
  br i1 %16, label %67, label %80, !dbg !3756

67:                                               ; preds = %66
  %68 = icmp slt i64 %62, 0, !dbg !3756
  br i1 %68, label %69, label %74, !dbg !3756

69:                                               ; preds = %67
  %70 = sub i64 0, %4, !dbg !3756
  %71 = udiv i64 9223372036854775807, %70, !dbg !3756
  %72 = sub nsw i64 0, %71
  %73 = icmp slt i64 %62, %72, !dbg !3756
  br i1 %73, label %95, label %93, !dbg !3756

74:                                               ; preds = %67
  %75 = icmp eq i64 %4, -1, !dbg !3756
  br i1 %75, label %93, label %76, !dbg !3756

76:                                               ; preds = %74
  %77 = sub i64 0, %4, !dbg !3756
  %78 = udiv i64 -9223372036854775808, %77, !dbg !3756
  %79 = icmp ult i64 %78, %62, !dbg !3756
  br i1 %79, label %95, label %93, !dbg !3756

80:                                               ; preds = %66
  %81 = icmp eq i64 %4, 0, !dbg !3756
  br i1 %81, label %93, label %82, !dbg !3756

82:                                               ; preds = %80
  %83 = icmp slt i64 %62, 0, !dbg !3756
  br i1 %83, label %84, label %90, !dbg !3756

84:                                               ; preds = %82
  %85 = icmp eq i64 %62, -1, !dbg !3756
  br i1 %85, label %93, label %86, !dbg !3756

86:                                               ; preds = %84
  %87 = sub i64 0, %62, !dbg !3756
  %88 = udiv i64 -9223372036854775808, %87, !dbg !3756
  %89 = icmp ult i64 %88, %4, !dbg !3756
  br i1 %89, label %95, label %93, !dbg !3756

90:                                               ; preds = %82
  %91 = udiv i64 9223372036854775807, %4
  %92 = icmp ult i64 %91, %62, !dbg !3756
  br i1 %92, label %95, label %93, !dbg !3756

93:                                               ; preds = %69, %76, %86, %90, %80, %74, %84
  call void @llvm.dbg.value(metadata !DIArgList(i64 %62, i64 %4), metadata !805, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3730
  %94 = mul i64 %62, %4, !dbg !3756
  call void @llvm.dbg.value(metadata i64 %94, metadata !805, metadata !DIExpression()), !dbg !3730
  br label %96, !dbg !3757

95:                                               ; preds = %69, %76, %86, %90, %59
  tail call void @xalloc_die() #38, !dbg !3758
  unreachable, !dbg !3758

96:                                               ; preds = %93, %56
  %97 = phi i64 [ %62, %93 ], [ %52, %56 ], !dbg !3730
  %98 = phi i64 [ %94, %93 ], [ %53, %56 ], !dbg !3730
  call void @llvm.dbg.value(metadata i64 %98, metadata !805, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata i64 %97, metadata !804, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata ptr %0, metadata !3576, metadata !DIExpression()), !dbg !3759
  call void @llvm.dbg.value(metadata i64 %98, metadata !3577, metadata !DIExpression()), !dbg !3759
  call void @llvm.dbg.value(metadata ptr %0, metadata !3579, metadata !DIExpression()), !dbg !3761
  call void @llvm.dbg.value(metadata i64 %98, metadata !3583, metadata !DIExpression()), !dbg !3761
  %99 = icmp eq i64 %98, 0, !dbg !3763
  %100 = select i1 %99, i64 1, i64 %98, !dbg !3763
  %101 = tail call ptr @realloc(ptr noundef %0, i64 noundef %100) #44, !dbg !3764
  call void @llvm.dbg.value(metadata ptr %101, metadata !3504, metadata !DIExpression()), !dbg !3765
  %102 = icmp eq ptr %101, null, !dbg !3767
  br i1 %102, label %103, label %104, !dbg !3768

103:                                              ; preds = %96
  tail call void @xalloc_die() #38, !dbg !3769
  unreachable, !dbg !3769

104:                                              ; preds = %96
  call void @llvm.dbg.value(metadata ptr %101, metadata !798, metadata !DIExpression()), !dbg !3730
  store i64 %97, ptr %1, align 8, !dbg !3770, !tbaa !1217
  ret ptr %101, !dbg !3771
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3772 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3774, metadata !DIExpression()), !dbg !3775
  call void @llvm.dbg.value(metadata i64 %0, metadata !3776, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata i64 1, metadata !3779, metadata !DIExpression()), !dbg !3780
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #43, !dbg !3782
  call void @llvm.dbg.value(metadata ptr %2, metadata !3504, metadata !DIExpression()), !dbg !3783
  %3 = icmp eq ptr %2, null, !dbg !3785
  br i1 %3, label %4, label %5, !dbg !3786

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3787
  unreachable, !dbg !3787

5:                                                ; preds = %1
  ret ptr %2, !dbg !3788
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3789 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3777 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3776, metadata !DIExpression()), !dbg !3790
  call void @llvm.dbg.value(metadata i64 %1, metadata !3779, metadata !DIExpression()), !dbg !3790
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #43, !dbg !3791
  call void @llvm.dbg.value(metadata ptr %3, metadata !3504, metadata !DIExpression()), !dbg !3792
  %4 = icmp eq ptr %3, null, !dbg !3794
  br i1 %4, label %5, label %6, !dbg !3795

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3796
  unreachable, !dbg !3796

6:                                                ; preds = %2
  ret ptr %3, !dbg !3797
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3798 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3800, metadata !DIExpression()), !dbg !3801
  call void @llvm.dbg.value(metadata i64 %0, metadata !3802, metadata !DIExpression()), !dbg !3806
  call void @llvm.dbg.value(metadata i64 1, metadata !3805, metadata !DIExpression()), !dbg !3806
  call void @llvm.dbg.value(metadata i64 %0, metadata !3808, metadata !DIExpression()), !dbg !3812
  call void @llvm.dbg.value(metadata i64 1, metadata !3811, metadata !DIExpression()), !dbg !3812
  call void @llvm.dbg.value(metadata i64 %0, metadata !3808, metadata !DIExpression()), !dbg !3812
  call void @llvm.dbg.value(metadata i64 1, metadata !3811, metadata !DIExpression()), !dbg !3812
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #43, !dbg !3814
  call void @llvm.dbg.value(metadata ptr %2, metadata !3504, metadata !DIExpression()), !dbg !3815
  %3 = icmp eq ptr %2, null, !dbg !3817
  br i1 %3, label %4, label %5, !dbg !3818

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3819
  unreachable, !dbg !3819

5:                                                ; preds = %1
  ret ptr %2, !dbg !3820
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3803 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3802, metadata !DIExpression()), !dbg !3821
  call void @llvm.dbg.value(metadata i64 %1, metadata !3805, metadata !DIExpression()), !dbg !3821
  call void @llvm.dbg.value(metadata i64 %0, metadata !3808, metadata !DIExpression()), !dbg !3822
  call void @llvm.dbg.value(metadata i64 %1, metadata !3811, metadata !DIExpression()), !dbg !3822
  call void @llvm.dbg.value(metadata i64 %0, metadata !3808, metadata !DIExpression()), !dbg !3822
  call void @llvm.dbg.value(metadata i64 %1, metadata !3811, metadata !DIExpression()), !dbg !3822
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #43, !dbg !3824
  call void @llvm.dbg.value(metadata ptr %3, metadata !3504, metadata !DIExpression()), !dbg !3825
  %4 = icmp eq ptr %3, null, !dbg !3827
  br i1 %4, label %5, label %6, !dbg !3828

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3829
  unreachable, !dbg !3829

6:                                                ; preds = %2
  ret ptr %3, !dbg !3830
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3831 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3835, metadata !DIExpression()), !dbg !3837
  call void @llvm.dbg.value(metadata i64 %1, metadata !3836, metadata !DIExpression()), !dbg !3837
  call void @llvm.dbg.value(metadata i64 %1, metadata !3528, metadata !DIExpression()), !dbg !3838
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #42, !dbg !3840
  call void @llvm.dbg.value(metadata ptr %3, metadata !3504, metadata !DIExpression()), !dbg !3841
  %4 = icmp eq ptr %3, null, !dbg !3843
  br i1 %4, label %5, label %6, !dbg !3844

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3845
  unreachable, !dbg !3845

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3846, metadata !DIExpression()), !dbg !3854
  call void @llvm.dbg.value(metadata ptr %0, metadata !3852, metadata !DIExpression()), !dbg !3854
  call void @llvm.dbg.value(metadata i64 %1, metadata !3853, metadata !DIExpression()), !dbg !3854
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3856
  ret ptr %3, !dbg !3857
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3858 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3862, metadata !DIExpression()), !dbg !3864
  call void @llvm.dbg.value(metadata i64 %1, metadata !3863, metadata !DIExpression()), !dbg !3864
  call void @llvm.dbg.value(metadata i64 %1, metadata !3542, metadata !DIExpression()), !dbg !3865
  call void @llvm.dbg.value(metadata i64 %1, metadata !3544, metadata !DIExpression()), !dbg !3867
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #42, !dbg !3869
  call void @llvm.dbg.value(metadata ptr %3, metadata !3504, metadata !DIExpression()), !dbg !3870
  %4 = icmp eq ptr %3, null, !dbg !3872
  br i1 %4, label %5, label %6, !dbg !3873

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3874
  unreachable, !dbg !3874

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3846, metadata !DIExpression()), !dbg !3875
  call void @llvm.dbg.value(metadata ptr %0, metadata !3852, metadata !DIExpression()), !dbg !3875
  call void @llvm.dbg.value(metadata i64 %1, metadata !3853, metadata !DIExpression()), !dbg !3875
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3877
  ret ptr %3, !dbg !3878
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3879 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3883, metadata !DIExpression()), !dbg !3886
  call void @llvm.dbg.value(metadata i64 %1, metadata !3884, metadata !DIExpression()), !dbg !3886
  %3 = add nsw i64 %1, 1, !dbg !3887
  call void @llvm.dbg.value(metadata i64 %3, metadata !3542, metadata !DIExpression()), !dbg !3888
  call void @llvm.dbg.value(metadata i64 %3, metadata !3544, metadata !DIExpression()), !dbg !3890
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #42, !dbg !3892
  call void @llvm.dbg.value(metadata ptr %4, metadata !3504, metadata !DIExpression()), !dbg !3893
  %5 = icmp eq ptr %4, null, !dbg !3895
  br i1 %5, label %6, label %7, !dbg !3896

6:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3897
  unreachable, !dbg !3897

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !3885, metadata !DIExpression()), !dbg !3886
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3898
  store i8 0, ptr %8, align 1, !dbg !3899, !tbaa !933
  call void @llvm.dbg.value(metadata ptr %4, metadata !3846, metadata !DIExpression()), !dbg !3900
  call void @llvm.dbg.value(metadata ptr %0, metadata !3852, metadata !DIExpression()), !dbg !3900
  call void @llvm.dbg.value(metadata i64 %1, metadata !3853, metadata !DIExpression()), !dbg !3900
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3902
  ret ptr %4, !dbg !3903
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3904 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3906, metadata !DIExpression()), !dbg !3907
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #37, !dbg !3908
  %3 = add i64 %2, 1, !dbg !3909
  call void @llvm.dbg.value(metadata ptr %0, metadata !3835, metadata !DIExpression()), !dbg !3910
  call void @llvm.dbg.value(metadata i64 %3, metadata !3836, metadata !DIExpression()), !dbg !3910
  call void @llvm.dbg.value(metadata i64 %3, metadata !3528, metadata !DIExpression()), !dbg !3912
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #42, !dbg !3914
  call void @llvm.dbg.value(metadata ptr %4, metadata !3504, metadata !DIExpression()), !dbg !3915
  %5 = icmp eq ptr %4, null, !dbg !3917
  br i1 %5, label %6, label %7, !dbg !3918

6:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3919
  unreachable, !dbg !3919

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3846, metadata !DIExpression()), !dbg !3920
  call void @llvm.dbg.value(metadata ptr %0, metadata !3852, metadata !DIExpression()), !dbg !3920
  call void @llvm.dbg.value(metadata i64 %3, metadata !3853, metadata !DIExpression()), !dbg !3920
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #36, !dbg !3922
  ret ptr %4, !dbg !3923
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3924 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3929, !tbaa !924
  call void @llvm.dbg.value(metadata i32 %1, metadata !3926, metadata !DIExpression()), !dbg !3930
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.142, ptr noundef nonnull @.str.2.143, i32 noundef 5) #36, !dbg !3929
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.144, ptr noundef %2) #36, !dbg !3929
  %3 = icmp eq i32 %1, 0, !dbg !3929
  tail call void @llvm.assume(i1 %3), !dbg !3929
  tail call void @abort() #38, !dbg !3931
  unreachable, !dbg !3931
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nounwind uwtable
define dso_local i32 @xstrtoumax(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr noundef readonly %4) local_unnamed_addr #10 !dbg !3932 {
  %6 = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3939, metadata !DIExpression()), !dbg !3957
  call void @llvm.dbg.value(metadata ptr %1, metadata !3940, metadata !DIExpression()), !dbg !3957
  call void @llvm.dbg.value(metadata i32 %2, metadata !3941, metadata !DIExpression()), !dbg !3957
  call void @llvm.dbg.value(metadata ptr %3, metadata !3942, metadata !DIExpression()), !dbg !3957
  call void @llvm.dbg.value(metadata ptr %4, metadata !3943, metadata !DIExpression()), !dbg !3957
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #36, !dbg !3958
  %7 = icmp eq ptr %1, null, !dbg !3959
  call void @llvm.dbg.value(metadata ptr %20, metadata !3945, metadata !DIExpression()), !dbg !3957
  call void @llvm.dbg.value(metadata ptr %0, metadata !3946, metadata !DIExpression()), !dbg !3960
  call void @llvm.dbg.value(metadata i8 poison, metadata !3949, metadata !DIExpression()), !dbg !3960
  %8 = tail call ptr @__ctype_b_loc() #39, !dbg !3957
  %9 = load ptr, ptr %8, align 8, !tbaa !854
  br label %10, !dbg !3961

10:                                               ; preds = %10, %5
  %11 = phi ptr [ %0, %5 ], [ %18, %10 ], !dbg !3960
  %12 = load i8, ptr %11, align 1, !dbg !3960, !tbaa !933
  call void @llvm.dbg.value(metadata i8 %12, metadata !3949, metadata !DIExpression()), !dbg !3960
  call void @llvm.dbg.value(metadata ptr %11, metadata !3946, metadata !DIExpression()), !dbg !3960
  %13 = zext i8 %12 to i64
  %14 = getelementptr inbounds i16, ptr %9, i64 %13, !dbg !3962
  %15 = load i16, ptr %14, align 2, !dbg !3962, !tbaa !965
  %16 = and i16 %15, 8192, !dbg !3962
  %17 = icmp eq i16 %16, 0, !dbg !3961
  %18 = getelementptr inbounds i8, ptr %11, i64 1, !dbg !3963
  call void @llvm.dbg.value(metadata ptr %18, metadata !3946, metadata !DIExpression()), !dbg !3960
  call void @llvm.dbg.value(metadata i8 poison, metadata !3949, metadata !DIExpression()), !dbg !3960
  br i1 %17, label %19, label %10, !dbg !3961, !llvm.loop !3964

19:                                               ; preds = %10
  %20 = select i1 %7, ptr %6, ptr %1, !dbg !3959
  %21 = icmp eq i8 %12, 45, !dbg !3966
  br i1 %21, label %22, label %23, !dbg !3968

22:                                               ; preds = %19
  store ptr %0, ptr %20, align 8, !dbg !3969, !tbaa !854
  br label %387

23:                                               ; preds = %19
  %24 = tail call ptr @__errno_location() #39, !dbg !3971
  store i32 0, ptr %24, align 4, !dbg !3972, !tbaa !924
  %25 = call i64 @strtoumax(ptr noundef %0, ptr noundef %20, i32 noundef %2) #36, !dbg !3973
  call void @llvm.dbg.value(metadata i64 %25, metadata !3950, metadata !DIExpression()), !dbg !3957
  call void @llvm.dbg.value(metadata i32 0, metadata !3951, metadata !DIExpression()), !dbg !3957
  %26 = load ptr, ptr %20, align 8, !dbg !3974, !tbaa !854
  %27 = icmp eq ptr %26, %0, !dbg !3976
  br i1 %27, label %28, label %37, !dbg !3977

28:                                               ; preds = %23
  %29 = icmp eq ptr %4, null, !dbg !3978
  br i1 %29, label %387, label %30, !dbg !3981

30:                                               ; preds = %28
  %31 = load i8, ptr %0, align 1, !dbg !3982, !tbaa !933
  %32 = icmp eq i8 %31, 0, !dbg !3982
  br i1 %32, label %387, label %33, !dbg !3983

33:                                               ; preds = %30
  %34 = sext i8 %31 to i32, !dbg !3982
  %35 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %34) #37, !dbg !3984
  %36 = icmp eq ptr %35, null, !dbg !3984
  br i1 %36, label %387, label %44, !dbg !3985

37:                                               ; preds = %23
  %38 = load i32, ptr %24, align 4, !dbg !3986, !tbaa !924
  switch i32 %38, label %387 [
    i32 0, label %40
    i32 34, label %39
  ], !dbg !3988

39:                                               ; preds = %37
  call void @llvm.dbg.value(metadata i32 1, metadata !3951, metadata !DIExpression()), !dbg !3957
  br label %40, !dbg !3989

40:                                               ; preds = %37, %39
  %41 = phi i32 [ 1, %39 ], [ %38, %37 ], !dbg !3957
  call void @llvm.dbg.value(metadata i32 %41, metadata !3951, metadata !DIExpression()), !dbg !3957
  %42 = icmp eq ptr %4, null, !dbg !3991
  br i1 %42, label %43, label %44, !dbg !3993

43:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 %25, metadata !3950, metadata !DIExpression()), !dbg !3957
  store i64 %25, ptr %3, align 8, !dbg !3994, !tbaa !1217
  br label %387, !dbg !3996

44:                                               ; preds = %33, %40
  %45 = phi i32 [ %41, %40 ], [ 0, %33 ]
  %46 = phi i64 [ %25, %40 ], [ 1, %33 ]
  %47 = load i8, ptr %26, align 1, !dbg !3997, !tbaa !933
  %48 = sext i8 %47 to i32, !dbg !3997
  %49 = icmp eq i8 %47, 0, !dbg !3998
  br i1 %49, label %384, label %50, !dbg !3999

50:                                               ; preds = %44
  %51 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %48) #37, !dbg !4000
  %52 = icmp eq ptr %51, null, !dbg !4000
  br i1 %52, label %53, label %55, !dbg !4002

53:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 %25, metadata !3950, metadata !DIExpression()), !dbg !3957
  store i64 %46, ptr %3, align 8, !dbg !4003, !tbaa !1217
  %54 = or i32 %45, 2, !dbg !4005
  br label %387, !dbg !4006

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i32 1024, metadata !3952, metadata !DIExpression()), !dbg !4007
  call void @llvm.dbg.value(metadata i32 1, metadata !3955, metadata !DIExpression()), !dbg !4007
  switch i32 %48, label %69 [
    i32 69, label %56
    i32 71, label %56
    i32 103, label %56
    i32 107, label %56
    i32 75, label %56
    i32 77, label %56
    i32 109, label %56
    i32 80, label %56
    i32 81, label %56
    i32 82, label %56
    i32 84, label %56
    i32 116, label %56
    i32 89, label %56
    i32 90, label %56
  ], !dbg !4008

56:                                               ; preds = %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55
  %57 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef 48) #37, !dbg !4009
  %58 = icmp eq ptr %57, null, !dbg !4009
  br i1 %58, label %69, label %59, !dbg !4012

59:                                               ; preds = %56
  %60 = getelementptr inbounds i8, ptr %26, i64 1, !dbg !4013
  %61 = load i8, ptr %60, align 1, !dbg !4013, !tbaa !933
  %62 = sext i8 %61 to i32, !dbg !4013
  switch i32 %62, label %69 [
    i32 105, label %63
    i32 66, label %68
    i32 68, label %68
  ], !dbg !4014

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %26, i64 2, !dbg !4015
  %65 = load i8, ptr %64, align 1, !dbg !4015, !tbaa !933
  %66 = icmp eq i8 %65, 66, !dbg !4018
  %67 = select i1 %66, i64 3, i64 1, !dbg !4019
  br label %69, !dbg !4019

68:                                               ; preds = %59, %59
  call void @llvm.dbg.value(metadata i32 1000, metadata !3952, metadata !DIExpression()), !dbg !4007
  call void @llvm.dbg.value(metadata i32 2, metadata !3955, metadata !DIExpression()), !dbg !4007
  br label %69, !dbg !4020

69:                                               ; preds = %63, %56, %59, %68, %55
  %70 = phi i64 [ 1024, %55 ], [ 1024, %59 ], [ 1000, %68 ], [ 1024, %56 ], [ 1024, %63 ]
  %71 = phi i64 [ 1, %55 ], [ 1, %59 ], [ 2, %68 ], [ 1, %56 ], [ %67, %63 ]
  call void @llvm.dbg.value(metadata i32 poison, metadata !3955, metadata !DIExpression()), !dbg !4007
  call void @llvm.dbg.value(metadata i32 poison, metadata !3952, metadata !DIExpression()), !dbg !4007
  switch i32 %48, label %382 [
    i32 98, label %303
    i32 66, label %308
    i32 99, label %373
    i32 69, label %272
    i32 71, label %313
    i32 103, label %313
    i32 107, label %329
    i32 75, label %329
    i32 77, label %335
    i32 109, label %335
    i32 80, label %246
    i32 81, label %195
    i32 82, label %149
    i32 84, label %346
    i32 116, label %346
    i32 119, label %367
    i32 89, label %108
    i32 90, label %72
  ], !dbg !4021

72:                                               ; preds = %69
  call void @llvm.dbg.value(metadata i32 0, metadata !4022, metadata !DIExpression()), !dbg !4030
  call void @llvm.dbg.value(metadata i32 7, metadata !4029, metadata !DIExpression()), !dbg !4030
  call void @llvm.dbg.value(metadata i32 6, metadata !4029, metadata !DIExpression()), !dbg !4030
  call void @llvm.dbg.value(metadata ptr undef, metadata !4033, metadata !DIExpression()), !dbg !4040
  call void @llvm.dbg.value(metadata i32 poison, metadata !4038, metadata !DIExpression()), !dbg !4040
  %73 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %46), !dbg !4042
  %74 = extractvalue { i64, i1 } %73, 1, !dbg !4042
  %75 = mul i64 %46, %70, !dbg !4042
  call void @llvm.dbg.value(metadata i64 %75, metadata !4039, metadata !DIExpression()), !dbg !4040
  %76 = select i1 %74, i64 -1, i64 %75, !dbg !4040
  call void @llvm.dbg.value(metadata i1 %74, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4030
  call void @llvm.dbg.value(metadata i32 6, metadata !4029, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4030
  call void @llvm.dbg.value(metadata i1 %74, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4030
  call void @llvm.dbg.value(metadata i32 6, metadata !4029, metadata !DIExpression()), !dbg !4030
  call void @llvm.dbg.value(metadata i32 5, metadata !4029, metadata !DIExpression()), !dbg !4030
  call void @llvm.dbg.value(metadata ptr undef, metadata !4033, metadata !DIExpression()), !dbg !4040
  call void @llvm.dbg.value(metadata i32 poison, metadata !4038, metadata !DIExpression()), !dbg !4040
  %77 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %76), !dbg !4042
  %78 = extractvalue { i64, i1 } %77, 1, !dbg !4042
  %79 = mul i64 %76, %70, !dbg !4042
  call void @llvm.dbg.value(metadata i64 %79, metadata !4039, metadata !DIExpression()), !dbg !4040
  %80 = select i1 %78, i64 -1, i64 %79, !dbg !4040
  %81 = or i1 %74, %78, !dbg !4044
  call void @llvm.dbg.value(metadata i1 %81, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4030
  call void @llvm.dbg.value(metadata i32 5, metadata !4029, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4030
  call void @llvm.dbg.value(metadata i1 %81, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4030
  call void @llvm.dbg.value(metadata i32 5, metadata !4029, metadata !DIExpression()), !dbg !4030
  call void @llvm.dbg.value(metadata i32 4, metadata !4029, metadata !DIExpression()), !dbg !4030
  call void @llvm.dbg.value(metadata ptr undef, metadata !4033, metadata !DIExpression()), !dbg !4040
  call void @llvm.dbg.value(metadata i32 poison, metadata !4038, metadata !DIExpression()), !dbg !4040
  %82 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %80), !dbg !4042
  %83 = extractvalue { i64, i1 } %82, 1, !dbg !4042
  %84 = mul i64 %80, %70, !dbg !4042
  call void @llvm.dbg.value(metadata i64 %84, metadata !4039, metadata !DIExpression()), !dbg !4040
  %85 = select i1 %83, i64 -1, i64 %84, !dbg !4040
  %86 = or i1 %81, %83, !dbg !4044
  call void @llvm.dbg.value(metadata i1 %86, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4030
  call void @llvm.dbg.value(metadata i32 4, metadata !4029, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4030
  call void @llvm.dbg.value(metadata i1 %86, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4030
  call void @llvm.dbg.value(metadata i32 4, metadata !4029, metadata !DIExpression()), !dbg !4030
  call void @llvm.dbg.value(metadata i32 3, metadata !4029, metadata !DIExpression()), !dbg !4030
  call void @llvm.dbg.value(metadata ptr undef, metadata !4033, metadata !DIExpression()), !dbg !4040
  call void @llvm.dbg.value(metadata i32 poison, metadata !4038, metadata !DIExpression()), !dbg !4040
  %87 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %85), !dbg !4042
  %88 = extractvalue { i64, i1 } %87, 1, !dbg !4042
  %89 = mul i64 %85, %70, !dbg !4042
  call void @llvm.dbg.value(metadata i64 %89, metadata !4039, metadata !DIExpression()), !dbg !4040
  %90 = select i1 %88, i64 -1, i64 %89, !dbg !4040
  %91 = or i1 %86, %88, !dbg !4044
  call void @llvm.dbg.value(metadata i1 %91, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4030
  call void @llvm.dbg.value(metadata i32 3, metadata !4029, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4030
  call void @llvm.dbg.value(metadata i1 %91, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4030
  call void @llvm.dbg.value(metadata i32 3, metadata !4029, metadata !DIExpression()), !dbg !4030
  call void @llvm.dbg.value(metadata i32 2, metadata !4029, metadata !DIExpression()), !dbg !4030
  call void @llvm.dbg.value(metadata ptr undef, metadata !4033, metadata !DIExpression()), !dbg !4040
  call void @llvm.dbg.value(metadata i32 poison, metadata !4038, metadata !DIExpression()), !dbg !4040
  %92 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %90), !dbg !4042
  %93 = extractvalue { i64, i1 } %92, 1, !dbg !4042
  %94 = mul i64 %90, %70, !dbg !4042
  call void @llvm.dbg.value(metadata i64 %94, metadata !4039, metadata !DIExpression()), !dbg !4040
  %95 = select i1 %93, i64 -1, i64 %94, !dbg !4040
  %96 = or i1 %91, %93, !dbg !4044
  call void @llvm.dbg.value(metadata i1 %96, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4030
  call void @llvm.dbg.value(metadata i32 2, metadata !4029, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4030
  call void @llvm.dbg.value(metadata i1 %96, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4030
  call void @llvm.dbg.value(metadata i32 2, metadata !4029, metadata !DIExpression()), !dbg !4030
  call void @llvm.dbg.value(metadata i32 1, metadata !4029, metadata !DIExpression()), !dbg !4030
  call void @llvm.dbg.value(metadata ptr undef, metadata !4033, metadata !DIExpression()), !dbg !4040
  call void @llvm.dbg.value(metadata i32 poison, metadata !4038, metadata !DIExpression()), !dbg !4040
  %97 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %95), !dbg !4042
  %98 = extractvalue { i64, i1 } %97, 1, !dbg !4042
  %99 = mul i64 %95, %70, !dbg !4042
  call void @llvm.dbg.value(metadata i64 %99, metadata !4039, metadata !DIExpression()), !dbg !4040
  %100 = select i1 %98, i64 -1, i64 %99, !dbg !4040
  %101 = or i1 %96, %98, !dbg !4044
  call void @llvm.dbg.value(metadata i1 %101, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4030
  call void @llvm.dbg.value(metadata i32 1, metadata !4029, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4030
  call void @llvm.dbg.value(metadata i1 %101, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4030
  call void @llvm.dbg.value(metadata i32 1, metadata !4029, metadata !DIExpression()), !dbg !4030
  call void @llvm.dbg.value(metadata i32 0, metadata !4029, metadata !DIExpression()), !dbg !4030
  call void @llvm.dbg.value(metadata ptr undef, metadata !4033, metadata !DIExpression()), !dbg !4040
  call void @llvm.dbg.value(metadata i32 poison, metadata !4038, metadata !DIExpression()), !dbg !4040
  %102 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %100), !dbg !4042
  %103 = extractvalue { i64, i1 } %102, 1, !dbg !4042
  %104 = mul i64 %100, %70, !dbg !4042
  call void @llvm.dbg.value(metadata i64 %104, metadata !4039, metadata !DIExpression()), !dbg !4040
  %105 = select i1 %103, i64 -1, i64 %104, !dbg !4040
  %106 = or i1 %101, %103, !dbg !4044
  %107 = zext i1 %106 to i32, !dbg !4044
  call void @llvm.dbg.value(metadata i32 %107, metadata !4022, metadata !DIExpression()), !dbg !4030
  call void @llvm.dbg.value(metadata i32 0, metadata !4029, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4030
  br label %373, !dbg !4045

108:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i32 0, metadata !4022, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.value(metadata i32 8, metadata !4029, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.value(metadata i32 7, metadata !4029, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.value(metadata ptr undef, metadata !4033, metadata !DIExpression()), !dbg !4048
  call void @llvm.dbg.value(metadata i32 poison, metadata !4038, metadata !DIExpression()), !dbg !4048
  %109 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %46), !dbg !4050
  %110 = extractvalue { i64, i1 } %109, 1, !dbg !4050
  %111 = mul i64 %46, %70, !dbg !4050
  call void @llvm.dbg.value(metadata i64 %111, metadata !4039, metadata !DIExpression()), !dbg !4048
  %112 = select i1 %110, i64 -1, i64 %111, !dbg !4048
  call void @llvm.dbg.value(metadata i1 %110, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4046
  call void @llvm.dbg.value(metadata i32 7, metadata !4029, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4046
  call void @llvm.dbg.value(metadata i1 %110, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4046
  call void @llvm.dbg.value(metadata i32 7, metadata !4029, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.value(metadata i32 6, metadata !4029, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.value(metadata ptr undef, metadata !4033, metadata !DIExpression()), !dbg !4048
  call void @llvm.dbg.value(metadata i32 poison, metadata !4038, metadata !DIExpression()), !dbg !4048
  %113 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %112), !dbg !4050
  %114 = extractvalue { i64, i1 } %113, 1, !dbg !4050
  %115 = mul i64 %112, %70, !dbg !4050
  call void @llvm.dbg.value(metadata i64 %115, metadata !4039, metadata !DIExpression()), !dbg !4048
  %116 = select i1 %114, i64 -1, i64 %115, !dbg !4048
  %117 = or i1 %110, %114, !dbg !4051
  call void @llvm.dbg.value(metadata i1 %117, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4046
  call void @llvm.dbg.value(metadata i32 6, metadata !4029, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4046
  call void @llvm.dbg.value(metadata i1 %117, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4046
  call void @llvm.dbg.value(metadata i32 6, metadata !4029, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.value(metadata i32 5, metadata !4029, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.value(metadata ptr undef, metadata !4033, metadata !DIExpression()), !dbg !4048
  call void @llvm.dbg.value(metadata i32 poison, metadata !4038, metadata !DIExpression()), !dbg !4048
  %118 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %116), !dbg !4050
  %119 = extractvalue { i64, i1 } %118, 1, !dbg !4050
  %120 = mul i64 %116, %70, !dbg !4050
  call void @llvm.dbg.value(metadata i64 %120, metadata !4039, metadata !DIExpression()), !dbg !4048
  %121 = select i1 %119, i64 -1, i64 %120, !dbg !4048
  %122 = or i1 %117, %119, !dbg !4051
  call void @llvm.dbg.value(metadata i1 %122, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4046
  call void @llvm.dbg.value(metadata i32 5, metadata !4029, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4046
  call void @llvm.dbg.value(metadata i1 %122, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4046
  call void @llvm.dbg.value(metadata i32 5, metadata !4029, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.value(metadata i32 4, metadata !4029, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.value(metadata ptr undef, metadata !4033, metadata !DIExpression()), !dbg !4048
  call void @llvm.dbg.value(metadata i32 poison, metadata !4038, metadata !DIExpression()), !dbg !4048
  %123 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %121), !dbg !4050
  %124 = extractvalue { i64, i1 } %123, 1, !dbg !4050
  %125 = mul i64 %121, %70, !dbg !4050
  call void @llvm.dbg.value(metadata i64 %125, metadata !4039, metadata !DIExpression()), !dbg !4048
  %126 = select i1 %124, i64 -1, i64 %125, !dbg !4048
  %127 = or i1 %122, %124, !dbg !4051
  call void @llvm.dbg.value(metadata i1 %127, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4046
  call void @llvm.dbg.value(metadata i32 4, metadata !4029, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4046
  call void @llvm.dbg.value(metadata i1 %127, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4046
  call void @llvm.dbg.value(metadata i32 4, metadata !4029, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.value(metadata i32 3, metadata !4029, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.value(metadata ptr undef, metadata !4033, metadata !DIExpression()), !dbg !4048
  call void @llvm.dbg.value(metadata i32 poison, metadata !4038, metadata !DIExpression()), !dbg !4048
  %128 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %126), !dbg !4050
  %129 = extractvalue { i64, i1 } %128, 1, !dbg !4050
  %130 = mul i64 %126, %70, !dbg !4050
  call void @llvm.dbg.value(metadata i64 %130, metadata !4039, metadata !DIExpression()), !dbg !4048
  %131 = select i1 %129, i64 -1, i64 %130, !dbg !4048
  %132 = or i1 %127, %129, !dbg !4051
  call void @llvm.dbg.value(metadata i1 %132, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4046
  call void @llvm.dbg.value(metadata i32 3, metadata !4029, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4046
  call void @llvm.dbg.value(metadata i1 %132, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4046
  call void @llvm.dbg.value(metadata i32 3, metadata !4029, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.value(metadata i32 2, metadata !4029, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.value(metadata ptr undef, metadata !4033, metadata !DIExpression()), !dbg !4048
  call void @llvm.dbg.value(metadata i32 poison, metadata !4038, metadata !DIExpression()), !dbg !4048
  %133 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %131), !dbg !4050
  %134 = extractvalue { i64, i1 } %133, 1, !dbg !4050
  %135 = mul i64 %131, %70, !dbg !4050
  call void @llvm.dbg.value(metadata i64 %135, metadata !4039, metadata !DIExpression()), !dbg !4048
  %136 = select i1 %134, i64 -1, i64 %135, !dbg !4048
  %137 = or i1 %132, %134, !dbg !4051
  call void @llvm.dbg.value(metadata i1 %137, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4046
  call void @llvm.dbg.value(metadata i32 2, metadata !4029, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4046
  call void @llvm.dbg.value(metadata i1 %137, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4046
  call void @llvm.dbg.value(metadata i32 2, metadata !4029, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.value(metadata i32 1, metadata !4029, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.value(metadata ptr undef, metadata !4033, metadata !DIExpression()), !dbg !4048
  call void @llvm.dbg.value(metadata i32 poison, metadata !4038, metadata !DIExpression()), !dbg !4048
  %138 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %136), !dbg !4050
  %139 = extractvalue { i64, i1 } %138, 1, !dbg !4050
  %140 = mul i64 %136, %70, !dbg !4050
  call void @llvm.dbg.value(metadata i64 %140, metadata !4039, metadata !DIExpression()), !dbg !4048
  %141 = select i1 %139, i64 -1, i64 %140, !dbg !4048
  %142 = or i1 %137, %139, !dbg !4051
  call void @llvm.dbg.value(metadata i1 %142, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4046
  call void @llvm.dbg.value(metadata i32 1, metadata !4029, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4046
  call void @llvm.dbg.value(metadata i1 %142, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4046
  call void @llvm.dbg.value(metadata i32 1, metadata !4029, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.value(metadata i32 0, metadata !4029, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.value(metadata ptr undef, metadata !4033, metadata !DIExpression()), !dbg !4048
  call void @llvm.dbg.value(metadata i32 poison, metadata !4038, metadata !DIExpression()), !dbg !4048
  %143 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %141), !dbg !4050
  %144 = extractvalue { i64, i1 } %143, 1, !dbg !4050
  %145 = mul i64 %141, %70, !dbg !4050
  call void @llvm.dbg.value(metadata i64 %145, metadata !4039, metadata !DIExpression()), !dbg !4048
  %146 = select i1 %144, i64 -1, i64 %145, !dbg !4048
  %147 = or i1 %142, %144, !dbg !4051
  %148 = zext i1 %147 to i32, !dbg !4051
  call void @llvm.dbg.value(metadata i32 %148, metadata !4022, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.value(metadata i32 0, metadata !4029, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4046
  br label %373, !dbg !4045

149:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i32 0, metadata !4022, metadata !DIExpression()), !dbg !4052
  call void @llvm.dbg.value(metadata i32 9, metadata !4029, metadata !DIExpression()), !dbg !4052
  call void @llvm.dbg.value(metadata i32 8, metadata !4029, metadata !DIExpression()), !dbg !4052
  call void @llvm.dbg.value(metadata ptr undef, metadata !4033, metadata !DIExpression()), !dbg !4054
  call void @llvm.dbg.value(metadata i32 poison, metadata !4038, metadata !DIExpression()), !dbg !4054
  %150 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %46), !dbg !4056
  %151 = extractvalue { i64, i1 } %150, 1, !dbg !4056
  %152 = mul i64 %46, %70, !dbg !4056
  call void @llvm.dbg.value(metadata i64 %152, metadata !4039, metadata !DIExpression()), !dbg !4054
  %153 = select i1 %151, i64 -1, i64 %152, !dbg !4054
  call void @llvm.dbg.value(metadata i1 %151, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4052
  call void @llvm.dbg.value(metadata i32 8, metadata !4029, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4052
  call void @llvm.dbg.value(metadata i1 %151, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4052
  call void @llvm.dbg.value(metadata i32 8, metadata !4029, metadata !DIExpression()), !dbg !4052
  call void @llvm.dbg.value(metadata i32 7, metadata !4029, metadata !DIExpression()), !dbg !4052
  call void @llvm.dbg.value(metadata ptr undef, metadata !4033, metadata !DIExpression()), !dbg !4054
  call void @llvm.dbg.value(metadata i32 poison, metadata !4038, metadata !DIExpression()), !dbg !4054
  %154 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %153), !dbg !4056
  %155 = extractvalue { i64, i1 } %154, 1, !dbg !4056
  %156 = mul i64 %153, %70, !dbg !4056
  call void @llvm.dbg.value(metadata i64 %156, metadata !4039, metadata !DIExpression()), !dbg !4054
  %157 = select i1 %155, i64 -1, i64 %156, !dbg !4054
  %158 = or i1 %151, %155, !dbg !4057
  call void @llvm.dbg.value(metadata i1 %158, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4052
  call void @llvm.dbg.value(metadata i32 7, metadata !4029, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4052
  call void @llvm.dbg.value(metadata i1 %158, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4052
  call void @llvm.dbg.value(metadata i32 7, metadata !4029, metadata !DIExpression()), !dbg !4052
  call void @llvm.dbg.value(metadata i32 6, metadata !4029, metadata !DIExpression()), !dbg !4052
  call void @llvm.dbg.value(metadata ptr undef, metadata !4033, metadata !DIExpression()), !dbg !4054
  call void @llvm.dbg.value(metadata i32 poison, metadata !4038, metadata !DIExpression()), !dbg !4054
  %159 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %157), !dbg !4056
  %160 = extractvalue { i64, i1 } %159, 1, !dbg !4056
  %161 = mul i64 %157, %70, !dbg !4056
  call void @llvm.dbg.value(metadata i64 %161, metadata !4039, metadata !DIExpression()), !dbg !4054
  %162 = select i1 %160, i64 -1, i64 %161, !dbg !4054
  %163 = or i1 %158, %160, !dbg !4057
  call void @llvm.dbg.value(metadata i1 %163, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4052
  call void @llvm.dbg.value(metadata i32 6, metadata !4029, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4052
  call void @llvm.dbg.value(metadata i1 %163, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4052
  call void @llvm.dbg.value(metadata i32 6, metadata !4029, metadata !DIExpression()), !dbg !4052
  call void @llvm.dbg.value(metadata i32 5, metadata !4029, metadata !DIExpression()), !dbg !4052
  call void @llvm.dbg.value(metadata ptr undef, metadata !4033, metadata !DIExpression()), !dbg !4054
  call void @llvm.dbg.value(metadata i32 poison, metadata !4038, metadata !DIExpression()), !dbg !4054
  %164 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %162), !dbg !4056
  %165 = extractvalue { i64, i1 } %164, 1, !dbg !4056
  %166 = mul i64 %162, %70, !dbg !4056
  call void @llvm.dbg.value(metadata i64 %166, metadata !4039, metadata !DIExpression()), !dbg !4054
  %167 = select i1 %165, i64 -1, i64 %166, !dbg !4054
  %168 = or i1 %163, %165, !dbg !4057
  call void @llvm.dbg.value(metadata i1 %168, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4052
  call void @llvm.dbg.value(metadata i32 5, metadata !4029, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4052
  call void @llvm.dbg.value(metadata i1 %168, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4052
  call void @llvm.dbg.value(metadata i32 5, metadata !4029, metadata !DIExpression()), !dbg !4052
  call void @llvm.dbg.value(metadata i32 4, metadata !4029, metadata !DIExpression()), !dbg !4052
  call void @llvm.dbg.value(metadata ptr undef, metadata !4033, metadata !DIExpression()), !dbg !4054
  call void @llvm.dbg.value(metadata i32 poison, metadata !4038, metadata !DIExpression()), !dbg !4054
  %169 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %167), !dbg !4056
  %170 = extractvalue { i64, i1 } %169, 1, !dbg !4056
  %171 = mul i64 %167, %70, !dbg !4056
  call void @llvm.dbg.value(metadata i64 %171, metadata !4039, metadata !DIExpression()), !dbg !4054
  %172 = select i1 %170, i64 -1, i64 %171, !dbg !4054
  %173 = or i1 %168, %170, !dbg !4057
  call void @llvm.dbg.value(metadata i1 %173, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4052
  call void @llvm.dbg.value(metadata i32 4, metadata !4029, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4052
  call void @llvm.dbg.value(metadata i1 %173, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4052
  call void @llvm.dbg.value(metadata i32 4, metadata !4029, metadata !DIExpression()), !dbg !4052
  call void @llvm.dbg.value(metadata i32 3, metadata !4029, metadata !DIExpression()), !dbg !4052
  call void @llvm.dbg.value(metadata ptr undef, metadata !4033, metadata !DIExpression()), !dbg !4054
  call void @llvm.dbg.value(metadata i32 poison, metadata !4038, metadata !DIExpression()), !dbg !4054
  %174 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %172), !dbg !4056
  %175 = extractvalue { i64, i1 } %174, 1, !dbg !4056
  %176 = mul i64 %172, %70, !dbg !4056
  call void @llvm.dbg.value(metadata i64 %176, metadata !4039, metadata !DIExpression()), !dbg !4054
  %177 = select i1 %175, i64 -1, i64 %176, !dbg !4054
  %178 = or i1 %173, %175, !dbg !4057
  call void @llvm.dbg.value(metadata i1 %178, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4052
  call void @llvm.dbg.value(metadata i32 3, metadata !4029, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4052
  call void @llvm.dbg.value(metadata i1 %178, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4052
  call void @llvm.dbg.value(metadata i32 3, metadata !4029, metadata !DIExpression()), !dbg !4052
  call void @llvm.dbg.value(metadata i32 2, metadata !4029, metadata !DIExpression()), !dbg !4052
  call void @llvm.dbg.value(metadata ptr undef, metadata !4033, metadata !DIExpression()), !dbg !4054
  call void @llvm.dbg.value(metadata i32 poison, metadata !4038, metadata !DIExpression()), !dbg !4054
  %179 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %177), !dbg !4056
  %180 = extractvalue { i64, i1 } %179, 1, !dbg !4056
  %181 = mul i64 %177, %70, !dbg !4056
  call void @llvm.dbg.value(metadata i64 %181, metadata !4039, metadata !DIExpression()), !dbg !4054
  %182 = select i1 %180, i64 -1, i64 %181, !dbg !4054
  %183 = or i1 %178, %180, !dbg !4057
  call void @llvm.dbg.value(metadata i1 %183, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4052
  call void @llvm.dbg.value(metadata i32 2, metadata !4029, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4052
  call void @llvm.dbg.value(metadata i1 %183, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4052
  call void @llvm.dbg.value(metadata i32 2, metadata !4029, metadata !DIExpression()), !dbg !4052
  call void @llvm.dbg.value(metadata i32 1, metadata !4029, metadata !DIExpression()), !dbg !4052
  call void @llvm.dbg.value(metadata ptr undef, metadata !4033, metadata !DIExpression()), !dbg !4054
  call void @llvm.dbg.value(metadata i32 poison, metadata !4038, metadata !DIExpression()), !dbg !4054
  %184 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %182), !dbg !4056
  %185 = extractvalue { i64, i1 } %184, 1, !dbg !4056
  %186 = mul i64 %182, %70, !dbg !4056
  call void @llvm.dbg.value(metadata i64 %186, metadata !4039, metadata !DIExpression()), !dbg !4054
  %187 = select i1 %185, i64 -1, i64 %186, !dbg !4054
  %188 = or i1 %183, %185, !dbg !4057
  call void @llvm.dbg.value(metadata i1 %188, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4052
  call void @llvm.dbg.value(metadata i32 1, metadata !4029, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4052
  call void @llvm.dbg.value(metadata i1 %188, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4052
  call void @llvm.dbg.value(metadata i32 1, metadata !4029, metadata !DIExpression()), !dbg !4052
  call void @llvm.dbg.value(metadata i32 0, metadata !4029, metadata !DIExpression()), !dbg !4052
  call void @llvm.dbg.value(metadata ptr undef, metadata !4033, metadata !DIExpression()), !dbg !4054
  call void @llvm.dbg.value(metadata i32 poison, metadata !4038, metadata !DIExpression()), !dbg !4054
  %189 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %187), !dbg !4056
  %190 = extractvalue { i64, i1 } %189, 1, !dbg !4056
  %191 = mul i64 %187, %70, !dbg !4056
  call void @llvm.dbg.value(metadata i64 %191, metadata !4039, metadata !DIExpression()), !dbg !4054
  %192 = select i1 %190, i64 -1, i64 %191, !dbg !4054
  %193 = or i1 %188, %190, !dbg !4057
  %194 = zext i1 %193 to i32, !dbg !4057
  call void @llvm.dbg.value(metadata i32 %194, metadata !4022, metadata !DIExpression()), !dbg !4052
  call void @llvm.dbg.value(metadata i32 0, metadata !4029, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4052
  br label %373, !dbg !4045

195:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i32 0, metadata !4022, metadata !DIExpression()), !dbg !4058
  call void @llvm.dbg.value(metadata i32 10, metadata !4029, metadata !DIExpression()), !dbg !4058
  call void @llvm.dbg.value(metadata i32 9, metadata !4029, metadata !DIExpression()), !dbg !4058
  call void @llvm.dbg.value(metadata ptr undef, metadata !4033, metadata !DIExpression()), !dbg !4060
  call void @llvm.dbg.value(metadata i32 poison, metadata !4038, metadata !DIExpression()), !dbg !4060
  %196 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %46), !dbg !4062
  %197 = extractvalue { i64, i1 } %196, 1, !dbg !4062
  %198 = mul i64 %46, %70, !dbg !4062
  call void @llvm.dbg.value(metadata i64 %198, metadata !4039, metadata !DIExpression()), !dbg !4060
  %199 = select i1 %197, i64 -1, i64 %198, !dbg !4060
  call void @llvm.dbg.value(metadata i1 %197, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4058
  call void @llvm.dbg.value(metadata i32 9, metadata !4029, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4058
  call void @llvm.dbg.value(metadata i1 %197, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4058
  call void @llvm.dbg.value(metadata i32 9, metadata !4029, metadata !DIExpression()), !dbg !4058
  call void @llvm.dbg.value(metadata i32 8, metadata !4029, metadata !DIExpression()), !dbg !4058
  call void @llvm.dbg.value(metadata ptr undef, metadata !4033, metadata !DIExpression()), !dbg !4060
  call void @llvm.dbg.value(metadata i32 poison, metadata !4038, metadata !DIExpression()), !dbg !4060
  %200 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %199), !dbg !4062
  %201 = extractvalue { i64, i1 } %200, 1, !dbg !4062
  %202 = mul i64 %199, %70, !dbg !4062
  call void @llvm.dbg.value(metadata i64 %202, metadata !4039, metadata !DIExpression()), !dbg !4060
  %203 = select i1 %201, i64 -1, i64 %202, !dbg !4060
  %204 = or i1 %197, %201, !dbg !4063
  call void @llvm.dbg.value(metadata i1 %204, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4058
  call void @llvm.dbg.value(metadata i32 8, metadata !4029, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4058
  call void @llvm.dbg.value(metadata i1 %204, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4058
  call void @llvm.dbg.value(metadata i32 8, metadata !4029, metadata !DIExpression()), !dbg !4058
  call void @llvm.dbg.value(metadata i32 7, metadata !4029, metadata !DIExpression()), !dbg !4058
  call void @llvm.dbg.value(metadata ptr undef, metadata !4033, metadata !DIExpression()), !dbg !4060
  call void @llvm.dbg.value(metadata i32 poison, metadata !4038, metadata !DIExpression()), !dbg !4060
  %205 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %203), !dbg !4062
  %206 = extractvalue { i64, i1 } %205, 1, !dbg !4062
  %207 = mul i64 %203, %70, !dbg !4062
  call void @llvm.dbg.value(metadata i64 %207, metadata !4039, metadata !DIExpression()), !dbg !4060
  %208 = select i1 %206, i64 -1, i64 %207, !dbg !4060
  %209 = or i1 %204, %206, !dbg !4063
  call void @llvm.dbg.value(metadata i1 %209, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4058
  call void @llvm.dbg.value(metadata i32 7, metadata !4029, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4058
  call void @llvm.dbg.value(metadata i1 %209, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4058
  call void @llvm.dbg.value(metadata i32 7, metadata !4029, metadata !DIExpression()), !dbg !4058
  call void @llvm.dbg.value(metadata i32 6, metadata !4029, metadata !DIExpression()), !dbg !4058
  call void @llvm.dbg.value(metadata ptr undef, metadata !4033, metadata !DIExpression()), !dbg !4060
  call void @llvm.dbg.value(metadata i32 poison, metadata !4038, metadata !DIExpression()), !dbg !4060
  %210 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %208), !dbg !4062
  %211 = extractvalue { i64, i1 } %210, 1, !dbg !4062
  %212 = mul i64 %208, %70, !dbg !4062
  call void @llvm.dbg.value(metadata i64 %212, metadata !4039, metadata !DIExpression()), !dbg !4060
  %213 = select i1 %211, i64 -1, i64 %212, !dbg !4060
  %214 = or i1 %209, %211, !dbg !4063
  call void @llvm.dbg.value(metadata i1 %214, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4058
  call void @llvm.dbg.value(metadata i32 6, metadata !4029, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4058
  call void @llvm.dbg.value(metadata i1 %214, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4058
  call void @llvm.dbg.value(metadata i32 6, metadata !4029, metadata !DIExpression()), !dbg !4058
  call void @llvm.dbg.value(metadata i32 5, metadata !4029, metadata !DIExpression()), !dbg !4058
  call void @llvm.dbg.value(metadata ptr undef, metadata !4033, metadata !DIExpression()), !dbg !4060
  call void @llvm.dbg.value(metadata i32 poison, metadata !4038, metadata !DIExpression()), !dbg !4060
  %215 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %213), !dbg !4062
  %216 = extractvalue { i64, i1 } %215, 1, !dbg !4062
  %217 = mul i64 %213, %70, !dbg !4062
  call void @llvm.dbg.value(metadata i64 %217, metadata !4039, metadata !DIExpression()), !dbg !4060
  %218 = select i1 %216, i64 -1, i64 %217, !dbg !4060
  %219 = or i1 %214, %216, !dbg !4063
  call void @llvm.dbg.value(metadata i1 %219, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4058
  call void @llvm.dbg.value(metadata i32 5, metadata !4029, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4058
  call void @llvm.dbg.value(metadata i1 %219, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4058
  call void @llvm.dbg.value(metadata i32 5, metadata !4029, metadata !DIExpression()), !dbg !4058
  call void @llvm.dbg.value(metadata i32 4, metadata !4029, metadata !DIExpression()), !dbg !4058
  call void @llvm.dbg.value(metadata ptr undef, metadata !4033, metadata !DIExpression()), !dbg !4060
  call void @llvm.dbg.value(metadata i32 poison, metadata !4038, metadata !DIExpression()), !dbg !4060
  %220 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %218), !dbg !4062
  %221 = extractvalue { i64, i1 } %220, 1, !dbg !4062
  %222 = mul i64 %218, %70, !dbg !4062
  call void @llvm.dbg.value(metadata i64 %222, metadata !4039, metadata !DIExpression()), !dbg !4060
  %223 = select i1 %221, i64 -1, i64 %222, !dbg !4060
  %224 = or i1 %219, %221, !dbg !4063
  call void @llvm.dbg.value(metadata i1 %224, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4058
  call void @llvm.dbg.value(metadata i32 4, metadata !4029, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4058
  call void @llvm.dbg.value(metadata i1 %224, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4058
  call void @llvm.dbg.value(metadata i32 4, metadata !4029, metadata !DIExpression()), !dbg !4058
  call void @llvm.dbg.value(metadata i32 3, metadata !4029, metadata !DIExpression()), !dbg !4058
  call void @llvm.dbg.value(metadata ptr undef, metadata !4033, metadata !DIExpression()), !dbg !4060
  call void @llvm.dbg.value(metadata i32 poison, metadata !4038, metadata !DIExpression()), !dbg !4060
  %225 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %223), !dbg !4062
  %226 = extractvalue { i64, i1 } %225, 1, !dbg !4062
  %227 = mul i64 %223, %70, !dbg !4062
  call void @llvm.dbg.value(metadata i64 %227, metadata !4039, metadata !DIExpression()), !dbg !4060
  %228 = select i1 %226, i64 -1, i64 %227, !dbg !4060
  %229 = or i1 %224, %226, !dbg !4063
  call void @llvm.dbg.value(metadata i1 %229, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4058
  call void @llvm.dbg.value(metadata i32 3, metadata !4029, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4058
  call void @llvm.dbg.value(metadata i1 %229, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4058
  call void @llvm.dbg.value(metadata i32 3, metadata !4029, metadata !DIExpression()), !dbg !4058
  call void @llvm.dbg.value(metadata i32 2, metadata !4029, metadata !DIExpression()), !dbg !4058
  call void @llvm.dbg.value(metadata ptr undef, metadata !4033, metadata !DIExpression()), !dbg !4060
  call void @llvm.dbg.value(metadata i32 poison, metadata !4038, metadata !DIExpression()), !dbg !4060
  %230 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %228), !dbg !4062
  %231 = extractvalue { i64, i1 } %230, 1, !dbg !4062
  %232 = mul i64 %228, %70, !dbg !4062
  call void @llvm.dbg.value(metadata i64 %232, metadata !4039, metadata !DIExpression()), !dbg !4060
  %233 = select i1 %231, i64 -1, i64 %232, !dbg !4060
  %234 = or i1 %229, %231, !dbg !4063
  call void @llvm.dbg.value(metadata i1 %234, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4058
  call void @llvm.dbg.value(metadata i32 2, metadata !4029, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4058
  call void @llvm.dbg.value(metadata i1 %234, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4058
  call void @llvm.dbg.value(metadata i32 2, metadata !4029, metadata !DIExpression()), !dbg !4058
  call void @llvm.dbg.value(metadata i32 1, metadata !4029, metadata !DIExpression()), !dbg !4058
  call void @llvm.dbg.value(metadata ptr undef, metadata !4033, metadata !DIExpression()), !dbg !4060
  call void @llvm.dbg.value(metadata i32 poison, metadata !4038, metadata !DIExpression()), !dbg !4060
  %235 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %233), !dbg !4062
  %236 = extractvalue { i64, i1 } %235, 1, !dbg !4062
  %237 = mul i64 %233, %70, !dbg !4062
  call void @llvm.dbg.value(metadata i64 %237, metadata !4039, metadata !DIExpression()), !dbg !4060
  %238 = select i1 %236, i64 -1, i64 %237, !dbg !4060
  %239 = or i1 %234, %236, !dbg !4063
  call void @llvm.dbg.value(metadata i1 %239, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4058
  call void @llvm.dbg.value(metadata i32 1, metadata !4029, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4058
  call void @llvm.dbg.value(metadata i1 %239, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4058
  call void @llvm.dbg.value(metadata i32 1, metadata !4029, metadata !DIExpression()), !dbg !4058
  call void @llvm.dbg.value(metadata i32 0, metadata !4029, metadata !DIExpression()), !dbg !4058
  call void @llvm.dbg.value(metadata ptr undef, metadata !4033, metadata !DIExpression()), !dbg !4060
  call void @llvm.dbg.value(metadata i32 poison, metadata !4038, metadata !DIExpression()), !dbg !4060
  %240 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %238), !dbg !4062
  %241 = extractvalue { i64, i1 } %240, 1, !dbg !4062
  %242 = mul i64 %238, %70, !dbg !4062
  call void @llvm.dbg.value(metadata i64 %242, metadata !4039, metadata !DIExpression()), !dbg !4060
  %243 = select i1 %241, i64 -1, i64 %242, !dbg !4060
  %244 = or i1 %239, %241, !dbg !4063
  %245 = zext i1 %244 to i32, !dbg !4063
  call void @llvm.dbg.value(metadata i32 %245, metadata !4022, metadata !DIExpression()), !dbg !4058
  call void @llvm.dbg.value(metadata i32 0, metadata !4029, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4058
  br label %373, !dbg !4045

246:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i32 0, metadata !4022, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i32 5, metadata !4029, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i32 4, metadata !4029, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata ptr undef, metadata !4033, metadata !DIExpression()), !dbg !4066
  call void @llvm.dbg.value(metadata i32 poison, metadata !4038, metadata !DIExpression()), !dbg !4066
  %247 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %46), !dbg !4068
  %248 = extractvalue { i64, i1 } %247, 1, !dbg !4068
  %249 = mul i64 %46, %70, !dbg !4068
  call void @llvm.dbg.value(metadata i64 %249, metadata !4039, metadata !DIExpression()), !dbg !4066
  %250 = select i1 %248, i64 -1, i64 %249, !dbg !4066
  call void @llvm.dbg.value(metadata i1 %248, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4064
  call void @llvm.dbg.value(metadata i32 4, metadata !4029, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4064
  call void @llvm.dbg.value(metadata i1 %248, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4064
  call void @llvm.dbg.value(metadata i32 4, metadata !4029, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i32 3, metadata !4029, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata ptr undef, metadata !4033, metadata !DIExpression()), !dbg !4066
  call void @llvm.dbg.value(metadata i32 poison, metadata !4038, metadata !DIExpression()), !dbg !4066
  %251 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %250), !dbg !4068
  %252 = extractvalue { i64, i1 } %251, 1, !dbg !4068
  %253 = mul i64 %250, %70, !dbg !4068
  call void @llvm.dbg.value(metadata i64 %253, metadata !4039, metadata !DIExpression()), !dbg !4066
  %254 = select i1 %252, i64 -1, i64 %253, !dbg !4066
  %255 = or i1 %248, %252, !dbg !4069
  call void @llvm.dbg.value(metadata i1 %255, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4064
  call void @llvm.dbg.value(metadata i32 3, metadata !4029, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4064
  call void @llvm.dbg.value(metadata i1 %255, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4064
  call void @llvm.dbg.value(metadata i32 3, metadata !4029, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i32 2, metadata !4029, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata ptr undef, metadata !4033, metadata !DIExpression()), !dbg !4066
  call void @llvm.dbg.value(metadata i32 poison, metadata !4038, metadata !DIExpression()), !dbg !4066
  %256 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %254), !dbg !4068
  %257 = extractvalue { i64, i1 } %256, 1, !dbg !4068
  %258 = mul i64 %254, %70, !dbg !4068
  call void @llvm.dbg.value(metadata i64 %258, metadata !4039, metadata !DIExpression()), !dbg !4066
  %259 = select i1 %257, i64 -1, i64 %258, !dbg !4066
  %260 = or i1 %255, %257, !dbg !4069
  call void @llvm.dbg.value(metadata i1 %260, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4064
  call void @llvm.dbg.value(metadata i32 2, metadata !4029, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4064
  call void @llvm.dbg.value(metadata i1 %260, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4064
  call void @llvm.dbg.value(metadata i32 2, metadata !4029, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i32 1, metadata !4029, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata ptr undef, metadata !4033, metadata !DIExpression()), !dbg !4066
  call void @llvm.dbg.value(metadata i32 poison, metadata !4038, metadata !DIExpression()), !dbg !4066
  %261 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %259), !dbg !4068
  %262 = extractvalue { i64, i1 } %261, 1, !dbg !4068
  %263 = mul i64 %259, %70, !dbg !4068
  call void @llvm.dbg.value(metadata i64 %263, metadata !4039, metadata !DIExpression()), !dbg !4066
  %264 = select i1 %262, i64 -1, i64 %263, !dbg !4066
  %265 = or i1 %260, %262, !dbg !4069
  call void @llvm.dbg.value(metadata i1 %265, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4064
  call void @llvm.dbg.value(metadata i32 1, metadata !4029, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4064
  call void @llvm.dbg.value(metadata i1 %265, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4064
  call void @llvm.dbg.value(metadata i32 1, metadata !4029, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i32 0, metadata !4029, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata ptr undef, metadata !4033, metadata !DIExpression()), !dbg !4066
  call void @llvm.dbg.value(metadata i32 poison, metadata !4038, metadata !DIExpression()), !dbg !4066
  %266 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %264), !dbg !4068
  %267 = extractvalue { i64, i1 } %266, 1, !dbg !4068
  %268 = mul i64 %264, %70, !dbg !4068
  call void @llvm.dbg.value(metadata i64 %268, metadata !4039, metadata !DIExpression()), !dbg !4066
  %269 = select i1 %267, i64 -1, i64 %268, !dbg !4066
  %270 = or i1 %265, %267, !dbg !4069
  %271 = zext i1 %270 to i32, !dbg !4069
  call void @llvm.dbg.value(metadata i32 %271, metadata !4022, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i32 0, metadata !4029, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4064
  br label %373, !dbg !4045

272:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i32 0, metadata !4022, metadata !DIExpression()), !dbg !4070
  call void @llvm.dbg.value(metadata i32 6, metadata !4029, metadata !DIExpression()), !dbg !4070
  call void @llvm.dbg.value(metadata i32 5, metadata !4029, metadata !DIExpression()), !dbg !4070
  call void @llvm.dbg.value(metadata ptr undef, metadata !4033, metadata !DIExpression()), !dbg !4072
  call void @llvm.dbg.value(metadata i32 poison, metadata !4038, metadata !DIExpression()), !dbg !4072
  %273 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %46), !dbg !4074
  %274 = extractvalue { i64, i1 } %273, 1, !dbg !4074
  %275 = mul i64 %46, %70, !dbg !4074
  call void @llvm.dbg.value(metadata i64 %275, metadata !4039, metadata !DIExpression()), !dbg !4072
  %276 = select i1 %274, i64 -1, i64 %275, !dbg !4072
  call void @llvm.dbg.value(metadata i1 %274, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4070
  call void @llvm.dbg.value(metadata i32 5, metadata !4029, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4070
  call void @llvm.dbg.value(metadata i1 %274, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4070
  call void @llvm.dbg.value(metadata i32 5, metadata !4029, metadata !DIExpression()), !dbg !4070
  call void @llvm.dbg.value(metadata i32 4, metadata !4029, metadata !DIExpression()), !dbg !4070
  call void @llvm.dbg.value(metadata ptr undef, metadata !4033, metadata !DIExpression()), !dbg !4072
  call void @llvm.dbg.value(metadata i32 poison, metadata !4038, metadata !DIExpression()), !dbg !4072
  %277 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %276), !dbg !4074
  %278 = extractvalue { i64, i1 } %277, 1, !dbg !4074
  %279 = mul i64 %276, %70, !dbg !4074
  call void @llvm.dbg.value(metadata i64 %279, metadata !4039, metadata !DIExpression()), !dbg !4072
  %280 = select i1 %278, i64 -1, i64 %279, !dbg !4072
  %281 = or i1 %274, %278, !dbg !4075
  call void @llvm.dbg.value(metadata i1 %281, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4070
  call void @llvm.dbg.value(metadata i32 4, metadata !4029, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4070
  call void @llvm.dbg.value(metadata i1 %281, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4070
  call void @llvm.dbg.value(metadata i32 4, metadata !4029, metadata !DIExpression()), !dbg !4070
  call void @llvm.dbg.value(metadata i32 3, metadata !4029, metadata !DIExpression()), !dbg !4070
  call void @llvm.dbg.value(metadata ptr undef, metadata !4033, metadata !DIExpression()), !dbg !4072
  call void @llvm.dbg.value(metadata i32 poison, metadata !4038, metadata !DIExpression()), !dbg !4072
  %282 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %280), !dbg !4074
  %283 = extractvalue { i64, i1 } %282, 1, !dbg !4074
  %284 = mul i64 %280, %70, !dbg !4074
  call void @llvm.dbg.value(metadata i64 %284, metadata !4039, metadata !DIExpression()), !dbg !4072
  %285 = select i1 %283, i64 -1, i64 %284, !dbg !4072
  %286 = or i1 %281, %283, !dbg !4075
  call void @llvm.dbg.value(metadata i1 %286, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4070
  call void @llvm.dbg.value(metadata i32 3, metadata !4029, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4070
  call void @llvm.dbg.value(metadata i1 %286, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4070
  call void @llvm.dbg.value(metadata i32 3, metadata !4029, metadata !DIExpression()), !dbg !4070
  call void @llvm.dbg.value(metadata i32 2, metadata !4029, metadata !DIExpression()), !dbg !4070
  call void @llvm.dbg.value(metadata ptr undef, metadata !4033, metadata !DIExpression()), !dbg !4072
  call void @llvm.dbg.value(metadata i32 poison, metadata !4038, metadata !DIExpression()), !dbg !4072
  %287 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %285), !dbg !4074
  %288 = extractvalue { i64, i1 } %287, 1, !dbg !4074
  %289 = mul i64 %285, %70, !dbg !4074
  call void @llvm.dbg.value(metadata i64 %289, metadata !4039, metadata !DIExpression()), !dbg !4072
  %290 = select i1 %288, i64 -1, i64 %289, !dbg !4072
  %291 = or i1 %286, %288, !dbg !4075
  call void @llvm.dbg.value(metadata i1 %291, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4070
  call void @llvm.dbg.value(metadata i32 2, metadata !4029, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4070
  call void @llvm.dbg.value(metadata i1 %291, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4070
  call void @llvm.dbg.value(metadata i32 2, metadata !4029, metadata !DIExpression()), !dbg !4070
  call void @llvm.dbg.value(metadata i32 1, metadata !4029, metadata !DIExpression()), !dbg !4070
  call void @llvm.dbg.value(metadata ptr undef, metadata !4033, metadata !DIExpression()), !dbg !4072
  call void @llvm.dbg.value(metadata i32 poison, metadata !4038, metadata !DIExpression()), !dbg !4072
  %292 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %290), !dbg !4074
  %293 = extractvalue { i64, i1 } %292, 1, !dbg !4074
  %294 = mul i64 %290, %70, !dbg !4074
  call void @llvm.dbg.value(metadata i64 %294, metadata !4039, metadata !DIExpression()), !dbg !4072
  %295 = select i1 %293, i64 -1, i64 %294, !dbg !4072
  %296 = or i1 %291, %293, !dbg !4075
  call void @llvm.dbg.value(metadata i1 %296, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4070
  call void @llvm.dbg.value(metadata i32 1, metadata !4029, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4070
  call void @llvm.dbg.value(metadata i1 %296, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4070
  call void @llvm.dbg.value(metadata i32 1, metadata !4029, metadata !DIExpression()), !dbg !4070
  call void @llvm.dbg.value(metadata i32 0, metadata !4029, metadata !DIExpression()), !dbg !4070
  call void @llvm.dbg.value(metadata ptr undef, metadata !4033, metadata !DIExpression()), !dbg !4072
  call void @llvm.dbg.value(metadata i32 poison, metadata !4038, metadata !DIExpression()), !dbg !4072
  %297 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %295), !dbg !4074
  %298 = extractvalue { i64, i1 } %297, 1, !dbg !4074
  %299 = mul i64 %295, %70, !dbg !4074
  call void @llvm.dbg.value(metadata i64 %299, metadata !4039, metadata !DIExpression()), !dbg !4072
  %300 = select i1 %298, i64 -1, i64 %299, !dbg !4072
  %301 = or i1 %296, %298, !dbg !4075
  %302 = zext i1 %301 to i32, !dbg !4075
  call void @llvm.dbg.value(metadata i32 %302, metadata !4022, metadata !DIExpression()), !dbg !4070
  call void @llvm.dbg.value(metadata i32 0, metadata !4029, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4070
  br label %373, !dbg !4045

303:                                              ; preds = %69
  call void @llvm.dbg.value(metadata ptr undef, metadata !4033, metadata !DIExpression()), !dbg !4076
  call void @llvm.dbg.value(metadata i32 512, metadata !4038, metadata !DIExpression()), !dbg !4076
  %304 = icmp ugt i64 %46, 36028797018963967, !dbg !4078
  %305 = shl i64 %46, 9, !dbg !4078
  call void @llvm.dbg.value(metadata i64 %305, metadata !4039, metadata !DIExpression()), !dbg !4076
  %306 = select i1 %304, i64 -1, i64 %305, !dbg !4076
  %307 = zext i1 %304 to i32, !dbg !4076
  call void @llvm.dbg.value(metadata i32 %307, metadata !3956, metadata !DIExpression()), !dbg !4007
  br label %373, !dbg !4079

308:                                              ; preds = %69
  call void @llvm.dbg.value(metadata ptr undef, metadata !4033, metadata !DIExpression()), !dbg !4080
  call void @llvm.dbg.value(metadata i32 1024, metadata !4038, metadata !DIExpression()), !dbg !4080
  %309 = icmp ugt i64 %46, 18014398509481983, !dbg !4082
  %310 = shl i64 %46, 10, !dbg !4082
  call void @llvm.dbg.value(metadata i64 %310, metadata !4039, metadata !DIExpression()), !dbg !4080
  %311 = select i1 %309, i64 -1, i64 %310, !dbg !4080
  %312 = zext i1 %309 to i32, !dbg !4080
  call void @llvm.dbg.value(metadata i32 %312, metadata !3956, metadata !DIExpression()), !dbg !4007
  br label %373, !dbg !4083

313:                                              ; preds = %69, %69
  call void @llvm.dbg.value(metadata ptr undef, metadata !4027, metadata !DIExpression()), !dbg !4084
  call void @llvm.dbg.value(metadata i32 poison, metadata !4028, metadata !DIExpression()), !dbg !4084
  call void @llvm.dbg.value(metadata i32 0, metadata !4022, metadata !DIExpression()), !dbg !4084
  call void @llvm.dbg.value(metadata i32 3, metadata !4029, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4084
  call void @llvm.dbg.value(metadata i32 0, metadata !4022, metadata !DIExpression()), !dbg !4084
  call void @llvm.dbg.value(metadata i32 3, metadata !4029, metadata !DIExpression()), !dbg !4084
  call void @llvm.dbg.value(metadata i32 2, metadata !4029, metadata !DIExpression()), !dbg !4084
  call void @llvm.dbg.value(metadata ptr undef, metadata !4033, metadata !DIExpression()), !dbg !4086
  call void @llvm.dbg.value(metadata i32 poison, metadata !4038, metadata !DIExpression()), !dbg !4086
  %314 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %46), !dbg !4088
  %315 = extractvalue { i64, i1 } %314, 1, !dbg !4088
  %316 = mul i64 %46, %70, !dbg !4088
  call void @llvm.dbg.value(metadata i64 %316, metadata !4039, metadata !DIExpression()), !dbg !4086
  %317 = select i1 %315, i64 -1, i64 %316, !dbg !4086
  call void @llvm.dbg.value(metadata i1 %315, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4084
  call void @llvm.dbg.value(metadata i32 2, metadata !4029, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4084
  call void @llvm.dbg.value(metadata i1 %315, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4084
  call void @llvm.dbg.value(metadata i32 2, metadata !4029, metadata !DIExpression()), !dbg !4084
  call void @llvm.dbg.value(metadata i32 1, metadata !4029, metadata !DIExpression()), !dbg !4084
  call void @llvm.dbg.value(metadata ptr undef, metadata !4033, metadata !DIExpression()), !dbg !4086
  call void @llvm.dbg.value(metadata i32 poison, metadata !4038, metadata !DIExpression()), !dbg !4086
  %318 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %317), !dbg !4088
  %319 = extractvalue { i64, i1 } %318, 1, !dbg !4088
  %320 = mul i64 %317, %70, !dbg !4088
  call void @llvm.dbg.value(metadata i64 %320, metadata !4039, metadata !DIExpression()), !dbg !4086
  %321 = select i1 %319, i64 -1, i64 %320, !dbg !4086
  %322 = or i1 %315, %319, !dbg !4089
  call void @llvm.dbg.value(metadata i1 %322, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4084
  call void @llvm.dbg.value(metadata i32 1, metadata !4029, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4084
  call void @llvm.dbg.value(metadata i1 %322, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4084
  call void @llvm.dbg.value(metadata i32 1, metadata !4029, metadata !DIExpression()), !dbg !4084
  call void @llvm.dbg.value(metadata i32 0, metadata !4029, metadata !DIExpression()), !dbg !4084
  call void @llvm.dbg.value(metadata ptr undef, metadata !4033, metadata !DIExpression()), !dbg !4086
  call void @llvm.dbg.value(metadata i32 poison, metadata !4038, metadata !DIExpression()), !dbg !4086
  %323 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %321), !dbg !4088
  %324 = extractvalue { i64, i1 } %323, 1, !dbg !4088
  %325 = mul i64 %321, %70, !dbg !4088
  call void @llvm.dbg.value(metadata i64 %325, metadata !4039, metadata !DIExpression()), !dbg !4086
  %326 = select i1 %324, i64 -1, i64 %325, !dbg !4086
  %327 = or i1 %322, %324, !dbg !4089
  %328 = zext i1 %327 to i32, !dbg !4089
  call void @llvm.dbg.value(metadata i32 %328, metadata !4022, metadata !DIExpression()), !dbg !4084
  call void @llvm.dbg.value(metadata i32 0, metadata !4029, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4084
  br label %373, !dbg !4045

329:                                              ; preds = %69, %69
  call void @llvm.dbg.value(metadata ptr undef, metadata !4027, metadata !DIExpression()), !dbg !4090
  call void @llvm.dbg.value(metadata i32 poison, metadata !4028, metadata !DIExpression()), !dbg !4090
  call void @llvm.dbg.value(metadata i32 0, metadata !4022, metadata !DIExpression()), !dbg !4090
  call void @llvm.dbg.value(metadata i32 1, metadata !4029, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4090
  %330 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %46), !dbg !4092
  %331 = extractvalue { i64, i1 } %330, 1, !dbg !4092
  %332 = mul i64 %46, %70, !dbg !4092
  %333 = select i1 %331, i64 -1, i64 %332, !dbg !4094
  %334 = zext i1 %331 to i32, !dbg !4094
  call void @llvm.dbg.value(metadata i32 poison, metadata !4022, metadata !DIExpression()), !dbg !4090
  call void @llvm.dbg.value(metadata i32 poison, metadata !4029, metadata !DIExpression()), !dbg !4090
  call void @llvm.dbg.value(metadata ptr poison, metadata !4033, metadata !DIExpression()), !dbg !4094
  call void @llvm.dbg.value(metadata i32 poison, metadata !4038, metadata !DIExpression()), !dbg !4094
  call void @llvm.dbg.value(metadata i64 poison, metadata !4039, metadata !DIExpression()), !dbg !4094
  br label %373, !dbg !4045

335:                                              ; preds = %69, %69
  call void @llvm.dbg.value(metadata ptr undef, metadata !4027, metadata !DIExpression()), !dbg !4095
  call void @llvm.dbg.value(metadata i32 poison, metadata !4028, metadata !DIExpression()), !dbg !4095
  call void @llvm.dbg.value(metadata i32 0, metadata !4022, metadata !DIExpression()), !dbg !4095
  call void @llvm.dbg.value(metadata i32 2, metadata !4029, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4095
  call void @llvm.dbg.value(metadata i32 0, metadata !4022, metadata !DIExpression()), !dbg !4095
  call void @llvm.dbg.value(metadata i32 2, metadata !4029, metadata !DIExpression()), !dbg !4095
  call void @llvm.dbg.value(metadata i32 1, metadata !4029, metadata !DIExpression()), !dbg !4095
  call void @llvm.dbg.value(metadata ptr undef, metadata !4033, metadata !DIExpression()), !dbg !4097
  call void @llvm.dbg.value(metadata i32 poison, metadata !4038, metadata !DIExpression()), !dbg !4097
  %336 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %46), !dbg !4099
  %337 = extractvalue { i64, i1 } %336, 1, !dbg !4099
  %338 = mul i64 %46, %70, !dbg !4099
  call void @llvm.dbg.value(metadata i64 %338, metadata !4039, metadata !DIExpression()), !dbg !4097
  %339 = select i1 %337, i64 -1, i64 %338, !dbg !4097
  call void @llvm.dbg.value(metadata i1 %337, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4095
  call void @llvm.dbg.value(metadata i32 1, metadata !4029, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4095
  call void @llvm.dbg.value(metadata i1 %337, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4095
  call void @llvm.dbg.value(metadata i32 1, metadata !4029, metadata !DIExpression()), !dbg !4095
  call void @llvm.dbg.value(metadata i32 0, metadata !4029, metadata !DIExpression()), !dbg !4095
  call void @llvm.dbg.value(metadata ptr undef, metadata !4033, metadata !DIExpression()), !dbg !4097
  call void @llvm.dbg.value(metadata i32 poison, metadata !4038, metadata !DIExpression()), !dbg !4097
  %340 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %339), !dbg !4099
  %341 = extractvalue { i64, i1 } %340, 1, !dbg !4099
  %342 = mul i64 %339, %70, !dbg !4099
  call void @llvm.dbg.value(metadata i64 %342, metadata !4039, metadata !DIExpression()), !dbg !4097
  %343 = select i1 %341, i64 -1, i64 %342, !dbg !4097
  %344 = or i1 %337, %341, !dbg !4100
  %345 = zext i1 %344 to i32, !dbg !4100
  call void @llvm.dbg.value(metadata i32 %345, metadata !4022, metadata !DIExpression()), !dbg !4095
  call void @llvm.dbg.value(metadata i32 0, metadata !4029, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4095
  br label %373, !dbg !4045

346:                                              ; preds = %69, %69
  call void @llvm.dbg.value(metadata ptr undef, metadata !4027, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata i32 poison, metadata !4028, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata i32 0, metadata !4022, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata i32 4, metadata !4029, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4101
  call void @llvm.dbg.value(metadata i32 0, metadata !4022, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata i32 4, metadata !4029, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata i32 3, metadata !4029, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata ptr undef, metadata !4033, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata i32 poison, metadata !4038, metadata !DIExpression()), !dbg !4103
  %347 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %46), !dbg !4105
  %348 = extractvalue { i64, i1 } %347, 1, !dbg !4105
  %349 = mul i64 %46, %70, !dbg !4105
  call void @llvm.dbg.value(metadata i64 %349, metadata !4039, metadata !DIExpression()), !dbg !4103
  %350 = select i1 %348, i64 -1, i64 %349, !dbg !4103
  call void @llvm.dbg.value(metadata i1 %348, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4101
  call void @llvm.dbg.value(metadata i32 3, metadata !4029, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4101
  call void @llvm.dbg.value(metadata i1 %348, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4101
  call void @llvm.dbg.value(metadata i32 3, metadata !4029, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata i32 2, metadata !4029, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata ptr undef, metadata !4033, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata i32 poison, metadata !4038, metadata !DIExpression()), !dbg !4103
  %351 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %350), !dbg !4105
  %352 = extractvalue { i64, i1 } %351, 1, !dbg !4105
  %353 = mul i64 %350, %70, !dbg !4105
  call void @llvm.dbg.value(metadata i64 %353, metadata !4039, metadata !DIExpression()), !dbg !4103
  %354 = select i1 %352, i64 -1, i64 %353, !dbg !4103
  %355 = or i1 %348, %352, !dbg !4106
  call void @llvm.dbg.value(metadata i1 %355, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4101
  call void @llvm.dbg.value(metadata i32 2, metadata !4029, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4101
  call void @llvm.dbg.value(metadata i1 %355, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4101
  call void @llvm.dbg.value(metadata i32 2, metadata !4029, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata i32 1, metadata !4029, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata ptr undef, metadata !4033, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata i32 poison, metadata !4038, metadata !DIExpression()), !dbg !4103
  %356 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %354), !dbg !4105
  %357 = extractvalue { i64, i1 } %356, 1, !dbg !4105
  %358 = mul i64 %354, %70, !dbg !4105
  call void @llvm.dbg.value(metadata i64 %358, metadata !4039, metadata !DIExpression()), !dbg !4103
  %359 = select i1 %357, i64 -1, i64 %358, !dbg !4103
  %360 = or i1 %355, %357, !dbg !4106
  call void @llvm.dbg.value(metadata i1 %360, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4101
  call void @llvm.dbg.value(metadata i32 1, metadata !4029, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4101
  call void @llvm.dbg.value(metadata i1 %360, metadata !4022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4101
  call void @llvm.dbg.value(metadata i32 1, metadata !4029, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata i32 0, metadata !4029, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata ptr undef, metadata !4033, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata i32 poison, metadata !4038, metadata !DIExpression()), !dbg !4103
  %361 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %359), !dbg !4105
  %362 = extractvalue { i64, i1 } %361, 1, !dbg !4105
  %363 = mul i64 %359, %70, !dbg !4105
  call void @llvm.dbg.value(metadata i64 %363, metadata !4039, metadata !DIExpression()), !dbg !4103
  %364 = select i1 %362, i64 -1, i64 %363, !dbg !4103
  %365 = or i1 %360, %362, !dbg !4106
  %366 = zext i1 %365 to i32, !dbg !4106
  call void @llvm.dbg.value(metadata i32 %366, metadata !4022, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata i32 0, metadata !4029, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4101
  br label %373, !dbg !4045

367:                                              ; preds = %69
  call void @llvm.dbg.value(metadata ptr undef, metadata !4033, metadata !DIExpression()), !dbg !4107
  call void @llvm.dbg.value(metadata i32 2, metadata !4038, metadata !DIExpression()), !dbg !4107
  %368 = shl i64 %46, 1, !dbg !4109
  call void @llvm.dbg.value(metadata i64 %368, metadata !4039, metadata !DIExpression()), !dbg !4107
  %369 = icmp sgt i64 %46, -1, !dbg !4107
  %370 = select i1 %369, i64 %368, i64 -1, !dbg !4107
  %371 = lshr i64 %46, 63, !dbg !4107
  %372 = trunc i64 %371 to i32, !dbg !4107
  call void @llvm.dbg.value(metadata i32 %372, metadata !3956, metadata !DIExpression()), !dbg !4007
  br label %373, !dbg !4110

373:                                              ; preds = %72, %108, %346, %149, %195, %246, %335, %329, %313, %272, %303, %308, %367, %69
  %374 = phi i64 [ %370, %367 ], [ %46, %69 ], [ %311, %308 ], [ %306, %303 ], [ %300, %272 ], [ %326, %313 ], [ %333, %329 ], [ %343, %335 ], [ %269, %246 ], [ %243, %195 ], [ %192, %149 ], [ %364, %346 ], [ %146, %108 ], [ %105, %72 ], !dbg !3957
  %375 = phi i32 [ %372, %367 ], [ 0, %69 ], [ %312, %308 ], [ %307, %303 ], [ %302, %272 ], [ %328, %313 ], [ %334, %329 ], [ %345, %335 ], [ %271, %246 ], [ %245, %195 ], [ %194, %149 ], [ %366, %346 ], [ %148, %108 ], [ %107, %72 ], !dbg !4111
  call void @llvm.dbg.value(metadata i32 %375, metadata !3956, metadata !DIExpression()), !dbg !4007
  %376 = or i32 %375, %45, !dbg !4045
  call void @llvm.dbg.value(metadata i32 %376, metadata !3951, metadata !DIExpression()), !dbg !3957
  %377 = getelementptr inbounds i8, ptr %26, i64 %71, !dbg !4112
  store ptr %377, ptr %20, align 8, !dbg !4112, !tbaa !854
  %378 = load i8, ptr %377, align 1, !dbg !4113, !tbaa !933
  %379 = icmp eq i8 %378, 0, !dbg !4113
  %380 = or i32 %376, 2
  %381 = select i1 %379, i32 %376, i32 %380, !dbg !4115
  call void @llvm.dbg.value(metadata i32 %381, metadata !3951, metadata !DIExpression()), !dbg !3957
  br label %384

382:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i64 %25, metadata !3950, metadata !DIExpression()), !dbg !3957
  store i64 %46, ptr %3, align 8, !dbg !4116, !tbaa !1217
  %383 = or i32 %45, 2, !dbg !4117
  call void @llvm.dbg.value(metadata i32 %45, metadata !3951, metadata !DIExpression()), !dbg !3957
  br label %387

384:                                              ; preds = %373, %44
  %385 = phi i64 [ %46, %44 ], [ %374, %373 ], !dbg !4118
  %386 = phi i32 [ %45, %44 ], [ %381, %373 ], !dbg !4119
  call void @llvm.dbg.value(metadata i32 %386, metadata !3951, metadata !DIExpression()), !dbg !3957
  call void @llvm.dbg.value(metadata i64 %385, metadata !3950, metadata !DIExpression()), !dbg !3957
  store i64 %385, ptr %3, align 8, !dbg !4120, !tbaa !1217
  br label %387, !dbg !4121

387:                                              ; preds = %43, %53, %384, %33, %30, %28, %37, %382, %22
  %388 = phi i32 [ 4, %22 ], [ %386, %384 ], [ %383, %382 ], [ %54, %53 ], [ %41, %43 ], [ 4, %33 ], [ 4, %30 ], [ 4, %28 ], [ 4, %37 ], !dbg !3957
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #36, !dbg !4122
  ret i32 %388, !dbg !4122
}

; Function Attrs: nounwind
declare !dbg !4123 i64 @strtoumax(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !4128 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4166, metadata !DIExpression()), !dbg !4171
  %2 = tail call i64 @__fpending(ptr noundef %0) #36, !dbg !4172
  call void @llvm.dbg.value(metadata i1 poison, metadata !4167, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4171
  call void @llvm.dbg.value(metadata ptr %0, metadata !4173, metadata !DIExpression()), !dbg !4176
  %3 = load i32, ptr %0, align 8, !dbg !4178, !tbaa !4179
  %4 = and i32 %3, 32, !dbg !4180
  %5 = icmp eq i32 %4, 0, !dbg !4180
  call void @llvm.dbg.value(metadata i1 %5, metadata !4169, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4171
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #36, !dbg !4181
  %7 = icmp eq i32 %6, 0, !dbg !4182
  call void @llvm.dbg.value(metadata i1 %7, metadata !4170, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4171
  br i1 %5, label %8, label %18, !dbg !4183

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !4185
  call void @llvm.dbg.value(metadata i1 %9, metadata !4167, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4171
  %10 = select i1 %7, i1 true, i1 %9, !dbg !4186
  %11 = xor i1 %7, true, !dbg !4186
  %12 = sext i1 %11 to i32, !dbg !4186
  br i1 %10, label %21, label %13, !dbg !4186

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #39, !dbg !4187
  %15 = load i32, ptr %14, align 4, !dbg !4187, !tbaa !924
  %16 = icmp ne i32 %15, 9, !dbg !4188
  %17 = sext i1 %16 to i32, !dbg !4189
  br label %21, !dbg !4189

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !4190

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #39, !dbg !4192
  store i32 0, ptr %20, align 4, !dbg !4194, !tbaa !924
  br label %21, !dbg !4192

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !4171
  ret i32 %22, !dbg !4195
}

; Function Attrs: nounwind
declare !dbg !4196 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !4200 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4238, metadata !DIExpression()), !dbg !4242
  call void @llvm.dbg.value(metadata i32 0, metadata !4239, metadata !DIExpression()), !dbg !4242
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !4243
  call void @llvm.dbg.value(metadata i32 %2, metadata !4240, metadata !DIExpression()), !dbg !4242
  %3 = icmp slt i32 %2, 0, !dbg !4244
  br i1 %3, label %4, label %6, !dbg !4246

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4247
  br label %24, !dbg !4248

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #36, !dbg !4249
  %8 = icmp eq i32 %7, 0, !dbg !4249
  br i1 %8, label %13, label %9, !dbg !4251

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !4252
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #36, !dbg !4253
  %12 = icmp eq i64 %11, -1, !dbg !4254
  br i1 %12, label %16, label %13, !dbg !4255

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #36, !dbg !4256
  %15 = icmp eq i32 %14, 0, !dbg !4256
  br i1 %15, label %16, label %18, !dbg !4257

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !4239, metadata !DIExpression()), !dbg !4242
  call void @llvm.dbg.value(metadata i32 0, metadata !4241, metadata !DIExpression()), !dbg !4242
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4258
  call void @llvm.dbg.value(metadata i32 %17, metadata !4241, metadata !DIExpression()), !dbg !4242
  br label %24, !dbg !4259

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #39, !dbg !4260
  %20 = load i32, ptr %19, align 4, !dbg !4260, !tbaa !924
  call void @llvm.dbg.value(metadata i32 %20, metadata !4239, metadata !DIExpression()), !dbg !4242
  call void @llvm.dbg.value(metadata i32 0, metadata !4241, metadata !DIExpression()), !dbg !4242
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4258
  call void @llvm.dbg.value(metadata i32 %21, metadata !4241, metadata !DIExpression()), !dbg !4242
  %22 = icmp eq i32 %20, 0, !dbg !4261
  br i1 %22, label %24, label %23, !dbg !4259

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !4263, !tbaa !924
  call void @llvm.dbg.value(metadata i32 -1, metadata !4241, metadata !DIExpression()), !dbg !4242
  br label %24, !dbg !4265

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4242
  ret i32 %25, !dbg !4266
}

; Function Attrs: nofree nounwind
declare !dbg !4267 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !4268 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !4269 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4270 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !4273 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4311, metadata !DIExpression()), !dbg !4312
  %2 = icmp eq ptr %0, null, !dbg !4313
  br i1 %2, label %6, label %3, !dbg !4315

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #36, !dbg !4316
  %5 = icmp eq i32 %4, 0, !dbg !4316
  br i1 %5, label %6, label %8, !dbg !4317

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !4318
  br label %16, !dbg !4319

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !4320, metadata !DIExpression()), !dbg !4325
  %9 = load i32, ptr %0, align 8, !dbg !4327, !tbaa !4179
  %10 = and i32 %9, 256, !dbg !4329
  %11 = icmp eq i32 %10, 0, !dbg !4329
  br i1 %11, label %14, label %12, !dbg !4330

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #36, !dbg !4331
  br label %14, !dbg !4331

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !4332
  br label %16, !dbg !4333

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !4312
  ret i32 %17, !dbg !4334
}

; Function Attrs: nofree nounwind
declare !dbg !4335 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !4336 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4375, metadata !DIExpression()), !dbg !4381
  call void @llvm.dbg.value(metadata i64 %1, metadata !4376, metadata !DIExpression()), !dbg !4381
  call void @llvm.dbg.value(metadata i32 %2, metadata !4377, metadata !DIExpression()), !dbg !4381
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !4382
  %5 = load ptr, ptr %4, align 8, !dbg !4382, !tbaa !4383
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !4384
  %7 = load ptr, ptr %6, align 8, !dbg !4384, !tbaa !4385
  %8 = icmp eq ptr %5, %7, !dbg !4386
  br i1 %8, label %9, label %27, !dbg !4387

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !4388
  %11 = load ptr, ptr %10, align 8, !dbg !4388, !tbaa !1468
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !4389
  %13 = load ptr, ptr %12, align 8, !dbg !4389, !tbaa !4390
  %14 = icmp eq ptr %11, %13, !dbg !4391
  br i1 %14, label %15, label %27, !dbg !4392

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !4393
  %17 = load ptr, ptr %16, align 8, !dbg !4393, !tbaa !4394
  %18 = icmp eq ptr %17, null, !dbg !4395
  br i1 %18, label %19, label %27, !dbg !4396

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !4397
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #36, !dbg !4398
  call void @llvm.dbg.value(metadata i64 %21, metadata !4378, metadata !DIExpression()), !dbg !4399
  %22 = icmp eq i64 %21, -1, !dbg !4400
  br i1 %22, label %29, label %23, !dbg !4402

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !4403, !tbaa !4179
  %25 = and i32 %24, -17, !dbg !4403
  store i32 %25, ptr %0, align 8, !dbg !4403, !tbaa !4179
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !4404
  store i64 %21, ptr %26, align 8, !dbg !4405, !tbaa !4406
  br label %29, !dbg !4407

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !4408
  br label %29, !dbg !4409

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !4381
  ret i32 %30, !dbg !4410
}

; Function Attrs: nofree nounwind
declare !dbg !4411 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4414 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4419, metadata !DIExpression()), !dbg !4424
  call void @llvm.dbg.value(metadata ptr %1, metadata !4420, metadata !DIExpression()), !dbg !4424
  call void @llvm.dbg.value(metadata i64 %2, metadata !4421, metadata !DIExpression()), !dbg !4424
  call void @llvm.dbg.value(metadata ptr %3, metadata !4422, metadata !DIExpression()), !dbg !4424
  %5 = icmp eq ptr %1, null, !dbg !4425
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4427
  %7 = select i1 %5, ptr @.str.157, ptr %1, !dbg !4427
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4427
  call void @llvm.dbg.value(metadata i64 %8, metadata !4421, metadata !DIExpression()), !dbg !4424
  call void @llvm.dbg.value(metadata ptr %7, metadata !4420, metadata !DIExpression()), !dbg !4424
  call void @llvm.dbg.value(metadata ptr %6, metadata !4419, metadata !DIExpression()), !dbg !4424
  %9 = icmp eq ptr %3, null, !dbg !4428
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4430
  call void @llvm.dbg.value(metadata ptr %10, metadata !4422, metadata !DIExpression()), !dbg !4424
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #36, !dbg !4431
  call void @llvm.dbg.value(metadata i64 %11, metadata !4423, metadata !DIExpression()), !dbg !4424
  %12 = icmp ult i64 %11, -3, !dbg !4432
  br i1 %12, label %13, label %17, !dbg !4434

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #37, !dbg !4435
  %15 = icmp eq i32 %14, 0, !dbg !4435
  br i1 %15, label %16, label %29, !dbg !4436

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4437, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata ptr %10, metadata !4444, metadata !DIExpression()), !dbg !4449
  call void @llvm.dbg.value(metadata i32 0, metadata !4447, metadata !DIExpression()), !dbg !4449
  call void @llvm.dbg.value(metadata i64 8, metadata !4448, metadata !DIExpression()), !dbg !4449
  store i64 0, ptr %10, align 1, !dbg !4451
  br label %29, !dbg !4452

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4453
  br i1 %18, label %19, label %20, !dbg !4455

19:                                               ; preds = %17
  tail call void @abort() #38, !dbg !4456
  unreachable, !dbg !4456

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4457

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #36, !dbg !4459
  br i1 %23, label %29, label %24, !dbg !4460

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4461
  br i1 %25, label %29, label %26, !dbg !4464

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4465, !tbaa !933
  %28 = zext i8 %27 to i32, !dbg !4466
  store i32 %28, ptr %6, align 4, !dbg !4467, !tbaa !924
  br label %29, !dbg !4468

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4424
  ret i64 %30, !dbg !4469
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4470 i32 @mbsinit(ptr noundef) local_unnamed_addr #34

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #35 !dbg !4476 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4478, metadata !DIExpression()), !dbg !4482
  call void @llvm.dbg.value(metadata i64 %1, metadata !4479, metadata !DIExpression()), !dbg !4482
  call void @llvm.dbg.value(metadata i64 %2, metadata !4480, metadata !DIExpression()), !dbg !4482
  %4 = icmp eq i64 %2, 0, !dbg !4483
  br i1 %4, label %8, label %5, !dbg !4483

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !4483
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4483
  br i1 %7, label %13, label %8, !dbg !4483

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4481, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4482
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4481, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4482
  %9 = mul i64 %2, %1, !dbg !4483
  call void @llvm.dbg.value(metadata i64 %9, metadata !4481, metadata !DIExpression()), !dbg !4482
  call void @llvm.dbg.value(metadata ptr %0, metadata !4485, metadata !DIExpression()), !dbg !4489
  call void @llvm.dbg.value(metadata i64 %9, metadata !4488, metadata !DIExpression()), !dbg !4489
  %10 = icmp eq i64 %9, 0, !dbg !4491
  %11 = select i1 %10, i64 1, i64 %9, !dbg !4491
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #44, !dbg !4492
  br label %15, !dbg !4493

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4481, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4482
  %14 = tail call ptr @__errno_location() #39, !dbg !4494
  store i32 12, ptr %14, align 4, !dbg !4496, !tbaa !924
  br label %15, !dbg !4497

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !4482
  ret ptr %16, !dbg !4498
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !4499 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !4503, metadata !DIExpression()), !dbg !4508
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #36, !dbg !4509
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4504, metadata !DIExpression()), !dbg !4510
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #36, !dbg !4511
  %4 = icmp eq i32 %3, 0, !dbg !4511
  br i1 %4, label %5, label %12, !dbg !4513

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4514, metadata !DIExpression()), !dbg !4518
  %6 = load i16, ptr %2, align 16, !dbg !4521
  %7 = icmp eq i16 %6, 67, !dbg !4521
  br i1 %7, label %11, label %8, !dbg !4522

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4514, metadata !DIExpression()), !dbg !4523
  call void @llvm.dbg.value(metadata ptr @.str.1.162, metadata !4517, metadata !DIExpression()), !dbg !4523
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.162, i64 6), !dbg !4525
  %10 = icmp eq i32 %9, 0, !dbg !4526
  br i1 %10, label %11, label %12, !dbg !4527

11:                                               ; preds = %8, %5
  br label %12, !dbg !4528

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4508
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #36, !dbg !4529
  ret i1 %13, !dbg !4529
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4530 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4534, metadata !DIExpression()), !dbg !4537
  call void @llvm.dbg.value(metadata ptr %1, metadata !4535, metadata !DIExpression()), !dbg !4537
  call void @llvm.dbg.value(metadata i64 %2, metadata !4536, metadata !DIExpression()), !dbg !4537
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #36, !dbg !4538
  ret i32 %4, !dbg !4539
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !4540 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4544, metadata !DIExpression()), !dbg !4545
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #36, !dbg !4546
  ret ptr %2, !dbg !4547
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !4548 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4550, metadata !DIExpression()), !dbg !4552
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #36, !dbg !4553
  call void @llvm.dbg.value(metadata ptr %2, metadata !4551, metadata !DIExpression()), !dbg !4552
  ret ptr %2, !dbg !4554
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4555 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4557, metadata !DIExpression()), !dbg !4564
  call void @llvm.dbg.value(metadata ptr %1, metadata !4558, metadata !DIExpression()), !dbg !4564
  call void @llvm.dbg.value(metadata i64 %2, metadata !4559, metadata !DIExpression()), !dbg !4564
  call void @llvm.dbg.value(metadata i32 %0, metadata !4550, metadata !DIExpression()), !dbg !4565
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #36, !dbg !4567
  call void @llvm.dbg.value(metadata ptr %4, metadata !4551, metadata !DIExpression()), !dbg !4565
  call void @llvm.dbg.value(metadata ptr %4, metadata !4560, metadata !DIExpression()), !dbg !4564
  %5 = icmp eq ptr %4, null, !dbg !4568
  br i1 %5, label %6, label %9, !dbg !4569

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4570
  br i1 %7, label %19, label %8, !dbg !4573

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !4574, !tbaa !933
  br label %19, !dbg !4575

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #37, !dbg !4576
  call void @llvm.dbg.value(metadata i64 %10, metadata !4561, metadata !DIExpression()), !dbg !4577
  %11 = icmp ult i64 %10, %2, !dbg !4578
  br i1 %11, label %12, label %14, !dbg !4580

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4581
  call void @llvm.dbg.value(metadata ptr %1, metadata !4583, metadata !DIExpression()), !dbg !4588
  call void @llvm.dbg.value(metadata ptr %4, metadata !4586, metadata !DIExpression()), !dbg !4588
  call void @llvm.dbg.value(metadata i64 %13, metadata !4587, metadata !DIExpression()), !dbg !4588
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #36, !dbg !4590
  br label %19, !dbg !4591

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4592
  br i1 %15, label %19, label %16, !dbg !4595

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4596
  call void @llvm.dbg.value(metadata ptr %1, metadata !4583, metadata !DIExpression()), !dbg !4598
  call void @llvm.dbg.value(metadata ptr %4, metadata !4586, metadata !DIExpression()), !dbg !4598
  call void @llvm.dbg.value(metadata i64 %17, metadata !4587, metadata !DIExpression()), !dbg !4598
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #36, !dbg !4600
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !4601
  store i8 0, ptr %18, align 1, !dbg !4602, !tbaa !933
  br label %19, !dbg !4603

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4604
  ret i32 %20, !dbg !4605
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
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind willreturn memory(argmem: read) }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
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
attributes #34 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { nounwind }
attributes #37 = { nounwind willreturn memory(read) }
attributes #38 = { noreturn nounwind }
attributes #39 = { nounwind willreturn memory(none) }
attributes #40 = { noreturn }
attributes #41 = { cold }
attributes #42 = { nounwind allocsize(0) }
attributes #43 = { nounwind allocsize(0,1) }
attributes #44 = { nounwind allocsize(1) }

!llvm.dbg.cu = !{!81, !752, !433, !437, !452, !720, !754, !756, !758, !501, !515, !563, !767, !714, !774, !808, !810, !817, !819, !821, !823, !736, !825, !828, !832, !834}
!llvm.ident = !{!836, !836, !836, !836, !836, !836, !836, !836, !836, !836, !836, !836, !836, !836, !836, !836, !836, !836, !836, !836, !836, !836, !836, !836, !836, !836}
!llvm.module.flags = !{!837, !838, !839, !840, !841, !842}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 50, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/mknod.c", directory: "/src", checksumkind: CSK_MD5, checksum: "71829bff1470ae8ec88dbb00f89cc303")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
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
!87 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -130)
!88 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -131)
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
!131 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !133, line: 145, baseType: !134)
!133 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
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
!249 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !251, line: 49, size: 1728, elements: !252)
!251 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
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
!421 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
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
!451 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !452, file: !453, line: 66, type: !496, isLocal: false, isDefinition: true)
!452 = distinct !DICompileUnit(language: DW_LANG_C11, file: !453, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !454, globals: !455, splitDebugInlining: false, nameTableKind: None)
!453 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!454 = !{!129, !140}
!455 = !{!456, !458, !478, !480, !482, !484, !450, !486, !488, !490, !492, !494}
!456 = !DIGlobalVariableExpression(var: !457, expr: !DIExpression())
!457 = distinct !DIGlobalVariable(scope: null, file: !453, line: 272, type: !306, isLocal: true, isDefinition: true)
!458 = !DIGlobalVariableExpression(var: !459, expr: !DIExpression())
!459 = distinct !DIGlobalVariable(name: "old_file_name", scope: !460, file: !453, line: 304, type: !138, isLocal: true, isDefinition: true)
!460 = distinct !DISubprogram(name: "verror_at_line", scope: !453, file: !453, line: 298, type: !461, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !452, retainedNodes: !471)
!461 = !DISubroutineType(types: !462)
!462 = !{null, !85, !85, !138, !91, !138, !463}
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !465)
!465 = !{!466, !468, !469, !470}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !464, file: !467, baseType: !91, size: 32)
!467 = !DIFile(filename: "lib/error.c", directory: "/src")
!468 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !464, file: !467, baseType: !91, size: 32, offset: 32)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !464, file: !467, baseType: !129, size: 64, offset: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !464, file: !467, baseType: !129, size: 64, offset: 128)
!471 = !{!472, !473, !474, !475, !476, !477}
!472 = !DILocalVariable(name: "status", arg: 1, scope: !460, file: !453, line: 298, type: !85)
!473 = !DILocalVariable(name: "errnum", arg: 2, scope: !460, file: !453, line: 298, type: !85)
!474 = !DILocalVariable(name: "file_name", arg: 3, scope: !460, file: !453, line: 298, type: !138)
!475 = !DILocalVariable(name: "line_number", arg: 4, scope: !460, file: !453, line: 298, type: !91)
!476 = !DILocalVariable(name: "message", arg: 5, scope: !460, file: !453, line: 298, type: !138)
!477 = !DILocalVariable(name: "args", arg: 6, scope: !460, file: !453, line: 298, type: !463)
!478 = !DIGlobalVariableExpression(var: !479, expr: !DIExpression())
!479 = distinct !DIGlobalVariable(name: "old_line_number", scope: !460, file: !453, line: 305, type: !91, isLocal: true, isDefinition: true)
!480 = !DIGlobalVariableExpression(var: !481, expr: !DIExpression())
!481 = distinct !DIGlobalVariable(scope: null, file: !453, line: 338, type: !76, isLocal: true, isDefinition: true)
!482 = !DIGlobalVariableExpression(var: !483, expr: !DIExpression())
!483 = distinct !DIGlobalVariable(scope: null, file: !453, line: 346, type: !339, isLocal: true, isDefinition: true)
!484 = !DIGlobalVariableExpression(var: !485, expr: !DIExpression())
!485 = distinct !DIGlobalVariable(scope: null, file: !453, line: 346, type: !317, isLocal: true, isDefinition: true)
!486 = !DIGlobalVariableExpression(var: !487, expr: !DIExpression())
!487 = distinct !DIGlobalVariable(name: "error_message_count", scope: !452, file: !453, line: 69, type: !91, isLocal: false, isDefinition: true)
!488 = !DIGlobalVariableExpression(var: !489, expr: !DIExpression())
!489 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !452, file: !453, line: 295, type: !85, isLocal: false, isDefinition: true)
!490 = !DIGlobalVariableExpression(var: !491, expr: !DIExpression())
!491 = distinct !DIGlobalVariable(scope: null, file: !453, line: 208, type: !334, isLocal: true, isDefinition: true)
!492 = !DIGlobalVariableExpression(var: !493, expr: !DIExpression())
!493 = distinct !DIGlobalVariable(scope: null, file: !453, line: 208, type: !199, isLocal: true, isDefinition: true)
!494 = !DIGlobalVariableExpression(var: !495, expr: !DIExpression())
!495 = distinct !DIGlobalVariable(scope: null, file: !453, line: 214, type: !306, isLocal: true, isDefinition: true)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DISubroutineType(types: !498)
!498 = !{null}
!499 = !DIGlobalVariableExpression(var: !500, expr: !DIExpression())
!500 = distinct !DIGlobalVariable(name: "program_name", scope: !501, file: !502, line: 31, type: !138, isLocal: false, isDefinition: true)
!501 = distinct !DICompileUnit(language: DW_LANG_C11, file: !502, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !503, globals: !504, splitDebugInlining: false, nameTableKind: None)
!502 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!503 = !{!128}
!504 = !{!499, !505, !507}
!505 = !DIGlobalVariableExpression(var: !506, expr: !DIExpression())
!506 = distinct !DIGlobalVariable(scope: null, file: !502, line: 46, type: !339, isLocal: true, isDefinition: true)
!507 = !DIGlobalVariableExpression(var: !508, expr: !DIExpression())
!508 = distinct !DIGlobalVariable(scope: null, file: !502, line: 49, type: !76, isLocal: true, isDefinition: true)
!509 = !DIGlobalVariableExpression(var: !510, expr: !DIExpression())
!510 = distinct !DIGlobalVariable(name: "utf07FF", scope: !511, file: !512, line: 46, type: !539, isLocal: true, isDefinition: true)
!511 = distinct !DISubprogram(name: "proper_name_lite", scope: !512, file: !512, line: 38, type: !513, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !515, retainedNodes: !517)
!512 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!513 = !DISubroutineType(types: !514)
!514 = !{!138, !138, !138}
!515 = distinct !DICompileUnit(language: DW_LANG_C11, file: !512, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !516, splitDebugInlining: false, nameTableKind: None)
!516 = !{!509}
!517 = !{!518, !519, !520, !521, !526}
!518 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !511, file: !512, line: 38, type: !138)
!519 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !511, file: !512, line: 38, type: !138)
!520 = !DILocalVariable(name: "translation", scope: !511, file: !512, line: 40, type: !138)
!521 = !DILocalVariable(name: "w", scope: !511, file: !512, line: 47, type: !522)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !523, line: 37, baseType: !524)
!523 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !133, line: 57, baseType: !525)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !133, line: 42, baseType: !91)
!526 = !DILocalVariable(name: "mbs", scope: !511, file: !512, line: 48, type: !527)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !528, line: 6, baseType: !529)
!528 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !530, line: 21, baseType: !531)
!530 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !530, line: 13, size: 64, elements: !532)
!532 = !{!533, !534}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !531, file: !530, line: 15, baseType: !85, size: 32)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !531, file: !530, line: 20, baseType: !535, size: 32, offset: 32)
!535 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !531, file: !530, line: 16, size: 32, elements: !536)
!536 = !{!537, !538}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !535, file: !530, line: 18, baseType: !91, size: 32)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !535, file: !530, line: 19, baseType: !76, size: 32)
!539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 16, elements: !318)
!540 = !DIGlobalVariableExpression(var: !541, expr: !DIExpression())
!541 = distinct !DIGlobalVariable(scope: null, file: !542, line: 78, type: !339, isLocal: true, isDefinition: true)
!542 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!543 = !DIGlobalVariableExpression(var: !544, expr: !DIExpression())
!544 = distinct !DIGlobalVariable(scope: null, file: !542, line: 79, type: !19, isLocal: true, isDefinition: true)
!545 = !DIGlobalVariableExpression(var: !546, expr: !DIExpression())
!546 = distinct !DIGlobalVariable(scope: null, file: !542, line: 80, type: !159, isLocal: true, isDefinition: true)
!547 = !DIGlobalVariableExpression(var: !548, expr: !DIExpression())
!548 = distinct !DIGlobalVariable(scope: null, file: !542, line: 81, type: !159, isLocal: true, isDefinition: true)
!549 = !DIGlobalVariableExpression(var: !550, expr: !DIExpression())
!550 = distinct !DIGlobalVariable(scope: null, file: !542, line: 82, type: !295, isLocal: true, isDefinition: true)
!551 = !DIGlobalVariableExpression(var: !552, expr: !DIExpression())
!552 = distinct !DIGlobalVariable(scope: null, file: !542, line: 83, type: !317, isLocal: true, isDefinition: true)
!553 = !DIGlobalVariableExpression(var: !554, expr: !DIExpression())
!554 = distinct !DIGlobalVariable(scope: null, file: !542, line: 84, type: !339, isLocal: true, isDefinition: true)
!555 = !DIGlobalVariableExpression(var: !556, expr: !DIExpression())
!556 = distinct !DIGlobalVariable(scope: null, file: !542, line: 85, type: !334, isLocal: true, isDefinition: true)
!557 = !DIGlobalVariableExpression(var: !558, expr: !DIExpression())
!558 = distinct !DIGlobalVariable(scope: null, file: !542, line: 86, type: !334, isLocal: true, isDefinition: true)
!559 = !DIGlobalVariableExpression(var: !560, expr: !DIExpression())
!560 = distinct !DIGlobalVariable(scope: null, file: !542, line: 87, type: !339, isLocal: true, isDefinition: true)
!561 = !DIGlobalVariableExpression(var: !562, expr: !DIExpression())
!562 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !563, file: !542, line: 76, type: !635, isLocal: false, isDefinition: true)
!563 = distinct !DICompileUnit(language: DW_LANG_C11, file: !542, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !564, retainedTypes: !570, globals: !571, splitDebugInlining: false, nameTableKind: None)
!564 = !{!98, !565, !112}
!565 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !99, line: 254, baseType: !91, size: 32, elements: !566)
!566 = !{!567, !568, !569}
!567 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!568 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!569 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!570 = !{!85, !135, !136}
!571 = !{!540, !543, !545, !547, !549, !551, !553, !555, !557, !559, !561, !572, !576, !586, !588, !593, !595, !597, !599, !601, !624, !631, !633}
!572 = !DIGlobalVariableExpression(var: !573, expr: !DIExpression())
!573 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !563, file: !542, line: 92, type: !574, isLocal: false, isDefinition: true)
!574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !575, size: 320, elements: !67)
!575 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!576 = !DIGlobalVariableExpression(var: !577, expr: !DIExpression())
!577 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !563, file: !542, line: 1040, type: !578, isLocal: false, isDefinition: true)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !542, line: 56, size: 448, elements: !579)
!579 = !{!580, !581, !582, !584, !585}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !578, file: !542, line: 59, baseType: !98, size: 32)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !578, file: !542, line: 62, baseType: !85, size: 32, offset: 32)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !578, file: !542, line: 66, baseType: !583, size: 256, offset: 64)
!583 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 256, elements: !340)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !578, file: !542, line: 69, baseType: !138, size: 64, offset: 320)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !578, file: !542, line: 72, baseType: !138, size: 64, offset: 384)
!586 = !DIGlobalVariableExpression(var: !587, expr: !DIExpression())
!587 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !563, file: !542, line: 107, type: !578, isLocal: true, isDefinition: true)
!588 = !DIGlobalVariableExpression(var: !589, expr: !DIExpression())
!589 = distinct !DIGlobalVariable(name: "slot0", scope: !563, file: !542, line: 831, type: !590, isLocal: true, isDefinition: true)
!590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !591)
!591 = !{!592}
!592 = !DISubrange(count: 256)
!593 = !DIGlobalVariableExpression(var: !594, expr: !DIExpression())
!594 = distinct !DIGlobalVariable(scope: null, file: !542, line: 321, type: !317, isLocal: true, isDefinition: true)
!595 = !DIGlobalVariableExpression(var: !596, expr: !DIExpression())
!596 = distinct !DIGlobalVariable(scope: null, file: !542, line: 357, type: !317, isLocal: true, isDefinition: true)
!597 = !DIGlobalVariableExpression(var: !598, expr: !DIExpression())
!598 = distinct !DIGlobalVariable(scope: null, file: !542, line: 358, type: !317, isLocal: true, isDefinition: true)
!599 = !DIGlobalVariableExpression(var: !600, expr: !DIExpression())
!600 = distinct !DIGlobalVariable(scope: null, file: !542, line: 199, type: !334, isLocal: true, isDefinition: true)
!601 = !DIGlobalVariableExpression(var: !602, expr: !DIExpression())
!602 = distinct !DIGlobalVariable(name: "quote", scope: !603, file: !542, line: 228, type: !622, isLocal: true, isDefinition: true)
!603 = distinct !DISubprogram(name: "gettext_quote", scope: !542, file: !542, line: 197, type: !604, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !563, retainedNodes: !606)
!604 = !DISubroutineType(types: !605)
!605 = !{!138, !138, !98}
!606 = !{!607, !608, !609, !610, !611}
!607 = !DILocalVariable(name: "msgid", arg: 1, scope: !603, file: !542, line: 197, type: !138)
!608 = !DILocalVariable(name: "s", arg: 2, scope: !603, file: !542, line: 197, type: !98)
!609 = !DILocalVariable(name: "translation", scope: !603, file: !542, line: 199, type: !138)
!610 = !DILocalVariable(name: "w", scope: !603, file: !542, line: 229, type: !522)
!611 = !DILocalVariable(name: "mbs", scope: !603, file: !542, line: 230, type: !612)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !528, line: 6, baseType: !613)
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !530, line: 21, baseType: !614)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !530, line: 13, size: 64, elements: !615)
!615 = !{!616, !617}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !614, file: !530, line: 15, baseType: !85, size: 32)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !614, file: !530, line: 20, baseType: !618, size: 32, offset: 32)
!618 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !614, file: !530, line: 16, size: 32, elements: !619)
!619 = !{!620, !621}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !618, file: !530, line: 18, baseType: !91, size: 32)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !618, file: !530, line: 19, baseType: !76, size: 32)
!622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 64, elements: !623)
!623 = !{!319, !78}
!624 = !DIGlobalVariableExpression(var: !625, expr: !DIExpression())
!625 = distinct !DIGlobalVariable(name: "slotvec", scope: !563, file: !542, line: 834, type: !626, isLocal: true, isDefinition: true)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !542, line: 823, size: 128, elements: !628)
!628 = !{!629, !630}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !627, file: !542, line: 825, baseType: !136, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !627, file: !542, line: 826, baseType: !128, size: 64, offset: 64)
!631 = !DIGlobalVariableExpression(var: !632, expr: !DIExpression())
!632 = distinct !DIGlobalVariable(name: "nslots", scope: !563, file: !542, line: 832, type: !85, isLocal: true, isDefinition: true)
!633 = !DIGlobalVariableExpression(var: !634, expr: !DIExpression())
!634 = distinct !DIGlobalVariable(name: "slotvec0", scope: !563, file: !542, line: 833, type: !627, isLocal: true, isDefinition: true)
!635 = !DICompositeType(tag: DW_TAG_array_type, baseType: !636, size: 704, elements: !637)
!636 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !138)
!637 = !{!638}
!638 = !DISubrange(count: 11)
!639 = !DIGlobalVariableExpression(var: !640, expr: !DIExpression())
!640 = distinct !DIGlobalVariable(scope: null, file: !641, line: 67, type: !407, isLocal: true, isDefinition: true)
!641 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!642 = !DIGlobalVariableExpression(var: !643, expr: !DIExpression())
!643 = distinct !DIGlobalVariable(scope: null, file: !641, line: 69, type: !334, isLocal: true, isDefinition: true)
!644 = !DIGlobalVariableExpression(var: !645, expr: !DIExpression())
!645 = distinct !DIGlobalVariable(scope: null, file: !641, line: 83, type: !334, isLocal: true, isDefinition: true)
!646 = !DIGlobalVariableExpression(var: !647, expr: !DIExpression())
!647 = distinct !DIGlobalVariable(scope: null, file: !641, line: 83, type: !76, isLocal: true, isDefinition: true)
!648 = !DIGlobalVariableExpression(var: !649, expr: !DIExpression())
!649 = distinct !DIGlobalVariable(scope: null, file: !641, line: 85, type: !317, isLocal: true, isDefinition: true)
!650 = !DIGlobalVariableExpression(var: !651, expr: !DIExpression())
!651 = distinct !DIGlobalVariable(scope: null, file: !641, line: 88, type: !652, isLocal: true, isDefinition: true)
!652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !653)
!653 = !{!654}
!654 = !DISubrange(count: 171)
!655 = !DIGlobalVariableExpression(var: !656, expr: !DIExpression())
!656 = distinct !DIGlobalVariable(scope: null, file: !641, line: 88, type: !657, isLocal: true, isDefinition: true)
!657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !658)
!658 = !{!659}
!659 = !DISubrange(count: 34)
!660 = !DIGlobalVariableExpression(var: !661, expr: !DIExpression())
!661 = distinct !DIGlobalVariable(scope: null, file: !641, line: 105, type: !154, isLocal: true, isDefinition: true)
!662 = !DIGlobalVariableExpression(var: !663, expr: !DIExpression())
!663 = distinct !DIGlobalVariable(scope: null, file: !641, line: 109, type: !209, isLocal: true, isDefinition: true)
!664 = !DIGlobalVariableExpression(var: !665, expr: !DIExpression())
!665 = distinct !DIGlobalVariable(scope: null, file: !641, line: 113, type: !666, isLocal: true, isDefinition: true)
!666 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !667)
!667 = !{!668}
!668 = !DISubrange(count: 28)
!669 = !DIGlobalVariableExpression(var: !670, expr: !DIExpression())
!670 = distinct !DIGlobalVariable(scope: null, file: !641, line: 120, type: !671, isLocal: true, isDefinition: true)
!671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !672)
!672 = !{!673}
!673 = !DISubrange(count: 32)
!674 = !DIGlobalVariableExpression(var: !675, expr: !DIExpression())
!675 = distinct !DIGlobalVariable(scope: null, file: !641, line: 127, type: !676, isLocal: true, isDefinition: true)
!676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !677)
!677 = !{!678}
!678 = !DISubrange(count: 36)
!679 = !DIGlobalVariableExpression(var: !680, expr: !DIExpression())
!680 = distinct !DIGlobalVariable(scope: null, file: !641, line: 134, type: !358, isLocal: true, isDefinition: true)
!681 = !DIGlobalVariableExpression(var: !682, expr: !DIExpression())
!682 = distinct !DIGlobalVariable(scope: null, file: !641, line: 142, type: !164, isLocal: true, isDefinition: true)
!683 = !DIGlobalVariableExpression(var: !684, expr: !DIExpression())
!684 = distinct !DIGlobalVariable(scope: null, file: !641, line: 150, type: !685, isLocal: true, isDefinition: true)
!685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !686)
!686 = !{!687}
!687 = !DISubrange(count: 48)
!688 = !DIGlobalVariableExpression(var: !689, expr: !DIExpression())
!689 = distinct !DIGlobalVariable(scope: null, file: !641, line: 159, type: !690, isLocal: true, isDefinition: true)
!690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !691)
!691 = !{!692}
!692 = !DISubrange(count: 52)
!693 = !DIGlobalVariableExpression(var: !694, expr: !DIExpression())
!694 = distinct !DIGlobalVariable(scope: null, file: !641, line: 170, type: !695, isLocal: true, isDefinition: true)
!695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !696)
!696 = !{!697}
!697 = !DISubrange(count: 60)
!698 = !DIGlobalVariableExpression(var: !699, expr: !DIExpression())
!699 = distinct !DIGlobalVariable(scope: null, file: !641, line: 248, type: !295, isLocal: true, isDefinition: true)
!700 = !DIGlobalVariableExpression(var: !701, expr: !DIExpression())
!701 = distinct !DIGlobalVariable(scope: null, file: !641, line: 248, type: !383, isLocal: true, isDefinition: true)
!702 = !DIGlobalVariableExpression(var: !703, expr: !DIExpression())
!703 = distinct !DIGlobalVariable(scope: null, file: !641, line: 254, type: !295, isLocal: true, isDefinition: true)
!704 = !DIGlobalVariableExpression(var: !705, expr: !DIExpression())
!705 = distinct !DIGlobalVariable(scope: null, file: !641, line: 254, type: !149, isLocal: true, isDefinition: true)
!706 = !DIGlobalVariableExpression(var: !707, expr: !DIExpression())
!707 = distinct !DIGlobalVariable(scope: null, file: !641, line: 254, type: !358, isLocal: true, isDefinition: true)
!708 = !DIGlobalVariableExpression(var: !709, expr: !DIExpression())
!709 = distinct !DIGlobalVariable(scope: null, file: !641, line: 259, type: !3, isLocal: true, isDefinition: true)
!710 = !DIGlobalVariableExpression(var: !711, expr: !DIExpression())
!711 = distinct !DIGlobalVariable(scope: null, file: !641, line: 259, type: !214, isLocal: true, isDefinition: true)
!712 = !DIGlobalVariableExpression(var: !713, expr: !DIExpression())
!713 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !714, file: !715, line: 26, type: !717, isLocal: false, isDefinition: true)
!714 = distinct !DICompileUnit(language: DW_LANG_C11, file: !715, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !716, splitDebugInlining: false, nameTableKind: None)
!715 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!716 = !{!712}
!717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 376, elements: !10)
!718 = !DIGlobalVariableExpression(var: !719, expr: !DIExpression())
!719 = distinct !DIGlobalVariable(name: "exit_failure", scope: !720, file: !721, line: 24, type: !723, isLocal: false, isDefinition: true)
!720 = distinct !DICompileUnit(language: DW_LANG_C11, file: !721, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !722, splitDebugInlining: false, nameTableKind: None)
!721 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!722 = !{!718}
!723 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !85)
!724 = !DIGlobalVariableExpression(var: !725, expr: !DIExpression())
!725 = distinct !DIGlobalVariable(scope: null, file: !726, line: 34, type: !204, isLocal: true, isDefinition: true)
!726 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!727 = !DIGlobalVariableExpression(var: !728, expr: !DIExpression())
!728 = distinct !DIGlobalVariable(scope: null, file: !726, line: 34, type: !334, isLocal: true, isDefinition: true)
!729 = !DIGlobalVariableExpression(var: !730, expr: !DIExpression())
!730 = distinct !DIGlobalVariable(scope: null, file: !726, line: 34, type: !183, isLocal: true, isDefinition: true)
!731 = !DIGlobalVariableExpression(var: !732, expr: !DIExpression())
!732 = distinct !DIGlobalVariable(scope: null, file: !733, line: 108, type: !61, isLocal: true, isDefinition: true)
!733 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!734 = !DIGlobalVariableExpression(var: !735, expr: !DIExpression())
!735 = distinct !DIGlobalVariable(name: "internal_state", scope: !736, file: !733, line: 97, type: !739, isLocal: true, isDefinition: true)
!736 = distinct !DICompileUnit(language: DW_LANG_C11, file: !733, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !737, globals: !738, splitDebugInlining: false, nameTableKind: None)
!737 = !{!129, !136, !140}
!738 = !{!731, !734}
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !528, line: 6, baseType: !740)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !530, line: 21, baseType: !741)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !530, line: 13, size: 64, elements: !742)
!742 = !{!743, !744}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !741, file: !530, line: 15, baseType: !85, size: 32)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !741, file: !530, line: 20, baseType: !745, size: 32, offset: 32)
!745 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !741, file: !530, line: 16, size: 32, elements: !746)
!746 = !{!747, !748}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !745, file: !530, line: 18, baseType: !91, size: 32)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !745, file: !530, line: 19, baseType: !76, size: 32)
!749 = !DIGlobalVariableExpression(var: !750, expr: !DIExpression())
!750 = distinct !DIGlobalVariable(scope: null, file: !751, line: 35, type: !19, isLocal: true, isDefinition: true)
!751 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!752 = distinct !DICompileUnit(language: DW_LANG_C11, file: !753, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!753 = !DIFile(filename: "src/selinux.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f2fe0a2ae80ab081d56e5c6fc8b81c38")
!754 = distinct !DICompileUnit(language: DW_LANG_C11, file: !755, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!755 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!756 = distinct !DICompileUnit(language: DW_LANG_C11, file: !757, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!757 = !DIFile(filename: "lib/mknod.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a1171358cd5346ce916515df55db10ad")
!758 = distinct !DICompileUnit(language: DW_LANG_C11, file: !759, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !760, splitDebugInlining: false, nameTableKind: None)
!759 = !DIFile(filename: "lib/modechange.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d9d9323c1a974dc920f948d08984b73e")
!760 = !{!761}
!761 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !759, line: 78, baseType: !91, size: 32, elements: !762)
!762 = !{!763, !764, !765, !766}
!763 = !DIEnumerator(name: "MODE_DONE", value: 0)
!764 = !DIEnumerator(name: "MODE_ORDINARY_CHANGE", value: 1)
!765 = !DIEnumerator(name: "MODE_X_IF_ANY_X", value: 2)
!766 = !DIEnumerator(name: "MODE_COPY_EXISTING", value: 3)
!767 = distinct !DICompileUnit(language: DW_LANG_C11, file: !641, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !768, retainedTypes: !772, globals: !773, splitDebugInlining: false, nameTableKind: None)
!768 = !{!769}
!769 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !641, line: 40, baseType: !91, size: 32, elements: !770)
!770 = !{!771}
!771 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!772 = !{!129}
!773 = !{!639, !642, !644, !646, !648, !650, !655, !660, !662, !664, !669, !674, !679, !681, !683, !688, !693, !698, !700, !702, !704, !706, !708, !710}
!774 = distinct !DICompileUnit(language: DW_LANG_C11, file: !775, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !776, retainedTypes: !807, splitDebugInlining: false, nameTableKind: None)
!775 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!776 = !{!777, !789}
!777 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !778, file: !775, line: 188, baseType: !91, size: 32, elements: !787)
!778 = distinct !DISubprogram(name: "x2nrealloc", scope: !775, file: !775, line: 176, type: !779, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !782)
!779 = !DISubroutineType(types: !780)
!780 = !{!129, !129, !781, !136}
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!782 = !{!783, !784, !785, !786}
!783 = !DILocalVariable(name: "p", arg: 1, scope: !778, file: !775, line: 176, type: !129)
!784 = !DILocalVariable(name: "pn", arg: 2, scope: !778, file: !775, line: 176, type: !781)
!785 = !DILocalVariable(name: "s", arg: 3, scope: !778, file: !775, line: 176, type: !136)
!786 = !DILocalVariable(name: "n", scope: !778, file: !775, line: 178, type: !136)
!787 = !{!788}
!788 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!789 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !790, file: !775, line: 228, baseType: !91, size: 32, elements: !787)
!790 = distinct !DISubprogram(name: "xpalloc", scope: !775, file: !775, line: 223, type: !791, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !797)
!791 = !DISubroutineType(types: !792)
!792 = !{!129, !129, !793, !794, !796, !794}
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !795, line: 130, baseType: !796)
!795 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !137, line: 35, baseType: !274)
!797 = !{!798, !799, !800, !801, !802, !803, !804, !805, !806}
!798 = !DILocalVariable(name: "pa", arg: 1, scope: !790, file: !775, line: 223, type: !129)
!799 = !DILocalVariable(name: "pn", arg: 2, scope: !790, file: !775, line: 223, type: !793)
!800 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !790, file: !775, line: 223, type: !794)
!801 = !DILocalVariable(name: "n_max", arg: 4, scope: !790, file: !775, line: 223, type: !796)
!802 = !DILocalVariable(name: "s", arg: 5, scope: !790, file: !775, line: 223, type: !794)
!803 = !DILocalVariable(name: "n0", scope: !790, file: !775, line: 230, type: !794)
!804 = !DILocalVariable(name: "n", scope: !790, file: !775, line: 237, type: !794)
!805 = !DILocalVariable(name: "nbytes", scope: !790, file: !775, line: 248, type: !794)
!806 = !DILocalVariable(name: "adjusted_nbytes", scope: !790, file: !775, line: 252, type: !794)
!807 = !{!128, !129, !234, !274, !134}
!808 = distinct !DICompileUnit(language: DW_LANG_C11, file: !726, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !809, splitDebugInlining: false, nameTableKind: None)
!809 = !{!724, !727, !729}
!810 = distinct !DICompileUnit(language: DW_LANG_C11, file: !811, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !812, retainedTypes: !813, splitDebugInlining: false, nameTableKind: None)
!811 = !DIFile(filename: "lib/xstrtoumax.c", directory: "/src", checksumkind: CSK_MD5, checksum: "54ffbccd458a53dd64c9445b3f0c9b17")
!812 = !{!89, !112}
!813 = !{!85, !135, !128, !234, !134, !814}
!814 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !815, line: 102, baseType: !816)
!815 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!816 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !133, line: 73, baseType: !134)
!817 = distinct !DICompileUnit(language: DW_LANG_C11, file: !818, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!818 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!819 = distinct !DICompileUnit(language: DW_LANG_C11, file: !820, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!820 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!821 = distinct !DICompileUnit(language: DW_LANG_C11, file: !822, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !772, splitDebugInlining: false, nameTableKind: None)
!822 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!823 = distinct !DICompileUnit(language: DW_LANG_C11, file: !824, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !772, splitDebugInlining: false, nameTableKind: None)
!824 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!825 = distinct !DICompileUnit(language: DW_LANG_C11, file: !826, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !827, splitDebugInlining: false, nameTableKind: None)
!826 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!827 = !{!234, !134, !129}
!828 = distinct !DICompileUnit(language: DW_LANG_C11, file: !751, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !829, splitDebugInlining: false, nameTableKind: None)
!829 = !{!830, !749}
!830 = !DIGlobalVariableExpression(var: !831, expr: !DIExpression())
!831 = distinct !DIGlobalVariable(scope: null, file: !751, line: 35, type: !317, isLocal: true, isDefinition: true)
!832 = distinct !DICompileUnit(language: DW_LANG_C11, file: !833, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!833 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!834 = distinct !DICompileUnit(language: DW_LANG_C11, file: !835, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !772, splitDebugInlining: false, nameTableKind: None)
!835 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!836 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!837 = !{i32 7, !"Dwarf Version", i32 5}
!838 = !{i32 2, !"Debug Info Version", i32 3}
!839 = !{i32 1, !"wchar_size", i32 4}
!840 = !{i32 8, !"PIC Level", i32 2}
!841 = !{i32 7, !"PIE Level", i32 2}
!842 = !{i32 7, !"uwtable", i32 2}
!843 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 47, type: !844, scopeLine: 48, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !846)
!844 = !DISubroutineType(types: !845)
!845 = !{null, !85}
!846 = !{!847}
!847 = !DILocalVariable(name: "status", arg: 1, scope: !843, file: !2, line: 47, type: !85)
!848 = !DILocation(line: 0, scope: !843)
!849 = !DILocation(line: 49, column: 14, scope: !850)
!850 = distinct !DILexicalBlock(scope: !843, file: !2, line: 49, column: 7)
!851 = !DILocation(line: 49, column: 7, scope: !843)
!852 = !DILocation(line: 50, column: 5, scope: !853)
!853 = distinct !DILexicalBlock(scope: !850, file: !2, line: 50, column: 5)
!854 = !{!855, !855, i64 0}
!855 = !{!"any pointer", !856, i64 0}
!856 = !{!"omnipotent char", !857, i64 0}
!857 = !{!"Simple C/C++ TBAA"}
!858 = !DILocation(line: 53, column: 7, scope: !859)
!859 = distinct !DILexicalBlock(scope: !850, file: !2, line: 52, column: 5)
!860 = !DILocation(line: 55, column: 7, scope: !859)
!861 = !DILocation(line: 736, column: 3, scope: !862, inlinedAt: !864)
!862 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !84, file: !84, line: 734, type: !497, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !863)
!863 = !{}
!864 = distinct !DILocation(line: 59, column: 7, scope: !859)
!865 = !DILocation(line: 61, column: 7, scope: !859)
!866 = !DILocation(line: 65, column: 7, scope: !859)
!867 = !DILocation(line: 69, column: 7, scope: !859)
!868 = !DILocation(line: 74, column: 7, scope: !859)
!869 = !DILocation(line: 75, column: 7, scope: !859)
!870 = !DILocation(line: 76, column: 7, scope: !859)
!871 = !DILocation(line: 83, column: 7, scope: !859)
!872 = !DILocation(line: 89, column: 7, scope: !859)
!873 = !DILocalVariable(name: "program", arg: 1, scope: !874, file: !84, line: 836, type: !138)
!874 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !84, file: !84, line: 836, type: !875, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !877)
!875 = !DISubroutineType(types: !876)
!876 = !{null, !138}
!877 = !{!873, !878, !885, !886, !888, !889}
!878 = !DILocalVariable(name: "infomap", scope: !874, file: !84, line: 838, type: !879)
!879 = !DICompositeType(tag: DW_TAG_array_type, baseType: !880, size: 896, elements: !335)
!880 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !881)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !874, file: !84, line: 838, size: 128, elements: !882)
!882 = !{!883, !884}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !881, file: !84, line: 838, baseType: !138, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !881, file: !84, line: 838, baseType: !138, size: 64, offset: 64)
!885 = !DILocalVariable(name: "node", scope: !874, file: !84, line: 848, type: !138)
!886 = !DILocalVariable(name: "map_prog", scope: !874, file: !84, line: 849, type: !887)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!888 = !DILocalVariable(name: "lc_messages", scope: !874, file: !84, line: 861, type: !138)
!889 = !DILocalVariable(name: "url_program", scope: !874, file: !84, line: 874, type: !138)
!890 = !DILocation(line: 0, scope: !874, inlinedAt: !891)
!891 = distinct !DILocation(line: 90, column: 7, scope: !859)
!892 = !DILocation(line: 857, column: 3, scope: !874, inlinedAt: !891)
!893 = !DILocation(line: 861, column: 29, scope: !874, inlinedAt: !891)
!894 = !DILocation(line: 862, column: 7, scope: !895, inlinedAt: !891)
!895 = distinct !DILexicalBlock(scope: !874, file: !84, line: 862, column: 7)
!896 = !DILocation(line: 862, column: 19, scope: !895, inlinedAt: !891)
!897 = !DILocation(line: 862, column: 22, scope: !895, inlinedAt: !891)
!898 = !DILocation(line: 862, column: 7, scope: !874, inlinedAt: !891)
!899 = !DILocation(line: 868, column: 7, scope: !900, inlinedAt: !891)
!900 = distinct !DILexicalBlock(scope: !895, file: !84, line: 863, column: 5)
!901 = !DILocation(line: 870, column: 5, scope: !900, inlinedAt: !891)
!902 = !DILocation(line: 875, column: 3, scope: !874, inlinedAt: !891)
!903 = !DILocation(line: 877, column: 3, scope: !874, inlinedAt: !891)
!904 = !DILocation(line: 92, column: 3, scope: !843)
!905 = !DISubprogram(name: "dcgettext", scope: !906, file: !906, line: 51, type: !907, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !863)
!906 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!907 = !DISubroutineType(types: !908)
!908 = !{!128, !138, !138, !85}
!909 = !DISubprogram(name: "__fprintf_chk", scope: !910, file: !910, line: 93, type: !911, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !863)
!910 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!911 = !DISubroutineType(types: !912)
!912 = !{!85, !913, !85, !914, null}
!913 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !247)
!914 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !138)
!915 = !DISubprogram(name: "__printf_chk", scope: !910, file: !910, line: 95, type: !916, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !863)
!916 = !DISubroutineType(types: !917)
!917 = !{!85, !85, !914, null}
!918 = !DISubprogram(name: "fputs_unlocked", scope: !919, file: !919, line: 691, type: !920, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !863)
!919 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!920 = !DISubroutineType(types: !921)
!921 = !{!85, !914, !913}
!922 = !DILocation(line: 0, scope: !224)
!923 = !DILocation(line: 581, column: 7, scope: !232)
!924 = !{!925, !925, i64 0}
!925 = !{!"int", !856, i64 0}
!926 = !DILocation(line: 581, column: 19, scope: !232)
!927 = !DILocation(line: 581, column: 7, scope: !224)
!928 = !DILocation(line: 585, column: 26, scope: !231)
!929 = !DILocation(line: 0, scope: !231)
!930 = !DILocation(line: 586, column: 23, scope: !231)
!931 = !DILocation(line: 586, column: 28, scope: !231)
!932 = !DILocation(line: 586, column: 32, scope: !231)
!933 = !{!856, !856, i64 0}
!934 = !DILocation(line: 586, column: 38, scope: !231)
!935 = !DILocalVariable(name: "__s1", arg: 1, scope: !936, file: !937, line: 1359, type: !138)
!936 = distinct !DISubprogram(name: "streq", scope: !937, file: !937, line: 1359, type: !938, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !940)
!937 = !DIFile(filename: "./lib/string.h", directory: "/src")
!938 = !DISubroutineType(types: !939)
!939 = !{!234, !138, !138}
!940 = !{!935, !941}
!941 = !DILocalVariable(name: "__s2", arg: 2, scope: !936, file: !937, line: 1359, type: !138)
!942 = !DILocation(line: 0, scope: !936, inlinedAt: !943)
!943 = distinct !DILocation(line: 586, column: 41, scope: !231)
!944 = !DILocation(line: 1361, column: 11, scope: !936, inlinedAt: !943)
!945 = !DILocation(line: 1361, column: 10, scope: !936, inlinedAt: !943)
!946 = !DILocation(line: 586, column: 19, scope: !231)
!947 = !DILocation(line: 587, column: 5, scope: !231)
!948 = !DILocation(line: 588, column: 7, scope: !949)
!949 = distinct !DILexicalBlock(scope: !224, file: !84, line: 588, column: 7)
!950 = !DILocation(line: 588, column: 7, scope: !224)
!951 = !DILocation(line: 590, column: 7, scope: !952)
!952 = distinct !DILexicalBlock(scope: !949, file: !84, line: 589, column: 5)
!953 = !DILocation(line: 591, column: 7, scope: !952)
!954 = !DILocation(line: 595, column: 37, scope: !224)
!955 = !DILocation(line: 595, column: 35, scope: !224)
!956 = !DILocation(line: 596, column: 29, scope: !224)
!957 = !DILocation(line: 597, column: 8, scope: !240)
!958 = !DILocation(line: 597, column: 7, scope: !224)
!959 = !DILocation(line: 604, column: 24, scope: !239)
!960 = !DILocation(line: 604, column: 12, scope: !240)
!961 = !DILocation(line: 0, scope: !238)
!962 = !DILocation(line: 610, column: 16, scope: !238)
!963 = !DILocation(line: 610, column: 7, scope: !238)
!964 = !DILocation(line: 611, column: 21, scope: !238)
!965 = !{!966, !966, i64 0}
!966 = !{!"short", !856, i64 0}
!967 = !DILocation(line: 611, column: 19, scope: !238)
!968 = !DILocation(line: 611, column: 16, scope: !238)
!969 = !DILocation(line: 610, column: 30, scope: !238)
!970 = distinct !{!970, !963, !964, !971}
!971 = !{!"llvm.loop.mustprogress"}
!972 = !DILocation(line: 612, column: 18, scope: !973)
!973 = distinct !DILexicalBlock(scope: !238, file: !84, line: 612, column: 11)
!974 = !DILocation(line: 612, column: 11, scope: !238)
!975 = !DILocation(line: 618, column: 5, scope: !238)
!976 = !DILocation(line: 620, column: 23, scope: !224)
!977 = !DILocation(line: 625, column: 39, scope: !224)
!978 = !DILocation(line: 626, column: 3, scope: !224)
!979 = !DILocation(line: 626, column: 10, scope: !224)
!980 = !DILocation(line: 626, column: 21, scope: !224)
!981 = !DILocation(line: 628, column: 44, scope: !982)
!982 = distinct !DILexicalBlock(scope: !983, file: !84, line: 628, column: 11)
!983 = distinct !DILexicalBlock(scope: !224, file: !84, line: 627, column: 5)
!984 = !DILocation(line: 628, column: 32, scope: !982)
!985 = !DILocation(line: 628, column: 49, scope: !982)
!986 = !DILocation(line: 628, column: 11, scope: !983)
!987 = !DILocation(line: 630, column: 11, scope: !988)
!988 = distinct !DILexicalBlock(scope: !983, file: !84, line: 630, column: 11)
!989 = !DILocation(line: 630, column: 11, scope: !983)
!990 = !DILocation(line: 632, column: 26, scope: !991)
!991 = distinct !DILexicalBlock(scope: !992, file: !84, line: 632, column: 15)
!992 = distinct !DILexicalBlock(scope: !988, file: !84, line: 631, column: 9)
!993 = !DILocation(line: 632, column: 34, scope: !991)
!994 = !DILocation(line: 632, column: 37, scope: !991)
!995 = !DILocation(line: 632, column: 15, scope: !992)
!996 = !DILocation(line: 636, column: 16, scope: !997)
!997 = distinct !DILexicalBlock(scope: !992, file: !84, line: 636, column: 15)
!998 = !DILocation(line: 636, column: 29, scope: !997)
!999 = !DILocation(line: 640, column: 16, scope: !983)
!1000 = distinct !{!1000, !978, !1001, !971}
!1001 = !DILocation(line: 641, column: 5, scope: !224)
!1002 = !DILocation(line: 644, column: 3, scope: !224)
!1003 = !DILocation(line: 0, scope: !936, inlinedAt: !1004)
!1004 = distinct !DILocation(line: 648, column: 31, scope: !224)
!1005 = !DILocation(line: 0, scope: !936, inlinedAt: !1006)
!1006 = distinct !DILocation(line: 649, column: 31, scope: !224)
!1007 = !DILocation(line: 0, scope: !936, inlinedAt: !1008)
!1008 = distinct !DILocation(line: 650, column: 31, scope: !224)
!1009 = !DILocation(line: 0, scope: !936, inlinedAt: !1010)
!1010 = distinct !DILocation(line: 651, column: 31, scope: !224)
!1011 = !DILocation(line: 0, scope: !936, inlinedAt: !1012)
!1012 = distinct !DILocation(line: 652, column: 31, scope: !224)
!1013 = !DILocation(line: 0, scope: !936, inlinedAt: !1014)
!1014 = distinct !DILocation(line: 653, column: 31, scope: !224)
!1015 = !DILocation(line: 0, scope: !936, inlinedAt: !1016)
!1016 = distinct !DILocation(line: 654, column: 31, scope: !224)
!1017 = !DILocation(line: 0, scope: !936, inlinedAt: !1018)
!1018 = distinct !DILocation(line: 655, column: 31, scope: !224)
!1019 = !DILocation(line: 0, scope: !936, inlinedAt: !1020)
!1020 = distinct !DILocation(line: 656, column: 31, scope: !224)
!1021 = !DILocation(line: 0, scope: !936, inlinedAt: !1022)
!1022 = distinct !DILocation(line: 657, column: 31, scope: !224)
!1023 = !DILocation(line: 663, column: 7, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !224, file: !84, line: 663, column: 7)
!1025 = !DILocation(line: 664, column: 7, scope: !1024)
!1026 = !DILocation(line: 664, column: 10, scope: !1024)
!1027 = !DILocation(line: 663, column: 7, scope: !224)
!1028 = !DILocation(line: 669, column: 7, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !1024, file: !84, line: 665, column: 5)
!1030 = !DILocation(line: 671, column: 5, scope: !1029)
!1031 = !DILocation(line: 676, column: 7, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1024, file: !84, line: 673, column: 5)
!1033 = !DILocation(line: 679, column: 3, scope: !224)
!1034 = !DILocation(line: 683, column: 3, scope: !224)
!1035 = !DILocation(line: 686, column: 3, scope: !224)
!1036 = !DILocation(line: 688, column: 3, scope: !224)
!1037 = !DILocation(line: 691, column: 3, scope: !224)
!1038 = !DILocation(line: 695, column: 3, scope: !224)
!1039 = !DILocation(line: 696, column: 1, scope: !224)
!1040 = !DISubprogram(name: "setlocale", scope: !1041, file: !1041, line: 122, type: !1042, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !863)
!1041 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1042 = !DISubroutineType(types: !1043)
!1043 = !{!128, !85, !138}
!1044 = !DISubprogram(name: "strncmp", scope: !1045, file: !1045, line: 159, type: !1046, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !863)
!1045 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1046 = !DISubroutineType(types: !1047)
!1047 = !{!85, !138, !138, !136}
!1048 = !DISubprogram(name: "exit", scope: !1049, file: !1049, line: 624, type: !844, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !863)
!1049 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1050 = !DISubprogram(name: "getenv", scope: !1049, file: !1049, line: 641, type: !1051, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !863)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!128, !138}
!1053 = !DISubprogram(name: "strcmp", scope: !1045, file: !1045, line: 156, type: !1054, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !863)
!1054 = !DISubroutineType(types: !1055)
!1055 = !{!85, !138, !138}
!1056 = !DISubprogram(name: "strspn", scope: !1045, file: !1045, line: 297, type: !1057, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !863)
!1057 = !DISubroutineType(types: !1058)
!1058 = !{!134, !138, !138}
!1059 = !DISubprogram(name: "strchr", scope: !1045, file: !1045, line: 246, type: !1060, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !863)
!1060 = !DISubroutineType(types: !1061)
!1061 = !{!128, !138, !85}
!1062 = !DISubprogram(name: "__ctype_b_loc", scope: !113, file: !113, line: 79, type: !1063, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !863)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!1065}
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !135)
!1068 = !DISubprogram(name: "strcspn", scope: !1045, file: !1045, line: 293, type: !1057, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !863)
!1069 = !DISubprogram(name: "fwrite_unlocked", scope: !919, file: !919, line: 704, type: !1070, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !863)
!1070 = !DISubroutineType(types: !1071)
!1071 = !{!136, !1072, !136, !136, !913}
!1072 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1073)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1075 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 96, type: !1076, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !1079)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{!85, !85, !1078}
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!1079 = !{!1080, !1081, !1082, !1083, !1084, !1088, !1089, !1092, !1098, !1099, !1100, !1103, !1104, !1107, !1108, !1109, !1110, !1111}
!1080 = !DILocalVariable(name: "argc", arg: 1, scope: !1075, file: !2, line: 96, type: !85)
!1081 = !DILocalVariable(name: "argv", arg: 2, scope: !1075, file: !2, line: 96, type: !1078)
!1082 = !DILocalVariable(name: "specified_mode", scope: !1075, file: !2, line: 98, type: !138)
!1083 = !DILocalVariable(name: "scontext", scope: !1075, file: !2, line: 99, type: !138)
!1084 = !DILocalVariable(name: "set_security_context", scope: !1075, file: !2, line: 100, type: !1085)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DICompositeType(tag: DW_TAG_structure_type, name: "selabel_handle", file: !1087, line: 53, flags: DIFlagFwdDecl)
!1087 = !DIFile(filename: "./lib/selinux/label.h", directory: "/src", checksumkind: CSK_MD5, checksum: "a430a70cff1d2c3fd1539e29c9e5e879")
!1088 = !DILocalVariable(name: "optc", scope: !1075, file: !2, line: 110, type: !85)
!1089 = !DILocalVariable(name: "newmode", scope: !1075, file: !2, line: 150, type: !1090)
!1090 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !131, line: 69, baseType: !1091)
!1091 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !133, line: 150, baseType: !91)
!1092 = !DILocalVariable(name: "change", scope: !1093, file: !2, line: 153, type: !1095)
!1093 = distinct !DILexicalBlock(scope: !1094, file: !2, line: 152, column: 5)
!1094 = distinct !DILexicalBlock(scope: !1075, file: !2, line: 151, column: 7)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = !DICompositeType(tag: DW_TAG_structure_type, name: "mode_change", file: !1097, line: 35, flags: DIFlagFwdDecl)
!1097 = !DIFile(filename: "./lib/modechange.h", directory: "/src", checksumkind: CSK_MD5, checksum: "41f2efe3cfeccb00721320834728c24b")
!1098 = !DILocalVariable(name: "umask_value", scope: !1093, file: !2, line: 156, type: !1090)
!1099 = !DILocalVariable(name: "expected_operands", scope: !1075, file: !2, line: 168, type: !85)
!1100 = !DILocalVariable(name: "ret", scope: !1101, file: !2, line: 196, type: !85)
!1101 = distinct !DILexicalBlock(scope: !1102, file: !2, line: 195, column: 5)
!1102 = distinct !DILexicalBlock(scope: !1075, file: !2, line: 194, column: 7)
!1103 = !DILocalVariable(name: "node_type", scope: !1075, file: !2, line: 211, type: !1090)
!1104 = !DILocalVariable(name: "s_major", scope: !1105, file: !2, line: 233, type: !138)
!1105 = distinct !DILexicalBlock(scope: !1106, file: !2, line: 232, column: 7)
!1106 = distinct !DILexicalBlock(scope: !1075, file: !2, line: 213, column: 5)
!1107 = !DILocalVariable(name: "i_major", scope: !1105, file: !2, line: 234, type: !814)
!1108 = !DILocalVariable(name: "s_minor", scope: !1105, file: !2, line: 240, type: !138)
!1109 = !DILocalVariable(name: "i_minor", scope: !1105, file: !2, line: 241, type: !814)
!1110 = !DILocalVariable(name: "device", scope: !1105, file: !2, line: 247, type: !130)
!1111 = !DILabel(scope: !1106, name: "block_or_character", file: !2, line: 231)
!1112 = !DILocation(line: 0, scope: !1075)
!1113 = !DILocation(line: 103, column: 21, scope: !1075)
!1114 = !DILocation(line: 103, column: 3, scope: !1075)
!1115 = !DILocation(line: 104, column: 3, scope: !1075)
!1116 = !DILocation(line: 105, column: 3, scope: !1075)
!1117 = !DILocation(line: 106, column: 3, scope: !1075)
!1118 = !DILocation(line: 108, column: 3, scope: !1075)
!1119 = !DILocation(line: 111, column: 3, scope: !1075)
!1120 = !DILocation(line: 111, column: 18, scope: !1075)
!1121 = !DILocation(line: 116, column: 28, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1123, file: !2, line: 114, column: 9)
!1123 = distinct !DILexicalBlock(scope: !1075, file: !2, line: 112, column: 5)
!1124 = !DILocation(line: 117, column: 11, scope: !1122)
!1125 = distinct !{!1125, !1119, !1126, !971}
!1126 = !DILocation(line: 148, column: 5, scope: !1075)
!1127 = !DILocation(line: 136, column: 20, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1129, file: !2, line: 136, column: 20)
!1129 = distinct !DILexicalBlock(scope: !1130, file: !2, line: 124, column: 20)
!1130 = distinct !DILexicalBlock(scope: !1122, file: !2, line: 119, column: 15)
!1131 = !DILocation(line: 136, column: 20, scope: !1129)
!1132 = !DILocation(line: 138, column: 15, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1128, file: !2, line: 137, column: 13)
!1134 = !DILocation(line: 141, column: 13, scope: !1133)
!1135 = !DILocation(line: 143, column: 9, scope: !1122)
!1136 = !DILocation(line: 144, column: 9, scope: !1122)
!1137 = !DILocation(line: 146, column: 11, scope: !1122)
!1138 = !DILocation(line: 151, column: 7, scope: !1094)
!1139 = !DILocation(line: 151, column: 7, scope: !1075)
!1140 = !DILocation(line: 153, column: 36, scope: !1093)
!1141 = !DILocation(line: 0, scope: !1093)
!1142 = !DILocation(line: 154, column: 12, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1093, file: !2, line: 154, column: 11)
!1144 = !DILocation(line: 154, column: 11, scope: !1093)
!1145 = !DILocation(line: 155, column: 9, scope: !1143)
!1146 = !DILocation(line: 156, column: 28, scope: !1093)
!1147 = !DILocation(line: 157, column: 7, scope: !1093)
!1148 = !DILocation(line: 158, column: 17, scope: !1093)
!1149 = !DILocation(line: 159, column: 7, scope: !1093)
!1150 = !DILocation(line: 160, column: 19, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1093, file: !2, line: 160, column: 11)
!1152 = !DILocation(line: 160, column: 11, scope: !1093)
!1153 = !DILocation(line: 161, column: 9, scope: !1151)
!1154 = !DILocation(line: 168, column: 36, scope: !1075)
!1155 = !DILocation(line: 168, column: 33, scope: !1075)
!1156 = !DILocation(line: 169, column: 28, scope: !1075)
!1157 = !DILocation(line: 169, column: 39, scope: !1075)
!1158 = !DILocation(line: 169, column: 43, scope: !1075)
!1159 = !DILocation(line: 169, column: 50, scope: !1075)
!1160 = !DILocation(line: 169, column: 53, scope: !1075)
!1161 = !DILocation(line: 169, column: 73, scope: !1075)
!1162 = !DILocation(line: 168, column: 28, scope: !1075)
!1163 = !DILocation(line: 172, column: 12, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1075, file: !2, line: 172, column: 7)
!1165 = !DILocation(line: 172, column: 21, scope: !1164)
!1166 = !DILocation(line: 172, column: 7, scope: !1075)
!1167 = !DILocation(line: 174, column: 11, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1164, file: !2, line: 173, column: 5)
!1169 = !DILocation(line: 175, column: 9, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1168, file: !2, line: 174, column: 11)
!1171 = !DILocation(line: 177, column: 9, scope: !1170)
!1172 = !DILocation(line: 178, column: 34, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1168, file: !2, line: 178, column: 11)
!1174 = !DILocation(line: 178, column: 44, scope: !1173)
!1175 = !DILocation(line: 178, column: 42, scope: !1173)
!1176 = !DILocation(line: 178, column: 51, scope: !1173)
!1177 = !DILocation(line: 178, column: 11, scope: !1168)
!1178 = !DILocation(line: 179, column: 9, scope: !1173)
!1179 = !DILocation(line: 181, column: 7, scope: !1168)
!1180 = !DILocation(line: 184, column: 25, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1075, file: !2, line: 184, column: 7)
!1182 = !DILocation(line: 184, column: 7, scope: !1075)
!1183 = !DILocation(line: 186, column: 7, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1181, file: !2, line: 185, column: 5)
!1185 = !DILocation(line: 188, column: 34, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1184, file: !2, line: 188, column: 11)
!1187 = !DILocation(line: 188, column: 44, scope: !1186)
!1188 = !DILocation(line: 188, column: 42, scope: !1186)
!1189 = !DILocation(line: 188, column: 51, scope: !1186)
!1190 = !DILocation(line: 188, column: 11, scope: !1184)
!1191 = !DILocation(line: 189, column: 9, scope: !1186)
!1192 = !DILocation(line: 191, column: 7, scope: !1184)
!1193 = !DILocation(line: 212, column: 23, scope: !1075)
!1194 = !DILocation(line: 212, column: 11, scope: !1075)
!1195 = !DILocation(line: 212, column: 3, scope: !1075)
!1196 = !DILocation(line: 229, column: 7, scope: !1106)
!1197 = !DILocation(line: 0, scope: !1106)
!1198 = !DILocation(line: 231, column: 5, scope: !1106)
!1199 = !DILocation(line: 233, column: 43, scope: !1105)
!1200 = !DILocation(line: 233, column: 31, scope: !1105)
!1201 = !DILocation(line: 0, scope: !1105)
!1202 = !DILocation(line: 234, column: 9, scope: !1105)
!1203 = !DILocation(line: 235, column: 13, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1105, file: !2, line: 235, column: 13)
!1205 = !DILocation(line: 235, column: 57, scope: !1204)
!1206 = !DILocation(line: 236, column: 13, scope: !1204)
!1207 = !DILocation(line: 237, column: 11, scope: !1204)
!1208 = !DILocation(line: 240, column: 36, scope: !1105)
!1209 = !DILocation(line: 240, column: 43, scope: !1105)
!1210 = !DILocation(line: 240, column: 31, scope: !1105)
!1211 = !DILocation(line: 241, column: 9, scope: !1105)
!1212 = !DILocation(line: 242, column: 13, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1105, file: !2, line: 242, column: 13)
!1214 = !DILocation(line: 242, column: 57, scope: !1213)
!1215 = !DILocation(line: 243, column: 13, scope: !1213)
!1216 = !DILocation(line: 243, column: 16, scope: !1213)
!1217 = !{!1218, !1218, i64 0}
!1218 = !{!"long", !856, i64 0}
!1219 = !DILocation(line: 243, column: 24, scope: !1213)
!1220 = !DILocation(line: 242, column: 13, scope: !1105)
!1221 = !DILocation(line: 244, column: 11, scope: !1213)
!1222 = !DILocation(line: 247, column: 24, scope: !1105)
!1223 = !DILocalVariable(name: "__major", arg: 1, scope: !1224, file: !1225, line: 43, type: !91)
!1224 = distinct !DISubprogram(name: "gnu_dev_makedev", scope: !1225, file: !1225, line: 43, type: !1226, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !1228)
!1225 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/sysmacros.h", directory: "", checksumkind: CSK_MD5, checksum: "55fcf1d6b566cf23c756196786ec2d1a")
!1226 = !DISubroutineType(types: !1227)
!1227 = !{!132, !91, !91}
!1228 = !{!1223, !1229, !1230}
!1229 = !DILocalVariable(name: "__minor", arg: 2, scope: !1224, file: !1225, line: 43, type: !91)
!1230 = !DILocalVariable(name: "__dev", scope: !1224, file: !1225, line: 43, type: !132)
!1231 = !DILocation(line: 0, scope: !1224, inlinedAt: !1232)
!1232 = distinct !DILocation(line: 247, column: 24, scope: !1105)
!1233 = !DILocation(line: 43, column: 1, scope: !1224, inlinedAt: !1232)
!1234 = !DILocation(line: 249, column: 20, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1105, file: !2, line: 249, column: 13)
!1236 = !DILocation(line: 249, column: 13, scope: !1105)
!1237 = !DILocation(line: 250, column: 11, scope: !1235)
!1238 = !DILocation(line: 257, column: 25, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1105, file: !2, line: 257, column: 13)
!1240 = !DILocation(line: 257, column: 20, scope: !1239)
!1241 = !DILocation(line: 257, column: 42, scope: !1239)
!1242 = !DILocation(line: 257, column: 13, scope: !1239)
!1243 = !DILocation(line: 257, column: 63, scope: !1239)
!1244 = !DILocation(line: 257, column: 13, scope: !1105)
!1245 = !DILocation(line: 258, column: 11, scope: !1239)
!1246 = !DILocation(line: 259, column: 7, scope: !1106)
!1247 = !DILocation(line: 260, column: 7, scope: !1106)
!1248 = !DILocation(line: 265, column: 19, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1106, file: !2, line: 265, column: 11)
!1250 = !DILocation(line: 265, column: 11, scope: !1249)
!1251 = !DILocation(line: 265, column: 42, scope: !1249)
!1252 = !DILocation(line: 265, column: 11, scope: !1106)
!1253 = !DILocation(line: 266, column: 9, scope: !1249)
!1254 = !DILocation(line: 270, column: 7, scope: !1106)
!1255 = !DILocation(line: 271, column: 7, scope: !1106)
!1256 = !DILocation(line: 274, column: 22, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1075, file: !2, line: 274, column: 7)
!1258 = !DILocation(line: 274, column: 38, scope: !1257)
!1259 = !DILocation(line: 274, column: 33, scope: !1257)
!1260 = !DILocation(line: 274, column: 25, scope: !1257)
!1261 = !DILocation(line: 274, column: 56, scope: !1257)
!1262 = !DILocation(line: 274, column: 7, scope: !1075)
!1263 = !DILocation(line: 275, column: 5, scope: !1257)
!1264 = !DILocation(line: 278, column: 3, scope: !1075)
!1265 = !DISubprogram(name: "bindtextdomain", scope: !906, file: !906, line: 86, type: !1266, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !863)
!1266 = !DISubroutineType(types: !1267)
!1267 = !{!128, !138, !138}
!1268 = !DISubprogram(name: "textdomain", scope: !906, file: !906, line: 82, type: !1051, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !863)
!1269 = !DISubprogram(name: "atexit", scope: !1049, file: !1049, line: 602, type: !1270, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !863)
!1270 = !DISubroutineType(types: !1271)
!1271 = !{!85, !496}
!1272 = !DISubprogram(name: "getopt_long", scope: !421, file: !421, line: 66, type: !1273, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !863)
!1273 = !DISubroutineType(types: !1274)
!1274 = !{!85, !85, !1275, !138, !1277, !426}
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !128)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!1278 = !DISubprogram(name: "umask", scope: !1279, file: !1279, line: 380, type: !1280, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !863)
!1279 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!1280 = !DISubroutineType(types: !1281)
!1281 = !{!1091, !1091}
!1282 = !DISubprogram(name: "free", scope: !1049, file: !1049, line: 555, type: !1283, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !863)
!1283 = !DISubroutineType(types: !1284)
!1284 = !{null, !129}
!1285 = !DISubprogram(name: "__errno_location", scope: !1286, file: !1286, line: 37, type: !1287, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !863)
!1286 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1287 = !DISubroutineType(types: !1288)
!1288 = !{!426}
!1289 = !DISubprogram(name: "mkfifo", scope: !1279, file: !1279, line: 418, type: !1290, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !863)
!1290 = !DISubroutineType(types: !1291)
!1291 = !{!85, !138, !1091}
!1292 = !DISubprogram(name: "lchmod", scope: !1279, file: !1279, line: 359, type: !1290, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !863)
!1293 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !438, file: !438, line: 50, type: !875, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !1294)
!1294 = !{!1295}
!1295 = !DILocalVariable(name: "file", arg: 1, scope: !1293, file: !438, line: 50, type: !138)
!1296 = !DILocation(line: 0, scope: !1293)
!1297 = !DILocation(line: 52, column: 13, scope: !1293)
!1298 = !DILocation(line: 53, column: 1, scope: !1293)
!1299 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !438, file: !438, line: 87, type: !1300, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !1302)
!1300 = !DISubroutineType(types: !1301)
!1301 = !{null, !234}
!1302 = !{!1303}
!1303 = !DILocalVariable(name: "ignore", arg: 1, scope: !1299, file: !438, line: 87, type: !234)
!1304 = !DILocation(line: 0, scope: !1299)
!1305 = !DILocation(line: 89, column: 16, scope: !1299)
!1306 = !{!1307, !1307, i64 0}
!1307 = !{!"_Bool", !856, i64 0}
!1308 = !DILocation(line: 90, column: 1, scope: !1299)
!1309 = distinct !DISubprogram(name: "close_stdout", scope: !438, file: !438, line: 116, type: !497, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !1310)
!1310 = !{!1311}
!1311 = !DILocalVariable(name: "write_error", scope: !1312, file: !438, line: 121, type: !138)
!1312 = distinct !DILexicalBlock(scope: !1313, file: !438, line: 120, column: 5)
!1313 = distinct !DILexicalBlock(scope: !1309, file: !438, line: 118, column: 7)
!1314 = !DILocation(line: 118, column: 21, scope: !1313)
!1315 = !DILocation(line: 118, column: 7, scope: !1313)
!1316 = !DILocation(line: 118, column: 29, scope: !1313)
!1317 = !DILocation(line: 119, column: 7, scope: !1313)
!1318 = !DILocation(line: 119, column: 12, scope: !1313)
!1319 = !{i8 0, i8 2}
!1320 = !DILocation(line: 119, column: 25, scope: !1313)
!1321 = !DILocation(line: 119, column: 28, scope: !1313)
!1322 = !DILocation(line: 119, column: 34, scope: !1313)
!1323 = !DILocation(line: 118, column: 7, scope: !1309)
!1324 = !DILocation(line: 121, column: 33, scope: !1312)
!1325 = !DILocation(line: 0, scope: !1312)
!1326 = !DILocation(line: 122, column: 11, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1312, file: !438, line: 122, column: 11)
!1328 = !DILocation(line: 0, scope: !1327)
!1329 = !DILocation(line: 122, column: 11, scope: !1312)
!1330 = !DILocation(line: 123, column: 9, scope: !1327)
!1331 = !DILocation(line: 126, column: 9, scope: !1327)
!1332 = !DILocation(line: 128, column: 14, scope: !1312)
!1333 = !DILocation(line: 128, column: 7, scope: !1312)
!1334 = !DILocation(line: 133, column: 42, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1309, file: !438, line: 133, column: 7)
!1336 = !DILocation(line: 133, column: 28, scope: !1335)
!1337 = !DILocation(line: 133, column: 50, scope: !1335)
!1338 = !DILocation(line: 133, column: 7, scope: !1309)
!1339 = !DILocation(line: 134, column: 12, scope: !1335)
!1340 = !DILocation(line: 134, column: 5, scope: !1335)
!1341 = !DILocation(line: 135, column: 1, scope: !1309)
!1342 = !DISubprogram(name: "_exit", scope: !1343, file: !1343, line: 624, type: !844, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !863)
!1343 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1344 = distinct !DISubprogram(name: "verror", scope: !453, file: !453, line: 251, type: !1345, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !452, retainedNodes: !1347)
!1345 = !DISubroutineType(types: !1346)
!1346 = !{null, !85, !85, !138, !463}
!1347 = !{!1348, !1349, !1350, !1351}
!1348 = !DILocalVariable(name: "status", arg: 1, scope: !1344, file: !453, line: 251, type: !85)
!1349 = !DILocalVariable(name: "errnum", arg: 2, scope: !1344, file: !453, line: 251, type: !85)
!1350 = !DILocalVariable(name: "message", arg: 3, scope: !1344, file: !453, line: 251, type: !138)
!1351 = !DILocalVariable(name: "args", arg: 4, scope: !1344, file: !453, line: 251, type: !463)
!1352 = !DILocation(line: 0, scope: !1344)
!1353 = !DILocation(line: 261, column: 3, scope: !1344)
!1354 = !DILocation(line: 265, column: 7, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1344, file: !453, line: 265, column: 7)
!1356 = !DILocation(line: 265, column: 7, scope: !1344)
!1357 = !DILocation(line: 266, column: 5, scope: !1355)
!1358 = !DILocation(line: 272, column: 7, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1355, file: !453, line: 268, column: 5)
!1360 = !DILocation(line: 276, column: 3, scope: !1344)
!1361 = !DILocation(line: 282, column: 1, scope: !1344)
!1362 = distinct !DISubprogram(name: "flush_stdout", scope: !453, file: !453, line: 163, type: !497, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !452, retainedNodes: !1363)
!1363 = !{!1364}
!1364 = !DILocalVariable(name: "stdout_fd", scope: !1362, file: !453, line: 166, type: !85)
!1365 = !DILocation(line: 0, scope: !1362)
!1366 = !DILocalVariable(name: "fd", arg: 1, scope: !1367, file: !453, line: 145, type: !85)
!1367 = distinct !DISubprogram(name: "is_open", scope: !453, file: !453, line: 145, type: !1368, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !452, retainedNodes: !1370)
!1368 = !DISubroutineType(types: !1369)
!1369 = !{!85, !85}
!1370 = !{!1366}
!1371 = !DILocation(line: 0, scope: !1367, inlinedAt: !1372)
!1372 = distinct !DILocation(line: 182, column: 25, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1362, file: !453, line: 182, column: 7)
!1374 = !DILocation(line: 157, column: 15, scope: !1367, inlinedAt: !1372)
!1375 = !DILocation(line: 157, column: 12, scope: !1367, inlinedAt: !1372)
!1376 = !DILocation(line: 182, column: 7, scope: !1362)
!1377 = !DILocation(line: 184, column: 5, scope: !1373)
!1378 = !DILocation(line: 185, column: 1, scope: !1362)
!1379 = distinct !DISubprogram(name: "error_tail", scope: !453, file: !453, line: 219, type: !1345, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !452, retainedNodes: !1380)
!1380 = !{!1381, !1382, !1383, !1384}
!1381 = !DILocalVariable(name: "status", arg: 1, scope: !1379, file: !453, line: 219, type: !85)
!1382 = !DILocalVariable(name: "errnum", arg: 2, scope: !1379, file: !453, line: 219, type: !85)
!1383 = !DILocalVariable(name: "message", arg: 3, scope: !1379, file: !453, line: 219, type: !138)
!1384 = !DILocalVariable(name: "args", arg: 4, scope: !1379, file: !453, line: 219, type: !463)
!1385 = !DILocation(line: 0, scope: !1379)
!1386 = !DILocation(line: 229, column: 13, scope: !1379)
!1387 = !DILocalVariable(name: "__stream", arg: 1, scope: !1388, file: !910, line: 132, type: !1391)
!1388 = distinct !DISubprogram(name: "vfprintf", scope: !910, file: !910, line: 132, type: !1389, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !452, retainedNodes: !1426)
!1389 = !DISubroutineType(types: !1390)
!1390 = !{!85, !1391, !914, !463}
!1391 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1392)
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64)
!1393 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !249, line: 7, baseType: !1394)
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !251, line: 49, size: 1728, elements: !1395)
!1395 = !{!1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1394, file: !251, line: 51, baseType: !85, size: 32)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1394, file: !251, line: 54, baseType: !128, size: 64, offset: 64)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1394, file: !251, line: 55, baseType: !128, size: 64, offset: 128)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1394, file: !251, line: 56, baseType: !128, size: 64, offset: 192)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1394, file: !251, line: 57, baseType: !128, size: 64, offset: 256)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1394, file: !251, line: 58, baseType: !128, size: 64, offset: 320)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1394, file: !251, line: 59, baseType: !128, size: 64, offset: 384)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1394, file: !251, line: 60, baseType: !128, size: 64, offset: 448)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1394, file: !251, line: 61, baseType: !128, size: 64, offset: 512)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1394, file: !251, line: 64, baseType: !128, size: 64, offset: 576)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1394, file: !251, line: 65, baseType: !128, size: 64, offset: 640)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1394, file: !251, line: 66, baseType: !128, size: 64, offset: 704)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1394, file: !251, line: 68, baseType: !266, size: 64, offset: 768)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1394, file: !251, line: 70, baseType: !1410, size: 64, offset: 832)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1394, file: !251, line: 72, baseType: !85, size: 32, offset: 896)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1394, file: !251, line: 73, baseType: !85, size: 32, offset: 928)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1394, file: !251, line: 74, baseType: !273, size: 64, offset: 960)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1394, file: !251, line: 77, baseType: !135, size: 16, offset: 1024)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1394, file: !251, line: 78, baseType: !277, size: 8, offset: 1040)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1394, file: !251, line: 79, baseType: !61, size: 8, offset: 1048)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1394, file: !251, line: 81, baseType: !280, size: 64, offset: 1088)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1394, file: !251, line: 89, baseType: !283, size: 64, offset: 1152)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1394, file: !251, line: 91, baseType: !285, size: 64, offset: 1216)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1394, file: !251, line: 92, baseType: !288, size: 64, offset: 1280)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1394, file: !251, line: 93, baseType: !1410, size: 64, offset: 1344)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1394, file: !251, line: 94, baseType: !129, size: 64, offset: 1408)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1394, file: !251, line: 95, baseType: !136, size: 64, offset: 1472)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1394, file: !251, line: 96, baseType: !85, size: 32, offset: 1536)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1394, file: !251, line: 98, baseType: !295, size: 160, offset: 1568)
!1426 = !{!1387, !1427, !1428}
!1427 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1388, file: !910, line: 133, type: !914)
!1428 = !DILocalVariable(name: "__ap", arg: 3, scope: !1388, file: !910, line: 133, type: !463)
!1429 = !DILocation(line: 0, scope: !1388, inlinedAt: !1430)
!1430 = distinct !DILocation(line: 229, column: 3, scope: !1379)
!1431 = !DILocation(line: 135, column: 10, scope: !1388, inlinedAt: !1430)
!1432 = !DILocation(line: 232, column: 3, scope: !1379)
!1433 = !DILocation(line: 233, column: 7, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1379, file: !453, line: 233, column: 7)
!1435 = !DILocation(line: 233, column: 7, scope: !1379)
!1436 = !DILocalVariable(name: "errnum", arg: 1, scope: !1437, file: !453, line: 188, type: !85)
!1437 = distinct !DISubprogram(name: "print_errno_message", scope: !453, file: !453, line: 188, type: !844, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !452, retainedNodes: !1438)
!1438 = !{!1436, !1439, !1440}
!1439 = !DILocalVariable(name: "s", scope: !1437, file: !453, line: 190, type: !138)
!1440 = !DILocalVariable(name: "errbuf", scope: !1437, file: !453, line: 193, type: !1441)
!1441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1442)
!1442 = !{!1443}
!1443 = !DISubrange(count: 1024)
!1444 = !DILocation(line: 0, scope: !1437, inlinedAt: !1445)
!1445 = distinct !DILocation(line: 234, column: 5, scope: !1434)
!1446 = !DILocation(line: 193, column: 3, scope: !1437, inlinedAt: !1445)
!1447 = !DILocation(line: 193, column: 8, scope: !1437, inlinedAt: !1445)
!1448 = !DILocation(line: 195, column: 7, scope: !1437, inlinedAt: !1445)
!1449 = !DILocation(line: 207, column: 9, scope: !1450, inlinedAt: !1445)
!1450 = distinct !DILexicalBlock(scope: !1437, file: !453, line: 207, column: 7)
!1451 = !DILocation(line: 207, column: 7, scope: !1437, inlinedAt: !1445)
!1452 = !DILocation(line: 208, column: 9, scope: !1450, inlinedAt: !1445)
!1453 = !DILocation(line: 208, column: 5, scope: !1450, inlinedAt: !1445)
!1454 = !DILocation(line: 214, column: 3, scope: !1437, inlinedAt: !1445)
!1455 = !DILocation(line: 216, column: 1, scope: !1437, inlinedAt: !1445)
!1456 = !DILocation(line: 234, column: 5, scope: !1434)
!1457 = !DILocation(line: 238, column: 3, scope: !1379)
!1458 = !DILocalVariable(name: "__c", arg: 1, scope: !1459, file: !1460, line: 101, type: !85)
!1459 = distinct !DISubprogram(name: "putc_unlocked", scope: !1460, file: !1460, line: 101, type: !1461, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !452, retainedNodes: !1463)
!1460 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1461 = !DISubroutineType(types: !1462)
!1462 = !{!85, !85, !1392}
!1463 = !{!1458, !1464}
!1464 = !DILocalVariable(name: "__stream", arg: 2, scope: !1459, file: !1460, line: 101, type: !1392)
!1465 = !DILocation(line: 0, scope: !1459, inlinedAt: !1466)
!1466 = distinct !DILocation(line: 238, column: 3, scope: !1379)
!1467 = !DILocation(line: 103, column: 10, scope: !1459, inlinedAt: !1466)
!1468 = !{!1469, !855, i64 40}
!1469 = !{!"_IO_FILE", !925, i64 0, !855, i64 8, !855, i64 16, !855, i64 24, !855, i64 32, !855, i64 40, !855, i64 48, !855, i64 56, !855, i64 64, !855, i64 72, !855, i64 80, !855, i64 88, !855, i64 96, !855, i64 104, !925, i64 112, !925, i64 116, !1218, i64 120, !966, i64 128, !856, i64 130, !856, i64 131, !855, i64 136, !1218, i64 144, !855, i64 152, !855, i64 160, !855, i64 168, !855, i64 176, !1218, i64 184, !925, i64 192, !856, i64 196}
!1470 = !{!1469, !855, i64 48}
!1471 = !{!"branch_weights", i32 2000, i32 1}
!1472 = !DILocation(line: 240, column: 3, scope: !1379)
!1473 = !DILocation(line: 241, column: 7, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1379, file: !453, line: 241, column: 7)
!1475 = !DILocation(line: 241, column: 7, scope: !1379)
!1476 = !DILocation(line: 242, column: 5, scope: !1474)
!1477 = !DILocation(line: 243, column: 1, scope: !1379)
!1478 = !DISubprogram(name: "__vfprintf_chk", scope: !910, file: !910, line: 96, type: !1479, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !863)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{!85, !1391, !85, !914, !463}
!1481 = !DISubprogram(name: "strerror_r", scope: !1045, file: !1045, line: 444, type: !1482, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !863)
!1482 = !DISubroutineType(types: !1483)
!1483 = !{!128, !85, !128, !136}
!1484 = !DISubprogram(name: "__overflow", scope: !919, file: !919, line: 886, type: !1485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !863)
!1485 = !DISubroutineType(types: !1486)
!1486 = !{!85, !1392, !85}
!1487 = !DISubprogram(name: "fflush_unlocked", scope: !919, file: !919, line: 239, type: !1488, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !863)
!1488 = !DISubroutineType(types: !1489)
!1489 = !{!85, !1392}
!1490 = !DISubprogram(name: "fcntl", scope: !1491, file: !1491, line: 149, type: !1492, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !863)
!1491 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1492 = !DISubroutineType(types: !1493)
!1493 = !{!85, !85, !85, null}
!1494 = distinct !DISubprogram(name: "error", scope: !453, file: !453, line: 285, type: !1495, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !452, retainedNodes: !1497)
!1495 = !DISubroutineType(types: !1496)
!1496 = !{null, !85, !85, !138, null}
!1497 = !{!1498, !1499, !1500, !1501}
!1498 = !DILocalVariable(name: "status", arg: 1, scope: !1494, file: !453, line: 285, type: !85)
!1499 = !DILocalVariable(name: "errnum", arg: 2, scope: !1494, file: !453, line: 285, type: !85)
!1500 = !DILocalVariable(name: "message", arg: 3, scope: !1494, file: !453, line: 285, type: !138)
!1501 = !DILocalVariable(name: "ap", scope: !1494, file: !453, line: 287, type: !1502)
!1502 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !919, line: 52, baseType: !1503)
!1503 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1504, line: 14, baseType: !1505)
!1504 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!1505 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !467, baseType: !1506)
!1506 = !DICompositeType(tag: DW_TAG_array_type, baseType: !464, size: 192, elements: !62)
!1507 = !DILocation(line: 0, scope: !1494)
!1508 = !DILocation(line: 287, column: 3, scope: !1494)
!1509 = !DILocation(line: 287, column: 11, scope: !1494)
!1510 = !DILocation(line: 288, column: 3, scope: !1494)
!1511 = !DILocation(line: 289, column: 3, scope: !1494)
!1512 = !DILocation(line: 290, column: 3, scope: !1494)
!1513 = !DILocation(line: 291, column: 1, scope: !1494)
!1514 = !DILocation(line: 0, scope: !460)
!1515 = !DILocation(line: 302, column: 7, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !460, file: !453, line: 302, column: 7)
!1517 = !DILocation(line: 302, column: 7, scope: !460)
!1518 = !DILocation(line: 307, column: 11, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1520, file: !453, line: 307, column: 11)
!1520 = distinct !DILexicalBlock(scope: !1516, file: !453, line: 303, column: 5)
!1521 = !DILocation(line: 307, column: 27, scope: !1519)
!1522 = !DILocation(line: 308, column: 11, scope: !1519)
!1523 = !DILocation(line: 308, column: 28, scope: !1519)
!1524 = !DILocation(line: 308, column: 25, scope: !1519)
!1525 = !DILocation(line: 309, column: 15, scope: !1519)
!1526 = !DILocation(line: 309, column: 33, scope: !1519)
!1527 = !DILocation(line: 310, column: 19, scope: !1519)
!1528 = !DILocation(line: 311, column: 22, scope: !1519)
!1529 = !DILocation(line: 311, column: 56, scope: !1519)
!1530 = !DILocation(line: 307, column: 11, scope: !1520)
!1531 = !DILocation(line: 316, column: 21, scope: !1520)
!1532 = !DILocation(line: 317, column: 23, scope: !1520)
!1533 = !DILocation(line: 318, column: 5, scope: !1520)
!1534 = !DILocation(line: 327, column: 3, scope: !460)
!1535 = !DILocation(line: 331, column: 7, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !460, file: !453, line: 331, column: 7)
!1537 = !DILocation(line: 331, column: 7, scope: !460)
!1538 = !DILocation(line: 332, column: 5, scope: !1536)
!1539 = !DILocation(line: 338, column: 7, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1536, file: !453, line: 334, column: 5)
!1541 = !DILocation(line: 346, column: 3, scope: !460)
!1542 = !DILocation(line: 350, column: 3, scope: !460)
!1543 = !DILocation(line: 356, column: 1, scope: !460)
!1544 = distinct !DISubprogram(name: "error_at_line", scope: !453, file: !453, line: 359, type: !1545, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !452, retainedNodes: !1547)
!1545 = !DISubroutineType(types: !1546)
!1546 = !{null, !85, !85, !138, !91, !138, null}
!1547 = !{!1548, !1549, !1550, !1551, !1552, !1553}
!1548 = !DILocalVariable(name: "status", arg: 1, scope: !1544, file: !453, line: 359, type: !85)
!1549 = !DILocalVariable(name: "errnum", arg: 2, scope: !1544, file: !453, line: 359, type: !85)
!1550 = !DILocalVariable(name: "file_name", arg: 3, scope: !1544, file: !453, line: 359, type: !138)
!1551 = !DILocalVariable(name: "line_number", arg: 4, scope: !1544, file: !453, line: 360, type: !91)
!1552 = !DILocalVariable(name: "message", arg: 5, scope: !1544, file: !453, line: 360, type: !138)
!1553 = !DILocalVariable(name: "ap", scope: !1544, file: !453, line: 362, type: !1502)
!1554 = !DILocation(line: 0, scope: !1544)
!1555 = !DILocation(line: 362, column: 3, scope: !1544)
!1556 = !DILocation(line: 362, column: 11, scope: !1544)
!1557 = !DILocation(line: 363, column: 3, scope: !1544)
!1558 = !DILocation(line: 364, column: 3, scope: !1544)
!1559 = !DILocation(line: 366, column: 3, scope: !1544)
!1560 = !DILocation(line: 367, column: 1, scope: !1544)
!1561 = distinct !DISubprogram(name: "getprogname", scope: !755, file: !755, line: 54, type: !1562, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !754, retainedNodes: !863)
!1562 = !DISubroutineType(types: !1563)
!1563 = !{!138}
!1564 = !DILocation(line: 58, column: 10, scope: !1561)
!1565 = !DILocation(line: 58, column: 3, scope: !1561)
!1566 = distinct !DISubprogram(name: "rpl_mknod", scope: !757, file: !757, line: 47, type: !1567, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !756, retainedNodes: !1569)
!1567 = !DISubroutineType(types: !1568)
!1568 = !{!85, !138, !1090, !130}
!1569 = !{!1570, !1571, !1572}
!1570 = !DILocalVariable(name: "name", arg: 1, scope: !1566, file: !757, line: 47, type: !138)
!1571 = !DILocalVariable(name: "mode", arg: 2, scope: !1566, file: !757, line: 47, type: !1090)
!1572 = !DILocalVariable(name: "dev", arg: 3, scope: !1566, file: !757, line: 47, type: !130)
!1573 = !DILocation(line: 0, scope: !1566)
!1574 = !DILocation(line: 68, column: 7, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1566, file: !757, line: 68, column: 7)
!1576 = !DILocation(line: 68, column: 23, scope: !1575)
!1577 = !DILocation(line: 69, column: 31, scope: !1575)
!1578 = !DILocation(line: 69, column: 12, scope: !1575)
!1579 = !DILocation(line: 69, column: 5, scope: !1575)
!1580 = !DILocation(line: 71, column: 10, scope: !1566)
!1581 = !DILocation(line: 71, column: 3, scope: !1566)
!1582 = !DILocation(line: 72, column: 1, scope: !1566)
!1583 = !DISubprogram(name: "mknod", scope: !1279, file: !1279, line: 404, type: !1584, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !863)
!1584 = !DISubroutineType(types: !1585)
!1585 = !{!85, !138, !1091, !132}
!1586 = distinct !DISubprogram(name: "mode_compile", scope: !759, file: !759, line: 134, type: !1587, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !758, retainedNodes: !1597)
!1587 = !DISubroutineType(types: !1588)
!1588 = !{!1589, !138}
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mode_change", file: !759, line: 98, size: 128, elements: !1591)
!1591 = !{!1592, !1593, !1594, !1595, !1596}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1590, file: !759, line: 100, baseType: !4, size: 8)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !1590, file: !759, line: 101, baseType: !4, size: 8, offset: 8)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "affected", scope: !1590, file: !759, line: 102, baseType: !1090, size: 32, offset: 32)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1590, file: !759, line: 103, baseType: !1090, size: 32, offset: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "mentioned", scope: !1590, file: !759, line: 104, baseType: !1090, size: 32, offset: 96)
!1597 = !{!1598, !1599, !1602, !1603, !1604, !1605, !1606, !1608, !1610, !1611, !1612, !1616, !1618, !1619, !1620, !1621, !1624, !1625, !1626, !1627}
!1598 = !DILocalVariable(name: "mode_string", arg: 1, scope: !1586, file: !759, line: 134, type: !138)
!1599 = !DILocalVariable(name: "p", scope: !1600, file: !759, line: 138, type: !138)
!1600 = distinct !DILexicalBlock(scope: !1601, file: !759, line: 137, column: 5)
!1601 = distinct !DILexicalBlock(scope: !1586, file: !759, line: 136, column: 7)
!1602 = !DILocalVariable(name: "octal_mode", scope: !1600, file: !759, line: 139, type: !91)
!1603 = !DILocalVariable(name: "mode", scope: !1600, file: !759, line: 140, type: !1090)
!1604 = !DILocalVariable(name: "mentioned", scope: !1600, file: !759, line: 141, type: !1090)
!1605 = !DILocalVariable(name: "mc", scope: !1586, file: !759, line: 163, type: !1589)
!1606 = !DILocalVariable(name: "needed", scope: !1607, file: !759, line: 167, type: !136)
!1607 = distinct !DILexicalBlock(scope: !1586, file: !759, line: 166, column: 3)
!1608 = !DILocalVariable(name: "p", scope: !1609, file: !759, line: 168, type: !138)
!1609 = distinct !DILexicalBlock(scope: !1607, file: !759, line: 168, column: 5)
!1610 = !DILocalVariable(name: "used", scope: !1586, file: !759, line: 175, type: !136)
!1611 = !DILocalVariable(name: "p", scope: !1586, file: !759, line: 176, type: !138)
!1612 = !DILocalVariable(name: "affected", scope: !1613, file: !759, line: 180, type: !1090)
!1613 = distinct !DILexicalBlock(scope: !1614, file: !759, line: 178, column: 5)
!1614 = distinct !DILexicalBlock(scope: !1615, file: !759, line: 177, column: 3)
!1615 = distinct !DILexicalBlock(scope: !1586, file: !759, line: 177, column: 3)
!1616 = !DILocalVariable(name: "op", scope: !1617, file: !759, line: 207, type: !4)
!1617 = distinct !DILexicalBlock(scope: !1613, file: !759, line: 206, column: 9)
!1618 = !DILocalVariable(name: "value", scope: !1617, file: !759, line: 208, type: !1090)
!1619 = !DILocalVariable(name: "mentioned", scope: !1617, file: !759, line: 209, type: !1090)
!1620 = !DILocalVariable(name: "flag", scope: !1617, file: !759, line: 210, type: !4)
!1621 = !DILocalVariable(name: "octal_mode", scope: !1622, file: !759, line: 217, type: !91)
!1622 = distinct !DILexicalBlock(scope: !1623, file: !759, line: 216, column: 15)
!1623 = distinct !DILexicalBlock(scope: !1617, file: !759, line: 213, column: 13)
!1624 = !DILocalVariable(name: "change", scope: !1617, file: !759, line: 287, type: !1589)
!1625 = !DILabel(scope: !1613, name: "no_more_affected", file: !759, line: 203)
!1626 = !DILabel(scope: !1623, name: "no_more_values", file: !759, line: 284)
!1627 = !DILabel(scope: !1586, name: "invalid", file: !759, line: 308)
!1628 = !DILocation(line: 0, scope: !1586)
!1629 = !DILocation(line: 136, column: 14, scope: !1601)
!1630 = !DILocation(line: 136, column: 27, scope: !1601)
!1631 = !DILocation(line: 146, column: 41, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1600, file: !759, line: 145, column: 9)
!1633 = !DILocation(line: 0, scope: !1600)
!1634 = !DILocation(line: 146, column: 26, scope: !1632)
!1635 = !DILocation(line: 146, column: 39, scope: !1632)
!1636 = !DILocation(line: 146, column: 46, scope: !1632)
!1637 = !DILocation(line: 147, column: 20, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1632, file: !759, line: 147, column: 15)
!1639 = !DILocation(line: 147, column: 15, scope: !1632)
!1640 = !DILocation(line: 146, column: 43, scope: !1632)
!1641 = !DILocation(line: 150, column: 21, scope: !1600)
!1642 = !DILocation(line: 150, column: 24, scope: !1600)
!1643 = distinct !{!1643, !1644, !1645, !971}
!1644 = !DILocation(line: 144, column: 7, scope: !1600)
!1645 = !DILocation(line: 150, column: 35, scope: !1600)
!1646 = !DILocation(line: 152, column: 11, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1600, file: !759, line: 152, column: 11)
!1648 = !DILocation(line: 152, column: 11, scope: !1600)
!1649 = !DILocation(line: 156, column: 22, scope: !1600)
!1650 = !DILocation(line: 156, column: 36, scope: !1600)
!1651 = !DILocation(line: 156, column: 20, scope: !1600)
!1652 = !DILocalVariable(name: "new_mode", arg: 1, scope: !1653, file: !759, line: 112, type: !1090)
!1653 = distinct !DISubprogram(name: "make_node_op_equals", scope: !759, file: !759, line: 112, type: !1654, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !758, retainedNodes: !1656)
!1654 = !DISubroutineType(types: !1655)
!1655 = !{!1589, !1090, !1090}
!1656 = !{!1652, !1657, !1658}
!1657 = !DILocalVariable(name: "mentioned", arg: 2, scope: !1653, file: !759, line: 112, type: !1090)
!1658 = !DILocalVariable(name: "p", scope: !1653, file: !759, line: 114, type: !1589)
!1659 = !DILocation(line: 0, scope: !1653, inlinedAt: !1660)
!1660 = distinct !DILocation(line: 159, column: 14, scope: !1600)
!1661 = !DILocation(line: 114, column: 27, scope: !1653, inlinedAt: !1660)
!1662 = !DILocation(line: 115, column: 9, scope: !1653, inlinedAt: !1660)
!1663 = !{!1664, !856, i64 0}
!1664 = !{!"mode_change", !856, i64 0, !856, i64 1, !925, i64 4, !925, i64 8, !925, i64 12}
!1665 = !DILocation(line: 116, column: 6, scope: !1653, inlinedAt: !1660)
!1666 = !DILocation(line: 116, column: 11, scope: !1653, inlinedAt: !1660)
!1667 = !{!1664, !856, i64 1}
!1668 = !DILocation(line: 117, column: 6, scope: !1653, inlinedAt: !1660)
!1669 = !DILocation(line: 117, column: 15, scope: !1653, inlinedAt: !1660)
!1670 = !{!1664, !925, i64 4}
!1671 = !DILocation(line: 118, column: 6, scope: !1653, inlinedAt: !1660)
!1672 = !DILocation(line: 118, column: 12, scope: !1653, inlinedAt: !1660)
!1673 = !{!1664, !925, i64 8}
!1674 = !DILocation(line: 119, column: 6, scope: !1653, inlinedAt: !1660)
!1675 = !DILocation(line: 119, column: 16, scope: !1653, inlinedAt: !1660)
!1676 = !{!1664, !925, i64 12}
!1677 = !DILocation(line: 120, column: 8, scope: !1653, inlinedAt: !1660)
!1678 = !DILocation(line: 120, column: 13, scope: !1653, inlinedAt: !1660)
!1679 = !DILocation(line: 159, column: 7, scope: !1600)
!1680 = !DILocation(line: 168, column: 39, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1609, file: !759, line: 168, column: 5)
!1682 = !DILocation(line: 0, scope: !1607)
!1683 = !DILocation(line: 168, scope: !1609)
!1684 = !DILocation(line: 0, scope: !1609)
!1685 = !DILocation(line: 168, column: 5, scope: !1609)
!1686 = !DILocation(line: 170, column: 10, scope: !1607)
!1687 = !DILocation(line: 177, column: 8, scope: !1615)
!1688 = !DILocation(line: 169, column: 41, scope: !1681)
!1689 = !DILocation(line: 169, column: 14, scope: !1681)
!1690 = !DILocation(line: 168, column: 44, scope: !1681)
!1691 = !DILocation(line: 168, column: 5, scope: !1681)
!1692 = distinct !{!1692, !1685, !1693, !971}
!1693 = !DILocation(line: 169, column: 53, scope: !1609)
!1694 = !DILocation(line: 175, column: 10, scope: !1586)
!1695 = !DILocation(line: 177, scope: !1615)
!1696 = !DILocation(line: 0, scope: !1617)
!1697 = !DILocation(line: 0, scope: !1613)
!1698 = !DILocation(line: 183, column: 7, scope: !1613)
!1699 = !DILocation(line: 0, scope: !1615)
!1700 = !DILocation(line: 184, column: 17, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1702, file: !759, line: 183, column: 7)
!1702 = distinct !DILexicalBlock(scope: !1613, file: !759, line: 183, column: 7)
!1703 = !DILocation(line: 184, column: 9, scope: !1701)
!1704 = !DILocation(line: 212, column: 11, scope: !1617)
!1705 = !DILocation(line: 189, column: 22, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1701, file: !759, line: 185, column: 11)
!1707 = !DILocation(line: 190, column: 13, scope: !1706)
!1708 = !DILocation(line: 192, column: 22, scope: !1706)
!1709 = !DILocation(line: 193, column: 13, scope: !1706)
!1710 = !DILocation(line: 195, column: 22, scope: !1706)
!1711 = !DILocation(line: 196, column: 13, scope: !1706)
!1712 = !DILocation(line: 0, scope: !1706)
!1713 = !DILocation(line: 183, column: 16, scope: !1701)
!1714 = !DILocation(line: 183, column: 7, scope: !1701)
!1715 = distinct !{!1715, !1716, !1717}
!1716 = !DILocation(line: 183, column: 7, scope: !1702)
!1717 = !DILocation(line: 202, column: 11, scope: !1702)
!1718 = !DILocation(line: 207, column: 21, scope: !1617)
!1719 = !DILocation(line: 180, column: 14, scope: !1613)
!1720 = !DILocation(line: 207, column: 23, scope: !1617)
!1721 = !DILocation(line: 212, column: 19, scope: !1617)
!1722 = !DILocation(line: 219, column: 17, scope: !1622)
!1723 = !DILocation(line: 221, column: 51, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1622, file: !759, line: 220, column: 19)
!1725 = !DILocation(line: 0, scope: !1622)
!1726 = !DILocation(line: 221, column: 36, scope: !1724)
!1727 = !DILocation(line: 221, column: 49, scope: !1724)
!1728 = !DILocation(line: 221, column: 56, scope: !1724)
!1729 = !DILocation(line: 222, column: 30, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1724, file: !759, line: 222, column: 25)
!1731 = !DILocation(line: 222, column: 25, scope: !1724)
!1732 = !DILocation(line: 221, column: 53, scope: !1724)
!1733 = !DILocation(line: 225, column: 31, scope: !1622)
!1734 = !DILocation(line: 225, column: 34, scope: !1622)
!1735 = distinct !{!1735, !1722, !1736, !971}
!1736 = !DILocation(line: 225, column: 45, scope: !1622)
!1737 = !DILocation(line: 227, column: 21, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1622, file: !759, line: 227, column: 21)
!1739 = !DILocation(line: 227, column: 30, scope: !1738)
!1740 = !DILocation(line: 227, column: 37, scope: !1738)
!1741 = !DILocation(line: 239, column: 16, scope: !1623)
!1742 = !DILocation(line: 240, column: 15, scope: !1623)
!1743 = !DILocation(line: 245, column: 16, scope: !1623)
!1744 = !DILocation(line: 246, column: 15, scope: !1623)
!1745 = !DILocation(line: 251, column: 16, scope: !1623)
!1746 = !DILocation(line: 252, column: 15, scope: !1623)
!1747 = !DILocation(line: 259, column: 25, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1749, file: !759, line: 258, column: 15)
!1749 = distinct !DILexicalBlock(scope: !1623, file: !759, line: 258, column: 15)
!1750 = !DILocation(line: 0, scope: !1623)
!1751 = !DILocation(line: 256, column: 20, scope: !1623)
!1752 = !DILocation(line: 259, column: 17, scope: !1748)
!1753 = !DILocation(line: 262, column: 27, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1748, file: !759, line: 260, column: 19)
!1755 = !DILocation(line: 263, column: 21, scope: !1754)
!1756 = !DILocation(line: 265, column: 27, scope: !1754)
!1757 = !DILocation(line: 266, column: 21, scope: !1754)
!1758 = !DILocation(line: 268, column: 27, scope: !1754)
!1759 = !DILocation(line: 269, column: 21, scope: !1754)
!1760 = !DILocation(line: 275, column: 27, scope: !1754)
!1761 = !DILocation(line: 276, column: 21, scope: !1754)
!1762 = !DILocation(line: 279, column: 27, scope: !1754)
!1763 = !DILocation(line: 280, column: 21, scope: !1754)
!1764 = !DILocation(line: 258, column: 24, scope: !1748)
!1765 = !DILocation(line: 258, column: 15, scope: !1748)
!1766 = distinct !{!1766, !1767, !1768}
!1767 = !DILocation(line: 258, column: 15, scope: !1749)
!1768 = !DILocation(line: 283, column: 19, scope: !1749)
!1769 = !DILocation(line: 209, column: 18, scope: !1617)
!1770 = !DILocation(line: 294, column: 14, scope: !1617)
!1771 = !DILocation(line: 288, column: 28, scope: !1617)
!1772 = !DILocation(line: 288, column: 21, scope: !1617)
!1773 = !DILocation(line: 289, column: 22, scope: !1617)
!1774 = !DILocation(line: 290, column: 19, scope: !1617)
!1775 = !DILocation(line: 290, column: 24, scope: !1617)
!1776 = !DILocation(line: 291, column: 19, scope: !1617)
!1777 = !DILocation(line: 291, column: 28, scope: !1617)
!1778 = !DILocation(line: 292, column: 19, scope: !1617)
!1779 = !DILocation(line: 292, column: 25, scope: !1617)
!1780 = !DILocation(line: 293, column: 19, scope: !1617)
!1781 = !DILocation(line: 293, column: 29, scope: !1617)
!1782 = !DILocation(line: 296, column: 14, scope: !1613)
!1783 = !DILocation(line: 296, column: 24, scope: !1613)
!1784 = !DILocation(line: 177, column: 28, scope: !1614)
!1785 = !DILocation(line: 177, column: 3, scope: !1614)
!1786 = distinct !{!1786, !1787, !1788}
!1787 = !DILocation(line: 177, column: 3, scope: !1615)
!1788 = !DILocation(line: 300, column: 5, scope: !1615)
!1789 = !DILocation(line: 304, column: 16, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1791, file: !759, line: 303, column: 5)
!1791 = distinct !DILexicalBlock(scope: !1586, file: !759, line: 302, column: 7)
!1792 = !DILocation(line: 304, column: 21, scope: !1790)
!1793 = !DILocation(line: 305, column: 7, scope: !1790)
!1794 = !DILocation(line: 308, column: 1, scope: !1586)
!1795 = !DILocation(line: 309, column: 3, scope: !1586)
!1796 = !DILocation(line: 310, column: 3, scope: !1586)
!1797 = !DILocation(line: 311, column: 1, scope: !1586)
!1798 = distinct !DISubprogram(name: "mode_create_from_ref", scope: !759, file: !759, line: 317, type: !1587, scopeLine: 318, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !758, retainedNodes: !1799)
!1799 = !{!1800, !1801}
!1800 = !DILocalVariable(name: "ref_file", arg: 1, scope: !1798, file: !759, line: 317, type: !138)
!1801 = !DILocalVariable(name: "ref_stats", scope: !1798, file: !759, line: 319, type: !1802)
!1802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1803, line: 26, size: 1152, elements: !1804)
!1803 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "3ba283bc334370fe631cbc82f5229ed7")
!1804 = !{!1805, !1806, !1808, !1810, !1811, !1813, !1815, !1816, !1817, !1818, !1820, !1822, !1830, !1831, !1832}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1802, file: !1803, line: 31, baseType: !132, size: 64)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1802, file: !1803, line: 36, baseType: !1807, size: 64, offset: 64)
!1807 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !133, line: 148, baseType: !134)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1802, file: !1803, line: 44, baseType: !1809, size: 64, offset: 128)
!1809 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !133, line: 151, baseType: !134)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1802, file: !1803, line: 45, baseType: !1091, size: 32, offset: 192)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1802, file: !1803, line: 47, baseType: !1812, size: 32, offset: 224)
!1812 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !133, line: 146, baseType: !91)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1802, file: !1803, line: 48, baseType: !1814, size: 32, offset: 256)
!1814 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !133, line: 147, baseType: !91)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1802, file: !1803, line: 50, baseType: !85, size: 32, offset: 288)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1802, file: !1803, line: 52, baseType: !132, size: 64, offset: 320)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1802, file: !1803, line: 57, baseType: !273, size: 64, offset: 384)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1802, file: !1803, line: 61, baseType: !1819, size: 64, offset: 448)
!1819 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !133, line: 175, baseType: !274)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1802, file: !1803, line: 63, baseType: !1821, size: 64, offset: 512)
!1821 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !133, line: 180, baseType: !274)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1802, file: !1803, line: 74, baseType: !1823, size: 128, offset: 576)
!1823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1824, line: 11, size: 128, elements: !1825)
!1824 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!1825 = !{!1826, !1828}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1823, file: !1824, line: 16, baseType: !1827, size: 64)
!1827 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !133, line: 160, baseType: !274)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1823, file: !1824, line: 21, baseType: !1829, size: 64, offset: 64)
!1829 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !133, line: 197, baseType: !274)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1802, file: !1803, line: 75, baseType: !1823, size: 128, offset: 704)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1802, file: !1803, line: 76, baseType: !1823, size: 128, offset: 832)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1802, file: !1803, line: 89, baseType: !1833, size: 192, offset: 960)
!1833 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1829, size: 192, elements: !205)
!1834 = !DILocation(line: 0, scope: !1798)
!1835 = !DILocation(line: 319, column: 3, scope: !1798)
!1836 = !DILocation(line: 319, column: 15, scope: !1798)
!1837 = !DILocation(line: 321, column: 7, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1798, file: !759, line: 321, column: 7)
!1839 = !DILocation(line: 321, column: 35, scope: !1838)
!1840 = !DILocation(line: 321, column: 7, scope: !1798)
!1841 = !DILocation(line: 323, column: 41, scope: !1798)
!1842 = !{!1843, !925, i64 24}
!1843 = !{!"stat", !1218, i64 0, !1218, i64 8, !1218, i64 16, !925, i64 24, !925, i64 28, !925, i64 32, !925, i64 36, !1218, i64 40, !1218, i64 48, !1218, i64 56, !1218, i64 64, !1844, i64 72, !1844, i64 88, !1844, i64 104, !856, i64 120}
!1844 = !{!"timespec", !1218, i64 0, !1218, i64 8}
!1845 = !DILocation(line: 0, scope: !1653, inlinedAt: !1846)
!1846 = distinct !DILocation(line: 323, column: 10, scope: !1798)
!1847 = !DILocation(line: 114, column: 27, scope: !1653, inlinedAt: !1846)
!1848 = !DILocation(line: 115, column: 9, scope: !1653, inlinedAt: !1846)
!1849 = !DILocation(line: 116, column: 6, scope: !1653, inlinedAt: !1846)
!1850 = !DILocation(line: 116, column: 11, scope: !1653, inlinedAt: !1846)
!1851 = !DILocation(line: 117, column: 6, scope: !1653, inlinedAt: !1846)
!1852 = !DILocation(line: 117, column: 15, scope: !1653, inlinedAt: !1846)
!1853 = !DILocation(line: 118, column: 6, scope: !1653, inlinedAt: !1846)
!1854 = !DILocation(line: 118, column: 12, scope: !1653, inlinedAt: !1846)
!1855 = !DILocation(line: 119, column: 6, scope: !1653, inlinedAt: !1846)
!1856 = !DILocation(line: 119, column: 16, scope: !1653, inlinedAt: !1846)
!1857 = !DILocation(line: 120, column: 8, scope: !1653, inlinedAt: !1846)
!1858 = !DILocation(line: 120, column: 13, scope: !1653, inlinedAt: !1846)
!1859 = !DILocation(line: 323, column: 3, scope: !1798)
!1860 = !DILocation(line: 324, column: 1, scope: !1798)
!1861 = !DISubprogram(name: "stat", scope: !1279, file: !1279, line: 205, type: !1862, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !863)
!1862 = !DISubroutineType(types: !1863)
!1863 = !{!85, !914, !1864}
!1864 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1865)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1866 = distinct !DISubprogram(name: "mode_adjust", scope: !759, file: !759, line: 340, type: !1867, scopeLine: 342, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !758, retainedNodes: !1872)
!1867 = !DISubroutineType(types: !1868)
!1868 = !{!1090, !1090, !234, !1090, !1869, !1871}
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1590)
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1872 = !{!1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1884, !1885, !1886}
!1873 = !DILocalVariable(name: "oldmode", arg: 1, scope: !1866, file: !759, line: 340, type: !1090)
!1874 = !DILocalVariable(name: "dir", arg: 2, scope: !1866, file: !759, line: 340, type: !234)
!1875 = !DILocalVariable(name: "umask_value", arg: 3, scope: !1866, file: !759, line: 340, type: !1090)
!1876 = !DILocalVariable(name: "changes", arg: 4, scope: !1866, file: !759, line: 341, type: !1869)
!1877 = !DILocalVariable(name: "pmode_bits", arg: 5, scope: !1866, file: !759, line: 341, type: !1871)
!1878 = !DILocalVariable(name: "newmode", scope: !1866, file: !759, line: 344, type: !1090)
!1879 = !DILocalVariable(name: "mode_bits", scope: !1866, file: !759, line: 347, type: !1090)
!1880 = !DILocalVariable(name: "affected", scope: !1881, file: !759, line: 351, type: !1090)
!1881 = distinct !DILexicalBlock(scope: !1882, file: !759, line: 350, column: 5)
!1882 = distinct !DILexicalBlock(scope: !1883, file: !759, line: 349, column: 3)
!1883 = distinct !DILexicalBlock(scope: !1866, file: !759, line: 349, column: 3)
!1884 = !DILocalVariable(name: "omit_change", scope: !1881, file: !759, line: 352, type: !1090)
!1885 = !DILocalVariable(name: "value", scope: !1881, file: !759, line: 354, type: !1090)
!1886 = !DILocalVariable(name: "preserved", scope: !1887, file: !759, line: 394, type: !1090)
!1887 = distinct !DILexicalBlock(scope: !1888, file: !759, line: 393, column: 11)
!1888 = distinct !DILexicalBlock(scope: !1881, file: !759, line: 388, column: 9)
!1889 = !DILocation(line: 0, scope: !1866)
!1890 = !DILocation(line: 344, column: 28, scope: !1866)
!1891 = !DILocation(line: 349, column: 19, scope: !1882)
!1892 = !DILocation(line: 349, column: 24, scope: !1882)
!1893 = !DILocation(line: 349, column: 3, scope: !1883)
!1894 = !DILocation(line: 349, column: 10, scope: !1882)
!1895 = !DILocation(line: 351, column: 34, scope: !1881)
!1896 = !DILocation(line: 0, scope: !1881)
!1897 = !DILocation(line: 353, column: 52, scope: !1881)
!1898 = !DILocation(line: 353, column: 41, scope: !1881)
!1899 = !DILocation(line: 353, column: 39, scope: !1881)
!1900 = !DILocation(line: 354, column: 31, scope: !1881)
!1901 = !DILocation(line: 356, column: 7, scope: !1881)
!1902 = !DILocation(line: 363, column: 17, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1881, file: !759, line: 357, column: 9)
!1904 = !DILocation(line: 366, column: 28, scope: !1903)
!1905 = !DILocation(line: 366, column: 22, scope: !1903)
!1906 = !DILocation(line: 368, column: 30, scope: !1903)
!1907 = !DILocation(line: 368, column: 24, scope: !1903)
!1908 = !DILocation(line: 370, column: 30, scope: !1903)
!1909 = !DILocation(line: 370, column: 24, scope: !1903)
!1910 = !DILocation(line: 370, column: 21, scope: !1903)
!1911 = !DILocation(line: 366, column: 17, scope: !1903)
!1912 = !DILocation(line: 372, column: 11, scope: !1903)
!1913 = !DILocation(line: 377, column: 24, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1903, file: !759, line: 377, column: 15)
!1915 = !DILocation(line: 377, column: 57, scope: !1914)
!1916 = !DILocation(line: 377, column: 15, scope: !1903)
!1917 = !DILocation(line: 385, column: 17, scope: !1881)
!1918 = !DILocation(line: 385, column: 55, scope: !1881)
!1919 = !DILocation(line: 385, column: 53, scope: !1881)
!1920 = !DILocation(line: 385, column: 13, scope: !1881)
!1921 = !DILocation(line: 387, column: 24, scope: !1881)
!1922 = !DILocation(line: 387, column: 15, scope: !1881)
!1923 = !DILocation(line: 387, column: 7, scope: !1881)
!1924 = !DILocation(line: 394, column: 33, scope: !1887)
!1925 = !DILocation(line: 394, column: 59, scope: !1887)
!1926 = !DILocation(line: 0, scope: !1887)
!1927 = !DILocation(line: 395, column: 42, scope: !1887)
!1928 = !DILocation(line: 395, column: 23, scope: !1887)
!1929 = !DILocation(line: 396, column: 32, scope: !1887)
!1930 = !DILocation(line: 396, column: 45, scope: !1887)
!1931 = !DILocation(line: 401, column: 21, scope: !1888)
!1932 = !DILocation(line: 402, column: 19, scope: !1888)
!1933 = !DILocation(line: 403, column: 11, scope: !1888)
!1934 = !DILocation(line: 406, column: 21, scope: !1888)
!1935 = !DILocation(line: 407, column: 22, scope: !1888)
!1936 = !DILocation(line: 407, column: 19, scope: !1888)
!1937 = !DILocation(line: 408, column: 11, scope: !1888)
!1938 = !DILocation(line: 349, column: 45, scope: !1882)
!1939 = distinct !{!1939, !1893, !1940, !971}
!1940 = !DILocation(line: 410, column: 5, scope: !1883)
!1941 = !DILocation(line: 347, column: 10, scope: !1866)
!1942 = !DILocation(line: 344, column: 10, scope: !1866)
!1943 = !DILocation(line: 412, column: 7, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1866, file: !759, line: 412, column: 7)
!1945 = !DILocation(line: 412, column: 7, scope: !1866)
!1946 = !DILocation(line: 413, column: 17, scope: !1944)
!1947 = !DILocation(line: 413, column: 5, scope: !1944)
!1948 = !DILocation(line: 414, column: 3, scope: !1866)
!1949 = distinct !DISubprogram(name: "set_program_name", scope: !502, file: !502, line: 37, type: !875, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !501, retainedNodes: !1950)
!1950 = !{!1951, !1952, !1953}
!1951 = !DILocalVariable(name: "argv0", arg: 1, scope: !1949, file: !502, line: 37, type: !138)
!1952 = !DILocalVariable(name: "slash", scope: !1949, file: !502, line: 44, type: !138)
!1953 = !DILocalVariable(name: "base", scope: !1949, file: !502, line: 45, type: !138)
!1954 = !DILocation(line: 0, scope: !1949)
!1955 = !DILocation(line: 44, column: 23, scope: !1949)
!1956 = !DILocation(line: 45, column: 22, scope: !1949)
!1957 = !DILocation(line: 46, column: 17, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1949, file: !502, line: 46, column: 7)
!1959 = !DILocation(line: 46, column: 9, scope: !1958)
!1960 = !DILocation(line: 46, column: 25, scope: !1958)
!1961 = !DILocation(line: 46, column: 40, scope: !1958)
!1962 = !DILocalVariable(name: "__s1", arg: 1, scope: !1963, file: !937, line: 974, type: !1073)
!1963 = distinct !DISubprogram(name: "memeq", scope: !937, file: !937, line: 974, type: !1964, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !501, retainedNodes: !1966)
!1964 = !DISubroutineType(types: !1965)
!1965 = !{!234, !1073, !1073, !136}
!1966 = !{!1962, !1967, !1968}
!1967 = !DILocalVariable(name: "__s2", arg: 2, scope: !1963, file: !937, line: 974, type: !1073)
!1968 = !DILocalVariable(name: "__n", arg: 3, scope: !1963, file: !937, line: 974, type: !136)
!1969 = !DILocation(line: 0, scope: !1963, inlinedAt: !1970)
!1970 = distinct !DILocation(line: 46, column: 28, scope: !1958)
!1971 = !DILocation(line: 976, column: 11, scope: !1963, inlinedAt: !1970)
!1972 = !DILocation(line: 976, column: 10, scope: !1963, inlinedAt: !1970)
!1973 = !DILocation(line: 46, column: 7, scope: !1949)
!1974 = !DILocation(line: 49, column: 11, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1976, file: !502, line: 49, column: 11)
!1976 = distinct !DILexicalBlock(scope: !1958, file: !502, line: 47, column: 5)
!1977 = !DILocation(line: 49, column: 36, scope: !1975)
!1978 = !DILocation(line: 49, column: 11, scope: !1976)
!1979 = !DILocation(line: 65, column: 16, scope: !1949)
!1980 = !DILocation(line: 71, column: 27, scope: !1949)
!1981 = !DILocation(line: 74, column: 33, scope: !1949)
!1982 = !DILocation(line: 76, column: 1, scope: !1949)
!1983 = !DISubprogram(name: "strrchr", scope: !1045, file: !1045, line: 273, type: !1060, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !863)
!1984 = !DILocation(line: 0, scope: !511)
!1985 = !DILocation(line: 40, column: 29, scope: !511)
!1986 = !DILocation(line: 41, column: 19, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !511, file: !512, line: 41, column: 7)
!1988 = !DILocation(line: 41, column: 7, scope: !511)
!1989 = !DILocation(line: 47, column: 3, scope: !511)
!1990 = !DILocation(line: 48, column: 3, scope: !511)
!1991 = !DILocation(line: 48, column: 13, scope: !511)
!1992 = !DILocalVariable(name: "ps", arg: 1, scope: !1993, file: !1994, line: 1135, type: !1997)
!1993 = distinct !DISubprogram(name: "mbszero", scope: !1994, file: !1994, line: 1135, type: !1995, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !515, retainedNodes: !1998)
!1994 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1995 = !DISubroutineType(types: !1996)
!1996 = !{null, !1997}
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!1998 = !{!1992}
!1999 = !DILocation(line: 0, scope: !1993, inlinedAt: !2000)
!2000 = distinct !DILocation(line: 48, column: 18, scope: !511)
!2001 = !DILocalVariable(name: "__dest", arg: 1, scope: !2002, file: !2003, line: 57, type: !129)
!2002 = distinct !DISubprogram(name: "memset", scope: !2003, file: !2003, line: 57, type: !2004, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !515, retainedNodes: !2006)
!2003 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!2004 = !DISubroutineType(types: !2005)
!2005 = !{!129, !129, !85, !136}
!2006 = !{!2001, !2007, !2008}
!2007 = !DILocalVariable(name: "__ch", arg: 2, scope: !2002, file: !2003, line: 57, type: !85)
!2008 = !DILocalVariable(name: "__len", arg: 3, scope: !2002, file: !2003, line: 57, type: !136)
!2009 = !DILocation(line: 0, scope: !2002, inlinedAt: !2010)
!2010 = distinct !DILocation(line: 1137, column: 3, scope: !1993, inlinedAt: !2000)
!2011 = !DILocation(line: 59, column: 10, scope: !2002, inlinedAt: !2010)
!2012 = !DILocation(line: 49, column: 7, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !511, file: !512, line: 49, column: 7)
!2014 = !DILocation(line: 49, column: 39, scope: !2013)
!2015 = !DILocation(line: 49, column: 44, scope: !2013)
!2016 = !DILocation(line: 54, column: 1, scope: !511)
!2017 = !DISubprogram(name: "mbrtoc32", scope: !523, file: !523, line: 57, type: !2018, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !863)
!2018 = !DISubroutineType(types: !2019)
!2019 = !{!136, !2020, !914, !136, !2022}
!2020 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2021)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!2022 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1997)
!2023 = distinct !DISubprogram(name: "clone_quoting_options", scope: !542, file: !542, line: 113, type: !2024, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !563, retainedNodes: !2027)
!2024 = !DISubroutineType(types: !2025)
!2025 = !{!2026, !2026}
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!2027 = !{!2028, !2029, !2030}
!2028 = !DILocalVariable(name: "o", arg: 1, scope: !2023, file: !542, line: 113, type: !2026)
!2029 = !DILocalVariable(name: "saved_errno", scope: !2023, file: !542, line: 115, type: !85)
!2030 = !DILocalVariable(name: "p", scope: !2023, file: !542, line: 116, type: !2026)
!2031 = !DILocation(line: 0, scope: !2023)
!2032 = !DILocation(line: 115, column: 21, scope: !2023)
!2033 = !DILocation(line: 116, column: 40, scope: !2023)
!2034 = !DILocation(line: 116, column: 31, scope: !2023)
!2035 = !DILocation(line: 118, column: 9, scope: !2023)
!2036 = !DILocation(line: 119, column: 3, scope: !2023)
!2037 = distinct !DISubprogram(name: "get_quoting_style", scope: !542, file: !542, line: 124, type: !2038, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !563, retainedNodes: !2042)
!2038 = !DISubroutineType(types: !2039)
!2039 = !{!98, !2040}
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !578)
!2042 = !{!2043}
!2043 = !DILocalVariable(name: "o", arg: 1, scope: !2037, file: !542, line: 124, type: !2040)
!2044 = !DILocation(line: 0, scope: !2037)
!2045 = !DILocation(line: 126, column: 11, scope: !2037)
!2046 = !DILocation(line: 126, column: 46, scope: !2037)
!2047 = !{!2048, !856, i64 0}
!2048 = !{!"quoting_options", !856, i64 0, !925, i64 4, !856, i64 8, !855, i64 40, !855, i64 48}
!2049 = !DILocation(line: 126, column: 3, scope: !2037)
!2050 = distinct !DISubprogram(name: "set_quoting_style", scope: !542, file: !542, line: 132, type: !2051, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !563, retainedNodes: !2053)
!2051 = !DISubroutineType(types: !2052)
!2052 = !{null, !2026, !98}
!2053 = !{!2054, !2055}
!2054 = !DILocalVariable(name: "o", arg: 1, scope: !2050, file: !542, line: 132, type: !2026)
!2055 = !DILocalVariable(name: "s", arg: 2, scope: !2050, file: !542, line: 132, type: !98)
!2056 = !DILocation(line: 0, scope: !2050)
!2057 = !DILocation(line: 134, column: 4, scope: !2050)
!2058 = !DILocation(line: 134, column: 45, scope: !2050)
!2059 = !DILocation(line: 135, column: 1, scope: !2050)
!2060 = distinct !DISubprogram(name: "set_char_quoting", scope: !542, file: !542, line: 143, type: !2061, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !563, retainedNodes: !2063)
!2061 = !DISubroutineType(types: !2062)
!2062 = !{!85, !2026, !4, !85}
!2063 = !{!2064, !2065, !2066, !2067, !2068, !2070, !2071}
!2064 = !DILocalVariable(name: "o", arg: 1, scope: !2060, file: !542, line: 143, type: !2026)
!2065 = !DILocalVariable(name: "c", arg: 2, scope: !2060, file: !542, line: 143, type: !4)
!2066 = !DILocalVariable(name: "i", arg: 3, scope: !2060, file: !542, line: 143, type: !85)
!2067 = !DILocalVariable(name: "uc", scope: !2060, file: !542, line: 145, type: !140)
!2068 = !DILocalVariable(name: "p", scope: !2060, file: !542, line: 146, type: !2069)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!2070 = !DILocalVariable(name: "shift", scope: !2060, file: !542, line: 148, type: !85)
!2071 = !DILocalVariable(name: "r", scope: !2060, file: !542, line: 149, type: !91)
!2072 = !DILocation(line: 0, scope: !2060)
!2073 = !DILocation(line: 147, column: 6, scope: !2060)
!2074 = !DILocation(line: 147, column: 41, scope: !2060)
!2075 = !DILocation(line: 147, column: 62, scope: !2060)
!2076 = !DILocation(line: 147, column: 57, scope: !2060)
!2077 = !DILocation(line: 148, column: 15, scope: !2060)
!2078 = !DILocation(line: 149, column: 21, scope: !2060)
!2079 = !DILocation(line: 149, column: 24, scope: !2060)
!2080 = !DILocation(line: 149, column: 34, scope: !2060)
!2081 = !DILocation(line: 150, column: 19, scope: !2060)
!2082 = !DILocation(line: 150, column: 24, scope: !2060)
!2083 = !DILocation(line: 150, column: 6, scope: !2060)
!2084 = !DILocation(line: 151, column: 3, scope: !2060)
!2085 = distinct !DISubprogram(name: "set_quoting_flags", scope: !542, file: !542, line: 159, type: !2086, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !563, retainedNodes: !2088)
!2086 = !DISubroutineType(types: !2087)
!2087 = !{!85, !2026, !85}
!2088 = !{!2089, !2090, !2091}
!2089 = !DILocalVariable(name: "o", arg: 1, scope: !2085, file: !542, line: 159, type: !2026)
!2090 = !DILocalVariable(name: "i", arg: 2, scope: !2085, file: !542, line: 159, type: !85)
!2091 = !DILocalVariable(name: "r", scope: !2085, file: !542, line: 163, type: !85)
!2092 = !DILocation(line: 0, scope: !2085)
!2093 = !DILocation(line: 161, column: 8, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2085, file: !542, line: 161, column: 7)
!2095 = !DILocation(line: 161, column: 7, scope: !2085)
!2096 = !DILocation(line: 163, column: 14, scope: !2085)
!2097 = !{!2048, !925, i64 4}
!2098 = !DILocation(line: 164, column: 12, scope: !2085)
!2099 = !DILocation(line: 165, column: 3, scope: !2085)
!2100 = distinct !DISubprogram(name: "set_custom_quoting", scope: !542, file: !542, line: 169, type: !2101, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !563, retainedNodes: !2103)
!2101 = !DISubroutineType(types: !2102)
!2102 = !{null, !2026, !138, !138}
!2103 = !{!2104, !2105, !2106}
!2104 = !DILocalVariable(name: "o", arg: 1, scope: !2100, file: !542, line: 169, type: !2026)
!2105 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2100, file: !542, line: 170, type: !138)
!2106 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2100, file: !542, line: 170, type: !138)
!2107 = !DILocation(line: 0, scope: !2100)
!2108 = !DILocation(line: 172, column: 8, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2100, file: !542, line: 172, column: 7)
!2110 = !DILocation(line: 172, column: 7, scope: !2100)
!2111 = !DILocation(line: 174, column: 12, scope: !2100)
!2112 = !DILocation(line: 175, column: 8, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2100, file: !542, line: 175, column: 7)
!2114 = !DILocation(line: 175, column: 19, scope: !2113)
!2115 = !DILocation(line: 176, column: 5, scope: !2113)
!2116 = !DILocation(line: 177, column: 6, scope: !2100)
!2117 = !DILocation(line: 177, column: 17, scope: !2100)
!2118 = !{!2048, !855, i64 40}
!2119 = !DILocation(line: 178, column: 6, scope: !2100)
!2120 = !DILocation(line: 178, column: 18, scope: !2100)
!2121 = !{!2048, !855, i64 48}
!2122 = !DILocation(line: 179, column: 1, scope: !2100)
!2123 = !DISubprogram(name: "abort", scope: !1049, file: !1049, line: 598, type: !497, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !863)
!2124 = distinct !DISubprogram(name: "quotearg_buffer", scope: !542, file: !542, line: 774, type: !2125, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !563, retainedNodes: !2127)
!2125 = !DISubroutineType(types: !2126)
!2126 = !{!136, !128, !136, !138, !136, !2040}
!2127 = !{!2128, !2129, !2130, !2131, !2132, !2133, !2134, !2135}
!2128 = !DILocalVariable(name: "buffer", arg: 1, scope: !2124, file: !542, line: 774, type: !128)
!2129 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2124, file: !542, line: 774, type: !136)
!2130 = !DILocalVariable(name: "arg", arg: 3, scope: !2124, file: !542, line: 775, type: !138)
!2131 = !DILocalVariable(name: "argsize", arg: 4, scope: !2124, file: !542, line: 775, type: !136)
!2132 = !DILocalVariable(name: "o", arg: 5, scope: !2124, file: !542, line: 776, type: !2040)
!2133 = !DILocalVariable(name: "p", scope: !2124, file: !542, line: 778, type: !2040)
!2134 = !DILocalVariable(name: "saved_errno", scope: !2124, file: !542, line: 779, type: !85)
!2135 = !DILocalVariable(name: "r", scope: !2124, file: !542, line: 780, type: !136)
!2136 = !DILocation(line: 0, scope: !2124)
!2137 = !DILocation(line: 778, column: 37, scope: !2124)
!2138 = !DILocation(line: 779, column: 21, scope: !2124)
!2139 = !DILocation(line: 781, column: 43, scope: !2124)
!2140 = !DILocation(line: 781, column: 53, scope: !2124)
!2141 = !DILocation(line: 781, column: 63, scope: !2124)
!2142 = !DILocation(line: 782, column: 43, scope: !2124)
!2143 = !DILocation(line: 782, column: 58, scope: !2124)
!2144 = !DILocation(line: 780, column: 14, scope: !2124)
!2145 = !DILocation(line: 783, column: 9, scope: !2124)
!2146 = !DILocation(line: 784, column: 3, scope: !2124)
!2147 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !542, file: !542, line: 251, type: !2148, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !563, retainedNodes: !2152)
!2148 = !DISubroutineType(types: !2149)
!2149 = !{!136, !128, !136, !138, !136, !98, !85, !2150, !138, !138}
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !91)
!2152 = !{!2153, !2154, !2155, !2156, !2157, !2158, !2159, !2160, !2161, !2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2177, !2179, !2182, !2183, !2184, !2185, !2188, !2189, !2192, !2196, !2197, !2205, !2208, !2209, !2211, !2212, !2213, !2214}
!2153 = !DILocalVariable(name: "buffer", arg: 1, scope: !2147, file: !542, line: 251, type: !128)
!2154 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2147, file: !542, line: 251, type: !136)
!2155 = !DILocalVariable(name: "arg", arg: 3, scope: !2147, file: !542, line: 252, type: !138)
!2156 = !DILocalVariable(name: "argsize", arg: 4, scope: !2147, file: !542, line: 252, type: !136)
!2157 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2147, file: !542, line: 253, type: !98)
!2158 = !DILocalVariable(name: "flags", arg: 6, scope: !2147, file: !542, line: 253, type: !85)
!2159 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2147, file: !542, line: 254, type: !2150)
!2160 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2147, file: !542, line: 255, type: !138)
!2161 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2147, file: !542, line: 256, type: !138)
!2162 = !DILocalVariable(name: "unibyte_locale", scope: !2147, file: !542, line: 258, type: !234)
!2163 = !DILocalVariable(name: "len", scope: !2147, file: !542, line: 260, type: !136)
!2164 = !DILocalVariable(name: "orig_buffersize", scope: !2147, file: !542, line: 261, type: !136)
!2165 = !DILocalVariable(name: "quote_string", scope: !2147, file: !542, line: 262, type: !138)
!2166 = !DILocalVariable(name: "quote_string_len", scope: !2147, file: !542, line: 263, type: !136)
!2167 = !DILocalVariable(name: "backslash_escapes", scope: !2147, file: !542, line: 264, type: !234)
!2168 = !DILocalVariable(name: "elide_outer_quotes", scope: !2147, file: !542, line: 265, type: !234)
!2169 = !DILocalVariable(name: "encountered_single_quote", scope: !2147, file: !542, line: 266, type: !234)
!2170 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2147, file: !542, line: 267, type: !234)
!2171 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2147, file: !542, line: 309, type: !234)
!2172 = !DILocalVariable(name: "lq", scope: !2173, file: !542, line: 361, type: !138)
!2173 = distinct !DILexicalBlock(scope: !2174, file: !542, line: 361, column: 11)
!2174 = distinct !DILexicalBlock(scope: !2175, file: !542, line: 360, column: 13)
!2175 = distinct !DILexicalBlock(scope: !2176, file: !542, line: 333, column: 7)
!2176 = distinct !DILexicalBlock(scope: !2147, file: !542, line: 312, column: 5)
!2177 = !DILocalVariable(name: "i", scope: !2178, file: !542, line: 395, type: !136)
!2178 = distinct !DILexicalBlock(scope: !2147, file: !542, line: 395, column: 3)
!2179 = !DILocalVariable(name: "is_right_quote", scope: !2180, file: !542, line: 397, type: !234)
!2180 = distinct !DILexicalBlock(scope: !2181, file: !542, line: 396, column: 5)
!2181 = distinct !DILexicalBlock(scope: !2178, file: !542, line: 395, column: 3)
!2182 = !DILocalVariable(name: "escaping", scope: !2180, file: !542, line: 398, type: !234)
!2183 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2180, file: !542, line: 399, type: !234)
!2184 = !DILocalVariable(name: "c", scope: !2180, file: !542, line: 417, type: !140)
!2185 = !DILocalVariable(name: "m", scope: !2186, file: !542, line: 598, type: !136)
!2186 = distinct !DILexicalBlock(scope: !2187, file: !542, line: 596, column: 11)
!2187 = distinct !DILexicalBlock(scope: !2180, file: !542, line: 419, column: 9)
!2188 = !DILocalVariable(name: "printable", scope: !2186, file: !542, line: 600, type: !234)
!2189 = !DILocalVariable(name: "mbs", scope: !2190, file: !542, line: 609, type: !612)
!2190 = distinct !DILexicalBlock(scope: !2191, file: !542, line: 608, column: 15)
!2191 = distinct !DILexicalBlock(scope: !2186, file: !542, line: 602, column: 17)
!2192 = !DILocalVariable(name: "w", scope: !2193, file: !542, line: 618, type: !522)
!2193 = distinct !DILexicalBlock(scope: !2194, file: !542, line: 617, column: 19)
!2194 = distinct !DILexicalBlock(scope: !2195, file: !542, line: 616, column: 17)
!2195 = distinct !DILexicalBlock(scope: !2190, file: !542, line: 616, column: 17)
!2196 = !DILocalVariable(name: "bytes", scope: !2193, file: !542, line: 619, type: !136)
!2197 = !DILocalVariable(name: "j", scope: !2198, file: !542, line: 648, type: !136)
!2198 = distinct !DILexicalBlock(scope: !2199, file: !542, line: 648, column: 29)
!2199 = distinct !DILexicalBlock(scope: !2200, file: !542, line: 647, column: 27)
!2200 = distinct !DILexicalBlock(scope: !2201, file: !542, line: 645, column: 29)
!2201 = distinct !DILexicalBlock(scope: !2202, file: !542, line: 636, column: 23)
!2202 = distinct !DILexicalBlock(scope: !2203, file: !542, line: 628, column: 30)
!2203 = distinct !DILexicalBlock(scope: !2204, file: !542, line: 623, column: 30)
!2204 = distinct !DILexicalBlock(scope: !2193, file: !542, line: 621, column: 25)
!2205 = !DILocalVariable(name: "ilim", scope: !2206, file: !542, line: 674, type: !136)
!2206 = distinct !DILexicalBlock(scope: !2207, file: !542, line: 671, column: 15)
!2207 = distinct !DILexicalBlock(scope: !2186, file: !542, line: 670, column: 17)
!2208 = !DILabel(scope: !2147, name: "process_input", file: !542, line: 308)
!2209 = !DILabel(scope: !2210, name: "c_and_shell_escape", file: !542, line: 502)
!2210 = distinct !DILexicalBlock(scope: !2187, file: !542, line: 478, column: 9)
!2211 = !DILabel(scope: !2210, name: "c_escape", file: !542, line: 507)
!2212 = !DILabel(scope: !2180, name: "store_escape", file: !542, line: 709)
!2213 = !DILabel(scope: !2180, name: "store_c", file: !542, line: 712)
!2214 = !DILabel(scope: !2147, name: "force_outer_quoting_style", file: !542, line: 753)
!2215 = !DILocation(line: 0, scope: !2147)
!2216 = !DILocation(line: 258, column: 25, scope: !2147)
!2217 = !DILocation(line: 258, column: 36, scope: !2147)
!2218 = !DILocation(line: 265, column: 8, scope: !2147)
!2219 = !DILocation(line: 267, column: 3, scope: !2147)
!2220 = !DILocation(line: 261, column: 10, scope: !2147)
!2221 = !DILocation(line: 262, column: 15, scope: !2147)
!2222 = !DILocation(line: 263, column: 10, scope: !2147)
!2223 = !DILocation(line: 264, column: 8, scope: !2147)
!2224 = !DILocation(line: 266, column: 8, scope: !2147)
!2225 = !DILocation(line: 267, column: 8, scope: !2147)
!2226 = !DILocation(line: 308, column: 2, scope: !2147)
!2227 = !DILocation(line: 311, column: 3, scope: !2147)
!2228 = !DILocation(line: 318, column: 11, scope: !2176)
!2229 = !DILocation(line: 318, column: 12, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2176, file: !542, line: 318, column: 11)
!2231 = !DILocation(line: 319, column: 9, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2233, file: !542, line: 319, column: 9)
!2233 = distinct !DILexicalBlock(scope: !2230, file: !542, line: 319, column: 9)
!2234 = !DILocation(line: 319, column: 9, scope: !2233)
!2235 = !DILocation(line: 0, scope: !603, inlinedAt: !2236)
!2236 = distinct !DILocation(line: 357, column: 26, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2238, file: !542, line: 335, column: 11)
!2238 = distinct !DILexicalBlock(scope: !2175, file: !542, line: 334, column: 13)
!2239 = !DILocation(line: 199, column: 29, scope: !603, inlinedAt: !2236)
!2240 = !DILocation(line: 201, column: 19, scope: !2241, inlinedAt: !2236)
!2241 = distinct !DILexicalBlock(scope: !603, file: !542, line: 201, column: 7)
!2242 = !DILocation(line: 201, column: 7, scope: !603, inlinedAt: !2236)
!2243 = !DILocation(line: 229, column: 3, scope: !603, inlinedAt: !2236)
!2244 = !DILocation(line: 230, column: 3, scope: !603, inlinedAt: !2236)
!2245 = !DILocation(line: 230, column: 13, scope: !603, inlinedAt: !2236)
!2246 = !DILocalVariable(name: "ps", arg: 1, scope: !2247, file: !1994, line: 1135, type: !2250)
!2247 = distinct !DISubprogram(name: "mbszero", scope: !1994, file: !1994, line: 1135, type: !2248, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !563, retainedNodes: !2251)
!2248 = !DISubroutineType(types: !2249)
!2249 = !{null, !2250}
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!2251 = !{!2246}
!2252 = !DILocation(line: 0, scope: !2247, inlinedAt: !2253)
!2253 = distinct !DILocation(line: 230, column: 18, scope: !603, inlinedAt: !2236)
!2254 = !DILocalVariable(name: "__dest", arg: 1, scope: !2255, file: !2003, line: 57, type: !129)
!2255 = distinct !DISubprogram(name: "memset", scope: !2003, file: !2003, line: 57, type: !2004, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !563, retainedNodes: !2256)
!2256 = !{!2254, !2257, !2258}
!2257 = !DILocalVariable(name: "__ch", arg: 2, scope: !2255, file: !2003, line: 57, type: !85)
!2258 = !DILocalVariable(name: "__len", arg: 3, scope: !2255, file: !2003, line: 57, type: !136)
!2259 = !DILocation(line: 0, scope: !2255, inlinedAt: !2260)
!2260 = distinct !DILocation(line: 1137, column: 3, scope: !2247, inlinedAt: !2253)
!2261 = !DILocation(line: 59, column: 10, scope: !2255, inlinedAt: !2260)
!2262 = !DILocation(line: 231, column: 7, scope: !2263, inlinedAt: !2236)
!2263 = distinct !DILexicalBlock(scope: !603, file: !542, line: 231, column: 7)
!2264 = !DILocation(line: 231, column: 40, scope: !2263, inlinedAt: !2236)
!2265 = !DILocation(line: 231, column: 45, scope: !2263, inlinedAt: !2236)
!2266 = !DILocation(line: 235, column: 1, scope: !603, inlinedAt: !2236)
!2267 = !DILocation(line: 0, scope: !603, inlinedAt: !2268)
!2268 = distinct !DILocation(line: 358, column: 27, scope: !2237)
!2269 = !DILocation(line: 199, column: 29, scope: !603, inlinedAt: !2268)
!2270 = !DILocation(line: 201, column: 19, scope: !2241, inlinedAt: !2268)
!2271 = !DILocation(line: 201, column: 7, scope: !603, inlinedAt: !2268)
!2272 = !DILocation(line: 229, column: 3, scope: !603, inlinedAt: !2268)
!2273 = !DILocation(line: 230, column: 3, scope: !603, inlinedAt: !2268)
!2274 = !DILocation(line: 230, column: 13, scope: !603, inlinedAt: !2268)
!2275 = !DILocation(line: 0, scope: !2247, inlinedAt: !2276)
!2276 = distinct !DILocation(line: 230, column: 18, scope: !603, inlinedAt: !2268)
!2277 = !DILocation(line: 0, scope: !2255, inlinedAt: !2278)
!2278 = distinct !DILocation(line: 1137, column: 3, scope: !2247, inlinedAt: !2276)
!2279 = !DILocation(line: 59, column: 10, scope: !2255, inlinedAt: !2278)
!2280 = !DILocation(line: 231, column: 7, scope: !2263, inlinedAt: !2268)
!2281 = !DILocation(line: 231, column: 40, scope: !2263, inlinedAt: !2268)
!2282 = !DILocation(line: 231, column: 45, scope: !2263, inlinedAt: !2268)
!2283 = !DILocation(line: 235, column: 1, scope: !603, inlinedAt: !2268)
!2284 = !DILocation(line: 360, column: 14, scope: !2174)
!2285 = !DILocation(line: 360, column: 13, scope: !2175)
!2286 = !DILocation(line: 0, scope: !2173)
!2287 = !DILocation(line: 361, column: 45, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2173, file: !542, line: 361, column: 11)
!2289 = !DILocation(line: 361, column: 11, scope: !2173)
!2290 = !DILocation(line: 362, column: 13, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2292, file: !542, line: 362, column: 13)
!2292 = distinct !DILexicalBlock(scope: !2288, file: !542, line: 362, column: 13)
!2293 = !DILocation(line: 362, column: 13, scope: !2292)
!2294 = !DILocation(line: 361, column: 52, scope: !2288)
!2295 = distinct !{!2295, !2289, !2296, !971}
!2296 = !DILocation(line: 362, column: 13, scope: !2173)
!2297 = !DILocation(line: 260, column: 10, scope: !2147)
!2298 = !DILocation(line: 365, column: 28, scope: !2175)
!2299 = !DILocation(line: 367, column: 7, scope: !2176)
!2300 = !DILocation(line: 370, column: 7, scope: !2176)
!2301 = !DILocation(line: 373, column: 7, scope: !2176)
!2302 = !DILocation(line: 376, column: 12, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2176, file: !542, line: 376, column: 11)
!2304 = !DILocation(line: 376, column: 11, scope: !2176)
!2305 = !DILocation(line: 381, column: 12, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !2176, file: !542, line: 381, column: 11)
!2307 = !DILocation(line: 381, column: 11, scope: !2176)
!2308 = !DILocation(line: 382, column: 9, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2310, file: !542, line: 382, column: 9)
!2310 = distinct !DILexicalBlock(scope: !2306, file: !542, line: 382, column: 9)
!2311 = !DILocation(line: 382, column: 9, scope: !2310)
!2312 = !DILocation(line: 389, column: 7, scope: !2176)
!2313 = !DILocation(line: 392, column: 7, scope: !2176)
!2314 = !DILocation(line: 0, scope: !2178)
!2315 = !DILocation(line: 395, column: 8, scope: !2178)
!2316 = !DILocation(line: 309, column: 8, scope: !2147)
!2317 = !DILocation(line: 395, scope: !2178)
!2318 = !DILocation(line: 395, column: 34, scope: !2181)
!2319 = !DILocation(line: 395, column: 26, scope: !2181)
!2320 = !DILocation(line: 395, column: 48, scope: !2181)
!2321 = !DILocation(line: 395, column: 55, scope: !2181)
!2322 = !DILocation(line: 395, column: 3, scope: !2178)
!2323 = !DILocation(line: 395, column: 67, scope: !2181)
!2324 = !DILocation(line: 0, scope: !2180)
!2325 = !DILocation(line: 402, column: 11, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2180, file: !542, line: 401, column: 11)
!2327 = !DILocation(line: 404, column: 17, scope: !2326)
!2328 = !DILocation(line: 405, column: 39, scope: !2326)
!2329 = !DILocation(line: 409, column: 32, scope: !2326)
!2330 = !DILocation(line: 405, column: 19, scope: !2326)
!2331 = !DILocation(line: 405, column: 15, scope: !2326)
!2332 = !DILocation(line: 410, column: 11, scope: !2326)
!2333 = !DILocation(line: 410, column: 25, scope: !2326)
!2334 = !DILocalVariable(name: "__s1", arg: 1, scope: !2335, file: !937, line: 974, type: !1073)
!2335 = distinct !DISubprogram(name: "memeq", scope: !937, file: !937, line: 974, type: !1964, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !563, retainedNodes: !2336)
!2336 = !{!2334, !2337, !2338}
!2337 = !DILocalVariable(name: "__s2", arg: 2, scope: !2335, file: !937, line: 974, type: !1073)
!2338 = !DILocalVariable(name: "__n", arg: 3, scope: !2335, file: !937, line: 974, type: !136)
!2339 = !DILocation(line: 0, scope: !2335, inlinedAt: !2340)
!2340 = distinct !DILocation(line: 410, column: 14, scope: !2326)
!2341 = !DILocation(line: 976, column: 11, scope: !2335, inlinedAt: !2340)
!2342 = !DILocation(line: 976, column: 10, scope: !2335, inlinedAt: !2340)
!2343 = !DILocation(line: 401, column: 11, scope: !2180)
!2344 = !DILocation(line: 417, column: 25, scope: !2180)
!2345 = !DILocation(line: 418, column: 7, scope: !2180)
!2346 = !DILocation(line: 421, column: 15, scope: !2187)
!2347 = !DILocation(line: 423, column: 15, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2349, file: !542, line: 423, column: 15)
!2349 = distinct !DILexicalBlock(scope: !2350, file: !542, line: 422, column: 13)
!2350 = distinct !DILexicalBlock(scope: !2187, file: !542, line: 421, column: 15)
!2351 = !DILocation(line: 423, column: 15, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2348, file: !542, line: 423, column: 15)
!2353 = !DILocation(line: 423, column: 15, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2355, file: !542, line: 423, column: 15)
!2355 = distinct !DILexicalBlock(scope: !2356, file: !542, line: 423, column: 15)
!2356 = distinct !DILexicalBlock(scope: !2352, file: !542, line: 423, column: 15)
!2357 = !DILocation(line: 423, column: 15, scope: !2355)
!2358 = !DILocation(line: 423, column: 15, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !2360, file: !542, line: 423, column: 15)
!2360 = distinct !DILexicalBlock(scope: !2356, file: !542, line: 423, column: 15)
!2361 = !DILocation(line: 423, column: 15, scope: !2360)
!2362 = !DILocation(line: 423, column: 15, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2364, file: !542, line: 423, column: 15)
!2364 = distinct !DILexicalBlock(scope: !2356, file: !542, line: 423, column: 15)
!2365 = !DILocation(line: 423, column: 15, scope: !2364)
!2366 = !DILocation(line: 423, column: 15, scope: !2356)
!2367 = !DILocation(line: 423, column: 15, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2369, file: !542, line: 423, column: 15)
!2369 = distinct !DILexicalBlock(scope: !2348, file: !542, line: 423, column: 15)
!2370 = !DILocation(line: 423, column: 15, scope: !2369)
!2371 = !DILocation(line: 431, column: 19, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !2349, file: !542, line: 430, column: 19)
!2373 = !DILocation(line: 431, column: 24, scope: !2372)
!2374 = !DILocation(line: 431, column: 28, scope: !2372)
!2375 = !DILocation(line: 431, column: 38, scope: !2372)
!2376 = !DILocation(line: 431, column: 48, scope: !2372)
!2377 = !DILocation(line: 431, column: 59, scope: !2372)
!2378 = !DILocation(line: 433, column: 19, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2380, file: !542, line: 433, column: 19)
!2380 = distinct !DILexicalBlock(scope: !2381, file: !542, line: 433, column: 19)
!2381 = distinct !DILexicalBlock(scope: !2372, file: !542, line: 432, column: 17)
!2382 = !DILocation(line: 433, column: 19, scope: !2380)
!2383 = !DILocation(line: 434, column: 19, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2385, file: !542, line: 434, column: 19)
!2385 = distinct !DILexicalBlock(scope: !2381, file: !542, line: 434, column: 19)
!2386 = !DILocation(line: 434, column: 19, scope: !2385)
!2387 = !DILocation(line: 435, column: 17, scope: !2381)
!2388 = !DILocation(line: 442, column: 20, scope: !2350)
!2389 = !DILocation(line: 447, column: 11, scope: !2187)
!2390 = !DILocation(line: 450, column: 19, scope: !2391)
!2391 = distinct !DILexicalBlock(scope: !2187, file: !542, line: 448, column: 13)
!2392 = !DILocation(line: 456, column: 19, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !2391, file: !542, line: 455, column: 19)
!2394 = !DILocation(line: 456, column: 24, scope: !2393)
!2395 = !DILocation(line: 456, column: 28, scope: !2393)
!2396 = !DILocation(line: 456, column: 38, scope: !2393)
!2397 = !DILocation(line: 456, column: 47, scope: !2393)
!2398 = !DILocation(line: 456, column: 41, scope: !2393)
!2399 = !DILocation(line: 456, column: 52, scope: !2393)
!2400 = !DILocation(line: 455, column: 19, scope: !2391)
!2401 = !DILocation(line: 457, column: 25, scope: !2393)
!2402 = !DILocation(line: 457, column: 17, scope: !2393)
!2403 = !DILocation(line: 464, column: 25, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2393, file: !542, line: 458, column: 19)
!2405 = !DILocation(line: 468, column: 21, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !2407, file: !542, line: 468, column: 21)
!2407 = distinct !DILexicalBlock(scope: !2404, file: !542, line: 468, column: 21)
!2408 = !DILocation(line: 468, column: 21, scope: !2407)
!2409 = !DILocation(line: 469, column: 21, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2411, file: !542, line: 469, column: 21)
!2411 = distinct !DILexicalBlock(scope: !2404, file: !542, line: 469, column: 21)
!2412 = !DILocation(line: 469, column: 21, scope: !2411)
!2413 = !DILocation(line: 470, column: 21, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2415, file: !542, line: 470, column: 21)
!2415 = distinct !DILexicalBlock(scope: !2404, file: !542, line: 470, column: 21)
!2416 = !DILocation(line: 470, column: 21, scope: !2415)
!2417 = !DILocation(line: 471, column: 21, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2419, file: !542, line: 471, column: 21)
!2419 = distinct !DILexicalBlock(scope: !2404, file: !542, line: 471, column: 21)
!2420 = !DILocation(line: 471, column: 21, scope: !2419)
!2421 = !DILocation(line: 472, column: 21, scope: !2404)
!2422 = !DILocation(line: 482, column: 33, scope: !2210)
!2423 = !DILocation(line: 483, column: 33, scope: !2210)
!2424 = !DILocation(line: 485, column: 33, scope: !2210)
!2425 = !DILocation(line: 486, column: 33, scope: !2210)
!2426 = !DILocation(line: 487, column: 33, scope: !2210)
!2427 = !DILocation(line: 490, column: 17, scope: !2210)
!2428 = !DILocation(line: 492, column: 21, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2430, file: !542, line: 491, column: 15)
!2430 = distinct !DILexicalBlock(scope: !2210, file: !542, line: 490, column: 17)
!2431 = !DILocation(line: 499, column: 35, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2210, file: !542, line: 499, column: 17)
!2433 = !DILocation(line: 499, column: 57, scope: !2432)
!2434 = !DILocation(line: 0, scope: !2210)
!2435 = !DILocation(line: 502, column: 11, scope: !2210)
!2436 = !DILocation(line: 504, column: 17, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2210, file: !542, line: 503, column: 17)
!2438 = !DILocation(line: 507, column: 11, scope: !2210)
!2439 = !DILocation(line: 508, column: 17, scope: !2210)
!2440 = !DILocation(line: 517, column: 15, scope: !2187)
!2441 = !DILocation(line: 517, column: 40, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2187, file: !542, line: 517, column: 15)
!2443 = !DILocation(line: 517, column: 47, scope: !2442)
!2444 = !DILocation(line: 517, column: 18, scope: !2442)
!2445 = !DILocation(line: 521, column: 17, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2187, file: !542, line: 521, column: 15)
!2447 = !DILocation(line: 521, column: 15, scope: !2187)
!2448 = !DILocation(line: 525, column: 11, scope: !2187)
!2449 = !DILocation(line: 537, column: 15, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2187, file: !542, line: 536, column: 15)
!2451 = !DILocation(line: 544, column: 15, scope: !2187)
!2452 = !DILocation(line: 546, column: 19, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !2454, file: !542, line: 545, column: 13)
!2454 = distinct !DILexicalBlock(scope: !2187, file: !542, line: 544, column: 15)
!2455 = !DILocation(line: 549, column: 19, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2453, file: !542, line: 549, column: 19)
!2457 = !DILocation(line: 549, column: 30, scope: !2456)
!2458 = !DILocation(line: 558, column: 15, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2460, file: !542, line: 558, column: 15)
!2460 = distinct !DILexicalBlock(scope: !2453, file: !542, line: 558, column: 15)
!2461 = !DILocation(line: 558, column: 15, scope: !2460)
!2462 = !DILocation(line: 559, column: 15, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2464, file: !542, line: 559, column: 15)
!2464 = distinct !DILexicalBlock(scope: !2453, file: !542, line: 559, column: 15)
!2465 = !DILocation(line: 559, column: 15, scope: !2464)
!2466 = !DILocation(line: 560, column: 15, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2468, file: !542, line: 560, column: 15)
!2468 = distinct !DILexicalBlock(scope: !2453, file: !542, line: 560, column: 15)
!2469 = !DILocation(line: 560, column: 15, scope: !2468)
!2470 = !DILocation(line: 562, column: 13, scope: !2453)
!2471 = !DILocation(line: 602, column: 17, scope: !2186)
!2472 = !DILocation(line: 0, scope: !2186)
!2473 = !DILocation(line: 605, column: 29, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2191, file: !542, line: 603, column: 15)
!2475 = !DILocation(line: 605, column: 27, scope: !2474)
!2476 = !DILocation(line: 668, column: 40, scope: !2186)
!2477 = !DILocation(line: 670, column: 23, scope: !2207)
!2478 = !DILocation(line: 609, column: 17, scope: !2190)
!2479 = !DILocation(line: 609, column: 27, scope: !2190)
!2480 = !DILocation(line: 0, scope: !2247, inlinedAt: !2481)
!2481 = distinct !DILocation(line: 609, column: 32, scope: !2190)
!2482 = !DILocation(line: 0, scope: !2255, inlinedAt: !2483)
!2483 = distinct !DILocation(line: 1137, column: 3, scope: !2247, inlinedAt: !2481)
!2484 = !DILocation(line: 59, column: 10, scope: !2255, inlinedAt: !2483)
!2485 = !DILocation(line: 613, column: 29, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2190, file: !542, line: 613, column: 21)
!2487 = !DILocation(line: 613, column: 21, scope: !2190)
!2488 = !DILocation(line: 614, column: 29, scope: !2486)
!2489 = !DILocation(line: 614, column: 19, scope: !2486)
!2490 = !DILocation(line: 618, column: 21, scope: !2193)
!2491 = !DILocation(line: 620, column: 54, scope: !2193)
!2492 = !DILocation(line: 0, scope: !2193)
!2493 = !DILocation(line: 619, column: 36, scope: !2193)
!2494 = !DILocation(line: 621, column: 25, scope: !2193)
!2495 = !DILocation(line: 631, column: 38, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2202, file: !542, line: 629, column: 23)
!2497 = !DILocation(line: 631, column: 48, scope: !2496)
!2498 = !DILocation(line: 665, column: 19, scope: !2194)
!2499 = !DILocation(line: 666, column: 15, scope: !2191)
!2500 = !DILocation(line: 626, column: 25, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !2203, file: !542, line: 624, column: 23)
!2502 = !DILocation(line: 631, column: 51, scope: !2496)
!2503 = !DILocation(line: 631, column: 25, scope: !2496)
!2504 = !DILocation(line: 632, column: 28, scope: !2496)
!2505 = !DILocation(line: 631, column: 34, scope: !2496)
!2506 = distinct !{!2506, !2503, !2504, !971}
!2507 = !DILocation(line: 646, column: 29, scope: !2200)
!2508 = !DILocation(line: 0, scope: !2198)
!2509 = !DILocation(line: 649, column: 49, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2198, file: !542, line: 648, column: 29)
!2511 = !DILocation(line: 649, column: 39, scope: !2510)
!2512 = !DILocation(line: 649, column: 31, scope: !2510)
!2513 = !DILocation(line: 648, column: 60, scope: !2510)
!2514 = !DILocation(line: 648, column: 50, scope: !2510)
!2515 = !DILocation(line: 648, column: 29, scope: !2198)
!2516 = distinct !{!2516, !2515, !2517, !971}
!2517 = !DILocation(line: 654, column: 33, scope: !2198)
!2518 = !DILocation(line: 657, column: 43, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2201, file: !542, line: 657, column: 29)
!2520 = !DILocalVariable(name: "wc", arg: 1, scope: !2521, file: !2522, line: 865, type: !2525)
!2521 = distinct !DISubprogram(name: "c32isprint", scope: !2522, file: !2522, line: 865, type: !2523, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !563, retainedNodes: !2527)
!2522 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2523 = !DISubroutineType(types: !2524)
!2524 = !{!85, !2525}
!2525 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2526, line: 20, baseType: !91)
!2526 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2527 = !{!2520}
!2528 = !DILocation(line: 0, scope: !2521, inlinedAt: !2529)
!2529 = distinct !DILocation(line: 657, column: 31, scope: !2519)
!2530 = !DILocation(line: 871, column: 10, scope: !2521, inlinedAt: !2529)
!2531 = !DILocation(line: 657, column: 31, scope: !2519)
!2532 = !DILocation(line: 657, column: 29, scope: !2201)
!2533 = !DILocation(line: 664, column: 23, scope: !2193)
!2534 = !DILocation(line: 670, column: 19, scope: !2207)
!2535 = !DILocation(line: 670, column: 45, scope: !2207)
!2536 = !DILocation(line: 674, column: 33, scope: !2206)
!2537 = !DILocation(line: 0, scope: !2206)
!2538 = !DILocation(line: 676, column: 17, scope: !2206)
!2539 = !DILocation(line: 398, column: 12, scope: !2180)
!2540 = !DILocation(line: 678, column: 43, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2542, file: !542, line: 678, column: 25)
!2542 = distinct !DILexicalBlock(scope: !2543, file: !542, line: 677, column: 19)
!2543 = distinct !DILexicalBlock(scope: !2544, file: !542, line: 676, column: 17)
!2544 = distinct !DILexicalBlock(scope: !2206, file: !542, line: 676, column: 17)
!2545 = !DILocation(line: 680, column: 25, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2547, file: !542, line: 680, column: 25)
!2547 = distinct !DILexicalBlock(scope: !2541, file: !542, line: 679, column: 23)
!2548 = !DILocation(line: 680, column: 25, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2546, file: !542, line: 680, column: 25)
!2550 = !DILocation(line: 680, column: 25, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2552, file: !542, line: 680, column: 25)
!2552 = distinct !DILexicalBlock(scope: !2553, file: !542, line: 680, column: 25)
!2553 = distinct !DILexicalBlock(scope: !2549, file: !542, line: 680, column: 25)
!2554 = !DILocation(line: 680, column: 25, scope: !2552)
!2555 = !DILocation(line: 680, column: 25, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2557, file: !542, line: 680, column: 25)
!2557 = distinct !DILexicalBlock(scope: !2553, file: !542, line: 680, column: 25)
!2558 = !DILocation(line: 680, column: 25, scope: !2557)
!2559 = !DILocation(line: 680, column: 25, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !2561, file: !542, line: 680, column: 25)
!2561 = distinct !DILexicalBlock(scope: !2553, file: !542, line: 680, column: 25)
!2562 = !DILocation(line: 680, column: 25, scope: !2561)
!2563 = !DILocation(line: 680, column: 25, scope: !2553)
!2564 = !DILocation(line: 680, column: 25, scope: !2565)
!2565 = distinct !DILexicalBlock(scope: !2566, file: !542, line: 680, column: 25)
!2566 = distinct !DILexicalBlock(scope: !2546, file: !542, line: 680, column: 25)
!2567 = !DILocation(line: 680, column: 25, scope: !2566)
!2568 = !DILocation(line: 681, column: 25, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2570, file: !542, line: 681, column: 25)
!2570 = distinct !DILexicalBlock(scope: !2547, file: !542, line: 681, column: 25)
!2571 = !DILocation(line: 681, column: 25, scope: !2570)
!2572 = !DILocation(line: 682, column: 25, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2574, file: !542, line: 682, column: 25)
!2574 = distinct !DILexicalBlock(scope: !2547, file: !542, line: 682, column: 25)
!2575 = !DILocation(line: 682, column: 25, scope: !2574)
!2576 = !DILocation(line: 683, column: 38, scope: !2547)
!2577 = !DILocation(line: 683, column: 33, scope: !2547)
!2578 = !DILocation(line: 684, column: 23, scope: !2547)
!2579 = !DILocation(line: 685, column: 30, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !2541, file: !542, line: 685, column: 30)
!2581 = !DILocation(line: 685, column: 30, scope: !2541)
!2582 = !DILocation(line: 687, column: 25, scope: !2583)
!2583 = distinct !DILexicalBlock(scope: !2584, file: !542, line: 687, column: 25)
!2584 = distinct !DILexicalBlock(scope: !2585, file: !542, line: 687, column: 25)
!2585 = distinct !DILexicalBlock(scope: !2580, file: !542, line: 686, column: 23)
!2586 = !DILocation(line: 687, column: 25, scope: !2584)
!2587 = !DILocation(line: 689, column: 23, scope: !2585)
!2588 = !DILocation(line: 690, column: 35, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !2542, file: !542, line: 690, column: 25)
!2590 = !DILocation(line: 690, column: 30, scope: !2589)
!2591 = !DILocation(line: 690, column: 25, scope: !2542)
!2592 = !DILocation(line: 692, column: 21, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !2594, file: !542, line: 692, column: 21)
!2594 = distinct !DILexicalBlock(scope: !2542, file: !542, line: 692, column: 21)
!2595 = !DILocation(line: 692, column: 21, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2597, file: !542, line: 692, column: 21)
!2597 = distinct !DILexicalBlock(scope: !2598, file: !542, line: 692, column: 21)
!2598 = distinct !DILexicalBlock(scope: !2593, file: !542, line: 692, column: 21)
!2599 = !DILocation(line: 692, column: 21, scope: !2597)
!2600 = !DILocation(line: 692, column: 21, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !2602, file: !542, line: 692, column: 21)
!2602 = distinct !DILexicalBlock(scope: !2598, file: !542, line: 692, column: 21)
!2603 = !DILocation(line: 692, column: 21, scope: !2602)
!2604 = !DILocation(line: 692, column: 21, scope: !2598)
!2605 = !DILocation(line: 0, scope: !2542)
!2606 = !DILocation(line: 693, column: 21, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !2608, file: !542, line: 693, column: 21)
!2608 = distinct !DILexicalBlock(scope: !2542, file: !542, line: 693, column: 21)
!2609 = !DILocation(line: 693, column: 21, scope: !2608)
!2610 = !DILocation(line: 694, column: 25, scope: !2542)
!2611 = !DILocation(line: 676, column: 17, scope: !2543)
!2612 = distinct !{!2612, !2613, !2614}
!2613 = !DILocation(line: 676, column: 17, scope: !2544)
!2614 = !DILocation(line: 695, column: 19, scope: !2544)
!2615 = !DILocation(line: 409, column: 30, scope: !2326)
!2616 = !DILocation(line: 702, column: 34, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2180, file: !542, line: 702, column: 11)
!2618 = !DILocation(line: 704, column: 14, scope: !2617)
!2619 = !DILocation(line: 705, column: 14, scope: !2617)
!2620 = !DILocation(line: 705, column: 35, scope: !2617)
!2621 = !DILocation(line: 705, column: 17, scope: !2617)
!2622 = !DILocation(line: 705, column: 47, scope: !2617)
!2623 = !DILocation(line: 705, column: 65, scope: !2617)
!2624 = !DILocation(line: 706, column: 11, scope: !2617)
!2625 = !DILocation(line: 702, column: 11, scope: !2180)
!2626 = !DILocation(line: 395, column: 15, scope: !2178)
!2627 = !DILocation(line: 709, column: 5, scope: !2180)
!2628 = !DILocation(line: 710, column: 7, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2180, file: !542, line: 710, column: 7)
!2630 = !DILocation(line: 710, column: 7, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2629, file: !542, line: 710, column: 7)
!2632 = !DILocation(line: 710, column: 7, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2634, file: !542, line: 710, column: 7)
!2634 = distinct !DILexicalBlock(scope: !2635, file: !542, line: 710, column: 7)
!2635 = distinct !DILexicalBlock(scope: !2631, file: !542, line: 710, column: 7)
!2636 = !DILocation(line: 710, column: 7, scope: !2634)
!2637 = !DILocation(line: 710, column: 7, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2639, file: !542, line: 710, column: 7)
!2639 = distinct !DILexicalBlock(scope: !2635, file: !542, line: 710, column: 7)
!2640 = !DILocation(line: 710, column: 7, scope: !2639)
!2641 = !DILocation(line: 710, column: 7, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2643, file: !542, line: 710, column: 7)
!2643 = distinct !DILexicalBlock(scope: !2635, file: !542, line: 710, column: 7)
!2644 = !DILocation(line: 710, column: 7, scope: !2643)
!2645 = !DILocation(line: 710, column: 7, scope: !2635)
!2646 = !DILocation(line: 710, column: 7, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2648, file: !542, line: 710, column: 7)
!2648 = distinct !DILexicalBlock(scope: !2629, file: !542, line: 710, column: 7)
!2649 = !DILocation(line: 710, column: 7, scope: !2648)
!2650 = !DILocation(line: 712, column: 5, scope: !2180)
!2651 = !DILocation(line: 713, column: 7, scope: !2652)
!2652 = distinct !DILexicalBlock(scope: !2653, file: !542, line: 713, column: 7)
!2653 = distinct !DILexicalBlock(scope: !2180, file: !542, line: 713, column: 7)
!2654 = !DILocation(line: 417, column: 21, scope: !2180)
!2655 = !DILocation(line: 713, column: 7, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2657, file: !542, line: 713, column: 7)
!2657 = distinct !DILexicalBlock(scope: !2658, file: !542, line: 713, column: 7)
!2658 = distinct !DILexicalBlock(scope: !2652, file: !542, line: 713, column: 7)
!2659 = !DILocation(line: 713, column: 7, scope: !2657)
!2660 = !DILocation(line: 713, column: 7, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2662, file: !542, line: 713, column: 7)
!2662 = distinct !DILexicalBlock(scope: !2658, file: !542, line: 713, column: 7)
!2663 = !DILocation(line: 713, column: 7, scope: !2662)
!2664 = !DILocation(line: 713, column: 7, scope: !2658)
!2665 = !DILocation(line: 714, column: 7, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2667, file: !542, line: 714, column: 7)
!2667 = distinct !DILexicalBlock(scope: !2180, file: !542, line: 714, column: 7)
!2668 = !DILocation(line: 714, column: 7, scope: !2667)
!2669 = !DILocation(line: 716, column: 13, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2180, file: !542, line: 716, column: 11)
!2671 = !DILocation(line: 716, column: 11, scope: !2180)
!2672 = !DILocation(line: 718, column: 5, scope: !2181)
!2673 = !DILocation(line: 395, column: 82, scope: !2181)
!2674 = !DILocation(line: 395, column: 3, scope: !2181)
!2675 = distinct !{!2675, !2322, !2676, !971}
!2676 = !DILocation(line: 718, column: 5, scope: !2178)
!2677 = !DILocation(line: 720, column: 11, scope: !2678)
!2678 = distinct !DILexicalBlock(scope: !2147, file: !542, line: 720, column: 7)
!2679 = !DILocation(line: 720, column: 16, scope: !2678)
!2680 = !DILocation(line: 728, column: 51, scope: !2681)
!2681 = distinct !DILexicalBlock(scope: !2147, file: !542, line: 728, column: 7)
!2682 = !DILocation(line: 731, column: 11, scope: !2683)
!2683 = distinct !DILexicalBlock(scope: !2684, file: !542, line: 731, column: 11)
!2684 = distinct !DILexicalBlock(scope: !2681, file: !542, line: 730, column: 5)
!2685 = !DILocation(line: 731, column: 11, scope: !2684)
!2686 = !DILocation(line: 732, column: 16, scope: !2683)
!2687 = !DILocation(line: 732, column: 9, scope: !2683)
!2688 = !DILocation(line: 736, column: 18, scope: !2689)
!2689 = distinct !DILexicalBlock(scope: !2683, file: !542, line: 736, column: 16)
!2690 = !DILocation(line: 736, column: 29, scope: !2689)
!2691 = !DILocation(line: 745, column: 7, scope: !2692)
!2692 = distinct !DILexicalBlock(scope: !2147, file: !542, line: 745, column: 7)
!2693 = !DILocation(line: 745, column: 20, scope: !2692)
!2694 = !DILocation(line: 746, column: 12, scope: !2695)
!2695 = distinct !DILexicalBlock(scope: !2696, file: !542, line: 746, column: 5)
!2696 = distinct !DILexicalBlock(scope: !2692, file: !542, line: 746, column: 5)
!2697 = !DILocation(line: 746, column: 5, scope: !2696)
!2698 = !DILocation(line: 747, column: 7, scope: !2699)
!2699 = distinct !DILexicalBlock(scope: !2700, file: !542, line: 747, column: 7)
!2700 = distinct !DILexicalBlock(scope: !2695, file: !542, line: 747, column: 7)
!2701 = !DILocation(line: 747, column: 7, scope: !2700)
!2702 = !DILocation(line: 746, column: 39, scope: !2695)
!2703 = distinct !{!2703, !2697, !2704, !971}
!2704 = !DILocation(line: 747, column: 7, scope: !2696)
!2705 = !DILocation(line: 749, column: 11, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2147, file: !542, line: 749, column: 7)
!2707 = !DILocation(line: 749, column: 7, scope: !2147)
!2708 = !DILocation(line: 750, column: 5, scope: !2706)
!2709 = !DILocation(line: 750, column: 17, scope: !2706)
!2710 = !DILocation(line: 753, column: 2, scope: !2147)
!2711 = !DILocation(line: 756, column: 51, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2147, file: !542, line: 756, column: 7)
!2713 = !DILocation(line: 756, column: 21, scope: !2712)
!2714 = !DILocation(line: 760, column: 42, scope: !2147)
!2715 = !DILocation(line: 758, column: 10, scope: !2147)
!2716 = !DILocation(line: 758, column: 3, scope: !2147)
!2717 = !DILocation(line: 762, column: 1, scope: !2147)
!2718 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1049, file: !1049, line: 98, type: !2719, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !863)
!2719 = !DISubroutineType(types: !2720)
!2720 = !{!136}
!2721 = !DISubprogram(name: "strlen", scope: !1045, file: !1045, line: 407, type: !2722, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !863)
!2722 = !DISubroutineType(types: !2723)
!2723 = !{!134, !138}
!2724 = !DISubprogram(name: "iswprint", scope: !2725, file: !2725, line: 120, type: !2523, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !863)
!2725 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2726 = distinct !DISubprogram(name: "quotearg_alloc", scope: !542, file: !542, line: 788, type: !2727, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !563, retainedNodes: !2729)
!2727 = !DISubroutineType(types: !2728)
!2728 = !{!128, !138, !136, !2040}
!2729 = !{!2730, !2731, !2732}
!2730 = !DILocalVariable(name: "arg", arg: 1, scope: !2726, file: !542, line: 788, type: !138)
!2731 = !DILocalVariable(name: "argsize", arg: 2, scope: !2726, file: !542, line: 788, type: !136)
!2732 = !DILocalVariable(name: "o", arg: 3, scope: !2726, file: !542, line: 789, type: !2040)
!2733 = !DILocation(line: 0, scope: !2726)
!2734 = !DILocalVariable(name: "arg", arg: 1, scope: !2735, file: !542, line: 801, type: !138)
!2735 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !542, file: !542, line: 801, type: !2736, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !563, retainedNodes: !2738)
!2736 = !DISubroutineType(types: !2737)
!2737 = !{!128, !138, !136, !781, !2040}
!2738 = !{!2734, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746}
!2739 = !DILocalVariable(name: "argsize", arg: 2, scope: !2735, file: !542, line: 801, type: !136)
!2740 = !DILocalVariable(name: "size", arg: 3, scope: !2735, file: !542, line: 801, type: !781)
!2741 = !DILocalVariable(name: "o", arg: 4, scope: !2735, file: !542, line: 802, type: !2040)
!2742 = !DILocalVariable(name: "p", scope: !2735, file: !542, line: 804, type: !2040)
!2743 = !DILocalVariable(name: "saved_errno", scope: !2735, file: !542, line: 805, type: !85)
!2744 = !DILocalVariable(name: "flags", scope: !2735, file: !542, line: 807, type: !85)
!2745 = !DILocalVariable(name: "bufsize", scope: !2735, file: !542, line: 808, type: !136)
!2746 = !DILocalVariable(name: "buf", scope: !2735, file: !542, line: 812, type: !128)
!2747 = !DILocation(line: 0, scope: !2735, inlinedAt: !2748)
!2748 = distinct !DILocation(line: 791, column: 10, scope: !2726)
!2749 = !DILocation(line: 804, column: 37, scope: !2735, inlinedAt: !2748)
!2750 = !DILocation(line: 805, column: 21, scope: !2735, inlinedAt: !2748)
!2751 = !DILocation(line: 807, column: 18, scope: !2735, inlinedAt: !2748)
!2752 = !DILocation(line: 807, column: 24, scope: !2735, inlinedAt: !2748)
!2753 = !DILocation(line: 808, column: 72, scope: !2735, inlinedAt: !2748)
!2754 = !DILocation(line: 809, column: 56, scope: !2735, inlinedAt: !2748)
!2755 = !DILocation(line: 810, column: 49, scope: !2735, inlinedAt: !2748)
!2756 = !DILocation(line: 811, column: 49, scope: !2735, inlinedAt: !2748)
!2757 = !DILocation(line: 808, column: 20, scope: !2735, inlinedAt: !2748)
!2758 = !DILocation(line: 811, column: 62, scope: !2735, inlinedAt: !2748)
!2759 = !DILocation(line: 812, column: 15, scope: !2735, inlinedAt: !2748)
!2760 = !DILocation(line: 813, column: 60, scope: !2735, inlinedAt: !2748)
!2761 = !DILocation(line: 815, column: 32, scope: !2735, inlinedAt: !2748)
!2762 = !DILocation(line: 815, column: 47, scope: !2735, inlinedAt: !2748)
!2763 = !DILocation(line: 813, column: 3, scope: !2735, inlinedAt: !2748)
!2764 = !DILocation(line: 816, column: 9, scope: !2735, inlinedAt: !2748)
!2765 = !DILocation(line: 791, column: 3, scope: !2726)
!2766 = !DILocation(line: 0, scope: !2735)
!2767 = !DILocation(line: 804, column: 37, scope: !2735)
!2768 = !DILocation(line: 805, column: 21, scope: !2735)
!2769 = !DILocation(line: 807, column: 18, scope: !2735)
!2770 = !DILocation(line: 807, column: 27, scope: !2735)
!2771 = !DILocation(line: 807, column: 24, scope: !2735)
!2772 = !DILocation(line: 808, column: 72, scope: !2735)
!2773 = !DILocation(line: 809, column: 56, scope: !2735)
!2774 = !DILocation(line: 810, column: 49, scope: !2735)
!2775 = !DILocation(line: 811, column: 49, scope: !2735)
!2776 = !DILocation(line: 808, column: 20, scope: !2735)
!2777 = !DILocation(line: 811, column: 62, scope: !2735)
!2778 = !DILocation(line: 812, column: 15, scope: !2735)
!2779 = !DILocation(line: 813, column: 60, scope: !2735)
!2780 = !DILocation(line: 815, column: 32, scope: !2735)
!2781 = !DILocation(line: 815, column: 47, scope: !2735)
!2782 = !DILocation(line: 813, column: 3, scope: !2735)
!2783 = !DILocation(line: 816, column: 9, scope: !2735)
!2784 = !DILocation(line: 817, column: 7, scope: !2735)
!2785 = !DILocation(line: 818, column: 11, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2735, file: !542, line: 817, column: 7)
!2787 = !DILocation(line: 818, column: 5, scope: !2786)
!2788 = !DILocation(line: 819, column: 3, scope: !2735)
!2789 = distinct !DISubprogram(name: "quotearg_free", scope: !542, file: !542, line: 837, type: !497, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !563, retainedNodes: !2790)
!2790 = !{!2791, !2792}
!2791 = !DILocalVariable(name: "sv", scope: !2789, file: !542, line: 839, type: !626)
!2792 = !DILocalVariable(name: "i", scope: !2793, file: !542, line: 840, type: !85)
!2793 = distinct !DILexicalBlock(scope: !2789, file: !542, line: 840, column: 3)
!2794 = !DILocation(line: 839, column: 24, scope: !2789)
!2795 = !DILocation(line: 0, scope: !2789)
!2796 = !DILocation(line: 0, scope: !2793)
!2797 = !DILocation(line: 840, column: 21, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2793, file: !542, line: 840, column: 3)
!2799 = !DILocation(line: 840, column: 3, scope: !2793)
!2800 = !DILocation(line: 842, column: 13, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !2789, file: !542, line: 842, column: 7)
!2802 = !{!2803, !855, i64 8}
!2803 = !{!"slotvec", !1218, i64 0, !855, i64 8}
!2804 = !DILocation(line: 842, column: 17, scope: !2801)
!2805 = !DILocation(line: 842, column: 7, scope: !2789)
!2806 = !DILocation(line: 841, column: 17, scope: !2798)
!2807 = !DILocation(line: 841, column: 5, scope: !2798)
!2808 = !DILocation(line: 840, column: 32, scope: !2798)
!2809 = distinct !{!2809, !2799, !2810, !971}
!2810 = !DILocation(line: 841, column: 20, scope: !2793)
!2811 = !DILocation(line: 844, column: 7, scope: !2812)
!2812 = distinct !DILexicalBlock(scope: !2801, file: !542, line: 843, column: 5)
!2813 = !DILocation(line: 845, column: 21, scope: !2812)
!2814 = !{!2803, !1218, i64 0}
!2815 = !DILocation(line: 846, column: 20, scope: !2812)
!2816 = !DILocation(line: 847, column: 5, scope: !2812)
!2817 = !DILocation(line: 848, column: 10, scope: !2818)
!2818 = distinct !DILexicalBlock(scope: !2789, file: !542, line: 848, column: 7)
!2819 = !DILocation(line: 848, column: 7, scope: !2789)
!2820 = !DILocation(line: 850, column: 7, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2818, file: !542, line: 849, column: 5)
!2822 = !DILocation(line: 851, column: 15, scope: !2821)
!2823 = !DILocation(line: 852, column: 5, scope: !2821)
!2824 = !DILocation(line: 853, column: 10, scope: !2789)
!2825 = !DILocation(line: 854, column: 1, scope: !2789)
!2826 = distinct !DISubprogram(name: "quotearg_n", scope: !542, file: !542, line: 919, type: !1042, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !563, retainedNodes: !2827)
!2827 = !{!2828, !2829}
!2828 = !DILocalVariable(name: "n", arg: 1, scope: !2826, file: !542, line: 919, type: !85)
!2829 = !DILocalVariable(name: "arg", arg: 2, scope: !2826, file: !542, line: 919, type: !138)
!2830 = !DILocation(line: 0, scope: !2826)
!2831 = !DILocation(line: 921, column: 10, scope: !2826)
!2832 = !DILocation(line: 921, column: 3, scope: !2826)
!2833 = distinct !DISubprogram(name: "quotearg_n_options", scope: !542, file: !542, line: 866, type: !2834, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !563, retainedNodes: !2836)
!2834 = !DISubroutineType(types: !2835)
!2835 = !{!128, !85, !138, !136, !2040}
!2836 = !{!2837, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2847, !2848, !2850, !2851, !2852}
!2837 = !DILocalVariable(name: "n", arg: 1, scope: !2833, file: !542, line: 866, type: !85)
!2838 = !DILocalVariable(name: "arg", arg: 2, scope: !2833, file: !542, line: 866, type: !138)
!2839 = !DILocalVariable(name: "argsize", arg: 3, scope: !2833, file: !542, line: 866, type: !136)
!2840 = !DILocalVariable(name: "options", arg: 4, scope: !2833, file: !542, line: 867, type: !2040)
!2841 = !DILocalVariable(name: "saved_errno", scope: !2833, file: !542, line: 869, type: !85)
!2842 = !DILocalVariable(name: "sv", scope: !2833, file: !542, line: 871, type: !626)
!2843 = !DILocalVariable(name: "nslots_max", scope: !2833, file: !542, line: 873, type: !85)
!2844 = !DILocalVariable(name: "preallocated", scope: !2845, file: !542, line: 879, type: !234)
!2845 = distinct !DILexicalBlock(scope: !2846, file: !542, line: 878, column: 5)
!2846 = distinct !DILexicalBlock(scope: !2833, file: !542, line: 877, column: 7)
!2847 = !DILocalVariable(name: "new_nslots", scope: !2845, file: !542, line: 880, type: !794)
!2848 = !DILocalVariable(name: "size", scope: !2849, file: !542, line: 891, type: !136)
!2849 = distinct !DILexicalBlock(scope: !2833, file: !542, line: 890, column: 3)
!2850 = !DILocalVariable(name: "val", scope: !2849, file: !542, line: 892, type: !128)
!2851 = !DILocalVariable(name: "flags", scope: !2849, file: !542, line: 894, type: !85)
!2852 = !DILocalVariable(name: "qsize", scope: !2849, file: !542, line: 895, type: !136)
!2853 = !DILocation(line: 0, scope: !2833)
!2854 = !DILocation(line: 869, column: 21, scope: !2833)
!2855 = !DILocation(line: 871, column: 24, scope: !2833)
!2856 = !DILocation(line: 874, column: 17, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2833, file: !542, line: 874, column: 7)
!2858 = !DILocation(line: 875, column: 5, scope: !2857)
!2859 = !DILocation(line: 877, column: 7, scope: !2846)
!2860 = !DILocation(line: 877, column: 14, scope: !2846)
!2861 = !DILocation(line: 877, column: 7, scope: !2833)
!2862 = !DILocation(line: 879, column: 31, scope: !2845)
!2863 = !DILocation(line: 0, scope: !2845)
!2864 = !DILocation(line: 880, column: 7, scope: !2845)
!2865 = !DILocation(line: 880, column: 26, scope: !2845)
!2866 = !DILocation(line: 880, column: 13, scope: !2845)
!2867 = !DILocation(line: 882, column: 31, scope: !2845)
!2868 = !DILocation(line: 883, column: 33, scope: !2845)
!2869 = !DILocation(line: 883, column: 42, scope: !2845)
!2870 = !DILocation(line: 883, column: 31, scope: !2845)
!2871 = !DILocation(line: 882, column: 22, scope: !2845)
!2872 = !DILocation(line: 882, column: 15, scope: !2845)
!2873 = !DILocation(line: 884, column: 11, scope: !2845)
!2874 = !DILocation(line: 885, column: 15, scope: !2875)
!2875 = distinct !DILexicalBlock(scope: !2845, file: !542, line: 884, column: 11)
!2876 = !{i64 0, i64 8, !1217, i64 8, i64 8, !854}
!2877 = !DILocation(line: 885, column: 9, scope: !2875)
!2878 = !DILocation(line: 886, column: 20, scope: !2845)
!2879 = !DILocation(line: 886, column: 18, scope: !2845)
!2880 = !DILocation(line: 886, column: 32, scope: !2845)
!2881 = !DILocation(line: 886, column: 43, scope: !2845)
!2882 = !DILocation(line: 886, column: 53, scope: !2845)
!2883 = !DILocation(line: 0, scope: !2255, inlinedAt: !2884)
!2884 = distinct !DILocation(line: 886, column: 7, scope: !2845)
!2885 = !DILocation(line: 59, column: 10, scope: !2255, inlinedAt: !2884)
!2886 = !DILocation(line: 887, column: 16, scope: !2845)
!2887 = !DILocation(line: 887, column: 14, scope: !2845)
!2888 = !DILocation(line: 888, column: 5, scope: !2846)
!2889 = !DILocation(line: 888, column: 5, scope: !2845)
!2890 = !DILocation(line: 891, column: 19, scope: !2849)
!2891 = !DILocation(line: 891, column: 25, scope: !2849)
!2892 = !DILocation(line: 0, scope: !2849)
!2893 = !DILocation(line: 892, column: 23, scope: !2849)
!2894 = !DILocation(line: 894, column: 26, scope: !2849)
!2895 = !DILocation(line: 894, column: 32, scope: !2849)
!2896 = !DILocation(line: 896, column: 55, scope: !2849)
!2897 = !DILocation(line: 897, column: 55, scope: !2849)
!2898 = !DILocation(line: 898, column: 55, scope: !2849)
!2899 = !DILocation(line: 899, column: 55, scope: !2849)
!2900 = !DILocation(line: 895, column: 20, scope: !2849)
!2901 = !DILocation(line: 901, column: 14, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2849, file: !542, line: 901, column: 9)
!2903 = !DILocation(line: 901, column: 9, scope: !2849)
!2904 = !DILocation(line: 903, column: 35, scope: !2905)
!2905 = distinct !DILexicalBlock(scope: !2902, file: !542, line: 902, column: 7)
!2906 = !DILocation(line: 903, column: 20, scope: !2905)
!2907 = !DILocation(line: 904, column: 17, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2905, file: !542, line: 904, column: 13)
!2909 = !DILocation(line: 904, column: 13, scope: !2905)
!2910 = !DILocation(line: 905, column: 11, scope: !2908)
!2911 = !DILocation(line: 906, column: 27, scope: !2905)
!2912 = !DILocation(line: 906, column: 19, scope: !2905)
!2913 = !DILocation(line: 907, column: 69, scope: !2905)
!2914 = !DILocation(line: 909, column: 44, scope: !2905)
!2915 = !DILocation(line: 910, column: 44, scope: !2905)
!2916 = !DILocation(line: 907, column: 9, scope: !2905)
!2917 = !DILocation(line: 911, column: 7, scope: !2905)
!2918 = !DILocation(line: 913, column: 11, scope: !2849)
!2919 = !DILocation(line: 914, column: 5, scope: !2849)
!2920 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !542, file: !542, line: 925, type: !2921, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !563, retainedNodes: !2923)
!2921 = !DISubroutineType(types: !2922)
!2922 = !{!128, !85, !138, !136}
!2923 = !{!2924, !2925, !2926}
!2924 = !DILocalVariable(name: "n", arg: 1, scope: !2920, file: !542, line: 925, type: !85)
!2925 = !DILocalVariable(name: "arg", arg: 2, scope: !2920, file: !542, line: 925, type: !138)
!2926 = !DILocalVariable(name: "argsize", arg: 3, scope: !2920, file: !542, line: 925, type: !136)
!2927 = !DILocation(line: 0, scope: !2920)
!2928 = !DILocation(line: 927, column: 10, scope: !2920)
!2929 = !DILocation(line: 927, column: 3, scope: !2920)
!2930 = distinct !DISubprogram(name: "quotearg", scope: !542, file: !542, line: 931, type: !1051, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !563, retainedNodes: !2931)
!2931 = !{!2932}
!2932 = !DILocalVariable(name: "arg", arg: 1, scope: !2930, file: !542, line: 931, type: !138)
!2933 = !DILocation(line: 0, scope: !2930)
!2934 = !DILocation(line: 0, scope: !2826, inlinedAt: !2935)
!2935 = distinct !DILocation(line: 933, column: 10, scope: !2930)
!2936 = !DILocation(line: 921, column: 10, scope: !2826, inlinedAt: !2935)
!2937 = !DILocation(line: 933, column: 3, scope: !2930)
!2938 = distinct !DISubprogram(name: "quotearg_mem", scope: !542, file: !542, line: 937, type: !2939, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !563, retainedNodes: !2941)
!2939 = !DISubroutineType(types: !2940)
!2940 = !{!128, !138, !136}
!2941 = !{!2942, !2943}
!2942 = !DILocalVariable(name: "arg", arg: 1, scope: !2938, file: !542, line: 937, type: !138)
!2943 = !DILocalVariable(name: "argsize", arg: 2, scope: !2938, file: !542, line: 937, type: !136)
!2944 = !DILocation(line: 0, scope: !2938)
!2945 = !DILocation(line: 0, scope: !2920, inlinedAt: !2946)
!2946 = distinct !DILocation(line: 939, column: 10, scope: !2938)
!2947 = !DILocation(line: 927, column: 10, scope: !2920, inlinedAt: !2946)
!2948 = !DILocation(line: 939, column: 3, scope: !2938)
!2949 = distinct !DISubprogram(name: "quotearg_n_style", scope: !542, file: !542, line: 943, type: !2950, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !563, retainedNodes: !2952)
!2950 = !DISubroutineType(types: !2951)
!2951 = !{!128, !85, !98, !138}
!2952 = !{!2953, !2954, !2955, !2956}
!2953 = !DILocalVariable(name: "n", arg: 1, scope: !2949, file: !542, line: 943, type: !85)
!2954 = !DILocalVariable(name: "s", arg: 2, scope: !2949, file: !542, line: 943, type: !98)
!2955 = !DILocalVariable(name: "arg", arg: 3, scope: !2949, file: !542, line: 943, type: !138)
!2956 = !DILocalVariable(name: "o", scope: !2949, file: !542, line: 945, type: !2041)
!2957 = !DILocation(line: 0, scope: !2949)
!2958 = !DILocation(line: 945, column: 3, scope: !2949)
!2959 = !DILocation(line: 945, column: 32, scope: !2949)
!2960 = !{!2961}
!2961 = distinct !{!2961, !2962, !"quoting_options_from_style: argument 0"}
!2962 = distinct !{!2962, !"quoting_options_from_style"}
!2963 = !DILocation(line: 945, column: 36, scope: !2949)
!2964 = !DILocalVariable(name: "style", arg: 1, scope: !2965, file: !542, line: 183, type: !98)
!2965 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !542, file: !542, line: 183, type: !2966, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !563, retainedNodes: !2968)
!2966 = !DISubroutineType(types: !2967)
!2967 = !{!578, !98}
!2968 = !{!2964, !2969}
!2969 = !DILocalVariable(name: "o", scope: !2965, file: !542, line: 185, type: !578)
!2970 = !DILocation(line: 0, scope: !2965, inlinedAt: !2971)
!2971 = distinct !DILocation(line: 945, column: 36, scope: !2949)
!2972 = !DILocation(line: 185, column: 26, scope: !2965, inlinedAt: !2971)
!2973 = !DILocation(line: 186, column: 13, scope: !2974, inlinedAt: !2971)
!2974 = distinct !DILexicalBlock(scope: !2965, file: !542, line: 186, column: 7)
!2975 = !DILocation(line: 186, column: 7, scope: !2965, inlinedAt: !2971)
!2976 = !DILocation(line: 187, column: 5, scope: !2974, inlinedAt: !2971)
!2977 = !DILocation(line: 188, column: 11, scope: !2965, inlinedAt: !2971)
!2978 = !DILocation(line: 946, column: 10, scope: !2949)
!2979 = !DILocation(line: 947, column: 1, scope: !2949)
!2980 = !DILocation(line: 946, column: 3, scope: !2949)
!2981 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !542, file: !542, line: 950, type: !2982, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !563, retainedNodes: !2984)
!2982 = !DISubroutineType(types: !2983)
!2983 = !{!128, !85, !98, !138, !136}
!2984 = !{!2985, !2986, !2987, !2988, !2989}
!2985 = !DILocalVariable(name: "n", arg: 1, scope: !2981, file: !542, line: 950, type: !85)
!2986 = !DILocalVariable(name: "s", arg: 2, scope: !2981, file: !542, line: 950, type: !98)
!2987 = !DILocalVariable(name: "arg", arg: 3, scope: !2981, file: !542, line: 951, type: !138)
!2988 = !DILocalVariable(name: "argsize", arg: 4, scope: !2981, file: !542, line: 951, type: !136)
!2989 = !DILocalVariable(name: "o", scope: !2981, file: !542, line: 953, type: !2041)
!2990 = !DILocation(line: 0, scope: !2981)
!2991 = !DILocation(line: 953, column: 3, scope: !2981)
!2992 = !DILocation(line: 953, column: 32, scope: !2981)
!2993 = !{!2994}
!2994 = distinct !{!2994, !2995, !"quoting_options_from_style: argument 0"}
!2995 = distinct !{!2995, !"quoting_options_from_style"}
!2996 = !DILocation(line: 953, column: 36, scope: !2981)
!2997 = !DILocation(line: 0, scope: !2965, inlinedAt: !2998)
!2998 = distinct !DILocation(line: 953, column: 36, scope: !2981)
!2999 = !DILocation(line: 185, column: 26, scope: !2965, inlinedAt: !2998)
!3000 = !DILocation(line: 186, column: 13, scope: !2974, inlinedAt: !2998)
!3001 = !DILocation(line: 186, column: 7, scope: !2965, inlinedAt: !2998)
!3002 = !DILocation(line: 187, column: 5, scope: !2974, inlinedAt: !2998)
!3003 = !DILocation(line: 188, column: 11, scope: !2965, inlinedAt: !2998)
!3004 = !DILocation(line: 954, column: 10, scope: !2981)
!3005 = !DILocation(line: 955, column: 1, scope: !2981)
!3006 = !DILocation(line: 954, column: 3, scope: !2981)
!3007 = distinct !DISubprogram(name: "quotearg_style", scope: !542, file: !542, line: 958, type: !3008, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !563, retainedNodes: !3010)
!3008 = !DISubroutineType(types: !3009)
!3009 = !{!128, !98, !138}
!3010 = !{!3011, !3012}
!3011 = !DILocalVariable(name: "s", arg: 1, scope: !3007, file: !542, line: 958, type: !98)
!3012 = !DILocalVariable(name: "arg", arg: 2, scope: !3007, file: !542, line: 958, type: !138)
!3013 = !DILocation(line: 0, scope: !3007)
!3014 = !DILocation(line: 0, scope: !2949, inlinedAt: !3015)
!3015 = distinct !DILocation(line: 960, column: 10, scope: !3007)
!3016 = !DILocation(line: 945, column: 3, scope: !2949, inlinedAt: !3015)
!3017 = !DILocation(line: 945, column: 32, scope: !2949, inlinedAt: !3015)
!3018 = !{!3019}
!3019 = distinct !{!3019, !3020, !"quoting_options_from_style: argument 0"}
!3020 = distinct !{!3020, !"quoting_options_from_style"}
!3021 = !DILocation(line: 945, column: 36, scope: !2949, inlinedAt: !3015)
!3022 = !DILocation(line: 0, scope: !2965, inlinedAt: !3023)
!3023 = distinct !DILocation(line: 945, column: 36, scope: !2949, inlinedAt: !3015)
!3024 = !DILocation(line: 185, column: 26, scope: !2965, inlinedAt: !3023)
!3025 = !DILocation(line: 186, column: 13, scope: !2974, inlinedAt: !3023)
!3026 = !DILocation(line: 186, column: 7, scope: !2965, inlinedAt: !3023)
!3027 = !DILocation(line: 187, column: 5, scope: !2974, inlinedAt: !3023)
!3028 = !DILocation(line: 188, column: 11, scope: !2965, inlinedAt: !3023)
!3029 = !DILocation(line: 946, column: 10, scope: !2949, inlinedAt: !3015)
!3030 = !DILocation(line: 947, column: 1, scope: !2949, inlinedAt: !3015)
!3031 = !DILocation(line: 960, column: 3, scope: !3007)
!3032 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !542, file: !542, line: 964, type: !3033, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !563, retainedNodes: !3035)
!3033 = !DISubroutineType(types: !3034)
!3034 = !{!128, !98, !138, !136}
!3035 = !{!3036, !3037, !3038}
!3036 = !DILocalVariable(name: "s", arg: 1, scope: !3032, file: !542, line: 964, type: !98)
!3037 = !DILocalVariable(name: "arg", arg: 2, scope: !3032, file: !542, line: 964, type: !138)
!3038 = !DILocalVariable(name: "argsize", arg: 3, scope: !3032, file: !542, line: 964, type: !136)
!3039 = !DILocation(line: 0, scope: !3032)
!3040 = !DILocation(line: 0, scope: !2981, inlinedAt: !3041)
!3041 = distinct !DILocation(line: 966, column: 10, scope: !3032)
!3042 = !DILocation(line: 953, column: 3, scope: !2981, inlinedAt: !3041)
!3043 = !DILocation(line: 953, column: 32, scope: !2981, inlinedAt: !3041)
!3044 = !{!3045}
!3045 = distinct !{!3045, !3046, !"quoting_options_from_style: argument 0"}
!3046 = distinct !{!3046, !"quoting_options_from_style"}
!3047 = !DILocation(line: 953, column: 36, scope: !2981, inlinedAt: !3041)
!3048 = !DILocation(line: 0, scope: !2965, inlinedAt: !3049)
!3049 = distinct !DILocation(line: 953, column: 36, scope: !2981, inlinedAt: !3041)
!3050 = !DILocation(line: 185, column: 26, scope: !2965, inlinedAt: !3049)
!3051 = !DILocation(line: 186, column: 13, scope: !2974, inlinedAt: !3049)
!3052 = !DILocation(line: 186, column: 7, scope: !2965, inlinedAt: !3049)
!3053 = !DILocation(line: 187, column: 5, scope: !2974, inlinedAt: !3049)
!3054 = !DILocation(line: 188, column: 11, scope: !2965, inlinedAt: !3049)
!3055 = !DILocation(line: 954, column: 10, scope: !2981, inlinedAt: !3041)
!3056 = !DILocation(line: 955, column: 1, scope: !2981, inlinedAt: !3041)
!3057 = !DILocation(line: 966, column: 3, scope: !3032)
!3058 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !542, file: !542, line: 970, type: !3059, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !563, retainedNodes: !3061)
!3059 = !DISubroutineType(types: !3060)
!3060 = !{!128, !138, !136, !4}
!3061 = !{!3062, !3063, !3064, !3065}
!3062 = !DILocalVariable(name: "arg", arg: 1, scope: !3058, file: !542, line: 970, type: !138)
!3063 = !DILocalVariable(name: "argsize", arg: 2, scope: !3058, file: !542, line: 970, type: !136)
!3064 = !DILocalVariable(name: "ch", arg: 3, scope: !3058, file: !542, line: 970, type: !4)
!3065 = !DILocalVariable(name: "options", scope: !3058, file: !542, line: 972, type: !578)
!3066 = !DILocation(line: 0, scope: !3058)
!3067 = !DILocation(line: 972, column: 3, scope: !3058)
!3068 = !DILocation(line: 972, column: 26, scope: !3058)
!3069 = !DILocation(line: 973, column: 13, scope: !3058)
!3070 = !{i64 0, i64 4, !933, i64 4, i64 4, !924, i64 8, i64 32, !933, i64 40, i64 8, !854, i64 48, i64 8, !854}
!3071 = !DILocation(line: 0, scope: !2060, inlinedAt: !3072)
!3072 = distinct !DILocation(line: 974, column: 3, scope: !3058)
!3073 = !DILocation(line: 147, column: 41, scope: !2060, inlinedAt: !3072)
!3074 = !DILocation(line: 147, column: 62, scope: !2060, inlinedAt: !3072)
!3075 = !DILocation(line: 147, column: 57, scope: !2060, inlinedAt: !3072)
!3076 = !DILocation(line: 148, column: 15, scope: !2060, inlinedAt: !3072)
!3077 = !DILocation(line: 149, column: 21, scope: !2060, inlinedAt: !3072)
!3078 = !DILocation(line: 149, column: 24, scope: !2060, inlinedAt: !3072)
!3079 = !DILocation(line: 150, column: 19, scope: !2060, inlinedAt: !3072)
!3080 = !DILocation(line: 150, column: 24, scope: !2060, inlinedAt: !3072)
!3081 = !DILocation(line: 150, column: 6, scope: !2060, inlinedAt: !3072)
!3082 = !DILocation(line: 975, column: 10, scope: !3058)
!3083 = !DILocation(line: 976, column: 1, scope: !3058)
!3084 = !DILocation(line: 975, column: 3, scope: !3058)
!3085 = distinct !DISubprogram(name: "quotearg_char", scope: !542, file: !542, line: 979, type: !3086, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !563, retainedNodes: !3088)
!3086 = !DISubroutineType(types: !3087)
!3087 = !{!128, !138, !4}
!3088 = !{!3089, !3090}
!3089 = !DILocalVariable(name: "arg", arg: 1, scope: !3085, file: !542, line: 979, type: !138)
!3090 = !DILocalVariable(name: "ch", arg: 2, scope: !3085, file: !542, line: 979, type: !4)
!3091 = !DILocation(line: 0, scope: !3085)
!3092 = !DILocation(line: 0, scope: !3058, inlinedAt: !3093)
!3093 = distinct !DILocation(line: 981, column: 10, scope: !3085)
!3094 = !DILocation(line: 972, column: 3, scope: !3058, inlinedAt: !3093)
!3095 = !DILocation(line: 972, column: 26, scope: !3058, inlinedAt: !3093)
!3096 = !DILocation(line: 973, column: 13, scope: !3058, inlinedAt: !3093)
!3097 = !DILocation(line: 0, scope: !2060, inlinedAt: !3098)
!3098 = distinct !DILocation(line: 974, column: 3, scope: !3058, inlinedAt: !3093)
!3099 = !DILocation(line: 147, column: 41, scope: !2060, inlinedAt: !3098)
!3100 = !DILocation(line: 147, column: 62, scope: !2060, inlinedAt: !3098)
!3101 = !DILocation(line: 147, column: 57, scope: !2060, inlinedAt: !3098)
!3102 = !DILocation(line: 148, column: 15, scope: !2060, inlinedAt: !3098)
!3103 = !DILocation(line: 149, column: 21, scope: !2060, inlinedAt: !3098)
!3104 = !DILocation(line: 149, column: 24, scope: !2060, inlinedAt: !3098)
!3105 = !DILocation(line: 150, column: 19, scope: !2060, inlinedAt: !3098)
!3106 = !DILocation(line: 150, column: 24, scope: !2060, inlinedAt: !3098)
!3107 = !DILocation(line: 150, column: 6, scope: !2060, inlinedAt: !3098)
!3108 = !DILocation(line: 975, column: 10, scope: !3058, inlinedAt: !3093)
!3109 = !DILocation(line: 976, column: 1, scope: !3058, inlinedAt: !3093)
!3110 = !DILocation(line: 981, column: 3, scope: !3085)
!3111 = distinct !DISubprogram(name: "quotearg_colon", scope: !542, file: !542, line: 985, type: !1051, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !563, retainedNodes: !3112)
!3112 = !{!3113}
!3113 = !DILocalVariable(name: "arg", arg: 1, scope: !3111, file: !542, line: 985, type: !138)
!3114 = !DILocation(line: 0, scope: !3111)
!3115 = !DILocation(line: 0, scope: !3085, inlinedAt: !3116)
!3116 = distinct !DILocation(line: 987, column: 10, scope: !3111)
!3117 = !DILocation(line: 0, scope: !3058, inlinedAt: !3118)
!3118 = distinct !DILocation(line: 981, column: 10, scope: !3085, inlinedAt: !3116)
!3119 = !DILocation(line: 972, column: 3, scope: !3058, inlinedAt: !3118)
!3120 = !DILocation(line: 972, column: 26, scope: !3058, inlinedAt: !3118)
!3121 = !DILocation(line: 973, column: 13, scope: !3058, inlinedAt: !3118)
!3122 = !DILocation(line: 0, scope: !2060, inlinedAt: !3123)
!3123 = distinct !DILocation(line: 974, column: 3, scope: !3058, inlinedAt: !3118)
!3124 = !DILocation(line: 147, column: 57, scope: !2060, inlinedAt: !3123)
!3125 = !DILocation(line: 149, column: 21, scope: !2060, inlinedAt: !3123)
!3126 = !DILocation(line: 150, column: 6, scope: !2060, inlinedAt: !3123)
!3127 = !DILocation(line: 975, column: 10, scope: !3058, inlinedAt: !3118)
!3128 = !DILocation(line: 976, column: 1, scope: !3058, inlinedAt: !3118)
!3129 = !DILocation(line: 987, column: 3, scope: !3111)
!3130 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !542, file: !542, line: 991, type: !2939, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !563, retainedNodes: !3131)
!3131 = !{!3132, !3133}
!3132 = !DILocalVariable(name: "arg", arg: 1, scope: !3130, file: !542, line: 991, type: !138)
!3133 = !DILocalVariable(name: "argsize", arg: 2, scope: !3130, file: !542, line: 991, type: !136)
!3134 = !DILocation(line: 0, scope: !3130)
!3135 = !DILocation(line: 0, scope: !3058, inlinedAt: !3136)
!3136 = distinct !DILocation(line: 993, column: 10, scope: !3130)
!3137 = !DILocation(line: 972, column: 3, scope: !3058, inlinedAt: !3136)
!3138 = !DILocation(line: 972, column: 26, scope: !3058, inlinedAt: !3136)
!3139 = !DILocation(line: 973, column: 13, scope: !3058, inlinedAt: !3136)
!3140 = !DILocation(line: 0, scope: !2060, inlinedAt: !3141)
!3141 = distinct !DILocation(line: 974, column: 3, scope: !3058, inlinedAt: !3136)
!3142 = !DILocation(line: 147, column: 57, scope: !2060, inlinedAt: !3141)
!3143 = !DILocation(line: 149, column: 21, scope: !2060, inlinedAt: !3141)
!3144 = !DILocation(line: 150, column: 6, scope: !2060, inlinedAt: !3141)
!3145 = !DILocation(line: 975, column: 10, scope: !3058, inlinedAt: !3136)
!3146 = !DILocation(line: 976, column: 1, scope: !3058, inlinedAt: !3136)
!3147 = !DILocation(line: 993, column: 3, scope: !3130)
!3148 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !542, file: !542, line: 997, type: !2950, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !563, retainedNodes: !3149)
!3149 = !{!3150, !3151, !3152, !3153}
!3150 = !DILocalVariable(name: "n", arg: 1, scope: !3148, file: !542, line: 997, type: !85)
!3151 = !DILocalVariable(name: "s", arg: 2, scope: !3148, file: !542, line: 997, type: !98)
!3152 = !DILocalVariable(name: "arg", arg: 3, scope: !3148, file: !542, line: 997, type: !138)
!3153 = !DILocalVariable(name: "options", scope: !3148, file: !542, line: 999, type: !578)
!3154 = !DILocation(line: 185, column: 26, scope: !2965, inlinedAt: !3155)
!3155 = distinct !DILocation(line: 1000, column: 13, scope: !3148)
!3156 = !DILocation(line: 0, scope: !3148)
!3157 = !DILocation(line: 999, column: 3, scope: !3148)
!3158 = !DILocation(line: 999, column: 26, scope: !3148)
!3159 = !DILocation(line: 0, scope: !2965, inlinedAt: !3155)
!3160 = !DILocation(line: 186, column: 13, scope: !2974, inlinedAt: !3155)
!3161 = !DILocation(line: 186, column: 7, scope: !2965, inlinedAt: !3155)
!3162 = !DILocation(line: 187, column: 5, scope: !2974, inlinedAt: !3155)
!3163 = !{!3164}
!3164 = distinct !{!3164, !3165, !"quoting_options_from_style: argument 0"}
!3165 = distinct !{!3165, !"quoting_options_from_style"}
!3166 = !DILocation(line: 1000, column: 13, scope: !3148)
!3167 = !DILocation(line: 0, scope: !2060, inlinedAt: !3168)
!3168 = distinct !DILocation(line: 1001, column: 3, scope: !3148)
!3169 = !DILocation(line: 147, column: 57, scope: !2060, inlinedAt: !3168)
!3170 = !DILocation(line: 149, column: 21, scope: !2060, inlinedAt: !3168)
!3171 = !DILocation(line: 150, column: 6, scope: !2060, inlinedAt: !3168)
!3172 = !DILocation(line: 1002, column: 10, scope: !3148)
!3173 = !DILocation(line: 1003, column: 1, scope: !3148)
!3174 = !DILocation(line: 1002, column: 3, scope: !3148)
!3175 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !542, file: !542, line: 1006, type: !3176, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !563, retainedNodes: !3178)
!3176 = !DISubroutineType(types: !3177)
!3177 = !{!128, !85, !138, !138, !138}
!3178 = !{!3179, !3180, !3181, !3182}
!3179 = !DILocalVariable(name: "n", arg: 1, scope: !3175, file: !542, line: 1006, type: !85)
!3180 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3175, file: !542, line: 1006, type: !138)
!3181 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3175, file: !542, line: 1007, type: !138)
!3182 = !DILocalVariable(name: "arg", arg: 4, scope: !3175, file: !542, line: 1007, type: !138)
!3183 = !DILocation(line: 0, scope: !3175)
!3184 = !DILocalVariable(name: "n", arg: 1, scope: !3185, file: !542, line: 1014, type: !85)
!3185 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !542, file: !542, line: 1014, type: !3186, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !563, retainedNodes: !3188)
!3186 = !DISubroutineType(types: !3187)
!3187 = !{!128, !85, !138, !138, !138, !136}
!3188 = !{!3184, !3189, !3190, !3191, !3192, !3193}
!3189 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3185, file: !542, line: 1014, type: !138)
!3190 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3185, file: !542, line: 1015, type: !138)
!3191 = !DILocalVariable(name: "arg", arg: 4, scope: !3185, file: !542, line: 1016, type: !138)
!3192 = !DILocalVariable(name: "argsize", arg: 5, scope: !3185, file: !542, line: 1016, type: !136)
!3193 = !DILocalVariable(name: "o", scope: !3185, file: !542, line: 1018, type: !578)
!3194 = !DILocation(line: 0, scope: !3185, inlinedAt: !3195)
!3195 = distinct !DILocation(line: 1009, column: 10, scope: !3175)
!3196 = !DILocation(line: 1018, column: 3, scope: !3185, inlinedAt: !3195)
!3197 = !DILocation(line: 1018, column: 26, scope: !3185, inlinedAt: !3195)
!3198 = !DILocation(line: 1018, column: 30, scope: !3185, inlinedAt: !3195)
!3199 = !DILocation(line: 0, scope: !2100, inlinedAt: !3200)
!3200 = distinct !DILocation(line: 1019, column: 3, scope: !3185, inlinedAt: !3195)
!3201 = !DILocation(line: 174, column: 12, scope: !2100, inlinedAt: !3200)
!3202 = !DILocation(line: 175, column: 8, scope: !2113, inlinedAt: !3200)
!3203 = !DILocation(line: 175, column: 19, scope: !2113, inlinedAt: !3200)
!3204 = !DILocation(line: 176, column: 5, scope: !2113, inlinedAt: !3200)
!3205 = !DILocation(line: 177, column: 6, scope: !2100, inlinedAt: !3200)
!3206 = !DILocation(line: 177, column: 17, scope: !2100, inlinedAt: !3200)
!3207 = !DILocation(line: 178, column: 6, scope: !2100, inlinedAt: !3200)
!3208 = !DILocation(line: 178, column: 18, scope: !2100, inlinedAt: !3200)
!3209 = !DILocation(line: 1020, column: 10, scope: !3185, inlinedAt: !3195)
!3210 = !DILocation(line: 1021, column: 1, scope: !3185, inlinedAt: !3195)
!3211 = !DILocation(line: 1009, column: 3, scope: !3175)
!3212 = !DILocation(line: 0, scope: !3185)
!3213 = !DILocation(line: 1018, column: 3, scope: !3185)
!3214 = !DILocation(line: 1018, column: 26, scope: !3185)
!3215 = !DILocation(line: 1018, column: 30, scope: !3185)
!3216 = !DILocation(line: 0, scope: !2100, inlinedAt: !3217)
!3217 = distinct !DILocation(line: 1019, column: 3, scope: !3185)
!3218 = !DILocation(line: 174, column: 12, scope: !2100, inlinedAt: !3217)
!3219 = !DILocation(line: 175, column: 8, scope: !2113, inlinedAt: !3217)
!3220 = !DILocation(line: 175, column: 19, scope: !2113, inlinedAt: !3217)
!3221 = !DILocation(line: 176, column: 5, scope: !2113, inlinedAt: !3217)
!3222 = !DILocation(line: 177, column: 6, scope: !2100, inlinedAt: !3217)
!3223 = !DILocation(line: 177, column: 17, scope: !2100, inlinedAt: !3217)
!3224 = !DILocation(line: 178, column: 6, scope: !2100, inlinedAt: !3217)
!3225 = !DILocation(line: 178, column: 18, scope: !2100, inlinedAt: !3217)
!3226 = !DILocation(line: 1020, column: 10, scope: !3185)
!3227 = !DILocation(line: 1021, column: 1, scope: !3185)
!3228 = !DILocation(line: 1020, column: 3, scope: !3185)
!3229 = distinct !DISubprogram(name: "quotearg_custom", scope: !542, file: !542, line: 1024, type: !3230, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !563, retainedNodes: !3232)
!3230 = !DISubroutineType(types: !3231)
!3231 = !{!128, !138, !138, !138}
!3232 = !{!3233, !3234, !3235}
!3233 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3229, file: !542, line: 1024, type: !138)
!3234 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3229, file: !542, line: 1024, type: !138)
!3235 = !DILocalVariable(name: "arg", arg: 3, scope: !3229, file: !542, line: 1025, type: !138)
!3236 = !DILocation(line: 0, scope: !3229)
!3237 = !DILocation(line: 0, scope: !3175, inlinedAt: !3238)
!3238 = distinct !DILocation(line: 1027, column: 10, scope: !3229)
!3239 = !DILocation(line: 0, scope: !3185, inlinedAt: !3240)
!3240 = distinct !DILocation(line: 1009, column: 10, scope: !3175, inlinedAt: !3238)
!3241 = !DILocation(line: 1018, column: 3, scope: !3185, inlinedAt: !3240)
!3242 = !DILocation(line: 1018, column: 26, scope: !3185, inlinedAt: !3240)
!3243 = !DILocation(line: 1018, column: 30, scope: !3185, inlinedAt: !3240)
!3244 = !DILocation(line: 0, scope: !2100, inlinedAt: !3245)
!3245 = distinct !DILocation(line: 1019, column: 3, scope: !3185, inlinedAt: !3240)
!3246 = !DILocation(line: 174, column: 12, scope: !2100, inlinedAt: !3245)
!3247 = !DILocation(line: 175, column: 8, scope: !2113, inlinedAt: !3245)
!3248 = !DILocation(line: 175, column: 19, scope: !2113, inlinedAt: !3245)
!3249 = !DILocation(line: 176, column: 5, scope: !2113, inlinedAt: !3245)
!3250 = !DILocation(line: 177, column: 6, scope: !2100, inlinedAt: !3245)
!3251 = !DILocation(line: 177, column: 17, scope: !2100, inlinedAt: !3245)
!3252 = !DILocation(line: 178, column: 6, scope: !2100, inlinedAt: !3245)
!3253 = !DILocation(line: 178, column: 18, scope: !2100, inlinedAt: !3245)
!3254 = !DILocation(line: 1020, column: 10, scope: !3185, inlinedAt: !3240)
!3255 = !DILocation(line: 1021, column: 1, scope: !3185, inlinedAt: !3240)
!3256 = !DILocation(line: 1027, column: 3, scope: !3229)
!3257 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !542, file: !542, line: 1031, type: !3258, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !563, retainedNodes: !3260)
!3258 = !DISubroutineType(types: !3259)
!3259 = !{!128, !138, !138, !138, !136}
!3260 = !{!3261, !3262, !3263, !3264}
!3261 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3257, file: !542, line: 1031, type: !138)
!3262 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3257, file: !542, line: 1031, type: !138)
!3263 = !DILocalVariable(name: "arg", arg: 3, scope: !3257, file: !542, line: 1032, type: !138)
!3264 = !DILocalVariable(name: "argsize", arg: 4, scope: !3257, file: !542, line: 1032, type: !136)
!3265 = !DILocation(line: 0, scope: !3257)
!3266 = !DILocation(line: 0, scope: !3185, inlinedAt: !3267)
!3267 = distinct !DILocation(line: 1034, column: 10, scope: !3257)
!3268 = !DILocation(line: 1018, column: 3, scope: !3185, inlinedAt: !3267)
!3269 = !DILocation(line: 1018, column: 26, scope: !3185, inlinedAt: !3267)
!3270 = !DILocation(line: 1018, column: 30, scope: !3185, inlinedAt: !3267)
!3271 = !DILocation(line: 0, scope: !2100, inlinedAt: !3272)
!3272 = distinct !DILocation(line: 1019, column: 3, scope: !3185, inlinedAt: !3267)
!3273 = !DILocation(line: 174, column: 12, scope: !2100, inlinedAt: !3272)
!3274 = !DILocation(line: 175, column: 8, scope: !2113, inlinedAt: !3272)
!3275 = !DILocation(line: 175, column: 19, scope: !2113, inlinedAt: !3272)
!3276 = !DILocation(line: 176, column: 5, scope: !2113, inlinedAt: !3272)
!3277 = !DILocation(line: 177, column: 6, scope: !2100, inlinedAt: !3272)
!3278 = !DILocation(line: 177, column: 17, scope: !2100, inlinedAt: !3272)
!3279 = !DILocation(line: 178, column: 6, scope: !2100, inlinedAt: !3272)
!3280 = !DILocation(line: 178, column: 18, scope: !2100, inlinedAt: !3272)
!3281 = !DILocation(line: 1020, column: 10, scope: !3185, inlinedAt: !3267)
!3282 = !DILocation(line: 1021, column: 1, scope: !3185, inlinedAt: !3267)
!3283 = !DILocation(line: 1034, column: 3, scope: !3257)
!3284 = distinct !DISubprogram(name: "quote_n_mem", scope: !542, file: !542, line: 1049, type: !3285, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !563, retainedNodes: !3287)
!3285 = !DISubroutineType(types: !3286)
!3286 = !{!138, !85, !138, !136}
!3287 = !{!3288, !3289, !3290}
!3288 = !DILocalVariable(name: "n", arg: 1, scope: !3284, file: !542, line: 1049, type: !85)
!3289 = !DILocalVariable(name: "arg", arg: 2, scope: !3284, file: !542, line: 1049, type: !138)
!3290 = !DILocalVariable(name: "argsize", arg: 3, scope: !3284, file: !542, line: 1049, type: !136)
!3291 = !DILocation(line: 0, scope: !3284)
!3292 = !DILocation(line: 1051, column: 10, scope: !3284)
!3293 = !DILocation(line: 1051, column: 3, scope: !3284)
!3294 = distinct !DISubprogram(name: "quote_mem", scope: !542, file: !542, line: 1055, type: !3295, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !563, retainedNodes: !3297)
!3295 = !DISubroutineType(types: !3296)
!3296 = !{!138, !138, !136}
!3297 = !{!3298, !3299}
!3298 = !DILocalVariable(name: "arg", arg: 1, scope: !3294, file: !542, line: 1055, type: !138)
!3299 = !DILocalVariable(name: "argsize", arg: 2, scope: !3294, file: !542, line: 1055, type: !136)
!3300 = !DILocation(line: 0, scope: !3294)
!3301 = !DILocation(line: 0, scope: !3284, inlinedAt: !3302)
!3302 = distinct !DILocation(line: 1057, column: 10, scope: !3294)
!3303 = !DILocation(line: 1051, column: 10, scope: !3284, inlinedAt: !3302)
!3304 = !DILocation(line: 1057, column: 3, scope: !3294)
!3305 = distinct !DISubprogram(name: "quote_n", scope: !542, file: !542, line: 1061, type: !3306, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !563, retainedNodes: !3308)
!3306 = !DISubroutineType(types: !3307)
!3307 = !{!138, !85, !138}
!3308 = !{!3309, !3310}
!3309 = !DILocalVariable(name: "n", arg: 1, scope: !3305, file: !542, line: 1061, type: !85)
!3310 = !DILocalVariable(name: "arg", arg: 2, scope: !3305, file: !542, line: 1061, type: !138)
!3311 = !DILocation(line: 0, scope: !3305)
!3312 = !DILocation(line: 0, scope: !3284, inlinedAt: !3313)
!3313 = distinct !DILocation(line: 1063, column: 10, scope: !3305)
!3314 = !DILocation(line: 1051, column: 10, scope: !3284, inlinedAt: !3313)
!3315 = !DILocation(line: 1063, column: 3, scope: !3305)
!3316 = distinct !DISubprogram(name: "quote", scope: !542, file: !542, line: 1067, type: !3317, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !563, retainedNodes: !3319)
!3317 = !DISubroutineType(types: !3318)
!3318 = !{!138, !138}
!3319 = !{!3320}
!3320 = !DILocalVariable(name: "arg", arg: 1, scope: !3316, file: !542, line: 1067, type: !138)
!3321 = !DILocation(line: 0, scope: !3316)
!3322 = !DILocation(line: 0, scope: !3305, inlinedAt: !3323)
!3323 = distinct !DILocation(line: 1069, column: 10, scope: !3316)
!3324 = !DILocation(line: 0, scope: !3284, inlinedAt: !3325)
!3325 = distinct !DILocation(line: 1063, column: 10, scope: !3305, inlinedAt: !3323)
!3326 = !DILocation(line: 1051, column: 10, scope: !3284, inlinedAt: !3325)
!3327 = !DILocation(line: 1069, column: 3, scope: !3316)
!3328 = distinct !DISubprogram(name: "version_etc_arn", scope: !641, file: !641, line: 61, type: !3329, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !3366)
!3329 = !DISubroutineType(types: !3330)
!3330 = !{null, !3331, !138, !138, !138, !3365, !136}
!3331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3332, size: 64)
!3332 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !249, line: 7, baseType: !3333)
!3333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !251, line: 49, size: 1728, elements: !3334)
!3334 = !{!3335, !3336, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364}
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3333, file: !251, line: 51, baseType: !85, size: 32)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3333, file: !251, line: 54, baseType: !128, size: 64, offset: 64)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3333, file: !251, line: 55, baseType: !128, size: 64, offset: 128)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3333, file: !251, line: 56, baseType: !128, size: 64, offset: 192)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3333, file: !251, line: 57, baseType: !128, size: 64, offset: 256)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3333, file: !251, line: 58, baseType: !128, size: 64, offset: 320)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3333, file: !251, line: 59, baseType: !128, size: 64, offset: 384)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3333, file: !251, line: 60, baseType: !128, size: 64, offset: 448)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3333, file: !251, line: 61, baseType: !128, size: 64, offset: 512)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3333, file: !251, line: 64, baseType: !128, size: 64, offset: 576)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3333, file: !251, line: 65, baseType: !128, size: 64, offset: 640)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3333, file: !251, line: 66, baseType: !128, size: 64, offset: 704)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3333, file: !251, line: 68, baseType: !266, size: 64, offset: 768)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3333, file: !251, line: 70, baseType: !3349, size: 64, offset: 832)
!3349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3333, size: 64)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3333, file: !251, line: 72, baseType: !85, size: 32, offset: 896)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3333, file: !251, line: 73, baseType: !85, size: 32, offset: 928)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3333, file: !251, line: 74, baseType: !273, size: 64, offset: 960)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3333, file: !251, line: 77, baseType: !135, size: 16, offset: 1024)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3333, file: !251, line: 78, baseType: !277, size: 8, offset: 1040)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3333, file: !251, line: 79, baseType: !61, size: 8, offset: 1048)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3333, file: !251, line: 81, baseType: !280, size: 64, offset: 1088)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3333, file: !251, line: 89, baseType: !283, size: 64, offset: 1152)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3333, file: !251, line: 91, baseType: !285, size: 64, offset: 1216)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3333, file: !251, line: 92, baseType: !288, size: 64, offset: 1280)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3333, file: !251, line: 93, baseType: !3349, size: 64, offset: 1344)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3333, file: !251, line: 94, baseType: !129, size: 64, offset: 1408)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3333, file: !251, line: 95, baseType: !136, size: 64, offset: 1472)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3333, file: !251, line: 96, baseType: !85, size: 32, offset: 1536)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3333, file: !251, line: 98, baseType: !295, size: 160, offset: 1568)
!3365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!3366 = !{!3367, !3368, !3369, !3370, !3371, !3372}
!3367 = !DILocalVariable(name: "stream", arg: 1, scope: !3328, file: !641, line: 61, type: !3331)
!3368 = !DILocalVariable(name: "command_name", arg: 2, scope: !3328, file: !641, line: 62, type: !138)
!3369 = !DILocalVariable(name: "package", arg: 3, scope: !3328, file: !641, line: 62, type: !138)
!3370 = !DILocalVariable(name: "version", arg: 4, scope: !3328, file: !641, line: 63, type: !138)
!3371 = !DILocalVariable(name: "authors", arg: 5, scope: !3328, file: !641, line: 64, type: !3365)
!3372 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3328, file: !641, line: 64, type: !136)
!3373 = !DILocation(line: 0, scope: !3328)
!3374 = !DILocation(line: 66, column: 7, scope: !3375)
!3375 = distinct !DILexicalBlock(scope: !3328, file: !641, line: 66, column: 7)
!3376 = !DILocation(line: 66, column: 7, scope: !3328)
!3377 = !DILocation(line: 67, column: 5, scope: !3375)
!3378 = !DILocation(line: 69, column: 5, scope: !3375)
!3379 = !DILocation(line: 83, column: 3, scope: !3328)
!3380 = !DILocation(line: 85, column: 3, scope: !3328)
!3381 = !DILocation(line: 88, column: 3, scope: !3328)
!3382 = !DILocation(line: 95, column: 3, scope: !3328)
!3383 = !DILocation(line: 97, column: 3, scope: !3328)
!3384 = !DILocation(line: 105, column: 7, scope: !3385)
!3385 = distinct !DILexicalBlock(scope: !3328, file: !641, line: 98, column: 5)
!3386 = !DILocation(line: 106, column: 7, scope: !3385)
!3387 = !DILocation(line: 109, column: 7, scope: !3385)
!3388 = !DILocation(line: 110, column: 7, scope: !3385)
!3389 = !DILocation(line: 113, column: 7, scope: !3385)
!3390 = !DILocation(line: 115, column: 7, scope: !3385)
!3391 = !DILocation(line: 120, column: 7, scope: !3385)
!3392 = !DILocation(line: 122, column: 7, scope: !3385)
!3393 = !DILocation(line: 127, column: 7, scope: !3385)
!3394 = !DILocation(line: 129, column: 7, scope: !3385)
!3395 = !DILocation(line: 134, column: 7, scope: !3385)
!3396 = !DILocation(line: 137, column: 7, scope: !3385)
!3397 = !DILocation(line: 142, column: 7, scope: !3385)
!3398 = !DILocation(line: 145, column: 7, scope: !3385)
!3399 = !DILocation(line: 150, column: 7, scope: !3385)
!3400 = !DILocation(line: 154, column: 7, scope: !3385)
!3401 = !DILocation(line: 159, column: 7, scope: !3385)
!3402 = !DILocation(line: 163, column: 7, scope: !3385)
!3403 = !DILocation(line: 170, column: 7, scope: !3385)
!3404 = !DILocation(line: 174, column: 7, scope: !3385)
!3405 = !DILocation(line: 176, column: 1, scope: !3328)
!3406 = distinct !DISubprogram(name: "version_etc_ar", scope: !641, file: !641, line: 183, type: !3407, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !3409)
!3407 = !DISubroutineType(types: !3408)
!3408 = !{null, !3331, !138, !138, !138, !3365}
!3409 = !{!3410, !3411, !3412, !3413, !3414, !3415}
!3410 = !DILocalVariable(name: "stream", arg: 1, scope: !3406, file: !641, line: 183, type: !3331)
!3411 = !DILocalVariable(name: "command_name", arg: 2, scope: !3406, file: !641, line: 184, type: !138)
!3412 = !DILocalVariable(name: "package", arg: 3, scope: !3406, file: !641, line: 184, type: !138)
!3413 = !DILocalVariable(name: "version", arg: 4, scope: !3406, file: !641, line: 185, type: !138)
!3414 = !DILocalVariable(name: "authors", arg: 5, scope: !3406, file: !641, line: 185, type: !3365)
!3415 = !DILocalVariable(name: "n_authors", scope: !3406, file: !641, line: 187, type: !136)
!3416 = !DILocation(line: 0, scope: !3406)
!3417 = !DILocation(line: 189, column: 8, scope: !3418)
!3418 = distinct !DILexicalBlock(scope: !3406, file: !641, line: 189, column: 3)
!3419 = !DILocation(line: 189, scope: !3418)
!3420 = !DILocation(line: 189, column: 23, scope: !3421)
!3421 = distinct !DILexicalBlock(scope: !3418, file: !641, line: 189, column: 3)
!3422 = !DILocation(line: 189, column: 3, scope: !3418)
!3423 = !DILocation(line: 189, column: 52, scope: !3421)
!3424 = distinct !{!3424, !3422, !3425, !971}
!3425 = !DILocation(line: 190, column: 5, scope: !3418)
!3426 = !DILocation(line: 191, column: 3, scope: !3406)
!3427 = !DILocation(line: 192, column: 1, scope: !3406)
!3428 = distinct !DISubprogram(name: "version_etc_va", scope: !641, file: !641, line: 199, type: !3429, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !3439)
!3429 = !DISubroutineType(types: !3430)
!3430 = !{null, !3331, !138, !138, !138, !3431}
!3431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3432, size: 64)
!3432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3433)
!3433 = !{!3434, !3436, !3437, !3438}
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3432, file: !3435, line: 192, baseType: !91, size: 32)
!3435 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3432, file: !3435, line: 192, baseType: !91, size: 32, offset: 32)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3432, file: !3435, line: 192, baseType: !129, size: 64, offset: 64)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3432, file: !3435, line: 192, baseType: !129, size: 64, offset: 128)
!3439 = !{!3440, !3441, !3442, !3443, !3444, !3445, !3446}
!3440 = !DILocalVariable(name: "stream", arg: 1, scope: !3428, file: !641, line: 199, type: !3331)
!3441 = !DILocalVariable(name: "command_name", arg: 2, scope: !3428, file: !641, line: 200, type: !138)
!3442 = !DILocalVariable(name: "package", arg: 3, scope: !3428, file: !641, line: 200, type: !138)
!3443 = !DILocalVariable(name: "version", arg: 4, scope: !3428, file: !641, line: 201, type: !138)
!3444 = !DILocalVariable(name: "authors", arg: 5, scope: !3428, file: !641, line: 201, type: !3431)
!3445 = !DILocalVariable(name: "n_authors", scope: !3428, file: !641, line: 203, type: !136)
!3446 = !DILocalVariable(name: "authtab", scope: !3428, file: !641, line: 204, type: !3447)
!3447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 640, elements: !67)
!3448 = !DILocation(line: 0, scope: !3428)
!3449 = !DILocation(line: 204, column: 3, scope: !3428)
!3450 = !DILocation(line: 204, column: 15, scope: !3428)
!3451 = !DILocation(line: 208, column: 35, scope: !3452)
!3452 = distinct !DILexicalBlock(scope: !3453, file: !641, line: 206, column: 3)
!3453 = distinct !DILexicalBlock(scope: !3428, file: !641, line: 206, column: 3)
!3454 = !DILocation(line: 208, column: 33, scope: !3452)
!3455 = !DILocation(line: 208, column: 67, scope: !3452)
!3456 = !DILocation(line: 206, column: 3, scope: !3453)
!3457 = !DILocation(line: 208, column: 14, scope: !3452)
!3458 = !DILocation(line: 0, scope: !3453)
!3459 = !DILocation(line: 211, column: 3, scope: !3428)
!3460 = !DILocation(line: 213, column: 1, scope: !3428)
!3461 = distinct !DISubprogram(name: "version_etc", scope: !641, file: !641, line: 230, type: !3462, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !3464)
!3462 = !DISubroutineType(types: !3463)
!3463 = !{null, !3331, !138, !138, !138, null}
!3464 = !{!3465, !3466, !3467, !3468, !3469}
!3465 = !DILocalVariable(name: "stream", arg: 1, scope: !3461, file: !641, line: 230, type: !3331)
!3466 = !DILocalVariable(name: "command_name", arg: 2, scope: !3461, file: !641, line: 231, type: !138)
!3467 = !DILocalVariable(name: "package", arg: 3, scope: !3461, file: !641, line: 231, type: !138)
!3468 = !DILocalVariable(name: "version", arg: 4, scope: !3461, file: !641, line: 232, type: !138)
!3469 = !DILocalVariable(name: "authors", scope: !3461, file: !641, line: 234, type: !3470)
!3470 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !919, line: 52, baseType: !3471)
!3471 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1504, line: 14, baseType: !3472)
!3472 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3435, baseType: !3473)
!3473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3432, size: 192, elements: !62)
!3474 = !DILocation(line: 0, scope: !3461)
!3475 = !DILocation(line: 234, column: 3, scope: !3461)
!3476 = !DILocation(line: 234, column: 11, scope: !3461)
!3477 = !DILocation(line: 235, column: 3, scope: !3461)
!3478 = !DILocation(line: 236, column: 3, scope: !3461)
!3479 = !DILocation(line: 237, column: 3, scope: !3461)
!3480 = !DILocation(line: 238, column: 1, scope: !3461)
!3481 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !641, file: !641, line: 241, type: !497, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !863)
!3482 = !DILocation(line: 243, column: 3, scope: !3481)
!3483 = !DILocation(line: 248, column: 3, scope: !3481)
!3484 = !DILocation(line: 254, column: 3, scope: !3481)
!3485 = !DILocation(line: 259, column: 3, scope: !3481)
!3486 = !DILocation(line: 261, column: 1, scope: !3481)
!3487 = distinct !DISubprogram(name: "xnrealloc", scope: !3488, file: !3488, line: 147, type: !3489, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !3491)
!3488 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3489 = !DISubroutineType(types: !3490)
!3490 = !{!129, !129, !136, !136}
!3491 = !{!3492, !3493, !3494}
!3492 = !DILocalVariable(name: "p", arg: 1, scope: !3487, file: !3488, line: 147, type: !129)
!3493 = !DILocalVariable(name: "n", arg: 2, scope: !3487, file: !3488, line: 147, type: !136)
!3494 = !DILocalVariable(name: "s", arg: 3, scope: !3487, file: !3488, line: 147, type: !136)
!3495 = !DILocation(line: 0, scope: !3487)
!3496 = !DILocalVariable(name: "p", arg: 1, scope: !3497, file: !775, line: 83, type: !129)
!3497 = distinct !DISubprogram(name: "xreallocarray", scope: !775, file: !775, line: 83, type: !3489, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !3498)
!3498 = !{!3496, !3499, !3500}
!3499 = !DILocalVariable(name: "n", arg: 2, scope: !3497, file: !775, line: 83, type: !136)
!3500 = !DILocalVariable(name: "s", arg: 3, scope: !3497, file: !775, line: 83, type: !136)
!3501 = !DILocation(line: 0, scope: !3497, inlinedAt: !3502)
!3502 = distinct !DILocation(line: 149, column: 10, scope: !3487)
!3503 = !DILocation(line: 85, column: 25, scope: !3497, inlinedAt: !3502)
!3504 = !DILocalVariable(name: "p", arg: 1, scope: !3505, file: !775, line: 37, type: !129)
!3505 = distinct !DISubprogram(name: "check_nonnull", scope: !775, file: !775, line: 37, type: !3506, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !3508)
!3506 = !DISubroutineType(types: !3507)
!3507 = !{!129, !129}
!3508 = !{!3504}
!3509 = !DILocation(line: 0, scope: !3505, inlinedAt: !3510)
!3510 = distinct !DILocation(line: 85, column: 10, scope: !3497, inlinedAt: !3502)
!3511 = !DILocation(line: 39, column: 8, scope: !3512, inlinedAt: !3510)
!3512 = distinct !DILexicalBlock(scope: !3505, file: !775, line: 39, column: 7)
!3513 = !DILocation(line: 39, column: 7, scope: !3505, inlinedAt: !3510)
!3514 = !DILocation(line: 40, column: 5, scope: !3512, inlinedAt: !3510)
!3515 = !DILocation(line: 149, column: 3, scope: !3487)
!3516 = !DILocation(line: 0, scope: !3497)
!3517 = !DILocation(line: 85, column: 25, scope: !3497)
!3518 = !DILocation(line: 0, scope: !3505, inlinedAt: !3519)
!3519 = distinct !DILocation(line: 85, column: 10, scope: !3497)
!3520 = !DILocation(line: 39, column: 8, scope: !3512, inlinedAt: !3519)
!3521 = !DILocation(line: 39, column: 7, scope: !3505, inlinedAt: !3519)
!3522 = !DILocation(line: 40, column: 5, scope: !3512, inlinedAt: !3519)
!3523 = !DILocation(line: 85, column: 3, scope: !3497)
!3524 = distinct !DISubprogram(name: "xmalloc", scope: !775, file: !775, line: 47, type: !3525, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !3527)
!3525 = !DISubroutineType(types: !3526)
!3526 = !{!129, !136}
!3527 = !{!3528}
!3528 = !DILocalVariable(name: "s", arg: 1, scope: !3524, file: !775, line: 47, type: !136)
!3529 = !DILocation(line: 0, scope: !3524)
!3530 = !DILocation(line: 49, column: 25, scope: !3524)
!3531 = !DILocation(line: 0, scope: !3505, inlinedAt: !3532)
!3532 = distinct !DILocation(line: 49, column: 10, scope: !3524)
!3533 = !DILocation(line: 39, column: 8, scope: !3512, inlinedAt: !3532)
!3534 = !DILocation(line: 39, column: 7, scope: !3505, inlinedAt: !3532)
!3535 = !DILocation(line: 40, column: 5, scope: !3512, inlinedAt: !3532)
!3536 = !DILocation(line: 49, column: 3, scope: !3524)
!3537 = !DISubprogram(name: "malloc", scope: !1049, file: !1049, line: 540, type: !3525, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !863)
!3538 = distinct !DISubprogram(name: "ximalloc", scope: !775, file: !775, line: 53, type: !3539, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !3541)
!3539 = !DISubroutineType(types: !3540)
!3540 = !{!129, !794}
!3541 = !{!3542}
!3542 = !DILocalVariable(name: "s", arg: 1, scope: !3538, file: !775, line: 53, type: !794)
!3543 = !DILocation(line: 0, scope: !3538)
!3544 = !DILocalVariable(name: "s", arg: 1, scope: !3545, file: !3546, line: 55, type: !794)
!3545 = distinct !DISubprogram(name: "imalloc", scope: !3546, file: !3546, line: 55, type: !3539, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !3547)
!3546 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3547 = !{!3544}
!3548 = !DILocation(line: 0, scope: !3545, inlinedAt: !3549)
!3549 = distinct !DILocation(line: 55, column: 25, scope: !3538)
!3550 = !DILocation(line: 57, column: 26, scope: !3545, inlinedAt: !3549)
!3551 = !DILocation(line: 0, scope: !3505, inlinedAt: !3552)
!3552 = distinct !DILocation(line: 55, column: 10, scope: !3538)
!3553 = !DILocation(line: 39, column: 8, scope: !3512, inlinedAt: !3552)
!3554 = !DILocation(line: 39, column: 7, scope: !3505, inlinedAt: !3552)
!3555 = !DILocation(line: 40, column: 5, scope: !3512, inlinedAt: !3552)
!3556 = !DILocation(line: 55, column: 3, scope: !3538)
!3557 = distinct !DISubprogram(name: "xcharalloc", scope: !775, file: !775, line: 59, type: !3558, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !3560)
!3558 = !DISubroutineType(types: !3559)
!3559 = !{!128, !136}
!3560 = !{!3561}
!3561 = !DILocalVariable(name: "n", arg: 1, scope: !3557, file: !775, line: 59, type: !136)
!3562 = !DILocation(line: 0, scope: !3557)
!3563 = !DILocation(line: 0, scope: !3524, inlinedAt: !3564)
!3564 = distinct !DILocation(line: 61, column: 10, scope: !3557)
!3565 = !DILocation(line: 49, column: 25, scope: !3524, inlinedAt: !3564)
!3566 = !DILocation(line: 0, scope: !3505, inlinedAt: !3567)
!3567 = distinct !DILocation(line: 49, column: 10, scope: !3524, inlinedAt: !3564)
!3568 = !DILocation(line: 39, column: 8, scope: !3512, inlinedAt: !3567)
!3569 = !DILocation(line: 39, column: 7, scope: !3505, inlinedAt: !3567)
!3570 = !DILocation(line: 40, column: 5, scope: !3512, inlinedAt: !3567)
!3571 = !DILocation(line: 61, column: 3, scope: !3557)
!3572 = distinct !DISubprogram(name: "xrealloc", scope: !775, file: !775, line: 68, type: !3573, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !3575)
!3573 = !DISubroutineType(types: !3574)
!3574 = !{!129, !129, !136}
!3575 = !{!3576, !3577}
!3576 = !DILocalVariable(name: "p", arg: 1, scope: !3572, file: !775, line: 68, type: !129)
!3577 = !DILocalVariable(name: "s", arg: 2, scope: !3572, file: !775, line: 68, type: !136)
!3578 = !DILocation(line: 0, scope: !3572)
!3579 = !DILocalVariable(name: "ptr", arg: 1, scope: !3580, file: !3581, line: 2057, type: !129)
!3580 = distinct !DISubprogram(name: "rpl_realloc", scope: !3581, file: !3581, line: 2057, type: !3573, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !3582)
!3581 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3582 = !{!3579, !3583}
!3583 = !DILocalVariable(name: "size", arg: 2, scope: !3580, file: !3581, line: 2057, type: !136)
!3584 = !DILocation(line: 0, scope: !3580, inlinedAt: !3585)
!3585 = distinct !DILocation(line: 70, column: 25, scope: !3572)
!3586 = !DILocation(line: 2059, column: 24, scope: !3580, inlinedAt: !3585)
!3587 = !DILocation(line: 2059, column: 10, scope: !3580, inlinedAt: !3585)
!3588 = !DILocation(line: 0, scope: !3505, inlinedAt: !3589)
!3589 = distinct !DILocation(line: 70, column: 10, scope: !3572)
!3590 = !DILocation(line: 39, column: 8, scope: !3512, inlinedAt: !3589)
!3591 = !DILocation(line: 39, column: 7, scope: !3505, inlinedAt: !3589)
!3592 = !DILocation(line: 40, column: 5, scope: !3512, inlinedAt: !3589)
!3593 = !DILocation(line: 70, column: 3, scope: !3572)
!3594 = !DISubprogram(name: "realloc", scope: !1049, file: !1049, line: 551, type: !3573, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !863)
!3595 = distinct !DISubprogram(name: "xirealloc", scope: !775, file: !775, line: 74, type: !3596, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !3598)
!3596 = !DISubroutineType(types: !3597)
!3597 = !{!129, !129, !794}
!3598 = !{!3599, !3600}
!3599 = !DILocalVariable(name: "p", arg: 1, scope: !3595, file: !775, line: 74, type: !129)
!3600 = !DILocalVariable(name: "s", arg: 2, scope: !3595, file: !775, line: 74, type: !794)
!3601 = !DILocation(line: 0, scope: !3595)
!3602 = !DILocalVariable(name: "p", arg: 1, scope: !3603, file: !3546, line: 66, type: !129)
!3603 = distinct !DISubprogram(name: "irealloc", scope: !3546, file: !3546, line: 66, type: !3596, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !3604)
!3604 = !{!3602, !3605}
!3605 = !DILocalVariable(name: "s", arg: 2, scope: !3603, file: !3546, line: 66, type: !794)
!3606 = !DILocation(line: 0, scope: !3603, inlinedAt: !3607)
!3607 = distinct !DILocation(line: 76, column: 25, scope: !3595)
!3608 = !DILocation(line: 0, scope: !3580, inlinedAt: !3609)
!3609 = distinct !DILocation(line: 68, column: 26, scope: !3603, inlinedAt: !3607)
!3610 = !DILocation(line: 2059, column: 24, scope: !3580, inlinedAt: !3609)
!3611 = !DILocation(line: 2059, column: 10, scope: !3580, inlinedAt: !3609)
!3612 = !DILocation(line: 0, scope: !3505, inlinedAt: !3613)
!3613 = distinct !DILocation(line: 76, column: 10, scope: !3595)
!3614 = !DILocation(line: 39, column: 8, scope: !3512, inlinedAt: !3613)
!3615 = !DILocation(line: 39, column: 7, scope: !3505, inlinedAt: !3613)
!3616 = !DILocation(line: 40, column: 5, scope: !3512, inlinedAt: !3613)
!3617 = !DILocation(line: 76, column: 3, scope: !3595)
!3618 = distinct !DISubprogram(name: "xireallocarray", scope: !775, file: !775, line: 89, type: !3619, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !3621)
!3619 = !DISubroutineType(types: !3620)
!3620 = !{!129, !129, !794, !794}
!3621 = !{!3622, !3623, !3624}
!3622 = !DILocalVariable(name: "p", arg: 1, scope: !3618, file: !775, line: 89, type: !129)
!3623 = !DILocalVariable(name: "n", arg: 2, scope: !3618, file: !775, line: 89, type: !794)
!3624 = !DILocalVariable(name: "s", arg: 3, scope: !3618, file: !775, line: 89, type: !794)
!3625 = !DILocation(line: 0, scope: !3618)
!3626 = !DILocalVariable(name: "p", arg: 1, scope: !3627, file: !3546, line: 98, type: !129)
!3627 = distinct !DISubprogram(name: "ireallocarray", scope: !3546, file: !3546, line: 98, type: !3619, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !3628)
!3628 = !{!3626, !3629, !3630}
!3629 = !DILocalVariable(name: "n", arg: 2, scope: !3627, file: !3546, line: 98, type: !794)
!3630 = !DILocalVariable(name: "s", arg: 3, scope: !3627, file: !3546, line: 98, type: !794)
!3631 = !DILocation(line: 0, scope: !3627, inlinedAt: !3632)
!3632 = distinct !DILocation(line: 91, column: 25, scope: !3618)
!3633 = !DILocation(line: 101, column: 13, scope: !3627, inlinedAt: !3632)
!3634 = !DILocation(line: 0, scope: !3505, inlinedAt: !3635)
!3635 = distinct !DILocation(line: 91, column: 10, scope: !3618)
!3636 = !DILocation(line: 39, column: 8, scope: !3512, inlinedAt: !3635)
!3637 = !DILocation(line: 39, column: 7, scope: !3505, inlinedAt: !3635)
!3638 = !DILocation(line: 40, column: 5, scope: !3512, inlinedAt: !3635)
!3639 = !DILocation(line: 91, column: 3, scope: !3618)
!3640 = distinct !DISubprogram(name: "xnmalloc", scope: !775, file: !775, line: 98, type: !3641, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !3643)
!3641 = !DISubroutineType(types: !3642)
!3642 = !{!129, !136, !136}
!3643 = !{!3644, !3645}
!3644 = !DILocalVariable(name: "n", arg: 1, scope: !3640, file: !775, line: 98, type: !136)
!3645 = !DILocalVariable(name: "s", arg: 2, scope: !3640, file: !775, line: 98, type: !136)
!3646 = !DILocation(line: 0, scope: !3640)
!3647 = !DILocation(line: 0, scope: !3497, inlinedAt: !3648)
!3648 = distinct !DILocation(line: 100, column: 10, scope: !3640)
!3649 = !DILocation(line: 85, column: 25, scope: !3497, inlinedAt: !3648)
!3650 = !DILocation(line: 0, scope: !3505, inlinedAt: !3651)
!3651 = distinct !DILocation(line: 85, column: 10, scope: !3497, inlinedAt: !3648)
!3652 = !DILocation(line: 39, column: 8, scope: !3512, inlinedAt: !3651)
!3653 = !DILocation(line: 39, column: 7, scope: !3505, inlinedAt: !3651)
!3654 = !DILocation(line: 40, column: 5, scope: !3512, inlinedAt: !3651)
!3655 = !DILocation(line: 100, column: 3, scope: !3640)
!3656 = distinct !DISubprogram(name: "xinmalloc", scope: !775, file: !775, line: 104, type: !3657, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !3659)
!3657 = !DISubroutineType(types: !3658)
!3658 = !{!129, !794, !794}
!3659 = !{!3660, !3661}
!3660 = !DILocalVariable(name: "n", arg: 1, scope: !3656, file: !775, line: 104, type: !794)
!3661 = !DILocalVariable(name: "s", arg: 2, scope: !3656, file: !775, line: 104, type: !794)
!3662 = !DILocation(line: 0, scope: !3656)
!3663 = !DILocation(line: 0, scope: !3618, inlinedAt: !3664)
!3664 = distinct !DILocation(line: 106, column: 10, scope: !3656)
!3665 = !DILocation(line: 0, scope: !3627, inlinedAt: !3666)
!3666 = distinct !DILocation(line: 91, column: 25, scope: !3618, inlinedAt: !3664)
!3667 = !DILocation(line: 101, column: 13, scope: !3627, inlinedAt: !3666)
!3668 = !DILocation(line: 0, scope: !3505, inlinedAt: !3669)
!3669 = distinct !DILocation(line: 91, column: 10, scope: !3618, inlinedAt: !3664)
!3670 = !DILocation(line: 39, column: 8, scope: !3512, inlinedAt: !3669)
!3671 = !DILocation(line: 39, column: 7, scope: !3505, inlinedAt: !3669)
!3672 = !DILocation(line: 40, column: 5, scope: !3512, inlinedAt: !3669)
!3673 = !DILocation(line: 106, column: 3, scope: !3656)
!3674 = distinct !DISubprogram(name: "x2realloc", scope: !775, file: !775, line: 116, type: !3675, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !3677)
!3675 = !DISubroutineType(types: !3676)
!3676 = !{!129, !129, !781}
!3677 = !{!3678, !3679}
!3678 = !DILocalVariable(name: "p", arg: 1, scope: !3674, file: !775, line: 116, type: !129)
!3679 = !DILocalVariable(name: "ps", arg: 2, scope: !3674, file: !775, line: 116, type: !781)
!3680 = !DILocation(line: 0, scope: !3674)
!3681 = !DILocation(line: 0, scope: !778, inlinedAt: !3682)
!3682 = distinct !DILocation(line: 118, column: 10, scope: !3674)
!3683 = !DILocation(line: 178, column: 14, scope: !778, inlinedAt: !3682)
!3684 = !DILocation(line: 180, column: 9, scope: !3685, inlinedAt: !3682)
!3685 = distinct !DILexicalBlock(scope: !778, file: !775, line: 180, column: 7)
!3686 = !DILocation(line: 180, column: 7, scope: !778, inlinedAt: !3682)
!3687 = !DILocation(line: 182, column: 13, scope: !3688, inlinedAt: !3682)
!3688 = distinct !DILexicalBlock(scope: !3689, file: !775, line: 182, column: 11)
!3689 = distinct !DILexicalBlock(scope: !3685, file: !775, line: 181, column: 5)
!3690 = !DILocation(line: 182, column: 11, scope: !3689, inlinedAt: !3682)
!3691 = !DILocation(line: 197, column: 11, scope: !3692, inlinedAt: !3682)
!3692 = distinct !DILexicalBlock(scope: !3693, file: !775, line: 197, column: 11)
!3693 = distinct !DILexicalBlock(scope: !3685, file: !775, line: 195, column: 5)
!3694 = !DILocation(line: 197, column: 11, scope: !3693, inlinedAt: !3682)
!3695 = !DILocation(line: 198, column: 9, scope: !3692, inlinedAt: !3682)
!3696 = !DILocation(line: 0, scope: !3497, inlinedAt: !3697)
!3697 = distinct !DILocation(line: 201, column: 7, scope: !778, inlinedAt: !3682)
!3698 = !DILocation(line: 85, column: 25, scope: !3497, inlinedAt: !3697)
!3699 = !DILocation(line: 0, scope: !3505, inlinedAt: !3700)
!3700 = distinct !DILocation(line: 85, column: 10, scope: !3497, inlinedAt: !3697)
!3701 = !DILocation(line: 39, column: 8, scope: !3512, inlinedAt: !3700)
!3702 = !DILocation(line: 39, column: 7, scope: !3505, inlinedAt: !3700)
!3703 = !DILocation(line: 40, column: 5, scope: !3512, inlinedAt: !3700)
!3704 = !DILocation(line: 202, column: 7, scope: !778, inlinedAt: !3682)
!3705 = !DILocation(line: 118, column: 3, scope: !3674)
!3706 = !DILocation(line: 0, scope: !778)
!3707 = !DILocation(line: 178, column: 14, scope: !778)
!3708 = !DILocation(line: 180, column: 9, scope: !3685)
!3709 = !DILocation(line: 180, column: 7, scope: !778)
!3710 = !DILocation(line: 182, column: 13, scope: !3688)
!3711 = !DILocation(line: 182, column: 11, scope: !3689)
!3712 = !DILocation(line: 190, column: 30, scope: !3713)
!3713 = distinct !DILexicalBlock(scope: !3688, file: !775, line: 183, column: 9)
!3714 = !DILocation(line: 191, column: 16, scope: !3713)
!3715 = !DILocation(line: 191, column: 13, scope: !3713)
!3716 = !DILocation(line: 192, column: 9, scope: !3713)
!3717 = !DILocation(line: 197, column: 11, scope: !3692)
!3718 = !DILocation(line: 197, column: 11, scope: !3693)
!3719 = !DILocation(line: 198, column: 9, scope: !3692)
!3720 = !DILocation(line: 0, scope: !3497, inlinedAt: !3721)
!3721 = distinct !DILocation(line: 201, column: 7, scope: !778)
!3722 = !DILocation(line: 85, column: 25, scope: !3497, inlinedAt: !3721)
!3723 = !DILocation(line: 0, scope: !3505, inlinedAt: !3724)
!3724 = distinct !DILocation(line: 85, column: 10, scope: !3497, inlinedAt: !3721)
!3725 = !DILocation(line: 39, column: 8, scope: !3512, inlinedAt: !3724)
!3726 = !DILocation(line: 39, column: 7, scope: !3505, inlinedAt: !3724)
!3727 = !DILocation(line: 40, column: 5, scope: !3512, inlinedAt: !3724)
!3728 = !DILocation(line: 202, column: 7, scope: !778)
!3729 = !DILocation(line: 203, column: 3, scope: !778)
!3730 = !DILocation(line: 0, scope: !790)
!3731 = !DILocation(line: 230, column: 14, scope: !790)
!3732 = !DILocation(line: 238, column: 7, scope: !3733)
!3733 = distinct !DILexicalBlock(scope: !790, file: !775, line: 238, column: 7)
!3734 = !DILocation(line: 238, column: 7, scope: !790)
!3735 = !DILocation(line: 240, column: 9, scope: !3736)
!3736 = distinct !DILexicalBlock(scope: !790, file: !775, line: 240, column: 7)
!3737 = !DILocation(line: 240, column: 18, scope: !3736)
!3738 = !DILocation(line: 253, column: 8, scope: !790)
!3739 = !DILocation(line: 258, column: 27, scope: !3740)
!3740 = distinct !DILexicalBlock(scope: !3741, file: !775, line: 257, column: 5)
!3741 = distinct !DILexicalBlock(scope: !790, file: !775, line: 256, column: 7)
!3742 = !DILocation(line: 259, column: 50, scope: !3740)
!3743 = !DILocation(line: 259, column: 32, scope: !3740)
!3744 = !DILocation(line: 260, column: 5, scope: !3740)
!3745 = !DILocation(line: 262, column: 9, scope: !3746)
!3746 = distinct !DILexicalBlock(scope: !790, file: !775, line: 262, column: 7)
!3747 = !DILocation(line: 262, column: 7, scope: !790)
!3748 = !DILocation(line: 263, column: 9, scope: !3746)
!3749 = !DILocation(line: 263, column: 5, scope: !3746)
!3750 = !DILocation(line: 264, column: 9, scope: !3751)
!3751 = distinct !DILexicalBlock(scope: !790, file: !775, line: 264, column: 7)
!3752 = !DILocation(line: 264, column: 14, scope: !3751)
!3753 = !DILocation(line: 265, column: 7, scope: !3751)
!3754 = !DILocation(line: 265, column: 11, scope: !3751)
!3755 = !DILocation(line: 266, column: 11, scope: !3751)
!3756 = !DILocation(line: 267, column: 14, scope: !3751)
!3757 = !DILocation(line: 264, column: 7, scope: !790)
!3758 = !DILocation(line: 268, column: 5, scope: !3751)
!3759 = !DILocation(line: 0, scope: !3572, inlinedAt: !3760)
!3760 = distinct !DILocation(line: 269, column: 8, scope: !790)
!3761 = !DILocation(line: 0, scope: !3580, inlinedAt: !3762)
!3762 = distinct !DILocation(line: 70, column: 25, scope: !3572, inlinedAt: !3760)
!3763 = !DILocation(line: 2059, column: 24, scope: !3580, inlinedAt: !3762)
!3764 = !DILocation(line: 2059, column: 10, scope: !3580, inlinedAt: !3762)
!3765 = !DILocation(line: 0, scope: !3505, inlinedAt: !3766)
!3766 = distinct !DILocation(line: 70, column: 10, scope: !3572, inlinedAt: !3760)
!3767 = !DILocation(line: 39, column: 8, scope: !3512, inlinedAt: !3766)
!3768 = !DILocation(line: 39, column: 7, scope: !3505, inlinedAt: !3766)
!3769 = !DILocation(line: 40, column: 5, scope: !3512, inlinedAt: !3766)
!3770 = !DILocation(line: 270, column: 7, scope: !790)
!3771 = !DILocation(line: 271, column: 3, scope: !790)
!3772 = distinct !DISubprogram(name: "xzalloc", scope: !775, file: !775, line: 279, type: !3525, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !3773)
!3773 = !{!3774}
!3774 = !DILocalVariable(name: "s", arg: 1, scope: !3772, file: !775, line: 279, type: !136)
!3775 = !DILocation(line: 0, scope: !3772)
!3776 = !DILocalVariable(name: "n", arg: 1, scope: !3777, file: !775, line: 294, type: !136)
!3777 = distinct !DISubprogram(name: "xcalloc", scope: !775, file: !775, line: 294, type: !3641, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !3778)
!3778 = !{!3776, !3779}
!3779 = !DILocalVariable(name: "s", arg: 2, scope: !3777, file: !775, line: 294, type: !136)
!3780 = !DILocation(line: 0, scope: !3777, inlinedAt: !3781)
!3781 = distinct !DILocation(line: 281, column: 10, scope: !3772)
!3782 = !DILocation(line: 296, column: 25, scope: !3777, inlinedAt: !3781)
!3783 = !DILocation(line: 0, scope: !3505, inlinedAt: !3784)
!3784 = distinct !DILocation(line: 296, column: 10, scope: !3777, inlinedAt: !3781)
!3785 = !DILocation(line: 39, column: 8, scope: !3512, inlinedAt: !3784)
!3786 = !DILocation(line: 39, column: 7, scope: !3505, inlinedAt: !3784)
!3787 = !DILocation(line: 40, column: 5, scope: !3512, inlinedAt: !3784)
!3788 = !DILocation(line: 281, column: 3, scope: !3772)
!3789 = !DISubprogram(name: "calloc", scope: !1049, file: !1049, line: 543, type: !3641, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !863)
!3790 = !DILocation(line: 0, scope: !3777)
!3791 = !DILocation(line: 296, column: 25, scope: !3777)
!3792 = !DILocation(line: 0, scope: !3505, inlinedAt: !3793)
!3793 = distinct !DILocation(line: 296, column: 10, scope: !3777)
!3794 = !DILocation(line: 39, column: 8, scope: !3512, inlinedAt: !3793)
!3795 = !DILocation(line: 39, column: 7, scope: !3505, inlinedAt: !3793)
!3796 = !DILocation(line: 40, column: 5, scope: !3512, inlinedAt: !3793)
!3797 = !DILocation(line: 296, column: 3, scope: !3777)
!3798 = distinct !DISubprogram(name: "xizalloc", scope: !775, file: !775, line: 285, type: !3539, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !3799)
!3799 = !{!3800}
!3800 = !DILocalVariable(name: "s", arg: 1, scope: !3798, file: !775, line: 285, type: !794)
!3801 = !DILocation(line: 0, scope: !3798)
!3802 = !DILocalVariable(name: "n", arg: 1, scope: !3803, file: !775, line: 300, type: !794)
!3803 = distinct !DISubprogram(name: "xicalloc", scope: !775, file: !775, line: 300, type: !3657, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !3804)
!3804 = !{!3802, !3805}
!3805 = !DILocalVariable(name: "s", arg: 2, scope: !3803, file: !775, line: 300, type: !794)
!3806 = !DILocation(line: 0, scope: !3803, inlinedAt: !3807)
!3807 = distinct !DILocation(line: 287, column: 10, scope: !3798)
!3808 = !DILocalVariable(name: "n", arg: 1, scope: !3809, file: !3546, line: 77, type: !794)
!3809 = distinct !DISubprogram(name: "icalloc", scope: !3546, file: !3546, line: 77, type: !3657, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !3810)
!3810 = !{!3808, !3811}
!3811 = !DILocalVariable(name: "s", arg: 2, scope: !3809, file: !3546, line: 77, type: !794)
!3812 = !DILocation(line: 0, scope: !3809, inlinedAt: !3813)
!3813 = distinct !DILocation(line: 302, column: 25, scope: !3803, inlinedAt: !3807)
!3814 = !DILocation(line: 91, column: 10, scope: !3809, inlinedAt: !3813)
!3815 = !DILocation(line: 0, scope: !3505, inlinedAt: !3816)
!3816 = distinct !DILocation(line: 302, column: 10, scope: !3803, inlinedAt: !3807)
!3817 = !DILocation(line: 39, column: 8, scope: !3512, inlinedAt: !3816)
!3818 = !DILocation(line: 39, column: 7, scope: !3505, inlinedAt: !3816)
!3819 = !DILocation(line: 40, column: 5, scope: !3512, inlinedAt: !3816)
!3820 = !DILocation(line: 287, column: 3, scope: !3798)
!3821 = !DILocation(line: 0, scope: !3803)
!3822 = !DILocation(line: 0, scope: !3809, inlinedAt: !3823)
!3823 = distinct !DILocation(line: 302, column: 25, scope: !3803)
!3824 = !DILocation(line: 91, column: 10, scope: !3809, inlinedAt: !3823)
!3825 = !DILocation(line: 0, scope: !3505, inlinedAt: !3826)
!3826 = distinct !DILocation(line: 302, column: 10, scope: !3803)
!3827 = !DILocation(line: 39, column: 8, scope: !3512, inlinedAt: !3826)
!3828 = !DILocation(line: 39, column: 7, scope: !3505, inlinedAt: !3826)
!3829 = !DILocation(line: 40, column: 5, scope: !3512, inlinedAt: !3826)
!3830 = !DILocation(line: 302, column: 3, scope: !3803)
!3831 = distinct !DISubprogram(name: "xmemdup", scope: !775, file: !775, line: 310, type: !3832, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !3834)
!3832 = !DISubroutineType(types: !3833)
!3833 = !{!129, !1073, !136}
!3834 = !{!3835, !3836}
!3835 = !DILocalVariable(name: "p", arg: 1, scope: !3831, file: !775, line: 310, type: !1073)
!3836 = !DILocalVariable(name: "s", arg: 2, scope: !3831, file: !775, line: 310, type: !136)
!3837 = !DILocation(line: 0, scope: !3831)
!3838 = !DILocation(line: 0, scope: !3524, inlinedAt: !3839)
!3839 = distinct !DILocation(line: 312, column: 18, scope: !3831)
!3840 = !DILocation(line: 49, column: 25, scope: !3524, inlinedAt: !3839)
!3841 = !DILocation(line: 0, scope: !3505, inlinedAt: !3842)
!3842 = distinct !DILocation(line: 49, column: 10, scope: !3524, inlinedAt: !3839)
!3843 = !DILocation(line: 39, column: 8, scope: !3512, inlinedAt: !3842)
!3844 = !DILocation(line: 39, column: 7, scope: !3505, inlinedAt: !3842)
!3845 = !DILocation(line: 40, column: 5, scope: !3512, inlinedAt: !3842)
!3846 = !DILocalVariable(name: "__dest", arg: 1, scope: !3847, file: !2003, line: 26, type: !3850)
!3847 = distinct !DISubprogram(name: "memcpy", scope: !2003, file: !2003, line: 26, type: !3848, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !3851)
!3848 = !DISubroutineType(types: !3849)
!3849 = !{!129, !3850, !1072, !136}
!3850 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !129)
!3851 = !{!3846, !3852, !3853}
!3852 = !DILocalVariable(name: "__src", arg: 2, scope: !3847, file: !2003, line: 26, type: !1072)
!3853 = !DILocalVariable(name: "__len", arg: 3, scope: !3847, file: !2003, line: 26, type: !136)
!3854 = !DILocation(line: 0, scope: !3847, inlinedAt: !3855)
!3855 = distinct !DILocation(line: 312, column: 10, scope: !3831)
!3856 = !DILocation(line: 29, column: 10, scope: !3847, inlinedAt: !3855)
!3857 = !DILocation(line: 312, column: 3, scope: !3831)
!3858 = distinct !DISubprogram(name: "ximemdup", scope: !775, file: !775, line: 316, type: !3859, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !3861)
!3859 = !DISubroutineType(types: !3860)
!3860 = !{!129, !1073, !794}
!3861 = !{!3862, !3863}
!3862 = !DILocalVariable(name: "p", arg: 1, scope: !3858, file: !775, line: 316, type: !1073)
!3863 = !DILocalVariable(name: "s", arg: 2, scope: !3858, file: !775, line: 316, type: !794)
!3864 = !DILocation(line: 0, scope: !3858)
!3865 = !DILocation(line: 0, scope: !3538, inlinedAt: !3866)
!3866 = distinct !DILocation(line: 318, column: 18, scope: !3858)
!3867 = !DILocation(line: 0, scope: !3545, inlinedAt: !3868)
!3868 = distinct !DILocation(line: 55, column: 25, scope: !3538, inlinedAt: !3866)
!3869 = !DILocation(line: 57, column: 26, scope: !3545, inlinedAt: !3868)
!3870 = !DILocation(line: 0, scope: !3505, inlinedAt: !3871)
!3871 = distinct !DILocation(line: 55, column: 10, scope: !3538, inlinedAt: !3866)
!3872 = !DILocation(line: 39, column: 8, scope: !3512, inlinedAt: !3871)
!3873 = !DILocation(line: 39, column: 7, scope: !3505, inlinedAt: !3871)
!3874 = !DILocation(line: 40, column: 5, scope: !3512, inlinedAt: !3871)
!3875 = !DILocation(line: 0, scope: !3847, inlinedAt: !3876)
!3876 = distinct !DILocation(line: 318, column: 10, scope: !3858)
!3877 = !DILocation(line: 29, column: 10, scope: !3847, inlinedAt: !3876)
!3878 = !DILocation(line: 318, column: 3, scope: !3858)
!3879 = distinct !DISubprogram(name: "ximemdup0", scope: !775, file: !775, line: 325, type: !3880, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !3882)
!3880 = !DISubroutineType(types: !3881)
!3881 = !{!128, !1073, !794}
!3882 = !{!3883, !3884, !3885}
!3883 = !DILocalVariable(name: "p", arg: 1, scope: !3879, file: !775, line: 325, type: !1073)
!3884 = !DILocalVariable(name: "s", arg: 2, scope: !3879, file: !775, line: 325, type: !794)
!3885 = !DILocalVariable(name: "result", scope: !3879, file: !775, line: 327, type: !128)
!3886 = !DILocation(line: 0, scope: !3879)
!3887 = !DILocation(line: 327, column: 30, scope: !3879)
!3888 = !DILocation(line: 0, scope: !3538, inlinedAt: !3889)
!3889 = distinct !DILocation(line: 327, column: 18, scope: !3879)
!3890 = !DILocation(line: 0, scope: !3545, inlinedAt: !3891)
!3891 = distinct !DILocation(line: 55, column: 25, scope: !3538, inlinedAt: !3889)
!3892 = !DILocation(line: 57, column: 26, scope: !3545, inlinedAt: !3891)
!3893 = !DILocation(line: 0, scope: !3505, inlinedAt: !3894)
!3894 = distinct !DILocation(line: 55, column: 10, scope: !3538, inlinedAt: !3889)
!3895 = !DILocation(line: 39, column: 8, scope: !3512, inlinedAt: !3894)
!3896 = !DILocation(line: 39, column: 7, scope: !3505, inlinedAt: !3894)
!3897 = !DILocation(line: 40, column: 5, scope: !3512, inlinedAt: !3894)
!3898 = !DILocation(line: 328, column: 3, scope: !3879)
!3899 = !DILocation(line: 328, column: 13, scope: !3879)
!3900 = !DILocation(line: 0, scope: !3847, inlinedAt: !3901)
!3901 = distinct !DILocation(line: 329, column: 10, scope: !3879)
!3902 = !DILocation(line: 29, column: 10, scope: !3847, inlinedAt: !3901)
!3903 = !DILocation(line: 329, column: 3, scope: !3879)
!3904 = distinct !DISubprogram(name: "xstrdup", scope: !775, file: !775, line: 335, type: !1051, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !3905)
!3905 = !{!3906}
!3906 = !DILocalVariable(name: "string", arg: 1, scope: !3904, file: !775, line: 335, type: !138)
!3907 = !DILocation(line: 0, scope: !3904)
!3908 = !DILocation(line: 337, column: 27, scope: !3904)
!3909 = !DILocation(line: 337, column: 43, scope: !3904)
!3910 = !DILocation(line: 0, scope: !3831, inlinedAt: !3911)
!3911 = distinct !DILocation(line: 337, column: 10, scope: !3904)
!3912 = !DILocation(line: 0, scope: !3524, inlinedAt: !3913)
!3913 = distinct !DILocation(line: 312, column: 18, scope: !3831, inlinedAt: !3911)
!3914 = !DILocation(line: 49, column: 25, scope: !3524, inlinedAt: !3913)
!3915 = !DILocation(line: 0, scope: !3505, inlinedAt: !3916)
!3916 = distinct !DILocation(line: 49, column: 10, scope: !3524, inlinedAt: !3913)
!3917 = !DILocation(line: 39, column: 8, scope: !3512, inlinedAt: !3916)
!3918 = !DILocation(line: 39, column: 7, scope: !3505, inlinedAt: !3916)
!3919 = !DILocation(line: 40, column: 5, scope: !3512, inlinedAt: !3916)
!3920 = !DILocation(line: 0, scope: !3847, inlinedAt: !3921)
!3921 = distinct !DILocation(line: 312, column: 10, scope: !3831, inlinedAt: !3911)
!3922 = !DILocation(line: 29, column: 10, scope: !3847, inlinedAt: !3921)
!3923 = !DILocation(line: 337, column: 3, scope: !3904)
!3924 = distinct !DISubprogram(name: "xalloc_die", scope: !726, file: !726, line: 32, type: !497, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !808, retainedNodes: !3925)
!3925 = !{!3926}
!3926 = !DILocalVariable(name: "__errstatus", scope: !3927, file: !726, line: 34, type: !3928)
!3927 = distinct !DILexicalBlock(scope: !3924, file: !726, line: 34, column: 3)
!3928 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!3929 = !DILocation(line: 34, column: 3, scope: !3927)
!3930 = !DILocation(line: 0, scope: !3927)
!3931 = !DILocation(line: 40, column: 3, scope: !3924)
!3932 = distinct !DISubprogram(name: "xstrtoumax", scope: !3933, file: !3933, line: 71, type: !3934, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3938)
!3933 = !DIFile(filename: "./lib/xstrtol.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a1112be551b7ea11a9f6293a4923a73")
!3934 = !DISubroutineType(types: !3935)
!3935 = !{!3936, !138, !1078, !85, !3937, !138}
!3936 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !90, line: 43, baseType: !89)
!3937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!3938 = !{!3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3949, !3950, !3951, !3952, !3955, !3956}
!3939 = !DILocalVariable(name: "nptr", arg: 1, scope: !3932, file: !3933, line: 71, type: !138)
!3940 = !DILocalVariable(name: "endptr", arg: 2, scope: !3932, file: !3933, line: 71, type: !1078)
!3941 = !DILocalVariable(name: "base", arg: 3, scope: !3932, file: !3933, line: 71, type: !85)
!3942 = !DILocalVariable(name: "val", arg: 4, scope: !3932, file: !3933, line: 72, type: !3937)
!3943 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !3932, file: !3933, line: 72, type: !138)
!3944 = !DILocalVariable(name: "t_ptr", scope: !3932, file: !3933, line: 74, type: !128)
!3945 = !DILocalVariable(name: "p", scope: !3932, file: !3933, line: 75, type: !1078)
!3946 = !DILocalVariable(name: "q", scope: !3947, file: !3933, line: 79, type: !138)
!3947 = distinct !DILexicalBlock(scope: !3948, file: !3933, line: 78, column: 5)
!3948 = distinct !DILexicalBlock(scope: !3932, file: !3933, line: 77, column: 7)
!3949 = !DILocalVariable(name: "ch", scope: !3947, file: !3933, line: 80, type: !140)
!3950 = !DILocalVariable(name: "tmp", scope: !3932, file: !3933, line: 91, type: !814)
!3951 = !DILocalVariable(name: "err", scope: !3932, file: !3933, line: 92, type: !3936)
!3952 = !DILocalVariable(name: "xbase", scope: !3953, file: !3933, line: 126, type: !85)
!3953 = distinct !DILexicalBlock(scope: !3954, file: !3933, line: 119, column: 5)
!3954 = distinct !DILexicalBlock(scope: !3932, file: !3933, line: 118, column: 7)
!3955 = !DILocalVariable(name: "suffixes", scope: !3953, file: !3933, line: 127, type: !85)
!3956 = !DILocalVariable(name: "overflow", scope: !3953, file: !3933, line: 156, type: !3936)
!3957 = !DILocation(line: 0, scope: !3932)
!3958 = !DILocation(line: 74, column: 3, scope: !3932)
!3959 = !DILocation(line: 75, column: 14, scope: !3932)
!3960 = !DILocation(line: 0, scope: !3947)
!3961 = !DILocation(line: 81, column: 7, scope: !3947)
!3962 = !DILocation(line: 81, column: 14, scope: !3947)
!3963 = !DILocation(line: 82, column: 15, scope: !3947)
!3964 = distinct !{!3964, !3961, !3965, !971}
!3965 = !DILocation(line: 82, column: 17, scope: !3947)
!3966 = !DILocation(line: 83, column: 14, scope: !3967)
!3967 = distinct !DILexicalBlock(scope: !3947, file: !3933, line: 83, column: 11)
!3968 = !DILocation(line: 83, column: 11, scope: !3947)
!3969 = !DILocation(line: 85, column: 14, scope: !3970)
!3970 = distinct !DILexicalBlock(scope: !3967, file: !3933, line: 84, column: 9)
!3971 = !DILocation(line: 90, column: 3, scope: !3932)
!3972 = !DILocation(line: 90, column: 9, scope: !3932)
!3973 = !DILocation(line: 91, column: 20, scope: !3932)
!3974 = !DILocation(line: 94, column: 7, scope: !3975)
!3975 = distinct !DILexicalBlock(scope: !3932, file: !3933, line: 94, column: 7)
!3976 = !DILocation(line: 94, column: 10, scope: !3975)
!3977 = !DILocation(line: 94, column: 7, scope: !3932)
!3978 = !DILocation(line: 98, column: 14, scope: !3979)
!3979 = distinct !DILexicalBlock(scope: !3980, file: !3933, line: 98, column: 11)
!3980 = distinct !DILexicalBlock(scope: !3975, file: !3933, line: 95, column: 5)
!3981 = !DILocation(line: 98, column: 29, scope: !3979)
!3982 = !DILocation(line: 98, column: 32, scope: !3979)
!3983 = !DILocation(line: 98, column: 38, scope: !3979)
!3984 = !DILocation(line: 98, column: 41, scope: !3979)
!3985 = !DILocation(line: 98, column: 11, scope: !3980)
!3986 = !DILocation(line: 102, column: 12, scope: !3987)
!3987 = distinct !DILexicalBlock(scope: !3975, file: !3933, line: 102, column: 12)
!3988 = !DILocation(line: 102, column: 12, scope: !3975)
!3989 = !DILocation(line: 107, column: 5, scope: !3990)
!3990 = distinct !DILexicalBlock(scope: !3987, file: !3933, line: 103, column: 5)
!3991 = !DILocation(line: 112, column: 8, scope: !3992)
!3992 = distinct !DILexicalBlock(scope: !3932, file: !3933, line: 112, column: 7)
!3993 = !DILocation(line: 112, column: 7, scope: !3932)
!3994 = !DILocation(line: 114, column: 12, scope: !3995)
!3995 = distinct !DILexicalBlock(scope: !3992, file: !3933, line: 113, column: 5)
!3996 = !DILocation(line: 115, column: 7, scope: !3995)
!3997 = !DILocation(line: 118, column: 7, scope: !3954)
!3998 = !DILocation(line: 118, column: 11, scope: !3954)
!3999 = !DILocation(line: 118, column: 7, scope: !3932)
!4000 = !DILocation(line: 120, column: 12, scope: !4001)
!4001 = distinct !DILexicalBlock(scope: !3953, file: !3933, line: 120, column: 11)
!4002 = !DILocation(line: 120, column: 11, scope: !3953)
!4003 = !DILocation(line: 122, column: 16, scope: !4004)
!4004 = distinct !DILexicalBlock(scope: !4001, file: !3933, line: 121, column: 9)
!4005 = !DILocation(line: 123, column: 22, scope: !4004)
!4006 = !DILocation(line: 123, column: 11, scope: !4004)
!4007 = !DILocation(line: 0, scope: !3953)
!4008 = !DILocation(line: 128, column: 7, scope: !3953)
!4009 = !DILocation(line: 140, column: 15, scope: !4010)
!4010 = distinct !DILexicalBlock(scope: !4011, file: !3933, line: 140, column: 15)
!4011 = distinct !DILexicalBlock(scope: !3953, file: !3933, line: 129, column: 9)
!4012 = !DILocation(line: 140, column: 15, scope: !4011)
!4013 = !DILocation(line: 141, column: 21, scope: !4010)
!4014 = !DILocation(line: 141, column: 13, scope: !4010)
!4015 = !DILocation(line: 144, column: 21, scope: !4016)
!4016 = distinct !DILexicalBlock(scope: !4017, file: !3933, line: 144, column: 21)
!4017 = distinct !DILexicalBlock(scope: !4010, file: !3933, line: 142, column: 15)
!4018 = !DILocation(line: 144, column: 29, scope: !4016)
!4019 = !DILocation(line: 144, column: 21, scope: !4017)
!4020 = !DILocation(line: 152, column: 17, scope: !4017)
!4021 = !DILocation(line: 157, column: 7, scope: !3953)
!4022 = !DILocalVariable(name: "err", scope: !4023, file: !3933, line: 64, type: !3936)
!4023 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !3933, file: !3933, line: 62, type: !4024, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !4026)
!4024 = !DISubroutineType(types: !4025)
!4025 = !{!3936, !3937, !85, !85}
!4026 = !{!4027, !4028, !4029, !4022}
!4027 = !DILocalVariable(name: "x", arg: 1, scope: !4023, file: !3933, line: 62, type: !3937)
!4028 = !DILocalVariable(name: "base", arg: 2, scope: !4023, file: !3933, line: 62, type: !85)
!4029 = !DILocalVariable(name: "power", arg: 3, scope: !4023, file: !3933, line: 62, type: !85)
!4030 = !DILocation(line: 0, scope: !4023, inlinedAt: !4031)
!4031 = distinct !DILocation(line: 219, column: 22, scope: !4032)
!4032 = distinct !DILexicalBlock(scope: !3953, file: !3933, line: 158, column: 9)
!4033 = !DILocalVariable(name: "x", arg: 1, scope: !4034, file: !3933, line: 47, type: !3937)
!4034 = distinct !DISubprogram(name: "bkm_scale", scope: !3933, file: !3933, line: 47, type: !4035, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !4037)
!4035 = !DISubroutineType(types: !4036)
!4036 = !{!3936, !3937, !85}
!4037 = !{!4033, !4038, !4039}
!4038 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !4034, file: !3933, line: 47, type: !85)
!4039 = !DILocalVariable(name: "scaled", scope: !4034, file: !3933, line: 49, type: !814)
!4040 = !DILocation(line: 0, scope: !4034, inlinedAt: !4041)
!4041 = distinct !DILocation(line: 66, column: 12, scope: !4023, inlinedAt: !4031)
!4042 = !DILocation(line: 50, column: 7, scope: !4043, inlinedAt: !4041)
!4043 = distinct !DILexicalBlock(scope: !4034, file: !3933, line: 50, column: 7)
!4044 = !DILocation(line: 66, column: 9, scope: !4023, inlinedAt: !4031)
!4045 = !DILocation(line: 227, column: 11, scope: !3953)
!4046 = !DILocation(line: 0, scope: !4023, inlinedAt: !4047)
!4047 = distinct !DILocation(line: 215, column: 22, scope: !4032)
!4048 = !DILocation(line: 0, scope: !4034, inlinedAt: !4049)
!4049 = distinct !DILocation(line: 66, column: 12, scope: !4023, inlinedAt: !4047)
!4050 = !DILocation(line: 50, column: 7, scope: !4043, inlinedAt: !4049)
!4051 = !DILocation(line: 66, column: 9, scope: !4023, inlinedAt: !4047)
!4052 = !DILocation(line: 0, scope: !4023, inlinedAt: !4053)
!4053 = distinct !DILocation(line: 202, column: 22, scope: !4032)
!4054 = !DILocation(line: 0, scope: !4034, inlinedAt: !4055)
!4055 = distinct !DILocation(line: 66, column: 12, scope: !4023, inlinedAt: !4053)
!4056 = !DILocation(line: 50, column: 7, scope: !4043, inlinedAt: !4055)
!4057 = !DILocation(line: 66, column: 9, scope: !4023, inlinedAt: !4053)
!4058 = !DILocation(line: 0, scope: !4023, inlinedAt: !4059)
!4059 = distinct !DILocation(line: 198, column: 22, scope: !4032)
!4060 = !DILocation(line: 0, scope: !4034, inlinedAt: !4061)
!4061 = distinct !DILocation(line: 66, column: 12, scope: !4023, inlinedAt: !4059)
!4062 = !DILocation(line: 50, column: 7, scope: !4043, inlinedAt: !4061)
!4063 = !DILocation(line: 66, column: 9, scope: !4023, inlinedAt: !4059)
!4064 = !DILocation(line: 0, scope: !4023, inlinedAt: !4065)
!4065 = distinct !DILocation(line: 194, column: 22, scope: !4032)
!4066 = !DILocation(line: 0, scope: !4034, inlinedAt: !4067)
!4067 = distinct !DILocation(line: 66, column: 12, scope: !4023, inlinedAt: !4065)
!4068 = !DILocation(line: 50, column: 7, scope: !4043, inlinedAt: !4067)
!4069 = !DILocation(line: 66, column: 9, scope: !4023, inlinedAt: !4065)
!4070 = !DILocation(line: 0, scope: !4023, inlinedAt: !4071)
!4071 = distinct !DILocation(line: 175, column: 22, scope: !4032)
!4072 = !DILocation(line: 0, scope: !4034, inlinedAt: !4073)
!4073 = distinct !DILocation(line: 66, column: 12, scope: !4023, inlinedAt: !4071)
!4074 = !DILocation(line: 50, column: 7, scope: !4043, inlinedAt: !4073)
!4075 = !DILocation(line: 66, column: 9, scope: !4023, inlinedAt: !4071)
!4076 = !DILocation(line: 0, scope: !4034, inlinedAt: !4077)
!4077 = distinct !DILocation(line: 160, column: 22, scope: !4032)
!4078 = !DILocation(line: 50, column: 7, scope: !4043, inlinedAt: !4077)
!4079 = !DILocation(line: 161, column: 11, scope: !4032)
!4080 = !DILocation(line: 0, scope: !4034, inlinedAt: !4081)
!4081 = distinct !DILocation(line: 167, column: 22, scope: !4032)
!4082 = !DILocation(line: 50, column: 7, scope: !4043, inlinedAt: !4081)
!4083 = !DILocation(line: 168, column: 11, scope: !4032)
!4084 = !DILocation(line: 0, scope: !4023, inlinedAt: !4085)
!4085 = distinct !DILocation(line: 180, column: 22, scope: !4032)
!4086 = !DILocation(line: 0, scope: !4034, inlinedAt: !4087)
!4087 = distinct !DILocation(line: 66, column: 12, scope: !4023, inlinedAt: !4085)
!4088 = !DILocation(line: 50, column: 7, scope: !4043, inlinedAt: !4087)
!4089 = !DILocation(line: 66, column: 9, scope: !4023, inlinedAt: !4085)
!4090 = !DILocation(line: 0, scope: !4023, inlinedAt: !4091)
!4091 = distinct !DILocation(line: 185, column: 22, scope: !4032)
!4092 = !DILocation(line: 50, column: 7, scope: !4043, inlinedAt: !4093)
!4093 = distinct !DILocation(line: 66, column: 12, scope: !4023, inlinedAt: !4091)
!4094 = !DILocation(line: 0, scope: !4034, inlinedAt: !4093)
!4095 = !DILocation(line: 0, scope: !4023, inlinedAt: !4096)
!4096 = distinct !DILocation(line: 190, column: 22, scope: !4032)
!4097 = !DILocation(line: 0, scope: !4034, inlinedAt: !4098)
!4098 = distinct !DILocation(line: 66, column: 12, scope: !4023, inlinedAt: !4096)
!4099 = !DILocation(line: 50, column: 7, scope: !4043, inlinedAt: !4098)
!4100 = !DILocation(line: 66, column: 9, scope: !4023, inlinedAt: !4096)
!4101 = !DILocation(line: 0, scope: !4023, inlinedAt: !4102)
!4102 = distinct !DILocation(line: 207, column: 22, scope: !4032)
!4103 = !DILocation(line: 0, scope: !4034, inlinedAt: !4104)
!4104 = distinct !DILocation(line: 66, column: 12, scope: !4023, inlinedAt: !4102)
!4105 = !DILocation(line: 50, column: 7, scope: !4043, inlinedAt: !4104)
!4106 = !DILocation(line: 66, column: 9, scope: !4023, inlinedAt: !4102)
!4107 = !DILocation(line: 0, scope: !4034, inlinedAt: !4108)
!4108 = distinct !DILocation(line: 211, column: 22, scope: !4032)
!4109 = !DILocation(line: 50, column: 7, scope: !4043, inlinedAt: !4108)
!4110 = !DILocation(line: 212, column: 11, scope: !4032)
!4111 = !DILocation(line: 0, scope: !4032)
!4112 = !DILocation(line: 228, column: 10, scope: !3953)
!4113 = !DILocation(line: 229, column: 11, scope: !4114)
!4114 = distinct !DILexicalBlock(scope: !3953, file: !3933, line: 229, column: 11)
!4115 = !DILocation(line: 229, column: 11, scope: !3953)
!4116 = !DILocation(line: 223, column: 16, scope: !4032)
!4117 = !DILocation(line: 224, column: 22, scope: !4032)
!4118 = !DILocation(line: 100, column: 11, scope: !3980)
!4119 = !DILocation(line: 92, column: 16, scope: !3932)
!4120 = !DILocation(line: 233, column: 8, scope: !3932)
!4121 = !DILocation(line: 234, column: 3, scope: !3932)
!4122 = !DILocation(line: 235, column: 1, scope: !3932)
!4123 = !DISubprogram(name: "strtoumax", scope: !4124, file: !4124, line: 301, type: !4125, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !863)
!4124 = !DIFile(filename: "/usr/include/inttypes.h", directory: "", checksumkind: CSK_MD5, checksum: "e498a0d76716f3e3909f4b6f2cb2f20f")
!4125 = !DISubroutineType(types: !4126)
!4126 = !{!814, !914, !4127, !85}
!4127 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1078)
!4128 = distinct !DISubprogram(name: "close_stream", scope: !818, file: !818, line: 55, type: !4129, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !817, retainedNodes: !4165)
!4129 = !DISubroutineType(types: !4130)
!4130 = !{!85, !4131}
!4131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4132, size: 64)
!4132 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !249, line: 7, baseType: !4133)
!4133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !251, line: 49, size: 1728, elements: !4134)
!4134 = !{!4135, !4136, !4137, !4138, !4139, !4140, !4141, !4142, !4143, !4144, !4145, !4146, !4147, !4148, !4150, !4151, !4152, !4153, !4154, !4155, !4156, !4157, !4158, !4159, !4160, !4161, !4162, !4163, !4164}
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4133, file: !251, line: 51, baseType: !85, size: 32)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4133, file: !251, line: 54, baseType: !128, size: 64, offset: 64)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4133, file: !251, line: 55, baseType: !128, size: 64, offset: 128)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4133, file: !251, line: 56, baseType: !128, size: 64, offset: 192)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4133, file: !251, line: 57, baseType: !128, size: 64, offset: 256)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4133, file: !251, line: 58, baseType: !128, size: 64, offset: 320)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4133, file: !251, line: 59, baseType: !128, size: 64, offset: 384)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4133, file: !251, line: 60, baseType: !128, size: 64, offset: 448)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4133, file: !251, line: 61, baseType: !128, size: 64, offset: 512)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4133, file: !251, line: 64, baseType: !128, size: 64, offset: 576)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4133, file: !251, line: 65, baseType: !128, size: 64, offset: 640)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4133, file: !251, line: 66, baseType: !128, size: 64, offset: 704)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4133, file: !251, line: 68, baseType: !266, size: 64, offset: 768)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4133, file: !251, line: 70, baseType: !4149, size: 64, offset: 832)
!4149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4133, size: 64)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4133, file: !251, line: 72, baseType: !85, size: 32, offset: 896)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4133, file: !251, line: 73, baseType: !85, size: 32, offset: 928)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4133, file: !251, line: 74, baseType: !273, size: 64, offset: 960)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4133, file: !251, line: 77, baseType: !135, size: 16, offset: 1024)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4133, file: !251, line: 78, baseType: !277, size: 8, offset: 1040)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4133, file: !251, line: 79, baseType: !61, size: 8, offset: 1048)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4133, file: !251, line: 81, baseType: !280, size: 64, offset: 1088)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4133, file: !251, line: 89, baseType: !283, size: 64, offset: 1152)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4133, file: !251, line: 91, baseType: !285, size: 64, offset: 1216)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4133, file: !251, line: 92, baseType: !288, size: 64, offset: 1280)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4133, file: !251, line: 93, baseType: !4149, size: 64, offset: 1344)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4133, file: !251, line: 94, baseType: !129, size: 64, offset: 1408)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4133, file: !251, line: 95, baseType: !136, size: 64, offset: 1472)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4133, file: !251, line: 96, baseType: !85, size: 32, offset: 1536)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4133, file: !251, line: 98, baseType: !295, size: 160, offset: 1568)
!4165 = !{!4166, !4167, !4169, !4170}
!4166 = !DILocalVariable(name: "stream", arg: 1, scope: !4128, file: !818, line: 55, type: !4131)
!4167 = !DILocalVariable(name: "some_pending", scope: !4128, file: !818, line: 57, type: !4168)
!4168 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !234)
!4169 = !DILocalVariable(name: "prev_fail", scope: !4128, file: !818, line: 58, type: !4168)
!4170 = !DILocalVariable(name: "fclose_fail", scope: !4128, file: !818, line: 59, type: !4168)
!4171 = !DILocation(line: 0, scope: !4128)
!4172 = !DILocation(line: 57, column: 30, scope: !4128)
!4173 = !DILocalVariable(name: "__stream", arg: 1, scope: !4174, file: !1460, line: 135, type: !4131)
!4174 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1460, file: !1460, line: 135, type: !4129, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !817, retainedNodes: !4175)
!4175 = !{!4173}
!4176 = !DILocation(line: 0, scope: !4174, inlinedAt: !4177)
!4177 = distinct !DILocation(line: 58, column: 27, scope: !4128)
!4178 = !DILocation(line: 137, column: 10, scope: !4174, inlinedAt: !4177)
!4179 = !{!1469, !925, i64 0}
!4180 = !DILocation(line: 58, column: 43, scope: !4128)
!4181 = !DILocation(line: 59, column: 29, scope: !4128)
!4182 = !DILocation(line: 59, column: 45, scope: !4128)
!4183 = !DILocation(line: 69, column: 17, scope: !4184)
!4184 = distinct !DILexicalBlock(scope: !4128, file: !818, line: 69, column: 7)
!4185 = !DILocation(line: 57, column: 50, scope: !4128)
!4186 = !DILocation(line: 69, column: 33, scope: !4184)
!4187 = !DILocation(line: 69, column: 53, scope: !4184)
!4188 = !DILocation(line: 69, column: 59, scope: !4184)
!4189 = !DILocation(line: 69, column: 7, scope: !4128)
!4190 = !DILocation(line: 71, column: 11, scope: !4191)
!4191 = distinct !DILexicalBlock(scope: !4184, file: !818, line: 70, column: 5)
!4192 = !DILocation(line: 72, column: 9, scope: !4193)
!4193 = distinct !DILexicalBlock(scope: !4191, file: !818, line: 71, column: 11)
!4194 = !DILocation(line: 72, column: 15, scope: !4193)
!4195 = !DILocation(line: 77, column: 1, scope: !4128)
!4196 = !DISubprogram(name: "__fpending", scope: !4197, file: !4197, line: 75, type: !4198, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !863)
!4197 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!4198 = !DISubroutineType(types: !4199)
!4199 = !{!136, !4131}
!4200 = distinct !DISubprogram(name: "rpl_fclose", scope: !820, file: !820, line: 58, type: !4201, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !819, retainedNodes: !4237)
!4201 = !DISubroutineType(types: !4202)
!4202 = !{!85, !4203}
!4203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4204, size: 64)
!4204 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !249, line: 7, baseType: !4205)
!4205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !251, line: 49, size: 1728, elements: !4206)
!4206 = !{!4207, !4208, !4209, !4210, !4211, !4212, !4213, !4214, !4215, !4216, !4217, !4218, !4219, !4220, !4222, !4223, !4224, !4225, !4226, !4227, !4228, !4229, !4230, !4231, !4232, !4233, !4234, !4235, !4236}
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4205, file: !251, line: 51, baseType: !85, size: 32)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4205, file: !251, line: 54, baseType: !128, size: 64, offset: 64)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4205, file: !251, line: 55, baseType: !128, size: 64, offset: 128)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4205, file: !251, line: 56, baseType: !128, size: 64, offset: 192)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4205, file: !251, line: 57, baseType: !128, size: 64, offset: 256)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4205, file: !251, line: 58, baseType: !128, size: 64, offset: 320)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4205, file: !251, line: 59, baseType: !128, size: 64, offset: 384)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4205, file: !251, line: 60, baseType: !128, size: 64, offset: 448)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4205, file: !251, line: 61, baseType: !128, size: 64, offset: 512)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4205, file: !251, line: 64, baseType: !128, size: 64, offset: 576)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4205, file: !251, line: 65, baseType: !128, size: 64, offset: 640)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4205, file: !251, line: 66, baseType: !128, size: 64, offset: 704)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4205, file: !251, line: 68, baseType: !266, size: 64, offset: 768)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4205, file: !251, line: 70, baseType: !4221, size: 64, offset: 832)
!4221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4205, size: 64)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4205, file: !251, line: 72, baseType: !85, size: 32, offset: 896)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4205, file: !251, line: 73, baseType: !85, size: 32, offset: 928)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4205, file: !251, line: 74, baseType: !273, size: 64, offset: 960)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4205, file: !251, line: 77, baseType: !135, size: 16, offset: 1024)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4205, file: !251, line: 78, baseType: !277, size: 8, offset: 1040)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4205, file: !251, line: 79, baseType: !61, size: 8, offset: 1048)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4205, file: !251, line: 81, baseType: !280, size: 64, offset: 1088)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4205, file: !251, line: 89, baseType: !283, size: 64, offset: 1152)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4205, file: !251, line: 91, baseType: !285, size: 64, offset: 1216)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4205, file: !251, line: 92, baseType: !288, size: 64, offset: 1280)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4205, file: !251, line: 93, baseType: !4221, size: 64, offset: 1344)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4205, file: !251, line: 94, baseType: !129, size: 64, offset: 1408)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4205, file: !251, line: 95, baseType: !136, size: 64, offset: 1472)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4205, file: !251, line: 96, baseType: !85, size: 32, offset: 1536)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4205, file: !251, line: 98, baseType: !295, size: 160, offset: 1568)
!4237 = !{!4238, !4239, !4240, !4241}
!4238 = !DILocalVariable(name: "fp", arg: 1, scope: !4200, file: !820, line: 58, type: !4203)
!4239 = !DILocalVariable(name: "saved_errno", scope: !4200, file: !820, line: 60, type: !85)
!4240 = !DILocalVariable(name: "fd", scope: !4200, file: !820, line: 63, type: !85)
!4241 = !DILocalVariable(name: "result", scope: !4200, file: !820, line: 74, type: !85)
!4242 = !DILocation(line: 0, scope: !4200)
!4243 = !DILocation(line: 63, column: 12, scope: !4200)
!4244 = !DILocation(line: 64, column: 10, scope: !4245)
!4245 = distinct !DILexicalBlock(scope: !4200, file: !820, line: 64, column: 7)
!4246 = !DILocation(line: 64, column: 7, scope: !4200)
!4247 = !DILocation(line: 65, column: 12, scope: !4245)
!4248 = !DILocation(line: 65, column: 5, scope: !4245)
!4249 = !DILocation(line: 70, column: 9, scope: !4250)
!4250 = distinct !DILexicalBlock(scope: !4200, file: !820, line: 70, column: 7)
!4251 = !DILocation(line: 70, column: 23, scope: !4250)
!4252 = !DILocation(line: 70, column: 33, scope: !4250)
!4253 = !DILocation(line: 70, column: 26, scope: !4250)
!4254 = !DILocation(line: 70, column: 59, scope: !4250)
!4255 = !DILocation(line: 71, column: 7, scope: !4250)
!4256 = !DILocation(line: 71, column: 10, scope: !4250)
!4257 = !DILocation(line: 70, column: 7, scope: !4200)
!4258 = !DILocation(line: 100, column: 12, scope: !4200)
!4259 = !DILocation(line: 105, column: 7, scope: !4200)
!4260 = !DILocation(line: 72, column: 19, scope: !4250)
!4261 = !DILocation(line: 105, column: 19, scope: !4262)
!4262 = distinct !DILexicalBlock(scope: !4200, file: !820, line: 105, column: 7)
!4263 = !DILocation(line: 107, column: 13, scope: !4264)
!4264 = distinct !DILexicalBlock(scope: !4262, file: !820, line: 106, column: 5)
!4265 = !DILocation(line: 109, column: 5, scope: !4264)
!4266 = !DILocation(line: 112, column: 1, scope: !4200)
!4267 = !DISubprogram(name: "fileno", scope: !919, file: !919, line: 809, type: !4201, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !863)
!4268 = !DISubprogram(name: "fclose", scope: !919, file: !919, line: 178, type: !4201, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !863)
!4269 = !DISubprogram(name: "__freading", scope: !4197, file: !4197, line: 51, type: !4201, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !863)
!4270 = !DISubprogram(name: "lseek", scope: !1343, file: !1343, line: 339, type: !4271, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !863)
!4271 = !DISubroutineType(types: !4272)
!4272 = !{!273, !85, !273, !85}
!4273 = distinct !DISubprogram(name: "rpl_fflush", scope: !822, file: !822, line: 130, type: !4274, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !821, retainedNodes: !4310)
!4274 = !DISubroutineType(types: !4275)
!4275 = !{!85, !4276}
!4276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4277, size: 64)
!4277 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !249, line: 7, baseType: !4278)
!4278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !251, line: 49, size: 1728, elements: !4279)
!4279 = !{!4280, !4281, !4282, !4283, !4284, !4285, !4286, !4287, !4288, !4289, !4290, !4291, !4292, !4293, !4295, !4296, !4297, !4298, !4299, !4300, !4301, !4302, !4303, !4304, !4305, !4306, !4307, !4308, !4309}
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4278, file: !251, line: 51, baseType: !85, size: 32)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4278, file: !251, line: 54, baseType: !128, size: 64, offset: 64)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4278, file: !251, line: 55, baseType: !128, size: 64, offset: 128)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4278, file: !251, line: 56, baseType: !128, size: 64, offset: 192)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4278, file: !251, line: 57, baseType: !128, size: 64, offset: 256)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4278, file: !251, line: 58, baseType: !128, size: 64, offset: 320)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4278, file: !251, line: 59, baseType: !128, size: 64, offset: 384)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4278, file: !251, line: 60, baseType: !128, size: 64, offset: 448)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4278, file: !251, line: 61, baseType: !128, size: 64, offset: 512)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4278, file: !251, line: 64, baseType: !128, size: 64, offset: 576)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4278, file: !251, line: 65, baseType: !128, size: 64, offset: 640)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4278, file: !251, line: 66, baseType: !128, size: 64, offset: 704)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4278, file: !251, line: 68, baseType: !266, size: 64, offset: 768)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4278, file: !251, line: 70, baseType: !4294, size: 64, offset: 832)
!4294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4278, size: 64)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4278, file: !251, line: 72, baseType: !85, size: 32, offset: 896)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4278, file: !251, line: 73, baseType: !85, size: 32, offset: 928)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4278, file: !251, line: 74, baseType: !273, size: 64, offset: 960)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4278, file: !251, line: 77, baseType: !135, size: 16, offset: 1024)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4278, file: !251, line: 78, baseType: !277, size: 8, offset: 1040)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4278, file: !251, line: 79, baseType: !61, size: 8, offset: 1048)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4278, file: !251, line: 81, baseType: !280, size: 64, offset: 1088)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4278, file: !251, line: 89, baseType: !283, size: 64, offset: 1152)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4278, file: !251, line: 91, baseType: !285, size: 64, offset: 1216)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4278, file: !251, line: 92, baseType: !288, size: 64, offset: 1280)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4278, file: !251, line: 93, baseType: !4294, size: 64, offset: 1344)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4278, file: !251, line: 94, baseType: !129, size: 64, offset: 1408)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4278, file: !251, line: 95, baseType: !136, size: 64, offset: 1472)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4278, file: !251, line: 96, baseType: !85, size: 32, offset: 1536)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4278, file: !251, line: 98, baseType: !295, size: 160, offset: 1568)
!4310 = !{!4311}
!4311 = !DILocalVariable(name: "stream", arg: 1, scope: !4273, file: !822, line: 130, type: !4276)
!4312 = !DILocation(line: 0, scope: !4273)
!4313 = !DILocation(line: 151, column: 14, scope: !4314)
!4314 = distinct !DILexicalBlock(scope: !4273, file: !822, line: 151, column: 7)
!4315 = !DILocation(line: 151, column: 22, scope: !4314)
!4316 = !DILocation(line: 151, column: 27, scope: !4314)
!4317 = !DILocation(line: 151, column: 7, scope: !4273)
!4318 = !DILocation(line: 152, column: 12, scope: !4314)
!4319 = !DILocation(line: 152, column: 5, scope: !4314)
!4320 = !DILocalVariable(name: "fp", arg: 1, scope: !4321, file: !822, line: 42, type: !4276)
!4321 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !822, file: !822, line: 42, type: !4322, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !821, retainedNodes: !4324)
!4322 = !DISubroutineType(types: !4323)
!4323 = !{null, !4276}
!4324 = !{!4320}
!4325 = !DILocation(line: 0, scope: !4321, inlinedAt: !4326)
!4326 = distinct !DILocation(line: 157, column: 3, scope: !4273)
!4327 = !DILocation(line: 44, column: 12, scope: !4328, inlinedAt: !4326)
!4328 = distinct !DILexicalBlock(scope: !4321, file: !822, line: 44, column: 7)
!4329 = !DILocation(line: 44, column: 19, scope: !4328, inlinedAt: !4326)
!4330 = !DILocation(line: 44, column: 7, scope: !4321, inlinedAt: !4326)
!4331 = !DILocation(line: 46, column: 5, scope: !4328, inlinedAt: !4326)
!4332 = !DILocation(line: 159, column: 10, scope: !4273)
!4333 = !DILocation(line: 159, column: 3, scope: !4273)
!4334 = !DILocation(line: 236, column: 1, scope: !4273)
!4335 = !DISubprogram(name: "fflush", scope: !919, file: !919, line: 230, type: !4274, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !863)
!4336 = distinct !DISubprogram(name: "rpl_fseeko", scope: !824, file: !824, line: 28, type: !4337, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !823, retainedNodes: !4374)
!4337 = !DISubroutineType(types: !4338)
!4338 = !{!85, !4339, !4373, !85}
!4339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4340, size: 64)
!4340 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !249, line: 7, baseType: !4341)
!4341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !251, line: 49, size: 1728, elements: !4342)
!4342 = !{!4343, !4344, !4345, !4346, !4347, !4348, !4349, !4350, !4351, !4352, !4353, !4354, !4355, !4356, !4358, !4359, !4360, !4361, !4362, !4363, !4364, !4365, !4366, !4367, !4368, !4369, !4370, !4371, !4372}
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4341, file: !251, line: 51, baseType: !85, size: 32)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4341, file: !251, line: 54, baseType: !128, size: 64, offset: 64)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4341, file: !251, line: 55, baseType: !128, size: 64, offset: 128)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4341, file: !251, line: 56, baseType: !128, size: 64, offset: 192)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4341, file: !251, line: 57, baseType: !128, size: 64, offset: 256)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4341, file: !251, line: 58, baseType: !128, size: 64, offset: 320)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4341, file: !251, line: 59, baseType: !128, size: 64, offset: 384)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4341, file: !251, line: 60, baseType: !128, size: 64, offset: 448)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4341, file: !251, line: 61, baseType: !128, size: 64, offset: 512)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4341, file: !251, line: 64, baseType: !128, size: 64, offset: 576)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4341, file: !251, line: 65, baseType: !128, size: 64, offset: 640)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4341, file: !251, line: 66, baseType: !128, size: 64, offset: 704)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4341, file: !251, line: 68, baseType: !266, size: 64, offset: 768)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4341, file: !251, line: 70, baseType: !4357, size: 64, offset: 832)
!4357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4341, size: 64)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4341, file: !251, line: 72, baseType: !85, size: 32, offset: 896)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4341, file: !251, line: 73, baseType: !85, size: 32, offset: 928)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4341, file: !251, line: 74, baseType: !273, size: 64, offset: 960)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4341, file: !251, line: 77, baseType: !135, size: 16, offset: 1024)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4341, file: !251, line: 78, baseType: !277, size: 8, offset: 1040)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4341, file: !251, line: 79, baseType: !61, size: 8, offset: 1048)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4341, file: !251, line: 81, baseType: !280, size: 64, offset: 1088)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4341, file: !251, line: 89, baseType: !283, size: 64, offset: 1152)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4341, file: !251, line: 91, baseType: !285, size: 64, offset: 1216)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4341, file: !251, line: 92, baseType: !288, size: 64, offset: 1280)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4341, file: !251, line: 93, baseType: !4357, size: 64, offset: 1344)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4341, file: !251, line: 94, baseType: !129, size: 64, offset: 1408)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4341, file: !251, line: 95, baseType: !136, size: 64, offset: 1472)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4341, file: !251, line: 96, baseType: !85, size: 32, offset: 1536)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4341, file: !251, line: 98, baseType: !295, size: 160, offset: 1568)
!4373 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !919, line: 63, baseType: !273)
!4374 = !{!4375, !4376, !4377, !4378}
!4375 = !DILocalVariable(name: "fp", arg: 1, scope: !4336, file: !824, line: 28, type: !4339)
!4376 = !DILocalVariable(name: "offset", arg: 2, scope: !4336, file: !824, line: 28, type: !4373)
!4377 = !DILocalVariable(name: "whence", arg: 3, scope: !4336, file: !824, line: 28, type: !85)
!4378 = !DILocalVariable(name: "pos", scope: !4379, file: !824, line: 123, type: !4373)
!4379 = distinct !DILexicalBlock(scope: !4380, file: !824, line: 119, column: 5)
!4380 = distinct !DILexicalBlock(scope: !4336, file: !824, line: 55, column: 7)
!4381 = !DILocation(line: 0, scope: !4336)
!4382 = !DILocation(line: 55, column: 12, scope: !4380)
!4383 = !{!1469, !855, i64 16}
!4384 = !DILocation(line: 55, column: 33, scope: !4380)
!4385 = !{!1469, !855, i64 8}
!4386 = !DILocation(line: 55, column: 25, scope: !4380)
!4387 = !DILocation(line: 56, column: 7, scope: !4380)
!4388 = !DILocation(line: 56, column: 15, scope: !4380)
!4389 = !DILocation(line: 56, column: 37, scope: !4380)
!4390 = !{!1469, !855, i64 32}
!4391 = !DILocation(line: 56, column: 29, scope: !4380)
!4392 = !DILocation(line: 57, column: 7, scope: !4380)
!4393 = !DILocation(line: 57, column: 15, scope: !4380)
!4394 = !{!1469, !855, i64 72}
!4395 = !DILocation(line: 57, column: 29, scope: !4380)
!4396 = !DILocation(line: 55, column: 7, scope: !4336)
!4397 = !DILocation(line: 123, column: 26, scope: !4379)
!4398 = !DILocation(line: 123, column: 19, scope: !4379)
!4399 = !DILocation(line: 0, scope: !4379)
!4400 = !DILocation(line: 124, column: 15, scope: !4401)
!4401 = distinct !DILexicalBlock(scope: !4379, file: !824, line: 124, column: 11)
!4402 = !DILocation(line: 124, column: 11, scope: !4379)
!4403 = !DILocation(line: 135, column: 19, scope: !4379)
!4404 = !DILocation(line: 136, column: 12, scope: !4379)
!4405 = !DILocation(line: 136, column: 20, scope: !4379)
!4406 = !{!1469, !1218, i64 144}
!4407 = !DILocation(line: 167, column: 7, scope: !4379)
!4408 = !DILocation(line: 169, column: 10, scope: !4336)
!4409 = !DILocation(line: 169, column: 3, scope: !4336)
!4410 = !DILocation(line: 170, column: 1, scope: !4336)
!4411 = !DISubprogram(name: "fseeko", scope: !919, file: !919, line: 736, type: !4412, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !863)
!4412 = !DISubroutineType(types: !4413)
!4413 = !{!85, !4339, !273, !85}
!4414 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !733, file: !733, line: 100, type: !4415, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !736, retainedNodes: !4418)
!4415 = !DISubroutineType(types: !4416)
!4416 = !{!136, !2021, !138, !136, !4417}
!4417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!4418 = !{!4419, !4420, !4421, !4422, !4423}
!4419 = !DILocalVariable(name: "pwc", arg: 1, scope: !4414, file: !733, line: 100, type: !2021)
!4420 = !DILocalVariable(name: "s", arg: 2, scope: !4414, file: !733, line: 100, type: !138)
!4421 = !DILocalVariable(name: "n", arg: 3, scope: !4414, file: !733, line: 100, type: !136)
!4422 = !DILocalVariable(name: "ps", arg: 4, scope: !4414, file: !733, line: 100, type: !4417)
!4423 = !DILocalVariable(name: "ret", scope: !4414, file: !733, line: 130, type: !136)
!4424 = !DILocation(line: 0, scope: !4414)
!4425 = !DILocation(line: 105, column: 9, scope: !4426)
!4426 = distinct !DILexicalBlock(scope: !4414, file: !733, line: 105, column: 7)
!4427 = !DILocation(line: 105, column: 7, scope: !4414)
!4428 = !DILocation(line: 117, column: 10, scope: !4429)
!4429 = distinct !DILexicalBlock(scope: !4414, file: !733, line: 117, column: 7)
!4430 = !DILocation(line: 117, column: 7, scope: !4414)
!4431 = !DILocation(line: 130, column: 16, scope: !4414)
!4432 = !DILocation(line: 135, column: 11, scope: !4433)
!4433 = distinct !DILexicalBlock(scope: !4414, file: !733, line: 135, column: 7)
!4434 = !DILocation(line: 135, column: 25, scope: !4433)
!4435 = !DILocation(line: 135, column: 30, scope: !4433)
!4436 = !DILocation(line: 135, column: 7, scope: !4414)
!4437 = !DILocalVariable(name: "ps", arg: 1, scope: !4438, file: !1994, line: 1135, type: !4417)
!4438 = distinct !DISubprogram(name: "mbszero", scope: !1994, file: !1994, line: 1135, type: !4439, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !736, retainedNodes: !4441)
!4439 = !DISubroutineType(types: !4440)
!4440 = !{null, !4417}
!4441 = !{!4437}
!4442 = !DILocation(line: 0, scope: !4438, inlinedAt: !4443)
!4443 = distinct !DILocation(line: 137, column: 5, scope: !4433)
!4444 = !DILocalVariable(name: "__dest", arg: 1, scope: !4445, file: !2003, line: 57, type: !129)
!4445 = distinct !DISubprogram(name: "memset", scope: !2003, file: !2003, line: 57, type: !2004, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !736, retainedNodes: !4446)
!4446 = !{!4444, !4447, !4448}
!4447 = !DILocalVariable(name: "__ch", arg: 2, scope: !4445, file: !2003, line: 57, type: !85)
!4448 = !DILocalVariable(name: "__len", arg: 3, scope: !4445, file: !2003, line: 57, type: !136)
!4449 = !DILocation(line: 0, scope: !4445, inlinedAt: !4450)
!4450 = distinct !DILocation(line: 1137, column: 3, scope: !4438, inlinedAt: !4443)
!4451 = !DILocation(line: 59, column: 10, scope: !4445, inlinedAt: !4450)
!4452 = !DILocation(line: 137, column: 5, scope: !4433)
!4453 = !DILocation(line: 138, column: 11, scope: !4454)
!4454 = distinct !DILexicalBlock(scope: !4414, file: !733, line: 138, column: 7)
!4455 = !DILocation(line: 138, column: 7, scope: !4414)
!4456 = !DILocation(line: 139, column: 5, scope: !4454)
!4457 = !DILocation(line: 143, column: 26, scope: !4458)
!4458 = distinct !DILexicalBlock(scope: !4414, file: !733, line: 143, column: 7)
!4459 = !DILocation(line: 143, column: 41, scope: !4458)
!4460 = !DILocation(line: 143, column: 7, scope: !4414)
!4461 = !DILocation(line: 145, column: 15, scope: !4462)
!4462 = distinct !DILexicalBlock(scope: !4463, file: !733, line: 145, column: 11)
!4463 = distinct !DILexicalBlock(scope: !4458, file: !733, line: 144, column: 5)
!4464 = !DILocation(line: 145, column: 11, scope: !4463)
!4465 = !DILocation(line: 146, column: 32, scope: !4462)
!4466 = !DILocation(line: 146, column: 16, scope: !4462)
!4467 = !DILocation(line: 146, column: 14, scope: !4462)
!4468 = !DILocation(line: 146, column: 9, scope: !4462)
!4469 = !DILocation(line: 286, column: 1, scope: !4414)
!4470 = !DISubprogram(name: "mbsinit", scope: !4471, file: !4471, line: 293, type: !4472, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !863)
!4471 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4472 = !DISubroutineType(types: !4473)
!4473 = !{!85, !4474}
!4474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4475, size: 64)
!4475 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !739)
!4476 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !826, file: !826, line: 27, type: !3489, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !825, retainedNodes: !4477)
!4477 = !{!4478, !4479, !4480, !4481}
!4478 = !DILocalVariable(name: "ptr", arg: 1, scope: !4476, file: !826, line: 27, type: !129)
!4479 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4476, file: !826, line: 27, type: !136)
!4480 = !DILocalVariable(name: "size", arg: 3, scope: !4476, file: !826, line: 27, type: !136)
!4481 = !DILocalVariable(name: "nbytes", scope: !4476, file: !826, line: 29, type: !136)
!4482 = !DILocation(line: 0, scope: !4476)
!4483 = !DILocation(line: 30, column: 7, scope: !4484)
!4484 = distinct !DILexicalBlock(scope: !4476, file: !826, line: 30, column: 7)
!4485 = !DILocalVariable(name: "ptr", arg: 1, scope: !4486, file: !3581, line: 2057, type: !129)
!4486 = distinct !DISubprogram(name: "rpl_realloc", scope: !3581, file: !3581, line: 2057, type: !3573, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !825, retainedNodes: !4487)
!4487 = !{!4485, !4488}
!4488 = !DILocalVariable(name: "size", arg: 2, scope: !4486, file: !3581, line: 2057, type: !136)
!4489 = !DILocation(line: 0, scope: !4486, inlinedAt: !4490)
!4490 = distinct !DILocation(line: 37, column: 10, scope: !4476)
!4491 = !DILocation(line: 2059, column: 24, scope: !4486, inlinedAt: !4490)
!4492 = !DILocation(line: 2059, column: 10, scope: !4486, inlinedAt: !4490)
!4493 = !DILocation(line: 37, column: 3, scope: !4476)
!4494 = !DILocation(line: 32, column: 7, scope: !4495)
!4495 = distinct !DILexicalBlock(scope: !4484, file: !826, line: 31, column: 5)
!4496 = !DILocation(line: 32, column: 13, scope: !4495)
!4497 = !DILocation(line: 33, column: 7, scope: !4495)
!4498 = !DILocation(line: 38, column: 1, scope: !4476)
!4499 = distinct !DISubprogram(name: "hard_locale", scope: !751, file: !751, line: 28, type: !4500, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !828, retainedNodes: !4502)
!4500 = !DISubroutineType(types: !4501)
!4501 = !{!234, !85}
!4502 = !{!4503, !4504}
!4503 = !DILocalVariable(name: "category", arg: 1, scope: !4499, file: !751, line: 28, type: !85)
!4504 = !DILocalVariable(name: "locale", scope: !4499, file: !751, line: 30, type: !4505)
!4505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4506)
!4506 = !{!4507}
!4507 = !DISubrange(count: 257)
!4508 = !DILocation(line: 0, scope: !4499)
!4509 = !DILocation(line: 30, column: 3, scope: !4499)
!4510 = !DILocation(line: 30, column: 8, scope: !4499)
!4511 = !DILocation(line: 32, column: 7, scope: !4512)
!4512 = distinct !DILexicalBlock(scope: !4499, file: !751, line: 32, column: 7)
!4513 = !DILocation(line: 32, column: 7, scope: !4499)
!4514 = !DILocalVariable(name: "__s1", arg: 1, scope: !4515, file: !937, line: 1359, type: !138)
!4515 = distinct !DISubprogram(name: "streq", scope: !937, file: !937, line: 1359, type: !938, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !828, retainedNodes: !4516)
!4516 = !{!4514, !4517}
!4517 = !DILocalVariable(name: "__s2", arg: 2, scope: !4515, file: !937, line: 1359, type: !138)
!4518 = !DILocation(line: 0, scope: !4515, inlinedAt: !4519)
!4519 = distinct !DILocation(line: 35, column: 9, scope: !4520)
!4520 = distinct !DILexicalBlock(scope: !4499, file: !751, line: 35, column: 7)
!4521 = !DILocation(line: 1361, column: 11, scope: !4515, inlinedAt: !4519)
!4522 = !DILocation(line: 35, column: 29, scope: !4520)
!4523 = !DILocation(line: 0, scope: !4515, inlinedAt: !4524)
!4524 = distinct !DILocation(line: 35, column: 32, scope: !4520)
!4525 = !DILocation(line: 1361, column: 11, scope: !4515, inlinedAt: !4524)
!4526 = !DILocation(line: 1361, column: 10, scope: !4515, inlinedAt: !4524)
!4527 = !DILocation(line: 35, column: 7, scope: !4499)
!4528 = !DILocation(line: 46, column: 3, scope: !4499)
!4529 = !DILocation(line: 47, column: 1, scope: !4499)
!4530 = distinct !DISubprogram(name: "setlocale_null_r", scope: !833, file: !833, line: 154, type: !4531, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !832, retainedNodes: !4533)
!4531 = !DISubroutineType(types: !4532)
!4532 = !{!85, !85, !128, !136}
!4533 = !{!4534, !4535, !4536}
!4534 = !DILocalVariable(name: "category", arg: 1, scope: !4530, file: !833, line: 154, type: !85)
!4535 = !DILocalVariable(name: "buf", arg: 2, scope: !4530, file: !833, line: 154, type: !128)
!4536 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4530, file: !833, line: 154, type: !136)
!4537 = !DILocation(line: 0, scope: !4530)
!4538 = !DILocation(line: 159, column: 10, scope: !4530)
!4539 = !DILocation(line: 159, column: 3, scope: !4530)
!4540 = distinct !DISubprogram(name: "setlocale_null", scope: !833, file: !833, line: 186, type: !4541, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !832, retainedNodes: !4543)
!4541 = !DISubroutineType(types: !4542)
!4542 = !{!138, !85}
!4543 = !{!4544}
!4544 = !DILocalVariable(name: "category", arg: 1, scope: !4540, file: !833, line: 186, type: !85)
!4545 = !DILocation(line: 0, scope: !4540)
!4546 = !DILocation(line: 189, column: 10, scope: !4540)
!4547 = !DILocation(line: 189, column: 3, scope: !4540)
!4548 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !835, file: !835, line: 35, type: !4541, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !834, retainedNodes: !4549)
!4549 = !{!4550, !4551}
!4550 = !DILocalVariable(name: "category", arg: 1, scope: !4548, file: !835, line: 35, type: !85)
!4551 = !DILocalVariable(name: "result", scope: !4548, file: !835, line: 37, type: !138)
!4552 = !DILocation(line: 0, scope: !4548)
!4553 = !DILocation(line: 37, column: 24, scope: !4548)
!4554 = !DILocation(line: 62, column: 3, scope: !4548)
!4555 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !835, file: !835, line: 66, type: !4531, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !834, retainedNodes: !4556)
!4556 = !{!4557, !4558, !4559, !4560, !4561}
!4557 = !DILocalVariable(name: "category", arg: 1, scope: !4555, file: !835, line: 66, type: !85)
!4558 = !DILocalVariable(name: "buf", arg: 2, scope: !4555, file: !835, line: 66, type: !128)
!4559 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4555, file: !835, line: 66, type: !136)
!4560 = !DILocalVariable(name: "result", scope: !4555, file: !835, line: 111, type: !138)
!4561 = !DILocalVariable(name: "length", scope: !4562, file: !835, line: 125, type: !136)
!4562 = distinct !DILexicalBlock(scope: !4563, file: !835, line: 124, column: 5)
!4563 = distinct !DILexicalBlock(scope: !4555, file: !835, line: 113, column: 7)
!4564 = !DILocation(line: 0, scope: !4555)
!4565 = !DILocation(line: 0, scope: !4548, inlinedAt: !4566)
!4566 = distinct !DILocation(line: 111, column: 24, scope: !4555)
!4567 = !DILocation(line: 37, column: 24, scope: !4548, inlinedAt: !4566)
!4568 = !DILocation(line: 113, column: 14, scope: !4563)
!4569 = !DILocation(line: 113, column: 7, scope: !4555)
!4570 = !DILocation(line: 116, column: 19, scope: !4571)
!4571 = distinct !DILexicalBlock(scope: !4572, file: !835, line: 116, column: 11)
!4572 = distinct !DILexicalBlock(scope: !4563, file: !835, line: 114, column: 5)
!4573 = !DILocation(line: 116, column: 11, scope: !4572)
!4574 = !DILocation(line: 120, column: 16, scope: !4571)
!4575 = !DILocation(line: 120, column: 9, scope: !4571)
!4576 = !DILocation(line: 125, column: 23, scope: !4562)
!4577 = !DILocation(line: 0, scope: !4562)
!4578 = !DILocation(line: 126, column: 18, scope: !4579)
!4579 = distinct !DILexicalBlock(scope: !4562, file: !835, line: 126, column: 11)
!4580 = !DILocation(line: 126, column: 11, scope: !4562)
!4581 = !DILocation(line: 128, column: 39, scope: !4582)
!4582 = distinct !DILexicalBlock(scope: !4579, file: !835, line: 127, column: 9)
!4583 = !DILocalVariable(name: "__dest", arg: 1, scope: !4584, file: !2003, line: 26, type: !3850)
!4584 = distinct !DISubprogram(name: "memcpy", scope: !2003, file: !2003, line: 26, type: !3848, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !834, retainedNodes: !4585)
!4585 = !{!4583, !4586, !4587}
!4586 = !DILocalVariable(name: "__src", arg: 2, scope: !4584, file: !2003, line: 26, type: !1072)
!4587 = !DILocalVariable(name: "__len", arg: 3, scope: !4584, file: !2003, line: 26, type: !136)
!4588 = !DILocation(line: 0, scope: !4584, inlinedAt: !4589)
!4589 = distinct !DILocation(line: 128, column: 11, scope: !4582)
!4590 = !DILocation(line: 29, column: 10, scope: !4584, inlinedAt: !4589)
!4591 = !DILocation(line: 129, column: 11, scope: !4582)
!4592 = !DILocation(line: 133, column: 23, scope: !4593)
!4593 = distinct !DILexicalBlock(scope: !4594, file: !835, line: 133, column: 15)
!4594 = distinct !DILexicalBlock(scope: !4579, file: !835, line: 132, column: 9)
!4595 = !DILocation(line: 133, column: 15, scope: !4594)
!4596 = !DILocation(line: 138, column: 44, scope: !4597)
!4597 = distinct !DILexicalBlock(scope: !4593, file: !835, line: 134, column: 13)
!4598 = !DILocation(line: 0, scope: !4584, inlinedAt: !4599)
!4599 = distinct !DILocation(line: 138, column: 15, scope: !4597)
!4600 = !DILocation(line: 29, column: 10, scope: !4584, inlinedAt: !4599)
!4601 = !DILocation(line: 139, column: 15, scope: !4597)
!4602 = !DILocation(line: 139, column: 32, scope: !4597)
!4603 = !DILocation(line: 140, column: 13, scope: !4597)
!4604 = !DILocation(line: 0, scope: !4563)
!4605 = !DILocation(line: 145, column: 1, scope: !4555)
