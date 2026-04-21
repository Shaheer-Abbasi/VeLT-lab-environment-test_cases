; ModuleID = 'src/mknod.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
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
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !487
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !458
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !477
@.str.1.49 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !479
@.str.2.51 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !481
@.str.3.50 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !483
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !485
@.str.4.44 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !489
@.str.5.45 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !491
@.str.6.46 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !493
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !498
@.str.74 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !504
@.str.1.75 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !506
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !508
@.str.78 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !539
@.str.1.79 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !542
@.str.2.80 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !544
@.str.3.81 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !546
@.str.4.82 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !548
@.str.5.83 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !550
@.str.6.84 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !552
@.str.7.85 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !554
@.str.8.86 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !556
@.str.9.87 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !558
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.78, ptr @.str.1.79, ptr @.str.2.80, ptr @.str.3.81, ptr @.str.4.82, ptr @.str.5.83, ptr @.str.6.84, ptr @.str.7.85, ptr @.str.8.86, ptr @.str.9.87, ptr null], align 16, !dbg !560
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !573
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !587
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !625
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !632
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !589
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !634
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !577
@.str.10.90 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !594
@.str.11.88 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !596
@.str.12.91 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !598
@.str.13.89 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !600
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !602
@.str.100 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !640
@.str.1.101 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !643
@.str.2.102 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !645
@.str.3.103 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !647
@.str.4.104 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !649
@.str.5.105 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !651
@.str.6.106 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !656
@.str.7.107 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !661
@.str.8.108 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !663
@.str.9.109 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !665
@.str.10.110 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !670
@.str.11.111 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !675
@.str.12.112 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !680
@.str.13.113 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !682
@.str.14.114 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !684
@.str.15.115 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !689
@.str.16.116 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !694
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.121 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !699
@.str.18.122 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !701
@.str.19.123 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !703
@.str.20.124 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !705
@.str.21.125 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !707
@.str.22.126 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !709
@.str.23.127 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !711
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !713
@exit_failure = dso_local global i32 1, align 4, !dbg !719
@.str.144 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !725
@.str.1.142 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !728
@.str.2.143 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !730
@.str.157 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !732
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !735
@.str.1.162 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !750

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !847 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !851, metadata !DIExpression()), !dbg !852
  %2 = icmp eq i32 %0, 0, !dbg !853
  br i1 %2, label %8, label %3, !dbg !855

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !856, !tbaa !858
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #37, !dbg !856
  %6 = load ptr, ptr @program_name, align 8, !dbg !856, !tbaa !858
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #37, !dbg !856
  br label %45, !dbg !856

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #37, !dbg !862
  %10 = load ptr, ptr @program_name, align 8, !dbg !862, !tbaa !858
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #37, !dbg !862
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #37, !dbg !864
  %13 = load ptr, ptr @stdout, align 8, !dbg !864, !tbaa !858
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !864
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.34, i32 noundef 5) #37, !dbg !865
  %16 = load ptr, ptr @stdout, align 8, !dbg !865, !tbaa !858
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !865
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #37, !dbg !868
  tail call fastcc void @oputs_(ptr noundef %18), !dbg !868
  %19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #37, !dbg !869
  tail call fastcc void @oputs_(ptr noundef %19), !dbg !869
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #37, !dbg !870
  tail call fastcc void @oputs_(ptr noundef %20), !dbg !870
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #37, !dbg !871
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !871
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #37, !dbg !872
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !872
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #37, !dbg !873
  %24 = load ptr, ptr @stdout, align 8, !dbg !873, !tbaa !858
  %25 = tail call i32 @fputs_unlocked(ptr noundef %23, ptr noundef %24), !dbg !873
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #37, !dbg !874
  %27 = load ptr, ptr @stdout, align 8, !dbg !874, !tbaa !858
  %28 = tail call i32 @fputs_unlocked(ptr noundef %26, ptr noundef %27), !dbg !874
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #37, !dbg !875
  %30 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %29, ptr noundef nonnull @.str.3) #37, !dbg !875
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !876, metadata !DIExpression()), !dbg !893
  call void @llvm.dbg.value(metadata !895, metadata !889, metadata !DIExpression()), !dbg !893
  call void @llvm.dbg.value(metadata ptr poison, metadata !888, metadata !DIExpression()), !dbg !893
  tail call void @emit_bug_reporting_address() #37, !dbg !896
  %31 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #37, !dbg !897
  call void @llvm.dbg.value(metadata ptr %31, metadata !891, metadata !DIExpression()), !dbg !893
  %32 = icmp eq ptr %31, null, !dbg !898
  br i1 %32, label %40, label %33, !dbg !900

33:                                               ; preds = %8
  %34 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %31, ptr noundef nonnull dereferenceable(4) @.str.65, i64 noundef 3) #38, !dbg !901
  %35 = icmp eq i32 %34, 0, !dbg !901
  br i1 %35, label %40, label %36, !dbg !902

36:                                               ; preds = %33
  %37 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.66, i32 noundef 5) #37, !dbg !903
  %38 = load ptr, ptr @stdout, align 8, !dbg !903, !tbaa !858
  %39 = tail call i32 @fputs_unlocked(ptr noundef %37, ptr noundef %38), !dbg !903
  br label %40, !dbg !905

40:                                               ; preds = %8, %33, %36
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !888, metadata !DIExpression()), !dbg !893
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !892, metadata !DIExpression()), !dbg !893
  %41 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.67, i32 noundef 5) #37, !dbg !906
  %42 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %41, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.3) #37, !dbg !906
  %43 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.68, i32 noundef 5) #37, !dbg !907
  %44 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %43, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.69) #37, !dbg !907
  br label %45

45:                                               ; preds = %40, %3
  tail call void @exit(i32 noundef %0) #39, !dbg !908
  unreachable, !dbg !908
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !909 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !913 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !919 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !922 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !224 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !228, metadata !DIExpression()), !dbg !926
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !229, metadata !DIExpression()), !dbg !926
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !927, !tbaa !928
  %3 = icmp eq i32 %2, -1, !dbg !930
  br i1 %3, label %4, label %16, !dbg !931

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.35) #37, !dbg !932
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !230, metadata !DIExpression()), !dbg !933
  %6 = icmp eq ptr %5, null, !dbg !934
  br i1 %6, label %14, label %7, !dbg !935

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !936, !tbaa !937
  %9 = icmp eq i8 %8, 0, !dbg !936
  br i1 %9, label %14, label %10, !dbg !938

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !939, metadata !DIExpression()), !dbg !946
  call void @llvm.dbg.value(metadata ptr @.str.36, metadata !945, metadata !DIExpression()), !dbg !946
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.36) #38, !dbg !948
  %12 = icmp eq i32 %11, 0, !dbg !949
  %13 = zext i1 %12 to i32, !dbg !938
  br label %14, !dbg !938

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !950, !tbaa !928
  br label %16, !dbg !951

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !952
  %18 = icmp eq i32 %17, 0, !dbg !952
  br i1 %18, label %22, label %19, !dbg !954

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !955, !tbaa !858
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !955
  br label %124, !dbg !957

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !233, metadata !DIExpression()), !dbg !926
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.37) #38, !dbg !958
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !959
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !235, metadata !DIExpression()), !dbg !926
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #38, !dbg !960
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !236, metadata !DIExpression()), !dbg !926
  %26 = icmp eq ptr %25, null, !dbg !961
  br i1 %26, label %54, label %27, !dbg !962

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !963
  br i1 %28, label %54, label %29, !dbg !964

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !237, metadata !DIExpression()), !dbg !965
  tail call void @llvm.dbg.value(metadata i64 0, metadata !241, metadata !DIExpression()), !dbg !965
  %30 = icmp ult ptr %24, %25, !dbg !966
  br i1 %30, label %31, label %54, !dbg !967

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #40, !dbg !926
  %33 = load ptr, ptr %32, align 8, !tbaa !858
  br label %34, !dbg !967

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !237, metadata !DIExpression()), !dbg !965
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !241, metadata !DIExpression()), !dbg !965
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !968
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !237, metadata !DIExpression()), !dbg !965
  %38 = load i8, ptr %35, align 1, !dbg !968, !tbaa !937
  %39 = sext i8 %38 to i64, !dbg !968
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !968
  %41 = load i16, ptr %40, align 2, !dbg !968, !tbaa !969
  %42 = freeze i16 %41, !dbg !971
  %43 = lshr i16 %42, 13, !dbg !971
  %44 = and i16 %43, 1, !dbg !971
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !972
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !241, metadata !DIExpression()), !dbg !965
  %47 = icmp ult ptr %37, %25, !dbg !966
  %48 = icmp ult i64 %46, 2, !dbg !973
  %49 = select i1 %47, i1 %48, i1 false, !dbg !973
  br i1 %49, label %34, label %50, !dbg !967, !llvm.loop !974

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !976
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !978
  %53 = zext i1 %51 to i8, !dbg !978
  br label %54, !dbg !978

54:                                               ; preds = %29, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !926
  %56 = phi i8 [ 1, %27 ], [ 0, %22 ], [ 1, %29 ], [ %53, %50 ], !dbg !926
  tail call void @llvm.dbg.value(metadata i8 %56, metadata !233, metadata !DIExpression()), !dbg !926
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !236, metadata !DIExpression()), !dbg !926
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.38) #38, !dbg !979
  tail call void @llvm.dbg.value(metadata i64 %57, metadata !242, metadata !DIExpression()), !dbg !926
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !980
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !243, metadata !DIExpression()), !dbg !926
  br label %59, !dbg !981

59:                                               ; preds = %92, %54
  %60 = phi ptr [ %58, %54 ], [ %93, %92 ], !dbg !926
  %61 = phi i8 [ %56, %54 ], [ %69, %92 ], !dbg !926
  tail call void @llvm.dbg.value(metadata i8 %61, metadata !233, metadata !DIExpression()), !dbg !926
  tail call void @llvm.dbg.value(metadata ptr %60, metadata !243, metadata !DIExpression()), !dbg !926
  %62 = load i8, ptr %60, align 1, !dbg !982, !tbaa !937
  switch i8 %62, label %68 [
    i8 0, label %94
    i8 10, label %94
    i8 45, label %63
  ], !dbg !983

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !984
  %65 = load i8, ptr %64, align 1, !dbg !987, !tbaa !937
  %66 = icmp eq i8 %65, 45, !dbg !988
  %67 = select i1 %66, i8 0, i8 %61, !dbg !989
  br label %68, !dbg !989

68:                                               ; preds = %63, %59
  %69 = phi i8 [ %61, %59 ], [ %67, %63 ], !dbg !926
  tail call void @llvm.dbg.value(metadata i8 %69, metadata !233, metadata !DIExpression()), !dbg !926
  %70 = tail call ptr @__ctype_b_loc() #40, !dbg !990
  %71 = load ptr, ptr %70, align 8, !dbg !990, !tbaa !858
  %72 = sext i8 %62 to i64, !dbg !990
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !990
  %74 = load i16, ptr %73, align 2, !dbg !990, !tbaa !969
  %75 = and i16 %74, 8192, !dbg !990
  %76 = icmp eq i16 %75, 0, !dbg !990
  br i1 %76, label %92, label %77, !dbg !992

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !993
  br i1 %78, label %94, label %79, !dbg !996

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !997
  %81 = load i8, ptr %80, align 1, !dbg !997, !tbaa !937
  %82 = sext i8 %81 to i64, !dbg !997
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !997
  %84 = load i16, ptr %83, align 2, !dbg !997, !tbaa !969
  %85 = and i16 %84, 8192, !dbg !997
  %86 = icmp eq i16 %85, 0, !dbg !997
  br i1 %86, label %87, label %94, !dbg !998

87:                                               ; preds = %79
  %88 = and i8 %69, 1, !dbg !999
  %89 = icmp ne i8 %88, 0, !dbg !999
  %90 = icmp eq i8 %81, 45
  %91 = or i1 %89, %90, !dbg !1001
  br i1 %91, label %92, label %94, !dbg !1001

92:                                               ; preds = %87, %68
  %93 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1002
  tail call void @llvm.dbg.value(metadata ptr %93, metadata !243, metadata !DIExpression()), !dbg !926
  br label %59, !dbg !981, !llvm.loop !1003

94:                                               ; preds = %87, %59, %59, %77, %79
  %95 = ptrtoint ptr %24 to i64, !dbg !1005
  %96 = load ptr, ptr @stdout, align 8, !dbg !1005, !tbaa !858
  %97 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %96), !dbg !1005
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !939, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.value(metadata !895, metadata !945, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !939, metadata !DIExpression()), !dbg !1008
  call void @llvm.dbg.value(metadata !895, metadata !945, metadata !DIExpression()), !dbg !1008
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !939, metadata !DIExpression()), !dbg !1010
  call void @llvm.dbg.value(metadata !895, metadata !945, metadata !DIExpression()), !dbg !1010
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !939, metadata !DIExpression()), !dbg !1012
  call void @llvm.dbg.value(metadata !895, metadata !945, metadata !DIExpression()), !dbg !1012
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !939, metadata !DIExpression()), !dbg !1014
  call void @llvm.dbg.value(metadata !895, metadata !945, metadata !DIExpression()), !dbg !1014
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !939, metadata !DIExpression()), !dbg !1016
  call void @llvm.dbg.value(metadata !895, metadata !945, metadata !DIExpression()), !dbg !1016
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !939, metadata !DIExpression()), !dbg !1018
  call void @llvm.dbg.value(metadata !895, metadata !945, metadata !DIExpression()), !dbg !1018
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !939, metadata !DIExpression()), !dbg !1020
  call void @llvm.dbg.value(metadata !895, metadata !945, metadata !DIExpression()), !dbg !1020
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !939, metadata !DIExpression()), !dbg !1022
  call void @llvm.dbg.value(metadata !895, metadata !945, metadata !DIExpression()), !dbg !1022
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !939, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata !895, metadata !945, metadata !DIExpression()), !dbg !1024
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !299, metadata !DIExpression()), !dbg !926
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.52, i64 noundef 6) #38, !dbg !1026
  %99 = icmp eq i32 %98, 0, !dbg !1026
  br i1 %99, label %103, label %100, !dbg !1028

100:                                              ; preds = %94
  %101 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.53, i64 noundef 9) #38, !dbg !1029
  %102 = icmp eq i32 %101, 0, !dbg !1029
  br i1 %102, label %103, label %106, !dbg !1030

103:                                              ; preds = %100, %94
  %104 = trunc i64 %57 to i32, !dbg !1031
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %104, ptr noundef %55) #37, !dbg !1031
  br label %109, !dbg !1033

106:                                              ; preds = %100
  %107 = trunc i64 %57 to i32, !dbg !1034
  %108 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.3, i32 noundef %107, ptr noundef %55) #37, !dbg !1034
  br label %109

109:                                              ; preds = %106, %103
  %110 = load ptr, ptr @stdout, align 8, !dbg !1036, !tbaa !858
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.58, ptr noundef %110), !dbg !1036
  %112 = load ptr, ptr @stdout, align 8, !dbg !1037, !tbaa !858
  %113 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.59, ptr noundef %112), !dbg !1037
  %114 = ptrtoint ptr %60 to i64, !dbg !1038
  %115 = sub i64 %114, %95, !dbg !1038
  %116 = load ptr, ptr @stdout, align 8, !dbg !1038, !tbaa !858
  %117 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %115, ptr noundef %116), !dbg !1038
  %118 = load ptr, ptr @stdout, align 8, !dbg !1039, !tbaa !858
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.60, ptr noundef %118), !dbg !1039
  %120 = load ptr, ptr @stdout, align 8, !dbg !1040, !tbaa !858
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.61, ptr noundef %120), !dbg !1040
  %122 = load ptr, ptr @stdout, align 8, !dbg !1041, !tbaa !858
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %122), !dbg !1041
  br label %124, !dbg !1042

124:                                              ; preds = %109, %19
  ret void, !dbg !1042
}

; Function Attrs: nounwind
declare !dbg !1043 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1047 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1051 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1053 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1056 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1059 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1062 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1065 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1071 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1072 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1078 {
  %3 = alloca i64, align 8, !DIAssignID !1115
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1111, metadata !DIExpression(), metadata !1115, metadata ptr %3, metadata !DIExpression()), !dbg !1116
  %4 = alloca i64, align 8, !DIAssignID !1117
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1113, metadata !DIExpression(), metadata !1117, metadata ptr %4, metadata !DIExpression()), !dbg !1116
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1083, metadata !DIExpression()), !dbg !1118
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1084, metadata !DIExpression()), !dbg !1118
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1085, metadata !DIExpression()), !dbg !1118
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1086, metadata !DIExpression()), !dbg !1118
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1087, metadata !DIExpression()), !dbg !1118
  %5 = load ptr, ptr %1, align 8, !dbg !1119, !tbaa !858
  tail call void @set_program_name(ptr noundef %5) #37, !dbg !1120
  %6 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.12) #37, !dbg !1121
  %7 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #37, !dbg !1122
  %8 = tail call ptr @textdomain(ptr noundef nonnull @.str.13) #37, !dbg !1123
  %9 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #37, !dbg !1124
  br label %10, !dbg !1125

10:                                               ; preds = %14, %2
  %11 = phi ptr [ %15, %14 ], [ null, %2 ]
  br label %12, !dbg !1125

12:                                               ; preds = %21, %10
  tail call void @llvm.dbg.value(metadata ptr %11, metadata !1085, metadata !DIExpression()), !dbg !1118
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1086, metadata !DIExpression()), !dbg !1118
  %13 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.15, ptr noundef nonnull @longopts, ptr noundef null) #37, !dbg !1126
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !1091, metadata !DIExpression()), !dbg !1118
  switch i32 %13, label %27 [
    i32 -1, label %28
    i32 109, label %14
    i32 90, label %16
    i32 -130, label %22
    i32 -131, label %23
  ], !dbg !1125

14:                                               ; preds = %12
  %15 = load ptr, ptr @optarg, align 8, !dbg !1127, !tbaa !858
  tail call void @llvm.dbg.value(metadata ptr %15, metadata !1085, metadata !DIExpression()), !dbg !1118
  br label %10, !dbg !1130, !llvm.loop !1131

16:                                               ; preds = %12
  %17 = load ptr, ptr @optarg, align 8, !dbg !1133, !tbaa !858
  %18 = icmp eq ptr %17, null, !dbg !1133
  br i1 %18, label %21, label %19, !dbg !1137

19:                                               ; preds = %16
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #37, !dbg !1138
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %20) #37, !dbg !1138
  br label %21, !dbg !1140

21:                                               ; preds = %19, %16
  br label %12, !dbg !1118, !llvm.loop !1131

22:                                               ; preds = %12
  tail call void @usage(i32 noundef 0) #41, !dbg !1141
  unreachable, !dbg !1141

23:                                               ; preds = %12
  %24 = load ptr, ptr @stdout, align 8, !dbg !1142, !tbaa !858
  %25 = load ptr, ptr @Version, align 8, !dbg !1142, !tbaa !858
  %26 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.18) #37, !dbg !1142
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %24, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.17, ptr noundef %25, ptr noundef %26, ptr noundef null) #37, !dbg !1142
  tail call void @exit(i32 noundef 0) #39, !dbg !1142
  unreachable, !dbg !1142

27:                                               ; preds = %12
  tail call void @usage(i32 noundef 1) #41, !dbg !1143
  unreachable, !dbg !1143

28:                                               ; preds = %12
  tail call void @llvm.dbg.value(metadata i32 438, metadata !1092, metadata !DIExpression()), !dbg !1118
  %29 = icmp eq ptr %11, null, !dbg !1144
  br i1 %29, label %42, label %30, !dbg !1145

30:                                               ; preds = %28
  %31 = tail call noalias ptr @mode_compile(ptr noundef nonnull %11) #37, !dbg !1146
  tail call void @llvm.dbg.value(metadata ptr %31, metadata !1095, metadata !DIExpression()), !dbg !1147
  %32 = icmp eq ptr %31, null, !dbg !1148
  br i1 %32, label %33, label %35, !dbg !1150

33:                                               ; preds = %30
  %34 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.19, i32 noundef 5) #37, !dbg !1151
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %34) #37, !dbg !1151
  unreachable, !dbg !1151

35:                                               ; preds = %30
  %36 = tail call i32 @umask(i32 noundef 0) #37, !dbg !1152
  tail call void @llvm.dbg.value(metadata i32 %36, metadata !1101, metadata !DIExpression()), !dbg !1147
  %37 = tail call i32 @umask(i32 noundef %36) #37, !dbg !1153
  %38 = tail call i32 @mode_adjust(i32 noundef 438, i1 noundef zeroext false, i32 noundef %36, ptr noundef nonnull %31, ptr noundef null) #38, !dbg !1154
  tail call void @llvm.dbg.value(metadata i32 %38, metadata !1092, metadata !DIExpression()), !dbg !1118
  tail call void @free(ptr noundef nonnull %31) #37, !dbg !1155
  %39 = icmp ult i32 %38, 512, !dbg !1156
  br i1 %39, label %42, label %40, !dbg !1158

40:                                               ; preds = %35
  %41 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.20, i32 noundef 5) #37, !dbg !1159
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %41) #37, !dbg !1159
  unreachable, !dbg !1159

42:                                               ; preds = %35, %28
  %43 = phi i32 [ 438, %28 ], [ %38, %35 ], !dbg !1118
  tail call void @llvm.dbg.value(metadata i32 %43, metadata !1092, metadata !DIExpression()), !dbg !1118
  %44 = load i32, ptr @optind, align 4, !dbg !1160, !tbaa !928
  %45 = icmp slt i32 %44, %0, !dbg !1161
  br i1 %45, label %46, label %62, !dbg !1162

46:                                               ; preds = %42
  %47 = add nsw i32 %44, 1, !dbg !1163
  %48 = icmp slt i32 %47, %0, !dbg !1164
  br i1 %48, label %49, label %57, !dbg !1165

49:                                               ; preds = %46
  %50 = sext i32 %47 to i64, !dbg !1166
  %51 = getelementptr inbounds ptr, ptr %1, i64 %50, !dbg !1166
  %52 = load ptr, ptr %51, align 8, !dbg !1166, !tbaa !858
  %53 = load i8, ptr %52, align 1, !dbg !1166, !tbaa !937
  %54 = freeze i8 %53, !dbg !1167
  %55 = icmp eq i8 %54, 112, !dbg !1167
  %56 = select i1 %55, i32 2, i32 4, !dbg !1168
  br label %57, !dbg !1168

57:                                               ; preds = %49, %46
  %58 = phi i1 [ false, %46 ], [ %55, %49 ]
  %59 = phi i32 [ 4, %46 ], [ %56, %49 ]
  tail call void @llvm.dbg.value(metadata i32 %59, metadata !1102, metadata !DIExpression()), !dbg !1118
  %60 = sub nsw i32 %0, %44, !dbg !1169
  %61 = icmp slt i32 %60, %59, !dbg !1171
  br i1 %61, label %65, label %83, !dbg !1172

62:                                               ; preds = %42
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1102, metadata !DIExpression()), !dbg !1118
  %63 = sub nsw i32 %0, %44, !dbg !1169
  %64 = icmp slt i32 %63, 2, !dbg !1171
  br i1 %64, label %80, label %83, !dbg !1172

65:                                               ; preds = %57
  %66 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.22, i32 noundef 5) #37, !dbg !1173
  %67 = sext i32 %0 to i64, !dbg !1173
  %68 = getelementptr ptr, ptr %1, i64 %67, !dbg !1173
  %69 = getelementptr ptr, ptr %68, i64 -1, !dbg !1173
  %70 = load ptr, ptr %69, align 8, !dbg !1173, !tbaa !858
  %71 = tail call ptr @quote(ptr noundef %70) #37, !dbg !1173
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %66, ptr noundef %71) #37, !dbg !1173
  br i1 %58, label %82, label %72, !dbg !1176

72:                                               ; preds = %65
  %73 = load i32, ptr @optind, align 4, !dbg !1178, !tbaa !928
  %74 = sub nsw i32 %0, %73, !dbg !1179
  %75 = icmp eq i32 %74, 2, !dbg !1180
  br i1 %75, label %76, label %82, !dbg !1181

76:                                               ; preds = %72
  %77 = load ptr, ptr @stderr, align 8, !dbg !1182, !tbaa !858
  %78 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.24, i32 noundef 5) #37, !dbg !1182
  %79 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %77, i32 noundef 1, ptr noundef nonnull @.str.23, ptr noundef %78) #37, !dbg !1182
  br label %82, !dbg !1182

80:                                               ; preds = %62
  %81 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.21, i32 noundef 5) #37, !dbg !1183
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %81) #37, !dbg !1183
  br label %82, !dbg !1176

82:                                               ; preds = %80, %65, %76, %72
  tail call void @usage(i32 noundef 1) #41, !dbg !1184
  unreachable, !dbg !1184

83:                                               ; preds = %62, %57
  %84 = phi i32 [ %63, %62 ], [ %60, %57 ]
  %85 = phi i32 [ 2, %62 ], [ %59, %57 ]
  %86 = phi i1 [ true, %62 ], [ %58, %57 ]
  %87 = icmp ult i32 %85, %84, !dbg !1185
  br i1 %87, label %88, label %105, !dbg !1187

88:                                               ; preds = %83
  %89 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.25, i32 noundef 5) #37, !dbg !1188
  %90 = load i32, ptr @optind, align 4, !dbg !1188, !tbaa !928
  %91 = add nsw i32 %90, %85, !dbg !1188
  %92 = sext i32 %91 to i64, !dbg !1188
  %93 = getelementptr inbounds ptr, ptr %1, i64 %92, !dbg !1188
  %94 = load ptr, ptr %93, align 8, !dbg !1188, !tbaa !858
  %95 = tail call ptr @quote(ptr noundef %94) #37, !dbg !1188
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %89, ptr noundef %95) #37, !dbg !1188
  br i1 %86, label %96, label %104, !dbg !1190

96:                                               ; preds = %88
  %97 = load i32, ptr @optind, align 4, !dbg !1192, !tbaa !928
  %98 = sub nsw i32 %0, %97, !dbg !1193
  %99 = icmp eq i32 %98, 4, !dbg !1194
  br i1 %99, label %100, label %104, !dbg !1195

100:                                              ; preds = %96
  %101 = load ptr, ptr @stderr, align 8, !dbg !1196, !tbaa !858
  %102 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.26, i32 noundef 5) #37, !dbg !1196
  %103 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %101, i32 noundef 1, ptr noundef nonnull @.str.23, ptr noundef %102) #37, !dbg !1196
  br label %104, !dbg !1196

104:                                              ; preds = %100, %96, %88
  tail call void @usage(i32 noundef 1) #41, !dbg !1197
  unreachable, !dbg !1197

105:                                              ; preds = %83
  %106 = sext i32 %44 to i64, !dbg !1198
  %107 = getelementptr ptr, ptr %1, i64 %106, !dbg !1198
  %108 = getelementptr ptr, ptr %107, i64 1, !dbg !1198
  %109 = load ptr, ptr %108, align 8, !dbg !1198, !tbaa !858
  %110 = load i8, ptr %109, align 1, !dbg !1198, !tbaa !937
  switch i8 %110, label %182 [
    i8 98, label %112
    i8 99, label %111
    i8 117, label %111
    i8 112, label %170
  ], !dbg !1199

111:                                              ; preds = %105, %105
  tail call void @llvm.dbg.value(metadata i32 8192, metadata !1106, metadata !DIExpression()), !dbg !1118
  br label %112, !dbg !1200

112:                                              ; preds = %105, %111
  %113 = phi i32 [ 8192, %111 ], [ 24576, %105 ], !dbg !1201
  tail call void @llvm.dbg.value(metadata i32 %113, metadata !1106, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.label(metadata !1107), !dbg !1202
  %114 = getelementptr ptr, ptr %107, i64 2, !dbg !1203
  %115 = load ptr, ptr %114, align 8, !dbg !1203, !tbaa !858
  tail call void @llvm.dbg.value(metadata ptr %115, metadata !1109, metadata !DIExpression()), !dbg !1116
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #37, !dbg !1204
  %116 = call i32 @xstrtoumax(ptr noundef %115, ptr noundef null, i32 noundef 0, ptr noundef nonnull %3, ptr noundef nonnull @.str.12) #37, !dbg !1205
  %117 = icmp eq i32 %116, 0, !dbg !1207
  %118 = load i64, ptr %3, align 8
  %119 = icmp ult i64 %118, 4294967296
  %120 = select i1 %117, i1 %119, i1 false, !dbg !1208
  br i1 %120, label %124, label %121, !dbg !1208

121:                                              ; preds = %112
  %122 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.28, i32 noundef 5) #37, !dbg !1209
  %123 = call ptr @quote(ptr noundef %115) #37, !dbg !1209
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %122, ptr noundef %123) #37, !dbg !1209
  unreachable, !dbg !1209

124:                                              ; preds = %112
  %125 = load i32, ptr @optind, align 4, !dbg !1210, !tbaa !928
  %126 = sext i32 %125 to i64, !dbg !1211
  %127 = getelementptr ptr, ptr %1, i64 %126, !dbg !1211
  %128 = getelementptr ptr, ptr %127, i64 3, !dbg !1211
  %129 = load ptr, ptr %128, align 8, !dbg !1211, !tbaa !858
  tail call void @llvm.dbg.value(metadata ptr %129, metadata !1112, metadata !DIExpression()), !dbg !1116
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #37, !dbg !1212
  %130 = call i32 @xstrtoumax(ptr noundef %129, ptr noundef null, i32 noundef 0, ptr noundef nonnull %4, ptr noundef nonnull @.str.12) #37, !dbg !1213
  %131 = icmp eq i32 %130, 0, !dbg !1215
  br i1 %131, label %132, label %135, !dbg !1216

132:                                              ; preds = %124
  %133 = load i64, ptr %4, align 8, !dbg !1217, !tbaa !1218
  %134 = icmp ult i64 %133, 4294967296, !dbg !1220
  br i1 %134, label %138, label %135, !dbg !1221

135:                                              ; preds = %132, %124
  %136 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.29, i32 noundef 5) #37, !dbg !1222
  %137 = call ptr @quote(ptr noundef %129) #37, !dbg !1222
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %136, ptr noundef %137) #37, !dbg !1222
  unreachable, !dbg !1222

138:                                              ; preds = %132
  %139 = load i64, ptr %3, align 8, !dbg !1223, !tbaa !1218
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !1224, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1232
  tail call void @llvm.dbg.value(metadata i64 %133, metadata !1230, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1232
  %140 = shl i64 %139, 8, !dbg !1234
  %141 = and i64 %140, 1048320, !dbg !1234
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !1231, metadata !DIExpression()), !dbg !1232
  %142 = shl i64 %139, 32, !dbg !1234
  %143 = and i64 %142, -17592186044416, !dbg !1234
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !1231, metadata !DIExpression()), !dbg !1232
  %144 = and i64 %133, 255, !dbg !1234
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !1231, metadata !DIExpression()), !dbg !1232
  %145 = shl nuw nsw i64 %133, 12, !dbg !1234
  %146 = and i64 %145, 17592184995840, !dbg !1234
  %147 = or disjoint i64 %146, %144, !dbg !1234
  %148 = or disjoint i64 %147, %141, !dbg !1234
  %149 = or disjoint i64 %148, %143, !dbg !1234
  tail call void @llvm.dbg.value(metadata i64 %149, metadata !1231, metadata !DIExpression()), !dbg !1232
  tail call void @llvm.dbg.value(metadata i64 %149, metadata !1114, metadata !DIExpression()), !dbg !1116
  %150 = icmp eq i64 %149, -1, !dbg !1235
  br i1 %150, label %151, label %153, !dbg !1237

151:                                              ; preds = %138
  %152 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.30, i32 noundef 5) #37, !dbg !1238
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %152, ptr noundef %115, ptr noundef %129) #37, !dbg !1238
  unreachable, !dbg !1238

153:                                              ; preds = %138
  %154 = load i32, ptr @optind, align 4, !dbg !1239, !tbaa !928
  %155 = sext i32 %154 to i64, !dbg !1241
  %156 = getelementptr inbounds ptr, ptr %1, i64 %155, !dbg !1241
  %157 = load ptr, ptr %156, align 8, !dbg !1241, !tbaa !858
  %158 = or disjoint i32 %113, %43, !dbg !1242
  %159 = call i32 @rpl_mknod(ptr noundef %157, i32 noundef %158, i64 noundef %149) #37, !dbg !1243
  %160 = icmp eq i32 %159, 0, !dbg !1244
  br i1 %160, label %169, label %161, !dbg !1245

161:                                              ; preds = %153
  %162 = tail call ptr @__errno_location() #40, !dbg !1246
  %163 = load i32, ptr %162, align 4, !dbg !1246, !tbaa !928
  %164 = load i32, ptr @optind, align 4, !dbg !1246, !tbaa !928
  %165 = sext i32 %164 to i64, !dbg !1246
  %166 = getelementptr inbounds ptr, ptr %1, i64 %165, !dbg !1246
  %167 = load ptr, ptr %166, align 8, !dbg !1246, !tbaa !858
  %168 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %167) #37, !dbg !1246
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %163, ptr noundef nonnull @.str.31, ptr noundef %168) #37, !dbg !1246
  unreachable, !dbg !1246

169:                                              ; preds = %153
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #37, !dbg !1247
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #37, !dbg !1247
  br label %190, !dbg !1248

170:                                              ; preds = %105
  %171 = load ptr, ptr %107, align 8, !dbg !1249, !tbaa !858
  %172 = tail call i32 @mkfifo(ptr noundef %171, i32 noundef %43) #37, !dbg !1251
  %173 = icmp eq i32 %172, 0, !dbg !1252
  br i1 %173, label %190, label %174, !dbg !1253

174:                                              ; preds = %170
  %175 = tail call ptr @__errno_location() #40, !dbg !1254
  %176 = load i32, ptr %175, align 4, !dbg !1254, !tbaa !928
  %177 = load i32, ptr @optind, align 4, !dbg !1254, !tbaa !928
  %178 = sext i32 %177 to i64, !dbg !1254
  %179 = getelementptr inbounds ptr, ptr %1, i64 %178, !dbg !1254
  %180 = load ptr, ptr %179, align 8, !dbg !1254, !tbaa !858
  %181 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %180) #37, !dbg !1254
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %176, ptr noundef nonnull @.str.31, ptr noundef %181) #37, !dbg !1254
  unreachable, !dbg !1254

182:                                              ; preds = %105
  %183 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.32, i32 noundef 5) #37, !dbg !1255
  %184 = load i32, ptr @optind, align 4, !dbg !1255, !tbaa !928
  %185 = sext i32 %184 to i64, !dbg !1255
  %186 = getelementptr ptr, ptr %1, i64 %185, !dbg !1255
  %187 = getelementptr ptr, ptr %186, i64 1, !dbg !1255
  %188 = load ptr, ptr %187, align 8, !dbg !1255, !tbaa !858
  %189 = tail call ptr @quote(ptr noundef %188) #37, !dbg !1255
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %183, ptr noundef %189) #37, !dbg !1255
  tail call void @usage(i32 noundef 1) #41, !dbg !1256
  unreachable, !dbg !1256

190:                                              ; preds = %170, %169
  br i1 %29, label %207, label %191, !dbg !1257

191:                                              ; preds = %190
  %192 = load i32, ptr @optind, align 4, !dbg !1259, !tbaa !928
  %193 = sext i32 %192 to i64, !dbg !1260
  %194 = getelementptr inbounds ptr, ptr %1, i64 %193, !dbg !1260
  %195 = load ptr, ptr %194, align 8, !dbg !1260, !tbaa !858
  %196 = call i32 @lchmod(ptr noundef %195, i32 noundef %43) #37, !dbg !1261
  %197 = icmp eq i32 %196, 0, !dbg !1262
  br i1 %197, label %207, label %198, !dbg !1263

198:                                              ; preds = %191
  %199 = tail call ptr @__errno_location() #40, !dbg !1264
  %200 = load i32, ptr %199, align 4, !dbg !1264, !tbaa !928
  %201 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.33, i32 noundef 5) #37, !dbg !1264
  %202 = load i32, ptr @optind, align 4, !dbg !1264, !tbaa !928
  %203 = sext i32 %202 to i64, !dbg !1264
  %204 = getelementptr inbounds ptr, ptr %1, i64 %203, !dbg !1264
  %205 = load ptr, ptr %204, align 8, !dbg !1264, !tbaa !858
  %206 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %205) #37, !dbg !1264
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %200, ptr noundef %201, ptr noundef %206) #37, !dbg !1264
  unreachable, !dbg !1264

207:                                              ; preds = %191, %190
  ret i32 0, !dbg !1265
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

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
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1296, metadata !DIExpression()), !dbg !1297
  store ptr %0, ptr @file_name, align 8, !dbg !1298, !tbaa !858
  ret void, !dbg !1299
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #13 !dbg !1300 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1304, metadata !DIExpression()), !dbg !1305
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !1306, !tbaa !1307
  ret void, !dbg !1309
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1310 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1315, !tbaa !858
  %2 = tail call i32 @close_stream(ptr noundef %1) #37, !dbg !1316
  %3 = icmp eq i32 %2, 0, !dbg !1317
  br i1 %3, label %22, label %4, !dbg !1318

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !1319, !tbaa !1307, !range !1320, !noundef !895
  %6 = icmp eq i8 %5, 0, !dbg !1319
  br i1 %6, label %11, label %7, !dbg !1321

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #40, !dbg !1322
  %9 = load i32, ptr %8, align 4, !dbg !1322, !tbaa !928
  %10 = icmp eq i32 %9, 32, !dbg !1323
  br i1 %10, label %22, label %11, !dbg !1324

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.1.40, i32 noundef 5) #37, !dbg !1325
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !1312, metadata !DIExpression()), !dbg !1326
  %13 = load ptr, ptr @file_name, align 8, !dbg !1327, !tbaa !858
  %14 = icmp eq ptr %13, null, !dbg !1327
  %15 = tail call ptr @__errno_location() #40, !dbg !1329
  %16 = load i32, ptr %15, align 4, !dbg !1329, !tbaa !928
  br i1 %14, label %19, label %17, !dbg !1330

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #37, !dbg !1331
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.41, ptr noundef %18, ptr noundef %12) #37, !dbg !1331
  br label %20, !dbg !1331

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.42, ptr noundef %12) #37, !dbg !1332
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1333, !tbaa !928
  tail call void @_exit(i32 noundef %21) #39, !dbg !1334
  unreachable, !dbg !1334

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1335, !tbaa !858
  %24 = tail call i32 @close_stream(ptr noundef %23) #37, !dbg !1337
  %25 = icmp eq i32 %24, 0, !dbg !1338
  br i1 %25, label %28, label %26, !dbg !1339

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1340, !tbaa !928
  tail call void @_exit(i32 noundef %27) #39, !dbg !1341
  unreachable, !dbg !1341

28:                                               ; preds = %22
  ret void, !dbg !1342
}

; Function Attrs: noreturn
declare !dbg !1343 void @_exit(i32 noundef) local_unnamed_addr #14

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #15 !dbg !1345 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1349, metadata !DIExpression()), !dbg !1353
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1350, metadata !DIExpression()), !dbg !1353
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1351, metadata !DIExpression()), !dbg !1353
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1352, metadata !DIExpression()), !dbg !1353
  tail call fastcc void @flush_stdout(), !dbg !1354
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !1355, !tbaa !858
  %6 = icmp eq ptr %5, null, !dbg !1355
  br i1 %6, label %8, label %7, !dbg !1357

7:                                                ; preds = %4
  tail call void %5() #37, !dbg !1358
  br label %12, !dbg !1358

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !1359, !tbaa !858
  %10 = tail call ptr @getprogname() #38, !dbg !1359
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.43, ptr noundef %10) #37, !dbg !1359
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !1361
  ret void, !dbg !1362
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1363 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1365, metadata !DIExpression()), !dbg !1366
  call void @llvm.dbg.value(metadata i32 1, metadata !1367, metadata !DIExpression()), !dbg !1372
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #37, !dbg !1375
  %2 = icmp slt i32 %1, 0, !dbg !1376
  br i1 %2, label %6, label %3, !dbg !1377

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1378, !tbaa !858
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #37, !dbg !1378
  br label %6, !dbg !1378

6:                                                ; preds = %3, %0
  ret void, !dbg !1379
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !1380 {
  %5 = alloca [1024 x i8], align 16, !DIAssignID !1386
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1382, metadata !DIExpression()), !dbg !1387
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1383, metadata !DIExpression()), !dbg !1387
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1384, metadata !DIExpression()), !dbg !1387
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1385, metadata !DIExpression()), !dbg !1387
  %6 = load ptr, ptr @stderr, align 8, !dbg !1388, !tbaa !858
  call void @llvm.dbg.value(metadata ptr %6, metadata !1389, metadata !DIExpression()), !dbg !1431
  call void @llvm.dbg.value(metadata ptr %2, metadata !1429, metadata !DIExpression()), !dbg !1431
  call void @llvm.dbg.value(metadata ptr %3, metadata !1430, metadata !DIExpression()), !dbg !1431
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #37, !dbg !1433
  %8 = load i32, ptr @error_message_count, align 4, !dbg !1434, !tbaa !928
  %9 = add i32 %8, 1, !dbg !1434
  store i32 %9, ptr @error_message_count, align 4, !dbg !1434, !tbaa !928
  %10 = icmp eq i32 %1, 0, !dbg !1435
  br i1 %10, label %20, label %11, !dbg !1437

11:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1438, metadata !DIExpression(), metadata !1386, metadata ptr %5, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i32 %1, metadata !1441, metadata !DIExpression()), !dbg !1446
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #37, !dbg !1448
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #37, !dbg !1449
  call void @llvm.dbg.value(metadata ptr %12, metadata !1442, metadata !DIExpression()), !dbg !1446
  %13 = icmp eq ptr %12, null, !dbg !1450
  br i1 %13, label %14, label %16, !dbg !1452

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.44, ptr noundef nonnull @.str.5.45, i32 noundef 5) #37, !dbg !1453
  call void @llvm.dbg.value(metadata ptr %15, metadata !1442, metadata !DIExpression()), !dbg !1446
  br label %16, !dbg !1454

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !1446
  call void @llvm.dbg.value(metadata ptr %17, metadata !1442, metadata !DIExpression()), !dbg !1446
  %18 = load ptr, ptr @stderr, align 8, !dbg !1455, !tbaa !858
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.46, ptr noundef %17) #37, !dbg !1455
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #37, !dbg !1456
  br label %20, !dbg !1457

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !1458, !tbaa !858
  call void @llvm.dbg.value(metadata i32 10, metadata !1459, metadata !DIExpression()), !dbg !1466
  call void @llvm.dbg.value(metadata ptr %21, metadata !1465, metadata !DIExpression()), !dbg !1466
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !1468
  %23 = load ptr, ptr %22, align 8, !dbg !1468, !tbaa !1469
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !1468
  %25 = load ptr, ptr %24, align 8, !dbg !1468, !tbaa !1471
  %26 = icmp ult ptr %23, %25, !dbg !1468
  br i1 %26, label %29, label %27, !dbg !1468, !prof !1472

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #37, !dbg !1468
  br label %31, !dbg !1468

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !1468
  store ptr %30, ptr %22, align 8, !dbg !1468, !tbaa !1469
  store i8 10, ptr %23, align 1, !dbg !1468, !tbaa !937
  br label %31, !dbg !1468

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !1473, !tbaa !858
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #37, !dbg !1473
  %34 = icmp eq i32 %0, 0, !dbg !1474
  br i1 %34, label %36, label %35, !dbg !1476

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #39, !dbg !1477
  unreachable, !dbg !1477

36:                                               ; preds = %31
  ret void, !dbg !1478
}

declare !dbg !1479 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1482 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1485 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1488 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1491 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1495 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1508
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1502, metadata !DIExpression(), metadata !1508, metadata ptr %4, metadata !DIExpression()), !dbg !1509
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1499, metadata !DIExpression()), !dbg !1509
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1500, metadata !DIExpression()), !dbg !1509
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1501, metadata !DIExpression()), !dbg !1509
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #37, !dbg !1510
  call void @llvm.va_start(ptr nonnull %4), !dbg !1511
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #42, !dbg !1512
  call void @llvm.va_end(ptr nonnull %4), !dbg !1513
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #37, !dbg !1514
  ret void, !dbg !1514
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #15 !dbg !460 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !471, metadata !DIExpression()), !dbg !1515
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !472, metadata !DIExpression()), !dbg !1515
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !473, metadata !DIExpression()), !dbg !1515
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !474, metadata !DIExpression()), !dbg !1515
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !475, metadata !DIExpression()), !dbg !1515
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !476, metadata !DIExpression()), !dbg !1515
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !1516, !tbaa !928
  %8 = icmp eq i32 %7, 0, !dbg !1516
  br i1 %8, label %23, label %9, !dbg !1518

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1519, !tbaa !928
  %11 = icmp eq i32 %10, %3, !dbg !1522
  br i1 %11, label %12, label %22, !dbg !1523

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1524, !tbaa !858
  %14 = icmp eq ptr %13, %2, !dbg !1525
  br i1 %14, label %36, label %15, !dbg !1526

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !1527
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !1528
  br i1 %18, label %19, label %22, !dbg !1528

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !1529
  %21 = icmp eq i32 %20, 0, !dbg !1530
  br i1 %21, label %36, label %22, !dbg !1531

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1532, !tbaa !858
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1533, !tbaa !928
  br label %23, !dbg !1534

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !1535
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !1536, !tbaa !858
  %25 = icmp eq ptr %24, null, !dbg !1536
  br i1 %25, label %27, label %26, !dbg !1538

26:                                               ; preds = %23
  tail call void %24() #37, !dbg !1539
  br label %31, !dbg !1539

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !1540, !tbaa !858
  %29 = tail call ptr @getprogname() #38, !dbg !1540
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.49, ptr noundef %29) #37, !dbg !1540
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !1542, !tbaa !858
  %33 = icmp eq ptr %2, null, !dbg !1542
  %34 = select i1 %33, ptr @.str.3.50, ptr @.str.2.51, !dbg !1542
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #37, !dbg !1542
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !1543
  br label %36, !dbg !1544

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !1544
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1545 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1555
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1554, metadata !DIExpression(), metadata !1555, metadata ptr %6, metadata !DIExpression()), !dbg !1556
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1549, metadata !DIExpression()), !dbg !1556
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1550, metadata !DIExpression()), !dbg !1556
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1551, metadata !DIExpression()), !dbg !1556
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1552, metadata !DIExpression()), !dbg !1556
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1553, metadata !DIExpression()), !dbg !1556
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #37, !dbg !1557
  call void @llvm.va_start(ptr nonnull %6), !dbg !1558
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #42, !dbg !1559
  call void @llvm.va_end(ptr nonnull %6), !dbg !1560
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #37, !dbg !1561
  ret void, !dbg !1561
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #17 !dbg !1562 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1565, !tbaa !858
  ret ptr %1, !dbg !1566
}

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_mknod(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !1567 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1571, metadata !DIExpression()), !dbg !1574
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1572, metadata !DIExpression()), !dbg !1574
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !1573, metadata !DIExpression()), !dbg !1574
  %4 = and i32 %1, 61440, !dbg !1575
  %5 = icmp eq i32 %4, 4096, !dbg !1575
  %6 = icmp eq i64 %2, 0
  %7 = and i1 %5, %6, !dbg !1577
  br i1 %7, label %8, label %11, !dbg !1577

8:                                                ; preds = %3
  %9 = and i32 %1, -4097, !dbg !1578
  %10 = tail call i32 @mkfifo(ptr noundef nonnull %0, i32 noundef %9) #37, !dbg !1579
  br label %13, !dbg !1580

11:                                               ; preds = %3
  %12 = tail call i32 @mknod(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %2) #37, !dbg !1581
  br label %13, !dbg !1582

13:                                               ; preds = %11, %8
  %14 = phi i32 [ %10, %8 ], [ %12, %11 ], !dbg !1574
  ret i32 %14, !dbg !1583
}

; Function Attrs: nounwind
declare !dbg !1584 i32 @mknod(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @mode_compile(ptr noundef %0) local_unnamed_addr #10 !dbg !1587 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1599, metadata !DIExpression()), !dbg !1629
  %2 = load i8, ptr %0, align 1, !dbg !1630, !tbaa !937
  %3 = and i8 %2, -8, !dbg !1631
  %4 = icmp eq i8 %3, 48, !dbg !1631
  br i1 %4, label %5, label %34, !dbg !1631

5:                                                ; preds = %1, %14
  %6 = phi i8 [ %16, %14 ], [ %2, %1 ], !dbg !1632
  %7 = phi i32 [ %12, %14 ], [ 0, %1 ], !dbg !1634
  %8 = phi ptr [ %15, %14 ], [ %0, %1 ], !dbg !1634
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1600, metadata !DIExpression()), !dbg !1634
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !1603, metadata !DIExpression()), !dbg !1634
  %9 = shl i32 %7, 3, !dbg !1635
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1600, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1634
  %10 = zext nneg i8 %6 to i32, !dbg !1632
  %11 = add i32 %9, -48, !dbg !1636
  %12 = add nsw i32 %11, %10, !dbg !1637
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1603, metadata !DIExpression()), !dbg !1634
  %13 = icmp ugt i32 %12, 4095, !dbg !1638
  br i1 %13, label %139, label %14, !dbg !1640

14:                                               ; preds = %5
  %15 = getelementptr inbounds i8, ptr %8, i64 1, !dbg !1641
  tail call void @llvm.dbg.value(metadata ptr %15, metadata !1600, metadata !DIExpression()), !dbg !1634
  %16 = load i8, ptr %15, align 1, !dbg !1642, !tbaa !937
  %17 = and i8 %16, -8, !dbg !1643
  %18 = icmp eq i8 %17, 48, !dbg !1643
  br i1 %18, label %5, label %19, !dbg !1643, !llvm.loop !1644

19:                                               ; preds = %14
  %20 = icmp eq i8 %16, 0, !dbg !1647
  br i1 %20, label %21, label %139, !dbg !1649

21:                                               ; preds = %19
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1604, metadata !DIExpression()), !dbg !1634
  %22 = ptrtoint ptr %15 to i64, !dbg !1650
  %23 = ptrtoint ptr %0 to i64, !dbg !1650
  %24 = sub i64 %22, %23, !dbg !1650
  %25 = icmp slt i64 %24, 5, !dbg !1651
  %26 = or i32 %12, 1023, !dbg !1652
  %27 = select i1 %25, i32 %26, i32 4095, !dbg !1652
  tail call void @llvm.dbg.value(metadata i32 %27, metadata !1605, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i32 %12, metadata !1653, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i32 %27, metadata !1658, metadata !DIExpression()), !dbg !1660
  %28 = tail call noalias nonnull dereferenceable(32) ptr @xmalloc(i64 noundef 32) #43, !dbg !1662
  call void @llvm.dbg.value(metadata ptr %28, metadata !1659, metadata !DIExpression()), !dbg !1660
  store i8 61, ptr %28, align 4, !dbg !1663, !tbaa !1664
  %29 = getelementptr inbounds %struct.mode_change, ptr %28, i64 0, i32 1, !dbg !1666
  store i8 1, ptr %29, align 1, !dbg !1667, !tbaa !1668
  %30 = getelementptr inbounds %struct.mode_change, ptr %28, i64 0, i32 2, !dbg !1669
  store i32 4095, ptr %30, align 4, !dbg !1670, !tbaa !1671
  %31 = getelementptr inbounds %struct.mode_change, ptr %28, i64 0, i32 3, !dbg !1672
  store i32 %12, ptr %31, align 4, !dbg !1673, !tbaa !1674
  %32 = getelementptr inbounds %struct.mode_change, ptr %28, i64 0, i32 4, !dbg !1675
  store i32 %27, ptr %32, align 4, !dbg !1676, !tbaa !1677
  %33 = getelementptr inbounds %struct.mode_change, ptr %28, i64 1, i32 1, !dbg !1678
  store i8 0, ptr %33, align 1, !dbg !1679, !tbaa !1668
  br label %139, !dbg !1680

34:                                               ; preds = %1, %41
  %35 = phi i8 [ %45, %41 ], [ %2, %1 ], !dbg !1681
  %36 = phi i64 [ %43, %41 ], [ 1, %1 ], !dbg !1683
  %37 = phi ptr [ %44, %41 ], [ %0, %1 ], !dbg !1684
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !1609, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !1607, metadata !DIExpression()), !dbg !1683
  switch i8 %35, label %40 [
    i8 0, label %38
    i8 61, label %41
    i8 43, label %41
    i8 45, label %41
  ], !dbg !1686

38:                                               ; preds = %34
  %39 = tail call noalias nonnull ptr @xnmalloc(i64 noundef %36, i64 noundef 16) #44, !dbg !1687
  tail call void @llvm.dbg.value(metadata ptr %39, metadata !1606, metadata !DIExpression()), !dbg !1629
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1611, metadata !DIExpression()), !dbg !1629
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1612, metadata !DIExpression()), !dbg !1629
  br label %46, !dbg !1688

40:                                               ; preds = %34
  br label %41, !dbg !1689

41:                                               ; preds = %34, %34, %34, %40
  %42 = phi i64 [ 0, %40 ], [ 1, %34 ], [ 1, %34 ], [ 1, %34 ]
  %43 = add i64 %42, %36, !dbg !1690
  tail call void @llvm.dbg.value(metadata i64 %43, metadata !1607, metadata !DIExpression()), !dbg !1683
  %44 = getelementptr inbounds i8, ptr %37, i64 1, !dbg !1691
  tail call void @llvm.dbg.value(metadata ptr %44, metadata !1609, metadata !DIExpression()), !dbg !1685
  %45 = load i8, ptr %44, align 1, !dbg !1681, !tbaa !937
  br label %34, !dbg !1692, !llvm.loop !1693

46:                                               ; preds = %134, %38
  %47 = phi i64 [ 0, %38 ], [ %122, %134 ], !dbg !1695
  %48 = phi ptr [ %0, %38 ], [ %135, %134 ], !dbg !1696
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !1620, metadata !DIExpression()), !dbg !1697
  tail call void @llvm.dbg.value(metadata ptr %48, metadata !1612, metadata !DIExpression()), !dbg !1629
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !1611, metadata !DIExpression()), !dbg !1629
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1613, metadata !DIExpression()), !dbg !1698
  br label %49, !dbg !1699

49:                                               ; preds = %60, %46
  %50 = phi ptr [ %48, %46 ], [ %62, %60 ], !dbg !1700
  %51 = phi i32 [ 0, %46 ], [ %61, %60 ], !dbg !1698
  tail call void @llvm.dbg.value(metadata i32 %51, metadata !1613, metadata !DIExpression()), !dbg !1698
  tail call void @llvm.dbg.value(metadata ptr %50, metadata !1612, metadata !DIExpression()), !dbg !1629
  %52 = load i8, ptr %50, align 1, !dbg !1701, !tbaa !937
  switch i8 %52, label %138 [
    i8 117, label %54
    i8 103, label %56
    i8 111, label %58
    i8 97, label %60
    i8 61, label %53
    i8 43, label %53
    i8 45, label %53
  ], !dbg !1704

53:                                               ; preds = %49, %49, %49
  br label %63, !dbg !1705

54:                                               ; preds = %49
  %55 = or i32 %51, 2496, !dbg !1706
  tail call void @llvm.dbg.value(metadata i32 %55, metadata !1613, metadata !DIExpression()), !dbg !1698
  br label %60, !dbg !1708

56:                                               ; preds = %49
  %57 = or i32 %51, 1080, !dbg !1709
  tail call void @llvm.dbg.value(metadata i32 %57, metadata !1613, metadata !DIExpression()), !dbg !1698
  br label %60, !dbg !1710

58:                                               ; preds = %49
  %59 = or i32 %51, 519, !dbg !1711
  tail call void @llvm.dbg.value(metadata i32 %59, metadata !1613, metadata !DIExpression()), !dbg !1698
  br label %60, !dbg !1712

60:                                               ; preds = %49, %54, %56, %58
  %61 = phi i32 [ %59, %58 ], [ %57, %56 ], [ %55, %54 ], [ 4095, %49 ], !dbg !1713
  tail call void @llvm.dbg.value(metadata i32 %61, metadata !1613, metadata !DIExpression()), !dbg !1698
  %62 = getelementptr inbounds i8, ptr %50, i64 1, !dbg !1714
  tail call void @llvm.dbg.value(metadata ptr %62, metadata !1612, metadata !DIExpression()), !dbg !1629
  br label %49, !dbg !1715, !llvm.loop !1716

63:                                               ; preds = %133, %53
  %64 = phi i8 [ %52, %53 ], [ %132, %133 ], !dbg !1719
  %65 = phi i64 [ %47, %53 ], [ %122, %133 ], !dbg !1629
  %66 = phi ptr [ %50, %53 ], [ %115, %133 ], !dbg !1700
  %67 = phi i32 [ %51, %53 ], [ %121, %133 ], !dbg !1720
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !1620, metadata !DIExpression()), !dbg !1697
  tail call void @llvm.dbg.value(metadata i32 %67, metadata !1613, metadata !DIExpression()), !dbg !1698
  tail call void @llvm.dbg.value(metadata ptr %66, metadata !1612, metadata !DIExpression()), !dbg !1629
  tail call void @llvm.dbg.value(metadata i64 %65, metadata !1611, metadata !DIExpression()), !dbg !1629
  %68 = getelementptr inbounds i8, ptr %66, i64 1, !dbg !1721
  tail call void @llvm.dbg.value(metadata ptr %68, metadata !1612, metadata !DIExpression()), !dbg !1629
  tail call void @llvm.dbg.value(metadata i8 %64, metadata !1618, metadata !DIExpression()), !dbg !1697
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1621, metadata !DIExpression()), !dbg !1697
  tail call void @llvm.dbg.value(metadata i8 3, metadata !1622, metadata !DIExpression()), !dbg !1697
  %69 = load i8, ptr %68, align 1, !dbg !1722, !tbaa !937
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
  ], !dbg !1705

70:                                               ; preds = %63, %63, %63, %63, %63, %63, %63, %63
  br label %71, !dbg !1723

71:                                               ; preds = %70, %80
  %72 = phi i8 [ %82, %80 ], [ %69, %70 ], !dbg !1724
  %73 = phi ptr [ %81, %80 ], [ %68, %70 ], !dbg !1697
  %74 = phi i32 [ %78, %80 ], [ 0, %70 ], !dbg !1726
  tail call void @llvm.dbg.value(metadata i32 %74, metadata !1623, metadata !DIExpression()), !dbg !1726
  tail call void @llvm.dbg.value(metadata ptr %73, metadata !1612, metadata !DIExpression()), !dbg !1629
  %75 = shl i32 %74, 3, !dbg !1727
  tail call void @llvm.dbg.value(metadata ptr %73, metadata !1612, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1629
  %76 = zext nneg i8 %72 to i32, !dbg !1724
  %77 = add i32 %75, -48, !dbg !1728
  %78 = add nsw i32 %77, %76, !dbg !1729
  tail call void @llvm.dbg.value(metadata i32 %78, metadata !1623, metadata !DIExpression()), !dbg !1726
  %79 = icmp ugt i32 %78, 4095, !dbg !1730
  br i1 %79, label %138, label %80, !dbg !1732

80:                                               ; preds = %71
  %81 = getelementptr inbounds i8, ptr %73, i64 1, !dbg !1733
  tail call void @llvm.dbg.value(metadata ptr %81, metadata !1612, metadata !DIExpression()), !dbg !1629
  %82 = load i8, ptr %81, align 1, !dbg !1734, !tbaa !937
  %83 = and i8 %82, -8, !dbg !1735
  %84 = icmp eq i8 %83, 48, !dbg !1735
  br i1 %84, label %71, label %85, !dbg !1735, !llvm.loop !1736

85:                                               ; preds = %80
  %86 = icmp eq i32 %67, 0, !dbg !1738
  br i1 %86, label %87, label %138, !dbg !1740

87:                                               ; preds = %85
  switch i8 %82, label %138 [
    i8 0, label %114
    i8 44, label %114
  ], !dbg !1741

88:                                               ; preds = %63
  tail call void @llvm.dbg.value(metadata i32 448, metadata !1620, metadata !DIExpression()), !dbg !1697
  %89 = getelementptr inbounds i8, ptr %66, i64 2, !dbg !1742
  tail call void @llvm.dbg.value(metadata ptr %89, metadata !1612, metadata !DIExpression()), !dbg !1629
  br label %114, !dbg !1743

90:                                               ; preds = %63
  tail call void @llvm.dbg.value(metadata i32 56, metadata !1620, metadata !DIExpression()), !dbg !1697
  %91 = getelementptr inbounds i8, ptr %66, i64 2, !dbg !1744
  tail call void @llvm.dbg.value(metadata ptr %91, metadata !1612, metadata !DIExpression()), !dbg !1629
  br label %114, !dbg !1745

92:                                               ; preds = %63
  tail call void @llvm.dbg.value(metadata i32 7, metadata !1620, metadata !DIExpression()), !dbg !1697
  %93 = getelementptr inbounds i8, ptr %66, i64 2, !dbg !1746
  tail call void @llvm.dbg.value(metadata ptr %93, metadata !1612, metadata !DIExpression()), !dbg !1629
  br label %114, !dbg !1747

94:                                               ; preds = %63, %109
  %95 = phi i8 [ %113, %109 ], [ %69, %63 ], !dbg !1748
  %96 = phi ptr [ %112, %109 ], [ %68, %63 ], !dbg !1697
  %97 = phi i32 [ %110, %109 ], [ 0, %63 ], !dbg !1751
  %98 = phi i8 [ %111, %109 ], [ 1, %63 ], !dbg !1752
  tail call void @llvm.dbg.value(metadata i8 %98, metadata !1622, metadata !DIExpression()), !dbg !1697
  tail call void @llvm.dbg.value(metadata i32 %97, metadata !1620, metadata !DIExpression()), !dbg !1697
  tail call void @llvm.dbg.value(metadata ptr %96, metadata !1612, metadata !DIExpression()), !dbg !1629
  switch i8 %95, label %114 [
    i8 114, label %99
    i8 119, label %101
    i8 120, label %103
    i8 88, label %109
    i8 115, label %105
    i8 116, label %107
  ], !dbg !1753

99:                                               ; preds = %94
  %100 = or i32 %97, 292, !dbg !1754
  tail call void @llvm.dbg.value(metadata i32 %100, metadata !1620, metadata !DIExpression()), !dbg !1697
  br label %109, !dbg !1756

101:                                              ; preds = %94
  %102 = or i32 %97, 146, !dbg !1757
  tail call void @llvm.dbg.value(metadata i32 %102, metadata !1620, metadata !DIExpression()), !dbg !1697
  br label %109, !dbg !1758

103:                                              ; preds = %94
  %104 = or i32 %97, 73, !dbg !1759
  tail call void @llvm.dbg.value(metadata i32 %104, metadata !1620, metadata !DIExpression()), !dbg !1697
  br label %109, !dbg !1760

105:                                              ; preds = %94
  %106 = or i32 %97, 3072, !dbg !1761
  tail call void @llvm.dbg.value(metadata i32 %106, metadata !1620, metadata !DIExpression()), !dbg !1697
  br label %109, !dbg !1762

107:                                              ; preds = %94
  %108 = or i32 %97, 512, !dbg !1763
  tail call void @llvm.dbg.value(metadata i32 %108, metadata !1620, metadata !DIExpression()), !dbg !1697
  br label %109, !dbg !1764

109:                                              ; preds = %94, %99, %101, %103, %105, %107
  %110 = phi i32 [ %108, %107 ], [ %106, %105 ], [ %104, %103 ], [ %102, %101 ], [ %100, %99 ], [ %97, %94 ], !dbg !1751
  %111 = phi i8 [ %98, %107 ], [ %98, %105 ], [ %98, %103 ], [ %98, %101 ], [ %98, %99 ], [ 2, %94 ], !dbg !1751
  tail call void @llvm.dbg.value(metadata i8 %111, metadata !1622, metadata !DIExpression()), !dbg !1697
  tail call void @llvm.dbg.value(metadata i32 %110, metadata !1620, metadata !DIExpression()), !dbg !1697
  %112 = getelementptr inbounds i8, ptr %96, i64 1, !dbg !1765
  tail call void @llvm.dbg.value(metadata ptr %112, metadata !1612, metadata !DIExpression()), !dbg !1629
  %113 = load i8, ptr %112, align 1, !dbg !1748, !tbaa !937
  br label %94, !dbg !1766, !llvm.loop !1767

114:                                              ; preds = %94, %87, %87, %92, %90, %88
  %115 = phi ptr [ %93, %92 ], [ %91, %90 ], [ %89, %88 ], [ %81, %87 ], [ %81, %87 ], [ %96, %94 ], !dbg !1697
  %116 = phi i32 [ %67, %92 ], [ %67, %90 ], [ %67, %88 ], [ 4095, %87 ], [ 4095, %87 ], [ %67, %94 ], !dbg !1720
  %117 = phi i32 [ 7, %92 ], [ 56, %90 ], [ 448, %88 ], [ %78, %87 ], [ %78, %87 ], [ %97, %94 ]
  %118 = phi i1 [ true, %92 ], [ true, %90 ], [ true, %88 ], [ false, %87 ], [ false, %87 ], [ true, %94 ], !dbg !1770
  %119 = phi i32 [ 0, %92 ], [ 0, %90 ], [ 0, %88 ], [ 4095, %87 ], [ 4095, %87 ], [ 0, %94 ], !dbg !1770
  %120 = phi i8 [ 3, %92 ], [ 3, %90 ], [ 3, %88 ], [ 1, %87 ], [ 1, %87 ], [ %98, %94 ], !dbg !1697
  tail call void @llvm.dbg.value(metadata i8 %120, metadata !1622, metadata !DIExpression()), !dbg !1697
  tail call void @llvm.dbg.value(metadata i32 %119, metadata !1621, metadata !DIExpression()), !dbg !1697
  tail call void @llvm.dbg.value(metadata i32 %117, metadata !1620, metadata !DIExpression()), !dbg !1697
  tail call void @llvm.dbg.value(metadata i32 %116, metadata !1613, metadata !DIExpression()), !dbg !1698
  tail call void @llvm.dbg.value(metadata ptr %115, metadata !1612, metadata !DIExpression()), !dbg !1629
  %121 = freeze i32 %116, !dbg !1771
  %122 = add i64 %65, 1, !dbg !1772
  tail call void @llvm.dbg.value(metadata i64 %122, metadata !1611, metadata !DIExpression()), !dbg !1629
  %123 = getelementptr inbounds %struct.mode_change, ptr %39, i64 %65, !dbg !1773
  tail call void @llvm.dbg.value(metadata ptr %123, metadata !1627, metadata !DIExpression()), !dbg !1697
  store i8 %64, ptr %123, align 4, !dbg !1774, !tbaa !1664
  %124 = getelementptr inbounds %struct.mode_change, ptr %39, i64 %65, i32 1, !dbg !1775
  store i8 %120, ptr %124, align 1, !dbg !1776, !tbaa !1668
  %125 = getelementptr inbounds %struct.mode_change, ptr %39, i64 %65, i32 2, !dbg !1777
  store i32 %121, ptr %125, align 4, !dbg !1778, !tbaa !1671
  %126 = getelementptr inbounds %struct.mode_change, ptr %39, i64 %65, i32 3, !dbg !1779
  store i32 %117, ptr %126, align 4, !dbg !1780, !tbaa !1674
  %127 = icmp eq i32 %121, 0, !dbg !1771
  %128 = select i1 %127, i32 -1, i32 %121, !dbg !1771
  %129 = and i32 %128, %117, !dbg !1771
  %130 = select i1 %118, i32 %129, i32 %119, !dbg !1771
  %131 = getelementptr inbounds %struct.mode_change, ptr %39, i64 %65, i32 4, !dbg !1781
  store i32 %130, ptr %131, align 4, !dbg !1782, !tbaa !1677
  %132 = load i8, ptr %115, align 1, !dbg !1783, !tbaa !937
  switch i8 %132, label %138 [
    i8 61, label %133
    i8 43, label %133
    i8 45, label %133
    i8 44, label %134
    i8 0, label %136
  ], !dbg !1784

133:                                              ; preds = %114, %114, %114
  br label %63, !dbg !1697

134:                                              ; preds = %114
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !1620, metadata !DIExpression()), !dbg !1697
  tail call void @llvm.dbg.value(metadata ptr %115, metadata !1612, metadata !DIExpression()), !dbg !1629
  tail call void @llvm.dbg.value(metadata i64 %122, metadata !1611, metadata !DIExpression()), !dbg !1629
  %135 = getelementptr inbounds i8, ptr %115, i64 1, !dbg !1785
  tail call void @llvm.dbg.value(metadata ptr %135, metadata !1612, metadata !DIExpression()), !dbg !1629
  br label %46, !dbg !1786, !llvm.loop !1787

136:                                              ; preds = %114
  %137 = getelementptr inbounds %struct.mode_change, ptr %39, i64 %122, i32 1, !dbg !1790
  store i8 0, ptr %137, align 1, !dbg !1793, !tbaa !1668
  br label %139, !dbg !1794

138:                                              ; preds = %49, %85, %87, %114, %71
  call void @llvm.dbg.label(metadata !1628), !dbg !1795
  tail call void @free(ptr noundef nonnull %39) #37, !dbg !1796
  br label %139, !dbg !1797

139:                                              ; preds = %5, %136, %138, %21, %19
  %140 = phi ptr [ %28, %21 ], [ null, %19 ], [ null, %138 ], [ %39, %136 ], [ null, %5 ]
  ret ptr %140, !dbg !1798
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @mode_create_from_ref(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !1799 {
  %2 = alloca %struct.stat, align 8, !DIAssignID !1835
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1802, metadata !DIExpression(), metadata !1835, metadata ptr %2, metadata !DIExpression()), !dbg !1836
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1801, metadata !DIExpression()), !dbg !1836
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %2) #37, !dbg !1837
  %3 = call i32 @stat(ptr noundef %0, ptr noundef nonnull %2) #37, !dbg !1838
  %4 = icmp eq i32 %3, 0, !dbg !1840
  br i1 %4, label %5, label %14, !dbg !1841

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 3, !dbg !1842
  %7 = load i32, ptr %6, align 8, !dbg !1842, !tbaa !1843
  call void @llvm.dbg.value(metadata i32 %7, metadata !1653, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i32 4095, metadata !1658, metadata !DIExpression()), !dbg !1846
  %8 = tail call noalias nonnull dereferenceable(32) ptr @xmalloc(i64 noundef 32) #43, !dbg !1848
  call void @llvm.dbg.value(metadata ptr %8, metadata !1659, metadata !DIExpression()), !dbg !1846
  store i8 61, ptr %8, align 4, !dbg !1849, !tbaa !1664
  %9 = getelementptr inbounds %struct.mode_change, ptr %8, i64 0, i32 1, !dbg !1850
  store i8 1, ptr %9, align 1, !dbg !1851, !tbaa !1668
  %10 = getelementptr inbounds %struct.mode_change, ptr %8, i64 0, i32 2, !dbg !1852
  store i32 4095, ptr %10, align 4, !dbg !1853, !tbaa !1671
  %11 = getelementptr inbounds %struct.mode_change, ptr %8, i64 0, i32 3, !dbg !1854
  store i32 %7, ptr %11, align 4, !dbg !1855, !tbaa !1674
  %12 = getelementptr inbounds %struct.mode_change, ptr %8, i64 0, i32 4, !dbg !1856
  store i32 4095, ptr %12, align 4, !dbg !1857, !tbaa !1677
  %13 = getelementptr inbounds %struct.mode_change, ptr %8, i64 1, i32 1, !dbg !1858
  store i8 0, ptr %13, align 1, !dbg !1859, !tbaa !1668
  br label %14, !dbg !1860

14:                                               ; preds = %1, %5
  %15 = phi ptr [ %8, %5 ], [ null, %1 ], !dbg !1836
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %2) #37, !dbg !1861
  ret ptr %15, !dbg !1861
}

; Function Attrs: nofree nounwind
declare !dbg !1862 noundef i32 @stat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @mode_adjust(i32 noundef %0, i1 noundef zeroext %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr noundef writeonly %4) local_unnamed_addr #18 !dbg !1867 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1874, metadata !DIExpression()), !dbg !1890
  tail call void @llvm.dbg.value(metadata i1 %1, metadata !1875, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1890
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1876, metadata !DIExpression()), !dbg !1890
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1877, metadata !DIExpression()), !dbg !1890
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1878, metadata !DIExpression()), !dbg !1890
  %6 = and i32 %0, 4095, !dbg !1891
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !1879, metadata !DIExpression()), !dbg !1890
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1880, metadata !DIExpression()), !dbg !1890
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1877, metadata !DIExpression()), !dbg !1890
  %7 = getelementptr inbounds %struct.mode_change, ptr %3, i64 0, i32 1, !dbg !1892
  %8 = load i8, ptr %7, align 1, !dbg !1892, !tbaa !1668
  %9 = icmp eq i8 %8, 0, !dbg !1893
  br i1 %9, label %78, label %10, !dbg !1894

10:                                               ; preds = %5
  %11 = select i1 %1, i32 3072, i32 0
  %12 = zext i1 %1 to i32
  %13 = xor i32 %2, -1
  br label %14, !dbg !1894

14:                                               ; preds = %10, %71
  %15 = phi i8 [ %8, %10 ], [ %76, %71 ]
  %16 = phi ptr [ %3, %10 ], [ %74, %71 ]
  %17 = phi i32 [ %6, %10 ], [ %73, %71 ]
  %18 = phi i32 [ 0, %10 ], [ %72, %71 ]
  tail call void @llvm.dbg.value(metadata ptr %16, metadata !1877, metadata !DIExpression()), !dbg !1890
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !1879, metadata !DIExpression()), !dbg !1890
  tail call void @llvm.dbg.value(metadata i32 %18, metadata !1880, metadata !DIExpression()), !dbg !1890
  %19 = getelementptr inbounds %struct.mode_change, ptr %16, i64 0, i32 2, !dbg !1895
  %20 = load i32, ptr %19, align 4, !dbg !1895, !tbaa !1671
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !1881, metadata !DIExpression()), !dbg !1896
  %21 = getelementptr inbounds %struct.mode_change, ptr %16, i64 0, i32 4, !dbg !1897
  %22 = load i32, ptr %21, align 4, !dbg !1897, !tbaa !1677
  %23 = xor i32 %22, -1, !dbg !1898
  %24 = and i32 %11, %23, !dbg !1899
  tail call void @llvm.dbg.value(metadata i32 %24, metadata !1885, metadata !DIExpression()), !dbg !1896
  %25 = getelementptr inbounds %struct.mode_change, ptr %16, i64 0, i32 3, !dbg !1900
  %26 = load i32, ptr %25, align 4, !dbg !1900, !tbaa !1674
  tail call void @llvm.dbg.value(metadata i32 %26, metadata !1886, metadata !DIExpression()), !dbg !1896
  switch i8 %15, label %47 [
    i8 2, label %41
    i8 3, label %27
  ], !dbg !1901

27:                                               ; preds = %14
  %28 = and i32 %26, %17, !dbg !1902
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !1886, metadata !DIExpression()), !dbg !1896
  %29 = and i32 %28, 292, !dbg !1904
  %30 = icmp eq i32 %29, 0, !dbg !1905
  %31 = select i1 %30, i32 0, i32 292, !dbg !1905
  %32 = and i32 %28, 146, !dbg !1906
  %33 = icmp eq i32 %32, 0, !dbg !1907
  %34 = select i1 %33, i32 0, i32 146, !dbg !1907
  %35 = and i32 %28, 73, !dbg !1908
  %36 = icmp eq i32 %35, 0, !dbg !1909
  %37 = select i1 %36, i32 0, i32 73, !dbg !1909
  %38 = or disjoint i32 %34, %31, !dbg !1910
  %39 = or disjoint i32 %38, %37, !dbg !1911
  %40 = or i32 %39, %28, !dbg !1911
  tail call void @llvm.dbg.value(metadata i32 %40, metadata !1886, metadata !DIExpression()), !dbg !1896
  br label %47, !dbg !1912

41:                                               ; preds = %14
  %42 = and i32 %17, 73, !dbg !1913
  %43 = or i32 %42, %12, !dbg !1915
  %44 = icmp eq i32 %43, 0, !dbg !1915
  %45 = or i32 %26, 73
  %46 = select i1 %44, i32 %26, i32 %45, !dbg !1916
  br label %47, !dbg !1916

47:                                               ; preds = %41, %14, %27
  %48 = phi i32 [ %26, %14 ], [ %40, %27 ], [ %46, %41 ], !dbg !1896
  tail call void @llvm.dbg.value(metadata i32 %48, metadata !1886, metadata !DIExpression()), !dbg !1896
  %49 = icmp eq i32 %20, 0, !dbg !1917
  %50 = select i1 %49, i32 %13, i32 %20, !dbg !1917
  %51 = xor i32 %24, -1, !dbg !1918
  %52 = and i32 %50, %51, !dbg !1919
  %53 = and i32 %52, %48, !dbg !1920
  tail call void @llvm.dbg.value(metadata i32 %53, metadata !1886, metadata !DIExpression()), !dbg !1896
  %54 = load i8, ptr %16, align 4, !dbg !1921, !tbaa !1664
  switch i8 %54, label %71 [
    i8 61, label %55
    i8 43, label %64
    i8 45, label %67
  ], !dbg !1922

55:                                               ; preds = %47
  %56 = xor i32 %20, -1, !dbg !1923
  %57 = select i1 %49, i32 0, i32 %56, !dbg !1923
  %58 = or i32 %57, %24, !dbg !1924
  tail call void @llvm.dbg.value(metadata i32 %58, metadata !1887, metadata !DIExpression()), !dbg !1925
  %59 = and i32 %58, 4095, !dbg !1926
  %60 = xor i32 %59, 4095, !dbg !1926
  %61 = or i32 %60, %18, !dbg !1927
  tail call void @llvm.dbg.value(metadata i32 %61, metadata !1880, metadata !DIExpression()), !dbg !1890
  %62 = and i32 %58, %17, !dbg !1928
  %63 = or i32 %53, %62, !dbg !1929
  tail call void @llvm.dbg.value(metadata i32 %63, metadata !1879, metadata !DIExpression()), !dbg !1890
  br label %71

64:                                               ; preds = %47
  %65 = or i32 %53, %18, !dbg !1930
  tail call void @llvm.dbg.value(metadata i32 %65, metadata !1880, metadata !DIExpression()), !dbg !1890
  %66 = or i32 %53, %17, !dbg !1931
  tail call void @llvm.dbg.value(metadata i32 %66, metadata !1879, metadata !DIExpression()), !dbg !1890
  br label %71, !dbg !1932

67:                                               ; preds = %47
  %68 = or i32 %53, %18, !dbg !1933
  tail call void @llvm.dbg.value(metadata i32 %68, metadata !1880, metadata !DIExpression()), !dbg !1890
  %69 = xor i32 %53, -1, !dbg !1934
  %70 = and i32 %17, %69, !dbg !1935
  tail call void @llvm.dbg.value(metadata i32 %70, metadata !1879, metadata !DIExpression()), !dbg !1890
  br label %71, !dbg !1936

71:                                               ; preds = %47, %67, %64, %55
  %72 = phi i32 [ %18, %47 ], [ %68, %67 ], [ %65, %64 ], [ %61, %55 ], !dbg !1890
  %73 = phi i32 [ %17, %47 ], [ %70, %67 ], [ %66, %64 ], [ %63, %55 ], !dbg !1890
  tail call void @llvm.dbg.value(metadata i32 %73, metadata !1879, metadata !DIExpression()), !dbg !1890
  tail call void @llvm.dbg.value(metadata i32 %72, metadata !1880, metadata !DIExpression()), !dbg !1890
  %74 = getelementptr inbounds %struct.mode_change, ptr %16, i64 1, !dbg !1937
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !1877, metadata !DIExpression()), !dbg !1890
  %75 = getelementptr inbounds %struct.mode_change, ptr %16, i64 1, i32 1, !dbg !1892
  %76 = load i8, ptr %75, align 1, !dbg !1892, !tbaa !1668
  %77 = icmp eq i8 %76, 0, !dbg !1893
  br i1 %77, label %78, label %14, !dbg !1894, !llvm.loop !1938

78:                                               ; preds = %71, %5
  %79 = phi i32 [ 0, %5 ], [ %72, %71 ], !dbg !1940
  %80 = phi i32 [ %6, %5 ], [ %73, %71 ], !dbg !1941
  %81 = icmp eq ptr %4, null, !dbg !1942
  br i1 %81, label %83, label %82, !dbg !1944

82:                                               ; preds = %78
  store i32 %79, ptr %4, align 4, !dbg !1945, !tbaa !928
  br label %83, !dbg !1946

83:                                               ; preds = %82, %78
  ret i32 %80, !dbg !1947
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #19 !dbg !1948 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1950, metadata !DIExpression()), !dbg !1953
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #38, !dbg !1954
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1951, metadata !DIExpression()), !dbg !1953
  %3 = icmp eq ptr %2, null, !dbg !1955
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1955
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1955
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1952, metadata !DIExpression()), !dbg !1953
  %6 = ptrtoint ptr %5 to i64, !dbg !1956
  %7 = ptrtoint ptr %0 to i64, !dbg !1956
  %8 = sub i64 %6, %7, !dbg !1956
  %9 = icmp sgt i64 %8, 6, !dbg !1958
  br i1 %9, label %10, label %19, !dbg !1959

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1960
  call void @llvm.dbg.value(metadata ptr %11, metadata !1961, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata ptr @.str.74, metadata !1966, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 7, metadata !1967, metadata !DIExpression()), !dbg !1968
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.74, i64 7), !dbg !1970
  %13 = icmp eq i32 %12, 0, !dbg !1971
  br i1 %13, label %14, label %19, !dbg !1972

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1950, metadata !DIExpression()), !dbg !1953
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.75, i64 noundef 3) #38, !dbg !1973
  %16 = icmp eq i32 %15, 0, !dbg !1976
  %17 = select i1 %16, i64 3, i64 0, !dbg !1977
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !1977
  br label %19, !dbg !1977

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1953
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !1952, metadata !DIExpression()), !dbg !1953
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !1950, metadata !DIExpression()), !dbg !1953
  store ptr %20, ptr @program_name, align 8, !dbg !1978, !tbaa !858
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1979, !tbaa !858
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1980, !tbaa !858
  ret void, !dbg !1981
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1982 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #20

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !510 {
  %3 = alloca i32, align 4, !DIAssignID !1983
  call void @llvm.dbg.assign(metadata i1 undef, metadata !520, metadata !DIExpression(), metadata !1983, metadata ptr %3, metadata !DIExpression()), !dbg !1984
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1985
  call void @llvm.dbg.assign(metadata i1 undef, metadata !525, metadata !DIExpression(), metadata !1985, metadata ptr %4, metadata !DIExpression()), !dbg !1984
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !517, metadata !DIExpression()), !dbg !1984
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !518, metadata !DIExpression()), !dbg !1984
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #37, !dbg !1986
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !519, metadata !DIExpression()), !dbg !1984
  %6 = icmp eq ptr %5, %0, !dbg !1987
  br i1 %6, label %7, label %14, !dbg !1989

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #37, !dbg !1990
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #37, !dbg !1991
  call void @llvm.dbg.value(metadata ptr %4, metadata !1992, metadata !DIExpression()), !dbg !1999
  call void @llvm.dbg.value(metadata ptr %4, metadata !2001, metadata !DIExpression()), !dbg !2009
  call void @llvm.dbg.value(metadata i32 0, metadata !2007, metadata !DIExpression()), !dbg !2009
  call void @llvm.dbg.value(metadata i64 8, metadata !2008, metadata !DIExpression()), !dbg !2009
  store i64 0, ptr %4, align 8, !dbg !2011
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #37, !dbg !2012
  %9 = icmp eq i64 %8, 2, !dbg !2014
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2015
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1984
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #37, !dbg !2016
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #37, !dbg !2016
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1984
  ret ptr %15, !dbg !2016
}

; Function Attrs: nounwind
declare !dbg !2017 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !2023 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2028, metadata !DIExpression()), !dbg !2031
  %2 = tail call ptr @__errno_location() #40, !dbg !2032
  %3 = load i32, ptr %2, align 4, !dbg !2032, !tbaa !928
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2029, metadata !DIExpression()), !dbg !2031
  %4 = icmp eq ptr %0, null, !dbg !2033
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2033
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #45, !dbg !2034
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2030, metadata !DIExpression()), !dbg !2031
  store i32 %3, ptr %2, align 4, !dbg !2035, !tbaa !928
  ret ptr %6, !dbg !2036
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #18 !dbg !2037 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2043, metadata !DIExpression()), !dbg !2044
  %2 = icmp eq ptr %0, null, !dbg !2045
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2045
  %4 = load i32, ptr %3, align 8, !dbg !2046, !tbaa !2047
  ret i32 %4, !dbg !2049
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #21 !dbg !2050 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2054, metadata !DIExpression()), !dbg !2056
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2055, metadata !DIExpression()), !dbg !2056
  %3 = icmp eq ptr %0, null, !dbg !2057
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2057
  store i32 %1, ptr %4, align 8, !dbg !2058, !tbaa !2047
  ret void, !dbg !2059
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #22 !dbg !2060 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2064, metadata !DIExpression()), !dbg !2072
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2065, metadata !DIExpression()), !dbg !2072
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !2066, metadata !DIExpression()), !dbg !2072
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2067, metadata !DIExpression()), !dbg !2072
  %4 = icmp eq ptr %0, null, !dbg !2073
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2073
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2074
  %7 = lshr i8 %1, 5, !dbg !2075
  %8 = zext nneg i8 %7 to i64, !dbg !2075
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !2076
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2068, metadata !DIExpression()), !dbg !2072
  %10 = and i8 %1, 31, !dbg !2077
  %11 = zext nneg i8 %10 to i32, !dbg !2077
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !2070, metadata !DIExpression()), !dbg !2072
  %12 = load i32, ptr %9, align 4, !dbg !2078, !tbaa !928
  %13 = lshr i32 %12, %11, !dbg !2079
  %14 = and i32 %13, 1, !dbg !2080
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !2071, metadata !DIExpression()), !dbg !2072
  %15 = xor i32 %13, %2, !dbg !2081
  %16 = and i32 %15, 1, !dbg !2081
  %17 = shl nuw i32 %16, %11, !dbg !2082
  %18 = xor i32 %17, %12, !dbg !2083
  store i32 %18, ptr %9, align 4, !dbg !2083, !tbaa !928
  ret i32 %14, !dbg !2084
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #22 !dbg !2085 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2089, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2090, metadata !DIExpression()), !dbg !2092
  %3 = icmp eq ptr %0, null, !dbg !2093
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2095
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2089, metadata !DIExpression()), !dbg !2092
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !2096
  %6 = load i32, ptr %5, align 4, !dbg !2096, !tbaa !2097
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !2091, metadata !DIExpression()), !dbg !2092
  store i32 %1, ptr %5, align 4, !dbg !2098, !tbaa !2097
  ret i32 %6, !dbg !2099
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2100 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2104, metadata !DIExpression()), !dbg !2107
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2105, metadata !DIExpression()), !dbg !2107
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2106, metadata !DIExpression()), !dbg !2107
  %4 = icmp eq ptr %0, null, !dbg !2108
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2110
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2104, metadata !DIExpression()), !dbg !2107
  store i32 10, ptr %5, align 8, !dbg !2111, !tbaa !2047
  %6 = icmp ne ptr %1, null, !dbg !2112
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2114
  br i1 %8, label %10, label %9, !dbg !2114

9:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2115
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
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2128, metadata !DIExpression()), !dbg !2136
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2129, metadata !DIExpression()), !dbg !2136
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2130, metadata !DIExpression()), !dbg !2136
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2131, metadata !DIExpression()), !dbg !2136
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2132, metadata !DIExpression()), !dbg !2136
  %6 = icmp eq ptr %4, null, !dbg !2137
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !2137
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2133, metadata !DIExpression()), !dbg !2136
  %8 = tail call ptr @__errno_location() #40, !dbg !2138
  %9 = load i32, ptr %8, align 4, !dbg !2138, !tbaa !928
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !2134, metadata !DIExpression()), !dbg !2136
  %10 = load i32, ptr %7, align 8, !dbg !2139, !tbaa !2047
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !2140
  %12 = load i32, ptr %11, align 4, !dbg !2140, !tbaa !2097
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !2141
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !2142
  %15 = load ptr, ptr %14, align 8, !dbg !2142, !tbaa !2118
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !2143
  %17 = load ptr, ptr %16, align 8, !dbg !2143, !tbaa !2121
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !2144
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !2135, metadata !DIExpression()), !dbg !2136
  store i32 %9, ptr %8, align 4, !dbg !2145, !tbaa !928
  ret i64 %18, !dbg !2146
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !2147 {
  %10 = alloca i32, align 4, !DIAssignID !2215
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2216
  %12 = alloca i32, align 4, !DIAssignID !2217
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2218
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2219
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2193, metadata !DIExpression(), metadata !2219, metadata ptr %14, metadata !DIExpression()), !dbg !2220
  %15 = alloca i32, align 4, !DIAssignID !2221
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2196, metadata !DIExpression(), metadata !2221, metadata ptr %15, metadata !DIExpression()), !dbg !2222
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2153, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2154, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2155, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2156, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !2157, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !2158, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2159, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2160, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2161, metadata !DIExpression()), !dbg !2223
  %16 = tail call i64 @__ctype_get_mb_cur_max() #37, !dbg !2224
  %17 = icmp eq i64 %16, 1, !dbg !2225
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !2162, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2223
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2163, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2164, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata ptr null, metadata !2165, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2166, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2167, metadata !DIExpression()), !dbg !2223
  %18 = trunc i32 %5 to i8, !dbg !2226
  %19 = lshr i8 %18, 1, !dbg !2226
  %20 = and i8 %19, 1, !dbg !2226
  tail call void @llvm.dbg.value(metadata i8 %20, metadata !2168, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2169, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2170, metadata !DIExpression()), !dbg !2223
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !2227

28:                                               ; preds = %627, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %627 ]
  %30 = phi ptr [ %7, %9 ], [ %116, %627 ]
  %31 = phi ptr [ %8, %9 ], [ %117, %627 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %627 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %627 ], !dbg !2228
  %34 = phi ptr [ null, %9 ], [ %119, %627 ], !dbg !2229
  %35 = phi i64 [ 0, %9 ], [ %120, %627 ], !dbg !2230
  %36 = phi i8 [ 0, %9 ], [ %121, %627 ], !dbg !2231
  %37 = phi i8 [ %20, %9 ], [ %122, %627 ], !dbg !2223
  %38 = phi i8 [ 0, %9 ], [ %142, %627 ], !dbg !2232
  %39 = phi i8 [ 1, %9 ], [ %143, %627 ], !dbg !2233
  %40 = phi i64 [ %1, %9 ], [ %141, %627 ]
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !2154, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i8 %39, metadata !2170, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i8 %38, metadata !2169, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !2168, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i8 %36, metadata !2167, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !2166, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata ptr %34, metadata !2165, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !2164, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2163, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !2156, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata ptr %31, metadata !2161, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !2160, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !2157, metadata !DIExpression()), !dbg !2223
  call void @llvm.dbg.label(metadata !2171), !dbg !2234
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2172, metadata !DIExpression()), !dbg !2223
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
  ], !dbg !2235

41:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2168, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2157, metadata !DIExpression()), !dbg !2223
  br label %114, !dbg !2236

42:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !2168, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2157, metadata !DIExpression()), !dbg !2223
  %43 = and i8 %37, 1, !dbg !2237
  %44 = icmp eq i8 %43, 0, !dbg !2237
  br i1 %44, label %45, label %114, !dbg !2236

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2239
  br i1 %46, label %114, label %47, !dbg !2242

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !2239, !tbaa !937
  br label %114, !dbg !2239

48:                                               ; preds = %28, %28
  call void @llvm.dbg.assign(metadata i1 undef, metadata !611, metadata !DIExpression(), metadata !2217, metadata ptr %12, metadata !DIExpression()), !dbg !2243
  call void @llvm.dbg.assign(metadata i1 undef, metadata !612, metadata !DIExpression(), metadata !2218, metadata ptr %13, metadata !DIExpression()), !dbg !2243
  call void @llvm.dbg.value(metadata ptr @.str.11.88, metadata !608, metadata !DIExpression()), !dbg !2243
  call void @llvm.dbg.value(metadata i32 %29, metadata !609, metadata !DIExpression()), !dbg !2243
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.89, ptr noundef nonnull @.str.11.88, i32 noundef 5) #37, !dbg !2247
  call void @llvm.dbg.value(metadata ptr %49, metadata !610, metadata !DIExpression()), !dbg !2243
  %50 = icmp eq ptr %49, @.str.11.88, !dbg !2248
  br i1 %50, label %51, label %60, !dbg !2250

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #37, !dbg !2251
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #37, !dbg !2252
  call void @llvm.dbg.value(metadata ptr %13, metadata !2253, metadata !DIExpression()), !dbg !2259
  call void @llvm.dbg.value(metadata ptr %13, metadata !2261, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i32 0, metadata !2264, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i64 8, metadata !2265, metadata !DIExpression()), !dbg !2266
  store i64 0, ptr %13, align 8, !dbg !2268
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #37, !dbg !2269
  %53 = icmp eq i64 %52, 3, !dbg !2271
  %54 = load i32, ptr %12, align 4
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !2272
  %57 = icmp eq i32 %29, 9, !dbg !2272
  %58 = select i1 %57, ptr @.str.10.90, ptr @.str.12.91, !dbg !2272
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !2272
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #37, !dbg !2273
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #37, !dbg !2273
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !2243
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !2160, metadata !DIExpression()), !dbg !2223
  call void @llvm.dbg.assign(metadata i1 undef, metadata !611, metadata !DIExpression(), metadata !2215, metadata ptr %10, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.assign(metadata i1 undef, metadata !612, metadata !DIExpression(), metadata !2216, metadata ptr %11, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.value(metadata ptr @.str.12.91, metadata !608, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.value(metadata i32 %29, metadata !609, metadata !DIExpression()), !dbg !2274
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.89, ptr noundef nonnull @.str.12.91, i32 noundef 5) #37, !dbg !2276
  call void @llvm.dbg.value(metadata ptr %62, metadata !610, metadata !DIExpression()), !dbg !2274
  %63 = icmp eq ptr %62, @.str.12.91, !dbg !2277
  br i1 %63, label %64, label %73, !dbg !2278

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #37, !dbg !2279
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #37, !dbg !2280
  call void @llvm.dbg.value(metadata ptr %11, metadata !2253, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata ptr %11, metadata !2261, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i32 0, metadata !2264, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i64 8, metadata !2265, metadata !DIExpression()), !dbg !2283
  store i64 0, ptr %11, align 8, !dbg !2285
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #37, !dbg !2286
  %66 = icmp eq i64 %65, 3, !dbg !2287
  %67 = load i32, ptr %10, align 4
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !2288
  %70 = icmp eq i32 %29, 9, !dbg !2288
  %71 = select i1 %70, ptr @.str.10.90, ptr @.str.12.91, !dbg !2288
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !2288
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #37, !dbg !2289
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #37, !dbg !2289
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !2161, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !2160, metadata !DIExpression()), !dbg !2223
  %76 = and i8 %37, 1, !dbg !2290
  %77 = icmp eq i8 %76, 0, !dbg !2290
  br i1 %77, label %78, label %93, !dbg !2291

78:                                               ; preds = %73
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !2173, metadata !DIExpression()), !dbg !2292
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2163, metadata !DIExpression()), !dbg !2223
  %79 = load i8, ptr %74, align 1, !dbg !2293, !tbaa !937
  %80 = icmp eq i8 %79, 0, !dbg !2295
  br i1 %80, label %93, label %81, !dbg !2295

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  tail call void @llvm.dbg.value(metadata ptr %83, metadata !2173, metadata !DIExpression()), !dbg !2292
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !2163, metadata !DIExpression()), !dbg !2223
  %85 = icmp ult i64 %84, %40, !dbg !2296
  br i1 %85, label %86, label %88, !dbg !2299

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !2296
  store i8 %82, ptr %87, align 1, !dbg !2296, !tbaa !937
  br label %88, !dbg !2296

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !2299
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !2163, metadata !DIExpression()), !dbg !2223
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !2300
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !2173, metadata !DIExpression()), !dbg !2292
  %91 = load i8, ptr %90, align 1, !dbg !2293, !tbaa !937
  %92 = icmp eq i8 %91, 0, !dbg !2295
  br i1 %92, label %93, label %81, !dbg !2295, !llvm.loop !2301

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !2303
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !2163, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2167, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !2165, metadata !DIExpression()), !dbg !2223
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #38, !dbg !2304
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !2166, metadata !DIExpression()), !dbg !2223
  br label %114, !dbg !2305

96:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2167, metadata !DIExpression()), !dbg !2223
  br label %98, !dbg !2306

97:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 undef, metadata !2167, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2168, metadata !DIExpression()), !dbg !2223
  br label %98, !dbg !2307

98:                                               ; preds = %96, %28, %97
  %99 = phi i8 [ %36, %28 ], [ 1, %96 ], [ %36, %97 ], !dbg !2231
  %100 = phi i8 [ %37, %28 ], [ 1, %96 ], [ 1, %97 ], !dbg !2223
  tail call void @llvm.dbg.value(metadata i8 %100, metadata !2168, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i8 %99, metadata !2167, metadata !DIExpression()), !dbg !2223
  %101 = and i8 %100, 1, !dbg !2308
  %102 = icmp eq i8 %101, 0, !dbg !2308
  %103 = select i1 %102, i8 1, i8 %99, !dbg !2310
  br label %104, !dbg !2310

104:                                              ; preds = %98, %28
  %105 = phi i8 [ %36, %28 ], [ %103, %98 ], !dbg !2223
  %106 = phi i8 [ %37, %28 ], [ %100, %98 ], !dbg !2226
  tail call void @llvm.dbg.value(metadata i8 %106, metadata !2168, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i8 %105, metadata !2167, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i32 2, metadata !2157, metadata !DIExpression()), !dbg !2223
  %107 = and i8 %106, 1, !dbg !2311
  %108 = icmp eq i8 %107, 0, !dbg !2311
  br i1 %108, label %109, label %114, !dbg !2313

109:                                              ; preds = %104
  %110 = icmp eq i64 %40, 0, !dbg !2314
  br i1 %110, label %114, label %111, !dbg !2317

111:                                              ; preds = %109
  store i8 39, ptr %0, align 1, !dbg !2314, !tbaa !937
  br label %114, !dbg !2314

112:                                              ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2168, metadata !DIExpression()), !dbg !2223
  br label %114, !dbg !2318

113:                                              ; preds = %28
  call void @abort() #39, !dbg !2319
  unreachable, !dbg !2319

114:                                              ; preds = %41, %104, %111, %109, %28, %42, %47, %45, %112, %93
  %115 = phi i32 [ 0, %112 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %109 ], [ 2, %111 ], [ 2, %104 ], [ 5, %41 ]
  %116 = phi ptr [ %30, %112 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %109 ], [ %30, %111 ], [ %30, %104 ], [ %30, %41 ]
  %117 = phi ptr [ %31, %112 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %109 ], [ %31, %111 ], [ %31, %104 ], [ %31, %41 ]
  %118 = phi i64 [ 0, %112 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %109 ], [ 1, %111 ], [ 0, %104 ], [ 0, %41 ], !dbg !2303
  %119 = phi ptr [ %34, %112 ], [ %75, %93 ], [ @.str.10.90, %45 ], [ @.str.10.90, %47 ], [ @.str.10.90, %42 ], [ %34, %28 ], [ @.str.12.91, %109 ], [ @.str.12.91, %111 ], [ @.str.12.91, %104 ], [ @.str.10.90, %41 ], !dbg !2223
  %120 = phi i64 [ %35, %112 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %109 ], [ 1, %111 ], [ 1, %104 ], [ 1, %41 ], !dbg !2223
  %121 = phi i8 [ %36, %112 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %105, %109 ], [ %105, %111 ], [ %105, %104 ], [ 1, %41 ], !dbg !2223
  %122 = phi i8 [ 0, %112 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %106, %109 ], [ %106, %111 ], [ %106, %104 ], [ 1, %41 ], !dbg !2223
  tail call void @llvm.dbg.value(metadata i8 %122, metadata !2168, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i8 %121, metadata !2167, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i64 %120, metadata !2166, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !2165, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i64 %118, metadata !2163, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata ptr %117, metadata !2161, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata ptr %116, metadata !2160, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i32 %115, metadata !2157, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2178, metadata !DIExpression()), !dbg !2320
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
  br label %138, !dbg !2321

138:                                              ; preds = %602, %114
  %139 = phi i64 [ %32, %114 ], [ %603, %602 ]
  %140 = phi i64 [ %118, %114 ], [ %604, %602 ], !dbg !2303
  %141 = phi i64 [ %33, %114 ], [ %605, %602 ], !dbg !2228
  %142 = phi i8 [ %38, %114 ], [ %606, %602 ], !dbg !2232
  %143 = phi i8 [ %39, %114 ], [ %607, %602 ], !dbg !2233
  %144 = phi i8 [ 0, %114 ], [ %608, %602 ], !dbg !2322
  %145 = phi i64 [ 0, %114 ], [ %611, %602 ], !dbg !2323
  %146 = phi i64 [ %40, %114 ], [ %610, %602 ]
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !2154, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !2178, metadata !DIExpression()), !dbg !2320
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !2172, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !2170, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !2169, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !2164, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2163, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !2156, metadata !DIExpression()), !dbg !2223
  %147 = icmp eq i64 %139, -1, !dbg !2324
  br i1 %147, label %148, label %152, !dbg !2325

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2326
  %150 = load i8, ptr %149, align 1, !dbg !2326, !tbaa !937
  %151 = icmp eq i8 %150, 0, !dbg !2327
  br i1 %151, label %612, label %154, !dbg !2328

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !2329
  br i1 %153, label %612, label %154, !dbg !2328

154:                                              ; preds = %148, %152
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2180, metadata !DIExpression()), !dbg !2330
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2183, metadata !DIExpression()), !dbg !2330
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2184, metadata !DIExpression()), !dbg !2330
  br i1 %128, label %155, label %170, !dbg !2331

155:                                              ; preds = %154
  %156 = add i64 %145, %120, !dbg !2333
  %157 = select i1 %147, i1 %129, i1 false, !dbg !2334
  br i1 %157, label %158, label %160, !dbg !2334

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !2335
  tail call void @llvm.dbg.value(metadata i64 %159, metadata !2156, metadata !DIExpression()), !dbg !2223
  br label %160, !dbg !2336

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !2336
  tail call void @llvm.dbg.value(metadata i64 %161, metadata !2156, metadata !DIExpression()), !dbg !2223
  %162 = icmp ugt i64 %156, %161, !dbg !2337
  br i1 %162, label %170, label %163, !dbg !2338

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2339
  call void @llvm.dbg.value(metadata ptr %164, metadata !2340, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata ptr %119, metadata !2343, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i64 %120, metadata !2344, metadata !DIExpression()), !dbg !2345
  %165 = call i32 @bcmp(ptr %164, ptr %119, i64 %120), !dbg !2347
  %166 = icmp ne i32 %165, 0, !dbg !2348
  %167 = select i1 %166, i1 true, i1 %131, !dbg !2349
  %168 = xor i1 %166, true, !dbg !2349
  %169 = zext i1 %168 to i8, !dbg !2349
  br i1 %167, label %170, label %666, !dbg !2349

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !2330
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !2330
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !2180, metadata !DIExpression()), !dbg !2330
  tail call void @llvm.dbg.value(metadata i64 %171, metadata !2156, metadata !DIExpression()), !dbg !2223
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2350
  %175 = load i8, ptr %174, align 1, !dbg !2350, !tbaa !937
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !2185, metadata !DIExpression()), !dbg !2330
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
  ], !dbg !2351

176:                                              ; preds = %170
  br i1 %124, label %177, label %225, !dbg !2352

177:                                              ; preds = %176
  br i1 %131, label %178, label %659, !dbg !2353

178:                                              ; preds = %177
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2183, metadata !DIExpression()), !dbg !2330
  %179 = and i8 %144, 1, !dbg !2357
  %180 = icmp eq i8 %179, 0, !dbg !2357
  %181 = select i1 %132, i1 %180, i1 false, !dbg !2357
  br i1 %181, label %182, label %198, !dbg !2357

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !2359
  br i1 %183, label %184, label %186, !dbg !2363

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2359
  store i8 39, ptr %185, align 1, !dbg !2359, !tbaa !937
  br label %186, !dbg !2359

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !2363
  tail call void @llvm.dbg.value(metadata i64 %187, metadata !2163, metadata !DIExpression()), !dbg !2223
  %188 = icmp ult i64 %187, %146, !dbg !2364
  br i1 %188, label %189, label %191, !dbg !2367

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !2364
  store i8 36, ptr %190, align 1, !dbg !2364, !tbaa !937
  br label %191, !dbg !2364

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !2367
  tail call void @llvm.dbg.value(metadata i64 %192, metadata !2163, metadata !DIExpression()), !dbg !2223
  %193 = icmp ult i64 %192, %146, !dbg !2368
  br i1 %193, label %194, label %196, !dbg !2371

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !2368
  store i8 39, ptr %195, align 1, !dbg !2368, !tbaa !937
  br label %196, !dbg !2368

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !2371
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !2163, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2172, metadata !DIExpression()), !dbg !2223
  br label %198, !dbg !2372

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !2223
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !2223
  tail call void @llvm.dbg.value(metadata i8 %200, metadata !2172, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i64 %199, metadata !2163, metadata !DIExpression()), !dbg !2223
  %201 = icmp ult i64 %199, %146, !dbg !2373
  br i1 %201, label %202, label %204, !dbg !2376

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !2373
  store i8 92, ptr %203, align 1, !dbg !2373, !tbaa !937
  br label %204, !dbg !2373

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !2376
  tail call void @llvm.dbg.value(metadata i64 %205, metadata !2163, metadata !DIExpression()), !dbg !2223
  br i1 %125, label %206, label %476, !dbg !2377

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !2379
  %208 = icmp ult i64 %207, %171, !dbg !2380
  br i1 %208, label %209, label %465, !dbg !2381

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !2382
  %211 = load i8, ptr %210, align 1, !dbg !2382, !tbaa !937
  %212 = add i8 %211, -48, !dbg !2383
  %213 = icmp ult i8 %212, 10, !dbg !2383
  br i1 %213, label %214, label %465, !dbg !2383

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !2384
  br i1 %215, label %216, label %218, !dbg !2388

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !2384
  store i8 48, ptr %217, align 1, !dbg !2384, !tbaa !937
  br label %218, !dbg !2384

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !2388
  tail call void @llvm.dbg.value(metadata i64 %219, metadata !2163, metadata !DIExpression()), !dbg !2223
  %220 = icmp ult i64 %219, %146, !dbg !2389
  br i1 %220, label %221, label %223, !dbg !2392

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !2389
  store i8 48, ptr %222, align 1, !dbg !2389, !tbaa !937
  br label %223, !dbg !2389

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !2392
  tail call void @llvm.dbg.value(metadata i64 %224, metadata !2163, metadata !DIExpression()), !dbg !2223
  br label %465, !dbg !2393

225:                                              ; preds = %176
  br i1 %25, label %476, label %602, !dbg !2394

226:                                              ; preds = %170
  switch i32 %115, label %465 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !2395

227:                                              ; preds = %226
  br i1 %131, label %465, label %655, !dbg !2396

228:                                              ; preds = %226
  br i1 %23, label %465, label %229, !dbg !2398

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !2400
  %231 = icmp ult i64 %230, %171, !dbg !2401
  br i1 %231, label %232, label %465, !dbg !2402

232:                                              ; preds = %229
  %233 = getelementptr i8, ptr %174, i64 1, !dbg !2403
  %234 = load i8, ptr %233, align 1, !dbg !2403, !tbaa !937
  %235 = icmp eq i8 %234, 63, !dbg !2404
  br i1 %235, label %236, label %465, !dbg !2405

236:                                              ; preds = %232
  %237 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !2406
  %238 = load i8, ptr %237, align 1, !dbg !2406, !tbaa !937
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
  ], !dbg !2407

239:                                              ; preds = %236, %236, %236, %236, %236, %236, %236, %236, %236
  br i1 %131, label %240, label %666, !dbg !2408

240:                                              ; preds = %239
  tail call void @llvm.dbg.value(metadata i8 %238, metadata !2185, metadata !DIExpression()), !dbg !2330
  tail call void @llvm.dbg.value(metadata i64 %230, metadata !2178, metadata !DIExpression()), !dbg !2320
  %241 = icmp ult i64 %140, %146, !dbg !2410
  br i1 %241, label %242, label %244, !dbg !2413

242:                                              ; preds = %240
  %243 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2410
  store i8 63, ptr %243, align 1, !dbg !2410, !tbaa !937
  br label %244, !dbg !2410

244:                                              ; preds = %242, %240
  %245 = add i64 %140, 1, !dbg !2413
  tail call void @llvm.dbg.value(metadata i64 %245, metadata !2163, metadata !DIExpression()), !dbg !2223
  %246 = icmp ult i64 %245, %146, !dbg !2414
  br i1 %246, label %247, label %249, !dbg !2417

247:                                              ; preds = %244
  %248 = getelementptr inbounds i8, ptr %0, i64 %245, !dbg !2414
  store i8 34, ptr %248, align 1, !dbg !2414, !tbaa !937
  br label %249, !dbg !2414

249:                                              ; preds = %247, %244
  %250 = add i64 %140, 2, !dbg !2417
  tail call void @llvm.dbg.value(metadata i64 %250, metadata !2163, metadata !DIExpression()), !dbg !2223
  %251 = icmp ult i64 %250, %146, !dbg !2418
  br i1 %251, label %252, label %254, !dbg !2421

252:                                              ; preds = %249
  %253 = getelementptr inbounds i8, ptr %0, i64 %250, !dbg !2418
  store i8 34, ptr %253, align 1, !dbg !2418, !tbaa !937
  br label %254, !dbg !2418

254:                                              ; preds = %252, %249
  %255 = add i64 %140, 3, !dbg !2421
  tail call void @llvm.dbg.value(metadata i64 %255, metadata !2163, metadata !DIExpression()), !dbg !2223
  %256 = icmp ult i64 %255, %146, !dbg !2422
  br i1 %256, label %257, label %259, !dbg !2425

257:                                              ; preds = %254
  %258 = getelementptr inbounds i8, ptr %0, i64 %255, !dbg !2422
  store i8 63, ptr %258, align 1, !dbg !2422, !tbaa !937
  br label %259, !dbg !2422

259:                                              ; preds = %257, %254
  %260 = add i64 %140, 4, !dbg !2425
  tail call void @llvm.dbg.value(metadata i64 %260, metadata !2163, metadata !DIExpression()), !dbg !2223
  br label %465, !dbg !2426

261:                                              ; preds = %170
  br label %272, !dbg !2427

262:                                              ; preds = %170
  br label %272, !dbg !2428

263:                                              ; preds = %170
  br label %270, !dbg !2429

264:                                              ; preds = %170
  br label %270, !dbg !2430

265:                                              ; preds = %170
  br label %272, !dbg !2431

266:                                              ; preds = %170
  br i1 %132, label %267, label %268, !dbg !2432

267:                                              ; preds = %266
  br i1 %131, label %558, label %655, !dbg !2433

268:                                              ; preds = %266
  br i1 %124, label %269, label %476, !dbg !2436

269:                                              ; preds = %268
  br i1 %135, label %558, label %520, !dbg !2438

270:                                              ; preds = %170, %264, %263
  %271 = phi i8 [ 116, %264 ], [ 114, %263 ], [ 110, %170 ], !dbg !2439
  call void @llvm.dbg.label(metadata !2186), !dbg !2440
  br i1 %133, label %272, label %655, !dbg !2441

272:                                              ; preds = %170, %270, %265, %262, %261
  %273 = phi i8 [ %271, %270 ], [ 118, %265 ], [ 102, %262 ], [ 98, %261 ], [ 97, %170 ], !dbg !2439
  call void @llvm.dbg.label(metadata !2189), !dbg !2443
  br i1 %124, label %520, label %476, !dbg !2444

274:                                              ; preds = %170, %170
  switch i64 %171, label %465 [
    i64 -1, label %275
    i64 1, label %278
  ], !dbg !2445

275:                                              ; preds = %274
  %276 = load i8, ptr %21, align 1, !dbg !2446, !tbaa !937
  %277 = icmp eq i8 %276, 0, !dbg !2448
  br i1 %277, label %278, label %465, !dbg !2449

278:                                              ; preds = %274, %275, %170, %170
  %279 = icmp eq i64 %145, 0, !dbg !2450
  br i1 %279, label %280, label %465, !dbg !2452

280:                                              ; preds = %278, %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2184, metadata !DIExpression()), !dbg !2330
  br label %281, !dbg !2453

281:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %280
  %282 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %280 ], !dbg !2330
  tail call void @llvm.dbg.value(metadata i8 %282, metadata !2184, metadata !DIExpression()), !dbg !2330
  br i1 %133, label %465, label %655, !dbg !2454

283:                                              ; preds = %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2169, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2184, metadata !DIExpression()), !dbg !2330
  br i1 %132, label %284, label %465, !dbg !2456

284:                                              ; preds = %283
  br i1 %131, label %285, label %655, !dbg !2457

285:                                              ; preds = %284
  %286 = icmp eq i64 %146, 0, !dbg !2460
  %287 = icmp ne i64 %141, 0
  %288 = select i1 %286, i1 true, i1 %287, !dbg !2462
  %289 = select i1 %288, i64 %141, i64 %146, !dbg !2462
  %290 = select i1 %288, i64 %146, i64 0, !dbg !2462
  tail call void @llvm.dbg.value(metadata i64 %290, metadata !2154, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i64 %289, metadata !2164, metadata !DIExpression()), !dbg !2223
  %291 = icmp ult i64 %140, %290, !dbg !2463
  br i1 %291, label %292, label %294, !dbg !2466

292:                                              ; preds = %285
  %293 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2463
  store i8 39, ptr %293, align 1, !dbg !2463, !tbaa !937
  br label %294, !dbg !2463

294:                                              ; preds = %292, %285
  %295 = add i64 %140, 1, !dbg !2466
  tail call void @llvm.dbg.value(metadata i64 %295, metadata !2163, metadata !DIExpression()), !dbg !2223
  %296 = icmp ult i64 %295, %290, !dbg !2467
  br i1 %296, label %297, label %299, !dbg !2470

297:                                              ; preds = %294
  %298 = getelementptr inbounds i8, ptr %0, i64 %295, !dbg !2467
  store i8 92, ptr %298, align 1, !dbg !2467, !tbaa !937
  br label %299, !dbg !2467

299:                                              ; preds = %297, %294
  %300 = add i64 %140, 2, !dbg !2470
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !2163, metadata !DIExpression()), !dbg !2223
  %301 = icmp ult i64 %300, %290, !dbg !2471
  br i1 %301, label %302, label %304, !dbg !2474

302:                                              ; preds = %299
  %303 = getelementptr inbounds i8, ptr %0, i64 %300, !dbg !2471
  store i8 39, ptr %303, align 1, !dbg !2471, !tbaa !937
  br label %304, !dbg !2471

304:                                              ; preds = %302, %299
  %305 = add i64 %140, 3, !dbg !2474
  tail call void @llvm.dbg.value(metadata i64 %305, metadata !2163, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2172, metadata !DIExpression()), !dbg !2223
  br label %465, !dbg !2475

306:                                              ; preds = %170
  br i1 %17, label %307, label %315, !dbg !2476

307:                                              ; preds = %306
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2190, metadata !DIExpression()), !dbg !2477
  %308 = tail call ptr @__ctype_b_loc() #40, !dbg !2478
  %309 = load ptr, ptr %308, align 8, !dbg !2478, !tbaa !858
  %310 = zext i8 %175 to i64
  %311 = getelementptr inbounds i16, ptr %309, i64 %310, !dbg !2478
  %312 = load i16, ptr %311, align 2, !dbg !2478, !tbaa !969
  %313 = and i16 %312, 16384, !dbg !2480
  %314 = icmp ne i16 %313, 0, !dbg !2480
  tail call void @llvm.dbg.value(metadata i16 %312, metadata !2192, metadata !DIExpression(DW_OP_constu, 14, DW_OP_shr, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2477
  br label %355, !dbg !2481

315:                                              ; preds = %306
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #37, !dbg !2482
  call void @llvm.dbg.value(metadata ptr %14, metadata !2253, metadata !DIExpression()), !dbg !2483
  call void @llvm.dbg.value(metadata ptr %14, metadata !2261, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata i32 0, metadata !2264, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata i64 8, metadata !2265, metadata !DIExpression()), !dbg !2485
  store i64 0, ptr %14, align 8, !dbg !2487
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2190, metadata !DIExpression()), !dbg !2477
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2192, metadata !DIExpression()), !dbg !2477
  %316 = icmp eq i64 %171, -1, !dbg !2488
  br i1 %316, label %317, label %319, !dbg !2490

317:                                              ; preds = %315
  %318 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !2491
  tail call void @llvm.dbg.value(metadata i64 %318, metadata !2156, metadata !DIExpression()), !dbg !2223
  br label %319, !dbg !2492

319:                                              ; preds = %315, %317
  %320 = phi i64 [ %318, %317 ], [ %171, %315 ], !dbg !2330
  tail call void @llvm.dbg.value(metadata i64 %320, metadata !2156, metadata !DIExpression()), !dbg !2223
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #37, !dbg !2493
  %321 = sub i64 %320, %145, !dbg !2494
  %322 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %321, ptr noundef nonnull %14) #37, !dbg !2495
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !2200, metadata !DIExpression()), !dbg !2222
  switch i64 %322, label %336 [
    i64 0, label %351
    i64 -1, label %325
    i64 -2, label %323
  ], !dbg !2496

323:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2190, metadata !DIExpression()), !dbg !2477
  %324 = icmp ult i64 %145, %320, !dbg !2497
  br i1 %324, label %326, label %351, !dbg !2499

325:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2192, metadata !DIExpression()), !dbg !2477
  br label %351, !dbg !2500

326:                                              ; preds = %323, %332
  %327 = phi i64 [ %334, %332 ], [ %145, %323 ]
  %328 = phi i64 [ %333, %332 ], [ 0, %323 ]
  tail call void @llvm.dbg.value(metadata i64 %328, metadata !2190, metadata !DIExpression()), !dbg !2477
  %329 = getelementptr inbounds i8, ptr %2, i64 %327, !dbg !2502
  %330 = load i8, ptr %329, align 1, !dbg !2502, !tbaa !937
  %331 = icmp eq i8 %330, 0, !dbg !2499
  br i1 %331, label %351, label %332, !dbg !2503

332:                                              ; preds = %326
  %333 = add i64 %328, 1, !dbg !2504
  tail call void @llvm.dbg.value(metadata i64 %333, metadata !2190, metadata !DIExpression()), !dbg !2477
  %334 = add i64 %333, %145, !dbg !2505
  %335 = icmp eq i64 %333, %321, !dbg !2497
  br i1 %335, label %351, label %326, !dbg !2499, !llvm.loop !2506

336:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2201, metadata !DIExpression()), !dbg !2507
  %337 = icmp ugt i64 %322, 1
  %338 = and i1 %134, %337, !dbg !2508
  %339 = and i1 %338, %132, !dbg !2508
  br i1 %339, label %340, label %347, !dbg !2508

340:                                              ; preds = %336, %344
  %341 = phi i64 [ %345, %344 ], [ 1, %336 ]
  tail call void @llvm.dbg.value(metadata i64 %341, metadata !2201, metadata !DIExpression()), !dbg !2507
  %342 = getelementptr i8, ptr %174, i64 %341, !dbg !2509
  %343 = load i8, ptr %342, align 1, !dbg !2509, !tbaa !937
  switch i8 %343, label %344 [
    i8 91, label %354
    i8 92, label %354
    i8 94, label %354
    i8 96, label %354
    i8 124, label %354
  ], !dbg !2511

344:                                              ; preds = %340
  %345 = add nuw i64 %341, 1, !dbg !2512
  tail call void @llvm.dbg.value(metadata i64 %345, metadata !2201, metadata !DIExpression()), !dbg !2507
  %346 = icmp eq i64 %345, %322, !dbg !2513
  br i1 %346, label %347, label %340, !dbg !2514, !llvm.loop !2515

347:                                              ; preds = %344, %336
  %348 = load i32, ptr %15, align 4, !dbg !2517, !tbaa !928
  call void @llvm.dbg.value(metadata i32 %348, metadata !2519, metadata !DIExpression()), !dbg !2527
  %349 = call i32 @iswprint(i32 noundef %348) #37, !dbg !2529
  %350 = icmp ne i32 %349, 0, !dbg !2530
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2192, metadata !DIExpression()), !dbg !2477
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !2190, metadata !DIExpression()), !dbg !2477
  br label %351, !dbg !2531

351:                                              ; preds = %326, %332, %323, %325, %347, %319
  %352 = phi i64 [ %322, %319 ], [ %322, %347 ], [ 0, %325 ], [ 0, %323 ], [ %328, %326 ], [ %321, %332 ]
  %353 = phi i1 [ true, %319 ], [ %350, %347 ], [ false, %325 ], [ false, %323 ], [ false, %332 ], [ false, %326 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2192, metadata !DIExpression()), !dbg !2477
  tail call void @llvm.dbg.value(metadata i64 %352, metadata !2190, metadata !DIExpression()), !dbg !2477
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !2532
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !2533
  br label %355

354:                                              ; preds = %340, %340, %340, %340, %340
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2192, metadata !DIExpression()), !dbg !2477
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2190, metadata !DIExpression()), !dbg !2477
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !2532
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !2533
  br label %655

355:                                              ; preds = %351, %307
  %356 = phi i64 [ %171, %307 ], [ %320, %351 ], !dbg !2330
  %357 = phi i64 [ 1, %307 ], [ %352, %351 ], !dbg !2534
  %358 = phi i1 [ %314, %307 ], [ %353, %351 ], !dbg !2534
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2192, metadata !DIExpression()), !dbg !2477
  tail call void @llvm.dbg.value(metadata i64 %357, metadata !2190, metadata !DIExpression()), !dbg !2477
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !2156, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i1 %358, metadata !2184, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2330
  %359 = icmp ult i64 %357, 2, !dbg !2535
  %360 = select i1 %136, i1 true, i1 %358
  %361 = select i1 %359, i1 %360, i1 false, !dbg !2536
  br i1 %361, label %461, label %362, !dbg !2536

362:                                              ; preds = %355
  %363 = add i64 %357, %145, !dbg !2537
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !2209, metadata !DIExpression()), !dbg !2538
  br label %364, !dbg !2539

364:                                              ; preds = %457, %362
  %365 = phi i64 [ %140, %362 ], [ %458, %457 ], !dbg !2223
  %366 = phi i8 [ %144, %362 ], [ %453, %457 ], !dbg !2322
  %367 = phi i64 [ %145, %362 ], [ %432, %457 ], !dbg !2320
  %368 = phi i8 [ %173, %362 ], [ %429, %457 ], !dbg !2330
  %369 = phi i8 [ 0, %362 ], [ %430, %457 ], !dbg !2540
  %370 = phi i8 [ %175, %362 ], [ %460, %457 ], !dbg !2330
  tail call void @llvm.dbg.value(metadata i8 %370, metadata !2185, metadata !DIExpression()), !dbg !2330
  tail call void @llvm.dbg.value(metadata i8 %369, metadata !2183, metadata !DIExpression()), !dbg !2330
  tail call void @llvm.dbg.value(metadata i8 %368, metadata !2180, metadata !DIExpression()), !dbg !2330
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !2178, metadata !DIExpression()), !dbg !2320
  tail call void @llvm.dbg.value(metadata i8 %366, metadata !2172, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i64 %365, metadata !2163, metadata !DIExpression()), !dbg !2223
  br i1 %360, label %417, label %371, !dbg !2541

371:                                              ; preds = %364
  br i1 %131, label %372, label %659, !dbg !2546

372:                                              ; preds = %371
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2183, metadata !DIExpression()), !dbg !2330
  %373 = and i8 %366, 1, !dbg !2549
  %374 = icmp eq i8 %373, 0, !dbg !2549
  %375 = select i1 %132, i1 %374, i1 false, !dbg !2549
  br i1 %375, label %376, label %392, !dbg !2549

376:                                              ; preds = %372
  %377 = icmp ult i64 %365, %146, !dbg !2551
  br i1 %377, label %378, label %380, !dbg !2555

378:                                              ; preds = %376
  %379 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !2551
  store i8 39, ptr %379, align 1, !dbg !2551, !tbaa !937
  br label %380, !dbg !2551

380:                                              ; preds = %378, %376
  %381 = add i64 %365, 1, !dbg !2555
  tail call void @llvm.dbg.value(metadata i64 %381, metadata !2163, metadata !DIExpression()), !dbg !2223
  %382 = icmp ult i64 %381, %146, !dbg !2556
  br i1 %382, label %383, label %385, !dbg !2559

383:                                              ; preds = %380
  %384 = getelementptr inbounds i8, ptr %0, i64 %381, !dbg !2556
  store i8 36, ptr %384, align 1, !dbg !2556, !tbaa !937
  br label %385, !dbg !2556

385:                                              ; preds = %383, %380
  %386 = add i64 %365, 2, !dbg !2559
  tail call void @llvm.dbg.value(metadata i64 %386, metadata !2163, metadata !DIExpression()), !dbg !2223
  %387 = icmp ult i64 %386, %146, !dbg !2560
  br i1 %387, label %388, label %390, !dbg !2563

388:                                              ; preds = %385
  %389 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !2560
  store i8 39, ptr %389, align 1, !dbg !2560, !tbaa !937
  br label %390, !dbg !2560

390:                                              ; preds = %388, %385
  %391 = add i64 %365, 3, !dbg !2563
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !2163, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2172, metadata !DIExpression()), !dbg !2223
  br label %392, !dbg !2564

392:                                              ; preds = %372, %390
  %393 = phi i64 [ %391, %390 ], [ %365, %372 ], !dbg !2223
  %394 = phi i8 [ 1, %390 ], [ %366, %372 ], !dbg !2223
  tail call void @llvm.dbg.value(metadata i8 %394, metadata !2172, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i64 %393, metadata !2163, metadata !DIExpression()), !dbg !2223
  %395 = icmp ult i64 %393, %146, !dbg !2565
  br i1 %395, label %396, label %398, !dbg !2568

396:                                              ; preds = %392
  %397 = getelementptr inbounds i8, ptr %0, i64 %393, !dbg !2565
  store i8 92, ptr %397, align 1, !dbg !2565, !tbaa !937
  br label %398, !dbg !2565

398:                                              ; preds = %396, %392
  %399 = add i64 %393, 1, !dbg !2568
  tail call void @llvm.dbg.value(metadata i64 %399, metadata !2163, metadata !DIExpression()), !dbg !2223
  %400 = icmp ult i64 %399, %146, !dbg !2569
  br i1 %400, label %401, label %405, !dbg !2572

401:                                              ; preds = %398
  %402 = lshr i8 %370, 6
  %403 = or disjoint i8 %402, 48, !dbg !2569
  %404 = getelementptr inbounds i8, ptr %0, i64 %399, !dbg !2569
  store i8 %403, ptr %404, align 1, !dbg !2569, !tbaa !937
  br label %405, !dbg !2569

405:                                              ; preds = %401, %398
  %406 = add i64 %393, 2, !dbg !2572
  tail call void @llvm.dbg.value(metadata i64 %406, metadata !2163, metadata !DIExpression()), !dbg !2223
  %407 = icmp ult i64 %406, %146, !dbg !2573
  br i1 %407, label %408, label %413, !dbg !2576

408:                                              ; preds = %405
  %409 = lshr i8 %370, 3
  %410 = and i8 %409, 7, !dbg !2573
  %411 = or disjoint i8 %410, 48, !dbg !2573
  %412 = getelementptr inbounds i8, ptr %0, i64 %406, !dbg !2573
  store i8 %411, ptr %412, align 1, !dbg !2573, !tbaa !937
  br label %413, !dbg !2573

413:                                              ; preds = %408, %405
  %414 = add i64 %393, 3, !dbg !2576
  tail call void @llvm.dbg.value(metadata i64 %414, metadata !2163, metadata !DIExpression()), !dbg !2223
  %415 = and i8 %370, 7, !dbg !2577
  %416 = or disjoint i8 %415, 48, !dbg !2578
  tail call void @llvm.dbg.value(metadata i8 %416, metadata !2185, metadata !DIExpression()), !dbg !2330
  br label %426, !dbg !2579

417:                                              ; preds = %364
  %418 = and i8 %368, 1, !dbg !2580
  %419 = icmp eq i8 %418, 0, !dbg !2580
  br i1 %419, label %426, label %420, !dbg !2582

420:                                              ; preds = %417
  %421 = icmp ult i64 %365, %146, !dbg !2583
  br i1 %421, label %422, label %424, !dbg !2587

422:                                              ; preds = %420
  %423 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !2583
  store i8 92, ptr %423, align 1, !dbg !2583, !tbaa !937
  br label %424, !dbg !2583

424:                                              ; preds = %422, %420
  %425 = add i64 %365, 1, !dbg !2587
  tail call void @llvm.dbg.value(metadata i64 %425, metadata !2163, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2180, metadata !DIExpression()), !dbg !2330
  br label %426, !dbg !2588

426:                                              ; preds = %417, %424, %413
  %427 = phi i64 [ %425, %424 ], [ %365, %417 ], [ %414, %413 ], !dbg !2223
  %428 = phi i8 [ %366, %424 ], [ %366, %417 ], [ %394, %413 ], !dbg !2322
  %429 = phi i8 [ 0, %424 ], [ %368, %417 ], [ %368, %413 ], !dbg !2330
  %430 = phi i8 [ %369, %424 ], [ %369, %417 ], [ 1, %413 ], !dbg !2330
  %431 = phi i8 [ %370, %424 ], [ %370, %417 ], [ %416, %413 ], !dbg !2330
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !2185, metadata !DIExpression()), !dbg !2330
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !2183, metadata !DIExpression()), !dbg !2330
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !2180, metadata !DIExpression()), !dbg !2330
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !2172, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !2163, metadata !DIExpression()), !dbg !2223
  %432 = add i64 %367, 1, !dbg !2589
  %433 = icmp ugt i64 %363, %432, !dbg !2591
  br i1 %433, label %434, label %463, !dbg !2592

434:                                              ; preds = %426
  %435 = and i8 %428, 1, !dbg !2593
  %436 = icmp ne i8 %435, 0, !dbg !2593
  %437 = and i8 %430, 1, !dbg !2593
  %438 = icmp eq i8 %437, 0, !dbg !2593
  %439 = select i1 %436, i1 %438, i1 false, !dbg !2593
  br i1 %439, label %440, label %451, !dbg !2593

440:                                              ; preds = %434
  %441 = icmp ult i64 %427, %146, !dbg !2596
  br i1 %441, label %442, label %444, !dbg !2600

442:                                              ; preds = %440
  %443 = getelementptr inbounds i8, ptr %0, i64 %427, !dbg !2596
  store i8 39, ptr %443, align 1, !dbg !2596, !tbaa !937
  br label %444, !dbg !2596

444:                                              ; preds = %442, %440
  %445 = add i64 %427, 1, !dbg !2600
  tail call void @llvm.dbg.value(metadata i64 %445, metadata !2163, metadata !DIExpression()), !dbg !2223
  %446 = icmp ult i64 %445, %146, !dbg !2601
  br i1 %446, label %447, label %449, !dbg !2604

447:                                              ; preds = %444
  %448 = getelementptr inbounds i8, ptr %0, i64 %445, !dbg !2601
  store i8 39, ptr %448, align 1, !dbg !2601, !tbaa !937
  br label %449, !dbg !2601

449:                                              ; preds = %447, %444
  %450 = add i64 %427, 2, !dbg !2604
  tail call void @llvm.dbg.value(metadata i64 %450, metadata !2163, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2172, metadata !DIExpression()), !dbg !2223
  br label %451, !dbg !2605

451:                                              ; preds = %434, %449
  %452 = phi i64 [ %450, %449 ], [ %427, %434 ], !dbg !2606
  %453 = phi i8 [ 0, %449 ], [ %428, %434 ], !dbg !2223
  tail call void @llvm.dbg.value(metadata i8 %453, metadata !2172, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i64 %452, metadata !2163, metadata !DIExpression()), !dbg !2223
  %454 = icmp ult i64 %452, %146, !dbg !2607
  br i1 %454, label %455, label %457, !dbg !2610

455:                                              ; preds = %451
  %456 = getelementptr inbounds i8, ptr %0, i64 %452, !dbg !2607
  store i8 %431, ptr %456, align 1, !dbg !2607, !tbaa !937
  br label %457, !dbg !2607

457:                                              ; preds = %455, %451
  %458 = add i64 %452, 1, !dbg !2610
  tail call void @llvm.dbg.value(metadata i64 %458, metadata !2163, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i64 %432, metadata !2178, metadata !DIExpression()), !dbg !2320
  %459 = getelementptr inbounds i8, ptr %2, i64 %432, !dbg !2611
  %460 = load i8, ptr %459, align 1, !dbg !2611, !tbaa !937
  tail call void @llvm.dbg.value(metadata i8 %460, metadata !2185, metadata !DIExpression()), !dbg !2330
  br label %364, !dbg !2612, !llvm.loop !2613

461:                                              ; preds = %355
  %462 = zext i1 %358 to i8, !dbg !2330
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !2185, metadata !DIExpression()), !dbg !2330
  tail call void @llvm.dbg.value(metadata i8 %462, metadata !2184, metadata !DIExpression()), !dbg !2330
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2183, metadata !DIExpression()), !dbg !2330
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !2180, metadata !DIExpression()), !dbg !2330
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !2178, metadata !DIExpression()), !dbg !2320
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !2172, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2163, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !2156, metadata !DIExpression()), !dbg !2223
  br label %465

463:                                              ; preds = %426
  %464 = zext i1 %358 to i8, !dbg !2330
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !2185, metadata !DIExpression()), !dbg !2330
  tail call void @llvm.dbg.value(metadata i8 %464, metadata !2184, metadata !DIExpression()), !dbg !2330
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !2183, metadata !DIExpression()), !dbg !2330
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !2180, metadata !DIExpression()), !dbg !2330
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !2178, metadata !DIExpression()), !dbg !2320
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !2172, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !2163, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !2156, metadata !DIExpression()), !dbg !2223
  br label %558

465:                                              ; preds = %461, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %274, %206, %209, %223, %283, %304, %281, %278, %275, %226, %227, %259, %236, %232, %229, %228
  %466 = phi i64 [ %171, %304 ], [ %171, %283 ], [ %171, %281 ], [ %171, %278 ], [ -1, %275 ], [ %171, %226 ], [ %171, %236 ], [ %171, %259 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %274 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %356, %461 ], !dbg !2616
  %467 = phi i64 [ %305, %304 ], [ %140, %283 ], [ %140, %281 ], [ %140, %278 ], [ %140, %275 ], [ %140, %226 ], [ %140, %236 ], [ %260, %259 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %274 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %461 ], !dbg !2223
  %468 = phi i64 [ %289, %304 ], [ %141, %283 ], [ %141, %281 ], [ %141, %278 ], [ %141, %275 ], [ %141, %226 ], [ %141, %236 ], [ %141, %259 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %274 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %461 ], !dbg !2228
  %469 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %142, %281 ], [ %142, %278 ], [ %142, %275 ], [ %142, %226 ], [ %142, %236 ], [ %142, %259 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %274 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %461 ], !dbg !2223
  %470 = phi i8 [ 0, %304 ], [ %144, %283 ], [ %144, %281 ], [ %144, %278 ], [ %144, %275 ], [ %144, %226 ], [ %144, %236 ], [ %144, %259 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %274 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %461 ], !dbg !2223
  %471 = phi i64 [ %145, %304 ], [ %145, %283 ], [ %145, %281 ], [ %145, %278 ], [ %145, %275 ], [ %145, %226 ], [ %145, %236 ], [ %230, %259 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %274 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %461 ], !dbg !2320
  %472 = phi i8 [ 0, %304 ], [ 0, %283 ], [ 0, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %274 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %461 ], !dbg !2330
  %473 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %282, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %274 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %462, %461 ], !dbg !2330
  %474 = phi i8 [ 39, %304 ], [ 39, %283 ], [ %175, %281 ], [ %175, %278 ], [ %175, %275 ], [ 63, %226 ], [ 63, %236 ], [ %238, %259 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %274 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %461 ], !dbg !2330
  %475 = phi i64 [ %290, %304 ], [ %146, %283 ], [ %146, %281 ], [ %146, %278 ], [ %146, %275 ], [ %146, %226 ], [ %146, %236 ], [ %146, %259 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %274 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %461 ]
  tail call void @llvm.dbg.value(metadata i64 %475, metadata !2154, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i8 %474, metadata !2185, metadata !DIExpression()), !dbg !2330
  tail call void @llvm.dbg.value(metadata i8 %473, metadata !2184, metadata !DIExpression()), !dbg !2330
  tail call void @llvm.dbg.value(metadata i8 %472, metadata !2183, metadata !DIExpression()), !dbg !2330
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !2180, metadata !DIExpression()), !dbg !2330
  tail call void @llvm.dbg.value(metadata i64 %471, metadata !2178, metadata !DIExpression()), !dbg !2320
  tail call void @llvm.dbg.value(metadata i8 %470, metadata !2172, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i8 %469, metadata !2169, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i64 %468, metadata !2164, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i64 %467, metadata !2163, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i64 %466, metadata !2156, metadata !DIExpression()), !dbg !2223
  br i1 %126, label %487, label %476, !dbg !2617

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
  br i1 %137, label %488, label %509, !dbg !2619

487:                                              ; preds = %465
  br i1 %27, label %509, label %488, !dbg !2620

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
  %499 = lshr i8 %490, 5, !dbg !2621
  %500 = zext nneg i8 %499 to i64, !dbg !2621
  %501 = getelementptr inbounds i32, ptr %6, i64 %500, !dbg !2622
  %502 = load i32, ptr %501, align 4, !dbg !2622, !tbaa !928
  %503 = and i8 %490, 31, !dbg !2623
  %504 = zext nneg i8 %503 to i32, !dbg !2623
  %505 = shl nuw i32 1, %504, !dbg !2624
  %506 = and i32 %502, %505, !dbg !2624
  %507 = icmp eq i32 %506, 0, !dbg !2624
  %508 = and i1 %172, %507, !dbg !2625
  br i1 %508, label %558, label %520, !dbg !2625

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
  br i1 %172, label %558, label %520, !dbg !2626

520:                                              ; preds = %269, %272, %509, %488
  %521 = phi i64 [ %498, %488 ], [ %519, %509 ], [ %171, %272 ], [ %171, %269 ], !dbg !2616
  %522 = phi i64 [ %497, %488 ], [ %518, %509 ], [ %140, %272 ], [ %140, %269 ], !dbg !2223
  %523 = phi i64 [ %496, %488 ], [ %517, %509 ], [ %141, %272 ], [ %141, %269 ], !dbg !2228
  %524 = phi i8 [ %495, %488 ], [ %516, %509 ], [ %142, %272 ], [ %142, %269 ], !dbg !2232
  %525 = phi i8 [ %494, %488 ], [ %515, %509 ], [ %144, %272 ], [ %144, %269 ], !dbg !2322
  %526 = phi i64 [ %493, %488 ], [ %514, %509 ], [ %145, %272 ], [ %145, %269 ], !dbg !2627
  %527 = phi i8 [ %491, %488 ], [ %512, %509 ], [ 0, %272 ], [ 0, %269 ], !dbg !2330
  %528 = phi i8 [ %490, %488 ], [ %511, %509 ], [ %273, %272 ], [ 92, %269 ], !dbg !2330
  %529 = phi i64 [ %489, %488 ], [ %510, %509 ], [ %146, %272 ], [ %146, %269 ]
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !2154, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !2185, metadata !DIExpression()), !dbg !2330
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !2184, metadata !DIExpression()), !dbg !2330
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !2178, metadata !DIExpression()), !dbg !2320
  tail call void @llvm.dbg.value(metadata i8 %525, metadata !2172, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !2169, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !2164, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !2163, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !2156, metadata !DIExpression()), !dbg !2223
  call void @llvm.dbg.label(metadata !2212), !dbg !2628
  br i1 %131, label %530, label %659, !dbg !2629

530:                                              ; preds = %520
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2183, metadata !DIExpression()), !dbg !2330
  %531 = and i8 %525, 1, !dbg !2631
  %532 = icmp eq i8 %531, 0, !dbg !2631
  %533 = select i1 %132, i1 %532, i1 false, !dbg !2631
  br i1 %533, label %534, label %550, !dbg !2631

534:                                              ; preds = %530
  %535 = icmp ult i64 %522, %529, !dbg !2633
  br i1 %535, label %536, label %538, !dbg !2637

536:                                              ; preds = %534
  %537 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !2633
  store i8 39, ptr %537, align 1, !dbg !2633, !tbaa !937
  br label %538, !dbg !2633

538:                                              ; preds = %536, %534
  %539 = add i64 %522, 1, !dbg !2637
  tail call void @llvm.dbg.value(metadata i64 %539, metadata !2163, metadata !DIExpression()), !dbg !2223
  %540 = icmp ult i64 %539, %529, !dbg !2638
  br i1 %540, label %541, label %543, !dbg !2641

541:                                              ; preds = %538
  %542 = getelementptr inbounds i8, ptr %0, i64 %539, !dbg !2638
  store i8 36, ptr %542, align 1, !dbg !2638, !tbaa !937
  br label %543, !dbg !2638

543:                                              ; preds = %541, %538
  %544 = add i64 %522, 2, !dbg !2641
  tail call void @llvm.dbg.value(metadata i64 %544, metadata !2163, metadata !DIExpression()), !dbg !2223
  %545 = icmp ult i64 %544, %529, !dbg !2642
  br i1 %545, label %546, label %548, !dbg !2645

546:                                              ; preds = %543
  %547 = getelementptr inbounds i8, ptr %0, i64 %544, !dbg !2642
  store i8 39, ptr %547, align 1, !dbg !2642, !tbaa !937
  br label %548, !dbg !2642

548:                                              ; preds = %546, %543
  %549 = add i64 %522, 3, !dbg !2645
  tail call void @llvm.dbg.value(metadata i64 %549, metadata !2163, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2172, metadata !DIExpression()), !dbg !2223
  br label %550, !dbg !2646

550:                                              ; preds = %530, %548
  %551 = phi i64 [ %549, %548 ], [ %522, %530 ], !dbg !2330
  %552 = phi i8 [ 1, %548 ], [ %525, %530 ], !dbg !2223
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !2172, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i64 %551, metadata !2163, metadata !DIExpression()), !dbg !2223
  %553 = icmp ult i64 %551, %529, !dbg !2647
  br i1 %553, label %554, label %556, !dbg !2650

554:                                              ; preds = %550
  %555 = getelementptr inbounds i8, ptr %0, i64 %551, !dbg !2647
  store i8 92, ptr %555, align 1, !dbg !2647, !tbaa !937
  br label %556, !dbg !2647

556:                                              ; preds = %550, %554
  %557 = add i64 %551, 1, !dbg !2650
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !2154, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !2185, metadata !DIExpression()), !dbg !2330
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !2184, metadata !DIExpression()), !dbg !2330
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2183, metadata !DIExpression()), !dbg !2330
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !2178, metadata !DIExpression()), !dbg !2320
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !2172, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !2169, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !2164, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i64 %557, metadata !2163, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !2156, metadata !DIExpression()), !dbg !2223
  call void @llvm.dbg.label(metadata !2213), !dbg !2651
  br label %585, !dbg !2652

558:                                              ; preds = %463, %488, %267, %269, %509
  %559 = phi i64 [ %356, %463 ], [ %519, %509 ], [ %171, %267 ], [ %171, %269 ], [ %498, %488 ], !dbg !2616
  %560 = phi i64 [ %427, %463 ], [ %518, %509 ], [ %140, %267 ], [ %140, %269 ], [ %497, %488 ], !dbg !2223
  %561 = phi i64 [ %141, %463 ], [ %517, %509 ], [ %141, %267 ], [ %141, %269 ], [ %496, %488 ], !dbg !2228
  %562 = phi i8 [ %142, %463 ], [ %516, %509 ], [ %142, %267 ], [ %142, %269 ], [ %495, %488 ], !dbg !2232
  %563 = phi i8 [ %428, %463 ], [ %515, %509 ], [ %144, %267 ], [ %144, %269 ], [ %494, %488 ], !dbg !2322
  %564 = phi i64 [ %367, %463 ], [ %514, %509 ], [ %145, %267 ], [ %145, %269 ], [ %493, %488 ], !dbg !2627
  %565 = phi i8 [ %430, %463 ], [ %513, %509 ], [ 0, %267 ], [ 0, %269 ], [ %492, %488 ], !dbg !2330
  %566 = phi i8 [ %464, %463 ], [ %512, %509 ], [ 0, %267 ], [ 0, %269 ], [ %491, %488 ], !dbg !2330
  %567 = phi i8 [ %431, %463 ], [ %511, %509 ], [ 92, %267 ], [ 92, %269 ], [ %490, %488 ], !dbg !2655
  %568 = phi i64 [ %146, %463 ], [ %510, %509 ], [ %146, %267 ], [ %146, %269 ], [ %489, %488 ]
  tail call void @llvm.dbg.value(metadata i64 %568, metadata !2154, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i8 %567, metadata !2185, metadata !DIExpression()), !dbg !2330
  tail call void @llvm.dbg.value(metadata i8 %566, metadata !2184, metadata !DIExpression()), !dbg !2330
  tail call void @llvm.dbg.value(metadata i8 %565, metadata !2183, metadata !DIExpression()), !dbg !2330
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !2178, metadata !DIExpression()), !dbg !2320
  tail call void @llvm.dbg.value(metadata i8 %563, metadata !2172, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i8 %562, metadata !2169, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !2164, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i64 %560, metadata !2163, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i64 %559, metadata !2156, metadata !DIExpression()), !dbg !2223
  call void @llvm.dbg.label(metadata !2213), !dbg !2651
  %569 = and i8 %563, 1, !dbg !2652
  %570 = icmp ne i8 %569, 0, !dbg !2652
  %571 = and i8 %565, 1, !dbg !2652
  %572 = icmp eq i8 %571, 0, !dbg !2652
  %573 = select i1 %570, i1 %572, i1 false, !dbg !2652
  br i1 %573, label %574, label %585, !dbg !2652

574:                                              ; preds = %558
  %575 = icmp ult i64 %560, %568, !dbg !2656
  br i1 %575, label %576, label %578, !dbg !2660

576:                                              ; preds = %574
  %577 = getelementptr inbounds i8, ptr %0, i64 %560, !dbg !2656
  store i8 39, ptr %577, align 1, !dbg !2656, !tbaa !937
  br label %578, !dbg !2656

578:                                              ; preds = %576, %574
  %579 = add i64 %560, 1, !dbg !2660
  tail call void @llvm.dbg.value(metadata i64 %579, metadata !2163, metadata !DIExpression()), !dbg !2223
  %580 = icmp ult i64 %579, %568, !dbg !2661
  br i1 %580, label %581, label %583, !dbg !2664

581:                                              ; preds = %578
  %582 = getelementptr inbounds i8, ptr %0, i64 %579, !dbg !2661
  store i8 39, ptr %582, align 1, !dbg !2661, !tbaa !937
  br label %583, !dbg !2661

583:                                              ; preds = %581, %578
  %584 = add i64 %560, 2, !dbg !2664
  tail call void @llvm.dbg.value(metadata i64 %584, metadata !2163, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2172, metadata !DIExpression()), !dbg !2223
  br label %585, !dbg !2665

585:                                              ; preds = %556, %558, %583
  %586 = phi i64 [ %568, %583 ], [ %568, %558 ], [ %529, %556 ]
  %587 = phi i8 [ %567, %583 ], [ %567, %558 ], [ %528, %556 ]
  %588 = phi i8 [ %566, %583 ], [ %566, %558 ], [ %527, %556 ]
  %589 = phi i64 [ %564, %583 ], [ %564, %558 ], [ %526, %556 ]
  %590 = phi i8 [ %562, %583 ], [ %562, %558 ], [ %524, %556 ]
  %591 = phi i64 [ %561, %583 ], [ %561, %558 ], [ %523, %556 ]
  %592 = phi i64 [ %559, %583 ], [ %559, %558 ], [ %521, %556 ]
  %593 = phi i64 [ %584, %583 ], [ %560, %558 ], [ %557, %556 ], !dbg !2330
  %594 = phi i8 [ 0, %583 ], [ %563, %558 ], [ %552, %556 ], !dbg !2223
  tail call void @llvm.dbg.value(metadata i8 %594, metadata !2172, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i64 %593, metadata !2163, metadata !DIExpression()), !dbg !2223
  %595 = icmp ult i64 %593, %586, !dbg !2666
  br i1 %595, label %596, label %598, !dbg !2669

596:                                              ; preds = %585
  %597 = getelementptr inbounds i8, ptr %0, i64 %593, !dbg !2666
  store i8 %587, ptr %597, align 1, !dbg !2666, !tbaa !937
  br label %598, !dbg !2666

598:                                              ; preds = %596, %585
  %599 = add i64 %593, 1, !dbg !2669
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !2163, metadata !DIExpression()), !dbg !2223
  %600 = icmp eq i8 %588, 0, !dbg !2670
  %601 = select i1 %600, i8 0, i8 %143, !dbg !2672
  tail call void @llvm.dbg.value(metadata i8 %601, metadata !2170, metadata !DIExpression()), !dbg !2223
  br label %602, !dbg !2673

602:                                              ; preds = %225, %598
  %603 = phi i64 [ %592, %598 ], [ %171, %225 ], !dbg !2616
  %604 = phi i64 [ %599, %598 ], [ %140, %225 ], !dbg !2223
  %605 = phi i64 [ %591, %598 ], [ %141, %225 ], !dbg !2228
  %606 = phi i8 [ %590, %598 ], [ %142, %225 ], !dbg !2232
  %607 = phi i8 [ %601, %598 ], [ %143, %225 ], !dbg !2233
  %608 = phi i8 [ %594, %598 ], [ %144, %225 ], !dbg !2322
  %609 = phi i64 [ %589, %598 ], [ %145, %225 ], !dbg !2627
  %610 = phi i64 [ %586, %598 ], [ %146, %225 ]
  tail call void @llvm.dbg.value(metadata i64 %610, metadata !2154, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !2178, metadata !DIExpression()), !dbg !2320
  tail call void @llvm.dbg.value(metadata i8 %608, metadata !2172, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i8 %607, metadata !2170, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i8 %606, metadata !2169, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i64 %605, metadata !2164, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !2163, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i64 %603, metadata !2156, metadata !DIExpression()), !dbg !2223
  %611 = add i64 %609, 1, !dbg !2674
  tail call void @llvm.dbg.value(metadata i64 %611, metadata !2178, metadata !DIExpression()), !dbg !2320
  br label %138, !dbg !2675, !llvm.loop !2676

612:                                              ; preds = %152, %148
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !2154, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !2170, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !2169, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !2164, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2163, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !2156, metadata !DIExpression()), !dbg !2223
  %613 = icmp eq i64 %140, 0, !dbg !2678
  %614 = and i1 %132, %613, !dbg !2680
  %615 = xor i1 %614, true, !dbg !2680
  %616 = select i1 %615, i1 true, i1 %131, !dbg !2680
  br i1 %616, label %617, label %655, !dbg !2680

617:                                              ; preds = %612
  %618 = select i1 %132, i1 %131, i1 false, !dbg !2681
  %619 = and i8 %142, 1
  %620 = icmp ne i8 %619, 0
  %621 = select i1 %618, i1 %620, i1 false, !dbg !2681
  br i1 %621, label %622, label %631, !dbg !2681

622:                                              ; preds = %617
  %623 = and i8 %143, 1, !dbg !2683
  %624 = icmp eq i8 %623, 0, !dbg !2683
  br i1 %624, label %627, label %625, !dbg !2686

625:                                              ; preds = %622
  %626 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %116, ptr noundef %117), !dbg !2687
  br label %672, !dbg !2688

627:                                              ; preds = %622
  %628 = icmp eq i64 %146, 0, !dbg !2689
  %629 = icmp ne i64 %141, 0
  %630 = select i1 %628, i1 %629, i1 false, !dbg !2691
  br i1 %630, label %28, label %631, !dbg !2691

631:                                              ; preds = %627, %617
  %632 = phi i1 [ true, %627 ], [ %131, %617 ]
  %633 = icmp ne ptr %119, null, !dbg !2692
  %634 = select i1 %633, i1 %632, i1 false, !dbg !2694
  br i1 %634, label %635, label %650, !dbg !2694

635:                                              ; preds = %631
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !2165, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2163, metadata !DIExpression()), !dbg !2223
  %636 = load i8, ptr %119, align 1, !dbg !2695, !tbaa !937
  %637 = icmp eq i8 %636, 0, !dbg !2698
  br i1 %637, label %650, label %638, !dbg !2698

638:                                              ; preds = %635, %645
  %639 = phi i8 [ %648, %645 ], [ %636, %635 ]
  %640 = phi ptr [ %647, %645 ], [ %119, %635 ]
  %641 = phi i64 [ %646, %645 ], [ %140, %635 ]
  tail call void @llvm.dbg.value(metadata ptr %640, metadata !2165, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i64 %641, metadata !2163, metadata !DIExpression()), !dbg !2223
  %642 = icmp ult i64 %641, %146, !dbg !2699
  br i1 %642, label %643, label %645, !dbg !2702

643:                                              ; preds = %638
  %644 = getelementptr inbounds i8, ptr %0, i64 %641, !dbg !2699
  store i8 %639, ptr %644, align 1, !dbg !2699, !tbaa !937
  br label %645, !dbg !2699

645:                                              ; preds = %643, %638
  %646 = add i64 %641, 1, !dbg !2702
  tail call void @llvm.dbg.value(metadata i64 %646, metadata !2163, metadata !DIExpression()), !dbg !2223
  %647 = getelementptr inbounds i8, ptr %640, i64 1, !dbg !2703
  tail call void @llvm.dbg.value(metadata ptr %647, metadata !2165, metadata !DIExpression()), !dbg !2223
  %648 = load i8, ptr %647, align 1, !dbg !2695, !tbaa !937
  %649 = icmp eq i8 %648, 0, !dbg !2698
  br i1 %649, label %650, label %638, !dbg !2698, !llvm.loop !2704

650:                                              ; preds = %645, %635, %631
  %651 = phi i64 [ %140, %631 ], [ %140, %635 ], [ %646, %645 ], !dbg !2303
  tail call void @llvm.dbg.value(metadata i64 %651, metadata !2163, metadata !DIExpression()), !dbg !2223
  %652 = icmp ult i64 %651, %146, !dbg !2706
  br i1 %652, label %653, label %672, !dbg !2708

653:                                              ; preds = %650
  %654 = getelementptr inbounds i8, ptr %0, i64 %651, !dbg !2709
  store i8 0, ptr %654, align 1, !dbg !2710, !tbaa !937
  br label %672, !dbg !2709

655:                                              ; preds = %612, %227, %267, %270, %281, %284, %354
  %656 = phi i64 [ %320, %354 ], [ %171, %284 ], [ %171, %281 ], [ %171, %270 ], [ %171, %267 ], [ %171, %227 ], [ %139, %612 ]
  call void @llvm.dbg.label(metadata !2214), !dbg !2711
  %657 = icmp eq i8 %123, 0, !dbg !2712
  %658 = select i1 %657, i32 2, i32 4, !dbg !2712
  br label %666, !dbg !2712

659:                                              ; preds = %520, %177, %371
  %660 = phi i64 [ %146, %371 ], [ %529, %520 ], [ %146, %177 ]
  %661 = phi i64 [ %356, %371 ], [ %521, %520 ], [ %171, %177 ]
  call void @llvm.dbg.label(metadata !2214), !dbg !2711
  %662 = icmp eq i32 %115, 2, !dbg !2714
  %663 = icmp eq i8 %123, 0, !dbg !2712
  %664 = select i1 %663, i32 2, i32 4, !dbg !2712
  %665 = select i1 %662, i32 %664, i32 %115, !dbg !2712
  br label %666, !dbg !2712

666:                                              ; preds = %239, %163, %659, %655
  %667 = phi i64 [ %656, %655 ], [ %661, %659 ], [ %161, %163 ], [ %171, %239 ]
  %668 = phi i64 [ %146, %655 ], [ %660, %659 ], [ %146, %163 ], [ %146, %239 ]
  %669 = phi i32 [ %658, %655 ], [ %665, %659 ], [ %115, %163 ], [ 5, %239 ]
  tail call void @llvm.dbg.value(metadata i32 %669, metadata !2157, metadata !DIExpression()), !dbg !2223
  %670 = and i32 %5, -3, !dbg !2715
  %671 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %668, ptr noundef %2, i64 noundef %667, i32 noundef %669, i32 noundef %670, ptr noundef null, ptr noundef %116, ptr noundef %117), !dbg !2716
  br label %672, !dbg !2717

672:                                              ; preds = %650, %653, %666, %625
  %673 = phi i64 [ %671, %666 ], [ %626, %625 ], [ %651, %653 ], [ %651, %650 ]
  ret i64 %673, !dbg !2718
}

; Function Attrs: nounwind
declare !dbg !2719 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2722 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !2725 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2727 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2731, metadata !DIExpression()), !dbg !2734
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2732, metadata !DIExpression()), !dbg !2734
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2733, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata ptr %0, metadata !2735, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %1, metadata !2740, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata ptr null, metadata !2741, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata ptr %2, metadata !2742, metadata !DIExpression()), !dbg !2748
  %4 = icmp eq ptr %2, null, !dbg !2750
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2750
  call void @llvm.dbg.value(metadata ptr %5, metadata !2743, metadata !DIExpression()), !dbg !2748
  %6 = tail call ptr @__errno_location() #40, !dbg !2751
  %7 = load i32, ptr %6, align 4, !dbg !2751, !tbaa !928
  call void @llvm.dbg.value(metadata i32 %7, metadata !2744, metadata !DIExpression()), !dbg !2748
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2752
  %9 = load i32, ptr %8, align 4, !dbg !2752, !tbaa !2097
  %10 = or i32 %9, 1, !dbg !2753
  call void @llvm.dbg.value(metadata i32 %10, metadata !2745, metadata !DIExpression()), !dbg !2748
  %11 = load i32, ptr %5, align 8, !dbg !2754, !tbaa !2047
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2755
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2756
  %14 = load ptr, ptr %13, align 8, !dbg !2756, !tbaa !2118
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2757
  %16 = load ptr, ptr %15, align 8, !dbg !2757, !tbaa !2121
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2758
  %18 = add i64 %17, 1, !dbg !2759
  call void @llvm.dbg.value(metadata i64 %18, metadata !2746, metadata !DIExpression()), !dbg !2748
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #43, !dbg !2760
  call void @llvm.dbg.value(metadata ptr %19, metadata !2747, metadata !DIExpression()), !dbg !2748
  %20 = load i32, ptr %5, align 8, !dbg !2761, !tbaa !2047
  %21 = load ptr, ptr %13, align 8, !dbg !2762, !tbaa !2118
  %22 = load ptr, ptr %15, align 8, !dbg !2763, !tbaa !2121
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2764
  store i32 %7, ptr %6, align 4, !dbg !2765, !tbaa !928
  ret ptr %19, !dbg !2766
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2736 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2735, metadata !DIExpression()), !dbg !2767
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2740, metadata !DIExpression()), !dbg !2767
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2741, metadata !DIExpression()), !dbg !2767
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2742, metadata !DIExpression()), !dbg !2767
  %5 = icmp eq ptr %3, null, !dbg !2768
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2768
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2743, metadata !DIExpression()), !dbg !2767
  %7 = tail call ptr @__errno_location() #40, !dbg !2769
  %8 = load i32, ptr %7, align 4, !dbg !2769, !tbaa !928
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !2744, metadata !DIExpression()), !dbg !2767
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2770
  %10 = load i32, ptr %9, align 4, !dbg !2770, !tbaa !2097
  %11 = icmp eq ptr %2, null, !dbg !2771
  %12 = zext i1 %11 to i32, !dbg !2771
  %13 = or i32 %10, %12, !dbg !2772
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !2745, metadata !DIExpression()), !dbg !2767
  %14 = load i32, ptr %6, align 8, !dbg !2773, !tbaa !2047
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2774
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2775
  %17 = load ptr, ptr %16, align 8, !dbg !2775, !tbaa !2118
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2776
  %19 = load ptr, ptr %18, align 8, !dbg !2776, !tbaa !2121
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2777
  %21 = add i64 %20, 1, !dbg !2778
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2746, metadata !DIExpression()), !dbg !2767
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #43, !dbg !2779
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !2747, metadata !DIExpression()), !dbg !2767
  %23 = load i32, ptr %6, align 8, !dbg !2780, !tbaa !2047
  %24 = load ptr, ptr %16, align 8, !dbg !2781, !tbaa !2118
  %25 = load ptr, ptr %18, align 8, !dbg !2782, !tbaa !2121
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2783
  store i32 %8, ptr %7, align 4, !dbg !2784, !tbaa !928
  br i1 %11, label %28, label %27, !dbg !2785

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2786, !tbaa !1218
  br label %28, !dbg !2788

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2789
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2790 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2795, !tbaa !858
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2792, metadata !DIExpression()), !dbg !2796
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2793, metadata !DIExpression()), !dbg !2797
  %2 = load i32, ptr @nslots, align 4, !tbaa !928
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2793, metadata !DIExpression()), !dbg !2797
  %3 = icmp sgt i32 %2, 1, !dbg !2798
  br i1 %3, label %4, label %6, !dbg !2800

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !2798
  br label %10, !dbg !2800

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2801
  %8 = load ptr, ptr %7, align 8, !dbg !2801, !tbaa !2803
  %9 = icmp eq ptr %8, @slot0, !dbg !2805
  br i1 %9, label %17, label %16, !dbg !2806

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2793, metadata !DIExpression()), !dbg !2797
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2807
  %13 = load ptr, ptr %12, align 8, !dbg !2807, !tbaa !2803
  tail call void @free(ptr noundef %13) #37, !dbg !2808
  %14 = add nuw nsw i64 %11, 1, !dbg !2809
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !2793, metadata !DIExpression()), !dbg !2797
  %15 = icmp eq i64 %14, %5, !dbg !2798
  br i1 %15, label %6, label %10, !dbg !2800, !llvm.loop !2810

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #37, !dbg !2812
  store i64 256, ptr @slotvec0, align 8, !dbg !2814, !tbaa !2815
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2816, !tbaa !2803
  br label %17, !dbg !2817

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2818
  br i1 %18, label %20, label %19, !dbg !2820

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #37, !dbg !2821
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2823, !tbaa !858
  br label %20, !dbg !2824

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2825, !tbaa !928
  ret void, !dbg !2826
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2827 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2829, metadata !DIExpression()), !dbg !2831
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2830, metadata !DIExpression()), !dbg !2831
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2832
  ret ptr %3, !dbg !2833
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2834 {
  %5 = alloca i64, align 8, !DIAssignID !2854
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2848, metadata !DIExpression(), metadata !2854, metadata ptr %5, metadata !DIExpression()), !dbg !2855
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2838, metadata !DIExpression()), !dbg !2856
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2839, metadata !DIExpression()), !dbg !2856
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2840, metadata !DIExpression()), !dbg !2856
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2841, metadata !DIExpression()), !dbg !2856
  %6 = tail call ptr @__errno_location() #40, !dbg !2857
  %7 = load i32, ptr %6, align 4, !dbg !2857, !tbaa !928
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !2842, metadata !DIExpression()), !dbg !2856
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2858, !tbaa !858
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2843, metadata !DIExpression()), !dbg !2856
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !2844, metadata !DIExpression()), !dbg !2856
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2859
  br i1 %9, label %10, label %11, !dbg !2859

10:                                               ; preds = %4
  tail call void @abort() #39, !dbg !2861
  unreachable, !dbg !2861

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2862, !tbaa !928
  %13 = icmp sgt i32 %12, %0, !dbg !2863
  br i1 %13, label %32, label %14, !dbg !2864

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2865
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !2845, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2855
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #37, !dbg !2866
  %16 = sext i32 %12 to i64, !dbg !2867
  store i64 %16, ptr %5, align 8, !dbg !2868, !tbaa !1218, !DIAssignID !2869
  call void @llvm.dbg.assign(metadata i64 %16, metadata !2848, metadata !DIExpression(), metadata !2869, metadata ptr %5, metadata !DIExpression()), !dbg !2855
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2870
  %18 = add nuw nsw i32 %0, 1, !dbg !2871
  %19 = sub i32 %18, %12, !dbg !2872
  %20 = sext i32 %19 to i64, !dbg !2873
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #37, !dbg !2874
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2843, metadata !DIExpression()), !dbg !2856
  store ptr %21, ptr @slotvec, align 8, !dbg !2875, !tbaa !858
  br i1 %15, label %22, label %23, !dbg !2876

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2877, !tbaa.struct !2879
  br label %23, !dbg !2880

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2881, !tbaa !928
  %25 = sext i32 %24 to i64, !dbg !2882
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2882
  %27 = load i64, ptr %5, align 8, !dbg !2883, !tbaa !1218
  %28 = sub nsw i64 %27, %25, !dbg !2884
  %29 = shl i64 %28, 4, !dbg !2885
  call void @llvm.dbg.value(metadata ptr %26, metadata !2261, metadata !DIExpression()), !dbg !2886
  call void @llvm.dbg.value(metadata i32 0, metadata !2264, metadata !DIExpression()), !dbg !2886
  call void @llvm.dbg.value(metadata i64 %29, metadata !2265, metadata !DIExpression()), !dbg !2886
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #37, !dbg !2888
  %30 = load i64, ptr %5, align 8, !dbg !2889, !tbaa !1218
  %31 = trunc i64 %30 to i32, !dbg !2889
  store i32 %31, ptr @nslots, align 4, !dbg !2890, !tbaa !928
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #37, !dbg !2891
  br label %32, !dbg !2892

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2856
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !2843, metadata !DIExpression()), !dbg !2856
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2893
  %36 = load i64, ptr %35, align 8, !dbg !2894, !tbaa !2815
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !2849, metadata !DIExpression()), !dbg !2895
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2896
  %38 = load ptr, ptr %37, align 8, !dbg !2896, !tbaa !2803
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !2851, metadata !DIExpression()), !dbg !2895
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2897
  %40 = load i32, ptr %39, align 4, !dbg !2897, !tbaa !2097
  %41 = or i32 %40, 1, !dbg !2898
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !2852, metadata !DIExpression()), !dbg !2895
  %42 = load i32, ptr %3, align 8, !dbg !2899, !tbaa !2047
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2900
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2901
  %45 = load ptr, ptr %44, align 8, !dbg !2901, !tbaa !2118
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2902
  %47 = load ptr, ptr %46, align 8, !dbg !2902, !tbaa !2121
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2903
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !2853, metadata !DIExpression()), !dbg !2895
  %49 = icmp ugt i64 %36, %48, !dbg !2904
  br i1 %49, label %60, label %50, !dbg !2906

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2907
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !2849, metadata !DIExpression()), !dbg !2895
  store i64 %51, ptr %35, align 8, !dbg !2909, !tbaa !2815
  %52 = icmp eq ptr %38, @slot0, !dbg !2910
  br i1 %52, label %54, label %53, !dbg !2912

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #37, !dbg !2913
  br label %54, !dbg !2913

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #43, !dbg !2914
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !2851, metadata !DIExpression()), !dbg !2895
  store ptr %55, ptr %37, align 8, !dbg !2915, !tbaa !2803
  %56 = load i32, ptr %3, align 8, !dbg !2916, !tbaa !2047
  %57 = load ptr, ptr %44, align 8, !dbg !2917, !tbaa !2118
  %58 = load ptr, ptr %46, align 8, !dbg !2918, !tbaa !2121
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2919
  br label %60, !dbg !2920

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2895
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !2851, metadata !DIExpression()), !dbg !2895
  store i32 %7, ptr %6, align 4, !dbg !2921, !tbaa !928
  ret ptr %61, !dbg !2922
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #23

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #24

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2923 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2927, metadata !DIExpression()), !dbg !2930
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2928, metadata !DIExpression()), !dbg !2930
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2929, metadata !DIExpression()), !dbg !2930
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2931
  ret ptr %4, !dbg !2932
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2933 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2935, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i32 0, metadata !2829, metadata !DIExpression()), !dbg !2937
  call void @llvm.dbg.value(metadata ptr %0, metadata !2830, metadata !DIExpression()), !dbg !2937
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2939
  ret ptr %2, !dbg !2940
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2941 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2945, metadata !DIExpression()), !dbg !2947
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2946, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i32 0, metadata !2927, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata ptr %0, metadata !2928, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata i64 %1, metadata !2929, metadata !DIExpression()), !dbg !2948
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2950
  ret ptr %3, !dbg !2951
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2952 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2960
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2959, metadata !DIExpression(), metadata !2960, metadata ptr %4, metadata !DIExpression()), !dbg !2961
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2956, metadata !DIExpression()), !dbg !2961
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2957, metadata !DIExpression()), !dbg !2961
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2958, metadata !DIExpression()), !dbg !2961
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2962
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2963), !dbg !2966
  call void @llvm.dbg.value(metadata i32 %1, metadata !2967, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2972, metadata !DIExpression()), !dbg !2975
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2975, !alias.scope !2963, !DIAssignID !2976
  call void @llvm.dbg.assign(metadata i8 0, metadata !2959, metadata !DIExpression(), metadata !2976, metadata ptr %4, metadata !DIExpression()), !dbg !2961
  %5 = icmp eq i32 %1, 10, !dbg !2977
  br i1 %5, label %6, label %7, !dbg !2979

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2980, !noalias !2963
  unreachable, !dbg !2980

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2981, !tbaa !2047, !alias.scope !2963, !DIAssignID !2982
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2959, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2982, metadata ptr %4, metadata !DIExpression()), !dbg !2961
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2983
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2984
  ret ptr %8, !dbg !2985
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2986 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2995
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2994, metadata !DIExpression(), metadata !2995, metadata ptr %5, metadata !DIExpression()), !dbg !2996
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2990, metadata !DIExpression()), !dbg !2996
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2991, metadata !DIExpression()), !dbg !2996
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2992, metadata !DIExpression()), !dbg !2996
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2993, metadata !DIExpression()), !dbg !2996
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2997
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2998), !dbg !3001
  call void @llvm.dbg.value(metadata i32 %1, metadata !2967, metadata !DIExpression()), !dbg !3002
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2972, metadata !DIExpression()), !dbg !3004
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3004, !alias.scope !2998, !DIAssignID !3005
  call void @llvm.dbg.assign(metadata i8 0, metadata !2994, metadata !DIExpression(), metadata !3005, metadata ptr %5, metadata !DIExpression()), !dbg !2996
  %6 = icmp eq i32 %1, 10, !dbg !3006
  br i1 %6, label %7, label %8, !dbg !3007

7:                                                ; preds = %4
  tail call void @abort() #39, !dbg !3008, !noalias !2998
  unreachable, !dbg !3008

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3009, !tbaa !2047, !alias.scope !2998, !DIAssignID !3010
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2994, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3010, metadata ptr %5, metadata !DIExpression()), !dbg !2996
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3011
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !3012
  ret ptr %9, !dbg !3013
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3014 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3020
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3018, metadata !DIExpression()), !dbg !3021
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3019, metadata !DIExpression()), !dbg !3021
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2959, metadata !DIExpression(), metadata !3020, metadata ptr %3, metadata !DIExpression()), !dbg !3022
  call void @llvm.dbg.value(metadata i32 0, metadata !2956, metadata !DIExpression()), !dbg !3022
  call void @llvm.dbg.value(metadata i32 %0, metadata !2957, metadata !DIExpression()), !dbg !3022
  call void @llvm.dbg.value(metadata ptr %1, metadata !2958, metadata !DIExpression()), !dbg !3022
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !3024
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3025), !dbg !3028
  call void @llvm.dbg.value(metadata i32 %0, metadata !2967, metadata !DIExpression()), !dbg !3029
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2972, metadata !DIExpression()), !dbg !3031
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3031, !alias.scope !3025, !DIAssignID !3032
  call void @llvm.dbg.assign(metadata i8 0, metadata !2959, metadata !DIExpression(), metadata !3032, metadata ptr %3, metadata !DIExpression()), !dbg !3022
  %4 = icmp eq i32 %0, 10, !dbg !3033
  br i1 %4, label %5, label %6, !dbg !3034

5:                                                ; preds = %2
  tail call void @abort() #39, !dbg !3035, !noalias !3025
  unreachable, !dbg !3035

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3036, !tbaa !2047, !alias.scope !3025, !DIAssignID !3037
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2959, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3037, metadata ptr %3, metadata !DIExpression()), !dbg !3022
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3038
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !3039
  ret ptr %7, !dbg !3040
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3041 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3048
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3045, metadata !DIExpression()), !dbg !3049
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3046, metadata !DIExpression()), !dbg !3049
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3047, metadata !DIExpression()), !dbg !3049
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2994, metadata !DIExpression(), metadata !3048, metadata ptr %4, metadata !DIExpression()), !dbg !3050
  call void @llvm.dbg.value(metadata i32 0, metadata !2990, metadata !DIExpression()), !dbg !3050
  call void @llvm.dbg.value(metadata i32 %0, metadata !2991, metadata !DIExpression()), !dbg !3050
  call void @llvm.dbg.value(metadata ptr %1, metadata !2992, metadata !DIExpression()), !dbg !3050
  call void @llvm.dbg.value(metadata i64 %2, metadata !2993, metadata !DIExpression()), !dbg !3050
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !3052
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3053), !dbg !3056
  call void @llvm.dbg.value(metadata i32 %0, metadata !2967, metadata !DIExpression()), !dbg !3057
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2972, metadata !DIExpression()), !dbg !3059
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3059, !alias.scope !3053, !DIAssignID !3060
  call void @llvm.dbg.assign(metadata i8 0, metadata !2994, metadata !DIExpression(), metadata !3060, metadata ptr %4, metadata !DIExpression()), !dbg !3050
  %5 = icmp eq i32 %0, 10, !dbg !3061
  br i1 %5, label %6, label %7, !dbg !3062

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !3063, !noalias !3053
  unreachable, !dbg !3063

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3064, !tbaa !2047, !alias.scope !3053, !DIAssignID !3065
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2994, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3065, metadata ptr %4, metadata !DIExpression()), !dbg !3050
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3066
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !3067
  ret ptr %8, !dbg !3068
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !3069 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3077
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3076, metadata !DIExpression(), metadata !3077, metadata ptr %4, metadata !DIExpression()), !dbg !3078
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3073, metadata !DIExpression()), !dbg !3078
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3074, metadata !DIExpression()), !dbg !3078
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !3075, metadata !DIExpression()), !dbg !3078
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !3079
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3080, !tbaa.struct !3081, !DIAssignID !3082
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3076, metadata !DIExpression(), metadata !3082, metadata ptr %4, metadata !DIExpression()), !dbg !3078
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2064, metadata !DIExpression()), !dbg !3083
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2065, metadata !DIExpression()), !dbg !3083
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2066, metadata !DIExpression()), !dbg !3083
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2067, metadata !DIExpression()), !dbg !3083
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !3085
  %6 = lshr i8 %2, 5, !dbg !3086
  %7 = zext nneg i8 %6 to i64, !dbg !3086
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !3087
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2068, metadata !DIExpression()), !dbg !3083
  %9 = and i8 %2, 31, !dbg !3088
  %10 = zext nneg i8 %9 to i32, !dbg !3088
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !2070, metadata !DIExpression()), !dbg !3083
  %11 = load i32, ptr %8, align 4, !dbg !3089, !tbaa !928
  %12 = lshr i32 %11, %10, !dbg !3090
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !2071, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3083
  %13 = and i32 %12, 1, !dbg !3091
  %14 = xor i32 %13, 1, !dbg !3091
  %15 = shl nuw i32 %14, %10, !dbg !3092
  %16 = xor i32 %15, %11, !dbg !3093
  store i32 %16, ptr %8, align 4, !dbg !3093, !tbaa !928
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !3094
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !3095
  ret ptr %17, !dbg !3096
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !3097 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3103
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3101, metadata !DIExpression()), !dbg !3104
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !3102, metadata !DIExpression()), !dbg !3104
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3076, metadata !DIExpression(), metadata !3103, metadata ptr %3, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.value(metadata ptr %0, metadata !3073, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.value(metadata i64 -1, metadata !3074, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.value(metadata i8 %1, metadata !3075, metadata !DIExpression()), !dbg !3105
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !3107
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3108, !tbaa.struct !3081, !DIAssignID !3109
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3076, metadata !DIExpression(), metadata !3109, metadata ptr %3, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.value(metadata ptr %3, metadata !2064, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.value(metadata i8 %1, metadata !2065, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.value(metadata i32 1, metadata !2066, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.value(metadata i8 %1, metadata !2067, metadata !DIExpression()), !dbg !3110
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3112
  %5 = lshr i8 %1, 5, !dbg !3113
  %6 = zext nneg i8 %5 to i64, !dbg !3113
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !3114
  call void @llvm.dbg.value(metadata ptr %7, metadata !2068, metadata !DIExpression()), !dbg !3110
  %8 = and i8 %1, 31, !dbg !3115
  %9 = zext nneg i8 %8 to i32, !dbg !3115
  call void @llvm.dbg.value(metadata i32 %9, metadata !2070, metadata !DIExpression()), !dbg !3110
  %10 = load i32, ptr %7, align 4, !dbg !3116, !tbaa !928
  %11 = lshr i32 %10, %9, !dbg !3117
  call void @llvm.dbg.value(metadata i32 %11, metadata !2071, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3110
  %12 = and i32 %11, 1, !dbg !3118
  %13 = xor i32 %12, 1, !dbg !3118
  %14 = shl nuw i32 %13, %9, !dbg !3119
  %15 = xor i32 %14, %10, !dbg !3120
  store i32 %15, ptr %7, align 4, !dbg !3120, !tbaa !928
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !3121
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !3122
  ret ptr %16, !dbg !3123
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !3124 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !3127
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3126, metadata !DIExpression()), !dbg !3128
  call void @llvm.dbg.value(metadata ptr %0, metadata !3101, metadata !DIExpression()), !dbg !3129
  call void @llvm.dbg.value(metadata i8 58, metadata !3102, metadata !DIExpression()), !dbg !3129
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3076, metadata !DIExpression(), metadata !3127, metadata ptr %2, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata ptr %0, metadata !3073, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata i64 -1, metadata !3074, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata i8 58, metadata !3075, metadata !DIExpression()), !dbg !3131
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #37, !dbg !3133
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3134, !tbaa.struct !3081, !DIAssignID !3135
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3076, metadata !DIExpression(), metadata !3135, metadata ptr %2, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata ptr %2, metadata !2064, metadata !DIExpression()), !dbg !3136
  call void @llvm.dbg.value(metadata i8 58, metadata !2065, metadata !DIExpression()), !dbg !3136
  call void @llvm.dbg.value(metadata i32 1, metadata !2066, metadata !DIExpression()), !dbg !3136
  call void @llvm.dbg.value(metadata i8 58, metadata !2067, metadata !DIExpression()), !dbg !3136
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !3138
  call void @llvm.dbg.value(metadata ptr %3, metadata !2068, metadata !DIExpression()), !dbg !3136
  call void @llvm.dbg.value(metadata i32 26, metadata !2070, metadata !DIExpression()), !dbg !3136
  %4 = load i32, ptr %3, align 4, !dbg !3139, !tbaa !928
  call void @llvm.dbg.value(metadata i32 %4, metadata !2071, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3136
  %5 = or i32 %4, 67108864, !dbg !3140
  store i32 %5, ptr %3, align 4, !dbg !3140, !tbaa !928
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !3141
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #37, !dbg !3142
  ret ptr %6, !dbg !3143
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3144 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3148
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3146, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3147, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3076, metadata !DIExpression(), metadata !3148, metadata ptr %3, metadata !DIExpression()), !dbg !3150
  call void @llvm.dbg.value(metadata ptr %0, metadata !3073, metadata !DIExpression()), !dbg !3150
  call void @llvm.dbg.value(metadata i64 %1, metadata !3074, metadata !DIExpression()), !dbg !3150
  call void @llvm.dbg.value(metadata i8 58, metadata !3075, metadata !DIExpression()), !dbg !3150
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !3152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3153, !tbaa.struct !3081, !DIAssignID !3154
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3076, metadata !DIExpression(), metadata !3154, metadata ptr %3, metadata !DIExpression()), !dbg !3150
  call void @llvm.dbg.value(metadata ptr %3, metadata !2064, metadata !DIExpression()), !dbg !3155
  call void @llvm.dbg.value(metadata i8 58, metadata !2065, metadata !DIExpression()), !dbg !3155
  call void @llvm.dbg.value(metadata i32 1, metadata !2066, metadata !DIExpression()), !dbg !3155
  call void @llvm.dbg.value(metadata i8 58, metadata !2067, metadata !DIExpression()), !dbg !3155
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3157
  call void @llvm.dbg.value(metadata ptr %4, metadata !2068, metadata !DIExpression()), !dbg !3155
  call void @llvm.dbg.value(metadata i32 26, metadata !2070, metadata !DIExpression()), !dbg !3155
  %5 = load i32, ptr %4, align 4, !dbg !3158, !tbaa !928
  call void @llvm.dbg.value(metadata i32 %5, metadata !2071, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3155
  %6 = or i32 %5, 67108864, !dbg !3159
  store i32 %6, ptr %4, align 4, !dbg !3159, !tbaa !928
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3160
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !3161
  ret ptr %7, !dbg !3162
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3163 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3169
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3168, metadata !DIExpression(), metadata !3169, metadata ptr %4, metadata !DIExpression()), !dbg !3170
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2972, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3171
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3165, metadata !DIExpression()), !dbg !3170
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3166, metadata !DIExpression()), !dbg !3170
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3167, metadata !DIExpression()), !dbg !3170
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !3173
  call void @llvm.dbg.value(metadata i32 %1, metadata !2967, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2972, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3174
  %5 = icmp eq i32 %1, 10, !dbg !3175
  br i1 %5, label %6, label %7, !dbg !3176

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !3177, !noalias !3178
  unreachable, !dbg !3177

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2972, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3174
  store i32 %1, ptr %4, align 8, !dbg !3181, !tbaa.struct !3081, !DIAssignID !3182
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3181
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3181
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3168, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3182, metadata ptr %4, metadata !DIExpression()), !dbg !3170
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3168, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !3183, metadata ptr %8, metadata !DIExpression()), !dbg !3170
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2064, metadata !DIExpression()), !dbg !3184
  tail call void @llvm.dbg.value(metadata i8 58, metadata !2065, metadata !DIExpression()), !dbg !3184
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2066, metadata !DIExpression()), !dbg !3184
  tail call void @llvm.dbg.value(metadata i8 58, metadata !2067, metadata !DIExpression()), !dbg !3184
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3186
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2068, metadata !DIExpression()), !dbg !3184
  tail call void @llvm.dbg.value(metadata i32 26, metadata !2070, metadata !DIExpression()), !dbg !3184
  %10 = load i32, ptr %9, align 4, !dbg !3187, !tbaa !928
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !2071, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3184
  %11 = or i32 %10, 67108864, !dbg !3188
  store i32 %11, ptr %9, align 4, !dbg !3188, !tbaa !928, !DIAssignID !3189
  call void @llvm.dbg.assign(metadata i32 %11, metadata !3168, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !3189, metadata ptr %9, metadata !DIExpression()), !dbg !3170
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3190
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !3191
  ret ptr %12, !dbg !3192
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3193 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3201
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3197, metadata !DIExpression()), !dbg !3202
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3198, metadata !DIExpression()), !dbg !3202
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3199, metadata !DIExpression()), !dbg !3202
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3200, metadata !DIExpression()), !dbg !3202
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3203, metadata !DIExpression(), metadata !3201, metadata ptr %5, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i32 %0, metadata !3208, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata ptr %1, metadata !3209, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata ptr %2, metadata !3210, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata ptr %3, metadata !3211, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64 -1, metadata !3212, metadata !DIExpression()), !dbg !3213
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !3215
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3216, !tbaa.struct !3081, !DIAssignID !3217
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3203, metadata !DIExpression(), metadata !3217, metadata ptr %5, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3203, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3218, metadata ptr undef, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata ptr %5, metadata !2104, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata ptr %1, metadata !2105, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata ptr %2, metadata !2106, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata ptr %5, metadata !2104, metadata !DIExpression()), !dbg !3219
  store i32 10, ptr %5, align 8, !dbg !3221, !tbaa !2047, !DIAssignID !3222
  call void @llvm.dbg.assign(metadata i32 10, metadata !3203, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3222, metadata ptr %5, metadata !DIExpression()), !dbg !3213
  %6 = icmp ne ptr %1, null, !dbg !3223
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3224
  br i1 %8, label %10, label %9, !dbg !3224

9:                                                ; preds = %4
  tail call void @abort() #39, !dbg !3225
  unreachable, !dbg !3225

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3226
  store ptr %1, ptr %11, align 8, !dbg !3227, !tbaa !2118, !DIAssignID !3228
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3203, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3228, metadata ptr %11, metadata !DIExpression()), !dbg !3213
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3229
  store ptr %2, ptr %12, align 8, !dbg !3230, !tbaa !2121, !DIAssignID !3231
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3203, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3231, metadata ptr %12, metadata !DIExpression()), !dbg !3213
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3232
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !3233
  ret ptr %13, !dbg !3234
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !3204 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !3235
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3203, metadata !DIExpression(), metadata !3235, metadata ptr %6, metadata !DIExpression()), !dbg !3236
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3208, metadata !DIExpression()), !dbg !3236
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3209, metadata !DIExpression()), !dbg !3236
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3210, metadata !DIExpression()), !dbg !3236
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3211, metadata !DIExpression()), !dbg !3236
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !3212, metadata !DIExpression()), !dbg !3236
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #37, !dbg !3237
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3238, !tbaa.struct !3081, !DIAssignID !3239
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3203, metadata !DIExpression(), metadata !3239, metadata ptr %6, metadata !DIExpression()), !dbg !3236
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3203, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3240, metadata ptr undef, metadata !DIExpression()), !dbg !3236
  call void @llvm.dbg.value(metadata ptr %6, metadata !2104, metadata !DIExpression()), !dbg !3241
  call void @llvm.dbg.value(metadata ptr %1, metadata !2105, metadata !DIExpression()), !dbg !3241
  call void @llvm.dbg.value(metadata ptr %2, metadata !2106, metadata !DIExpression()), !dbg !3241
  call void @llvm.dbg.value(metadata ptr %6, metadata !2104, metadata !DIExpression()), !dbg !3241
  store i32 10, ptr %6, align 8, !dbg !3243, !tbaa !2047, !DIAssignID !3244
  call void @llvm.dbg.assign(metadata i32 10, metadata !3203, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3244, metadata ptr %6, metadata !DIExpression()), !dbg !3236
  %7 = icmp ne ptr %1, null, !dbg !3245
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3246
  br i1 %9, label %11, label %10, !dbg !3246

10:                                               ; preds = %5
  tail call void @abort() #39, !dbg !3247
  unreachable, !dbg !3247

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3248
  store ptr %1, ptr %12, align 8, !dbg !3249, !tbaa !2118, !DIAssignID !3250
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3203, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3250, metadata ptr %12, metadata !DIExpression()), !dbg !3236
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3251
  store ptr %2, ptr %13, align 8, !dbg !3252, !tbaa !2121, !DIAssignID !3253
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3203, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3253, metadata ptr %13, metadata !DIExpression()), !dbg !3236
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3254
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #37, !dbg !3255
  ret ptr %14, !dbg !3256
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3257 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3264
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3261, metadata !DIExpression()), !dbg !3265
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3262, metadata !DIExpression()), !dbg !3265
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3263, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.value(metadata i32 0, metadata !3197, metadata !DIExpression()), !dbg !3266
  call void @llvm.dbg.value(metadata ptr %0, metadata !3198, metadata !DIExpression()), !dbg !3266
  call void @llvm.dbg.value(metadata ptr %1, metadata !3199, metadata !DIExpression()), !dbg !3266
  call void @llvm.dbg.value(metadata ptr %2, metadata !3200, metadata !DIExpression()), !dbg !3266
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3203, metadata !DIExpression(), metadata !3264, metadata ptr %4, metadata !DIExpression()), !dbg !3268
  call void @llvm.dbg.value(metadata i32 0, metadata !3208, metadata !DIExpression()), !dbg !3268
  call void @llvm.dbg.value(metadata ptr %0, metadata !3209, metadata !DIExpression()), !dbg !3268
  call void @llvm.dbg.value(metadata ptr %1, metadata !3210, metadata !DIExpression()), !dbg !3268
  call void @llvm.dbg.value(metadata ptr %2, metadata !3211, metadata !DIExpression()), !dbg !3268
  call void @llvm.dbg.value(metadata i64 -1, metadata !3212, metadata !DIExpression()), !dbg !3268
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !3270
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3271, !tbaa.struct !3081, !DIAssignID !3272
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3203, metadata !DIExpression(), metadata !3272, metadata ptr %4, metadata !DIExpression()), !dbg !3268
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3203, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3273, metadata ptr undef, metadata !DIExpression()), !dbg !3268
  call void @llvm.dbg.value(metadata ptr %4, metadata !2104, metadata !DIExpression()), !dbg !3274
  call void @llvm.dbg.value(metadata ptr %0, metadata !2105, metadata !DIExpression()), !dbg !3274
  call void @llvm.dbg.value(metadata ptr %1, metadata !2106, metadata !DIExpression()), !dbg !3274
  call void @llvm.dbg.value(metadata ptr %4, metadata !2104, metadata !DIExpression()), !dbg !3274
  store i32 10, ptr %4, align 8, !dbg !3276, !tbaa !2047, !DIAssignID !3277
  call void @llvm.dbg.assign(metadata i32 10, metadata !3203, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3277, metadata ptr %4, metadata !DIExpression()), !dbg !3268
  %5 = icmp ne ptr %0, null, !dbg !3278
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3279
  br i1 %7, label %9, label %8, !dbg !3279

8:                                                ; preds = %3
  tail call void @abort() #39, !dbg !3280
  unreachable, !dbg !3280

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3281
  store ptr %0, ptr %10, align 8, !dbg !3282, !tbaa !2118, !DIAssignID !3283
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3203, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3283, metadata ptr %10, metadata !DIExpression()), !dbg !3268
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3284
  store ptr %1, ptr %11, align 8, !dbg !3285, !tbaa !2121, !DIAssignID !3286
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3203, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3286, metadata ptr %11, metadata !DIExpression()), !dbg !3268
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3287
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !3288
  ret ptr %12, !dbg !3289
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3290 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3298
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3294, metadata !DIExpression()), !dbg !3299
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3295, metadata !DIExpression()), !dbg !3299
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3296, metadata !DIExpression()), !dbg !3299
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3297, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3203, metadata !DIExpression(), metadata !3298, metadata ptr %5, metadata !DIExpression()), !dbg !3300
  call void @llvm.dbg.value(metadata i32 0, metadata !3208, metadata !DIExpression()), !dbg !3300
  call void @llvm.dbg.value(metadata ptr %0, metadata !3209, metadata !DIExpression()), !dbg !3300
  call void @llvm.dbg.value(metadata ptr %1, metadata !3210, metadata !DIExpression()), !dbg !3300
  call void @llvm.dbg.value(metadata ptr %2, metadata !3211, metadata !DIExpression()), !dbg !3300
  call void @llvm.dbg.value(metadata i64 %3, metadata !3212, metadata !DIExpression()), !dbg !3300
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !3302
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3303, !tbaa.struct !3081, !DIAssignID !3304
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3203, metadata !DIExpression(), metadata !3304, metadata ptr %5, metadata !DIExpression()), !dbg !3300
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3203, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3305, metadata ptr undef, metadata !DIExpression()), !dbg !3300
  call void @llvm.dbg.value(metadata ptr %5, metadata !2104, metadata !DIExpression()), !dbg !3306
  call void @llvm.dbg.value(metadata ptr %0, metadata !2105, metadata !DIExpression()), !dbg !3306
  call void @llvm.dbg.value(metadata ptr %1, metadata !2106, metadata !DIExpression()), !dbg !3306
  call void @llvm.dbg.value(metadata ptr %5, metadata !2104, metadata !DIExpression()), !dbg !3306
  store i32 10, ptr %5, align 8, !dbg !3308, !tbaa !2047, !DIAssignID !3309
  call void @llvm.dbg.assign(metadata i32 10, metadata !3203, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3309, metadata ptr %5, metadata !DIExpression()), !dbg !3300
  %6 = icmp ne ptr %0, null, !dbg !3310
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3311
  br i1 %8, label %10, label %9, !dbg !3311

9:                                                ; preds = %4
  tail call void @abort() #39, !dbg !3312
  unreachable, !dbg !3312

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3313
  store ptr %0, ptr %11, align 8, !dbg !3314, !tbaa !2118, !DIAssignID !3315
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3203, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3315, metadata ptr %11, metadata !DIExpression()), !dbg !3300
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3316
  store ptr %1, ptr %12, align 8, !dbg !3317, !tbaa !2121, !DIAssignID !3318
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3203, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3318, metadata ptr %12, metadata !DIExpression()), !dbg !3300
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3319
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !3320
  ret ptr %13, !dbg !3321
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3322 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3326, metadata !DIExpression()), !dbg !3329
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3327, metadata !DIExpression()), !dbg !3329
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3328, metadata !DIExpression()), !dbg !3329
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3330
  ret ptr %4, !dbg !3331
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3332 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3336, metadata !DIExpression()), !dbg !3338
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3337, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i32 0, metadata !3326, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata ptr %0, metadata !3327, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata i64 %1, metadata !3328, metadata !DIExpression()), !dbg !3339
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3341
  ret ptr %3, !dbg !3342
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3343 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3347, metadata !DIExpression()), !dbg !3349
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3348, metadata !DIExpression()), !dbg !3349
  call void @llvm.dbg.value(metadata i32 %0, metadata !3326, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.value(metadata ptr %1, metadata !3327, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.value(metadata i64 -1, metadata !3328, metadata !DIExpression()), !dbg !3350
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3352
  ret ptr %3, !dbg !3353
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !3354 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3358, metadata !DIExpression()), !dbg !3359
  call void @llvm.dbg.value(metadata i32 0, metadata !3347, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata ptr %0, metadata !3348, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata i32 0, metadata !3326, metadata !DIExpression()), !dbg !3362
  call void @llvm.dbg.value(metadata ptr %0, metadata !3327, metadata !DIExpression()), !dbg !3362
  call void @llvm.dbg.value(metadata i64 -1, metadata !3328, metadata !DIExpression()), !dbg !3362
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3364
  ret ptr %2, !dbg !3365
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !3366 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3405, metadata !DIExpression()), !dbg !3411
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3406, metadata !DIExpression()), !dbg !3411
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3407, metadata !DIExpression()), !dbg !3411
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3408, metadata !DIExpression()), !dbg !3411
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3409, metadata !DIExpression()), !dbg !3411
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !3410, metadata !DIExpression()), !dbg !3411
  %7 = icmp eq ptr %1, null, !dbg !3412
  br i1 %7, label %10, label %8, !dbg !3414

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.100, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #37, !dbg !3415
  br label %12, !dbg !3415

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.101, ptr noundef %2, ptr noundef %3) #37, !dbg !3416
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.3.103, i32 noundef 5) #37, !dbg !3417
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #37, !dbg !3417
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.104, ptr noundef %0), !dbg !3418
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.5.105, i32 noundef 5) #37, !dbg !3419
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.106) #37, !dbg !3419
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.104, ptr noundef %0), !dbg !3420
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
  ], !dbg !3421

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.7.107, i32 noundef 5) #37, !dbg !3422
  %21 = load ptr, ptr %4, align 8, !dbg !3422, !tbaa !858
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #37, !dbg !3422
  br label %147, !dbg !3424

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.8.108, i32 noundef 5) #37, !dbg !3425
  %25 = load ptr, ptr %4, align 8, !dbg !3425, !tbaa !858
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3425
  %27 = load ptr, ptr %26, align 8, !dbg !3425, !tbaa !858
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #37, !dbg !3425
  br label %147, !dbg !3426

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.9.109, i32 noundef 5) #37, !dbg !3427
  %31 = load ptr, ptr %4, align 8, !dbg !3427, !tbaa !858
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3427
  %33 = load ptr, ptr %32, align 8, !dbg !3427, !tbaa !858
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3427
  %35 = load ptr, ptr %34, align 8, !dbg !3427, !tbaa !858
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #37, !dbg !3427
  br label %147, !dbg !3428

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.10.110, i32 noundef 5) #37, !dbg !3429
  %39 = load ptr, ptr %4, align 8, !dbg !3429, !tbaa !858
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3429
  %41 = load ptr, ptr %40, align 8, !dbg !3429, !tbaa !858
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3429
  %43 = load ptr, ptr %42, align 8, !dbg !3429, !tbaa !858
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3429
  %45 = load ptr, ptr %44, align 8, !dbg !3429, !tbaa !858
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #37, !dbg !3429
  br label %147, !dbg !3430

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.11.111, i32 noundef 5) #37, !dbg !3431
  %49 = load ptr, ptr %4, align 8, !dbg !3431, !tbaa !858
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3431
  %51 = load ptr, ptr %50, align 8, !dbg !3431, !tbaa !858
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3431
  %53 = load ptr, ptr %52, align 8, !dbg !3431, !tbaa !858
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3431
  %55 = load ptr, ptr %54, align 8, !dbg !3431, !tbaa !858
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3431
  %57 = load ptr, ptr %56, align 8, !dbg !3431, !tbaa !858
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #37, !dbg !3431
  br label %147, !dbg !3432

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.12.112, i32 noundef 5) #37, !dbg !3433
  %61 = load ptr, ptr %4, align 8, !dbg !3433, !tbaa !858
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3433
  %63 = load ptr, ptr %62, align 8, !dbg !3433, !tbaa !858
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3433
  %65 = load ptr, ptr %64, align 8, !dbg !3433, !tbaa !858
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3433
  %67 = load ptr, ptr %66, align 8, !dbg !3433, !tbaa !858
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3433
  %69 = load ptr, ptr %68, align 8, !dbg !3433, !tbaa !858
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3433
  %71 = load ptr, ptr %70, align 8, !dbg !3433, !tbaa !858
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #37, !dbg !3433
  br label %147, !dbg !3434

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.13.113, i32 noundef 5) #37, !dbg !3435
  %75 = load ptr, ptr %4, align 8, !dbg !3435, !tbaa !858
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3435
  %77 = load ptr, ptr %76, align 8, !dbg !3435, !tbaa !858
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3435
  %79 = load ptr, ptr %78, align 8, !dbg !3435, !tbaa !858
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3435
  %81 = load ptr, ptr %80, align 8, !dbg !3435, !tbaa !858
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3435
  %83 = load ptr, ptr %82, align 8, !dbg !3435, !tbaa !858
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3435
  %85 = load ptr, ptr %84, align 8, !dbg !3435, !tbaa !858
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3435
  %87 = load ptr, ptr %86, align 8, !dbg !3435, !tbaa !858
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #37, !dbg !3435
  br label %147, !dbg !3436

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.14.114, i32 noundef 5) #37, !dbg !3437
  %91 = load ptr, ptr %4, align 8, !dbg !3437, !tbaa !858
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3437
  %93 = load ptr, ptr %92, align 8, !dbg !3437, !tbaa !858
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3437
  %95 = load ptr, ptr %94, align 8, !dbg !3437, !tbaa !858
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3437
  %97 = load ptr, ptr %96, align 8, !dbg !3437, !tbaa !858
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3437
  %99 = load ptr, ptr %98, align 8, !dbg !3437, !tbaa !858
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3437
  %101 = load ptr, ptr %100, align 8, !dbg !3437, !tbaa !858
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3437
  %103 = load ptr, ptr %102, align 8, !dbg !3437, !tbaa !858
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3437
  %105 = load ptr, ptr %104, align 8, !dbg !3437, !tbaa !858
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #37, !dbg !3437
  br label %147, !dbg !3438

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.15.115, i32 noundef 5) #37, !dbg !3439
  %109 = load ptr, ptr %4, align 8, !dbg !3439, !tbaa !858
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3439
  %111 = load ptr, ptr %110, align 8, !dbg !3439, !tbaa !858
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3439
  %113 = load ptr, ptr %112, align 8, !dbg !3439, !tbaa !858
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3439
  %115 = load ptr, ptr %114, align 8, !dbg !3439, !tbaa !858
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3439
  %117 = load ptr, ptr %116, align 8, !dbg !3439, !tbaa !858
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3439
  %119 = load ptr, ptr %118, align 8, !dbg !3439, !tbaa !858
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3439
  %121 = load ptr, ptr %120, align 8, !dbg !3439, !tbaa !858
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3439
  %123 = load ptr, ptr %122, align 8, !dbg !3439, !tbaa !858
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3439
  %125 = load ptr, ptr %124, align 8, !dbg !3439, !tbaa !858
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #37, !dbg !3439
  br label %147, !dbg !3440

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.16.116, i32 noundef 5) #37, !dbg !3441
  %129 = load ptr, ptr %4, align 8, !dbg !3441, !tbaa !858
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3441
  %131 = load ptr, ptr %130, align 8, !dbg !3441, !tbaa !858
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3441
  %133 = load ptr, ptr %132, align 8, !dbg !3441, !tbaa !858
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3441
  %135 = load ptr, ptr %134, align 8, !dbg !3441, !tbaa !858
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3441
  %137 = load ptr, ptr %136, align 8, !dbg !3441, !tbaa !858
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3441
  %139 = load ptr, ptr %138, align 8, !dbg !3441, !tbaa !858
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3441
  %141 = load ptr, ptr %140, align 8, !dbg !3441, !tbaa !858
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3441
  %143 = load ptr, ptr %142, align 8, !dbg !3441, !tbaa !858
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3441
  %145 = load ptr, ptr %144, align 8, !dbg !3441, !tbaa !858
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #37, !dbg !3441
  br label %147, !dbg !3442

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3443
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !3444 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3448, metadata !DIExpression()), !dbg !3454
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3449, metadata !DIExpression()), !dbg !3454
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3450, metadata !DIExpression()), !dbg !3454
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3451, metadata !DIExpression()), !dbg !3454
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3452, metadata !DIExpression()), !dbg !3454
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3453, metadata !DIExpression()), !dbg !3454
  br label %6, !dbg !3455

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3457
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !3453, metadata !DIExpression()), !dbg !3454
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3458
  %9 = load ptr, ptr %8, align 8, !dbg !3458, !tbaa !858
  %10 = icmp eq ptr %9, null, !dbg !3460
  %11 = add i64 %7, 1, !dbg !3461
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3453, metadata !DIExpression()), !dbg !3454
  br i1 %10, label %12, label %6, !dbg !3460, !llvm.loop !3462

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !3464
  ret void, !dbg !3465
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !3466 {
  %6 = alloca [10 x ptr], align 16, !DIAssignID !3485
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3483, metadata !DIExpression(), metadata !3485, metadata ptr %6, metadata !DIExpression()), !dbg !3486
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3477, metadata !DIExpression()), !dbg !3486
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3478, metadata !DIExpression()), !dbg !3486
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3479, metadata !DIExpression()), !dbg !3486
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3480, metadata !DIExpression()), !dbg !3486
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3481, metadata !DIExpression()), !dbg !3486
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #37, !dbg !3487
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3482, metadata !DIExpression()), !dbg !3486
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3482, metadata !DIExpression()), !dbg !3486
  %10 = icmp ult i32 %9, 41, !dbg !3488
  br i1 %10, label %11, label %16, !dbg !3488

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !3488
  %13 = zext nneg i32 %9 to i64, !dbg !3488
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !3488
  %15 = add nuw nsw i32 %9, 8, !dbg !3488
  store i32 %15, ptr %4, align 8, !dbg !3488
  br label %19, !dbg !3488

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !3488
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !3488
  store ptr %18, ptr %7, align 8, !dbg !3488
  br label %19, !dbg !3488

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !3488
  %22 = load ptr, ptr %21, align 8, !dbg !3488
  store ptr %22, ptr %6, align 16, !dbg !3491, !tbaa !858
  %23 = icmp eq ptr %22, null, !dbg !3492
  br i1 %23, label %128, label %24, !dbg !3493

24:                                               ; preds = %19
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3482, metadata !DIExpression()), !dbg !3486
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3482, metadata !DIExpression()), !dbg !3486
  %25 = icmp ult i32 %20, 41, !dbg !3488
  br i1 %25, label %29, label %26, !dbg !3488

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !3488
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !3488
  store ptr %28, ptr %7, align 8, !dbg !3488
  br label %34, !dbg !3488

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !3488
  %31 = zext nneg i32 %20 to i64, !dbg !3488
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !3488
  %33 = add nuw nsw i32 %20, 8, !dbg !3488
  store i32 %33, ptr %4, align 8, !dbg !3488
  br label %34, !dbg !3488

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !3488
  %37 = load ptr, ptr %36, align 8, !dbg !3488
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3494
  store ptr %37, ptr %38, align 8, !dbg !3491, !tbaa !858
  %39 = icmp eq ptr %37, null, !dbg !3492
  br i1 %39, label %128, label %40, !dbg !3493

40:                                               ; preds = %34
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3482, metadata !DIExpression()), !dbg !3486
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3482, metadata !DIExpression()), !dbg !3486
  %41 = icmp ult i32 %35, 41, !dbg !3488
  br i1 %41, label %45, label %42, !dbg !3488

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !3488
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !3488
  store ptr %44, ptr %7, align 8, !dbg !3488
  br label %50, !dbg !3488

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !3488
  %47 = zext nneg i32 %35 to i64, !dbg !3488
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !3488
  %49 = add nuw nsw i32 %35, 8, !dbg !3488
  store i32 %49, ptr %4, align 8, !dbg !3488
  br label %50, !dbg !3488

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !3488
  %53 = load ptr, ptr %52, align 8, !dbg !3488
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3494
  store ptr %53, ptr %54, align 16, !dbg !3491, !tbaa !858
  %55 = icmp eq ptr %53, null, !dbg !3492
  br i1 %55, label %128, label %56, !dbg !3493

56:                                               ; preds = %50
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3482, metadata !DIExpression()), !dbg !3486
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3482, metadata !DIExpression()), !dbg !3486
  %57 = icmp ult i32 %51, 41, !dbg !3488
  br i1 %57, label %61, label %58, !dbg !3488

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !3488
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !3488
  store ptr %60, ptr %7, align 8, !dbg !3488
  br label %66, !dbg !3488

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !3488
  %63 = zext nneg i32 %51 to i64, !dbg !3488
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !3488
  %65 = add nuw nsw i32 %51, 8, !dbg !3488
  store i32 %65, ptr %4, align 8, !dbg !3488
  br label %66, !dbg !3488

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !3488
  %69 = load ptr, ptr %68, align 8, !dbg !3488
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3494
  store ptr %69, ptr %70, align 8, !dbg !3491, !tbaa !858
  %71 = icmp eq ptr %69, null, !dbg !3492
  br i1 %71, label %128, label %72, !dbg !3493

72:                                               ; preds = %66
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3482, metadata !DIExpression()), !dbg !3486
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3482, metadata !DIExpression()), !dbg !3486
  %73 = icmp ult i32 %67, 41, !dbg !3488
  br i1 %73, label %77, label %74, !dbg !3488

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !3488
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !3488
  store ptr %76, ptr %7, align 8, !dbg !3488
  br label %82, !dbg !3488

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !3488
  %79 = zext nneg i32 %67 to i64, !dbg !3488
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !3488
  %81 = add nuw nsw i32 %67, 8, !dbg !3488
  store i32 %81, ptr %4, align 8, !dbg !3488
  br label %82, !dbg !3488

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !3488
  %85 = load ptr, ptr %84, align 8, !dbg !3488
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3494
  store ptr %85, ptr %86, align 16, !dbg !3491, !tbaa !858
  %87 = icmp eq ptr %85, null, !dbg !3492
  br i1 %87, label %128, label %88, !dbg !3493

88:                                               ; preds = %82
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3482, metadata !DIExpression()), !dbg !3486
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3482, metadata !DIExpression()), !dbg !3486
  %89 = icmp ult i32 %83, 41, !dbg !3488
  br i1 %89, label %93, label %90, !dbg !3488

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !3488
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !3488
  store ptr %92, ptr %7, align 8, !dbg !3488
  br label %98, !dbg !3488

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !3488
  %95 = zext nneg i32 %83 to i64, !dbg !3488
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !3488
  %97 = add nuw nsw i32 %83, 8, !dbg !3488
  store i32 %97, ptr %4, align 8, !dbg !3488
  br label %98, !dbg !3488

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !3488
  %100 = load ptr, ptr %99, align 8, !dbg !3488
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3494
  store ptr %100, ptr %101, align 8, !dbg !3491, !tbaa !858
  %102 = icmp eq ptr %100, null, !dbg !3492
  br i1 %102, label %128, label %103, !dbg !3493

103:                                              ; preds = %98
  tail call void @llvm.dbg.value(metadata i64 6, metadata !3482, metadata !DIExpression()), !dbg !3486
  %104 = load ptr, ptr %7, align 8, !dbg !3488
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !3488
  store ptr %105, ptr %7, align 8, !dbg !3488
  %106 = load ptr, ptr %104, align 8, !dbg !3488
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3494
  store ptr %106, ptr %107, align 16, !dbg !3491, !tbaa !858
  %108 = icmp eq ptr %106, null, !dbg !3492
  br i1 %108, label %128, label %109, !dbg !3493

109:                                              ; preds = %103
  tail call void @llvm.dbg.value(metadata i64 7, metadata !3482, metadata !DIExpression()), !dbg !3486
  %110 = load ptr, ptr %7, align 8, !dbg !3488
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !3488
  store ptr %111, ptr %7, align 8, !dbg !3488
  %112 = load ptr, ptr %110, align 8, !dbg !3488
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3494
  store ptr %112, ptr %113, align 8, !dbg !3491, !tbaa !858
  %114 = icmp eq ptr %112, null, !dbg !3492
  br i1 %114, label %128, label %115, !dbg !3493

115:                                              ; preds = %109
  tail call void @llvm.dbg.value(metadata i64 8, metadata !3482, metadata !DIExpression()), !dbg !3486
  %116 = load ptr, ptr %7, align 8, !dbg !3488
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !3488
  store ptr %117, ptr %7, align 8, !dbg !3488
  %118 = load ptr, ptr %116, align 8, !dbg !3488
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3494
  store ptr %118, ptr %119, align 16, !dbg !3491, !tbaa !858
  %120 = icmp eq ptr %118, null, !dbg !3492
  br i1 %120, label %128, label %121, !dbg !3493

121:                                              ; preds = %115
  tail call void @llvm.dbg.value(metadata i64 9, metadata !3482, metadata !DIExpression()), !dbg !3486
  %122 = load ptr, ptr %7, align 8, !dbg !3488
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !3488
  store ptr %123, ptr %7, align 8, !dbg !3488
  %124 = load ptr, ptr %122, align 8, !dbg !3488
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3494
  store ptr %124, ptr %125, align 8, !dbg !3491, !tbaa !858
  %126 = icmp eq ptr %124, null, !dbg !3492
  %127 = select i1 %126, i64 9, i64 10, !dbg !3493
  br label %128, !dbg !3493

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !3495
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !3496
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #37, !dbg !3497
  ret void, !dbg !3497
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3498 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !3511
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3506, metadata !DIExpression(), metadata !3511, metadata ptr %5, metadata !DIExpression()), !dbg !3512
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3502, metadata !DIExpression()), !dbg !3512
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3503, metadata !DIExpression()), !dbg !3512
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3504, metadata !DIExpression()), !dbg !3512
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3505, metadata !DIExpression()), !dbg !3512
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #37, !dbg !3513
  call void @llvm.va_start(ptr nonnull %5), !dbg !3514
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !3515
  call void @llvm.va_end(ptr nonnull %5), !dbg !3516
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #37, !dbg !3517
  ret void, !dbg !3517
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3518 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3519, !tbaa !858
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.104, ptr noundef %1), !dbg !3519
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.17.121, i32 noundef 5) #37, !dbg !3520
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.122) #37, !dbg !3520
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.19.123, i32 noundef 5) #37, !dbg !3521
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.124, ptr noundef nonnull @.str.21.125) #37, !dbg !3521
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.22.126, i32 noundef 5) #37, !dbg !3522
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.127) #37, !dbg !3522
  ret void, !dbg !3523
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !3524 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3529, metadata !DIExpression()), !dbg !3532
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3530, metadata !DIExpression()), !dbg !3532
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3531, metadata !DIExpression()), !dbg !3532
  call void @llvm.dbg.value(metadata ptr %0, metadata !3533, metadata !DIExpression()), !dbg !3538
  call void @llvm.dbg.value(metadata i64 %1, metadata !3536, metadata !DIExpression()), !dbg !3538
  call void @llvm.dbg.value(metadata i64 %2, metadata !3537, metadata !DIExpression()), !dbg !3538
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3540
  call void @llvm.dbg.value(metadata ptr %4, metadata !3541, metadata !DIExpression()), !dbg !3546
  %5 = icmp eq ptr %4, null, !dbg !3548
  br i1 %5, label %6, label %7, !dbg !3550

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !3551
  unreachable, !dbg !3551

7:                                                ; preds = %3
  ret ptr %4, !dbg !3552
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3534 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3533, metadata !DIExpression()), !dbg !3553
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3536, metadata !DIExpression()), !dbg !3553
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3537, metadata !DIExpression()), !dbg !3553
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3554
  call void @llvm.dbg.value(metadata ptr %4, metadata !3541, metadata !DIExpression()), !dbg !3555
  %5 = icmp eq ptr %4, null, !dbg !3557
  br i1 %5, label %6, label %7, !dbg !3558

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !3559
  unreachable, !dbg !3559

7:                                                ; preds = %3
  ret ptr %4, !dbg !3560
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3561 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3565, metadata !DIExpression()), !dbg !3566
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !3567
  call void @llvm.dbg.value(metadata ptr %2, metadata !3541, metadata !DIExpression()), !dbg !3568
  %3 = icmp eq ptr %2, null, !dbg !3570
  br i1 %3, label %4, label %5, !dbg !3571

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3572
  unreachable, !dbg !3572

5:                                                ; preds = %1
  ret ptr %2, !dbg !3573
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3574 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3575 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3579, metadata !DIExpression()), !dbg !3580
  call void @llvm.dbg.value(metadata i64 %0, metadata !3581, metadata !DIExpression()), !dbg !3585
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !3587
  call void @llvm.dbg.value(metadata ptr %2, metadata !3541, metadata !DIExpression()), !dbg !3588
  %3 = icmp eq ptr %2, null, !dbg !3590
  br i1 %3, label %4, label %5, !dbg !3591

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3592
  unreachable, !dbg !3592

5:                                                ; preds = %1
  ret ptr %2, !dbg !3593
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3594 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3598, metadata !DIExpression()), !dbg !3599
  call void @llvm.dbg.value(metadata i64 %0, metadata !3565, metadata !DIExpression()), !dbg !3600
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !3602
  call void @llvm.dbg.value(metadata ptr %2, metadata !3541, metadata !DIExpression()), !dbg !3603
  %3 = icmp eq ptr %2, null, !dbg !3605
  br i1 %3, label %4, label %5, !dbg !3606

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3607
  unreachable, !dbg !3607

5:                                                ; preds = %1
  ret ptr %2, !dbg !3608
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3609 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3613, metadata !DIExpression()), !dbg !3615
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3614, metadata !DIExpression()), !dbg !3615
  call void @llvm.dbg.value(metadata ptr %0, metadata !3616, metadata !DIExpression()), !dbg !3621
  call void @llvm.dbg.value(metadata i64 %1, metadata !3620, metadata !DIExpression()), !dbg !3621
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3623
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #45, !dbg !3624
  call void @llvm.dbg.value(metadata ptr %4, metadata !3541, metadata !DIExpression()), !dbg !3625
  %5 = icmp eq ptr %4, null, !dbg !3627
  br i1 %5, label %6, label %7, !dbg !3628

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3629
  unreachable, !dbg !3629

7:                                                ; preds = %2
  ret ptr %4, !dbg !3630
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3631 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3632 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3636, metadata !DIExpression()), !dbg !3638
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3637, metadata !DIExpression()), !dbg !3638
  call void @llvm.dbg.value(metadata ptr %0, metadata !3639, metadata !DIExpression()), !dbg !3643
  call void @llvm.dbg.value(metadata i64 %1, metadata !3642, metadata !DIExpression()), !dbg !3643
  call void @llvm.dbg.value(metadata ptr %0, metadata !3616, metadata !DIExpression()), !dbg !3645
  call void @llvm.dbg.value(metadata i64 %1, metadata !3620, metadata !DIExpression()), !dbg !3645
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3647
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #45, !dbg !3648
  call void @llvm.dbg.value(metadata ptr %4, metadata !3541, metadata !DIExpression()), !dbg !3649
  %5 = icmp eq ptr %4, null, !dbg !3651
  br i1 %5, label %6, label %7, !dbg !3652

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3653
  unreachable, !dbg !3653

7:                                                ; preds = %2
  ret ptr %4, !dbg !3654
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3655 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3659, metadata !DIExpression()), !dbg !3662
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3660, metadata !DIExpression()), !dbg !3662
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3661, metadata !DIExpression()), !dbg !3662
  call void @llvm.dbg.value(metadata ptr %0, metadata !3663, metadata !DIExpression()), !dbg !3668
  call void @llvm.dbg.value(metadata i64 %1, metadata !3666, metadata !DIExpression()), !dbg !3668
  call void @llvm.dbg.value(metadata i64 %2, metadata !3667, metadata !DIExpression()), !dbg !3668
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3670
  call void @llvm.dbg.value(metadata ptr %4, metadata !3541, metadata !DIExpression()), !dbg !3671
  %5 = icmp eq ptr %4, null, !dbg !3673
  br i1 %5, label %6, label %7, !dbg !3674

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !3675
  unreachable, !dbg !3675

7:                                                ; preds = %3
  ret ptr %4, !dbg !3676
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3677 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3681, metadata !DIExpression()), !dbg !3683
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3682, metadata !DIExpression()), !dbg !3683
  call void @llvm.dbg.value(metadata ptr null, metadata !3533, metadata !DIExpression()), !dbg !3684
  call void @llvm.dbg.value(metadata i64 %0, metadata !3536, metadata !DIExpression()), !dbg !3684
  call void @llvm.dbg.value(metadata i64 %1, metadata !3537, metadata !DIExpression()), !dbg !3684
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !3686
  call void @llvm.dbg.value(metadata ptr %3, metadata !3541, metadata !DIExpression()), !dbg !3687
  %4 = icmp eq ptr %3, null, !dbg !3689
  br i1 %4, label %5, label %6, !dbg !3690

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3691
  unreachable, !dbg !3691

6:                                                ; preds = %2
  ret ptr %3, !dbg !3692
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3693 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3697, metadata !DIExpression()), !dbg !3699
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3698, metadata !DIExpression()), !dbg !3699
  call void @llvm.dbg.value(metadata ptr null, metadata !3659, metadata !DIExpression()), !dbg !3700
  call void @llvm.dbg.value(metadata i64 %0, metadata !3660, metadata !DIExpression()), !dbg !3700
  call void @llvm.dbg.value(metadata i64 %1, metadata !3661, metadata !DIExpression()), !dbg !3700
  call void @llvm.dbg.value(metadata ptr null, metadata !3663, metadata !DIExpression()), !dbg !3702
  call void @llvm.dbg.value(metadata i64 %0, metadata !3666, metadata !DIExpression()), !dbg !3702
  call void @llvm.dbg.value(metadata i64 %1, metadata !3667, metadata !DIExpression()), !dbg !3702
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !3704
  call void @llvm.dbg.value(metadata ptr %3, metadata !3541, metadata !DIExpression()), !dbg !3705
  %4 = icmp eq ptr %3, null, !dbg !3707
  br i1 %4, label %5, label %6, !dbg !3708

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3709
  unreachable, !dbg !3709

6:                                                ; preds = %2
  ret ptr %3, !dbg !3710
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3711 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3715, metadata !DIExpression()), !dbg !3717
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3716, metadata !DIExpression()), !dbg !3717
  call void @llvm.dbg.value(metadata ptr %0, metadata !784, metadata !DIExpression()), !dbg !3718
  call void @llvm.dbg.value(metadata ptr %1, metadata !785, metadata !DIExpression()), !dbg !3718
  call void @llvm.dbg.value(metadata i64 1, metadata !786, metadata !DIExpression()), !dbg !3718
  %3 = load i64, ptr %1, align 8, !dbg !3720, !tbaa !1218
  call void @llvm.dbg.value(metadata i64 %3, metadata !787, metadata !DIExpression()), !dbg !3718
  %4 = icmp eq ptr %0, null, !dbg !3721
  br i1 %4, label %5, label %8, !dbg !3723

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3724
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3727
  br label %15, !dbg !3727

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3728
  %10 = add nuw i64 %9, 1, !dbg !3728
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3728
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3728
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3728
  call void @llvm.dbg.value(metadata i64 %13, metadata !787, metadata !DIExpression()), !dbg !3718
  br i1 %12, label %14, label %15, !dbg !3731

14:                                               ; preds = %8
  tail call void @xalloc_die() #39, !dbg !3732
  unreachable, !dbg !3732

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3718
  call void @llvm.dbg.value(metadata i64 %16, metadata !787, metadata !DIExpression()), !dbg !3718
  call void @llvm.dbg.value(metadata ptr %0, metadata !3533, metadata !DIExpression()), !dbg !3733
  call void @llvm.dbg.value(metadata i64 %16, metadata !3536, metadata !DIExpression()), !dbg !3733
  call void @llvm.dbg.value(metadata i64 1, metadata !3537, metadata !DIExpression()), !dbg !3733
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #37, !dbg !3735
  call void @llvm.dbg.value(metadata ptr %17, metadata !3541, metadata !DIExpression()), !dbg !3736
  %18 = icmp eq ptr %17, null, !dbg !3738
  br i1 %18, label %19, label %20, !dbg !3739

19:                                               ; preds = %15
  tail call void @xalloc_die() #39, !dbg !3740
  unreachable, !dbg !3740

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !784, metadata !DIExpression()), !dbg !3718
  store i64 %16, ptr %1, align 8, !dbg !3741, !tbaa !1218
  ret ptr %17, !dbg !3742
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !779 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !784, metadata !DIExpression()), !dbg !3743
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !785, metadata !DIExpression()), !dbg !3743
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !786, metadata !DIExpression()), !dbg !3743
  %4 = load i64, ptr %1, align 8, !dbg !3744, !tbaa !1218
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !787, metadata !DIExpression()), !dbg !3743
  %5 = icmp eq ptr %0, null, !dbg !3745
  br i1 %5, label %6, label %13, !dbg !3746

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3747
  br i1 %7, label %8, label %20, !dbg !3748

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3749
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !787, metadata !DIExpression()), !dbg !3743
  %10 = icmp ugt i64 %2, 128, !dbg !3751
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3752
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !787, metadata !DIExpression()), !dbg !3743
  br label %20, !dbg !3753

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3754
  %15 = add nuw i64 %14, 1, !dbg !3754
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3754
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3754
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3754
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !787, metadata !DIExpression()), !dbg !3743
  br i1 %17, label %19, label %20, !dbg !3755

19:                                               ; preds = %13
  tail call void @xalloc_die() #39, !dbg !3756
  unreachable, !dbg !3756

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3743
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !787, metadata !DIExpression()), !dbg !3743
  call void @llvm.dbg.value(metadata ptr %0, metadata !3533, metadata !DIExpression()), !dbg !3757
  call void @llvm.dbg.value(metadata i64 %21, metadata !3536, metadata !DIExpression()), !dbg !3757
  call void @llvm.dbg.value(metadata i64 %2, metadata !3537, metadata !DIExpression()), !dbg !3757
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #37, !dbg !3759
  call void @llvm.dbg.value(metadata ptr %22, metadata !3541, metadata !DIExpression()), !dbg !3760
  %23 = icmp eq ptr %22, null, !dbg !3762
  br i1 %23, label %24, label %25, !dbg !3763

24:                                               ; preds = %20
  tail call void @xalloc_die() #39, !dbg !3764
  unreachable, !dbg !3764

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !784, metadata !DIExpression()), !dbg !3743
  store i64 %21, ptr %1, align 8, !dbg !3765, !tbaa !1218
  ret ptr %22, !dbg !3766
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !791 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !800, metadata !DIExpression()), !dbg !3767
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !801, metadata !DIExpression()), !dbg !3767
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !802, metadata !DIExpression()), !dbg !3767
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !803, metadata !DIExpression()), !dbg !3767
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !804, metadata !DIExpression()), !dbg !3767
  %6 = load i64, ptr %1, align 8, !dbg !3768, !tbaa !1218
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !805, metadata !DIExpression()), !dbg !3767
  %7 = ashr i64 %6, 1, !dbg !3769
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3769
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3769
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3769
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !806, metadata !DIExpression()), !dbg !3767
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3771
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !806, metadata !DIExpression()), !dbg !3767
  %12 = icmp sgt i64 %3, -1, !dbg !3772
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !3774
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !3774
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !806, metadata !DIExpression()), !dbg !3767
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !3775
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !3775
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !3775
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !807, metadata !DIExpression()), !dbg !3767
  %18 = icmp slt i64 %17, 128, !dbg !3775
  %19 = select i1 %18, i64 128, i64 0, !dbg !3775
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !3775
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !808, metadata !DIExpression()), !dbg !3767
  %21 = icmp eq i64 %20, 0, !dbg !3776
  br i1 %21, label %26, label %22, !dbg !3778

22:                                               ; preds = %5
  %23 = sdiv i64 %20, %4, !dbg !3779
  tail call void @llvm.dbg.value(metadata i64 %23, metadata !806, metadata !DIExpression()), !dbg !3767
  %24 = srem i64 %20, %4, !dbg !3781
  %25 = sub nsw i64 %20, %24, !dbg !3782
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !807, metadata !DIExpression()), !dbg !3767
  br label %26, !dbg !3783

26:                                               ; preds = %22, %5
  %27 = phi i64 [ %23, %22 ], [ %14, %5 ], !dbg !3767
  %28 = phi i64 [ %25, %22 ], [ %17, %5 ], !dbg !3767
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !807, metadata !DIExpression()), !dbg !3767
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !806, metadata !DIExpression()), !dbg !3767
  %29 = icmp eq ptr %0, null, !dbg !3784
  br i1 %29, label %30, label %31, !dbg !3786

30:                                               ; preds = %26
  store i64 0, ptr %1, align 8, !dbg !3787, !tbaa !1218
  br label %31, !dbg !3788

31:                                               ; preds = %30, %26
  %32 = sub nsw i64 %27, %6, !dbg !3789
  %33 = icmp slt i64 %32, %2, !dbg !3791
  br i1 %33, label %34, label %46, !dbg !3792

34:                                               ; preds = %31
  %35 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3793
  %36 = extractvalue { i64, i1 } %35, 1, !dbg !3793
  %37 = extractvalue { i64, i1 } %35, 0, !dbg !3793
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !806, metadata !DIExpression()), !dbg !3767
  %38 = icmp sgt i64 %37, %3
  %39 = select i1 %12, i1 %38, i1 false
  %40 = or i1 %36, %39, !dbg !3794
  br i1 %40, label %45, label %41, !dbg !3794

41:                                               ; preds = %34
  %42 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %37, i64 %4), !dbg !3795
  %43 = extractvalue { i64, i1 } %42, 1, !dbg !3795
  %44 = extractvalue { i64, i1 } %42, 0, !dbg !3795
  tail call void @llvm.dbg.value(metadata i64 %44, metadata !807, metadata !DIExpression()), !dbg !3767
  br i1 %43, label %45, label %46, !dbg !3796

45:                                               ; preds = %41, %34
  tail call void @xalloc_die() #39, !dbg !3797
  unreachable, !dbg !3797

46:                                               ; preds = %41, %31
  %47 = phi i64 [ %37, %41 ], [ %27, %31 ], !dbg !3767
  %48 = phi i64 [ %44, %41 ], [ %28, %31 ], !dbg !3767
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !807, metadata !DIExpression()), !dbg !3767
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !806, metadata !DIExpression()), !dbg !3767
  call void @llvm.dbg.value(metadata ptr %0, metadata !3613, metadata !DIExpression()), !dbg !3798
  call void @llvm.dbg.value(metadata i64 %48, metadata !3614, metadata !DIExpression()), !dbg !3798
  call void @llvm.dbg.value(metadata ptr %0, metadata !3616, metadata !DIExpression()), !dbg !3800
  call void @llvm.dbg.value(metadata i64 %48, metadata !3620, metadata !DIExpression()), !dbg !3800
  %49 = tail call i64 @llvm.umax.i64(i64 %48, i64 1), !dbg !3802
  %50 = tail call ptr @realloc(ptr noundef %0, i64 noundef %49) #45, !dbg !3803
  call void @llvm.dbg.value(metadata ptr %50, metadata !3541, metadata !DIExpression()), !dbg !3804
  %51 = icmp eq ptr %50, null, !dbg !3806
  br i1 %51, label %52, label %53, !dbg !3807

52:                                               ; preds = %46
  tail call void @xalloc_die() #39, !dbg !3808
  unreachable, !dbg !3808

53:                                               ; preds = %46
  tail call void @llvm.dbg.value(metadata ptr %50, metadata !800, metadata !DIExpression()), !dbg !3767
  store i64 %47, ptr %1, align 8, !dbg !3809, !tbaa !1218
  ret ptr %50, !dbg !3810
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3811 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3813, metadata !DIExpression()), !dbg !3814
  call void @llvm.dbg.value(metadata i64 %0, metadata !3815, metadata !DIExpression()), !dbg !3819
  call void @llvm.dbg.value(metadata i64 1, metadata !3818, metadata !DIExpression()), !dbg !3819
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #44, !dbg !3821
  call void @llvm.dbg.value(metadata ptr %2, metadata !3541, metadata !DIExpression()), !dbg !3822
  %3 = icmp eq ptr %2, null, !dbg !3824
  br i1 %3, label %4, label %5, !dbg !3825

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3826
  unreachable, !dbg !3826

5:                                                ; preds = %1
  ret ptr %2, !dbg !3827
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3828 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3816 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3815, metadata !DIExpression()), !dbg !3829
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3818, metadata !DIExpression()), !dbg !3829
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #44, !dbg !3830
  call void @llvm.dbg.value(metadata ptr %3, metadata !3541, metadata !DIExpression()), !dbg !3831
  %4 = icmp eq ptr %3, null, !dbg !3833
  br i1 %4, label %5, label %6, !dbg !3834

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3835
  unreachable, !dbg !3835

6:                                                ; preds = %2
  ret ptr %3, !dbg !3836
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3837 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3839, metadata !DIExpression()), !dbg !3840
  call void @llvm.dbg.value(metadata i64 %0, metadata !3841, metadata !DIExpression()), !dbg !3845
  call void @llvm.dbg.value(metadata i64 1, metadata !3844, metadata !DIExpression()), !dbg !3845
  call void @llvm.dbg.value(metadata i64 %0, metadata !3847, metadata !DIExpression()), !dbg !3851
  call void @llvm.dbg.value(metadata i64 1, metadata !3850, metadata !DIExpression()), !dbg !3851
  call void @llvm.dbg.value(metadata i64 %0, metadata !3847, metadata !DIExpression()), !dbg !3851
  call void @llvm.dbg.value(metadata i64 1, metadata !3850, metadata !DIExpression()), !dbg !3851
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #44, !dbg !3853
  call void @llvm.dbg.value(metadata ptr %2, metadata !3541, metadata !DIExpression()), !dbg !3854
  %3 = icmp eq ptr %2, null, !dbg !3856
  br i1 %3, label %4, label %5, !dbg !3857

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3858
  unreachable, !dbg !3858

5:                                                ; preds = %1
  ret ptr %2, !dbg !3859
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3842 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3841, metadata !DIExpression()), !dbg !3860
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3844, metadata !DIExpression()), !dbg !3860
  call void @llvm.dbg.value(metadata i64 %0, metadata !3847, metadata !DIExpression()), !dbg !3861
  call void @llvm.dbg.value(metadata i64 %1, metadata !3850, metadata !DIExpression()), !dbg !3861
  call void @llvm.dbg.value(metadata i64 %0, metadata !3847, metadata !DIExpression()), !dbg !3861
  call void @llvm.dbg.value(metadata i64 %1, metadata !3850, metadata !DIExpression()), !dbg !3861
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #44, !dbg !3863
  call void @llvm.dbg.value(metadata ptr %3, metadata !3541, metadata !DIExpression()), !dbg !3864
  %4 = icmp eq ptr %3, null, !dbg !3866
  br i1 %4, label %5, label %6, !dbg !3867

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3868
  unreachable, !dbg !3868

6:                                                ; preds = %2
  ret ptr %3, !dbg !3869
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3870 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3874, metadata !DIExpression()), !dbg !3876
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3875, metadata !DIExpression()), !dbg !3876
  call void @llvm.dbg.value(metadata i64 %1, metadata !3565, metadata !DIExpression()), !dbg !3877
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !3879
  call void @llvm.dbg.value(metadata ptr %3, metadata !3541, metadata !DIExpression()), !dbg !3880
  %4 = icmp eq ptr %3, null, !dbg !3882
  br i1 %4, label %5, label %6, !dbg !3883

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3884
  unreachable, !dbg !3884

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3885, metadata !DIExpression()), !dbg !3893
  call void @llvm.dbg.value(metadata ptr %0, metadata !3891, metadata !DIExpression()), !dbg !3893
  call void @llvm.dbg.value(metadata i64 %1, metadata !3892, metadata !DIExpression()), !dbg !3893
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3895
  ret ptr %3, !dbg !3896
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3897 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3901, metadata !DIExpression()), !dbg !3903
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3902, metadata !DIExpression()), !dbg !3903
  call void @llvm.dbg.value(metadata i64 %1, metadata !3579, metadata !DIExpression()), !dbg !3904
  call void @llvm.dbg.value(metadata i64 %1, metadata !3581, metadata !DIExpression()), !dbg !3906
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !3908
  call void @llvm.dbg.value(metadata ptr %3, metadata !3541, metadata !DIExpression()), !dbg !3909
  %4 = icmp eq ptr %3, null, !dbg !3911
  br i1 %4, label %5, label %6, !dbg !3912

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3913
  unreachable, !dbg !3913

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3885, metadata !DIExpression()), !dbg !3914
  call void @llvm.dbg.value(metadata ptr %0, metadata !3891, metadata !DIExpression()), !dbg !3914
  call void @llvm.dbg.value(metadata i64 %1, metadata !3892, metadata !DIExpression()), !dbg !3914
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3916
  ret ptr %3, !dbg !3917
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3918 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3922, metadata !DIExpression()), !dbg !3925
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3923, metadata !DIExpression()), !dbg !3925
  %3 = add nsw i64 %1, 1, !dbg !3926
  call void @llvm.dbg.value(metadata i64 %3, metadata !3579, metadata !DIExpression()), !dbg !3927
  call void @llvm.dbg.value(metadata i64 %3, metadata !3581, metadata !DIExpression()), !dbg !3929
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !3931
  call void @llvm.dbg.value(metadata ptr %4, metadata !3541, metadata !DIExpression()), !dbg !3932
  %5 = icmp eq ptr %4, null, !dbg !3934
  br i1 %5, label %6, label %7, !dbg !3935

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3936
  unreachable, !dbg !3936

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3924, metadata !DIExpression()), !dbg !3925
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3937
  store i8 0, ptr %8, align 1, !dbg !3938, !tbaa !937
  call void @llvm.dbg.value(metadata ptr %4, metadata !3885, metadata !DIExpression()), !dbg !3939
  call void @llvm.dbg.value(metadata ptr %0, metadata !3891, metadata !DIExpression()), !dbg !3939
  call void @llvm.dbg.value(metadata i64 %1, metadata !3892, metadata !DIExpression()), !dbg !3939
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3941
  ret ptr %4, !dbg !3942
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3943 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3945, metadata !DIExpression()), !dbg !3946
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #38, !dbg !3947
  %3 = add i64 %2, 1, !dbg !3948
  call void @llvm.dbg.value(metadata ptr %0, metadata !3874, metadata !DIExpression()), !dbg !3949
  call void @llvm.dbg.value(metadata i64 %3, metadata !3875, metadata !DIExpression()), !dbg !3949
  call void @llvm.dbg.value(metadata i64 %3, metadata !3565, metadata !DIExpression()), !dbg !3951
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !3953
  call void @llvm.dbg.value(metadata ptr %4, metadata !3541, metadata !DIExpression()), !dbg !3954
  %5 = icmp eq ptr %4, null, !dbg !3956
  br i1 %5, label %6, label %7, !dbg !3957

6:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3958
  unreachable, !dbg !3958

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3885, metadata !DIExpression()), !dbg !3959
  call void @llvm.dbg.value(metadata ptr %0, metadata !3891, metadata !DIExpression()), !dbg !3959
  call void @llvm.dbg.value(metadata i64 %3, metadata !3892, metadata !DIExpression()), !dbg !3959
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #37, !dbg !3961
  ret ptr %4, !dbg !3962
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3963 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3968, !tbaa !928
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3965, metadata !DIExpression()), !dbg !3969
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.142, ptr noundef nonnull @.str.2.143, i32 noundef 5) #37, !dbg !3968
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.144, ptr noundef %2) #37, !dbg !3968
  %3 = icmp eq i32 %1, 0, !dbg !3968
  tail call void @llvm.assume(i1 %3), !dbg !3968
  tail call void @abort() #39, !dbg !3970
  unreachable, !dbg !3970
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #34

; Function Attrs: nounwind uwtable
define dso_local i32 @xstrtoumax(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr noundef readonly %4) local_unnamed_addr #10 !dbg !3971 {
  %6 = alloca ptr, align 8, !DIAssignID !3996
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3983, metadata !DIExpression(), metadata !3996, metadata ptr %6, metadata !DIExpression()), !dbg !3997
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3978, metadata !DIExpression()), !dbg !3997
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3979, metadata !DIExpression()), !dbg !3997
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3980, metadata !DIExpression()), !dbg !3997
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3981, metadata !DIExpression()), !dbg !3997
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3982, metadata !DIExpression()), !dbg !3997
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #37, !dbg !3998
  %7 = icmp eq ptr %1, null, !dbg !3999
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !3984, metadata !DIExpression()), !dbg !3997
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3985, metadata !DIExpression()), !dbg !4000
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3988, metadata !DIExpression()), !dbg !4000
  %8 = tail call ptr @__ctype_b_loc() #40, !dbg !3997
  %9 = load ptr, ptr %8, align 8, !tbaa !858
  br label %10, !dbg !4001

10:                                               ; preds = %10, %5
  %11 = phi ptr [ %0, %5 ], [ %18, %10 ], !dbg !4000
  %12 = load i8, ptr %11, align 1, !dbg !4000, !tbaa !937
  tail call void @llvm.dbg.value(metadata i8 %12, metadata !3988, metadata !DIExpression()), !dbg !4000
  tail call void @llvm.dbg.value(metadata ptr %11, metadata !3985, metadata !DIExpression()), !dbg !4000
  %13 = zext i8 %12 to i64
  %14 = getelementptr inbounds i16, ptr %9, i64 %13, !dbg !4002
  %15 = load i16, ptr %14, align 2, !dbg !4002, !tbaa !969
  %16 = and i16 %15, 8192, !dbg !4002
  %17 = icmp eq i16 %16, 0, !dbg !4001
  %18 = getelementptr inbounds i8, ptr %11, i64 1, !dbg !4003
  tail call void @llvm.dbg.value(metadata ptr %18, metadata !3985, metadata !DIExpression()), !dbg !4000
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3988, metadata !DIExpression()), !dbg !4000
  br i1 %17, label %19, label %10, !dbg !4001, !llvm.loop !4004

19:                                               ; preds = %10
  %20 = select i1 %7, ptr %6, ptr %1, !dbg !3999
  %21 = icmp eq i8 %12, 45, !dbg !4006
  br i1 %21, label %22, label %23, !dbg !4008

22:                                               ; preds = %19
  store ptr %0, ptr %20, align 8, !dbg !4009, !tbaa !858
  br label %386

23:                                               ; preds = %19
  %24 = tail call ptr @__errno_location() #40, !dbg !4011
  store i32 0, ptr %24, align 4, !dbg !4012, !tbaa !928
  %25 = call i64 @strtoumax(ptr noundef %0, ptr noundef nonnull %20, i32 noundef %2) #37, !dbg !4013
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !3989, metadata !DIExpression()), !dbg !3997
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3990, metadata !DIExpression()), !dbg !3997
  %26 = load ptr, ptr %20, align 8, !dbg !4014, !tbaa !858
  %27 = icmp eq ptr %26, %0, !dbg !4016
  br i1 %27, label %28, label %37, !dbg !4017

28:                                               ; preds = %23
  %29 = icmp eq ptr %4, null, !dbg !4018
  br i1 %29, label %386, label %30, !dbg !4021

30:                                               ; preds = %28
  %31 = load i8, ptr %0, align 1, !dbg !4022, !tbaa !937
  %32 = icmp eq i8 %31, 0, !dbg !4022
  br i1 %32, label %386, label %33, !dbg !4023

33:                                               ; preds = %30
  %34 = sext i8 %31 to i32, !dbg !4022
  %35 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %34) #38, !dbg !4024
  %36 = icmp eq ptr %35, null, !dbg !4024
  br i1 %36, label %386, label %44, !dbg !4025

37:                                               ; preds = %23
  %38 = load i32, ptr %24, align 4, !dbg !4026, !tbaa !928
  switch i32 %38, label %386 [
    i32 0, label %40
    i32 34, label %39
  ], !dbg !4028

39:                                               ; preds = %37
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3990, metadata !DIExpression()), !dbg !3997
  br label %40, !dbg !4029

40:                                               ; preds = %37, %39
  %41 = phi i32 [ 1, %39 ], [ %38, %37 ], !dbg !3997
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !3989, metadata !DIExpression()), !dbg !3997
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !3990, metadata !DIExpression()), !dbg !3997
  %42 = icmp eq ptr %4, null, !dbg !4031
  br i1 %42, label %43, label %44, !dbg !4033

43:                                               ; preds = %40
  store i64 %25, ptr %3, align 8, !dbg !4034, !tbaa !1218
  br label %386, !dbg !4036

44:                                               ; preds = %33, %40
  %45 = phi i32 [ %41, %40 ], [ 0, %33 ]
  %46 = phi i64 [ %25, %40 ], [ 1, %33 ]
  %47 = load i8, ptr %26, align 1, !dbg !4037, !tbaa !937
  %48 = icmp eq i8 %47, 0, !dbg !4038
  br i1 %48, label %383, label %49, !dbg !4039

49:                                               ; preds = %44
  %50 = sext i8 %47 to i32, !dbg !4037
  %51 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %50) #38, !dbg !4040
  %52 = icmp eq ptr %51, null, !dbg !4040
  br i1 %52, label %53, label %55, !dbg !4042

53:                                               ; preds = %49
  store i64 %46, ptr %3, align 8, !dbg !4043, !tbaa !1218
  %54 = or disjoint i32 %45, 2, !dbg !4045
  br label %386, !dbg !4046

55:                                               ; preds = %49
  tail call void @llvm.dbg.value(metadata i32 1024, metadata !3991, metadata !DIExpression()), !dbg !4047
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3994, metadata !DIExpression()), !dbg !4047
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
  ], !dbg !4048

56:                                               ; preds = %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55
  %57 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef 48) #38, !dbg !4049
  %58 = icmp eq ptr %57, null, !dbg !4049
  br i1 %58, label %68, label %59, !dbg !4052

59:                                               ; preds = %56
  %60 = getelementptr inbounds i8, ptr %26, i64 1, !dbg !4053
  %61 = load i8, ptr %60, align 1, !dbg !4053, !tbaa !937
  switch i8 %61, label %68 [
    i8 105, label %62
    i8 66, label %67
    i8 68, label %67
  ], !dbg !4054

62:                                               ; preds = %59
  %63 = getelementptr inbounds i8, ptr %26, i64 2, !dbg !4055
  %64 = load i8, ptr %63, align 1, !dbg !4055, !tbaa !937
  %65 = icmp eq i8 %64, 66, !dbg !4058
  %66 = select i1 %65, i64 3, i64 1, !dbg !4059
  br label %68, !dbg !4059

67:                                               ; preds = %59, %59
  tail call void @llvm.dbg.value(metadata i32 1000, metadata !3991, metadata !DIExpression()), !dbg !4047
  tail call void @llvm.dbg.value(metadata i32 2, metadata !3994, metadata !DIExpression()), !dbg !4047
  br label %68, !dbg !4060

68:                                               ; preds = %62, %56, %59, %67, %55
  %69 = phi i64 [ 1024, %55 ], [ 1024, %59 ], [ 1000, %67 ], [ 1024, %56 ], [ 1024, %62 ], !dbg !4047
  %70 = phi i64 [ 1, %55 ], [ 1, %59 ], [ 2, %67 ], [ 1, %56 ], [ %66, %62 ], !dbg !4047
  tail call void @llvm.dbg.value(metadata i64 %70, metadata !3994, metadata !DIExpression()), !dbg !4047
  tail call void @llvm.dbg.value(metadata i64 %69, metadata !3991, metadata !DIExpression()), !dbg !4047
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
  ], !dbg !4061

71:                                               ; preds = %68
  call void @llvm.dbg.value(metadata i32 0, metadata !4062, metadata !DIExpression()), !dbg !4070
  call void @llvm.dbg.value(metadata i32 7, metadata !4069, metadata !DIExpression()), !dbg !4070
  call void @llvm.dbg.value(metadata i32 6, metadata !4069, metadata !DIExpression()), !dbg !4070
  call void @llvm.dbg.value(metadata ptr undef, metadata !4073, metadata !DIExpression()), !dbg !4080
  call void @llvm.dbg.value(metadata i64 %69, metadata !4078, metadata !DIExpression()), !dbg !4080
  %72 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4082
  %73 = extractvalue { i64, i1 } %72, 1, !dbg !4082
  call void @llvm.dbg.value(metadata i64 poison, metadata !4079, metadata !DIExpression()), !dbg !4080
  %74 = extractvalue { i64, i1 } %72, 0, !dbg !4084
  %75 = select i1 %73, i64 -1, i64 %74, !dbg !4084
  call void @llvm.dbg.value(metadata i1 %73, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4070
  call void @llvm.dbg.value(metadata i32 6, metadata !4069, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4070
  call void @llvm.dbg.value(metadata i1 %73, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4070
  call void @llvm.dbg.value(metadata i32 6, metadata !4069, metadata !DIExpression()), !dbg !4070
  call void @llvm.dbg.value(metadata i32 5, metadata !4069, metadata !DIExpression()), !dbg !4070
  call void @llvm.dbg.value(metadata ptr undef, metadata !4073, metadata !DIExpression()), !dbg !4080
  call void @llvm.dbg.value(metadata i64 %69, metadata !4078, metadata !DIExpression()), !dbg !4080
  %76 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %75), !dbg !4082
  %77 = extractvalue { i64, i1 } %76, 1, !dbg !4082
  call void @llvm.dbg.value(metadata i64 poison, metadata !4079, metadata !DIExpression()), !dbg !4080
  %78 = extractvalue { i64, i1 } %76, 0, !dbg !4084
  %79 = select i1 %77, i64 -1, i64 %78, !dbg !4084
  %80 = or i1 %73, %77, !dbg !4085
  call void @llvm.dbg.value(metadata i1 %80, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4070
  call void @llvm.dbg.value(metadata i32 5, metadata !4069, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4070
  call void @llvm.dbg.value(metadata i1 %80, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4070
  call void @llvm.dbg.value(metadata i32 5, metadata !4069, metadata !DIExpression()), !dbg !4070
  call void @llvm.dbg.value(metadata i32 4, metadata !4069, metadata !DIExpression()), !dbg !4070
  call void @llvm.dbg.value(metadata ptr undef, metadata !4073, metadata !DIExpression()), !dbg !4080
  call void @llvm.dbg.value(metadata i64 %69, metadata !4078, metadata !DIExpression()), !dbg !4080
  %81 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %79), !dbg !4082
  %82 = extractvalue { i64, i1 } %81, 1, !dbg !4082
  call void @llvm.dbg.value(metadata i64 poison, metadata !4079, metadata !DIExpression()), !dbg !4080
  %83 = extractvalue { i64, i1 } %81, 0, !dbg !4084
  %84 = select i1 %82, i64 -1, i64 %83, !dbg !4084
  %85 = or i1 %80, %82, !dbg !4085
  call void @llvm.dbg.value(metadata i1 %85, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4070
  call void @llvm.dbg.value(metadata i32 4, metadata !4069, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4070
  call void @llvm.dbg.value(metadata i1 %85, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4070
  call void @llvm.dbg.value(metadata i32 4, metadata !4069, metadata !DIExpression()), !dbg !4070
  call void @llvm.dbg.value(metadata i32 3, metadata !4069, metadata !DIExpression()), !dbg !4070
  call void @llvm.dbg.value(metadata ptr undef, metadata !4073, metadata !DIExpression()), !dbg !4080
  call void @llvm.dbg.value(metadata i64 %69, metadata !4078, metadata !DIExpression()), !dbg !4080
  %86 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %84), !dbg !4082
  %87 = extractvalue { i64, i1 } %86, 1, !dbg !4082
  call void @llvm.dbg.value(metadata i64 poison, metadata !4079, metadata !DIExpression()), !dbg !4080
  %88 = extractvalue { i64, i1 } %86, 0, !dbg !4084
  %89 = select i1 %87, i64 -1, i64 %88, !dbg !4084
  %90 = or i1 %85, %87, !dbg !4085
  call void @llvm.dbg.value(metadata i1 %90, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4070
  call void @llvm.dbg.value(metadata i32 3, metadata !4069, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4070
  call void @llvm.dbg.value(metadata i1 %90, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4070
  call void @llvm.dbg.value(metadata i32 3, metadata !4069, metadata !DIExpression()), !dbg !4070
  call void @llvm.dbg.value(metadata i32 2, metadata !4069, metadata !DIExpression()), !dbg !4070
  call void @llvm.dbg.value(metadata ptr undef, metadata !4073, metadata !DIExpression()), !dbg !4080
  call void @llvm.dbg.value(metadata i64 %69, metadata !4078, metadata !DIExpression()), !dbg !4080
  %91 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %89), !dbg !4082
  %92 = extractvalue { i64, i1 } %91, 1, !dbg !4082
  call void @llvm.dbg.value(metadata i64 poison, metadata !4079, metadata !DIExpression()), !dbg !4080
  %93 = extractvalue { i64, i1 } %91, 0, !dbg !4084
  %94 = select i1 %92, i64 -1, i64 %93, !dbg !4084
  %95 = or i1 %90, %92, !dbg !4085
  call void @llvm.dbg.value(metadata i1 %95, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4070
  call void @llvm.dbg.value(metadata i32 2, metadata !4069, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4070
  call void @llvm.dbg.value(metadata i1 %95, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4070
  call void @llvm.dbg.value(metadata i32 2, metadata !4069, metadata !DIExpression()), !dbg !4070
  call void @llvm.dbg.value(metadata i32 1, metadata !4069, metadata !DIExpression()), !dbg !4070
  call void @llvm.dbg.value(metadata ptr undef, metadata !4073, metadata !DIExpression()), !dbg !4080
  call void @llvm.dbg.value(metadata i64 %69, metadata !4078, metadata !DIExpression()), !dbg !4080
  %96 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %94), !dbg !4082
  %97 = extractvalue { i64, i1 } %96, 1, !dbg !4082
  call void @llvm.dbg.value(metadata i64 poison, metadata !4079, metadata !DIExpression()), !dbg !4080
  %98 = extractvalue { i64, i1 } %96, 0, !dbg !4084
  %99 = select i1 %97, i64 -1, i64 %98, !dbg !4084
  %100 = or i1 %95, %97, !dbg !4085
  call void @llvm.dbg.value(metadata i1 %100, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4070
  call void @llvm.dbg.value(metadata i32 1, metadata !4069, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4070
  call void @llvm.dbg.value(metadata i1 %100, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4070
  call void @llvm.dbg.value(metadata i32 1, metadata !4069, metadata !DIExpression()), !dbg !4070
  call void @llvm.dbg.value(metadata i32 0, metadata !4069, metadata !DIExpression()), !dbg !4070
  call void @llvm.dbg.value(metadata ptr undef, metadata !4073, metadata !DIExpression()), !dbg !4080
  call void @llvm.dbg.value(metadata i64 %69, metadata !4078, metadata !DIExpression()), !dbg !4080
  %101 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %99), !dbg !4082
  %102 = extractvalue { i64, i1 } %101, 1, !dbg !4082
  call void @llvm.dbg.value(metadata i64 poison, metadata !4079, metadata !DIExpression()), !dbg !4080
  %103 = extractvalue { i64, i1 } %101, 0, !dbg !4084
  %104 = select i1 %102, i64 -1, i64 %103, !dbg !4084
  %105 = or i1 %100, %102, !dbg !4085
  %106 = zext i1 %105 to i32, !dbg !4085
  call void @llvm.dbg.value(metadata i32 %106, metadata !4062, metadata !DIExpression()), !dbg !4070
  call void @llvm.dbg.value(metadata i32 0, metadata !4069, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4070
  br label %372, !dbg !4086

107:                                              ; preds = %68
  call void @llvm.dbg.value(metadata i32 0, metadata !4062, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata i32 8, metadata !4069, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata i32 7, metadata !4069, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata ptr undef, metadata !4073, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata i64 %69, metadata !4078, metadata !DIExpression()), !dbg !4089
  %108 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4091
  %109 = extractvalue { i64, i1 } %108, 1, !dbg !4091
  call void @llvm.dbg.value(metadata i64 poison, metadata !4079, metadata !DIExpression()), !dbg !4089
  %110 = extractvalue { i64, i1 } %108, 0, !dbg !4092
  %111 = select i1 %109, i64 -1, i64 %110, !dbg !4092
  call void @llvm.dbg.value(metadata i1 %109, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4087
  call void @llvm.dbg.value(metadata i32 7, metadata !4069, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4087
  call void @llvm.dbg.value(metadata i1 %109, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4087
  call void @llvm.dbg.value(metadata i32 7, metadata !4069, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata i32 6, metadata !4069, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata ptr undef, metadata !4073, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata i64 %69, metadata !4078, metadata !DIExpression()), !dbg !4089
  %112 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %111), !dbg !4091
  %113 = extractvalue { i64, i1 } %112, 1, !dbg !4091
  call void @llvm.dbg.value(metadata i64 poison, metadata !4079, metadata !DIExpression()), !dbg !4089
  %114 = extractvalue { i64, i1 } %112, 0, !dbg !4092
  %115 = select i1 %113, i64 -1, i64 %114, !dbg !4092
  %116 = or i1 %109, %113, !dbg !4093
  call void @llvm.dbg.value(metadata i1 %116, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4087
  call void @llvm.dbg.value(metadata i32 6, metadata !4069, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4087
  call void @llvm.dbg.value(metadata i1 %116, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4087
  call void @llvm.dbg.value(metadata i32 6, metadata !4069, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata i32 5, metadata !4069, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata ptr undef, metadata !4073, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata i64 %69, metadata !4078, metadata !DIExpression()), !dbg !4089
  %117 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %115), !dbg !4091
  %118 = extractvalue { i64, i1 } %117, 1, !dbg !4091
  call void @llvm.dbg.value(metadata i64 poison, metadata !4079, metadata !DIExpression()), !dbg !4089
  %119 = extractvalue { i64, i1 } %117, 0, !dbg !4092
  %120 = select i1 %118, i64 -1, i64 %119, !dbg !4092
  %121 = or i1 %116, %118, !dbg !4093
  call void @llvm.dbg.value(metadata i1 %121, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4087
  call void @llvm.dbg.value(metadata i32 5, metadata !4069, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4087
  call void @llvm.dbg.value(metadata i1 %121, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4087
  call void @llvm.dbg.value(metadata i32 5, metadata !4069, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata i32 4, metadata !4069, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata ptr undef, metadata !4073, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata i64 %69, metadata !4078, metadata !DIExpression()), !dbg !4089
  %122 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %120), !dbg !4091
  %123 = extractvalue { i64, i1 } %122, 1, !dbg !4091
  call void @llvm.dbg.value(metadata i64 poison, metadata !4079, metadata !DIExpression()), !dbg !4089
  %124 = extractvalue { i64, i1 } %122, 0, !dbg !4092
  %125 = select i1 %123, i64 -1, i64 %124, !dbg !4092
  %126 = or i1 %121, %123, !dbg !4093
  call void @llvm.dbg.value(metadata i1 %126, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4087
  call void @llvm.dbg.value(metadata i32 4, metadata !4069, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4087
  call void @llvm.dbg.value(metadata i1 %126, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4087
  call void @llvm.dbg.value(metadata i32 4, metadata !4069, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata i32 3, metadata !4069, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata ptr undef, metadata !4073, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata i64 %69, metadata !4078, metadata !DIExpression()), !dbg !4089
  %127 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %125), !dbg !4091
  %128 = extractvalue { i64, i1 } %127, 1, !dbg !4091
  call void @llvm.dbg.value(metadata i64 poison, metadata !4079, metadata !DIExpression()), !dbg !4089
  %129 = extractvalue { i64, i1 } %127, 0, !dbg !4092
  %130 = select i1 %128, i64 -1, i64 %129, !dbg !4092
  %131 = or i1 %126, %128, !dbg !4093
  call void @llvm.dbg.value(metadata i1 %131, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4087
  call void @llvm.dbg.value(metadata i32 3, metadata !4069, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4087
  call void @llvm.dbg.value(metadata i1 %131, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4087
  call void @llvm.dbg.value(metadata i32 3, metadata !4069, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata i32 2, metadata !4069, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata ptr undef, metadata !4073, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata i64 %69, metadata !4078, metadata !DIExpression()), !dbg !4089
  %132 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %130), !dbg !4091
  %133 = extractvalue { i64, i1 } %132, 1, !dbg !4091
  call void @llvm.dbg.value(metadata i64 poison, metadata !4079, metadata !DIExpression()), !dbg !4089
  %134 = extractvalue { i64, i1 } %132, 0, !dbg !4092
  %135 = select i1 %133, i64 -1, i64 %134, !dbg !4092
  %136 = or i1 %131, %133, !dbg !4093
  call void @llvm.dbg.value(metadata i1 %136, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4087
  call void @llvm.dbg.value(metadata i32 2, metadata !4069, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4087
  call void @llvm.dbg.value(metadata i1 %136, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4087
  call void @llvm.dbg.value(metadata i32 2, metadata !4069, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata i32 1, metadata !4069, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata ptr undef, metadata !4073, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata i64 %69, metadata !4078, metadata !DIExpression()), !dbg !4089
  %137 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %135), !dbg !4091
  %138 = extractvalue { i64, i1 } %137, 1, !dbg !4091
  call void @llvm.dbg.value(metadata i64 poison, metadata !4079, metadata !DIExpression()), !dbg !4089
  %139 = extractvalue { i64, i1 } %137, 0, !dbg !4092
  %140 = select i1 %138, i64 -1, i64 %139, !dbg !4092
  %141 = or i1 %136, %138, !dbg !4093
  call void @llvm.dbg.value(metadata i1 %141, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4087
  call void @llvm.dbg.value(metadata i32 1, metadata !4069, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4087
  call void @llvm.dbg.value(metadata i1 %141, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4087
  call void @llvm.dbg.value(metadata i32 1, metadata !4069, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata i32 0, metadata !4069, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata ptr undef, metadata !4073, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata i64 %69, metadata !4078, metadata !DIExpression()), !dbg !4089
  %142 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %140), !dbg !4091
  %143 = extractvalue { i64, i1 } %142, 1, !dbg !4091
  call void @llvm.dbg.value(metadata i64 poison, metadata !4079, metadata !DIExpression()), !dbg !4089
  %144 = extractvalue { i64, i1 } %142, 0, !dbg !4092
  %145 = select i1 %143, i64 -1, i64 %144, !dbg !4092
  %146 = or i1 %141, %143, !dbg !4093
  %147 = zext i1 %146 to i32, !dbg !4093
  call void @llvm.dbg.value(metadata i32 %147, metadata !4062, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata i32 0, metadata !4069, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4087
  br label %372, !dbg !4086

148:                                              ; preds = %68
  call void @llvm.dbg.value(metadata i32 0, metadata !4062, metadata !DIExpression()), !dbg !4094
  call void @llvm.dbg.value(metadata i32 9, metadata !4069, metadata !DIExpression()), !dbg !4094
  call void @llvm.dbg.value(metadata i32 8, metadata !4069, metadata !DIExpression()), !dbg !4094
  call void @llvm.dbg.value(metadata ptr undef, metadata !4073, metadata !DIExpression()), !dbg !4096
  call void @llvm.dbg.value(metadata i64 %69, metadata !4078, metadata !DIExpression()), !dbg !4096
  %149 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4098
  %150 = extractvalue { i64, i1 } %149, 1, !dbg !4098
  call void @llvm.dbg.value(metadata i64 poison, metadata !4079, metadata !DIExpression()), !dbg !4096
  %151 = extractvalue { i64, i1 } %149, 0, !dbg !4099
  %152 = select i1 %150, i64 -1, i64 %151, !dbg !4099
  call void @llvm.dbg.value(metadata i1 %150, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4094
  call void @llvm.dbg.value(metadata i32 8, metadata !4069, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4094
  call void @llvm.dbg.value(metadata i1 %150, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4094
  call void @llvm.dbg.value(metadata i32 8, metadata !4069, metadata !DIExpression()), !dbg !4094
  call void @llvm.dbg.value(metadata i32 7, metadata !4069, metadata !DIExpression()), !dbg !4094
  call void @llvm.dbg.value(metadata ptr undef, metadata !4073, metadata !DIExpression()), !dbg !4096
  call void @llvm.dbg.value(metadata i64 %69, metadata !4078, metadata !DIExpression()), !dbg !4096
  %153 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %152), !dbg !4098
  %154 = extractvalue { i64, i1 } %153, 1, !dbg !4098
  call void @llvm.dbg.value(metadata i64 poison, metadata !4079, metadata !DIExpression()), !dbg !4096
  %155 = extractvalue { i64, i1 } %153, 0, !dbg !4099
  %156 = select i1 %154, i64 -1, i64 %155, !dbg !4099
  %157 = or i1 %150, %154, !dbg !4100
  call void @llvm.dbg.value(metadata i1 %157, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4094
  call void @llvm.dbg.value(metadata i32 7, metadata !4069, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4094
  call void @llvm.dbg.value(metadata i1 %157, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4094
  call void @llvm.dbg.value(metadata i32 7, metadata !4069, metadata !DIExpression()), !dbg !4094
  call void @llvm.dbg.value(metadata i32 6, metadata !4069, metadata !DIExpression()), !dbg !4094
  call void @llvm.dbg.value(metadata ptr undef, metadata !4073, metadata !DIExpression()), !dbg !4096
  call void @llvm.dbg.value(metadata i64 %69, metadata !4078, metadata !DIExpression()), !dbg !4096
  %158 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %156), !dbg !4098
  %159 = extractvalue { i64, i1 } %158, 1, !dbg !4098
  call void @llvm.dbg.value(metadata i64 poison, metadata !4079, metadata !DIExpression()), !dbg !4096
  %160 = extractvalue { i64, i1 } %158, 0, !dbg !4099
  %161 = select i1 %159, i64 -1, i64 %160, !dbg !4099
  %162 = or i1 %157, %159, !dbg !4100
  call void @llvm.dbg.value(metadata i1 %162, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4094
  call void @llvm.dbg.value(metadata i32 6, metadata !4069, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4094
  call void @llvm.dbg.value(metadata i1 %162, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4094
  call void @llvm.dbg.value(metadata i32 6, metadata !4069, metadata !DIExpression()), !dbg !4094
  call void @llvm.dbg.value(metadata i32 5, metadata !4069, metadata !DIExpression()), !dbg !4094
  call void @llvm.dbg.value(metadata ptr undef, metadata !4073, metadata !DIExpression()), !dbg !4096
  call void @llvm.dbg.value(metadata i64 %69, metadata !4078, metadata !DIExpression()), !dbg !4096
  %163 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %161), !dbg !4098
  %164 = extractvalue { i64, i1 } %163, 1, !dbg !4098
  call void @llvm.dbg.value(metadata i64 poison, metadata !4079, metadata !DIExpression()), !dbg !4096
  %165 = extractvalue { i64, i1 } %163, 0, !dbg !4099
  %166 = select i1 %164, i64 -1, i64 %165, !dbg !4099
  %167 = or i1 %162, %164, !dbg !4100
  call void @llvm.dbg.value(metadata i1 %167, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4094
  call void @llvm.dbg.value(metadata i32 5, metadata !4069, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4094
  call void @llvm.dbg.value(metadata i1 %167, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4094
  call void @llvm.dbg.value(metadata i32 5, metadata !4069, metadata !DIExpression()), !dbg !4094
  call void @llvm.dbg.value(metadata i32 4, metadata !4069, metadata !DIExpression()), !dbg !4094
  call void @llvm.dbg.value(metadata ptr undef, metadata !4073, metadata !DIExpression()), !dbg !4096
  call void @llvm.dbg.value(metadata i64 %69, metadata !4078, metadata !DIExpression()), !dbg !4096
  %168 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %166), !dbg !4098
  %169 = extractvalue { i64, i1 } %168, 1, !dbg !4098
  call void @llvm.dbg.value(metadata i64 poison, metadata !4079, metadata !DIExpression()), !dbg !4096
  %170 = extractvalue { i64, i1 } %168, 0, !dbg !4099
  %171 = select i1 %169, i64 -1, i64 %170, !dbg !4099
  %172 = or i1 %167, %169, !dbg !4100
  call void @llvm.dbg.value(metadata i1 %172, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4094
  call void @llvm.dbg.value(metadata i32 4, metadata !4069, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4094
  call void @llvm.dbg.value(metadata i1 %172, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4094
  call void @llvm.dbg.value(metadata i32 4, metadata !4069, metadata !DIExpression()), !dbg !4094
  call void @llvm.dbg.value(metadata i32 3, metadata !4069, metadata !DIExpression()), !dbg !4094
  call void @llvm.dbg.value(metadata ptr undef, metadata !4073, metadata !DIExpression()), !dbg !4096
  call void @llvm.dbg.value(metadata i64 %69, metadata !4078, metadata !DIExpression()), !dbg !4096
  %173 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %171), !dbg !4098
  %174 = extractvalue { i64, i1 } %173, 1, !dbg !4098
  call void @llvm.dbg.value(metadata i64 poison, metadata !4079, metadata !DIExpression()), !dbg !4096
  %175 = extractvalue { i64, i1 } %173, 0, !dbg !4099
  %176 = select i1 %174, i64 -1, i64 %175, !dbg !4099
  %177 = or i1 %172, %174, !dbg !4100
  call void @llvm.dbg.value(metadata i1 %177, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4094
  call void @llvm.dbg.value(metadata i32 3, metadata !4069, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4094
  call void @llvm.dbg.value(metadata i1 %177, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4094
  call void @llvm.dbg.value(metadata i32 3, metadata !4069, metadata !DIExpression()), !dbg !4094
  call void @llvm.dbg.value(metadata i32 2, metadata !4069, metadata !DIExpression()), !dbg !4094
  call void @llvm.dbg.value(metadata ptr undef, metadata !4073, metadata !DIExpression()), !dbg !4096
  call void @llvm.dbg.value(metadata i64 %69, metadata !4078, metadata !DIExpression()), !dbg !4096
  %178 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %176), !dbg !4098
  %179 = extractvalue { i64, i1 } %178, 1, !dbg !4098
  call void @llvm.dbg.value(metadata i64 poison, metadata !4079, metadata !DIExpression()), !dbg !4096
  %180 = extractvalue { i64, i1 } %178, 0, !dbg !4099
  %181 = select i1 %179, i64 -1, i64 %180, !dbg !4099
  %182 = or i1 %177, %179, !dbg !4100
  call void @llvm.dbg.value(metadata i1 %182, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4094
  call void @llvm.dbg.value(metadata i32 2, metadata !4069, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4094
  call void @llvm.dbg.value(metadata i1 %182, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4094
  call void @llvm.dbg.value(metadata i32 2, metadata !4069, metadata !DIExpression()), !dbg !4094
  call void @llvm.dbg.value(metadata i32 1, metadata !4069, metadata !DIExpression()), !dbg !4094
  call void @llvm.dbg.value(metadata ptr undef, metadata !4073, metadata !DIExpression()), !dbg !4096
  call void @llvm.dbg.value(metadata i64 %69, metadata !4078, metadata !DIExpression()), !dbg !4096
  %183 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %181), !dbg !4098
  %184 = extractvalue { i64, i1 } %183, 1, !dbg !4098
  call void @llvm.dbg.value(metadata i64 poison, metadata !4079, metadata !DIExpression()), !dbg !4096
  %185 = extractvalue { i64, i1 } %183, 0, !dbg !4099
  %186 = select i1 %184, i64 -1, i64 %185, !dbg !4099
  %187 = or i1 %182, %184, !dbg !4100
  call void @llvm.dbg.value(metadata i1 %187, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4094
  call void @llvm.dbg.value(metadata i32 1, metadata !4069, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4094
  call void @llvm.dbg.value(metadata i1 %187, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4094
  call void @llvm.dbg.value(metadata i32 1, metadata !4069, metadata !DIExpression()), !dbg !4094
  call void @llvm.dbg.value(metadata i32 0, metadata !4069, metadata !DIExpression()), !dbg !4094
  call void @llvm.dbg.value(metadata ptr undef, metadata !4073, metadata !DIExpression()), !dbg !4096
  call void @llvm.dbg.value(metadata i64 %69, metadata !4078, metadata !DIExpression()), !dbg !4096
  %188 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %186), !dbg !4098
  %189 = extractvalue { i64, i1 } %188, 1, !dbg !4098
  call void @llvm.dbg.value(metadata i64 poison, metadata !4079, metadata !DIExpression()), !dbg !4096
  %190 = extractvalue { i64, i1 } %188, 0, !dbg !4099
  %191 = select i1 %189, i64 -1, i64 %190, !dbg !4099
  %192 = or i1 %187, %189, !dbg !4100
  %193 = zext i1 %192 to i32, !dbg !4100
  call void @llvm.dbg.value(metadata i32 %193, metadata !4062, metadata !DIExpression()), !dbg !4094
  call void @llvm.dbg.value(metadata i32 0, metadata !4069, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4094
  br label %372, !dbg !4086

194:                                              ; preds = %68
  call void @llvm.dbg.value(metadata i32 0, metadata !4062, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata i32 10, metadata !4069, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata i32 9, metadata !4069, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata ptr undef, metadata !4073, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata i64 %69, metadata !4078, metadata !DIExpression()), !dbg !4103
  %195 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4105
  %196 = extractvalue { i64, i1 } %195, 1, !dbg !4105
  call void @llvm.dbg.value(metadata i64 poison, metadata !4079, metadata !DIExpression()), !dbg !4103
  %197 = extractvalue { i64, i1 } %195, 0, !dbg !4106
  %198 = select i1 %196, i64 -1, i64 %197, !dbg !4106
  call void @llvm.dbg.value(metadata i1 %196, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4101
  call void @llvm.dbg.value(metadata i32 9, metadata !4069, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4101
  call void @llvm.dbg.value(metadata i1 %196, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4101
  call void @llvm.dbg.value(metadata i32 9, metadata !4069, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata i32 8, metadata !4069, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata ptr undef, metadata !4073, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata i64 %69, metadata !4078, metadata !DIExpression()), !dbg !4103
  %199 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %198), !dbg !4105
  %200 = extractvalue { i64, i1 } %199, 1, !dbg !4105
  call void @llvm.dbg.value(metadata i64 poison, metadata !4079, metadata !DIExpression()), !dbg !4103
  %201 = extractvalue { i64, i1 } %199, 0, !dbg !4106
  %202 = select i1 %200, i64 -1, i64 %201, !dbg !4106
  %203 = or i1 %196, %200, !dbg !4107
  call void @llvm.dbg.value(metadata i1 %203, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4101
  call void @llvm.dbg.value(metadata i32 8, metadata !4069, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4101
  call void @llvm.dbg.value(metadata i1 %203, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4101
  call void @llvm.dbg.value(metadata i32 8, metadata !4069, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata i32 7, metadata !4069, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata ptr undef, metadata !4073, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata i64 %69, metadata !4078, metadata !DIExpression()), !dbg !4103
  %204 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %202), !dbg !4105
  %205 = extractvalue { i64, i1 } %204, 1, !dbg !4105
  call void @llvm.dbg.value(metadata i64 poison, metadata !4079, metadata !DIExpression()), !dbg !4103
  %206 = extractvalue { i64, i1 } %204, 0, !dbg !4106
  %207 = select i1 %205, i64 -1, i64 %206, !dbg !4106
  %208 = or i1 %203, %205, !dbg !4107
  call void @llvm.dbg.value(metadata i1 %208, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4101
  call void @llvm.dbg.value(metadata i32 7, metadata !4069, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4101
  call void @llvm.dbg.value(metadata i1 %208, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4101
  call void @llvm.dbg.value(metadata i32 7, metadata !4069, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata i32 6, metadata !4069, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata ptr undef, metadata !4073, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata i64 %69, metadata !4078, metadata !DIExpression()), !dbg !4103
  %209 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %207), !dbg !4105
  %210 = extractvalue { i64, i1 } %209, 1, !dbg !4105
  call void @llvm.dbg.value(metadata i64 poison, metadata !4079, metadata !DIExpression()), !dbg !4103
  %211 = extractvalue { i64, i1 } %209, 0, !dbg !4106
  %212 = select i1 %210, i64 -1, i64 %211, !dbg !4106
  %213 = or i1 %208, %210, !dbg !4107
  call void @llvm.dbg.value(metadata i1 %213, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4101
  call void @llvm.dbg.value(metadata i32 6, metadata !4069, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4101
  call void @llvm.dbg.value(metadata i1 %213, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4101
  call void @llvm.dbg.value(metadata i32 6, metadata !4069, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata i32 5, metadata !4069, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata ptr undef, metadata !4073, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata i64 %69, metadata !4078, metadata !DIExpression()), !dbg !4103
  %214 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %212), !dbg !4105
  %215 = extractvalue { i64, i1 } %214, 1, !dbg !4105
  call void @llvm.dbg.value(metadata i64 poison, metadata !4079, metadata !DIExpression()), !dbg !4103
  %216 = extractvalue { i64, i1 } %214, 0, !dbg !4106
  %217 = select i1 %215, i64 -1, i64 %216, !dbg !4106
  %218 = or i1 %213, %215, !dbg !4107
  call void @llvm.dbg.value(metadata i1 %218, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4101
  call void @llvm.dbg.value(metadata i32 5, metadata !4069, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4101
  call void @llvm.dbg.value(metadata i1 %218, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4101
  call void @llvm.dbg.value(metadata i32 5, metadata !4069, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata i32 4, metadata !4069, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata ptr undef, metadata !4073, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata i64 %69, metadata !4078, metadata !DIExpression()), !dbg !4103
  %219 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %217), !dbg !4105
  %220 = extractvalue { i64, i1 } %219, 1, !dbg !4105
  call void @llvm.dbg.value(metadata i64 poison, metadata !4079, metadata !DIExpression()), !dbg !4103
  %221 = extractvalue { i64, i1 } %219, 0, !dbg !4106
  %222 = select i1 %220, i64 -1, i64 %221, !dbg !4106
  %223 = or i1 %218, %220, !dbg !4107
  call void @llvm.dbg.value(metadata i1 %223, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4101
  call void @llvm.dbg.value(metadata i32 4, metadata !4069, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4101
  call void @llvm.dbg.value(metadata i1 %223, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4101
  call void @llvm.dbg.value(metadata i32 4, metadata !4069, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata i32 3, metadata !4069, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata ptr undef, metadata !4073, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata i64 %69, metadata !4078, metadata !DIExpression()), !dbg !4103
  %224 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %222), !dbg !4105
  %225 = extractvalue { i64, i1 } %224, 1, !dbg !4105
  call void @llvm.dbg.value(metadata i64 poison, metadata !4079, metadata !DIExpression()), !dbg !4103
  %226 = extractvalue { i64, i1 } %224, 0, !dbg !4106
  %227 = select i1 %225, i64 -1, i64 %226, !dbg !4106
  %228 = or i1 %223, %225, !dbg !4107
  call void @llvm.dbg.value(metadata i1 %228, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4101
  call void @llvm.dbg.value(metadata i32 3, metadata !4069, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4101
  call void @llvm.dbg.value(metadata i1 %228, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4101
  call void @llvm.dbg.value(metadata i32 3, metadata !4069, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata i32 2, metadata !4069, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata ptr undef, metadata !4073, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata i64 %69, metadata !4078, metadata !DIExpression()), !dbg !4103
  %229 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %227), !dbg !4105
  %230 = extractvalue { i64, i1 } %229, 1, !dbg !4105
  call void @llvm.dbg.value(metadata i64 poison, metadata !4079, metadata !DIExpression()), !dbg !4103
  %231 = extractvalue { i64, i1 } %229, 0, !dbg !4106
  %232 = select i1 %230, i64 -1, i64 %231, !dbg !4106
  %233 = or i1 %228, %230, !dbg !4107
  call void @llvm.dbg.value(metadata i1 %233, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4101
  call void @llvm.dbg.value(metadata i32 2, metadata !4069, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4101
  call void @llvm.dbg.value(metadata i1 %233, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4101
  call void @llvm.dbg.value(metadata i32 2, metadata !4069, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata i32 1, metadata !4069, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata ptr undef, metadata !4073, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata i64 %69, metadata !4078, metadata !DIExpression()), !dbg !4103
  %234 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %232), !dbg !4105
  %235 = extractvalue { i64, i1 } %234, 1, !dbg !4105
  call void @llvm.dbg.value(metadata i64 poison, metadata !4079, metadata !DIExpression()), !dbg !4103
  %236 = extractvalue { i64, i1 } %234, 0, !dbg !4106
  %237 = select i1 %235, i64 -1, i64 %236, !dbg !4106
  %238 = or i1 %233, %235, !dbg !4107
  call void @llvm.dbg.value(metadata i1 %238, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4101
  call void @llvm.dbg.value(metadata i32 1, metadata !4069, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4101
  call void @llvm.dbg.value(metadata i1 %238, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4101
  call void @llvm.dbg.value(metadata i32 1, metadata !4069, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata i32 0, metadata !4069, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata ptr undef, metadata !4073, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata i64 %69, metadata !4078, metadata !DIExpression()), !dbg !4103
  %239 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %237), !dbg !4105
  %240 = extractvalue { i64, i1 } %239, 1, !dbg !4105
  call void @llvm.dbg.value(metadata i64 poison, metadata !4079, metadata !DIExpression()), !dbg !4103
  %241 = extractvalue { i64, i1 } %239, 0, !dbg !4106
  %242 = select i1 %240, i64 -1, i64 %241, !dbg !4106
  %243 = or i1 %238, %240, !dbg !4107
  %244 = zext i1 %243 to i32, !dbg !4107
  call void @llvm.dbg.value(metadata i32 %244, metadata !4062, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata i32 0, metadata !4069, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4101
  br label %372, !dbg !4086

245:                                              ; preds = %68
  call void @llvm.dbg.value(metadata i32 0, metadata !4062, metadata !DIExpression()), !dbg !4108
  call void @llvm.dbg.value(metadata i32 5, metadata !4069, metadata !DIExpression()), !dbg !4108
  call void @llvm.dbg.value(metadata i32 4, metadata !4069, metadata !DIExpression()), !dbg !4108
  call void @llvm.dbg.value(metadata ptr undef, metadata !4073, metadata !DIExpression()), !dbg !4110
  call void @llvm.dbg.value(metadata i64 %69, metadata !4078, metadata !DIExpression()), !dbg !4110
  %246 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4112
  %247 = extractvalue { i64, i1 } %246, 1, !dbg !4112
  call void @llvm.dbg.value(metadata i64 poison, metadata !4079, metadata !DIExpression()), !dbg !4110
  %248 = extractvalue { i64, i1 } %246, 0, !dbg !4113
  %249 = select i1 %247, i64 -1, i64 %248, !dbg !4113
  call void @llvm.dbg.value(metadata i1 %247, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4108
  call void @llvm.dbg.value(metadata i32 4, metadata !4069, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4108
  call void @llvm.dbg.value(metadata i1 %247, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4108
  call void @llvm.dbg.value(metadata i32 4, metadata !4069, metadata !DIExpression()), !dbg !4108
  call void @llvm.dbg.value(metadata i32 3, metadata !4069, metadata !DIExpression()), !dbg !4108
  call void @llvm.dbg.value(metadata ptr undef, metadata !4073, metadata !DIExpression()), !dbg !4110
  call void @llvm.dbg.value(metadata i64 %69, metadata !4078, metadata !DIExpression()), !dbg !4110
  %250 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %249), !dbg !4112
  %251 = extractvalue { i64, i1 } %250, 1, !dbg !4112
  call void @llvm.dbg.value(metadata i64 poison, metadata !4079, metadata !DIExpression()), !dbg !4110
  %252 = extractvalue { i64, i1 } %250, 0, !dbg !4113
  %253 = select i1 %251, i64 -1, i64 %252, !dbg !4113
  %254 = or i1 %247, %251, !dbg !4114
  call void @llvm.dbg.value(metadata i1 %254, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4108
  call void @llvm.dbg.value(metadata i32 3, metadata !4069, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4108
  call void @llvm.dbg.value(metadata i1 %254, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4108
  call void @llvm.dbg.value(metadata i32 3, metadata !4069, metadata !DIExpression()), !dbg !4108
  call void @llvm.dbg.value(metadata i32 2, metadata !4069, metadata !DIExpression()), !dbg !4108
  call void @llvm.dbg.value(metadata ptr undef, metadata !4073, metadata !DIExpression()), !dbg !4110
  call void @llvm.dbg.value(metadata i64 %69, metadata !4078, metadata !DIExpression()), !dbg !4110
  %255 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %253), !dbg !4112
  %256 = extractvalue { i64, i1 } %255, 1, !dbg !4112
  call void @llvm.dbg.value(metadata i64 poison, metadata !4079, metadata !DIExpression()), !dbg !4110
  %257 = extractvalue { i64, i1 } %255, 0, !dbg !4113
  %258 = select i1 %256, i64 -1, i64 %257, !dbg !4113
  %259 = or i1 %254, %256, !dbg !4114
  call void @llvm.dbg.value(metadata i1 %259, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4108
  call void @llvm.dbg.value(metadata i32 2, metadata !4069, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4108
  call void @llvm.dbg.value(metadata i1 %259, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4108
  call void @llvm.dbg.value(metadata i32 2, metadata !4069, metadata !DIExpression()), !dbg !4108
  call void @llvm.dbg.value(metadata i32 1, metadata !4069, metadata !DIExpression()), !dbg !4108
  call void @llvm.dbg.value(metadata ptr undef, metadata !4073, metadata !DIExpression()), !dbg !4110
  call void @llvm.dbg.value(metadata i64 %69, metadata !4078, metadata !DIExpression()), !dbg !4110
  %260 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %258), !dbg !4112
  %261 = extractvalue { i64, i1 } %260, 1, !dbg !4112
  call void @llvm.dbg.value(metadata i64 poison, metadata !4079, metadata !DIExpression()), !dbg !4110
  %262 = extractvalue { i64, i1 } %260, 0, !dbg !4113
  %263 = select i1 %261, i64 -1, i64 %262, !dbg !4113
  %264 = or i1 %259, %261, !dbg !4114
  call void @llvm.dbg.value(metadata i1 %264, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4108
  call void @llvm.dbg.value(metadata i32 1, metadata !4069, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4108
  call void @llvm.dbg.value(metadata i1 %264, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4108
  call void @llvm.dbg.value(metadata i32 1, metadata !4069, metadata !DIExpression()), !dbg !4108
  call void @llvm.dbg.value(metadata i32 0, metadata !4069, metadata !DIExpression()), !dbg !4108
  call void @llvm.dbg.value(metadata ptr undef, metadata !4073, metadata !DIExpression()), !dbg !4110
  call void @llvm.dbg.value(metadata i64 %69, metadata !4078, metadata !DIExpression()), !dbg !4110
  %265 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %263), !dbg !4112
  %266 = extractvalue { i64, i1 } %265, 1, !dbg !4112
  call void @llvm.dbg.value(metadata i64 poison, metadata !4079, metadata !DIExpression()), !dbg !4110
  %267 = extractvalue { i64, i1 } %265, 0, !dbg !4113
  %268 = select i1 %266, i64 -1, i64 %267, !dbg !4113
  %269 = or i1 %264, %266, !dbg !4114
  %270 = zext i1 %269 to i32, !dbg !4114
  call void @llvm.dbg.value(metadata i32 %270, metadata !4062, metadata !DIExpression()), !dbg !4108
  call void @llvm.dbg.value(metadata i32 0, metadata !4069, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4108
  br label %372, !dbg !4086

271:                                              ; preds = %68
  call void @llvm.dbg.value(metadata i32 0, metadata !4062, metadata !DIExpression()), !dbg !4115
  call void @llvm.dbg.value(metadata i32 6, metadata !4069, metadata !DIExpression()), !dbg !4115
  call void @llvm.dbg.value(metadata i32 5, metadata !4069, metadata !DIExpression()), !dbg !4115
  call void @llvm.dbg.value(metadata ptr undef, metadata !4073, metadata !DIExpression()), !dbg !4117
  call void @llvm.dbg.value(metadata i64 %69, metadata !4078, metadata !DIExpression()), !dbg !4117
  %272 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4119
  %273 = extractvalue { i64, i1 } %272, 1, !dbg !4119
  call void @llvm.dbg.value(metadata i64 poison, metadata !4079, metadata !DIExpression()), !dbg !4117
  %274 = extractvalue { i64, i1 } %272, 0, !dbg !4120
  %275 = select i1 %273, i64 -1, i64 %274, !dbg !4120
  call void @llvm.dbg.value(metadata i1 %273, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4115
  call void @llvm.dbg.value(metadata i32 5, metadata !4069, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4115
  call void @llvm.dbg.value(metadata i1 %273, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4115
  call void @llvm.dbg.value(metadata i32 5, metadata !4069, metadata !DIExpression()), !dbg !4115
  call void @llvm.dbg.value(metadata i32 4, metadata !4069, metadata !DIExpression()), !dbg !4115
  call void @llvm.dbg.value(metadata ptr undef, metadata !4073, metadata !DIExpression()), !dbg !4117
  call void @llvm.dbg.value(metadata i64 %69, metadata !4078, metadata !DIExpression()), !dbg !4117
  %276 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %275), !dbg !4119
  %277 = extractvalue { i64, i1 } %276, 1, !dbg !4119
  call void @llvm.dbg.value(metadata i64 poison, metadata !4079, metadata !DIExpression()), !dbg !4117
  %278 = extractvalue { i64, i1 } %276, 0, !dbg !4120
  %279 = select i1 %277, i64 -1, i64 %278, !dbg !4120
  %280 = or i1 %273, %277, !dbg !4121
  call void @llvm.dbg.value(metadata i1 %280, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4115
  call void @llvm.dbg.value(metadata i32 4, metadata !4069, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4115
  call void @llvm.dbg.value(metadata i1 %280, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4115
  call void @llvm.dbg.value(metadata i32 4, metadata !4069, metadata !DIExpression()), !dbg !4115
  call void @llvm.dbg.value(metadata i32 3, metadata !4069, metadata !DIExpression()), !dbg !4115
  call void @llvm.dbg.value(metadata ptr undef, metadata !4073, metadata !DIExpression()), !dbg !4117
  call void @llvm.dbg.value(metadata i64 %69, metadata !4078, metadata !DIExpression()), !dbg !4117
  %281 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %279), !dbg !4119
  %282 = extractvalue { i64, i1 } %281, 1, !dbg !4119
  call void @llvm.dbg.value(metadata i64 poison, metadata !4079, metadata !DIExpression()), !dbg !4117
  %283 = extractvalue { i64, i1 } %281, 0, !dbg !4120
  %284 = select i1 %282, i64 -1, i64 %283, !dbg !4120
  %285 = or i1 %280, %282, !dbg !4121
  call void @llvm.dbg.value(metadata i1 %285, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4115
  call void @llvm.dbg.value(metadata i32 3, metadata !4069, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4115
  call void @llvm.dbg.value(metadata i1 %285, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4115
  call void @llvm.dbg.value(metadata i32 3, metadata !4069, metadata !DIExpression()), !dbg !4115
  call void @llvm.dbg.value(metadata i32 2, metadata !4069, metadata !DIExpression()), !dbg !4115
  call void @llvm.dbg.value(metadata ptr undef, metadata !4073, metadata !DIExpression()), !dbg !4117
  call void @llvm.dbg.value(metadata i64 %69, metadata !4078, metadata !DIExpression()), !dbg !4117
  %286 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %284), !dbg !4119
  %287 = extractvalue { i64, i1 } %286, 1, !dbg !4119
  call void @llvm.dbg.value(metadata i64 poison, metadata !4079, metadata !DIExpression()), !dbg !4117
  %288 = extractvalue { i64, i1 } %286, 0, !dbg !4120
  %289 = select i1 %287, i64 -1, i64 %288, !dbg !4120
  %290 = or i1 %285, %287, !dbg !4121
  call void @llvm.dbg.value(metadata i1 %290, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4115
  call void @llvm.dbg.value(metadata i32 2, metadata !4069, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4115
  call void @llvm.dbg.value(metadata i1 %290, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4115
  call void @llvm.dbg.value(metadata i32 2, metadata !4069, metadata !DIExpression()), !dbg !4115
  call void @llvm.dbg.value(metadata i32 1, metadata !4069, metadata !DIExpression()), !dbg !4115
  call void @llvm.dbg.value(metadata ptr undef, metadata !4073, metadata !DIExpression()), !dbg !4117
  call void @llvm.dbg.value(metadata i64 %69, metadata !4078, metadata !DIExpression()), !dbg !4117
  %291 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %289), !dbg !4119
  %292 = extractvalue { i64, i1 } %291, 1, !dbg !4119
  call void @llvm.dbg.value(metadata i64 poison, metadata !4079, metadata !DIExpression()), !dbg !4117
  %293 = extractvalue { i64, i1 } %291, 0, !dbg !4120
  %294 = select i1 %292, i64 -1, i64 %293, !dbg !4120
  %295 = or i1 %290, %292, !dbg !4121
  call void @llvm.dbg.value(metadata i1 %295, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4115
  call void @llvm.dbg.value(metadata i32 1, metadata !4069, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4115
  call void @llvm.dbg.value(metadata i1 %295, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4115
  call void @llvm.dbg.value(metadata i32 1, metadata !4069, metadata !DIExpression()), !dbg !4115
  call void @llvm.dbg.value(metadata i32 0, metadata !4069, metadata !DIExpression()), !dbg !4115
  call void @llvm.dbg.value(metadata ptr undef, metadata !4073, metadata !DIExpression()), !dbg !4117
  call void @llvm.dbg.value(metadata i64 %69, metadata !4078, metadata !DIExpression()), !dbg !4117
  %296 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %294), !dbg !4119
  %297 = extractvalue { i64, i1 } %296, 1, !dbg !4119
  call void @llvm.dbg.value(metadata i64 poison, metadata !4079, metadata !DIExpression()), !dbg !4117
  %298 = extractvalue { i64, i1 } %296, 0, !dbg !4120
  %299 = select i1 %297, i64 -1, i64 %298, !dbg !4120
  %300 = or i1 %295, %297, !dbg !4121
  %301 = zext i1 %300 to i32, !dbg !4121
  call void @llvm.dbg.value(metadata i32 %301, metadata !4062, metadata !DIExpression()), !dbg !4115
  call void @llvm.dbg.value(metadata i32 0, metadata !4069, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4115
  br label %372, !dbg !4086

302:                                              ; preds = %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4073, metadata !DIExpression()), !dbg !4122
  call void @llvm.dbg.value(metadata i32 512, metadata !4078, metadata !DIExpression()), !dbg !4122
  %303 = icmp ugt i64 %46, 36028797018963967, !dbg !4124
  call void @llvm.dbg.value(metadata i64 poison, metadata !4079, metadata !DIExpression()), !dbg !4122
  %304 = shl i64 %46, 9, !dbg !4125
  %305 = select i1 %303, i64 -1, i64 %304, !dbg !4125
  %306 = zext i1 %303 to i32, !dbg !4125
  tail call void @llvm.dbg.value(metadata i64 %305, metadata !3989, metadata !DIExpression()), !dbg !3997
  tail call void @llvm.dbg.value(metadata i32 %306, metadata !3995, metadata !DIExpression()), !dbg !4047
  br label %372, !dbg !4126

307:                                              ; preds = %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4073, metadata !DIExpression()), !dbg !4127
  call void @llvm.dbg.value(metadata i32 1024, metadata !4078, metadata !DIExpression()), !dbg !4127
  %308 = icmp ugt i64 %46, 18014398509481983, !dbg !4129
  call void @llvm.dbg.value(metadata i64 poison, metadata !4079, metadata !DIExpression()), !dbg !4127
  %309 = shl i64 %46, 10, !dbg !4130
  %310 = select i1 %308, i64 -1, i64 %309, !dbg !4130
  %311 = zext i1 %308 to i32, !dbg !4130
  tail call void @llvm.dbg.value(metadata i64 %310, metadata !3989, metadata !DIExpression()), !dbg !3997
  tail call void @llvm.dbg.value(metadata i32 %311, metadata !3995, metadata !DIExpression()), !dbg !4047
  br label %372, !dbg !4131

312:                                              ; preds = %68, %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4067, metadata !DIExpression()), !dbg !4132
  call void @llvm.dbg.value(metadata i64 %69, metadata !4068, metadata !DIExpression()), !dbg !4132
  call void @llvm.dbg.value(metadata i32 0, metadata !4062, metadata !DIExpression()), !dbg !4132
  call void @llvm.dbg.value(metadata i32 3, metadata !4069, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4132
  call void @llvm.dbg.value(metadata i32 0, metadata !4062, metadata !DIExpression()), !dbg !4132
  call void @llvm.dbg.value(metadata i32 3, metadata !4069, metadata !DIExpression()), !dbg !4132
  call void @llvm.dbg.value(metadata i32 2, metadata !4069, metadata !DIExpression()), !dbg !4132
  call void @llvm.dbg.value(metadata ptr undef, metadata !4073, metadata !DIExpression()), !dbg !4134
  call void @llvm.dbg.value(metadata i64 %69, metadata !4078, metadata !DIExpression()), !dbg !4134
  %313 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4136
  %314 = extractvalue { i64, i1 } %313, 1, !dbg !4136
  call void @llvm.dbg.value(metadata i64 poison, metadata !4079, metadata !DIExpression()), !dbg !4134
  %315 = extractvalue { i64, i1 } %313, 0, !dbg !4137
  %316 = select i1 %314, i64 -1, i64 %315, !dbg !4137
  call void @llvm.dbg.value(metadata i1 %314, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4132
  call void @llvm.dbg.value(metadata i32 2, metadata !4069, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4132
  call void @llvm.dbg.value(metadata i1 %314, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4132
  call void @llvm.dbg.value(metadata i32 2, metadata !4069, metadata !DIExpression()), !dbg !4132
  call void @llvm.dbg.value(metadata i32 1, metadata !4069, metadata !DIExpression()), !dbg !4132
  call void @llvm.dbg.value(metadata ptr undef, metadata !4073, metadata !DIExpression()), !dbg !4134
  call void @llvm.dbg.value(metadata i64 %69, metadata !4078, metadata !DIExpression()), !dbg !4134
  %317 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %316), !dbg !4136
  %318 = extractvalue { i64, i1 } %317, 1, !dbg !4136
  call void @llvm.dbg.value(metadata i64 poison, metadata !4079, metadata !DIExpression()), !dbg !4134
  %319 = extractvalue { i64, i1 } %317, 0, !dbg !4137
  %320 = select i1 %318, i64 -1, i64 %319, !dbg !4137
  %321 = or i1 %314, %318, !dbg !4138
  call void @llvm.dbg.value(metadata i1 %321, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4132
  call void @llvm.dbg.value(metadata i32 1, metadata !4069, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4132
  call void @llvm.dbg.value(metadata i1 %321, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4132
  call void @llvm.dbg.value(metadata i32 1, metadata !4069, metadata !DIExpression()), !dbg !4132
  call void @llvm.dbg.value(metadata i32 0, metadata !4069, metadata !DIExpression()), !dbg !4132
  call void @llvm.dbg.value(metadata ptr undef, metadata !4073, metadata !DIExpression()), !dbg !4134
  call void @llvm.dbg.value(metadata i64 %69, metadata !4078, metadata !DIExpression()), !dbg !4134
  %322 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %320), !dbg !4136
  %323 = extractvalue { i64, i1 } %322, 1, !dbg !4136
  call void @llvm.dbg.value(metadata i64 poison, metadata !4079, metadata !DIExpression()), !dbg !4134
  %324 = extractvalue { i64, i1 } %322, 0, !dbg !4137
  %325 = select i1 %323, i64 -1, i64 %324, !dbg !4137
  %326 = or i1 %321, %323, !dbg !4138
  %327 = zext i1 %326 to i32, !dbg !4138
  call void @llvm.dbg.value(metadata i32 %327, metadata !4062, metadata !DIExpression()), !dbg !4132
  call void @llvm.dbg.value(metadata i32 0, metadata !4069, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4132
  br label %372, !dbg !4086

328:                                              ; preds = %68, %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4067, metadata !DIExpression()), !dbg !4139
  call void @llvm.dbg.value(metadata i64 %69, metadata !4068, metadata !DIExpression()), !dbg !4139
  call void @llvm.dbg.value(metadata i32 0, metadata !4062, metadata !DIExpression()), !dbg !4139
  call void @llvm.dbg.value(metadata i32 1, metadata !4069, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4139
  %329 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4141
  %330 = extractvalue { i64, i1 } %329, 1, !dbg !4141
  %331 = extractvalue { i64, i1 } %329, 0, !dbg !4143
  %332 = select i1 %330, i64 -1, i64 %331, !dbg !4143
  %333 = zext i1 %330 to i32, !dbg !4143
  call void @llvm.dbg.value(metadata i32 0, metadata !4062, metadata !DIExpression()), !dbg !4139
  call void @llvm.dbg.value(metadata i32 1, metadata !4069, metadata !DIExpression()), !dbg !4139
  call void @llvm.dbg.value(metadata ptr undef, metadata !4073, metadata !DIExpression()), !dbg !4144
  call void @llvm.dbg.value(metadata i64 %69, metadata !4078, metadata !DIExpression()), !dbg !4144
  call void @llvm.dbg.value(metadata i64 poison, metadata !4079, metadata !DIExpression()), !dbg !4144
  br label %372, !dbg !4086

334:                                              ; preds = %68, %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4067, metadata !DIExpression()), !dbg !4145
  call void @llvm.dbg.value(metadata i64 %69, metadata !4068, metadata !DIExpression()), !dbg !4145
  call void @llvm.dbg.value(metadata i32 0, metadata !4062, metadata !DIExpression()), !dbg !4145
  call void @llvm.dbg.value(metadata i32 2, metadata !4069, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4145
  call void @llvm.dbg.value(metadata i32 0, metadata !4062, metadata !DIExpression()), !dbg !4145
  call void @llvm.dbg.value(metadata i32 2, metadata !4069, metadata !DIExpression()), !dbg !4145
  call void @llvm.dbg.value(metadata i32 1, metadata !4069, metadata !DIExpression()), !dbg !4145
  call void @llvm.dbg.value(metadata ptr undef, metadata !4073, metadata !DIExpression()), !dbg !4147
  call void @llvm.dbg.value(metadata i64 %69, metadata !4078, metadata !DIExpression()), !dbg !4147
  %335 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4149
  %336 = extractvalue { i64, i1 } %335, 1, !dbg !4149
  call void @llvm.dbg.value(metadata i64 poison, metadata !4079, metadata !DIExpression()), !dbg !4147
  %337 = extractvalue { i64, i1 } %335, 0, !dbg !4150
  %338 = select i1 %336, i64 -1, i64 %337, !dbg !4150
  call void @llvm.dbg.value(metadata i1 %336, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4145
  call void @llvm.dbg.value(metadata i32 1, metadata !4069, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4145
  call void @llvm.dbg.value(metadata i1 %336, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4145
  call void @llvm.dbg.value(metadata i32 1, metadata !4069, metadata !DIExpression()), !dbg !4145
  call void @llvm.dbg.value(metadata i32 0, metadata !4069, metadata !DIExpression()), !dbg !4145
  call void @llvm.dbg.value(metadata ptr undef, metadata !4073, metadata !DIExpression()), !dbg !4147
  call void @llvm.dbg.value(metadata i64 %69, metadata !4078, metadata !DIExpression()), !dbg !4147
  %339 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %338), !dbg !4149
  %340 = extractvalue { i64, i1 } %339, 1, !dbg !4149
  call void @llvm.dbg.value(metadata i64 poison, metadata !4079, metadata !DIExpression()), !dbg !4147
  %341 = extractvalue { i64, i1 } %339, 0, !dbg !4150
  %342 = select i1 %340, i64 -1, i64 %341, !dbg !4150
  %343 = or i1 %336, %340, !dbg !4151
  %344 = zext i1 %343 to i32, !dbg !4151
  call void @llvm.dbg.value(metadata i32 %344, metadata !4062, metadata !DIExpression()), !dbg !4145
  call void @llvm.dbg.value(metadata i32 0, metadata !4069, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4145
  br label %372, !dbg !4086

345:                                              ; preds = %68, %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4067, metadata !DIExpression()), !dbg !4152
  call void @llvm.dbg.value(metadata i64 %69, metadata !4068, metadata !DIExpression()), !dbg !4152
  call void @llvm.dbg.value(metadata i32 0, metadata !4062, metadata !DIExpression()), !dbg !4152
  call void @llvm.dbg.value(metadata i32 4, metadata !4069, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4152
  call void @llvm.dbg.value(metadata i32 0, metadata !4062, metadata !DIExpression()), !dbg !4152
  call void @llvm.dbg.value(metadata i32 4, metadata !4069, metadata !DIExpression()), !dbg !4152
  call void @llvm.dbg.value(metadata i32 3, metadata !4069, metadata !DIExpression()), !dbg !4152
  call void @llvm.dbg.value(metadata ptr undef, metadata !4073, metadata !DIExpression()), !dbg !4154
  call void @llvm.dbg.value(metadata i64 %69, metadata !4078, metadata !DIExpression()), !dbg !4154
  %346 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4156
  %347 = extractvalue { i64, i1 } %346, 1, !dbg !4156
  call void @llvm.dbg.value(metadata i64 poison, metadata !4079, metadata !DIExpression()), !dbg !4154
  %348 = extractvalue { i64, i1 } %346, 0, !dbg !4157
  %349 = select i1 %347, i64 -1, i64 %348, !dbg !4157
  call void @llvm.dbg.value(metadata i1 %347, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4152
  call void @llvm.dbg.value(metadata i32 3, metadata !4069, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4152
  call void @llvm.dbg.value(metadata i1 %347, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4152
  call void @llvm.dbg.value(metadata i32 3, metadata !4069, metadata !DIExpression()), !dbg !4152
  call void @llvm.dbg.value(metadata i32 2, metadata !4069, metadata !DIExpression()), !dbg !4152
  call void @llvm.dbg.value(metadata ptr undef, metadata !4073, metadata !DIExpression()), !dbg !4154
  call void @llvm.dbg.value(metadata i64 %69, metadata !4078, metadata !DIExpression()), !dbg !4154
  %350 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %349), !dbg !4156
  %351 = extractvalue { i64, i1 } %350, 1, !dbg !4156
  call void @llvm.dbg.value(metadata i64 poison, metadata !4079, metadata !DIExpression()), !dbg !4154
  %352 = extractvalue { i64, i1 } %350, 0, !dbg !4157
  %353 = select i1 %351, i64 -1, i64 %352, !dbg !4157
  %354 = or i1 %347, %351, !dbg !4158
  call void @llvm.dbg.value(metadata i1 %354, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4152
  call void @llvm.dbg.value(metadata i32 2, metadata !4069, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4152
  call void @llvm.dbg.value(metadata i1 %354, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4152
  call void @llvm.dbg.value(metadata i32 2, metadata !4069, metadata !DIExpression()), !dbg !4152
  call void @llvm.dbg.value(metadata i32 1, metadata !4069, metadata !DIExpression()), !dbg !4152
  call void @llvm.dbg.value(metadata ptr undef, metadata !4073, metadata !DIExpression()), !dbg !4154
  call void @llvm.dbg.value(metadata i64 %69, metadata !4078, metadata !DIExpression()), !dbg !4154
  %355 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %353), !dbg !4156
  %356 = extractvalue { i64, i1 } %355, 1, !dbg !4156
  call void @llvm.dbg.value(metadata i64 poison, metadata !4079, metadata !DIExpression()), !dbg !4154
  %357 = extractvalue { i64, i1 } %355, 0, !dbg !4157
  %358 = select i1 %356, i64 -1, i64 %357, !dbg !4157
  %359 = or i1 %354, %356, !dbg !4158
  call void @llvm.dbg.value(metadata i1 %359, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4152
  call void @llvm.dbg.value(metadata i32 1, metadata !4069, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4152
  call void @llvm.dbg.value(metadata i1 %359, metadata !4062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4152
  call void @llvm.dbg.value(metadata i32 1, metadata !4069, metadata !DIExpression()), !dbg !4152
  call void @llvm.dbg.value(metadata i32 0, metadata !4069, metadata !DIExpression()), !dbg !4152
  call void @llvm.dbg.value(metadata ptr undef, metadata !4073, metadata !DIExpression()), !dbg !4154
  call void @llvm.dbg.value(metadata i64 %69, metadata !4078, metadata !DIExpression()), !dbg !4154
  %360 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %358), !dbg !4156
  %361 = extractvalue { i64, i1 } %360, 1, !dbg !4156
  call void @llvm.dbg.value(metadata i64 poison, metadata !4079, metadata !DIExpression()), !dbg !4154
  %362 = extractvalue { i64, i1 } %360, 0, !dbg !4157
  %363 = select i1 %361, i64 -1, i64 %362, !dbg !4157
  %364 = or i1 %359, %361, !dbg !4158
  %365 = zext i1 %364 to i32, !dbg !4158
  call void @llvm.dbg.value(metadata i32 %365, metadata !4062, metadata !DIExpression()), !dbg !4152
  call void @llvm.dbg.value(metadata i32 0, metadata !4069, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4152
  br label %372, !dbg !4086

366:                                              ; preds = %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4073, metadata !DIExpression()), !dbg !4159
  call void @llvm.dbg.value(metadata i32 2, metadata !4078, metadata !DIExpression()), !dbg !4159
  call void @llvm.dbg.value(metadata i64 poison, metadata !4079, metadata !DIExpression()), !dbg !4159
  %367 = shl i64 %46, 1, !dbg !4161
  %368 = icmp sgt i64 %46, -1, !dbg !4161
  %369 = select i1 %368, i64 %367, i64 -1, !dbg !4161
  %370 = lshr i64 %46, 63, !dbg !4161
  %371 = trunc i64 %370 to i32, !dbg !4161
  tail call void @llvm.dbg.value(metadata i64 %369, metadata !3989, metadata !DIExpression()), !dbg !3997
  tail call void @llvm.dbg.value(metadata i32 %371, metadata !3995, metadata !DIExpression()), !dbg !4047
  br label %372, !dbg !4162

372:                                              ; preds = %71, %107, %345, %148, %194, %245, %334, %328, %312, %271, %302, %307, %366, %68
  %373 = phi i64 [ %369, %366 ], [ %46, %68 ], [ %310, %307 ], [ %305, %302 ], [ %299, %271 ], [ %325, %312 ], [ %332, %328 ], [ %342, %334 ], [ %268, %245 ], [ %242, %194 ], [ %191, %148 ], [ %363, %345 ], [ %145, %107 ], [ %104, %71 ], !dbg !3997
  %374 = phi i32 [ %371, %366 ], [ 0, %68 ], [ %311, %307 ], [ %306, %302 ], [ %301, %271 ], [ %327, %312 ], [ %333, %328 ], [ %344, %334 ], [ %270, %245 ], [ %244, %194 ], [ %193, %148 ], [ %365, %345 ], [ %147, %107 ], [ %106, %71 ], !dbg !4163
  tail call void @llvm.dbg.value(metadata i64 %373, metadata !3989, metadata !DIExpression()), !dbg !3997
  tail call void @llvm.dbg.value(metadata i32 %374, metadata !3995, metadata !DIExpression()), !dbg !4047
  %375 = or i32 %374, %45, !dbg !4086
  tail call void @llvm.dbg.value(metadata i32 %375, metadata !3990, metadata !DIExpression()), !dbg !3997
  %376 = getelementptr inbounds i8, ptr %26, i64 %70, !dbg !4164
  store ptr %376, ptr %20, align 8, !dbg !4164, !tbaa !858
  %377 = load i8, ptr %376, align 1, !dbg !4165, !tbaa !937
  %378 = icmp eq i8 %377, 0, !dbg !4165
  %379 = or disjoint i32 %375, 2
  %380 = select i1 %378, i32 %375, i32 %379, !dbg !4167
  tail call void @llvm.dbg.value(metadata i32 %380, metadata !3990, metadata !DIExpression()), !dbg !3997
  br label %383

381:                                              ; preds = %68
  store i64 %46, ptr %3, align 8, !dbg !4168, !tbaa !1218
  %382 = or disjoint i32 %45, 2, !dbg !4169
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !3989, metadata !DIExpression()), !dbg !3997
  tail call void @llvm.dbg.value(metadata i32 %45, metadata !3990, metadata !DIExpression()), !dbg !3997
  br label %386

383:                                              ; preds = %372, %44
  %384 = phi i64 [ %46, %44 ], [ %373, %372 ], !dbg !4170
  %385 = phi i32 [ %45, %44 ], [ %380, %372 ], !dbg !4171
  tail call void @llvm.dbg.value(metadata i64 %384, metadata !3989, metadata !DIExpression()), !dbg !3997
  tail call void @llvm.dbg.value(metadata i32 %385, metadata !3990, metadata !DIExpression()), !dbg !3997
  store i64 %384, ptr %3, align 8, !dbg !4172, !tbaa !1218
  br label %386, !dbg !4173

386:                                              ; preds = %43, %53, %383, %33, %30, %28, %37, %381, %22
  %387 = phi i32 [ 4, %22 ], [ %385, %383 ], [ %382, %381 ], [ %54, %53 ], [ %41, %43 ], [ 4, %33 ], [ 4, %30 ], [ 4, %28 ], [ 4, %37 ], !dbg !3997
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #37, !dbg !4174
  ret i32 %387, !dbg !4174
}

; Function Attrs: nounwind
declare !dbg !4175 i64 @strtoumax(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !4180 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4218, metadata !DIExpression()), !dbg !4223
  %2 = tail call i64 @__fpending(ptr noundef %0) #37, !dbg !4224
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4219, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4223
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4225, metadata !DIExpression()), !dbg !4228
  %3 = load i32, ptr %0, align 8, !dbg !4230, !tbaa !4231
  %4 = and i32 %3, 32, !dbg !4232
  %5 = icmp eq i32 %4, 0, !dbg !4232
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !4221, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4223
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #37, !dbg !4233
  %7 = icmp eq i32 %6, 0, !dbg !4234
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !4222, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4223
  br i1 %5, label %8, label %18, !dbg !4235

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !4237
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !4219, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4223
  %10 = select i1 %7, i1 true, i1 %9, !dbg !4238
  %11 = xor i1 %7, true, !dbg !4238
  %12 = sext i1 %11 to i32, !dbg !4238
  br i1 %10, label %21, label %13, !dbg !4238

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #40, !dbg !4239
  %15 = load i32, ptr %14, align 4, !dbg !4239, !tbaa !928
  %16 = icmp ne i32 %15, 9, !dbg !4240
  %17 = sext i1 %16 to i32, !dbg !4241
  br label %21, !dbg !4241

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !4242

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #40, !dbg !4244
  store i32 0, ptr %20, align 4, !dbg !4246, !tbaa !928
  br label %21, !dbg !4244

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !4223
  ret i32 %22, !dbg !4247
}

; Function Attrs: nounwind
declare !dbg !4248 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !4252 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4290, metadata !DIExpression()), !dbg !4294
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4291, metadata !DIExpression()), !dbg !4294
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !4295
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !4292, metadata !DIExpression()), !dbg !4294
  %3 = icmp slt i32 %2, 0, !dbg !4296
  br i1 %3, label %4, label %6, !dbg !4298

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4299
  br label %24, !dbg !4300

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !4301
  %8 = icmp eq i32 %7, 0, !dbg !4301
  br i1 %8, label %13, label %9, !dbg !4303

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !4304
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #37, !dbg !4305
  %12 = icmp eq i64 %11, -1, !dbg !4306
  br i1 %12, label %16, label %13, !dbg !4307

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #37, !dbg !4308
  %15 = icmp eq i32 %14, 0, !dbg !4308
  br i1 %15, label %16, label %18, !dbg !4309

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4291, metadata !DIExpression()), !dbg !4294
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4293, metadata !DIExpression()), !dbg !4294
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4310
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !4293, metadata !DIExpression()), !dbg !4294
  br label %24, !dbg !4311

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #40, !dbg !4312
  %20 = load i32, ptr %19, align 4, !dbg !4312, !tbaa !928
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !4291, metadata !DIExpression()), !dbg !4294
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4293, metadata !DIExpression()), !dbg !4294
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4310
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !4293, metadata !DIExpression()), !dbg !4294
  %22 = icmp eq i32 %20, 0, !dbg !4313
  br i1 %22, label %24, label %23, !dbg !4311

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !4315, !tbaa !928
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !4293, metadata !DIExpression()), !dbg !4294
  br label %24, !dbg !4317

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4294
  ret i32 %25, !dbg !4318
}

; Function Attrs: nofree nounwind
declare !dbg !4319 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !4320 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !4321 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4322 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !4325 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4363, metadata !DIExpression()), !dbg !4364
  %2 = icmp eq ptr %0, null, !dbg !4365
  br i1 %2, label %6, label %3, !dbg !4367

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !4368
  %5 = icmp eq i32 %4, 0, !dbg !4368
  br i1 %5, label %6, label %8, !dbg !4369

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !4370
  br label %16, !dbg !4371

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !4372, metadata !DIExpression()), !dbg !4377
  %9 = load i32, ptr %0, align 8, !dbg !4379, !tbaa !4231
  %10 = and i32 %9, 256, !dbg !4381
  %11 = icmp eq i32 %10, 0, !dbg !4381
  br i1 %11, label %14, label %12, !dbg !4382

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #37, !dbg !4383
  br label %14, !dbg !4383

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !4384
  br label %16, !dbg !4385

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !4364
  ret i32 %17, !dbg !4386
}

; Function Attrs: nofree nounwind
declare !dbg !4387 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !4388 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4427, metadata !DIExpression()), !dbg !4433
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4428, metadata !DIExpression()), !dbg !4433
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !4429, metadata !DIExpression()), !dbg !4433
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !4434
  %5 = load ptr, ptr %4, align 8, !dbg !4434, !tbaa !4435
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !4436
  %7 = load ptr, ptr %6, align 8, !dbg !4436, !tbaa !4437
  %8 = icmp eq ptr %5, %7, !dbg !4438
  br i1 %8, label %9, label %27, !dbg !4439

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !4440
  %11 = load ptr, ptr %10, align 8, !dbg !4440, !tbaa !1469
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !4441
  %13 = load ptr, ptr %12, align 8, !dbg !4441, !tbaa !4442
  %14 = icmp eq ptr %11, %13, !dbg !4443
  br i1 %14, label %15, label %27, !dbg !4444

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !4445
  %17 = load ptr, ptr %16, align 8, !dbg !4445, !tbaa !4446
  %18 = icmp eq ptr %17, null, !dbg !4447
  br i1 %18, label %19, label %27, !dbg !4448

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !4449
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #37, !dbg !4450
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !4430, metadata !DIExpression()), !dbg !4451
  %22 = icmp eq i64 %21, -1, !dbg !4452
  br i1 %22, label %29, label %23, !dbg !4454

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !4455, !tbaa !4231
  %25 = and i32 %24, -17, !dbg !4455
  store i32 %25, ptr %0, align 8, !dbg !4455, !tbaa !4231
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !4456
  store i64 %21, ptr %26, align 8, !dbg !4457, !tbaa !4458
  br label %29, !dbg !4459

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !4460
  br label %29, !dbg !4461

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !4433
  ret i32 %30, !dbg !4462
}

; Function Attrs: nofree nounwind
declare !dbg !4463 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4466 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4471, metadata !DIExpression()), !dbg !4476
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4472, metadata !DIExpression()), !dbg !4476
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4473, metadata !DIExpression()), !dbg !4476
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4474, metadata !DIExpression()), !dbg !4476
  %5 = icmp eq ptr %1, null, !dbg !4477
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4479
  %7 = select i1 %5, ptr @.str.157, ptr %1, !dbg !4479
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4479
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !4473, metadata !DIExpression()), !dbg !4476
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !4472, metadata !DIExpression()), !dbg !4476
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !4471, metadata !DIExpression()), !dbg !4476
  %9 = icmp eq ptr %3, null, !dbg !4480
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4482
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !4474, metadata !DIExpression()), !dbg !4476
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #37, !dbg !4483
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !4475, metadata !DIExpression()), !dbg !4476
  %12 = icmp ult i64 %11, -3, !dbg !4484
  br i1 %12, label %13, label %17, !dbg !4486

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #38, !dbg !4487
  %15 = icmp eq i32 %14, 0, !dbg !4487
  br i1 %15, label %16, label %29, !dbg !4488

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4489, metadata !DIExpression()), !dbg !4494
  call void @llvm.dbg.value(metadata ptr %10, metadata !4496, metadata !DIExpression()), !dbg !4501
  call void @llvm.dbg.value(metadata i32 0, metadata !4499, metadata !DIExpression()), !dbg !4501
  call void @llvm.dbg.value(metadata i64 8, metadata !4500, metadata !DIExpression()), !dbg !4501
  store i64 0, ptr %10, align 1, !dbg !4503
  br label %29, !dbg !4504

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4505
  br i1 %18, label %19, label %20, !dbg !4507

19:                                               ; preds = %17
  tail call void @abort() #39, !dbg !4508
  unreachable, !dbg !4508

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4509

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #37, !dbg !4511
  br i1 %23, label %29, label %24, !dbg !4512

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4513
  br i1 %25, label %29, label %26, !dbg !4516

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4517, !tbaa !937
  %28 = zext i8 %27 to i32, !dbg !4518
  store i32 %28, ptr %6, align 4, !dbg !4519, !tbaa !928
  br label %29, !dbg !4520

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4476
  ret i64 %30, !dbg !4521
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4522 i32 @mbsinit(ptr noundef) local_unnamed_addr #35

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #36 !dbg !4528 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4530, metadata !DIExpression()), !dbg !4534
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4531, metadata !DIExpression()), !dbg !4534
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4532, metadata !DIExpression()), !dbg !4534
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !4535
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !4535
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !4533, metadata !DIExpression()), !dbg !4534
  br i1 %5, label %6, label %8, !dbg !4537

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #40, !dbg !4538
  store i32 12, ptr %7, align 4, !dbg !4540, !tbaa !928
  br label %12, !dbg !4541

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !4535
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !4533, metadata !DIExpression()), !dbg !4534
  call void @llvm.dbg.value(metadata ptr %0, metadata !4542, metadata !DIExpression()), !dbg !4546
  call void @llvm.dbg.value(metadata i64 %9, metadata !4545, metadata !DIExpression()), !dbg !4546
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !4548
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #45, !dbg !4549
  br label %12, !dbg !4550

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !4534
  ret ptr %13, !dbg !4551
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !4552 {
  %2 = alloca [257 x i8], align 16, !DIAssignID !4561
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4557, metadata !DIExpression(), metadata !4561, metadata ptr %2, metadata !DIExpression()), !dbg !4562
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4556, metadata !DIExpression()), !dbg !4562
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #37, !dbg !4563
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #37, !dbg !4564
  %4 = icmp eq i32 %3, 0, !dbg !4564
  br i1 %4, label %5, label %12, !dbg !4566

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4567, metadata !DIExpression()), !dbg !4571
  call void @llvm.dbg.value(metadata !895, metadata !4570, metadata !DIExpression()), !dbg !4571
  %6 = load i16, ptr %2, align 16, !dbg !4574
  %7 = icmp eq i16 %6, 67, !dbg !4574
  br i1 %7, label %11, label %8, !dbg !4575

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4567, metadata !DIExpression()), !dbg !4576
  call void @llvm.dbg.value(metadata ptr @.str.1.162, metadata !4570, metadata !DIExpression()), !dbg !4576
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.162, i64 6), !dbg !4578
  %10 = icmp eq i32 %9, 0, !dbg !4579
  br i1 %10, label %11, label %12, !dbg !4580

11:                                               ; preds = %8, %5
  br label %12, !dbg !4581

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4562
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #37, !dbg !4582
  ret i1 %13, !dbg !4582
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4583 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4587, metadata !DIExpression()), !dbg !4590
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4588, metadata !DIExpression()), !dbg !4590
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4589, metadata !DIExpression()), !dbg !4590
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #37, !dbg !4591
  ret i32 %4, !dbg !4592
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !4593 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4597, metadata !DIExpression()), !dbg !4598
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #37, !dbg !4599
  ret ptr %2, !dbg !4600
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !4601 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4603, metadata !DIExpression()), !dbg !4605
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !4606
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4604, metadata !DIExpression()), !dbg !4605
  ret ptr %2, !dbg !4607
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4608 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4610, metadata !DIExpression()), !dbg !4617
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4611, metadata !DIExpression()), !dbg !4617
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4612, metadata !DIExpression()), !dbg !4617
  call void @llvm.dbg.value(metadata i32 %0, metadata !4603, metadata !DIExpression()), !dbg !4618
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !4620
  call void @llvm.dbg.value(metadata ptr %4, metadata !4604, metadata !DIExpression()), !dbg !4618
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4613, metadata !DIExpression()), !dbg !4617
  %5 = icmp eq ptr %4, null, !dbg !4621
  br i1 %5, label %6, label %9, !dbg !4622

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4623
  br i1 %7, label %19, label %8, !dbg !4626

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !4627, !tbaa !937
  br label %19, !dbg !4628

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #38, !dbg !4629
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !4614, metadata !DIExpression()), !dbg !4630
  %11 = icmp ult i64 %10, %2, !dbg !4631
  br i1 %11, label %12, label %14, !dbg !4633

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4634
  call void @llvm.dbg.value(metadata ptr %1, metadata !4636, metadata !DIExpression()), !dbg !4641
  call void @llvm.dbg.value(metadata ptr %4, metadata !4639, metadata !DIExpression()), !dbg !4641
  call void @llvm.dbg.value(metadata i64 %13, metadata !4640, metadata !DIExpression()), !dbg !4641
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #37, !dbg !4643
  br label %19, !dbg !4644

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4645
  br i1 %15, label %19, label %16, !dbg !4648

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4649
  call void @llvm.dbg.value(metadata ptr %1, metadata !4636, metadata !DIExpression()), !dbg !4651
  call void @llvm.dbg.value(metadata ptr %4, metadata !4639, metadata !DIExpression()), !dbg !4651
  call void @llvm.dbg.value(metadata i64 %17, metadata !4640, metadata !DIExpression()), !dbg !4651
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #37, !dbg !4653
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !4654
  store i8 0, ptr %18, align 1, !dbg !4655, !tbaa !937
  br label %19, !dbg !4656

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4657
  ret i32 %20, !dbg !4658
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
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind willreturn memory(argmem: read) }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #24 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { inlinehint nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nounwind allocsize(0) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nounwind allocsize(1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nounwind allocsize(0,1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #35 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { nounwind }
attributes #38 = { nounwind willreturn memory(read) }
attributes #39 = { noreturn nounwind }
attributes #40 = { nounwind willreturn memory(none) }
attributes #41 = { noreturn }
attributes #42 = { cold }
attributes #43 = { nounwind allocsize(0) }
attributes #44 = { nounwind allocsize(0,1) }
attributes #45 = { nounwind allocsize(1) }

!llvm.dbg.cu = !{!81, !753, !433, !437, !452, !721, !755, !757, !759, !500, !514, !562, !768, !715, !775, !810, !812, !821, !823, !825, !827, !737, !829, !831, !835, !837}
!llvm.ident = !{!839, !839, !839, !839, !839, !839, !839, !839, !839, !839, !839, !839, !839, !839, !839, !839, !839, !839, !839, !839, !839, !839, !839, !839, !839, !839}
!llvm.module.flags = !{!840, !841, !842, !843, !844, !845, !846}

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
!81 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/mknod.o -MD -MP -MF src/.deps/mknod.Tpo -c src/mknod.c -o src/.mknod.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !82, retainedTypes: !127, globals: !141, splitDebugInlining: false, nameTableKind: None)
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
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !137, line: 18, baseType: !134)
!137 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
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
!433 = distinct !DICompileUnit(language: DW_LANG_C11, file: !430, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/version.o -MD -MP -MF src/.deps/version.Tpo -c src/version.c -o src/.version.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !434, splitDebugInlining: false, nameTableKind: None)
!434 = !{!428, !431}
!435 = !DIGlobalVariableExpression(var: !436, expr: !DIExpression())
!436 = distinct !DIGlobalVariable(name: "file_name", scope: !437, file: !438, line: 45, type: !138, isLocal: true, isDefinition: true)
!437 = distinct !DICompileUnit(language: DW_LANG_C11, file: !438, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-closeout.o -MD -MP -MF lib/.deps/libcoreutils_a-closeout.Tpo -c lib/closeout.c -o lib/.libcoreutils_a-closeout.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !439, splitDebugInlining: false, nameTableKind: None)
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
!451 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !452, file: !453, line: 66, type: !495, isLocal: false, isDefinition: true)
!452 = distinct !DICompileUnit(language: DW_LANG_C11, file: !453, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !454, globals: !455, splitDebugInlining: false, nameTableKind: None)
!453 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!454 = !{!129, !140}
!455 = !{!456, !458, !477, !479, !481, !483, !450, !485, !487, !489, !491, !493}
!456 = !DIGlobalVariableExpression(var: !457, expr: !DIExpression())
!457 = distinct !DIGlobalVariable(scope: null, file: !453, line: 272, type: !306, isLocal: true, isDefinition: true)
!458 = !DIGlobalVariableExpression(var: !459, expr: !DIExpression())
!459 = distinct !DIGlobalVariable(name: "old_file_name", scope: !460, file: !453, line: 304, type: !138, isLocal: true, isDefinition: true)
!460 = distinct !DISubprogram(name: "verror_at_line", scope: !453, file: !453, line: 298, type: !461, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !452, retainedNodes: !470)
!461 = !DISubroutineType(types: !462)
!462 = !{null, !85, !85, !138, !91, !138, !463}
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !465)
!465 = !{!466, !467, !468, !469}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !464, file: !453, baseType: !91, size: 32)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !464, file: !453, baseType: !91, size: 32, offset: 32)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !464, file: !453, baseType: !129, size: 64, offset: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !464, file: !453, baseType: !129, size: 64, offset: 128)
!470 = !{!471, !472, !473, !474, !475, !476}
!471 = !DILocalVariable(name: "status", arg: 1, scope: !460, file: !453, line: 298, type: !85)
!472 = !DILocalVariable(name: "errnum", arg: 2, scope: !460, file: !453, line: 298, type: !85)
!473 = !DILocalVariable(name: "file_name", arg: 3, scope: !460, file: !453, line: 298, type: !138)
!474 = !DILocalVariable(name: "line_number", arg: 4, scope: !460, file: !453, line: 298, type: !91)
!475 = !DILocalVariable(name: "message", arg: 5, scope: !460, file: !453, line: 298, type: !138)
!476 = !DILocalVariable(name: "args", arg: 6, scope: !460, file: !453, line: 298, type: !463)
!477 = !DIGlobalVariableExpression(var: !478, expr: !DIExpression())
!478 = distinct !DIGlobalVariable(name: "old_line_number", scope: !460, file: !453, line: 305, type: !91, isLocal: true, isDefinition: true)
!479 = !DIGlobalVariableExpression(var: !480, expr: !DIExpression())
!480 = distinct !DIGlobalVariable(scope: null, file: !453, line: 338, type: !76, isLocal: true, isDefinition: true)
!481 = !DIGlobalVariableExpression(var: !482, expr: !DIExpression())
!482 = distinct !DIGlobalVariable(scope: null, file: !453, line: 346, type: !339, isLocal: true, isDefinition: true)
!483 = !DIGlobalVariableExpression(var: !484, expr: !DIExpression())
!484 = distinct !DIGlobalVariable(scope: null, file: !453, line: 346, type: !317, isLocal: true, isDefinition: true)
!485 = !DIGlobalVariableExpression(var: !486, expr: !DIExpression())
!486 = distinct !DIGlobalVariable(name: "error_message_count", scope: !452, file: !453, line: 69, type: !91, isLocal: false, isDefinition: true)
!487 = !DIGlobalVariableExpression(var: !488, expr: !DIExpression())
!488 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !452, file: !453, line: 295, type: !85, isLocal: false, isDefinition: true)
!489 = !DIGlobalVariableExpression(var: !490, expr: !DIExpression())
!490 = distinct !DIGlobalVariable(scope: null, file: !453, line: 208, type: !334, isLocal: true, isDefinition: true)
!491 = !DIGlobalVariableExpression(var: !492, expr: !DIExpression())
!492 = distinct !DIGlobalVariable(scope: null, file: !453, line: 208, type: !199, isLocal: true, isDefinition: true)
!493 = !DIGlobalVariableExpression(var: !494, expr: !DIExpression())
!494 = distinct !DIGlobalVariable(scope: null, file: !453, line: 214, type: !306, isLocal: true, isDefinition: true)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DISubroutineType(types: !497)
!497 = !{null}
!498 = !DIGlobalVariableExpression(var: !499, expr: !DIExpression())
!499 = distinct !DIGlobalVariable(name: "program_name", scope: !500, file: !501, line: 31, type: !138, isLocal: false, isDefinition: true)
!500 = distinct !DICompileUnit(language: DW_LANG_C11, file: !501, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !502, globals: !503, splitDebugInlining: false, nameTableKind: None)
!501 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!502 = !{!129, !128}
!503 = !{!498, !504, !506}
!504 = !DIGlobalVariableExpression(var: !505, expr: !DIExpression())
!505 = distinct !DIGlobalVariable(scope: null, file: !501, line: 46, type: !339, isLocal: true, isDefinition: true)
!506 = !DIGlobalVariableExpression(var: !507, expr: !DIExpression())
!507 = distinct !DIGlobalVariable(scope: null, file: !501, line: 49, type: !76, isLocal: true, isDefinition: true)
!508 = !DIGlobalVariableExpression(var: !509, expr: !DIExpression())
!509 = distinct !DIGlobalVariable(name: "utf07FF", scope: !510, file: !511, line: 46, type: !538, isLocal: true, isDefinition: true)
!510 = distinct !DISubprogram(name: "proper_name_lite", scope: !511, file: !511, line: 38, type: !512, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !514, retainedNodes: !516)
!511 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!512 = !DISubroutineType(types: !513)
!513 = !{!138, !138, !138}
!514 = distinct !DICompileUnit(language: DW_LANG_C11, file: !511, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !515, splitDebugInlining: false, nameTableKind: None)
!515 = !{!508}
!516 = !{!517, !518, !519, !520, !525}
!517 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !510, file: !511, line: 38, type: !138)
!518 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !510, file: !511, line: 38, type: !138)
!519 = !DILocalVariable(name: "translation", scope: !510, file: !511, line: 40, type: !138)
!520 = !DILocalVariable(name: "w", scope: !510, file: !511, line: 47, type: !521)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !522, line: 37, baseType: !523)
!522 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !133, line: 57, baseType: !524)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !133, line: 42, baseType: !91)
!525 = !DILocalVariable(name: "mbs", scope: !510, file: !511, line: 48, type: !526)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !527, line: 6, baseType: !528)
!527 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !529, line: 21, baseType: !530)
!529 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !529, line: 13, size: 64, elements: !531)
!531 = !{!532, !533}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !530, file: !529, line: 15, baseType: !85, size: 32)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !530, file: !529, line: 20, baseType: !534, size: 32, offset: 32)
!534 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !530, file: !529, line: 16, size: 32, elements: !535)
!535 = !{!536, !537}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !534, file: !529, line: 18, baseType: !91, size: 32)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !534, file: !529, line: 19, baseType: !76, size: 32)
!538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 16, elements: !318)
!539 = !DIGlobalVariableExpression(var: !540, expr: !DIExpression())
!540 = distinct !DIGlobalVariable(scope: null, file: !541, line: 78, type: !339, isLocal: true, isDefinition: true)
!541 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!542 = !DIGlobalVariableExpression(var: !543, expr: !DIExpression())
!543 = distinct !DIGlobalVariable(scope: null, file: !541, line: 79, type: !19, isLocal: true, isDefinition: true)
!544 = !DIGlobalVariableExpression(var: !545, expr: !DIExpression())
!545 = distinct !DIGlobalVariable(scope: null, file: !541, line: 80, type: !159, isLocal: true, isDefinition: true)
!546 = !DIGlobalVariableExpression(var: !547, expr: !DIExpression())
!547 = distinct !DIGlobalVariable(scope: null, file: !541, line: 81, type: !159, isLocal: true, isDefinition: true)
!548 = !DIGlobalVariableExpression(var: !549, expr: !DIExpression())
!549 = distinct !DIGlobalVariable(scope: null, file: !541, line: 82, type: !295, isLocal: true, isDefinition: true)
!550 = !DIGlobalVariableExpression(var: !551, expr: !DIExpression())
!551 = distinct !DIGlobalVariable(scope: null, file: !541, line: 83, type: !317, isLocal: true, isDefinition: true)
!552 = !DIGlobalVariableExpression(var: !553, expr: !DIExpression())
!553 = distinct !DIGlobalVariable(scope: null, file: !541, line: 84, type: !339, isLocal: true, isDefinition: true)
!554 = !DIGlobalVariableExpression(var: !555, expr: !DIExpression())
!555 = distinct !DIGlobalVariable(scope: null, file: !541, line: 85, type: !334, isLocal: true, isDefinition: true)
!556 = !DIGlobalVariableExpression(var: !557, expr: !DIExpression())
!557 = distinct !DIGlobalVariable(scope: null, file: !541, line: 86, type: !334, isLocal: true, isDefinition: true)
!558 = !DIGlobalVariableExpression(var: !559, expr: !DIExpression())
!559 = distinct !DIGlobalVariable(scope: null, file: !541, line: 87, type: !339, isLocal: true, isDefinition: true)
!560 = !DIGlobalVariableExpression(var: !561, expr: !DIExpression())
!561 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !562, file: !541, line: 76, type: !636, isLocal: false, isDefinition: true)
!562 = distinct !DICompileUnit(language: DW_LANG_C11, file: !541, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !563, retainedTypes: !571, globals: !572, splitDebugInlining: false, nameTableKind: None)
!563 = !{!564, !566, !112}
!564 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !565, line: 42, baseType: !91, size: 32, elements: !100)
!565 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!566 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !565, line: 254, baseType: !91, size: 32, elements: !567)
!567 = !{!568, !569, !570}
!568 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!569 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!570 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!571 = !{!129, !85, !135, !136}
!572 = !{!539, !542, !544, !546, !548, !550, !552, !554, !556, !558, !560, !573, !577, !587, !589, !594, !596, !598, !600, !602, !625, !632, !634}
!573 = !DIGlobalVariableExpression(var: !574, expr: !DIExpression())
!574 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !562, file: !541, line: 92, type: !575, isLocal: false, isDefinition: true)
!575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !576, size: 320, elements: !67)
!576 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !564)
!577 = !DIGlobalVariableExpression(var: !578, expr: !DIExpression())
!578 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !562, file: !541, line: 1040, type: !579, isLocal: false, isDefinition: true)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !541, line: 56, size: 448, elements: !580)
!580 = !{!581, !582, !583, !585, !586}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !579, file: !541, line: 59, baseType: !564, size: 32)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !579, file: !541, line: 62, baseType: !85, size: 32, offset: 32)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !579, file: !541, line: 66, baseType: !584, size: 256, offset: 64)
!584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 256, elements: !340)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !579, file: !541, line: 69, baseType: !138, size: 64, offset: 320)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !579, file: !541, line: 72, baseType: !138, size: 64, offset: 384)
!587 = !DIGlobalVariableExpression(var: !588, expr: !DIExpression())
!588 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !562, file: !541, line: 107, type: !579, isLocal: true, isDefinition: true)
!589 = !DIGlobalVariableExpression(var: !590, expr: !DIExpression())
!590 = distinct !DIGlobalVariable(name: "slot0", scope: !562, file: !541, line: 831, type: !591, isLocal: true, isDefinition: true)
!591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !592)
!592 = !{!593}
!593 = !DISubrange(count: 256)
!594 = !DIGlobalVariableExpression(var: !595, expr: !DIExpression())
!595 = distinct !DIGlobalVariable(scope: null, file: !541, line: 321, type: !317, isLocal: true, isDefinition: true)
!596 = !DIGlobalVariableExpression(var: !597, expr: !DIExpression())
!597 = distinct !DIGlobalVariable(scope: null, file: !541, line: 357, type: !317, isLocal: true, isDefinition: true)
!598 = !DIGlobalVariableExpression(var: !599, expr: !DIExpression())
!599 = distinct !DIGlobalVariable(scope: null, file: !541, line: 358, type: !317, isLocal: true, isDefinition: true)
!600 = !DIGlobalVariableExpression(var: !601, expr: !DIExpression())
!601 = distinct !DIGlobalVariable(scope: null, file: !541, line: 199, type: !334, isLocal: true, isDefinition: true)
!602 = !DIGlobalVariableExpression(var: !603, expr: !DIExpression())
!603 = distinct !DIGlobalVariable(name: "quote", scope: !604, file: !541, line: 228, type: !623, isLocal: true, isDefinition: true)
!604 = distinct !DISubprogram(name: "gettext_quote", scope: !541, file: !541, line: 197, type: !605, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !562, retainedNodes: !607)
!605 = !DISubroutineType(types: !606)
!606 = !{!138, !138, !564}
!607 = !{!608, !609, !610, !611, !612}
!608 = !DILocalVariable(name: "msgid", arg: 1, scope: !604, file: !541, line: 197, type: !138)
!609 = !DILocalVariable(name: "s", arg: 2, scope: !604, file: !541, line: 197, type: !564)
!610 = !DILocalVariable(name: "translation", scope: !604, file: !541, line: 199, type: !138)
!611 = !DILocalVariable(name: "w", scope: !604, file: !541, line: 229, type: !521)
!612 = !DILocalVariable(name: "mbs", scope: !604, file: !541, line: 230, type: !613)
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !527, line: 6, baseType: !614)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !529, line: 21, baseType: !615)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !529, line: 13, size: 64, elements: !616)
!616 = !{!617, !618}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !615, file: !529, line: 15, baseType: !85, size: 32)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !615, file: !529, line: 20, baseType: !619, size: 32, offset: 32)
!619 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !615, file: !529, line: 16, size: 32, elements: !620)
!620 = !{!621, !622}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !619, file: !529, line: 18, baseType: !91, size: 32)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !619, file: !529, line: 19, baseType: !76, size: 32)
!623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 64, elements: !624)
!624 = !{!319, !78}
!625 = !DIGlobalVariableExpression(var: !626, expr: !DIExpression())
!626 = distinct !DIGlobalVariable(name: "slotvec", scope: !562, file: !541, line: 834, type: !627, isLocal: true, isDefinition: true)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !541, line: 823, size: 128, elements: !629)
!629 = !{!630, !631}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !628, file: !541, line: 825, baseType: !136, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !628, file: !541, line: 826, baseType: !128, size: 64, offset: 64)
!632 = !DIGlobalVariableExpression(var: !633, expr: !DIExpression())
!633 = distinct !DIGlobalVariable(name: "nslots", scope: !562, file: !541, line: 832, type: !85, isLocal: true, isDefinition: true)
!634 = !DIGlobalVariableExpression(var: !635, expr: !DIExpression())
!635 = distinct !DIGlobalVariable(name: "slotvec0", scope: !562, file: !541, line: 833, type: !628, isLocal: true, isDefinition: true)
!636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !637, size: 704, elements: !638)
!637 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !138)
!638 = !{!639}
!639 = !DISubrange(count: 11)
!640 = !DIGlobalVariableExpression(var: !641, expr: !DIExpression())
!641 = distinct !DIGlobalVariable(scope: null, file: !642, line: 67, type: !407, isLocal: true, isDefinition: true)
!642 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!643 = !DIGlobalVariableExpression(var: !644, expr: !DIExpression())
!644 = distinct !DIGlobalVariable(scope: null, file: !642, line: 69, type: !334, isLocal: true, isDefinition: true)
!645 = !DIGlobalVariableExpression(var: !646, expr: !DIExpression())
!646 = distinct !DIGlobalVariable(scope: null, file: !642, line: 83, type: !334, isLocal: true, isDefinition: true)
!647 = !DIGlobalVariableExpression(var: !648, expr: !DIExpression())
!648 = distinct !DIGlobalVariable(scope: null, file: !642, line: 83, type: !76, isLocal: true, isDefinition: true)
!649 = !DIGlobalVariableExpression(var: !650, expr: !DIExpression())
!650 = distinct !DIGlobalVariable(scope: null, file: !642, line: 85, type: !317, isLocal: true, isDefinition: true)
!651 = !DIGlobalVariableExpression(var: !652, expr: !DIExpression())
!652 = distinct !DIGlobalVariable(scope: null, file: !642, line: 88, type: !653, isLocal: true, isDefinition: true)
!653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !654)
!654 = !{!655}
!655 = !DISubrange(count: 171)
!656 = !DIGlobalVariableExpression(var: !657, expr: !DIExpression())
!657 = distinct !DIGlobalVariable(scope: null, file: !642, line: 88, type: !658, isLocal: true, isDefinition: true)
!658 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !659)
!659 = !{!660}
!660 = !DISubrange(count: 34)
!661 = !DIGlobalVariableExpression(var: !662, expr: !DIExpression())
!662 = distinct !DIGlobalVariable(scope: null, file: !642, line: 105, type: !154, isLocal: true, isDefinition: true)
!663 = !DIGlobalVariableExpression(var: !664, expr: !DIExpression())
!664 = distinct !DIGlobalVariable(scope: null, file: !642, line: 109, type: !209, isLocal: true, isDefinition: true)
!665 = !DIGlobalVariableExpression(var: !666, expr: !DIExpression())
!666 = distinct !DIGlobalVariable(scope: null, file: !642, line: 113, type: !667, isLocal: true, isDefinition: true)
!667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !668)
!668 = !{!669}
!669 = !DISubrange(count: 28)
!670 = !DIGlobalVariableExpression(var: !671, expr: !DIExpression())
!671 = distinct !DIGlobalVariable(scope: null, file: !642, line: 120, type: !672, isLocal: true, isDefinition: true)
!672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !673)
!673 = !{!674}
!674 = !DISubrange(count: 32)
!675 = !DIGlobalVariableExpression(var: !676, expr: !DIExpression())
!676 = distinct !DIGlobalVariable(scope: null, file: !642, line: 127, type: !677, isLocal: true, isDefinition: true)
!677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !678)
!678 = !{!679}
!679 = !DISubrange(count: 36)
!680 = !DIGlobalVariableExpression(var: !681, expr: !DIExpression())
!681 = distinct !DIGlobalVariable(scope: null, file: !642, line: 134, type: !358, isLocal: true, isDefinition: true)
!682 = !DIGlobalVariableExpression(var: !683, expr: !DIExpression())
!683 = distinct !DIGlobalVariable(scope: null, file: !642, line: 142, type: !164, isLocal: true, isDefinition: true)
!684 = !DIGlobalVariableExpression(var: !685, expr: !DIExpression())
!685 = distinct !DIGlobalVariable(scope: null, file: !642, line: 150, type: !686, isLocal: true, isDefinition: true)
!686 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !687)
!687 = !{!688}
!688 = !DISubrange(count: 48)
!689 = !DIGlobalVariableExpression(var: !690, expr: !DIExpression())
!690 = distinct !DIGlobalVariable(scope: null, file: !642, line: 159, type: !691, isLocal: true, isDefinition: true)
!691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !692)
!692 = !{!693}
!693 = !DISubrange(count: 52)
!694 = !DIGlobalVariableExpression(var: !695, expr: !DIExpression())
!695 = distinct !DIGlobalVariable(scope: null, file: !642, line: 170, type: !696, isLocal: true, isDefinition: true)
!696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !697)
!697 = !{!698}
!698 = !DISubrange(count: 60)
!699 = !DIGlobalVariableExpression(var: !700, expr: !DIExpression())
!700 = distinct !DIGlobalVariable(scope: null, file: !642, line: 248, type: !295, isLocal: true, isDefinition: true)
!701 = !DIGlobalVariableExpression(var: !702, expr: !DIExpression())
!702 = distinct !DIGlobalVariable(scope: null, file: !642, line: 248, type: !383, isLocal: true, isDefinition: true)
!703 = !DIGlobalVariableExpression(var: !704, expr: !DIExpression())
!704 = distinct !DIGlobalVariable(scope: null, file: !642, line: 254, type: !295, isLocal: true, isDefinition: true)
!705 = !DIGlobalVariableExpression(var: !706, expr: !DIExpression())
!706 = distinct !DIGlobalVariable(scope: null, file: !642, line: 254, type: !149, isLocal: true, isDefinition: true)
!707 = !DIGlobalVariableExpression(var: !708, expr: !DIExpression())
!708 = distinct !DIGlobalVariable(scope: null, file: !642, line: 254, type: !358, isLocal: true, isDefinition: true)
!709 = !DIGlobalVariableExpression(var: !710, expr: !DIExpression())
!710 = distinct !DIGlobalVariable(scope: null, file: !642, line: 259, type: !3, isLocal: true, isDefinition: true)
!711 = !DIGlobalVariableExpression(var: !712, expr: !DIExpression())
!712 = distinct !DIGlobalVariable(scope: null, file: !642, line: 259, type: !214, isLocal: true, isDefinition: true)
!713 = !DIGlobalVariableExpression(var: !714, expr: !DIExpression())
!714 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !715, file: !716, line: 26, type: !718, isLocal: false, isDefinition: true)
!715 = distinct !DICompileUnit(language: DW_LANG_C11, file: !716, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !717, splitDebugInlining: false, nameTableKind: None)
!716 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!717 = !{!713}
!718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 376, elements: !10)
!719 = !DIGlobalVariableExpression(var: !720, expr: !DIExpression())
!720 = distinct !DIGlobalVariable(name: "exit_failure", scope: !721, file: !722, line: 24, type: !724, isLocal: false, isDefinition: true)
!721 = distinct !DICompileUnit(language: DW_LANG_C11, file: !722, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !723, splitDebugInlining: false, nameTableKind: None)
!722 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!723 = !{!719}
!724 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !85)
!725 = !DIGlobalVariableExpression(var: !726, expr: !DIExpression())
!726 = distinct !DIGlobalVariable(scope: null, file: !727, line: 34, type: !204, isLocal: true, isDefinition: true)
!727 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!728 = !DIGlobalVariableExpression(var: !729, expr: !DIExpression())
!729 = distinct !DIGlobalVariable(scope: null, file: !727, line: 34, type: !334, isLocal: true, isDefinition: true)
!730 = !DIGlobalVariableExpression(var: !731, expr: !DIExpression())
!731 = distinct !DIGlobalVariable(scope: null, file: !727, line: 34, type: !183, isLocal: true, isDefinition: true)
!732 = !DIGlobalVariableExpression(var: !733, expr: !DIExpression())
!733 = distinct !DIGlobalVariable(scope: null, file: !734, line: 108, type: !61, isLocal: true, isDefinition: true)
!734 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!735 = !DIGlobalVariableExpression(var: !736, expr: !DIExpression())
!736 = distinct !DIGlobalVariable(name: "internal_state", scope: !737, file: !734, line: 97, type: !740, isLocal: true, isDefinition: true)
!737 = distinct !DICompileUnit(language: DW_LANG_C11, file: !734, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !738, globals: !739, splitDebugInlining: false, nameTableKind: None)
!738 = !{!129, !136, !140}
!739 = !{!732, !735}
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !527, line: 6, baseType: !741)
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !529, line: 21, baseType: !742)
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !529, line: 13, size: 64, elements: !743)
!743 = !{!744, !745}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !742, file: !529, line: 15, baseType: !85, size: 32)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !742, file: !529, line: 20, baseType: !746, size: 32, offset: 32)
!746 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !742, file: !529, line: 16, size: 32, elements: !747)
!747 = !{!748, !749}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !746, file: !529, line: 18, baseType: !91, size: 32)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !746, file: !529, line: 19, baseType: !76, size: 32)
!750 = !DIGlobalVariableExpression(var: !751, expr: !DIExpression())
!751 = distinct !DIGlobalVariable(scope: null, file: !752, line: 35, type: !19, isLocal: true, isDefinition: true)
!752 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!753 = distinct !DICompileUnit(language: DW_LANG_C11, file: !754, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/selinux.o -MD -MP -MF src/.deps/selinux.Tpo -c src/selinux.c -o src/.selinux.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!754 = !DIFile(filename: "src/selinux.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f2fe0a2ae80ab081d56e5c6fc8b81c38")
!755 = distinct !DICompileUnit(language: DW_LANG_C11, file: !756, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!756 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!757 = distinct !DICompileUnit(language: DW_LANG_C11, file: !758, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mknod.o -MD -MP -MF lib/.deps/libcoreutils_a-mknod.Tpo -c lib/mknod.c -o lib/.libcoreutils_a-mknod.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!758 = !DIFile(filename: "lib/mknod.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a1171358cd5346ce916515df55db10ad")
!759 = distinct !DICompileUnit(language: DW_LANG_C11, file: !760, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-modechange.o -MD -MP -MF lib/.deps/libcoreutils_a-modechange.Tpo -c lib/modechange.c -o lib/.libcoreutils_a-modechange.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !761, splitDebugInlining: false, nameTableKind: None)
!760 = !DIFile(filename: "lib/modechange.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d9d9323c1a974dc920f948d08984b73e")
!761 = !{!762}
!762 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !760, line: 78, baseType: !91, size: 32, elements: !763)
!763 = !{!764, !765, !766, !767}
!764 = !DIEnumerator(name: "MODE_DONE", value: 0)
!765 = !DIEnumerator(name: "MODE_ORDINARY_CHANGE", value: 1)
!766 = !DIEnumerator(name: "MODE_X_IF_ANY_X", value: 2)
!767 = !DIEnumerator(name: "MODE_COPY_EXISTING", value: 3)
!768 = distinct !DICompileUnit(language: DW_LANG_C11, file: !642, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !769, retainedTypes: !773, globals: !774, splitDebugInlining: false, nameTableKind: None)
!769 = !{!770}
!770 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !642, line: 40, baseType: !91, size: 32, elements: !771)
!771 = !{!772}
!772 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!773 = !{!129}
!774 = !{!640, !643, !645, !647, !649, !651, !656, !661, !663, !665, !670, !675, !680, !682, !684, !689, !694, !699, !701, !703, !705, !707, !709, !711}
!775 = distinct !DICompileUnit(language: DW_LANG_C11, file: !776, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !777, retainedTypes: !809, splitDebugInlining: false, nameTableKind: None)
!776 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!777 = !{!778, !790}
!778 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !779, file: !776, line: 188, baseType: !91, size: 32, elements: !788)
!779 = distinct !DISubprogram(name: "x2nrealloc", scope: !776, file: !776, line: 176, type: !780, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !783)
!780 = !DISubroutineType(types: !781)
!781 = !{!129, !129, !782, !136}
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!783 = !{!784, !785, !786, !787}
!784 = !DILocalVariable(name: "p", arg: 1, scope: !779, file: !776, line: 176, type: !129)
!785 = !DILocalVariable(name: "pn", arg: 2, scope: !779, file: !776, line: 176, type: !782)
!786 = !DILocalVariable(name: "s", arg: 3, scope: !779, file: !776, line: 176, type: !136)
!787 = !DILocalVariable(name: "n", scope: !779, file: !776, line: 178, type: !136)
!788 = !{!789}
!789 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!790 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !791, file: !776, line: 228, baseType: !91, size: 32, elements: !788)
!791 = distinct !DISubprogram(name: "xpalloc", scope: !776, file: !776, line: 223, type: !792, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !799)
!792 = !DISubroutineType(types: !793)
!793 = !{!129, !129, !794, !795, !797, !795}
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !796, line: 130, baseType: !797)
!796 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !798, line: 18, baseType: !274)
!798 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!799 = !{!800, !801, !802, !803, !804, !805, !806, !807, !808}
!800 = !DILocalVariable(name: "pa", arg: 1, scope: !791, file: !776, line: 223, type: !129)
!801 = !DILocalVariable(name: "pn", arg: 2, scope: !791, file: !776, line: 223, type: !794)
!802 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !791, file: !776, line: 223, type: !795)
!803 = !DILocalVariable(name: "n_max", arg: 4, scope: !791, file: !776, line: 223, type: !797)
!804 = !DILocalVariable(name: "s", arg: 5, scope: !791, file: !776, line: 223, type: !795)
!805 = !DILocalVariable(name: "n0", scope: !791, file: !776, line: 230, type: !795)
!806 = !DILocalVariable(name: "n", scope: !791, file: !776, line: 237, type: !795)
!807 = !DILocalVariable(name: "nbytes", scope: !791, file: !776, line: 248, type: !795)
!808 = !DILocalVariable(name: "adjusted_nbytes", scope: !791, file: !776, line: 252, type: !795)
!809 = !{!128, !129}
!810 = distinct !DICompileUnit(language: DW_LANG_C11, file: !727, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !811, splitDebugInlining: false, nameTableKind: None)
!811 = !{!725, !728, !730}
!812 = distinct !DICompileUnit(language: DW_LANG_C11, file: !813, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xstrtoumax.o -MD -MP -MF lib/.deps/libcoreutils_a-xstrtoumax.Tpo -c lib/xstrtoumax.c -o lib/.libcoreutils_a-xstrtoumax.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !814, retainedTypes: !817, splitDebugInlining: false, nameTableKind: None)
!813 = !DIFile(filename: "lib/xstrtoumax.c", directory: "/src", checksumkind: CSK_MD5, checksum: "54ffbccd458a53dd64c9445b3f0c9b17")
!814 = !{!815, !112}
!815 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !816, line: 30, baseType: !91, size: 32, elements: !92)
!816 = !DIFile(filename: "lib/xstrtol.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c0c36b5479e234e245bae53a387a6d92")
!817 = !{!85, !135, !128, !818}
!818 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !819, line: 102, baseType: !820)
!819 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!820 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !133, line: 73, baseType: !134)
!821 = distinct !DICompileUnit(language: DW_LANG_C11, file: !822, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!822 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!823 = distinct !DICompileUnit(language: DW_LANG_C11, file: !824, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!824 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!825 = distinct !DICompileUnit(language: DW_LANG_C11, file: !826, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !773, splitDebugInlining: false, nameTableKind: None)
!826 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!827 = distinct !DICompileUnit(language: DW_LANG_C11, file: !828, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !773, splitDebugInlining: false, nameTableKind: None)
!828 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!829 = distinct !DICompileUnit(language: DW_LANG_C11, file: !830, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !773, splitDebugInlining: false, nameTableKind: None)
!830 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!831 = distinct !DICompileUnit(language: DW_LANG_C11, file: !752, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !832, splitDebugInlining: false, nameTableKind: None)
!832 = !{!833, !750}
!833 = !DIGlobalVariableExpression(var: !834, expr: !DIExpression())
!834 = distinct !DIGlobalVariable(scope: null, file: !752, line: 35, type: !317, isLocal: true, isDefinition: true)
!835 = distinct !DICompileUnit(language: DW_LANG_C11, file: !836, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!836 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!837 = distinct !DICompileUnit(language: DW_LANG_C11, file: !838, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !773, splitDebugInlining: false, nameTableKind: None)
!838 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!839 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!840 = !{i32 7, !"Dwarf Version", i32 5}
!841 = !{i32 2, !"Debug Info Version", i32 3}
!842 = !{i32 1, !"wchar_size", i32 4}
!843 = !{i32 8, !"PIC Level", i32 2}
!844 = !{i32 7, !"PIE Level", i32 2}
!845 = !{i32 7, !"uwtable", i32 2}
!846 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!847 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 47, type: !848, scopeLine: 48, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !850)
!848 = !DISubroutineType(types: !849)
!849 = !{null, !85}
!850 = !{!851}
!851 = !DILocalVariable(name: "status", arg: 1, scope: !847, file: !2, line: 47, type: !85)
!852 = !DILocation(line: 0, scope: !847)
!853 = !DILocation(line: 49, column: 14, scope: !854)
!854 = distinct !DILexicalBlock(scope: !847, file: !2, line: 49, column: 7)
!855 = !DILocation(line: 49, column: 7, scope: !847)
!856 = !DILocation(line: 50, column: 5, scope: !857)
!857 = distinct !DILexicalBlock(scope: !854, file: !2, line: 50, column: 5)
!858 = !{!859, !859, i64 0}
!859 = !{!"any pointer", !860, i64 0}
!860 = !{!"omnipotent char", !861, i64 0}
!861 = !{!"Simple C/C++ TBAA"}
!862 = !DILocation(line: 53, column: 7, scope: !863)
!863 = distinct !DILexicalBlock(scope: !854, file: !2, line: 52, column: 5)
!864 = !DILocation(line: 55, column: 7, scope: !863)
!865 = !DILocation(line: 736, column: 3, scope: !866, inlinedAt: !867)
!866 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !84, file: !84, line: 734, type: !496, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !81)
!867 = distinct !DILocation(line: 59, column: 7, scope: !863)
!868 = !DILocation(line: 61, column: 7, scope: !863)
!869 = !DILocation(line: 65, column: 7, scope: !863)
!870 = !DILocation(line: 69, column: 7, scope: !863)
!871 = !DILocation(line: 74, column: 7, scope: !863)
!872 = !DILocation(line: 75, column: 7, scope: !863)
!873 = !DILocation(line: 76, column: 7, scope: !863)
!874 = !DILocation(line: 83, column: 7, scope: !863)
!875 = !DILocation(line: 89, column: 7, scope: !863)
!876 = !DILocalVariable(name: "program", arg: 1, scope: !877, file: !84, line: 836, type: !138)
!877 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !84, file: !84, line: 836, type: !878, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !880)
!878 = !DISubroutineType(types: !879)
!879 = !{null, !138}
!880 = !{!876, !881, !888, !889, !891, !892}
!881 = !DILocalVariable(name: "infomap", scope: !877, file: !84, line: 838, type: !882)
!882 = !DICompositeType(tag: DW_TAG_array_type, baseType: !883, size: 896, elements: !335)
!883 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !884)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !877, file: !84, line: 838, size: 128, elements: !885)
!885 = !{!886, !887}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !884, file: !84, line: 838, baseType: !138, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !884, file: !84, line: 838, baseType: !138, size: 64, offset: 64)
!888 = !DILocalVariable(name: "node", scope: !877, file: !84, line: 848, type: !138)
!889 = !DILocalVariable(name: "map_prog", scope: !877, file: !84, line: 849, type: !890)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!891 = !DILocalVariable(name: "lc_messages", scope: !877, file: !84, line: 861, type: !138)
!892 = !DILocalVariable(name: "url_program", scope: !877, file: !84, line: 874, type: !138)
!893 = !DILocation(line: 0, scope: !877, inlinedAt: !894)
!894 = distinct !DILocation(line: 90, column: 7, scope: !863)
!895 = !{}
!896 = !DILocation(line: 857, column: 3, scope: !877, inlinedAt: !894)
!897 = !DILocation(line: 861, column: 29, scope: !877, inlinedAt: !894)
!898 = !DILocation(line: 862, column: 7, scope: !899, inlinedAt: !894)
!899 = distinct !DILexicalBlock(scope: !877, file: !84, line: 862, column: 7)
!900 = !DILocation(line: 862, column: 19, scope: !899, inlinedAt: !894)
!901 = !DILocation(line: 862, column: 22, scope: !899, inlinedAt: !894)
!902 = !DILocation(line: 862, column: 7, scope: !877, inlinedAt: !894)
!903 = !DILocation(line: 868, column: 7, scope: !904, inlinedAt: !894)
!904 = distinct !DILexicalBlock(scope: !899, file: !84, line: 863, column: 5)
!905 = !DILocation(line: 870, column: 5, scope: !904, inlinedAt: !894)
!906 = !DILocation(line: 875, column: 3, scope: !877, inlinedAt: !894)
!907 = !DILocation(line: 877, column: 3, scope: !877, inlinedAt: !894)
!908 = !DILocation(line: 92, column: 3, scope: !847)
!909 = !DISubprogram(name: "dcgettext", scope: !910, file: !910, line: 51, type: !911, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!910 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!911 = !DISubroutineType(types: !912)
!912 = !{!128, !138, !138, !85}
!913 = !DISubprogram(name: "__fprintf_chk", scope: !914, file: !914, line: 93, type: !915, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!914 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!915 = !DISubroutineType(types: !916)
!916 = !{!85, !917, !85, !918, null}
!917 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !247)
!918 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !138)
!919 = !DISubprogram(name: "__printf_chk", scope: !914, file: !914, line: 95, type: !920, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!920 = !DISubroutineType(types: !921)
!921 = !{!85, !85, !918, null}
!922 = !DISubprogram(name: "fputs_unlocked", scope: !923, file: !923, line: 691, type: !924, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!923 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!924 = !DISubroutineType(types: !925)
!925 = !{!85, !918, !917}
!926 = !DILocation(line: 0, scope: !224)
!927 = !DILocation(line: 581, column: 7, scope: !232)
!928 = !{!929, !929, i64 0}
!929 = !{!"int", !860, i64 0}
!930 = !DILocation(line: 581, column: 19, scope: !232)
!931 = !DILocation(line: 581, column: 7, scope: !224)
!932 = !DILocation(line: 585, column: 26, scope: !231)
!933 = !DILocation(line: 0, scope: !231)
!934 = !DILocation(line: 586, column: 23, scope: !231)
!935 = !DILocation(line: 586, column: 28, scope: !231)
!936 = !DILocation(line: 586, column: 32, scope: !231)
!937 = !{!860, !860, i64 0}
!938 = !DILocation(line: 586, column: 38, scope: !231)
!939 = !DILocalVariable(name: "__s1", arg: 1, scope: !940, file: !941, line: 1359, type: !138)
!940 = distinct !DISubprogram(name: "streq", scope: !941, file: !941, line: 1359, type: !942, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !944)
!941 = !DIFile(filename: "./lib/string.h", directory: "/src")
!942 = !DISubroutineType(types: !943)
!943 = !{!234, !138, !138}
!944 = !{!939, !945}
!945 = !DILocalVariable(name: "__s2", arg: 2, scope: !940, file: !941, line: 1359, type: !138)
!946 = !DILocation(line: 0, scope: !940, inlinedAt: !947)
!947 = distinct !DILocation(line: 586, column: 41, scope: !231)
!948 = !DILocation(line: 1361, column: 11, scope: !940, inlinedAt: !947)
!949 = !DILocation(line: 1361, column: 10, scope: !940, inlinedAt: !947)
!950 = !DILocation(line: 586, column: 19, scope: !231)
!951 = !DILocation(line: 587, column: 5, scope: !231)
!952 = !DILocation(line: 588, column: 7, scope: !953)
!953 = distinct !DILexicalBlock(scope: !224, file: !84, line: 588, column: 7)
!954 = !DILocation(line: 588, column: 7, scope: !224)
!955 = !DILocation(line: 590, column: 7, scope: !956)
!956 = distinct !DILexicalBlock(scope: !953, file: !84, line: 589, column: 5)
!957 = !DILocation(line: 591, column: 7, scope: !956)
!958 = !DILocation(line: 595, column: 37, scope: !224)
!959 = !DILocation(line: 595, column: 35, scope: !224)
!960 = !DILocation(line: 596, column: 29, scope: !224)
!961 = !DILocation(line: 597, column: 8, scope: !240)
!962 = !DILocation(line: 597, column: 7, scope: !224)
!963 = !DILocation(line: 604, column: 24, scope: !239)
!964 = !DILocation(line: 604, column: 12, scope: !240)
!965 = !DILocation(line: 0, scope: !238)
!966 = !DILocation(line: 610, column: 16, scope: !238)
!967 = !DILocation(line: 610, column: 7, scope: !238)
!968 = !DILocation(line: 611, column: 21, scope: !238)
!969 = !{!970, !970, i64 0}
!970 = !{!"short", !860, i64 0}
!971 = !DILocation(line: 611, column: 19, scope: !238)
!972 = !DILocation(line: 611, column: 16, scope: !238)
!973 = !DILocation(line: 610, column: 30, scope: !238)
!974 = distinct !{!974, !967, !968, !975}
!975 = !{!"llvm.loop.mustprogress"}
!976 = !DILocation(line: 612, column: 18, scope: !977)
!977 = distinct !DILexicalBlock(scope: !238, file: !84, line: 612, column: 11)
!978 = !DILocation(line: 612, column: 11, scope: !238)
!979 = !DILocation(line: 620, column: 23, scope: !224)
!980 = !DILocation(line: 625, column: 39, scope: !224)
!981 = !DILocation(line: 626, column: 3, scope: !224)
!982 = !DILocation(line: 626, column: 10, scope: !224)
!983 = !DILocation(line: 626, column: 21, scope: !224)
!984 = !DILocation(line: 628, column: 44, scope: !985)
!985 = distinct !DILexicalBlock(scope: !986, file: !84, line: 628, column: 11)
!986 = distinct !DILexicalBlock(scope: !224, file: !84, line: 627, column: 5)
!987 = !DILocation(line: 628, column: 32, scope: !985)
!988 = !DILocation(line: 628, column: 49, scope: !985)
!989 = !DILocation(line: 628, column: 11, scope: !986)
!990 = !DILocation(line: 630, column: 11, scope: !991)
!991 = distinct !DILexicalBlock(scope: !986, file: !84, line: 630, column: 11)
!992 = !DILocation(line: 630, column: 11, scope: !986)
!993 = !DILocation(line: 632, column: 26, scope: !994)
!994 = distinct !DILexicalBlock(scope: !995, file: !84, line: 632, column: 15)
!995 = distinct !DILexicalBlock(scope: !991, file: !84, line: 631, column: 9)
!996 = !DILocation(line: 632, column: 34, scope: !994)
!997 = !DILocation(line: 632, column: 37, scope: !994)
!998 = !DILocation(line: 632, column: 15, scope: !995)
!999 = !DILocation(line: 636, column: 16, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !995, file: !84, line: 636, column: 15)
!1001 = !DILocation(line: 636, column: 29, scope: !1000)
!1002 = !DILocation(line: 640, column: 16, scope: !986)
!1003 = distinct !{!1003, !981, !1004, !975}
!1004 = !DILocation(line: 641, column: 5, scope: !224)
!1005 = !DILocation(line: 644, column: 3, scope: !224)
!1006 = !DILocation(line: 0, scope: !940, inlinedAt: !1007)
!1007 = distinct !DILocation(line: 648, column: 31, scope: !224)
!1008 = !DILocation(line: 0, scope: !940, inlinedAt: !1009)
!1009 = distinct !DILocation(line: 649, column: 31, scope: !224)
!1010 = !DILocation(line: 0, scope: !940, inlinedAt: !1011)
!1011 = distinct !DILocation(line: 650, column: 31, scope: !224)
!1012 = !DILocation(line: 0, scope: !940, inlinedAt: !1013)
!1013 = distinct !DILocation(line: 651, column: 31, scope: !224)
!1014 = !DILocation(line: 0, scope: !940, inlinedAt: !1015)
!1015 = distinct !DILocation(line: 652, column: 31, scope: !224)
!1016 = !DILocation(line: 0, scope: !940, inlinedAt: !1017)
!1017 = distinct !DILocation(line: 653, column: 31, scope: !224)
!1018 = !DILocation(line: 0, scope: !940, inlinedAt: !1019)
!1019 = distinct !DILocation(line: 654, column: 31, scope: !224)
!1020 = !DILocation(line: 0, scope: !940, inlinedAt: !1021)
!1021 = distinct !DILocation(line: 655, column: 31, scope: !224)
!1022 = !DILocation(line: 0, scope: !940, inlinedAt: !1023)
!1023 = distinct !DILocation(line: 656, column: 31, scope: !224)
!1024 = !DILocation(line: 0, scope: !940, inlinedAt: !1025)
!1025 = distinct !DILocation(line: 657, column: 31, scope: !224)
!1026 = !DILocation(line: 663, column: 7, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !224, file: !84, line: 663, column: 7)
!1028 = !DILocation(line: 664, column: 7, scope: !1027)
!1029 = !DILocation(line: 664, column: 10, scope: !1027)
!1030 = !DILocation(line: 663, column: 7, scope: !224)
!1031 = !DILocation(line: 669, column: 7, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1027, file: !84, line: 665, column: 5)
!1033 = !DILocation(line: 671, column: 5, scope: !1032)
!1034 = !DILocation(line: 676, column: 7, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1027, file: !84, line: 673, column: 5)
!1036 = !DILocation(line: 679, column: 3, scope: !224)
!1037 = !DILocation(line: 683, column: 3, scope: !224)
!1038 = !DILocation(line: 686, column: 3, scope: !224)
!1039 = !DILocation(line: 688, column: 3, scope: !224)
!1040 = !DILocation(line: 691, column: 3, scope: !224)
!1041 = !DILocation(line: 695, column: 3, scope: !224)
!1042 = !DILocation(line: 696, column: 1, scope: !224)
!1043 = !DISubprogram(name: "setlocale", scope: !1044, file: !1044, line: 122, type: !1045, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1044 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!128, !85, !138}
!1047 = !DISubprogram(name: "strncmp", scope: !1048, file: !1048, line: 159, type: !1049, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1048 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1049 = !DISubroutineType(types: !1050)
!1050 = !{!85, !138, !138, !136}
!1051 = !DISubprogram(name: "exit", scope: !1052, file: !1052, line: 624, type: !848, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1052 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1053 = !DISubprogram(name: "getenv", scope: !1052, file: !1052, line: 641, type: !1054, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1054 = !DISubroutineType(types: !1055)
!1055 = !{!128, !138}
!1056 = !DISubprogram(name: "strcmp", scope: !1048, file: !1048, line: 156, type: !1057, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1057 = !DISubroutineType(types: !1058)
!1058 = !{!85, !138, !138}
!1059 = !DISubprogram(name: "strspn", scope: !1048, file: !1048, line: 297, type: !1060, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1060 = !DISubroutineType(types: !1061)
!1061 = !{!134, !138, !138}
!1062 = !DISubprogram(name: "strchr", scope: !1048, file: !1048, line: 246, type: !1063, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!128, !138, !85}
!1065 = !DISubprogram(name: "__ctype_b_loc", scope: !113, file: !113, line: 79, type: !1066, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!1068}
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !135)
!1071 = !DISubprogram(name: "strcspn", scope: !1048, file: !1048, line: 293, type: !1060, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1072 = !DISubprogram(name: "fwrite_unlocked", scope: !923, file: !923, line: 704, type: !1073, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{!136, !1075, !136, !136, !917}
!1075 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1076)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1078 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 96, type: !1079, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !1082)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{!85, !85, !1081}
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!1082 = !{!1083, !1084, !1085, !1086, !1087, !1091, !1092, !1095, !1101, !1102, !1103, !1106, !1107, !1109, !1111, !1112, !1113, !1114}
!1083 = !DILocalVariable(name: "argc", arg: 1, scope: !1078, file: !2, line: 96, type: !85)
!1084 = !DILocalVariable(name: "argv", arg: 2, scope: !1078, file: !2, line: 96, type: !1081)
!1085 = !DILocalVariable(name: "specified_mode", scope: !1078, file: !2, line: 98, type: !138)
!1086 = !DILocalVariable(name: "scontext", scope: !1078, file: !2, line: 99, type: !138)
!1087 = !DILocalVariable(name: "set_security_context", scope: !1078, file: !2, line: 100, type: !1088)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DICompositeType(tag: DW_TAG_structure_type, name: "selabel_handle", file: !1090, line: 53, flags: DIFlagFwdDecl)
!1090 = !DIFile(filename: "./lib/selinux/label.h", directory: "/src", checksumkind: CSK_MD5, checksum: "a430a70cff1d2c3fd1539e29c9e5e879")
!1091 = !DILocalVariable(name: "optc", scope: !1078, file: !2, line: 110, type: !85)
!1092 = !DILocalVariable(name: "newmode", scope: !1078, file: !2, line: 150, type: !1093)
!1093 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !131, line: 69, baseType: !1094)
!1094 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !133, line: 150, baseType: !91)
!1095 = !DILocalVariable(name: "change", scope: !1096, file: !2, line: 153, type: !1098)
!1096 = distinct !DILexicalBlock(scope: !1097, file: !2, line: 152, column: 5)
!1097 = distinct !DILexicalBlock(scope: !1078, file: !2, line: 151, column: 7)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = !DICompositeType(tag: DW_TAG_structure_type, name: "mode_change", file: !1100, line: 35, flags: DIFlagFwdDecl)
!1100 = !DIFile(filename: "./lib/modechange.h", directory: "/src", checksumkind: CSK_MD5, checksum: "41f2efe3cfeccb00721320834728c24b")
!1101 = !DILocalVariable(name: "umask_value", scope: !1096, file: !2, line: 156, type: !1093)
!1102 = !DILocalVariable(name: "expected_operands", scope: !1078, file: !2, line: 168, type: !85)
!1103 = !DILocalVariable(name: "ret", scope: !1104, file: !2, line: 196, type: !85)
!1104 = distinct !DILexicalBlock(scope: !1105, file: !2, line: 195, column: 5)
!1105 = distinct !DILexicalBlock(scope: !1078, file: !2, line: 194, column: 7)
!1106 = !DILocalVariable(name: "node_type", scope: !1078, file: !2, line: 211, type: !1093)
!1107 = !DILabel(scope: !1108, name: "block_or_character", file: !2, line: 231)
!1108 = distinct !DILexicalBlock(scope: !1078, file: !2, line: 213, column: 5)
!1109 = !DILocalVariable(name: "s_major", scope: !1110, file: !2, line: 233, type: !138)
!1110 = distinct !DILexicalBlock(scope: !1108, file: !2, line: 232, column: 7)
!1111 = !DILocalVariable(name: "i_major", scope: !1110, file: !2, line: 234, type: !818)
!1112 = !DILocalVariable(name: "s_minor", scope: !1110, file: !2, line: 240, type: !138)
!1113 = !DILocalVariable(name: "i_minor", scope: !1110, file: !2, line: 241, type: !818)
!1114 = !DILocalVariable(name: "device", scope: !1110, file: !2, line: 247, type: !130)
!1115 = distinct !DIAssignID()
!1116 = !DILocation(line: 0, scope: !1110)
!1117 = distinct !DIAssignID()
!1118 = !DILocation(line: 0, scope: !1078)
!1119 = !DILocation(line: 103, column: 21, scope: !1078)
!1120 = !DILocation(line: 103, column: 3, scope: !1078)
!1121 = !DILocation(line: 104, column: 3, scope: !1078)
!1122 = !DILocation(line: 105, column: 3, scope: !1078)
!1123 = !DILocation(line: 106, column: 3, scope: !1078)
!1124 = !DILocation(line: 108, column: 3, scope: !1078)
!1125 = !DILocation(line: 111, column: 3, scope: !1078)
!1126 = !DILocation(line: 111, column: 18, scope: !1078)
!1127 = !DILocation(line: 116, column: 28, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1129, file: !2, line: 114, column: 9)
!1129 = distinct !DILexicalBlock(scope: !1078, file: !2, line: 112, column: 5)
!1130 = !DILocation(line: 117, column: 11, scope: !1128)
!1131 = distinct !{!1131, !1125, !1132, !975}
!1132 = !DILocation(line: 148, column: 5, scope: !1078)
!1133 = !DILocation(line: 136, column: 20, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1135, file: !2, line: 136, column: 20)
!1135 = distinct !DILexicalBlock(scope: !1136, file: !2, line: 124, column: 20)
!1136 = distinct !DILexicalBlock(scope: !1128, file: !2, line: 119, column: 15)
!1137 = !DILocation(line: 136, column: 20, scope: !1135)
!1138 = !DILocation(line: 138, column: 15, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1134, file: !2, line: 137, column: 13)
!1140 = !DILocation(line: 141, column: 13, scope: !1139)
!1141 = !DILocation(line: 143, column: 9, scope: !1128)
!1142 = !DILocation(line: 144, column: 9, scope: !1128)
!1143 = !DILocation(line: 146, column: 11, scope: !1128)
!1144 = !DILocation(line: 151, column: 7, scope: !1097)
!1145 = !DILocation(line: 151, column: 7, scope: !1078)
!1146 = !DILocation(line: 153, column: 36, scope: !1096)
!1147 = !DILocation(line: 0, scope: !1096)
!1148 = !DILocation(line: 154, column: 12, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1096, file: !2, line: 154, column: 11)
!1150 = !DILocation(line: 154, column: 11, scope: !1096)
!1151 = !DILocation(line: 155, column: 9, scope: !1149)
!1152 = !DILocation(line: 156, column: 28, scope: !1096)
!1153 = !DILocation(line: 157, column: 7, scope: !1096)
!1154 = !DILocation(line: 158, column: 17, scope: !1096)
!1155 = !DILocation(line: 159, column: 7, scope: !1096)
!1156 = !DILocation(line: 160, column: 19, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1096, file: !2, line: 160, column: 11)
!1158 = !DILocation(line: 160, column: 11, scope: !1096)
!1159 = !DILocation(line: 161, column: 9, scope: !1157)
!1160 = !DILocation(line: 168, column: 36, scope: !1078)
!1161 = !DILocation(line: 168, column: 33, scope: !1078)
!1162 = !DILocation(line: 169, column: 28, scope: !1078)
!1163 = !DILocation(line: 169, column: 39, scope: !1078)
!1164 = !DILocation(line: 169, column: 43, scope: !1078)
!1165 = !DILocation(line: 169, column: 50, scope: !1078)
!1166 = !DILocation(line: 169, column: 53, scope: !1078)
!1167 = !DILocation(line: 169, column: 73, scope: !1078)
!1168 = !DILocation(line: 168, column: 28, scope: !1078)
!1169 = !DILocation(line: 172, column: 12, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1078, file: !2, line: 172, column: 7)
!1171 = !DILocation(line: 172, column: 21, scope: !1170)
!1172 = !DILocation(line: 172, column: 7, scope: !1078)
!1173 = !DILocation(line: 177, column: 9, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1175, file: !2, line: 174, column: 11)
!1175 = distinct !DILexicalBlock(scope: !1170, file: !2, line: 173, column: 5)
!1176 = !DILocation(line: 178, column: 34, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1175, file: !2, line: 178, column: 11)
!1178 = !DILocation(line: 178, column: 44, scope: !1177)
!1179 = !DILocation(line: 178, column: 42, scope: !1177)
!1180 = !DILocation(line: 178, column: 51, scope: !1177)
!1181 = !DILocation(line: 178, column: 11, scope: !1175)
!1182 = !DILocation(line: 179, column: 9, scope: !1177)
!1183 = !DILocation(line: 175, column: 9, scope: !1174)
!1184 = !DILocation(line: 181, column: 7, scope: !1175)
!1185 = !DILocation(line: 184, column: 25, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1078, file: !2, line: 184, column: 7)
!1187 = !DILocation(line: 184, column: 7, scope: !1078)
!1188 = !DILocation(line: 186, column: 7, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1186, file: !2, line: 185, column: 5)
!1190 = !DILocation(line: 188, column: 34, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1189, file: !2, line: 188, column: 11)
!1192 = !DILocation(line: 188, column: 44, scope: !1191)
!1193 = !DILocation(line: 188, column: 42, scope: !1191)
!1194 = !DILocation(line: 188, column: 51, scope: !1191)
!1195 = !DILocation(line: 188, column: 11, scope: !1189)
!1196 = !DILocation(line: 189, column: 9, scope: !1191)
!1197 = !DILocation(line: 191, column: 7, scope: !1189)
!1198 = !DILocation(line: 212, column: 11, scope: !1078)
!1199 = !DILocation(line: 212, column: 3, scope: !1078)
!1200 = !DILocation(line: 229, column: 7, scope: !1108)
!1201 = !DILocation(line: 0, scope: !1108)
!1202 = !DILocation(line: 231, column: 5, scope: !1108)
!1203 = !DILocation(line: 233, column: 31, scope: !1110)
!1204 = !DILocation(line: 234, column: 9, scope: !1110)
!1205 = !DILocation(line: 235, column: 13, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1110, file: !2, line: 235, column: 13)
!1207 = !DILocation(line: 235, column: 57, scope: !1206)
!1208 = !DILocation(line: 236, column: 13, scope: !1206)
!1209 = !DILocation(line: 237, column: 11, scope: !1206)
!1210 = !DILocation(line: 240, column: 36, scope: !1110)
!1211 = !DILocation(line: 240, column: 31, scope: !1110)
!1212 = !DILocation(line: 241, column: 9, scope: !1110)
!1213 = !DILocation(line: 242, column: 13, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1110, file: !2, line: 242, column: 13)
!1215 = !DILocation(line: 242, column: 57, scope: !1214)
!1216 = !DILocation(line: 243, column: 13, scope: !1214)
!1217 = !DILocation(line: 243, column: 16, scope: !1214)
!1218 = !{!1219, !1219, i64 0}
!1219 = !{!"long", !860, i64 0}
!1220 = !DILocation(line: 243, column: 24, scope: !1214)
!1221 = !DILocation(line: 242, column: 13, scope: !1110)
!1222 = !DILocation(line: 244, column: 11, scope: !1214)
!1223 = !DILocation(line: 247, column: 24, scope: !1110)
!1224 = !DILocalVariable(name: "__major", arg: 1, scope: !1225, file: !1226, line: 43, type: !91)
!1225 = distinct !DISubprogram(name: "gnu_dev_makedev", scope: !1226, file: !1226, line: 43, type: !1227, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !1229)
!1226 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/sysmacros.h", directory: "", checksumkind: CSK_MD5, checksum: "55fcf1d6b566cf23c756196786ec2d1a")
!1227 = !DISubroutineType(types: !1228)
!1228 = !{!132, !91, !91}
!1229 = !{!1224, !1230, !1231}
!1230 = !DILocalVariable(name: "__minor", arg: 2, scope: !1225, file: !1226, line: 43, type: !91)
!1231 = !DILocalVariable(name: "__dev", scope: !1225, file: !1226, line: 43, type: !132)
!1232 = !DILocation(line: 0, scope: !1225, inlinedAt: !1233)
!1233 = distinct !DILocation(line: 247, column: 24, scope: !1110)
!1234 = !DILocation(line: 43, column: 1, scope: !1225, inlinedAt: !1233)
!1235 = !DILocation(line: 249, column: 20, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1110, file: !2, line: 249, column: 13)
!1237 = !DILocation(line: 249, column: 13, scope: !1110)
!1238 = !DILocation(line: 250, column: 11, scope: !1236)
!1239 = !DILocation(line: 257, column: 25, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1110, file: !2, line: 257, column: 13)
!1241 = !DILocation(line: 257, column: 20, scope: !1240)
!1242 = !DILocation(line: 257, column: 42, scope: !1240)
!1243 = !DILocation(line: 257, column: 13, scope: !1240)
!1244 = !DILocation(line: 257, column: 63, scope: !1240)
!1245 = !DILocation(line: 257, column: 13, scope: !1110)
!1246 = !DILocation(line: 258, column: 11, scope: !1240)
!1247 = !DILocation(line: 259, column: 7, scope: !1108)
!1248 = !DILocation(line: 260, column: 7, scope: !1108)
!1249 = !DILocation(line: 265, column: 19, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1108, file: !2, line: 265, column: 11)
!1251 = !DILocation(line: 265, column: 11, scope: !1250)
!1252 = !DILocation(line: 265, column: 42, scope: !1250)
!1253 = !DILocation(line: 265, column: 11, scope: !1108)
!1254 = !DILocation(line: 266, column: 9, scope: !1250)
!1255 = !DILocation(line: 270, column: 7, scope: !1108)
!1256 = !DILocation(line: 271, column: 7, scope: !1108)
!1257 = !DILocation(line: 274, column: 22, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1078, file: !2, line: 274, column: 7)
!1259 = !DILocation(line: 274, column: 38, scope: !1258)
!1260 = !DILocation(line: 274, column: 33, scope: !1258)
!1261 = !DILocation(line: 274, column: 25, scope: !1258)
!1262 = !DILocation(line: 274, column: 56, scope: !1258)
!1263 = !DILocation(line: 274, column: 7, scope: !1078)
!1264 = !DILocation(line: 275, column: 5, scope: !1258)
!1265 = !DILocation(line: 278, column: 3, scope: !1078)
!1266 = !DISubprogram(name: "bindtextdomain", scope: !910, file: !910, line: 86, type: !1267, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{!128, !138, !138}
!1269 = !DISubprogram(name: "textdomain", scope: !910, file: !910, line: 82, type: !1054, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1270 = !DISubprogram(name: "atexit", scope: !1052, file: !1052, line: 602, type: !1271, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1271 = !DISubroutineType(types: !1272)
!1272 = !{!85, !495}
!1273 = !DISubprogram(name: "getopt_long", scope: !421, file: !421, line: 66, type: !1274, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1274 = !DISubroutineType(types: !1275)
!1275 = !{!85, !85, !1276, !138, !1278, !426}
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !128)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!1279 = !DISubprogram(name: "umask", scope: !1280, file: !1280, line: 380, type: !1281, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1280 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!1281 = !DISubroutineType(types: !1282)
!1282 = !{!1094, !1094}
!1283 = !DISubprogram(name: "free", scope: !1052, file: !1052, line: 555, type: !1284, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1284 = !DISubroutineType(types: !1285)
!1285 = !{null, !129}
!1286 = !DISubprogram(name: "__errno_location", scope: !1287, file: !1287, line: 37, type: !1288, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1287 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1288 = !DISubroutineType(types: !1289)
!1289 = !{!426}
!1290 = !DISubprogram(name: "mkfifo", scope: !1280, file: !1280, line: 418, type: !1291, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1291 = !DISubroutineType(types: !1292)
!1292 = !{!85, !138, !1094}
!1293 = !DISubprogram(name: "lchmod", scope: !1280, file: !1280, line: 359, type: !1291, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1294 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !438, file: !438, line: 50, type: !878, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !1295)
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
!1308 = !{!"_Bool", !860, i64 0}
!1309 = !DILocation(line: 90, column: 1, scope: !1300)
!1310 = distinct !DISubprogram(name: "close_stdout", scope: !438, file: !438, line: 116, type: !496, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !1311)
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
!1343 = !DISubprogram(name: "_exit", scope: !1344, file: !1344, line: 624, type: !848, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
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
!1354 = !DILocation(line: 261, column: 3, scope: !1345)
!1355 = !DILocation(line: 265, column: 7, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1345, file: !453, line: 265, column: 7)
!1357 = !DILocation(line: 265, column: 7, scope: !1345)
!1358 = !DILocation(line: 266, column: 5, scope: !1356)
!1359 = !DILocation(line: 272, column: 7, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1356, file: !453, line: 268, column: 5)
!1361 = !DILocation(line: 276, column: 3, scope: !1345)
!1362 = !DILocation(line: 282, column: 1, scope: !1345)
!1363 = distinct !DISubprogram(name: "flush_stdout", scope: !453, file: !453, line: 163, type: !496, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !452, retainedNodes: !1364)
!1364 = !{!1365}
!1365 = !DILocalVariable(name: "stdout_fd", scope: !1363, file: !453, line: 166, type: !85)
!1366 = !DILocation(line: 0, scope: !1363)
!1367 = !DILocalVariable(name: "fd", arg: 1, scope: !1368, file: !453, line: 145, type: !85)
!1368 = distinct !DISubprogram(name: "is_open", scope: !453, file: !453, line: 145, type: !1369, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !452, retainedNodes: !1371)
!1369 = !DISubroutineType(types: !1370)
!1370 = !{!85, !85}
!1371 = !{!1367}
!1372 = !DILocation(line: 0, scope: !1368, inlinedAt: !1373)
!1373 = distinct !DILocation(line: 182, column: 25, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1363, file: !453, line: 182, column: 7)
!1375 = !DILocation(line: 157, column: 15, scope: !1368, inlinedAt: !1373)
!1376 = !DILocation(line: 157, column: 12, scope: !1368, inlinedAt: !1373)
!1377 = !DILocation(line: 182, column: 7, scope: !1363)
!1378 = !DILocation(line: 184, column: 5, scope: !1374)
!1379 = !DILocation(line: 185, column: 1, scope: !1363)
!1380 = distinct !DISubprogram(name: "error_tail", scope: !453, file: !453, line: 219, type: !1346, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !452, retainedNodes: !1381)
!1381 = !{!1382, !1383, !1384, !1385}
!1382 = !DILocalVariable(name: "status", arg: 1, scope: !1380, file: !453, line: 219, type: !85)
!1383 = !DILocalVariable(name: "errnum", arg: 2, scope: !1380, file: !453, line: 219, type: !85)
!1384 = !DILocalVariable(name: "message", arg: 3, scope: !1380, file: !453, line: 219, type: !138)
!1385 = !DILocalVariable(name: "args", arg: 4, scope: !1380, file: !453, line: 219, type: !463)
!1386 = distinct !DIAssignID()
!1387 = !DILocation(line: 0, scope: !1380)
!1388 = !DILocation(line: 229, column: 13, scope: !1380)
!1389 = !DILocalVariable(name: "__stream", arg: 1, scope: !1390, file: !914, line: 132, type: !1393)
!1390 = distinct !DISubprogram(name: "vfprintf", scope: !914, file: !914, line: 132, type: !1391, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !452, retainedNodes: !1428)
!1391 = !DISubroutineType(types: !1392)
!1392 = !{!85, !1393, !918, !463}
!1393 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1394)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !249, line: 7, baseType: !1396)
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !251, line: 49, size: 1728, elements: !1397)
!1397 = !{!1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1396, file: !251, line: 51, baseType: !85, size: 32)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1396, file: !251, line: 54, baseType: !128, size: 64, offset: 64)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1396, file: !251, line: 55, baseType: !128, size: 64, offset: 128)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1396, file: !251, line: 56, baseType: !128, size: 64, offset: 192)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1396, file: !251, line: 57, baseType: !128, size: 64, offset: 256)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1396, file: !251, line: 58, baseType: !128, size: 64, offset: 320)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1396, file: !251, line: 59, baseType: !128, size: 64, offset: 384)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1396, file: !251, line: 60, baseType: !128, size: 64, offset: 448)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1396, file: !251, line: 61, baseType: !128, size: 64, offset: 512)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1396, file: !251, line: 64, baseType: !128, size: 64, offset: 576)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1396, file: !251, line: 65, baseType: !128, size: 64, offset: 640)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1396, file: !251, line: 66, baseType: !128, size: 64, offset: 704)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1396, file: !251, line: 68, baseType: !266, size: 64, offset: 768)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1396, file: !251, line: 70, baseType: !1412, size: 64, offset: 832)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1396, file: !251, line: 72, baseType: !85, size: 32, offset: 896)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1396, file: !251, line: 73, baseType: !85, size: 32, offset: 928)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1396, file: !251, line: 74, baseType: !273, size: 64, offset: 960)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1396, file: !251, line: 77, baseType: !135, size: 16, offset: 1024)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1396, file: !251, line: 78, baseType: !277, size: 8, offset: 1040)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1396, file: !251, line: 79, baseType: !61, size: 8, offset: 1048)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1396, file: !251, line: 81, baseType: !280, size: 64, offset: 1088)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1396, file: !251, line: 89, baseType: !283, size: 64, offset: 1152)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1396, file: !251, line: 91, baseType: !285, size: 64, offset: 1216)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1396, file: !251, line: 92, baseType: !288, size: 64, offset: 1280)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1396, file: !251, line: 93, baseType: !1412, size: 64, offset: 1344)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1396, file: !251, line: 94, baseType: !129, size: 64, offset: 1408)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1396, file: !251, line: 95, baseType: !136, size: 64, offset: 1472)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1396, file: !251, line: 96, baseType: !85, size: 32, offset: 1536)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1396, file: !251, line: 98, baseType: !295, size: 160, offset: 1568)
!1428 = !{!1389, !1429, !1430}
!1429 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1390, file: !914, line: 133, type: !918)
!1430 = !DILocalVariable(name: "__ap", arg: 3, scope: !1390, file: !914, line: 133, type: !463)
!1431 = !DILocation(line: 0, scope: !1390, inlinedAt: !1432)
!1432 = distinct !DILocation(line: 229, column: 3, scope: !1380)
!1433 = !DILocation(line: 135, column: 10, scope: !1390, inlinedAt: !1432)
!1434 = !DILocation(line: 232, column: 3, scope: !1380)
!1435 = !DILocation(line: 233, column: 7, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1380, file: !453, line: 233, column: 7)
!1437 = !DILocation(line: 233, column: 7, scope: !1380)
!1438 = !DILocalVariable(name: "errbuf", scope: !1439, file: !453, line: 193, type: !1443)
!1439 = distinct !DISubprogram(name: "print_errno_message", scope: !453, file: !453, line: 188, type: !848, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !452, retainedNodes: !1440)
!1440 = !{!1441, !1442, !1438}
!1441 = !DILocalVariable(name: "errnum", arg: 1, scope: !1439, file: !453, line: 188, type: !85)
!1442 = !DILocalVariable(name: "s", scope: !1439, file: !453, line: 190, type: !138)
!1443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1444)
!1444 = !{!1445}
!1445 = !DISubrange(count: 1024)
!1446 = !DILocation(line: 0, scope: !1439, inlinedAt: !1447)
!1447 = distinct !DILocation(line: 234, column: 5, scope: !1436)
!1448 = !DILocation(line: 193, column: 3, scope: !1439, inlinedAt: !1447)
!1449 = !DILocation(line: 195, column: 7, scope: !1439, inlinedAt: !1447)
!1450 = !DILocation(line: 207, column: 9, scope: !1451, inlinedAt: !1447)
!1451 = distinct !DILexicalBlock(scope: !1439, file: !453, line: 207, column: 7)
!1452 = !DILocation(line: 207, column: 7, scope: !1439, inlinedAt: !1447)
!1453 = !DILocation(line: 208, column: 9, scope: !1451, inlinedAt: !1447)
!1454 = !DILocation(line: 208, column: 5, scope: !1451, inlinedAt: !1447)
!1455 = !DILocation(line: 214, column: 3, scope: !1439, inlinedAt: !1447)
!1456 = !DILocation(line: 216, column: 1, scope: !1439, inlinedAt: !1447)
!1457 = !DILocation(line: 234, column: 5, scope: !1436)
!1458 = !DILocation(line: 238, column: 3, scope: !1380)
!1459 = !DILocalVariable(name: "__c", arg: 1, scope: !1460, file: !1461, line: 101, type: !85)
!1460 = distinct !DISubprogram(name: "putc_unlocked", scope: !1461, file: !1461, line: 101, type: !1462, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !452, retainedNodes: !1464)
!1461 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1462 = !DISubroutineType(types: !1463)
!1463 = !{!85, !85, !1394}
!1464 = !{!1459, !1465}
!1465 = !DILocalVariable(name: "__stream", arg: 2, scope: !1460, file: !1461, line: 101, type: !1394)
!1466 = !DILocation(line: 0, scope: !1460, inlinedAt: !1467)
!1467 = distinct !DILocation(line: 238, column: 3, scope: !1380)
!1468 = !DILocation(line: 103, column: 10, scope: !1460, inlinedAt: !1467)
!1469 = !{!1470, !859, i64 40}
!1470 = !{!"_IO_FILE", !929, i64 0, !859, i64 8, !859, i64 16, !859, i64 24, !859, i64 32, !859, i64 40, !859, i64 48, !859, i64 56, !859, i64 64, !859, i64 72, !859, i64 80, !859, i64 88, !859, i64 96, !859, i64 104, !929, i64 112, !929, i64 116, !1219, i64 120, !970, i64 128, !860, i64 130, !860, i64 131, !859, i64 136, !1219, i64 144, !859, i64 152, !859, i64 160, !859, i64 168, !859, i64 176, !1219, i64 184, !929, i64 192, !860, i64 196}
!1471 = !{!1470, !859, i64 48}
!1472 = !{!"branch_weights", i32 2000, i32 1}
!1473 = !DILocation(line: 240, column: 3, scope: !1380)
!1474 = !DILocation(line: 241, column: 7, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1380, file: !453, line: 241, column: 7)
!1476 = !DILocation(line: 241, column: 7, scope: !1380)
!1477 = !DILocation(line: 242, column: 5, scope: !1475)
!1478 = !DILocation(line: 243, column: 1, scope: !1380)
!1479 = !DISubprogram(name: "__vfprintf_chk", scope: !914, file: !914, line: 96, type: !1480, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1480 = !DISubroutineType(types: !1481)
!1481 = !{!85, !1393, !85, !918, !463}
!1482 = !DISubprogram(name: "strerror_r", scope: !1048, file: !1048, line: 444, type: !1483, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1483 = !DISubroutineType(types: !1484)
!1484 = !{!128, !85, !128, !136}
!1485 = !DISubprogram(name: "__overflow", scope: !923, file: !923, line: 886, type: !1486, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1486 = !DISubroutineType(types: !1487)
!1487 = !{!85, !1394, !85}
!1488 = !DISubprogram(name: "fflush_unlocked", scope: !923, file: !923, line: 239, type: !1489, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1489 = !DISubroutineType(types: !1490)
!1490 = !{!85, !1394}
!1491 = !DISubprogram(name: "fcntl", scope: !1492, file: !1492, line: 149, type: !1493, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1492 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1493 = !DISubroutineType(types: !1494)
!1494 = !{!85, !85, !85, null}
!1495 = distinct !DISubprogram(name: "error", scope: !453, file: !453, line: 285, type: !1496, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !452, retainedNodes: !1498)
!1496 = !DISubroutineType(types: !1497)
!1497 = !{null, !85, !85, !138, null}
!1498 = !{!1499, !1500, !1501, !1502}
!1499 = !DILocalVariable(name: "status", arg: 1, scope: !1495, file: !453, line: 285, type: !85)
!1500 = !DILocalVariable(name: "errnum", arg: 2, scope: !1495, file: !453, line: 285, type: !85)
!1501 = !DILocalVariable(name: "message", arg: 3, scope: !1495, file: !453, line: 285, type: !138)
!1502 = !DILocalVariable(name: "ap", scope: !1495, file: !453, line: 287, type: !1503)
!1503 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !923, line: 52, baseType: !1504)
!1504 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1505, line: 12, baseType: !1506)
!1505 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!1506 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !453, baseType: !1507)
!1507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !464, size: 192, elements: !62)
!1508 = distinct !DIAssignID()
!1509 = !DILocation(line: 0, scope: !1495)
!1510 = !DILocation(line: 287, column: 3, scope: !1495)
!1511 = !DILocation(line: 288, column: 3, scope: !1495)
!1512 = !DILocation(line: 289, column: 3, scope: !1495)
!1513 = !DILocation(line: 290, column: 3, scope: !1495)
!1514 = !DILocation(line: 291, column: 1, scope: !1495)
!1515 = !DILocation(line: 0, scope: !460)
!1516 = !DILocation(line: 302, column: 7, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !460, file: !453, line: 302, column: 7)
!1518 = !DILocation(line: 302, column: 7, scope: !460)
!1519 = !DILocation(line: 307, column: 11, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1521, file: !453, line: 307, column: 11)
!1521 = distinct !DILexicalBlock(scope: !1517, file: !453, line: 303, column: 5)
!1522 = !DILocation(line: 307, column: 27, scope: !1520)
!1523 = !DILocation(line: 308, column: 11, scope: !1520)
!1524 = !DILocation(line: 308, column: 28, scope: !1520)
!1525 = !DILocation(line: 308, column: 25, scope: !1520)
!1526 = !DILocation(line: 309, column: 15, scope: !1520)
!1527 = !DILocation(line: 309, column: 33, scope: !1520)
!1528 = !DILocation(line: 310, column: 19, scope: !1520)
!1529 = !DILocation(line: 311, column: 22, scope: !1520)
!1530 = !DILocation(line: 311, column: 56, scope: !1520)
!1531 = !DILocation(line: 307, column: 11, scope: !1521)
!1532 = !DILocation(line: 316, column: 21, scope: !1521)
!1533 = !DILocation(line: 317, column: 23, scope: !1521)
!1534 = !DILocation(line: 318, column: 5, scope: !1521)
!1535 = !DILocation(line: 327, column: 3, scope: !460)
!1536 = !DILocation(line: 331, column: 7, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !460, file: !453, line: 331, column: 7)
!1538 = !DILocation(line: 331, column: 7, scope: !460)
!1539 = !DILocation(line: 332, column: 5, scope: !1537)
!1540 = !DILocation(line: 338, column: 7, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1537, file: !453, line: 334, column: 5)
!1542 = !DILocation(line: 346, column: 3, scope: !460)
!1543 = !DILocation(line: 350, column: 3, scope: !460)
!1544 = !DILocation(line: 356, column: 1, scope: !460)
!1545 = distinct !DISubprogram(name: "error_at_line", scope: !453, file: !453, line: 359, type: !1546, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !452, retainedNodes: !1548)
!1546 = !DISubroutineType(types: !1547)
!1547 = !{null, !85, !85, !138, !91, !138, null}
!1548 = !{!1549, !1550, !1551, !1552, !1553, !1554}
!1549 = !DILocalVariable(name: "status", arg: 1, scope: !1545, file: !453, line: 359, type: !85)
!1550 = !DILocalVariable(name: "errnum", arg: 2, scope: !1545, file: !453, line: 359, type: !85)
!1551 = !DILocalVariable(name: "file_name", arg: 3, scope: !1545, file: !453, line: 359, type: !138)
!1552 = !DILocalVariable(name: "line_number", arg: 4, scope: !1545, file: !453, line: 360, type: !91)
!1553 = !DILocalVariable(name: "message", arg: 5, scope: !1545, file: !453, line: 360, type: !138)
!1554 = !DILocalVariable(name: "ap", scope: !1545, file: !453, line: 362, type: !1503)
!1555 = distinct !DIAssignID()
!1556 = !DILocation(line: 0, scope: !1545)
!1557 = !DILocation(line: 362, column: 3, scope: !1545)
!1558 = !DILocation(line: 363, column: 3, scope: !1545)
!1559 = !DILocation(line: 364, column: 3, scope: !1545)
!1560 = !DILocation(line: 366, column: 3, scope: !1545)
!1561 = !DILocation(line: 367, column: 1, scope: !1545)
!1562 = distinct !DISubprogram(name: "getprogname", scope: !756, file: !756, line: 54, type: !1563, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !755)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{!138}
!1565 = !DILocation(line: 58, column: 10, scope: !1562)
!1566 = !DILocation(line: 58, column: 3, scope: !1562)
!1567 = distinct !DISubprogram(name: "rpl_mknod", scope: !758, file: !758, line: 47, type: !1568, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !757, retainedNodes: !1570)
!1568 = !DISubroutineType(types: !1569)
!1569 = !{!85, !138, !1093, !130}
!1570 = !{!1571, !1572, !1573}
!1571 = !DILocalVariable(name: "name", arg: 1, scope: !1567, file: !758, line: 47, type: !138)
!1572 = !DILocalVariable(name: "mode", arg: 2, scope: !1567, file: !758, line: 47, type: !1093)
!1573 = !DILocalVariable(name: "dev", arg: 3, scope: !1567, file: !758, line: 47, type: !130)
!1574 = !DILocation(line: 0, scope: !1567)
!1575 = !DILocation(line: 68, column: 7, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1567, file: !758, line: 68, column: 7)
!1577 = !DILocation(line: 68, column: 23, scope: !1576)
!1578 = !DILocation(line: 69, column: 31, scope: !1576)
!1579 = !DILocation(line: 69, column: 12, scope: !1576)
!1580 = !DILocation(line: 69, column: 5, scope: !1576)
!1581 = !DILocation(line: 71, column: 10, scope: !1567)
!1582 = !DILocation(line: 71, column: 3, scope: !1567)
!1583 = !DILocation(line: 72, column: 1, scope: !1567)
!1584 = !DISubprogram(name: "mknod", scope: !1280, file: !1280, line: 404, type: !1585, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1585 = !DISubroutineType(types: !1586)
!1586 = !{!85, !138, !1094, !132}
!1587 = distinct !DISubprogram(name: "mode_compile", scope: !760, file: !760, line: 134, type: !1588, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !1598)
!1588 = !DISubroutineType(types: !1589)
!1589 = !{!1590, !138}
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mode_change", file: !760, line: 98, size: 128, elements: !1592)
!1592 = !{!1593, !1594, !1595, !1596, !1597}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1591, file: !760, line: 100, baseType: !4, size: 8)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !1591, file: !760, line: 101, baseType: !4, size: 8, offset: 8)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "affected", scope: !1591, file: !760, line: 102, baseType: !1093, size: 32, offset: 32)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1591, file: !760, line: 103, baseType: !1093, size: 32, offset: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "mentioned", scope: !1591, file: !760, line: 104, baseType: !1093, size: 32, offset: 96)
!1598 = !{!1599, !1600, !1603, !1604, !1605, !1606, !1607, !1609, !1611, !1612, !1613, !1617, !1618, !1620, !1621, !1622, !1623, !1626, !1627, !1628}
!1599 = !DILocalVariable(name: "mode_string", arg: 1, scope: !1587, file: !760, line: 134, type: !138)
!1600 = !DILocalVariable(name: "p", scope: !1601, file: !760, line: 138, type: !138)
!1601 = distinct !DILexicalBlock(scope: !1602, file: !760, line: 137, column: 5)
!1602 = distinct !DILexicalBlock(scope: !1587, file: !760, line: 136, column: 7)
!1603 = !DILocalVariable(name: "octal_mode", scope: !1601, file: !760, line: 139, type: !91)
!1604 = !DILocalVariable(name: "mode", scope: !1601, file: !760, line: 140, type: !1093)
!1605 = !DILocalVariable(name: "mentioned", scope: !1601, file: !760, line: 141, type: !1093)
!1606 = !DILocalVariable(name: "mc", scope: !1587, file: !760, line: 163, type: !1590)
!1607 = !DILocalVariable(name: "needed", scope: !1608, file: !760, line: 167, type: !136)
!1608 = distinct !DILexicalBlock(scope: !1587, file: !760, line: 166, column: 3)
!1609 = !DILocalVariable(name: "p", scope: !1610, file: !760, line: 168, type: !138)
!1610 = distinct !DILexicalBlock(scope: !1608, file: !760, line: 168, column: 5)
!1611 = !DILocalVariable(name: "used", scope: !1587, file: !760, line: 175, type: !136)
!1612 = !DILocalVariable(name: "p", scope: !1587, file: !760, line: 176, type: !138)
!1613 = !DILocalVariable(name: "affected", scope: !1614, file: !760, line: 180, type: !1093)
!1614 = distinct !DILexicalBlock(scope: !1615, file: !760, line: 178, column: 5)
!1615 = distinct !DILexicalBlock(scope: !1616, file: !760, line: 177, column: 3)
!1616 = distinct !DILexicalBlock(scope: !1587, file: !760, line: 177, column: 3)
!1617 = !DILabel(scope: !1614, name: "no_more_affected", file: !760, line: 203)
!1618 = !DILocalVariable(name: "op", scope: !1619, file: !760, line: 207, type: !4)
!1619 = distinct !DILexicalBlock(scope: !1614, file: !760, line: 206, column: 9)
!1620 = !DILocalVariable(name: "value", scope: !1619, file: !760, line: 208, type: !1093)
!1621 = !DILocalVariable(name: "mentioned", scope: !1619, file: !760, line: 209, type: !1093)
!1622 = !DILocalVariable(name: "flag", scope: !1619, file: !760, line: 210, type: !4)
!1623 = !DILocalVariable(name: "octal_mode", scope: !1624, file: !760, line: 217, type: !91)
!1624 = distinct !DILexicalBlock(scope: !1625, file: !760, line: 216, column: 15)
!1625 = distinct !DILexicalBlock(scope: !1619, file: !760, line: 213, column: 13)
!1626 = !DILabel(scope: !1625, name: "no_more_values", file: !760, line: 284)
!1627 = !DILocalVariable(name: "change", scope: !1619, file: !760, line: 287, type: !1590)
!1628 = !DILabel(scope: !1587, name: "invalid", file: !760, line: 308)
!1629 = !DILocation(line: 0, scope: !1587)
!1630 = !DILocation(line: 136, column: 14, scope: !1602)
!1631 = !DILocation(line: 136, column: 27, scope: !1602)
!1632 = !DILocation(line: 146, column: 41, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1601, file: !760, line: 145, column: 9)
!1634 = !DILocation(line: 0, scope: !1601)
!1635 = !DILocation(line: 146, column: 26, scope: !1633)
!1636 = !DILocation(line: 146, column: 39, scope: !1633)
!1637 = !DILocation(line: 146, column: 46, scope: !1633)
!1638 = !DILocation(line: 147, column: 20, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1633, file: !760, line: 147, column: 15)
!1640 = !DILocation(line: 147, column: 15, scope: !1633)
!1641 = !DILocation(line: 146, column: 43, scope: !1633)
!1642 = !DILocation(line: 150, column: 21, scope: !1601)
!1643 = !DILocation(line: 150, column: 24, scope: !1601)
!1644 = distinct !{!1644, !1645, !1646, !975}
!1645 = !DILocation(line: 144, column: 7, scope: !1601)
!1646 = !DILocation(line: 150, column: 35, scope: !1601)
!1647 = !DILocation(line: 152, column: 11, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1601, file: !760, line: 152, column: 11)
!1649 = !DILocation(line: 152, column: 11, scope: !1601)
!1650 = !DILocation(line: 156, column: 22, scope: !1601)
!1651 = !DILocation(line: 156, column: 36, scope: !1601)
!1652 = !DILocation(line: 156, column: 20, scope: !1601)
!1653 = !DILocalVariable(name: "new_mode", arg: 1, scope: !1654, file: !760, line: 112, type: !1093)
!1654 = distinct !DISubprogram(name: "make_node_op_equals", scope: !760, file: !760, line: 112, type: !1655, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !1657)
!1655 = !DISubroutineType(types: !1656)
!1656 = !{!1590, !1093, !1093}
!1657 = !{!1653, !1658, !1659}
!1658 = !DILocalVariable(name: "mentioned", arg: 2, scope: !1654, file: !760, line: 112, type: !1093)
!1659 = !DILocalVariable(name: "p", scope: !1654, file: !760, line: 114, type: !1590)
!1660 = !DILocation(line: 0, scope: !1654, inlinedAt: !1661)
!1661 = distinct !DILocation(line: 159, column: 14, scope: !1601)
!1662 = !DILocation(line: 114, column: 27, scope: !1654, inlinedAt: !1661)
!1663 = !DILocation(line: 115, column: 9, scope: !1654, inlinedAt: !1661)
!1664 = !{!1665, !860, i64 0}
!1665 = !{!"mode_change", !860, i64 0, !860, i64 1, !929, i64 4, !929, i64 8, !929, i64 12}
!1666 = !DILocation(line: 116, column: 6, scope: !1654, inlinedAt: !1661)
!1667 = !DILocation(line: 116, column: 11, scope: !1654, inlinedAt: !1661)
!1668 = !{!1665, !860, i64 1}
!1669 = !DILocation(line: 117, column: 6, scope: !1654, inlinedAt: !1661)
!1670 = !DILocation(line: 117, column: 15, scope: !1654, inlinedAt: !1661)
!1671 = !{!1665, !929, i64 4}
!1672 = !DILocation(line: 118, column: 6, scope: !1654, inlinedAt: !1661)
!1673 = !DILocation(line: 118, column: 12, scope: !1654, inlinedAt: !1661)
!1674 = !{!1665, !929, i64 8}
!1675 = !DILocation(line: 119, column: 6, scope: !1654, inlinedAt: !1661)
!1676 = !DILocation(line: 119, column: 16, scope: !1654, inlinedAt: !1661)
!1677 = !{!1665, !929, i64 12}
!1678 = !DILocation(line: 120, column: 8, scope: !1654, inlinedAt: !1661)
!1679 = !DILocation(line: 120, column: 13, scope: !1654, inlinedAt: !1661)
!1680 = !DILocation(line: 159, column: 7, scope: !1601)
!1681 = !DILocation(line: 168, column: 39, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1610, file: !760, line: 168, column: 5)
!1683 = !DILocation(line: 0, scope: !1608)
!1684 = !DILocation(line: 168, scope: !1610)
!1685 = !DILocation(line: 0, scope: !1610)
!1686 = !DILocation(line: 168, column: 5, scope: !1610)
!1687 = !DILocation(line: 170, column: 10, scope: !1608)
!1688 = !DILocation(line: 177, column: 8, scope: !1616)
!1689 = !DILocation(line: 169, column: 41, scope: !1682)
!1690 = !DILocation(line: 169, column: 14, scope: !1682)
!1691 = !DILocation(line: 168, column: 44, scope: !1682)
!1692 = !DILocation(line: 168, column: 5, scope: !1682)
!1693 = distinct !{!1693, !1686, !1694, !975}
!1694 = !DILocation(line: 169, column: 53, scope: !1610)
!1695 = !DILocation(line: 175, column: 10, scope: !1587)
!1696 = !DILocation(line: 177, scope: !1616)
!1697 = !DILocation(line: 0, scope: !1619)
!1698 = !DILocation(line: 0, scope: !1614)
!1699 = !DILocation(line: 183, column: 7, scope: !1614)
!1700 = !DILocation(line: 0, scope: !1616)
!1701 = !DILocation(line: 184, column: 17, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1703, file: !760, line: 183, column: 7)
!1703 = distinct !DILexicalBlock(scope: !1614, file: !760, line: 183, column: 7)
!1704 = !DILocation(line: 184, column: 9, scope: !1702)
!1705 = !DILocation(line: 212, column: 11, scope: !1619)
!1706 = !DILocation(line: 189, column: 22, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1702, file: !760, line: 185, column: 11)
!1708 = !DILocation(line: 190, column: 13, scope: !1707)
!1709 = !DILocation(line: 192, column: 22, scope: !1707)
!1710 = !DILocation(line: 193, column: 13, scope: !1707)
!1711 = !DILocation(line: 195, column: 22, scope: !1707)
!1712 = !DILocation(line: 196, column: 13, scope: !1707)
!1713 = !DILocation(line: 0, scope: !1707)
!1714 = !DILocation(line: 183, column: 16, scope: !1702)
!1715 = !DILocation(line: 183, column: 7, scope: !1702)
!1716 = distinct !{!1716, !1717, !1718}
!1717 = !DILocation(line: 183, column: 7, scope: !1703)
!1718 = !DILocation(line: 202, column: 11, scope: !1703)
!1719 = !DILocation(line: 207, column: 21, scope: !1619)
!1720 = !DILocation(line: 180, column: 14, scope: !1614)
!1721 = !DILocation(line: 207, column: 23, scope: !1619)
!1722 = !DILocation(line: 212, column: 19, scope: !1619)
!1723 = !DILocation(line: 219, column: 17, scope: !1624)
!1724 = !DILocation(line: 221, column: 51, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1624, file: !760, line: 220, column: 19)
!1726 = !DILocation(line: 0, scope: !1624)
!1727 = !DILocation(line: 221, column: 36, scope: !1725)
!1728 = !DILocation(line: 221, column: 49, scope: !1725)
!1729 = !DILocation(line: 221, column: 56, scope: !1725)
!1730 = !DILocation(line: 222, column: 30, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1725, file: !760, line: 222, column: 25)
!1732 = !DILocation(line: 222, column: 25, scope: !1725)
!1733 = !DILocation(line: 221, column: 53, scope: !1725)
!1734 = !DILocation(line: 225, column: 31, scope: !1624)
!1735 = !DILocation(line: 225, column: 34, scope: !1624)
!1736 = distinct !{!1736, !1723, !1737, !975}
!1737 = !DILocation(line: 225, column: 45, scope: !1624)
!1738 = !DILocation(line: 227, column: 21, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1624, file: !760, line: 227, column: 21)
!1740 = !DILocation(line: 227, column: 30, scope: !1739)
!1741 = !DILocation(line: 227, column: 37, scope: !1739)
!1742 = !DILocation(line: 239, column: 16, scope: !1625)
!1743 = !DILocation(line: 240, column: 15, scope: !1625)
!1744 = !DILocation(line: 245, column: 16, scope: !1625)
!1745 = !DILocation(line: 246, column: 15, scope: !1625)
!1746 = !DILocation(line: 251, column: 16, scope: !1625)
!1747 = !DILocation(line: 252, column: 15, scope: !1625)
!1748 = !DILocation(line: 259, column: 25, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1750, file: !760, line: 258, column: 15)
!1750 = distinct !DILexicalBlock(scope: !1625, file: !760, line: 258, column: 15)
!1751 = !DILocation(line: 0, scope: !1625)
!1752 = !DILocation(line: 256, column: 20, scope: !1625)
!1753 = !DILocation(line: 259, column: 17, scope: !1749)
!1754 = !DILocation(line: 262, column: 27, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1749, file: !760, line: 260, column: 19)
!1756 = !DILocation(line: 263, column: 21, scope: !1755)
!1757 = !DILocation(line: 265, column: 27, scope: !1755)
!1758 = !DILocation(line: 266, column: 21, scope: !1755)
!1759 = !DILocation(line: 268, column: 27, scope: !1755)
!1760 = !DILocation(line: 269, column: 21, scope: !1755)
!1761 = !DILocation(line: 275, column: 27, scope: !1755)
!1762 = !DILocation(line: 276, column: 21, scope: !1755)
!1763 = !DILocation(line: 279, column: 27, scope: !1755)
!1764 = !DILocation(line: 280, column: 21, scope: !1755)
!1765 = !DILocation(line: 258, column: 24, scope: !1749)
!1766 = !DILocation(line: 258, column: 15, scope: !1749)
!1767 = distinct !{!1767, !1768, !1769}
!1768 = !DILocation(line: 258, column: 15, scope: !1750)
!1769 = !DILocation(line: 283, column: 19, scope: !1750)
!1770 = !DILocation(line: 209, column: 18, scope: !1619)
!1771 = !DILocation(line: 294, column: 14, scope: !1619)
!1772 = !DILocation(line: 288, column: 28, scope: !1619)
!1773 = !DILocation(line: 288, column: 21, scope: !1619)
!1774 = !DILocation(line: 289, column: 22, scope: !1619)
!1775 = !DILocation(line: 290, column: 19, scope: !1619)
!1776 = !DILocation(line: 290, column: 24, scope: !1619)
!1777 = !DILocation(line: 291, column: 19, scope: !1619)
!1778 = !DILocation(line: 291, column: 28, scope: !1619)
!1779 = !DILocation(line: 292, column: 19, scope: !1619)
!1780 = !DILocation(line: 292, column: 25, scope: !1619)
!1781 = !DILocation(line: 293, column: 19, scope: !1619)
!1782 = !DILocation(line: 293, column: 29, scope: !1619)
!1783 = !DILocation(line: 296, column: 14, scope: !1614)
!1784 = !DILocation(line: 296, column: 24, scope: !1614)
!1785 = !DILocation(line: 177, column: 28, scope: !1615)
!1786 = !DILocation(line: 177, column: 3, scope: !1615)
!1787 = distinct !{!1787, !1788, !1789}
!1788 = !DILocation(line: 177, column: 3, scope: !1616)
!1789 = !DILocation(line: 300, column: 5, scope: !1616)
!1790 = !DILocation(line: 304, column: 16, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1792, file: !760, line: 303, column: 5)
!1792 = distinct !DILexicalBlock(scope: !1587, file: !760, line: 302, column: 7)
!1793 = !DILocation(line: 304, column: 21, scope: !1791)
!1794 = !DILocation(line: 305, column: 7, scope: !1791)
!1795 = !DILocation(line: 308, column: 1, scope: !1587)
!1796 = !DILocation(line: 309, column: 3, scope: !1587)
!1797 = !DILocation(line: 310, column: 3, scope: !1587)
!1798 = !DILocation(line: 311, column: 1, scope: !1587)
!1799 = distinct !DISubprogram(name: "mode_create_from_ref", scope: !760, file: !760, line: 317, type: !1588, scopeLine: 318, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !1800)
!1800 = !{!1801, !1802}
!1801 = !DILocalVariable(name: "ref_file", arg: 1, scope: !1799, file: !760, line: 317, type: !138)
!1802 = !DILocalVariable(name: "ref_stats", scope: !1799, file: !760, line: 319, type: !1803)
!1803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1804, line: 26, size: 1152, elements: !1805)
!1804 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "3ba283bc334370fe631cbc82f5229ed7")
!1805 = !{!1806, !1807, !1809, !1811, !1812, !1814, !1816, !1817, !1818, !1819, !1821, !1823, !1831, !1832, !1833}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1803, file: !1804, line: 31, baseType: !132, size: 64)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1803, file: !1804, line: 36, baseType: !1808, size: 64, offset: 64)
!1808 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !133, line: 148, baseType: !134)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1803, file: !1804, line: 44, baseType: !1810, size: 64, offset: 128)
!1810 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !133, line: 151, baseType: !134)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1803, file: !1804, line: 45, baseType: !1094, size: 32, offset: 192)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1803, file: !1804, line: 47, baseType: !1813, size: 32, offset: 224)
!1813 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !133, line: 146, baseType: !91)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1803, file: !1804, line: 48, baseType: !1815, size: 32, offset: 256)
!1815 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !133, line: 147, baseType: !91)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1803, file: !1804, line: 50, baseType: !85, size: 32, offset: 288)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1803, file: !1804, line: 52, baseType: !132, size: 64, offset: 320)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1803, file: !1804, line: 57, baseType: !273, size: 64, offset: 384)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1803, file: !1804, line: 61, baseType: !1820, size: 64, offset: 448)
!1820 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !133, line: 175, baseType: !274)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1803, file: !1804, line: 63, baseType: !1822, size: 64, offset: 512)
!1822 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !133, line: 180, baseType: !274)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1803, file: !1804, line: 74, baseType: !1824, size: 128, offset: 576)
!1824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1825, line: 11, size: 128, elements: !1826)
!1825 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!1826 = !{!1827, !1829}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1824, file: !1825, line: 16, baseType: !1828, size: 64)
!1828 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !133, line: 160, baseType: !274)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1824, file: !1825, line: 21, baseType: !1830, size: 64, offset: 64)
!1830 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !133, line: 197, baseType: !274)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1803, file: !1804, line: 75, baseType: !1824, size: 128, offset: 704)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1803, file: !1804, line: 76, baseType: !1824, size: 128, offset: 832)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1803, file: !1804, line: 89, baseType: !1834, size: 192, offset: 960)
!1834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1830, size: 192, elements: !205)
!1835 = distinct !DIAssignID()
!1836 = !DILocation(line: 0, scope: !1799)
!1837 = !DILocation(line: 319, column: 3, scope: !1799)
!1838 = !DILocation(line: 321, column: 7, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1799, file: !760, line: 321, column: 7)
!1840 = !DILocation(line: 321, column: 35, scope: !1839)
!1841 = !DILocation(line: 321, column: 7, scope: !1799)
!1842 = !DILocation(line: 323, column: 41, scope: !1799)
!1843 = !{!1844, !929, i64 24}
!1844 = !{!"stat", !1219, i64 0, !1219, i64 8, !1219, i64 16, !929, i64 24, !929, i64 28, !929, i64 32, !929, i64 36, !1219, i64 40, !1219, i64 48, !1219, i64 56, !1219, i64 64, !1845, i64 72, !1845, i64 88, !1845, i64 104, !860, i64 120}
!1845 = !{!"timespec", !1219, i64 0, !1219, i64 8}
!1846 = !DILocation(line: 0, scope: !1654, inlinedAt: !1847)
!1847 = distinct !DILocation(line: 323, column: 10, scope: !1799)
!1848 = !DILocation(line: 114, column: 27, scope: !1654, inlinedAt: !1847)
!1849 = !DILocation(line: 115, column: 9, scope: !1654, inlinedAt: !1847)
!1850 = !DILocation(line: 116, column: 6, scope: !1654, inlinedAt: !1847)
!1851 = !DILocation(line: 116, column: 11, scope: !1654, inlinedAt: !1847)
!1852 = !DILocation(line: 117, column: 6, scope: !1654, inlinedAt: !1847)
!1853 = !DILocation(line: 117, column: 15, scope: !1654, inlinedAt: !1847)
!1854 = !DILocation(line: 118, column: 6, scope: !1654, inlinedAt: !1847)
!1855 = !DILocation(line: 118, column: 12, scope: !1654, inlinedAt: !1847)
!1856 = !DILocation(line: 119, column: 6, scope: !1654, inlinedAt: !1847)
!1857 = !DILocation(line: 119, column: 16, scope: !1654, inlinedAt: !1847)
!1858 = !DILocation(line: 120, column: 8, scope: !1654, inlinedAt: !1847)
!1859 = !DILocation(line: 120, column: 13, scope: !1654, inlinedAt: !1847)
!1860 = !DILocation(line: 323, column: 3, scope: !1799)
!1861 = !DILocation(line: 324, column: 1, scope: !1799)
!1862 = !DISubprogram(name: "stat", scope: !1280, file: !1280, line: 205, type: !1863, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1863 = !DISubroutineType(types: !1864)
!1864 = !{!85, !918, !1865}
!1865 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1866)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1867 = distinct !DISubprogram(name: "mode_adjust", scope: !760, file: !760, line: 340, type: !1868, scopeLine: 342, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !1873)
!1868 = !DISubroutineType(types: !1869)
!1869 = !{!1093, !1093, !234, !1093, !1870, !1872}
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1591)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1873 = !{!1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1885, !1886, !1887}
!1874 = !DILocalVariable(name: "oldmode", arg: 1, scope: !1867, file: !760, line: 340, type: !1093)
!1875 = !DILocalVariable(name: "dir", arg: 2, scope: !1867, file: !760, line: 340, type: !234)
!1876 = !DILocalVariable(name: "umask_value", arg: 3, scope: !1867, file: !760, line: 340, type: !1093)
!1877 = !DILocalVariable(name: "changes", arg: 4, scope: !1867, file: !760, line: 341, type: !1870)
!1878 = !DILocalVariable(name: "pmode_bits", arg: 5, scope: !1867, file: !760, line: 341, type: !1872)
!1879 = !DILocalVariable(name: "newmode", scope: !1867, file: !760, line: 344, type: !1093)
!1880 = !DILocalVariable(name: "mode_bits", scope: !1867, file: !760, line: 347, type: !1093)
!1881 = !DILocalVariable(name: "affected", scope: !1882, file: !760, line: 351, type: !1093)
!1882 = distinct !DILexicalBlock(scope: !1883, file: !760, line: 350, column: 5)
!1883 = distinct !DILexicalBlock(scope: !1884, file: !760, line: 349, column: 3)
!1884 = distinct !DILexicalBlock(scope: !1867, file: !760, line: 349, column: 3)
!1885 = !DILocalVariable(name: "omit_change", scope: !1882, file: !760, line: 352, type: !1093)
!1886 = !DILocalVariable(name: "value", scope: !1882, file: !760, line: 354, type: !1093)
!1887 = !DILocalVariable(name: "preserved", scope: !1888, file: !760, line: 394, type: !1093)
!1888 = distinct !DILexicalBlock(scope: !1889, file: !760, line: 393, column: 11)
!1889 = distinct !DILexicalBlock(scope: !1882, file: !760, line: 388, column: 9)
!1890 = !DILocation(line: 0, scope: !1867)
!1891 = !DILocation(line: 344, column: 28, scope: !1867)
!1892 = !DILocation(line: 349, column: 19, scope: !1883)
!1893 = !DILocation(line: 349, column: 24, scope: !1883)
!1894 = !DILocation(line: 349, column: 3, scope: !1884)
!1895 = !DILocation(line: 351, column: 34, scope: !1882)
!1896 = !DILocation(line: 0, scope: !1882)
!1897 = !DILocation(line: 353, column: 52, scope: !1882)
!1898 = !DILocation(line: 353, column: 41, scope: !1882)
!1899 = !DILocation(line: 353, column: 39, scope: !1882)
!1900 = !DILocation(line: 354, column: 31, scope: !1882)
!1901 = !DILocation(line: 356, column: 7, scope: !1882)
!1902 = !DILocation(line: 363, column: 17, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1882, file: !760, line: 357, column: 9)
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
!1914 = distinct !DILexicalBlock(scope: !1903, file: !760, line: 377, column: 15)
!1915 = !DILocation(line: 377, column: 57, scope: !1914)
!1916 = !DILocation(line: 377, column: 15, scope: !1903)
!1917 = !DILocation(line: 385, column: 17, scope: !1882)
!1918 = !DILocation(line: 385, column: 55, scope: !1882)
!1919 = !DILocation(line: 385, column: 53, scope: !1882)
!1920 = !DILocation(line: 385, column: 13, scope: !1882)
!1921 = !DILocation(line: 387, column: 24, scope: !1882)
!1922 = !DILocation(line: 387, column: 7, scope: !1882)
!1923 = !DILocation(line: 394, column: 33, scope: !1888)
!1924 = !DILocation(line: 394, column: 59, scope: !1888)
!1925 = !DILocation(line: 0, scope: !1888)
!1926 = !DILocation(line: 395, column: 42, scope: !1888)
!1927 = !DILocation(line: 395, column: 23, scope: !1888)
!1928 = !DILocation(line: 396, column: 32, scope: !1888)
!1929 = !DILocation(line: 396, column: 45, scope: !1888)
!1930 = !DILocation(line: 401, column: 21, scope: !1889)
!1931 = !DILocation(line: 402, column: 19, scope: !1889)
!1932 = !DILocation(line: 403, column: 11, scope: !1889)
!1933 = !DILocation(line: 406, column: 21, scope: !1889)
!1934 = !DILocation(line: 407, column: 22, scope: !1889)
!1935 = !DILocation(line: 407, column: 19, scope: !1889)
!1936 = !DILocation(line: 408, column: 11, scope: !1889)
!1937 = !DILocation(line: 349, column: 45, scope: !1883)
!1938 = distinct !{!1938, !1894, !1939, !975}
!1939 = !DILocation(line: 410, column: 5, scope: !1884)
!1940 = !DILocation(line: 347, column: 10, scope: !1867)
!1941 = !DILocation(line: 344, column: 10, scope: !1867)
!1942 = !DILocation(line: 412, column: 7, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1867, file: !760, line: 412, column: 7)
!1944 = !DILocation(line: 412, column: 7, scope: !1867)
!1945 = !DILocation(line: 413, column: 17, scope: !1943)
!1946 = !DILocation(line: 413, column: 5, scope: !1943)
!1947 = !DILocation(line: 414, column: 3, scope: !1867)
!1948 = distinct !DISubprogram(name: "set_program_name", scope: !501, file: !501, line: 37, type: !878, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !500, retainedNodes: !1949)
!1949 = !{!1950, !1951, !1952}
!1950 = !DILocalVariable(name: "argv0", arg: 1, scope: !1948, file: !501, line: 37, type: !138)
!1951 = !DILocalVariable(name: "slash", scope: !1948, file: !501, line: 44, type: !138)
!1952 = !DILocalVariable(name: "base", scope: !1948, file: !501, line: 45, type: !138)
!1953 = !DILocation(line: 0, scope: !1948)
!1954 = !DILocation(line: 44, column: 23, scope: !1948)
!1955 = !DILocation(line: 45, column: 22, scope: !1948)
!1956 = !DILocation(line: 46, column: 17, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1948, file: !501, line: 46, column: 7)
!1958 = !DILocation(line: 46, column: 9, scope: !1957)
!1959 = !DILocation(line: 46, column: 25, scope: !1957)
!1960 = !DILocation(line: 46, column: 40, scope: !1957)
!1961 = !DILocalVariable(name: "__s1", arg: 1, scope: !1962, file: !941, line: 974, type: !1076)
!1962 = distinct !DISubprogram(name: "memeq", scope: !941, file: !941, line: 974, type: !1963, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !500, retainedNodes: !1965)
!1963 = !DISubroutineType(types: !1964)
!1964 = !{!234, !1076, !1076, !136}
!1965 = !{!1961, !1966, !1967}
!1966 = !DILocalVariable(name: "__s2", arg: 2, scope: !1962, file: !941, line: 974, type: !1076)
!1967 = !DILocalVariable(name: "__n", arg: 3, scope: !1962, file: !941, line: 974, type: !136)
!1968 = !DILocation(line: 0, scope: !1962, inlinedAt: !1969)
!1969 = distinct !DILocation(line: 46, column: 28, scope: !1957)
!1970 = !DILocation(line: 976, column: 11, scope: !1962, inlinedAt: !1969)
!1971 = !DILocation(line: 976, column: 10, scope: !1962, inlinedAt: !1969)
!1972 = !DILocation(line: 46, column: 7, scope: !1948)
!1973 = !DILocation(line: 49, column: 11, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1975, file: !501, line: 49, column: 11)
!1975 = distinct !DILexicalBlock(scope: !1957, file: !501, line: 47, column: 5)
!1976 = !DILocation(line: 49, column: 36, scope: !1974)
!1977 = !DILocation(line: 49, column: 11, scope: !1975)
!1978 = !DILocation(line: 65, column: 16, scope: !1948)
!1979 = !DILocation(line: 71, column: 27, scope: !1948)
!1980 = !DILocation(line: 74, column: 33, scope: !1948)
!1981 = !DILocation(line: 76, column: 1, scope: !1948)
!1982 = !DISubprogram(name: "strrchr", scope: !1048, file: !1048, line: 273, type: !1063, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1983 = distinct !DIAssignID()
!1984 = !DILocation(line: 0, scope: !510)
!1985 = distinct !DIAssignID()
!1986 = !DILocation(line: 40, column: 29, scope: !510)
!1987 = !DILocation(line: 41, column: 19, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !510, file: !511, line: 41, column: 7)
!1989 = !DILocation(line: 41, column: 7, scope: !510)
!1990 = !DILocation(line: 47, column: 3, scope: !510)
!1991 = !DILocation(line: 48, column: 3, scope: !510)
!1992 = !DILocalVariable(name: "ps", arg: 1, scope: !1993, file: !1994, line: 1135, type: !1997)
!1993 = distinct !DISubprogram(name: "mbszero", scope: !1994, file: !1994, line: 1135, type: !1995, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !514, retainedNodes: !1998)
!1994 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1995 = !DISubroutineType(types: !1996)
!1996 = !{null, !1997}
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!1998 = !{!1992}
!1999 = !DILocation(line: 0, scope: !1993, inlinedAt: !2000)
!2000 = distinct !DILocation(line: 48, column: 18, scope: !510)
!2001 = !DILocalVariable(name: "__dest", arg: 1, scope: !2002, file: !2003, line: 57, type: !129)
!2002 = distinct !DISubprogram(name: "memset", scope: !2003, file: !2003, line: 57, type: !2004, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !514, retainedNodes: !2006)
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
!2013 = distinct !DILexicalBlock(scope: !510, file: !511, line: 49, column: 7)
!2014 = !DILocation(line: 49, column: 39, scope: !2013)
!2015 = !DILocation(line: 49, column: 44, scope: !2013)
!2016 = !DILocation(line: 54, column: 1, scope: !510)
!2017 = !DISubprogram(name: "mbrtoc32", scope: !522, file: !522, line: 57, type: !2018, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2018 = !DISubroutineType(types: !2019)
!2019 = !{!136, !2020, !918, !136, !2022}
!2020 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2021)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!2022 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1997)
!2023 = distinct !DISubprogram(name: "clone_quoting_options", scope: !541, file: !541, line: 113, type: !2024, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !562, retainedNodes: !2027)
!2024 = !DISubroutineType(types: !2025)
!2025 = !{!2026, !2026}
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!2027 = !{!2028, !2029, !2030}
!2028 = !DILocalVariable(name: "o", arg: 1, scope: !2023, file: !541, line: 113, type: !2026)
!2029 = !DILocalVariable(name: "saved_errno", scope: !2023, file: !541, line: 115, type: !85)
!2030 = !DILocalVariable(name: "p", scope: !2023, file: !541, line: 116, type: !2026)
!2031 = !DILocation(line: 0, scope: !2023)
!2032 = !DILocation(line: 115, column: 21, scope: !2023)
!2033 = !DILocation(line: 116, column: 40, scope: !2023)
!2034 = !DILocation(line: 116, column: 31, scope: !2023)
!2035 = !DILocation(line: 118, column: 9, scope: !2023)
!2036 = !DILocation(line: 119, column: 3, scope: !2023)
!2037 = distinct !DISubprogram(name: "get_quoting_style", scope: !541, file: !541, line: 124, type: !2038, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !562, retainedNodes: !2042)
!2038 = !DISubroutineType(types: !2039)
!2039 = !{!564, !2040}
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !579)
!2042 = !{!2043}
!2043 = !DILocalVariable(name: "o", arg: 1, scope: !2037, file: !541, line: 124, type: !2040)
!2044 = !DILocation(line: 0, scope: !2037)
!2045 = !DILocation(line: 126, column: 11, scope: !2037)
!2046 = !DILocation(line: 126, column: 46, scope: !2037)
!2047 = !{!2048, !929, i64 0}
!2048 = !{!"quoting_options", !929, i64 0, !929, i64 4, !860, i64 8, !859, i64 40, !859, i64 48}
!2049 = !DILocation(line: 126, column: 3, scope: !2037)
!2050 = distinct !DISubprogram(name: "set_quoting_style", scope: !541, file: !541, line: 132, type: !2051, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !562, retainedNodes: !2053)
!2051 = !DISubroutineType(types: !2052)
!2052 = !{null, !2026, !564}
!2053 = !{!2054, !2055}
!2054 = !DILocalVariable(name: "o", arg: 1, scope: !2050, file: !541, line: 132, type: !2026)
!2055 = !DILocalVariable(name: "s", arg: 2, scope: !2050, file: !541, line: 132, type: !564)
!2056 = !DILocation(line: 0, scope: !2050)
!2057 = !DILocation(line: 134, column: 4, scope: !2050)
!2058 = !DILocation(line: 134, column: 45, scope: !2050)
!2059 = !DILocation(line: 135, column: 1, scope: !2050)
!2060 = distinct !DISubprogram(name: "set_char_quoting", scope: !541, file: !541, line: 143, type: !2061, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !562, retainedNodes: !2063)
!2061 = !DISubroutineType(types: !2062)
!2062 = !{!85, !2026, !4, !85}
!2063 = !{!2064, !2065, !2066, !2067, !2068, !2070, !2071}
!2064 = !DILocalVariable(name: "o", arg: 1, scope: !2060, file: !541, line: 143, type: !2026)
!2065 = !DILocalVariable(name: "c", arg: 2, scope: !2060, file: !541, line: 143, type: !4)
!2066 = !DILocalVariable(name: "i", arg: 3, scope: !2060, file: !541, line: 143, type: !85)
!2067 = !DILocalVariable(name: "uc", scope: !2060, file: !541, line: 145, type: !140)
!2068 = !DILocalVariable(name: "p", scope: !2060, file: !541, line: 146, type: !2069)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!2070 = !DILocalVariable(name: "shift", scope: !2060, file: !541, line: 148, type: !85)
!2071 = !DILocalVariable(name: "r", scope: !2060, file: !541, line: 149, type: !91)
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
!2085 = distinct !DISubprogram(name: "set_quoting_flags", scope: !541, file: !541, line: 159, type: !2086, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !562, retainedNodes: !2088)
!2086 = !DISubroutineType(types: !2087)
!2087 = !{!85, !2026, !85}
!2088 = !{!2089, !2090, !2091}
!2089 = !DILocalVariable(name: "o", arg: 1, scope: !2085, file: !541, line: 159, type: !2026)
!2090 = !DILocalVariable(name: "i", arg: 2, scope: !2085, file: !541, line: 159, type: !85)
!2091 = !DILocalVariable(name: "r", scope: !2085, file: !541, line: 163, type: !85)
!2092 = !DILocation(line: 0, scope: !2085)
!2093 = !DILocation(line: 161, column: 8, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2085, file: !541, line: 161, column: 7)
!2095 = !DILocation(line: 161, column: 7, scope: !2085)
!2096 = !DILocation(line: 163, column: 14, scope: !2085)
!2097 = !{!2048, !929, i64 4}
!2098 = !DILocation(line: 164, column: 12, scope: !2085)
!2099 = !DILocation(line: 165, column: 3, scope: !2085)
!2100 = distinct !DISubprogram(name: "set_custom_quoting", scope: !541, file: !541, line: 169, type: !2101, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !562, retainedNodes: !2103)
!2101 = !DISubroutineType(types: !2102)
!2102 = !{null, !2026, !138, !138}
!2103 = !{!2104, !2105, !2106}
!2104 = !DILocalVariable(name: "o", arg: 1, scope: !2100, file: !541, line: 169, type: !2026)
!2105 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2100, file: !541, line: 170, type: !138)
!2106 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2100, file: !541, line: 170, type: !138)
!2107 = !DILocation(line: 0, scope: !2100)
!2108 = !DILocation(line: 172, column: 8, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2100, file: !541, line: 172, column: 7)
!2110 = !DILocation(line: 172, column: 7, scope: !2100)
!2111 = !DILocation(line: 174, column: 12, scope: !2100)
!2112 = !DILocation(line: 175, column: 8, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2100, file: !541, line: 175, column: 7)
!2114 = !DILocation(line: 175, column: 19, scope: !2113)
!2115 = !DILocation(line: 176, column: 5, scope: !2113)
!2116 = !DILocation(line: 177, column: 6, scope: !2100)
!2117 = !DILocation(line: 177, column: 17, scope: !2100)
!2118 = !{!2048, !859, i64 40}
!2119 = !DILocation(line: 178, column: 6, scope: !2100)
!2120 = !DILocation(line: 178, column: 18, scope: !2100)
!2121 = !{!2048, !859, i64 48}
!2122 = !DILocation(line: 179, column: 1, scope: !2100)
!2123 = !DISubprogram(name: "abort", scope: !1052, file: !1052, line: 598, type: !496, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2124 = distinct !DISubprogram(name: "quotearg_buffer", scope: !541, file: !541, line: 774, type: !2125, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !562, retainedNodes: !2127)
!2125 = !DISubroutineType(types: !2126)
!2126 = !{!136, !128, !136, !138, !136, !2040}
!2127 = !{!2128, !2129, !2130, !2131, !2132, !2133, !2134, !2135}
!2128 = !DILocalVariable(name: "buffer", arg: 1, scope: !2124, file: !541, line: 774, type: !128)
!2129 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2124, file: !541, line: 774, type: !136)
!2130 = !DILocalVariable(name: "arg", arg: 3, scope: !2124, file: !541, line: 775, type: !138)
!2131 = !DILocalVariable(name: "argsize", arg: 4, scope: !2124, file: !541, line: 775, type: !136)
!2132 = !DILocalVariable(name: "o", arg: 5, scope: !2124, file: !541, line: 776, type: !2040)
!2133 = !DILocalVariable(name: "p", scope: !2124, file: !541, line: 778, type: !2040)
!2134 = !DILocalVariable(name: "saved_errno", scope: !2124, file: !541, line: 779, type: !85)
!2135 = !DILocalVariable(name: "r", scope: !2124, file: !541, line: 780, type: !136)
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
!2147 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !541, file: !541, line: 251, type: !2148, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !562, retainedNodes: !2152)
!2148 = !DISubroutineType(types: !2149)
!2149 = !{!136, !128, !136, !138, !136, !564, !85, !2150, !138, !138}
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !91)
!2152 = !{!2153, !2154, !2155, !2156, !2157, !2158, !2159, !2160, !2161, !2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2173, !2178, !2180, !2183, !2184, !2185, !2186, !2189, !2190, !2192, !2193, !2196, !2200, !2201, !2209, !2212, !2213, !2214}
!2153 = !DILocalVariable(name: "buffer", arg: 1, scope: !2147, file: !541, line: 251, type: !128)
!2154 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2147, file: !541, line: 251, type: !136)
!2155 = !DILocalVariable(name: "arg", arg: 3, scope: !2147, file: !541, line: 252, type: !138)
!2156 = !DILocalVariable(name: "argsize", arg: 4, scope: !2147, file: !541, line: 252, type: !136)
!2157 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2147, file: !541, line: 253, type: !564)
!2158 = !DILocalVariable(name: "flags", arg: 6, scope: !2147, file: !541, line: 253, type: !85)
!2159 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2147, file: !541, line: 254, type: !2150)
!2160 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2147, file: !541, line: 255, type: !138)
!2161 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2147, file: !541, line: 256, type: !138)
!2162 = !DILocalVariable(name: "unibyte_locale", scope: !2147, file: !541, line: 258, type: !234)
!2163 = !DILocalVariable(name: "len", scope: !2147, file: !541, line: 260, type: !136)
!2164 = !DILocalVariable(name: "orig_buffersize", scope: !2147, file: !541, line: 261, type: !136)
!2165 = !DILocalVariable(name: "quote_string", scope: !2147, file: !541, line: 262, type: !138)
!2166 = !DILocalVariable(name: "quote_string_len", scope: !2147, file: !541, line: 263, type: !136)
!2167 = !DILocalVariable(name: "backslash_escapes", scope: !2147, file: !541, line: 264, type: !234)
!2168 = !DILocalVariable(name: "elide_outer_quotes", scope: !2147, file: !541, line: 265, type: !234)
!2169 = !DILocalVariable(name: "encountered_single_quote", scope: !2147, file: !541, line: 266, type: !234)
!2170 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2147, file: !541, line: 267, type: !234)
!2171 = !DILabel(scope: !2147, name: "process_input", file: !541, line: 308)
!2172 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2147, file: !541, line: 309, type: !234)
!2173 = !DILocalVariable(name: "lq", scope: !2174, file: !541, line: 361, type: !138)
!2174 = distinct !DILexicalBlock(scope: !2175, file: !541, line: 361, column: 11)
!2175 = distinct !DILexicalBlock(scope: !2176, file: !541, line: 360, column: 13)
!2176 = distinct !DILexicalBlock(scope: !2177, file: !541, line: 333, column: 7)
!2177 = distinct !DILexicalBlock(scope: !2147, file: !541, line: 312, column: 5)
!2178 = !DILocalVariable(name: "i", scope: !2179, file: !541, line: 395, type: !136)
!2179 = distinct !DILexicalBlock(scope: !2147, file: !541, line: 395, column: 3)
!2180 = !DILocalVariable(name: "is_right_quote", scope: !2181, file: !541, line: 397, type: !234)
!2181 = distinct !DILexicalBlock(scope: !2182, file: !541, line: 396, column: 5)
!2182 = distinct !DILexicalBlock(scope: !2179, file: !541, line: 395, column: 3)
!2183 = !DILocalVariable(name: "escaping", scope: !2181, file: !541, line: 398, type: !234)
!2184 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2181, file: !541, line: 399, type: !234)
!2185 = !DILocalVariable(name: "c", scope: !2181, file: !541, line: 417, type: !140)
!2186 = !DILabel(scope: !2187, name: "c_and_shell_escape", file: !541, line: 502)
!2187 = distinct !DILexicalBlock(scope: !2188, file: !541, line: 478, column: 9)
!2188 = distinct !DILexicalBlock(scope: !2181, file: !541, line: 419, column: 9)
!2189 = !DILabel(scope: !2187, name: "c_escape", file: !541, line: 507)
!2190 = !DILocalVariable(name: "m", scope: !2191, file: !541, line: 598, type: !136)
!2191 = distinct !DILexicalBlock(scope: !2188, file: !541, line: 596, column: 11)
!2192 = !DILocalVariable(name: "printable", scope: !2191, file: !541, line: 600, type: !234)
!2193 = !DILocalVariable(name: "mbs", scope: !2194, file: !541, line: 609, type: !613)
!2194 = distinct !DILexicalBlock(scope: !2195, file: !541, line: 608, column: 15)
!2195 = distinct !DILexicalBlock(scope: !2191, file: !541, line: 602, column: 17)
!2196 = !DILocalVariable(name: "w", scope: !2197, file: !541, line: 618, type: !521)
!2197 = distinct !DILexicalBlock(scope: !2198, file: !541, line: 617, column: 19)
!2198 = distinct !DILexicalBlock(scope: !2199, file: !541, line: 616, column: 17)
!2199 = distinct !DILexicalBlock(scope: !2194, file: !541, line: 616, column: 17)
!2200 = !DILocalVariable(name: "bytes", scope: !2197, file: !541, line: 619, type: !136)
!2201 = !DILocalVariable(name: "j", scope: !2202, file: !541, line: 648, type: !136)
!2202 = distinct !DILexicalBlock(scope: !2203, file: !541, line: 648, column: 29)
!2203 = distinct !DILexicalBlock(scope: !2204, file: !541, line: 647, column: 27)
!2204 = distinct !DILexicalBlock(scope: !2205, file: !541, line: 645, column: 29)
!2205 = distinct !DILexicalBlock(scope: !2206, file: !541, line: 636, column: 23)
!2206 = distinct !DILexicalBlock(scope: !2207, file: !541, line: 628, column: 30)
!2207 = distinct !DILexicalBlock(scope: !2208, file: !541, line: 623, column: 30)
!2208 = distinct !DILexicalBlock(scope: !2197, file: !541, line: 621, column: 25)
!2209 = !DILocalVariable(name: "ilim", scope: !2210, file: !541, line: 674, type: !136)
!2210 = distinct !DILexicalBlock(scope: !2211, file: !541, line: 671, column: 15)
!2211 = distinct !DILexicalBlock(scope: !2191, file: !541, line: 670, column: 17)
!2212 = !DILabel(scope: !2181, name: "store_escape", file: !541, line: 709)
!2213 = !DILabel(scope: !2181, name: "store_c", file: !541, line: 712)
!2214 = !DILabel(scope: !2147, name: "force_outer_quoting_style", file: !541, line: 753)
!2215 = distinct !DIAssignID()
!2216 = distinct !DIAssignID()
!2217 = distinct !DIAssignID()
!2218 = distinct !DIAssignID()
!2219 = distinct !DIAssignID()
!2220 = !DILocation(line: 0, scope: !2194)
!2221 = distinct !DIAssignID()
!2222 = !DILocation(line: 0, scope: !2197)
!2223 = !DILocation(line: 0, scope: !2147)
!2224 = !DILocation(line: 258, column: 25, scope: !2147)
!2225 = !DILocation(line: 258, column: 36, scope: !2147)
!2226 = !DILocation(line: 265, column: 8, scope: !2147)
!2227 = !DILocation(line: 267, column: 3, scope: !2147)
!2228 = !DILocation(line: 261, column: 10, scope: !2147)
!2229 = !DILocation(line: 262, column: 15, scope: !2147)
!2230 = !DILocation(line: 263, column: 10, scope: !2147)
!2231 = !DILocation(line: 264, column: 8, scope: !2147)
!2232 = !DILocation(line: 266, column: 8, scope: !2147)
!2233 = !DILocation(line: 267, column: 8, scope: !2147)
!2234 = !DILocation(line: 308, column: 2, scope: !2147)
!2235 = !DILocation(line: 311, column: 3, scope: !2147)
!2236 = !DILocation(line: 318, column: 11, scope: !2177)
!2237 = !DILocation(line: 318, column: 12, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2177, file: !541, line: 318, column: 11)
!2239 = !DILocation(line: 319, column: 9, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2241, file: !541, line: 319, column: 9)
!2241 = distinct !DILexicalBlock(scope: !2238, file: !541, line: 319, column: 9)
!2242 = !DILocation(line: 319, column: 9, scope: !2241)
!2243 = !DILocation(line: 0, scope: !604, inlinedAt: !2244)
!2244 = distinct !DILocation(line: 357, column: 26, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2246, file: !541, line: 335, column: 11)
!2246 = distinct !DILexicalBlock(scope: !2176, file: !541, line: 334, column: 13)
!2247 = !DILocation(line: 199, column: 29, scope: !604, inlinedAt: !2244)
!2248 = !DILocation(line: 201, column: 19, scope: !2249, inlinedAt: !2244)
!2249 = distinct !DILexicalBlock(scope: !604, file: !541, line: 201, column: 7)
!2250 = !DILocation(line: 201, column: 7, scope: !604, inlinedAt: !2244)
!2251 = !DILocation(line: 229, column: 3, scope: !604, inlinedAt: !2244)
!2252 = !DILocation(line: 230, column: 3, scope: !604, inlinedAt: !2244)
!2253 = !DILocalVariable(name: "ps", arg: 1, scope: !2254, file: !1994, line: 1135, type: !2257)
!2254 = distinct !DISubprogram(name: "mbszero", scope: !1994, file: !1994, line: 1135, type: !2255, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !562, retainedNodes: !2258)
!2255 = !DISubroutineType(types: !2256)
!2256 = !{null, !2257}
!2257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!2258 = !{!2253}
!2259 = !DILocation(line: 0, scope: !2254, inlinedAt: !2260)
!2260 = distinct !DILocation(line: 230, column: 18, scope: !604, inlinedAt: !2244)
!2261 = !DILocalVariable(name: "__dest", arg: 1, scope: !2262, file: !2003, line: 57, type: !129)
!2262 = distinct !DISubprogram(name: "memset", scope: !2003, file: !2003, line: 57, type: !2004, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !562, retainedNodes: !2263)
!2263 = !{!2261, !2264, !2265}
!2264 = !DILocalVariable(name: "__ch", arg: 2, scope: !2262, file: !2003, line: 57, type: !85)
!2265 = !DILocalVariable(name: "__len", arg: 3, scope: !2262, file: !2003, line: 57, type: !136)
!2266 = !DILocation(line: 0, scope: !2262, inlinedAt: !2267)
!2267 = distinct !DILocation(line: 1137, column: 3, scope: !2254, inlinedAt: !2260)
!2268 = !DILocation(line: 59, column: 10, scope: !2262, inlinedAt: !2267)
!2269 = !DILocation(line: 231, column: 7, scope: !2270, inlinedAt: !2244)
!2270 = distinct !DILexicalBlock(scope: !604, file: !541, line: 231, column: 7)
!2271 = !DILocation(line: 231, column: 40, scope: !2270, inlinedAt: !2244)
!2272 = !DILocation(line: 231, column: 45, scope: !2270, inlinedAt: !2244)
!2273 = !DILocation(line: 235, column: 1, scope: !604, inlinedAt: !2244)
!2274 = !DILocation(line: 0, scope: !604, inlinedAt: !2275)
!2275 = distinct !DILocation(line: 358, column: 27, scope: !2245)
!2276 = !DILocation(line: 199, column: 29, scope: !604, inlinedAt: !2275)
!2277 = !DILocation(line: 201, column: 19, scope: !2249, inlinedAt: !2275)
!2278 = !DILocation(line: 201, column: 7, scope: !604, inlinedAt: !2275)
!2279 = !DILocation(line: 229, column: 3, scope: !604, inlinedAt: !2275)
!2280 = !DILocation(line: 230, column: 3, scope: !604, inlinedAt: !2275)
!2281 = !DILocation(line: 0, scope: !2254, inlinedAt: !2282)
!2282 = distinct !DILocation(line: 230, column: 18, scope: !604, inlinedAt: !2275)
!2283 = !DILocation(line: 0, scope: !2262, inlinedAt: !2284)
!2284 = distinct !DILocation(line: 1137, column: 3, scope: !2254, inlinedAt: !2282)
!2285 = !DILocation(line: 59, column: 10, scope: !2262, inlinedAt: !2284)
!2286 = !DILocation(line: 231, column: 7, scope: !2270, inlinedAt: !2275)
!2287 = !DILocation(line: 231, column: 40, scope: !2270, inlinedAt: !2275)
!2288 = !DILocation(line: 231, column: 45, scope: !2270, inlinedAt: !2275)
!2289 = !DILocation(line: 235, column: 1, scope: !604, inlinedAt: !2275)
!2290 = !DILocation(line: 360, column: 14, scope: !2175)
!2291 = !DILocation(line: 360, column: 13, scope: !2176)
!2292 = !DILocation(line: 0, scope: !2174)
!2293 = !DILocation(line: 361, column: 45, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2174, file: !541, line: 361, column: 11)
!2295 = !DILocation(line: 361, column: 11, scope: !2174)
!2296 = !DILocation(line: 362, column: 13, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2298, file: !541, line: 362, column: 13)
!2298 = distinct !DILexicalBlock(scope: !2294, file: !541, line: 362, column: 13)
!2299 = !DILocation(line: 362, column: 13, scope: !2298)
!2300 = !DILocation(line: 361, column: 52, scope: !2294)
!2301 = distinct !{!2301, !2295, !2302, !975}
!2302 = !DILocation(line: 362, column: 13, scope: !2174)
!2303 = !DILocation(line: 260, column: 10, scope: !2147)
!2304 = !DILocation(line: 365, column: 28, scope: !2176)
!2305 = !DILocation(line: 367, column: 7, scope: !2177)
!2306 = !DILocation(line: 370, column: 7, scope: !2177)
!2307 = !DILocation(line: 373, column: 7, scope: !2177)
!2308 = !DILocation(line: 376, column: 12, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2177, file: !541, line: 376, column: 11)
!2310 = !DILocation(line: 376, column: 11, scope: !2177)
!2311 = !DILocation(line: 381, column: 12, scope: !2312)
!2312 = distinct !DILexicalBlock(scope: !2177, file: !541, line: 381, column: 11)
!2313 = !DILocation(line: 381, column: 11, scope: !2177)
!2314 = !DILocation(line: 382, column: 9, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2316, file: !541, line: 382, column: 9)
!2316 = distinct !DILexicalBlock(scope: !2312, file: !541, line: 382, column: 9)
!2317 = !DILocation(line: 382, column: 9, scope: !2316)
!2318 = !DILocation(line: 389, column: 7, scope: !2177)
!2319 = !DILocation(line: 392, column: 7, scope: !2177)
!2320 = !DILocation(line: 0, scope: !2179)
!2321 = !DILocation(line: 395, column: 8, scope: !2179)
!2322 = !DILocation(line: 309, column: 8, scope: !2147)
!2323 = !DILocation(line: 395, scope: !2179)
!2324 = !DILocation(line: 395, column: 34, scope: !2182)
!2325 = !DILocation(line: 395, column: 26, scope: !2182)
!2326 = !DILocation(line: 395, column: 48, scope: !2182)
!2327 = !DILocation(line: 395, column: 55, scope: !2182)
!2328 = !DILocation(line: 395, column: 3, scope: !2179)
!2329 = !DILocation(line: 395, column: 67, scope: !2182)
!2330 = !DILocation(line: 0, scope: !2181)
!2331 = !DILocation(line: 402, column: 11, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2181, file: !541, line: 401, column: 11)
!2333 = !DILocation(line: 404, column: 17, scope: !2332)
!2334 = !DILocation(line: 405, column: 39, scope: !2332)
!2335 = !DILocation(line: 409, column: 32, scope: !2332)
!2336 = !DILocation(line: 405, column: 19, scope: !2332)
!2337 = !DILocation(line: 405, column: 15, scope: !2332)
!2338 = !DILocation(line: 410, column: 11, scope: !2332)
!2339 = !DILocation(line: 410, column: 25, scope: !2332)
!2340 = !DILocalVariable(name: "__s1", arg: 1, scope: !2341, file: !941, line: 974, type: !1076)
!2341 = distinct !DISubprogram(name: "memeq", scope: !941, file: !941, line: 974, type: !1963, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !562, retainedNodes: !2342)
!2342 = !{!2340, !2343, !2344}
!2343 = !DILocalVariable(name: "__s2", arg: 2, scope: !2341, file: !941, line: 974, type: !1076)
!2344 = !DILocalVariable(name: "__n", arg: 3, scope: !2341, file: !941, line: 974, type: !136)
!2345 = !DILocation(line: 0, scope: !2341, inlinedAt: !2346)
!2346 = distinct !DILocation(line: 410, column: 14, scope: !2332)
!2347 = !DILocation(line: 976, column: 11, scope: !2341, inlinedAt: !2346)
!2348 = !DILocation(line: 976, column: 10, scope: !2341, inlinedAt: !2346)
!2349 = !DILocation(line: 401, column: 11, scope: !2181)
!2350 = !DILocation(line: 417, column: 25, scope: !2181)
!2351 = !DILocation(line: 418, column: 7, scope: !2181)
!2352 = !DILocation(line: 421, column: 15, scope: !2188)
!2353 = !DILocation(line: 423, column: 15, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2355, file: !541, line: 423, column: 15)
!2355 = distinct !DILexicalBlock(scope: !2356, file: !541, line: 422, column: 13)
!2356 = distinct !DILexicalBlock(scope: !2188, file: !541, line: 421, column: 15)
!2357 = !DILocation(line: 423, column: 15, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2354, file: !541, line: 423, column: 15)
!2359 = !DILocation(line: 423, column: 15, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2361, file: !541, line: 423, column: 15)
!2361 = distinct !DILexicalBlock(scope: !2362, file: !541, line: 423, column: 15)
!2362 = distinct !DILexicalBlock(scope: !2358, file: !541, line: 423, column: 15)
!2363 = !DILocation(line: 423, column: 15, scope: !2361)
!2364 = !DILocation(line: 423, column: 15, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !2366, file: !541, line: 423, column: 15)
!2366 = distinct !DILexicalBlock(scope: !2362, file: !541, line: 423, column: 15)
!2367 = !DILocation(line: 423, column: 15, scope: !2366)
!2368 = !DILocation(line: 423, column: 15, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2370, file: !541, line: 423, column: 15)
!2370 = distinct !DILexicalBlock(scope: !2362, file: !541, line: 423, column: 15)
!2371 = !DILocation(line: 423, column: 15, scope: !2370)
!2372 = !DILocation(line: 423, column: 15, scope: !2362)
!2373 = !DILocation(line: 423, column: 15, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2375, file: !541, line: 423, column: 15)
!2375 = distinct !DILexicalBlock(scope: !2354, file: !541, line: 423, column: 15)
!2376 = !DILocation(line: 423, column: 15, scope: !2375)
!2377 = !DILocation(line: 431, column: 19, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !2355, file: !541, line: 430, column: 19)
!2379 = !DILocation(line: 431, column: 24, scope: !2378)
!2380 = !DILocation(line: 431, column: 28, scope: !2378)
!2381 = !DILocation(line: 431, column: 38, scope: !2378)
!2382 = !DILocation(line: 431, column: 48, scope: !2378)
!2383 = !DILocation(line: 431, column: 59, scope: !2378)
!2384 = !DILocation(line: 433, column: 19, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2386, file: !541, line: 433, column: 19)
!2386 = distinct !DILexicalBlock(scope: !2387, file: !541, line: 433, column: 19)
!2387 = distinct !DILexicalBlock(scope: !2378, file: !541, line: 432, column: 17)
!2388 = !DILocation(line: 433, column: 19, scope: !2386)
!2389 = !DILocation(line: 434, column: 19, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2391, file: !541, line: 434, column: 19)
!2391 = distinct !DILexicalBlock(scope: !2387, file: !541, line: 434, column: 19)
!2392 = !DILocation(line: 434, column: 19, scope: !2391)
!2393 = !DILocation(line: 435, column: 17, scope: !2387)
!2394 = !DILocation(line: 442, column: 20, scope: !2356)
!2395 = !DILocation(line: 447, column: 11, scope: !2188)
!2396 = !DILocation(line: 450, column: 19, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2188, file: !541, line: 448, column: 13)
!2398 = !DILocation(line: 456, column: 19, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2397, file: !541, line: 455, column: 19)
!2400 = !DILocation(line: 456, column: 24, scope: !2399)
!2401 = !DILocation(line: 456, column: 28, scope: !2399)
!2402 = !DILocation(line: 456, column: 38, scope: !2399)
!2403 = !DILocation(line: 456, column: 41, scope: !2399)
!2404 = !DILocation(line: 456, column: 52, scope: !2399)
!2405 = !DILocation(line: 455, column: 19, scope: !2397)
!2406 = !DILocation(line: 457, column: 25, scope: !2399)
!2407 = !DILocation(line: 457, column: 17, scope: !2399)
!2408 = !DILocation(line: 464, column: 25, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2399, file: !541, line: 458, column: 19)
!2410 = !DILocation(line: 468, column: 21, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2412, file: !541, line: 468, column: 21)
!2412 = distinct !DILexicalBlock(scope: !2409, file: !541, line: 468, column: 21)
!2413 = !DILocation(line: 468, column: 21, scope: !2412)
!2414 = !DILocation(line: 469, column: 21, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2416, file: !541, line: 469, column: 21)
!2416 = distinct !DILexicalBlock(scope: !2409, file: !541, line: 469, column: 21)
!2417 = !DILocation(line: 469, column: 21, scope: !2416)
!2418 = !DILocation(line: 470, column: 21, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !2420, file: !541, line: 470, column: 21)
!2420 = distinct !DILexicalBlock(scope: !2409, file: !541, line: 470, column: 21)
!2421 = !DILocation(line: 470, column: 21, scope: !2420)
!2422 = !DILocation(line: 471, column: 21, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2424, file: !541, line: 471, column: 21)
!2424 = distinct !DILexicalBlock(scope: !2409, file: !541, line: 471, column: 21)
!2425 = !DILocation(line: 471, column: 21, scope: !2424)
!2426 = !DILocation(line: 472, column: 21, scope: !2409)
!2427 = !DILocation(line: 482, column: 33, scope: !2187)
!2428 = !DILocation(line: 483, column: 33, scope: !2187)
!2429 = !DILocation(line: 485, column: 33, scope: !2187)
!2430 = !DILocation(line: 486, column: 33, scope: !2187)
!2431 = !DILocation(line: 487, column: 33, scope: !2187)
!2432 = !DILocation(line: 490, column: 17, scope: !2187)
!2433 = !DILocation(line: 492, column: 21, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2435, file: !541, line: 491, column: 15)
!2435 = distinct !DILexicalBlock(scope: !2187, file: !541, line: 490, column: 17)
!2436 = !DILocation(line: 499, column: 35, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2187, file: !541, line: 499, column: 17)
!2438 = !DILocation(line: 499, column: 57, scope: !2437)
!2439 = !DILocation(line: 0, scope: !2187)
!2440 = !DILocation(line: 502, column: 11, scope: !2187)
!2441 = !DILocation(line: 504, column: 17, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2187, file: !541, line: 503, column: 17)
!2443 = !DILocation(line: 507, column: 11, scope: !2187)
!2444 = !DILocation(line: 508, column: 17, scope: !2187)
!2445 = !DILocation(line: 517, column: 15, scope: !2188)
!2446 = !DILocation(line: 517, column: 40, scope: !2447)
!2447 = distinct !DILexicalBlock(scope: !2188, file: !541, line: 517, column: 15)
!2448 = !DILocation(line: 517, column: 47, scope: !2447)
!2449 = !DILocation(line: 517, column: 18, scope: !2447)
!2450 = !DILocation(line: 521, column: 17, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2188, file: !541, line: 521, column: 15)
!2452 = !DILocation(line: 521, column: 15, scope: !2188)
!2453 = !DILocation(line: 525, column: 11, scope: !2188)
!2454 = !DILocation(line: 537, column: 15, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2188, file: !541, line: 536, column: 15)
!2456 = !DILocation(line: 544, column: 15, scope: !2188)
!2457 = !DILocation(line: 546, column: 19, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2459, file: !541, line: 545, column: 13)
!2459 = distinct !DILexicalBlock(scope: !2188, file: !541, line: 544, column: 15)
!2460 = !DILocation(line: 549, column: 19, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2458, file: !541, line: 549, column: 19)
!2462 = !DILocation(line: 549, column: 30, scope: !2461)
!2463 = !DILocation(line: 558, column: 15, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2465, file: !541, line: 558, column: 15)
!2465 = distinct !DILexicalBlock(scope: !2458, file: !541, line: 558, column: 15)
!2466 = !DILocation(line: 558, column: 15, scope: !2465)
!2467 = !DILocation(line: 559, column: 15, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2469, file: !541, line: 559, column: 15)
!2469 = distinct !DILexicalBlock(scope: !2458, file: !541, line: 559, column: 15)
!2470 = !DILocation(line: 559, column: 15, scope: !2469)
!2471 = !DILocation(line: 560, column: 15, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2473, file: !541, line: 560, column: 15)
!2473 = distinct !DILexicalBlock(scope: !2458, file: !541, line: 560, column: 15)
!2474 = !DILocation(line: 560, column: 15, scope: !2473)
!2475 = !DILocation(line: 562, column: 13, scope: !2458)
!2476 = !DILocation(line: 602, column: 17, scope: !2191)
!2477 = !DILocation(line: 0, scope: !2191)
!2478 = !DILocation(line: 605, column: 29, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !2195, file: !541, line: 603, column: 15)
!2480 = !DILocation(line: 605, column: 27, scope: !2479)
!2481 = !DILocation(line: 606, column: 15, scope: !2479)
!2482 = !DILocation(line: 609, column: 17, scope: !2194)
!2483 = !DILocation(line: 0, scope: !2254, inlinedAt: !2484)
!2484 = distinct !DILocation(line: 609, column: 32, scope: !2194)
!2485 = !DILocation(line: 0, scope: !2262, inlinedAt: !2486)
!2486 = distinct !DILocation(line: 1137, column: 3, scope: !2254, inlinedAt: !2484)
!2487 = !DILocation(line: 59, column: 10, scope: !2262, inlinedAt: !2486)
!2488 = !DILocation(line: 613, column: 29, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2194, file: !541, line: 613, column: 21)
!2490 = !DILocation(line: 613, column: 21, scope: !2194)
!2491 = !DILocation(line: 614, column: 29, scope: !2489)
!2492 = !DILocation(line: 614, column: 19, scope: !2489)
!2493 = !DILocation(line: 618, column: 21, scope: !2197)
!2494 = !DILocation(line: 620, column: 54, scope: !2197)
!2495 = !DILocation(line: 619, column: 36, scope: !2197)
!2496 = !DILocation(line: 621, column: 25, scope: !2197)
!2497 = !DILocation(line: 631, column: 38, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2206, file: !541, line: 629, column: 23)
!2499 = !DILocation(line: 631, column: 48, scope: !2498)
!2500 = !DILocation(line: 626, column: 25, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !2207, file: !541, line: 624, column: 23)
!2502 = !DILocation(line: 631, column: 51, scope: !2498)
!2503 = !DILocation(line: 631, column: 25, scope: !2498)
!2504 = !DILocation(line: 632, column: 28, scope: !2498)
!2505 = !DILocation(line: 631, column: 34, scope: !2498)
!2506 = distinct !{!2506, !2503, !2504, !975}
!2507 = !DILocation(line: 0, scope: !2202)
!2508 = !DILocation(line: 646, column: 29, scope: !2204)
!2509 = !DILocation(line: 649, column: 39, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2202, file: !541, line: 648, column: 29)
!2511 = !DILocation(line: 649, column: 31, scope: !2510)
!2512 = !DILocation(line: 648, column: 60, scope: !2510)
!2513 = !DILocation(line: 648, column: 50, scope: !2510)
!2514 = !DILocation(line: 648, column: 29, scope: !2202)
!2515 = distinct !{!2515, !2514, !2516, !975}
!2516 = !DILocation(line: 654, column: 33, scope: !2202)
!2517 = !DILocation(line: 657, column: 43, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2205, file: !541, line: 657, column: 29)
!2519 = !DILocalVariable(name: "wc", arg: 1, scope: !2520, file: !2521, line: 865, type: !2524)
!2520 = distinct !DISubprogram(name: "c32isprint", scope: !2521, file: !2521, line: 865, type: !2522, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !562, retainedNodes: !2526)
!2521 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2522 = !DISubroutineType(types: !2523)
!2523 = !{!85, !2524}
!2524 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2525, line: 20, baseType: !91)
!2525 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2526 = !{!2519}
!2527 = !DILocation(line: 0, scope: !2520, inlinedAt: !2528)
!2528 = distinct !DILocation(line: 657, column: 31, scope: !2518)
!2529 = !DILocation(line: 871, column: 10, scope: !2520, inlinedAt: !2528)
!2530 = !DILocation(line: 657, column: 31, scope: !2518)
!2531 = !DILocation(line: 664, column: 23, scope: !2197)
!2532 = !DILocation(line: 665, column: 19, scope: !2198)
!2533 = !DILocation(line: 666, column: 15, scope: !2195)
!2534 = !DILocation(line: 0, scope: !2195)
!2535 = !DILocation(line: 670, column: 19, scope: !2211)
!2536 = !DILocation(line: 670, column: 23, scope: !2211)
!2537 = !DILocation(line: 674, column: 33, scope: !2210)
!2538 = !DILocation(line: 0, scope: !2210)
!2539 = !DILocation(line: 676, column: 17, scope: !2210)
!2540 = !DILocation(line: 398, column: 12, scope: !2181)
!2541 = !DILocation(line: 678, column: 43, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !2543, file: !541, line: 678, column: 25)
!2543 = distinct !DILexicalBlock(scope: !2544, file: !541, line: 677, column: 19)
!2544 = distinct !DILexicalBlock(scope: !2545, file: !541, line: 676, column: 17)
!2545 = distinct !DILexicalBlock(scope: !2210, file: !541, line: 676, column: 17)
!2546 = !DILocation(line: 680, column: 25, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2548, file: !541, line: 680, column: 25)
!2548 = distinct !DILexicalBlock(scope: !2542, file: !541, line: 679, column: 23)
!2549 = !DILocation(line: 680, column: 25, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2547, file: !541, line: 680, column: 25)
!2551 = !DILocation(line: 680, column: 25, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2553, file: !541, line: 680, column: 25)
!2553 = distinct !DILexicalBlock(scope: !2554, file: !541, line: 680, column: 25)
!2554 = distinct !DILexicalBlock(scope: !2550, file: !541, line: 680, column: 25)
!2555 = !DILocation(line: 680, column: 25, scope: !2553)
!2556 = !DILocation(line: 680, column: 25, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2558, file: !541, line: 680, column: 25)
!2558 = distinct !DILexicalBlock(scope: !2554, file: !541, line: 680, column: 25)
!2559 = !DILocation(line: 680, column: 25, scope: !2558)
!2560 = !DILocation(line: 680, column: 25, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2562, file: !541, line: 680, column: 25)
!2562 = distinct !DILexicalBlock(scope: !2554, file: !541, line: 680, column: 25)
!2563 = !DILocation(line: 680, column: 25, scope: !2562)
!2564 = !DILocation(line: 680, column: 25, scope: !2554)
!2565 = !DILocation(line: 680, column: 25, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2567, file: !541, line: 680, column: 25)
!2567 = distinct !DILexicalBlock(scope: !2547, file: !541, line: 680, column: 25)
!2568 = !DILocation(line: 680, column: 25, scope: !2567)
!2569 = !DILocation(line: 681, column: 25, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !2571, file: !541, line: 681, column: 25)
!2571 = distinct !DILexicalBlock(scope: !2548, file: !541, line: 681, column: 25)
!2572 = !DILocation(line: 681, column: 25, scope: !2571)
!2573 = !DILocation(line: 682, column: 25, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2575, file: !541, line: 682, column: 25)
!2575 = distinct !DILexicalBlock(scope: !2548, file: !541, line: 682, column: 25)
!2576 = !DILocation(line: 682, column: 25, scope: !2575)
!2577 = !DILocation(line: 683, column: 38, scope: !2548)
!2578 = !DILocation(line: 683, column: 33, scope: !2548)
!2579 = !DILocation(line: 684, column: 23, scope: !2548)
!2580 = !DILocation(line: 685, column: 30, scope: !2581)
!2581 = distinct !DILexicalBlock(scope: !2542, file: !541, line: 685, column: 30)
!2582 = !DILocation(line: 685, column: 30, scope: !2542)
!2583 = !DILocation(line: 687, column: 25, scope: !2584)
!2584 = distinct !DILexicalBlock(scope: !2585, file: !541, line: 687, column: 25)
!2585 = distinct !DILexicalBlock(scope: !2586, file: !541, line: 687, column: 25)
!2586 = distinct !DILexicalBlock(scope: !2581, file: !541, line: 686, column: 23)
!2587 = !DILocation(line: 687, column: 25, scope: !2585)
!2588 = !DILocation(line: 689, column: 23, scope: !2586)
!2589 = !DILocation(line: 690, column: 35, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2543, file: !541, line: 690, column: 25)
!2591 = !DILocation(line: 690, column: 30, scope: !2590)
!2592 = !DILocation(line: 690, column: 25, scope: !2543)
!2593 = !DILocation(line: 692, column: 21, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !2595, file: !541, line: 692, column: 21)
!2595 = distinct !DILexicalBlock(scope: !2543, file: !541, line: 692, column: 21)
!2596 = !DILocation(line: 692, column: 21, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2598, file: !541, line: 692, column: 21)
!2598 = distinct !DILexicalBlock(scope: !2599, file: !541, line: 692, column: 21)
!2599 = distinct !DILexicalBlock(scope: !2594, file: !541, line: 692, column: 21)
!2600 = !DILocation(line: 692, column: 21, scope: !2598)
!2601 = !DILocation(line: 692, column: 21, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !2603, file: !541, line: 692, column: 21)
!2603 = distinct !DILexicalBlock(scope: !2599, file: !541, line: 692, column: 21)
!2604 = !DILocation(line: 692, column: 21, scope: !2603)
!2605 = !DILocation(line: 692, column: 21, scope: !2599)
!2606 = !DILocation(line: 0, scope: !2543)
!2607 = !DILocation(line: 693, column: 21, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2609, file: !541, line: 693, column: 21)
!2609 = distinct !DILexicalBlock(scope: !2543, file: !541, line: 693, column: 21)
!2610 = !DILocation(line: 693, column: 21, scope: !2609)
!2611 = !DILocation(line: 694, column: 25, scope: !2543)
!2612 = !DILocation(line: 676, column: 17, scope: !2544)
!2613 = distinct !{!2613, !2614, !2615}
!2614 = !DILocation(line: 676, column: 17, scope: !2545)
!2615 = !DILocation(line: 695, column: 19, scope: !2545)
!2616 = !DILocation(line: 409, column: 30, scope: !2332)
!2617 = !DILocation(line: 702, column: 34, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2181, file: !541, line: 702, column: 11)
!2619 = !DILocation(line: 704, column: 14, scope: !2618)
!2620 = !DILocation(line: 705, column: 14, scope: !2618)
!2621 = !DILocation(line: 705, column: 35, scope: !2618)
!2622 = !DILocation(line: 705, column: 17, scope: !2618)
!2623 = !DILocation(line: 705, column: 47, scope: !2618)
!2624 = !DILocation(line: 705, column: 65, scope: !2618)
!2625 = !DILocation(line: 706, column: 11, scope: !2618)
!2626 = !DILocation(line: 702, column: 11, scope: !2181)
!2627 = !DILocation(line: 395, column: 15, scope: !2179)
!2628 = !DILocation(line: 709, column: 5, scope: !2181)
!2629 = !DILocation(line: 710, column: 7, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2181, file: !541, line: 710, column: 7)
!2631 = !DILocation(line: 710, column: 7, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !2630, file: !541, line: 710, column: 7)
!2633 = !DILocation(line: 710, column: 7, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2635, file: !541, line: 710, column: 7)
!2635 = distinct !DILexicalBlock(scope: !2636, file: !541, line: 710, column: 7)
!2636 = distinct !DILexicalBlock(scope: !2632, file: !541, line: 710, column: 7)
!2637 = !DILocation(line: 710, column: 7, scope: !2635)
!2638 = !DILocation(line: 710, column: 7, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2640, file: !541, line: 710, column: 7)
!2640 = distinct !DILexicalBlock(scope: !2636, file: !541, line: 710, column: 7)
!2641 = !DILocation(line: 710, column: 7, scope: !2640)
!2642 = !DILocation(line: 710, column: 7, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2644, file: !541, line: 710, column: 7)
!2644 = distinct !DILexicalBlock(scope: !2636, file: !541, line: 710, column: 7)
!2645 = !DILocation(line: 710, column: 7, scope: !2644)
!2646 = !DILocation(line: 710, column: 7, scope: !2636)
!2647 = !DILocation(line: 710, column: 7, scope: !2648)
!2648 = distinct !DILexicalBlock(scope: !2649, file: !541, line: 710, column: 7)
!2649 = distinct !DILexicalBlock(scope: !2630, file: !541, line: 710, column: 7)
!2650 = !DILocation(line: 710, column: 7, scope: !2649)
!2651 = !DILocation(line: 712, column: 5, scope: !2181)
!2652 = !DILocation(line: 713, column: 7, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2654, file: !541, line: 713, column: 7)
!2654 = distinct !DILexicalBlock(scope: !2181, file: !541, line: 713, column: 7)
!2655 = !DILocation(line: 417, column: 21, scope: !2181)
!2656 = !DILocation(line: 713, column: 7, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2658, file: !541, line: 713, column: 7)
!2658 = distinct !DILexicalBlock(scope: !2659, file: !541, line: 713, column: 7)
!2659 = distinct !DILexicalBlock(scope: !2653, file: !541, line: 713, column: 7)
!2660 = !DILocation(line: 713, column: 7, scope: !2658)
!2661 = !DILocation(line: 713, column: 7, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2663, file: !541, line: 713, column: 7)
!2663 = distinct !DILexicalBlock(scope: !2659, file: !541, line: 713, column: 7)
!2664 = !DILocation(line: 713, column: 7, scope: !2663)
!2665 = !DILocation(line: 713, column: 7, scope: !2659)
!2666 = !DILocation(line: 714, column: 7, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2668, file: !541, line: 714, column: 7)
!2668 = distinct !DILexicalBlock(scope: !2181, file: !541, line: 714, column: 7)
!2669 = !DILocation(line: 714, column: 7, scope: !2668)
!2670 = !DILocation(line: 716, column: 13, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2181, file: !541, line: 716, column: 11)
!2672 = !DILocation(line: 716, column: 11, scope: !2181)
!2673 = !DILocation(line: 718, column: 5, scope: !2182)
!2674 = !DILocation(line: 395, column: 82, scope: !2182)
!2675 = !DILocation(line: 395, column: 3, scope: !2182)
!2676 = distinct !{!2676, !2328, !2677, !975}
!2677 = !DILocation(line: 718, column: 5, scope: !2179)
!2678 = !DILocation(line: 720, column: 11, scope: !2679)
!2679 = distinct !DILexicalBlock(scope: !2147, file: !541, line: 720, column: 7)
!2680 = !DILocation(line: 720, column: 16, scope: !2679)
!2681 = !DILocation(line: 728, column: 51, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2147, file: !541, line: 728, column: 7)
!2683 = !DILocation(line: 731, column: 11, scope: !2684)
!2684 = distinct !DILexicalBlock(scope: !2685, file: !541, line: 731, column: 11)
!2685 = distinct !DILexicalBlock(scope: !2682, file: !541, line: 730, column: 5)
!2686 = !DILocation(line: 731, column: 11, scope: !2685)
!2687 = !DILocation(line: 732, column: 16, scope: !2684)
!2688 = !DILocation(line: 732, column: 9, scope: !2684)
!2689 = !DILocation(line: 736, column: 18, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !2684, file: !541, line: 736, column: 16)
!2691 = !DILocation(line: 736, column: 29, scope: !2690)
!2692 = !DILocation(line: 745, column: 7, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2147, file: !541, line: 745, column: 7)
!2694 = !DILocation(line: 745, column: 20, scope: !2693)
!2695 = !DILocation(line: 746, column: 12, scope: !2696)
!2696 = distinct !DILexicalBlock(scope: !2697, file: !541, line: 746, column: 5)
!2697 = distinct !DILexicalBlock(scope: !2693, file: !541, line: 746, column: 5)
!2698 = !DILocation(line: 746, column: 5, scope: !2697)
!2699 = !DILocation(line: 747, column: 7, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2701, file: !541, line: 747, column: 7)
!2701 = distinct !DILexicalBlock(scope: !2696, file: !541, line: 747, column: 7)
!2702 = !DILocation(line: 747, column: 7, scope: !2701)
!2703 = !DILocation(line: 746, column: 39, scope: !2696)
!2704 = distinct !{!2704, !2698, !2705, !975}
!2705 = !DILocation(line: 747, column: 7, scope: !2697)
!2706 = !DILocation(line: 749, column: 11, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2147, file: !541, line: 749, column: 7)
!2708 = !DILocation(line: 749, column: 7, scope: !2147)
!2709 = !DILocation(line: 750, column: 5, scope: !2707)
!2710 = !DILocation(line: 750, column: 17, scope: !2707)
!2711 = !DILocation(line: 753, column: 2, scope: !2147)
!2712 = !DILocation(line: 756, column: 51, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !2147, file: !541, line: 756, column: 7)
!2714 = !DILocation(line: 756, column: 21, scope: !2713)
!2715 = !DILocation(line: 760, column: 42, scope: !2147)
!2716 = !DILocation(line: 758, column: 10, scope: !2147)
!2717 = !DILocation(line: 758, column: 3, scope: !2147)
!2718 = !DILocation(line: 762, column: 1, scope: !2147)
!2719 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1052, file: !1052, line: 98, type: !2720, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2720 = !DISubroutineType(types: !2721)
!2721 = !{!136}
!2722 = !DISubprogram(name: "strlen", scope: !1048, file: !1048, line: 407, type: !2723, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2723 = !DISubroutineType(types: !2724)
!2724 = !{!134, !138}
!2725 = !DISubprogram(name: "iswprint", scope: !2726, file: !2726, line: 120, type: !2522, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2726 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2727 = distinct !DISubprogram(name: "quotearg_alloc", scope: !541, file: !541, line: 788, type: !2728, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !562, retainedNodes: !2730)
!2728 = !DISubroutineType(types: !2729)
!2729 = !{!128, !138, !136, !2040}
!2730 = !{!2731, !2732, !2733}
!2731 = !DILocalVariable(name: "arg", arg: 1, scope: !2727, file: !541, line: 788, type: !138)
!2732 = !DILocalVariable(name: "argsize", arg: 2, scope: !2727, file: !541, line: 788, type: !136)
!2733 = !DILocalVariable(name: "o", arg: 3, scope: !2727, file: !541, line: 789, type: !2040)
!2734 = !DILocation(line: 0, scope: !2727)
!2735 = !DILocalVariable(name: "arg", arg: 1, scope: !2736, file: !541, line: 801, type: !138)
!2736 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !541, file: !541, line: 801, type: !2737, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !562, retainedNodes: !2739)
!2737 = !DISubroutineType(types: !2738)
!2738 = !{!128, !138, !136, !782, !2040}
!2739 = !{!2735, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747}
!2740 = !DILocalVariable(name: "argsize", arg: 2, scope: !2736, file: !541, line: 801, type: !136)
!2741 = !DILocalVariable(name: "size", arg: 3, scope: !2736, file: !541, line: 801, type: !782)
!2742 = !DILocalVariable(name: "o", arg: 4, scope: !2736, file: !541, line: 802, type: !2040)
!2743 = !DILocalVariable(name: "p", scope: !2736, file: !541, line: 804, type: !2040)
!2744 = !DILocalVariable(name: "saved_errno", scope: !2736, file: !541, line: 805, type: !85)
!2745 = !DILocalVariable(name: "flags", scope: !2736, file: !541, line: 807, type: !85)
!2746 = !DILocalVariable(name: "bufsize", scope: !2736, file: !541, line: 808, type: !136)
!2747 = !DILocalVariable(name: "buf", scope: !2736, file: !541, line: 812, type: !128)
!2748 = !DILocation(line: 0, scope: !2736, inlinedAt: !2749)
!2749 = distinct !DILocation(line: 791, column: 10, scope: !2727)
!2750 = !DILocation(line: 804, column: 37, scope: !2736, inlinedAt: !2749)
!2751 = !DILocation(line: 805, column: 21, scope: !2736, inlinedAt: !2749)
!2752 = !DILocation(line: 807, column: 18, scope: !2736, inlinedAt: !2749)
!2753 = !DILocation(line: 807, column: 24, scope: !2736, inlinedAt: !2749)
!2754 = !DILocation(line: 808, column: 72, scope: !2736, inlinedAt: !2749)
!2755 = !DILocation(line: 809, column: 56, scope: !2736, inlinedAt: !2749)
!2756 = !DILocation(line: 810, column: 49, scope: !2736, inlinedAt: !2749)
!2757 = !DILocation(line: 811, column: 49, scope: !2736, inlinedAt: !2749)
!2758 = !DILocation(line: 808, column: 20, scope: !2736, inlinedAt: !2749)
!2759 = !DILocation(line: 811, column: 62, scope: !2736, inlinedAt: !2749)
!2760 = !DILocation(line: 812, column: 15, scope: !2736, inlinedAt: !2749)
!2761 = !DILocation(line: 813, column: 60, scope: !2736, inlinedAt: !2749)
!2762 = !DILocation(line: 815, column: 32, scope: !2736, inlinedAt: !2749)
!2763 = !DILocation(line: 815, column: 47, scope: !2736, inlinedAt: !2749)
!2764 = !DILocation(line: 813, column: 3, scope: !2736, inlinedAt: !2749)
!2765 = !DILocation(line: 816, column: 9, scope: !2736, inlinedAt: !2749)
!2766 = !DILocation(line: 791, column: 3, scope: !2727)
!2767 = !DILocation(line: 0, scope: !2736)
!2768 = !DILocation(line: 804, column: 37, scope: !2736)
!2769 = !DILocation(line: 805, column: 21, scope: !2736)
!2770 = !DILocation(line: 807, column: 18, scope: !2736)
!2771 = !DILocation(line: 807, column: 27, scope: !2736)
!2772 = !DILocation(line: 807, column: 24, scope: !2736)
!2773 = !DILocation(line: 808, column: 72, scope: !2736)
!2774 = !DILocation(line: 809, column: 56, scope: !2736)
!2775 = !DILocation(line: 810, column: 49, scope: !2736)
!2776 = !DILocation(line: 811, column: 49, scope: !2736)
!2777 = !DILocation(line: 808, column: 20, scope: !2736)
!2778 = !DILocation(line: 811, column: 62, scope: !2736)
!2779 = !DILocation(line: 812, column: 15, scope: !2736)
!2780 = !DILocation(line: 813, column: 60, scope: !2736)
!2781 = !DILocation(line: 815, column: 32, scope: !2736)
!2782 = !DILocation(line: 815, column: 47, scope: !2736)
!2783 = !DILocation(line: 813, column: 3, scope: !2736)
!2784 = !DILocation(line: 816, column: 9, scope: !2736)
!2785 = !DILocation(line: 817, column: 7, scope: !2736)
!2786 = !DILocation(line: 818, column: 11, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2736, file: !541, line: 817, column: 7)
!2788 = !DILocation(line: 818, column: 5, scope: !2787)
!2789 = !DILocation(line: 819, column: 3, scope: !2736)
!2790 = distinct !DISubprogram(name: "quotearg_free", scope: !541, file: !541, line: 837, type: !496, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !562, retainedNodes: !2791)
!2791 = !{!2792, !2793}
!2792 = !DILocalVariable(name: "sv", scope: !2790, file: !541, line: 839, type: !627)
!2793 = !DILocalVariable(name: "i", scope: !2794, file: !541, line: 840, type: !85)
!2794 = distinct !DILexicalBlock(scope: !2790, file: !541, line: 840, column: 3)
!2795 = !DILocation(line: 839, column: 24, scope: !2790)
!2796 = !DILocation(line: 0, scope: !2790)
!2797 = !DILocation(line: 0, scope: !2794)
!2798 = !DILocation(line: 840, column: 21, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2794, file: !541, line: 840, column: 3)
!2800 = !DILocation(line: 840, column: 3, scope: !2794)
!2801 = !DILocation(line: 842, column: 13, scope: !2802)
!2802 = distinct !DILexicalBlock(scope: !2790, file: !541, line: 842, column: 7)
!2803 = !{!2804, !859, i64 8}
!2804 = !{!"slotvec", !1219, i64 0, !859, i64 8}
!2805 = !DILocation(line: 842, column: 17, scope: !2802)
!2806 = !DILocation(line: 842, column: 7, scope: !2790)
!2807 = !DILocation(line: 841, column: 17, scope: !2799)
!2808 = !DILocation(line: 841, column: 5, scope: !2799)
!2809 = !DILocation(line: 840, column: 32, scope: !2799)
!2810 = distinct !{!2810, !2800, !2811, !975}
!2811 = !DILocation(line: 841, column: 20, scope: !2794)
!2812 = !DILocation(line: 844, column: 7, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2802, file: !541, line: 843, column: 5)
!2814 = !DILocation(line: 845, column: 21, scope: !2813)
!2815 = !{!2804, !1219, i64 0}
!2816 = !DILocation(line: 846, column: 20, scope: !2813)
!2817 = !DILocation(line: 847, column: 5, scope: !2813)
!2818 = !DILocation(line: 848, column: 10, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !2790, file: !541, line: 848, column: 7)
!2820 = !DILocation(line: 848, column: 7, scope: !2790)
!2821 = !DILocation(line: 850, column: 7, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2819, file: !541, line: 849, column: 5)
!2823 = !DILocation(line: 851, column: 15, scope: !2822)
!2824 = !DILocation(line: 852, column: 5, scope: !2822)
!2825 = !DILocation(line: 853, column: 10, scope: !2790)
!2826 = !DILocation(line: 854, column: 1, scope: !2790)
!2827 = distinct !DISubprogram(name: "quotearg_n", scope: !541, file: !541, line: 919, type: !1045, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !562, retainedNodes: !2828)
!2828 = !{!2829, !2830}
!2829 = !DILocalVariable(name: "n", arg: 1, scope: !2827, file: !541, line: 919, type: !85)
!2830 = !DILocalVariable(name: "arg", arg: 2, scope: !2827, file: !541, line: 919, type: !138)
!2831 = !DILocation(line: 0, scope: !2827)
!2832 = !DILocation(line: 921, column: 10, scope: !2827)
!2833 = !DILocation(line: 921, column: 3, scope: !2827)
!2834 = distinct !DISubprogram(name: "quotearg_n_options", scope: !541, file: !541, line: 866, type: !2835, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !562, retainedNodes: !2837)
!2835 = !DISubroutineType(types: !2836)
!2836 = !{!128, !85, !138, !136, !2040}
!2837 = !{!2838, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2848, !2849, !2851, !2852, !2853}
!2838 = !DILocalVariable(name: "n", arg: 1, scope: !2834, file: !541, line: 866, type: !85)
!2839 = !DILocalVariable(name: "arg", arg: 2, scope: !2834, file: !541, line: 866, type: !138)
!2840 = !DILocalVariable(name: "argsize", arg: 3, scope: !2834, file: !541, line: 866, type: !136)
!2841 = !DILocalVariable(name: "options", arg: 4, scope: !2834, file: !541, line: 867, type: !2040)
!2842 = !DILocalVariable(name: "saved_errno", scope: !2834, file: !541, line: 869, type: !85)
!2843 = !DILocalVariable(name: "sv", scope: !2834, file: !541, line: 871, type: !627)
!2844 = !DILocalVariable(name: "nslots_max", scope: !2834, file: !541, line: 873, type: !85)
!2845 = !DILocalVariable(name: "preallocated", scope: !2846, file: !541, line: 879, type: !234)
!2846 = distinct !DILexicalBlock(scope: !2847, file: !541, line: 878, column: 5)
!2847 = distinct !DILexicalBlock(scope: !2834, file: !541, line: 877, column: 7)
!2848 = !DILocalVariable(name: "new_nslots", scope: !2846, file: !541, line: 880, type: !795)
!2849 = !DILocalVariable(name: "size", scope: !2850, file: !541, line: 891, type: !136)
!2850 = distinct !DILexicalBlock(scope: !2834, file: !541, line: 890, column: 3)
!2851 = !DILocalVariable(name: "val", scope: !2850, file: !541, line: 892, type: !128)
!2852 = !DILocalVariable(name: "flags", scope: !2850, file: !541, line: 894, type: !85)
!2853 = !DILocalVariable(name: "qsize", scope: !2850, file: !541, line: 895, type: !136)
!2854 = distinct !DIAssignID()
!2855 = !DILocation(line: 0, scope: !2846)
!2856 = !DILocation(line: 0, scope: !2834)
!2857 = !DILocation(line: 869, column: 21, scope: !2834)
!2858 = !DILocation(line: 871, column: 24, scope: !2834)
!2859 = !DILocation(line: 874, column: 17, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2834, file: !541, line: 874, column: 7)
!2861 = !DILocation(line: 875, column: 5, scope: !2860)
!2862 = !DILocation(line: 877, column: 7, scope: !2847)
!2863 = !DILocation(line: 877, column: 14, scope: !2847)
!2864 = !DILocation(line: 877, column: 7, scope: !2834)
!2865 = !DILocation(line: 879, column: 31, scope: !2846)
!2866 = !DILocation(line: 880, column: 7, scope: !2846)
!2867 = !DILocation(line: 880, column: 26, scope: !2846)
!2868 = !DILocation(line: 880, column: 13, scope: !2846)
!2869 = distinct !DIAssignID()
!2870 = !DILocation(line: 882, column: 31, scope: !2846)
!2871 = !DILocation(line: 883, column: 33, scope: !2846)
!2872 = !DILocation(line: 883, column: 42, scope: !2846)
!2873 = !DILocation(line: 883, column: 31, scope: !2846)
!2874 = !DILocation(line: 882, column: 22, scope: !2846)
!2875 = !DILocation(line: 882, column: 15, scope: !2846)
!2876 = !DILocation(line: 884, column: 11, scope: !2846)
!2877 = !DILocation(line: 885, column: 15, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2846, file: !541, line: 884, column: 11)
!2879 = !{i64 0, i64 8, !1218, i64 8, i64 8, !858}
!2880 = !DILocation(line: 885, column: 9, scope: !2878)
!2881 = !DILocation(line: 886, column: 20, scope: !2846)
!2882 = !DILocation(line: 886, column: 18, scope: !2846)
!2883 = !DILocation(line: 886, column: 32, scope: !2846)
!2884 = !DILocation(line: 886, column: 43, scope: !2846)
!2885 = !DILocation(line: 886, column: 53, scope: !2846)
!2886 = !DILocation(line: 0, scope: !2262, inlinedAt: !2887)
!2887 = distinct !DILocation(line: 886, column: 7, scope: !2846)
!2888 = !DILocation(line: 59, column: 10, scope: !2262, inlinedAt: !2887)
!2889 = !DILocation(line: 887, column: 16, scope: !2846)
!2890 = !DILocation(line: 887, column: 14, scope: !2846)
!2891 = !DILocation(line: 888, column: 5, scope: !2847)
!2892 = !DILocation(line: 888, column: 5, scope: !2846)
!2893 = !DILocation(line: 891, column: 19, scope: !2850)
!2894 = !DILocation(line: 891, column: 25, scope: !2850)
!2895 = !DILocation(line: 0, scope: !2850)
!2896 = !DILocation(line: 892, column: 23, scope: !2850)
!2897 = !DILocation(line: 894, column: 26, scope: !2850)
!2898 = !DILocation(line: 894, column: 32, scope: !2850)
!2899 = !DILocation(line: 896, column: 55, scope: !2850)
!2900 = !DILocation(line: 897, column: 55, scope: !2850)
!2901 = !DILocation(line: 898, column: 55, scope: !2850)
!2902 = !DILocation(line: 899, column: 55, scope: !2850)
!2903 = !DILocation(line: 895, column: 20, scope: !2850)
!2904 = !DILocation(line: 901, column: 14, scope: !2905)
!2905 = distinct !DILexicalBlock(scope: !2850, file: !541, line: 901, column: 9)
!2906 = !DILocation(line: 901, column: 9, scope: !2850)
!2907 = !DILocation(line: 903, column: 35, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2905, file: !541, line: 902, column: 7)
!2909 = !DILocation(line: 903, column: 20, scope: !2908)
!2910 = !DILocation(line: 904, column: 17, scope: !2911)
!2911 = distinct !DILexicalBlock(scope: !2908, file: !541, line: 904, column: 13)
!2912 = !DILocation(line: 904, column: 13, scope: !2908)
!2913 = !DILocation(line: 905, column: 11, scope: !2911)
!2914 = !DILocation(line: 906, column: 27, scope: !2908)
!2915 = !DILocation(line: 906, column: 19, scope: !2908)
!2916 = !DILocation(line: 907, column: 69, scope: !2908)
!2917 = !DILocation(line: 909, column: 44, scope: !2908)
!2918 = !DILocation(line: 910, column: 44, scope: !2908)
!2919 = !DILocation(line: 907, column: 9, scope: !2908)
!2920 = !DILocation(line: 911, column: 7, scope: !2908)
!2921 = !DILocation(line: 913, column: 11, scope: !2850)
!2922 = !DILocation(line: 914, column: 5, scope: !2850)
!2923 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !541, file: !541, line: 925, type: !2924, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !562, retainedNodes: !2926)
!2924 = !DISubroutineType(types: !2925)
!2925 = !{!128, !85, !138, !136}
!2926 = !{!2927, !2928, !2929}
!2927 = !DILocalVariable(name: "n", arg: 1, scope: !2923, file: !541, line: 925, type: !85)
!2928 = !DILocalVariable(name: "arg", arg: 2, scope: !2923, file: !541, line: 925, type: !138)
!2929 = !DILocalVariable(name: "argsize", arg: 3, scope: !2923, file: !541, line: 925, type: !136)
!2930 = !DILocation(line: 0, scope: !2923)
!2931 = !DILocation(line: 927, column: 10, scope: !2923)
!2932 = !DILocation(line: 927, column: 3, scope: !2923)
!2933 = distinct !DISubprogram(name: "quotearg", scope: !541, file: !541, line: 931, type: !1054, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !562, retainedNodes: !2934)
!2934 = !{!2935}
!2935 = !DILocalVariable(name: "arg", arg: 1, scope: !2933, file: !541, line: 931, type: !138)
!2936 = !DILocation(line: 0, scope: !2933)
!2937 = !DILocation(line: 0, scope: !2827, inlinedAt: !2938)
!2938 = distinct !DILocation(line: 933, column: 10, scope: !2933)
!2939 = !DILocation(line: 921, column: 10, scope: !2827, inlinedAt: !2938)
!2940 = !DILocation(line: 933, column: 3, scope: !2933)
!2941 = distinct !DISubprogram(name: "quotearg_mem", scope: !541, file: !541, line: 937, type: !2942, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !562, retainedNodes: !2944)
!2942 = !DISubroutineType(types: !2943)
!2943 = !{!128, !138, !136}
!2944 = !{!2945, !2946}
!2945 = !DILocalVariable(name: "arg", arg: 1, scope: !2941, file: !541, line: 937, type: !138)
!2946 = !DILocalVariable(name: "argsize", arg: 2, scope: !2941, file: !541, line: 937, type: !136)
!2947 = !DILocation(line: 0, scope: !2941)
!2948 = !DILocation(line: 0, scope: !2923, inlinedAt: !2949)
!2949 = distinct !DILocation(line: 939, column: 10, scope: !2941)
!2950 = !DILocation(line: 927, column: 10, scope: !2923, inlinedAt: !2949)
!2951 = !DILocation(line: 939, column: 3, scope: !2941)
!2952 = distinct !DISubprogram(name: "quotearg_n_style", scope: !541, file: !541, line: 943, type: !2953, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !562, retainedNodes: !2955)
!2953 = !DISubroutineType(types: !2954)
!2954 = !{!128, !85, !564, !138}
!2955 = !{!2956, !2957, !2958, !2959}
!2956 = !DILocalVariable(name: "n", arg: 1, scope: !2952, file: !541, line: 943, type: !85)
!2957 = !DILocalVariable(name: "s", arg: 2, scope: !2952, file: !541, line: 943, type: !564)
!2958 = !DILocalVariable(name: "arg", arg: 3, scope: !2952, file: !541, line: 943, type: !138)
!2959 = !DILocalVariable(name: "o", scope: !2952, file: !541, line: 945, type: !2041)
!2960 = distinct !DIAssignID()
!2961 = !DILocation(line: 0, scope: !2952)
!2962 = !DILocation(line: 945, column: 3, scope: !2952)
!2963 = !{!2964}
!2964 = distinct !{!2964, !2965, !"quoting_options_from_style: argument 0"}
!2965 = distinct !{!2965, !"quoting_options_from_style"}
!2966 = !DILocation(line: 945, column: 36, scope: !2952)
!2967 = !DILocalVariable(name: "style", arg: 1, scope: !2968, file: !541, line: 183, type: !564)
!2968 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !541, file: !541, line: 183, type: !2969, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !562, retainedNodes: !2971)
!2969 = !DISubroutineType(types: !2970)
!2970 = !{!579, !564}
!2971 = !{!2967, !2972}
!2972 = !DILocalVariable(name: "o", scope: !2968, file: !541, line: 185, type: !579)
!2973 = !DILocation(line: 0, scope: !2968, inlinedAt: !2974)
!2974 = distinct !DILocation(line: 945, column: 36, scope: !2952)
!2975 = !DILocation(line: 185, column: 26, scope: !2968, inlinedAt: !2974)
!2976 = distinct !DIAssignID()
!2977 = !DILocation(line: 186, column: 13, scope: !2978, inlinedAt: !2974)
!2978 = distinct !DILexicalBlock(scope: !2968, file: !541, line: 186, column: 7)
!2979 = !DILocation(line: 186, column: 7, scope: !2968, inlinedAt: !2974)
!2980 = !DILocation(line: 187, column: 5, scope: !2978, inlinedAt: !2974)
!2981 = !DILocation(line: 188, column: 11, scope: !2968, inlinedAt: !2974)
!2982 = distinct !DIAssignID()
!2983 = !DILocation(line: 946, column: 10, scope: !2952)
!2984 = !DILocation(line: 947, column: 1, scope: !2952)
!2985 = !DILocation(line: 946, column: 3, scope: !2952)
!2986 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !541, file: !541, line: 950, type: !2987, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !562, retainedNodes: !2989)
!2987 = !DISubroutineType(types: !2988)
!2988 = !{!128, !85, !564, !138, !136}
!2989 = !{!2990, !2991, !2992, !2993, !2994}
!2990 = !DILocalVariable(name: "n", arg: 1, scope: !2986, file: !541, line: 950, type: !85)
!2991 = !DILocalVariable(name: "s", arg: 2, scope: !2986, file: !541, line: 950, type: !564)
!2992 = !DILocalVariable(name: "arg", arg: 3, scope: !2986, file: !541, line: 951, type: !138)
!2993 = !DILocalVariable(name: "argsize", arg: 4, scope: !2986, file: !541, line: 951, type: !136)
!2994 = !DILocalVariable(name: "o", scope: !2986, file: !541, line: 953, type: !2041)
!2995 = distinct !DIAssignID()
!2996 = !DILocation(line: 0, scope: !2986)
!2997 = !DILocation(line: 953, column: 3, scope: !2986)
!2998 = !{!2999}
!2999 = distinct !{!2999, !3000, !"quoting_options_from_style: argument 0"}
!3000 = distinct !{!3000, !"quoting_options_from_style"}
!3001 = !DILocation(line: 953, column: 36, scope: !2986)
!3002 = !DILocation(line: 0, scope: !2968, inlinedAt: !3003)
!3003 = distinct !DILocation(line: 953, column: 36, scope: !2986)
!3004 = !DILocation(line: 185, column: 26, scope: !2968, inlinedAt: !3003)
!3005 = distinct !DIAssignID()
!3006 = !DILocation(line: 186, column: 13, scope: !2978, inlinedAt: !3003)
!3007 = !DILocation(line: 186, column: 7, scope: !2968, inlinedAt: !3003)
!3008 = !DILocation(line: 187, column: 5, scope: !2978, inlinedAt: !3003)
!3009 = !DILocation(line: 188, column: 11, scope: !2968, inlinedAt: !3003)
!3010 = distinct !DIAssignID()
!3011 = !DILocation(line: 954, column: 10, scope: !2986)
!3012 = !DILocation(line: 955, column: 1, scope: !2986)
!3013 = !DILocation(line: 954, column: 3, scope: !2986)
!3014 = distinct !DISubprogram(name: "quotearg_style", scope: !541, file: !541, line: 958, type: !3015, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !562, retainedNodes: !3017)
!3015 = !DISubroutineType(types: !3016)
!3016 = !{!128, !564, !138}
!3017 = !{!3018, !3019}
!3018 = !DILocalVariable(name: "s", arg: 1, scope: !3014, file: !541, line: 958, type: !564)
!3019 = !DILocalVariable(name: "arg", arg: 2, scope: !3014, file: !541, line: 958, type: !138)
!3020 = distinct !DIAssignID()
!3021 = !DILocation(line: 0, scope: !3014)
!3022 = !DILocation(line: 0, scope: !2952, inlinedAt: !3023)
!3023 = distinct !DILocation(line: 960, column: 10, scope: !3014)
!3024 = !DILocation(line: 945, column: 3, scope: !2952, inlinedAt: !3023)
!3025 = !{!3026}
!3026 = distinct !{!3026, !3027, !"quoting_options_from_style: argument 0"}
!3027 = distinct !{!3027, !"quoting_options_from_style"}
!3028 = !DILocation(line: 945, column: 36, scope: !2952, inlinedAt: !3023)
!3029 = !DILocation(line: 0, scope: !2968, inlinedAt: !3030)
!3030 = distinct !DILocation(line: 945, column: 36, scope: !2952, inlinedAt: !3023)
!3031 = !DILocation(line: 185, column: 26, scope: !2968, inlinedAt: !3030)
!3032 = distinct !DIAssignID()
!3033 = !DILocation(line: 186, column: 13, scope: !2978, inlinedAt: !3030)
!3034 = !DILocation(line: 186, column: 7, scope: !2968, inlinedAt: !3030)
!3035 = !DILocation(line: 187, column: 5, scope: !2978, inlinedAt: !3030)
!3036 = !DILocation(line: 188, column: 11, scope: !2968, inlinedAt: !3030)
!3037 = distinct !DIAssignID()
!3038 = !DILocation(line: 946, column: 10, scope: !2952, inlinedAt: !3023)
!3039 = !DILocation(line: 947, column: 1, scope: !2952, inlinedAt: !3023)
!3040 = !DILocation(line: 960, column: 3, scope: !3014)
!3041 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !541, file: !541, line: 964, type: !3042, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !562, retainedNodes: !3044)
!3042 = !DISubroutineType(types: !3043)
!3043 = !{!128, !564, !138, !136}
!3044 = !{!3045, !3046, !3047}
!3045 = !DILocalVariable(name: "s", arg: 1, scope: !3041, file: !541, line: 964, type: !564)
!3046 = !DILocalVariable(name: "arg", arg: 2, scope: !3041, file: !541, line: 964, type: !138)
!3047 = !DILocalVariable(name: "argsize", arg: 3, scope: !3041, file: !541, line: 964, type: !136)
!3048 = distinct !DIAssignID()
!3049 = !DILocation(line: 0, scope: !3041)
!3050 = !DILocation(line: 0, scope: !2986, inlinedAt: !3051)
!3051 = distinct !DILocation(line: 966, column: 10, scope: !3041)
!3052 = !DILocation(line: 953, column: 3, scope: !2986, inlinedAt: !3051)
!3053 = !{!3054}
!3054 = distinct !{!3054, !3055, !"quoting_options_from_style: argument 0"}
!3055 = distinct !{!3055, !"quoting_options_from_style"}
!3056 = !DILocation(line: 953, column: 36, scope: !2986, inlinedAt: !3051)
!3057 = !DILocation(line: 0, scope: !2968, inlinedAt: !3058)
!3058 = distinct !DILocation(line: 953, column: 36, scope: !2986, inlinedAt: !3051)
!3059 = !DILocation(line: 185, column: 26, scope: !2968, inlinedAt: !3058)
!3060 = distinct !DIAssignID()
!3061 = !DILocation(line: 186, column: 13, scope: !2978, inlinedAt: !3058)
!3062 = !DILocation(line: 186, column: 7, scope: !2968, inlinedAt: !3058)
!3063 = !DILocation(line: 187, column: 5, scope: !2978, inlinedAt: !3058)
!3064 = !DILocation(line: 188, column: 11, scope: !2968, inlinedAt: !3058)
!3065 = distinct !DIAssignID()
!3066 = !DILocation(line: 954, column: 10, scope: !2986, inlinedAt: !3051)
!3067 = !DILocation(line: 955, column: 1, scope: !2986, inlinedAt: !3051)
!3068 = !DILocation(line: 966, column: 3, scope: !3041)
!3069 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !541, file: !541, line: 970, type: !3070, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !562, retainedNodes: !3072)
!3070 = !DISubroutineType(types: !3071)
!3071 = !{!128, !138, !136, !4}
!3072 = !{!3073, !3074, !3075, !3076}
!3073 = !DILocalVariable(name: "arg", arg: 1, scope: !3069, file: !541, line: 970, type: !138)
!3074 = !DILocalVariable(name: "argsize", arg: 2, scope: !3069, file: !541, line: 970, type: !136)
!3075 = !DILocalVariable(name: "ch", arg: 3, scope: !3069, file: !541, line: 970, type: !4)
!3076 = !DILocalVariable(name: "options", scope: !3069, file: !541, line: 972, type: !579)
!3077 = distinct !DIAssignID()
!3078 = !DILocation(line: 0, scope: !3069)
!3079 = !DILocation(line: 972, column: 3, scope: !3069)
!3080 = !DILocation(line: 973, column: 13, scope: !3069)
!3081 = !{i64 0, i64 4, !928, i64 4, i64 4, !928, i64 8, i64 32, !937, i64 40, i64 8, !858, i64 48, i64 8, !858}
!3082 = distinct !DIAssignID()
!3083 = !DILocation(line: 0, scope: !2060, inlinedAt: !3084)
!3084 = distinct !DILocation(line: 974, column: 3, scope: !3069)
!3085 = !DILocation(line: 147, column: 41, scope: !2060, inlinedAt: !3084)
!3086 = !DILocation(line: 147, column: 62, scope: !2060, inlinedAt: !3084)
!3087 = !DILocation(line: 147, column: 57, scope: !2060, inlinedAt: !3084)
!3088 = !DILocation(line: 148, column: 15, scope: !2060, inlinedAt: !3084)
!3089 = !DILocation(line: 149, column: 21, scope: !2060, inlinedAt: !3084)
!3090 = !DILocation(line: 149, column: 24, scope: !2060, inlinedAt: !3084)
!3091 = !DILocation(line: 150, column: 19, scope: !2060, inlinedAt: !3084)
!3092 = !DILocation(line: 150, column: 24, scope: !2060, inlinedAt: !3084)
!3093 = !DILocation(line: 150, column: 6, scope: !2060, inlinedAt: !3084)
!3094 = !DILocation(line: 975, column: 10, scope: !3069)
!3095 = !DILocation(line: 976, column: 1, scope: !3069)
!3096 = !DILocation(line: 975, column: 3, scope: !3069)
!3097 = distinct !DISubprogram(name: "quotearg_char", scope: !541, file: !541, line: 979, type: !3098, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !562, retainedNodes: !3100)
!3098 = !DISubroutineType(types: !3099)
!3099 = !{!128, !138, !4}
!3100 = !{!3101, !3102}
!3101 = !DILocalVariable(name: "arg", arg: 1, scope: !3097, file: !541, line: 979, type: !138)
!3102 = !DILocalVariable(name: "ch", arg: 2, scope: !3097, file: !541, line: 979, type: !4)
!3103 = distinct !DIAssignID()
!3104 = !DILocation(line: 0, scope: !3097)
!3105 = !DILocation(line: 0, scope: !3069, inlinedAt: !3106)
!3106 = distinct !DILocation(line: 981, column: 10, scope: !3097)
!3107 = !DILocation(line: 972, column: 3, scope: !3069, inlinedAt: !3106)
!3108 = !DILocation(line: 973, column: 13, scope: !3069, inlinedAt: !3106)
!3109 = distinct !DIAssignID()
!3110 = !DILocation(line: 0, scope: !2060, inlinedAt: !3111)
!3111 = distinct !DILocation(line: 974, column: 3, scope: !3069, inlinedAt: !3106)
!3112 = !DILocation(line: 147, column: 41, scope: !2060, inlinedAt: !3111)
!3113 = !DILocation(line: 147, column: 62, scope: !2060, inlinedAt: !3111)
!3114 = !DILocation(line: 147, column: 57, scope: !2060, inlinedAt: !3111)
!3115 = !DILocation(line: 148, column: 15, scope: !2060, inlinedAt: !3111)
!3116 = !DILocation(line: 149, column: 21, scope: !2060, inlinedAt: !3111)
!3117 = !DILocation(line: 149, column: 24, scope: !2060, inlinedAt: !3111)
!3118 = !DILocation(line: 150, column: 19, scope: !2060, inlinedAt: !3111)
!3119 = !DILocation(line: 150, column: 24, scope: !2060, inlinedAt: !3111)
!3120 = !DILocation(line: 150, column: 6, scope: !2060, inlinedAt: !3111)
!3121 = !DILocation(line: 975, column: 10, scope: !3069, inlinedAt: !3106)
!3122 = !DILocation(line: 976, column: 1, scope: !3069, inlinedAt: !3106)
!3123 = !DILocation(line: 981, column: 3, scope: !3097)
!3124 = distinct !DISubprogram(name: "quotearg_colon", scope: !541, file: !541, line: 985, type: !1054, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !562, retainedNodes: !3125)
!3125 = !{!3126}
!3126 = !DILocalVariable(name: "arg", arg: 1, scope: !3124, file: !541, line: 985, type: !138)
!3127 = distinct !DIAssignID()
!3128 = !DILocation(line: 0, scope: !3124)
!3129 = !DILocation(line: 0, scope: !3097, inlinedAt: !3130)
!3130 = distinct !DILocation(line: 987, column: 10, scope: !3124)
!3131 = !DILocation(line: 0, scope: !3069, inlinedAt: !3132)
!3132 = distinct !DILocation(line: 981, column: 10, scope: !3097, inlinedAt: !3130)
!3133 = !DILocation(line: 972, column: 3, scope: !3069, inlinedAt: !3132)
!3134 = !DILocation(line: 973, column: 13, scope: !3069, inlinedAt: !3132)
!3135 = distinct !DIAssignID()
!3136 = !DILocation(line: 0, scope: !2060, inlinedAt: !3137)
!3137 = distinct !DILocation(line: 974, column: 3, scope: !3069, inlinedAt: !3132)
!3138 = !DILocation(line: 147, column: 57, scope: !2060, inlinedAt: !3137)
!3139 = !DILocation(line: 149, column: 21, scope: !2060, inlinedAt: !3137)
!3140 = !DILocation(line: 150, column: 6, scope: !2060, inlinedAt: !3137)
!3141 = !DILocation(line: 975, column: 10, scope: !3069, inlinedAt: !3132)
!3142 = !DILocation(line: 976, column: 1, scope: !3069, inlinedAt: !3132)
!3143 = !DILocation(line: 987, column: 3, scope: !3124)
!3144 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !541, file: !541, line: 991, type: !2942, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !562, retainedNodes: !3145)
!3145 = !{!3146, !3147}
!3146 = !DILocalVariable(name: "arg", arg: 1, scope: !3144, file: !541, line: 991, type: !138)
!3147 = !DILocalVariable(name: "argsize", arg: 2, scope: !3144, file: !541, line: 991, type: !136)
!3148 = distinct !DIAssignID()
!3149 = !DILocation(line: 0, scope: !3144)
!3150 = !DILocation(line: 0, scope: !3069, inlinedAt: !3151)
!3151 = distinct !DILocation(line: 993, column: 10, scope: !3144)
!3152 = !DILocation(line: 972, column: 3, scope: !3069, inlinedAt: !3151)
!3153 = !DILocation(line: 973, column: 13, scope: !3069, inlinedAt: !3151)
!3154 = distinct !DIAssignID()
!3155 = !DILocation(line: 0, scope: !2060, inlinedAt: !3156)
!3156 = distinct !DILocation(line: 974, column: 3, scope: !3069, inlinedAt: !3151)
!3157 = !DILocation(line: 147, column: 57, scope: !2060, inlinedAt: !3156)
!3158 = !DILocation(line: 149, column: 21, scope: !2060, inlinedAt: !3156)
!3159 = !DILocation(line: 150, column: 6, scope: !2060, inlinedAt: !3156)
!3160 = !DILocation(line: 975, column: 10, scope: !3069, inlinedAt: !3151)
!3161 = !DILocation(line: 976, column: 1, scope: !3069, inlinedAt: !3151)
!3162 = !DILocation(line: 993, column: 3, scope: !3144)
!3163 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !541, file: !541, line: 997, type: !2953, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !562, retainedNodes: !3164)
!3164 = !{!3165, !3166, !3167, !3168}
!3165 = !DILocalVariable(name: "n", arg: 1, scope: !3163, file: !541, line: 997, type: !85)
!3166 = !DILocalVariable(name: "s", arg: 2, scope: !3163, file: !541, line: 997, type: !564)
!3167 = !DILocalVariable(name: "arg", arg: 3, scope: !3163, file: !541, line: 997, type: !138)
!3168 = !DILocalVariable(name: "options", scope: !3163, file: !541, line: 999, type: !579)
!3169 = distinct !DIAssignID()
!3170 = !DILocation(line: 0, scope: !3163)
!3171 = !DILocation(line: 185, column: 26, scope: !2968, inlinedAt: !3172)
!3172 = distinct !DILocation(line: 1000, column: 13, scope: !3163)
!3173 = !DILocation(line: 999, column: 3, scope: !3163)
!3174 = !DILocation(line: 0, scope: !2968, inlinedAt: !3172)
!3175 = !DILocation(line: 186, column: 13, scope: !2978, inlinedAt: !3172)
!3176 = !DILocation(line: 186, column: 7, scope: !2968, inlinedAt: !3172)
!3177 = !DILocation(line: 187, column: 5, scope: !2978, inlinedAt: !3172)
!3178 = !{!3179}
!3179 = distinct !{!3179, !3180, !"quoting_options_from_style: argument 0"}
!3180 = distinct !{!3180, !"quoting_options_from_style"}
!3181 = !DILocation(line: 1000, column: 13, scope: !3163)
!3182 = distinct !DIAssignID()
!3183 = distinct !DIAssignID()
!3184 = !DILocation(line: 0, scope: !2060, inlinedAt: !3185)
!3185 = distinct !DILocation(line: 1001, column: 3, scope: !3163)
!3186 = !DILocation(line: 147, column: 57, scope: !2060, inlinedAt: !3185)
!3187 = !DILocation(line: 149, column: 21, scope: !2060, inlinedAt: !3185)
!3188 = !DILocation(line: 150, column: 6, scope: !2060, inlinedAt: !3185)
!3189 = distinct !DIAssignID()
!3190 = !DILocation(line: 1002, column: 10, scope: !3163)
!3191 = !DILocation(line: 1003, column: 1, scope: !3163)
!3192 = !DILocation(line: 1002, column: 3, scope: !3163)
!3193 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !541, file: !541, line: 1006, type: !3194, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !562, retainedNodes: !3196)
!3194 = !DISubroutineType(types: !3195)
!3195 = !{!128, !85, !138, !138, !138}
!3196 = !{!3197, !3198, !3199, !3200}
!3197 = !DILocalVariable(name: "n", arg: 1, scope: !3193, file: !541, line: 1006, type: !85)
!3198 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3193, file: !541, line: 1006, type: !138)
!3199 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3193, file: !541, line: 1007, type: !138)
!3200 = !DILocalVariable(name: "arg", arg: 4, scope: !3193, file: !541, line: 1007, type: !138)
!3201 = distinct !DIAssignID()
!3202 = !DILocation(line: 0, scope: !3193)
!3203 = !DILocalVariable(name: "o", scope: !3204, file: !541, line: 1018, type: !579)
!3204 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !541, file: !541, line: 1014, type: !3205, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !562, retainedNodes: !3207)
!3205 = !DISubroutineType(types: !3206)
!3206 = !{!128, !85, !138, !138, !138, !136}
!3207 = !{!3208, !3209, !3210, !3211, !3212, !3203}
!3208 = !DILocalVariable(name: "n", arg: 1, scope: !3204, file: !541, line: 1014, type: !85)
!3209 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3204, file: !541, line: 1014, type: !138)
!3210 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3204, file: !541, line: 1015, type: !138)
!3211 = !DILocalVariable(name: "arg", arg: 4, scope: !3204, file: !541, line: 1016, type: !138)
!3212 = !DILocalVariable(name: "argsize", arg: 5, scope: !3204, file: !541, line: 1016, type: !136)
!3213 = !DILocation(line: 0, scope: !3204, inlinedAt: !3214)
!3214 = distinct !DILocation(line: 1009, column: 10, scope: !3193)
!3215 = !DILocation(line: 1018, column: 3, scope: !3204, inlinedAt: !3214)
!3216 = !DILocation(line: 1018, column: 30, scope: !3204, inlinedAt: !3214)
!3217 = distinct !DIAssignID()
!3218 = distinct !DIAssignID()
!3219 = !DILocation(line: 0, scope: !2100, inlinedAt: !3220)
!3220 = distinct !DILocation(line: 1019, column: 3, scope: !3204, inlinedAt: !3214)
!3221 = !DILocation(line: 174, column: 12, scope: !2100, inlinedAt: !3220)
!3222 = distinct !DIAssignID()
!3223 = !DILocation(line: 175, column: 8, scope: !2113, inlinedAt: !3220)
!3224 = !DILocation(line: 175, column: 19, scope: !2113, inlinedAt: !3220)
!3225 = !DILocation(line: 176, column: 5, scope: !2113, inlinedAt: !3220)
!3226 = !DILocation(line: 177, column: 6, scope: !2100, inlinedAt: !3220)
!3227 = !DILocation(line: 177, column: 17, scope: !2100, inlinedAt: !3220)
!3228 = distinct !DIAssignID()
!3229 = !DILocation(line: 178, column: 6, scope: !2100, inlinedAt: !3220)
!3230 = !DILocation(line: 178, column: 18, scope: !2100, inlinedAt: !3220)
!3231 = distinct !DIAssignID()
!3232 = !DILocation(line: 1020, column: 10, scope: !3204, inlinedAt: !3214)
!3233 = !DILocation(line: 1021, column: 1, scope: !3204, inlinedAt: !3214)
!3234 = !DILocation(line: 1009, column: 3, scope: !3193)
!3235 = distinct !DIAssignID()
!3236 = !DILocation(line: 0, scope: !3204)
!3237 = !DILocation(line: 1018, column: 3, scope: !3204)
!3238 = !DILocation(line: 1018, column: 30, scope: !3204)
!3239 = distinct !DIAssignID()
!3240 = distinct !DIAssignID()
!3241 = !DILocation(line: 0, scope: !2100, inlinedAt: !3242)
!3242 = distinct !DILocation(line: 1019, column: 3, scope: !3204)
!3243 = !DILocation(line: 174, column: 12, scope: !2100, inlinedAt: !3242)
!3244 = distinct !DIAssignID()
!3245 = !DILocation(line: 175, column: 8, scope: !2113, inlinedAt: !3242)
!3246 = !DILocation(line: 175, column: 19, scope: !2113, inlinedAt: !3242)
!3247 = !DILocation(line: 176, column: 5, scope: !2113, inlinedAt: !3242)
!3248 = !DILocation(line: 177, column: 6, scope: !2100, inlinedAt: !3242)
!3249 = !DILocation(line: 177, column: 17, scope: !2100, inlinedAt: !3242)
!3250 = distinct !DIAssignID()
!3251 = !DILocation(line: 178, column: 6, scope: !2100, inlinedAt: !3242)
!3252 = !DILocation(line: 178, column: 18, scope: !2100, inlinedAt: !3242)
!3253 = distinct !DIAssignID()
!3254 = !DILocation(line: 1020, column: 10, scope: !3204)
!3255 = !DILocation(line: 1021, column: 1, scope: !3204)
!3256 = !DILocation(line: 1020, column: 3, scope: !3204)
!3257 = distinct !DISubprogram(name: "quotearg_custom", scope: !541, file: !541, line: 1024, type: !3258, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !562, retainedNodes: !3260)
!3258 = !DISubroutineType(types: !3259)
!3259 = !{!128, !138, !138, !138}
!3260 = !{!3261, !3262, !3263}
!3261 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3257, file: !541, line: 1024, type: !138)
!3262 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3257, file: !541, line: 1024, type: !138)
!3263 = !DILocalVariable(name: "arg", arg: 3, scope: !3257, file: !541, line: 1025, type: !138)
!3264 = distinct !DIAssignID()
!3265 = !DILocation(line: 0, scope: !3257)
!3266 = !DILocation(line: 0, scope: !3193, inlinedAt: !3267)
!3267 = distinct !DILocation(line: 1027, column: 10, scope: !3257)
!3268 = !DILocation(line: 0, scope: !3204, inlinedAt: !3269)
!3269 = distinct !DILocation(line: 1009, column: 10, scope: !3193, inlinedAt: !3267)
!3270 = !DILocation(line: 1018, column: 3, scope: !3204, inlinedAt: !3269)
!3271 = !DILocation(line: 1018, column: 30, scope: !3204, inlinedAt: !3269)
!3272 = distinct !DIAssignID()
!3273 = distinct !DIAssignID()
!3274 = !DILocation(line: 0, scope: !2100, inlinedAt: !3275)
!3275 = distinct !DILocation(line: 1019, column: 3, scope: !3204, inlinedAt: !3269)
!3276 = !DILocation(line: 174, column: 12, scope: !2100, inlinedAt: !3275)
!3277 = distinct !DIAssignID()
!3278 = !DILocation(line: 175, column: 8, scope: !2113, inlinedAt: !3275)
!3279 = !DILocation(line: 175, column: 19, scope: !2113, inlinedAt: !3275)
!3280 = !DILocation(line: 176, column: 5, scope: !2113, inlinedAt: !3275)
!3281 = !DILocation(line: 177, column: 6, scope: !2100, inlinedAt: !3275)
!3282 = !DILocation(line: 177, column: 17, scope: !2100, inlinedAt: !3275)
!3283 = distinct !DIAssignID()
!3284 = !DILocation(line: 178, column: 6, scope: !2100, inlinedAt: !3275)
!3285 = !DILocation(line: 178, column: 18, scope: !2100, inlinedAt: !3275)
!3286 = distinct !DIAssignID()
!3287 = !DILocation(line: 1020, column: 10, scope: !3204, inlinedAt: !3269)
!3288 = !DILocation(line: 1021, column: 1, scope: !3204, inlinedAt: !3269)
!3289 = !DILocation(line: 1027, column: 3, scope: !3257)
!3290 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !541, file: !541, line: 1031, type: !3291, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !562, retainedNodes: !3293)
!3291 = !DISubroutineType(types: !3292)
!3292 = !{!128, !138, !138, !138, !136}
!3293 = !{!3294, !3295, !3296, !3297}
!3294 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3290, file: !541, line: 1031, type: !138)
!3295 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3290, file: !541, line: 1031, type: !138)
!3296 = !DILocalVariable(name: "arg", arg: 3, scope: !3290, file: !541, line: 1032, type: !138)
!3297 = !DILocalVariable(name: "argsize", arg: 4, scope: !3290, file: !541, line: 1032, type: !136)
!3298 = distinct !DIAssignID()
!3299 = !DILocation(line: 0, scope: !3290)
!3300 = !DILocation(line: 0, scope: !3204, inlinedAt: !3301)
!3301 = distinct !DILocation(line: 1034, column: 10, scope: !3290)
!3302 = !DILocation(line: 1018, column: 3, scope: !3204, inlinedAt: !3301)
!3303 = !DILocation(line: 1018, column: 30, scope: !3204, inlinedAt: !3301)
!3304 = distinct !DIAssignID()
!3305 = distinct !DIAssignID()
!3306 = !DILocation(line: 0, scope: !2100, inlinedAt: !3307)
!3307 = distinct !DILocation(line: 1019, column: 3, scope: !3204, inlinedAt: !3301)
!3308 = !DILocation(line: 174, column: 12, scope: !2100, inlinedAt: !3307)
!3309 = distinct !DIAssignID()
!3310 = !DILocation(line: 175, column: 8, scope: !2113, inlinedAt: !3307)
!3311 = !DILocation(line: 175, column: 19, scope: !2113, inlinedAt: !3307)
!3312 = !DILocation(line: 176, column: 5, scope: !2113, inlinedAt: !3307)
!3313 = !DILocation(line: 177, column: 6, scope: !2100, inlinedAt: !3307)
!3314 = !DILocation(line: 177, column: 17, scope: !2100, inlinedAt: !3307)
!3315 = distinct !DIAssignID()
!3316 = !DILocation(line: 178, column: 6, scope: !2100, inlinedAt: !3307)
!3317 = !DILocation(line: 178, column: 18, scope: !2100, inlinedAt: !3307)
!3318 = distinct !DIAssignID()
!3319 = !DILocation(line: 1020, column: 10, scope: !3204, inlinedAt: !3301)
!3320 = !DILocation(line: 1021, column: 1, scope: !3204, inlinedAt: !3301)
!3321 = !DILocation(line: 1034, column: 3, scope: !3290)
!3322 = distinct !DISubprogram(name: "quote_n_mem", scope: !541, file: !541, line: 1049, type: !3323, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !562, retainedNodes: !3325)
!3323 = !DISubroutineType(types: !3324)
!3324 = !{!138, !85, !138, !136}
!3325 = !{!3326, !3327, !3328}
!3326 = !DILocalVariable(name: "n", arg: 1, scope: !3322, file: !541, line: 1049, type: !85)
!3327 = !DILocalVariable(name: "arg", arg: 2, scope: !3322, file: !541, line: 1049, type: !138)
!3328 = !DILocalVariable(name: "argsize", arg: 3, scope: !3322, file: !541, line: 1049, type: !136)
!3329 = !DILocation(line: 0, scope: !3322)
!3330 = !DILocation(line: 1051, column: 10, scope: !3322)
!3331 = !DILocation(line: 1051, column: 3, scope: !3322)
!3332 = distinct !DISubprogram(name: "quote_mem", scope: !541, file: !541, line: 1055, type: !3333, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !562, retainedNodes: !3335)
!3333 = !DISubroutineType(types: !3334)
!3334 = !{!138, !138, !136}
!3335 = !{!3336, !3337}
!3336 = !DILocalVariable(name: "arg", arg: 1, scope: !3332, file: !541, line: 1055, type: !138)
!3337 = !DILocalVariable(name: "argsize", arg: 2, scope: !3332, file: !541, line: 1055, type: !136)
!3338 = !DILocation(line: 0, scope: !3332)
!3339 = !DILocation(line: 0, scope: !3322, inlinedAt: !3340)
!3340 = distinct !DILocation(line: 1057, column: 10, scope: !3332)
!3341 = !DILocation(line: 1051, column: 10, scope: !3322, inlinedAt: !3340)
!3342 = !DILocation(line: 1057, column: 3, scope: !3332)
!3343 = distinct !DISubprogram(name: "quote_n", scope: !541, file: !541, line: 1061, type: !3344, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !562, retainedNodes: !3346)
!3344 = !DISubroutineType(types: !3345)
!3345 = !{!138, !85, !138}
!3346 = !{!3347, !3348}
!3347 = !DILocalVariable(name: "n", arg: 1, scope: !3343, file: !541, line: 1061, type: !85)
!3348 = !DILocalVariable(name: "arg", arg: 2, scope: !3343, file: !541, line: 1061, type: !138)
!3349 = !DILocation(line: 0, scope: !3343)
!3350 = !DILocation(line: 0, scope: !3322, inlinedAt: !3351)
!3351 = distinct !DILocation(line: 1063, column: 10, scope: !3343)
!3352 = !DILocation(line: 1051, column: 10, scope: !3322, inlinedAt: !3351)
!3353 = !DILocation(line: 1063, column: 3, scope: !3343)
!3354 = distinct !DISubprogram(name: "quote", scope: !541, file: !541, line: 1067, type: !3355, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !562, retainedNodes: !3357)
!3355 = !DISubroutineType(types: !3356)
!3356 = !{!138, !138}
!3357 = !{!3358}
!3358 = !DILocalVariable(name: "arg", arg: 1, scope: !3354, file: !541, line: 1067, type: !138)
!3359 = !DILocation(line: 0, scope: !3354)
!3360 = !DILocation(line: 0, scope: !3343, inlinedAt: !3361)
!3361 = distinct !DILocation(line: 1069, column: 10, scope: !3354)
!3362 = !DILocation(line: 0, scope: !3322, inlinedAt: !3363)
!3363 = distinct !DILocation(line: 1063, column: 10, scope: !3343, inlinedAt: !3361)
!3364 = !DILocation(line: 1051, column: 10, scope: !3322, inlinedAt: !3363)
!3365 = !DILocation(line: 1069, column: 3, scope: !3354)
!3366 = distinct !DISubprogram(name: "version_etc_arn", scope: !642, file: !642, line: 61, type: !3367, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !3404)
!3367 = !DISubroutineType(types: !3368)
!3368 = !{null, !3369, !138, !138, !138, !3403, !136}
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3370, size: 64)
!3370 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !249, line: 7, baseType: !3371)
!3371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !251, line: 49, size: 1728, elements: !3372)
!3372 = !{!3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402}
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3371, file: !251, line: 51, baseType: !85, size: 32)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3371, file: !251, line: 54, baseType: !128, size: 64, offset: 64)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3371, file: !251, line: 55, baseType: !128, size: 64, offset: 128)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3371, file: !251, line: 56, baseType: !128, size: 64, offset: 192)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3371, file: !251, line: 57, baseType: !128, size: 64, offset: 256)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3371, file: !251, line: 58, baseType: !128, size: 64, offset: 320)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3371, file: !251, line: 59, baseType: !128, size: 64, offset: 384)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3371, file: !251, line: 60, baseType: !128, size: 64, offset: 448)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3371, file: !251, line: 61, baseType: !128, size: 64, offset: 512)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3371, file: !251, line: 64, baseType: !128, size: 64, offset: 576)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3371, file: !251, line: 65, baseType: !128, size: 64, offset: 640)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3371, file: !251, line: 66, baseType: !128, size: 64, offset: 704)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3371, file: !251, line: 68, baseType: !266, size: 64, offset: 768)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3371, file: !251, line: 70, baseType: !3387, size: 64, offset: 832)
!3387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3371, size: 64)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3371, file: !251, line: 72, baseType: !85, size: 32, offset: 896)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3371, file: !251, line: 73, baseType: !85, size: 32, offset: 928)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3371, file: !251, line: 74, baseType: !273, size: 64, offset: 960)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3371, file: !251, line: 77, baseType: !135, size: 16, offset: 1024)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3371, file: !251, line: 78, baseType: !277, size: 8, offset: 1040)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3371, file: !251, line: 79, baseType: !61, size: 8, offset: 1048)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3371, file: !251, line: 81, baseType: !280, size: 64, offset: 1088)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3371, file: !251, line: 89, baseType: !283, size: 64, offset: 1152)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3371, file: !251, line: 91, baseType: !285, size: 64, offset: 1216)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3371, file: !251, line: 92, baseType: !288, size: 64, offset: 1280)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3371, file: !251, line: 93, baseType: !3387, size: 64, offset: 1344)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3371, file: !251, line: 94, baseType: !129, size: 64, offset: 1408)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3371, file: !251, line: 95, baseType: !136, size: 64, offset: 1472)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3371, file: !251, line: 96, baseType: !85, size: 32, offset: 1536)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3371, file: !251, line: 98, baseType: !295, size: 160, offset: 1568)
!3403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!3404 = !{!3405, !3406, !3407, !3408, !3409, !3410}
!3405 = !DILocalVariable(name: "stream", arg: 1, scope: !3366, file: !642, line: 61, type: !3369)
!3406 = !DILocalVariable(name: "command_name", arg: 2, scope: !3366, file: !642, line: 62, type: !138)
!3407 = !DILocalVariable(name: "package", arg: 3, scope: !3366, file: !642, line: 62, type: !138)
!3408 = !DILocalVariable(name: "version", arg: 4, scope: !3366, file: !642, line: 63, type: !138)
!3409 = !DILocalVariable(name: "authors", arg: 5, scope: !3366, file: !642, line: 64, type: !3403)
!3410 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3366, file: !642, line: 64, type: !136)
!3411 = !DILocation(line: 0, scope: !3366)
!3412 = !DILocation(line: 66, column: 7, scope: !3413)
!3413 = distinct !DILexicalBlock(scope: !3366, file: !642, line: 66, column: 7)
!3414 = !DILocation(line: 66, column: 7, scope: !3366)
!3415 = !DILocation(line: 67, column: 5, scope: !3413)
!3416 = !DILocation(line: 69, column: 5, scope: !3413)
!3417 = !DILocation(line: 83, column: 3, scope: !3366)
!3418 = !DILocation(line: 85, column: 3, scope: !3366)
!3419 = !DILocation(line: 88, column: 3, scope: !3366)
!3420 = !DILocation(line: 95, column: 3, scope: !3366)
!3421 = !DILocation(line: 97, column: 3, scope: !3366)
!3422 = !DILocation(line: 105, column: 7, scope: !3423)
!3423 = distinct !DILexicalBlock(scope: !3366, file: !642, line: 98, column: 5)
!3424 = !DILocation(line: 106, column: 7, scope: !3423)
!3425 = !DILocation(line: 109, column: 7, scope: !3423)
!3426 = !DILocation(line: 110, column: 7, scope: !3423)
!3427 = !DILocation(line: 113, column: 7, scope: !3423)
!3428 = !DILocation(line: 115, column: 7, scope: !3423)
!3429 = !DILocation(line: 120, column: 7, scope: !3423)
!3430 = !DILocation(line: 122, column: 7, scope: !3423)
!3431 = !DILocation(line: 127, column: 7, scope: !3423)
!3432 = !DILocation(line: 129, column: 7, scope: !3423)
!3433 = !DILocation(line: 134, column: 7, scope: !3423)
!3434 = !DILocation(line: 137, column: 7, scope: !3423)
!3435 = !DILocation(line: 142, column: 7, scope: !3423)
!3436 = !DILocation(line: 145, column: 7, scope: !3423)
!3437 = !DILocation(line: 150, column: 7, scope: !3423)
!3438 = !DILocation(line: 154, column: 7, scope: !3423)
!3439 = !DILocation(line: 159, column: 7, scope: !3423)
!3440 = !DILocation(line: 163, column: 7, scope: !3423)
!3441 = !DILocation(line: 170, column: 7, scope: !3423)
!3442 = !DILocation(line: 174, column: 7, scope: !3423)
!3443 = !DILocation(line: 176, column: 1, scope: !3366)
!3444 = distinct !DISubprogram(name: "version_etc_ar", scope: !642, file: !642, line: 183, type: !3445, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !3447)
!3445 = !DISubroutineType(types: !3446)
!3446 = !{null, !3369, !138, !138, !138, !3403}
!3447 = !{!3448, !3449, !3450, !3451, !3452, !3453}
!3448 = !DILocalVariable(name: "stream", arg: 1, scope: !3444, file: !642, line: 183, type: !3369)
!3449 = !DILocalVariable(name: "command_name", arg: 2, scope: !3444, file: !642, line: 184, type: !138)
!3450 = !DILocalVariable(name: "package", arg: 3, scope: !3444, file: !642, line: 184, type: !138)
!3451 = !DILocalVariable(name: "version", arg: 4, scope: !3444, file: !642, line: 185, type: !138)
!3452 = !DILocalVariable(name: "authors", arg: 5, scope: !3444, file: !642, line: 185, type: !3403)
!3453 = !DILocalVariable(name: "n_authors", scope: !3444, file: !642, line: 187, type: !136)
!3454 = !DILocation(line: 0, scope: !3444)
!3455 = !DILocation(line: 189, column: 8, scope: !3456)
!3456 = distinct !DILexicalBlock(scope: !3444, file: !642, line: 189, column: 3)
!3457 = !DILocation(line: 189, scope: !3456)
!3458 = !DILocation(line: 189, column: 23, scope: !3459)
!3459 = distinct !DILexicalBlock(scope: !3456, file: !642, line: 189, column: 3)
!3460 = !DILocation(line: 189, column: 3, scope: !3456)
!3461 = !DILocation(line: 189, column: 52, scope: !3459)
!3462 = distinct !{!3462, !3460, !3463, !975}
!3463 = !DILocation(line: 190, column: 5, scope: !3456)
!3464 = !DILocation(line: 191, column: 3, scope: !3444)
!3465 = !DILocation(line: 192, column: 1, scope: !3444)
!3466 = distinct !DISubprogram(name: "version_etc_va", scope: !642, file: !642, line: 199, type: !3467, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !3476)
!3467 = !DISubroutineType(types: !3468)
!3468 = !{null, !3369, !138, !138, !138, !3469}
!3469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3470, size: 64)
!3470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3471)
!3471 = !{!3472, !3473, !3474, !3475}
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3470, file: !642, line: 192, baseType: !91, size: 32)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3470, file: !642, line: 192, baseType: !91, size: 32, offset: 32)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3470, file: !642, line: 192, baseType: !129, size: 64, offset: 64)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3470, file: !642, line: 192, baseType: !129, size: 64, offset: 128)
!3476 = !{!3477, !3478, !3479, !3480, !3481, !3482, !3483}
!3477 = !DILocalVariable(name: "stream", arg: 1, scope: !3466, file: !642, line: 199, type: !3369)
!3478 = !DILocalVariable(name: "command_name", arg: 2, scope: !3466, file: !642, line: 200, type: !138)
!3479 = !DILocalVariable(name: "package", arg: 3, scope: !3466, file: !642, line: 200, type: !138)
!3480 = !DILocalVariable(name: "version", arg: 4, scope: !3466, file: !642, line: 201, type: !138)
!3481 = !DILocalVariable(name: "authors", arg: 5, scope: !3466, file: !642, line: 201, type: !3469)
!3482 = !DILocalVariable(name: "n_authors", scope: !3466, file: !642, line: 203, type: !136)
!3483 = !DILocalVariable(name: "authtab", scope: !3466, file: !642, line: 204, type: !3484)
!3484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 640, elements: !67)
!3485 = distinct !DIAssignID()
!3486 = !DILocation(line: 0, scope: !3466)
!3487 = !DILocation(line: 204, column: 3, scope: !3466)
!3488 = !DILocation(line: 208, column: 35, scope: !3489)
!3489 = distinct !DILexicalBlock(scope: !3490, file: !642, line: 206, column: 3)
!3490 = distinct !DILexicalBlock(scope: !3466, file: !642, line: 206, column: 3)
!3491 = !DILocation(line: 208, column: 33, scope: !3489)
!3492 = !DILocation(line: 208, column: 67, scope: !3489)
!3493 = !DILocation(line: 206, column: 3, scope: !3490)
!3494 = !DILocation(line: 208, column: 14, scope: !3489)
!3495 = !DILocation(line: 0, scope: !3490)
!3496 = !DILocation(line: 211, column: 3, scope: !3466)
!3497 = !DILocation(line: 213, column: 1, scope: !3466)
!3498 = distinct !DISubprogram(name: "version_etc", scope: !642, file: !642, line: 230, type: !3499, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !3501)
!3499 = !DISubroutineType(types: !3500)
!3500 = !{null, !3369, !138, !138, !138, null}
!3501 = !{!3502, !3503, !3504, !3505, !3506}
!3502 = !DILocalVariable(name: "stream", arg: 1, scope: !3498, file: !642, line: 230, type: !3369)
!3503 = !DILocalVariable(name: "command_name", arg: 2, scope: !3498, file: !642, line: 231, type: !138)
!3504 = !DILocalVariable(name: "package", arg: 3, scope: !3498, file: !642, line: 231, type: !138)
!3505 = !DILocalVariable(name: "version", arg: 4, scope: !3498, file: !642, line: 232, type: !138)
!3506 = !DILocalVariable(name: "authors", scope: !3498, file: !642, line: 234, type: !3507)
!3507 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !923, line: 52, baseType: !3508)
!3508 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1505, line: 12, baseType: !3509)
!3509 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !642, baseType: !3510)
!3510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3470, size: 192, elements: !62)
!3511 = distinct !DIAssignID()
!3512 = !DILocation(line: 0, scope: !3498)
!3513 = !DILocation(line: 234, column: 3, scope: !3498)
!3514 = !DILocation(line: 235, column: 3, scope: !3498)
!3515 = !DILocation(line: 236, column: 3, scope: !3498)
!3516 = !DILocation(line: 237, column: 3, scope: !3498)
!3517 = !DILocation(line: 238, column: 1, scope: !3498)
!3518 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !642, file: !642, line: 241, type: !496, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768)
!3519 = !DILocation(line: 243, column: 3, scope: !3518)
!3520 = !DILocation(line: 248, column: 3, scope: !3518)
!3521 = !DILocation(line: 254, column: 3, scope: !3518)
!3522 = !DILocation(line: 259, column: 3, scope: !3518)
!3523 = !DILocation(line: 261, column: 1, scope: !3518)
!3524 = distinct !DISubprogram(name: "xnrealloc", scope: !3525, file: !3525, line: 147, type: !3526, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !3528)
!3525 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3526 = !DISubroutineType(types: !3527)
!3527 = !{!129, !129, !136, !136}
!3528 = !{!3529, !3530, !3531}
!3529 = !DILocalVariable(name: "p", arg: 1, scope: !3524, file: !3525, line: 147, type: !129)
!3530 = !DILocalVariable(name: "n", arg: 2, scope: !3524, file: !3525, line: 147, type: !136)
!3531 = !DILocalVariable(name: "s", arg: 3, scope: !3524, file: !3525, line: 147, type: !136)
!3532 = !DILocation(line: 0, scope: !3524)
!3533 = !DILocalVariable(name: "p", arg: 1, scope: !3534, file: !776, line: 83, type: !129)
!3534 = distinct !DISubprogram(name: "xreallocarray", scope: !776, file: !776, line: 83, type: !3526, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !3535)
!3535 = !{!3533, !3536, !3537}
!3536 = !DILocalVariable(name: "n", arg: 2, scope: !3534, file: !776, line: 83, type: !136)
!3537 = !DILocalVariable(name: "s", arg: 3, scope: !3534, file: !776, line: 83, type: !136)
!3538 = !DILocation(line: 0, scope: !3534, inlinedAt: !3539)
!3539 = distinct !DILocation(line: 149, column: 10, scope: !3524)
!3540 = !DILocation(line: 85, column: 25, scope: !3534, inlinedAt: !3539)
!3541 = !DILocalVariable(name: "p", arg: 1, scope: !3542, file: !776, line: 37, type: !129)
!3542 = distinct !DISubprogram(name: "check_nonnull", scope: !776, file: !776, line: 37, type: !3543, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !3545)
!3543 = !DISubroutineType(types: !3544)
!3544 = !{!129, !129}
!3545 = !{!3541}
!3546 = !DILocation(line: 0, scope: !3542, inlinedAt: !3547)
!3547 = distinct !DILocation(line: 85, column: 10, scope: !3534, inlinedAt: !3539)
!3548 = !DILocation(line: 39, column: 8, scope: !3549, inlinedAt: !3547)
!3549 = distinct !DILexicalBlock(scope: !3542, file: !776, line: 39, column: 7)
!3550 = !DILocation(line: 39, column: 7, scope: !3542, inlinedAt: !3547)
!3551 = !DILocation(line: 40, column: 5, scope: !3549, inlinedAt: !3547)
!3552 = !DILocation(line: 149, column: 3, scope: !3524)
!3553 = !DILocation(line: 0, scope: !3534)
!3554 = !DILocation(line: 85, column: 25, scope: !3534)
!3555 = !DILocation(line: 0, scope: !3542, inlinedAt: !3556)
!3556 = distinct !DILocation(line: 85, column: 10, scope: !3534)
!3557 = !DILocation(line: 39, column: 8, scope: !3549, inlinedAt: !3556)
!3558 = !DILocation(line: 39, column: 7, scope: !3542, inlinedAt: !3556)
!3559 = !DILocation(line: 40, column: 5, scope: !3549, inlinedAt: !3556)
!3560 = !DILocation(line: 85, column: 3, scope: !3534)
!3561 = distinct !DISubprogram(name: "xmalloc", scope: !776, file: !776, line: 47, type: !3562, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !3564)
!3562 = !DISubroutineType(types: !3563)
!3563 = !{!129, !136}
!3564 = !{!3565}
!3565 = !DILocalVariable(name: "s", arg: 1, scope: !3561, file: !776, line: 47, type: !136)
!3566 = !DILocation(line: 0, scope: !3561)
!3567 = !DILocation(line: 49, column: 25, scope: !3561)
!3568 = !DILocation(line: 0, scope: !3542, inlinedAt: !3569)
!3569 = distinct !DILocation(line: 49, column: 10, scope: !3561)
!3570 = !DILocation(line: 39, column: 8, scope: !3549, inlinedAt: !3569)
!3571 = !DILocation(line: 39, column: 7, scope: !3542, inlinedAt: !3569)
!3572 = !DILocation(line: 40, column: 5, scope: !3549, inlinedAt: !3569)
!3573 = !DILocation(line: 49, column: 3, scope: !3561)
!3574 = !DISubprogram(name: "malloc", scope: !1052, file: !1052, line: 540, type: !3562, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3575 = distinct !DISubprogram(name: "ximalloc", scope: !776, file: !776, line: 53, type: !3576, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !3578)
!3576 = !DISubroutineType(types: !3577)
!3577 = !{!129, !795}
!3578 = !{!3579}
!3579 = !DILocalVariable(name: "s", arg: 1, scope: !3575, file: !776, line: 53, type: !795)
!3580 = !DILocation(line: 0, scope: !3575)
!3581 = !DILocalVariable(name: "s", arg: 1, scope: !3582, file: !3583, line: 55, type: !795)
!3582 = distinct !DISubprogram(name: "imalloc", scope: !3583, file: !3583, line: 55, type: !3576, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !3584)
!3583 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3584 = !{!3581}
!3585 = !DILocation(line: 0, scope: !3582, inlinedAt: !3586)
!3586 = distinct !DILocation(line: 55, column: 25, scope: !3575)
!3587 = !DILocation(line: 57, column: 26, scope: !3582, inlinedAt: !3586)
!3588 = !DILocation(line: 0, scope: !3542, inlinedAt: !3589)
!3589 = distinct !DILocation(line: 55, column: 10, scope: !3575)
!3590 = !DILocation(line: 39, column: 8, scope: !3549, inlinedAt: !3589)
!3591 = !DILocation(line: 39, column: 7, scope: !3542, inlinedAt: !3589)
!3592 = !DILocation(line: 40, column: 5, scope: !3549, inlinedAt: !3589)
!3593 = !DILocation(line: 55, column: 3, scope: !3575)
!3594 = distinct !DISubprogram(name: "xcharalloc", scope: !776, file: !776, line: 59, type: !3595, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !3597)
!3595 = !DISubroutineType(types: !3596)
!3596 = !{!128, !136}
!3597 = !{!3598}
!3598 = !DILocalVariable(name: "n", arg: 1, scope: !3594, file: !776, line: 59, type: !136)
!3599 = !DILocation(line: 0, scope: !3594)
!3600 = !DILocation(line: 0, scope: !3561, inlinedAt: !3601)
!3601 = distinct !DILocation(line: 61, column: 10, scope: !3594)
!3602 = !DILocation(line: 49, column: 25, scope: !3561, inlinedAt: !3601)
!3603 = !DILocation(line: 0, scope: !3542, inlinedAt: !3604)
!3604 = distinct !DILocation(line: 49, column: 10, scope: !3561, inlinedAt: !3601)
!3605 = !DILocation(line: 39, column: 8, scope: !3549, inlinedAt: !3604)
!3606 = !DILocation(line: 39, column: 7, scope: !3542, inlinedAt: !3604)
!3607 = !DILocation(line: 40, column: 5, scope: !3549, inlinedAt: !3604)
!3608 = !DILocation(line: 61, column: 3, scope: !3594)
!3609 = distinct !DISubprogram(name: "xrealloc", scope: !776, file: !776, line: 68, type: !3610, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !3612)
!3610 = !DISubroutineType(types: !3611)
!3611 = !{!129, !129, !136}
!3612 = !{!3613, !3614}
!3613 = !DILocalVariable(name: "p", arg: 1, scope: !3609, file: !776, line: 68, type: !129)
!3614 = !DILocalVariable(name: "s", arg: 2, scope: !3609, file: !776, line: 68, type: !136)
!3615 = !DILocation(line: 0, scope: !3609)
!3616 = !DILocalVariable(name: "ptr", arg: 1, scope: !3617, file: !3618, line: 2057, type: !129)
!3617 = distinct !DISubprogram(name: "rpl_realloc", scope: !3618, file: !3618, line: 2057, type: !3610, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !3619)
!3618 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3619 = !{!3616, !3620}
!3620 = !DILocalVariable(name: "size", arg: 2, scope: !3617, file: !3618, line: 2057, type: !136)
!3621 = !DILocation(line: 0, scope: !3617, inlinedAt: !3622)
!3622 = distinct !DILocation(line: 70, column: 25, scope: !3609)
!3623 = !DILocation(line: 2059, column: 24, scope: !3617, inlinedAt: !3622)
!3624 = !DILocation(line: 2059, column: 10, scope: !3617, inlinedAt: !3622)
!3625 = !DILocation(line: 0, scope: !3542, inlinedAt: !3626)
!3626 = distinct !DILocation(line: 70, column: 10, scope: !3609)
!3627 = !DILocation(line: 39, column: 8, scope: !3549, inlinedAt: !3626)
!3628 = !DILocation(line: 39, column: 7, scope: !3542, inlinedAt: !3626)
!3629 = !DILocation(line: 40, column: 5, scope: !3549, inlinedAt: !3626)
!3630 = !DILocation(line: 70, column: 3, scope: !3609)
!3631 = !DISubprogram(name: "realloc", scope: !1052, file: !1052, line: 551, type: !3610, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3632 = distinct !DISubprogram(name: "xirealloc", scope: !776, file: !776, line: 74, type: !3633, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !3635)
!3633 = !DISubroutineType(types: !3634)
!3634 = !{!129, !129, !795}
!3635 = !{!3636, !3637}
!3636 = !DILocalVariable(name: "p", arg: 1, scope: !3632, file: !776, line: 74, type: !129)
!3637 = !DILocalVariable(name: "s", arg: 2, scope: !3632, file: !776, line: 74, type: !795)
!3638 = !DILocation(line: 0, scope: !3632)
!3639 = !DILocalVariable(name: "p", arg: 1, scope: !3640, file: !3583, line: 66, type: !129)
!3640 = distinct !DISubprogram(name: "irealloc", scope: !3583, file: !3583, line: 66, type: !3633, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !3641)
!3641 = !{!3639, !3642}
!3642 = !DILocalVariable(name: "s", arg: 2, scope: !3640, file: !3583, line: 66, type: !795)
!3643 = !DILocation(line: 0, scope: !3640, inlinedAt: !3644)
!3644 = distinct !DILocation(line: 76, column: 25, scope: !3632)
!3645 = !DILocation(line: 0, scope: !3617, inlinedAt: !3646)
!3646 = distinct !DILocation(line: 68, column: 26, scope: !3640, inlinedAt: !3644)
!3647 = !DILocation(line: 2059, column: 24, scope: !3617, inlinedAt: !3646)
!3648 = !DILocation(line: 2059, column: 10, scope: !3617, inlinedAt: !3646)
!3649 = !DILocation(line: 0, scope: !3542, inlinedAt: !3650)
!3650 = distinct !DILocation(line: 76, column: 10, scope: !3632)
!3651 = !DILocation(line: 39, column: 8, scope: !3549, inlinedAt: !3650)
!3652 = !DILocation(line: 39, column: 7, scope: !3542, inlinedAt: !3650)
!3653 = !DILocation(line: 40, column: 5, scope: !3549, inlinedAt: !3650)
!3654 = !DILocation(line: 76, column: 3, scope: !3632)
!3655 = distinct !DISubprogram(name: "xireallocarray", scope: !776, file: !776, line: 89, type: !3656, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !3658)
!3656 = !DISubroutineType(types: !3657)
!3657 = !{!129, !129, !795, !795}
!3658 = !{!3659, !3660, !3661}
!3659 = !DILocalVariable(name: "p", arg: 1, scope: !3655, file: !776, line: 89, type: !129)
!3660 = !DILocalVariable(name: "n", arg: 2, scope: !3655, file: !776, line: 89, type: !795)
!3661 = !DILocalVariable(name: "s", arg: 3, scope: !3655, file: !776, line: 89, type: !795)
!3662 = !DILocation(line: 0, scope: !3655)
!3663 = !DILocalVariable(name: "p", arg: 1, scope: !3664, file: !3583, line: 98, type: !129)
!3664 = distinct !DISubprogram(name: "ireallocarray", scope: !3583, file: !3583, line: 98, type: !3656, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !3665)
!3665 = !{!3663, !3666, !3667}
!3666 = !DILocalVariable(name: "n", arg: 2, scope: !3664, file: !3583, line: 98, type: !795)
!3667 = !DILocalVariable(name: "s", arg: 3, scope: !3664, file: !3583, line: 98, type: !795)
!3668 = !DILocation(line: 0, scope: !3664, inlinedAt: !3669)
!3669 = distinct !DILocation(line: 91, column: 25, scope: !3655)
!3670 = !DILocation(line: 101, column: 13, scope: !3664, inlinedAt: !3669)
!3671 = !DILocation(line: 0, scope: !3542, inlinedAt: !3672)
!3672 = distinct !DILocation(line: 91, column: 10, scope: !3655)
!3673 = !DILocation(line: 39, column: 8, scope: !3549, inlinedAt: !3672)
!3674 = !DILocation(line: 39, column: 7, scope: !3542, inlinedAt: !3672)
!3675 = !DILocation(line: 40, column: 5, scope: !3549, inlinedAt: !3672)
!3676 = !DILocation(line: 91, column: 3, scope: !3655)
!3677 = distinct !DISubprogram(name: "xnmalloc", scope: !776, file: !776, line: 98, type: !3678, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !3680)
!3678 = !DISubroutineType(types: !3679)
!3679 = !{!129, !136, !136}
!3680 = !{!3681, !3682}
!3681 = !DILocalVariable(name: "n", arg: 1, scope: !3677, file: !776, line: 98, type: !136)
!3682 = !DILocalVariable(name: "s", arg: 2, scope: !3677, file: !776, line: 98, type: !136)
!3683 = !DILocation(line: 0, scope: !3677)
!3684 = !DILocation(line: 0, scope: !3534, inlinedAt: !3685)
!3685 = distinct !DILocation(line: 100, column: 10, scope: !3677)
!3686 = !DILocation(line: 85, column: 25, scope: !3534, inlinedAt: !3685)
!3687 = !DILocation(line: 0, scope: !3542, inlinedAt: !3688)
!3688 = distinct !DILocation(line: 85, column: 10, scope: !3534, inlinedAt: !3685)
!3689 = !DILocation(line: 39, column: 8, scope: !3549, inlinedAt: !3688)
!3690 = !DILocation(line: 39, column: 7, scope: !3542, inlinedAt: !3688)
!3691 = !DILocation(line: 40, column: 5, scope: !3549, inlinedAt: !3688)
!3692 = !DILocation(line: 100, column: 3, scope: !3677)
!3693 = distinct !DISubprogram(name: "xinmalloc", scope: !776, file: !776, line: 104, type: !3694, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !3696)
!3694 = !DISubroutineType(types: !3695)
!3695 = !{!129, !795, !795}
!3696 = !{!3697, !3698}
!3697 = !DILocalVariable(name: "n", arg: 1, scope: !3693, file: !776, line: 104, type: !795)
!3698 = !DILocalVariable(name: "s", arg: 2, scope: !3693, file: !776, line: 104, type: !795)
!3699 = !DILocation(line: 0, scope: !3693)
!3700 = !DILocation(line: 0, scope: !3655, inlinedAt: !3701)
!3701 = distinct !DILocation(line: 106, column: 10, scope: !3693)
!3702 = !DILocation(line: 0, scope: !3664, inlinedAt: !3703)
!3703 = distinct !DILocation(line: 91, column: 25, scope: !3655, inlinedAt: !3701)
!3704 = !DILocation(line: 101, column: 13, scope: !3664, inlinedAt: !3703)
!3705 = !DILocation(line: 0, scope: !3542, inlinedAt: !3706)
!3706 = distinct !DILocation(line: 91, column: 10, scope: !3655, inlinedAt: !3701)
!3707 = !DILocation(line: 39, column: 8, scope: !3549, inlinedAt: !3706)
!3708 = !DILocation(line: 39, column: 7, scope: !3542, inlinedAt: !3706)
!3709 = !DILocation(line: 40, column: 5, scope: !3549, inlinedAt: !3706)
!3710 = !DILocation(line: 106, column: 3, scope: !3693)
!3711 = distinct !DISubprogram(name: "x2realloc", scope: !776, file: !776, line: 116, type: !3712, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !3714)
!3712 = !DISubroutineType(types: !3713)
!3713 = !{!129, !129, !782}
!3714 = !{!3715, !3716}
!3715 = !DILocalVariable(name: "p", arg: 1, scope: !3711, file: !776, line: 116, type: !129)
!3716 = !DILocalVariable(name: "ps", arg: 2, scope: !3711, file: !776, line: 116, type: !782)
!3717 = !DILocation(line: 0, scope: !3711)
!3718 = !DILocation(line: 0, scope: !779, inlinedAt: !3719)
!3719 = distinct !DILocation(line: 118, column: 10, scope: !3711)
!3720 = !DILocation(line: 178, column: 14, scope: !779, inlinedAt: !3719)
!3721 = !DILocation(line: 180, column: 9, scope: !3722, inlinedAt: !3719)
!3722 = distinct !DILexicalBlock(scope: !779, file: !776, line: 180, column: 7)
!3723 = !DILocation(line: 180, column: 7, scope: !779, inlinedAt: !3719)
!3724 = !DILocation(line: 182, column: 13, scope: !3725, inlinedAt: !3719)
!3725 = distinct !DILexicalBlock(scope: !3726, file: !776, line: 182, column: 11)
!3726 = distinct !DILexicalBlock(scope: !3722, file: !776, line: 181, column: 5)
!3727 = !DILocation(line: 182, column: 11, scope: !3726, inlinedAt: !3719)
!3728 = !DILocation(line: 197, column: 11, scope: !3729, inlinedAt: !3719)
!3729 = distinct !DILexicalBlock(scope: !3730, file: !776, line: 197, column: 11)
!3730 = distinct !DILexicalBlock(scope: !3722, file: !776, line: 195, column: 5)
!3731 = !DILocation(line: 197, column: 11, scope: !3730, inlinedAt: !3719)
!3732 = !DILocation(line: 198, column: 9, scope: !3729, inlinedAt: !3719)
!3733 = !DILocation(line: 0, scope: !3534, inlinedAt: !3734)
!3734 = distinct !DILocation(line: 201, column: 7, scope: !779, inlinedAt: !3719)
!3735 = !DILocation(line: 85, column: 25, scope: !3534, inlinedAt: !3734)
!3736 = !DILocation(line: 0, scope: !3542, inlinedAt: !3737)
!3737 = distinct !DILocation(line: 85, column: 10, scope: !3534, inlinedAt: !3734)
!3738 = !DILocation(line: 39, column: 8, scope: !3549, inlinedAt: !3737)
!3739 = !DILocation(line: 39, column: 7, scope: !3542, inlinedAt: !3737)
!3740 = !DILocation(line: 40, column: 5, scope: !3549, inlinedAt: !3737)
!3741 = !DILocation(line: 202, column: 7, scope: !779, inlinedAt: !3719)
!3742 = !DILocation(line: 118, column: 3, scope: !3711)
!3743 = !DILocation(line: 0, scope: !779)
!3744 = !DILocation(line: 178, column: 14, scope: !779)
!3745 = !DILocation(line: 180, column: 9, scope: !3722)
!3746 = !DILocation(line: 180, column: 7, scope: !779)
!3747 = !DILocation(line: 182, column: 13, scope: !3725)
!3748 = !DILocation(line: 182, column: 11, scope: !3726)
!3749 = !DILocation(line: 190, column: 30, scope: !3750)
!3750 = distinct !DILexicalBlock(scope: !3725, file: !776, line: 183, column: 9)
!3751 = !DILocation(line: 191, column: 16, scope: !3750)
!3752 = !DILocation(line: 191, column: 13, scope: !3750)
!3753 = !DILocation(line: 192, column: 9, scope: !3750)
!3754 = !DILocation(line: 197, column: 11, scope: !3729)
!3755 = !DILocation(line: 197, column: 11, scope: !3730)
!3756 = !DILocation(line: 198, column: 9, scope: !3729)
!3757 = !DILocation(line: 0, scope: !3534, inlinedAt: !3758)
!3758 = distinct !DILocation(line: 201, column: 7, scope: !779)
!3759 = !DILocation(line: 85, column: 25, scope: !3534, inlinedAt: !3758)
!3760 = !DILocation(line: 0, scope: !3542, inlinedAt: !3761)
!3761 = distinct !DILocation(line: 85, column: 10, scope: !3534, inlinedAt: !3758)
!3762 = !DILocation(line: 39, column: 8, scope: !3549, inlinedAt: !3761)
!3763 = !DILocation(line: 39, column: 7, scope: !3542, inlinedAt: !3761)
!3764 = !DILocation(line: 40, column: 5, scope: !3549, inlinedAt: !3761)
!3765 = !DILocation(line: 202, column: 7, scope: !779)
!3766 = !DILocation(line: 203, column: 3, scope: !779)
!3767 = !DILocation(line: 0, scope: !791)
!3768 = !DILocation(line: 230, column: 14, scope: !791)
!3769 = !DILocation(line: 238, column: 7, scope: !3770)
!3770 = distinct !DILexicalBlock(scope: !791, file: !776, line: 238, column: 7)
!3771 = !DILocation(line: 238, column: 7, scope: !791)
!3772 = !DILocation(line: 240, column: 9, scope: !3773)
!3773 = distinct !DILexicalBlock(scope: !791, file: !776, line: 240, column: 7)
!3774 = !DILocation(line: 240, column: 18, scope: !3773)
!3775 = !DILocation(line: 253, column: 8, scope: !791)
!3776 = !DILocation(line: 256, column: 7, scope: !3777)
!3777 = distinct !DILexicalBlock(scope: !791, file: !776, line: 256, column: 7)
!3778 = !DILocation(line: 256, column: 7, scope: !791)
!3779 = !DILocation(line: 258, column: 27, scope: !3780)
!3780 = distinct !DILexicalBlock(scope: !3777, file: !776, line: 257, column: 5)
!3781 = !DILocation(line: 259, column: 50, scope: !3780)
!3782 = !DILocation(line: 259, column: 32, scope: !3780)
!3783 = !DILocation(line: 260, column: 5, scope: !3780)
!3784 = !DILocation(line: 262, column: 9, scope: !3785)
!3785 = distinct !DILexicalBlock(scope: !791, file: !776, line: 262, column: 7)
!3786 = !DILocation(line: 262, column: 7, scope: !791)
!3787 = !DILocation(line: 263, column: 9, scope: !3785)
!3788 = !DILocation(line: 263, column: 5, scope: !3785)
!3789 = !DILocation(line: 264, column: 9, scope: !3790)
!3790 = distinct !DILexicalBlock(scope: !791, file: !776, line: 264, column: 7)
!3791 = !DILocation(line: 264, column: 14, scope: !3790)
!3792 = !DILocation(line: 265, column: 7, scope: !3790)
!3793 = !DILocation(line: 265, column: 11, scope: !3790)
!3794 = !DILocation(line: 266, column: 11, scope: !3790)
!3795 = !DILocation(line: 267, column: 14, scope: !3790)
!3796 = !DILocation(line: 264, column: 7, scope: !791)
!3797 = !DILocation(line: 268, column: 5, scope: !3790)
!3798 = !DILocation(line: 0, scope: !3609, inlinedAt: !3799)
!3799 = distinct !DILocation(line: 269, column: 8, scope: !791)
!3800 = !DILocation(line: 0, scope: !3617, inlinedAt: !3801)
!3801 = distinct !DILocation(line: 70, column: 25, scope: !3609, inlinedAt: !3799)
!3802 = !DILocation(line: 2059, column: 24, scope: !3617, inlinedAt: !3801)
!3803 = !DILocation(line: 2059, column: 10, scope: !3617, inlinedAt: !3801)
!3804 = !DILocation(line: 0, scope: !3542, inlinedAt: !3805)
!3805 = distinct !DILocation(line: 70, column: 10, scope: !3609, inlinedAt: !3799)
!3806 = !DILocation(line: 39, column: 8, scope: !3549, inlinedAt: !3805)
!3807 = !DILocation(line: 39, column: 7, scope: !3542, inlinedAt: !3805)
!3808 = !DILocation(line: 40, column: 5, scope: !3549, inlinedAt: !3805)
!3809 = !DILocation(line: 270, column: 7, scope: !791)
!3810 = !DILocation(line: 271, column: 3, scope: !791)
!3811 = distinct !DISubprogram(name: "xzalloc", scope: !776, file: !776, line: 279, type: !3562, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !3812)
!3812 = !{!3813}
!3813 = !DILocalVariable(name: "s", arg: 1, scope: !3811, file: !776, line: 279, type: !136)
!3814 = !DILocation(line: 0, scope: !3811)
!3815 = !DILocalVariable(name: "n", arg: 1, scope: !3816, file: !776, line: 294, type: !136)
!3816 = distinct !DISubprogram(name: "xcalloc", scope: !776, file: !776, line: 294, type: !3678, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !3817)
!3817 = !{!3815, !3818}
!3818 = !DILocalVariable(name: "s", arg: 2, scope: !3816, file: !776, line: 294, type: !136)
!3819 = !DILocation(line: 0, scope: !3816, inlinedAt: !3820)
!3820 = distinct !DILocation(line: 281, column: 10, scope: !3811)
!3821 = !DILocation(line: 296, column: 25, scope: !3816, inlinedAt: !3820)
!3822 = !DILocation(line: 0, scope: !3542, inlinedAt: !3823)
!3823 = distinct !DILocation(line: 296, column: 10, scope: !3816, inlinedAt: !3820)
!3824 = !DILocation(line: 39, column: 8, scope: !3549, inlinedAt: !3823)
!3825 = !DILocation(line: 39, column: 7, scope: !3542, inlinedAt: !3823)
!3826 = !DILocation(line: 40, column: 5, scope: !3549, inlinedAt: !3823)
!3827 = !DILocation(line: 281, column: 3, scope: !3811)
!3828 = !DISubprogram(name: "calloc", scope: !1052, file: !1052, line: 543, type: !3678, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3829 = !DILocation(line: 0, scope: !3816)
!3830 = !DILocation(line: 296, column: 25, scope: !3816)
!3831 = !DILocation(line: 0, scope: !3542, inlinedAt: !3832)
!3832 = distinct !DILocation(line: 296, column: 10, scope: !3816)
!3833 = !DILocation(line: 39, column: 8, scope: !3549, inlinedAt: !3832)
!3834 = !DILocation(line: 39, column: 7, scope: !3542, inlinedAt: !3832)
!3835 = !DILocation(line: 40, column: 5, scope: !3549, inlinedAt: !3832)
!3836 = !DILocation(line: 296, column: 3, scope: !3816)
!3837 = distinct !DISubprogram(name: "xizalloc", scope: !776, file: !776, line: 285, type: !3576, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !3838)
!3838 = !{!3839}
!3839 = !DILocalVariable(name: "s", arg: 1, scope: !3837, file: !776, line: 285, type: !795)
!3840 = !DILocation(line: 0, scope: !3837)
!3841 = !DILocalVariable(name: "n", arg: 1, scope: !3842, file: !776, line: 300, type: !795)
!3842 = distinct !DISubprogram(name: "xicalloc", scope: !776, file: !776, line: 300, type: !3694, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !3843)
!3843 = !{!3841, !3844}
!3844 = !DILocalVariable(name: "s", arg: 2, scope: !3842, file: !776, line: 300, type: !795)
!3845 = !DILocation(line: 0, scope: !3842, inlinedAt: !3846)
!3846 = distinct !DILocation(line: 287, column: 10, scope: !3837)
!3847 = !DILocalVariable(name: "n", arg: 1, scope: !3848, file: !3583, line: 77, type: !795)
!3848 = distinct !DISubprogram(name: "icalloc", scope: !3583, file: !3583, line: 77, type: !3694, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !3849)
!3849 = !{!3847, !3850}
!3850 = !DILocalVariable(name: "s", arg: 2, scope: !3848, file: !3583, line: 77, type: !795)
!3851 = !DILocation(line: 0, scope: !3848, inlinedAt: !3852)
!3852 = distinct !DILocation(line: 302, column: 25, scope: !3842, inlinedAt: !3846)
!3853 = !DILocation(line: 91, column: 10, scope: !3848, inlinedAt: !3852)
!3854 = !DILocation(line: 0, scope: !3542, inlinedAt: !3855)
!3855 = distinct !DILocation(line: 302, column: 10, scope: !3842, inlinedAt: !3846)
!3856 = !DILocation(line: 39, column: 8, scope: !3549, inlinedAt: !3855)
!3857 = !DILocation(line: 39, column: 7, scope: !3542, inlinedAt: !3855)
!3858 = !DILocation(line: 40, column: 5, scope: !3549, inlinedAt: !3855)
!3859 = !DILocation(line: 287, column: 3, scope: !3837)
!3860 = !DILocation(line: 0, scope: !3842)
!3861 = !DILocation(line: 0, scope: !3848, inlinedAt: !3862)
!3862 = distinct !DILocation(line: 302, column: 25, scope: !3842)
!3863 = !DILocation(line: 91, column: 10, scope: !3848, inlinedAt: !3862)
!3864 = !DILocation(line: 0, scope: !3542, inlinedAt: !3865)
!3865 = distinct !DILocation(line: 302, column: 10, scope: !3842)
!3866 = !DILocation(line: 39, column: 8, scope: !3549, inlinedAt: !3865)
!3867 = !DILocation(line: 39, column: 7, scope: !3542, inlinedAt: !3865)
!3868 = !DILocation(line: 40, column: 5, scope: !3549, inlinedAt: !3865)
!3869 = !DILocation(line: 302, column: 3, scope: !3842)
!3870 = distinct !DISubprogram(name: "xmemdup", scope: !776, file: !776, line: 310, type: !3871, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !3873)
!3871 = !DISubroutineType(types: !3872)
!3872 = !{!129, !1076, !136}
!3873 = !{!3874, !3875}
!3874 = !DILocalVariable(name: "p", arg: 1, scope: !3870, file: !776, line: 310, type: !1076)
!3875 = !DILocalVariable(name: "s", arg: 2, scope: !3870, file: !776, line: 310, type: !136)
!3876 = !DILocation(line: 0, scope: !3870)
!3877 = !DILocation(line: 0, scope: !3561, inlinedAt: !3878)
!3878 = distinct !DILocation(line: 312, column: 18, scope: !3870)
!3879 = !DILocation(line: 49, column: 25, scope: !3561, inlinedAt: !3878)
!3880 = !DILocation(line: 0, scope: !3542, inlinedAt: !3881)
!3881 = distinct !DILocation(line: 49, column: 10, scope: !3561, inlinedAt: !3878)
!3882 = !DILocation(line: 39, column: 8, scope: !3549, inlinedAt: !3881)
!3883 = !DILocation(line: 39, column: 7, scope: !3542, inlinedAt: !3881)
!3884 = !DILocation(line: 40, column: 5, scope: !3549, inlinedAt: !3881)
!3885 = !DILocalVariable(name: "__dest", arg: 1, scope: !3886, file: !2003, line: 26, type: !3889)
!3886 = distinct !DISubprogram(name: "memcpy", scope: !2003, file: !2003, line: 26, type: !3887, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !3890)
!3887 = !DISubroutineType(types: !3888)
!3888 = !{!129, !3889, !1075, !136}
!3889 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !129)
!3890 = !{!3885, !3891, !3892}
!3891 = !DILocalVariable(name: "__src", arg: 2, scope: !3886, file: !2003, line: 26, type: !1075)
!3892 = !DILocalVariable(name: "__len", arg: 3, scope: !3886, file: !2003, line: 26, type: !136)
!3893 = !DILocation(line: 0, scope: !3886, inlinedAt: !3894)
!3894 = distinct !DILocation(line: 312, column: 10, scope: !3870)
!3895 = !DILocation(line: 29, column: 10, scope: !3886, inlinedAt: !3894)
!3896 = !DILocation(line: 312, column: 3, scope: !3870)
!3897 = distinct !DISubprogram(name: "ximemdup", scope: !776, file: !776, line: 316, type: !3898, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !3900)
!3898 = !DISubroutineType(types: !3899)
!3899 = !{!129, !1076, !795}
!3900 = !{!3901, !3902}
!3901 = !DILocalVariable(name: "p", arg: 1, scope: !3897, file: !776, line: 316, type: !1076)
!3902 = !DILocalVariable(name: "s", arg: 2, scope: !3897, file: !776, line: 316, type: !795)
!3903 = !DILocation(line: 0, scope: !3897)
!3904 = !DILocation(line: 0, scope: !3575, inlinedAt: !3905)
!3905 = distinct !DILocation(line: 318, column: 18, scope: !3897)
!3906 = !DILocation(line: 0, scope: !3582, inlinedAt: !3907)
!3907 = distinct !DILocation(line: 55, column: 25, scope: !3575, inlinedAt: !3905)
!3908 = !DILocation(line: 57, column: 26, scope: !3582, inlinedAt: !3907)
!3909 = !DILocation(line: 0, scope: !3542, inlinedAt: !3910)
!3910 = distinct !DILocation(line: 55, column: 10, scope: !3575, inlinedAt: !3905)
!3911 = !DILocation(line: 39, column: 8, scope: !3549, inlinedAt: !3910)
!3912 = !DILocation(line: 39, column: 7, scope: !3542, inlinedAt: !3910)
!3913 = !DILocation(line: 40, column: 5, scope: !3549, inlinedAt: !3910)
!3914 = !DILocation(line: 0, scope: !3886, inlinedAt: !3915)
!3915 = distinct !DILocation(line: 318, column: 10, scope: !3897)
!3916 = !DILocation(line: 29, column: 10, scope: !3886, inlinedAt: !3915)
!3917 = !DILocation(line: 318, column: 3, scope: !3897)
!3918 = distinct !DISubprogram(name: "ximemdup0", scope: !776, file: !776, line: 325, type: !3919, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !3921)
!3919 = !DISubroutineType(types: !3920)
!3920 = !{!128, !1076, !795}
!3921 = !{!3922, !3923, !3924}
!3922 = !DILocalVariable(name: "p", arg: 1, scope: !3918, file: !776, line: 325, type: !1076)
!3923 = !DILocalVariable(name: "s", arg: 2, scope: !3918, file: !776, line: 325, type: !795)
!3924 = !DILocalVariable(name: "result", scope: !3918, file: !776, line: 327, type: !128)
!3925 = !DILocation(line: 0, scope: !3918)
!3926 = !DILocation(line: 327, column: 30, scope: !3918)
!3927 = !DILocation(line: 0, scope: !3575, inlinedAt: !3928)
!3928 = distinct !DILocation(line: 327, column: 18, scope: !3918)
!3929 = !DILocation(line: 0, scope: !3582, inlinedAt: !3930)
!3930 = distinct !DILocation(line: 55, column: 25, scope: !3575, inlinedAt: !3928)
!3931 = !DILocation(line: 57, column: 26, scope: !3582, inlinedAt: !3930)
!3932 = !DILocation(line: 0, scope: !3542, inlinedAt: !3933)
!3933 = distinct !DILocation(line: 55, column: 10, scope: !3575, inlinedAt: !3928)
!3934 = !DILocation(line: 39, column: 8, scope: !3549, inlinedAt: !3933)
!3935 = !DILocation(line: 39, column: 7, scope: !3542, inlinedAt: !3933)
!3936 = !DILocation(line: 40, column: 5, scope: !3549, inlinedAt: !3933)
!3937 = !DILocation(line: 328, column: 3, scope: !3918)
!3938 = !DILocation(line: 328, column: 13, scope: !3918)
!3939 = !DILocation(line: 0, scope: !3886, inlinedAt: !3940)
!3940 = distinct !DILocation(line: 329, column: 10, scope: !3918)
!3941 = !DILocation(line: 29, column: 10, scope: !3886, inlinedAt: !3940)
!3942 = !DILocation(line: 329, column: 3, scope: !3918)
!3943 = distinct !DISubprogram(name: "xstrdup", scope: !776, file: !776, line: 335, type: !1054, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !3944)
!3944 = !{!3945}
!3945 = !DILocalVariable(name: "string", arg: 1, scope: !3943, file: !776, line: 335, type: !138)
!3946 = !DILocation(line: 0, scope: !3943)
!3947 = !DILocation(line: 337, column: 27, scope: !3943)
!3948 = !DILocation(line: 337, column: 43, scope: !3943)
!3949 = !DILocation(line: 0, scope: !3870, inlinedAt: !3950)
!3950 = distinct !DILocation(line: 337, column: 10, scope: !3943)
!3951 = !DILocation(line: 0, scope: !3561, inlinedAt: !3952)
!3952 = distinct !DILocation(line: 312, column: 18, scope: !3870, inlinedAt: !3950)
!3953 = !DILocation(line: 49, column: 25, scope: !3561, inlinedAt: !3952)
!3954 = !DILocation(line: 0, scope: !3542, inlinedAt: !3955)
!3955 = distinct !DILocation(line: 49, column: 10, scope: !3561, inlinedAt: !3952)
!3956 = !DILocation(line: 39, column: 8, scope: !3549, inlinedAt: !3955)
!3957 = !DILocation(line: 39, column: 7, scope: !3542, inlinedAt: !3955)
!3958 = !DILocation(line: 40, column: 5, scope: !3549, inlinedAt: !3955)
!3959 = !DILocation(line: 0, scope: !3886, inlinedAt: !3960)
!3960 = distinct !DILocation(line: 312, column: 10, scope: !3870, inlinedAt: !3950)
!3961 = !DILocation(line: 29, column: 10, scope: !3886, inlinedAt: !3960)
!3962 = !DILocation(line: 337, column: 3, scope: !3943)
!3963 = distinct !DISubprogram(name: "xalloc_die", scope: !727, file: !727, line: 32, type: !496, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3964)
!3964 = !{!3965}
!3965 = !DILocalVariable(name: "__errstatus", scope: !3966, file: !727, line: 34, type: !3967)
!3966 = distinct !DILexicalBlock(scope: !3963, file: !727, line: 34, column: 3)
!3967 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!3968 = !DILocation(line: 34, column: 3, scope: !3966)
!3969 = !DILocation(line: 0, scope: !3966)
!3970 = !DILocation(line: 40, column: 3, scope: !3963)
!3971 = distinct !DISubprogram(name: "xstrtoumax", scope: !3972, file: !3972, line: 71, type: !3973, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !812, retainedNodes: !3977)
!3972 = !DIFile(filename: "lib/xstrtol.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a1112be551b7ea11a9f6293a4923a73")
!3973 = !DISubroutineType(types: !3974)
!3974 = !{!3975, !138, !1081, !85, !3976, !138}
!3975 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !816, line: 43, baseType: !815)
!3976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!3977 = !{!3978, !3979, !3980, !3981, !3982, !3983, !3984, !3985, !3988, !3989, !3990, !3991, !3994, !3995}
!3978 = !DILocalVariable(name: "nptr", arg: 1, scope: !3971, file: !3972, line: 71, type: !138)
!3979 = !DILocalVariable(name: "endptr", arg: 2, scope: !3971, file: !3972, line: 71, type: !1081)
!3980 = !DILocalVariable(name: "base", arg: 3, scope: !3971, file: !3972, line: 71, type: !85)
!3981 = !DILocalVariable(name: "val", arg: 4, scope: !3971, file: !3972, line: 72, type: !3976)
!3982 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !3971, file: !3972, line: 72, type: !138)
!3983 = !DILocalVariable(name: "t_ptr", scope: !3971, file: !3972, line: 74, type: !128)
!3984 = !DILocalVariable(name: "p", scope: !3971, file: !3972, line: 75, type: !1081)
!3985 = !DILocalVariable(name: "q", scope: !3986, file: !3972, line: 79, type: !138)
!3986 = distinct !DILexicalBlock(scope: !3987, file: !3972, line: 78, column: 5)
!3987 = distinct !DILexicalBlock(scope: !3971, file: !3972, line: 77, column: 7)
!3988 = !DILocalVariable(name: "ch", scope: !3986, file: !3972, line: 80, type: !140)
!3989 = !DILocalVariable(name: "tmp", scope: !3971, file: !3972, line: 91, type: !818)
!3990 = !DILocalVariable(name: "err", scope: !3971, file: !3972, line: 92, type: !3975)
!3991 = !DILocalVariable(name: "xbase", scope: !3992, file: !3972, line: 126, type: !85)
!3992 = distinct !DILexicalBlock(scope: !3993, file: !3972, line: 119, column: 5)
!3993 = distinct !DILexicalBlock(scope: !3971, file: !3972, line: 118, column: 7)
!3994 = !DILocalVariable(name: "suffixes", scope: !3992, file: !3972, line: 127, type: !85)
!3995 = !DILocalVariable(name: "overflow", scope: !3992, file: !3972, line: 156, type: !3975)
!3996 = distinct !DIAssignID()
!3997 = !DILocation(line: 0, scope: !3971)
!3998 = !DILocation(line: 74, column: 3, scope: !3971)
!3999 = !DILocation(line: 75, column: 14, scope: !3971)
!4000 = !DILocation(line: 0, scope: !3986)
!4001 = !DILocation(line: 81, column: 7, scope: !3986)
!4002 = !DILocation(line: 81, column: 14, scope: !3986)
!4003 = !DILocation(line: 82, column: 15, scope: !3986)
!4004 = distinct !{!4004, !4001, !4005, !975}
!4005 = !DILocation(line: 82, column: 17, scope: !3986)
!4006 = !DILocation(line: 83, column: 14, scope: !4007)
!4007 = distinct !DILexicalBlock(scope: !3986, file: !3972, line: 83, column: 11)
!4008 = !DILocation(line: 83, column: 11, scope: !3986)
!4009 = !DILocation(line: 85, column: 14, scope: !4010)
!4010 = distinct !DILexicalBlock(scope: !4007, file: !3972, line: 84, column: 9)
!4011 = !DILocation(line: 90, column: 3, scope: !3971)
!4012 = !DILocation(line: 90, column: 9, scope: !3971)
!4013 = !DILocation(line: 91, column: 20, scope: !3971)
!4014 = !DILocation(line: 94, column: 7, scope: !4015)
!4015 = distinct !DILexicalBlock(scope: !3971, file: !3972, line: 94, column: 7)
!4016 = !DILocation(line: 94, column: 10, scope: !4015)
!4017 = !DILocation(line: 94, column: 7, scope: !3971)
!4018 = !DILocation(line: 98, column: 14, scope: !4019)
!4019 = distinct !DILexicalBlock(scope: !4020, file: !3972, line: 98, column: 11)
!4020 = distinct !DILexicalBlock(scope: !4015, file: !3972, line: 95, column: 5)
!4021 = !DILocation(line: 98, column: 29, scope: !4019)
!4022 = !DILocation(line: 98, column: 32, scope: !4019)
!4023 = !DILocation(line: 98, column: 38, scope: !4019)
!4024 = !DILocation(line: 98, column: 41, scope: !4019)
!4025 = !DILocation(line: 98, column: 11, scope: !4020)
!4026 = !DILocation(line: 102, column: 12, scope: !4027)
!4027 = distinct !DILexicalBlock(scope: !4015, file: !3972, line: 102, column: 12)
!4028 = !DILocation(line: 102, column: 12, scope: !4015)
!4029 = !DILocation(line: 107, column: 5, scope: !4030)
!4030 = distinct !DILexicalBlock(scope: !4027, file: !3972, line: 103, column: 5)
!4031 = !DILocation(line: 112, column: 8, scope: !4032)
!4032 = distinct !DILexicalBlock(scope: !3971, file: !3972, line: 112, column: 7)
!4033 = !DILocation(line: 112, column: 7, scope: !3971)
!4034 = !DILocation(line: 114, column: 12, scope: !4035)
!4035 = distinct !DILexicalBlock(scope: !4032, file: !3972, line: 113, column: 5)
!4036 = !DILocation(line: 115, column: 7, scope: !4035)
!4037 = !DILocation(line: 118, column: 7, scope: !3993)
!4038 = !DILocation(line: 118, column: 11, scope: !3993)
!4039 = !DILocation(line: 118, column: 7, scope: !3971)
!4040 = !DILocation(line: 120, column: 12, scope: !4041)
!4041 = distinct !DILexicalBlock(scope: !3992, file: !3972, line: 120, column: 11)
!4042 = !DILocation(line: 120, column: 11, scope: !3992)
!4043 = !DILocation(line: 122, column: 16, scope: !4044)
!4044 = distinct !DILexicalBlock(scope: !4041, file: !3972, line: 121, column: 9)
!4045 = !DILocation(line: 123, column: 22, scope: !4044)
!4046 = !DILocation(line: 123, column: 11, scope: !4044)
!4047 = !DILocation(line: 0, scope: !3992)
!4048 = !DILocation(line: 128, column: 7, scope: !3992)
!4049 = !DILocation(line: 140, column: 15, scope: !4050)
!4050 = distinct !DILexicalBlock(scope: !4051, file: !3972, line: 140, column: 15)
!4051 = distinct !DILexicalBlock(scope: !3992, file: !3972, line: 129, column: 9)
!4052 = !DILocation(line: 140, column: 15, scope: !4051)
!4053 = !DILocation(line: 141, column: 21, scope: !4050)
!4054 = !DILocation(line: 141, column: 13, scope: !4050)
!4055 = !DILocation(line: 144, column: 21, scope: !4056)
!4056 = distinct !DILexicalBlock(scope: !4057, file: !3972, line: 144, column: 21)
!4057 = distinct !DILexicalBlock(scope: !4050, file: !3972, line: 142, column: 15)
!4058 = !DILocation(line: 144, column: 29, scope: !4056)
!4059 = !DILocation(line: 144, column: 21, scope: !4057)
!4060 = !DILocation(line: 152, column: 17, scope: !4057)
!4061 = !DILocation(line: 157, column: 7, scope: !3992)
!4062 = !DILocalVariable(name: "err", scope: !4063, file: !3972, line: 64, type: !3975)
!4063 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !3972, file: !3972, line: 62, type: !4064, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !812, retainedNodes: !4066)
!4064 = !DISubroutineType(types: !4065)
!4065 = !{!3975, !3976, !85, !85}
!4066 = !{!4067, !4068, !4069, !4062}
!4067 = !DILocalVariable(name: "x", arg: 1, scope: !4063, file: !3972, line: 62, type: !3976)
!4068 = !DILocalVariable(name: "base", arg: 2, scope: !4063, file: !3972, line: 62, type: !85)
!4069 = !DILocalVariable(name: "power", arg: 3, scope: !4063, file: !3972, line: 62, type: !85)
!4070 = !DILocation(line: 0, scope: !4063, inlinedAt: !4071)
!4071 = distinct !DILocation(line: 219, column: 22, scope: !4072)
!4072 = distinct !DILexicalBlock(scope: !3992, file: !3972, line: 158, column: 9)
!4073 = !DILocalVariable(name: "x", arg: 1, scope: !4074, file: !3972, line: 47, type: !3976)
!4074 = distinct !DISubprogram(name: "bkm_scale", scope: !3972, file: !3972, line: 47, type: !4075, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !812, retainedNodes: !4077)
!4075 = !DISubroutineType(types: !4076)
!4076 = !{!3975, !3976, !85}
!4077 = !{!4073, !4078, !4079}
!4078 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !4074, file: !3972, line: 47, type: !85)
!4079 = !DILocalVariable(name: "scaled", scope: !4074, file: !3972, line: 49, type: !818)
!4080 = !DILocation(line: 0, scope: !4074, inlinedAt: !4081)
!4081 = distinct !DILocation(line: 66, column: 12, scope: !4063, inlinedAt: !4071)
!4082 = !DILocation(line: 50, column: 7, scope: !4083, inlinedAt: !4081)
!4083 = distinct !DILexicalBlock(scope: !4074, file: !3972, line: 50, column: 7)
!4084 = !DILocation(line: 50, column: 7, scope: !4074, inlinedAt: !4081)
!4085 = !DILocation(line: 66, column: 9, scope: !4063, inlinedAt: !4071)
!4086 = !DILocation(line: 227, column: 11, scope: !3992)
!4087 = !DILocation(line: 0, scope: !4063, inlinedAt: !4088)
!4088 = distinct !DILocation(line: 215, column: 22, scope: !4072)
!4089 = !DILocation(line: 0, scope: !4074, inlinedAt: !4090)
!4090 = distinct !DILocation(line: 66, column: 12, scope: !4063, inlinedAt: !4088)
!4091 = !DILocation(line: 50, column: 7, scope: !4083, inlinedAt: !4090)
!4092 = !DILocation(line: 50, column: 7, scope: !4074, inlinedAt: !4090)
!4093 = !DILocation(line: 66, column: 9, scope: !4063, inlinedAt: !4088)
!4094 = !DILocation(line: 0, scope: !4063, inlinedAt: !4095)
!4095 = distinct !DILocation(line: 202, column: 22, scope: !4072)
!4096 = !DILocation(line: 0, scope: !4074, inlinedAt: !4097)
!4097 = distinct !DILocation(line: 66, column: 12, scope: !4063, inlinedAt: !4095)
!4098 = !DILocation(line: 50, column: 7, scope: !4083, inlinedAt: !4097)
!4099 = !DILocation(line: 50, column: 7, scope: !4074, inlinedAt: !4097)
!4100 = !DILocation(line: 66, column: 9, scope: !4063, inlinedAt: !4095)
!4101 = !DILocation(line: 0, scope: !4063, inlinedAt: !4102)
!4102 = distinct !DILocation(line: 198, column: 22, scope: !4072)
!4103 = !DILocation(line: 0, scope: !4074, inlinedAt: !4104)
!4104 = distinct !DILocation(line: 66, column: 12, scope: !4063, inlinedAt: !4102)
!4105 = !DILocation(line: 50, column: 7, scope: !4083, inlinedAt: !4104)
!4106 = !DILocation(line: 50, column: 7, scope: !4074, inlinedAt: !4104)
!4107 = !DILocation(line: 66, column: 9, scope: !4063, inlinedAt: !4102)
!4108 = !DILocation(line: 0, scope: !4063, inlinedAt: !4109)
!4109 = distinct !DILocation(line: 194, column: 22, scope: !4072)
!4110 = !DILocation(line: 0, scope: !4074, inlinedAt: !4111)
!4111 = distinct !DILocation(line: 66, column: 12, scope: !4063, inlinedAt: !4109)
!4112 = !DILocation(line: 50, column: 7, scope: !4083, inlinedAt: !4111)
!4113 = !DILocation(line: 50, column: 7, scope: !4074, inlinedAt: !4111)
!4114 = !DILocation(line: 66, column: 9, scope: !4063, inlinedAt: !4109)
!4115 = !DILocation(line: 0, scope: !4063, inlinedAt: !4116)
!4116 = distinct !DILocation(line: 175, column: 22, scope: !4072)
!4117 = !DILocation(line: 0, scope: !4074, inlinedAt: !4118)
!4118 = distinct !DILocation(line: 66, column: 12, scope: !4063, inlinedAt: !4116)
!4119 = !DILocation(line: 50, column: 7, scope: !4083, inlinedAt: !4118)
!4120 = !DILocation(line: 50, column: 7, scope: !4074, inlinedAt: !4118)
!4121 = !DILocation(line: 66, column: 9, scope: !4063, inlinedAt: !4116)
!4122 = !DILocation(line: 0, scope: !4074, inlinedAt: !4123)
!4123 = distinct !DILocation(line: 160, column: 22, scope: !4072)
!4124 = !DILocation(line: 50, column: 7, scope: !4083, inlinedAt: !4123)
!4125 = !DILocation(line: 50, column: 7, scope: !4074, inlinedAt: !4123)
!4126 = !DILocation(line: 161, column: 11, scope: !4072)
!4127 = !DILocation(line: 0, scope: !4074, inlinedAt: !4128)
!4128 = distinct !DILocation(line: 167, column: 22, scope: !4072)
!4129 = !DILocation(line: 50, column: 7, scope: !4083, inlinedAt: !4128)
!4130 = !DILocation(line: 50, column: 7, scope: !4074, inlinedAt: !4128)
!4131 = !DILocation(line: 168, column: 11, scope: !4072)
!4132 = !DILocation(line: 0, scope: !4063, inlinedAt: !4133)
!4133 = distinct !DILocation(line: 180, column: 22, scope: !4072)
!4134 = !DILocation(line: 0, scope: !4074, inlinedAt: !4135)
!4135 = distinct !DILocation(line: 66, column: 12, scope: !4063, inlinedAt: !4133)
!4136 = !DILocation(line: 50, column: 7, scope: !4083, inlinedAt: !4135)
!4137 = !DILocation(line: 50, column: 7, scope: !4074, inlinedAt: !4135)
!4138 = !DILocation(line: 66, column: 9, scope: !4063, inlinedAt: !4133)
!4139 = !DILocation(line: 0, scope: !4063, inlinedAt: !4140)
!4140 = distinct !DILocation(line: 185, column: 22, scope: !4072)
!4141 = !DILocation(line: 50, column: 7, scope: !4083, inlinedAt: !4142)
!4142 = distinct !DILocation(line: 66, column: 12, scope: !4063, inlinedAt: !4140)
!4143 = !DILocation(line: 50, column: 7, scope: !4074, inlinedAt: !4142)
!4144 = !DILocation(line: 0, scope: !4074, inlinedAt: !4142)
!4145 = !DILocation(line: 0, scope: !4063, inlinedAt: !4146)
!4146 = distinct !DILocation(line: 190, column: 22, scope: !4072)
!4147 = !DILocation(line: 0, scope: !4074, inlinedAt: !4148)
!4148 = distinct !DILocation(line: 66, column: 12, scope: !4063, inlinedAt: !4146)
!4149 = !DILocation(line: 50, column: 7, scope: !4083, inlinedAt: !4148)
!4150 = !DILocation(line: 50, column: 7, scope: !4074, inlinedAt: !4148)
!4151 = !DILocation(line: 66, column: 9, scope: !4063, inlinedAt: !4146)
!4152 = !DILocation(line: 0, scope: !4063, inlinedAt: !4153)
!4153 = distinct !DILocation(line: 207, column: 22, scope: !4072)
!4154 = !DILocation(line: 0, scope: !4074, inlinedAt: !4155)
!4155 = distinct !DILocation(line: 66, column: 12, scope: !4063, inlinedAt: !4153)
!4156 = !DILocation(line: 50, column: 7, scope: !4083, inlinedAt: !4155)
!4157 = !DILocation(line: 50, column: 7, scope: !4074, inlinedAt: !4155)
!4158 = !DILocation(line: 66, column: 9, scope: !4063, inlinedAt: !4153)
!4159 = !DILocation(line: 0, scope: !4074, inlinedAt: !4160)
!4160 = distinct !DILocation(line: 211, column: 22, scope: !4072)
!4161 = !DILocation(line: 50, column: 7, scope: !4074, inlinedAt: !4160)
!4162 = !DILocation(line: 212, column: 11, scope: !4072)
!4163 = !DILocation(line: 0, scope: !4072)
!4164 = !DILocation(line: 228, column: 10, scope: !3992)
!4165 = !DILocation(line: 229, column: 11, scope: !4166)
!4166 = distinct !DILexicalBlock(scope: !3992, file: !3972, line: 229, column: 11)
!4167 = !DILocation(line: 229, column: 11, scope: !3992)
!4168 = !DILocation(line: 223, column: 16, scope: !4072)
!4169 = !DILocation(line: 224, column: 22, scope: !4072)
!4170 = !DILocation(line: 100, column: 11, scope: !4020)
!4171 = !DILocation(line: 92, column: 16, scope: !3971)
!4172 = !DILocation(line: 233, column: 8, scope: !3971)
!4173 = !DILocation(line: 234, column: 3, scope: !3971)
!4174 = !DILocation(line: 235, column: 1, scope: !3971)
!4175 = !DISubprogram(name: "strtoumax", scope: !4176, file: !4176, line: 301, type: !4177, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4176 = !DIFile(filename: "/usr/include/inttypes.h", directory: "", checksumkind: CSK_MD5, checksum: "e498a0d76716f3e3909f4b6f2cb2f20f")
!4177 = !DISubroutineType(types: !4178)
!4178 = !{!818, !918, !4179, !85}
!4179 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1081)
!4180 = distinct !DISubprogram(name: "close_stream", scope: !822, file: !822, line: 55, type: !4181, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !821, retainedNodes: !4217)
!4181 = !DISubroutineType(types: !4182)
!4182 = !{!85, !4183}
!4183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4184, size: 64)
!4184 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !249, line: 7, baseType: !4185)
!4185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !251, line: 49, size: 1728, elements: !4186)
!4186 = !{!4187, !4188, !4189, !4190, !4191, !4192, !4193, !4194, !4195, !4196, !4197, !4198, !4199, !4200, !4202, !4203, !4204, !4205, !4206, !4207, !4208, !4209, !4210, !4211, !4212, !4213, !4214, !4215, !4216}
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4185, file: !251, line: 51, baseType: !85, size: 32)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4185, file: !251, line: 54, baseType: !128, size: 64, offset: 64)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4185, file: !251, line: 55, baseType: !128, size: 64, offset: 128)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4185, file: !251, line: 56, baseType: !128, size: 64, offset: 192)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4185, file: !251, line: 57, baseType: !128, size: 64, offset: 256)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4185, file: !251, line: 58, baseType: !128, size: 64, offset: 320)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4185, file: !251, line: 59, baseType: !128, size: 64, offset: 384)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4185, file: !251, line: 60, baseType: !128, size: 64, offset: 448)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4185, file: !251, line: 61, baseType: !128, size: 64, offset: 512)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4185, file: !251, line: 64, baseType: !128, size: 64, offset: 576)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4185, file: !251, line: 65, baseType: !128, size: 64, offset: 640)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4185, file: !251, line: 66, baseType: !128, size: 64, offset: 704)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4185, file: !251, line: 68, baseType: !266, size: 64, offset: 768)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4185, file: !251, line: 70, baseType: !4201, size: 64, offset: 832)
!4201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4185, size: 64)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4185, file: !251, line: 72, baseType: !85, size: 32, offset: 896)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4185, file: !251, line: 73, baseType: !85, size: 32, offset: 928)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4185, file: !251, line: 74, baseType: !273, size: 64, offset: 960)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4185, file: !251, line: 77, baseType: !135, size: 16, offset: 1024)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4185, file: !251, line: 78, baseType: !277, size: 8, offset: 1040)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4185, file: !251, line: 79, baseType: !61, size: 8, offset: 1048)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4185, file: !251, line: 81, baseType: !280, size: 64, offset: 1088)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4185, file: !251, line: 89, baseType: !283, size: 64, offset: 1152)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4185, file: !251, line: 91, baseType: !285, size: 64, offset: 1216)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4185, file: !251, line: 92, baseType: !288, size: 64, offset: 1280)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4185, file: !251, line: 93, baseType: !4201, size: 64, offset: 1344)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4185, file: !251, line: 94, baseType: !129, size: 64, offset: 1408)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4185, file: !251, line: 95, baseType: !136, size: 64, offset: 1472)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4185, file: !251, line: 96, baseType: !85, size: 32, offset: 1536)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4185, file: !251, line: 98, baseType: !295, size: 160, offset: 1568)
!4217 = !{!4218, !4219, !4221, !4222}
!4218 = !DILocalVariable(name: "stream", arg: 1, scope: !4180, file: !822, line: 55, type: !4183)
!4219 = !DILocalVariable(name: "some_pending", scope: !4180, file: !822, line: 57, type: !4220)
!4220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !234)
!4221 = !DILocalVariable(name: "prev_fail", scope: !4180, file: !822, line: 58, type: !4220)
!4222 = !DILocalVariable(name: "fclose_fail", scope: !4180, file: !822, line: 59, type: !4220)
!4223 = !DILocation(line: 0, scope: !4180)
!4224 = !DILocation(line: 57, column: 30, scope: !4180)
!4225 = !DILocalVariable(name: "__stream", arg: 1, scope: !4226, file: !1461, line: 135, type: !4183)
!4226 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1461, file: !1461, line: 135, type: !4181, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !821, retainedNodes: !4227)
!4227 = !{!4225}
!4228 = !DILocation(line: 0, scope: !4226, inlinedAt: !4229)
!4229 = distinct !DILocation(line: 58, column: 27, scope: !4180)
!4230 = !DILocation(line: 137, column: 10, scope: !4226, inlinedAt: !4229)
!4231 = !{!1470, !929, i64 0}
!4232 = !DILocation(line: 58, column: 43, scope: !4180)
!4233 = !DILocation(line: 59, column: 29, scope: !4180)
!4234 = !DILocation(line: 59, column: 45, scope: !4180)
!4235 = !DILocation(line: 69, column: 17, scope: !4236)
!4236 = distinct !DILexicalBlock(scope: !4180, file: !822, line: 69, column: 7)
!4237 = !DILocation(line: 57, column: 50, scope: !4180)
!4238 = !DILocation(line: 69, column: 33, scope: !4236)
!4239 = !DILocation(line: 69, column: 53, scope: !4236)
!4240 = !DILocation(line: 69, column: 59, scope: !4236)
!4241 = !DILocation(line: 69, column: 7, scope: !4180)
!4242 = !DILocation(line: 71, column: 11, scope: !4243)
!4243 = distinct !DILexicalBlock(scope: !4236, file: !822, line: 70, column: 5)
!4244 = !DILocation(line: 72, column: 9, scope: !4245)
!4245 = distinct !DILexicalBlock(scope: !4243, file: !822, line: 71, column: 11)
!4246 = !DILocation(line: 72, column: 15, scope: !4245)
!4247 = !DILocation(line: 77, column: 1, scope: !4180)
!4248 = !DISubprogram(name: "__fpending", scope: !4249, file: !4249, line: 75, type: !4250, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4249 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!4250 = !DISubroutineType(types: !4251)
!4251 = !{!136, !4183}
!4252 = distinct !DISubprogram(name: "rpl_fclose", scope: !824, file: !824, line: 58, type: !4253, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !823, retainedNodes: !4289)
!4253 = !DISubroutineType(types: !4254)
!4254 = !{!85, !4255}
!4255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4256, size: 64)
!4256 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !249, line: 7, baseType: !4257)
!4257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !251, line: 49, size: 1728, elements: !4258)
!4258 = !{!4259, !4260, !4261, !4262, !4263, !4264, !4265, !4266, !4267, !4268, !4269, !4270, !4271, !4272, !4274, !4275, !4276, !4277, !4278, !4279, !4280, !4281, !4282, !4283, !4284, !4285, !4286, !4287, !4288}
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4257, file: !251, line: 51, baseType: !85, size: 32)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4257, file: !251, line: 54, baseType: !128, size: 64, offset: 64)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4257, file: !251, line: 55, baseType: !128, size: 64, offset: 128)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4257, file: !251, line: 56, baseType: !128, size: 64, offset: 192)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4257, file: !251, line: 57, baseType: !128, size: 64, offset: 256)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4257, file: !251, line: 58, baseType: !128, size: 64, offset: 320)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4257, file: !251, line: 59, baseType: !128, size: 64, offset: 384)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4257, file: !251, line: 60, baseType: !128, size: 64, offset: 448)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4257, file: !251, line: 61, baseType: !128, size: 64, offset: 512)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4257, file: !251, line: 64, baseType: !128, size: 64, offset: 576)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4257, file: !251, line: 65, baseType: !128, size: 64, offset: 640)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4257, file: !251, line: 66, baseType: !128, size: 64, offset: 704)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4257, file: !251, line: 68, baseType: !266, size: 64, offset: 768)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4257, file: !251, line: 70, baseType: !4273, size: 64, offset: 832)
!4273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4257, size: 64)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4257, file: !251, line: 72, baseType: !85, size: 32, offset: 896)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4257, file: !251, line: 73, baseType: !85, size: 32, offset: 928)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4257, file: !251, line: 74, baseType: !273, size: 64, offset: 960)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4257, file: !251, line: 77, baseType: !135, size: 16, offset: 1024)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4257, file: !251, line: 78, baseType: !277, size: 8, offset: 1040)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4257, file: !251, line: 79, baseType: !61, size: 8, offset: 1048)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4257, file: !251, line: 81, baseType: !280, size: 64, offset: 1088)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4257, file: !251, line: 89, baseType: !283, size: 64, offset: 1152)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4257, file: !251, line: 91, baseType: !285, size: 64, offset: 1216)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4257, file: !251, line: 92, baseType: !288, size: 64, offset: 1280)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4257, file: !251, line: 93, baseType: !4273, size: 64, offset: 1344)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4257, file: !251, line: 94, baseType: !129, size: 64, offset: 1408)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4257, file: !251, line: 95, baseType: !136, size: 64, offset: 1472)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4257, file: !251, line: 96, baseType: !85, size: 32, offset: 1536)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4257, file: !251, line: 98, baseType: !295, size: 160, offset: 1568)
!4289 = !{!4290, !4291, !4292, !4293}
!4290 = !DILocalVariable(name: "fp", arg: 1, scope: !4252, file: !824, line: 58, type: !4255)
!4291 = !DILocalVariable(name: "saved_errno", scope: !4252, file: !824, line: 60, type: !85)
!4292 = !DILocalVariable(name: "fd", scope: !4252, file: !824, line: 63, type: !85)
!4293 = !DILocalVariable(name: "result", scope: !4252, file: !824, line: 74, type: !85)
!4294 = !DILocation(line: 0, scope: !4252)
!4295 = !DILocation(line: 63, column: 12, scope: !4252)
!4296 = !DILocation(line: 64, column: 10, scope: !4297)
!4297 = distinct !DILexicalBlock(scope: !4252, file: !824, line: 64, column: 7)
!4298 = !DILocation(line: 64, column: 7, scope: !4252)
!4299 = !DILocation(line: 65, column: 12, scope: !4297)
!4300 = !DILocation(line: 65, column: 5, scope: !4297)
!4301 = !DILocation(line: 70, column: 9, scope: !4302)
!4302 = distinct !DILexicalBlock(scope: !4252, file: !824, line: 70, column: 7)
!4303 = !DILocation(line: 70, column: 23, scope: !4302)
!4304 = !DILocation(line: 70, column: 33, scope: !4302)
!4305 = !DILocation(line: 70, column: 26, scope: !4302)
!4306 = !DILocation(line: 70, column: 59, scope: !4302)
!4307 = !DILocation(line: 71, column: 7, scope: !4302)
!4308 = !DILocation(line: 71, column: 10, scope: !4302)
!4309 = !DILocation(line: 70, column: 7, scope: !4252)
!4310 = !DILocation(line: 100, column: 12, scope: !4252)
!4311 = !DILocation(line: 105, column: 7, scope: !4252)
!4312 = !DILocation(line: 72, column: 19, scope: !4302)
!4313 = !DILocation(line: 105, column: 19, scope: !4314)
!4314 = distinct !DILexicalBlock(scope: !4252, file: !824, line: 105, column: 7)
!4315 = !DILocation(line: 107, column: 13, scope: !4316)
!4316 = distinct !DILexicalBlock(scope: !4314, file: !824, line: 106, column: 5)
!4317 = !DILocation(line: 109, column: 5, scope: !4316)
!4318 = !DILocation(line: 112, column: 1, scope: !4252)
!4319 = !DISubprogram(name: "fileno", scope: !923, file: !923, line: 809, type: !4253, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4320 = !DISubprogram(name: "fclose", scope: !923, file: !923, line: 178, type: !4253, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4321 = !DISubprogram(name: "__freading", scope: !4249, file: !4249, line: 51, type: !4253, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4322 = !DISubprogram(name: "lseek", scope: !1344, file: !1344, line: 339, type: !4323, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4323 = !DISubroutineType(types: !4324)
!4324 = !{!273, !85, !273, !85}
!4325 = distinct !DISubprogram(name: "rpl_fflush", scope: !826, file: !826, line: 130, type: !4326, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !825, retainedNodes: !4362)
!4326 = !DISubroutineType(types: !4327)
!4327 = !{!85, !4328}
!4328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4329, size: 64)
!4329 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !249, line: 7, baseType: !4330)
!4330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !251, line: 49, size: 1728, elements: !4331)
!4331 = !{!4332, !4333, !4334, !4335, !4336, !4337, !4338, !4339, !4340, !4341, !4342, !4343, !4344, !4345, !4347, !4348, !4349, !4350, !4351, !4352, !4353, !4354, !4355, !4356, !4357, !4358, !4359, !4360, !4361}
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4330, file: !251, line: 51, baseType: !85, size: 32)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4330, file: !251, line: 54, baseType: !128, size: 64, offset: 64)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4330, file: !251, line: 55, baseType: !128, size: 64, offset: 128)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4330, file: !251, line: 56, baseType: !128, size: 64, offset: 192)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4330, file: !251, line: 57, baseType: !128, size: 64, offset: 256)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4330, file: !251, line: 58, baseType: !128, size: 64, offset: 320)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4330, file: !251, line: 59, baseType: !128, size: 64, offset: 384)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4330, file: !251, line: 60, baseType: !128, size: 64, offset: 448)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4330, file: !251, line: 61, baseType: !128, size: 64, offset: 512)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4330, file: !251, line: 64, baseType: !128, size: 64, offset: 576)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4330, file: !251, line: 65, baseType: !128, size: 64, offset: 640)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4330, file: !251, line: 66, baseType: !128, size: 64, offset: 704)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4330, file: !251, line: 68, baseType: !266, size: 64, offset: 768)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4330, file: !251, line: 70, baseType: !4346, size: 64, offset: 832)
!4346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4330, size: 64)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4330, file: !251, line: 72, baseType: !85, size: 32, offset: 896)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4330, file: !251, line: 73, baseType: !85, size: 32, offset: 928)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4330, file: !251, line: 74, baseType: !273, size: 64, offset: 960)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4330, file: !251, line: 77, baseType: !135, size: 16, offset: 1024)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4330, file: !251, line: 78, baseType: !277, size: 8, offset: 1040)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4330, file: !251, line: 79, baseType: !61, size: 8, offset: 1048)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4330, file: !251, line: 81, baseType: !280, size: 64, offset: 1088)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4330, file: !251, line: 89, baseType: !283, size: 64, offset: 1152)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4330, file: !251, line: 91, baseType: !285, size: 64, offset: 1216)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4330, file: !251, line: 92, baseType: !288, size: 64, offset: 1280)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4330, file: !251, line: 93, baseType: !4346, size: 64, offset: 1344)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4330, file: !251, line: 94, baseType: !129, size: 64, offset: 1408)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4330, file: !251, line: 95, baseType: !136, size: 64, offset: 1472)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4330, file: !251, line: 96, baseType: !85, size: 32, offset: 1536)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4330, file: !251, line: 98, baseType: !295, size: 160, offset: 1568)
!4362 = !{!4363}
!4363 = !DILocalVariable(name: "stream", arg: 1, scope: !4325, file: !826, line: 130, type: !4328)
!4364 = !DILocation(line: 0, scope: !4325)
!4365 = !DILocation(line: 151, column: 14, scope: !4366)
!4366 = distinct !DILexicalBlock(scope: !4325, file: !826, line: 151, column: 7)
!4367 = !DILocation(line: 151, column: 22, scope: !4366)
!4368 = !DILocation(line: 151, column: 27, scope: !4366)
!4369 = !DILocation(line: 151, column: 7, scope: !4325)
!4370 = !DILocation(line: 152, column: 12, scope: !4366)
!4371 = !DILocation(line: 152, column: 5, scope: !4366)
!4372 = !DILocalVariable(name: "fp", arg: 1, scope: !4373, file: !826, line: 42, type: !4328)
!4373 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !826, file: !826, line: 42, type: !4374, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !825, retainedNodes: !4376)
!4374 = !DISubroutineType(types: !4375)
!4375 = !{null, !4328}
!4376 = !{!4372}
!4377 = !DILocation(line: 0, scope: !4373, inlinedAt: !4378)
!4378 = distinct !DILocation(line: 157, column: 3, scope: !4325)
!4379 = !DILocation(line: 44, column: 12, scope: !4380, inlinedAt: !4378)
!4380 = distinct !DILexicalBlock(scope: !4373, file: !826, line: 44, column: 7)
!4381 = !DILocation(line: 44, column: 19, scope: !4380, inlinedAt: !4378)
!4382 = !DILocation(line: 44, column: 7, scope: !4373, inlinedAt: !4378)
!4383 = !DILocation(line: 46, column: 5, scope: !4380, inlinedAt: !4378)
!4384 = !DILocation(line: 159, column: 10, scope: !4325)
!4385 = !DILocation(line: 159, column: 3, scope: !4325)
!4386 = !DILocation(line: 236, column: 1, scope: !4325)
!4387 = !DISubprogram(name: "fflush", scope: !923, file: !923, line: 230, type: !4326, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4388 = distinct !DISubprogram(name: "rpl_fseeko", scope: !828, file: !828, line: 28, type: !4389, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !4426)
!4389 = !DISubroutineType(types: !4390)
!4390 = !{!85, !4391, !4425, !85}
!4391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4392, size: 64)
!4392 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !249, line: 7, baseType: !4393)
!4393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !251, line: 49, size: 1728, elements: !4394)
!4394 = !{!4395, !4396, !4397, !4398, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4419, !4420, !4421, !4422, !4423, !4424}
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4393, file: !251, line: 51, baseType: !85, size: 32)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4393, file: !251, line: 54, baseType: !128, size: 64, offset: 64)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4393, file: !251, line: 55, baseType: !128, size: 64, offset: 128)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4393, file: !251, line: 56, baseType: !128, size: 64, offset: 192)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4393, file: !251, line: 57, baseType: !128, size: 64, offset: 256)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4393, file: !251, line: 58, baseType: !128, size: 64, offset: 320)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4393, file: !251, line: 59, baseType: !128, size: 64, offset: 384)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4393, file: !251, line: 60, baseType: !128, size: 64, offset: 448)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4393, file: !251, line: 61, baseType: !128, size: 64, offset: 512)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4393, file: !251, line: 64, baseType: !128, size: 64, offset: 576)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4393, file: !251, line: 65, baseType: !128, size: 64, offset: 640)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4393, file: !251, line: 66, baseType: !128, size: 64, offset: 704)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4393, file: !251, line: 68, baseType: !266, size: 64, offset: 768)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4393, file: !251, line: 70, baseType: !4409, size: 64, offset: 832)
!4409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4393, size: 64)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4393, file: !251, line: 72, baseType: !85, size: 32, offset: 896)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4393, file: !251, line: 73, baseType: !85, size: 32, offset: 928)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4393, file: !251, line: 74, baseType: !273, size: 64, offset: 960)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4393, file: !251, line: 77, baseType: !135, size: 16, offset: 1024)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4393, file: !251, line: 78, baseType: !277, size: 8, offset: 1040)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4393, file: !251, line: 79, baseType: !61, size: 8, offset: 1048)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4393, file: !251, line: 81, baseType: !280, size: 64, offset: 1088)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4393, file: !251, line: 89, baseType: !283, size: 64, offset: 1152)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4393, file: !251, line: 91, baseType: !285, size: 64, offset: 1216)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4393, file: !251, line: 92, baseType: !288, size: 64, offset: 1280)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4393, file: !251, line: 93, baseType: !4409, size: 64, offset: 1344)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4393, file: !251, line: 94, baseType: !129, size: 64, offset: 1408)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4393, file: !251, line: 95, baseType: !136, size: 64, offset: 1472)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4393, file: !251, line: 96, baseType: !85, size: 32, offset: 1536)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4393, file: !251, line: 98, baseType: !295, size: 160, offset: 1568)
!4425 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !923, line: 63, baseType: !273)
!4426 = !{!4427, !4428, !4429, !4430}
!4427 = !DILocalVariable(name: "fp", arg: 1, scope: !4388, file: !828, line: 28, type: !4391)
!4428 = !DILocalVariable(name: "offset", arg: 2, scope: !4388, file: !828, line: 28, type: !4425)
!4429 = !DILocalVariable(name: "whence", arg: 3, scope: !4388, file: !828, line: 28, type: !85)
!4430 = !DILocalVariable(name: "pos", scope: !4431, file: !828, line: 123, type: !4425)
!4431 = distinct !DILexicalBlock(scope: !4432, file: !828, line: 119, column: 5)
!4432 = distinct !DILexicalBlock(scope: !4388, file: !828, line: 55, column: 7)
!4433 = !DILocation(line: 0, scope: !4388)
!4434 = !DILocation(line: 55, column: 12, scope: !4432)
!4435 = !{!1470, !859, i64 16}
!4436 = !DILocation(line: 55, column: 33, scope: !4432)
!4437 = !{!1470, !859, i64 8}
!4438 = !DILocation(line: 55, column: 25, scope: !4432)
!4439 = !DILocation(line: 56, column: 7, scope: !4432)
!4440 = !DILocation(line: 56, column: 15, scope: !4432)
!4441 = !DILocation(line: 56, column: 37, scope: !4432)
!4442 = !{!1470, !859, i64 32}
!4443 = !DILocation(line: 56, column: 29, scope: !4432)
!4444 = !DILocation(line: 57, column: 7, scope: !4432)
!4445 = !DILocation(line: 57, column: 15, scope: !4432)
!4446 = !{!1470, !859, i64 72}
!4447 = !DILocation(line: 57, column: 29, scope: !4432)
!4448 = !DILocation(line: 55, column: 7, scope: !4388)
!4449 = !DILocation(line: 123, column: 26, scope: !4431)
!4450 = !DILocation(line: 123, column: 19, scope: !4431)
!4451 = !DILocation(line: 0, scope: !4431)
!4452 = !DILocation(line: 124, column: 15, scope: !4453)
!4453 = distinct !DILexicalBlock(scope: !4431, file: !828, line: 124, column: 11)
!4454 = !DILocation(line: 124, column: 11, scope: !4431)
!4455 = !DILocation(line: 135, column: 19, scope: !4431)
!4456 = !DILocation(line: 136, column: 12, scope: !4431)
!4457 = !DILocation(line: 136, column: 20, scope: !4431)
!4458 = !{!1470, !1219, i64 144}
!4459 = !DILocation(line: 167, column: 7, scope: !4431)
!4460 = !DILocation(line: 169, column: 10, scope: !4388)
!4461 = !DILocation(line: 169, column: 3, scope: !4388)
!4462 = !DILocation(line: 170, column: 1, scope: !4388)
!4463 = !DISubprogram(name: "fseeko", scope: !923, file: !923, line: 736, type: !4464, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4464 = !DISubroutineType(types: !4465)
!4465 = !{!85, !4391, !273, !85}
!4466 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !734, file: !734, line: 100, type: !4467, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !737, retainedNodes: !4470)
!4467 = !DISubroutineType(types: !4468)
!4468 = !{!136, !2021, !138, !136, !4469}
!4469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!4470 = !{!4471, !4472, !4473, !4474, !4475}
!4471 = !DILocalVariable(name: "pwc", arg: 1, scope: !4466, file: !734, line: 100, type: !2021)
!4472 = !DILocalVariable(name: "s", arg: 2, scope: !4466, file: !734, line: 100, type: !138)
!4473 = !DILocalVariable(name: "n", arg: 3, scope: !4466, file: !734, line: 100, type: !136)
!4474 = !DILocalVariable(name: "ps", arg: 4, scope: !4466, file: !734, line: 100, type: !4469)
!4475 = !DILocalVariable(name: "ret", scope: !4466, file: !734, line: 130, type: !136)
!4476 = !DILocation(line: 0, scope: !4466)
!4477 = !DILocation(line: 105, column: 9, scope: !4478)
!4478 = distinct !DILexicalBlock(scope: !4466, file: !734, line: 105, column: 7)
!4479 = !DILocation(line: 105, column: 7, scope: !4466)
!4480 = !DILocation(line: 117, column: 10, scope: !4481)
!4481 = distinct !DILexicalBlock(scope: !4466, file: !734, line: 117, column: 7)
!4482 = !DILocation(line: 117, column: 7, scope: !4466)
!4483 = !DILocation(line: 130, column: 16, scope: !4466)
!4484 = !DILocation(line: 135, column: 11, scope: !4485)
!4485 = distinct !DILexicalBlock(scope: !4466, file: !734, line: 135, column: 7)
!4486 = !DILocation(line: 135, column: 25, scope: !4485)
!4487 = !DILocation(line: 135, column: 30, scope: !4485)
!4488 = !DILocation(line: 135, column: 7, scope: !4466)
!4489 = !DILocalVariable(name: "ps", arg: 1, scope: !4490, file: !1994, line: 1135, type: !4469)
!4490 = distinct !DISubprogram(name: "mbszero", scope: !1994, file: !1994, line: 1135, type: !4491, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !737, retainedNodes: !4493)
!4491 = !DISubroutineType(types: !4492)
!4492 = !{null, !4469}
!4493 = !{!4489}
!4494 = !DILocation(line: 0, scope: !4490, inlinedAt: !4495)
!4495 = distinct !DILocation(line: 137, column: 5, scope: !4485)
!4496 = !DILocalVariable(name: "__dest", arg: 1, scope: !4497, file: !2003, line: 57, type: !129)
!4497 = distinct !DISubprogram(name: "memset", scope: !2003, file: !2003, line: 57, type: !2004, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !737, retainedNodes: !4498)
!4498 = !{!4496, !4499, !4500}
!4499 = !DILocalVariable(name: "__ch", arg: 2, scope: !4497, file: !2003, line: 57, type: !85)
!4500 = !DILocalVariable(name: "__len", arg: 3, scope: !4497, file: !2003, line: 57, type: !136)
!4501 = !DILocation(line: 0, scope: !4497, inlinedAt: !4502)
!4502 = distinct !DILocation(line: 1137, column: 3, scope: !4490, inlinedAt: !4495)
!4503 = !DILocation(line: 59, column: 10, scope: !4497, inlinedAt: !4502)
!4504 = !DILocation(line: 137, column: 5, scope: !4485)
!4505 = !DILocation(line: 138, column: 11, scope: !4506)
!4506 = distinct !DILexicalBlock(scope: !4466, file: !734, line: 138, column: 7)
!4507 = !DILocation(line: 138, column: 7, scope: !4466)
!4508 = !DILocation(line: 139, column: 5, scope: !4506)
!4509 = !DILocation(line: 143, column: 26, scope: !4510)
!4510 = distinct !DILexicalBlock(scope: !4466, file: !734, line: 143, column: 7)
!4511 = !DILocation(line: 143, column: 41, scope: !4510)
!4512 = !DILocation(line: 143, column: 7, scope: !4466)
!4513 = !DILocation(line: 145, column: 15, scope: !4514)
!4514 = distinct !DILexicalBlock(scope: !4515, file: !734, line: 145, column: 11)
!4515 = distinct !DILexicalBlock(scope: !4510, file: !734, line: 144, column: 5)
!4516 = !DILocation(line: 145, column: 11, scope: !4515)
!4517 = !DILocation(line: 146, column: 32, scope: !4514)
!4518 = !DILocation(line: 146, column: 16, scope: !4514)
!4519 = !DILocation(line: 146, column: 14, scope: !4514)
!4520 = !DILocation(line: 146, column: 9, scope: !4514)
!4521 = !DILocation(line: 286, column: 1, scope: !4466)
!4522 = !DISubprogram(name: "mbsinit", scope: !4523, file: !4523, line: 293, type: !4524, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4523 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4524 = !DISubroutineType(types: !4525)
!4525 = !{!85, !4526}
!4526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4527, size: 64)
!4527 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !740)
!4528 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !830, file: !830, line: 27, type: !3526, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !829, retainedNodes: !4529)
!4529 = !{!4530, !4531, !4532, !4533}
!4530 = !DILocalVariable(name: "ptr", arg: 1, scope: !4528, file: !830, line: 27, type: !129)
!4531 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4528, file: !830, line: 27, type: !136)
!4532 = !DILocalVariable(name: "size", arg: 3, scope: !4528, file: !830, line: 27, type: !136)
!4533 = !DILocalVariable(name: "nbytes", scope: !4528, file: !830, line: 29, type: !136)
!4534 = !DILocation(line: 0, scope: !4528)
!4535 = !DILocation(line: 30, column: 7, scope: !4536)
!4536 = distinct !DILexicalBlock(scope: !4528, file: !830, line: 30, column: 7)
!4537 = !DILocation(line: 30, column: 7, scope: !4528)
!4538 = !DILocation(line: 32, column: 7, scope: !4539)
!4539 = distinct !DILexicalBlock(scope: !4536, file: !830, line: 31, column: 5)
!4540 = !DILocation(line: 32, column: 13, scope: !4539)
!4541 = !DILocation(line: 33, column: 7, scope: !4539)
!4542 = !DILocalVariable(name: "ptr", arg: 1, scope: !4543, file: !3618, line: 2057, type: !129)
!4543 = distinct !DISubprogram(name: "rpl_realloc", scope: !3618, file: !3618, line: 2057, type: !3610, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !829, retainedNodes: !4544)
!4544 = !{!4542, !4545}
!4545 = !DILocalVariable(name: "size", arg: 2, scope: !4543, file: !3618, line: 2057, type: !136)
!4546 = !DILocation(line: 0, scope: !4543, inlinedAt: !4547)
!4547 = distinct !DILocation(line: 37, column: 10, scope: !4528)
!4548 = !DILocation(line: 2059, column: 24, scope: !4543, inlinedAt: !4547)
!4549 = !DILocation(line: 2059, column: 10, scope: !4543, inlinedAt: !4547)
!4550 = !DILocation(line: 37, column: 3, scope: !4528)
!4551 = !DILocation(line: 38, column: 1, scope: !4528)
!4552 = distinct !DISubprogram(name: "hard_locale", scope: !752, file: !752, line: 28, type: !4553, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !831, retainedNodes: !4555)
!4553 = !DISubroutineType(types: !4554)
!4554 = !{!234, !85}
!4555 = !{!4556, !4557}
!4556 = !DILocalVariable(name: "category", arg: 1, scope: !4552, file: !752, line: 28, type: !85)
!4557 = !DILocalVariable(name: "locale", scope: !4552, file: !752, line: 30, type: !4558)
!4558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4559)
!4559 = !{!4560}
!4560 = !DISubrange(count: 257)
!4561 = distinct !DIAssignID()
!4562 = !DILocation(line: 0, scope: !4552)
!4563 = !DILocation(line: 30, column: 3, scope: !4552)
!4564 = !DILocation(line: 32, column: 7, scope: !4565)
!4565 = distinct !DILexicalBlock(scope: !4552, file: !752, line: 32, column: 7)
!4566 = !DILocation(line: 32, column: 7, scope: !4552)
!4567 = !DILocalVariable(name: "__s1", arg: 1, scope: !4568, file: !941, line: 1359, type: !138)
!4568 = distinct !DISubprogram(name: "streq", scope: !941, file: !941, line: 1359, type: !942, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !831, retainedNodes: !4569)
!4569 = !{!4567, !4570}
!4570 = !DILocalVariable(name: "__s2", arg: 2, scope: !4568, file: !941, line: 1359, type: !138)
!4571 = !DILocation(line: 0, scope: !4568, inlinedAt: !4572)
!4572 = distinct !DILocation(line: 35, column: 9, scope: !4573)
!4573 = distinct !DILexicalBlock(scope: !4552, file: !752, line: 35, column: 7)
!4574 = !DILocation(line: 1361, column: 11, scope: !4568, inlinedAt: !4572)
!4575 = !DILocation(line: 35, column: 29, scope: !4573)
!4576 = !DILocation(line: 0, scope: !4568, inlinedAt: !4577)
!4577 = distinct !DILocation(line: 35, column: 32, scope: !4573)
!4578 = !DILocation(line: 1361, column: 11, scope: !4568, inlinedAt: !4577)
!4579 = !DILocation(line: 1361, column: 10, scope: !4568, inlinedAt: !4577)
!4580 = !DILocation(line: 35, column: 7, scope: !4552)
!4581 = !DILocation(line: 46, column: 3, scope: !4552)
!4582 = !DILocation(line: 47, column: 1, scope: !4552)
!4583 = distinct !DISubprogram(name: "setlocale_null_r", scope: !836, file: !836, line: 154, type: !4584, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !835, retainedNodes: !4586)
!4584 = !DISubroutineType(types: !4585)
!4585 = !{!85, !85, !128, !136}
!4586 = !{!4587, !4588, !4589}
!4587 = !DILocalVariable(name: "category", arg: 1, scope: !4583, file: !836, line: 154, type: !85)
!4588 = !DILocalVariable(name: "buf", arg: 2, scope: !4583, file: !836, line: 154, type: !128)
!4589 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4583, file: !836, line: 154, type: !136)
!4590 = !DILocation(line: 0, scope: !4583)
!4591 = !DILocation(line: 159, column: 10, scope: !4583)
!4592 = !DILocation(line: 159, column: 3, scope: !4583)
!4593 = distinct !DISubprogram(name: "setlocale_null", scope: !836, file: !836, line: 186, type: !4594, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !835, retainedNodes: !4596)
!4594 = !DISubroutineType(types: !4595)
!4595 = !{!138, !85}
!4596 = !{!4597}
!4597 = !DILocalVariable(name: "category", arg: 1, scope: !4593, file: !836, line: 186, type: !85)
!4598 = !DILocation(line: 0, scope: !4593)
!4599 = !DILocation(line: 189, column: 10, scope: !4593)
!4600 = !DILocation(line: 189, column: 3, scope: !4593)
!4601 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !838, file: !838, line: 35, type: !4594, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !837, retainedNodes: !4602)
!4602 = !{!4603, !4604}
!4603 = !DILocalVariable(name: "category", arg: 1, scope: !4601, file: !838, line: 35, type: !85)
!4604 = !DILocalVariable(name: "result", scope: !4601, file: !838, line: 37, type: !138)
!4605 = !DILocation(line: 0, scope: !4601)
!4606 = !DILocation(line: 37, column: 24, scope: !4601)
!4607 = !DILocation(line: 62, column: 3, scope: !4601)
!4608 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !838, file: !838, line: 66, type: !4584, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !837, retainedNodes: !4609)
!4609 = !{!4610, !4611, !4612, !4613, !4614}
!4610 = !DILocalVariable(name: "category", arg: 1, scope: !4608, file: !838, line: 66, type: !85)
!4611 = !DILocalVariable(name: "buf", arg: 2, scope: !4608, file: !838, line: 66, type: !128)
!4612 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4608, file: !838, line: 66, type: !136)
!4613 = !DILocalVariable(name: "result", scope: !4608, file: !838, line: 111, type: !138)
!4614 = !DILocalVariable(name: "length", scope: !4615, file: !838, line: 125, type: !136)
!4615 = distinct !DILexicalBlock(scope: !4616, file: !838, line: 124, column: 5)
!4616 = distinct !DILexicalBlock(scope: !4608, file: !838, line: 113, column: 7)
!4617 = !DILocation(line: 0, scope: !4608)
!4618 = !DILocation(line: 0, scope: !4601, inlinedAt: !4619)
!4619 = distinct !DILocation(line: 111, column: 24, scope: !4608)
!4620 = !DILocation(line: 37, column: 24, scope: !4601, inlinedAt: !4619)
!4621 = !DILocation(line: 113, column: 14, scope: !4616)
!4622 = !DILocation(line: 113, column: 7, scope: !4608)
!4623 = !DILocation(line: 116, column: 19, scope: !4624)
!4624 = distinct !DILexicalBlock(scope: !4625, file: !838, line: 116, column: 11)
!4625 = distinct !DILexicalBlock(scope: !4616, file: !838, line: 114, column: 5)
!4626 = !DILocation(line: 116, column: 11, scope: !4625)
!4627 = !DILocation(line: 120, column: 16, scope: !4624)
!4628 = !DILocation(line: 120, column: 9, scope: !4624)
!4629 = !DILocation(line: 125, column: 23, scope: !4615)
!4630 = !DILocation(line: 0, scope: !4615)
!4631 = !DILocation(line: 126, column: 18, scope: !4632)
!4632 = distinct !DILexicalBlock(scope: !4615, file: !838, line: 126, column: 11)
!4633 = !DILocation(line: 126, column: 11, scope: !4615)
!4634 = !DILocation(line: 128, column: 39, scope: !4635)
!4635 = distinct !DILexicalBlock(scope: !4632, file: !838, line: 127, column: 9)
!4636 = !DILocalVariable(name: "__dest", arg: 1, scope: !4637, file: !2003, line: 26, type: !3889)
!4637 = distinct !DISubprogram(name: "memcpy", scope: !2003, file: !2003, line: 26, type: !3887, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !837, retainedNodes: !4638)
!4638 = !{!4636, !4639, !4640}
!4639 = !DILocalVariable(name: "__src", arg: 2, scope: !4637, file: !2003, line: 26, type: !1075)
!4640 = !DILocalVariable(name: "__len", arg: 3, scope: !4637, file: !2003, line: 26, type: !136)
!4641 = !DILocation(line: 0, scope: !4637, inlinedAt: !4642)
!4642 = distinct !DILocation(line: 128, column: 11, scope: !4635)
!4643 = !DILocation(line: 29, column: 10, scope: !4637, inlinedAt: !4642)
!4644 = !DILocation(line: 129, column: 11, scope: !4635)
!4645 = !DILocation(line: 133, column: 23, scope: !4646)
!4646 = distinct !DILexicalBlock(scope: !4647, file: !838, line: 133, column: 15)
!4647 = distinct !DILexicalBlock(scope: !4632, file: !838, line: 132, column: 9)
!4648 = !DILocation(line: 133, column: 15, scope: !4647)
!4649 = !DILocation(line: 138, column: 44, scope: !4650)
!4650 = distinct !DILexicalBlock(scope: !4646, file: !838, line: 134, column: 13)
!4651 = !DILocation(line: 0, scope: !4637, inlinedAt: !4652)
!4652 = distinct !DILocation(line: 138, column: 15, scope: !4650)
!4653 = !DILocation(line: 29, column: 10, scope: !4637, inlinedAt: !4652)
!4654 = !DILocation(line: 139, column: 15, scope: !4650)
!4655 = !DILocation(line: 139, column: 32, scope: !4650)
!4656 = !DILocation(line: 140, column: 13, scope: !4650)
!4657 = !DILocation(line: 0, scope: !4616)
!4658 = !DILocation(line: 145, column: 1, scope: !4608)
