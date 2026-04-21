; ModuleID = 'src/cat.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], ptr, ptr }
%struct.slotvec = type { i64, ptr }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s [OPTION]... [FILE]...\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [41 x i8] c"Concatenate FILE(s) to standard output.\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [4 x i8] c"cat\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [47 x i8] c"  -A, --show-all           equivalent to -vET\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [71 x i8] c"  -b, --number-nonblank    number nonempty output lines, overrides -n\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [46 x i8] c"  -e                       equivalent to -vE\0A\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [65 x i8] c"  -E, --show-ends          display $ or ^M$ at end of each line\0A\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [52 x i8] c"  -n, --number             number all output lines\0A\00", align 1, !dbg !42
@.str.9 = private unnamed_addr constant [65 x i8] c"  -s, --squeeze-blank      suppress repeated empty output lines\0A\00", align 1, !dbg !47
@.str.10 = private unnamed_addr constant [46 x i8] c"  -t                       equivalent to -vT\0A\00", align 1, !dbg !49
@.str.11 = private unnamed_addr constant [57 x i8] c"  -T, --show-tabs          display TAB characters as ^I\0A\00", align 1, !dbg !51
@.str.12 = private unnamed_addr constant [38 x i8] c"  -u                       (ignored)\0A\00", align 1, !dbg !56
@.str.13 = private unnamed_addr constant [74 x i8] c"  -v, --show-nonprinting   use ^ and M- notation, except for LFD and TAB\0A\00", align 1, !dbg !61
@.str.14 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1, !dbg !66
@.str.15 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1, !dbg !71
@.str.16 = private unnamed_addr constant [137 x i8] c"\0AExamples:\0A  %s f - g  Output f's contents, then standard input, then g's contents.\0A  %s        Copy standard input to standard output.\0A\00", align 1, !dbg !76
@main.long_options = internal constant [10 x %struct.option] [%struct.option { ptr @.str.17, i32 0, ptr null, i32 98 }, %struct.option { ptr @.str.18, i32 0, ptr null, i32 110 }, %struct.option { ptr @.str.19, i32 0, ptr null, i32 115 }, %struct.option { ptr @.str.20, i32 0, ptr null, i32 118 }, %struct.option { ptr @.str.21, i32 0, ptr null, i32 69 }, %struct.option { ptr @.str.22, i32 0, ptr null, i32 84 }, %struct.option { ptr @.str.23, i32 0, ptr null, i32 65 }, %struct.option { ptr @.str.24, i32 0, ptr null, i32 -130 }, %struct.option { ptr @.str.25, i32 0, ptr null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !81
@.str.17 = private unnamed_addr constant [16 x i8] c"number-nonblank\00", align 1, !dbg !155
@.str.18 = private unnamed_addr constant [7 x i8] c"number\00", align 1, !dbg !160
@.str.19 = private unnamed_addr constant [14 x i8] c"squeeze-blank\00", align 1, !dbg !165
@.str.20 = private unnamed_addr constant [17 x i8] c"show-nonprinting\00", align 1, !dbg !170
@.str.21 = private unnamed_addr constant [10 x i8] c"show-ends\00", align 1, !dbg !175
@.str.22 = private unnamed_addr constant [10 x i8] c"show-tabs\00", align 1, !dbg !180
@.str.23 = private unnamed_addr constant [9 x i8] c"show-all\00", align 1, !dbg !182
@.str.24 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !187
@.str.25 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !192
@.str.26 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !197
@.str.27 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !202
@.str.28 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1, !dbg !204
@.str.29 = private unnamed_addr constant [11 x i8] c"benstuvAET\00", align 1, !dbg !209
@.str.30 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !214
@.str.31 = private unnamed_addr constant [18 x i8] c"Torbjorn Granlund\00", align 1, !dbg !216
@.str.32 = private unnamed_addr constant [19 x i8] c"Torbj\C3\B6rn Granlund\00", align 1, !dbg !221
@.str.33 = private unnamed_addr constant [20 x i8] c"Richard M. Stallman\00", align 1, !dbg !226
@.str.34 = private unnamed_addr constant [16 x i8] c"standard output\00", align 1, !dbg !231
@.str.35 = private unnamed_addr constant [2 x i8] c"-\00", align 1, !dbg !233
@infile = internal unnamed_addr global ptr null, align 8, !dbg !255
@optind = external local_unnamed_addr global i32, align 4
@input_desc = internal unnamed_addr global i32 0, align 4, !dbg !257
@.str.36 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !238
@.str.37 = private unnamed_addr constant [30 x i8] c"%s: input file is output file\00", align 1, !dbg !243
@pending_cr = internal unnamed_addr global i1 false, align 1, !dbg !538
@.str.38 = private unnamed_addr constant [2 x i8] c"\0D\00", align 1, !dbg !248
@.str.39 = private unnamed_addr constant [23 x i8] c"closing standard input\00", align 1, !dbg !250
@.str.40 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1, !dbg !259
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !264
@.str.41 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !342
@.str.42 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !344
@.str.43 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !346
@.str.44 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !348
@.str.58 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !379
@.str.59 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !381
@.str.60 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !383
@.str.61 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !385
@.str.62 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !390
@.str.63 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !395
@.str.64 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !400
@.str.65 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !402
@.str.66 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !404
@.str.67 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !406
@.str.71 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !417
@.str.72 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !419
@.str.73 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !421
@.str.74 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !426
@.str.75 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !431
@newlines2 = internal unnamed_addr global i32 0, align 4, !dbg !438
@.str.76 = private unnamed_addr constant [22 x i8] c"cannot do ioctl on %s\00", align 1, !dbg !436
@line_num_print = internal unnamed_addr global ptr getelementptr inbounds ([20 x i8], ptr @line_buf, i64 0, i64 12), align 8, !dbg !446
@line_num_start = internal unnamed_addr global ptr getelementptr inbounds ([20 x i8], ptr @line_buf, i64 0, i64 17), align 8, !dbg !442
@line_buf = internal global [20 x i8] c"                 0\09\00", align 16, !dbg !444
@.str.77 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !450
@.str.45 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1, !dbg !539
@Version = dso_local local_unnamed_addr global ptr @.str.45, align 8, !dbg !542
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !546
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !559
@.str.48 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !551
@.str.1.49 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !553
@.str.2.50 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !555
@.str.3.51 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !557
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !561
@stderr = external local_unnamed_addr global ptr, align 8
@.str.54 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !567
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !599
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !569
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !589
@.str.1.60 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !591
@.str.2.62 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !593
@.str.3.61 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !595
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !597
@.str.4.55 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !601
@.str.5.56 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !603
@.str.6.57 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !608
@rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !613
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !631
@.str.79 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !637
@.str.1.80 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !639
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !641
@.str.83 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !672
@.str.1.84 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !675
@.str.2.85 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !677
@.str.3.86 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !682
@.str.4.87 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !684
@.str.5.88 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !686
@.str.6.89 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !688
@.str.7.90 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !690
@.str.8.91 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !692
@.str.9.92 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !694
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.83, ptr @.str.1.84, ptr @.str.2.85, ptr @.str.3.86, ptr @.str.4.87, ptr @.str.5.88, ptr @.str.6.89, ptr @.str.7.90, ptr @.str.8.91, ptr @.str.9.92, ptr null], align 16, !dbg !696
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !707
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !721
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !759
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !766
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !723
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !768
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !711
@.str.10.95 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !728
@.str.11.93 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !730
@.str.12.96 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !732
@.str.13.94 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !734
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !736
@.str.105 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !772
@.str.1.106 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !775
@.str.2.107 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !777
@.str.3.108 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !779
@.str.4.109 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !781
@.str.5.110 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !783
@.str.6.111 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !788
@.str.7.112 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !793
@.str.8.113 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !795
@.str.9.114 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !797
@.str.10.115 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !802
@.str.11.116 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !807
@.str.12.117 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !812
@.str.13.118 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !814
@.str.14.119 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !819
@.str.15.120 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !824
@.str.16.121 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !826
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.126 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !831
@.str.18.127 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !833
@.str.19.128 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !835
@.str.20.129 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !837
@.str.21.130 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !839
@.str.22.131 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !841
@.str.23.132 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !843
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !848
@exit_failure = dso_local global i32 1, align 4, !dbg !854
@.str.147 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !860
@.str.1.145 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !863
@.str.2.146 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !865
@.str.158 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !867
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !870
@.str.1.163 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !885

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !972 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !976, metadata !DIExpression()), !dbg !977
  %2 = icmp eq i32 %0, 0, !dbg !978
  br i1 %2, label %8, label %3, !dbg !980

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !981, !tbaa !983
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #40, !dbg !981
  %6 = load ptr, ptr @program_name, align 8, !dbg !981, !tbaa !983
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #40, !dbg !981
  br label %47, !dbg !981

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #40, !dbg !987
  %10 = load ptr, ptr @program_name, align 8, !dbg !987, !tbaa !983
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #40, !dbg !987
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #40, !dbg !989
  %13 = load ptr, ptr @stdout, align 8, !dbg !989, !tbaa !983
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !989
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.40, i32 noundef 5) #40, !dbg !990
  %16 = load ptr, ptr @stdout, align 8, !dbg !990, !tbaa !983
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !990
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #40, !dbg !994
  tail call fastcc void @oputs_(ptr noundef %18), !dbg !994
  %19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #40, !dbg !995
  tail call fastcc void @oputs_(ptr noundef %19), !dbg !995
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #40, !dbg !996
  tail call fastcc void @oputs_(ptr noundef %20), !dbg !996
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #40, !dbg !997
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !997
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #40, !dbg !998
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !998
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #40, !dbg !999
  tail call fastcc void @oputs_(ptr noundef %23), !dbg !999
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #40, !dbg !1000
  tail call fastcc void @oputs_(ptr noundef %24), !dbg !1000
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #40, !dbg !1001
  tail call fastcc void @oputs_(ptr noundef %25), !dbg !1001
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #40, !dbg !1002
  tail call fastcc void @oputs_(ptr noundef %26), !dbg !1002
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #40, !dbg !1003
  tail call fastcc void @oputs_(ptr noundef %27), !dbg !1003
  %28 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #40, !dbg !1004
  tail call fastcc void @oputs_(ptr noundef %28), !dbg !1004
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #40, !dbg !1005
  tail call fastcc void @oputs_(ptr noundef %29), !dbg !1005
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #40, !dbg !1006
  %31 = load ptr, ptr @program_name, align 8, !dbg !1006, !tbaa !983
  %32 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %31) #40, !dbg !1006
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1007, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1019, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata ptr poison, metadata !1019, metadata !DIExpression()), !dbg !1024
  tail call void @emit_bug_reporting_address() #40, !dbg !1026
  %33 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #40, !dbg !1027
  call void @llvm.dbg.value(metadata ptr %33, metadata !1022, metadata !DIExpression()), !dbg !1024
  %34 = icmp eq ptr %33, null, !dbg !1028
  br i1 %34, label %42, label %35, !dbg !1030

35:                                               ; preds = %8
  %36 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %33, ptr noundef nonnull dereferenceable(4) @.str.71, i64 noundef 3) #41, !dbg !1031
  %37 = icmp eq i32 %36, 0, !dbg !1031
  br i1 %37, label %42, label %38, !dbg !1032

38:                                               ; preds = %35
  %39 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.72, i32 noundef 5) #40, !dbg !1033
  %40 = load ptr, ptr @stdout, align 8, !dbg !1033, !tbaa !983
  %41 = tail call i32 @fputs_unlocked(ptr noundef %39, ptr noundef %40), !dbg !1033
  br label %42, !dbg !1035

42:                                               ; preds = %8, %35, %38
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1019, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1023, metadata !DIExpression()), !dbg !1024
  %43 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.73, i32 noundef 5) #40, !dbg !1036
  %44 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %43, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.3) #40, !dbg !1036
  %45 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.74, i32 noundef 5) #40, !dbg !1037
  %46 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %45, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.75) #40, !dbg !1037
  br label %47

47:                                               ; preds = %42, %3
  tail call void @exit(i32 noundef %0) #42, !dbg !1038
  unreachable, !dbg !1038
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1039 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1043 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !1049 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1052 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !266 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !270, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata ptr %0, metadata !271, metadata !DIExpression()), !dbg !1055
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !1056, !tbaa !1057
  %3 = icmp eq i32 %2, -1, !dbg !1059
  br i1 %3, label %4, label %16, !dbg !1060

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.41) #40, !dbg !1061
  call void @llvm.dbg.value(metadata ptr %5, metadata !272, metadata !DIExpression()), !dbg !1062
  %6 = icmp eq ptr %5, null, !dbg !1063
  br i1 %6, label %14, label %7, !dbg !1064

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !1065, !tbaa !1066
  %9 = icmp eq i8 %8, 0, !dbg !1065
  br i1 %9, label %14, label %10, !dbg !1067

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !1068, metadata !DIExpression()), !dbg !1075
  call void @llvm.dbg.value(metadata ptr @.str.42, metadata !1074, metadata !DIExpression()), !dbg !1075
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.42) #41, !dbg !1077
  %12 = icmp eq i32 %11, 0, !dbg !1078
  %13 = zext i1 %12 to i32, !dbg !1067
  br label %14, !dbg !1067

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !1079, !tbaa !1057
  br label %16, !dbg !1080

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !1081
  %18 = icmp eq i32 %17, 0, !dbg !1081
  br i1 %18, label %22, label %19, !dbg !1083

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !1084, !tbaa !983
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !1084
  br label %128, !dbg !1086

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !275, metadata !DIExpression()), !dbg !1055
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.43) #41, !dbg !1087
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !1088
  call void @llvm.dbg.value(metadata ptr %24, metadata !276, metadata !DIExpression()), !dbg !1055
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #41, !dbg !1089
  call void @llvm.dbg.value(metadata ptr %25, metadata !277, metadata !DIExpression()), !dbg !1055
  %26 = icmp eq ptr %25, null, !dbg !1090
  br i1 %26, label %58, label %27, !dbg !1091

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !1092
  br i1 %28, label %58, label %29, !dbg !1093

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !278, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 0, metadata !282, metadata !DIExpression()), !dbg !1094
  %30 = icmp ult ptr %24, %25, !dbg !1095
  br i1 %30, label %31, label %52, !dbg !1096

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #43, !dbg !1055
  %33 = load ptr, ptr %32, align 8, !tbaa !983
  br label %34, !dbg !1096

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !278, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %36, metadata !282, metadata !DIExpression()), !dbg !1094
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !1097
  call void @llvm.dbg.value(metadata ptr %37, metadata !278, metadata !DIExpression()), !dbg !1094
  %38 = load i8, ptr %35, align 1, !dbg !1097, !tbaa !1066
  %39 = sext i8 %38 to i64, !dbg !1097
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !1097
  %41 = load i16, ptr %40, align 2, !dbg !1097, !tbaa !1098
  %42 = freeze i16 %41, !dbg !1100
  %43 = lshr i16 %42, 13, !dbg !1100
  %44 = and i16 %43, 1, !dbg !1100
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !1101
  call void @llvm.dbg.value(metadata i64 %46, metadata !282, metadata !DIExpression()), !dbg !1094
  %47 = icmp ult ptr %37, %25, !dbg !1095
  %48 = icmp ult i64 %46, 2, !dbg !1102
  %49 = select i1 %47, i1 %48, i1 false, !dbg !1102
  br i1 %49, label %34, label %50, !dbg !1096, !llvm.loop !1103

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !1105
  br i1 %51, label %52, label %54, !dbg !1107

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !1107

54:                                               ; preds = %50, %52
  %55 = phi i1 [ %53, %52 ], [ %51, %50 ]
  %56 = phi ptr [ %25, %52 ], [ %24, %50 ]
  %57 = zext i1 %55 to i8, !dbg !1107
  call void @llvm.dbg.value(metadata i8 %57, metadata !275, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata ptr %56, metadata !277, metadata !DIExpression()), !dbg !1055
  br label %58, !dbg !1108

58:                                               ; preds = %22, %27, %54
  %59 = phi ptr [ %56, %54 ], [ %24, %27 ], [ %24, %22 ], !dbg !1055
  %60 = phi i8 [ %57, %54 ], [ 1, %27 ], [ 0, %22 ], !dbg !1055
  call void @llvm.dbg.value(metadata i8 %60, metadata !275, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata ptr %59, metadata !277, metadata !DIExpression()), !dbg !1055
  %61 = tail call i64 @strcspn(ptr noundef %59, ptr noundef nonnull @.str.44) #41, !dbg !1109
  call void @llvm.dbg.value(metadata i64 %61, metadata !283, metadata !DIExpression()), !dbg !1055
  %62 = getelementptr inbounds i8, ptr %59, i64 %61, !dbg !1110
  call void @llvm.dbg.value(metadata ptr %62, metadata !284, metadata !DIExpression()), !dbg !1055
  br label %63, !dbg !1111

63:                                               ; preds = %96, %58
  %64 = phi ptr [ %62, %58 ], [ %97, %96 ], !dbg !1055
  %65 = phi i8 [ %60, %58 ], [ %73, %96 ], !dbg !1055
  call void @llvm.dbg.value(metadata i8 %65, metadata !275, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata ptr %64, metadata !284, metadata !DIExpression()), !dbg !1055
  %66 = load i8, ptr %64, align 1, !dbg !1112, !tbaa !1066
  switch i8 %66, label %72 [
    i8 0, label %98
    i8 10, label %98
    i8 45, label %67
  ], !dbg !1113

67:                                               ; preds = %63
  %68 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !1114
  %69 = load i8, ptr %68, align 1, !dbg !1117, !tbaa !1066
  %70 = icmp eq i8 %69, 45, !dbg !1118
  %71 = select i1 %70, i8 0, i8 %65, !dbg !1119
  br label %72, !dbg !1119

72:                                               ; preds = %67, %63
  %73 = phi i8 [ %65, %63 ], [ %71, %67 ], !dbg !1055
  call void @llvm.dbg.value(metadata i8 %73, metadata !275, metadata !DIExpression()), !dbg !1055
  %74 = tail call ptr @__ctype_b_loc() #43, !dbg !1120
  %75 = load ptr, ptr %74, align 8, !dbg !1120, !tbaa !983
  %76 = sext i8 %66 to i64, !dbg !1120
  %77 = getelementptr inbounds i16, ptr %75, i64 %76, !dbg !1120
  %78 = load i16, ptr %77, align 2, !dbg !1120, !tbaa !1098
  %79 = and i16 %78, 8192, !dbg !1120
  %80 = icmp eq i16 %79, 0, !dbg !1120
  br i1 %80, label %96, label %81, !dbg !1122

81:                                               ; preds = %72
  %82 = icmp eq i8 %66, 9, !dbg !1123
  br i1 %82, label %98, label %83, !dbg !1126

83:                                               ; preds = %81
  %84 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !1127
  %85 = load i8, ptr %84, align 1, !dbg !1127, !tbaa !1066
  %86 = sext i8 %85 to i64, !dbg !1127
  %87 = getelementptr inbounds i16, ptr %75, i64 %86, !dbg !1127
  %88 = load i16, ptr %87, align 2, !dbg !1127, !tbaa !1098
  %89 = and i16 %88, 8192, !dbg !1127
  %90 = icmp eq i16 %89, 0, !dbg !1127
  br i1 %90, label %91, label %98, !dbg !1128

91:                                               ; preds = %83
  %92 = and i8 %73, 1, !dbg !1129
  %93 = icmp ne i8 %92, 0, !dbg !1129
  %94 = icmp eq i8 %85, 45
  %95 = select i1 %93, i1 true, i1 %94, !dbg !1131
  br i1 %95, label %96, label %98, !dbg !1131

96:                                               ; preds = %91, %72
  %97 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !1132
  call void @llvm.dbg.value(metadata ptr %97, metadata !284, metadata !DIExpression()), !dbg !1055
  br label %63, !dbg !1111, !llvm.loop !1133

98:                                               ; preds = %91, %63, %63, %81, %83
  %99 = ptrtoint ptr %24 to i64, !dbg !1135
  %100 = load ptr, ptr @stdout, align 8, !dbg !1135, !tbaa !983
  %101 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %100), !dbg !1135
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1068, metadata !DIExpression()), !dbg !1136
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1068, metadata !DIExpression()), !dbg !1138
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1068, metadata !DIExpression()), !dbg !1140
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1068, metadata !DIExpression()), !dbg !1142
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1068, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1068, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1068, metadata !DIExpression()), !dbg !1148
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1068, metadata !DIExpression()), !dbg !1150
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1068, metadata !DIExpression()), !dbg !1152
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1068, metadata !DIExpression()), !dbg !1154
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !337, metadata !DIExpression()), !dbg !1055
  %102 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(7) @.str.58, i64 noundef 6) #41, !dbg !1156
  %103 = icmp eq i32 %102, 0, !dbg !1156
  br i1 %103, label %107, label %104, !dbg !1158

104:                                              ; preds = %98
  %105 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(10) @.str.59, i64 noundef 9) #41, !dbg !1159
  %106 = icmp eq i32 %105, 0, !dbg !1159
  br i1 %106, label %107, label %110, !dbg !1160

107:                                              ; preds = %104, %98
  %108 = trunc i64 %61 to i32, !dbg !1161
  %109 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %108, ptr noundef %59) #40, !dbg !1161
  br label %113, !dbg !1163

110:                                              ; preds = %104
  %111 = trunc i64 %61 to i32, !dbg !1164
  %112 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.3, i32 noundef %111, ptr noundef %59) #40, !dbg !1164
  br label %113

113:                                              ; preds = %110, %107
  %114 = load ptr, ptr @stdout, align 8, !dbg !1166, !tbaa !983
  %115 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.64, ptr noundef %114), !dbg !1166
  %116 = load ptr, ptr @stdout, align 8, !dbg !1167, !tbaa !983
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.65, ptr noundef %116), !dbg !1167
  %118 = ptrtoint ptr %64 to i64, !dbg !1168
  %119 = sub i64 %118, %99, !dbg !1168
  %120 = load ptr, ptr @stdout, align 8, !dbg !1168, !tbaa !983
  %121 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %119, ptr noundef %120), !dbg !1168
  %122 = load ptr, ptr @stdout, align 8, !dbg !1169, !tbaa !983
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.66, ptr noundef %122), !dbg !1169
  %124 = load ptr, ptr @stdout, align 8, !dbg !1170, !tbaa !983
  %125 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.67, ptr noundef %124), !dbg !1170
  %126 = load ptr, ptr @stdout, align 8, !dbg !1171, !tbaa !983
  %127 = tail call i32 @fputs_unlocked(ptr noundef nonnull %64, ptr noundef %126), !dbg !1171
  br label %128, !dbg !1172

128:                                              ; preds = %113, %19
  ret void, !dbg !1172
}

; Function Attrs: nounwind
declare !dbg !1173 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1177 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1181 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1183 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1186 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1189 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1192 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1195 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1201 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1202 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !83 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stat, align 8
  %5 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !453, metadata !DIExpression()), !dbg !1208
  call void @llvm.dbg.value(metadata ptr %1, metadata !454, metadata !DIExpression()), !dbg !1208
  call void @llvm.dbg.value(metadata i8 0, metadata !455, metadata !DIExpression()), !dbg !1208
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %4) #40, !dbg !1209
  call void @llvm.dbg.declare(metadata ptr %4, metadata !456, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata i8 0, metadata !491, metadata !DIExpression()), !dbg !1208
  call void @llvm.dbg.value(metadata i8 0, metadata !492, metadata !DIExpression()), !dbg !1208
  call void @llvm.dbg.value(metadata i8 0, metadata !493, metadata !DIExpression()), !dbg !1208
  call void @llvm.dbg.value(metadata i8 0, metadata !494, metadata !DIExpression()), !dbg !1208
  call void @llvm.dbg.value(metadata i8 0, metadata !495, metadata !DIExpression()), !dbg !1208
  call void @llvm.dbg.value(metadata i8 0, metadata !496, metadata !DIExpression()), !dbg !1208
  call void @llvm.dbg.value(metadata i32 0, metadata !497, metadata !DIExpression()), !dbg !1208
  %6 = load ptr, ptr %1, align 8, !dbg !1211, !tbaa !983
  tail call void @set_program_name(ptr noundef %6) #40, !dbg !1212
  %7 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.26) #40, !dbg !1213
  %8 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28) #40, !dbg !1214
  %9 = tail call ptr @textdomain(ptr noundef nonnull @.str.27) #40, !dbg !1215
  %10 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #40, !dbg !1216
  br label %11, !dbg !1217

11:                                               ; preds = %19, %2
  %12 = phi i8 [ 0, %2 ], [ %20, %19 ], !dbg !1208
  %13 = phi i8 [ 0, %2 ], [ %21, %19 ], !dbg !1218
  %14 = phi i8 [ 0, %2 ], [ %22, %19 ], !dbg !1219
  %15 = phi i8 [ 0, %2 ], [ %23, %19 ], !dbg !1220
  %16 = phi i8 [ 0, %2 ], [ %24, %19 ], !dbg !1221
  %17 = phi i8 [ 0, %2 ], [ %25, %19 ], !dbg !1222
  call void @llvm.dbg.value(metadata i8 %17, metadata !491, metadata !DIExpression()), !dbg !1208
  call void @llvm.dbg.value(metadata i8 %16, metadata !492, metadata !DIExpression()), !dbg !1208
  call void @llvm.dbg.value(metadata i8 %15, metadata !493, metadata !DIExpression()), !dbg !1208
  call void @llvm.dbg.value(metadata i8 %14, metadata !494, metadata !DIExpression()), !dbg !1208
  call void @llvm.dbg.value(metadata i8 %13, metadata !495, metadata !DIExpression()), !dbg !1208
  call void @llvm.dbg.value(metadata i8 %12, metadata !496, metadata !DIExpression()), !dbg !1208
  %18 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.29, ptr noundef nonnull @main.long_options, ptr noundef null) #40, !dbg !1223
  call void @llvm.dbg.value(metadata i32 %18, metadata !498, metadata !DIExpression()), !dbg !1208
  switch i32 %18, label %41 [
    i32 -1, label %42
    i32 98, label %26
    i32 101, label %27
    i32 110, label %28
    i32 115, label %29
    i32 116, label %30
    i32 117, label %19
    i32 118, label %31
    i32 65, label %32
    i32 69, label %33
    i32 84, label %34
    i32 -130, label %35
    i32 -131, label %36
  ], !dbg !1217

19:                                               ; preds = %11, %34, %33, %32, %31, %30, %29, %28, %27, %26
  %20 = phi i8 [ 1, %34 ], [ %12, %33 ], [ 1, %32 ], [ %12, %31 ], [ 1, %30 ], [ %12, %29 ], [ %12, %28 ], [ %12, %27 ], [ %12, %26 ], [ %12, %11 ]
  %21 = phi i8 [ %13, %34 ], [ %13, %33 ], [ 1, %32 ], [ 1, %31 ], [ 1, %30 ], [ %13, %29 ], [ %13, %28 ], [ 1, %27 ], [ %13, %26 ], [ %13, %11 ]
  %22 = phi i8 [ %14, %34 ], [ 1, %33 ], [ 1, %32 ], [ %14, %31 ], [ %14, %30 ], [ %14, %29 ], [ %14, %28 ], [ 1, %27 ], [ %14, %26 ], [ %14, %11 ]
  %23 = phi i8 [ %15, %34 ], [ %15, %33 ], [ %15, %32 ], [ %15, %31 ], [ %15, %30 ], [ 1, %29 ], [ %15, %28 ], [ %15, %27 ], [ %15, %26 ], [ %15, %11 ]
  %24 = phi i8 [ %16, %34 ], [ %16, %33 ], [ %16, %32 ], [ %16, %31 ], [ %16, %30 ], [ %16, %29 ], [ %16, %28 ], [ %16, %27 ], [ 1, %26 ], [ %16, %11 ]
  %25 = phi i8 [ %17, %34 ], [ %17, %33 ], [ %17, %32 ], [ %17, %31 ], [ %17, %30 ], [ %17, %29 ], [ 1, %28 ], [ %17, %27 ], [ 1, %26 ], [ %17, %11 ]
  br label %11, !dbg !1208, !llvm.loop !1224

26:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i8 1, metadata !491, metadata !DIExpression()), !dbg !1208
  call void @llvm.dbg.value(metadata i8 1, metadata !492, metadata !DIExpression()), !dbg !1208
  br label %19, !dbg !1226

27:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i8 1, metadata !494, metadata !DIExpression()), !dbg !1208
  call void @llvm.dbg.value(metadata i8 1, metadata !495, metadata !DIExpression()), !dbg !1208
  br label %19, !dbg !1229

28:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i8 1, metadata !491, metadata !DIExpression()), !dbg !1208
  br label %19, !dbg !1230

29:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i8 1, metadata !493, metadata !DIExpression()), !dbg !1208
  br label %19, !dbg !1231

30:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i8 1, metadata !496, metadata !DIExpression()), !dbg !1208
  call void @llvm.dbg.value(metadata i8 1, metadata !495, metadata !DIExpression()), !dbg !1208
  br label %19, !dbg !1232

31:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i8 1, metadata !495, metadata !DIExpression()), !dbg !1208
  br label %19, !dbg !1233

32:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i8 1, metadata !495, metadata !DIExpression()), !dbg !1208
  call void @llvm.dbg.value(metadata i8 1, metadata !494, metadata !DIExpression()), !dbg !1208
  call void @llvm.dbg.value(metadata i8 1, metadata !496, metadata !DIExpression()), !dbg !1208
  br label %19, !dbg !1234

33:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i8 1, metadata !494, metadata !DIExpression()), !dbg !1208
  br label %19, !dbg !1235

34:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i8 1, metadata !496, metadata !DIExpression()), !dbg !1208
  br label %19, !dbg !1236

35:                                               ; preds = %11
  tail call void @usage(i32 noundef 0) #44, !dbg !1237
  unreachable, !dbg !1237

36:                                               ; preds = %11
  %37 = load ptr, ptr @stdout, align 8, !dbg !1238, !tbaa !983
  %38 = load ptr, ptr @Version, align 8, !dbg !1238, !tbaa !983
  %39 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32) #40, !dbg !1238
  %40 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.33) #40, !dbg !1238
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %37, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.30, ptr noundef %38, ptr noundef %39, ptr noundef %40, ptr noundef null) #40, !dbg !1238
  tail call void @exit(i32 noundef 0) #42, !dbg !1238
  unreachable, !dbg !1238

41:                                               ; preds = %11
  tail call void @usage(i32 noundef 1) #44, !dbg !1239
  unreachable, !dbg !1239

42:                                               ; preds = %11
  %43 = call i32 @fstat(i32 noundef 1, ptr noundef nonnull %4) #40, !dbg !1240
  %44 = icmp slt i32 %43, 0, !dbg !1242
  br i1 %44, label %45, label %49, !dbg !1243

45:                                               ; preds = %42
  %46 = tail call ptr @__errno_location() #43, !dbg !1244
  %47 = load i32, ptr %46, align 4, !dbg !1244, !tbaa !1057
  %48 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.34, i32 noundef 5) #40, !dbg !1244
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %47, ptr noundef %48) #40, !dbg !1244
  unreachable, !dbg !1244

49:                                               ; preds = %42
  call void @llvm.dbg.value(metadata ptr %4, metadata !1245, metadata !DIExpression()), !dbg !1260
  %50 = getelementptr inbounds %struct.stat, ptr %4, i64 0, i32 9, !dbg !1262
  %51 = load i64, ptr %50, align 8, !dbg !1262, !tbaa !1263
  %52 = add i64 %51, -1, !dbg !1267
  %53 = icmp ult i64 %52, 2305843009213693952, !dbg !1267
  %54 = select i1 %53, i64 %51, i64 512, !dbg !1267
  call void @llvm.dbg.value(metadata i64 %54, metadata !1252, metadata !DIExpression()), !dbg !1260
  %55 = urem i64 262143, %54
  %56 = xor i64 %55, 262143, !dbg !1268
  %57 = add nuw nsw i64 %54, %56, !dbg !1269
  call void @llvm.dbg.value(metadata i64 %57, metadata !1252, metadata !DIExpression()), !dbg !1260
  %58 = getelementptr inbounds %struct.stat, ptr %4, i64 0, i32 3, !dbg !1270
  %59 = load i32, ptr %58, align 8, !dbg !1270, !tbaa !1271
  %60 = and i32 %59, 61440, !dbg !1270
  %61 = icmp ne i32 %60, 32768, !dbg !1270
  %62 = tail call i64 @llvm.ctpop.i64(i64 %57), !range !1272
  %63 = icmp ult i64 %62, 2
  %64 = select i1 %61, i1 true, i1 %63, !dbg !1273
  br i1 %64, label %71, label %65, !dbg !1273

65:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i64 %57, metadata !1274, metadata !DIExpression()), !dbg !1280
  call void @llvm.dbg.value(metadata i64 %57, metadata !1282, metadata !DIExpression()), !dbg !1287
  %66 = tail call i64 @llvm.ctlz.i64(i64 %57, i1 false), !dbg !1289, !range !1272
  call void @llvm.dbg.value(metadata i64 %66, metadata !1253, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1290
  call void @llvm.dbg.value(metadata !DIArgList(i64 1, i32 64, i64 %66), metadata !1256, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_minus, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shl, DW_OP_stack_value)), !dbg !1291
  %67 = icmp eq i64 %66, 1, !dbg !1292
  %68 = sub nuw nsw i64 64, %66, !dbg !1294
  %69 = shl nuw i64 1, %68, !dbg !1294
  %70 = select i1 %67, i64 %57, i64 %69, !dbg !1294
  call void @llvm.dbg.value(metadata i64 %70, metadata !1252, metadata !DIExpression()), !dbg !1260
  br label %71, !dbg !1295

71:                                               ; preds = %49, %65
  %72 = phi i64 [ %70, %65 ], [ %57, %49 ], !dbg !1260
  call void @llvm.dbg.value(metadata i64 %72, metadata !1252, metadata !DIExpression()), !dbg !1260
  %73 = tail call i64 @llvm.smin.i64(i64 %72, i64 2146435072), !dbg !1296
  call void @llvm.dbg.value(metadata i64 %73, metadata !499, metadata !DIExpression()), !dbg !1208
  call void @llvm.dbg.value(metadata i32 -2, metadata !503, metadata !DIExpression()), !dbg !1208
  %74 = icmp eq i32 %60, 32768, !dbg !1297
  call void @llvm.dbg.value(metadata i1 %74, metadata !504, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1208
  %75 = icmp ne i8 %17, 0, !dbg !1298
  %76 = xor i1 %75, true, !dbg !1300
  %77 = icmp eq i8 %14, 0
  %78 = select i1 %76, i1 %77, i1 false, !dbg !1300
  %79 = icmp eq i8 %15, 0
  call void @llvm.dbg.value(metadata i32 0, metadata !497, metadata !DIExpression()), !dbg !1208
  store ptr @.str.35, ptr @infile, align 8, !dbg !1301, !tbaa !983
  %80 = load i32, ptr @optind, align 4, !dbg !1302, !tbaa !1057
  call void @llvm.dbg.value(metadata i32 %80, metadata !505, metadata !DIExpression()), !dbg !1208
  call void @llvm.dbg.value(metadata i8 1, metadata !506, metadata !DIExpression()), !dbg !1208
  %81 = tail call i32 @getpagesize() #43, !dbg !1303
  %82 = sext i32 %81 to i64, !dbg !1303
  call void @llvm.dbg.value(metadata i64 %82, metadata !507, metadata !DIExpression()), !dbg !1208
  %83 = getelementptr inbounds %struct.stat, ptr %5, i64 0, i32 9
  %84 = getelementptr inbounds %struct.stat, ptr %5, i64 0, i32 3
  %85 = getelementptr inbounds %struct.stat, ptr %5, i64 0, i32 1
  %86 = getelementptr inbounds %struct.stat, ptr %4, i64 0, i32 1
  %87 = icmp eq i8 %13, 0
  %88 = select i1 %78, i1 %87, i1 false
  %89 = icmp eq i8 %12, 0
  %90 = select i1 %88, i1 %89, i1 false
  %91 = select i1 %90, i1 %79, i1 false
  %92 = icmp ne i8 %12, 0
  %93 = icmp eq i8 %16, 0
  %94 = icmp ne i8 %14, 0
  %95 = icmp ne i8 %15, 0
  %96 = and i1 %93, %75
  %97 = sext i32 %80 to i64, !dbg !1304
  %98 = sext i32 %0 to i64, !dbg !1304
  br label %99, !dbg !1304

99:                                               ; preds = %556, %71
  %100 = phi i64 [ %560, %556 ], [ %97, %71 ], !dbg !1305
  %101 = phi i32 [ %557, %556 ], [ -2, %71 ], !dbg !1305
  %102 = phi i8 [ %558, %556 ], [ 1, %71 ], !dbg !1208
  %103 = phi i8 [ %559, %556 ], [ 0, %71 ], !dbg !1208
  call void @llvm.dbg.value(metadata i8 %103, metadata !455, metadata !DIExpression()), !dbg !1208
  call void @llvm.dbg.value(metadata i8 %102, metadata !506, metadata !DIExpression()), !dbg !1208
  call void @llvm.dbg.value(metadata i64 %100, metadata !505, metadata !DIExpression()), !dbg !1208
  call void @llvm.dbg.value(metadata i32 %101, metadata !503, metadata !DIExpression()), !dbg !1208
  %104 = icmp slt i64 %100, %98, !dbg !1306
  br i1 %104, label %107, label %105, !dbg !1308

105:                                              ; preds = %99
  %106 = load ptr, ptr @infile, align 8, !dbg !1309, !tbaa !983
  br label %110, !dbg !1308

107:                                              ; preds = %99
  %108 = getelementptr inbounds ptr, ptr %1, i64 %100, !dbg !1310
  %109 = load ptr, ptr %108, align 8, !dbg !1310, !tbaa !983
  store ptr %109, ptr @infile, align 8, !dbg !1311, !tbaa !983
  br label %110, !dbg !1312

110:                                              ; preds = %105, %107
  %111 = phi ptr [ %106, %105 ], [ %109, %107 ], !dbg !1309
  call void @llvm.dbg.value(metadata ptr %111, metadata !1068, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata ptr @.str.35, metadata !1074, metadata !DIExpression()), !dbg !1313
  %112 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %111, ptr noundef nonnull dereferenceable(2) @.str.35) #41, !dbg !1315
  %113 = icmp eq i32 %112, 0, !dbg !1316
  call void @llvm.dbg.value(metadata i1 %113, metadata !508, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1317
  br i1 %113, label %114, label %115, !dbg !1318

114:                                              ; preds = %110
  call void @llvm.dbg.value(metadata i8 1, metadata !455, metadata !DIExpression()), !dbg !1208
  store i32 0, ptr @input_desc, align 4, !dbg !1319, !tbaa !1057
  br label %123

115:                                              ; preds = %110
  %116 = call i32 (ptr, i32, ...) @open(ptr noundef %111, i32 noundef 0) #40, !dbg !1322
  store i32 %116, ptr @input_desc, align 4, !dbg !1324, !tbaa !1057
  %117 = icmp slt i32 %116, 0, !dbg !1325
  br i1 %117, label %118, label %123, !dbg !1327

118:                                              ; preds = %115
  %119 = tail call ptr @__errno_location() #43, !dbg !1328
  %120 = load i32, ptr %119, align 4, !dbg !1328, !tbaa !1057
  %121 = load ptr, ptr @infile, align 8, !dbg !1328, !tbaa !983
  %122 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %121) #40, !dbg !1328
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %120, ptr noundef nonnull @.str.36, ptr noundef %122) #40, !dbg !1328
  call void @llvm.dbg.value(metadata i8 0, metadata !506, metadata !DIExpression()), !dbg !1208
  br label %556, !dbg !1330

123:                                              ; preds = %114, %115
  %124 = phi i32 [ 0, %114 ], [ %116, %115 ], !dbg !1331
  %125 = phi i8 [ 1, %114 ], [ %103, %115 ], !dbg !1208
  call void @llvm.dbg.value(metadata i8 %125, metadata !455, metadata !DIExpression()), !dbg !1208
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %5) #40, !dbg !1333
  call void @llvm.dbg.declare(metadata ptr %5, metadata !510, metadata !DIExpression()), !dbg !1334
  %126 = call i32 @fstat(i32 noundef %124, ptr noundef nonnull %5) #40, !dbg !1335
  %127 = icmp slt i32 %126, 0, !dbg !1336
  br i1 %127, label %128, label %133, !dbg !1337

128:                                              ; preds = %123
  %129 = tail call ptr @__errno_location() #43, !dbg !1338
  %130 = load i32, ptr %129, align 4, !dbg !1338, !tbaa !1057
  %131 = load ptr, ptr @infile, align 8, !dbg !1338, !tbaa !983
  %132 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %131) #40, !dbg !1338
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %130, ptr noundef nonnull @.str.36, ptr noundef %132) #40, !dbg !1338
  call void @llvm.dbg.value(metadata i8 0, metadata !506, metadata !DIExpression()), !dbg !1208
  br label %542, !dbg !1340

133:                                              ; preds = %123
  call void @llvm.dbg.value(metadata ptr %5, metadata !1245, metadata !DIExpression()), !dbg !1341
  %134 = load i64, ptr %83, align 8, !dbg !1343, !tbaa !1263
  %135 = add i64 %134, -1, !dbg !1344
  %136 = icmp ult i64 %135, 2305843009213693952, !dbg !1344
  %137 = select i1 %136, i64 %134, i64 512, !dbg !1344
  call void @llvm.dbg.value(metadata i64 %137, metadata !1252, metadata !DIExpression()), !dbg !1341
  %138 = urem i64 262143, %137
  %139 = xor i64 %138, 262143, !dbg !1345
  %140 = add nuw nsw i64 %137, %139, !dbg !1346
  call void @llvm.dbg.value(metadata i64 %140, metadata !1252, metadata !DIExpression()), !dbg !1341
  %141 = load i32, ptr %84, align 8, !dbg !1347, !tbaa !1271
  %142 = and i32 %141, 61440, !dbg !1347
  %143 = icmp ne i32 %142, 32768, !dbg !1347
  %144 = call i64 @llvm.ctpop.i64(i64 %140), !range !1272
  %145 = icmp ult i64 %144, 2
  %146 = select i1 %143, i1 true, i1 %145, !dbg !1348
  br i1 %146, label %155, label %147, !dbg !1348

147:                                              ; preds = %133
  call void @llvm.dbg.value(metadata i64 %140, metadata !1274, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i64 %140, metadata !1282, metadata !DIExpression()), !dbg !1351
  %148 = call i64 @llvm.ctlz.i64(i64 %140, i1 false), !dbg !1353, !range !1272
  call void @llvm.dbg.value(metadata i64 %148, metadata !1253, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1354
  call void @llvm.dbg.value(metadata !DIArgList(i64 1, i32 64, i64 %148), metadata !1256, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_minus, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shl, DW_OP_stack_value)), !dbg !1355
  %149 = icmp eq i64 %148, 1, !dbg !1356
  %150 = sub nuw nsw i64 64, %148, !dbg !1357
  %151 = shl nuw i64 1, %150, !dbg !1357
  %152 = select i1 %149, i64 %140, i64 %151, !dbg !1357
  call void @llvm.dbg.value(metadata i64 %152, metadata !1252, metadata !DIExpression()), !dbg !1341
  %153 = call i64 @llvm.smin.i64(i64 %152, i64 2146435072), !dbg !1358
  call void @llvm.dbg.value(metadata i64 %153, metadata !511, metadata !DIExpression()), !dbg !1317
  %154 = load i32, ptr @input_desc, align 4, !dbg !1359, !tbaa !1057
  call void @fdadvise(i32 noundef %154, i64 noundef 0, i64 noundef 0, i32 noundef 2) #40, !dbg !1360
  br label %159, !dbg !1361

155:                                              ; preds = %133
  call void @llvm.dbg.value(metadata i64 %140, metadata !1252, metadata !DIExpression()), !dbg !1341
  %156 = call i64 @llvm.smin.i64(i64 %140, i64 2146435072), !dbg !1358
  call void @llvm.dbg.value(metadata i64 %156, metadata !511, metadata !DIExpression()), !dbg !1317
  %157 = load i32, ptr @input_desc, align 4, !dbg !1359, !tbaa !1057
  call void @fdadvise(i32 noundef %157, i64 noundef 0, i64 noundef 0, i32 noundef 2) #40, !dbg !1360
  %158 = trunc i32 %142 to i16, !dbg !1361
  switch i16 %158, label %159 [
    i16 4096, label %187
    i16 -16384, label %187
  ], !dbg !1361

159:                                              ; preds = %147, %155
  %160 = phi i64 [ %153, %147 ], [ %156, %155 ]
  %161 = load i64, ptr %5, align 8, !dbg !1362, !tbaa !1363
  %162 = load i64, ptr %4, align 8, !dbg !1362, !tbaa !1363
  %163 = load i64, ptr %85, align 8, !dbg !1362, !tbaa !1364
  %164 = load i64, ptr %86, align 8, !dbg !1362, !tbaa !1364
  %165 = icmp eq i64 %161, %162, !dbg !1362
  %166 = icmp eq i64 %163, %164, !dbg !1362
  %167 = and i1 %165, %166, !dbg !1362
  br i1 %167, label %168, label %187, !dbg !1365

168:                                              ; preds = %159
  %169 = load i32, ptr @input_desc, align 4, !dbg !1366, !tbaa !1057
  %170 = call i64 @lseek(i32 noundef %169, i64 noundef 0, i32 noundef 1) #40, !dbg !1367
  call void @llvm.dbg.value(metadata i64 %170, metadata !512, metadata !DIExpression()), !dbg !1368
  %171 = icmp sgt i64 %170, -1, !dbg !1369
  br i1 %171, label %172, label %187, !dbg !1370

172:                                              ; preds = %168
  %173 = icmp slt i32 %101, -1, !dbg !1371
  br i1 %173, label %174, label %176, !dbg !1373

174:                                              ; preds = %172
  %175 = call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef 1, i32 noundef 3) #40, !dbg !1374
  call void @llvm.dbg.value(metadata i32 %175, metadata !503, metadata !DIExpression()), !dbg !1208
  br label %176, !dbg !1375

176:                                              ; preds = %174, %172
  %177 = phi i32 [ %175, %174 ], [ %101, %172 ], !dbg !1208
  call void @llvm.dbg.value(metadata i32 %177, metadata !503, metadata !DIExpression()), !dbg !1208
  %178 = and i32 %177, -2147482624, !dbg !1376
  %179 = icmp eq i32 %178, 1024, !dbg !1376
  %180 = select i1 %179, i32 2, i32 1, !dbg !1377
  call void @llvm.dbg.value(metadata i32 %180, metadata !517, metadata !DIExpression()), !dbg !1378
  %181 = call i64 @lseek(i32 noundef 1, i64 noundef 0, i32 noundef %180) #40, !dbg !1379
  %182 = icmp slt i64 %170, %181, !dbg !1381
  br i1 %182, label %183, label %187, !dbg !1382

183:                                              ; preds = %176
  %184 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.37, i32 noundef 5) #40, !dbg !1383
  %185 = load ptr, ptr @infile, align 8, !dbg !1383, !tbaa !983
  %186 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %185) #40, !dbg !1383
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %184, ptr noundef %186) #40, !dbg !1383
  call void @llvm.dbg.value(metadata i8 0, metadata !506, metadata !DIExpression()), !dbg !1208
  call void @llvm.dbg.value(metadata i32 %177, metadata !503, metadata !DIExpression()), !dbg !1208
  br label %542

187:                                              ; preds = %168, %176, %155, %155, %159
  %188 = phi i64 [ %156, %155 ], [ %160, %159 ], [ %156, %155 ], [ %160, %176 ], [ %160, %168 ]
  %189 = phi i32 [ %101, %155 ], [ %101, %159 ], [ %101, %155 ], [ %177, %176 ], [ %101, %168 ], !dbg !1208
  call void @llvm.dbg.value(metadata i8 %102, metadata !506, metadata !DIExpression()), !dbg !1208
  call void @llvm.dbg.value(metadata i32 %189, metadata !503, metadata !DIExpression()), !dbg !1208
  br i1 %91, label %190, label %238, !dbg !1385

190:                                              ; preds = %187
  %191 = icmp eq i32 %142, 32768
  %192 = select i1 %74, i1 %191, i1 false, !dbg !1386
  br i1 %192, label %193, label %209, !dbg !1386

193:                                              ; preds = %190
  call void @llvm.dbg.value(metadata i64 9223372035781033984, metadata !1387, metadata !DIExpression()), !dbg !1396
  call void @llvm.dbg.value(metadata i8 poison, metadata !1392, metadata !DIExpression()), !dbg !1398
  %194 = load i32, ptr @input_desc, align 4, !dbg !1399, !tbaa !1057
  %195 = call i64 @rpl_copy_file_range(i32 noundef %194, ptr noundef null, i32 noundef 1, ptr noundef null, i64 noundef 9223372035781033984, i32 noundef 0) #40, !dbg !1401
  switch i64 %195, label %196 [
    i64 0, label %209
    i64 -1, label %199
  ], !dbg !1402

196:                                              ; preds = %193, %196
  call void @llvm.dbg.value(metadata i8 poison, metadata !1392, metadata !DIExpression()), !dbg !1398
  %197 = load i32, ptr @input_desc, align 4, !dbg !1399, !tbaa !1057
  %198 = call i64 @rpl_copy_file_range(i32 noundef %197, ptr noundef null, i32 noundef 1, ptr noundef null, i64 noundef 9223372035781033984, i32 noundef 0) #40, !dbg !1401
  switch i64 %198, label %196 [
    i64 0, label %205
    i64 -1, label %199
  ], !dbg !1402, !llvm.loop !1403

199:                                              ; preds = %196, %193
  %200 = tail call ptr @__errno_location() #43, !dbg !1407
  %201 = load i32, ptr %200, align 4, !dbg !1407, !tbaa !1057
  switch i32 %201, label %202 [
    i32 38, label %209
    i32 95, label %209
    i32 22, label %209
    i32 9, label %209
    i32 18, label %209
    i32 26, label %209
    i32 1, label %209
    i32 27, label %209
  ], !dbg !1410

202:                                              ; preds = %199
  %203 = load ptr, ptr @infile, align 8, !dbg !1411, !tbaa !983
  %204 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %203) #40, !dbg !1411
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %201, ptr noundef nonnull @.str.36, ptr noundef %204) #40, !dbg !1411
  br label %205, !dbg !1412

205:                                              ; preds = %196, %202
  %206 = phi i1 [ false, %202 ], [ true, %196 ], !dbg !1413
  call void @llvm.dbg.value(metadata i32 poison, metadata !521, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata ptr null, metadata !520, metadata !DIExpression()), !dbg !1317
  %207 = icmp ne i8 %102, 0, !dbg !1415
  %208 = and i1 %207, %206, !dbg !1415
  call void @llvm.dbg.value(metadata i1 %208, metadata !506, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1208
  br label %538, !dbg !1418

209:                                              ; preds = %190, %199, %199, %199, %199, %199, %199, %199, %199, %193
  call void @llvm.dbg.value(metadata i32 0, metadata !521, metadata !DIExpression()), !dbg !1414
  %210 = call i64 @llvm.smax.i64(i64 %188, i64 %73), !dbg !1419
  call void @llvm.dbg.value(metadata i64 %210, metadata !511, metadata !DIExpression()), !dbg !1317
  %211 = call noalias nonnull ptr @xalignalloc(i64 noundef %82, i64 noundef %210) #45, !dbg !1421
  call void @llvm.dbg.value(metadata ptr %211, metadata !520, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata ptr %211, metadata !1422, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata i64 %210, metadata !1427, metadata !DIExpression()), !dbg !1430
  br label %212, !dbg !1432

212:                                              ; preds = %223, %209
  %213 = load i32, ptr @input_desc, align 4, !dbg !1433, !tbaa !1057
  %214 = call i64 @read(i32 noundef %213, ptr noundef nonnull %211, i64 noundef %210) #40, !dbg !1434
  call void @llvm.dbg.value(metadata i64 %214, metadata !1428, metadata !DIExpression()), !dbg !1435
  %215 = icmp sgt i64 %214, -1, !dbg !1436
  br i1 %215, label %221, label %216, !dbg !1438

216:                                              ; preds = %212
  %217 = tail call ptr @__errno_location() #43, !dbg !1439
  %218 = load i32, ptr %217, align 4, !dbg !1439, !tbaa !1057
  %219 = load ptr, ptr @infile, align 8, !dbg !1439, !tbaa !983
  %220 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %219) #40, !dbg !1439
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %218, ptr noundef nonnull @.str.36, ptr noundef %220) #40, !dbg !1439
  br label %235, !dbg !1441

221:                                              ; preds = %212
  %222 = icmp eq i64 %214, 0, !dbg !1442
  br i1 %222, label %235, label %223, !dbg !1444

223:                                              ; preds = %221
  %224 = call i64 @full_write(i32 noundef 1, ptr noundef nonnull %211, i64 noundef %214) #40, !dbg !1445
  %225 = icmp eq i64 %224, %214, !dbg !1447
  br i1 %225, label %212, label %226, !dbg !1448

226:                                              ; preds = %223
  %227 = tail call ptr @__errno_location() #43, !dbg !1449
  %228 = load i32, ptr %227, align 4, !dbg !1449, !tbaa !1057
  call void @llvm.dbg.value(metadata i32 %228, metadata !1452, metadata !DIExpression()), !dbg !1454
  %229 = load ptr, ptr @stdout, align 8, !dbg !1455, !tbaa !983
  %230 = call i32 @fflush_unlocked(ptr noundef %229) #40, !dbg !1455
  %231 = load ptr, ptr @stdout, align 8, !dbg !1456, !tbaa !983
  %232 = call i32 @fpurge(ptr noundef %231) #40, !dbg !1457
  %233 = load ptr, ptr @stdout, align 8, !dbg !1458, !tbaa !983
  call void @clearerr_unlocked(ptr noundef %233) #40, !dbg !1458
  %234 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.77, i32 noundef 5) #40, !dbg !1459
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %228, ptr noundef %234) #40, !dbg !1459
  unreachable, !dbg !1459

235:                                              ; preds = %221, %216
  %236 = icmp ne i8 %102, 0, !dbg !1460
  %237 = and i1 %236, %215, !dbg !1460
  call void @llvm.dbg.value(metadata i1 %237, metadata !506, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1208
  br label %538

238:                                              ; preds = %187
  %239 = add nsw i64 %188, 1, !dbg !1461
  %240 = call noalias nonnull ptr @xalignalloc(i64 noundef %82, i64 noundef %239) #45, !dbg !1462
  call void @llvm.dbg.value(metadata ptr %240, metadata !520, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata i64 %156, metadata !524, metadata !DIExpression(DW_OP_constu, 2, DW_OP_shl, DW_OP_stack_value)), !dbg !1463
  %241 = shl i64 %188, 2, !dbg !1464
  call void @llvm.dbg.value(metadata i64 %241, metadata !524, metadata !DIExpression()), !dbg !1463
  %242 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %241, i64 %73), !dbg !1466
  %243 = extractvalue { i64, i1 } %242, 1, !dbg !1466
  call void @llvm.dbg.value(metadata i64 poison, metadata !524, metadata !DIExpression()), !dbg !1463
  br i1 %243, label %248, label %244, !dbg !1467

244:                                              ; preds = %238
  %245 = extractvalue { i64, i1 } %242, 0, !dbg !1466
  call void @llvm.dbg.value(metadata i64 %245, metadata !524, metadata !DIExpression()), !dbg !1463
  %246 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %245, i64 19), !dbg !1468
  %247 = extractvalue { i64, i1 } %246, 1, !dbg !1468
  call void @llvm.dbg.value(metadata i64 poison, metadata !524, metadata !DIExpression()), !dbg !1463
  br i1 %247, label %248, label %249, !dbg !1469

248:                                              ; preds = %244, %238
  call void @xalloc_die() #42, !dbg !1470
  unreachable, !dbg !1470

249:                                              ; preds = %244
  %250 = extractvalue { i64, i1 } %246, 0, !dbg !1468
  call void @llvm.dbg.value(metadata i64 %250, metadata !524, metadata !DIExpression()), !dbg !1463
  %251 = call noalias nonnull ptr @xalignalloc(i64 noundef %82, i64 noundef %250) #45, !dbg !1471
  call void @llvm.dbg.value(metadata ptr %251, metadata !526, metadata !DIExpression()), !dbg !1463
  call void @llvm.dbg.value(metadata ptr %240, metadata !1472, metadata !DIExpression()), !dbg !1503
  call void @llvm.dbg.value(metadata i64 %156, metadata !1477, metadata !DIExpression()), !dbg !1503
  call void @llvm.dbg.value(metadata ptr %251, metadata !1478, metadata !DIExpression()), !dbg !1503
  call void @llvm.dbg.value(metadata i64 %73, metadata !1479, metadata !DIExpression()), !dbg !1503
  call void @llvm.dbg.value(metadata i1 %87, metadata !1480, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1503
  call void @llvm.dbg.value(metadata i1 %92, metadata !1481, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1503
  call void @llvm.dbg.value(metadata i1 %75, metadata !1482, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1503
  call void @llvm.dbg.value(metadata i1 %93, metadata !1483, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1503
  call void @llvm.dbg.value(metadata i1 %94, metadata !1484, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1503
  call void @llvm.dbg.value(metadata i1 %95, metadata !1485, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1503
  %252 = load i32, ptr @newlines2, align 4, !dbg !1505, !tbaa !1057
  call void @llvm.dbg.value(metadata i32 %252, metadata !1487, metadata !DIExpression()), !dbg !1503
  call void @llvm.dbg.value(metadata i8 1, metadata !1488, metadata !DIExpression()), !dbg !1503
  call void @llvm.dbg.value(metadata ptr %240, metadata !1489, metadata !DIExpression()), !dbg !1503
  %253 = getelementptr inbounds i8, ptr %240, i64 1, !dbg !1506
  call void @llvm.dbg.value(metadata ptr %253, metadata !1490, metadata !DIExpression()), !dbg !1503
  call void @llvm.dbg.value(metadata ptr %251, metadata !1491, metadata !DIExpression()), !dbg !1503
  %254 = getelementptr inbounds i8, ptr %251, i64 %73
  %255 = ptrtoint ptr %251 to i64
  br label %256, !dbg !1507

256:                                              ; preds = %425, %249
  %257 = phi ptr [ %251, %249 ], [ %426, %425 ], !dbg !1503
  %258 = phi i32 [ %252, %249 ], [ %427, %425 ], !dbg !1508
  %259 = phi i8 [ 1, %249 ], [ %419, %425 ], !dbg !1503
  %260 = phi ptr [ %240, %249 ], [ %420, %425 ], !dbg !1509
  %261 = phi ptr [ %253, %249 ], [ %428, %425 ], !dbg !1503
  call void @llvm.dbg.value(metadata ptr %261, metadata !1490, metadata !DIExpression()), !dbg !1503
  call void @llvm.dbg.value(metadata ptr %260, metadata !1489, metadata !DIExpression()), !dbg !1503
  call void @llvm.dbg.value(metadata i8 %259, metadata !1488, metadata !DIExpression()), !dbg !1503
  call void @llvm.dbg.value(metadata i32 %258, metadata !1487, metadata !DIExpression()), !dbg !1503
  call void @llvm.dbg.value(metadata ptr %257, metadata !1491, metadata !DIExpression()), !dbg !1503
  %262 = icmp ugt ptr %254, %257, !dbg !1510
  br i1 %262, label %285, label %263, !dbg !1511

263:                                              ; preds = %256
  %264 = ptrtoint ptr %257 to i64
  br label %265, !dbg !1512

265:                                              ; preds = %278, %263
  %266 = phi ptr [ %279, %278 ], [ %251, %263 ], !dbg !1513
  call void @llvm.dbg.value(metadata ptr %266, metadata !1492, metadata !DIExpression()), !dbg !1513
  %267 = call i64 @full_write(i32 noundef 1, ptr noundef %266, i64 noundef %73) #40, !dbg !1514
  %268 = icmp eq i64 %267, %73, !dbg !1517
  br i1 %268, label %278, label %269, !dbg !1518

269:                                              ; preds = %265
  %270 = tail call ptr @__errno_location() #43, !dbg !1519
  %271 = load i32, ptr %270, align 4, !dbg !1519, !tbaa !1057
  call void @llvm.dbg.value(metadata i32 %271, metadata !1452, metadata !DIExpression()), !dbg !1521
  %272 = load ptr, ptr @stdout, align 8, !dbg !1522, !tbaa !983
  %273 = call i32 @fflush_unlocked(ptr noundef %272) #40, !dbg !1522
  %274 = load ptr, ptr @stdout, align 8, !dbg !1523, !tbaa !983
  %275 = call i32 @fpurge(ptr noundef %274) #40, !dbg !1524
  %276 = load ptr, ptr @stdout, align 8, !dbg !1525, !tbaa !983
  call void @clearerr_unlocked(ptr noundef %276) #40, !dbg !1525
  %277 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.77, i32 noundef 5) #40, !dbg !1526
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %271, ptr noundef %277) #40, !dbg !1526
  unreachable, !dbg !1526

278:                                              ; preds = %265
  %279 = getelementptr inbounds i8, ptr %266, i64 %73, !dbg !1527
  call void @llvm.dbg.value(metadata ptr %279, metadata !1492, metadata !DIExpression()), !dbg !1513
  call void @llvm.dbg.value(metadata ptr %257, metadata !1491, metadata !DIExpression()), !dbg !1503
  %280 = ptrtoint ptr %279 to i64, !dbg !1528
  %281 = sub i64 %264, %280, !dbg !1528
  call void @llvm.dbg.value(metadata i64 %281, metadata !1497, metadata !DIExpression()), !dbg !1513
  %282 = icmp slt i64 %281, %73, !dbg !1529
  br i1 %282, label %283, label %265, !dbg !1530, !llvm.loop !1531

283:                                              ; preds = %278
  call void @llvm.dbg.value(metadata ptr %251, metadata !1533, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.value(metadata ptr %279, metadata !1539, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.value(metadata i64 %281, metadata !1540, metadata !DIExpression()), !dbg !1541
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %251, ptr noundef nonnull align 1 %279, i64 noundef %281, i1 noundef false) #40, !dbg !1543
  %284 = getelementptr inbounds i8, ptr %251, i64 %281, !dbg !1544
  call void @llvm.dbg.value(metadata ptr %284, metadata !1491, metadata !DIExpression()), !dbg !1503
  br label %285, !dbg !1545

285:                                              ; preds = %283, %256
  %286 = phi ptr [ %257, %256 ], [ %284, %283 ], !dbg !1503
  %287 = icmp ugt ptr %261, %260, !dbg !1546
  br i1 %287, label %288, label %368, !dbg !1547

288:                                              ; preds = %285
  call void @llvm.dbg.value(metadata i8 0, metadata !1498, metadata !DIExpression()), !dbg !1548
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #40, !dbg !1549
  call void @llvm.dbg.value(metadata i32 0, metadata !1501, metadata !DIExpression()), !dbg !1548
  store i32 0, ptr %3, align 4, !dbg !1550, !tbaa !1057
  %289 = and i8 %259, 1, !dbg !1551
  %290 = icmp eq i8 %289, 0, !dbg !1551
  br i1 %290, label %306, label %291, !dbg !1553

291:                                              ; preds = %288
  %292 = load i32, ptr @input_desc, align 4, !dbg !1554, !tbaa !1057
  call void @llvm.dbg.value(metadata ptr %3, metadata !1501, metadata !DIExpression(DW_OP_deref)), !dbg !1548
  %293 = call i32 (i32, i64, ...) @ioctl(i32 noundef %292, i64 noundef 21531, ptr noundef nonnull %3) #40, !dbg !1555
  %294 = icmp slt i32 %293, 0, !dbg !1556
  br i1 %294, label %295, label %302, !dbg !1557

295:                                              ; preds = %291
  %296 = tail call ptr @__errno_location() #43, !dbg !1558
  %297 = load i32, ptr %296, align 4, !dbg !1558, !tbaa !1057
  switch i32 %297, label %298 [
    i32 95, label %302
    i32 25, label %302
    i32 22, label %302
    i32 19, label %302
    i32 38, label %302
  ], !dbg !1561

298:                                              ; preds = %295
  %299 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.76, i32 noundef 5) #40, !dbg !1562
  %300 = load ptr, ptr @infile, align 8, !dbg !1562, !tbaa !983
  %301 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %300) #40, !dbg !1562
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %297, ptr noundef %299, ptr noundef %301) #40, !dbg !1562
  br label %534, !dbg !1564

302:                                              ; preds = %295, %295, %295, %295, %295, %291
  %303 = phi i8 [ 0, %295 ], [ 0, %295 ], [ 0, %295 ], [ 0, %295 ], [ 0, %295 ], [ %259, %291 ]
  %304 = load i32, ptr %3, align 4, !dbg !1565, !tbaa !1057
  call void @llvm.dbg.value(metadata i8 %303, metadata !1488, metadata !DIExpression()), !dbg !1503
  call void @llvm.dbg.value(metadata i32 %304, metadata !1501, metadata !DIExpression()), !dbg !1548
  %305 = icmp eq i32 %304, 0, !dbg !1567
  call void @llvm.dbg.value(metadata i8 poison, metadata !1498, metadata !DIExpression()), !dbg !1548
  br i1 %305, label %306, label %323, !dbg !1568

306:                                              ; preds = %302, %288
  %307 = phi i8 [ %303, %302 ], [ %259, %288 ]
  call void @llvm.dbg.value(metadata ptr %251, metadata !1569, metadata !DIExpression()), !dbg !1576
  call void @llvm.dbg.value(metadata ptr undef, metadata !1574, metadata !DIExpression()), !dbg !1576
  %308 = ptrtoint ptr %286 to i64, !dbg !1579
  %309 = sub i64 %308, %255, !dbg !1579
  call void @llvm.dbg.value(metadata i64 %309, metadata !1575, metadata !DIExpression()), !dbg !1576
  %310 = icmp sgt i64 %309, 0, !dbg !1580
  br i1 %310, label %311, label %323, !dbg !1582

311:                                              ; preds = %306
  %312 = call i64 @full_write(i32 noundef 1, ptr noundef nonnull %251, i64 noundef %309) #40, !dbg !1583
  %313 = icmp eq i64 %312, %309, !dbg !1586
  br i1 %313, label %323, label %314, !dbg !1587

314:                                              ; preds = %311
  %315 = tail call ptr @__errno_location() #43, !dbg !1588
  %316 = load i32, ptr %315, align 4, !dbg !1588, !tbaa !1057
  call void @llvm.dbg.value(metadata i32 %316, metadata !1452, metadata !DIExpression()), !dbg !1590
  %317 = load ptr, ptr @stdout, align 8, !dbg !1591, !tbaa !983
  %318 = call i32 @fflush_unlocked(ptr noundef %317) #40, !dbg !1591
  %319 = load ptr, ptr @stdout, align 8, !dbg !1592, !tbaa !983
  %320 = call i32 @fpurge(ptr noundef %319) #40, !dbg !1593
  %321 = load ptr, ptr @stdout, align 8, !dbg !1594, !tbaa !983
  call void @clearerr_unlocked(ptr noundef %321) #40, !dbg !1594
  %322 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.77, i32 noundef 5) #40, !dbg !1595
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %316, ptr noundef %322) #40, !dbg !1595
  unreachable, !dbg !1595

323:                                              ; preds = %311, %306, %302
  %324 = phi i8 [ %303, %302 ], [ %307, %311 ], [ %307, %306 ]
  %325 = phi ptr [ %286, %302 ], [ %251, %311 ], [ %286, %306 ], !dbg !1503
  %326 = load i32, ptr @input_desc, align 4, !dbg !1596, !tbaa !1057
  %327 = call i64 @read(i32 noundef %326, ptr noundef nonnull %240, i64 noundef %188) #40, !dbg !1597
  call void @llvm.dbg.value(metadata i64 %327, metadata !1502, metadata !DIExpression()), !dbg !1548
  %328 = icmp slt i64 %327, 0, !dbg !1598
  br i1 %328, label %329, label %348, !dbg !1600

329:                                              ; preds = %323
  %330 = tail call ptr @__errno_location() #43, !dbg !1601
  %331 = load i32, ptr %330, align 4, !dbg !1601, !tbaa !1057
  %332 = load ptr, ptr @infile, align 8, !dbg !1601, !tbaa !983
  %333 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %332) #40, !dbg !1601
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %331, ptr noundef nonnull @.str.36, ptr noundef %333) #40, !dbg !1601
  call void @llvm.dbg.value(metadata ptr %251, metadata !1569, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata ptr undef, metadata !1574, metadata !DIExpression()), !dbg !1603
  %334 = ptrtoint ptr %325 to i64, !dbg !1605
  %335 = sub i64 %334, %255, !dbg !1605
  call void @llvm.dbg.value(metadata i64 %335, metadata !1575, metadata !DIExpression()), !dbg !1603
  %336 = icmp sgt i64 %335, 0, !dbg !1606
  br i1 %336, label %337, label %534, !dbg !1607

337:                                              ; preds = %329
  %338 = call i64 @full_write(i32 noundef 1, ptr noundef nonnull %251, i64 noundef %335) #40, !dbg !1608
  %339 = icmp eq i64 %338, %335, !dbg !1609
  br i1 %339, label %534, label %340, !dbg !1610

340:                                              ; preds = %337
  %341 = load i32, ptr %330, align 4, !dbg !1611, !tbaa !1057
  call void @llvm.dbg.value(metadata i32 %341, metadata !1452, metadata !DIExpression()), !dbg !1613
  %342 = load ptr, ptr @stdout, align 8, !dbg !1614, !tbaa !983
  %343 = call i32 @fflush_unlocked(ptr noundef %342) #40, !dbg !1614
  %344 = load ptr, ptr @stdout, align 8, !dbg !1615, !tbaa !983
  %345 = call i32 @fpurge(ptr noundef %344) #40, !dbg !1616
  %346 = load ptr, ptr @stdout, align 8, !dbg !1617, !tbaa !983
  call void @clearerr_unlocked(ptr noundef %346) #40, !dbg !1617
  %347 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.77, i32 noundef 5) #40, !dbg !1618
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %341, ptr noundef %347) #40, !dbg !1618
  unreachable, !dbg !1618

348:                                              ; preds = %323
  %349 = icmp eq i64 %327, 0, !dbg !1619
  br i1 %349, label %350, label %366, !dbg !1621

350:                                              ; preds = %348
  call void @llvm.dbg.value(metadata ptr %251, metadata !1569, metadata !DIExpression()), !dbg !1622
  call void @llvm.dbg.value(metadata ptr undef, metadata !1574, metadata !DIExpression()), !dbg !1622
  %351 = ptrtoint ptr %325 to i64, !dbg !1625
  %352 = sub i64 %351, %255, !dbg !1625
  call void @llvm.dbg.value(metadata i64 %352, metadata !1575, metadata !DIExpression()), !dbg !1622
  %353 = icmp sgt i64 %352, 0, !dbg !1626
  br i1 %353, label %354, label %534, !dbg !1627

354:                                              ; preds = %350
  %355 = call i64 @full_write(i32 noundef 1, ptr noundef nonnull %251, i64 noundef %352) #40, !dbg !1628
  %356 = icmp eq i64 %355, %352, !dbg !1629
  br i1 %356, label %534, label %357, !dbg !1630

357:                                              ; preds = %354
  %358 = tail call ptr @__errno_location() #43, !dbg !1631
  %359 = load i32, ptr %358, align 4, !dbg !1631, !tbaa !1057
  call void @llvm.dbg.value(metadata i32 %359, metadata !1452, metadata !DIExpression()), !dbg !1633
  %360 = load ptr, ptr @stdout, align 8, !dbg !1634, !tbaa !983
  %361 = call i32 @fflush_unlocked(ptr noundef %360) #40, !dbg !1634
  %362 = load ptr, ptr @stdout, align 8, !dbg !1635, !tbaa !983
  %363 = call i32 @fpurge(ptr noundef %362) #40, !dbg !1636
  %364 = load ptr, ptr @stdout, align 8, !dbg !1637, !tbaa !983
  call void @clearerr_unlocked(ptr noundef %364) #40, !dbg !1637
  %365 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.77, i32 noundef 5) #40, !dbg !1638
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %359, ptr noundef %365) #40, !dbg !1638
  unreachable, !dbg !1638

366:                                              ; preds = %348
  call void @llvm.dbg.value(metadata ptr %240, metadata !1490, metadata !DIExpression()), !dbg !1503
  %367 = getelementptr inbounds i8, ptr %240, i64 %327, !dbg !1639
  call void @llvm.dbg.value(metadata ptr %367, metadata !1489, metadata !DIExpression()), !dbg !1503
  store i8 10, ptr %367, align 1, !dbg !1640, !tbaa !1066
  call void @llvm.dbg.value(metadata i8 %324, metadata !1488, metadata !DIExpression()), !dbg !1503
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #40, !dbg !1641
  br label %416

368:                                              ; preds = %285
  %369 = add nsw i32 %258, 1, !dbg !1642
  call void @llvm.dbg.value(metadata i32 %369, metadata !1487, metadata !DIExpression()), !dbg !1503
  %370 = icmp sgt i32 %258, -1, !dbg !1645
  br i1 %370, label %371, label %402, !dbg !1646

371:                                              ; preds = %368
  %372 = icmp ne i32 %258, 0, !dbg !1647
  %373 = and i1 %95, %372, !dbg !1650
  %374 = select i1 %372, i32 2, i32 1, !dbg !1650
  br i1 %373, label %416, label %375, !dbg !1650

375:                                              ; preds = %371
  call void @llvm.dbg.value(metadata i32 %374, metadata !1487, metadata !DIExpression()), !dbg !1503
  br i1 %96, label %376, label %402, !dbg !1651

376:                                              ; preds = %375
  %377 = load ptr, ptr @line_num_start, align 8
  br label %378, !dbg !1653

378:                                              ; preds = %383, %376
  %379 = phi ptr [ getelementptr inbounds ([20 x i8], ptr @line_buf, i64 0, i64 17), %376 ], [ %384, %383 ], !dbg !1659
  call void @llvm.dbg.value(metadata ptr %379, metadata !1656, metadata !DIExpression()), !dbg !1659
  %380 = load i8, ptr %379, align 1, !dbg !1660, !tbaa !1066
  %381 = add i8 %380, 1, !dbg !1660
  store i8 %381, ptr %379, align 1, !dbg !1660, !tbaa !1066
  %382 = icmp slt i8 %380, 57, !dbg !1663
  br i1 %382, label %397, label %383, !dbg !1664

383:                                              ; preds = %378
  %384 = getelementptr inbounds i8, ptr %379, i64 -1, !dbg !1665
  call void @llvm.dbg.value(metadata ptr %384, metadata !1656, metadata !DIExpression()), !dbg !1659
  store i8 48, ptr %379, align 1, !dbg !1666, !tbaa !1066
  %385 = icmp ult ptr %384, %377, !dbg !1667
  br i1 %385, label %386, label %378, !dbg !1668, !llvm.loop !1669

386:                                              ; preds = %383
  %387 = icmp ugt ptr %377, @line_buf, !dbg !1671
  br i1 %387, label %388, label %390, !dbg !1673

388:                                              ; preds = %386
  %389 = getelementptr inbounds i8, ptr %377, i64 -1, !dbg !1674
  store ptr %389, ptr @line_num_start, align 8, !dbg !1674, !tbaa !983
  store i8 49, ptr %389, align 1, !dbg !1675, !tbaa !1066
  br label %391, !dbg !1676

390:                                              ; preds = %386
  store i8 62, ptr @line_buf, align 16, !dbg !1677, !tbaa !1066
  br label %391

391:                                              ; preds = %390, %388
  %392 = phi ptr [ %377, %390 ], [ %389, %388 ], !dbg !1678
  %393 = load ptr, ptr @line_num_print, align 8, !dbg !1680, !tbaa !983
  %394 = icmp ult ptr %392, %393, !dbg !1681
  br i1 %394, label %395, label %399, !dbg !1682

395:                                              ; preds = %391
  %396 = getelementptr inbounds i8, ptr %393, i64 -1, !dbg !1683
  store ptr %396, ptr @line_num_print, align 8, !dbg !1683, !tbaa !983
  br label %399, !dbg !1684

397:                                              ; preds = %378
  %398 = load ptr, ptr @line_num_print, align 8, !dbg !1685, !tbaa !983
  br label %399, !dbg !1685

399:                                              ; preds = %397, %395, %391
  %400 = phi ptr [ %398, %397 ], [ %393, %391 ], [ %396, %395 ], !dbg !1685
  call void @llvm.dbg.value(metadata ptr %286, metadata !1491, metadata !DIExpression()), !dbg !1503
  call void @llvm.dbg.value(metadata ptr %286, metadata !1686, metadata !DIExpression()), !dbg !1693
  call void @llvm.dbg.value(metadata ptr %400, metadata !1692, metadata !DIExpression()), !dbg !1693
  %401 = call ptr @stpcpy(ptr %286, ptr %400), !dbg !1695
  call void @llvm.dbg.value(metadata ptr %401, metadata !1491, metadata !DIExpression()), !dbg !1503
  br label %402, !dbg !1696

402:                                              ; preds = %399, %375, %368
  %403 = phi ptr [ %286, %375 ], [ %401, %399 ], [ %286, %368 ], !dbg !1503
  %404 = phi i32 [ %374, %375 ], [ %374, %399 ], [ %369, %368 ], !dbg !1697
  call void @llvm.dbg.value(metadata i32 %404, metadata !1487, metadata !DIExpression()), !dbg !1503
  br i1 %94, label %405, label %413, !dbg !1698

405:                                              ; preds = %402
  %406 = load i1, ptr @pending_cr, align 1, !dbg !1699
  br i1 %406, label %407, label %410, !dbg !1703

407:                                              ; preds = %405
  call void @llvm.dbg.value(metadata ptr %403, metadata !1491, metadata !DIExpression()), !dbg !1503
  %408 = getelementptr inbounds i8, ptr %403, i64 1, !dbg !1704
  call void @llvm.dbg.value(metadata ptr %408, metadata !1491, metadata !DIExpression()), !dbg !1503
  store i8 94, ptr %403, align 1, !dbg !1706, !tbaa !1066
  %409 = getelementptr inbounds i8, ptr %403, i64 2, !dbg !1707
  call void @llvm.dbg.value(metadata ptr %409, metadata !1491, metadata !DIExpression()), !dbg !1503
  store i8 77, ptr %408, align 1, !dbg !1708, !tbaa !1066
  store i1 false, ptr @pending_cr, align 1, !dbg !1709
  br label %410, !dbg !1710

410:                                              ; preds = %407, %405
  %411 = phi ptr [ %409, %407 ], [ %403, %405 ], !dbg !1503
  call void @llvm.dbg.value(metadata ptr %411, metadata !1491, metadata !DIExpression()), !dbg !1503
  %412 = getelementptr inbounds i8, ptr %411, i64 1, !dbg !1711
  call void @llvm.dbg.value(metadata ptr %412, metadata !1491, metadata !DIExpression()), !dbg !1503
  store i8 36, ptr %411, align 1, !dbg !1712, !tbaa !1066
  br label %413, !dbg !1713

413:                                              ; preds = %410, %402
  %414 = phi ptr [ %412, %410 ], [ %403, %402 ], !dbg !1503
  call void @llvm.dbg.value(metadata ptr %414, metadata !1491, metadata !DIExpression()), !dbg !1503
  %415 = getelementptr inbounds i8, ptr %414, i64 1, !dbg !1714
  call void @llvm.dbg.value(metadata ptr %415, metadata !1491, metadata !DIExpression()), !dbg !1503
  store i8 10, ptr %414, align 1, !dbg !1715, !tbaa !1066
  br label %416

416:                                              ; preds = %413, %371, %366
  %417 = phi ptr [ %325, %366 ], [ %415, %413 ], [ %286, %371 ], !dbg !1503
  %418 = phi i32 [ %258, %366 ], [ %404, %413 ], [ 2, %371 ], !dbg !1503
  %419 = phi i8 [ %324, %366 ], [ %259, %413 ], [ %259, %371 ], !dbg !1503
  %420 = phi ptr [ %367, %366 ], [ %260, %413 ], [ %260, %371 ], !dbg !1509
  %421 = phi ptr [ %240, %366 ], [ %261, %413 ], [ %261, %371 ]
  %422 = getelementptr inbounds i8, ptr %421, i64 1, !dbg !1716
  %423 = load i8, ptr %421, align 1, !dbg !1716, !tbaa !1066
  call void @llvm.dbg.value(metadata i8 %423, metadata !1486, metadata !DIExpression()), !dbg !1503
  call void @llvm.dbg.value(metadata ptr %422, metadata !1490, metadata !DIExpression()), !dbg !1503
  call void @llvm.dbg.value(metadata ptr %420, metadata !1489, metadata !DIExpression()), !dbg !1503
  call void @llvm.dbg.value(metadata i8 %419, metadata !1488, metadata !DIExpression()), !dbg !1503
  call void @llvm.dbg.value(metadata i32 %418, metadata !1487, metadata !DIExpression()), !dbg !1503
  %424 = icmp eq i8 %423, 10, !dbg !1717
  br i1 %424, label %425, label %429, !dbg !1718

425:                                              ; preds = %498, %517, %416
  %426 = phi ptr [ %417, %416 ], [ %509, %517 ], [ %466, %498 ]
  %427 = phi i32 [ %418, %416 ], [ -1, %517 ], [ -1, %498 ]
  %428 = phi ptr [ %422, %416 ], [ %510, %517 ], [ %467, %498 ]
  br label %256, !dbg !1503, !llvm.loop !1719

429:                                              ; preds = %416
  %430 = load i1, ptr @pending_cr, align 1, !dbg !1722
  br i1 %430, label %431, label %433, !dbg !1724

431:                                              ; preds = %429
  call void @llvm.dbg.value(metadata ptr %417, metadata !1491, metadata !DIExpression()), !dbg !1503
  %432 = getelementptr inbounds i8, ptr %417, i64 1, !dbg !1725
  call void @llvm.dbg.value(metadata ptr %432, metadata !1491, metadata !DIExpression()), !dbg !1503
  store i8 13, ptr %417, align 1, !dbg !1727, !tbaa !1066
  store i1 false, ptr @pending_cr, align 1, !dbg !1728
  br label %433, !dbg !1729

433:                                              ; preds = %431, %429
  %434 = phi ptr [ %432, %431 ], [ %417, %429 ], !dbg !1730
  %435 = icmp sgt i32 %418, -1, !dbg !1731
  %436 = and i1 %75, %435, !dbg !1733
  br i1 %436, label %437, label %463, !dbg !1733

437:                                              ; preds = %433
  %438 = load ptr, ptr @line_num_start, align 8
  br label %439, !dbg !1734

439:                                              ; preds = %444, %437
  %440 = phi ptr [ getelementptr inbounds ([20 x i8], ptr @line_buf, i64 0, i64 17), %437 ], [ %445, %444 ], !dbg !1737
  call void @llvm.dbg.value(metadata ptr %440, metadata !1656, metadata !DIExpression()), !dbg !1737
  %441 = load i8, ptr %440, align 1, !dbg !1738, !tbaa !1066
  %442 = add i8 %441, 1, !dbg !1738
  store i8 %442, ptr %440, align 1, !dbg !1738, !tbaa !1066
  %443 = icmp slt i8 %441, 57, !dbg !1739
  br i1 %443, label %458, label %444, !dbg !1740

444:                                              ; preds = %439
  %445 = getelementptr inbounds i8, ptr %440, i64 -1, !dbg !1741
  call void @llvm.dbg.value(metadata ptr %445, metadata !1656, metadata !DIExpression()), !dbg !1737
  store i8 48, ptr %440, align 1, !dbg !1742, !tbaa !1066
  %446 = icmp ult ptr %445, %438, !dbg !1743
  br i1 %446, label %447, label %439, !dbg !1744, !llvm.loop !1745

447:                                              ; preds = %444
  %448 = icmp ugt ptr %438, @line_buf, !dbg !1747
  br i1 %448, label %449, label %451, !dbg !1748

449:                                              ; preds = %447
  %450 = getelementptr inbounds i8, ptr %438, i64 -1, !dbg !1749
  store ptr %450, ptr @line_num_start, align 8, !dbg !1749, !tbaa !983
  store i8 49, ptr %450, align 1, !dbg !1750, !tbaa !1066
  br label %452, !dbg !1751

451:                                              ; preds = %447
  store i8 62, ptr @line_buf, align 16, !dbg !1752, !tbaa !1066
  br label %452

452:                                              ; preds = %451, %449
  %453 = phi ptr [ %438, %451 ], [ %450, %449 ], !dbg !1753
  %454 = load ptr, ptr @line_num_print, align 8, !dbg !1754, !tbaa !983
  %455 = icmp ult ptr %453, %454, !dbg !1755
  br i1 %455, label %456, label %460, !dbg !1756

456:                                              ; preds = %452
  %457 = getelementptr inbounds i8, ptr %454, i64 -1, !dbg !1757
  store ptr %457, ptr @line_num_print, align 8, !dbg !1757, !tbaa !983
  br label %460, !dbg !1758

458:                                              ; preds = %439
  %459 = load ptr, ptr @line_num_print, align 8, !dbg !1759, !tbaa !983
  br label %460, !dbg !1759

460:                                              ; preds = %458, %456, %452
  %461 = phi ptr [ %459, %458 ], [ %454, %452 ], [ %457, %456 ], !dbg !1759
  call void @llvm.dbg.value(metadata ptr %434, metadata !1491, metadata !DIExpression()), !dbg !1503
  call void @llvm.dbg.value(metadata ptr %434, metadata !1686, metadata !DIExpression()), !dbg !1760
  call void @llvm.dbg.value(metadata ptr %461, metadata !1692, metadata !DIExpression()), !dbg !1760
  %462 = call ptr @stpcpy(ptr %434, ptr %461), !dbg !1762
  call void @llvm.dbg.value(metadata ptr %462, metadata !1491, metadata !DIExpression()), !dbg !1503
  br label %463, !dbg !1763

463:                                              ; preds = %460, %433
  %464 = phi ptr [ %434, %433 ], [ %462, %460 ], !dbg !1730
  br i1 %87, label %508, label %465, !dbg !1764

465:                                              ; preds = %463, %504
  %466 = phi ptr [ %505, %504 ], [ %464, %463 ], !dbg !1730
  %467 = phi ptr [ %506, %504 ], [ %422, %463 ], !dbg !1730
  %468 = phi i8 [ %507, %504 ], [ %423, %463 ], !dbg !1730
  call void @llvm.dbg.value(metadata i8 %468, metadata !1486, metadata !DIExpression()), !dbg !1503
  call void @llvm.dbg.value(metadata ptr %467, metadata !1490, metadata !DIExpression()), !dbg !1503
  %469 = icmp ugt i8 %468, 31, !dbg !1765
  br i1 %469, label %470, label %493, !dbg !1770

470:                                              ; preds = %465
  %471 = icmp ult i8 %468, 127, !dbg !1771
  br i1 %471, label %472, label %474, !dbg !1774

472:                                              ; preds = %470
  call void @llvm.dbg.value(metadata ptr %466, metadata !1491, metadata !DIExpression()), !dbg !1503
  %473 = getelementptr inbounds i8, ptr %466, i64 1, !dbg !1775
  call void @llvm.dbg.value(metadata ptr %473, metadata !1491, metadata !DIExpression()), !dbg !1503
  store i8 %468, ptr %466, align 1, !dbg !1776, !tbaa !1066
  br label %504, !dbg !1777

474:                                              ; preds = %470
  %475 = icmp eq i8 %468, 127, !dbg !1778
  call void @llvm.dbg.value(metadata ptr %466, metadata !1491, metadata !DIExpression()), !dbg !1503
  %476 = getelementptr inbounds i8, ptr %466, i64 1, !dbg !1780
  call void @llvm.dbg.value(metadata ptr %476, metadata !1491, metadata !DIExpression()), !dbg !1503
  %477 = getelementptr inbounds i8, ptr %466, i64 2, !dbg !1780
  call void @llvm.dbg.value(metadata ptr %477, metadata !1491, metadata !DIExpression()), !dbg !1503
  br i1 %475, label %478, label %479, !dbg !1781

478:                                              ; preds = %474
  store i8 94, ptr %466, align 1, !dbg !1782, !tbaa !1066
  store i8 63, ptr %476, align 1, !dbg !1784, !tbaa !1066
  br label %504, !dbg !1785

479:                                              ; preds = %474
  store i8 77, ptr %466, align 1, !dbg !1786, !tbaa !1066
  store i8 45, ptr %476, align 1, !dbg !1788, !tbaa !1066
  %480 = icmp ugt i8 %468, -97, !dbg !1789
  br i1 %480, label %481, label %489, !dbg !1791

481:                                              ; preds = %479
  %482 = icmp eq i8 %468, -1, !dbg !1792
  br i1 %482, label %486, label %483, !dbg !1795

483:                                              ; preds = %481
  %484 = xor i8 %468, -128, !dbg !1796
  call void @llvm.dbg.value(metadata ptr %477, metadata !1491, metadata !DIExpression()), !dbg !1503
  %485 = getelementptr inbounds i8, ptr %466, i64 3, !dbg !1797
  call void @llvm.dbg.value(metadata ptr %485, metadata !1491, metadata !DIExpression()), !dbg !1503
  store i8 %484, ptr %477, align 1, !dbg !1798, !tbaa !1066
  br label %504, !dbg !1799

486:                                              ; preds = %481
  call void @llvm.dbg.value(metadata ptr %477, metadata !1491, metadata !DIExpression()), !dbg !1503
  %487 = getelementptr inbounds i8, ptr %466, i64 3, !dbg !1800
  call void @llvm.dbg.value(metadata ptr %487, metadata !1491, metadata !DIExpression()), !dbg !1503
  store i8 94, ptr %477, align 1, !dbg !1802, !tbaa !1066
  %488 = getelementptr inbounds i8, ptr %466, i64 4, !dbg !1803
  call void @llvm.dbg.value(metadata ptr %488, metadata !1491, metadata !DIExpression()), !dbg !1503
  store i8 63, ptr %487, align 1, !dbg !1804, !tbaa !1066
  br label %504

489:                                              ; preds = %479
  call void @llvm.dbg.value(metadata ptr %477, metadata !1491, metadata !DIExpression()), !dbg !1503
  %490 = getelementptr inbounds i8, ptr %466, i64 3, !dbg !1805
  call void @llvm.dbg.value(metadata ptr %490, metadata !1491, metadata !DIExpression()), !dbg !1503
  store i8 94, ptr %477, align 1, !dbg !1807, !tbaa !1066
  %491 = add i8 %468, -64, !dbg !1808
  %492 = getelementptr inbounds i8, ptr %466, i64 4, !dbg !1809
  call void @llvm.dbg.value(metadata ptr %492, metadata !1491, metadata !DIExpression()), !dbg !1503
  store i8 %491, ptr %490, align 1, !dbg !1810, !tbaa !1066
  br label %504

493:                                              ; preds = %465
  %494 = icmp ne i8 %468, 9, !dbg !1811
  %495 = or i1 %92, %494, !dbg !1813
  br i1 %495, label %498, label %496, !dbg !1813

496:                                              ; preds = %493
  call void @llvm.dbg.value(metadata ptr %466, metadata !1491, metadata !DIExpression()), !dbg !1503
  %497 = getelementptr inbounds i8, ptr %466, i64 1, !dbg !1814
  call void @llvm.dbg.value(metadata ptr %497, metadata !1491, metadata !DIExpression()), !dbg !1503
  store i8 9, ptr %466, align 1, !dbg !1815, !tbaa !1066
  br label %504, !dbg !1816

498:                                              ; preds = %493
  %499 = icmp eq i8 %468, 10, !dbg !1817
  br i1 %499, label %425, label %500, !dbg !1819, !llvm.loop !1820

500:                                              ; preds = %498
  call void @llvm.dbg.value(metadata ptr %466, metadata !1491, metadata !DIExpression()), !dbg !1503
  %501 = getelementptr inbounds i8, ptr %466, i64 1, !dbg !1822
  call void @llvm.dbg.value(metadata ptr %501, metadata !1491, metadata !DIExpression()), !dbg !1503
  store i8 94, ptr %466, align 1, !dbg !1824, !tbaa !1066
  %502 = add nuw nsw i8 %468, 64, !dbg !1825
  %503 = getelementptr inbounds i8, ptr %466, i64 2, !dbg !1826
  call void @llvm.dbg.value(metadata ptr %503, metadata !1491, metadata !DIExpression()), !dbg !1503
  store i8 %502, ptr %501, align 1, !dbg !1827, !tbaa !1066
  br label %504

504:                                              ; preds = %500, %496, %489, %486, %483, %478, %472
  %505 = phi ptr [ %473, %472 ], [ %477, %478 ], [ %488, %486 ], [ %485, %483 ], [ %492, %489 ], [ %503, %500 ], [ %497, %496 ], !dbg !1828
  %506 = getelementptr inbounds i8, ptr %467, i64 1, !dbg !1829
  call void @llvm.dbg.value(metadata ptr %506, metadata !1490, metadata !DIExpression()), !dbg !1503
  %507 = load i8, ptr %467, align 1, !dbg !1830, !tbaa !1066
  call void @llvm.dbg.value(metadata i8 %507, metadata !1486, metadata !DIExpression()), !dbg !1503
  br label %465, !dbg !1831, !llvm.loop !1832

508:                                              ; preds = %463, %530
  %509 = phi ptr [ %531, %530 ], [ %464, %463 ], !dbg !1730
  %510 = phi ptr [ %532, %530 ], [ %422, %463 ], !dbg !1730
  %511 = phi i8 [ %533, %530 ], [ %423, %463 ], !dbg !1730
  call void @llvm.dbg.value(metadata i8 %511, metadata !1486, metadata !DIExpression()), !dbg !1503
  call void @llvm.dbg.value(metadata ptr %510, metadata !1490, metadata !DIExpression()), !dbg !1503
  %512 = icmp eq i8 %511, 9, !dbg !1834
  %513 = and i1 %92, %512, !dbg !1838
  br i1 %513, label %514, label %517, !dbg !1838

514:                                              ; preds = %508
  call void @llvm.dbg.value(metadata ptr %509, metadata !1491, metadata !DIExpression()), !dbg !1503
  %515 = getelementptr inbounds i8, ptr %509, i64 1, !dbg !1839
  call void @llvm.dbg.value(metadata ptr %515, metadata !1491, metadata !DIExpression()), !dbg !1503
  store i8 94, ptr %509, align 1, !dbg !1841, !tbaa !1066
  %516 = getelementptr inbounds i8, ptr %509, i64 2, !dbg !1842
  call void @llvm.dbg.value(metadata ptr %516, metadata !1491, metadata !DIExpression()), !dbg !1503
  store i8 73, ptr %515, align 1, !dbg !1843, !tbaa !1066
  br label %530, !dbg !1844

517:                                              ; preds = %508
  switch i8 %511, label %528 [
    i8 10, label %425
    i8 13, label %518
  ], !dbg !1845, !llvm.loop !1820

518:                                              ; preds = %517
  %519 = load i8, ptr %510, align 1, !dbg !1846, !tbaa !1066
  %520 = icmp eq i8 %519, 10, !dbg !1850
  %521 = and i1 %94, %520, !dbg !1851
  br i1 %521, label %522, label %528, !dbg !1851

522:                                              ; preds = %518
  %523 = icmp eq ptr %510, %420, !dbg !1852
  br i1 %523, label %524, label %525, !dbg !1855

524:                                              ; preds = %522
  store i1 true, ptr @pending_cr, align 1, !dbg !1856
  br label %530, !dbg !1857

525:                                              ; preds = %522
  call void @llvm.dbg.value(metadata ptr %509, metadata !1491, metadata !DIExpression()), !dbg !1503
  %526 = getelementptr inbounds i8, ptr %509, i64 1, !dbg !1858
  call void @llvm.dbg.value(metadata ptr %526, metadata !1491, metadata !DIExpression()), !dbg !1503
  store i8 94, ptr %509, align 1, !dbg !1860, !tbaa !1066
  %527 = getelementptr inbounds i8, ptr %509, i64 2, !dbg !1861
  call void @llvm.dbg.value(metadata ptr %527, metadata !1491, metadata !DIExpression()), !dbg !1503
  store i8 77, ptr %526, align 1, !dbg !1862, !tbaa !1066
  br label %530

528:                                              ; preds = %518, %517
  call void @llvm.dbg.value(metadata ptr %509, metadata !1491, metadata !DIExpression()), !dbg !1503
  %529 = getelementptr inbounds i8, ptr %509, i64 1, !dbg !1863
  call void @llvm.dbg.value(metadata ptr %529, metadata !1491, metadata !DIExpression()), !dbg !1503
  store i8 %511, ptr %509, align 1, !dbg !1864, !tbaa !1066
  br label %530

530:                                              ; preds = %528, %525, %524, %514
  %531 = phi ptr [ %529, %528 ], [ %509, %524 ], [ %527, %525 ], [ %516, %514 ], !dbg !1730
  %532 = getelementptr inbounds i8, ptr %510, i64 1, !dbg !1865
  call void @llvm.dbg.value(metadata ptr %532, metadata !1490, metadata !DIExpression()), !dbg !1503
  %533 = load i8, ptr %510, align 1, !dbg !1866, !tbaa !1066
  call void @llvm.dbg.value(metadata i8 %533, metadata !1486, metadata !DIExpression()), !dbg !1503
  br label %508, !dbg !1867, !llvm.loop !1868

534:                                              ; preds = %298, %329, %337, %350, %354
  %535 = phi i1 [ false, %298 ], [ false, %337 ], [ false, %329 ], [ true, %354 ], [ true, %350 ]
  store i32 %258, ptr @newlines2, align 4, !dbg !1548, !tbaa !1057
  call void @llvm.dbg.value(metadata ptr poison, metadata !1490, metadata !DIExpression()), !dbg !1503
  call void @llvm.dbg.value(metadata ptr poison, metadata !1489, metadata !DIExpression()), !dbg !1503
  call void @llvm.dbg.value(metadata i8 poison, metadata !1488, metadata !DIExpression()), !dbg !1503
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #40, !dbg !1641
  %536 = icmp ne i8 %102, 0, !dbg !1870
  %537 = and i1 %536, %535, !dbg !1870
  call void @llvm.dbg.value(metadata i1 %537, metadata !506, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1208
  call void @llvm.dbg.value(metadata ptr %251, metadata !1871, metadata !DIExpression()), !dbg !1877
  call void @free(ptr noundef nonnull %251) #40, !dbg !1879
  br label %538

538:                                              ; preds = %205, %235, %534
  %539 = phi i1 [ %537, %534 ], [ %208, %205 ], [ %237, %235 ]
  %540 = phi ptr [ %240, %534 ], [ null, %205 ], [ %211, %235 ], !dbg !1880
  %541 = zext i1 %539 to i8, !dbg !1880
  call void @llvm.dbg.value(metadata ptr %540, metadata !520, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata i8 %541, metadata !506, metadata !DIExpression()), !dbg !1208
  call void @llvm.dbg.value(metadata ptr %540, metadata !1871, metadata !DIExpression()), !dbg !1881
  call void @free(ptr noundef %540) #40, !dbg !1883
  br label %542, !dbg !1884

542:                                              ; preds = %183, %538, %128
  %543 = phi i32 [ %101, %128 ], [ %189, %538 ], [ %177, %183 ], !dbg !1208
  %544 = phi i8 [ 0, %128 ], [ %541, %538 ], [ 0, %183 ], !dbg !1317
  call void @llvm.dbg.value(metadata i8 %544, metadata !506, metadata !DIExpression()), !dbg !1208
  call void @llvm.dbg.value(metadata i32 %543, metadata !503, metadata !DIExpression()), !dbg !1208
  call void @llvm.dbg.label(metadata !527), !dbg !1885
  br i1 %113, label %554, label %545, !dbg !1886

545:                                              ; preds = %542
  %546 = load i32, ptr @input_desc, align 4, !dbg !1888, !tbaa !1057
  %547 = call i32 @close(i32 noundef %546) #40, !dbg !1889
  %548 = icmp slt i32 %547, 0, !dbg !1890
  br i1 %548, label %549, label %554, !dbg !1891

549:                                              ; preds = %545
  %550 = tail call ptr @__errno_location() #43, !dbg !1892
  %551 = load i32, ptr %550, align 4, !dbg !1892, !tbaa !1057
  %552 = load ptr, ptr @infile, align 8, !dbg !1892, !tbaa !983
  %553 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %552) #40, !dbg !1892
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %551, ptr noundef nonnull @.str.36, ptr noundef %553) #40, !dbg !1892
  call void @llvm.dbg.value(metadata i8 0, metadata !506, metadata !DIExpression()), !dbg !1208
  br label %554, !dbg !1894

554:                                              ; preds = %549, %545, %542
  %555 = phi i8 [ %544, %542 ], [ 0, %549 ], [ %544, %545 ], !dbg !1317
  call void @llvm.dbg.value(metadata i8 %555, metadata !506, metadata !DIExpression()), !dbg !1208
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %5) #40, !dbg !1895
  br label %556, !dbg !1895

556:                                              ; preds = %554, %118
  %557 = phi i32 [ %543, %554 ], [ %101, %118 ], !dbg !1305
  %558 = phi i8 [ %555, %554 ], [ 0, %118 ], !dbg !1317
  %559 = phi i8 [ %125, %554 ], [ %103, %118 ], !dbg !1208
  call void @llvm.dbg.value(metadata i8 %559, metadata !455, metadata !DIExpression()), !dbg !1208
  call void @llvm.dbg.value(metadata i8 %558, metadata !506, metadata !DIExpression()), !dbg !1208
  call void @llvm.dbg.value(metadata i32 %557, metadata !503, metadata !DIExpression()), !dbg !1208
  %560 = add nsw i64 %100, 1, !dbg !1896
  call void @llvm.dbg.value(metadata i64 %560, metadata !505, metadata !DIExpression()), !dbg !1208
  %561 = icmp slt i64 %560, %98, !dbg !1897
  br i1 %561, label %99, label %562, !dbg !1898, !llvm.loop !1899

562:                                              ; preds = %556
  %563 = load i1, ptr @pending_cr, align 1, !dbg !1901
  br i1 %563, label %564, label %576, !dbg !1903

564:                                              ; preds = %562
  %565 = call i64 @full_write(i32 noundef 1, ptr noundef nonnull @.str.38, i64 noundef 1) #40, !dbg !1904
  %566 = icmp eq i64 %565, 1, !dbg !1907
  br i1 %566, label %576, label %567, !dbg !1908

567:                                              ; preds = %564
  %568 = tail call ptr @__errno_location() #43, !dbg !1909
  %569 = load i32, ptr %568, align 4, !dbg !1909, !tbaa !1057
  call void @llvm.dbg.value(metadata i32 %569, metadata !1452, metadata !DIExpression()), !dbg !1911
  %570 = load ptr, ptr @stdout, align 8, !dbg !1912, !tbaa !983
  %571 = call i32 @fflush_unlocked(ptr noundef %570) #40, !dbg !1912
  %572 = load ptr, ptr @stdout, align 8, !dbg !1913, !tbaa !983
  %573 = call i32 @fpurge(ptr noundef %572) #40, !dbg !1914
  %574 = load ptr, ptr @stdout, align 8, !dbg !1915, !tbaa !983
  call void @clearerr_unlocked(ptr noundef %574) #40, !dbg !1915
  %575 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.77, i32 noundef 5) #40, !dbg !1916
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %569, ptr noundef %575) #40, !dbg !1916
  unreachable, !dbg !1916

576:                                              ; preds = %564, %562
  %577 = and i8 %559, 1, !dbg !1917
  %578 = icmp eq i8 %577, 0, !dbg !1917
  br i1 %578, label %586, label %579, !dbg !1919

579:                                              ; preds = %576
  %580 = call i32 @close(i32 noundef 0) #40, !dbg !1920
  %581 = icmp slt i32 %580, 0, !dbg !1921
  br i1 %581, label %582, label %586, !dbg !1922

582:                                              ; preds = %579
  %583 = tail call ptr @__errno_location() #43, !dbg !1923
  %584 = load i32, ptr %583, align 4, !dbg !1923, !tbaa !1057
  %585 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.39, i32 noundef 5) #40, !dbg !1923
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %584, ptr noundef %585) #40, !dbg !1923
  unreachable, !dbg !1923

586:                                              ; preds = %579, %576
  %587 = icmp eq i8 %558, 0, !dbg !1924
  %588 = zext i1 %587 to i32, !dbg !1924
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %4) #40, !dbg !1925
  ret i32 %588, !dbg !1925
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1926 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1929 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1930 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1933 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !1939 noundef i32 @fstat(i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1944 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1948 i32 @getpagesize() local_unnamed_addr #9

; Function Attrs: nofree
declare !dbg !1950 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #12

; Function Attrs: nounwind
declare !dbg !1954 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #1

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #12

declare !dbg !1957 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1960 void @clearerr_unlocked(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #13

; Function Attrs: nounwind
declare !dbg !1963 i32 @ioctl(i32 noundef, i64 noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @stpcpy(ptr noalias writeonly, ptr noalias nocapture readonly) #14

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1967 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

declare !dbg !1968 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #16 !dbg !1971 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1973, metadata !DIExpression()), !dbg !1974
  store ptr %0, ptr @file_name, align 8, !dbg !1975, !tbaa !983
  ret void, !dbg !1976
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #16 !dbg !1977 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1981, metadata !DIExpression()), !dbg !1982
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !1983, !tbaa !1984
  ret void, !dbg !1986
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1987 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1992, !tbaa !983
  %2 = tail call i32 @close_stream(ptr noundef %1) #40, !dbg !1993
  %3 = icmp eq i32 %2, 0, !dbg !1994
  br i1 %3, label %22, label %4, !dbg !1995

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !1996, !tbaa !1984, !range !1997, !noundef !992
  %6 = icmp eq i8 %5, 0, !dbg !1996
  br i1 %6, label %11, label %7, !dbg !1998

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #43, !dbg !1999
  %9 = load i32, ptr %8, align 4, !dbg !1999, !tbaa !1057
  %10 = icmp eq i32 %9, 32, !dbg !2000
  br i1 %10, label %22, label %11, !dbg !2001

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.1.49, i32 noundef 5) #40, !dbg !2002
  call void @llvm.dbg.value(metadata ptr %12, metadata !1989, metadata !DIExpression()), !dbg !2003
  %13 = load ptr, ptr @file_name, align 8, !dbg !2004, !tbaa !983
  %14 = icmp eq ptr %13, null, !dbg !2004
  %15 = tail call ptr @__errno_location() #43, !dbg !2006
  %16 = load i32, ptr %15, align 4, !dbg !2006, !tbaa !1057
  br i1 %14, label %19, label %17, !dbg !2007

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #40, !dbg !2008
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.50, ptr noundef %18, ptr noundef %12) #40, !dbg !2008
  br label %20, !dbg !2008

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.51, ptr noundef %12) #40, !dbg !2009
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !2010, !tbaa !1057
  tail call void @_exit(i32 noundef %21) #42, !dbg !2011
  unreachable, !dbg !2011

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !2012, !tbaa !983
  %24 = tail call i32 @close_stream(ptr noundef %23) #40, !dbg !2014
  %25 = icmp eq i32 %24, 0, !dbg !2015
  br i1 %25, label %28, label %26, !dbg !2016

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !2017, !tbaa !1057
  tail call void @_exit(i32 noundef %27) #42, !dbg !2018
  unreachable, !dbg !2018

28:                                               ; preds = %22
  ret void, !dbg !2019
}

; Function Attrs: noreturn
declare !dbg !2020 void @_exit(i32 noundef) local_unnamed_addr #17

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_copy_file_range(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #10 !dbg !2021 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2028, metadata !DIExpression()), !dbg !2035
  call void @llvm.dbg.value(metadata ptr %1, metadata !2029, metadata !DIExpression()), !dbg !2035
  call void @llvm.dbg.value(metadata i32 %2, metadata !2030, metadata !DIExpression()), !dbg !2035
  call void @llvm.dbg.value(metadata ptr %3, metadata !2031, metadata !DIExpression()), !dbg !2035
  call void @llvm.dbg.value(metadata i64 %4, metadata !2032, metadata !DIExpression()), !dbg !2035
  call void @llvm.dbg.value(metadata i32 %5, metadata !2033, metadata !DIExpression()), !dbg !2035
  call void @llvm.dbg.value(metadata i8 1, metadata !2034, metadata !DIExpression()), !dbg !2035
  %7 = tail call i64 @llvm.umin.i64(i64 %4, i64 2146435072), !dbg !2036
  call void @llvm.dbg.value(metadata i64 %7, metadata !2032, metadata !DIExpression()), !dbg !2035
  %8 = tail call i64 @copy_file_range(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %7, i32 noundef %5) #40, !dbg !2039
  ret i64 %8, !dbg !2040
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #1

declare !dbg !2041 i64 @copy_file_range(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #18 !dbg !2045 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2049, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i32 %1, metadata !2050, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata ptr %2, metadata !2051, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata ptr %3, metadata !2052, metadata !DIExpression()), !dbg !2053
  tail call fastcc void @flush_stdout(), !dbg !2054
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !2055, !tbaa !983
  %6 = icmp eq ptr %5, null, !dbg !2055
  br i1 %6, label %8, label %7, !dbg !2057

7:                                                ; preds = %4
  tail call void %5() #40, !dbg !2058
  br label %12, !dbg !2058

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !2059, !tbaa !983
  %10 = tail call ptr @getprogname() #41, !dbg !2059
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.54, ptr noundef %10) #40, !dbg !2059
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !2061
  ret void, !dbg !2062
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !2063 {
  call void @llvm.dbg.value(metadata i32 1, metadata !2065, metadata !DIExpression()), !dbg !2066
  call void @llvm.dbg.value(metadata i32 1, metadata !2067, metadata !DIExpression()), !dbg !2070
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #40, !dbg !2073
  %2 = icmp slt i32 %1, 0, !dbg !2074
  br i1 %2, label %6, label %3, !dbg !2075

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !2076, !tbaa !983
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #40, !dbg !2076
  br label %6, !dbg !2076

6:                                                ; preds = %3, %0
  ret void, !dbg !2077
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !2078 {
  %5 = alloca [1024 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !2080, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i32 %1, metadata !2081, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata ptr %2, metadata !2082, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata ptr %3, metadata !2083, metadata !DIExpression()), !dbg !2084
  %6 = load ptr, ptr @stderr, align 8, !dbg !2085, !tbaa !983
  call void @llvm.dbg.value(metadata ptr %6, metadata !2086, metadata !DIExpression()), !dbg !2128
  call void @llvm.dbg.value(metadata ptr %2, metadata !2126, metadata !DIExpression()), !dbg !2128
  call void @llvm.dbg.value(metadata ptr %3, metadata !2127, metadata !DIExpression()), !dbg !2128
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #40, !dbg !2130
  %8 = load i32, ptr @error_message_count, align 4, !dbg !2131, !tbaa !1057
  %9 = add i32 %8, 1, !dbg !2131
  store i32 %9, ptr @error_message_count, align 4, !dbg !2131, !tbaa !1057
  %10 = icmp eq i32 %1, 0, !dbg !2132
  br i1 %10, label %20, label %11, !dbg !2134

11:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !2135, metadata !DIExpression()), !dbg !2143
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #40, !dbg !2145
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2139, metadata !DIExpression()), !dbg !2146
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #40, !dbg !2147
  call void @llvm.dbg.value(metadata ptr %12, metadata !2138, metadata !DIExpression()), !dbg !2143
  %13 = icmp eq ptr %12, null, !dbg !2148
  br i1 %13, label %14, label %16, !dbg !2150

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.55, ptr noundef nonnull @.str.5.56, i32 noundef 5) #40, !dbg !2151
  call void @llvm.dbg.value(metadata ptr %15, metadata !2138, metadata !DIExpression()), !dbg !2143
  br label %16, !dbg !2152

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !2143
  call void @llvm.dbg.value(metadata ptr %17, metadata !2138, metadata !DIExpression()), !dbg !2143
  %18 = load ptr, ptr @stderr, align 8, !dbg !2153, !tbaa !983
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.57, ptr noundef %17) #40, !dbg !2153
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #40, !dbg !2154
  br label %20, !dbg !2155

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !2156, !tbaa !983
  call void @llvm.dbg.value(metadata i32 10, metadata !2157, metadata !DIExpression()), !dbg !2164
  call void @llvm.dbg.value(metadata ptr %21, metadata !2163, metadata !DIExpression()), !dbg !2164
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !2166
  %23 = load ptr, ptr %22, align 8, !dbg !2166, !tbaa !2167
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !2166
  %25 = load ptr, ptr %24, align 8, !dbg !2166, !tbaa !2169
  %26 = icmp ult ptr %23, %25, !dbg !2166
  br i1 %26, label %29, label %27, !dbg !2166, !prof !2170

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #40, !dbg !2166
  br label %31, !dbg !2166

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !2166
  store ptr %30, ptr %22, align 8, !dbg !2166, !tbaa !2167
  store i8 10, ptr %23, align 1, !dbg !2166, !tbaa !1066
  br label %31, !dbg !2166

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !2171, !tbaa !983
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #40, !dbg !2171
  %34 = icmp eq i32 %0, 0, !dbg !2172
  br i1 %34, label %36, label %35, !dbg !2174

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #42, !dbg !2175
  unreachable, !dbg !2175

36:                                               ; preds = %31
  ret void, !dbg !2176
}

declare !dbg !2177 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !2180 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !2183 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !2186 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !2189 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !2193, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i32 %1, metadata !2194, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata ptr %2, metadata !2195, metadata !DIExpression()), !dbg !2202
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #40, !dbg !2203
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2196, metadata !DIExpression()), !dbg !2204
  call void @llvm.va_start(ptr nonnull %4), !dbg !2205
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #46, !dbg !2206
  call void @llvm.va_end(ptr nonnull %4), !dbg !2207
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #40, !dbg !2208
  ret void, !dbg !2208
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #19

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #18 !dbg !571 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !583, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i32 %1, metadata !584, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata ptr %2, metadata !585, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i32 %3, metadata !586, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata ptr %4, metadata !587, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata ptr %5, metadata !588, metadata !DIExpression()), !dbg !2209
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !2210, !tbaa !1057
  %8 = icmp eq i32 %7, 0, !dbg !2210
  br i1 %8, label %23, label %9, !dbg !2212

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !2213, !tbaa !1057
  %11 = icmp eq i32 %10, %3, !dbg !2216
  br i1 %11, label %12, label %22, !dbg !2217

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !2218, !tbaa !983
  %14 = icmp eq ptr %13, %2, !dbg !2219
  br i1 %14, label %36, label %15, !dbg !2220

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !2221
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !2222
  br i1 %18, label %19, label %22, !dbg !2222

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !2223
  %21 = icmp eq i32 %20, 0, !dbg !2224
  br i1 %21, label %36, label %22, !dbg !2225

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !2226, !tbaa !983
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !2227, !tbaa !1057
  br label %23, !dbg !2228

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !2229
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !2230, !tbaa !983
  %25 = icmp eq ptr %24, null, !dbg !2230
  br i1 %25, label %27, label %26, !dbg !2232

26:                                               ; preds = %23
  tail call void %24() #40, !dbg !2233
  br label %31, !dbg !2233

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !2234, !tbaa !983
  %29 = tail call ptr @getprogname() #41, !dbg !2234
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.60, ptr noundef %29) #40, !dbg !2234
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !2236, !tbaa !983
  %33 = icmp eq ptr %2, null, !dbg !2236
  %34 = select i1 %33, ptr @.str.3.61, ptr @.str.2.62, !dbg !2236
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #40, !dbg !2236
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !2237
  br label %36, !dbg !2238

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !2238
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !2239 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !2243, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata i32 %1, metadata !2244, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata ptr %2, metadata !2245, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata i32 %3, metadata !2246, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata ptr %4, metadata !2247, metadata !DIExpression()), !dbg !2249
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #40, !dbg !2250
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2248, metadata !DIExpression()), !dbg !2251
  call void @llvm.va_start(ptr nonnull %6), !dbg !2252
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #46, !dbg !2253
  call void @llvm.va_end(ptr nonnull %6), !dbg !2254
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #40, !dbg !2255
  ret void, !dbg !2255
}

; Function Attrs: nounwind uwtable
define dso_local void @fdadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #10 !dbg !2256 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2261, metadata !DIExpression()), !dbg !2265
  call void @llvm.dbg.value(metadata i64 %1, metadata !2262, metadata !DIExpression()), !dbg !2265
  call void @llvm.dbg.value(metadata i64 %2, metadata !2263, metadata !DIExpression()), !dbg !2265
  call void @llvm.dbg.value(metadata i32 %3, metadata !2264, metadata !DIExpression()), !dbg !2265
  %5 = tail call i32 @posix_fadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #40, !dbg !2266
  ret void, !dbg !2267
}

; Function Attrs: nounwind
declare !dbg !2268 i32 @posix_fadvise(i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @fadvise(ptr noundef %0, i32 noundef %1) local_unnamed_addr #10 !dbg !2271 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2309, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i32 %1, metadata !2310, metadata !DIExpression()), !dbg !2311
  %3 = icmp eq ptr %0, null, !dbg !2312
  br i1 %3, label %7, label %4, !dbg !2314

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !2315
  call void @llvm.dbg.value(metadata i32 %5, metadata !2261, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 0, metadata !2262, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 0, metadata !2263, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i32 %1, metadata !2264, metadata !DIExpression()), !dbg !2316
  %6 = tail call i32 @posix_fadvise(i32 noundef %5, i64 noundef 0, i64 noundef 0, i32 noundef %1) #40, !dbg !2318
  br label %7, !dbg !2319

7:                                                ; preds = %4, %2
  ret void, !dbg !2320
}

; Function Attrs: nofree nounwind
declare !dbg !2321 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fcntl(i32 noundef %0, i32 noundef %1, ...) local_unnamed_addr #10 !dbg !2324 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !2326, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata i32 %1, metadata !2327, metadata !DIExpression()), !dbg !2351
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #40, !dbg !2352
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2328, metadata !DIExpression()), !dbg !2353
  call void @llvm.va_start(ptr nonnull %3), !dbg !2354
  call void @llvm.dbg.value(metadata i32 -1, metadata !2339, metadata !DIExpression()), !dbg !2351
  switch i32 %1, label %90 [
    i32 0, label %4
    i32 1030, label %21
    i32 1, label %71
    i32 3, label %71
    i32 1025, label %71
    i32 9, label %71
    i32 1032, label %71
    i32 1034, label %71
    i32 11, label %71
    i32 1033, label %73
    i32 1031, label %73
    i32 10, label %73
    i32 1026, label %73
    i32 2, label %73
    i32 4, label %73
    i32 1024, label %73
    i32 8, label %73
  ], !dbg !2355

4:                                                ; preds = %2
  %5 = load i32, ptr %3, align 16, !dbg !2356
  %6 = icmp ult i32 %5, 41, !dbg !2356
  br i1 %6, label %7, label %13, !dbg !2356

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3, !dbg !2356
  %9 = load ptr, ptr %8, align 16, !dbg !2356
  %10 = zext i32 %5 to i64, !dbg !2356
  %11 = getelementptr i8, ptr %9, i64 %10, !dbg !2356
  %12 = add nuw nsw i32 %5, 8, !dbg !2356
  store i32 %12, ptr %3, align 16, !dbg !2356
  br label %17, !dbg !2356

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2, !dbg !2356
  %15 = load ptr, ptr %14, align 8, !dbg !2356
  %16 = getelementptr i8, ptr %15, i64 8, !dbg !2356
  store ptr %16, ptr %14, align 8, !dbg !2356
  br label %17, !dbg !2356

17:                                               ; preds = %13, %7
  %18 = phi ptr [ %11, %7 ], [ %15, %13 ], !dbg !2356
  %19 = load i32, ptr %18, align 4, !dbg !2356
  call void @llvm.dbg.value(metadata i32 %19, metadata !2340, metadata !DIExpression()), !dbg !2357
  call void @llvm.dbg.value(metadata i32 %0, metadata !2358, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.value(metadata i32 %19, metadata !2361, metadata !DIExpression()), !dbg !2363
  %20 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %19) #40, !dbg !2365
  call void @llvm.dbg.value(metadata i32 %20, metadata !2362, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.value(metadata i32 %20, metadata !2339, metadata !DIExpression()), !dbg !2351
  br label %107

21:                                               ; preds = %2
  %22 = load i32, ptr %3, align 16, !dbg !2366
  %23 = icmp ult i32 %22, 41, !dbg !2366
  br i1 %23, label %24, label %30, !dbg !2366

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3, !dbg !2366
  %26 = load ptr, ptr %25, align 16, !dbg !2366
  %27 = zext i32 %22 to i64, !dbg !2366
  %28 = getelementptr i8, ptr %26, i64 %27, !dbg !2366
  %29 = add nuw nsw i32 %22, 8, !dbg !2366
  store i32 %29, ptr %3, align 16, !dbg !2366
  br label %34, !dbg !2366

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2, !dbg !2366
  %32 = load ptr, ptr %31, align 8, !dbg !2366
  %33 = getelementptr i8, ptr %32, i64 8, !dbg !2366
  store ptr %33, ptr %31, align 8, !dbg !2366
  br label %34, !dbg !2366

34:                                               ; preds = %30, %24
  %35 = phi ptr [ %28, %24 ], [ %32, %30 ], !dbg !2366
  %36 = load i32, ptr %35, align 4, !dbg !2366
  call void @llvm.dbg.value(metadata i32 %36, metadata !2343, metadata !DIExpression()), !dbg !2367
  call void @llvm.dbg.value(metadata i32 %0, metadata !622, metadata !DIExpression()), !dbg !2368
  call void @llvm.dbg.value(metadata i32 %36, metadata !623, metadata !DIExpression()), !dbg !2368
  %37 = load i32, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !2370, !tbaa !1057
  %38 = icmp sgt i32 %37, -1, !dbg !2372
  br i1 %38, label %39, label %51, !dbg !2373

39:                                               ; preds = %34
  %40 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 1030, i32 noundef %36) #40, !dbg !2374
  call void @llvm.dbg.value(metadata i32 %40, metadata !624, metadata !DIExpression()), !dbg !2368
  %41 = icmp sgt i32 %40, -1, !dbg !2376
  br i1 %41, label %46, label %42, !dbg !2378

42:                                               ; preds = %39
  %43 = tail call ptr @__errno_location() #43, !dbg !2379
  %44 = load i32, ptr %43, align 4, !dbg !2379, !tbaa !1057
  %45 = icmp eq i32 %44, 22, !dbg !2380
  br i1 %45, label %47, label %46, !dbg !2381

46:                                               ; preds = %42, %39
  store i32 1, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !2382, !tbaa !1057
  call void @llvm.dbg.value(metadata i32 %40, metadata !624, metadata !DIExpression()), !dbg !2368
  br label %107, !dbg !2384

47:                                               ; preds = %42
  call void @llvm.dbg.value(metadata i32 %0, metadata !2358, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata i32 %36, metadata !2361, metadata !DIExpression()), !dbg !2385
  %48 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %36) #40, !dbg !2388
  call void @llvm.dbg.value(metadata i32 %48, metadata !2362, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata i32 %48, metadata !624, metadata !DIExpression()), !dbg !2368
  %49 = icmp sgt i32 %48, -1, !dbg !2389
  br i1 %49, label %50, label %107, !dbg !2391

50:                                               ; preds = %47
  store i32 -1, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !2392, !tbaa !1057
  br label %55, !dbg !2393

51:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i32 %0, metadata !2358, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata i32 %36, metadata !2361, metadata !DIExpression()), !dbg !2394
  %52 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %36) #40, !dbg !2396
  call void @llvm.dbg.value(metadata i32 %52, metadata !2362, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata i32 %52, metadata !624, metadata !DIExpression()), !dbg !2368
  %53 = load i32, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4
  %54 = icmp eq i32 %53, -1
  br label %55

55:                                               ; preds = %51, %50
  %56 = phi i1 [ true, %50 ], [ %54, %51 ]
  %57 = phi i32 [ %48, %50 ], [ %52, %51 ], !dbg !2397
  call void @llvm.dbg.value(metadata i32 %57, metadata !624, metadata !DIExpression()), !dbg !2368
  %58 = icmp sgt i32 %57, -1, !dbg !2398
  %59 = select i1 %58, i1 %56, i1 false, !dbg !2384
  br i1 %59, label %60, label %107, !dbg !2384

60:                                               ; preds = %55
  %61 = call i32 (i32, i32, ...) @fcntl(i32 noundef %57, i32 noundef 1) #40, !dbg !2399
  call void @llvm.dbg.value(metadata i32 %61, metadata !625, metadata !DIExpression()), !dbg !2400
  %62 = icmp slt i32 %61, 0, !dbg !2401
  br i1 %62, label %67, label %63, !dbg !2402

63:                                               ; preds = %60
  %64 = or i32 %61, 1, !dbg !2403
  %65 = call i32 (i32, i32, ...) @fcntl(i32 noundef %57, i32 noundef 2, i32 noundef %64) #40, !dbg !2404
  %66 = icmp eq i32 %65, -1, !dbg !2405
  br i1 %66, label %67, label %107, !dbg !2406

67:                                               ; preds = %63, %60
  %68 = tail call ptr @__errno_location() #43, !dbg !2407
  %69 = load i32, ptr %68, align 4, !dbg !2407, !tbaa !1057
  call void @llvm.dbg.value(metadata i32 %69, metadata !628, metadata !DIExpression()), !dbg !2408
  %70 = call i32 @close(i32 noundef %57) #40, !dbg !2409
  store i32 %69, ptr %68, align 4, !dbg !2410, !tbaa !1057
  call void @llvm.dbg.value(metadata i32 -1, metadata !624, metadata !DIExpression()), !dbg !2368
  br label %107, !dbg !2411

71:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %72 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1) #40, !dbg !2412
  call void @llvm.dbg.value(metadata i32 %72, metadata !2339, metadata !DIExpression()), !dbg !2351
  br label %107, !dbg !2413

73:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %74 = load i32, ptr %3, align 16, !dbg !2414
  %75 = icmp ult i32 %74, 41, !dbg !2414
  br i1 %75, label %76, label %82, !dbg !2414

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3, !dbg !2414
  %78 = load ptr, ptr %77, align 16, !dbg !2414
  %79 = zext i32 %74 to i64, !dbg !2414
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !2414
  %81 = add nuw nsw i32 %74, 8, !dbg !2414
  store i32 %81, ptr %3, align 16, !dbg !2414
  br label %86, !dbg !2414

82:                                               ; preds = %73
  %83 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2, !dbg !2414
  %84 = load ptr, ptr %83, align 8, !dbg !2414
  %85 = getelementptr i8, ptr %84, i64 8, !dbg !2414
  store ptr %85, ptr %83, align 8, !dbg !2414
  br label %86, !dbg !2414

86:                                               ; preds = %82, %76
  %87 = phi ptr [ %80, %76 ], [ %84, %82 ], !dbg !2414
  %88 = load i32, ptr %87, align 4, !dbg !2414
  call void @llvm.dbg.value(metadata i32 %88, metadata !2345, metadata !DIExpression()), !dbg !2415
  %89 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, i32 noundef %88) #40, !dbg !2416
  call void @llvm.dbg.value(metadata i32 %89, metadata !2339, metadata !DIExpression()), !dbg !2351
  br label %107, !dbg !2417

90:                                               ; preds = %2
  %91 = load i32, ptr %3, align 16, !dbg !2418
  %92 = icmp ult i32 %91, 41, !dbg !2418
  br i1 %92, label %93, label %99, !dbg !2418

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3, !dbg !2418
  %95 = load ptr, ptr %94, align 16, !dbg !2418
  %96 = zext i32 %91 to i64, !dbg !2418
  %97 = getelementptr i8, ptr %95, i64 %96, !dbg !2418
  %98 = add nuw nsw i32 %91, 8, !dbg !2418
  store i32 %98, ptr %3, align 16, !dbg !2418
  br label %103, !dbg !2418

99:                                               ; preds = %90
  %100 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2, !dbg !2418
  %101 = load ptr, ptr %100, align 8, !dbg !2418
  %102 = getelementptr i8, ptr %101, i64 8, !dbg !2418
  store ptr %102, ptr %100, align 8, !dbg !2418
  br label %103, !dbg !2418

103:                                              ; preds = %99, %93
  %104 = phi ptr [ %97, %93 ], [ %101, %99 ], !dbg !2418
  %105 = load ptr, ptr %104, align 8, !dbg !2418
  call void @llvm.dbg.value(metadata ptr %105, metadata !2349, metadata !DIExpression()), !dbg !2419
  %106 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, ptr noundef %105) #40, !dbg !2420
  call void @llvm.dbg.value(metadata i32 %106, metadata !2339, metadata !DIExpression()), !dbg !2351
  br label %107, !dbg !2421

107:                                              ; preds = %67, %63, %55, %47, %46, %71, %86, %103, %17
  %108 = phi i32 [ %106, %103 ], [ %89, %86 ], [ %72, %71 ], [ %20, %17 ], [ %57, %55 ], [ -1, %67 ], [ %57, %63 ], [ %48, %47 ], [ %40, %46 ], !dbg !2422
  call void @llvm.dbg.value(metadata i32 %108, metadata !2339, metadata !DIExpression()), !dbg !2351
  call void @llvm.va_end(ptr nonnull %3), !dbg !2423
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #40, !dbg !2424
  ret i32 %108, !dbg !2425
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fpurge(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !2426 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2464, metadata !DIExpression()), !dbg !2465
  tail call void @__fpurge(ptr noundef nonnull %0) #40, !dbg !2466
  ret i32 0, !dbg !2467
}

; Function Attrs: nounwind
declare !dbg !2468 void @__fpurge(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @full_write(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2472 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2476, metadata !DIExpression()), !dbg !2483
  call void @llvm.dbg.value(metadata ptr %1, metadata !2477, metadata !DIExpression()), !dbg !2483
  call void @llvm.dbg.value(metadata i64 %2, metadata !2478, metadata !DIExpression()), !dbg !2483
  call void @llvm.dbg.value(metadata i64 0, metadata !2479, metadata !DIExpression()), !dbg !2483
  call void @llvm.dbg.value(metadata ptr %1, metadata !2480, metadata !DIExpression()), !dbg !2483
  %4 = icmp sgt i64 %2, 0, !dbg !2484
  br i1 %4, label %5, label %20, !dbg !2485

5:                                                ; preds = %3, %15
  %6 = phi i64 [ %18, %15 ], [ %2, %3 ]
  %7 = phi ptr [ %17, %15 ], [ %1, %3 ]
  %8 = phi i64 [ %16, %15 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i64 %6, metadata !2478, metadata !DIExpression()), !dbg !2483
  call void @llvm.dbg.value(metadata ptr %7, metadata !2480, metadata !DIExpression()), !dbg !2483
  call void @llvm.dbg.value(metadata i64 %8, metadata !2479, metadata !DIExpression()), !dbg !2483
  %9 = tail call i64 @safe_write(i32 noundef %0, ptr noundef %7, i64 noundef %6) #40, !dbg !2486
  call void @llvm.dbg.value(metadata i64 %9, metadata !2481, metadata !DIExpression()), !dbg !2487
  %10 = icmp slt i64 %9, 0, !dbg !2488
  br i1 %10, label %20, label %11, !dbg !2490

11:                                               ; preds = %5
  %12 = icmp eq i64 %9, 0, !dbg !2491
  br i1 %12, label %13, label %15, !dbg !2493

13:                                               ; preds = %11
  %14 = tail call ptr @__errno_location() #43, !dbg !2494
  store i32 28, ptr %14, align 4, !dbg !2496, !tbaa !1057
  br label %20, !dbg !2497

15:                                               ; preds = %11
  %16 = add nsw i64 %9, %8, !dbg !2498
  call void @llvm.dbg.value(metadata i64 %16, metadata !2479, metadata !DIExpression()), !dbg !2483
  %17 = getelementptr inbounds i8, ptr %7, i64 %9, !dbg !2499
  call void @llvm.dbg.value(metadata ptr %17, metadata !2480, metadata !DIExpression()), !dbg !2483
  %18 = sub nsw i64 %6, %9, !dbg !2500
  call void @llvm.dbg.value(metadata i64 %18, metadata !2478, metadata !DIExpression()), !dbg !2483
  %19 = icmp sgt i64 %18, 0, !dbg !2484
  br i1 %19, label %5, label %20, !dbg !2485

20:                                               ; preds = %15, %5, %3, %13
  %21 = phi i64 [ %8, %13 ], [ 0, %3 ], [ %16, %15 ], [ %8, %5 ]
  call void @llvm.dbg.value(metadata i64 %21, metadata !2479, metadata !DIExpression()), !dbg !2483
  ret i64 %21, !dbg !2501
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #20 !dbg !2502 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !2504, !tbaa !983
  ret ptr %1, !dbg !2505
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #21 !dbg !2506 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2508, metadata !DIExpression()), !dbg !2511
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #41, !dbg !2512
  call void @llvm.dbg.value(metadata ptr %2, metadata !2509, metadata !DIExpression()), !dbg !2511
  %3 = icmp eq ptr %2, null, !dbg !2513
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2513
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2513
  call void @llvm.dbg.value(metadata ptr %5, metadata !2510, metadata !DIExpression()), !dbg !2511
  %6 = ptrtoint ptr %5 to i64, !dbg !2514
  %7 = ptrtoint ptr %0 to i64, !dbg !2514
  %8 = sub i64 %6, %7, !dbg !2514
  %9 = icmp sgt i64 %8, 6, !dbg !2516
  br i1 %9, label %10, label %19, !dbg !2517

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !2518
  call void @llvm.dbg.value(metadata ptr %11, metadata !2519, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata ptr @.str.79, metadata !2524, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i64 7, metadata !2525, metadata !DIExpression()), !dbg !2526
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.79, i64 7), !dbg !2528
  %13 = icmp eq i32 %12, 0, !dbg !2529
  br i1 %13, label %14, label %19, !dbg !2530

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !2508, metadata !DIExpression()), !dbg !2511
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.80, i64 noundef 3) #41, !dbg !2531
  %16 = icmp eq i32 %15, 0, !dbg !2534
  %17 = select i1 %16, i64 3, i64 0, !dbg !2535
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !2535
  br label %19, !dbg !2535

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2511
  call void @llvm.dbg.value(metadata ptr %21, metadata !2510, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata ptr %20, metadata !2508, metadata !DIExpression()), !dbg !2511
  store ptr %20, ptr @program_name, align 8, !dbg !2536, !tbaa !983
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2537, !tbaa !983
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2538, !tbaa !983
  ret void, !dbg !2539
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2540 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #22

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !643 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !650, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata ptr %1, metadata !651, metadata !DIExpression()), !dbg !2541
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #40, !dbg !2542
  call void @llvm.dbg.value(metadata ptr %5, metadata !652, metadata !DIExpression()), !dbg !2541
  %6 = icmp eq ptr %5, %0, !dbg !2543
  br i1 %6, label %7, label %14, !dbg !2545

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #40, !dbg !2546
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #40, !dbg !2547
  call void @llvm.dbg.declare(metadata ptr %4, metadata !658, metadata !DIExpression()), !dbg !2548
  call void @llvm.dbg.value(metadata ptr %4, metadata !2549, metadata !DIExpression()), !dbg !2556
  call void @llvm.dbg.value(metadata ptr %4, metadata !2558, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata i32 0, metadata !2563, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata i64 8, metadata !2564, metadata !DIExpression()), !dbg !2565
  store i64 0, ptr %4, align 8, !dbg !2567
  call void @llvm.dbg.value(metadata ptr %3, metadata !653, metadata !DIExpression(DW_OP_deref)), !dbg !2541
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #40, !dbg !2568
  %9 = icmp eq i64 %8, 2, !dbg !2570
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !653, metadata !DIExpression()), !dbg !2541
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2571
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !2541
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #40, !dbg !2572
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #40, !dbg !2572
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !2541
  ret ptr %15, !dbg !2572
}

; Function Attrs: nounwind
declare !dbg !2573 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !2579 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2584, metadata !DIExpression()), !dbg !2587
  %2 = tail call ptr @__errno_location() #43, !dbg !2588
  %3 = load i32, ptr %2, align 4, !dbg !2588, !tbaa !1057
  call void @llvm.dbg.value(metadata i32 %3, metadata !2585, metadata !DIExpression()), !dbg !2587
  %4 = icmp eq ptr %0, null, !dbg !2589
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2589
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #45, !dbg !2590
  call void @llvm.dbg.value(metadata ptr %6, metadata !2586, metadata !DIExpression()), !dbg !2587
  store i32 %3, ptr %2, align 4, !dbg !2591, !tbaa !1057
  ret ptr %6, !dbg !2592
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #23 !dbg !2593 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2599, metadata !DIExpression()), !dbg !2600
  %2 = icmp eq ptr %0, null, !dbg !2601
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2601
  %4 = load i32, ptr %3, align 8, !dbg !2602, !tbaa !2603
  ret i32 %4, !dbg !2605
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #24 !dbg !2606 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2610, metadata !DIExpression()), !dbg !2612
  call void @llvm.dbg.value(metadata i32 %1, metadata !2611, metadata !DIExpression()), !dbg !2612
  %3 = icmp eq ptr %0, null, !dbg !2613
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2613
  store i32 %1, ptr %4, align 8, !dbg !2614, !tbaa !2603
  ret void, !dbg !2615
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #25 !dbg !2616 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2620, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i8 %1, metadata !2621, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i32 %2, metadata !2622, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i8 %1, metadata !2623, metadata !DIExpression()), !dbg !2628
  %4 = icmp eq ptr %0, null, !dbg !2629
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2629
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2630
  %7 = lshr i8 %1, 5, !dbg !2631
  %8 = zext i8 %7 to i64, !dbg !2631
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !2632
  call void @llvm.dbg.value(metadata ptr %9, metadata !2624, metadata !DIExpression()), !dbg !2628
  %10 = and i8 %1, 31, !dbg !2633
  %11 = zext i8 %10 to i32, !dbg !2633
  call void @llvm.dbg.value(metadata i32 %11, metadata !2626, metadata !DIExpression()), !dbg !2628
  %12 = load i32, ptr %9, align 4, !dbg !2634, !tbaa !1057
  %13 = lshr i32 %12, %11, !dbg !2635
  %14 = and i32 %13, 1, !dbg !2636
  call void @llvm.dbg.value(metadata i32 %14, metadata !2627, metadata !DIExpression()), !dbg !2628
  %15 = xor i32 %13, %2, !dbg !2637
  %16 = and i32 %15, 1, !dbg !2637
  %17 = shl nuw i32 %16, %11, !dbg !2638
  %18 = xor i32 %17, %12, !dbg !2639
  store i32 %18, ptr %9, align 4, !dbg !2639, !tbaa !1057
  ret i32 %14, !dbg !2640
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #25 !dbg !2641 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2645, metadata !DIExpression()), !dbg !2648
  call void @llvm.dbg.value(metadata i32 %1, metadata !2646, metadata !DIExpression()), !dbg !2648
  %3 = icmp eq ptr %0, null, !dbg !2649
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2651
  call void @llvm.dbg.value(metadata ptr %4, metadata !2645, metadata !DIExpression()), !dbg !2648
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !2652
  %6 = load i32, ptr %5, align 4, !dbg !2652, !tbaa !2653
  call void @llvm.dbg.value(metadata i32 %6, metadata !2647, metadata !DIExpression()), !dbg !2648
  store i32 %1, ptr %5, align 4, !dbg !2654, !tbaa !2653
  ret i32 %6, !dbg !2655
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2656 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2660, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata ptr %1, metadata !2661, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata ptr %2, metadata !2662, metadata !DIExpression()), !dbg !2663
  %4 = icmp eq ptr %0, null, !dbg !2664
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2666
  call void @llvm.dbg.value(metadata ptr %5, metadata !2660, metadata !DIExpression()), !dbg !2663
  store i32 10, ptr %5, align 8, !dbg !2667, !tbaa !2603
  %6 = icmp ne ptr %1, null, !dbg !2668
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2670
  br i1 %8, label %10, label %9, !dbg !2670

9:                                                ; preds = %3
  tail call void @abort() #42, !dbg !2671
  unreachable, !dbg !2671

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2672
  store ptr %1, ptr %11, align 8, !dbg !2673, !tbaa !2674
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2675
  store ptr %2, ptr %12, align 8, !dbg !2676, !tbaa !2677
  ret void, !dbg !2678
}

; Function Attrs: noreturn nounwind
declare !dbg !2679 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !2680 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2684, metadata !DIExpression()), !dbg !2692
  call void @llvm.dbg.value(metadata i64 %1, metadata !2685, metadata !DIExpression()), !dbg !2692
  call void @llvm.dbg.value(metadata ptr %2, metadata !2686, metadata !DIExpression()), !dbg !2692
  call void @llvm.dbg.value(metadata i64 %3, metadata !2687, metadata !DIExpression()), !dbg !2692
  call void @llvm.dbg.value(metadata ptr %4, metadata !2688, metadata !DIExpression()), !dbg !2692
  %6 = icmp eq ptr %4, null, !dbg !2693
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !2693
  call void @llvm.dbg.value(metadata ptr %7, metadata !2689, metadata !DIExpression()), !dbg !2692
  %8 = tail call ptr @__errno_location() #43, !dbg !2694
  %9 = load i32, ptr %8, align 4, !dbg !2694, !tbaa !1057
  call void @llvm.dbg.value(metadata i32 %9, metadata !2690, metadata !DIExpression()), !dbg !2692
  %10 = load i32, ptr %7, align 8, !dbg !2695, !tbaa !2603
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !2696
  %12 = load i32, ptr %11, align 4, !dbg !2696, !tbaa !2653
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !2697
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !2698
  %15 = load ptr, ptr %14, align 8, !dbg !2698, !tbaa !2674
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !2699
  %17 = load ptr, ptr %16, align 8, !dbg !2699, !tbaa !2677
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !2700
  call void @llvm.dbg.value(metadata i64 %18, metadata !2691, metadata !DIExpression()), !dbg !2692
  store i32 %9, ptr %8, align 4, !dbg !2701, !tbaa !1057
  ret i64 %18, !dbg !2702
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !2703 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !2709, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i64 %1, metadata !2710, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata ptr %2, metadata !2711, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i64 %3, metadata !2712, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i32 %4, metadata !2713, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i32 %5, metadata !2714, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata ptr %6, metadata !2715, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata ptr %7, metadata !2716, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata ptr %8, metadata !2717, metadata !DIExpression()), !dbg !2771
  %16 = tail call i64 @__ctype_get_mb_cur_max() #40, !dbg !2772
  %17 = icmp eq i64 %16, 1, !dbg !2773
  call void @llvm.dbg.value(metadata i1 %17, metadata !2718, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2771
  call void @llvm.dbg.value(metadata i64 0, metadata !2719, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i64 0, metadata !2720, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata ptr null, metadata !2721, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i64 0, metadata !2722, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i8 0, metadata !2723, metadata !DIExpression()), !dbg !2771
  %18 = trunc i32 %5 to i8, !dbg !2774
  %19 = lshr i8 %18, 1, !dbg !2774
  %20 = and i8 %19, 1, !dbg !2774
  call void @llvm.dbg.value(metadata i8 %20, metadata !2724, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i8 0, metadata !2725, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i8 1, metadata !2726, metadata !DIExpression()), !dbg !2771
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !2775

28:                                               ; preds = %642, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %642 ]
  %30 = phi ptr [ %7, %9 ], [ %117, %642 ]
  %31 = phi ptr [ %8, %9 ], [ %118, %642 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %642 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %642 ], !dbg !2776
  %34 = phi ptr [ null, %9 ], [ %120, %642 ], !dbg !2777
  %35 = phi i64 [ 0, %9 ], [ %121, %642 ], !dbg !2778
  %36 = phi i8 [ 0, %9 ], [ %122, %642 ], !dbg !2779
  %37 = phi i8 [ %20, %9 ], [ %123, %642 ], !dbg !2771
  %38 = phi i8 [ 0, %9 ], [ %142, %642 ], !dbg !2780
  %39 = phi i8 [ 1, %9 ], [ %143, %642 ], !dbg !2781
  %40 = phi i64 [ %1, %9 ], [ %141, %642 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !2710, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i8 %39, metadata !2726, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i8 %38, metadata !2725, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i8 %37, metadata !2724, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i8 %36, metadata !2723, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i64 %35, metadata !2722, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata ptr %34, metadata !2721, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i64 %33, metadata !2720, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i64 0, metadata !2719, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i64 %32, metadata !2712, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata ptr %31, metadata !2717, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata ptr %30, metadata !2716, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i32 %29, metadata !2713, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.label(metadata !2764), !dbg !2782
  call void @llvm.dbg.value(metadata i8 0, metadata !2727, metadata !DIExpression()), !dbg !2771
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
  ], !dbg !2783

41:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !2724, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i32 5, metadata !2713, metadata !DIExpression()), !dbg !2771
  br label %115, !dbg !2784

42:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 %37, metadata !2724, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i32 5, metadata !2713, metadata !DIExpression()), !dbg !2771
  %43 = and i8 %37, 1, !dbg !2785
  %44 = icmp eq i8 %43, 0, !dbg !2785
  br i1 %44, label %45, label %115, !dbg !2784

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2787
  br i1 %46, label %115, label %47, !dbg !2790

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !2787, !tbaa !1066
  br label %115, !dbg !2787

48:                                               ; preds = %28, %28
  call void @llvm.dbg.value(metadata ptr @.str.11.93, metadata !742, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata i32 %29, metadata !743, metadata !DIExpression()), !dbg !2791
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.94, ptr noundef nonnull @.str.11.93, i32 noundef 5) #40, !dbg !2795
  call void @llvm.dbg.value(metadata ptr %49, metadata !744, metadata !DIExpression()), !dbg !2791
  %50 = icmp eq ptr %49, @.str.11.93, !dbg !2796
  br i1 %50, label %51, label %60, !dbg !2798

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #40, !dbg !2799
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #40, !dbg !2800
  call void @llvm.dbg.declare(metadata ptr %13, metadata !746, metadata !DIExpression()), !dbg !2801
  call void @llvm.dbg.value(metadata ptr %13, metadata !2802, metadata !DIExpression()), !dbg !2808
  call void @llvm.dbg.value(metadata ptr %13, metadata !2810, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata i32 0, metadata !2813, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata i64 8, metadata !2814, metadata !DIExpression()), !dbg !2815
  store i64 0, ptr %13, align 8, !dbg !2817
  call void @llvm.dbg.value(metadata ptr %12, metadata !745, metadata !DIExpression(DW_OP_deref)), !dbg !2791
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #40, !dbg !2818
  %53 = icmp eq i64 %52, 3, !dbg !2820
  %54 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %54, metadata !745, metadata !DIExpression()), !dbg !2791
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !2821
  %57 = icmp eq i32 %29, 9, !dbg !2821
  %58 = select i1 %57, ptr @.str.10.95, ptr @.str.12.96, !dbg !2821
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !2821
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #40, !dbg !2822
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #40, !dbg !2822
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !2791
  call void @llvm.dbg.value(metadata ptr %61, metadata !2716, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata ptr @.str.12.96, metadata !742, metadata !DIExpression()), !dbg !2823
  call void @llvm.dbg.value(metadata i32 %29, metadata !743, metadata !DIExpression()), !dbg !2823
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.94, ptr noundef nonnull @.str.12.96, i32 noundef 5) #40, !dbg !2825
  call void @llvm.dbg.value(metadata ptr %62, metadata !744, metadata !DIExpression()), !dbg !2823
  %63 = icmp eq ptr %62, @.str.12.96, !dbg !2826
  br i1 %63, label %64, label %73, !dbg !2827

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #40, !dbg !2828
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #40, !dbg !2829
  call void @llvm.dbg.declare(metadata ptr %11, metadata !746, metadata !DIExpression()), !dbg !2830
  call void @llvm.dbg.value(metadata ptr %11, metadata !2802, metadata !DIExpression()), !dbg !2831
  call void @llvm.dbg.value(metadata ptr %11, metadata !2810, metadata !DIExpression()), !dbg !2833
  call void @llvm.dbg.value(metadata i32 0, metadata !2813, metadata !DIExpression()), !dbg !2833
  call void @llvm.dbg.value(metadata i64 8, metadata !2814, metadata !DIExpression()), !dbg !2833
  store i64 0, ptr %11, align 8, !dbg !2835
  call void @llvm.dbg.value(metadata ptr %10, metadata !745, metadata !DIExpression(DW_OP_deref)), !dbg !2823
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #40, !dbg !2836
  %66 = icmp eq i64 %65, 3, !dbg !2837
  %67 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %67, metadata !745, metadata !DIExpression()), !dbg !2823
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !2838
  %70 = icmp eq i32 %29, 9, !dbg !2838
  %71 = select i1 %70, ptr @.str.10.95, ptr @.str.12.96, !dbg !2838
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !2838
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #40, !dbg !2839
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #40, !dbg !2839
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  call void @llvm.dbg.value(metadata ptr %75, metadata !2717, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata ptr %74, metadata !2716, metadata !DIExpression()), !dbg !2771
  %76 = and i8 %37, 1, !dbg !2840
  %77 = icmp eq i8 %76, 0, !dbg !2840
  br i1 %77, label %78, label %93, !dbg !2841

78:                                               ; preds = %73
  call void @llvm.dbg.value(metadata ptr %74, metadata !2728, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i64 0, metadata !2719, metadata !DIExpression()), !dbg !2771
  %79 = load i8, ptr %74, align 1, !dbg !2843, !tbaa !1066
  %80 = icmp eq i8 %79, 0, !dbg !2845
  br i1 %80, label %93, label %81, !dbg !2845

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  call void @llvm.dbg.value(metadata ptr %83, metadata !2728, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i64 %84, metadata !2719, metadata !DIExpression()), !dbg !2771
  %85 = icmp ult i64 %84, %40, !dbg !2846
  br i1 %85, label %86, label %88, !dbg !2849

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !2846
  store i8 %82, ptr %87, align 1, !dbg !2846, !tbaa !1066
  br label %88, !dbg !2846

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !2849
  call void @llvm.dbg.value(metadata i64 %89, metadata !2719, metadata !DIExpression()), !dbg !2771
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !2850
  call void @llvm.dbg.value(metadata ptr %90, metadata !2728, metadata !DIExpression()), !dbg !2842
  %91 = load i8, ptr %90, align 1, !dbg !2843, !tbaa !1066
  %92 = icmp eq i8 %91, 0, !dbg !2845
  br i1 %92, label %93, label %81, !dbg !2845, !llvm.loop !2851

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !2853
  call void @llvm.dbg.value(metadata i64 %94, metadata !2719, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i8 1, metadata !2723, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata ptr %75, metadata !2721, metadata !DIExpression()), !dbg !2771
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #41, !dbg !2854
  call void @llvm.dbg.value(metadata i64 %95, metadata !2722, metadata !DIExpression()), !dbg !2771
  br label %115, !dbg !2855

96:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !2723, metadata !DIExpression()), !dbg !2771
  br label %97, !dbg !2856

97:                                               ; preds = %28, %96
  %98 = phi i8 [ %36, %28 ], [ 1, %96 ], !dbg !2771
  call void @llvm.dbg.value(metadata i8 %98, metadata !2723, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i8 1, metadata !2724, metadata !DIExpression()), !dbg !2771
  br label %99, !dbg !2857

99:                                               ; preds = %28, %97
  %100 = phi i8 [ %36, %28 ], [ %98, %97 ], !dbg !2779
  %101 = phi i8 [ %37, %28 ], [ 1, %97 ], !dbg !2771
  call void @llvm.dbg.value(metadata i8 %101, metadata !2724, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i8 %100, metadata !2723, metadata !DIExpression()), !dbg !2771
  %102 = and i8 %101, 1, !dbg !2858
  %103 = icmp eq i8 %102, 0, !dbg !2858
  %104 = select i1 %103, i8 1, i8 %100, !dbg !2860
  br label %105, !dbg !2860

105:                                              ; preds = %99, %28
  %106 = phi i8 [ %36, %28 ], [ %104, %99 ], !dbg !2771
  %107 = phi i8 [ %37, %28 ], [ %101, %99 ], !dbg !2774
  call void @llvm.dbg.value(metadata i8 %107, metadata !2724, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i8 %106, metadata !2723, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i32 2, metadata !2713, metadata !DIExpression()), !dbg !2771
  %108 = and i8 %107, 1, !dbg !2861
  %109 = icmp eq i8 %108, 0, !dbg !2861
  br i1 %109, label %110, label %115, !dbg !2863

110:                                              ; preds = %105
  %111 = icmp eq i64 %40, 0, !dbg !2864
  br i1 %111, label %115, label %112, !dbg !2867

112:                                              ; preds = %110
  store i8 39, ptr %0, align 1, !dbg !2864, !tbaa !1066
  br label %115, !dbg !2864

113:                                              ; preds = %28
  call void @llvm.dbg.value(metadata i8 0, metadata !2724, metadata !DIExpression()), !dbg !2771
  br label %115, !dbg !2868

114:                                              ; preds = %28
  call void @abort() #42, !dbg !2869
  unreachable, !dbg !2869

115:                                              ; preds = %41, %105, %112, %110, %28, %42, %47, %45, %113, %93
  %116 = phi i32 [ 0, %113 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %110 ], [ 2, %112 ], [ 2, %105 ], [ 5, %41 ]
  %117 = phi ptr [ %30, %113 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %110 ], [ %30, %112 ], [ %30, %105 ], [ %30, %41 ]
  %118 = phi ptr [ %31, %113 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %110 ], [ %31, %112 ], [ %31, %105 ], [ %31, %41 ]
  %119 = phi i64 [ 0, %113 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %110 ], [ 1, %112 ], [ 0, %105 ], [ 0, %41 ], !dbg !2853
  %120 = phi ptr [ %34, %113 ], [ %75, %93 ], [ @.str.10.95, %45 ], [ @.str.10.95, %47 ], [ @.str.10.95, %42 ], [ %34, %28 ], [ @.str.12.96, %110 ], [ @.str.12.96, %112 ], [ @.str.12.96, %105 ], [ @.str.10.95, %41 ], !dbg !2771
  %121 = phi i64 [ %35, %113 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %110 ], [ 1, %112 ], [ 1, %105 ], [ 1, %41 ], !dbg !2771
  %122 = phi i8 [ %36, %113 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %106, %110 ], [ %106, %112 ], [ %106, %105 ], [ 1, %41 ], !dbg !2771
  %123 = phi i8 [ 0, %113 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %107, %110 ], [ %107, %112 ], [ %107, %105 ], [ 1, %41 ], !dbg !2771
  call void @llvm.dbg.value(metadata i8 %123, metadata !2724, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i8 %122, metadata !2723, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i64 %121, metadata !2722, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata ptr %120, metadata !2721, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i64 %119, metadata !2719, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata ptr %118, metadata !2717, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata ptr %117, metadata !2716, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i32 %116, metadata !2713, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i64 0, metadata !2733, metadata !DIExpression()), !dbg !2870
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
  br label %138, !dbg !2871

138:                                              ; preds = %617, %115
  %139 = phi i64 [ %32, %115 ], [ %618, %617 ]
  %140 = phi i64 [ %119, %115 ], [ %619, %617 ], !dbg !2853
  %141 = phi i64 [ %33, %115 ], [ %620, %617 ], !dbg !2776
  %142 = phi i8 [ %38, %115 ], [ %621, %617 ], !dbg !2780
  %143 = phi i8 [ %39, %115 ], [ %622, %617 ], !dbg !2781
  %144 = phi i8 [ 0, %115 ], [ %623, %617 ], !dbg !2872
  %145 = phi i64 [ 0, %115 ], [ %626, %617 ], !dbg !2873
  %146 = phi i64 [ %40, %115 ], [ %625, %617 ]
  call void @llvm.dbg.value(metadata i64 %146, metadata !2710, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i64 %145, metadata !2733, metadata !DIExpression()), !dbg !2870
  call void @llvm.dbg.value(metadata i8 %144, metadata !2727, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i8 %143, metadata !2726, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i8 %142, metadata !2725, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i64 %141, metadata !2720, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i64 %140, metadata !2719, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i64 %139, metadata !2712, metadata !DIExpression()), !dbg !2771
  %147 = icmp eq i64 %139, -1, !dbg !2874
  br i1 %147, label %148, label %152, !dbg !2875

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2876
  %150 = load i8, ptr %149, align 1, !dbg !2876, !tbaa !1066
  %151 = icmp eq i8 %150, 0, !dbg !2877
  br i1 %151, label %627, label %154, !dbg !2878

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !2879
  br i1 %153, label %627, label %154, !dbg !2878

154:                                              ; preds = %148, %152
  call void @llvm.dbg.value(metadata i8 0, metadata !2735, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i8 0, metadata !2738, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i8 0, metadata !2739, metadata !DIExpression()), !dbg !2880
  br i1 %129, label %155, label %170, !dbg !2881

155:                                              ; preds = %154
  %156 = add i64 %145, %121, !dbg !2883
  %157 = select i1 %147, i1 %130, i1 false, !dbg !2884
  br i1 %157, label %158, label %160, !dbg !2884

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !2885
  call void @llvm.dbg.value(metadata i64 %159, metadata !2712, metadata !DIExpression()), !dbg !2771
  br label %160, !dbg !2886

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !2886
  call void @llvm.dbg.value(metadata i64 %161, metadata !2712, metadata !DIExpression()), !dbg !2771
  %162 = icmp ugt i64 %156, %161, !dbg !2887
  br i1 %162, label %170, label %163, !dbg !2888

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2889
  call void @llvm.dbg.value(metadata ptr %164, metadata !2890, metadata !DIExpression()), !dbg !2895
  call void @llvm.dbg.value(metadata ptr %120, metadata !2893, metadata !DIExpression()), !dbg !2895
  call void @llvm.dbg.value(metadata i64 %121, metadata !2894, metadata !DIExpression()), !dbg !2895
  %165 = call i32 @bcmp(ptr %164, ptr %120, i64 %121), !dbg !2897
  %166 = icmp ne i32 %165, 0, !dbg !2898
  %167 = select i1 %166, i1 true, i1 %132, !dbg !2899
  %168 = xor i1 %166, true, !dbg !2899
  %169 = zext i1 %168 to i8, !dbg !2899
  br i1 %167, label %170, label %688, !dbg !2899

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !2880
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !2880
  call void @llvm.dbg.value(metadata i8 %173, metadata !2735, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i64 %171, metadata !2712, metadata !DIExpression()), !dbg !2771
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2900
  %175 = load i8, ptr %174, align 1, !dbg !2900, !tbaa !1066
  call void @llvm.dbg.value(metadata i8 %175, metadata !2740, metadata !DIExpression()), !dbg !2880
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
  ], !dbg !2901

176:                                              ; preds = %170
  br i1 %125, label %177, label %225, !dbg !2902

177:                                              ; preds = %176
  br i1 %132, label %178, label %674, !dbg !2903

178:                                              ; preds = %177
  call void @llvm.dbg.value(metadata i8 1, metadata !2738, metadata !DIExpression()), !dbg !2880
  %179 = and i8 %144, 1, !dbg !2907
  %180 = icmp eq i8 %179, 0, !dbg !2907
  %181 = select i1 %133, i1 %180, i1 false, !dbg !2907
  br i1 %181, label %182, label %198, !dbg !2907

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !2909
  br i1 %183, label %184, label %186, !dbg !2913

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2909
  store i8 39, ptr %185, align 1, !dbg !2909, !tbaa !1066
  br label %186, !dbg !2909

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !2913
  call void @llvm.dbg.value(metadata i64 %187, metadata !2719, metadata !DIExpression()), !dbg !2771
  %188 = icmp ult i64 %187, %146, !dbg !2914
  br i1 %188, label %189, label %191, !dbg !2917

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !2914
  store i8 36, ptr %190, align 1, !dbg !2914, !tbaa !1066
  br label %191, !dbg !2914

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !2917
  call void @llvm.dbg.value(metadata i64 %192, metadata !2719, metadata !DIExpression()), !dbg !2771
  %193 = icmp ult i64 %192, %146, !dbg !2918
  br i1 %193, label %194, label %196, !dbg !2921

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !2918
  store i8 39, ptr %195, align 1, !dbg !2918, !tbaa !1066
  br label %196, !dbg !2918

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !2921
  call void @llvm.dbg.value(metadata i64 %197, metadata !2719, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i8 1, metadata !2727, metadata !DIExpression()), !dbg !2771
  br label %198, !dbg !2922

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !2771
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !2771
  call void @llvm.dbg.value(metadata i8 %200, metadata !2727, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i64 %199, metadata !2719, metadata !DIExpression()), !dbg !2771
  %201 = icmp ult i64 %199, %146, !dbg !2923
  br i1 %201, label %202, label %204, !dbg !2926

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !2923
  store i8 92, ptr %203, align 1, !dbg !2923, !tbaa !1066
  br label %204, !dbg !2923

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !2926
  call void @llvm.dbg.value(metadata i64 %205, metadata !2719, metadata !DIExpression()), !dbg !2771
  br i1 %126, label %206, label %491, !dbg !2927

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !2929
  %208 = icmp ult i64 %207, %171, !dbg !2930
  br i1 %208, label %209, label %480, !dbg !2931

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !2932
  %211 = load i8, ptr %210, align 1, !dbg !2932, !tbaa !1066
  %212 = add i8 %211, -48, !dbg !2933
  %213 = icmp ult i8 %212, 10, !dbg !2933
  br i1 %213, label %214, label %480, !dbg !2933

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !2934
  br i1 %215, label %216, label %218, !dbg !2938

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !2934
  store i8 48, ptr %217, align 1, !dbg !2934, !tbaa !1066
  br label %218, !dbg !2934

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !2938
  call void @llvm.dbg.value(metadata i64 %219, metadata !2719, metadata !DIExpression()), !dbg !2771
  %220 = icmp ult i64 %219, %146, !dbg !2939
  br i1 %220, label %221, label %223, !dbg !2942

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !2939
  store i8 48, ptr %222, align 1, !dbg !2939, !tbaa !1066
  br label %223, !dbg !2939

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !2942
  call void @llvm.dbg.value(metadata i64 %224, metadata !2719, metadata !DIExpression()), !dbg !2771
  br label %480, !dbg !2943

225:                                              ; preds = %176
  br i1 %25, label %491, label %617, !dbg !2944

226:                                              ; preds = %170
  switch i32 %116, label %480 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !2945

227:                                              ; preds = %226
  br i1 %132, label %480, label %670, !dbg !2946

228:                                              ; preds = %226
  br i1 %23, label %480, label %229, !dbg !2948

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !2950
  %231 = icmp ult i64 %230, %171, !dbg !2951
  br i1 %231, label %232, label %480, !dbg !2952

232:                                              ; preds = %229
  %233 = add i64 %145, 1, !dbg !2953
  %234 = getelementptr inbounds i8, ptr %2, i64 %233, !dbg !2954
  %235 = load i8, ptr %234, align 1, !dbg !2954, !tbaa !1066
  %236 = icmp eq i8 %235, 63, !dbg !2955
  br i1 %236, label %237, label %480, !dbg !2956

237:                                              ; preds = %232
  %238 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !2957
  %239 = load i8, ptr %238, align 1, !dbg !2957, !tbaa !1066
  %240 = sext i8 %239 to i32, !dbg !2957
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
  ], !dbg !2958

241:                                              ; preds = %237, %237, %237, %237, %237, %237, %237, %237, %237
  br i1 %132, label %242, label %688, !dbg !2959

242:                                              ; preds = %241
  call void @llvm.dbg.value(metadata i8 %239, metadata !2740, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i64 %230, metadata !2733, metadata !DIExpression()), !dbg !2870
  %243 = icmp ult i64 %140, %146, !dbg !2961
  br i1 %243, label %244, label %246, !dbg !2964

244:                                              ; preds = %242
  %245 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2961
  store i8 63, ptr %245, align 1, !dbg !2961, !tbaa !1066
  br label %246, !dbg !2961

246:                                              ; preds = %244, %242
  %247 = add i64 %140, 1, !dbg !2964
  call void @llvm.dbg.value(metadata i64 %247, metadata !2719, metadata !DIExpression()), !dbg !2771
  %248 = icmp ult i64 %247, %146, !dbg !2965
  br i1 %248, label %249, label %251, !dbg !2968

249:                                              ; preds = %246
  %250 = getelementptr inbounds i8, ptr %0, i64 %247, !dbg !2965
  store i8 34, ptr %250, align 1, !dbg !2965, !tbaa !1066
  br label %251, !dbg !2965

251:                                              ; preds = %249, %246
  %252 = add i64 %140, 2, !dbg !2968
  call void @llvm.dbg.value(metadata i64 %252, metadata !2719, metadata !DIExpression()), !dbg !2771
  %253 = icmp ult i64 %252, %146, !dbg !2969
  br i1 %253, label %254, label %256, !dbg !2972

254:                                              ; preds = %251
  %255 = getelementptr inbounds i8, ptr %0, i64 %252, !dbg !2969
  store i8 34, ptr %255, align 1, !dbg !2969, !tbaa !1066
  br label %256, !dbg !2969

256:                                              ; preds = %254, %251
  %257 = add i64 %140, 3, !dbg !2972
  call void @llvm.dbg.value(metadata i64 %257, metadata !2719, metadata !DIExpression()), !dbg !2771
  %258 = icmp ult i64 %257, %146, !dbg !2973
  br i1 %258, label %259, label %261, !dbg !2976

259:                                              ; preds = %256
  %260 = getelementptr inbounds i8, ptr %0, i64 %257, !dbg !2973
  store i8 63, ptr %260, align 1, !dbg !2973, !tbaa !1066
  br label %261, !dbg !2973

261:                                              ; preds = %259, %256
  %262 = add i64 %140, 4, !dbg !2976
  call void @llvm.dbg.value(metadata i64 %262, metadata !2719, metadata !DIExpression()), !dbg !2771
  br label %480, !dbg !2977

263:                                              ; preds = %170
  br label %274, !dbg !2978

264:                                              ; preds = %170
  br label %274, !dbg !2979

265:                                              ; preds = %170
  br label %272, !dbg !2980

266:                                              ; preds = %170
  br label %272, !dbg !2981

267:                                              ; preds = %170
  br label %274, !dbg !2982

268:                                              ; preds = %170
  br i1 %133, label %269, label %270, !dbg !2983

269:                                              ; preds = %268
  br i1 %132, label %573, label %670, !dbg !2984

270:                                              ; preds = %268
  br i1 %125, label %271, label %491, !dbg !2987

271:                                              ; preds = %270
  br i1 %136, label %573, label %535, !dbg !2989

272:                                              ; preds = %170, %266, %265
  %273 = phi i8 [ 116, %266 ], [ 114, %265 ], [ 110, %170 ], !dbg !2990
  call void @llvm.dbg.label(metadata !2765), !dbg !2991
  br i1 %134, label %274, label %670, !dbg !2992

274:                                              ; preds = %170, %272, %267, %264, %263
  %275 = phi i8 [ %273, %272 ], [ 118, %267 ], [ 102, %264 ], [ 98, %263 ], [ 97, %170 ], !dbg !2990
  call void @llvm.dbg.label(metadata !2767), !dbg !2994
  br i1 %125, label %535, label %491, !dbg !2995

276:                                              ; preds = %170, %170
  switch i64 %171, label %480 [
    i64 -1, label %277
    i64 1, label %280
  ], !dbg !2996

277:                                              ; preds = %276
  %278 = load i8, ptr %21, align 1, !dbg !2997, !tbaa !1066
  %279 = icmp eq i8 %278, 0, !dbg !2999
  br i1 %279, label %280, label %480, !dbg !3000

280:                                              ; preds = %276, %277, %170, %170
  %281 = icmp eq i64 %145, 0, !dbg !3001
  br i1 %281, label %282, label %480, !dbg !3003

282:                                              ; preds = %280, %170
  call void @llvm.dbg.value(metadata i8 1, metadata !2739, metadata !DIExpression()), !dbg !2880
  br label %283, !dbg !3004

283:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %282
  %284 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %282 ], !dbg !2880
  call void @llvm.dbg.value(metadata i8 %284, metadata !2739, metadata !DIExpression()), !dbg !2880
  br i1 %134, label %480, label %670, !dbg !3005

285:                                              ; preds = %170
  call void @llvm.dbg.value(metadata i8 1, metadata !2725, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i8 1, metadata !2739, metadata !DIExpression()), !dbg !2880
  br i1 %133, label %286, label %480, !dbg !3007

286:                                              ; preds = %285
  br i1 %132, label %287, label %670, !dbg !3008

287:                                              ; preds = %286
  %288 = icmp eq i64 %146, 0, !dbg !3011
  %289 = icmp ne i64 %141, 0
  %290 = select i1 %288, i1 true, i1 %289, !dbg !3013
  %291 = select i1 %290, i64 %141, i64 %146, !dbg !3013
  %292 = select i1 %290, i64 %146, i64 0, !dbg !3013
  call void @llvm.dbg.value(metadata i64 %292, metadata !2710, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i64 %291, metadata !2720, metadata !DIExpression()), !dbg !2771
  %293 = icmp ult i64 %140, %292, !dbg !3014
  br i1 %293, label %294, label %296, !dbg !3017

294:                                              ; preds = %287
  %295 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !3014
  store i8 39, ptr %295, align 1, !dbg !3014, !tbaa !1066
  br label %296, !dbg !3014

296:                                              ; preds = %294, %287
  %297 = add i64 %140, 1, !dbg !3017
  call void @llvm.dbg.value(metadata i64 %297, metadata !2719, metadata !DIExpression()), !dbg !2771
  %298 = icmp ult i64 %297, %292, !dbg !3018
  br i1 %298, label %299, label %301, !dbg !3021

299:                                              ; preds = %296
  %300 = getelementptr inbounds i8, ptr %0, i64 %297, !dbg !3018
  store i8 92, ptr %300, align 1, !dbg !3018, !tbaa !1066
  br label %301, !dbg !3018

301:                                              ; preds = %299, %296
  %302 = add i64 %140, 2, !dbg !3021
  call void @llvm.dbg.value(metadata i64 %302, metadata !2719, metadata !DIExpression()), !dbg !2771
  %303 = icmp ult i64 %302, %292, !dbg !3022
  br i1 %303, label %304, label %306, !dbg !3025

304:                                              ; preds = %301
  %305 = getelementptr inbounds i8, ptr %0, i64 %302, !dbg !3022
  store i8 39, ptr %305, align 1, !dbg !3022, !tbaa !1066
  br label %306, !dbg !3022

306:                                              ; preds = %304, %301
  %307 = add i64 %140, 3, !dbg !3025
  call void @llvm.dbg.value(metadata i64 %307, metadata !2719, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i8 0, metadata !2727, metadata !DIExpression()), !dbg !2771
  br label %480, !dbg !3026

308:                                              ; preds = %170
  br i1 %17, label %309, label %319, !dbg !3027

309:                                              ; preds = %308
  call void @llvm.dbg.value(metadata i64 1, metadata !2741, metadata !DIExpression()), !dbg !3028
  %310 = tail call ptr @__ctype_b_loc() #43, !dbg !3029
  %311 = load ptr, ptr %310, align 8, !dbg !3029, !tbaa !983
  %312 = zext i8 %175 to i64
  %313 = getelementptr inbounds i16, ptr %311, i64 %312, !dbg !3029
  %314 = load i16, ptr %313, align 2, !dbg !3029, !tbaa !1098
  %315 = lshr i16 %314, 14, !dbg !3031
  %316 = trunc i16 %315 to i8, !dbg !3031
  %317 = and i8 %316, 1, !dbg !3031
  call void @llvm.dbg.value(metadata i8 %317, metadata !2744, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i64 %171, metadata !2712, metadata !DIExpression()), !dbg !2771
  %318 = icmp eq i8 %317, 0, !dbg !3032
  call void @llvm.dbg.value(metadata i1 %318, metadata !2739, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2880
  br label %368, !dbg !3033

319:                                              ; preds = %308
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #40, !dbg !3034
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2745, metadata !DIExpression()), !dbg !3035
  call void @llvm.dbg.value(metadata ptr %14, metadata !2802, metadata !DIExpression()), !dbg !3036
  call void @llvm.dbg.value(metadata ptr %14, metadata !2810, metadata !DIExpression()), !dbg !3038
  call void @llvm.dbg.value(metadata i32 0, metadata !2813, metadata !DIExpression()), !dbg !3038
  call void @llvm.dbg.value(metadata i64 8, metadata !2814, metadata !DIExpression()), !dbg !3038
  store i64 0, ptr %14, align 8, !dbg !3040
  call void @llvm.dbg.value(metadata i64 0, metadata !2741, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i8 1, metadata !2744, metadata !DIExpression()), !dbg !3028
  %320 = icmp eq i64 %171, -1, !dbg !3041
  br i1 %320, label %321, label %323, !dbg !3043

321:                                              ; preds = %319
  %322 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !3044
  call void @llvm.dbg.value(metadata i64 %322, metadata !2712, metadata !DIExpression()), !dbg !2771
  br label %323, !dbg !3045

323:                                              ; preds = %319, %321
  %324 = phi i64 [ %322, %321 ], [ %171, %319 ], !dbg !2880
  call void @llvm.dbg.value(metadata i64 %324, metadata !2712, metadata !DIExpression()), !dbg !2771
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #40, !dbg !3046
  %325 = sub i64 %324, %145, !dbg !3047
  call void @llvm.dbg.value(metadata ptr %15, metadata !2748, metadata !DIExpression(DW_OP_deref)), !dbg !3048
  %326 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %325, ptr noundef nonnull %14) #40, !dbg !3049
  call void @llvm.dbg.value(metadata i64 %326, metadata !2752, metadata !DIExpression()), !dbg !3048
  switch i64 %326, label %341 [
    i64 0, label %360
    i64 -1, label %330
    i64 -2, label %327
  ], !dbg !3050

327:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i64 0, metadata !2741, metadata !DIExpression()), !dbg !3028
  %328 = icmp ugt i64 %324, %145, !dbg !3051
  br i1 %328, label %331, label %329, !dbg !3053

329:                                              ; preds = %327
  call void @llvm.dbg.value(metadata i8 0, metadata !2744, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i64 0, metadata !2741, metadata !DIExpression()), !dbg !3028
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #40, !dbg !3054
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #40, !dbg !3055
  call void @llvm.dbg.value(metadata i64 %324, metadata !2712, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i1 true, metadata !2739, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2880
  br label %368, !dbg !3033

330:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i8 0, metadata !2744, metadata !DIExpression()), !dbg !3028
  br label %360, !dbg !3056

331:                                              ; preds = %327, %337
  %332 = phi i64 [ %339, %337 ], [ %145, %327 ]
  %333 = phi i64 [ %338, %337 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !2741, metadata !DIExpression()), !dbg !3028
  %334 = getelementptr inbounds i8, ptr %2, i64 %332, !dbg !3058
  %335 = load i8, ptr %334, align 1, !dbg !3058, !tbaa !1066
  %336 = icmp eq i8 %335, 0, !dbg !3053
  br i1 %336, label %363, label %337, !dbg !3059

337:                                              ; preds = %331
  %338 = add i64 %333, 1, !dbg !3060
  call void @llvm.dbg.value(metadata i64 %338, metadata !2741, metadata !DIExpression()), !dbg !3028
  %339 = add i64 %338, %145, !dbg !3061
  %340 = icmp eq i64 %338, %325, !dbg !3051
  br i1 %340, label %363, label %331, !dbg !3053, !llvm.loop !3062

341:                                              ; preds = %323
  %342 = icmp ugt i64 %326, 1
  %343 = and i1 %135, %342, !dbg !3063
  %344 = and i1 %343, %133, !dbg !3063
  call void @llvm.dbg.value(metadata i64 1, metadata !2753, metadata !DIExpression()), !dbg !3064
  br i1 %344, label %345, label %354, !dbg !3063

345:                                              ; preds = %341, %351
  %346 = phi i64 [ %352, %351 ], [ 1, %341 ]
  call void @llvm.dbg.value(metadata i64 %346, metadata !2753, metadata !DIExpression()), !dbg !3064
  %347 = add i64 %346, %145, !dbg !3065
  %348 = getelementptr inbounds i8, ptr %2, i64 %347, !dbg !3067
  %349 = load i8, ptr %348, align 1, !dbg !3067, !tbaa !1066
  %350 = sext i8 %349 to i32, !dbg !3067
  switch i32 %350, label %351 [
    i32 91, label %359
    i32 92, label %359
    i32 94, label %359
    i32 96, label %359
    i32 124, label %359
  ], !dbg !3068

351:                                              ; preds = %345
  %352 = add nuw i64 %346, 1, !dbg !3069
  call void @llvm.dbg.value(metadata i64 %352, metadata !2753, metadata !DIExpression()), !dbg !3064
  %353 = icmp eq i64 %352, %326, !dbg !3070
  br i1 %353, label %354, label %345, !dbg !3071, !llvm.loop !3072

354:                                              ; preds = %351, %341
  %355 = load i32, ptr %15, align 4, !dbg !3074, !tbaa !1057
  call void @llvm.dbg.value(metadata i32 %355, metadata !2748, metadata !DIExpression()), !dbg !3048
  call void @llvm.dbg.value(metadata i32 %355, metadata !3076, metadata !DIExpression()), !dbg !3084
  %356 = call i32 @iswprint(i32 noundef %355) #40, !dbg !3086
  %357 = icmp ne i32 %356, 0, !dbg !3087
  %358 = zext i1 %357 to i8, !dbg !3088
  call void @llvm.dbg.value(metadata i8 %358, metadata !2744, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i64 %326, metadata !2741, metadata !DIExpression()), !dbg !3028
  br label %363, !dbg !3089

359:                                              ; preds = %345, %345, %345, %345, %345
  call void @llvm.dbg.value(metadata i8 1, metadata !2744, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i64 0, metadata !2741, metadata !DIExpression()), !dbg !3028
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #40, !dbg !3054
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #40, !dbg !3055
  br label %670

360:                                              ; preds = %323, %330
  %361 = phi i1 [ false, %323 ], [ true, %330 ]
  %362 = phi i8 [ 1, %323 ], [ 0, %330 ]
  call void @llvm.dbg.value(metadata i8 %362, metadata !2744, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i64 0, metadata !2741, metadata !DIExpression()), !dbg !3028
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #40, !dbg !3054
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #40, !dbg !3055
  call void @llvm.dbg.value(metadata i64 %324, metadata !2712, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i1 %361, metadata !2739, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2880
  br label %368, !dbg !3033

363:                                              ; preds = %331, %337, %354
  %364 = phi i64 [ %326, %354 ], [ %333, %331 ], [ %325, %337 ]
  %365 = phi i8 [ %358, %354 ], [ 0, %337 ], [ 0, %331 ]
  call void @llvm.dbg.value(metadata i8 %365, metadata !2744, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i64 %364, metadata !2741, metadata !DIExpression()), !dbg !3028
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #40, !dbg !3054
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #40, !dbg !3055
  call void @llvm.dbg.value(metadata i64 %324, metadata !2712, metadata !DIExpression()), !dbg !2771
  %366 = icmp eq i8 %365, 0, !dbg !3032
  call void @llvm.dbg.value(metadata i1 %366, metadata !2739, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2880
  %367 = icmp ugt i64 %364, 1, !dbg !3090
  br i1 %367, label %374, label %368, !dbg !3033

368:                                              ; preds = %329, %360, %309, %363
  %369 = phi i1 [ %318, %309 ], [ %366, %363 ], [ %361, %360 ], [ true, %329 ]
  %370 = phi i8 [ %317, %309 ], [ %365, %363 ], [ %362, %360 ], [ 0, %329 ]
  %371 = phi i64 [ 1, %309 ], [ %364, %363 ], [ 0, %360 ], [ 0, %329 ]
  %372 = phi i64 [ %171, %309 ], [ %324, %363 ], [ %324, %360 ], [ %324, %329 ]
  %373 = select i1 %125, i1 %369, i1 false, !dbg !3091
  br i1 %373, label %374, label %480, !dbg !3091

374:                                              ; preds = %368, %363
  %375 = phi i1 [ true, %368 ], [ %366, %363 ]
  %376 = phi i8 [ %370, %368 ], [ %365, %363 ]
  %377 = phi i64 [ %371, %368 ], [ %364, %363 ]
  %378 = phi i64 [ %372, %368 ], [ %324, %363 ]
  %379 = add i64 %377, %145, !dbg !3092
  call void @llvm.dbg.value(metadata i64 %379, metadata !2761, metadata !DIExpression()), !dbg !3093
  %380 = select i1 %125, i1 %375, i1 false
  br label %381, !dbg !3094

381:                                              ; preds = %474, %374
  %382 = phi i64 [ %140, %374 ], [ %475, %474 ], !dbg !2771
  %383 = phi i8 [ %144, %374 ], [ %470, %474 ], !dbg !2872
  %384 = phi i64 [ %145, %374 ], [ %449, %474 ], !dbg !2870
  %385 = phi i8 [ %173, %374 ], [ %446, %474 ], !dbg !2880
  %386 = phi i8 [ 0, %374 ], [ %447, %474 ], !dbg !3095
  %387 = phi i8 [ %175, %374 ], [ %477, %474 ], !dbg !2880
  call void @llvm.dbg.value(metadata i8 %387, metadata !2740, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i8 %386, metadata !2738, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i8 %385, metadata !2735, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i64 %384, metadata !2733, metadata !DIExpression()), !dbg !2870
  call void @llvm.dbg.value(metadata i8 %383, metadata !2727, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i64 %382, metadata !2719, metadata !DIExpression()), !dbg !2771
  br i1 %380, label %388, label %434, !dbg !3096

388:                                              ; preds = %381
  br i1 %132, label %389, label %679, !dbg !3101

389:                                              ; preds = %388
  call void @llvm.dbg.value(metadata i8 1, metadata !2738, metadata !DIExpression()), !dbg !2880
  %390 = and i8 %383, 1, !dbg !3104
  %391 = icmp eq i8 %390, 0, !dbg !3104
  %392 = select i1 %133, i1 %391, i1 false, !dbg !3104
  br i1 %392, label %393, label %409, !dbg !3104

393:                                              ; preds = %389
  %394 = icmp ult i64 %382, %146, !dbg !3106
  br i1 %394, label %395, label %397, !dbg !3110

395:                                              ; preds = %393
  %396 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !3106
  store i8 39, ptr %396, align 1, !dbg !3106, !tbaa !1066
  br label %397, !dbg !3106

397:                                              ; preds = %395, %393
  %398 = add i64 %382, 1, !dbg !3110
  call void @llvm.dbg.value(metadata i64 %398, metadata !2719, metadata !DIExpression()), !dbg !2771
  %399 = icmp ult i64 %398, %146, !dbg !3111
  br i1 %399, label %400, label %402, !dbg !3114

400:                                              ; preds = %397
  %401 = getelementptr inbounds i8, ptr %0, i64 %398, !dbg !3111
  store i8 36, ptr %401, align 1, !dbg !3111, !tbaa !1066
  br label %402, !dbg !3111

402:                                              ; preds = %400, %397
  %403 = add i64 %382, 2, !dbg !3114
  call void @llvm.dbg.value(metadata i64 %403, metadata !2719, metadata !DIExpression()), !dbg !2771
  %404 = icmp ult i64 %403, %146, !dbg !3115
  br i1 %404, label %405, label %407, !dbg !3118

405:                                              ; preds = %402
  %406 = getelementptr inbounds i8, ptr %0, i64 %403, !dbg !3115
  store i8 39, ptr %406, align 1, !dbg !3115, !tbaa !1066
  br label %407, !dbg !3115

407:                                              ; preds = %405, %402
  %408 = add i64 %382, 3, !dbg !3118
  call void @llvm.dbg.value(metadata i64 %408, metadata !2719, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i8 1, metadata !2727, metadata !DIExpression()), !dbg !2771
  br label %409, !dbg !3119

409:                                              ; preds = %389, %407
  %410 = phi i64 [ %408, %407 ], [ %382, %389 ], !dbg !2771
  %411 = phi i8 [ 1, %407 ], [ %383, %389 ], !dbg !2771
  call void @llvm.dbg.value(metadata i8 %411, metadata !2727, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i64 %410, metadata !2719, metadata !DIExpression()), !dbg !2771
  %412 = icmp ult i64 %410, %146, !dbg !3120
  br i1 %412, label %413, label %415, !dbg !3123

413:                                              ; preds = %409
  %414 = getelementptr inbounds i8, ptr %0, i64 %410, !dbg !3120
  store i8 92, ptr %414, align 1, !dbg !3120, !tbaa !1066
  br label %415, !dbg !3120

415:                                              ; preds = %413, %409
  %416 = add i64 %410, 1, !dbg !3123
  call void @llvm.dbg.value(metadata i64 %416, metadata !2719, metadata !DIExpression()), !dbg !2771
  %417 = icmp ult i64 %416, %146, !dbg !3124
  br i1 %417, label %418, label %422, !dbg !3127

418:                                              ; preds = %415
  %419 = lshr i8 %387, 6
  %420 = or i8 %419, 48, !dbg !3124
  %421 = getelementptr inbounds i8, ptr %0, i64 %416, !dbg !3124
  store i8 %420, ptr %421, align 1, !dbg !3124, !tbaa !1066
  br label %422, !dbg !3124

422:                                              ; preds = %418, %415
  %423 = add i64 %410, 2, !dbg !3127
  call void @llvm.dbg.value(metadata i64 %423, metadata !2719, metadata !DIExpression()), !dbg !2771
  %424 = icmp ult i64 %423, %146, !dbg !3128
  br i1 %424, label %425, label %430, !dbg !3131

425:                                              ; preds = %422
  %426 = lshr i8 %387, 3
  %427 = and i8 %426, 7, !dbg !3128
  %428 = or i8 %427, 48, !dbg !3128
  %429 = getelementptr inbounds i8, ptr %0, i64 %423, !dbg !3128
  store i8 %428, ptr %429, align 1, !dbg !3128, !tbaa !1066
  br label %430, !dbg !3128

430:                                              ; preds = %425, %422
  %431 = add i64 %410, 3, !dbg !3131
  call void @llvm.dbg.value(metadata i64 %431, metadata !2719, metadata !DIExpression()), !dbg !2771
  %432 = and i8 %387, 7, !dbg !3132
  %433 = or i8 %432, 48, !dbg !3133
  call void @llvm.dbg.value(metadata i8 %433, metadata !2740, metadata !DIExpression()), !dbg !2880
  br label %443, !dbg !3134

434:                                              ; preds = %381
  %435 = and i8 %385, 1, !dbg !3135
  %436 = icmp eq i8 %435, 0, !dbg !3135
  br i1 %436, label %443, label %437, !dbg !3137

437:                                              ; preds = %434
  %438 = icmp ult i64 %382, %146, !dbg !3138
  br i1 %438, label %439, label %441, !dbg !3142

439:                                              ; preds = %437
  %440 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !3138
  store i8 92, ptr %440, align 1, !dbg !3138, !tbaa !1066
  br label %441, !dbg !3138

441:                                              ; preds = %439, %437
  %442 = add i64 %382, 1, !dbg !3142
  call void @llvm.dbg.value(metadata i64 %442, metadata !2719, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i8 0, metadata !2735, metadata !DIExpression()), !dbg !2880
  br label %443, !dbg !3143

443:                                              ; preds = %434, %441, %430
  %444 = phi i64 [ %442, %441 ], [ %382, %434 ], [ %431, %430 ], !dbg !2771
  %445 = phi i8 [ %383, %441 ], [ %383, %434 ], [ %411, %430 ], !dbg !2872
  %446 = phi i8 [ 0, %441 ], [ %385, %434 ], [ %385, %430 ], !dbg !2880
  %447 = phi i8 [ %386, %441 ], [ %386, %434 ], [ 1, %430 ], !dbg !2880
  %448 = phi i8 [ %387, %441 ], [ %387, %434 ], [ %433, %430 ], !dbg !2880
  call void @llvm.dbg.value(metadata i8 %448, metadata !2740, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i8 %447, metadata !2738, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i8 %446, metadata !2735, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i8 %445, metadata !2727, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i64 %444, metadata !2719, metadata !DIExpression()), !dbg !2771
  %449 = add i64 %384, 1, !dbg !3144
  %450 = icmp ugt i64 %379, %449, !dbg !3146
  br i1 %450, label %451, label %478, !dbg !3147

451:                                              ; preds = %443
  %452 = and i8 %445, 1, !dbg !3148
  %453 = icmp ne i8 %452, 0, !dbg !3148
  %454 = and i8 %447, 1, !dbg !3148
  %455 = icmp eq i8 %454, 0, !dbg !3148
  %456 = select i1 %453, i1 %455, i1 false, !dbg !3148
  br i1 %456, label %457, label %468, !dbg !3148

457:                                              ; preds = %451
  %458 = icmp ult i64 %444, %146, !dbg !3151
  br i1 %458, label %459, label %461, !dbg !3155

459:                                              ; preds = %457
  %460 = getelementptr inbounds i8, ptr %0, i64 %444, !dbg !3151
  store i8 39, ptr %460, align 1, !dbg !3151, !tbaa !1066
  br label %461, !dbg !3151

461:                                              ; preds = %459, %457
  %462 = add i64 %444, 1, !dbg !3155
  call void @llvm.dbg.value(metadata i64 %462, metadata !2719, metadata !DIExpression()), !dbg !2771
  %463 = icmp ult i64 %462, %146, !dbg !3156
  br i1 %463, label %464, label %466, !dbg !3159

464:                                              ; preds = %461
  %465 = getelementptr inbounds i8, ptr %0, i64 %462, !dbg !3156
  store i8 39, ptr %465, align 1, !dbg !3156, !tbaa !1066
  br label %466, !dbg !3156

466:                                              ; preds = %464, %461
  %467 = add i64 %444, 2, !dbg !3159
  call void @llvm.dbg.value(metadata i64 %467, metadata !2719, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i8 0, metadata !2727, metadata !DIExpression()), !dbg !2771
  br label %468, !dbg !3160

468:                                              ; preds = %451, %466
  %469 = phi i64 [ %467, %466 ], [ %444, %451 ], !dbg !3161
  %470 = phi i8 [ 0, %466 ], [ %445, %451 ], !dbg !2771
  call void @llvm.dbg.value(metadata i8 %470, metadata !2727, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i64 %469, metadata !2719, metadata !DIExpression()), !dbg !2771
  %471 = icmp ult i64 %469, %146, !dbg !3162
  br i1 %471, label %472, label %474, !dbg !3165

472:                                              ; preds = %468
  %473 = getelementptr inbounds i8, ptr %0, i64 %469, !dbg !3162
  store i8 %448, ptr %473, align 1, !dbg !3162, !tbaa !1066
  br label %474, !dbg !3162

474:                                              ; preds = %472, %468
  %475 = add i64 %469, 1, !dbg !3165
  call void @llvm.dbg.value(metadata i64 %475, metadata !2719, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i64 %449, metadata !2733, metadata !DIExpression()), !dbg !2870
  %476 = getelementptr inbounds i8, ptr %2, i64 %449, !dbg !3166
  %477 = load i8, ptr %476, align 1, !dbg !3166, !tbaa !1066
  call void @llvm.dbg.value(metadata i8 %477, metadata !2740, metadata !DIExpression()), !dbg !2880
  br label %381, !dbg !3167, !llvm.loop !3168

478:                                              ; preds = %443
  %479 = and i8 %376, 1, !dbg !2880
  call void @llvm.dbg.value(metadata i8 %448, metadata !2740, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i8 %479, metadata !2739, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i8 %447, metadata !2738, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i8 %446, metadata !2735, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i64 %384, metadata !2733, metadata !DIExpression()), !dbg !2870
  call void @llvm.dbg.value(metadata i8 %445, metadata !2727, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i64 %444, metadata !2719, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i64 %378, metadata !2712, metadata !DIExpression()), !dbg !2771
  br label %573

480:                                              ; preds = %368, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %276, %206, %209, %223, %285, %306, %283, %280, %277, %226, %227, %261, %237, %232, %229, %228
  %481 = phi i64 [ %171, %306 ], [ %171, %285 ], [ %171, %283 ], [ %171, %280 ], [ -1, %277 ], [ %171, %226 ], [ %171, %237 ], [ %171, %261 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %276 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %372, %368 ], !dbg !3171
  %482 = phi i64 [ %307, %306 ], [ %140, %285 ], [ %140, %283 ], [ %140, %280 ], [ %140, %277 ], [ %140, %226 ], [ %140, %237 ], [ %262, %261 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %276 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %368 ], !dbg !2771
  %483 = phi i64 [ %291, %306 ], [ %141, %285 ], [ %141, %283 ], [ %141, %280 ], [ %141, %277 ], [ %141, %226 ], [ %141, %237 ], [ %141, %261 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %276 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %368 ], !dbg !2776
  %484 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %142, %283 ], [ %142, %280 ], [ %142, %277 ], [ %142, %226 ], [ %142, %237 ], [ %142, %261 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %276 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %368 ], !dbg !2771
  %485 = phi i8 [ 0, %306 ], [ %144, %285 ], [ %144, %283 ], [ %144, %280 ], [ %144, %277 ], [ %144, %226 ], [ %144, %237 ], [ %144, %261 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %276 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %368 ], !dbg !2771
  %486 = phi i64 [ %145, %306 ], [ %145, %285 ], [ %145, %283 ], [ %145, %280 ], [ %145, %277 ], [ %145, %226 ], [ %145, %237 ], [ %230, %261 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %276 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %368 ], !dbg !2870
  %487 = phi i8 [ 0, %306 ], [ 0, %285 ], [ 0, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %276 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %368 ], !dbg !2880
  %488 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %284, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %276 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %370, %368 ], !dbg !2880
  %489 = phi i8 [ 39, %306 ], [ 39, %285 ], [ %175, %283 ], [ %175, %280 ], [ %175, %277 ], [ 63, %226 ], [ 63, %237 ], [ %239, %261 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %276 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %368 ], !dbg !2880
  %490 = phi i64 [ %292, %306 ], [ %146, %285 ], [ %146, %283 ], [ %146, %280 ], [ %146, %277 ], [ %146, %226 ], [ %146, %237 ], [ %146, %261 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %276 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %368 ]
  call void @llvm.dbg.value(metadata i64 %490, metadata !2710, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i8 %489, metadata !2740, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i8 %488, metadata !2739, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i8 %487, metadata !2738, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i8 %173, metadata !2735, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i64 %486, metadata !2733, metadata !DIExpression()), !dbg !2870
  call void @llvm.dbg.value(metadata i8 %485, metadata !2727, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i8 %484, metadata !2725, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i64 %483, metadata !2720, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i64 %482, metadata !2719, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i64 %481, metadata !2712, metadata !DIExpression()), !dbg !2771
  br i1 %127, label %502, label %491, !dbg !3172

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
  br i1 %137, label %503, label %524, !dbg !3174

502:                                              ; preds = %480
  br i1 %27, label %524, label %503, !dbg !3175

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
  %514 = lshr i8 %505, 5, !dbg !3176
  %515 = zext i8 %514 to i64, !dbg !3176
  %516 = getelementptr inbounds i32, ptr %6, i64 %515, !dbg !3177
  %517 = load i32, ptr %516, align 4, !dbg !3177, !tbaa !1057
  %518 = and i8 %505, 31, !dbg !3178
  %519 = zext i8 %518 to i32, !dbg !3178
  %520 = shl nuw i32 1, %519, !dbg !3179
  %521 = and i32 %517, %520, !dbg !3179
  %522 = icmp eq i32 %521, 0, !dbg !3179
  %523 = and i1 %172, %522, !dbg !3180
  br i1 %523, label %573, label %535, !dbg !3180

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
  br i1 %172, label %573, label %535, !dbg !3181

535:                                              ; preds = %271, %274, %524, %503
  %536 = phi i64 [ %513, %503 ], [ %534, %524 ], [ %171, %274 ], [ %171, %271 ], !dbg !3171
  %537 = phi i64 [ %512, %503 ], [ %533, %524 ], [ %140, %274 ], [ %140, %271 ], !dbg !2771
  %538 = phi i64 [ %511, %503 ], [ %532, %524 ], [ %141, %274 ], [ %141, %271 ], !dbg !2776
  %539 = phi i8 [ %510, %503 ], [ %531, %524 ], [ %142, %274 ], [ %142, %271 ], !dbg !2780
  %540 = phi i8 [ %509, %503 ], [ %530, %524 ], [ %144, %274 ], [ %144, %271 ], !dbg !2872
  %541 = phi i64 [ %508, %503 ], [ %529, %524 ], [ %145, %274 ], [ %145, %271 ], !dbg !3182
  %542 = phi i8 [ %506, %503 ], [ %527, %524 ], [ 0, %274 ], [ 0, %271 ], !dbg !2880
  %543 = phi i8 [ %505, %503 ], [ %526, %524 ], [ %275, %274 ], [ 92, %271 ], !dbg !2880
  %544 = phi i64 [ %504, %503 ], [ %525, %524 ], [ %146, %274 ], [ %146, %271 ]
  call void @llvm.dbg.value(metadata i64 %544, metadata !2710, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i8 %543, metadata !2740, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i8 %542, metadata !2739, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i64 %541, metadata !2733, metadata !DIExpression()), !dbg !2870
  call void @llvm.dbg.value(metadata i8 %540, metadata !2727, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i8 %539, metadata !2725, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i64 %538, metadata !2720, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i64 %537, metadata !2719, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i64 %536, metadata !2712, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.label(metadata !2768), !dbg !3183
  br i1 %132, label %545, label %674, !dbg !3184

545:                                              ; preds = %535
  call void @llvm.dbg.value(metadata i8 1, metadata !2738, metadata !DIExpression()), !dbg !2880
  %546 = and i8 %540, 1, !dbg !3186
  %547 = icmp eq i8 %546, 0, !dbg !3186
  %548 = select i1 %133, i1 %547, i1 false, !dbg !3186
  br i1 %548, label %549, label %565, !dbg !3186

549:                                              ; preds = %545
  %550 = icmp ult i64 %537, %544, !dbg !3188
  br i1 %550, label %551, label %553, !dbg !3192

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, ptr %0, i64 %537, !dbg !3188
  store i8 39, ptr %552, align 1, !dbg !3188, !tbaa !1066
  br label %553, !dbg !3188

553:                                              ; preds = %551, %549
  %554 = add i64 %537, 1, !dbg !3192
  call void @llvm.dbg.value(metadata i64 %554, metadata !2719, metadata !DIExpression()), !dbg !2771
  %555 = icmp ult i64 %554, %544, !dbg !3193
  br i1 %555, label %556, label %558, !dbg !3196

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, ptr %0, i64 %554, !dbg !3193
  store i8 36, ptr %557, align 1, !dbg !3193, !tbaa !1066
  br label %558, !dbg !3193

558:                                              ; preds = %556, %553
  %559 = add i64 %537, 2, !dbg !3196
  call void @llvm.dbg.value(metadata i64 %559, metadata !2719, metadata !DIExpression()), !dbg !2771
  %560 = icmp ult i64 %559, %544, !dbg !3197
  br i1 %560, label %561, label %563, !dbg !3200

561:                                              ; preds = %558
  %562 = getelementptr inbounds i8, ptr %0, i64 %559, !dbg !3197
  store i8 39, ptr %562, align 1, !dbg !3197, !tbaa !1066
  br label %563, !dbg !3197

563:                                              ; preds = %561, %558
  %564 = add i64 %537, 3, !dbg !3200
  call void @llvm.dbg.value(metadata i64 %564, metadata !2719, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i8 1, metadata !2727, metadata !DIExpression()), !dbg !2771
  br label %565, !dbg !3201

565:                                              ; preds = %545, %563
  %566 = phi i64 [ %564, %563 ], [ %537, %545 ], !dbg !2880
  %567 = phi i8 [ 1, %563 ], [ %540, %545 ], !dbg !2771
  call void @llvm.dbg.value(metadata i8 %567, metadata !2727, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i64 %566, metadata !2719, metadata !DIExpression()), !dbg !2771
  %568 = icmp ult i64 %566, %544, !dbg !3202
  br i1 %568, label %569, label %571, !dbg !3205

569:                                              ; preds = %565
  %570 = getelementptr inbounds i8, ptr %0, i64 %566, !dbg !3202
  store i8 92, ptr %570, align 1, !dbg !3202, !tbaa !1066
  br label %571, !dbg !3202

571:                                              ; preds = %565, %569
  %572 = add i64 %566, 1, !dbg !3205
  call void @llvm.dbg.value(metadata i64 %544, metadata !2710, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i8 %543, metadata !2740, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i8 %542, metadata !2739, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i8 1, metadata !2738, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i64 %541, metadata !2733, metadata !DIExpression()), !dbg !2870
  call void @llvm.dbg.value(metadata i8 %567, metadata !2727, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i8 %539, metadata !2725, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i64 %538, metadata !2720, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i64 %572, metadata !2719, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i64 %536, metadata !2712, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.label(metadata !2769), !dbg !3206
  br label %600, !dbg !3207

573:                                              ; preds = %478, %503, %269, %271, %524
  %574 = phi i64 [ %378, %478 ], [ %534, %524 ], [ %171, %269 ], [ %171, %271 ], [ %513, %503 ], !dbg !3171
  %575 = phi i64 [ %444, %478 ], [ %533, %524 ], [ %140, %269 ], [ %140, %271 ], [ %512, %503 ], !dbg !2771
  %576 = phi i64 [ %141, %478 ], [ %532, %524 ], [ %141, %269 ], [ %141, %271 ], [ %511, %503 ], !dbg !2776
  %577 = phi i8 [ %142, %478 ], [ %531, %524 ], [ %142, %269 ], [ %142, %271 ], [ %510, %503 ], !dbg !2780
  %578 = phi i8 [ %445, %478 ], [ %530, %524 ], [ %144, %269 ], [ %144, %271 ], [ %509, %503 ], !dbg !2872
  %579 = phi i64 [ %384, %478 ], [ %529, %524 ], [ %145, %269 ], [ %145, %271 ], [ %508, %503 ], !dbg !3182
  %580 = phi i8 [ %447, %478 ], [ %528, %524 ], [ 0, %269 ], [ 0, %271 ], [ %507, %503 ], !dbg !2880
  %581 = phi i8 [ %479, %478 ], [ %527, %524 ], [ 0, %269 ], [ 0, %271 ], [ %506, %503 ], !dbg !2880
  %582 = phi i8 [ %448, %478 ], [ %526, %524 ], [ 92, %269 ], [ 92, %271 ], [ %505, %503 ], !dbg !3210
  %583 = phi i64 [ %146, %478 ], [ %525, %524 ], [ %146, %269 ], [ %146, %271 ], [ %504, %503 ]
  call void @llvm.dbg.value(metadata i64 %583, metadata !2710, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i8 %582, metadata !2740, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i8 %581, metadata !2739, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i8 %580, metadata !2738, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i64 %579, metadata !2733, metadata !DIExpression()), !dbg !2870
  call void @llvm.dbg.value(metadata i8 %578, metadata !2727, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i8 %577, metadata !2725, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i64 %576, metadata !2720, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i64 %575, metadata !2719, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i64 %574, metadata !2712, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.label(metadata !2769), !dbg !3206
  %584 = and i8 %578, 1, !dbg !3207
  %585 = icmp ne i8 %584, 0, !dbg !3207
  %586 = and i8 %580, 1, !dbg !3207
  %587 = icmp eq i8 %586, 0, !dbg !3207
  %588 = select i1 %585, i1 %587, i1 false, !dbg !3207
  br i1 %588, label %589, label %600, !dbg !3207

589:                                              ; preds = %573
  %590 = icmp ult i64 %575, %583, !dbg !3211
  br i1 %590, label %591, label %593, !dbg !3215

591:                                              ; preds = %589
  %592 = getelementptr inbounds i8, ptr %0, i64 %575, !dbg !3211
  store i8 39, ptr %592, align 1, !dbg !3211, !tbaa !1066
  br label %593, !dbg !3211

593:                                              ; preds = %591, %589
  %594 = add i64 %575, 1, !dbg !3215
  call void @llvm.dbg.value(metadata i64 %594, metadata !2719, metadata !DIExpression()), !dbg !2771
  %595 = icmp ult i64 %594, %583, !dbg !3216
  br i1 %595, label %596, label %598, !dbg !3219

596:                                              ; preds = %593
  %597 = getelementptr inbounds i8, ptr %0, i64 %594, !dbg !3216
  store i8 39, ptr %597, align 1, !dbg !3216, !tbaa !1066
  br label %598, !dbg !3216

598:                                              ; preds = %596, %593
  %599 = add i64 %575, 2, !dbg !3219
  call void @llvm.dbg.value(metadata i64 %599, metadata !2719, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i8 0, metadata !2727, metadata !DIExpression()), !dbg !2771
  br label %600, !dbg !3220

600:                                              ; preds = %571, %573, %598
  %601 = phi i64 [ %583, %598 ], [ %583, %573 ], [ %544, %571 ]
  %602 = phi i8 [ %582, %598 ], [ %582, %573 ], [ %543, %571 ]
  %603 = phi i8 [ %581, %598 ], [ %581, %573 ], [ %542, %571 ]
  %604 = phi i64 [ %579, %598 ], [ %579, %573 ], [ %541, %571 ]
  %605 = phi i8 [ %577, %598 ], [ %577, %573 ], [ %539, %571 ]
  %606 = phi i64 [ %576, %598 ], [ %576, %573 ], [ %538, %571 ]
  %607 = phi i64 [ %574, %598 ], [ %574, %573 ], [ %536, %571 ]
  %608 = phi i64 [ %599, %598 ], [ %575, %573 ], [ %572, %571 ], !dbg !2880
  %609 = phi i8 [ 0, %598 ], [ %578, %573 ], [ %567, %571 ], !dbg !2771
  call void @llvm.dbg.value(metadata i8 %609, metadata !2727, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i64 %608, metadata !2719, metadata !DIExpression()), !dbg !2771
  %610 = icmp ult i64 %608, %601, !dbg !3221
  br i1 %610, label %611, label %613, !dbg !3224

611:                                              ; preds = %600
  %612 = getelementptr inbounds i8, ptr %0, i64 %608, !dbg !3221
  store i8 %602, ptr %612, align 1, !dbg !3221, !tbaa !1066
  br label %613, !dbg !3221

613:                                              ; preds = %611, %600
  %614 = add i64 %608, 1, !dbg !3224
  call void @llvm.dbg.value(metadata i64 %614, metadata !2719, metadata !DIExpression()), !dbg !2771
  %615 = icmp eq i8 %603, 0, !dbg !3225
  %616 = select i1 %615, i8 0, i8 %143, !dbg !3227
  call void @llvm.dbg.value(metadata i8 %616, metadata !2726, metadata !DIExpression()), !dbg !2771
  br label %617, !dbg !3228

617:                                              ; preds = %225, %613
  %618 = phi i64 [ %607, %613 ], [ %171, %225 ], !dbg !3171
  %619 = phi i64 [ %614, %613 ], [ %140, %225 ], !dbg !2771
  %620 = phi i64 [ %606, %613 ], [ %141, %225 ], !dbg !2776
  %621 = phi i8 [ %605, %613 ], [ %142, %225 ], !dbg !2780
  %622 = phi i8 [ %616, %613 ], [ %143, %225 ], !dbg !2781
  %623 = phi i8 [ %609, %613 ], [ %144, %225 ], !dbg !2872
  %624 = phi i64 [ %604, %613 ], [ %145, %225 ], !dbg !3182
  %625 = phi i64 [ %601, %613 ], [ %146, %225 ]
  call void @llvm.dbg.value(metadata i64 %625, metadata !2710, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i64 %624, metadata !2733, metadata !DIExpression()), !dbg !2870
  call void @llvm.dbg.value(metadata i8 %623, metadata !2727, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i8 %622, metadata !2726, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i8 %621, metadata !2725, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i64 %620, metadata !2720, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i64 %619, metadata !2719, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i64 %618, metadata !2712, metadata !DIExpression()), !dbg !2771
  %626 = add i64 %624, 1, !dbg !3229
  call void @llvm.dbg.value(metadata i64 %626, metadata !2733, metadata !DIExpression()), !dbg !2870
  br label %138, !dbg !3230, !llvm.loop !3231

627:                                              ; preds = %152, %148
  call void @llvm.dbg.value(metadata i64 %146, metadata !2710, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i8 %143, metadata !2726, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i8 %142, metadata !2725, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i64 %141, metadata !2720, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i64 %140, metadata !2719, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i64 %139, metadata !2712, metadata !DIExpression()), !dbg !2771
  %628 = icmp eq i64 %140, 0, !dbg !3233
  %629 = and i1 %133, %628, !dbg !3235
  %630 = xor i1 %629, true, !dbg !3235
  %631 = select i1 %630, i1 true, i1 %132, !dbg !3235
  br i1 %631, label %632, label %670, !dbg !3235

632:                                              ; preds = %627
  %633 = select i1 %133, i1 %132, i1 false, !dbg !3236
  %634 = and i8 %142, 1
  %635 = icmp ne i8 %634, 0
  %636 = select i1 %633, i1 %635, i1 false, !dbg !3236
  br i1 %636, label %637, label %646, !dbg !3236

637:                                              ; preds = %632
  %638 = and i8 %143, 1, !dbg !3238
  %639 = icmp eq i8 %638, 0, !dbg !3238
  br i1 %639, label %642, label %640, !dbg !3241

640:                                              ; preds = %637
  %641 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %117, ptr noundef %118), !dbg !3242
  br label %694, !dbg !3243

642:                                              ; preds = %637
  %643 = icmp eq i64 %146, 0, !dbg !3244
  %644 = icmp ne i64 %141, 0
  %645 = select i1 %643, i1 %644, i1 false, !dbg !3246
  br i1 %645, label %28, label %646, !dbg !3246

646:                                              ; preds = %642, %632
  %647 = phi i1 [ true, %642 ], [ %132, %632 ]
  %648 = icmp ne ptr %120, null, !dbg !3247
  %649 = select i1 %648, i1 %647, i1 false, !dbg !3249
  br i1 %649, label %650, label %665, !dbg !3249

650:                                              ; preds = %646
  call void @llvm.dbg.value(metadata ptr %120, metadata !2721, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i64 %140, metadata !2719, metadata !DIExpression()), !dbg !2771
  %651 = load i8, ptr %120, align 1, !dbg !3250, !tbaa !1066
  %652 = icmp eq i8 %651, 0, !dbg !3253
  br i1 %652, label %665, label %653, !dbg !3253

653:                                              ; preds = %650, %660
  %654 = phi i8 [ %663, %660 ], [ %651, %650 ]
  %655 = phi ptr [ %662, %660 ], [ %120, %650 ]
  %656 = phi i64 [ %661, %660 ], [ %140, %650 ]
  call void @llvm.dbg.value(metadata ptr %655, metadata !2721, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i64 %656, metadata !2719, metadata !DIExpression()), !dbg !2771
  %657 = icmp ult i64 %656, %146, !dbg !3254
  br i1 %657, label %658, label %660, !dbg !3257

658:                                              ; preds = %653
  %659 = getelementptr inbounds i8, ptr %0, i64 %656, !dbg !3254
  store i8 %654, ptr %659, align 1, !dbg !3254, !tbaa !1066
  br label %660, !dbg !3254

660:                                              ; preds = %658, %653
  %661 = add i64 %656, 1, !dbg !3257
  call void @llvm.dbg.value(metadata i64 %661, metadata !2719, metadata !DIExpression()), !dbg !2771
  %662 = getelementptr inbounds i8, ptr %655, i64 1, !dbg !3258
  call void @llvm.dbg.value(metadata ptr %662, metadata !2721, metadata !DIExpression()), !dbg !2771
  %663 = load i8, ptr %662, align 1, !dbg !3250, !tbaa !1066
  %664 = icmp eq i8 %663, 0, !dbg !3253
  br i1 %664, label %665, label %653, !dbg !3253, !llvm.loop !3259

665:                                              ; preds = %660, %650, %646
  %666 = phi i64 [ %140, %646 ], [ %140, %650 ], [ %661, %660 ], !dbg !2853
  call void @llvm.dbg.value(metadata i64 %666, metadata !2719, metadata !DIExpression()), !dbg !2771
  %667 = icmp ult i64 %666, %146, !dbg !3261
  br i1 %667, label %668, label %694, !dbg !3263

668:                                              ; preds = %665
  %669 = getelementptr inbounds i8, ptr %0, i64 %666, !dbg !3264
  store i8 0, ptr %669, align 1, !dbg !3265, !tbaa !1066
  br label %694, !dbg !3264

670:                                              ; preds = %627, %227, %269, %272, %283, %286, %359
  %671 = phi i64 [ %324, %359 ], [ %171, %286 ], [ %171, %283 ], [ %171, %272 ], [ %171, %269 ], [ %171, %227 ], [ %139, %627 ]
  call void @llvm.dbg.label(metadata !2770), !dbg !3266
  %672 = icmp eq i8 %124, 0, !dbg !3267
  %673 = select i1 %672, i32 2, i32 4, !dbg !3267
  br label %684, !dbg !3267

674:                                              ; preds = %177, %535
  %675 = phi i64 [ %146, %177 ], [ %544, %535 ]
  %676 = phi i64 [ %171, %177 ], [ %536, %535 ]
  %677 = icmp eq i8 %124, 0, !dbg !3267
  %678 = select i1 %677, i32 2, i32 4, !dbg !3267
  br label %679, !dbg !3269

679:                                              ; preds = %388, %674
  %680 = phi i32 [ %678, %674 ], [ 4, %388 ]
  %681 = phi i64 [ %675, %674 ], [ %146, %388 ]
  %682 = phi i64 [ %676, %674 ], [ %378, %388 ]
  call void @llvm.dbg.label(metadata !2770), !dbg !3266
  %683 = icmp eq i32 %116, 2, !dbg !3269
  br i1 %683, label %684, label %688, !dbg !3267

684:                                              ; preds = %670, %679
  %685 = phi i32 [ %673, %670 ], [ %680, %679 ]
  %686 = phi i64 [ %671, %670 ], [ %682, %679 ]
  %687 = phi i64 [ %146, %670 ], [ %681, %679 ]
  br label %688, !dbg !3267

688:                                              ; preds = %241, %163, %679, %684
  %689 = phi i64 [ %686, %684 ], [ %682, %679 ], [ %161, %163 ], [ %171, %241 ]
  %690 = phi i64 [ %687, %684 ], [ %681, %679 ], [ %146, %163 ], [ %146, %241 ]
  %691 = phi i32 [ %685, %684 ], [ %116, %679 ], [ %116, %163 ], [ 5, %241 ]
  call void @llvm.dbg.value(metadata i32 %691, metadata !2713, metadata !DIExpression()), !dbg !2771
  %692 = and i32 %5, -3, !dbg !3270
  %693 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %690, ptr noundef %2, i64 noundef %689, i32 noundef %691, i32 noundef %692, ptr noundef null, ptr noundef %117, ptr noundef %118), !dbg !3271
  br label %694, !dbg !3272

694:                                              ; preds = %665, %668, %688, %640
  %695 = phi i64 [ %693, %688 ], [ %641, %640 ], [ %666, %668 ], [ %666, %665 ]
  ret i64 %695, !dbg !3273
}

; Function Attrs: nounwind
declare !dbg !3274 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !3276 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !3279 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3281 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3285, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i64 %1, metadata !3286, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata ptr %2, metadata !3287, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata ptr %0, metadata !3289, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata i64 %1, metadata !3294, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata ptr null, metadata !3295, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata ptr %2, metadata !3296, metadata !DIExpression()), !dbg !3302
  %4 = icmp eq ptr %2, null, !dbg !3304
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !3304
  call void @llvm.dbg.value(metadata ptr %5, metadata !3297, metadata !DIExpression()), !dbg !3302
  %6 = tail call ptr @__errno_location() #43, !dbg !3305
  %7 = load i32, ptr %6, align 4, !dbg !3305, !tbaa !1057
  call void @llvm.dbg.value(metadata i32 %7, metadata !3298, metadata !DIExpression()), !dbg !3302
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !3306
  %9 = load i32, ptr %8, align 4, !dbg !3306, !tbaa !2653
  %10 = or i32 %9, 1, !dbg !3307
  call void @llvm.dbg.value(metadata i32 %10, metadata !3299, metadata !DIExpression()), !dbg !3302
  %11 = load i32, ptr %5, align 8, !dbg !3308, !tbaa !2603
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3309
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3310
  %14 = load ptr, ptr %13, align 8, !dbg !3310, !tbaa !2674
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3311
  %16 = load ptr, ptr %15, align 8, !dbg !3311, !tbaa !2677
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !3312
  %18 = add i64 %17, 1, !dbg !3313
  call void @llvm.dbg.value(metadata i64 %18, metadata !3300, metadata !DIExpression()), !dbg !3302
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #47, !dbg !3314
  call void @llvm.dbg.value(metadata ptr %19, metadata !3301, metadata !DIExpression()), !dbg !3302
  %20 = load i32, ptr %5, align 8, !dbg !3315, !tbaa !2603
  %21 = load ptr, ptr %13, align 8, !dbg !3316, !tbaa !2674
  %22 = load ptr, ptr %15, align 8, !dbg !3317, !tbaa !2677
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !3318
  store i32 %7, ptr %6, align 4, !dbg !3319, !tbaa !1057
  ret ptr %19, !dbg !3320
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3290 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3289, metadata !DIExpression()), !dbg !3321
  call void @llvm.dbg.value(metadata i64 %1, metadata !3294, metadata !DIExpression()), !dbg !3321
  call void @llvm.dbg.value(metadata ptr %2, metadata !3295, metadata !DIExpression()), !dbg !3321
  call void @llvm.dbg.value(metadata ptr %3, metadata !3296, metadata !DIExpression()), !dbg !3321
  %5 = icmp eq ptr %3, null, !dbg !3322
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !3322
  call void @llvm.dbg.value(metadata ptr %6, metadata !3297, metadata !DIExpression()), !dbg !3321
  %7 = tail call ptr @__errno_location() #43, !dbg !3323
  %8 = load i32, ptr %7, align 4, !dbg !3323, !tbaa !1057
  call void @llvm.dbg.value(metadata i32 %8, metadata !3298, metadata !DIExpression()), !dbg !3321
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !3324
  %10 = load i32, ptr %9, align 4, !dbg !3324, !tbaa !2653
  %11 = icmp eq ptr %2, null, !dbg !3325
  %12 = zext i1 %11 to i32, !dbg !3325
  %13 = or i32 %10, %12, !dbg !3326
  call void @llvm.dbg.value(metadata i32 %13, metadata !3299, metadata !DIExpression()), !dbg !3321
  %14 = load i32, ptr %6, align 8, !dbg !3327, !tbaa !2603
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !3328
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3329
  %17 = load ptr, ptr %16, align 8, !dbg !3329, !tbaa !2674
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3330
  %19 = load ptr, ptr %18, align 8, !dbg !3330, !tbaa !2677
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !3331
  %21 = add i64 %20, 1, !dbg !3332
  call void @llvm.dbg.value(metadata i64 %21, metadata !3300, metadata !DIExpression()), !dbg !3321
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #47, !dbg !3333
  call void @llvm.dbg.value(metadata ptr %22, metadata !3301, metadata !DIExpression()), !dbg !3321
  %23 = load i32, ptr %6, align 8, !dbg !3334, !tbaa !2603
  %24 = load ptr, ptr %16, align 8, !dbg !3335, !tbaa !2674
  %25 = load ptr, ptr %18, align 8, !dbg !3336, !tbaa !2677
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !3337
  store i32 %8, ptr %7, align 4, !dbg !3338, !tbaa !1057
  br i1 %11, label %28, label %27, !dbg !3339

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !3340, !tbaa !3342
  br label %28, !dbg !3343

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !3344
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !3345 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !3350, !tbaa !983
  call void @llvm.dbg.value(metadata ptr %1, metadata !3347, metadata !DIExpression()), !dbg !3351
  call void @llvm.dbg.value(metadata i32 1, metadata !3348, metadata !DIExpression()), !dbg !3352
  %2 = load i32, ptr @nslots, align 4, !tbaa !1057
  call void @llvm.dbg.value(metadata i32 1, metadata !3348, metadata !DIExpression()), !dbg !3352
  %3 = icmp sgt i32 %2, 1, !dbg !3353
  br i1 %3, label %4, label %6, !dbg !3355

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !3353
  br label %10, !dbg !3355

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !3356
  %8 = load ptr, ptr %7, align 8, !dbg !3356, !tbaa !3358
  %9 = icmp eq ptr %8, @slot0, !dbg !3360
  br i1 %9, label %17, label %16, !dbg !3361

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !3348, metadata !DIExpression()), !dbg !3352
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !3362
  %13 = load ptr, ptr %12, align 8, !dbg !3362, !tbaa !3358
  tail call void @free(ptr noundef %13) #40, !dbg !3363
  %14 = add nuw nsw i64 %11, 1, !dbg !3364
  call void @llvm.dbg.value(metadata i64 %14, metadata !3348, metadata !DIExpression()), !dbg !3352
  %15 = icmp eq i64 %14, %5, !dbg !3353
  br i1 %15, label %6, label %10, !dbg !3355, !llvm.loop !3365

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #40, !dbg !3367
  store i64 256, ptr @slotvec0, align 8, !dbg !3369, !tbaa !3370
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !3371, !tbaa !3358
  br label %17, !dbg !3372

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !3373
  br i1 %18, label %20, label %19, !dbg !3375

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #40, !dbg !3376
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !3378, !tbaa !983
  br label %20, !dbg !3379

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !3380, !tbaa !1057
  ret void, !dbg !3381
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3382 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3384, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata ptr %1, metadata !3385, metadata !DIExpression()), !dbg !3386
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3387
  ret ptr %3, !dbg !3388
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !3389 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3393, metadata !DIExpression()), !dbg !3409
  call void @llvm.dbg.value(metadata ptr %1, metadata !3394, metadata !DIExpression()), !dbg !3409
  call void @llvm.dbg.value(metadata i64 %2, metadata !3395, metadata !DIExpression()), !dbg !3409
  call void @llvm.dbg.value(metadata ptr %3, metadata !3396, metadata !DIExpression()), !dbg !3409
  %6 = tail call ptr @__errno_location() #43, !dbg !3410
  %7 = load i32, ptr %6, align 4, !dbg !3410, !tbaa !1057
  call void @llvm.dbg.value(metadata i32 %7, metadata !3397, metadata !DIExpression()), !dbg !3409
  %8 = load ptr, ptr @slotvec, align 8, !dbg !3411, !tbaa !983
  call void @llvm.dbg.value(metadata ptr %8, metadata !3398, metadata !DIExpression()), !dbg !3409
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !3399, metadata !DIExpression()), !dbg !3409
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3412
  br i1 %9, label %10, label %11, !dbg !3412

10:                                               ; preds = %4
  tail call void @abort() #42, !dbg !3414
  unreachable, !dbg !3414

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !3415, !tbaa !1057
  %13 = icmp sgt i32 %12, %0, !dbg !3416
  br i1 %13, label %32, label %14, !dbg !3417

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3418
  call void @llvm.dbg.value(metadata i1 %15, metadata !3400, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3419
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #40, !dbg !3420
  %16 = sext i32 %12 to i64, !dbg !3421
  call void @llvm.dbg.value(metadata i64 %16, metadata !3403, metadata !DIExpression()), !dbg !3419
  store i64 %16, ptr %5, align 8, !dbg !3422, !tbaa !3342
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3423
  %18 = add nuw nsw i32 %0, 1, !dbg !3424
  %19 = sub i32 %18, %12, !dbg !3425
  %20 = sext i32 %19 to i64, !dbg !3426
  call void @llvm.dbg.value(metadata ptr %5, metadata !3403, metadata !DIExpression(DW_OP_deref)), !dbg !3419
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #40, !dbg !3427
  call void @llvm.dbg.value(metadata ptr %21, metadata !3398, metadata !DIExpression()), !dbg !3409
  store ptr %21, ptr @slotvec, align 8, !dbg !3428, !tbaa !983
  br i1 %15, label %22, label %23, !dbg !3429

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3430, !tbaa.struct !3432
  br label %23, !dbg !3433

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3434, !tbaa !1057
  %25 = sext i32 %24 to i64, !dbg !3435
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !3435
  %27 = load i64, ptr %5, align 8, !dbg !3436, !tbaa !3342
  call void @llvm.dbg.value(metadata i64 %27, metadata !3403, metadata !DIExpression()), !dbg !3419
  %28 = sub nsw i64 %27, %25, !dbg !3437
  %29 = shl i64 %28, 4, !dbg !3438
  call void @llvm.dbg.value(metadata ptr %26, metadata !2810, metadata !DIExpression()), !dbg !3439
  call void @llvm.dbg.value(metadata i32 0, metadata !2813, metadata !DIExpression()), !dbg !3439
  call void @llvm.dbg.value(metadata i64 %29, metadata !2814, metadata !DIExpression()), !dbg !3439
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #40, !dbg !3441
  %30 = load i64, ptr %5, align 8, !dbg !3442, !tbaa !3342
  call void @llvm.dbg.value(metadata i64 %30, metadata !3403, metadata !DIExpression()), !dbg !3419
  %31 = trunc i64 %30 to i32, !dbg !3442
  store i32 %31, ptr @nslots, align 4, !dbg !3443, !tbaa !1057
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #40, !dbg !3444
  br label %32, !dbg !3445

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !3409
  call void @llvm.dbg.value(metadata ptr %33, metadata !3398, metadata !DIExpression()), !dbg !3409
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3446
  %36 = load i64, ptr %35, align 8, !dbg !3447, !tbaa !3370
  call void @llvm.dbg.value(metadata i64 %36, metadata !3404, metadata !DIExpression()), !dbg !3448
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3449
  %38 = load ptr, ptr %37, align 8, !dbg !3449, !tbaa !3358
  call void @llvm.dbg.value(metadata ptr %38, metadata !3406, metadata !DIExpression()), !dbg !3448
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3450
  %40 = load i32, ptr %39, align 4, !dbg !3450, !tbaa !2653
  %41 = or i32 %40, 1, !dbg !3451
  call void @llvm.dbg.value(metadata i32 %41, metadata !3407, metadata !DIExpression()), !dbg !3448
  %42 = load i32, ptr %3, align 8, !dbg !3452, !tbaa !2603
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3453
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3454
  %45 = load ptr, ptr %44, align 8, !dbg !3454, !tbaa !2674
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3455
  %47 = load ptr, ptr %46, align 8, !dbg !3455, !tbaa !2677
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3456
  call void @llvm.dbg.value(metadata i64 %48, metadata !3408, metadata !DIExpression()), !dbg !3448
  %49 = icmp ugt i64 %36, %48, !dbg !3457
  br i1 %49, label %60, label %50, !dbg !3459

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3460
  call void @llvm.dbg.value(metadata i64 %51, metadata !3404, metadata !DIExpression()), !dbg !3448
  store i64 %51, ptr %35, align 8, !dbg !3462, !tbaa !3370
  %52 = icmp eq ptr %38, @slot0, !dbg !3463
  br i1 %52, label %54, label %53, !dbg !3465

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #40, !dbg !3466
  br label %54, !dbg !3466

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #47, !dbg !3467
  call void @llvm.dbg.value(metadata ptr %55, metadata !3406, metadata !DIExpression()), !dbg !3448
  store ptr %55, ptr %37, align 8, !dbg !3468, !tbaa !3358
  %56 = load i32, ptr %3, align 8, !dbg !3469, !tbaa !2603
  %57 = load ptr, ptr %44, align 8, !dbg !3470, !tbaa !2674
  %58 = load ptr, ptr %46, align 8, !dbg !3471, !tbaa !2677
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3472
  br label %60, !dbg !3473

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3448
  call void @llvm.dbg.value(metadata ptr %61, metadata !3406, metadata !DIExpression()), !dbg !3448
  store i32 %7, ptr %6, align 4, !dbg !3474, !tbaa !1057
  ret ptr %61, !dbg !3475
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #26

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3476 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3480, metadata !DIExpression()), !dbg !3483
  call void @llvm.dbg.value(metadata ptr %1, metadata !3481, metadata !DIExpression()), !dbg !3483
  call void @llvm.dbg.value(metadata i64 %2, metadata !3482, metadata !DIExpression()), !dbg !3483
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3484
  ret ptr %4, !dbg !3485
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !3486 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3488, metadata !DIExpression()), !dbg !3489
  call void @llvm.dbg.value(metadata i32 0, metadata !3384, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata ptr %0, metadata !3385, metadata !DIExpression()), !dbg !3490
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3492
  ret ptr %2, !dbg !3493
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3494 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3498, metadata !DIExpression()), !dbg !3500
  call void @llvm.dbg.value(metadata i64 %1, metadata !3499, metadata !DIExpression()), !dbg !3500
  call void @llvm.dbg.value(metadata i32 0, metadata !3480, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.value(metadata ptr %0, metadata !3481, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.value(metadata i64 %1, metadata !3482, metadata !DIExpression()), !dbg !3501
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3503
  ret ptr %3, !dbg !3504
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3505 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3509, metadata !DIExpression()), !dbg !3513
  call void @llvm.dbg.value(metadata i32 %1, metadata !3510, metadata !DIExpression()), !dbg !3513
  call void @llvm.dbg.value(metadata ptr %2, metadata !3511, metadata !DIExpression()), !dbg !3513
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3514
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3512, metadata !DIExpression()), !dbg !3515
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3516), !dbg !3519
  call void @llvm.dbg.value(metadata i32 %1, metadata !3520, metadata !DIExpression()), !dbg !3526
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3525, metadata !DIExpression()), !dbg !3528
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3528, !alias.scope !3516
  %5 = icmp eq i32 %1, 10, !dbg !3529
  br i1 %5, label %6, label %7, !dbg !3531

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3532, !noalias !3516
  unreachable, !dbg !3532

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3533, !tbaa !2603, !alias.scope !3516
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3534
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3535
  ret ptr %8, !dbg !3536
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #27

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3537 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3541, metadata !DIExpression()), !dbg !3546
  call void @llvm.dbg.value(metadata i32 %1, metadata !3542, metadata !DIExpression()), !dbg !3546
  call void @llvm.dbg.value(metadata ptr %2, metadata !3543, metadata !DIExpression()), !dbg !3546
  call void @llvm.dbg.value(metadata i64 %3, metadata !3544, metadata !DIExpression()), !dbg !3546
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !3547
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3545, metadata !DIExpression()), !dbg !3548
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3549), !dbg !3552
  call void @llvm.dbg.value(metadata i32 %1, metadata !3520, metadata !DIExpression()), !dbg !3553
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3525, metadata !DIExpression()), !dbg !3555
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3555, !alias.scope !3549
  %6 = icmp eq i32 %1, 10, !dbg !3556
  br i1 %6, label %7, label %8, !dbg !3557

7:                                                ; preds = %4
  tail call void @abort() #42, !dbg !3558, !noalias !3549
  unreachable, !dbg !3558

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3559, !tbaa !2603, !alias.scope !3549
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3560
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !3561
  ret ptr %9, !dbg !3562
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3563 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3567, metadata !DIExpression()), !dbg !3569
  call void @llvm.dbg.value(metadata ptr %1, metadata !3568, metadata !DIExpression()), !dbg !3569
  call void @llvm.dbg.value(metadata i32 0, metadata !3509, metadata !DIExpression()), !dbg !3570
  call void @llvm.dbg.value(metadata i32 %0, metadata !3510, metadata !DIExpression()), !dbg !3570
  call void @llvm.dbg.value(metadata ptr %1, metadata !3511, metadata !DIExpression()), !dbg !3570
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !3572
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3512, metadata !DIExpression()), !dbg !3573
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3574), !dbg !3577
  call void @llvm.dbg.value(metadata i32 %0, metadata !3520, metadata !DIExpression()), !dbg !3578
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3525, metadata !DIExpression()), !dbg !3580
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3580, !alias.scope !3574
  %4 = icmp eq i32 %0, 10, !dbg !3581
  br i1 %4, label %5, label %6, !dbg !3582

5:                                                ; preds = %2
  tail call void @abort() #42, !dbg !3583, !noalias !3574
  unreachable, !dbg !3583

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3584, !tbaa !2603, !alias.scope !3574
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3585
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !3586
  ret ptr %7, !dbg !3587
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3588 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3592, metadata !DIExpression()), !dbg !3595
  call void @llvm.dbg.value(metadata ptr %1, metadata !3593, metadata !DIExpression()), !dbg !3595
  call void @llvm.dbg.value(metadata i64 %2, metadata !3594, metadata !DIExpression()), !dbg !3595
  call void @llvm.dbg.value(metadata i32 0, metadata !3541, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.value(metadata i32 %0, metadata !3542, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.value(metadata ptr %1, metadata !3543, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.value(metadata i64 %2, metadata !3544, metadata !DIExpression()), !dbg !3596
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3598
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3545, metadata !DIExpression()), !dbg !3599
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3600), !dbg !3603
  call void @llvm.dbg.value(metadata i32 %0, metadata !3520, metadata !DIExpression()), !dbg !3604
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3525, metadata !DIExpression()), !dbg !3606
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3606, !alias.scope !3600
  %5 = icmp eq i32 %0, 10, !dbg !3607
  br i1 %5, label %6, label %7, !dbg !3608

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3609, !noalias !3600
  unreachable, !dbg !3609

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3610, !tbaa !2603, !alias.scope !3600
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3611
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3612
  ret ptr %8, !dbg !3613
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !3614 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3618, metadata !DIExpression()), !dbg !3622
  call void @llvm.dbg.value(metadata i64 %1, metadata !3619, metadata !DIExpression()), !dbg !3622
  call void @llvm.dbg.value(metadata i8 %2, metadata !3620, metadata !DIExpression()), !dbg !3622
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3623
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3621, metadata !DIExpression()), !dbg !3624
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3625, !tbaa.struct !3626
  call void @llvm.dbg.value(metadata ptr %4, metadata !2620, metadata !DIExpression()), !dbg !3627
  call void @llvm.dbg.value(metadata i8 %2, metadata !2621, metadata !DIExpression()), !dbg !3627
  call void @llvm.dbg.value(metadata i32 1, metadata !2622, metadata !DIExpression()), !dbg !3627
  call void @llvm.dbg.value(metadata i8 %2, metadata !2623, metadata !DIExpression()), !dbg !3627
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !3629
  %6 = lshr i8 %2, 5, !dbg !3630
  %7 = zext i8 %6 to i64, !dbg !3630
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !3631
  call void @llvm.dbg.value(metadata ptr %8, metadata !2624, metadata !DIExpression()), !dbg !3627
  %9 = and i8 %2, 31, !dbg !3632
  %10 = zext i8 %9 to i32, !dbg !3632
  call void @llvm.dbg.value(metadata i32 %10, metadata !2626, metadata !DIExpression()), !dbg !3627
  %11 = load i32, ptr %8, align 4, !dbg !3633, !tbaa !1057
  %12 = lshr i32 %11, %10, !dbg !3634
  call void @llvm.dbg.value(metadata i32 %12, metadata !2627, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3627
  %13 = and i32 %12, 1, !dbg !3635
  %14 = xor i32 %13, 1, !dbg !3635
  %15 = shl nuw i32 %14, %10, !dbg !3636
  %16 = xor i32 %15, %11, !dbg !3637
  store i32 %16, ptr %8, align 4, !dbg !3637, !tbaa !1057
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !3638
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3639
  ret ptr %17, !dbg !3640
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !3641 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3645, metadata !DIExpression()), !dbg !3647
  call void @llvm.dbg.value(metadata i8 %1, metadata !3646, metadata !DIExpression()), !dbg !3647
  call void @llvm.dbg.value(metadata ptr %0, metadata !3618, metadata !DIExpression()), !dbg !3648
  call void @llvm.dbg.value(metadata i64 -1, metadata !3619, metadata !DIExpression()), !dbg !3648
  call void @llvm.dbg.value(metadata i8 %1, metadata !3620, metadata !DIExpression()), !dbg !3648
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !3650
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3621, metadata !DIExpression()), !dbg !3651
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3652, !tbaa.struct !3626
  call void @llvm.dbg.value(metadata ptr %3, metadata !2620, metadata !DIExpression()), !dbg !3653
  call void @llvm.dbg.value(metadata i8 %1, metadata !2621, metadata !DIExpression()), !dbg !3653
  call void @llvm.dbg.value(metadata i32 1, metadata !2622, metadata !DIExpression()), !dbg !3653
  call void @llvm.dbg.value(metadata i8 %1, metadata !2623, metadata !DIExpression()), !dbg !3653
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3655
  %5 = lshr i8 %1, 5, !dbg !3656
  %6 = zext i8 %5 to i64, !dbg !3656
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !3657
  call void @llvm.dbg.value(metadata ptr %7, metadata !2624, metadata !DIExpression()), !dbg !3653
  %8 = and i8 %1, 31, !dbg !3658
  %9 = zext i8 %8 to i32, !dbg !3658
  call void @llvm.dbg.value(metadata i32 %9, metadata !2626, metadata !DIExpression()), !dbg !3653
  %10 = load i32, ptr %7, align 4, !dbg !3659, !tbaa !1057
  %11 = lshr i32 %10, %9, !dbg !3660
  call void @llvm.dbg.value(metadata i32 %11, metadata !2627, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3653
  %12 = and i32 %11, 1, !dbg !3661
  %13 = xor i32 %12, 1, !dbg !3661
  %14 = shl nuw i32 %13, %9, !dbg !3662
  %15 = xor i32 %14, %10, !dbg !3663
  store i32 %15, ptr %7, align 4, !dbg !3663, !tbaa !1057
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !3664
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !3665
  ret ptr %16, !dbg !3666
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !3667 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3669, metadata !DIExpression()), !dbg !3670
  call void @llvm.dbg.value(metadata ptr %0, metadata !3645, metadata !DIExpression()), !dbg !3671
  call void @llvm.dbg.value(metadata i8 58, metadata !3646, metadata !DIExpression()), !dbg !3671
  call void @llvm.dbg.value(metadata ptr %0, metadata !3618, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.value(metadata i64 -1, metadata !3619, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.value(metadata i8 58, metadata !3620, metadata !DIExpression()), !dbg !3673
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #40, !dbg !3675
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3621, metadata !DIExpression()), !dbg !3676
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3677, !tbaa.struct !3626
  call void @llvm.dbg.value(metadata ptr %2, metadata !2620, metadata !DIExpression()), !dbg !3678
  call void @llvm.dbg.value(metadata i8 58, metadata !2621, metadata !DIExpression()), !dbg !3678
  call void @llvm.dbg.value(metadata i32 1, metadata !2622, metadata !DIExpression()), !dbg !3678
  call void @llvm.dbg.value(metadata i8 58, metadata !2623, metadata !DIExpression()), !dbg !3678
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !3680
  call void @llvm.dbg.value(metadata ptr %3, metadata !2624, metadata !DIExpression()), !dbg !3678
  call void @llvm.dbg.value(metadata i32 26, metadata !2626, metadata !DIExpression()), !dbg !3678
  %4 = load i32, ptr %3, align 4, !dbg !3681, !tbaa !1057
  call void @llvm.dbg.value(metadata i32 %4, metadata !2627, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3678
  %5 = or i32 %4, 67108864, !dbg !3682
  store i32 %5, ptr %3, align 4, !dbg !3682, !tbaa !1057
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !3683
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #40, !dbg !3684
  ret ptr %6, !dbg !3685
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3686 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3688, metadata !DIExpression()), !dbg !3690
  call void @llvm.dbg.value(metadata i64 %1, metadata !3689, metadata !DIExpression()), !dbg !3690
  call void @llvm.dbg.value(metadata ptr %0, metadata !3618, metadata !DIExpression()), !dbg !3691
  call void @llvm.dbg.value(metadata i64 %1, metadata !3619, metadata !DIExpression()), !dbg !3691
  call void @llvm.dbg.value(metadata i8 58, metadata !3620, metadata !DIExpression()), !dbg !3691
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !3693
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3621, metadata !DIExpression()), !dbg !3694
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3695, !tbaa.struct !3626
  call void @llvm.dbg.value(metadata ptr %3, metadata !2620, metadata !DIExpression()), !dbg !3696
  call void @llvm.dbg.value(metadata i8 58, metadata !2621, metadata !DIExpression()), !dbg !3696
  call void @llvm.dbg.value(metadata i32 1, metadata !2622, metadata !DIExpression()), !dbg !3696
  call void @llvm.dbg.value(metadata i8 58, metadata !2623, metadata !DIExpression()), !dbg !3696
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3698
  call void @llvm.dbg.value(metadata ptr %4, metadata !2624, metadata !DIExpression()), !dbg !3696
  call void @llvm.dbg.value(metadata i32 26, metadata !2626, metadata !DIExpression()), !dbg !3696
  %5 = load i32, ptr %4, align 4, !dbg !3699, !tbaa !1057
  call void @llvm.dbg.value(metadata i32 %5, metadata !2627, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3696
  %6 = or i32 %5, 67108864, !dbg !3700
  store i32 %6, ptr %4, align 4, !dbg !3700, !tbaa !1057
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3701
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !3702
  ret ptr %7, !dbg !3703
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3704 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3525, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3710
  call void @llvm.dbg.value(metadata i32 %0, metadata !3706, metadata !DIExpression()), !dbg !3712
  call void @llvm.dbg.value(metadata i32 %1, metadata !3707, metadata !DIExpression()), !dbg !3712
  call void @llvm.dbg.value(metadata ptr %2, metadata !3708, metadata !DIExpression()), !dbg !3712
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3713
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3709, metadata !DIExpression()), !dbg !3714
  call void @llvm.dbg.value(metadata i32 %1, metadata !3520, metadata !DIExpression()), !dbg !3715
  call void @llvm.dbg.value(metadata i32 0, metadata !3525, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3715
  %5 = icmp eq i32 %1, 10, !dbg !3716
  br i1 %5, label %6, label %7, !dbg !3717

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3718, !noalias !3719
  unreachable, !dbg !3718

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3525, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3715
  store i32 %1, ptr %4, align 8, !dbg !3722, !tbaa.struct !3626
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3722
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3722
  call void @llvm.dbg.value(metadata ptr %4, metadata !2620, metadata !DIExpression()), !dbg !3723
  call void @llvm.dbg.value(metadata i8 58, metadata !2621, metadata !DIExpression()), !dbg !3723
  call void @llvm.dbg.value(metadata i32 1, metadata !2622, metadata !DIExpression()), !dbg !3723
  call void @llvm.dbg.value(metadata i8 58, metadata !2623, metadata !DIExpression()), !dbg !3723
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3725
  call void @llvm.dbg.value(metadata ptr %9, metadata !2624, metadata !DIExpression()), !dbg !3723
  call void @llvm.dbg.value(metadata i32 26, metadata !2626, metadata !DIExpression()), !dbg !3723
  %10 = load i32, ptr %9, align 4, !dbg !3726, !tbaa !1057
  call void @llvm.dbg.value(metadata i32 %10, metadata !2627, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3723
  %11 = or i32 %10, 67108864, !dbg !3727
  store i32 %11, ptr %9, align 4, !dbg !3727, !tbaa !1057
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3728
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3729
  ret ptr %12, !dbg !3730
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3731 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3735, metadata !DIExpression()), !dbg !3739
  call void @llvm.dbg.value(metadata ptr %1, metadata !3736, metadata !DIExpression()), !dbg !3739
  call void @llvm.dbg.value(metadata ptr %2, metadata !3737, metadata !DIExpression()), !dbg !3739
  call void @llvm.dbg.value(metadata ptr %3, metadata !3738, metadata !DIExpression()), !dbg !3739
  call void @llvm.dbg.value(metadata i32 %0, metadata !3740, metadata !DIExpression()), !dbg !3750
  call void @llvm.dbg.value(metadata ptr %1, metadata !3745, metadata !DIExpression()), !dbg !3750
  call void @llvm.dbg.value(metadata ptr %2, metadata !3746, metadata !DIExpression()), !dbg !3750
  call void @llvm.dbg.value(metadata ptr %3, metadata !3747, metadata !DIExpression()), !dbg !3750
  call void @llvm.dbg.value(metadata i64 -1, metadata !3748, metadata !DIExpression()), !dbg !3750
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !3752
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3749, metadata !DIExpression()), !dbg !3753
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3754, !tbaa.struct !3626
  call void @llvm.dbg.value(metadata ptr %5, metadata !2660, metadata !DIExpression()), !dbg !3755
  call void @llvm.dbg.value(metadata ptr %1, metadata !2661, metadata !DIExpression()), !dbg !3755
  call void @llvm.dbg.value(metadata ptr %2, metadata !2662, metadata !DIExpression()), !dbg !3755
  call void @llvm.dbg.value(metadata ptr %5, metadata !2660, metadata !DIExpression()), !dbg !3755
  store i32 10, ptr %5, align 8, !dbg !3757, !tbaa !2603
  %6 = icmp ne ptr %1, null, !dbg !3758
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3759
  br i1 %8, label %10, label %9, !dbg !3759

9:                                                ; preds = %4
  tail call void @abort() #42, !dbg !3760
  unreachable, !dbg !3760

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3761
  store ptr %1, ptr %11, align 8, !dbg !3762, !tbaa !2674
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3763
  store ptr %2, ptr %12, align 8, !dbg !3764, !tbaa !2677
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3765
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !3766
  ret ptr %13, !dbg !3767
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !3741 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3740, metadata !DIExpression()), !dbg !3768
  call void @llvm.dbg.value(metadata ptr %1, metadata !3745, metadata !DIExpression()), !dbg !3768
  call void @llvm.dbg.value(metadata ptr %2, metadata !3746, metadata !DIExpression()), !dbg !3768
  call void @llvm.dbg.value(metadata ptr %3, metadata !3747, metadata !DIExpression()), !dbg !3768
  call void @llvm.dbg.value(metadata i64 %4, metadata !3748, metadata !DIExpression()), !dbg !3768
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #40, !dbg !3769
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3749, metadata !DIExpression()), !dbg !3770
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3771, !tbaa.struct !3626
  call void @llvm.dbg.value(metadata ptr %6, metadata !2660, metadata !DIExpression()), !dbg !3772
  call void @llvm.dbg.value(metadata ptr %1, metadata !2661, metadata !DIExpression()), !dbg !3772
  call void @llvm.dbg.value(metadata ptr %2, metadata !2662, metadata !DIExpression()), !dbg !3772
  call void @llvm.dbg.value(metadata ptr %6, metadata !2660, metadata !DIExpression()), !dbg !3772
  store i32 10, ptr %6, align 8, !dbg !3774, !tbaa !2603
  %7 = icmp ne ptr %1, null, !dbg !3775
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3776
  br i1 %9, label %11, label %10, !dbg !3776

10:                                               ; preds = %5
  tail call void @abort() #42, !dbg !3777
  unreachable, !dbg !3777

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3778
  store ptr %1, ptr %12, align 8, !dbg !3779, !tbaa !2674
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3780
  store ptr %2, ptr %13, align 8, !dbg !3781, !tbaa !2677
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3782
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #40, !dbg !3783
  ret ptr %14, !dbg !3784
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3785 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3789, metadata !DIExpression()), !dbg !3792
  call void @llvm.dbg.value(metadata ptr %1, metadata !3790, metadata !DIExpression()), !dbg !3792
  call void @llvm.dbg.value(metadata ptr %2, metadata !3791, metadata !DIExpression()), !dbg !3792
  call void @llvm.dbg.value(metadata i32 0, metadata !3735, metadata !DIExpression()), !dbg !3793
  call void @llvm.dbg.value(metadata ptr %0, metadata !3736, metadata !DIExpression()), !dbg !3793
  call void @llvm.dbg.value(metadata ptr %1, metadata !3737, metadata !DIExpression()), !dbg !3793
  call void @llvm.dbg.value(metadata ptr %2, metadata !3738, metadata !DIExpression()), !dbg !3793
  call void @llvm.dbg.value(metadata i32 0, metadata !3740, metadata !DIExpression()), !dbg !3795
  call void @llvm.dbg.value(metadata ptr %0, metadata !3745, metadata !DIExpression()), !dbg !3795
  call void @llvm.dbg.value(metadata ptr %1, metadata !3746, metadata !DIExpression()), !dbg !3795
  call void @llvm.dbg.value(metadata ptr %2, metadata !3747, metadata !DIExpression()), !dbg !3795
  call void @llvm.dbg.value(metadata i64 -1, metadata !3748, metadata !DIExpression()), !dbg !3795
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3797
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3749, metadata !DIExpression()), !dbg !3798
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3799, !tbaa.struct !3626
  call void @llvm.dbg.value(metadata ptr %4, metadata !2660, metadata !DIExpression()), !dbg !3800
  call void @llvm.dbg.value(metadata ptr %0, metadata !2661, metadata !DIExpression()), !dbg !3800
  call void @llvm.dbg.value(metadata ptr %1, metadata !2662, metadata !DIExpression()), !dbg !3800
  call void @llvm.dbg.value(metadata ptr %4, metadata !2660, metadata !DIExpression()), !dbg !3800
  store i32 10, ptr %4, align 8, !dbg !3802, !tbaa !2603
  %5 = icmp ne ptr %0, null, !dbg !3803
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3804
  br i1 %7, label %9, label %8, !dbg !3804

8:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3805
  unreachable, !dbg !3805

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3806
  store ptr %0, ptr %10, align 8, !dbg !3807, !tbaa !2674
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3808
  store ptr %1, ptr %11, align 8, !dbg !3809, !tbaa !2677
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3810
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3811
  ret ptr %12, !dbg !3812
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3813 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3817, metadata !DIExpression()), !dbg !3821
  call void @llvm.dbg.value(metadata ptr %1, metadata !3818, metadata !DIExpression()), !dbg !3821
  call void @llvm.dbg.value(metadata ptr %2, metadata !3819, metadata !DIExpression()), !dbg !3821
  call void @llvm.dbg.value(metadata i64 %3, metadata !3820, metadata !DIExpression()), !dbg !3821
  call void @llvm.dbg.value(metadata i32 0, metadata !3740, metadata !DIExpression()), !dbg !3822
  call void @llvm.dbg.value(metadata ptr %0, metadata !3745, metadata !DIExpression()), !dbg !3822
  call void @llvm.dbg.value(metadata ptr %1, metadata !3746, metadata !DIExpression()), !dbg !3822
  call void @llvm.dbg.value(metadata ptr %2, metadata !3747, metadata !DIExpression()), !dbg !3822
  call void @llvm.dbg.value(metadata i64 %3, metadata !3748, metadata !DIExpression()), !dbg !3822
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !3824
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3749, metadata !DIExpression()), !dbg !3825
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3826, !tbaa.struct !3626
  call void @llvm.dbg.value(metadata ptr %5, metadata !2660, metadata !DIExpression()), !dbg !3827
  call void @llvm.dbg.value(metadata ptr %0, metadata !2661, metadata !DIExpression()), !dbg !3827
  call void @llvm.dbg.value(metadata ptr %1, metadata !2662, metadata !DIExpression()), !dbg !3827
  call void @llvm.dbg.value(metadata ptr %5, metadata !2660, metadata !DIExpression()), !dbg !3827
  store i32 10, ptr %5, align 8, !dbg !3829, !tbaa !2603
  %6 = icmp ne ptr %0, null, !dbg !3830
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3831
  br i1 %8, label %10, label %9, !dbg !3831

9:                                                ; preds = %4
  tail call void @abort() #42, !dbg !3832
  unreachable, !dbg !3832

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3833
  store ptr %0, ptr %11, align 8, !dbg !3834, !tbaa !2674
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3835
  store ptr %1, ptr %12, align 8, !dbg !3836, !tbaa !2677
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3837
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !3838
  ret ptr %13, !dbg !3839
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3840 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3844, metadata !DIExpression()), !dbg !3847
  call void @llvm.dbg.value(metadata ptr %1, metadata !3845, metadata !DIExpression()), !dbg !3847
  call void @llvm.dbg.value(metadata i64 %2, metadata !3846, metadata !DIExpression()), !dbg !3847
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3848
  ret ptr %4, !dbg !3849
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3850 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3854, metadata !DIExpression()), !dbg !3856
  call void @llvm.dbg.value(metadata i64 %1, metadata !3855, metadata !DIExpression()), !dbg !3856
  call void @llvm.dbg.value(metadata i32 0, metadata !3844, metadata !DIExpression()), !dbg !3857
  call void @llvm.dbg.value(metadata ptr %0, metadata !3845, metadata !DIExpression()), !dbg !3857
  call void @llvm.dbg.value(metadata i64 %1, metadata !3846, metadata !DIExpression()), !dbg !3857
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3859
  ret ptr %3, !dbg !3860
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3861 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3865, metadata !DIExpression()), !dbg !3867
  call void @llvm.dbg.value(metadata ptr %1, metadata !3866, metadata !DIExpression()), !dbg !3867
  call void @llvm.dbg.value(metadata i32 %0, metadata !3844, metadata !DIExpression()), !dbg !3868
  call void @llvm.dbg.value(metadata ptr %1, metadata !3845, metadata !DIExpression()), !dbg !3868
  call void @llvm.dbg.value(metadata i64 -1, metadata !3846, metadata !DIExpression()), !dbg !3868
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3870
  ret ptr %3, !dbg !3871
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !3872 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3876, metadata !DIExpression()), !dbg !3877
  call void @llvm.dbg.value(metadata i32 0, metadata !3865, metadata !DIExpression()), !dbg !3878
  call void @llvm.dbg.value(metadata ptr %0, metadata !3866, metadata !DIExpression()), !dbg !3878
  call void @llvm.dbg.value(metadata i32 0, metadata !3844, metadata !DIExpression()), !dbg !3880
  call void @llvm.dbg.value(metadata ptr %0, metadata !3845, metadata !DIExpression()), !dbg !3880
  call void @llvm.dbg.value(metadata i64 -1, metadata !3846, metadata !DIExpression()), !dbg !3880
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3882
  ret ptr %2, !dbg !3883
}

; Function Attrs: nofree nounwind uwtable
define dso_local i64 @safe_write(i32 noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3884 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3890, metadata !DIExpression()), !dbg !3899
  call void @llvm.dbg.value(metadata ptr %1, metadata !3891, metadata !DIExpression()), !dbg !3899
  call void @llvm.dbg.value(metadata i64 %2, metadata !3892, metadata !DIExpression()), !dbg !3899
  br label %4, !dbg !3900

4:                                                ; preds = %13, %3
  %5 = phi i64 [ 2146435072, %13 ], [ %2, %3 ]
  br label %6, !dbg !3901

6:                                                ; preds = %9, %4
  call void @llvm.dbg.value(metadata i64 %5, metadata !3892, metadata !DIExpression()), !dbg !3899
  %7 = tail call i64 @write(i32 noundef %0, ptr noundef %1, i64 noundef %5) #40, !dbg !3902
  call void @llvm.dbg.value(metadata i64 %7, metadata !3893, metadata !DIExpression()), !dbg !3903
  %8 = icmp sgt i64 %7, -1, !dbg !3904
  br i1 %8, label %17, label %9, !dbg !3901

9:                                                ; preds = %6
  %10 = tail call ptr @__errno_location() #43, !dbg !3906
  %11 = load i32, ptr %10, align 4, !dbg !3906, !tbaa !1057
  %12 = icmp eq i32 %11, 4, !dbg !3906
  br i1 %12, label %6, label %13, !dbg !3908, !llvm.loop !3909

13:                                               ; preds = %9
  %14 = icmp ne i32 %11, 22, !dbg !3912
  %15 = icmp slt i64 %5, 2146435073
  %16 = or i1 %15, %14, !dbg !3914
  call void @llvm.dbg.value(metadata i64 %5, metadata !3892, metadata !DIExpression()), !dbg !3899
  br i1 %16, label %17, label %4

17:                                               ; preds = %13, %6
  ret i64 %7, !dbg !3915
}

; Function Attrs: nofree
declare !dbg !3916 noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !3919 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3958, metadata !DIExpression()), !dbg !3964
  call void @llvm.dbg.value(metadata ptr %1, metadata !3959, metadata !DIExpression()), !dbg !3964
  call void @llvm.dbg.value(metadata ptr %2, metadata !3960, metadata !DIExpression()), !dbg !3964
  call void @llvm.dbg.value(metadata ptr %3, metadata !3961, metadata !DIExpression()), !dbg !3964
  call void @llvm.dbg.value(metadata ptr %4, metadata !3962, metadata !DIExpression()), !dbg !3964
  call void @llvm.dbg.value(metadata i64 %5, metadata !3963, metadata !DIExpression()), !dbg !3964
  %7 = icmp eq ptr %1, null, !dbg !3965
  br i1 %7, label %10, label %8, !dbg !3967

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.105, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #40, !dbg !3968
  br label %12, !dbg !3968

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.106, ptr noundef %2, ptr noundef %3) #40, !dbg !3969
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.107, ptr noundef nonnull @.str.3.108, i32 noundef 5) #40, !dbg !3970
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #40, !dbg !3970
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.109, ptr noundef %0), !dbg !3971
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.107, ptr noundef nonnull @.str.5.110, i32 noundef 5) #40, !dbg !3972
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.111) #40, !dbg !3972
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.109, ptr noundef %0), !dbg !3973
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
  ], !dbg !3974

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.107, ptr noundef nonnull @.str.7.112, i32 noundef 5) #40, !dbg !3975
  %21 = load ptr, ptr %4, align 8, !dbg !3975, !tbaa !983
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #40, !dbg !3975
  br label %147, !dbg !3977

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.107, ptr noundef nonnull @.str.8.113, i32 noundef 5) #40, !dbg !3978
  %25 = load ptr, ptr %4, align 8, !dbg !3978, !tbaa !983
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3978
  %27 = load ptr, ptr %26, align 8, !dbg !3978, !tbaa !983
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #40, !dbg !3978
  br label %147, !dbg !3979

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.107, ptr noundef nonnull @.str.9.114, i32 noundef 5) #40, !dbg !3980
  %31 = load ptr, ptr %4, align 8, !dbg !3980, !tbaa !983
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3980
  %33 = load ptr, ptr %32, align 8, !dbg !3980, !tbaa !983
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3980
  %35 = load ptr, ptr %34, align 8, !dbg !3980, !tbaa !983
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #40, !dbg !3980
  br label %147, !dbg !3981

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.107, ptr noundef nonnull @.str.10.115, i32 noundef 5) #40, !dbg !3982
  %39 = load ptr, ptr %4, align 8, !dbg !3982, !tbaa !983
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3982
  %41 = load ptr, ptr %40, align 8, !dbg !3982, !tbaa !983
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3982
  %43 = load ptr, ptr %42, align 8, !dbg !3982, !tbaa !983
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3982
  %45 = load ptr, ptr %44, align 8, !dbg !3982, !tbaa !983
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #40, !dbg !3982
  br label %147, !dbg !3983

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.107, ptr noundef nonnull @.str.11.116, i32 noundef 5) #40, !dbg !3984
  %49 = load ptr, ptr %4, align 8, !dbg !3984, !tbaa !983
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3984
  %51 = load ptr, ptr %50, align 8, !dbg !3984, !tbaa !983
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3984
  %53 = load ptr, ptr %52, align 8, !dbg !3984, !tbaa !983
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3984
  %55 = load ptr, ptr %54, align 8, !dbg !3984, !tbaa !983
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3984
  %57 = load ptr, ptr %56, align 8, !dbg !3984, !tbaa !983
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #40, !dbg !3984
  br label %147, !dbg !3985

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.107, ptr noundef nonnull @.str.12.117, i32 noundef 5) #40, !dbg !3986
  %61 = load ptr, ptr %4, align 8, !dbg !3986, !tbaa !983
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3986
  %63 = load ptr, ptr %62, align 8, !dbg !3986, !tbaa !983
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3986
  %65 = load ptr, ptr %64, align 8, !dbg !3986, !tbaa !983
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3986
  %67 = load ptr, ptr %66, align 8, !dbg !3986, !tbaa !983
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3986
  %69 = load ptr, ptr %68, align 8, !dbg !3986, !tbaa !983
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3986
  %71 = load ptr, ptr %70, align 8, !dbg !3986, !tbaa !983
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #40, !dbg !3986
  br label %147, !dbg !3987

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.107, ptr noundef nonnull @.str.13.118, i32 noundef 5) #40, !dbg !3988
  %75 = load ptr, ptr %4, align 8, !dbg !3988, !tbaa !983
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3988
  %77 = load ptr, ptr %76, align 8, !dbg !3988, !tbaa !983
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3988
  %79 = load ptr, ptr %78, align 8, !dbg !3988, !tbaa !983
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3988
  %81 = load ptr, ptr %80, align 8, !dbg !3988, !tbaa !983
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3988
  %83 = load ptr, ptr %82, align 8, !dbg !3988, !tbaa !983
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3988
  %85 = load ptr, ptr %84, align 8, !dbg !3988, !tbaa !983
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3988
  %87 = load ptr, ptr %86, align 8, !dbg !3988, !tbaa !983
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #40, !dbg !3988
  br label %147, !dbg !3989

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.107, ptr noundef nonnull @.str.14.119, i32 noundef 5) #40, !dbg !3990
  %91 = load ptr, ptr %4, align 8, !dbg !3990, !tbaa !983
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3990
  %93 = load ptr, ptr %92, align 8, !dbg !3990, !tbaa !983
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3990
  %95 = load ptr, ptr %94, align 8, !dbg !3990, !tbaa !983
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3990
  %97 = load ptr, ptr %96, align 8, !dbg !3990, !tbaa !983
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3990
  %99 = load ptr, ptr %98, align 8, !dbg !3990, !tbaa !983
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3990
  %101 = load ptr, ptr %100, align 8, !dbg !3990, !tbaa !983
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3990
  %103 = load ptr, ptr %102, align 8, !dbg !3990, !tbaa !983
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3990
  %105 = load ptr, ptr %104, align 8, !dbg !3990, !tbaa !983
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #40, !dbg !3990
  br label %147, !dbg !3991

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.107, ptr noundef nonnull @.str.15.120, i32 noundef 5) #40, !dbg !3992
  %109 = load ptr, ptr %4, align 8, !dbg !3992, !tbaa !983
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3992
  %111 = load ptr, ptr %110, align 8, !dbg !3992, !tbaa !983
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3992
  %113 = load ptr, ptr %112, align 8, !dbg !3992, !tbaa !983
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3992
  %115 = load ptr, ptr %114, align 8, !dbg !3992, !tbaa !983
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3992
  %117 = load ptr, ptr %116, align 8, !dbg !3992, !tbaa !983
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3992
  %119 = load ptr, ptr %118, align 8, !dbg !3992, !tbaa !983
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3992
  %121 = load ptr, ptr %120, align 8, !dbg !3992, !tbaa !983
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3992
  %123 = load ptr, ptr %122, align 8, !dbg !3992, !tbaa !983
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3992
  %125 = load ptr, ptr %124, align 8, !dbg !3992, !tbaa !983
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #40, !dbg !3992
  br label %147, !dbg !3993

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.107, ptr noundef nonnull @.str.16.121, i32 noundef 5) #40, !dbg !3994
  %129 = load ptr, ptr %4, align 8, !dbg !3994, !tbaa !983
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3994
  %131 = load ptr, ptr %130, align 8, !dbg !3994, !tbaa !983
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3994
  %133 = load ptr, ptr %132, align 8, !dbg !3994, !tbaa !983
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3994
  %135 = load ptr, ptr %134, align 8, !dbg !3994, !tbaa !983
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3994
  %137 = load ptr, ptr %136, align 8, !dbg !3994, !tbaa !983
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3994
  %139 = load ptr, ptr %138, align 8, !dbg !3994, !tbaa !983
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3994
  %141 = load ptr, ptr %140, align 8, !dbg !3994, !tbaa !983
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3994
  %143 = load ptr, ptr %142, align 8, !dbg !3994, !tbaa !983
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3994
  %145 = load ptr, ptr %144, align 8, !dbg !3994, !tbaa !983
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #40, !dbg !3994
  br label %147, !dbg !3995

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3996
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !3997 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4001, metadata !DIExpression()), !dbg !4007
  call void @llvm.dbg.value(metadata ptr %1, metadata !4002, metadata !DIExpression()), !dbg !4007
  call void @llvm.dbg.value(metadata ptr %2, metadata !4003, metadata !DIExpression()), !dbg !4007
  call void @llvm.dbg.value(metadata ptr %3, metadata !4004, metadata !DIExpression()), !dbg !4007
  call void @llvm.dbg.value(metadata ptr %4, metadata !4005, metadata !DIExpression()), !dbg !4007
  call void @llvm.dbg.value(metadata i64 0, metadata !4006, metadata !DIExpression()), !dbg !4007
  br label %6, !dbg !4008

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4010
  call void @llvm.dbg.value(metadata i64 %7, metadata !4006, metadata !DIExpression()), !dbg !4007
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !4011
  %9 = load ptr, ptr %8, align 8, !dbg !4011, !tbaa !983
  %10 = icmp eq ptr %9, null, !dbg !4013
  %11 = add i64 %7, 1, !dbg !4014
  call void @llvm.dbg.value(metadata i64 %11, metadata !4006, metadata !DIExpression()), !dbg !4007
  br i1 %10, label %12, label %6, !dbg !4013, !llvm.loop !4015

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !4017
  ret void, !dbg !4018
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !4019 {
  %6 = alloca [10 x ptr], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !4031, metadata !DIExpression()), !dbg !4039
  call void @llvm.dbg.value(metadata ptr %1, metadata !4032, metadata !DIExpression()), !dbg !4039
  call void @llvm.dbg.value(metadata ptr %2, metadata !4033, metadata !DIExpression()), !dbg !4039
  call void @llvm.dbg.value(metadata ptr %3, metadata !4034, metadata !DIExpression()), !dbg !4039
  call void @llvm.dbg.value(metadata ptr %4, metadata !4035, metadata !DIExpression()), !dbg !4039
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #40, !dbg !4040
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4037, metadata !DIExpression()), !dbg !4041
  call void @llvm.dbg.value(metadata i64 0, metadata !4036, metadata !DIExpression()), !dbg !4039
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !4036, metadata !DIExpression()), !dbg !4039
  %10 = icmp ult i32 %9, 41, !dbg !4042
  br i1 %10, label %11, label %16, !dbg !4042

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !4042
  %13 = zext i32 %9 to i64, !dbg !4042
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !4042
  %15 = add nuw nsw i32 %9, 8, !dbg !4042
  store i32 %15, ptr %4, align 8, !dbg !4042
  br label %19, !dbg !4042

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !4042
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !4042
  store ptr %18, ptr %7, align 8, !dbg !4042
  br label %19, !dbg !4042

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !4042
  %22 = load ptr, ptr %21, align 8, !dbg !4042
  store ptr %22, ptr %6, align 16, !dbg !4045, !tbaa !983
  %23 = icmp eq ptr %22, null, !dbg !4046
  br i1 %23, label %128, label %24, !dbg !4047

24:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i64 1, metadata !4036, metadata !DIExpression()), !dbg !4039
  call void @llvm.dbg.value(metadata i64 1, metadata !4036, metadata !DIExpression()), !dbg !4039
  %25 = icmp ult i32 %20, 41, !dbg !4042
  br i1 %25, label %29, label %26, !dbg !4042

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !4042
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !4042
  store ptr %28, ptr %7, align 8, !dbg !4042
  br label %34, !dbg !4042

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !4042
  %31 = zext i32 %20 to i64, !dbg !4042
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !4042
  %33 = add nuw nsw i32 %20, 8, !dbg !4042
  store i32 %33, ptr %4, align 8, !dbg !4042
  br label %34, !dbg !4042

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !4042
  %37 = load ptr, ptr %36, align 8, !dbg !4042
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !4048
  store ptr %37, ptr %38, align 8, !dbg !4045, !tbaa !983
  %39 = icmp eq ptr %37, null, !dbg !4046
  br i1 %39, label %128, label %40, !dbg !4047

40:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i64 2, metadata !4036, metadata !DIExpression()), !dbg !4039
  call void @llvm.dbg.value(metadata i64 2, metadata !4036, metadata !DIExpression()), !dbg !4039
  %41 = icmp ult i32 %35, 41, !dbg !4042
  br i1 %41, label %45, label %42, !dbg !4042

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !4042
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !4042
  store ptr %44, ptr %7, align 8, !dbg !4042
  br label %50, !dbg !4042

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !4042
  %47 = zext i32 %35 to i64, !dbg !4042
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !4042
  %49 = add nuw nsw i32 %35, 8, !dbg !4042
  store i32 %49, ptr %4, align 8, !dbg !4042
  br label %50, !dbg !4042

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !4042
  %53 = load ptr, ptr %52, align 8, !dbg !4042
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !4048
  store ptr %53, ptr %54, align 16, !dbg !4045, !tbaa !983
  %55 = icmp eq ptr %53, null, !dbg !4046
  br i1 %55, label %128, label %56, !dbg !4047

56:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 3, metadata !4036, metadata !DIExpression()), !dbg !4039
  call void @llvm.dbg.value(metadata i64 3, metadata !4036, metadata !DIExpression()), !dbg !4039
  %57 = icmp ult i32 %51, 41, !dbg !4042
  br i1 %57, label %61, label %58, !dbg !4042

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !4042
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !4042
  store ptr %60, ptr %7, align 8, !dbg !4042
  br label %66, !dbg !4042

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !4042
  %63 = zext i32 %51 to i64, !dbg !4042
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !4042
  %65 = add nuw nsw i32 %51, 8, !dbg !4042
  store i32 %65, ptr %4, align 8, !dbg !4042
  br label %66, !dbg !4042

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !4042
  %69 = load ptr, ptr %68, align 8, !dbg !4042
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !4048
  store ptr %69, ptr %70, align 8, !dbg !4045, !tbaa !983
  %71 = icmp eq ptr %69, null, !dbg !4046
  br i1 %71, label %128, label %72, !dbg !4047

72:                                               ; preds = %66
  call void @llvm.dbg.value(metadata i64 4, metadata !4036, metadata !DIExpression()), !dbg !4039
  call void @llvm.dbg.value(metadata i64 4, metadata !4036, metadata !DIExpression()), !dbg !4039
  %73 = icmp ult i32 %67, 41, !dbg !4042
  br i1 %73, label %77, label %74, !dbg !4042

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !4042
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !4042
  store ptr %76, ptr %7, align 8, !dbg !4042
  br label %82, !dbg !4042

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !4042
  %79 = zext i32 %67 to i64, !dbg !4042
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !4042
  %81 = add nuw nsw i32 %67, 8, !dbg !4042
  store i32 %81, ptr %4, align 8, !dbg !4042
  br label %82, !dbg !4042

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !4042
  %85 = load ptr, ptr %84, align 8, !dbg !4042
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !4048
  store ptr %85, ptr %86, align 16, !dbg !4045, !tbaa !983
  %87 = icmp eq ptr %85, null, !dbg !4046
  br i1 %87, label %128, label %88, !dbg !4047

88:                                               ; preds = %82
  call void @llvm.dbg.value(metadata i64 5, metadata !4036, metadata !DIExpression()), !dbg !4039
  call void @llvm.dbg.value(metadata i64 5, metadata !4036, metadata !DIExpression()), !dbg !4039
  %89 = icmp ult i32 %83, 41, !dbg !4042
  br i1 %89, label %93, label %90, !dbg !4042

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !4042
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !4042
  store ptr %92, ptr %7, align 8, !dbg !4042
  br label %98, !dbg !4042

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !4042
  %95 = zext i32 %83 to i64, !dbg !4042
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !4042
  %97 = add nuw nsw i32 %83, 8, !dbg !4042
  store i32 %97, ptr %4, align 8, !dbg !4042
  br label %98, !dbg !4042

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !4042
  %100 = load ptr, ptr %99, align 8, !dbg !4042
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !4048
  store ptr %100, ptr %101, align 8, !dbg !4045, !tbaa !983
  %102 = icmp eq ptr %100, null, !dbg !4046
  br i1 %102, label %128, label %103, !dbg !4047

103:                                              ; preds = %98
  call void @llvm.dbg.value(metadata i64 6, metadata !4036, metadata !DIExpression()), !dbg !4039
  %104 = load ptr, ptr %7, align 8, !dbg !4042
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !4042
  store ptr %105, ptr %7, align 8, !dbg !4042
  %106 = load ptr, ptr %104, align 8, !dbg !4042
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !4048
  store ptr %106, ptr %107, align 16, !dbg !4045, !tbaa !983
  %108 = icmp eq ptr %106, null, !dbg !4046
  br i1 %108, label %128, label %109, !dbg !4047

109:                                              ; preds = %103
  call void @llvm.dbg.value(metadata i64 7, metadata !4036, metadata !DIExpression()), !dbg !4039
  %110 = load ptr, ptr %7, align 8, !dbg !4042
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !4042
  store ptr %111, ptr %7, align 8, !dbg !4042
  %112 = load ptr, ptr %110, align 8, !dbg !4042
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !4048
  store ptr %112, ptr %113, align 8, !dbg !4045, !tbaa !983
  %114 = icmp eq ptr %112, null, !dbg !4046
  br i1 %114, label %128, label %115, !dbg !4047

115:                                              ; preds = %109
  call void @llvm.dbg.value(metadata i64 8, metadata !4036, metadata !DIExpression()), !dbg !4039
  %116 = load ptr, ptr %7, align 8, !dbg !4042
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !4042
  store ptr %117, ptr %7, align 8, !dbg !4042
  %118 = load ptr, ptr %116, align 8, !dbg !4042
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !4048
  store ptr %118, ptr %119, align 16, !dbg !4045, !tbaa !983
  %120 = icmp eq ptr %118, null, !dbg !4046
  br i1 %120, label %128, label %121, !dbg !4047

121:                                              ; preds = %115
  call void @llvm.dbg.value(metadata i64 9, metadata !4036, metadata !DIExpression()), !dbg !4039
  %122 = load ptr, ptr %7, align 8, !dbg !4042
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !4042
  store ptr %123, ptr %7, align 8, !dbg !4042
  %124 = load ptr, ptr %122, align 8, !dbg !4042
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !4048
  store ptr %124, ptr %125, align 8, !dbg !4045, !tbaa !983
  %126 = icmp eq ptr %124, null, !dbg !4046
  %127 = select i1 %126, i64 9, i64 10, !dbg !4047
  br label %128, !dbg !4047

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !4049
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !4050
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #40, !dbg !4051
  ret void, !dbg !4051
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !4052 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !4056, metadata !DIExpression()), !dbg !4065
  call void @llvm.dbg.value(metadata ptr %1, metadata !4057, metadata !DIExpression()), !dbg !4065
  call void @llvm.dbg.value(metadata ptr %2, metadata !4058, metadata !DIExpression()), !dbg !4065
  call void @llvm.dbg.value(metadata ptr %3, metadata !4059, metadata !DIExpression()), !dbg !4065
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #40, !dbg !4066
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4060, metadata !DIExpression()), !dbg !4067
  call void @llvm.va_start(ptr nonnull %5), !dbg !4068
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !4069
  call void @llvm.va_end(ptr nonnull %5), !dbg !4070
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #40, !dbg !4071
  ret void, !dbg !4071
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !4072 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !4073, !tbaa !983
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.109, ptr noundef %1), !dbg !4073
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.107, ptr noundef nonnull @.str.17.126, i32 noundef 5) #40, !dbg !4074
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.127) #40, !dbg !4074
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.107, ptr noundef nonnull @.str.19.128, i32 noundef 5) #40, !dbg !4075
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.129, ptr noundef nonnull @.str.21.130) #40, !dbg !4075
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.107, ptr noundef nonnull @.str.22.131, i32 noundef 5) #40, !dbg !4076
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.132) #40, !dbg !4076
  ret void, !dbg !4077
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xalignalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !4078 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4082, metadata !DIExpression()), !dbg !4085
  call void @llvm.dbg.value(metadata i64 %1, metadata !4083, metadata !DIExpression()), !dbg !4085
  call void @llvm.dbg.value(metadata i64 %0, metadata !4086, metadata !DIExpression()), !dbg !4090
  call void @llvm.dbg.value(metadata i64 %1, metadata !4089, metadata !DIExpression()), !dbg !4090
  call void @llvm.dbg.value(metadata i64 %0, metadata !4086, metadata !DIExpression()), !dbg !4090
  call void @llvm.dbg.value(metadata i64 %1, metadata !4089, metadata !DIExpression()), !dbg !4090
  %3 = tail call noalias ptr @aligned_alloc(i64 noundef %0, i64 noundef %1) #45, !dbg !4092
  call void @llvm.assume(i1 true) [ "align"(ptr %3, i64 %0) ], !dbg !4092
  call void @llvm.dbg.value(metadata ptr %3, metadata !4084, metadata !DIExpression()), !dbg !4085
  %4 = icmp eq ptr %3, null, !dbg !4093
  br i1 %4, label %5, label %6, !dbg !4095

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4096
  unreachable, !dbg !4096

6:                                                ; preds = %2
  ret ptr %3, !dbg !4097
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized,aligned") allocsize(1) memory(inaccessiblemem: readwrite)
declare !dbg !4098 noalias noundef ptr @aligned_alloc(i64 allocalign noundef, i64 noundef) local_unnamed_addr #30

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #27

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !4101 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4106, metadata !DIExpression()), !dbg !4109
  call void @llvm.dbg.value(metadata i64 %1, metadata !4107, metadata !DIExpression()), !dbg !4109
  call void @llvm.dbg.value(metadata i64 %2, metadata !4108, metadata !DIExpression()), !dbg !4109
  call void @llvm.dbg.value(metadata ptr %0, metadata !4110, metadata !DIExpression()), !dbg !4115
  call void @llvm.dbg.value(metadata i64 %1, metadata !4113, metadata !DIExpression()), !dbg !4115
  call void @llvm.dbg.value(metadata i64 %2, metadata !4114, metadata !DIExpression()), !dbg !4115
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !4117
  call void @llvm.dbg.value(metadata ptr %4, metadata !4118, metadata !DIExpression()), !dbg !4123
  %5 = icmp eq ptr %4, null, !dbg !4125
  br i1 %5, label %6, label %7, !dbg !4127

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !4128
  unreachable, !dbg !4128

7:                                                ; preds = %3
  ret ptr %4, !dbg !4129
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #32 !dbg !4111 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4110, metadata !DIExpression()), !dbg !4130
  call void @llvm.dbg.value(metadata i64 %1, metadata !4113, metadata !DIExpression()), !dbg !4130
  call void @llvm.dbg.value(metadata i64 %2, metadata !4114, metadata !DIExpression()), !dbg !4130
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !4131
  call void @llvm.dbg.value(metadata ptr %4, metadata !4118, metadata !DIExpression()), !dbg !4132
  %5 = icmp eq ptr %4, null, !dbg !4134
  br i1 %5, label %6, label %7, !dbg !4135

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !4136
  unreachable, !dbg !4136

7:                                                ; preds = %3
  ret ptr %4, !dbg !4137
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #33 !dbg !4138 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4142, metadata !DIExpression()), !dbg !4143
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #47, !dbg !4144
  call void @llvm.dbg.value(metadata ptr %2, metadata !4118, metadata !DIExpression()), !dbg !4145
  %3 = icmp eq ptr %2, null, !dbg !4147
  br i1 %3, label %4, label %5, !dbg !4148

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4149
  unreachable, !dbg !4149

5:                                                ; preds = %1
  ret ptr %2, !dbg !4150
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !4151 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #34

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #33 !dbg !4152 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4156, metadata !DIExpression()), !dbg !4157
  call void @llvm.dbg.value(metadata i64 %0, metadata !4158, metadata !DIExpression()), !dbg !4162
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #47, !dbg !4164
  call void @llvm.dbg.value(metadata ptr %2, metadata !4118, metadata !DIExpression()), !dbg !4165
  %3 = icmp eq ptr %2, null, !dbg !4167
  br i1 %3, label %4, label %5, !dbg !4168

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4169
  unreachable, !dbg !4169

5:                                                ; preds = %1
  ret ptr %2, !dbg !4170
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #33 !dbg !4171 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4175, metadata !DIExpression()), !dbg !4176
  call void @llvm.dbg.value(metadata i64 %0, metadata !4142, metadata !DIExpression()), !dbg !4177
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #47, !dbg !4179
  call void @llvm.dbg.value(metadata ptr %2, metadata !4118, metadata !DIExpression()), !dbg !4180
  %3 = icmp eq ptr %2, null, !dbg !4182
  br i1 %3, label %4, label %5, !dbg !4183

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4184
  unreachable, !dbg !4184

5:                                                ; preds = %1
  ret ptr %2, !dbg !4185
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !4186 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4190, metadata !DIExpression()), !dbg !4192
  call void @llvm.dbg.value(metadata i64 %1, metadata !4191, metadata !DIExpression()), !dbg !4192
  call void @llvm.dbg.value(metadata ptr %0, metadata !4193, metadata !DIExpression()), !dbg !4198
  call void @llvm.dbg.value(metadata i64 %1, metadata !4197, metadata !DIExpression()), !dbg !4198
  %3 = icmp eq i64 %1, 0, !dbg !4200
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4200
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #45, !dbg !4201
  call void @llvm.dbg.value(metadata ptr %5, metadata !4118, metadata !DIExpression()), !dbg !4202
  %6 = icmp eq ptr %5, null, !dbg !4204
  br i1 %6, label %7, label %8, !dbg !4205

7:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4206
  unreachable, !dbg !4206

8:                                                ; preds = %2
  ret ptr %5, !dbg !4207
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !4208 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #35

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !4209 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4213, metadata !DIExpression()), !dbg !4215
  call void @llvm.dbg.value(metadata i64 %1, metadata !4214, metadata !DIExpression()), !dbg !4215
  call void @llvm.dbg.value(metadata ptr %0, metadata !4216, metadata !DIExpression()), !dbg !4220
  call void @llvm.dbg.value(metadata i64 %1, metadata !4219, metadata !DIExpression()), !dbg !4220
  call void @llvm.dbg.value(metadata ptr %0, metadata !4193, metadata !DIExpression()), !dbg !4222
  call void @llvm.dbg.value(metadata i64 %1, metadata !4197, metadata !DIExpression()), !dbg !4222
  %3 = icmp eq i64 %1, 0, !dbg !4224
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4224
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #45, !dbg !4225
  call void @llvm.dbg.value(metadata ptr %5, metadata !4118, metadata !DIExpression()), !dbg !4226
  %6 = icmp eq ptr %5, null, !dbg !4228
  br i1 %6, label %7, label %8, !dbg !4229

7:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4230
  unreachable, !dbg !4230

8:                                                ; preds = %2
  ret ptr %5, !dbg !4231
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #32 !dbg !4232 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4236, metadata !DIExpression()), !dbg !4239
  call void @llvm.dbg.value(metadata i64 %1, metadata !4237, metadata !DIExpression()), !dbg !4239
  call void @llvm.dbg.value(metadata i64 %2, metadata !4238, metadata !DIExpression()), !dbg !4239
  call void @llvm.dbg.value(metadata ptr %0, metadata !4240, metadata !DIExpression()), !dbg !4245
  call void @llvm.dbg.value(metadata i64 %1, metadata !4243, metadata !DIExpression()), !dbg !4245
  call void @llvm.dbg.value(metadata i64 %2, metadata !4244, metadata !DIExpression()), !dbg !4245
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !4247
  call void @llvm.dbg.value(metadata ptr %4, metadata !4118, metadata !DIExpression()), !dbg !4248
  %5 = icmp eq ptr %4, null, !dbg !4250
  br i1 %5, label %6, label %7, !dbg !4251

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !4252
  unreachable, !dbg !4252

7:                                                ; preds = %3
  ret ptr %4, !dbg !4253
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4254 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4256, metadata !DIExpression()), !dbg !4258
  call void @llvm.dbg.value(metadata i64 %1, metadata !4257, metadata !DIExpression()), !dbg !4258
  call void @llvm.dbg.value(metadata ptr null, metadata !4110, metadata !DIExpression()), !dbg !4259
  call void @llvm.dbg.value(metadata i64 %0, metadata !4113, metadata !DIExpression()), !dbg !4259
  call void @llvm.dbg.value(metadata i64 %1, metadata !4114, metadata !DIExpression()), !dbg !4259
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #40, !dbg !4261
  call void @llvm.dbg.value(metadata ptr %3, metadata !4118, metadata !DIExpression()), !dbg !4262
  %4 = icmp eq ptr %3, null, !dbg !4264
  br i1 %4, label %5, label %6, !dbg !4265

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4266
  unreachable, !dbg !4266

6:                                                ; preds = %2
  ret ptr %3, !dbg !4267
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4268 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4270, metadata !DIExpression()), !dbg !4272
  call void @llvm.dbg.value(metadata i64 %1, metadata !4271, metadata !DIExpression()), !dbg !4272
  call void @llvm.dbg.value(metadata ptr null, metadata !4236, metadata !DIExpression()), !dbg !4273
  call void @llvm.dbg.value(metadata i64 %0, metadata !4237, metadata !DIExpression()), !dbg !4273
  call void @llvm.dbg.value(metadata i64 %1, metadata !4238, metadata !DIExpression()), !dbg !4273
  call void @llvm.dbg.value(metadata ptr null, metadata !4240, metadata !DIExpression()), !dbg !4275
  call void @llvm.dbg.value(metadata i64 %0, metadata !4243, metadata !DIExpression()), !dbg !4275
  call void @llvm.dbg.value(metadata i64 %1, metadata !4244, metadata !DIExpression()), !dbg !4275
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #40, !dbg !4277
  call void @llvm.dbg.value(metadata ptr %3, metadata !4118, metadata !DIExpression()), !dbg !4278
  %4 = icmp eq ptr %3, null, !dbg !4280
  br i1 %4, label %5, label %6, !dbg !4281

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4282
  unreachable, !dbg !4282

6:                                                ; preds = %2
  ret ptr %3, !dbg !4283
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !4284 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4288, metadata !DIExpression()), !dbg !4290
  call void @llvm.dbg.value(metadata ptr %1, metadata !4289, metadata !DIExpression()), !dbg !4290
  call void @llvm.dbg.value(metadata ptr %0, metadata !922, metadata !DIExpression()), !dbg !4291
  call void @llvm.dbg.value(metadata ptr %1, metadata !923, metadata !DIExpression()), !dbg !4291
  call void @llvm.dbg.value(metadata i64 1, metadata !924, metadata !DIExpression()), !dbg !4291
  %3 = load i64, ptr %1, align 8, !dbg !4293, !tbaa !3342
  call void @llvm.dbg.value(metadata i64 %3, metadata !925, metadata !DIExpression()), !dbg !4291
  %4 = icmp eq ptr %0, null, !dbg !4294
  br i1 %4, label %5, label %8, !dbg !4296

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4297
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4300
  br label %15, !dbg !4300

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4301
  %10 = add nuw i64 %9, 1, !dbg !4301
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4301
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4301
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4301
  call void @llvm.dbg.value(metadata i64 %13, metadata !925, metadata !DIExpression()), !dbg !4291
  br i1 %12, label %14, label %15, !dbg !4304

14:                                               ; preds = %8
  tail call void @xalloc_die() #42, !dbg !4305
  unreachable, !dbg !4305

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4291
  call void @llvm.dbg.value(metadata i64 %16, metadata !925, metadata !DIExpression()), !dbg !4291
  call void @llvm.dbg.value(metadata ptr %0, metadata !4110, metadata !DIExpression()), !dbg !4306
  call void @llvm.dbg.value(metadata i64 %16, metadata !4113, metadata !DIExpression()), !dbg !4306
  call void @llvm.dbg.value(metadata i64 1, metadata !4114, metadata !DIExpression()), !dbg !4306
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #40, !dbg !4308
  call void @llvm.dbg.value(metadata ptr %17, metadata !4118, metadata !DIExpression()), !dbg !4309
  %18 = icmp eq ptr %17, null, !dbg !4311
  br i1 %18, label %19, label %20, !dbg !4312

19:                                               ; preds = %15
  tail call void @xalloc_die() #42, !dbg !4313
  unreachable, !dbg !4313

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !922, metadata !DIExpression()), !dbg !4291
  store i64 %16, ptr %1, align 8, !dbg !4314, !tbaa !3342
  ret ptr %17, !dbg !4315
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !917 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !922, metadata !DIExpression()), !dbg !4316
  call void @llvm.dbg.value(metadata ptr %1, metadata !923, metadata !DIExpression()), !dbg !4316
  call void @llvm.dbg.value(metadata i64 %2, metadata !924, metadata !DIExpression()), !dbg !4316
  %4 = load i64, ptr %1, align 8, !dbg !4317, !tbaa !3342
  call void @llvm.dbg.value(metadata i64 %4, metadata !925, metadata !DIExpression()), !dbg !4316
  %5 = icmp eq ptr %0, null, !dbg !4318
  br i1 %5, label %6, label %13, !dbg !4319

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4320
  br i1 %7, label %8, label %20, !dbg !4321

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4322
  call void @llvm.dbg.value(metadata i64 %9, metadata !925, metadata !DIExpression()), !dbg !4316
  %10 = icmp ugt i64 %2, 128, !dbg !4324
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4325
  call void @llvm.dbg.value(metadata i64 %12, metadata !925, metadata !DIExpression()), !dbg !4316
  br label %20, !dbg !4326

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4327
  %15 = add nuw i64 %14, 1, !dbg !4327
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4327
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4327
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4327
  call void @llvm.dbg.value(metadata i64 %18, metadata !925, metadata !DIExpression()), !dbg !4316
  br i1 %17, label %19, label %20, !dbg !4328

19:                                               ; preds = %13
  tail call void @xalloc_die() #42, !dbg !4329
  unreachable, !dbg !4329

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4316
  call void @llvm.dbg.value(metadata i64 %21, metadata !925, metadata !DIExpression()), !dbg !4316
  call void @llvm.dbg.value(metadata ptr %0, metadata !4110, metadata !DIExpression()), !dbg !4330
  call void @llvm.dbg.value(metadata i64 %21, metadata !4113, metadata !DIExpression()), !dbg !4330
  call void @llvm.dbg.value(metadata i64 %2, metadata !4114, metadata !DIExpression()), !dbg !4330
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #40, !dbg !4332
  call void @llvm.dbg.value(metadata ptr %22, metadata !4118, metadata !DIExpression()), !dbg !4333
  %23 = icmp eq ptr %22, null, !dbg !4335
  br i1 %23, label %24, label %25, !dbg !4336

24:                                               ; preds = %20
  tail call void @xalloc_die() #42, !dbg !4337
  unreachable, !dbg !4337

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !922, metadata !DIExpression()), !dbg !4316
  store i64 %21, ptr %1, align 8, !dbg !4338, !tbaa !3342
  ret ptr %22, !dbg !4339
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !929 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !934, metadata !DIExpression()), !dbg !4340
  call void @llvm.dbg.value(metadata ptr %1, metadata !935, metadata !DIExpression()), !dbg !4340
  call void @llvm.dbg.value(metadata i64 %2, metadata !936, metadata !DIExpression()), !dbg !4340
  call void @llvm.dbg.value(metadata i64 %3, metadata !937, metadata !DIExpression()), !dbg !4340
  call void @llvm.dbg.value(metadata i64 %4, metadata !938, metadata !DIExpression()), !dbg !4340
  %6 = load i64, ptr %1, align 8, !dbg !4341, !tbaa !3342
  call void @llvm.dbg.value(metadata i64 %6, metadata !939, metadata !DIExpression()), !dbg !4340
  %7 = ashr i64 %6, 1, !dbg !4342
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4342
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4342
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4342
  call void @llvm.dbg.value(metadata i64 %10, metadata !940, metadata !DIExpression()), !dbg !4340
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4344
  call void @llvm.dbg.value(metadata i64 %11, metadata !940, metadata !DIExpression()), !dbg !4340
  %12 = icmp sgt i64 %3, -1, !dbg !4345
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !4347
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !4347
  call void @llvm.dbg.value(metadata i64 %15, metadata !940, metadata !DIExpression()), !dbg !4340
  %16 = icmp slt i64 %4, 0, !dbg !4348
  br i1 %16, label %17, label %30, !dbg !4348

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !4348
  br i1 %18, label %19, label %24, !dbg !4348

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !4348
  %21 = udiv i64 9223372036854775807, %20, !dbg !4348
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !4348
  br i1 %23, label %46, label %43, !dbg !4348

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !4348
  br i1 %25, label %43, label %26, !dbg !4348

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !4348
  %28 = udiv i64 -9223372036854775808, %27, !dbg !4348
  %29 = icmp ult i64 %28, %15, !dbg !4348
  br i1 %29, label %46, label %43, !dbg !4348

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !4348
  br i1 %31, label %43, label %32, !dbg !4348

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !4348
  br i1 %33, label %34, label %40, !dbg !4348

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !4348
  br i1 %35, label %43, label %36, !dbg !4348

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !4348
  %38 = udiv i64 -9223372036854775808, %37, !dbg !4348
  %39 = icmp ult i64 %38, %4, !dbg !4348
  br i1 %39, label %46, label %43, !dbg !4348

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !4348
  br i1 %42, label %46, label %43, !dbg !4348

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !941, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4340
  %44 = mul i64 %15, %4, !dbg !4348
  call void @llvm.dbg.value(metadata i64 %44, metadata !941, metadata !DIExpression()), !dbg !4340
  %45 = icmp slt i64 %44, 128, !dbg !4348
  br i1 %45, label %46, label %51, !dbg !4348

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !942, metadata !DIExpression()), !dbg !4340
  %48 = sdiv i64 %47, %4, !dbg !4349
  call void @llvm.dbg.value(metadata i64 %48, metadata !940, metadata !DIExpression()), !dbg !4340
  %49 = srem i64 %47, %4, !dbg !4352
  %50 = sub nsw i64 %47, %49, !dbg !4353
  call void @llvm.dbg.value(metadata i64 %50, metadata !941, metadata !DIExpression()), !dbg !4340
  br label %51, !dbg !4354

51:                                               ; preds = %43, %46
  %52 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !4340
  %53 = phi i64 [ %50, %46 ], [ %44, %43 ], !dbg !4340
  call void @llvm.dbg.value(metadata i64 %53, metadata !941, metadata !DIExpression()), !dbg !4340
  call void @llvm.dbg.value(metadata i64 %52, metadata !940, metadata !DIExpression()), !dbg !4340
  %54 = icmp eq ptr %0, null, !dbg !4355
  br i1 %54, label %55, label %56, !dbg !4357

55:                                               ; preds = %51
  store i64 0, ptr %1, align 8, !dbg !4358, !tbaa !3342
  br label %56, !dbg !4359

56:                                               ; preds = %55, %51
  %57 = sub nsw i64 %52, %6, !dbg !4360
  %58 = icmp slt i64 %57, %2, !dbg !4362
  br i1 %58, label %59, label %96, !dbg !4363

59:                                               ; preds = %56
  %60 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4364
  %61 = extractvalue { i64, i1 } %60, 1, !dbg !4364
  %62 = extractvalue { i64, i1 } %60, 0, !dbg !4364
  call void @llvm.dbg.value(metadata i64 %62, metadata !940, metadata !DIExpression()), !dbg !4340
  %63 = icmp sgt i64 %62, %3
  %64 = select i1 %12, i1 %63, i1 false
  %65 = or i1 %61, %64, !dbg !4365
  br i1 %65, label %95, label %66, !dbg !4365

66:                                               ; preds = %59
  br i1 %16, label %67, label %80, !dbg !4366

67:                                               ; preds = %66
  %68 = icmp slt i64 %62, 0, !dbg !4366
  br i1 %68, label %69, label %74, !dbg !4366

69:                                               ; preds = %67
  %70 = sub i64 0, %4, !dbg !4366
  %71 = udiv i64 9223372036854775807, %70, !dbg !4366
  %72 = sub nsw i64 0, %71
  %73 = icmp slt i64 %62, %72, !dbg !4366
  br i1 %73, label %95, label %93, !dbg !4366

74:                                               ; preds = %67
  %75 = icmp eq i64 %4, -1, !dbg !4366
  br i1 %75, label %93, label %76, !dbg !4366

76:                                               ; preds = %74
  %77 = sub i64 0, %4, !dbg !4366
  %78 = udiv i64 -9223372036854775808, %77, !dbg !4366
  %79 = icmp ult i64 %78, %62, !dbg !4366
  br i1 %79, label %95, label %93, !dbg !4366

80:                                               ; preds = %66
  %81 = icmp eq i64 %4, 0, !dbg !4366
  br i1 %81, label %93, label %82, !dbg !4366

82:                                               ; preds = %80
  %83 = icmp slt i64 %62, 0, !dbg !4366
  br i1 %83, label %84, label %90, !dbg !4366

84:                                               ; preds = %82
  %85 = icmp eq i64 %62, -1, !dbg !4366
  br i1 %85, label %93, label %86, !dbg !4366

86:                                               ; preds = %84
  %87 = sub i64 0, %62, !dbg !4366
  %88 = udiv i64 -9223372036854775808, %87, !dbg !4366
  %89 = icmp ult i64 %88, %4, !dbg !4366
  br i1 %89, label %95, label %93, !dbg !4366

90:                                               ; preds = %82
  %91 = udiv i64 9223372036854775807, %4
  %92 = icmp ult i64 %91, %62, !dbg !4366
  br i1 %92, label %95, label %93, !dbg !4366

93:                                               ; preds = %69, %76, %86, %90, %80, %74, %84
  call void @llvm.dbg.value(metadata !DIArgList(i64 %62, i64 %4), metadata !941, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4340
  %94 = mul i64 %62, %4, !dbg !4366
  call void @llvm.dbg.value(metadata i64 %94, metadata !941, metadata !DIExpression()), !dbg !4340
  br label %96, !dbg !4367

95:                                               ; preds = %69, %76, %86, %90, %59
  tail call void @xalloc_die() #42, !dbg !4368
  unreachable, !dbg !4368

96:                                               ; preds = %93, %56
  %97 = phi i64 [ %62, %93 ], [ %52, %56 ], !dbg !4340
  %98 = phi i64 [ %94, %93 ], [ %53, %56 ], !dbg !4340
  call void @llvm.dbg.value(metadata i64 %98, metadata !941, metadata !DIExpression()), !dbg !4340
  call void @llvm.dbg.value(metadata i64 %97, metadata !940, metadata !DIExpression()), !dbg !4340
  call void @llvm.dbg.value(metadata ptr %0, metadata !4190, metadata !DIExpression()), !dbg !4369
  call void @llvm.dbg.value(metadata i64 %98, metadata !4191, metadata !DIExpression()), !dbg !4369
  call void @llvm.dbg.value(metadata ptr %0, metadata !4193, metadata !DIExpression()), !dbg !4371
  call void @llvm.dbg.value(metadata i64 %98, metadata !4197, metadata !DIExpression()), !dbg !4371
  %99 = icmp eq i64 %98, 0, !dbg !4373
  %100 = select i1 %99, i64 1, i64 %98, !dbg !4373
  %101 = tail call ptr @realloc(ptr noundef %0, i64 noundef %100) #45, !dbg !4374
  call void @llvm.dbg.value(metadata ptr %101, metadata !4118, metadata !DIExpression()), !dbg !4375
  %102 = icmp eq ptr %101, null, !dbg !4377
  br i1 %102, label %103, label %104, !dbg !4378

103:                                              ; preds = %96
  tail call void @xalloc_die() #42, !dbg !4379
  unreachable, !dbg !4379

104:                                              ; preds = %96
  call void @llvm.dbg.value(metadata ptr %101, metadata !934, metadata !DIExpression()), !dbg !4340
  store i64 %97, ptr %1, align 8, !dbg !4380, !tbaa !3342
  ret ptr %101, !dbg !4381
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #33 !dbg !4382 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4384, metadata !DIExpression()), !dbg !4385
  call void @llvm.dbg.value(metadata i64 %0, metadata !4386, metadata !DIExpression()), !dbg !4390
  call void @llvm.dbg.value(metadata i64 1, metadata !4389, metadata !DIExpression()), !dbg !4390
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #48, !dbg !4392
  call void @llvm.dbg.value(metadata ptr %2, metadata !4118, metadata !DIExpression()), !dbg !4393
  %3 = icmp eq ptr %2, null, !dbg !4395
  br i1 %3, label %4, label %5, !dbg !4396

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4397
  unreachable, !dbg !4397

5:                                                ; preds = %1
  ret ptr %2, !dbg !4398
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4399 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #37

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4387 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4386, metadata !DIExpression()), !dbg !4400
  call void @llvm.dbg.value(metadata i64 %1, metadata !4389, metadata !DIExpression()), !dbg !4400
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #48, !dbg !4401
  call void @llvm.dbg.value(metadata ptr %3, metadata !4118, metadata !DIExpression()), !dbg !4402
  %4 = icmp eq ptr %3, null, !dbg !4404
  br i1 %4, label %5, label %6, !dbg !4405

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4406
  unreachable, !dbg !4406

6:                                                ; preds = %2
  ret ptr %3, !dbg !4407
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #33 !dbg !4408 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4410, metadata !DIExpression()), !dbg !4411
  call void @llvm.dbg.value(metadata i64 %0, metadata !4412, metadata !DIExpression()), !dbg !4416
  call void @llvm.dbg.value(metadata i64 1, metadata !4415, metadata !DIExpression()), !dbg !4416
  call void @llvm.dbg.value(metadata i64 %0, metadata !4418, metadata !DIExpression()), !dbg !4422
  call void @llvm.dbg.value(metadata i64 1, metadata !4421, metadata !DIExpression()), !dbg !4422
  call void @llvm.dbg.value(metadata i64 %0, metadata !4418, metadata !DIExpression()), !dbg !4422
  call void @llvm.dbg.value(metadata i64 1, metadata !4421, metadata !DIExpression()), !dbg !4422
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #48, !dbg !4424
  call void @llvm.dbg.value(metadata ptr %2, metadata !4118, metadata !DIExpression()), !dbg !4425
  %3 = icmp eq ptr %2, null, !dbg !4427
  br i1 %3, label %4, label %5, !dbg !4428

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4429
  unreachable, !dbg !4429

5:                                                ; preds = %1
  ret ptr %2, !dbg !4430
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4413 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4412, metadata !DIExpression()), !dbg !4431
  call void @llvm.dbg.value(metadata i64 %1, metadata !4415, metadata !DIExpression()), !dbg !4431
  call void @llvm.dbg.value(metadata i64 %0, metadata !4418, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata i64 %1, metadata !4421, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata i64 %0, metadata !4418, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata i64 %1, metadata !4421, metadata !DIExpression()), !dbg !4432
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #48, !dbg !4434
  call void @llvm.dbg.value(metadata ptr %3, metadata !4118, metadata !DIExpression()), !dbg !4435
  %4 = icmp eq ptr %3, null, !dbg !4437
  br i1 %4, label %5, label %6, !dbg !4438

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4439
  unreachable, !dbg !4439

6:                                                ; preds = %2
  ret ptr %3, !dbg !4440
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #29 !dbg !4441 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4445, metadata !DIExpression()), !dbg !4447
  call void @llvm.dbg.value(metadata i64 %1, metadata !4446, metadata !DIExpression()), !dbg !4447
  call void @llvm.dbg.value(metadata i64 %1, metadata !4142, metadata !DIExpression()), !dbg !4448
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #47, !dbg !4450
  call void @llvm.dbg.value(metadata ptr %3, metadata !4118, metadata !DIExpression()), !dbg !4451
  %4 = icmp eq ptr %3, null, !dbg !4453
  br i1 %4, label %5, label %6, !dbg !4454

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4455
  unreachable, !dbg !4455

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4456, metadata !DIExpression()), !dbg !4464
  call void @llvm.dbg.value(metadata ptr %0, metadata !4462, metadata !DIExpression()), !dbg !4464
  call void @llvm.dbg.value(metadata i64 %1, metadata !4463, metadata !DIExpression()), !dbg !4464
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !4466
  ret ptr %3, !dbg !4467
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #29 !dbg !4468 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4472, metadata !DIExpression()), !dbg !4474
  call void @llvm.dbg.value(metadata i64 %1, metadata !4473, metadata !DIExpression()), !dbg !4474
  call void @llvm.dbg.value(metadata i64 %1, metadata !4156, metadata !DIExpression()), !dbg !4475
  call void @llvm.dbg.value(metadata i64 %1, metadata !4158, metadata !DIExpression()), !dbg !4477
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #47, !dbg !4479
  call void @llvm.dbg.value(metadata ptr %3, metadata !4118, metadata !DIExpression()), !dbg !4480
  %4 = icmp eq ptr %3, null, !dbg !4482
  br i1 %4, label %5, label %6, !dbg !4483

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4484
  unreachable, !dbg !4484

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4456, metadata !DIExpression()), !dbg !4485
  call void @llvm.dbg.value(metadata ptr %0, metadata !4462, metadata !DIExpression()), !dbg !4485
  call void @llvm.dbg.value(metadata i64 %1, metadata !4463, metadata !DIExpression()), !dbg !4485
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !4487
  ret ptr %3, !dbg !4488
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4489 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4493, metadata !DIExpression()), !dbg !4496
  call void @llvm.dbg.value(metadata i64 %1, metadata !4494, metadata !DIExpression()), !dbg !4496
  %3 = add nsw i64 %1, 1, !dbg !4497
  call void @llvm.dbg.value(metadata i64 %3, metadata !4156, metadata !DIExpression()), !dbg !4498
  call void @llvm.dbg.value(metadata i64 %3, metadata !4158, metadata !DIExpression()), !dbg !4500
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #47, !dbg !4502
  call void @llvm.dbg.value(metadata ptr %4, metadata !4118, metadata !DIExpression()), !dbg !4503
  %5 = icmp eq ptr %4, null, !dbg !4505
  br i1 %5, label %6, label %7, !dbg !4506

6:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4507
  unreachable, !dbg !4507

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !4495, metadata !DIExpression()), !dbg !4496
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4508
  store i8 0, ptr %8, align 1, !dbg !4509, !tbaa !1066
  call void @llvm.dbg.value(metadata ptr %4, metadata !4456, metadata !DIExpression()), !dbg !4510
  call void @llvm.dbg.value(metadata ptr %0, metadata !4462, metadata !DIExpression()), !dbg !4510
  call void @llvm.dbg.value(metadata i64 %1, metadata !4463, metadata !DIExpression()), !dbg !4510
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !4512
  ret ptr %4, !dbg !4513
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !4514 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4516, metadata !DIExpression()), !dbg !4517
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #41, !dbg !4518
  %3 = add i64 %2, 1, !dbg !4519
  call void @llvm.dbg.value(metadata ptr %0, metadata !4445, metadata !DIExpression()), !dbg !4520
  call void @llvm.dbg.value(metadata i64 %3, metadata !4446, metadata !DIExpression()), !dbg !4520
  call void @llvm.dbg.value(metadata i64 %3, metadata !4142, metadata !DIExpression()), !dbg !4522
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #47, !dbg !4524
  call void @llvm.dbg.value(metadata ptr %4, metadata !4118, metadata !DIExpression()), !dbg !4525
  %5 = icmp eq ptr %4, null, !dbg !4527
  br i1 %5, label %6, label %7, !dbg !4528

6:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4529
  unreachable, !dbg !4529

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4456, metadata !DIExpression()), !dbg !4530
  call void @llvm.dbg.value(metadata ptr %0, metadata !4462, metadata !DIExpression()), !dbg !4530
  call void @llvm.dbg.value(metadata i64 %3, metadata !4463, metadata !DIExpression()), !dbg !4530
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #40, !dbg !4532
  ret ptr %4, !dbg !4533
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4534 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4539, !tbaa !1057
  call void @llvm.dbg.value(metadata i32 %1, metadata !4536, metadata !DIExpression()), !dbg !4540
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.145, ptr noundef nonnull @.str.2.146, i32 noundef 5) #40, !dbg !4539
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.147, ptr noundef %2) #40, !dbg !4539
  %3 = icmp eq i32 %1, 0, !dbg !4539
  tail call void @llvm.assume(i1 %3), !dbg !4539
  tail call void @abort() #42, !dbg !4541
  unreachable, !dbg !4541
}

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !4542 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4580, metadata !DIExpression()), !dbg !4585
  %2 = tail call i64 @__fpending(ptr noundef %0) #40, !dbg !4586
  call void @llvm.dbg.value(metadata i1 poison, metadata !4581, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4585
  call void @llvm.dbg.value(metadata ptr %0, metadata !4587, metadata !DIExpression()), !dbg !4590
  %3 = load i32, ptr %0, align 8, !dbg !4592, !tbaa !4593
  %4 = and i32 %3, 32, !dbg !4594
  %5 = icmp eq i32 %4, 0, !dbg !4594
  call void @llvm.dbg.value(metadata i1 %5, metadata !4583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4585
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #40, !dbg !4595
  %7 = icmp eq i32 %6, 0, !dbg !4596
  call void @llvm.dbg.value(metadata i1 %7, metadata !4584, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4585
  br i1 %5, label %8, label %18, !dbg !4597

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !4599
  call void @llvm.dbg.value(metadata i1 %9, metadata !4581, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4585
  %10 = select i1 %7, i1 true, i1 %9, !dbg !4600
  %11 = xor i1 %7, true, !dbg !4600
  %12 = sext i1 %11 to i32, !dbg !4600
  br i1 %10, label %21, label %13, !dbg !4600

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #43, !dbg !4601
  %15 = load i32, ptr %14, align 4, !dbg !4601, !tbaa !1057
  %16 = icmp ne i32 %15, 9, !dbg !4602
  %17 = sext i1 %16 to i32, !dbg !4603
  br label %21, !dbg !4603

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !4604

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #43, !dbg !4606
  store i32 0, ptr %20, align 4, !dbg !4608, !tbaa !1057
  br label %21, !dbg !4606

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !4585
  ret i32 %22, !dbg !4609
}

; Function Attrs: nounwind
declare !dbg !4610 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !4613 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4651, metadata !DIExpression()), !dbg !4655
  call void @llvm.dbg.value(metadata i32 0, metadata !4652, metadata !DIExpression()), !dbg !4655
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !4656
  call void @llvm.dbg.value(metadata i32 %2, metadata !4653, metadata !DIExpression()), !dbg !4655
  %3 = icmp slt i32 %2, 0, !dbg !4657
  br i1 %3, label %4, label %6, !dbg !4659

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4660
  br label %24, !dbg !4661

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #40, !dbg !4662
  %8 = icmp eq i32 %7, 0, !dbg !4662
  br i1 %8, label %13, label %9, !dbg !4664

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !4665
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #40, !dbg !4666
  %12 = icmp eq i64 %11, -1, !dbg !4667
  br i1 %12, label %16, label %13, !dbg !4668

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #40, !dbg !4669
  %15 = icmp eq i32 %14, 0, !dbg !4669
  br i1 %15, label %16, label %18, !dbg !4670

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !4652, metadata !DIExpression()), !dbg !4655
  call void @llvm.dbg.value(metadata i32 0, metadata !4654, metadata !DIExpression()), !dbg !4655
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4671
  call void @llvm.dbg.value(metadata i32 %17, metadata !4654, metadata !DIExpression()), !dbg !4655
  br label %24, !dbg !4672

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #43, !dbg !4673
  %20 = load i32, ptr %19, align 4, !dbg !4673, !tbaa !1057
  call void @llvm.dbg.value(metadata i32 %20, metadata !4652, metadata !DIExpression()), !dbg !4655
  call void @llvm.dbg.value(metadata i32 0, metadata !4654, metadata !DIExpression()), !dbg !4655
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4671
  call void @llvm.dbg.value(metadata i32 %21, metadata !4654, metadata !DIExpression()), !dbg !4655
  %22 = icmp eq i32 %20, 0, !dbg !4674
  br i1 %22, label %24, label %23, !dbg !4672

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !4676, !tbaa !1057
  call void @llvm.dbg.value(metadata i32 -1, metadata !4654, metadata !DIExpression()), !dbg !4655
  br label %24, !dbg !4678

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4655
  ret i32 %25, !dbg !4679
}

; Function Attrs: nofree nounwind
declare !dbg !4680 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !4681 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !4682 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4720, metadata !DIExpression()), !dbg !4721
  %2 = icmp eq ptr %0, null, !dbg !4722
  br i1 %2, label %6, label %3, !dbg !4724

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #40, !dbg !4725
  %5 = icmp eq i32 %4, 0, !dbg !4725
  br i1 %5, label %6, label %8, !dbg !4726

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !4727
  br label %16, !dbg !4728

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !4729, metadata !DIExpression()), !dbg !4734
  %9 = load i32, ptr %0, align 8, !dbg !4736, !tbaa !4593
  %10 = and i32 %9, 256, !dbg !4738
  %11 = icmp eq i32 %10, 0, !dbg !4738
  br i1 %11, label %14, label %12, !dbg !4739

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #40, !dbg !4740
  br label %14, !dbg !4740

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !4741
  br label %16, !dbg !4742

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !4721
  ret i32 %17, !dbg !4743
}

; Function Attrs: nofree nounwind
declare !dbg !4744 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !4745 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4783, metadata !DIExpression()), !dbg !4789
  call void @llvm.dbg.value(metadata i64 %1, metadata !4784, metadata !DIExpression()), !dbg !4789
  call void @llvm.dbg.value(metadata i32 %2, metadata !4785, metadata !DIExpression()), !dbg !4789
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !4790
  %5 = load ptr, ptr %4, align 8, !dbg !4790, !tbaa !4791
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !4792
  %7 = load ptr, ptr %6, align 8, !dbg !4792, !tbaa !4793
  %8 = icmp eq ptr %5, %7, !dbg !4794
  br i1 %8, label %9, label %27, !dbg !4795

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !4796
  %11 = load ptr, ptr %10, align 8, !dbg !4796, !tbaa !2167
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !4797
  %13 = load ptr, ptr %12, align 8, !dbg !4797, !tbaa !4798
  %14 = icmp eq ptr %11, %13, !dbg !4799
  br i1 %14, label %15, label %27, !dbg !4800

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !4801
  %17 = load ptr, ptr %16, align 8, !dbg !4801, !tbaa !4802
  %18 = icmp eq ptr %17, null, !dbg !4803
  br i1 %18, label %19, label %27, !dbg !4804

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !4805
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #40, !dbg !4806
  call void @llvm.dbg.value(metadata i64 %21, metadata !4786, metadata !DIExpression()), !dbg !4807
  %22 = icmp eq i64 %21, -1, !dbg !4808
  br i1 %22, label %29, label %23, !dbg !4810

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !4811, !tbaa !4593
  %25 = and i32 %24, -17, !dbg !4811
  store i32 %25, ptr %0, align 8, !dbg !4811, !tbaa !4593
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !4812
  store i64 %21, ptr %26, align 8, !dbg !4813, !tbaa !4814
  br label %29, !dbg !4815

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !4816
  br label %29, !dbg !4817

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !4789
  ret i32 %30, !dbg !4818
}

; Function Attrs: nofree nounwind
declare !dbg !4819 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4822 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4827, metadata !DIExpression()), !dbg !4832
  call void @llvm.dbg.value(metadata ptr %1, metadata !4828, metadata !DIExpression()), !dbg !4832
  call void @llvm.dbg.value(metadata i64 %2, metadata !4829, metadata !DIExpression()), !dbg !4832
  call void @llvm.dbg.value(metadata ptr %3, metadata !4830, metadata !DIExpression()), !dbg !4832
  %5 = icmp eq ptr %1, null, !dbg !4833
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4835
  %7 = select i1 %5, ptr @.str.158, ptr %1, !dbg !4835
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4835
  call void @llvm.dbg.value(metadata i64 %8, metadata !4829, metadata !DIExpression()), !dbg !4832
  call void @llvm.dbg.value(metadata ptr %7, metadata !4828, metadata !DIExpression()), !dbg !4832
  call void @llvm.dbg.value(metadata ptr %6, metadata !4827, metadata !DIExpression()), !dbg !4832
  %9 = icmp eq ptr %3, null, !dbg !4836
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4838
  call void @llvm.dbg.value(metadata ptr %10, metadata !4830, metadata !DIExpression()), !dbg !4832
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #40, !dbg !4839
  call void @llvm.dbg.value(metadata i64 %11, metadata !4831, metadata !DIExpression()), !dbg !4832
  %12 = icmp ult i64 %11, -3, !dbg !4840
  br i1 %12, label %13, label %17, !dbg !4842

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #41, !dbg !4843
  %15 = icmp eq i32 %14, 0, !dbg !4843
  br i1 %15, label %16, label %29, !dbg !4844

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4845, metadata !DIExpression()), !dbg !4850
  call void @llvm.dbg.value(metadata ptr %10, metadata !4852, metadata !DIExpression()), !dbg !4857
  call void @llvm.dbg.value(metadata i32 0, metadata !4855, metadata !DIExpression()), !dbg !4857
  call void @llvm.dbg.value(metadata i64 8, metadata !4856, metadata !DIExpression()), !dbg !4857
  store i64 0, ptr %10, align 1, !dbg !4859
  br label %29, !dbg !4860

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4861
  br i1 %18, label %19, label %20, !dbg !4863

19:                                               ; preds = %17
  tail call void @abort() #42, !dbg !4864
  unreachable, !dbg !4864

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4865

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #40, !dbg !4867
  br i1 %23, label %29, label %24, !dbg !4868

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4869
  br i1 %25, label %29, label %26, !dbg !4872

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4873, !tbaa !1066
  %28 = zext i8 %27 to i32, !dbg !4874
  store i32 %28, ptr %6, align 4, !dbg !4875, !tbaa !1057
  br label %29, !dbg !4876

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4832
  ret i64 %30, !dbg !4877
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4878 i32 @mbsinit(ptr noundef) local_unnamed_addr #38

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #39 !dbg !4884 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4886, metadata !DIExpression()), !dbg !4890
  call void @llvm.dbg.value(metadata i64 %1, metadata !4887, metadata !DIExpression()), !dbg !4890
  call void @llvm.dbg.value(metadata i64 %2, metadata !4888, metadata !DIExpression()), !dbg !4890
  %4 = icmp eq i64 %2, 0, !dbg !4891
  br i1 %4, label %8, label %5, !dbg !4891

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !4891
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4891
  br i1 %7, label %13, label %8, !dbg !4891

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4889, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4890
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4889, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4890
  %9 = mul i64 %2, %1, !dbg !4891
  call void @llvm.dbg.value(metadata i64 %9, metadata !4889, metadata !DIExpression()), !dbg !4890
  call void @llvm.dbg.value(metadata ptr %0, metadata !4893, metadata !DIExpression()), !dbg !4897
  call void @llvm.dbg.value(metadata i64 %9, metadata !4896, metadata !DIExpression()), !dbg !4897
  %10 = icmp eq i64 %9, 0, !dbg !4899
  %11 = select i1 %10, i64 1, i64 %9, !dbg !4899
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #45, !dbg !4900
  br label %15, !dbg !4901

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4889, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4890
  %14 = tail call ptr @__errno_location() #43, !dbg !4902
  store i32 12, ptr %14, align 4, !dbg !4904, !tbaa !1057
  br label %15, !dbg !4905

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !4890
  ret ptr %16, !dbg !4906
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !4907 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !4911, metadata !DIExpression()), !dbg !4916
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #40, !dbg !4917
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4912, metadata !DIExpression()), !dbg !4918
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #40, !dbg !4919
  %4 = icmp eq i32 %3, 0, !dbg !4919
  br i1 %4, label %5, label %12, !dbg !4921

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4922, metadata !DIExpression()), !dbg !4926
  %6 = load i16, ptr %2, align 16, !dbg !4929
  %7 = icmp eq i16 %6, 67, !dbg !4929
  br i1 %7, label %11, label %8, !dbg !4930

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4922, metadata !DIExpression()), !dbg !4931
  call void @llvm.dbg.value(metadata ptr @.str.1.163, metadata !4925, metadata !DIExpression()), !dbg !4931
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.163, i64 6), !dbg !4933
  %10 = icmp eq i32 %9, 0, !dbg !4934
  br i1 %10, label %11, label %12, !dbg !4935

11:                                               ; preds = %8, %5
  br label %12, !dbg !4936

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4916
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #40, !dbg !4937
  ret i1 %13, !dbg !4937
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4938 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4942, metadata !DIExpression()), !dbg !4945
  call void @llvm.dbg.value(metadata ptr %1, metadata !4943, metadata !DIExpression()), !dbg !4945
  call void @llvm.dbg.value(metadata i64 %2, metadata !4944, metadata !DIExpression()), !dbg !4945
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #40, !dbg !4946
  ret i32 %4, !dbg !4947
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !4948 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4952, metadata !DIExpression()), !dbg !4953
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #40, !dbg !4954
  ret ptr %2, !dbg !4955
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !4956 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4958, metadata !DIExpression()), !dbg !4960
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #40, !dbg !4961
  call void @llvm.dbg.value(metadata ptr %2, metadata !4959, metadata !DIExpression()), !dbg !4960
  ret ptr %2, !dbg !4962
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4963 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4965, metadata !DIExpression()), !dbg !4972
  call void @llvm.dbg.value(metadata ptr %1, metadata !4966, metadata !DIExpression()), !dbg !4972
  call void @llvm.dbg.value(metadata i64 %2, metadata !4967, metadata !DIExpression()), !dbg !4972
  call void @llvm.dbg.value(metadata i32 %0, metadata !4958, metadata !DIExpression()), !dbg !4973
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #40, !dbg !4975
  call void @llvm.dbg.value(metadata ptr %4, metadata !4959, metadata !DIExpression()), !dbg !4973
  call void @llvm.dbg.value(metadata ptr %4, metadata !4968, metadata !DIExpression()), !dbg !4972
  %5 = icmp eq ptr %4, null, !dbg !4976
  br i1 %5, label %6, label %9, !dbg !4977

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4978
  br i1 %7, label %19, label %8, !dbg !4981

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !4982, !tbaa !1066
  br label %19, !dbg !4983

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #41, !dbg !4984
  call void @llvm.dbg.value(metadata i64 %10, metadata !4969, metadata !DIExpression()), !dbg !4985
  %11 = icmp ult i64 %10, %2, !dbg !4986
  br i1 %11, label %12, label %14, !dbg !4988

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4989
  call void @llvm.dbg.value(metadata ptr %1, metadata !4991, metadata !DIExpression()), !dbg !4996
  call void @llvm.dbg.value(metadata ptr %4, metadata !4994, metadata !DIExpression()), !dbg !4996
  call void @llvm.dbg.value(metadata i64 %13, metadata !4995, metadata !DIExpression()), !dbg !4996
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #40, !dbg !4998
  br label %19, !dbg !4999

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !5000
  br i1 %15, label %19, label %16, !dbg !5003

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !5004
  call void @llvm.dbg.value(metadata ptr %1, metadata !4991, metadata !DIExpression()), !dbg !5006
  call void @llvm.dbg.value(metadata ptr %4, metadata !4994, metadata !DIExpression()), !dbg !5006
  call void @llvm.dbg.value(metadata i64 %17, metadata !4995, metadata !DIExpression()), !dbg !5006
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #40, !dbg !5008
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !5009
  store i8 0, ptr %18, align 1, !dbg !5010, !tbaa !1066
  br label %19, !dbg !5011

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !5012
  ret i32 %20, !dbg !5013
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
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree nounwind willreturn memory(argmem: read) }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #28 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nounwind allocsize(1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized,aligned") allocsize(1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { inlinehint nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { nounwind allocsize(0) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { nounwind allocsize(0,1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #40 = { nounwind }
attributes #41 = { nounwind willreturn memory(read) }
attributes #42 = { noreturn nounwind }
attributes #43 = { nounwind willreturn memory(none) }
attributes #44 = { noreturn }
attributes #45 = { nounwind allocsize(1) }
attributes #46 = { cold }
attributes #47 = { nounwind allocsize(0) }
attributes #48 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!89, !544, !548, !888, !563, !856, !891, !619, !894, !896, !899, !633, !647, !698, !901, !904, !850, !911, !913, !944, !946, !948, !950, !952, !872, !954, !957, !961, !963}
!llvm.ident = !{!965, !965, !965, !965, !965, !965, !965, !965, !965, !965, !965, !965, !965, !965, !965, !965, !965, !965, !965, !965, !965, !965, !965, !965, !965, !965, !965, !965, !965}
!llvm.module.flags = !{!966, !967, !968, !969, !970, !971}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 86, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/cat.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6053c0d0ebd845267d30b8d265d68ed1")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 89, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 33)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 93, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 41)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 99, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 4)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 99, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 376, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 47)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 102, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 71)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 105, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 368, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 46)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 108, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 520, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 65)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 111, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 52)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 114, type: !39, isLocal: true, isDefinition: true)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(scope: null, file: !2, line: 117, type: !34, isLocal: true, isDefinition: true)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(scope: null, file: !2, line: 120, type: !53, isLocal: true, isDefinition: true)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 456, elements: !54)
!54 = !{!55}
!55 = !DISubrange(count: 57)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(scope: null, file: !2, line: 123, type: !58, isLocal: true, isDefinition: true)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 38)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(scope: null, file: !2, line: 126, type: !63, isLocal: true, isDefinition: true)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 592, elements: !64)
!64 = !{!65}
!65 = !DISubrange(count: 74)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(scope: null, file: !2, line: 129, type: !68, isLocal: true, isDefinition: true)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !69)
!69 = !{!70}
!70 = !DISubrange(count: 50)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(scope: null, file: !2, line: 130, type: !73, isLocal: true, isDefinition: true)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !74)
!74 = !{!75}
!75 = !DISubrange(count: 62)
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(scope: null, file: !2, line: 131, type: !78, isLocal: true, isDefinition: true)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1096, elements: !79)
!79 = !{!80}
!80 = !DISubrange(count: 137)
!81 = !DIGlobalVariableExpression(var: !82, expr: !DIExpression())
!82 = distinct !DIGlobalVariable(name: "long_options", scope: !83, file: !2, line: 566, type: !528, isLocal: true, isDefinition: true)
!83 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 550, type: !84, scopeLine: 551, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !452)
!84 = !DISubroutineType(types: !85)
!85 = !{!86, !86, !87}
!86 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!89 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !90, retainedTypes: !143, globals: !154, splitDebugInlining: false, nameTableKind: None)
!90 = !{!91, !96, !111, !120, !135, !139}
!91 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !92, line: 337, baseType: !86, size: 32, elements: !93)
!92 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!93 = !{!94, !95}
!94 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -130)
!95 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -131)
!96 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !97, line: 42, baseType: !98, size: 32, elements: !99)
!97 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!98 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!99 = !{!100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110}
!100 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!101 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!102 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!103 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!104 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!105 = !DIEnumerator(name: "c_quoting_style", value: 5)
!106 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!107 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!108 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!109 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!110 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!111 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !112, line: 44, baseType: !98, size: 32, elements: !113)
!112 = !DIFile(filename: "./lib/fadvise.h", directory: "/src", checksumkind: CSK_MD5, checksum: "8bbfadd819a4efc4455fc2741023266a")
!113 = !{!114, !115, !116, !117, !118, !119}
!114 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0)
!115 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2)
!116 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5)
!117 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4)
!118 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3)
!119 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1)
!120 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !121, line: 46, baseType: !98, size: 32, elements: !122)
!121 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!122 = !{!123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134}
!123 = !DIEnumerator(name: "_ISupper", value: 256)
!124 = !DIEnumerator(name: "_ISlower", value: 512)
!125 = !DIEnumerator(name: "_ISalpha", value: 1024)
!126 = !DIEnumerator(name: "_ISdigit", value: 2048)
!127 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!128 = !DIEnumerator(name: "_ISspace", value: 8192)
!129 = !DIEnumerator(name: "_ISprint", value: 16384)
!130 = !DIEnumerator(name: "_ISgraph", value: 32768)
!131 = !DIEnumerator(name: "_ISblank", value: 1)
!132 = !DIEnumerator(name: "_IScntrl", value: 2)
!133 = !DIEnumerator(name: "_ISpunct", value: 4)
!134 = !DIEnumerator(name: "_ISalnum", value: 8)
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !136, line: 79, baseType: !98, size: 32, elements: !137)
!136 = !DIFile(filename: "src/ioblksize.h", directory: "/src", checksumkind: CSK_MD5, checksum: "f13fda6387359f0e51e261e99a350a45")
!137 = !{!138}
!138 = !DIEnumerator(name: "IO_BUFSIZE", value: 262144)
!139 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !140, line: 36, baseType: !98, size: 32, elements: !141)
!140 = !DIFile(filename: "./lib/sys-limits.h", directory: "/src", checksumkind: CSK_MD5, checksum: "6cbf2bea168df2a7bb951ccec5cf6fff")
!141 = !{!142}
!142 = !DIEnumerator(name: "SYS_BUFSIZE_MAX", value: 2146435072)
!143 = !{!88, !144, !145, !146, !147, !86, !148, !149, !151, !153}
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!145 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!146 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!147 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!148 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !150, line: 46, baseType: !147)
!150 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!153 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!154 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !49, !51, !56, !61, !66, !71, !76, !155, !160, !165, !170, !175, !180, !182, !187, !192, !81, !197, !202, !204, !209, !214, !216, !221, !226, !231, !233, !238, !243, !248, !250, !255, !257, !259, !264, !342, !344, !346, !348, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !390, !395, !400, !402, !404, !406, !408, !410, !415, !417, !419, !421, !426, !431, !436, !438, !440, !442, !444, !446, !448, !450}
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(scope: null, file: !2, line: 568, type: !157, isLocal: true, isDefinition: true)
!157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !158)
!158 = !{!159}
!159 = !DISubrange(count: 16)
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(scope: null, file: !2, line: 569, type: !162, isLocal: true, isDefinition: true)
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !163)
!163 = !{!164}
!164 = !DISubrange(count: 7)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(scope: null, file: !2, line: 570, type: !167, isLocal: true, isDefinition: true)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !168)
!168 = !{!169}
!169 = !DISubrange(count: 14)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(scope: null, file: !2, line: 571, type: !172, isLocal: true, isDefinition: true)
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !173)
!173 = !{!174}
!174 = !DISubrange(count: 17)
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(scope: null, file: !2, line: 572, type: !177, isLocal: true, isDefinition: true)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !178)
!178 = !{!179}
!179 = !DISubrange(count: 10)
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(scope: null, file: !2, line: 573, type: !177, isLocal: true, isDefinition: true)
!182 = !DIGlobalVariableExpression(var: !183, expr: !DIExpression())
!183 = distinct !DIGlobalVariable(scope: null, file: !2, line: 574, type: !184, isLocal: true, isDefinition: true)
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !185)
!185 = !{!186}
!186 = !DISubrange(count: 9)
!187 = !DIGlobalVariableExpression(var: !188, expr: !DIExpression())
!188 = distinct !DIGlobalVariable(scope: null, file: !2, line: 575, type: !189, isLocal: true, isDefinition: true)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !190)
!190 = !{!191}
!191 = !DISubrange(count: 5)
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(scope: null, file: !2, line: 576, type: !194, isLocal: true, isDefinition: true)
!194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !195)
!195 = !{!196}
!196 = !DISubrange(count: 8)
!197 = !DIGlobalVariableExpression(var: !198, expr: !DIExpression())
!198 = distinct !DIGlobalVariable(scope: null, file: !2, line: 582, type: !199, isLocal: true, isDefinition: true)
!199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !200)
!200 = !{!201}
!201 = !DISubrange(count: 1)
!202 = !DIGlobalVariableExpression(var: !203, expr: !DIExpression())
!203 = distinct !DIGlobalVariable(scope: null, file: !2, line: 583, type: !177, isLocal: true, isDefinition: true)
!204 = !DIGlobalVariableExpression(var: !205, expr: !DIExpression())
!205 = distinct !DIGlobalVariable(scope: null, file: !2, line: 583, type: !206, isLocal: true, isDefinition: true)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !207)
!207 = !{!208}
!208 = !DISubrange(count: 24)
!209 = !DIGlobalVariableExpression(var: !210, expr: !DIExpression())
!210 = distinct !DIGlobalVariable(scope: null, file: !2, line: 595, type: !211, isLocal: true, isDefinition: true)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !212)
!212 = !{!213}
!213 = !DISubrange(count: 11)
!214 = !DIGlobalVariableExpression(var: !215, expr: !DIExpression())
!215 = distinct !DIGlobalVariable(scope: null, file: !2, line: 647, type: !167, isLocal: true, isDefinition: true)
!216 = !DIGlobalVariableExpression(var: !217, expr: !DIExpression())
!217 = distinct !DIGlobalVariable(scope: null, file: !2, line: 647, type: !218, isLocal: true, isDefinition: true)
!218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !219)
!219 = !{!220}
!220 = !DISubrange(count: 18)
!221 = !DIGlobalVariableExpression(var: !222, expr: !DIExpression())
!222 = distinct !DIGlobalVariable(scope: null, file: !2, line: 647, type: !223, isLocal: true, isDefinition: true)
!223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !224)
!224 = !{!225}
!225 = !DISubrange(count: 19)
!226 = !DIGlobalVariableExpression(var: !227, expr: !DIExpression())
!227 = distinct !DIGlobalVariable(scope: null, file: !2, line: 647, type: !228, isLocal: true, isDefinition: true)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !229)
!229 = !{!230}
!230 = !DISubrange(count: 20)
!231 = !DIGlobalVariableExpression(var: !232, expr: !DIExpression())
!232 = distinct !DIGlobalVariable(scope: null, file: !2, line: 657, type: !157, isLocal: true, isDefinition: true)
!233 = !DIGlobalVariableExpression(var: !234, expr: !DIExpression())
!234 = distinct !DIGlobalVariable(scope: null, file: !2, line: 676, type: !235, isLocal: true, isDefinition: true)
!235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !236)
!236 = !{!237}
!237 = !DISubrange(count: 2)
!238 = !DIGlobalVariableExpression(var: !239, expr: !DIExpression())
!239 = distinct !DIGlobalVariable(scope: null, file: !2, line: 699, type: !240, isLocal: true, isDefinition: true)
!240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !241)
!241 = !{!242}
!242 = !DISubrange(count: 3)
!243 = !DIGlobalVariableExpression(var: !244, expr: !DIExpression())
!244 = distinct !DIGlobalVariable(scope: null, file: !2, line: 736, type: !245, isLocal: true, isDefinition: true)
!245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !246)
!246 = !{!247}
!247 = !DISubrange(count: 30)
!248 = !DIGlobalVariableExpression(var: !249, expr: !DIExpression())
!249 = distinct !DIGlobalVariable(scope: null, file: !2, line: 821, type: !235, isLocal: true, isDefinition: true)
!250 = !DIGlobalVariableExpression(var: !251, expr: !DIExpression())
!251 = distinct !DIGlobalVariable(scope: null, file: !2, line: 826, type: !252, isLocal: true, isDefinition: true)
!252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !253)
!253 = !{!254}
!254 = !DISubrange(count: 23)
!255 = !DIGlobalVariableExpression(var: !256, expr: !DIExpression())
!256 = distinct !DIGlobalVariable(name: "infile", scope: !89, file: !2, line: 50, type: !151, isLocal: true, isDefinition: true)
!257 = !DIGlobalVariableExpression(var: !258, expr: !DIExpression())
!258 = distinct !DIGlobalVariable(name: "input_desc", scope: !89, file: !2, line: 53, type: !86, isLocal: true, isDefinition: true)
!259 = !DIGlobalVariableExpression(var: !260, expr: !DIExpression())
!260 = distinct !DIGlobalVariable(scope: null, file: !92, line: 729, type: !261, isLocal: true, isDefinition: true)
!261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !262)
!262 = !{!263}
!263 = !DISubrange(count: 56)
!264 = !DIGlobalVariableExpression(var: !265, expr: !DIExpression())
!265 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !266, file: !92, line: 575, type: !86, isLocal: true, isDefinition: true)
!266 = distinct !DISubprogram(name: "oputs_", scope: !92, file: !92, line: 573, type: !267, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !269)
!267 = !DISubroutineType(cc: DW_CC_nocall, types: !268)
!268 = !{null, !151, !151}
!269 = !{!270, !271, !272, !275, !276, !277, !278, !282, !283, !284, !285, !287, !336, !337, !338, !340, !341}
!270 = !DILocalVariable(name: "program", arg: 1, scope: !266, file: !92, line: 573, type: !151)
!271 = !DILocalVariable(name: "option", arg: 2, scope: !266, file: !92, line: 573, type: !151)
!272 = !DILocalVariable(name: "term", scope: !273, file: !92, line: 585, type: !151)
!273 = distinct !DILexicalBlock(scope: !274, file: !92, line: 582, column: 5)
!274 = distinct !DILexicalBlock(scope: !266, file: !92, line: 581, column: 7)
!275 = !DILocalVariable(name: "double_space", scope: !266, file: !92, line: 594, type: !145)
!276 = !DILocalVariable(name: "first_word", scope: !266, file: !92, line: 595, type: !151)
!277 = !DILocalVariable(name: "option_text", scope: !266, file: !92, line: 596, type: !151)
!278 = !DILocalVariable(name: "s", scope: !279, file: !92, line: 608, type: !151)
!279 = distinct !DILexicalBlock(scope: !280, file: !92, line: 605, column: 5)
!280 = distinct !DILexicalBlock(scope: !281, file: !92, line: 604, column: 12)
!281 = distinct !DILexicalBlock(scope: !266, file: !92, line: 597, column: 7)
!282 = !DILocalVariable(name: "spaces", scope: !279, file: !92, line: 609, type: !149)
!283 = !DILocalVariable(name: "anchor_len", scope: !266, file: !92, line: 620, type: !149)
!284 = !DILocalVariable(name: "desc_text", scope: !266, file: !92, line: 625, type: !151)
!285 = !DILocalVariable(name: "__ptr", scope: !286, file: !92, line: 644, type: !151)
!286 = distinct !DILexicalBlock(scope: !266, file: !92, line: 644, column: 3)
!287 = !DILocalVariable(name: "__stream", scope: !286, file: !92, line: 644, type: !288)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !290, line: 7, baseType: !291)
!290 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !292, line: 49, size: 1728, elements: !293)
!292 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!293 = !{!294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !309, !311, !312, !313, !316, !317, !319, !320, !323, !325, !328, !331, !332, !333, !334, !335}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !291, file: !292, line: 51, baseType: !86, size: 32)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !291, file: !292, line: 54, baseType: !88, size: 64, offset: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !291, file: !292, line: 55, baseType: !88, size: 64, offset: 128)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !291, file: !292, line: 56, baseType: !88, size: 64, offset: 192)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !291, file: !292, line: 57, baseType: !88, size: 64, offset: 256)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !291, file: !292, line: 58, baseType: !88, size: 64, offset: 320)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !291, file: !292, line: 59, baseType: !88, size: 64, offset: 384)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !291, file: !292, line: 60, baseType: !88, size: 64, offset: 448)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !291, file: !292, line: 61, baseType: !88, size: 64, offset: 512)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !291, file: !292, line: 64, baseType: !88, size: 64, offset: 576)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !291, file: !292, line: 65, baseType: !88, size: 64, offset: 640)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !291, file: !292, line: 66, baseType: !88, size: 64, offset: 704)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !291, file: !292, line: 68, baseType: !307, size: 64, offset: 768)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !292, line: 36, flags: DIFlagFwdDecl)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !291, file: !292, line: 70, baseType: !310, size: 64, offset: 832)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !291, file: !292, line: 72, baseType: !86, size: 32, offset: 896)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !291, file: !292, line: 73, baseType: !86, size: 32, offset: 928)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !291, file: !292, line: 74, baseType: !314, size: 64, offset: 960)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !315, line: 152, baseType: !146)
!315 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!316 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !291, file: !292, line: 77, baseType: !148, size: 16, offset: 1024)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !291, file: !292, line: 78, baseType: !318, size: 8, offset: 1040)
!318 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !291, file: !292, line: 79, baseType: !199, size: 8, offset: 1048)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !291, file: !292, line: 81, baseType: !321, size: 64, offset: 1088)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !292, line: 43, baseType: null)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !291, file: !292, line: 89, baseType: !324, size: 64, offset: 1152)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !315, line: 153, baseType: !146)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !291, file: !292, line: 91, baseType: !326, size: 64, offset: 1216)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !292, line: 37, flags: DIFlagFwdDecl)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !291, file: !292, line: 92, baseType: !329, size: 64, offset: 1280)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !292, line: 38, flags: DIFlagFwdDecl)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !291, file: !292, line: 93, baseType: !310, size: 64, offset: 1344)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !291, file: !292, line: 94, baseType: !144, size: 64, offset: 1408)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !291, file: !292, line: 95, baseType: !149, size: 64, offset: 1472)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !291, file: !292, line: 96, baseType: !86, size: 32, offset: 1536)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !291, file: !292, line: 98, baseType: !228, size: 160, offset: 1568)
!336 = !DILocalVariable(name: "__cnt", scope: !286, file: !92, line: 644, type: !149)
!337 = !DILocalVariable(name: "url_program", scope: !266, file: !92, line: 648, type: !151)
!338 = !DILocalVariable(name: "__ptr", scope: !339, file: !92, line: 686, type: !151)
!339 = distinct !DILexicalBlock(scope: !266, file: !92, line: 686, column: 3)
!340 = !DILocalVariable(name: "__stream", scope: !339, file: !92, line: 686, type: !288)
!341 = !DILocalVariable(name: "__cnt", scope: !339, file: !92, line: 686, type: !149)
!342 = !DIGlobalVariableExpression(var: !343, expr: !DIExpression())
!343 = distinct !DIGlobalVariable(scope: null, file: !92, line: 585, type: !189, isLocal: true, isDefinition: true)
!344 = !DIGlobalVariableExpression(var: !345, expr: !DIExpression())
!345 = distinct !DIGlobalVariable(scope: null, file: !92, line: 586, type: !189, isLocal: true, isDefinition: true)
!346 = !DIGlobalVariableExpression(var: !347, expr: !DIExpression())
!347 = distinct !DIGlobalVariable(scope: null, file: !92, line: 595, type: !19, isLocal: true, isDefinition: true)
!348 = !DIGlobalVariableExpression(var: !349, expr: !DIExpression())
!349 = distinct !DIGlobalVariable(scope: null, file: !92, line: 620, type: !350, isLocal: true, isDefinition: true)
!350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !351)
!351 = !{!352}
!352 = !DISubrange(count: 6)
!353 = !DIGlobalVariableExpression(var: !354, expr: !DIExpression())
!354 = distinct !DIGlobalVariable(scope: null, file: !92, line: 648, type: !235, isLocal: true, isDefinition: true)
!355 = !DIGlobalVariableExpression(var: !356, expr: !DIExpression())
!356 = distinct !DIGlobalVariable(scope: null, file: !92, line: 648, type: !189, isLocal: true, isDefinition: true)
!357 = !DIGlobalVariableExpression(var: !358, expr: !DIExpression())
!358 = distinct !DIGlobalVariable(scope: null, file: !92, line: 649, type: !19, isLocal: true, isDefinition: true)
!359 = !DIGlobalVariableExpression(var: !360, expr: !DIExpression())
!360 = distinct !DIGlobalVariable(scope: null, file: !92, line: 649, type: !240, isLocal: true, isDefinition: true)
!361 = !DIGlobalVariableExpression(var: !362, expr: !DIExpression())
!362 = distinct !DIGlobalVariable(scope: null, file: !92, line: 650, type: !189, isLocal: true, isDefinition: true)
!363 = !DIGlobalVariableExpression(var: !364, expr: !DIExpression())
!364 = distinct !DIGlobalVariable(scope: null, file: !92, line: 651, type: !350, isLocal: true, isDefinition: true)
!365 = !DIGlobalVariableExpression(var: !366, expr: !DIExpression())
!366 = distinct !DIGlobalVariable(scope: null, file: !92, line: 651, type: !350, isLocal: true, isDefinition: true)
!367 = !DIGlobalVariableExpression(var: !368, expr: !DIExpression())
!368 = distinct !DIGlobalVariable(scope: null, file: !92, line: 652, type: !162, isLocal: true, isDefinition: true)
!369 = !DIGlobalVariableExpression(var: !370, expr: !DIExpression())
!370 = distinct !DIGlobalVariable(scope: null, file: !92, line: 653, type: !194, isLocal: true, isDefinition: true)
!371 = !DIGlobalVariableExpression(var: !372, expr: !DIExpression())
!372 = distinct !DIGlobalVariable(scope: null, file: !92, line: 654, type: !177, isLocal: true, isDefinition: true)
!373 = !DIGlobalVariableExpression(var: !374, expr: !DIExpression())
!374 = distinct !DIGlobalVariable(scope: null, file: !92, line: 655, type: !177, isLocal: true, isDefinition: true)
!375 = !DIGlobalVariableExpression(var: !376, expr: !DIExpression())
!376 = distinct !DIGlobalVariable(scope: null, file: !92, line: 656, type: !177, isLocal: true, isDefinition: true)
!377 = !DIGlobalVariableExpression(var: !378, expr: !DIExpression())
!378 = distinct !DIGlobalVariable(scope: null, file: !92, line: 657, type: !177, isLocal: true, isDefinition: true)
!379 = !DIGlobalVariableExpression(var: !380, expr: !DIExpression())
!380 = distinct !DIGlobalVariable(scope: null, file: !92, line: 663, type: !162, isLocal: true, isDefinition: true)
!381 = !DIGlobalVariableExpression(var: !382, expr: !DIExpression())
!382 = distinct !DIGlobalVariable(scope: null, file: !92, line: 664, type: !177, isLocal: true, isDefinition: true)
!383 = !DIGlobalVariableExpression(var: !384, expr: !DIExpression())
!384 = distinct !DIGlobalVariable(scope: null, file: !92, line: 669, type: !172, isLocal: true, isDefinition: true)
!385 = !DIGlobalVariableExpression(var: !386, expr: !DIExpression())
!386 = distinct !DIGlobalVariable(scope: null, file: !92, line: 669, type: !387, isLocal: true, isDefinition: true)
!387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !388)
!388 = !{!389}
!389 = !DISubrange(count: 40)
!390 = !DIGlobalVariableExpression(var: !391, expr: !DIExpression())
!391 = distinct !DIGlobalVariable(scope: null, file: !92, line: 676, type: !392, isLocal: true, isDefinition: true)
!392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !393)
!393 = !{!394}
!394 = !DISubrange(count: 15)
!395 = !DIGlobalVariableExpression(var: !396, expr: !DIExpression())
!396 = distinct !DIGlobalVariable(scope: null, file: !92, line: 676, type: !397, isLocal: true, isDefinition: true)
!397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !398)
!398 = !{!399}
!399 = !DISubrange(count: 61)
!400 = !DIGlobalVariableExpression(var: !401, expr: !DIExpression())
!401 = distinct !DIGlobalVariable(scope: null, file: !92, line: 679, type: !240, isLocal: true, isDefinition: true)
!402 = !DIGlobalVariableExpression(var: !403, expr: !DIExpression())
!403 = distinct !DIGlobalVariable(scope: null, file: !92, line: 683, type: !189, isLocal: true, isDefinition: true)
!404 = !DIGlobalVariableExpression(var: !405, expr: !DIExpression())
!405 = distinct !DIGlobalVariable(scope: null, file: !92, line: 688, type: !189, isLocal: true, isDefinition: true)
!406 = !DIGlobalVariableExpression(var: !407, expr: !DIExpression())
!407 = distinct !DIGlobalVariable(scope: null, file: !92, line: 691, type: !194, isLocal: true, isDefinition: true)
!408 = !DIGlobalVariableExpression(var: !409, expr: !DIExpression())
!409 = distinct !DIGlobalVariable(scope: null, file: !92, line: 839, type: !157, isLocal: true, isDefinition: true)
!410 = !DIGlobalVariableExpression(var: !411, expr: !DIExpression())
!411 = distinct !DIGlobalVariable(scope: null, file: !92, line: 840, type: !412, isLocal: true, isDefinition: true)
!412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !413)
!413 = !{!414}
!414 = !DISubrange(count: 22)
!415 = !DIGlobalVariableExpression(var: !416, expr: !DIExpression())
!416 = distinct !DIGlobalVariable(scope: null, file: !92, line: 841, type: !392, isLocal: true, isDefinition: true)
!417 = !DIGlobalVariableExpression(var: !418, expr: !DIExpression())
!418 = distinct !DIGlobalVariable(scope: null, file: !92, line: 862, type: !19, isLocal: true, isDefinition: true)
!419 = !DIGlobalVariableExpression(var: !420, expr: !DIExpression())
!420 = distinct !DIGlobalVariable(scope: null, file: !92, line: 868, type: !29, isLocal: true, isDefinition: true)
!421 = !DIGlobalVariableExpression(var: !422, expr: !DIExpression())
!422 = distinct !DIGlobalVariable(scope: null, file: !92, line: 875, type: !423, isLocal: true, isDefinition: true)
!423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !424)
!424 = !{!425}
!425 = !DISubrange(count: 27)
!426 = !DIGlobalVariableExpression(var: !427, expr: !DIExpression())
!427 = distinct !DIGlobalVariable(scope: null, file: !92, line: 877, type: !428, isLocal: true, isDefinition: true)
!428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !429)
!429 = !{!430}
!430 = !DISubrange(count: 51)
!431 = !DIGlobalVariableExpression(var: !432, expr: !DIExpression())
!432 = distinct !DIGlobalVariable(scope: null, file: !92, line: 877, type: !433, isLocal: true, isDefinition: true)
!433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !434)
!434 = !{!435}
!435 = !DISubrange(count: 12)
!436 = !DIGlobalVariableExpression(var: !437, expr: !DIExpression())
!437 = distinct !DIGlobalVariable(scope: null, file: !2, line: 312, type: !412, isLocal: true, isDefinition: true)
!438 = !DIGlobalVariableExpression(var: !439, expr: !DIExpression())
!439 = distinct !DIGlobalVariable(name: "newlines2", scope: !89, file: !2, line: 77, type: !86, isLocal: true, isDefinition: true)
!440 = !DIGlobalVariableExpression(var: !441, expr: !DIExpression())
!441 = distinct !DIGlobalVariable(name: "line_num_end", scope: !89, file: !2, line: 74, type: !88, isLocal: true, isDefinition: true)
!442 = !DIGlobalVariableExpression(var: !443, expr: !DIExpression())
!443 = distinct !DIGlobalVariable(name: "line_num_start", scope: !89, file: !2, line: 71, type: !88, isLocal: true, isDefinition: true)
!444 = !DIGlobalVariableExpression(var: !445, expr: !DIExpression())
!445 = distinct !DIGlobalVariable(name: "line_buf", scope: !89, file: !2, line: 59, type: !228, isLocal: true, isDefinition: true)
!446 = !DIGlobalVariableExpression(var: !447, expr: !DIExpression())
!447 = distinct !DIGlobalVariable(name: "line_num_print", scope: !89, file: !2, line: 68, type: !88, isLocal: true, isDefinition: true)
!448 = !DIGlobalVariableExpression(var: !449, expr: !DIExpression())
!449 = distinct !DIGlobalVariable(name: "pending_cr", scope: !89, file: !2, line: 80, type: !145, isLocal: true, isDefinition: true)
!450 = !DIGlobalVariableExpression(var: !451, expr: !DIExpression())
!451 = distinct !DIGlobalVariable(scope: null, file: !92, line: 952, type: !433, isLocal: true, isDefinition: true)
!452 = !{!453, !454, !455, !456, !491, !492, !493, !494, !495, !496, !497, !498, !499, !503, !504, !505, !506, !507, !508, !510, !511, !512, !517, !520, !521, !524, !526, !527}
!453 = !DILocalVariable(name: "argc", arg: 1, scope: !83, file: !2, line: 550, type: !86)
!454 = !DILocalVariable(name: "argv", arg: 2, scope: !83, file: !2, line: 550, type: !87)
!455 = !DILocalVariable(name: "have_read_stdin", scope: !83, file: !2, line: 553, type: !145)
!456 = !DILocalVariable(name: "ostat_buf", scope: !83, file: !2, line: 555, type: !457)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !458, line: 26, size: 1152, elements: !459)
!458 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "3ba283bc334370fe631cbc82f5229ed7")
!459 = !{!460, !462, !464, !466, !468, !470, !472, !473, !474, !475, !477, !479, !487, !488, !489}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !457, file: !458, line: 31, baseType: !461, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !315, line: 145, baseType: !147)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !457, file: !458, line: 36, baseType: !463, size: 64, offset: 64)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !315, line: 148, baseType: !147)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !457, file: !458, line: 44, baseType: !465, size: 64, offset: 128)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !315, line: 151, baseType: !147)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !457, file: !458, line: 45, baseType: !467, size: 32, offset: 192)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !315, line: 150, baseType: !98)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !457, file: !458, line: 47, baseType: !469, size: 32, offset: 224)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !315, line: 146, baseType: !98)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !457, file: !458, line: 48, baseType: !471, size: 32, offset: 256)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !315, line: 147, baseType: !98)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !457, file: !458, line: 50, baseType: !86, size: 32, offset: 288)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !457, file: !458, line: 52, baseType: !461, size: 64, offset: 320)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !457, file: !458, line: 57, baseType: !314, size: 64, offset: 384)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !457, file: !458, line: 61, baseType: !476, size: 64, offset: 448)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !315, line: 175, baseType: !146)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !457, file: !458, line: 63, baseType: !478, size: 64, offset: 512)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !315, line: 180, baseType: !146)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !457, file: !458, line: 74, baseType: !480, size: 128, offset: 576)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !481, line: 11, size: 128, elements: !482)
!481 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!482 = !{!483, !485}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !480, file: !481, line: 16, baseType: !484, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !315, line: 160, baseType: !146)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !480, file: !481, line: 21, baseType: !486, size: 64, offset: 64)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !315, line: 197, baseType: !146)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !457, file: !458, line: 75, baseType: !480, size: 128, offset: 704)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !457, file: !458, line: 76, baseType: !480, size: 128, offset: 832)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !457, file: !458, line: 89, baseType: !490, size: 192, offset: 960)
!490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !486, size: 192, elements: !241)
!491 = !DILocalVariable(name: "number", scope: !83, file: !2, line: 558, type: !145)
!492 = !DILocalVariable(name: "number_nonblank", scope: !83, file: !2, line: 559, type: !145)
!493 = !DILocalVariable(name: "squeeze_blank", scope: !83, file: !2, line: 560, type: !145)
!494 = !DILocalVariable(name: "show_ends", scope: !83, file: !2, line: 561, type: !145)
!495 = !DILocalVariable(name: "show_nonprinting", scope: !83, file: !2, line: 562, type: !145)
!496 = !DILocalVariable(name: "show_tabs", scope: !83, file: !2, line: 563, type: !145)
!497 = !DILocalVariable(name: "file_open_mode", scope: !83, file: !2, line: 564, type: !86)
!498 = !DILocalVariable(name: "c", scope: !83, file: !2, line: 594, type: !86)
!499 = !DILocalVariable(name: "outsize", scope: !83, file: !2, line: 660, type: !500)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !501, line: 130, baseType: !502)
!501 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !150, line: 35, baseType: !146)
!503 = !DILocalVariable(name: "out_flags", scope: !83, file: !2, line: 663, type: !86)
!504 = !DILocalVariable(name: "out_isreg", scope: !83, file: !2, line: 666, type: !145)
!505 = !DILocalVariable(name: "argind", scope: !83, file: !2, line: 677, type: !86)
!506 = !DILocalVariable(name: "ok", scope: !83, file: !2, line: 678, type: !145)
!507 = !DILocalVariable(name: "page_size", scope: !83, file: !2, line: 679, type: !500)
!508 = !DILocalVariable(name: "reading_stdin", scope: !509, file: !2, line: 686, type: !145)
!509 = distinct !DILexicalBlock(scope: !83, file: !2, line: 682, column: 5)
!510 = !DILocalVariable(name: "istat_buf", scope: !509, file: !2, line: 705, type: !457)
!511 = !DILocalVariable(name: "insize", scope: !509, file: !2, line: 714, type: !500)
!512 = !DILocalVariable(name: "in_pos", scope: !513, file: !2, line: 727, type: !515)
!513 = distinct !DILexicalBlock(scope: !514, file: !2, line: 726, column: 9)
!514 = distinct !DILexicalBlock(scope: !509, file: !2, line: 722, column: 11)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !516, line: 63, baseType: !314)
!516 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!517 = !DILocalVariable(name: "whence", scope: !518, file: !2, line: 732, type: !86)
!518 = distinct !DILexicalBlock(scope: !519, file: !2, line: 729, column: 13)
!519 = distinct !DILexicalBlock(scope: !513, file: !2, line: 728, column: 15)
!520 = !DILocalVariable(name: "inbuf", scope: !509, file: !2, line: 745, type: !88)
!521 = !DILocalVariable(name: "copy_cat_status", scope: !522, file: !2, line: 754, type: !86)
!522 = distinct !DILexicalBlock(scope: !523, file: !2, line: 753, column: 9)
!523 = distinct !DILexicalBlock(scope: !509, file: !2, line: 751, column: 11)
!524 = !DILocalVariable(name: "bufsize", scope: !525, file: !2, line: 794, type: !500)
!525 = distinct !DILexicalBlock(scope: !523, file: !2, line: 769, column: 9)
!526 = !DILocalVariable(name: "outbuf", scope: !525, file: !2, line: 799, type: !88)
!527 = !DILabel(scope: !509, name: "contin", file: !2, line: 810)
!528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !529, size: 2560, elements: !178)
!529 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !530)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !531, line: 50, size: 256, elements: !532)
!531 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!532 = !{!533, !534, !535, !537}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !530, file: !531, line: 52, baseType: !151, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !530, file: !531, line: 55, baseType: !86, size: 32, offset: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !530, file: !531, line: 56, baseType: !536, size: 64, offset: 128)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !530, file: !531, line: 57, baseType: !86, size: 32, offset: 192)
!538 = !DIGlobalVariableExpression(var: !449, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!539 = !DIGlobalVariableExpression(var: !540, expr: !DIExpression())
!540 = distinct !DIGlobalVariable(scope: null, file: !541, line: 3, type: !392, isLocal: true, isDefinition: true)
!541 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!542 = !DIGlobalVariableExpression(var: !543, expr: !DIExpression())
!543 = distinct !DIGlobalVariable(name: "Version", scope: !544, file: !541, line: 3, type: !151, isLocal: false, isDefinition: true)
!544 = distinct !DICompileUnit(language: DW_LANG_C11, file: !541, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !545, splitDebugInlining: false, nameTableKind: None)
!545 = !{!539, !542}
!546 = !DIGlobalVariableExpression(var: !547, expr: !DIExpression())
!547 = distinct !DIGlobalVariable(name: "file_name", scope: !548, file: !549, line: 45, type: !151, isLocal: true, isDefinition: true)
!548 = distinct !DICompileUnit(language: DW_LANG_C11, file: !549, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !550, splitDebugInlining: false, nameTableKind: None)
!549 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!550 = !{!551, !553, !555, !557, !546, !559}
!551 = !DIGlobalVariableExpression(var: !552, expr: !DIExpression())
!552 = distinct !DIGlobalVariable(scope: null, file: !549, line: 121, type: !162, isLocal: true, isDefinition: true)
!553 = !DIGlobalVariableExpression(var: !554, expr: !DIExpression())
!554 = distinct !DIGlobalVariable(scope: null, file: !549, line: 121, type: !433, isLocal: true, isDefinition: true)
!555 = !DIGlobalVariableExpression(var: !556, expr: !DIExpression())
!556 = distinct !DIGlobalVariable(scope: null, file: !549, line: 123, type: !162, isLocal: true, isDefinition: true)
!557 = !DIGlobalVariableExpression(var: !558, expr: !DIExpression())
!558 = distinct !DIGlobalVariable(scope: null, file: !549, line: 126, type: !240, isLocal: true, isDefinition: true)
!559 = !DIGlobalVariableExpression(var: !560, expr: !DIExpression())
!560 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !548, file: !549, line: 55, type: !145, isLocal: true, isDefinition: true)
!561 = !DIGlobalVariableExpression(var: !562, expr: !DIExpression())
!562 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !563, file: !564, line: 66, type: !610, isLocal: false, isDefinition: true)
!563 = distinct !DICompileUnit(language: DW_LANG_C11, file: !564, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !565, globals: !566, splitDebugInlining: false, nameTableKind: None)
!564 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!565 = !{!144, !153}
!566 = !{!567, !569, !589, !591, !593, !595, !561, !597, !599, !601, !603, !608}
!567 = !DIGlobalVariableExpression(var: !568, expr: !DIExpression())
!568 = distinct !DIGlobalVariable(scope: null, file: !564, line: 272, type: !189, isLocal: true, isDefinition: true)
!569 = !DIGlobalVariableExpression(var: !570, expr: !DIExpression())
!570 = distinct !DIGlobalVariable(name: "old_file_name", scope: !571, file: !564, line: 304, type: !151, isLocal: true, isDefinition: true)
!571 = distinct !DISubprogram(name: "verror_at_line", scope: !564, file: !564, line: 298, type: !572, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !563, retainedNodes: !582)
!572 = !DISubroutineType(types: !573)
!573 = !{null, !86, !86, !151, !98, !151, !574}
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !576)
!576 = !{!577, !579, !580, !581}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !575, file: !578, baseType: !98, size: 32)
!578 = !DIFile(filename: "lib/error.c", directory: "/src")
!579 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !575, file: !578, baseType: !98, size: 32, offset: 32)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !575, file: !578, baseType: !144, size: 64, offset: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !575, file: !578, baseType: !144, size: 64, offset: 128)
!582 = !{!583, !584, !585, !586, !587, !588}
!583 = !DILocalVariable(name: "status", arg: 1, scope: !571, file: !564, line: 298, type: !86)
!584 = !DILocalVariable(name: "errnum", arg: 2, scope: !571, file: !564, line: 298, type: !86)
!585 = !DILocalVariable(name: "file_name", arg: 3, scope: !571, file: !564, line: 298, type: !151)
!586 = !DILocalVariable(name: "line_number", arg: 4, scope: !571, file: !564, line: 298, type: !98)
!587 = !DILocalVariable(name: "message", arg: 5, scope: !571, file: !564, line: 298, type: !151)
!588 = !DILocalVariable(name: "args", arg: 6, scope: !571, file: !564, line: 298, type: !574)
!589 = !DIGlobalVariableExpression(var: !590, expr: !DIExpression())
!590 = distinct !DIGlobalVariable(name: "old_line_number", scope: !571, file: !564, line: 305, type: !98, isLocal: true, isDefinition: true)
!591 = !DIGlobalVariableExpression(var: !592, expr: !DIExpression())
!592 = distinct !DIGlobalVariable(scope: null, file: !564, line: 338, type: !19, isLocal: true, isDefinition: true)
!593 = !DIGlobalVariableExpression(var: !594, expr: !DIExpression())
!594 = distinct !DIGlobalVariable(scope: null, file: !564, line: 346, type: !194, isLocal: true, isDefinition: true)
!595 = !DIGlobalVariableExpression(var: !596, expr: !DIExpression())
!596 = distinct !DIGlobalVariable(scope: null, file: !564, line: 346, type: !235, isLocal: true, isDefinition: true)
!597 = !DIGlobalVariableExpression(var: !598, expr: !DIExpression())
!598 = distinct !DIGlobalVariable(name: "error_message_count", scope: !563, file: !564, line: 69, type: !98, isLocal: false, isDefinition: true)
!599 = !DIGlobalVariableExpression(var: !600, expr: !DIExpression())
!600 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !563, file: !564, line: 295, type: !86, isLocal: false, isDefinition: true)
!601 = !DIGlobalVariableExpression(var: !602, expr: !DIExpression())
!602 = distinct !DIGlobalVariable(scope: null, file: !564, line: 208, type: !162, isLocal: true, isDefinition: true)
!603 = !DIGlobalVariableExpression(var: !604, expr: !DIExpression())
!604 = distinct !DIGlobalVariable(scope: null, file: !564, line: 208, type: !605, isLocal: true, isDefinition: true)
!605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !606)
!606 = !{!607}
!607 = !DISubrange(count: 21)
!608 = !DIGlobalVariableExpression(var: !609, expr: !DIExpression())
!609 = distinct !DIGlobalVariable(scope: null, file: !564, line: 214, type: !189, isLocal: true, isDefinition: true)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DISubroutineType(types: !612)
!612 = !{null}
!613 = !DIGlobalVariableExpression(var: !614, expr: !DIExpression())
!614 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !615, file: !616, line: 506, type: !86, isLocal: true, isDefinition: true)
!615 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD_CLOEXEC", scope: !616, file: !616, line: 485, type: !617, scopeLine: 486, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !619, retainedNodes: !621)
!616 = !DIFile(filename: "lib/fcntl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "bc4606a0e1e86be6126be7481cbd2f8d")
!617 = !DISubroutineType(types: !618)
!618 = !{!86, !86, !86}
!619 = distinct !DICompileUnit(language: DW_LANG_C11, file: !616, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !620, splitDebugInlining: false, nameTableKind: None)
!620 = !{!613}
!621 = !{!622, !623, !624, !625, !628}
!622 = !DILocalVariable(name: "fd", arg: 1, scope: !615, file: !616, line: 485, type: !86)
!623 = !DILocalVariable(name: "target", arg: 2, scope: !615, file: !616, line: 485, type: !86)
!624 = !DILocalVariable(name: "result", scope: !615, file: !616, line: 487, type: !86)
!625 = !DILocalVariable(name: "flags", scope: !626, file: !616, line: 530, type: !86)
!626 = distinct !DILexicalBlock(scope: !627, file: !616, line: 529, column: 5)
!627 = distinct !DILexicalBlock(scope: !615, file: !616, line: 528, column: 7)
!628 = !DILocalVariable(name: "saved_errno", scope: !629, file: !616, line: 533, type: !86)
!629 = distinct !DILexicalBlock(scope: !630, file: !616, line: 532, column: 9)
!630 = distinct !DILexicalBlock(scope: !626, file: !616, line: 531, column: 11)
!631 = !DIGlobalVariableExpression(var: !632, expr: !DIExpression())
!632 = distinct !DIGlobalVariable(name: "program_name", scope: !633, file: !634, line: 31, type: !151, isLocal: false, isDefinition: true)
!633 = distinct !DICompileUnit(language: DW_LANG_C11, file: !634, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !635, globals: !636, splitDebugInlining: false, nameTableKind: None)
!634 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!635 = !{!88}
!636 = !{!631, !637, !639}
!637 = !DIGlobalVariableExpression(var: !638, expr: !DIExpression())
!638 = distinct !DIGlobalVariable(scope: null, file: !634, line: 46, type: !194, isLocal: true, isDefinition: true)
!639 = !DIGlobalVariableExpression(var: !640, expr: !DIExpression())
!640 = distinct !DIGlobalVariable(scope: null, file: !634, line: 49, type: !19, isLocal: true, isDefinition: true)
!641 = !DIGlobalVariableExpression(var: !642, expr: !DIExpression())
!642 = distinct !DIGlobalVariable(name: "utf07FF", scope: !643, file: !644, line: 46, type: !671, isLocal: true, isDefinition: true)
!643 = distinct !DISubprogram(name: "proper_name_lite", scope: !644, file: !644, line: 38, type: !645, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !647, retainedNodes: !649)
!644 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!645 = !DISubroutineType(types: !646)
!646 = !{!151, !151, !151}
!647 = distinct !DICompileUnit(language: DW_LANG_C11, file: !644, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !648, splitDebugInlining: false, nameTableKind: None)
!648 = !{!641}
!649 = !{!650, !651, !652, !653, !658}
!650 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !643, file: !644, line: 38, type: !151)
!651 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !643, file: !644, line: 38, type: !151)
!652 = !DILocalVariable(name: "translation", scope: !643, file: !644, line: 40, type: !151)
!653 = !DILocalVariable(name: "w", scope: !643, file: !644, line: 47, type: !654)
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !655, line: 37, baseType: !656)
!655 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !315, line: 57, baseType: !657)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !315, line: 42, baseType: !98)
!658 = !DILocalVariable(name: "mbs", scope: !643, file: !644, line: 48, type: !659)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !660, line: 6, baseType: !661)
!660 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !662, line: 21, baseType: !663)
!662 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !662, line: 13, size: 64, elements: !664)
!664 = !{!665, !666}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !663, file: !662, line: 15, baseType: !86, size: 32)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !663, file: !662, line: 20, baseType: !667, size: 32, offset: 32)
!667 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !663, file: !662, line: 16, size: 32, elements: !668)
!668 = !{!669, !670}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !667, file: !662, line: 18, baseType: !98, size: 32)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !667, file: !662, line: 19, baseType: !19, size: 32)
!671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 16, elements: !236)
!672 = !DIGlobalVariableExpression(var: !673, expr: !DIExpression())
!673 = distinct !DIGlobalVariable(scope: null, file: !674, line: 78, type: !194, isLocal: true, isDefinition: true)
!674 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!675 = !DIGlobalVariableExpression(var: !676, expr: !DIExpression())
!676 = distinct !DIGlobalVariable(scope: null, file: !674, line: 79, type: !350, isLocal: true, isDefinition: true)
!677 = !DIGlobalVariableExpression(var: !678, expr: !DIExpression())
!678 = distinct !DIGlobalVariable(scope: null, file: !674, line: 80, type: !679, isLocal: true, isDefinition: true)
!679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !680)
!680 = !{!681}
!681 = !DISubrange(count: 13)
!682 = !DIGlobalVariableExpression(var: !683, expr: !DIExpression())
!683 = distinct !DIGlobalVariable(scope: null, file: !674, line: 81, type: !679, isLocal: true, isDefinition: true)
!684 = !DIGlobalVariableExpression(var: !685, expr: !DIExpression())
!685 = distinct !DIGlobalVariable(scope: null, file: !674, line: 82, type: !228, isLocal: true, isDefinition: true)
!686 = !DIGlobalVariableExpression(var: !687, expr: !DIExpression())
!687 = distinct !DIGlobalVariable(scope: null, file: !674, line: 83, type: !235, isLocal: true, isDefinition: true)
!688 = !DIGlobalVariableExpression(var: !689, expr: !DIExpression())
!689 = distinct !DIGlobalVariable(scope: null, file: !674, line: 84, type: !194, isLocal: true, isDefinition: true)
!690 = !DIGlobalVariableExpression(var: !691, expr: !DIExpression())
!691 = distinct !DIGlobalVariable(scope: null, file: !674, line: 85, type: !162, isLocal: true, isDefinition: true)
!692 = !DIGlobalVariableExpression(var: !693, expr: !DIExpression())
!693 = distinct !DIGlobalVariable(scope: null, file: !674, line: 86, type: !162, isLocal: true, isDefinition: true)
!694 = !DIGlobalVariableExpression(var: !695, expr: !DIExpression())
!695 = distinct !DIGlobalVariable(scope: null, file: !674, line: 87, type: !194, isLocal: true, isDefinition: true)
!696 = !DIGlobalVariableExpression(var: !697, expr: !DIExpression())
!697 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !698, file: !674, line: 76, type: !770, isLocal: false, isDefinition: true)
!698 = distinct !DICompileUnit(language: DW_LANG_C11, file: !674, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !699, retainedTypes: !705, globals: !706, splitDebugInlining: false, nameTableKind: None)
!699 = !{!96, !700, !120}
!700 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !97, line: 254, baseType: !98, size: 32, elements: !701)
!701 = !{!702, !703, !704}
!702 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!703 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!704 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!705 = !{!86, !148, !149}
!706 = !{!672, !675, !677, !682, !684, !686, !688, !690, !692, !694, !696, !707, !711, !721, !723, !728, !730, !732, !734, !736, !759, !766, !768}
!707 = !DIGlobalVariableExpression(var: !708, expr: !DIExpression())
!708 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !698, file: !674, line: 92, type: !709, isLocal: false, isDefinition: true)
!709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !710, size: 320, elements: !178)
!710 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!711 = !DIGlobalVariableExpression(var: !712, expr: !DIExpression())
!712 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !698, file: !674, line: 1040, type: !713, isLocal: false, isDefinition: true)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !674, line: 56, size: 448, elements: !714)
!714 = !{!715, !716, !717, !719, !720}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !713, file: !674, line: 59, baseType: !96, size: 32)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !713, file: !674, line: 62, baseType: !86, size: 32, offset: 32)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !713, file: !674, line: 66, baseType: !718, size: 256, offset: 64)
!718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 256, elements: !195)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !713, file: !674, line: 69, baseType: !151, size: 64, offset: 320)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !713, file: !674, line: 72, baseType: !151, size: 64, offset: 384)
!721 = !DIGlobalVariableExpression(var: !722, expr: !DIExpression())
!722 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !698, file: !674, line: 107, type: !713, isLocal: true, isDefinition: true)
!723 = !DIGlobalVariableExpression(var: !724, expr: !DIExpression())
!724 = distinct !DIGlobalVariable(name: "slot0", scope: !698, file: !674, line: 831, type: !725, isLocal: true, isDefinition: true)
!725 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !726)
!726 = !{!727}
!727 = !DISubrange(count: 256)
!728 = !DIGlobalVariableExpression(var: !729, expr: !DIExpression())
!729 = distinct !DIGlobalVariable(scope: null, file: !674, line: 321, type: !235, isLocal: true, isDefinition: true)
!730 = !DIGlobalVariableExpression(var: !731, expr: !DIExpression())
!731 = distinct !DIGlobalVariable(scope: null, file: !674, line: 357, type: !235, isLocal: true, isDefinition: true)
!732 = !DIGlobalVariableExpression(var: !733, expr: !DIExpression())
!733 = distinct !DIGlobalVariable(scope: null, file: !674, line: 358, type: !235, isLocal: true, isDefinition: true)
!734 = !DIGlobalVariableExpression(var: !735, expr: !DIExpression())
!735 = distinct !DIGlobalVariable(scope: null, file: !674, line: 199, type: !162, isLocal: true, isDefinition: true)
!736 = !DIGlobalVariableExpression(var: !737, expr: !DIExpression())
!737 = distinct !DIGlobalVariable(name: "quote", scope: !738, file: !674, line: 228, type: !757, isLocal: true, isDefinition: true)
!738 = distinct !DISubprogram(name: "gettext_quote", scope: !674, file: !674, line: 197, type: !739, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !741)
!739 = !DISubroutineType(types: !740)
!740 = !{!151, !151, !96}
!741 = !{!742, !743, !744, !745, !746}
!742 = !DILocalVariable(name: "msgid", arg: 1, scope: !738, file: !674, line: 197, type: !151)
!743 = !DILocalVariable(name: "s", arg: 2, scope: !738, file: !674, line: 197, type: !96)
!744 = !DILocalVariable(name: "translation", scope: !738, file: !674, line: 199, type: !151)
!745 = !DILocalVariable(name: "w", scope: !738, file: !674, line: 229, type: !654)
!746 = !DILocalVariable(name: "mbs", scope: !738, file: !674, line: 230, type: !747)
!747 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !660, line: 6, baseType: !748)
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !662, line: 21, baseType: !749)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !662, line: 13, size: 64, elements: !750)
!750 = !{!751, !752}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !749, file: !662, line: 15, baseType: !86, size: 32)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !749, file: !662, line: 20, baseType: !753, size: 32, offset: 32)
!753 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !749, file: !662, line: 16, size: 32, elements: !754)
!754 = !{!755, !756}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !753, file: !662, line: 18, baseType: !98, size: 32)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !753, file: !662, line: 19, baseType: !19, size: 32)
!757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 64, elements: !758)
!758 = !{!237, !21}
!759 = !DIGlobalVariableExpression(var: !760, expr: !DIExpression())
!760 = distinct !DIGlobalVariable(name: "slotvec", scope: !698, file: !674, line: 834, type: !761, isLocal: true, isDefinition: true)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !674, line: 823, size: 128, elements: !763)
!763 = !{!764, !765}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !762, file: !674, line: 825, baseType: !149, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !762, file: !674, line: 826, baseType: !88, size: 64, offset: 64)
!766 = !DIGlobalVariableExpression(var: !767, expr: !DIExpression())
!767 = distinct !DIGlobalVariable(name: "nslots", scope: !698, file: !674, line: 832, type: !86, isLocal: true, isDefinition: true)
!768 = !DIGlobalVariableExpression(var: !769, expr: !DIExpression())
!769 = distinct !DIGlobalVariable(name: "slotvec0", scope: !698, file: !674, line: 833, type: !762, isLocal: true, isDefinition: true)
!770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !771, size: 704, elements: !212)
!771 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !151)
!772 = !DIGlobalVariableExpression(var: !773, expr: !DIExpression())
!773 = distinct !DIGlobalVariable(scope: null, file: !774, line: 67, type: !433, isLocal: true, isDefinition: true)
!774 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!775 = !DIGlobalVariableExpression(var: !776, expr: !DIExpression())
!776 = distinct !DIGlobalVariable(scope: null, file: !774, line: 69, type: !162, isLocal: true, isDefinition: true)
!777 = !DIGlobalVariableExpression(var: !778, expr: !DIExpression())
!778 = distinct !DIGlobalVariable(scope: null, file: !774, line: 83, type: !162, isLocal: true, isDefinition: true)
!779 = !DIGlobalVariableExpression(var: !780, expr: !DIExpression())
!780 = distinct !DIGlobalVariable(scope: null, file: !774, line: 83, type: !19, isLocal: true, isDefinition: true)
!781 = !DIGlobalVariableExpression(var: !782, expr: !DIExpression())
!782 = distinct !DIGlobalVariable(scope: null, file: !774, line: 85, type: !235, isLocal: true, isDefinition: true)
!783 = !DIGlobalVariableExpression(var: !784, expr: !DIExpression())
!784 = distinct !DIGlobalVariable(scope: null, file: !774, line: 88, type: !785, isLocal: true, isDefinition: true)
!785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !786)
!786 = !{!787}
!787 = !DISubrange(count: 171)
!788 = !DIGlobalVariableExpression(var: !789, expr: !DIExpression())
!789 = distinct !DIGlobalVariable(scope: null, file: !774, line: 88, type: !790, isLocal: true, isDefinition: true)
!790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !791)
!791 = !{!792}
!792 = !DISubrange(count: 34)
!793 = !DIGlobalVariableExpression(var: !794, expr: !DIExpression())
!794 = distinct !DIGlobalVariable(scope: null, file: !774, line: 105, type: !157, isLocal: true, isDefinition: true)
!795 = !DIGlobalVariableExpression(var: !796, expr: !DIExpression())
!796 = distinct !DIGlobalVariable(scope: null, file: !774, line: 109, type: !252, isLocal: true, isDefinition: true)
!797 = !DIGlobalVariableExpression(var: !798, expr: !DIExpression())
!798 = distinct !DIGlobalVariable(scope: null, file: !774, line: 113, type: !799, isLocal: true, isDefinition: true)
!799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !800)
!800 = !{!801}
!801 = !DISubrange(count: 28)
!802 = !DIGlobalVariableExpression(var: !803, expr: !DIExpression())
!803 = distinct !DIGlobalVariable(scope: null, file: !774, line: 120, type: !804, isLocal: true, isDefinition: true)
!804 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !805)
!805 = !{!806}
!806 = !DISubrange(count: 32)
!807 = !DIGlobalVariableExpression(var: !808, expr: !DIExpression())
!808 = distinct !DIGlobalVariable(scope: null, file: !774, line: 127, type: !809, isLocal: true, isDefinition: true)
!809 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !810)
!810 = !{!811}
!811 = !DISubrange(count: 36)
!812 = !DIGlobalVariableExpression(var: !813, expr: !DIExpression())
!813 = distinct !DIGlobalVariable(scope: null, file: !774, line: 134, type: !387, isLocal: true, isDefinition: true)
!814 = !DIGlobalVariableExpression(var: !815, expr: !DIExpression())
!815 = distinct !DIGlobalVariable(scope: null, file: !774, line: 142, type: !816, isLocal: true, isDefinition: true)
!816 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !817)
!817 = !{!818}
!818 = !DISubrange(count: 44)
!819 = !DIGlobalVariableExpression(var: !820, expr: !DIExpression())
!820 = distinct !DIGlobalVariable(scope: null, file: !774, line: 150, type: !821, isLocal: true, isDefinition: true)
!821 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !822)
!822 = !{!823}
!823 = !DISubrange(count: 48)
!824 = !DIGlobalVariableExpression(var: !825, expr: !DIExpression())
!825 = distinct !DIGlobalVariable(scope: null, file: !774, line: 159, type: !44, isLocal: true, isDefinition: true)
!826 = !DIGlobalVariableExpression(var: !827, expr: !DIExpression())
!827 = distinct !DIGlobalVariable(scope: null, file: !774, line: 170, type: !828, isLocal: true, isDefinition: true)
!828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !829)
!829 = !{!830}
!830 = !DISubrange(count: 60)
!831 = !DIGlobalVariableExpression(var: !832, expr: !DIExpression())
!832 = distinct !DIGlobalVariable(scope: null, file: !774, line: 248, type: !228, isLocal: true, isDefinition: true)
!833 = !DIGlobalVariableExpression(var: !834, expr: !DIExpression())
!834 = distinct !DIGlobalVariable(scope: null, file: !774, line: 248, type: !412, isLocal: true, isDefinition: true)
!835 = !DIGlobalVariableExpression(var: !836, expr: !DIExpression())
!836 = distinct !DIGlobalVariable(scope: null, file: !774, line: 254, type: !228, isLocal: true, isDefinition: true)
!837 = !DIGlobalVariableExpression(var: !838, expr: !DIExpression())
!838 = distinct !DIGlobalVariable(scope: null, file: !774, line: 254, type: !167, isLocal: true, isDefinition: true)
!839 = !DIGlobalVariableExpression(var: !840, expr: !DIExpression())
!840 = distinct !DIGlobalVariable(scope: null, file: !774, line: 254, type: !387, isLocal: true, isDefinition: true)
!841 = !DIGlobalVariableExpression(var: !842, expr: !DIExpression())
!842 = distinct !DIGlobalVariable(scope: null, file: !774, line: 259, type: !3, isLocal: true, isDefinition: true)
!843 = !DIGlobalVariableExpression(var: !844, expr: !DIExpression())
!844 = distinct !DIGlobalVariable(scope: null, file: !774, line: 259, type: !845, isLocal: true, isDefinition: true)
!845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !846)
!846 = !{!847}
!847 = !DISubrange(count: 29)
!848 = !DIGlobalVariableExpression(var: !849, expr: !DIExpression())
!849 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !850, file: !851, line: 26, type: !853, isLocal: false, isDefinition: true)
!850 = distinct !DICompileUnit(language: DW_LANG_C11, file: !851, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !852, splitDebugInlining: false, nameTableKind: None)
!851 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!852 = !{!848}
!853 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 376, elements: !25)
!854 = !DIGlobalVariableExpression(var: !855, expr: !DIExpression())
!855 = distinct !DIGlobalVariable(name: "exit_failure", scope: !856, file: !857, line: 24, type: !859, isLocal: false, isDefinition: true)
!856 = distinct !DICompileUnit(language: DW_LANG_C11, file: !857, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !858, splitDebugInlining: false, nameTableKind: None)
!857 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!858 = !{!854}
!859 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !86)
!860 = !DIGlobalVariableExpression(var: !861, expr: !DIExpression())
!861 = distinct !DIGlobalVariable(scope: null, file: !862, line: 34, type: !240, isLocal: true, isDefinition: true)
!862 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!863 = !DIGlobalVariableExpression(var: !864, expr: !DIExpression())
!864 = distinct !DIGlobalVariable(scope: null, file: !862, line: 34, type: !162, isLocal: true, isDefinition: true)
!865 = !DIGlobalVariableExpression(var: !866, expr: !DIExpression())
!866 = distinct !DIGlobalVariable(scope: null, file: !862, line: 34, type: !172, isLocal: true, isDefinition: true)
!867 = !DIGlobalVariableExpression(var: !868, expr: !DIExpression())
!868 = distinct !DIGlobalVariable(scope: null, file: !869, line: 108, type: !199, isLocal: true, isDefinition: true)
!869 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!870 = !DIGlobalVariableExpression(var: !871, expr: !DIExpression())
!871 = distinct !DIGlobalVariable(name: "internal_state", scope: !872, file: !869, line: 97, type: !875, isLocal: true, isDefinition: true)
!872 = distinct !DICompileUnit(language: DW_LANG_C11, file: !869, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !873, globals: !874, splitDebugInlining: false, nameTableKind: None)
!873 = !{!144, !149, !153}
!874 = !{!867, !870}
!875 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !660, line: 6, baseType: !876)
!876 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !662, line: 21, baseType: !877)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !662, line: 13, size: 64, elements: !878)
!878 = !{!879, !880}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !877, file: !662, line: 15, baseType: !86, size: 32)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !877, file: !662, line: 20, baseType: !881, size: 32, offset: 32)
!881 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !877, file: !662, line: 16, size: 32, elements: !882)
!882 = !{!883, !884}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !881, file: !662, line: 18, baseType: !98, size: 32)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !881, file: !662, line: 19, baseType: !19, size: 32)
!885 = !DIGlobalVariableExpression(var: !886, expr: !DIExpression())
!886 = distinct !DIGlobalVariable(scope: null, file: !887, line: 35, type: !350, isLocal: true, isDefinition: true)
!887 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!888 = distinct !DICompileUnit(language: DW_LANG_C11, file: !889, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !890, splitDebugInlining: false, nameTableKind: None)
!889 = !DIFile(filename: "lib/copy-file-range.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6733a97916f50c6b003a01ea6f4c9f0a")
!890 = !{!139}
!891 = distinct !DICompileUnit(language: DW_LANG_C11, file: !892, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !893, splitDebugInlining: false, nameTableKind: None)
!892 = !DIFile(filename: "lib/fadvise.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4f050f925b6846c8ec117ac893b2a17f")
!893 = !{!111}
!894 = distinct !DICompileUnit(language: DW_LANG_C11, file: !895, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!895 = !DIFile(filename: "lib/fpurge.c", directory: "/src", checksumkind: CSK_MD5, checksum: "33a2be68f69b8676b8fe51ee5bacb54f")
!896 = distinct !DICompileUnit(language: DW_LANG_C11, file: !897, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !898, splitDebugInlining: false, nameTableKind: None)
!897 = !DIFile(filename: "lib/full-write.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3e4d1fbb34cc594bb17b421b58eed3ca")
!898 = !{!151}
!899 = distinct !DICompileUnit(language: DW_LANG_C11, file: !900, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!900 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!901 = distinct !DICompileUnit(language: DW_LANG_C11, file: !902, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !890, retainedTypes: !903, splitDebugInlining: false, nameTableKind: None)
!902 = !DIFile(filename: "lib/safe-write.c", directory: "/src", checksumkind: CSK_MD5, checksum: "868d9fdfbe37109ce7387a63f56e5cc3")
!903 = !{!149}
!904 = distinct !DICompileUnit(language: DW_LANG_C11, file: !774, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !905, retainedTypes: !909, globals: !910, splitDebugInlining: false, nameTableKind: None)
!905 = !{!906}
!906 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !774, line: 40, baseType: !98, size: 32, elements: !907)
!907 = !{!908}
!908 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!909 = !{!144}
!910 = !{!772, !775, !777, !779, !781, !783, !788, !793, !795, !797, !802, !807, !812, !814, !819, !824, !826, !831, !833, !835, !837, !839, !841, !843}
!911 = distinct !DICompileUnit(language: DW_LANG_C11, file: !912, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !903, splitDebugInlining: false, nameTableKind: None)
!912 = !DIFile(filename: "lib/xalignalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3b950fafb945919ba44141bc7f11141c")
!913 = distinct !DICompileUnit(language: DW_LANG_C11, file: !914, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !915, retainedTypes: !943, splitDebugInlining: false, nameTableKind: None)
!914 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!915 = !{!916, !928}
!916 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !917, file: !914, line: 188, baseType: !98, size: 32, elements: !926)
!917 = distinct !DISubprogram(name: "x2nrealloc", scope: !914, file: !914, line: 176, type: !918, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !913, retainedNodes: !921)
!918 = !DISubroutineType(types: !919)
!919 = !{!144, !144, !920, !149}
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!921 = !{!922, !923, !924, !925}
!922 = !DILocalVariable(name: "p", arg: 1, scope: !917, file: !914, line: 176, type: !144)
!923 = !DILocalVariable(name: "pn", arg: 2, scope: !917, file: !914, line: 176, type: !920)
!924 = !DILocalVariable(name: "s", arg: 3, scope: !917, file: !914, line: 176, type: !149)
!925 = !DILocalVariable(name: "n", scope: !917, file: !914, line: 178, type: !149)
!926 = !{!927}
!927 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!928 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !929, file: !914, line: 228, baseType: !98, size: 32, elements: !926)
!929 = distinct !DISubprogram(name: "xpalloc", scope: !914, file: !914, line: 223, type: !930, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !913, retainedNodes: !933)
!930 = !DISubroutineType(types: !931)
!931 = !{!144, !144, !932, !500, !502, !500}
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!933 = !{!934, !935, !936, !937, !938, !939, !940, !941, !942}
!934 = !DILocalVariable(name: "pa", arg: 1, scope: !929, file: !914, line: 223, type: !144)
!935 = !DILocalVariable(name: "pn", arg: 2, scope: !929, file: !914, line: 223, type: !932)
!936 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !929, file: !914, line: 223, type: !500)
!937 = !DILocalVariable(name: "n_max", arg: 4, scope: !929, file: !914, line: 223, type: !502)
!938 = !DILocalVariable(name: "s", arg: 5, scope: !929, file: !914, line: 223, type: !500)
!939 = !DILocalVariable(name: "n0", scope: !929, file: !914, line: 230, type: !500)
!940 = !DILocalVariable(name: "n", scope: !929, file: !914, line: 237, type: !500)
!941 = !DILocalVariable(name: "nbytes", scope: !929, file: !914, line: 248, type: !500)
!942 = !DILocalVariable(name: "adjusted_nbytes", scope: !929, file: !914, line: 252, type: !500)
!943 = !{!88, !144, !145, !146, !147}
!944 = distinct !DICompileUnit(language: DW_LANG_C11, file: !862, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !945, splitDebugInlining: false, nameTableKind: None)
!945 = !{!860, !863, !865}
!946 = distinct !DICompileUnit(language: DW_LANG_C11, file: !947, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!947 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!948 = distinct !DICompileUnit(language: DW_LANG_C11, file: !949, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!949 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!950 = distinct !DICompileUnit(language: DW_LANG_C11, file: !951, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !909, splitDebugInlining: false, nameTableKind: None)
!951 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!952 = distinct !DICompileUnit(language: DW_LANG_C11, file: !953, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !909, splitDebugInlining: false, nameTableKind: None)
!953 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!954 = distinct !DICompileUnit(language: DW_LANG_C11, file: !955, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !956, splitDebugInlining: false, nameTableKind: None)
!955 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!956 = !{!145, !147, !144}
!957 = distinct !DICompileUnit(language: DW_LANG_C11, file: !887, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !958, splitDebugInlining: false, nameTableKind: None)
!958 = !{!959, !885}
!959 = !DIGlobalVariableExpression(var: !960, expr: !DIExpression())
!960 = distinct !DIGlobalVariable(scope: null, file: !887, line: 35, type: !235, isLocal: true, isDefinition: true)
!961 = distinct !DICompileUnit(language: DW_LANG_C11, file: !962, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!962 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!963 = distinct !DICompileUnit(language: DW_LANG_C11, file: !964, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !909, splitDebugInlining: false, nameTableKind: None)
!964 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!965 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!966 = !{i32 7, !"Dwarf Version", i32 5}
!967 = !{i32 2, !"Debug Info Version", i32 3}
!968 = !{i32 1, !"wchar_size", i32 4}
!969 = !{i32 8, !"PIC Level", i32 2}
!970 = !{i32 7, !"PIE Level", i32 2}
!971 = !{i32 7, !"uwtable", i32 2}
!972 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 83, type: !973, scopeLine: 84, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !975)
!973 = !DISubroutineType(types: !974)
!974 = !{null, !86}
!975 = !{!976}
!976 = !DILocalVariable(name: "status", arg: 1, scope: !972, file: !2, line: 83, type: !86)
!977 = !DILocation(line: 0, scope: !972)
!978 = !DILocation(line: 85, column: 14, scope: !979)
!979 = distinct !DILexicalBlock(scope: !972, file: !2, line: 85, column: 7)
!980 = !DILocation(line: 85, column: 7, scope: !972)
!981 = !DILocation(line: 86, column: 5, scope: !982)
!982 = distinct !DILexicalBlock(scope: !979, file: !2, line: 86, column: 5)
!983 = !{!984, !984, i64 0}
!984 = !{!"any pointer", !985, i64 0}
!985 = !{!"omnipotent char", !986, i64 0}
!986 = !{!"Simple C/C++ TBAA"}
!987 = !DILocation(line: 89, column: 7, scope: !988)
!988 = distinct !DILexicalBlock(scope: !979, file: !2, line: 88, column: 5)
!989 = !DILocation(line: 93, column: 7, scope: !988)
!990 = !DILocation(line: 729, column: 3, scope: !991, inlinedAt: !993)
!991 = distinct !DISubprogram(name: "emit_stdin_note", scope: !92, file: !92, line: 727, type: !611, scopeLine: 728, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !992)
!992 = !{}
!993 = distinct !DILocation(line: 97, column: 7, scope: !988)
!994 = !DILocation(line: 99, column: 7, scope: !988)
!995 = !DILocation(line: 102, column: 7, scope: !988)
!996 = !DILocation(line: 105, column: 7, scope: !988)
!997 = !DILocation(line: 108, column: 7, scope: !988)
!998 = !DILocation(line: 111, column: 7, scope: !988)
!999 = !DILocation(line: 114, column: 7, scope: !988)
!1000 = !DILocation(line: 117, column: 7, scope: !988)
!1001 = !DILocation(line: 120, column: 7, scope: !988)
!1002 = !DILocation(line: 123, column: 7, scope: !988)
!1003 = !DILocation(line: 126, column: 7, scope: !988)
!1004 = !DILocation(line: 129, column: 7, scope: !988)
!1005 = !DILocation(line: 130, column: 7, scope: !988)
!1006 = !DILocation(line: 131, column: 7, scope: !988)
!1007 = !DILocalVariable(name: "program", arg: 1, scope: !1008, file: !92, line: 836, type: !151)
!1008 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !92, file: !92, line: 836, type: !1009, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1011)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{null, !151}
!1011 = !{!1007, !1012, !1019, !1020, !1022, !1023}
!1012 = !DILocalVariable(name: "infomap", scope: !1008, file: !92, line: 838, type: !1013)
!1013 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1014, size: 896, elements: !163)
!1014 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1015)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1008, file: !92, line: 838, size: 128, elements: !1016)
!1016 = !{!1017, !1018}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1015, file: !92, line: 838, baseType: !151, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1015, file: !92, line: 838, baseType: !151, size: 64, offset: 64)
!1019 = !DILocalVariable(name: "node", scope: !1008, file: !92, line: 848, type: !151)
!1020 = !DILocalVariable(name: "map_prog", scope: !1008, file: !92, line: 849, type: !1021)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1022 = !DILocalVariable(name: "lc_messages", scope: !1008, file: !92, line: 861, type: !151)
!1023 = !DILocalVariable(name: "url_program", scope: !1008, file: !92, line: 874, type: !151)
!1024 = !DILocation(line: 0, scope: !1008, inlinedAt: !1025)
!1025 = distinct !DILocation(line: 138, column: 7, scope: !988)
!1026 = !DILocation(line: 857, column: 3, scope: !1008, inlinedAt: !1025)
!1027 = !DILocation(line: 861, column: 29, scope: !1008, inlinedAt: !1025)
!1028 = !DILocation(line: 862, column: 7, scope: !1029, inlinedAt: !1025)
!1029 = distinct !DILexicalBlock(scope: !1008, file: !92, line: 862, column: 7)
!1030 = !DILocation(line: 862, column: 19, scope: !1029, inlinedAt: !1025)
!1031 = !DILocation(line: 862, column: 22, scope: !1029, inlinedAt: !1025)
!1032 = !DILocation(line: 862, column: 7, scope: !1008, inlinedAt: !1025)
!1033 = !DILocation(line: 868, column: 7, scope: !1034, inlinedAt: !1025)
!1034 = distinct !DILexicalBlock(scope: !1029, file: !92, line: 863, column: 5)
!1035 = !DILocation(line: 870, column: 5, scope: !1034, inlinedAt: !1025)
!1036 = !DILocation(line: 875, column: 3, scope: !1008, inlinedAt: !1025)
!1037 = !DILocation(line: 877, column: 3, scope: !1008, inlinedAt: !1025)
!1038 = !DILocation(line: 140, column: 3, scope: !972)
!1039 = !DISubprogram(name: "dcgettext", scope: !1040, file: !1040, line: 51, type: !1041, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !992)
!1040 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!88, !151, !151, !86}
!1043 = !DISubprogram(name: "__fprintf_chk", scope: !1044, file: !1044, line: 93, type: !1045, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !992)
!1044 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!86, !1047, !86, !1048, null}
!1047 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !288)
!1048 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !151)
!1049 = !DISubprogram(name: "__printf_chk", scope: !1044, file: !1044, line: 95, type: !1050, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !992)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!86, !86, !1048, null}
!1052 = !DISubprogram(name: "fputs_unlocked", scope: !516, file: !516, line: 691, type: !1053, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !992)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!86, !1048, !1047}
!1055 = !DILocation(line: 0, scope: !266)
!1056 = !DILocation(line: 581, column: 7, scope: !274)
!1057 = !{!1058, !1058, i64 0}
!1058 = !{!"int", !985, i64 0}
!1059 = !DILocation(line: 581, column: 19, scope: !274)
!1060 = !DILocation(line: 581, column: 7, scope: !266)
!1061 = !DILocation(line: 585, column: 26, scope: !273)
!1062 = !DILocation(line: 0, scope: !273)
!1063 = !DILocation(line: 586, column: 23, scope: !273)
!1064 = !DILocation(line: 586, column: 28, scope: !273)
!1065 = !DILocation(line: 586, column: 32, scope: !273)
!1066 = !{!985, !985, i64 0}
!1067 = !DILocation(line: 586, column: 38, scope: !273)
!1068 = !DILocalVariable(name: "__s1", arg: 1, scope: !1069, file: !1070, line: 1359, type: !151)
!1069 = distinct !DISubprogram(name: "streq", scope: !1070, file: !1070, line: 1359, type: !1071, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1073)
!1070 = !DIFile(filename: "./lib/string.h", directory: "/src")
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!145, !151, !151}
!1073 = !{!1068, !1074}
!1074 = !DILocalVariable(name: "__s2", arg: 2, scope: !1069, file: !1070, line: 1359, type: !151)
!1075 = !DILocation(line: 0, scope: !1069, inlinedAt: !1076)
!1076 = distinct !DILocation(line: 586, column: 41, scope: !273)
!1077 = !DILocation(line: 1361, column: 11, scope: !1069, inlinedAt: !1076)
!1078 = !DILocation(line: 1361, column: 10, scope: !1069, inlinedAt: !1076)
!1079 = !DILocation(line: 586, column: 19, scope: !273)
!1080 = !DILocation(line: 587, column: 5, scope: !273)
!1081 = !DILocation(line: 588, column: 7, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !266, file: !92, line: 588, column: 7)
!1083 = !DILocation(line: 588, column: 7, scope: !266)
!1084 = !DILocation(line: 590, column: 7, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1082, file: !92, line: 589, column: 5)
!1086 = !DILocation(line: 591, column: 7, scope: !1085)
!1087 = !DILocation(line: 595, column: 37, scope: !266)
!1088 = !DILocation(line: 595, column: 35, scope: !266)
!1089 = !DILocation(line: 596, column: 29, scope: !266)
!1090 = !DILocation(line: 597, column: 8, scope: !281)
!1091 = !DILocation(line: 597, column: 7, scope: !266)
!1092 = !DILocation(line: 604, column: 24, scope: !280)
!1093 = !DILocation(line: 604, column: 12, scope: !281)
!1094 = !DILocation(line: 0, scope: !279)
!1095 = !DILocation(line: 610, column: 16, scope: !279)
!1096 = !DILocation(line: 610, column: 7, scope: !279)
!1097 = !DILocation(line: 611, column: 21, scope: !279)
!1098 = !{!1099, !1099, i64 0}
!1099 = !{!"short", !985, i64 0}
!1100 = !DILocation(line: 611, column: 19, scope: !279)
!1101 = !DILocation(line: 611, column: 16, scope: !279)
!1102 = !DILocation(line: 610, column: 30, scope: !279)
!1103 = distinct !{!1103, !1096, !1097, !1104}
!1104 = !{!"llvm.loop.mustprogress"}
!1105 = !DILocation(line: 612, column: 18, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !279, file: !92, line: 612, column: 11)
!1107 = !DILocation(line: 612, column: 11, scope: !279)
!1108 = !DILocation(line: 618, column: 5, scope: !279)
!1109 = !DILocation(line: 620, column: 23, scope: !266)
!1110 = !DILocation(line: 625, column: 39, scope: !266)
!1111 = !DILocation(line: 626, column: 3, scope: !266)
!1112 = !DILocation(line: 626, column: 10, scope: !266)
!1113 = !DILocation(line: 626, column: 21, scope: !266)
!1114 = !DILocation(line: 628, column: 44, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1116, file: !92, line: 628, column: 11)
!1116 = distinct !DILexicalBlock(scope: !266, file: !92, line: 627, column: 5)
!1117 = !DILocation(line: 628, column: 32, scope: !1115)
!1118 = !DILocation(line: 628, column: 49, scope: !1115)
!1119 = !DILocation(line: 628, column: 11, scope: !1116)
!1120 = !DILocation(line: 630, column: 11, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1116, file: !92, line: 630, column: 11)
!1122 = !DILocation(line: 630, column: 11, scope: !1116)
!1123 = !DILocation(line: 632, column: 26, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1125, file: !92, line: 632, column: 15)
!1125 = distinct !DILexicalBlock(scope: !1121, file: !92, line: 631, column: 9)
!1126 = !DILocation(line: 632, column: 34, scope: !1124)
!1127 = !DILocation(line: 632, column: 37, scope: !1124)
!1128 = !DILocation(line: 632, column: 15, scope: !1125)
!1129 = !DILocation(line: 636, column: 16, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1125, file: !92, line: 636, column: 15)
!1131 = !DILocation(line: 636, column: 29, scope: !1130)
!1132 = !DILocation(line: 640, column: 16, scope: !1116)
!1133 = distinct !{!1133, !1111, !1134, !1104}
!1134 = !DILocation(line: 641, column: 5, scope: !266)
!1135 = !DILocation(line: 644, column: 3, scope: !266)
!1136 = !DILocation(line: 0, scope: !1069, inlinedAt: !1137)
!1137 = distinct !DILocation(line: 648, column: 31, scope: !266)
!1138 = !DILocation(line: 0, scope: !1069, inlinedAt: !1139)
!1139 = distinct !DILocation(line: 649, column: 31, scope: !266)
!1140 = !DILocation(line: 0, scope: !1069, inlinedAt: !1141)
!1141 = distinct !DILocation(line: 650, column: 31, scope: !266)
!1142 = !DILocation(line: 0, scope: !1069, inlinedAt: !1143)
!1143 = distinct !DILocation(line: 651, column: 31, scope: !266)
!1144 = !DILocation(line: 0, scope: !1069, inlinedAt: !1145)
!1145 = distinct !DILocation(line: 652, column: 31, scope: !266)
!1146 = !DILocation(line: 0, scope: !1069, inlinedAt: !1147)
!1147 = distinct !DILocation(line: 653, column: 31, scope: !266)
!1148 = !DILocation(line: 0, scope: !1069, inlinedAt: !1149)
!1149 = distinct !DILocation(line: 654, column: 31, scope: !266)
!1150 = !DILocation(line: 0, scope: !1069, inlinedAt: !1151)
!1151 = distinct !DILocation(line: 655, column: 31, scope: !266)
!1152 = !DILocation(line: 0, scope: !1069, inlinedAt: !1153)
!1153 = distinct !DILocation(line: 656, column: 31, scope: !266)
!1154 = !DILocation(line: 0, scope: !1069, inlinedAt: !1155)
!1155 = distinct !DILocation(line: 657, column: 31, scope: !266)
!1156 = !DILocation(line: 663, column: 7, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !266, file: !92, line: 663, column: 7)
!1158 = !DILocation(line: 664, column: 7, scope: !1157)
!1159 = !DILocation(line: 664, column: 10, scope: !1157)
!1160 = !DILocation(line: 663, column: 7, scope: !266)
!1161 = !DILocation(line: 669, column: 7, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1157, file: !92, line: 665, column: 5)
!1163 = !DILocation(line: 671, column: 5, scope: !1162)
!1164 = !DILocation(line: 676, column: 7, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1157, file: !92, line: 673, column: 5)
!1166 = !DILocation(line: 679, column: 3, scope: !266)
!1167 = !DILocation(line: 683, column: 3, scope: !266)
!1168 = !DILocation(line: 686, column: 3, scope: !266)
!1169 = !DILocation(line: 688, column: 3, scope: !266)
!1170 = !DILocation(line: 691, column: 3, scope: !266)
!1171 = !DILocation(line: 695, column: 3, scope: !266)
!1172 = !DILocation(line: 696, column: 1, scope: !266)
!1173 = !DISubprogram(name: "setlocale", scope: !1174, file: !1174, line: 122, type: !1175, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !992)
!1174 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1175 = !DISubroutineType(types: !1176)
!1176 = !{!88, !86, !151}
!1177 = !DISubprogram(name: "strncmp", scope: !1178, file: !1178, line: 159, type: !1179, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !992)
!1178 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1179 = !DISubroutineType(types: !1180)
!1180 = !{!86, !151, !151, !149}
!1181 = !DISubprogram(name: "exit", scope: !1182, file: !1182, line: 624, type: !973, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !992)
!1182 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1183 = !DISubprogram(name: "getenv", scope: !1182, file: !1182, line: 641, type: !1184, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !992)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{!88, !151}
!1186 = !DISubprogram(name: "strcmp", scope: !1178, file: !1178, line: 156, type: !1187, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !992)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{!86, !151, !151}
!1189 = !DISubprogram(name: "strspn", scope: !1178, file: !1178, line: 297, type: !1190, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !992)
!1190 = !DISubroutineType(types: !1191)
!1191 = !{!147, !151, !151}
!1192 = !DISubprogram(name: "strchr", scope: !1178, file: !1178, line: 246, type: !1193, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !992)
!1193 = !DISubroutineType(types: !1194)
!1194 = !{!88, !151, !86}
!1195 = !DISubprogram(name: "__ctype_b_loc", scope: !121, file: !121, line: 79, type: !1196, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !992)
!1196 = !DISubroutineType(types: !1197)
!1197 = !{!1198}
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !148)
!1201 = !DISubprogram(name: "strcspn", scope: !1178, file: !1178, line: 293, type: !1190, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !992)
!1202 = !DISubprogram(name: "fwrite_unlocked", scope: !516, file: !516, line: 704, type: !1203, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !992)
!1203 = !DISubroutineType(types: !1204)
!1204 = !{!149, !1205, !149, !149, !1047}
!1205 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1206)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1208 = !DILocation(line: 0, scope: !83)
!1209 = !DILocation(line: 555, column: 3, scope: !83)
!1210 = !DILocation(line: 555, column: 15, scope: !83)
!1211 = !DILocation(line: 581, column: 21, scope: !83)
!1212 = !DILocation(line: 581, column: 3, scope: !83)
!1213 = !DILocation(line: 582, column: 3, scope: !83)
!1214 = !DILocation(line: 583, column: 3, scope: !83)
!1215 = !DILocation(line: 584, column: 3, scope: !83)
!1216 = !DILocation(line: 590, column: 3, scope: !83)
!1217 = !DILocation(line: 595, column: 3, scope: !83)
!1218 = !DILocation(line: 562, column: 8, scope: !83)
!1219 = !DILocation(line: 561, column: 8, scope: !83)
!1220 = !DILocation(line: 560, column: 8, scope: !83)
!1221 = !DILocation(line: 559, column: 8, scope: !83)
!1222 = !DILocation(line: 558, column: 8, scope: !83)
!1223 = !DILocation(line: 595, column: 15, scope: !83)
!1224 = distinct !{!1224, !1217, !1225, !1104}
!1225 = !DILocation(line: 652, column: 5, scope: !83)
!1226 = !DILocation(line: 603, column: 11, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1228, file: !2, line: 599, column: 9)
!1228 = distinct !DILexicalBlock(scope: !83, file: !2, line: 597, column: 5)
!1229 = !DILocation(line: 608, column: 11, scope: !1227)
!1230 = !DILocation(line: 612, column: 11, scope: !1227)
!1231 = !DILocation(line: 616, column: 11, scope: !1227)
!1232 = !DILocation(line: 621, column: 11, scope: !1227)
!1233 = !DILocation(line: 629, column: 11, scope: !1227)
!1234 = !DILocation(line: 635, column: 11, scope: !1227)
!1235 = !DILocation(line: 639, column: 11, scope: !1227)
!1236 = !DILocation(line: 643, column: 11, scope: !1227)
!1237 = !DILocation(line: 645, column: 9, scope: !1227)
!1238 = !DILocation(line: 647, column: 9, scope: !1227)
!1239 = !DILocation(line: 650, column: 11, scope: !1227)
!1240 = !DILocation(line: 656, column: 7, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !83, file: !2, line: 656, column: 7)
!1242 = !DILocation(line: 656, column: 41, scope: !1241)
!1243 = !DILocation(line: 656, column: 7, scope: !83)
!1244 = !DILocation(line: 657, column: 5, scope: !1241)
!1245 = !DILocalVariable(name: "st", arg: 1, scope: !1246, file: !136, line: 81, type: !1249)
!1246 = distinct !DISubprogram(name: "io_blksize", scope: !136, file: !136, line: 81, type: !1247, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1251)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{!500, !1249}
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !457)
!1251 = !{!1245, !1252, !1253, !1256}
!1252 = !DILocalVariable(name: "blocksize", scope: !1246, file: !136, line: 84, type: !500)
!1253 = !DILocalVariable(name: "leading_zeros", scope: !1254, file: !136, line: 98, type: !86)
!1254 = distinct !DILexicalBlock(scope: !1255, file: !136, line: 97, column: 5)
!1255 = distinct !DILexicalBlock(scope: !1246, file: !136, line: 96, column: 7)
!1256 = !DILocalVariable(name: "power", scope: !1257, file: !136, line: 101, type: !1259)
!1257 = distinct !DILexicalBlock(scope: !1258, file: !136, line: 100, column: 9)
!1258 = distinct !DILexicalBlock(scope: !1254, file: !136, line: 99, column: 11)
!1259 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!1260 = !DILocation(line: 0, scope: !1246, inlinedAt: !1261)
!1261 = distinct !DILocation(line: 660, column: 19, scope: !83)
!1262 = !DILocation(line: 84, column: 21, scope: !1246, inlinedAt: !1261)
!1263 = !{!1264, !1265, i64 56}
!1264 = !{!"stat", !1265, i64 0, !1265, i64 8, !1265, i64 16, !1058, i64 24, !1058, i64 28, !1058, i64 32, !1058, i64 36, !1265, i64 40, !1265, i64 48, !1265, i64 56, !1265, i64 64, !1266, i64 72, !1266, i64 88, !1266, i64 104, !985, i64 120}
!1265 = !{!"long", !985, i64 0}
!1266 = !{!"timespec", !1265, i64 0, !1265, i64 8}
!1267 = !DILocation(line: 84, column: 58, scope: !1246, inlinedAt: !1261)
!1268 = !DILocation(line: 88, column: 33, scope: !1246, inlinedAt: !1261)
!1269 = !DILocation(line: 88, column: 13, scope: !1246, inlinedAt: !1261)
!1270 = !DILocation(line: 96, column: 7, scope: !1255, inlinedAt: !1261)
!1271 = !{!1264, !1058, i64 24}
!1272 = !{i64 0, i64 65}
!1273 = !DILocation(line: 96, column: 29, scope: !1255, inlinedAt: !1261)
!1274 = !DILocalVariable(name: "n", arg: 1, scope: !1275, file: !1276, line: 436, type: !1259)
!1275 = distinct !DISubprogram(name: "stdc_leading_zeros_ull", scope: !1276, file: !1276, line: 436, type: !1277, scopeLine: 437, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1279)
!1276 = !DIFile(filename: "./lib/stdbit.h", directory: "/src", checksumkind: CSK_MD5, checksum: "22a94c18744c4eadd69210db6ede4b9c")
!1277 = !DISubroutineType(types: !1278)
!1278 = !{!98, !1259}
!1279 = !{!1274}
!1280 = !DILocation(line: 0, scope: !1275, inlinedAt: !1281)
!1281 = distinct !DILocation(line: 98, column: 27, scope: !1254, inlinedAt: !1261)
!1282 = !DILocalVariable(name: "n", arg: 1, scope: !1283, file: !1276, line: 149, type: !1259)
!1283 = distinct !DISubprogram(name: "_gl_stdbit_clzll", scope: !1276, file: !1276, line: 149, type: !1284, scopeLine: 150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1286)
!1284 = !DISubroutineType(types: !1285)
!1285 = !{!86, !1259}
!1286 = !{!1282}
!1287 = !DILocation(line: 0, scope: !1283, inlinedAt: !1288)
!1288 = distinct !DILocation(line: 438, column: 10, scope: !1275, inlinedAt: !1281)
!1289 = !DILocation(line: 151, column: 10, scope: !1283, inlinedAt: !1288)
!1290 = !DILocation(line: 0, scope: !1254, inlinedAt: !1261)
!1291 = !DILocation(line: 0, scope: !1257, inlinedAt: !1261)
!1292 = !DILocation(line: 102, column: 21, scope: !1293, inlinedAt: !1261)
!1293 = distinct !DILexicalBlock(scope: !1257, file: !136, line: 102, column: 15)
!1294 = !DILocation(line: 102, column: 15, scope: !1257, inlinedAt: !1261)
!1295 = !DILocation(line: 105, column: 5, scope: !1254, inlinedAt: !1261)
!1296 = !DILocation(line: 110, column: 10, scope: !1246, inlinedAt: !1261)
!1297 = !DILocation(line: 666, column: 20, scope: !83)
!1298 = !DILocation(line: 668, column: 10, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !83, file: !2, line: 668, column: 7)
!1300 = !DILocation(line: 668, column: 17, scope: !1299)
!1301 = !DILocation(line: 676, column: 10, scope: !83)
!1302 = !DILocation(line: 677, column: 16, scope: !83)
!1303 = !DILocation(line: 679, column: 21, scope: !83)
!1304 = !DILocation(line: 681, column: 3, scope: !83)
!1305 = !DILocation(line: 663, column: 7, scope: !83)
!1306 = !DILocation(line: 683, column: 18, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !509, file: !2, line: 683, column: 11)
!1308 = !DILocation(line: 683, column: 11, scope: !509)
!1309 = !DILocation(line: 686, column: 35, scope: !509)
!1310 = !DILocation(line: 684, column: 18, scope: !1307)
!1311 = !DILocation(line: 684, column: 16, scope: !1307)
!1312 = !DILocation(line: 684, column: 9, scope: !1307)
!1313 = !DILocation(line: 0, scope: !1069, inlinedAt: !1314)
!1314 = distinct !DILocation(line: 686, column: 28, scope: !509)
!1315 = !DILocation(line: 1361, column: 11, scope: !1069, inlinedAt: !1314)
!1316 = !DILocation(line: 1361, column: 10, scope: !1069, inlinedAt: !1314)
!1317 = !DILocation(line: 0, scope: !509)
!1318 = !DILocation(line: 687, column: 11, scope: !509)
!1319 = !DILocation(line: 690, column: 22, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1321, file: !2, line: 688, column: 9)
!1321 = distinct !DILexicalBlock(scope: !509, file: !2, line: 687, column: 11)
!1322 = !DILocation(line: 696, column: 24, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1321, file: !2, line: 695, column: 9)
!1324 = !DILocation(line: 696, column: 22, scope: !1323)
!1325 = !DILocation(line: 697, column: 26, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1323, file: !2, line: 697, column: 15)
!1327 = !DILocation(line: 697, column: 15, scope: !1323)
!1328 = !DILocation(line: 699, column: 15, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1326, file: !2, line: 698, column: 13)
!1330 = !DILocation(line: 701, column: 15, scope: !1329)
!1331 = !DILocation(line: 706, column: 18, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !509, file: !2, line: 706, column: 11)
!1333 = !DILocation(line: 705, column: 7, scope: !509)
!1334 = !DILocation(line: 705, column: 19, scope: !509)
!1335 = !DILocation(line: 706, column: 11, scope: !1332)
!1336 = !DILocation(line: 706, column: 42, scope: !1332)
!1337 = !DILocation(line: 706, column: 11, scope: !509)
!1338 = !DILocation(line: 708, column: 11, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1332, file: !2, line: 707, column: 9)
!1340 = !DILocation(line: 710, column: 11, scope: !1339)
!1341 = !DILocation(line: 0, scope: !1246, inlinedAt: !1342)
!1342 = distinct !DILocation(line: 714, column: 22, scope: !509)
!1343 = !DILocation(line: 84, column: 21, scope: !1246, inlinedAt: !1342)
!1344 = !DILocation(line: 84, column: 58, scope: !1246, inlinedAt: !1342)
!1345 = !DILocation(line: 88, column: 33, scope: !1246, inlinedAt: !1342)
!1346 = !DILocation(line: 88, column: 13, scope: !1246, inlinedAt: !1342)
!1347 = !DILocation(line: 96, column: 7, scope: !1255, inlinedAt: !1342)
!1348 = !DILocation(line: 96, column: 29, scope: !1255, inlinedAt: !1342)
!1349 = !DILocation(line: 0, scope: !1275, inlinedAt: !1350)
!1350 = distinct !DILocation(line: 98, column: 27, scope: !1254, inlinedAt: !1342)
!1351 = !DILocation(line: 0, scope: !1283, inlinedAt: !1352)
!1352 = distinct !DILocation(line: 438, column: 10, scope: !1275, inlinedAt: !1350)
!1353 = !DILocation(line: 151, column: 10, scope: !1283, inlinedAt: !1352)
!1354 = !DILocation(line: 0, scope: !1254, inlinedAt: !1342)
!1355 = !DILocation(line: 0, scope: !1257, inlinedAt: !1342)
!1356 = !DILocation(line: 102, column: 21, scope: !1293, inlinedAt: !1342)
!1357 = !DILocation(line: 102, column: 15, scope: !1257, inlinedAt: !1342)
!1358 = !DILocation(line: 110, column: 10, scope: !1246, inlinedAt: !1342)
!1359 = !DILocation(line: 716, column: 17, scope: !509)
!1360 = !DILocation(line: 716, column: 7, scope: !509)
!1361 = !DILocation(line: 722, column: 43, scope: !514)
!1362 = !DILocation(line: 725, column: 14, scope: !514)
!1363 = !{!1264, !1265, i64 0}
!1364 = !{!1264, !1265, i64 8}
!1365 = !DILocation(line: 722, column: 11, scope: !509)
!1366 = !DILocation(line: 727, column: 33, scope: !513)
!1367 = !DILocation(line: 727, column: 26, scope: !513)
!1368 = !DILocation(line: 0, scope: !513)
!1369 = !DILocation(line: 728, column: 17, scope: !519)
!1370 = !DILocation(line: 728, column: 15, scope: !513)
!1371 = !DILocation(line: 730, column: 29, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !518, file: !2, line: 730, column: 19)
!1373 = !DILocation(line: 730, column: 19, scope: !518)
!1374 = !DILocation(line: 731, column: 29, scope: !1372)
!1375 = !DILocation(line: 731, column: 17, scope: !1372)
!1376 = !DILocation(line: 732, column: 44, scope: !518)
!1377 = !DILocation(line: 732, column: 29, scope: !518)
!1378 = !DILocation(line: 0, scope: !518)
!1379 = !DILocation(line: 734, column: 28, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !518, file: !2, line: 734, column: 19)
!1381 = !DILocation(line: 734, column: 26, scope: !1380)
!1382 = !DILocation(line: 734, column: 19, scope: !518)
!1383 = !DILocation(line: 736, column: 19, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1380, file: !2, line: 735, column: 17)
!1385 = !DILocation(line: 751, column: 21, scope: !523)
!1386 = !DILocation(line: 755, column: 23, scope: !522)
!1387 = !DILocalVariable(name: "copy_max", scope: !1388, file: !2, line: 523, type: !1394)
!1388 = distinct !DISubprogram(name: "copy_cat", scope: !2, file: !2, line: 518, type: !1389, scopeLine: 519, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1391)
!1389 = !DISubroutineType(types: !1390)
!1390 = !{!86}
!1391 = !{!1387, !1392}
!1392 = !DILocalVariable(name: "some_copied", scope: !1393, file: !2, line: 531, type: !145)
!1393 = distinct !DILexicalBlock(scope: !1388, file: !2, line: 531, column: 3)
!1394 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !516, line: 77, baseType: !1395)
!1395 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !315, line: 194, baseType: !146)
!1396 = !DILocation(line: 0, scope: !1388, inlinedAt: !1397)
!1397 = distinct !DILocation(line: 755, column: 56, scope: !522)
!1398 = !DILocation(line: 0, scope: !1393, inlinedAt: !1397)
!1399 = !DILocation(line: 532, column: 30, scope: !1400, inlinedAt: !1397)
!1400 = distinct !DILexicalBlock(scope: !1393, file: !2, line: 531, column: 3)
!1401 = !DILocation(line: 532, column: 13, scope: !1400, inlinedAt: !1397)
!1402 = !DILocation(line: 532, column: 5, scope: !1400, inlinedAt: !1397)
!1403 = distinct !{!1403, !1404, !1405, !1406}
!1404 = !DILocation(line: 531, column: 3, scope: !1393, inlinedAt: !1397)
!1405 = !DILocation(line: 545, column: 7, scope: !1393, inlinedAt: !1397)
!1406 = !{!"llvm.loop.peeled.count", i32 1}
!1407 = !DILocation(line: 539, column: 13, scope: !1408, inlinedAt: !1397)
!1408 = distinct !DILexicalBlock(scope: !1409, file: !2, line: 539, column: 13)
!1409 = distinct !DILexicalBlock(scope: !1400, file: !2, line: 534, column: 7)
!1410 = !DILocation(line: 539, column: 29, scope: !1408, inlinedAt: !1397)
!1411 = !DILocation(line: 543, column: 9, scope: !1409, inlinedAt: !1397)
!1412 = !DILocation(line: 544, column: 9, scope: !1409, inlinedAt: !1397)
!1413 = !DILocation(line: 755, column: 13, scope: !522)
!1414 = !DILocation(line: 0, scope: !522)
!1415 = !DILocation(line: 759, column: 18, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1417, file: !2, line: 757, column: 13)
!1417 = distinct !DILexicalBlock(scope: !522, file: !2, line: 756, column: 15)
!1418 = !DILocation(line: 760, column: 13, scope: !1416)
!1419 = !DILocation(line: 763, column: 24, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1417, file: !2, line: 762, column: 13)
!1421 = !DILocation(line: 764, column: 23, scope: !1420)
!1422 = !DILocalVariable(name: "buf", arg: 1, scope: !1423, file: !2, line: 170, type: !88)
!1423 = distinct !DISubprogram(name: "simple_cat", scope: !2, file: !2, line: 170, type: !1424, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1426)
!1424 = !DISubroutineType(types: !1425)
!1425 = !{!145, !88, !500}
!1426 = !{!1422, !1427, !1428}
!1427 = !DILocalVariable(name: "bufsize", arg: 2, scope: !1423, file: !2, line: 170, type: !500)
!1428 = !DILocalVariable(name: "n_read", scope: !1429, file: !2, line: 178, type: !1394)
!1429 = distinct !DILexicalBlock(scope: !1423, file: !2, line: 175, column: 5)
!1430 = !DILocation(line: 0, scope: !1423, inlinedAt: !1431)
!1431 = distinct !DILocation(line: 765, column: 21, scope: !1420)
!1432 = !DILocation(line: 174, column: 3, scope: !1423, inlinedAt: !1431)
!1433 = !DILocation(line: 178, column: 30, scope: !1429, inlinedAt: !1431)
!1434 = !DILocation(line: 178, column: 24, scope: !1429, inlinedAt: !1431)
!1435 = !DILocation(line: 0, scope: !1429, inlinedAt: !1431)
!1436 = !DILocation(line: 179, column: 18, scope: !1437, inlinedAt: !1431)
!1437 = distinct !DILexicalBlock(scope: !1429, file: !2, line: 179, column: 11)
!1438 = !DILocation(line: 179, column: 11, scope: !1429, inlinedAt: !1431)
!1439 = !DILocation(line: 181, column: 11, scope: !1440, inlinedAt: !1431)
!1440 = distinct !DILexicalBlock(scope: !1437, file: !2, line: 180, column: 9)
!1441 = !DILocation(line: 182, column: 11, scope: !1440, inlinedAt: !1431)
!1442 = !DILocation(line: 187, column: 18, scope: !1443, inlinedAt: !1431)
!1443 = distinct !DILexicalBlock(scope: !1429, file: !2, line: 187, column: 11)
!1444 = !DILocation(line: 187, column: 11, scope: !1429, inlinedAt: !1431)
!1445 = !DILocation(line: 192, column: 11, scope: !1446, inlinedAt: !1431)
!1446 = distinct !DILexicalBlock(scope: !1429, file: !2, line: 192, column: 11)
!1447 = !DILocation(line: 192, column: 51, scope: !1446, inlinedAt: !1431)
!1448 = !DILocation(line: 192, column: 11, scope: !1429, inlinedAt: !1431)
!1449 = !DILocation(line: 948, column: 21, scope: !1450, inlinedAt: !1453)
!1450 = distinct !DISubprogram(name: "write_error", scope: !92, file: !92, line: 946, type: !611, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1451)
!1451 = !{!1452}
!1452 = !DILocalVariable(name: "saved_errno", scope: !1450, file: !92, line: 948, type: !86)
!1453 = distinct !DILocation(line: 193, column: 9, scope: !1446, inlinedAt: !1431)
!1454 = !DILocation(line: 0, scope: !1450, inlinedAt: !1453)
!1455 = !DILocation(line: 949, column: 3, scope: !1450, inlinedAt: !1453)
!1456 = !DILocation(line: 950, column: 11, scope: !1450, inlinedAt: !1453)
!1457 = !DILocation(line: 950, column: 3, scope: !1450, inlinedAt: !1453)
!1458 = !DILocation(line: 951, column: 3, scope: !1450, inlinedAt: !1453)
!1459 = !DILocation(line: 952, column: 3, scope: !1450, inlinedAt: !1453)
!1460 = !DILocation(line: 765, column: 18, scope: !1420)
!1461 = !DILocation(line: 771, column: 50, scope: !525)
!1462 = !DILocation(line: 771, column: 19, scope: !525)
!1463 = !DILocation(line: 0, scope: !525)
!1464 = !DILocation(line: 795, column: 15, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !525, file: !2, line: 795, column: 15)
!1466 = !DILocation(line: 796, column: 18, scope: !1465)
!1467 = !DILocation(line: 797, column: 15, scope: !1465)
!1468 = !DILocation(line: 797, column: 18, scope: !1465)
!1469 = !DILocation(line: 795, column: 15, scope: !525)
!1470 = !DILocation(line: 798, column: 13, scope: !1465)
!1471 = !DILocation(line: 799, column: 26, scope: !525)
!1472 = !DILocalVariable(name: "inbuf", arg: 1, scope: !1473, file: !2, line: 226, type: !88)
!1473 = distinct !DISubprogram(name: "cat", scope: !2, file: !2, line: 226, type: !1474, scopeLine: 229, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1476)
!1474 = !DISubroutineType(types: !1475)
!1475 = !{!145, !88, !500, !88, !500, !145, !145, !145, !145, !145, !145}
!1476 = !{!1472, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1497, !1498, !1501, !1502}
!1477 = !DILocalVariable(name: "insize", arg: 2, scope: !1473, file: !2, line: 226, type: !500)
!1478 = !DILocalVariable(name: "outbuf", arg: 3, scope: !1473, file: !2, line: 226, type: !88)
!1479 = !DILocalVariable(name: "outsize", arg: 4, scope: !1473, file: !2, line: 226, type: !500)
!1480 = !DILocalVariable(name: "show_nonprinting", arg: 5, scope: !1473, file: !2, line: 227, type: !145)
!1481 = !DILocalVariable(name: "show_tabs", arg: 6, scope: !1473, file: !2, line: 227, type: !145)
!1482 = !DILocalVariable(name: "number", arg: 7, scope: !1473, file: !2, line: 227, type: !145)
!1483 = !DILocalVariable(name: "number_nonblank", arg: 8, scope: !1473, file: !2, line: 227, type: !145)
!1484 = !DILocalVariable(name: "show_ends", arg: 9, scope: !1473, file: !2, line: 228, type: !145)
!1485 = !DILocalVariable(name: "squeeze_blank", arg: 10, scope: !1473, file: !2, line: 228, type: !145)
!1486 = !DILocalVariable(name: "ch", scope: !1473, file: !2, line: 231, type: !153)
!1487 = !DILocalVariable(name: "newlines", scope: !1473, file: !2, line: 238, type: !86)
!1488 = !DILocalVariable(name: "use_fionread", scope: !1473, file: !2, line: 243, type: !145)
!1489 = !DILocalVariable(name: "eob", scope: !1473, file: !2, line: 251, type: !88)
!1490 = !DILocalVariable(name: "bpin", scope: !1473, file: !2, line: 254, type: !88)
!1491 = !DILocalVariable(name: "bpout", scope: !1473, file: !2, line: 257, type: !88)
!1492 = !DILocalVariable(name: "wp", scope: !1493, file: !2, line: 267, type: !88)
!1493 = distinct !DILexicalBlock(scope: !1494, file: !2, line: 266, column: 13)
!1494 = distinct !DILexicalBlock(scope: !1495, file: !2, line: 265, column: 15)
!1495 = distinct !DILexicalBlock(scope: !1496, file: !2, line: 262, column: 9)
!1496 = distinct !DILexicalBlock(scope: !1473, file: !2, line: 260, column: 5)
!1497 = !DILocalVariable(name: "remaining_bytes", scope: !1493, file: !2, line: 268, type: !500)
!1498 = !DILocalVariable(name: "input_pending", scope: !1499, file: !2, line: 289, type: !145)
!1499 = distinct !DILexicalBlock(scope: !1500, file: !2, line: 288, column: 13)
!1500 = distinct !DILexicalBlock(scope: !1495, file: !2, line: 287, column: 15)
!1501 = !DILocalVariable(name: "n_to_read", scope: !1499, file: !2, line: 291, type: !86)
!1502 = !DILocalVariable(name: "n_read", scope: !1499, file: !2, line: 327, type: !1394)
!1503 = !DILocation(line: 0, scope: !1473, inlinedAt: !1504)
!1504 = distinct !DILocation(line: 801, column: 17, scope: !525)
!1505 = !DILocation(line: 238, column: 18, scope: !1473, inlinedAt: !1504)
!1506 = !DILocation(line: 254, column: 20, scope: !1473, inlinedAt: !1504)
!1507 = !DILocation(line: 259, column: 3, scope: !1473, inlinedAt: !1504)
!1508 = !DILocation(line: 238, column: 7, scope: !1473, inlinedAt: !1504)
!1509 = !DILocation(line: 251, column: 9, scope: !1473, inlinedAt: !1504)
!1510 = !DILocation(line: 265, column: 32, scope: !1494, inlinedAt: !1504)
!1511 = !DILocation(line: 265, column: 15, scope: !1495, inlinedAt: !1504)
!1512 = !DILocation(line: 269, column: 15, scope: !1493, inlinedAt: !1504)
!1513 = !DILocation(line: 0, scope: !1493, inlinedAt: !1504)
!1514 = !DILocation(line: 271, column: 23, scope: !1515, inlinedAt: !1504)
!1515 = distinct !DILexicalBlock(scope: !1516, file: !2, line: 271, column: 23)
!1516 = distinct !DILexicalBlock(scope: !1493, file: !2, line: 270, column: 17)
!1517 = !DILocation(line: 271, column: 63, scope: !1515, inlinedAt: !1504)
!1518 = !DILocation(line: 271, column: 23, scope: !1516, inlinedAt: !1504)
!1519 = !DILocation(line: 948, column: 21, scope: !1450, inlinedAt: !1520)
!1520 = distinct !DILocation(line: 272, column: 21, scope: !1515, inlinedAt: !1504)
!1521 = !DILocation(line: 0, scope: !1450, inlinedAt: !1520)
!1522 = !DILocation(line: 949, column: 3, scope: !1450, inlinedAt: !1520)
!1523 = !DILocation(line: 950, column: 11, scope: !1450, inlinedAt: !1520)
!1524 = !DILocation(line: 950, column: 3, scope: !1450, inlinedAt: !1520)
!1525 = !DILocation(line: 951, column: 3, scope: !1450, inlinedAt: !1520)
!1526 = !DILocation(line: 952, column: 3, scope: !1450, inlinedAt: !1520)
!1527 = !DILocation(line: 273, column: 22, scope: !1516, inlinedAt: !1504)
!1528 = !DILocation(line: 274, column: 43, scope: !1516, inlinedAt: !1504)
!1529 = !DILocation(line: 276, column: 30, scope: !1493, inlinedAt: !1504)
!1530 = !DILocation(line: 275, column: 17, scope: !1516, inlinedAt: !1504)
!1531 = distinct !{!1531, !1512, !1532, !1104}
!1532 = !DILocation(line: 276, column: 48, scope: !1493, inlinedAt: !1504)
!1533 = !DILocalVariable(name: "__dest", arg: 1, scope: !1534, file: !1535, line: 34, type: !144)
!1534 = distinct !DISubprogram(name: "memmove", scope: !1535, file: !1535, line: 34, type: !1536, scopeLine: 35, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1538)
!1535 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1536 = !DISubroutineType(types: !1537)
!1537 = !{!144, !144, !1206, !149}
!1538 = !{!1533, !1539, !1540}
!1539 = !DILocalVariable(name: "__src", arg: 2, scope: !1534, file: !1535, line: 34, type: !1206)
!1540 = !DILocalVariable(name: "__len", arg: 3, scope: !1534, file: !1535, line: 34, type: !149)
!1541 = !DILocation(line: 0, scope: !1534, inlinedAt: !1542)
!1542 = distinct !DILocation(line: 281, column: 15, scope: !1493, inlinedAt: !1504)
!1543 = !DILocation(line: 36, column: 10, scope: !1534, inlinedAt: !1542)
!1544 = !DILocation(line: 282, column: 30, scope: !1493, inlinedAt: !1504)
!1545 = !DILocation(line: 283, column: 13, scope: !1493, inlinedAt: !1504)
!1546 = !DILocation(line: 287, column: 20, scope: !1500, inlinedAt: !1504)
!1547 = !DILocation(line: 287, column: 15, scope: !1495, inlinedAt: !1504)
!1548 = !DILocation(line: 0, scope: !1499, inlinedAt: !1504)
!1549 = !DILocation(line: 291, column: 15, scope: !1499, inlinedAt: !1504)
!1550 = !DILocation(line: 291, column: 19, scope: !1499, inlinedAt: !1504)
!1551 = !DILocation(line: 297, column: 19, scope: !1552, inlinedAt: !1504)
!1552 = distinct !DILexicalBlock(scope: !1499, file: !2, line: 297, column: 19)
!1553 = !DILocation(line: 298, column: 19, scope: !1552, inlinedAt: !1504)
!1554 = !DILocation(line: 298, column: 29, scope: !1552, inlinedAt: !1504)
!1555 = !DILocation(line: 298, column: 22, scope: !1552, inlinedAt: !1504)
!1556 = !DILocation(line: 298, column: 63, scope: !1552, inlinedAt: !1504)
!1557 = !DILocation(line: 297, column: 19, scope: !1499, inlinedAt: !1504)
!1558 = !DILocation(line: 306, column: 23, scope: !1559, inlinedAt: !1504)
!1559 = distinct !DILexicalBlock(scope: !1560, file: !2, line: 306, column: 23)
!1560 = distinct !DILexicalBlock(scope: !1552, file: !2, line: 299, column: 17)
!1561 = !DILocation(line: 306, column: 43, scope: !1559, inlinedAt: !1504)
!1562 = !DILocation(line: 312, column: 23, scope: !1563, inlinedAt: !1504)
!1563 = distinct !DILexicalBlock(scope: !1559, file: !2, line: 311, column: 21)
!1564 = !DILocation(line: 315, column: 23, scope: !1563, inlinedAt: !1504)
!1565 = !DILocation(line: 318, column: 19, scope: !1566, inlinedAt: !1504)
!1566 = distinct !DILexicalBlock(scope: !1499, file: !2, line: 318, column: 19)
!1567 = !DILocation(line: 318, column: 29, scope: !1566, inlinedAt: !1504)
!1568 = !DILocation(line: 322, column: 19, scope: !1499, inlinedAt: !1504)
!1569 = !DILocalVariable(name: "outbuf", arg: 1, scope: !1570, file: !2, line: 202, type: !88)
!1570 = distinct !DISubprogram(name: "write_pending", scope: !2, file: !2, line: 202, type: !1571, scopeLine: 203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1573)
!1571 = !DISubroutineType(types: !1572)
!1572 = !{null, !88, !87}
!1573 = !{!1569, !1574, !1575}
!1574 = !DILocalVariable(name: "bpout", arg: 2, scope: !1570, file: !2, line: 202, type: !87)
!1575 = !DILocalVariable(name: "n_write", scope: !1570, file: !2, line: 204, type: !500)
!1576 = !DILocation(line: 0, scope: !1570, inlinedAt: !1577)
!1577 = distinct !DILocation(line: 323, column: 17, scope: !1578, inlinedAt: !1504)
!1578 = distinct !DILexicalBlock(scope: !1499, file: !2, line: 322, column: 19)
!1579 = !DILocation(line: 204, column: 26, scope: !1570, inlinedAt: !1577)
!1580 = !DILocation(line: 205, column: 9, scope: !1581, inlinedAt: !1577)
!1581 = distinct !DILexicalBlock(scope: !1570, file: !2, line: 205, column: 7)
!1582 = !DILocation(line: 205, column: 7, scope: !1570, inlinedAt: !1577)
!1583 = !DILocation(line: 207, column: 11, scope: !1584, inlinedAt: !1577)
!1584 = distinct !DILexicalBlock(scope: !1585, file: !2, line: 207, column: 11)
!1585 = distinct !DILexicalBlock(scope: !1581, file: !2, line: 206, column: 5)
!1586 = !DILocation(line: 207, column: 55, scope: !1584, inlinedAt: !1577)
!1587 = !DILocation(line: 207, column: 11, scope: !1585, inlinedAt: !1577)
!1588 = !DILocation(line: 948, column: 21, scope: !1450, inlinedAt: !1589)
!1589 = distinct !DILocation(line: 208, column: 9, scope: !1584, inlinedAt: !1577)
!1590 = !DILocation(line: 0, scope: !1450, inlinedAt: !1589)
!1591 = !DILocation(line: 949, column: 3, scope: !1450, inlinedAt: !1589)
!1592 = !DILocation(line: 950, column: 11, scope: !1450, inlinedAt: !1589)
!1593 = !DILocation(line: 950, column: 3, scope: !1450, inlinedAt: !1589)
!1594 = !DILocation(line: 951, column: 3, scope: !1450, inlinedAt: !1589)
!1595 = !DILocation(line: 952, column: 3, scope: !1450, inlinedAt: !1589)
!1596 = !DILocation(line: 327, column: 38, scope: !1499, inlinedAt: !1504)
!1597 = !DILocation(line: 327, column: 32, scope: !1499, inlinedAt: !1504)
!1598 = !DILocation(line: 328, column: 26, scope: !1599, inlinedAt: !1504)
!1599 = distinct !DILexicalBlock(scope: !1499, file: !2, line: 328, column: 19)
!1600 = !DILocation(line: 328, column: 19, scope: !1499, inlinedAt: !1504)
!1601 = !DILocation(line: 330, column: 19, scope: !1602, inlinedAt: !1504)
!1602 = distinct !DILexicalBlock(scope: !1599, file: !2, line: 329, column: 17)
!1603 = !DILocation(line: 0, scope: !1570, inlinedAt: !1604)
!1604 = distinct !DILocation(line: 331, column: 19, scope: !1602, inlinedAt: !1504)
!1605 = !DILocation(line: 204, column: 26, scope: !1570, inlinedAt: !1604)
!1606 = !DILocation(line: 205, column: 9, scope: !1581, inlinedAt: !1604)
!1607 = !DILocation(line: 205, column: 7, scope: !1570, inlinedAt: !1604)
!1608 = !DILocation(line: 207, column: 11, scope: !1584, inlinedAt: !1604)
!1609 = !DILocation(line: 207, column: 55, scope: !1584, inlinedAt: !1604)
!1610 = !DILocation(line: 207, column: 11, scope: !1585, inlinedAt: !1604)
!1611 = !DILocation(line: 948, column: 21, scope: !1450, inlinedAt: !1612)
!1612 = distinct !DILocation(line: 208, column: 9, scope: !1584, inlinedAt: !1604)
!1613 = !DILocation(line: 0, scope: !1450, inlinedAt: !1612)
!1614 = !DILocation(line: 949, column: 3, scope: !1450, inlinedAt: !1612)
!1615 = !DILocation(line: 950, column: 11, scope: !1450, inlinedAt: !1612)
!1616 = !DILocation(line: 950, column: 3, scope: !1450, inlinedAt: !1612)
!1617 = !DILocation(line: 951, column: 3, scope: !1450, inlinedAt: !1612)
!1618 = !DILocation(line: 952, column: 3, scope: !1450, inlinedAt: !1612)
!1619 = !DILocation(line: 335, column: 26, scope: !1620, inlinedAt: !1504)
!1620 = distinct !DILexicalBlock(scope: !1499, file: !2, line: 335, column: 19)
!1621 = !DILocation(line: 335, column: 19, scope: !1499, inlinedAt: !1504)
!1622 = !DILocation(line: 0, scope: !1570, inlinedAt: !1623)
!1623 = distinct !DILocation(line: 337, column: 19, scope: !1624, inlinedAt: !1504)
!1624 = distinct !DILexicalBlock(scope: !1620, file: !2, line: 336, column: 17)
!1625 = !DILocation(line: 204, column: 26, scope: !1570, inlinedAt: !1623)
!1626 = !DILocation(line: 205, column: 9, scope: !1581, inlinedAt: !1623)
!1627 = !DILocation(line: 205, column: 7, scope: !1570, inlinedAt: !1623)
!1628 = !DILocation(line: 207, column: 11, scope: !1584, inlinedAt: !1623)
!1629 = !DILocation(line: 207, column: 55, scope: !1584, inlinedAt: !1623)
!1630 = !DILocation(line: 207, column: 11, scope: !1585, inlinedAt: !1623)
!1631 = !DILocation(line: 948, column: 21, scope: !1450, inlinedAt: !1632)
!1632 = distinct !DILocation(line: 208, column: 9, scope: !1584, inlinedAt: !1623)
!1633 = !DILocation(line: 0, scope: !1450, inlinedAt: !1632)
!1634 = !DILocation(line: 949, column: 3, scope: !1450, inlinedAt: !1632)
!1635 = !DILocation(line: 950, column: 11, scope: !1450, inlinedAt: !1632)
!1636 = !DILocation(line: 950, column: 3, scope: !1450, inlinedAt: !1632)
!1637 = !DILocation(line: 951, column: 3, scope: !1450, inlinedAt: !1632)
!1638 = !DILocation(line: 952, column: 3, scope: !1450, inlinedAt: !1632)
!1639 = !DILocation(line: 346, column: 26, scope: !1499, inlinedAt: !1504)
!1640 = !DILocation(line: 347, column: 20, scope: !1499, inlinedAt: !1504)
!1641 = !DILocation(line: 348, column: 13, scope: !1500, inlinedAt: !1504)
!1642 = !DILocation(line: 356, column: 19, scope: !1643, inlinedAt: !1504)
!1643 = distinct !DILexicalBlock(scope: !1644, file: !2, line: 356, column: 19)
!1644 = distinct !DILexicalBlock(scope: !1500, file: !2, line: 350, column: 13)
!1645 = !DILocation(line: 356, column: 30, scope: !1643, inlinedAt: !1504)
!1646 = !DILocation(line: 356, column: 19, scope: !1644, inlinedAt: !1504)
!1647 = !DILocation(line: 358, column: 32, scope: !1648, inlinedAt: !1504)
!1648 = distinct !DILexicalBlock(scope: !1649, file: !2, line: 358, column: 23)
!1649 = distinct !DILexicalBlock(scope: !1643, file: !2, line: 357, column: 17)
!1650 = !DILocation(line: 358, column: 23, scope: !1649, inlinedAt: !1504)
!1651 = !DILocation(line: 377, column: 30, scope: !1652, inlinedAt: !1504)
!1652 = distinct !DILexicalBlock(scope: !1649, file: !2, line: 377, column: 23)
!1653 = !DILocation(line: 149, column: 3, scope: !1654, inlinedAt: !1657)
!1654 = distinct !DISubprogram(name: "next_line_num", scope: !2, file: !2, line: 146, type: !611, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1655)
!1655 = !{!1656}
!1656 = !DILocalVariable(name: "endp", scope: !1654, file: !2, line: 148, type: !88)
!1657 = distinct !DILocation(line: 379, column: 23, scope: !1658, inlinedAt: !1504)
!1658 = distinct !DILexicalBlock(scope: !1652, file: !2, line: 378, column: 21)
!1659 = !DILocation(line: 0, scope: !1654, inlinedAt: !1657)
!1660 = !DILocation(line: 151, column: 18, scope: !1661, inlinedAt: !1657)
!1661 = distinct !DILexicalBlock(scope: !1662, file: !2, line: 151, column: 11)
!1662 = distinct !DILexicalBlock(scope: !1654, file: !2, line: 150, column: 5)
!1663 = !DILocation(line: 151, column: 21, scope: !1661, inlinedAt: !1657)
!1664 = !DILocation(line: 151, column: 11, scope: !1662, inlinedAt: !1657)
!1665 = !DILocation(line: 153, column: 12, scope: !1662, inlinedAt: !1657)
!1666 = !DILocation(line: 153, column: 15, scope: !1662, inlinedAt: !1657)
!1667 = !DILocation(line: 155, column: 15, scope: !1654, inlinedAt: !1657)
!1668 = !DILocation(line: 154, column: 5, scope: !1662, inlinedAt: !1657)
!1669 = distinct !{!1669, !1653, !1670, !1104}
!1670 = !DILocation(line: 155, column: 32, scope: !1654, inlinedAt: !1657)
!1671 = !DILocation(line: 157, column: 22, scope: !1672, inlinedAt: !1657)
!1672 = distinct !DILexicalBlock(scope: !1654, file: !2, line: 157, column: 7)
!1673 = !DILocation(line: 157, column: 7, scope: !1654, inlinedAt: !1657)
!1674 = !DILocation(line: 158, column: 6, scope: !1672, inlinedAt: !1657)
!1675 = !DILocation(line: 158, column: 23, scope: !1672, inlinedAt: !1657)
!1676 = !DILocation(line: 158, column: 5, scope: !1672, inlinedAt: !1657)
!1677 = !DILocation(line: 160, column: 15, scope: !1672, inlinedAt: !1657)
!1678 = !DILocation(line: 161, column: 7, scope: !1679, inlinedAt: !1657)
!1679 = distinct !DILexicalBlock(scope: !1654, file: !2, line: 161, column: 7)
!1680 = !DILocation(line: 161, column: 24, scope: !1679, inlinedAt: !1657)
!1681 = !DILocation(line: 161, column: 22, scope: !1679, inlinedAt: !1657)
!1682 = !DILocation(line: 161, column: 7, scope: !1654, inlinedAt: !1657)
!1683 = !DILocation(line: 162, column: 19, scope: !1679, inlinedAt: !1657)
!1684 = !DILocation(line: 162, column: 5, scope: !1679, inlinedAt: !1657)
!1685 = !DILocation(line: 380, column: 46, scope: !1658, inlinedAt: !1504)
!1686 = !DILocalVariable(name: "__dest", arg: 1, scope: !1687, file: !1535, line: 84, type: !1690)
!1687 = distinct !DISubprogram(name: "stpcpy", scope: !1535, file: !1535, line: 84, type: !1688, scopeLine: 85, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1691)
!1688 = !DISubroutineType(types: !1689)
!1689 = !{!88, !1690, !1048}
!1690 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !88)
!1691 = !{!1686, !1692}
!1692 = !DILocalVariable(name: "__src", arg: 2, scope: !1687, file: !1535, line: 84, type: !1048)
!1693 = !DILocation(line: 0, scope: !1687, inlinedAt: !1694)
!1694 = distinct !DILocation(line: 380, column: 31, scope: !1658, inlinedAt: !1504)
!1695 = !DILocation(line: 86, column: 10, scope: !1687, inlinedAt: !1694)
!1696 = !DILocation(line: 381, column: 21, scope: !1658, inlinedAt: !1504)
!1697 = !DILocation(line: 0, scope: !1643, inlinedAt: !1504)
!1698 = !DILocation(line: 385, column: 19, scope: !1644, inlinedAt: !1504)
!1699 = !DILocation(line: 387, column: 23, scope: !1700, inlinedAt: !1504)
!1700 = distinct !DILexicalBlock(scope: !1701, file: !2, line: 387, column: 23)
!1701 = distinct !DILexicalBlock(scope: !1702, file: !2, line: 386, column: 17)
!1702 = distinct !DILexicalBlock(scope: !1644, file: !2, line: 385, column: 19)
!1703 = !DILocation(line: 387, column: 23, scope: !1701, inlinedAt: !1504)
!1704 = !DILocation(line: 389, column: 29, scope: !1705, inlinedAt: !1504)
!1705 = distinct !DILexicalBlock(scope: !1700, file: !2, line: 388, column: 21)
!1706 = !DILocation(line: 389, column: 32, scope: !1705, inlinedAt: !1504)
!1707 = !DILocation(line: 390, column: 29, scope: !1705, inlinedAt: !1504)
!1708 = !DILocation(line: 390, column: 32, scope: !1705, inlinedAt: !1504)
!1709 = !DILocation(line: 391, column: 34, scope: !1705, inlinedAt: !1504)
!1710 = !DILocation(line: 392, column: 21, scope: !1705, inlinedAt: !1504)
!1711 = !DILocation(line: 393, column: 25, scope: !1701, inlinedAt: !1504)
!1712 = !DILocation(line: 393, column: 28, scope: !1701, inlinedAt: !1504)
!1713 = !DILocation(line: 394, column: 17, scope: !1701, inlinedAt: !1504)
!1714 = !DILocation(line: 398, column: 21, scope: !1644, inlinedAt: !1504)
!1715 = !DILocation(line: 398, column: 24, scope: !1644, inlinedAt: !1504)
!1716 = !DILocation(line: 0, scope: !1495, inlinedAt: !1504)
!1717 = !DILocation(line: 402, column: 17, scope: !1496, inlinedAt: !1504)
!1718 = !DILocation(line: 401, column: 9, scope: !1495, inlinedAt: !1504)
!1719 = distinct !{!1719, !1720, !1721, !1104}
!1720 = !DILocation(line: 261, column: 7, scope: !1496, inlinedAt: !1504)
!1721 = !DILocation(line: 402, column: 24, scope: !1496, inlinedAt: !1504)
!1722 = !DILocation(line: 406, column: 11, scope: !1723, inlinedAt: !1504)
!1723 = distinct !DILexicalBlock(scope: !1496, file: !2, line: 406, column: 11)
!1724 = !DILocation(line: 406, column: 11, scope: !1496, inlinedAt: !1504)
!1725 = !DILocation(line: 408, column: 17, scope: !1726, inlinedAt: !1504)
!1726 = distinct !DILexicalBlock(scope: !1723, file: !2, line: 407, column: 9)
!1727 = !DILocation(line: 408, column: 20, scope: !1726, inlinedAt: !1504)
!1728 = !DILocation(line: 409, column: 22, scope: !1726, inlinedAt: !1504)
!1729 = !DILocation(line: 410, column: 9, scope: !1726, inlinedAt: !1504)
!1730 = !DILocation(line: 0, scope: !1496, inlinedAt: !1504)
!1731 = !DILocation(line: 414, column: 20, scope: !1732, inlinedAt: !1504)
!1732 = distinct !DILexicalBlock(scope: !1496, file: !2, line: 414, column: 11)
!1733 = !DILocation(line: 414, column: 25, scope: !1732, inlinedAt: !1504)
!1734 = !DILocation(line: 149, column: 3, scope: !1654, inlinedAt: !1735)
!1735 = distinct !DILocation(line: 416, column: 11, scope: !1736, inlinedAt: !1504)
!1736 = distinct !DILexicalBlock(scope: !1732, file: !2, line: 415, column: 9)
!1737 = !DILocation(line: 0, scope: !1654, inlinedAt: !1735)
!1738 = !DILocation(line: 151, column: 18, scope: !1661, inlinedAt: !1735)
!1739 = !DILocation(line: 151, column: 21, scope: !1661, inlinedAt: !1735)
!1740 = !DILocation(line: 151, column: 11, scope: !1662, inlinedAt: !1735)
!1741 = !DILocation(line: 153, column: 12, scope: !1662, inlinedAt: !1735)
!1742 = !DILocation(line: 153, column: 15, scope: !1662, inlinedAt: !1735)
!1743 = !DILocation(line: 155, column: 15, scope: !1654, inlinedAt: !1735)
!1744 = !DILocation(line: 154, column: 5, scope: !1662, inlinedAt: !1735)
!1745 = distinct !{!1745, !1734, !1746, !1104}
!1746 = !DILocation(line: 155, column: 32, scope: !1654, inlinedAt: !1735)
!1747 = !DILocation(line: 157, column: 22, scope: !1672, inlinedAt: !1735)
!1748 = !DILocation(line: 157, column: 7, scope: !1654, inlinedAt: !1735)
!1749 = !DILocation(line: 158, column: 6, scope: !1672, inlinedAt: !1735)
!1750 = !DILocation(line: 158, column: 23, scope: !1672, inlinedAt: !1735)
!1751 = !DILocation(line: 158, column: 5, scope: !1672, inlinedAt: !1735)
!1752 = !DILocation(line: 160, column: 15, scope: !1672, inlinedAt: !1735)
!1753 = !DILocation(line: 161, column: 7, scope: !1679, inlinedAt: !1735)
!1754 = !DILocation(line: 161, column: 24, scope: !1679, inlinedAt: !1735)
!1755 = !DILocation(line: 161, column: 22, scope: !1679, inlinedAt: !1735)
!1756 = !DILocation(line: 161, column: 7, scope: !1654, inlinedAt: !1735)
!1757 = !DILocation(line: 162, column: 19, scope: !1679, inlinedAt: !1735)
!1758 = !DILocation(line: 162, column: 5, scope: !1679, inlinedAt: !1735)
!1759 = !DILocation(line: 417, column: 34, scope: !1736, inlinedAt: !1504)
!1760 = !DILocation(line: 0, scope: !1687, inlinedAt: !1761)
!1761 = distinct !DILocation(line: 417, column: 19, scope: !1736, inlinedAt: !1504)
!1762 = !DILocation(line: 86, column: 10, scope: !1687, inlinedAt: !1761)
!1763 = !DILocation(line: 418, column: 9, scope: !1736, inlinedAt: !1504)
!1764 = !DILocation(line: 426, column: 11, scope: !1496, inlinedAt: !1504)
!1765 = !DILocation(line: 430, column: 22, scope: !1766, inlinedAt: !1504)
!1766 = distinct !DILexicalBlock(scope: !1767, file: !2, line: 430, column: 19)
!1767 = distinct !DILexicalBlock(scope: !1768, file: !2, line: 429, column: 13)
!1768 = distinct !DILexicalBlock(scope: !1769, file: !2, line: 427, column: 9)
!1769 = distinct !DILexicalBlock(scope: !1496, file: !2, line: 426, column: 11)
!1770 = !DILocation(line: 430, column: 19, scope: !1767, inlinedAt: !1504)
!1771 = !DILocation(line: 432, column: 26, scope: !1772, inlinedAt: !1504)
!1772 = distinct !DILexicalBlock(scope: !1773, file: !2, line: 432, column: 23)
!1773 = distinct !DILexicalBlock(scope: !1766, file: !2, line: 431, column: 17)
!1774 = !DILocation(line: 432, column: 23, scope: !1773, inlinedAt: !1504)
!1775 = !DILocation(line: 433, column: 27, scope: !1772, inlinedAt: !1504)
!1776 = !DILocation(line: 433, column: 30, scope: !1772, inlinedAt: !1504)
!1777 = !DILocation(line: 433, column: 21, scope: !1772, inlinedAt: !1504)
!1778 = !DILocation(line: 434, column: 31, scope: !1779, inlinedAt: !1504)
!1779 = distinct !DILexicalBlock(scope: !1772, file: !2, line: 434, column: 28)
!1780 = !DILocation(line: 0, scope: !1779, inlinedAt: !1504)
!1781 = !DILocation(line: 434, column: 28, scope: !1772, inlinedAt: !1504)
!1782 = !DILocation(line: 436, column: 32, scope: !1783, inlinedAt: !1504)
!1783 = distinct !DILexicalBlock(scope: !1779, file: !2, line: 435, column: 21)
!1784 = !DILocation(line: 437, column: 32, scope: !1783, inlinedAt: !1504)
!1785 = !DILocation(line: 438, column: 21, scope: !1783, inlinedAt: !1504)
!1786 = !DILocation(line: 441, column: 32, scope: !1787, inlinedAt: !1504)
!1787 = distinct !DILexicalBlock(scope: !1779, file: !2, line: 440, column: 21)
!1788 = !DILocation(line: 442, column: 32, scope: !1787, inlinedAt: !1504)
!1789 = !DILocation(line: 443, column: 30, scope: !1790, inlinedAt: !1504)
!1790 = distinct !DILexicalBlock(scope: !1787, file: !2, line: 443, column: 27)
!1791 = !DILocation(line: 443, column: 27, scope: !1787, inlinedAt: !1504)
!1792 = !DILocation(line: 445, column: 34, scope: !1793, inlinedAt: !1504)
!1793 = distinct !DILexicalBlock(scope: !1794, file: !2, line: 445, column: 31)
!1794 = distinct !DILexicalBlock(scope: !1790, file: !2, line: 444, column: 25)
!1795 = !DILocation(line: 445, column: 31, scope: !1794, inlinedAt: !1504)
!1796 = !DILocation(line: 446, column: 43, scope: !1793, inlinedAt: !1504)
!1797 = !DILocation(line: 446, column: 35, scope: !1793, inlinedAt: !1504)
!1798 = !DILocation(line: 446, column: 38, scope: !1793, inlinedAt: !1504)
!1799 = !DILocation(line: 446, column: 29, scope: !1793, inlinedAt: !1504)
!1800 = !DILocation(line: 449, column: 37, scope: !1801, inlinedAt: !1504)
!1801 = distinct !DILexicalBlock(scope: !1793, file: !2, line: 448, column: 29)
!1802 = !DILocation(line: 449, column: 40, scope: !1801, inlinedAt: !1504)
!1803 = !DILocation(line: 450, column: 37, scope: !1801, inlinedAt: !1504)
!1804 = !DILocation(line: 450, column: 40, scope: !1801, inlinedAt: !1504)
!1805 = !DILocation(line: 455, column: 33, scope: !1806, inlinedAt: !1504)
!1806 = distinct !DILexicalBlock(scope: !1790, file: !2, line: 454, column: 25)
!1807 = !DILocation(line: 455, column: 36, scope: !1806, inlinedAt: !1504)
!1808 = !DILocation(line: 456, column: 47, scope: !1806, inlinedAt: !1504)
!1809 = !DILocation(line: 456, column: 33, scope: !1806, inlinedAt: !1504)
!1810 = !DILocation(line: 456, column: 36, scope: !1806, inlinedAt: !1504)
!1811 = !DILocation(line: 460, column: 27, scope: !1812, inlinedAt: !1504)
!1812 = distinct !DILexicalBlock(scope: !1766, file: !2, line: 460, column: 24)
!1813 = !DILocation(line: 460, column: 35, scope: !1812, inlinedAt: !1504)
!1814 = !DILocation(line: 461, column: 23, scope: !1812, inlinedAt: !1504)
!1815 = !DILocation(line: 461, column: 26, scope: !1812, inlinedAt: !1504)
!1816 = !DILocation(line: 461, column: 17, scope: !1812, inlinedAt: !1504)
!1817 = !DILocation(line: 462, column: 27, scope: !1818, inlinedAt: !1504)
!1818 = distinct !DILexicalBlock(scope: !1812, file: !2, line: 462, column: 24)
!1819 = !DILocation(line: 462, column: 24, scope: !1812, inlinedAt: !1504)
!1820 = distinct !{!1820, !1507, !1821}
!1821 = !DILocation(line: 510, column: 5, scope: !1473, inlinedAt: !1504)
!1822 = !DILocation(line: 469, column: 25, scope: !1823, inlinedAt: !1504)
!1823 = distinct !DILexicalBlock(scope: !1818, file: !2, line: 468, column: 17)
!1824 = !DILocation(line: 469, column: 28, scope: !1823, inlinedAt: !1504)
!1825 = !DILocation(line: 470, column: 33, scope: !1823, inlinedAt: !1504)
!1826 = !DILocation(line: 470, column: 25, scope: !1823, inlinedAt: !1504)
!1827 = !DILocation(line: 470, column: 28, scope: !1823, inlinedAt: !1504)
!1828 = !DILocation(line: 0, scope: !1766, inlinedAt: !1504)
!1829 = !DILocation(line: 473, column: 25, scope: !1767, inlinedAt: !1504)
!1830 = !DILocation(line: 473, column: 20, scope: !1767, inlinedAt: !1504)
!1831 = !DILocation(line: 428, column: 11, scope: !1768, inlinedAt: !1504)
!1832 = distinct !{!1832, !1831, !1833}
!1833 = !DILocation(line: 474, column: 13, scope: !1768, inlinedAt: !1504)
!1834 = !DILocation(line: 481, column: 22, scope: !1835, inlinedAt: !1504)
!1835 = distinct !DILexicalBlock(scope: !1836, file: !2, line: 481, column: 19)
!1836 = distinct !DILexicalBlock(scope: !1837, file: !2, line: 480, column: 13)
!1837 = distinct !DILexicalBlock(scope: !1769, file: !2, line: 477, column: 9)
!1838 = !DILocation(line: 481, column: 30, scope: !1835, inlinedAt: !1504)
!1839 = !DILocation(line: 483, column: 25, scope: !1840, inlinedAt: !1504)
!1840 = distinct !DILexicalBlock(scope: !1835, file: !2, line: 482, column: 17)
!1841 = !DILocation(line: 483, column: 28, scope: !1840, inlinedAt: !1504)
!1842 = !DILocation(line: 484, column: 25, scope: !1840, inlinedAt: !1504)
!1843 = !DILocation(line: 484, column: 28, scope: !1840, inlinedAt: !1504)
!1844 = !DILocation(line: 485, column: 17, scope: !1840, inlinedAt: !1504)
!1845 = !DILocation(line: 486, column: 24, scope: !1835, inlinedAt: !1504)
!1846 = !DILocation(line: 488, column: 37, scope: !1847, inlinedAt: !1504)
!1847 = distinct !DILexicalBlock(scope: !1848, file: !2, line: 488, column: 23)
!1848 = distinct !DILexicalBlock(scope: !1849, file: !2, line: 487, column: 17)
!1849 = distinct !DILexicalBlock(scope: !1835, file: !2, line: 486, column: 24)
!1850 = !DILocation(line: 488, column: 43, scope: !1847, inlinedAt: !1504)
!1851 = !DILocation(line: 488, column: 51, scope: !1847, inlinedAt: !1504)
!1852 = !DILocation(line: 490, column: 32, scope: !1853, inlinedAt: !1504)
!1853 = distinct !DILexicalBlock(scope: !1854, file: !2, line: 490, column: 27)
!1854 = distinct !DILexicalBlock(scope: !1847, file: !2, line: 489, column: 21)
!1855 = !DILocation(line: 490, column: 27, scope: !1854, inlinedAt: !1504)
!1856 = !DILocation(line: 491, column: 36, scope: !1853, inlinedAt: !1504)
!1857 = !DILocation(line: 491, column: 25, scope: !1853, inlinedAt: !1504)
!1858 = !DILocation(line: 494, column: 33, scope: !1859, inlinedAt: !1504)
!1859 = distinct !DILexicalBlock(scope: !1853, file: !2, line: 493, column: 25)
!1860 = !DILocation(line: 494, column: 36, scope: !1859, inlinedAt: !1504)
!1861 = !DILocation(line: 495, column: 33, scope: !1859, inlinedAt: !1504)
!1862 = !DILocation(line: 495, column: 36, scope: !1859, inlinedAt: !1504)
!1863 = !DILocation(line: 499, column: 27, scope: !1847, inlinedAt: !1504)
!1864 = !DILocation(line: 499, column: 30, scope: !1847, inlinedAt: !1504)
!1865 = !DILocation(line: 507, column: 25, scope: !1836, inlinedAt: !1504)
!1866 = !DILocation(line: 507, column: 20, scope: !1836, inlinedAt: !1504)
!1867 = !DILocation(line: 479, column: 11, scope: !1837, inlinedAt: !1504)
!1868 = distinct !{!1868, !1867, !1869}
!1869 = !DILocation(line: 508, column: 13, scope: !1837, inlinedAt: !1504)
!1870 = !DILocation(line: 801, column: 14, scope: !525)
!1871 = !DILocalVariable(name: "ptr", arg: 1, scope: !1872, file: !1873, line: 75, type: !144)
!1872 = distinct !DISubprogram(name: "alignfree", scope: !1873, file: !1873, line: 75, type: !1874, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1876)
!1873 = !DIFile(filename: "./lib/alignalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0a7d01653c1483fdd96283992acf95d0")
!1874 = !DISubroutineType(types: !1875)
!1875 = !{null, !144}
!1876 = !{!1871}
!1877 = !DILocation(line: 0, scope: !1872, inlinedAt: !1878)
!1878 = distinct !DILocation(line: 805, column: 11, scope: !525)
!1879 = !DILocation(line: 77, column: 3, scope: !1872, inlinedAt: !1878)
!1880 = !DILocation(line: 0, scope: !523)
!1881 = !DILocation(line: 0, scope: !1872, inlinedAt: !1882)
!1882 = distinct !DILocation(line: 808, column: 7, scope: !509)
!1883 = !DILocation(line: 77, column: 3, scope: !1872, inlinedAt: !1882)
!1884 = !DILocation(line: 808, column: 7, scope: !509)
!1885 = !DILocation(line: 810, column: 5, scope: !509)
!1886 = !DILocation(line: 811, column: 26, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !509, file: !2, line: 811, column: 11)
!1888 = !DILocation(line: 811, column: 36, scope: !1887)
!1889 = !DILocation(line: 811, column: 29, scope: !1887)
!1890 = !DILocation(line: 811, column: 48, scope: !1887)
!1891 = !DILocation(line: 811, column: 11, scope: !509)
!1892 = !DILocation(line: 813, column: 11, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1887, file: !2, line: 812, column: 9)
!1894 = !DILocation(line: 815, column: 9, scope: !1893)
!1895 = !DILocation(line: 816, column: 5, scope: !83)
!1896 = !DILocation(line: 817, column: 10, scope: !83)
!1897 = !DILocation(line: 817, column: 19, scope: !83)
!1898 = !DILocation(line: 816, column: 5, scope: !509)
!1899 = distinct !{!1899, !1304, !1900, !1104}
!1900 = !DILocation(line: 817, column: 25, scope: !83)
!1901 = !DILocation(line: 819, column: 7, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !83, file: !2, line: 819, column: 7)
!1903 = !DILocation(line: 819, column: 7, scope: !83)
!1904 = !DILocation(line: 821, column: 11, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1906, file: !2, line: 821, column: 11)
!1906 = distinct !DILexicalBlock(scope: !1902, file: !2, line: 820, column: 5)
!1907 = !DILocation(line: 821, column: 47, scope: !1905)
!1908 = !DILocation(line: 821, column: 11, scope: !1906)
!1909 = !DILocation(line: 948, column: 21, scope: !1450, inlinedAt: !1910)
!1910 = distinct !DILocation(line: 822, column: 9, scope: !1905)
!1911 = !DILocation(line: 0, scope: !1450, inlinedAt: !1910)
!1912 = !DILocation(line: 949, column: 3, scope: !1450, inlinedAt: !1910)
!1913 = !DILocation(line: 950, column: 11, scope: !1450, inlinedAt: !1910)
!1914 = !DILocation(line: 950, column: 3, scope: !1450, inlinedAt: !1910)
!1915 = !DILocation(line: 951, column: 3, scope: !1450, inlinedAt: !1910)
!1916 = !DILocation(line: 952, column: 3, scope: !1450, inlinedAt: !1910)
!1917 = !DILocation(line: 825, column: 7, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !83, file: !2, line: 825, column: 7)
!1919 = !DILocation(line: 825, column: 23, scope: !1918)
!1920 = !DILocation(line: 825, column: 26, scope: !1918)
!1921 = !DILocation(line: 825, column: 47, scope: !1918)
!1922 = !DILocation(line: 825, column: 7, scope: !83)
!1923 = !DILocation(line: 826, column: 5, scope: !1918)
!1924 = !DILocation(line: 828, column: 10, scope: !83)
!1925 = !DILocation(line: 829, column: 1, scope: !83)
!1926 = !DISubprogram(name: "bindtextdomain", scope: !1040, file: !1040, line: 86, type: !1927, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !992)
!1927 = !DISubroutineType(types: !1928)
!1928 = !{!88, !151, !151}
!1929 = !DISubprogram(name: "textdomain", scope: !1040, file: !1040, line: 82, type: !1184, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !992)
!1930 = !DISubprogram(name: "atexit", scope: !1182, file: !1182, line: 602, type: !1931, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !992)
!1931 = !DISubroutineType(types: !1932)
!1932 = !{!86, !610}
!1933 = !DISubprogram(name: "getopt_long", scope: !531, file: !531, line: 66, type: !1934, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !992)
!1934 = !DISubroutineType(types: !1935)
!1935 = !{!86, !86, !1936, !151, !1938, !536}
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !88)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!1939 = !DISubprogram(name: "fstat", scope: !1940, file: !1940, line: 210, type: !1941, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !992)
!1940 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!1941 = !DISubroutineType(types: !1942)
!1942 = !{!86, !86, !1943}
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!1944 = !DISubprogram(name: "__errno_location", scope: !1945, file: !1945, line: 37, type: !1946, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !992)
!1945 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1946 = !DISubroutineType(types: !1947)
!1947 = !{!536}
!1948 = !DISubprogram(name: "getpagesize", scope: !1949, file: !1949, line: 1011, type: !1389, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !992)
!1949 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1950 = !DISubprogram(name: "open", scope: !1951, file: !1951, line: 181, type: !1952, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !992)
!1951 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1952 = !DISubroutineType(types: !1953)
!1953 = !{!86, !151, !86, null}
!1954 = !DISubprogram(name: "lseek", scope: !1949, file: !1949, line: 339, type: !1955, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !992)
!1955 = !DISubroutineType(types: !1956)
!1956 = !{!314, !86, !314, !86}
!1957 = !DISubprogram(name: "fflush_unlocked", scope: !516, file: !516, line: 239, type: !1958, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !992)
!1958 = !DISubroutineType(types: !1959)
!1959 = !{!86, !288}
!1960 = !DISubprogram(name: "clearerr_unlocked", scope: !516, file: !516, line: 794, type: !1961, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !992)
!1961 = !DISubroutineType(types: !1962)
!1962 = !{null, !288}
!1963 = !DISubprogram(name: "ioctl", scope: !1964, file: !1964, line: 42, type: !1965, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !992)
!1964 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/ioctl.h", directory: "", checksumkind: CSK_MD5, checksum: "17041ae374bfd0bee8350d01883d298c")
!1965 = !DISubroutineType(types: !1966)
!1966 = !{!86, !86, !147, null}
!1967 = !DISubprogram(name: "free", scope: !1182, file: !1182, line: 555, type: !1874, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !992)
!1968 = !DISubprogram(name: "close", scope: !1949, file: !1949, line: 358, type: !1969, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !992)
!1969 = !DISubroutineType(types: !1970)
!1970 = !{!86, !86}
!1971 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !549, file: !549, line: 50, type: !1009, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !548, retainedNodes: !1972)
!1972 = !{!1973}
!1973 = !DILocalVariable(name: "file", arg: 1, scope: !1971, file: !549, line: 50, type: !151)
!1974 = !DILocation(line: 0, scope: !1971)
!1975 = !DILocation(line: 52, column: 13, scope: !1971)
!1976 = !DILocation(line: 53, column: 1, scope: !1971)
!1977 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !549, file: !549, line: 87, type: !1978, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !548, retainedNodes: !1980)
!1978 = !DISubroutineType(types: !1979)
!1979 = !{null, !145}
!1980 = !{!1981}
!1981 = !DILocalVariable(name: "ignore", arg: 1, scope: !1977, file: !549, line: 87, type: !145)
!1982 = !DILocation(line: 0, scope: !1977)
!1983 = !DILocation(line: 89, column: 16, scope: !1977)
!1984 = !{!1985, !1985, i64 0}
!1985 = !{!"_Bool", !985, i64 0}
!1986 = !DILocation(line: 90, column: 1, scope: !1977)
!1987 = distinct !DISubprogram(name: "close_stdout", scope: !549, file: !549, line: 116, type: !611, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !548, retainedNodes: !1988)
!1988 = !{!1989}
!1989 = !DILocalVariable(name: "write_error", scope: !1990, file: !549, line: 121, type: !151)
!1990 = distinct !DILexicalBlock(scope: !1991, file: !549, line: 120, column: 5)
!1991 = distinct !DILexicalBlock(scope: !1987, file: !549, line: 118, column: 7)
!1992 = !DILocation(line: 118, column: 21, scope: !1991)
!1993 = !DILocation(line: 118, column: 7, scope: !1991)
!1994 = !DILocation(line: 118, column: 29, scope: !1991)
!1995 = !DILocation(line: 119, column: 7, scope: !1991)
!1996 = !DILocation(line: 119, column: 12, scope: !1991)
!1997 = !{i8 0, i8 2}
!1998 = !DILocation(line: 119, column: 25, scope: !1991)
!1999 = !DILocation(line: 119, column: 28, scope: !1991)
!2000 = !DILocation(line: 119, column: 34, scope: !1991)
!2001 = !DILocation(line: 118, column: 7, scope: !1987)
!2002 = !DILocation(line: 121, column: 33, scope: !1990)
!2003 = !DILocation(line: 0, scope: !1990)
!2004 = !DILocation(line: 122, column: 11, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !1990, file: !549, line: 122, column: 11)
!2006 = !DILocation(line: 0, scope: !2005)
!2007 = !DILocation(line: 122, column: 11, scope: !1990)
!2008 = !DILocation(line: 123, column: 9, scope: !2005)
!2009 = !DILocation(line: 126, column: 9, scope: !2005)
!2010 = !DILocation(line: 128, column: 14, scope: !1990)
!2011 = !DILocation(line: 128, column: 7, scope: !1990)
!2012 = !DILocation(line: 133, column: 42, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !1987, file: !549, line: 133, column: 7)
!2014 = !DILocation(line: 133, column: 28, scope: !2013)
!2015 = !DILocation(line: 133, column: 50, scope: !2013)
!2016 = !DILocation(line: 133, column: 7, scope: !1987)
!2017 = !DILocation(line: 134, column: 12, scope: !2013)
!2018 = !DILocation(line: 134, column: 5, scope: !2013)
!2019 = !DILocation(line: 135, column: 1, scope: !1987)
!2020 = !DISubprogram(name: "_exit", scope: !1949, file: !1949, line: 624, type: !973, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !992)
!2021 = distinct !DISubprogram(name: "rpl_copy_file_range", scope: !889, file: !889, line: 41, type: !2022, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !888, retainedNodes: !2027)
!2022 = !DISubroutineType(types: !2023)
!2023 = !{!2024, !86, !2025, !86, !2025, !149, !98}
!2024 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !1949, line: 220, baseType: !1395)
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64)
!2026 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1949, line: 243, baseType: !314)
!2027 = !{!2028, !2029, !2030, !2031, !2032, !2033, !2034}
!2028 = !DILocalVariable(name: "infd", arg: 1, scope: !2021, file: !889, line: 41, type: !86)
!2029 = !DILocalVariable(name: "pinoff", arg: 2, scope: !2021, file: !889, line: 41, type: !2025)
!2030 = !DILocalVariable(name: "outfd", arg: 3, scope: !2021, file: !889, line: 42, type: !86)
!2031 = !DILocalVariable(name: "poutoff", arg: 4, scope: !2021, file: !889, line: 42, type: !2025)
!2032 = !DILocalVariable(name: "length", arg: 5, scope: !2021, file: !889, line: 43, type: !149)
!2033 = !DILocalVariable(name: "flags", arg: 6, scope: !2021, file: !889, line: 43, type: !98)
!2034 = !DILocalVariable(name: "ok", scope: !2021, file: !889, line: 48, type: !145)
!2035 = !DILocation(line: 0, scope: !2021)
!2036 = !DILocation(line: 86, column: 11, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !2038, file: !889, line: 78, column: 5)
!2038 = distinct !DILexicalBlock(scope: !2021, file: !889, line: 77, column: 7)
!2039 = !DILocation(line: 90, column: 14, scope: !2037)
!2040 = !DILocation(line: 99, column: 1, scope: !2021)
!2041 = !DISubprogram(name: "copy_file_range", scope: !1949, file: !1949, line: 1142, type: !2042, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !992)
!2042 = !DISubroutineType(types: !2043)
!2043 = !{!2024, !86, !2044, !86, !2044, !149, !98}
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!2045 = distinct !DISubprogram(name: "verror", scope: !564, file: !564, line: 251, type: !2046, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !563, retainedNodes: !2048)
!2046 = !DISubroutineType(types: !2047)
!2047 = !{null, !86, !86, !151, !574}
!2048 = !{!2049, !2050, !2051, !2052}
!2049 = !DILocalVariable(name: "status", arg: 1, scope: !2045, file: !564, line: 251, type: !86)
!2050 = !DILocalVariable(name: "errnum", arg: 2, scope: !2045, file: !564, line: 251, type: !86)
!2051 = !DILocalVariable(name: "message", arg: 3, scope: !2045, file: !564, line: 251, type: !151)
!2052 = !DILocalVariable(name: "args", arg: 4, scope: !2045, file: !564, line: 251, type: !574)
!2053 = !DILocation(line: 0, scope: !2045)
!2054 = !DILocation(line: 261, column: 3, scope: !2045)
!2055 = !DILocation(line: 265, column: 7, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2045, file: !564, line: 265, column: 7)
!2057 = !DILocation(line: 265, column: 7, scope: !2045)
!2058 = !DILocation(line: 266, column: 5, scope: !2056)
!2059 = !DILocation(line: 272, column: 7, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2056, file: !564, line: 268, column: 5)
!2061 = !DILocation(line: 276, column: 3, scope: !2045)
!2062 = !DILocation(line: 282, column: 1, scope: !2045)
!2063 = distinct !DISubprogram(name: "flush_stdout", scope: !564, file: !564, line: 163, type: !611, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !563, retainedNodes: !2064)
!2064 = !{!2065}
!2065 = !DILocalVariable(name: "stdout_fd", scope: !2063, file: !564, line: 166, type: !86)
!2066 = !DILocation(line: 0, scope: !2063)
!2067 = !DILocalVariable(name: "fd", arg: 1, scope: !2068, file: !564, line: 145, type: !86)
!2068 = distinct !DISubprogram(name: "is_open", scope: !564, file: !564, line: 145, type: !1969, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !563, retainedNodes: !2069)
!2069 = !{!2067}
!2070 = !DILocation(line: 0, scope: !2068, inlinedAt: !2071)
!2071 = distinct !DILocation(line: 182, column: 25, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !2063, file: !564, line: 182, column: 7)
!2073 = !DILocation(line: 157, column: 15, scope: !2068, inlinedAt: !2071)
!2074 = !DILocation(line: 157, column: 12, scope: !2068, inlinedAt: !2071)
!2075 = !DILocation(line: 182, column: 7, scope: !2063)
!2076 = !DILocation(line: 184, column: 5, scope: !2072)
!2077 = !DILocation(line: 185, column: 1, scope: !2063)
!2078 = distinct !DISubprogram(name: "error_tail", scope: !564, file: !564, line: 219, type: !2046, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !563, retainedNodes: !2079)
!2079 = !{!2080, !2081, !2082, !2083}
!2080 = !DILocalVariable(name: "status", arg: 1, scope: !2078, file: !564, line: 219, type: !86)
!2081 = !DILocalVariable(name: "errnum", arg: 2, scope: !2078, file: !564, line: 219, type: !86)
!2082 = !DILocalVariable(name: "message", arg: 3, scope: !2078, file: !564, line: 219, type: !151)
!2083 = !DILocalVariable(name: "args", arg: 4, scope: !2078, file: !564, line: 219, type: !574)
!2084 = !DILocation(line: 0, scope: !2078)
!2085 = !DILocation(line: 229, column: 13, scope: !2078)
!2086 = !DILocalVariable(name: "__stream", arg: 1, scope: !2087, file: !1044, line: 132, type: !2090)
!2087 = distinct !DISubprogram(name: "vfprintf", scope: !1044, file: !1044, line: 132, type: !2088, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !563, retainedNodes: !2125)
!2088 = !DISubroutineType(types: !2089)
!2089 = !{!86, !2090, !1048, !574}
!2090 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2091)
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2092 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !290, line: 7, baseType: !2093)
!2093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !292, line: 49, size: 1728, elements: !2094)
!2094 = !{!2095, !2096, !2097, !2098, !2099, !2100, !2101, !2102, !2103, !2104, !2105, !2106, !2107, !2108, !2110, !2111, !2112, !2113, !2114, !2115, !2116, !2117, !2118, !2119, !2120, !2121, !2122, !2123, !2124}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2093, file: !292, line: 51, baseType: !86, size: 32)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2093, file: !292, line: 54, baseType: !88, size: 64, offset: 64)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2093, file: !292, line: 55, baseType: !88, size: 64, offset: 128)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2093, file: !292, line: 56, baseType: !88, size: 64, offset: 192)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2093, file: !292, line: 57, baseType: !88, size: 64, offset: 256)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2093, file: !292, line: 58, baseType: !88, size: 64, offset: 320)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2093, file: !292, line: 59, baseType: !88, size: 64, offset: 384)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2093, file: !292, line: 60, baseType: !88, size: 64, offset: 448)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2093, file: !292, line: 61, baseType: !88, size: 64, offset: 512)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2093, file: !292, line: 64, baseType: !88, size: 64, offset: 576)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2093, file: !292, line: 65, baseType: !88, size: 64, offset: 640)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2093, file: !292, line: 66, baseType: !88, size: 64, offset: 704)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2093, file: !292, line: 68, baseType: !307, size: 64, offset: 768)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2093, file: !292, line: 70, baseType: !2109, size: 64, offset: 832)
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2093, file: !292, line: 72, baseType: !86, size: 32, offset: 896)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2093, file: !292, line: 73, baseType: !86, size: 32, offset: 928)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2093, file: !292, line: 74, baseType: !314, size: 64, offset: 960)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2093, file: !292, line: 77, baseType: !148, size: 16, offset: 1024)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2093, file: !292, line: 78, baseType: !318, size: 8, offset: 1040)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2093, file: !292, line: 79, baseType: !199, size: 8, offset: 1048)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2093, file: !292, line: 81, baseType: !321, size: 64, offset: 1088)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2093, file: !292, line: 89, baseType: !324, size: 64, offset: 1152)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2093, file: !292, line: 91, baseType: !326, size: 64, offset: 1216)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2093, file: !292, line: 92, baseType: !329, size: 64, offset: 1280)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2093, file: !292, line: 93, baseType: !2109, size: 64, offset: 1344)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2093, file: !292, line: 94, baseType: !144, size: 64, offset: 1408)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2093, file: !292, line: 95, baseType: !149, size: 64, offset: 1472)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2093, file: !292, line: 96, baseType: !86, size: 32, offset: 1536)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2093, file: !292, line: 98, baseType: !228, size: 160, offset: 1568)
!2125 = !{!2086, !2126, !2127}
!2126 = !DILocalVariable(name: "__fmt", arg: 2, scope: !2087, file: !1044, line: 133, type: !1048)
!2127 = !DILocalVariable(name: "__ap", arg: 3, scope: !2087, file: !1044, line: 133, type: !574)
!2128 = !DILocation(line: 0, scope: !2087, inlinedAt: !2129)
!2129 = distinct !DILocation(line: 229, column: 3, scope: !2078)
!2130 = !DILocation(line: 135, column: 10, scope: !2087, inlinedAt: !2129)
!2131 = !DILocation(line: 232, column: 3, scope: !2078)
!2132 = !DILocation(line: 233, column: 7, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2078, file: !564, line: 233, column: 7)
!2134 = !DILocation(line: 233, column: 7, scope: !2078)
!2135 = !DILocalVariable(name: "errnum", arg: 1, scope: !2136, file: !564, line: 188, type: !86)
!2136 = distinct !DISubprogram(name: "print_errno_message", scope: !564, file: !564, line: 188, type: !973, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !563, retainedNodes: !2137)
!2137 = !{!2135, !2138, !2139}
!2138 = !DILocalVariable(name: "s", scope: !2136, file: !564, line: 190, type: !151)
!2139 = !DILocalVariable(name: "errbuf", scope: !2136, file: !564, line: 193, type: !2140)
!2140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !2141)
!2141 = !{!2142}
!2142 = !DISubrange(count: 1024)
!2143 = !DILocation(line: 0, scope: !2136, inlinedAt: !2144)
!2144 = distinct !DILocation(line: 234, column: 5, scope: !2133)
!2145 = !DILocation(line: 193, column: 3, scope: !2136, inlinedAt: !2144)
!2146 = !DILocation(line: 193, column: 8, scope: !2136, inlinedAt: !2144)
!2147 = !DILocation(line: 195, column: 7, scope: !2136, inlinedAt: !2144)
!2148 = !DILocation(line: 207, column: 9, scope: !2149, inlinedAt: !2144)
!2149 = distinct !DILexicalBlock(scope: !2136, file: !564, line: 207, column: 7)
!2150 = !DILocation(line: 207, column: 7, scope: !2136, inlinedAt: !2144)
!2151 = !DILocation(line: 208, column: 9, scope: !2149, inlinedAt: !2144)
!2152 = !DILocation(line: 208, column: 5, scope: !2149, inlinedAt: !2144)
!2153 = !DILocation(line: 214, column: 3, scope: !2136, inlinedAt: !2144)
!2154 = !DILocation(line: 216, column: 1, scope: !2136, inlinedAt: !2144)
!2155 = !DILocation(line: 234, column: 5, scope: !2133)
!2156 = !DILocation(line: 238, column: 3, scope: !2078)
!2157 = !DILocalVariable(name: "__c", arg: 1, scope: !2158, file: !2159, line: 101, type: !86)
!2158 = distinct !DISubprogram(name: "putc_unlocked", scope: !2159, file: !2159, line: 101, type: !2160, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !563, retainedNodes: !2162)
!2159 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!2160 = !DISubroutineType(types: !2161)
!2161 = !{!86, !86, !2091}
!2162 = !{!2157, !2163}
!2163 = !DILocalVariable(name: "__stream", arg: 2, scope: !2158, file: !2159, line: 101, type: !2091)
!2164 = !DILocation(line: 0, scope: !2158, inlinedAt: !2165)
!2165 = distinct !DILocation(line: 238, column: 3, scope: !2078)
!2166 = !DILocation(line: 103, column: 10, scope: !2158, inlinedAt: !2165)
!2167 = !{!2168, !984, i64 40}
!2168 = !{!"_IO_FILE", !1058, i64 0, !984, i64 8, !984, i64 16, !984, i64 24, !984, i64 32, !984, i64 40, !984, i64 48, !984, i64 56, !984, i64 64, !984, i64 72, !984, i64 80, !984, i64 88, !984, i64 96, !984, i64 104, !1058, i64 112, !1058, i64 116, !1265, i64 120, !1099, i64 128, !985, i64 130, !985, i64 131, !984, i64 136, !1265, i64 144, !984, i64 152, !984, i64 160, !984, i64 168, !984, i64 176, !1265, i64 184, !1058, i64 192, !985, i64 196}
!2169 = !{!2168, !984, i64 48}
!2170 = !{!"branch_weights", i32 2000, i32 1}
!2171 = !DILocation(line: 240, column: 3, scope: !2078)
!2172 = !DILocation(line: 241, column: 7, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !2078, file: !564, line: 241, column: 7)
!2174 = !DILocation(line: 241, column: 7, scope: !2078)
!2175 = !DILocation(line: 242, column: 5, scope: !2173)
!2176 = !DILocation(line: 243, column: 1, scope: !2078)
!2177 = !DISubprogram(name: "__vfprintf_chk", scope: !1044, file: !1044, line: 96, type: !2178, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !992)
!2178 = !DISubroutineType(types: !2179)
!2179 = !{!86, !2090, !86, !1048, !574}
!2180 = !DISubprogram(name: "strerror_r", scope: !1178, file: !1178, line: 444, type: !2181, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !992)
!2181 = !DISubroutineType(types: !2182)
!2182 = !{!88, !86, !88, !149}
!2183 = !DISubprogram(name: "__overflow", scope: !516, file: !516, line: 886, type: !2184, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !992)
!2184 = !DISubroutineType(types: !2185)
!2185 = !{!86, !2091, !86}
!2186 = !DISubprogram(name: "fcntl", scope: !1951, file: !1951, line: 149, type: !2187, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !992)
!2187 = !DISubroutineType(types: !2188)
!2188 = !{!86, !86, !86, null}
!2189 = distinct !DISubprogram(name: "error", scope: !564, file: !564, line: 285, type: !2190, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !563, retainedNodes: !2192)
!2190 = !DISubroutineType(types: !2191)
!2191 = !{null, !86, !86, !151, null}
!2192 = !{!2193, !2194, !2195, !2196}
!2193 = !DILocalVariable(name: "status", arg: 1, scope: !2189, file: !564, line: 285, type: !86)
!2194 = !DILocalVariable(name: "errnum", arg: 2, scope: !2189, file: !564, line: 285, type: !86)
!2195 = !DILocalVariable(name: "message", arg: 3, scope: !2189, file: !564, line: 285, type: !151)
!2196 = !DILocalVariable(name: "ap", scope: !2189, file: !564, line: 287, type: !2197)
!2197 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !516, line: 52, baseType: !2198)
!2198 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2199, line: 14, baseType: !2200)
!2199 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!2200 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !578, baseType: !2201)
!2201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !575, size: 192, elements: !200)
!2202 = !DILocation(line: 0, scope: !2189)
!2203 = !DILocation(line: 287, column: 3, scope: !2189)
!2204 = !DILocation(line: 287, column: 11, scope: !2189)
!2205 = !DILocation(line: 288, column: 3, scope: !2189)
!2206 = !DILocation(line: 289, column: 3, scope: !2189)
!2207 = !DILocation(line: 290, column: 3, scope: !2189)
!2208 = !DILocation(line: 291, column: 1, scope: !2189)
!2209 = !DILocation(line: 0, scope: !571)
!2210 = !DILocation(line: 302, column: 7, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !571, file: !564, line: 302, column: 7)
!2212 = !DILocation(line: 302, column: 7, scope: !571)
!2213 = !DILocation(line: 307, column: 11, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2215, file: !564, line: 307, column: 11)
!2215 = distinct !DILexicalBlock(scope: !2211, file: !564, line: 303, column: 5)
!2216 = !DILocation(line: 307, column: 27, scope: !2214)
!2217 = !DILocation(line: 308, column: 11, scope: !2214)
!2218 = !DILocation(line: 308, column: 28, scope: !2214)
!2219 = !DILocation(line: 308, column: 25, scope: !2214)
!2220 = !DILocation(line: 309, column: 15, scope: !2214)
!2221 = !DILocation(line: 309, column: 33, scope: !2214)
!2222 = !DILocation(line: 310, column: 19, scope: !2214)
!2223 = !DILocation(line: 311, column: 22, scope: !2214)
!2224 = !DILocation(line: 311, column: 56, scope: !2214)
!2225 = !DILocation(line: 307, column: 11, scope: !2215)
!2226 = !DILocation(line: 316, column: 21, scope: !2215)
!2227 = !DILocation(line: 317, column: 23, scope: !2215)
!2228 = !DILocation(line: 318, column: 5, scope: !2215)
!2229 = !DILocation(line: 327, column: 3, scope: !571)
!2230 = !DILocation(line: 331, column: 7, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !571, file: !564, line: 331, column: 7)
!2232 = !DILocation(line: 331, column: 7, scope: !571)
!2233 = !DILocation(line: 332, column: 5, scope: !2231)
!2234 = !DILocation(line: 338, column: 7, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2231, file: !564, line: 334, column: 5)
!2236 = !DILocation(line: 346, column: 3, scope: !571)
!2237 = !DILocation(line: 350, column: 3, scope: !571)
!2238 = !DILocation(line: 356, column: 1, scope: !571)
!2239 = distinct !DISubprogram(name: "error_at_line", scope: !564, file: !564, line: 359, type: !2240, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !563, retainedNodes: !2242)
!2240 = !DISubroutineType(types: !2241)
!2241 = !{null, !86, !86, !151, !98, !151, null}
!2242 = !{!2243, !2244, !2245, !2246, !2247, !2248}
!2243 = !DILocalVariable(name: "status", arg: 1, scope: !2239, file: !564, line: 359, type: !86)
!2244 = !DILocalVariable(name: "errnum", arg: 2, scope: !2239, file: !564, line: 359, type: !86)
!2245 = !DILocalVariable(name: "file_name", arg: 3, scope: !2239, file: !564, line: 359, type: !151)
!2246 = !DILocalVariable(name: "line_number", arg: 4, scope: !2239, file: !564, line: 360, type: !98)
!2247 = !DILocalVariable(name: "message", arg: 5, scope: !2239, file: !564, line: 360, type: !151)
!2248 = !DILocalVariable(name: "ap", scope: !2239, file: !564, line: 362, type: !2197)
!2249 = !DILocation(line: 0, scope: !2239)
!2250 = !DILocation(line: 362, column: 3, scope: !2239)
!2251 = !DILocation(line: 362, column: 11, scope: !2239)
!2252 = !DILocation(line: 363, column: 3, scope: !2239)
!2253 = !DILocation(line: 364, column: 3, scope: !2239)
!2254 = !DILocation(line: 366, column: 3, scope: !2239)
!2255 = !DILocation(line: 367, column: 1, scope: !2239)
!2256 = distinct !DISubprogram(name: "fdadvise", scope: !892, file: !892, line: 25, type: !2257, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !891, retainedNodes: !2260)
!2257 = !DISubroutineType(types: !2258)
!2258 = !{null, !86, !515, !515, !2259}
!2259 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !112, line: 51, baseType: !111)
!2260 = !{!2261, !2262, !2263, !2264}
!2261 = !DILocalVariable(name: "fd", arg: 1, scope: !2256, file: !892, line: 25, type: !86)
!2262 = !DILocalVariable(name: "offset", arg: 2, scope: !2256, file: !892, line: 25, type: !515)
!2263 = !DILocalVariable(name: "len", arg: 3, scope: !2256, file: !892, line: 25, type: !515)
!2264 = !DILocalVariable(name: "advice", arg: 4, scope: !2256, file: !892, line: 25, type: !2259)
!2265 = !DILocation(line: 0, scope: !2256)
!2266 = !DILocation(line: 28, column: 3, scope: !2256)
!2267 = !DILocation(line: 30, column: 1, scope: !2256)
!2268 = !DISubprogram(name: "posix_fadvise", scope: !1951, file: !1951, line: 273, type: !2269, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !992)
!2269 = !DISubroutineType(types: !2270)
!2270 = !{!86, !86, !515, !515, !86}
!2271 = distinct !DISubprogram(name: "fadvise", scope: !892, file: !892, line: 33, type: !2272, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !891, retainedNodes: !2308)
!2272 = !DISubroutineType(types: !2273)
!2273 = !{null, !2274, !2259}
!2274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2275, size: 64)
!2275 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !290, line: 7, baseType: !2276)
!2276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !292, line: 49, size: 1728, elements: !2277)
!2277 = !{!2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291, !2293, !2294, !2295, !2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2276, file: !292, line: 51, baseType: !86, size: 32)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2276, file: !292, line: 54, baseType: !88, size: 64, offset: 64)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2276, file: !292, line: 55, baseType: !88, size: 64, offset: 128)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2276, file: !292, line: 56, baseType: !88, size: 64, offset: 192)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2276, file: !292, line: 57, baseType: !88, size: 64, offset: 256)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2276, file: !292, line: 58, baseType: !88, size: 64, offset: 320)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2276, file: !292, line: 59, baseType: !88, size: 64, offset: 384)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2276, file: !292, line: 60, baseType: !88, size: 64, offset: 448)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2276, file: !292, line: 61, baseType: !88, size: 64, offset: 512)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2276, file: !292, line: 64, baseType: !88, size: 64, offset: 576)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2276, file: !292, line: 65, baseType: !88, size: 64, offset: 640)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2276, file: !292, line: 66, baseType: !88, size: 64, offset: 704)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2276, file: !292, line: 68, baseType: !307, size: 64, offset: 768)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2276, file: !292, line: 70, baseType: !2292, size: 64, offset: 832)
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2276, file: !292, line: 72, baseType: !86, size: 32, offset: 896)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2276, file: !292, line: 73, baseType: !86, size: 32, offset: 928)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2276, file: !292, line: 74, baseType: !314, size: 64, offset: 960)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2276, file: !292, line: 77, baseType: !148, size: 16, offset: 1024)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2276, file: !292, line: 78, baseType: !318, size: 8, offset: 1040)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2276, file: !292, line: 79, baseType: !199, size: 8, offset: 1048)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2276, file: !292, line: 81, baseType: !321, size: 64, offset: 1088)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2276, file: !292, line: 89, baseType: !324, size: 64, offset: 1152)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2276, file: !292, line: 91, baseType: !326, size: 64, offset: 1216)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2276, file: !292, line: 92, baseType: !329, size: 64, offset: 1280)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2276, file: !292, line: 93, baseType: !2292, size: 64, offset: 1344)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2276, file: !292, line: 94, baseType: !144, size: 64, offset: 1408)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2276, file: !292, line: 95, baseType: !149, size: 64, offset: 1472)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2276, file: !292, line: 96, baseType: !86, size: 32, offset: 1536)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2276, file: !292, line: 98, baseType: !228, size: 160, offset: 1568)
!2308 = !{!2309, !2310}
!2309 = !DILocalVariable(name: "fp", arg: 1, scope: !2271, file: !892, line: 33, type: !2274)
!2310 = !DILocalVariable(name: "advice", arg: 2, scope: !2271, file: !892, line: 33, type: !2259)
!2311 = !DILocation(line: 0, scope: !2271)
!2312 = !DILocation(line: 35, column: 7, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2271, file: !892, line: 35, column: 7)
!2314 = !DILocation(line: 35, column: 7, scope: !2271)
!2315 = !DILocation(line: 36, column: 15, scope: !2313)
!2316 = !DILocation(line: 0, scope: !2256, inlinedAt: !2317)
!2317 = distinct !DILocation(line: 36, column: 5, scope: !2313)
!2318 = !DILocation(line: 28, column: 3, scope: !2256, inlinedAt: !2317)
!2319 = !DILocation(line: 36, column: 5, scope: !2313)
!2320 = !DILocation(line: 37, column: 1, scope: !2271)
!2321 = !DISubprogram(name: "fileno", scope: !516, file: !516, line: 809, type: !2322, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !992)
!2322 = !DISubroutineType(types: !2323)
!2323 = !{!86, !2274}
!2324 = distinct !DISubprogram(name: "rpl_fcntl", scope: !616, file: !616, line: 202, type: !2187, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !619, retainedNodes: !2325)
!2325 = !{!2326, !2327, !2328, !2339, !2340, !2343, !2345, !2349}
!2326 = !DILocalVariable(name: "fd", arg: 1, scope: !2324, file: !616, line: 202, type: !86)
!2327 = !DILocalVariable(name: "action", arg: 2, scope: !2324, file: !616, line: 202, type: !86)
!2328 = !DILocalVariable(name: "arg", scope: !2324, file: !616, line: 208, type: !2329)
!2329 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2199, line: 22, baseType: !2330)
!2330 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2331, baseType: !2332)
!2331 = !DIFile(filename: "lib/fcntl.c", directory: "/src")
!2332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2333, size: 192, elements: !200)
!2333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !2334)
!2334 = !{!2335, !2336, !2337, !2338}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2333, file: !2331, line: 208, baseType: !98, size: 32)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2333, file: !2331, line: 208, baseType: !98, size: 32, offset: 32)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2333, file: !2331, line: 208, baseType: !144, size: 64, offset: 64)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2333, file: !2331, line: 208, baseType: !144, size: 64, offset: 128)
!2339 = !DILocalVariable(name: "result", scope: !2324, file: !616, line: 211, type: !86)
!2340 = !DILocalVariable(name: "target", scope: !2341, file: !616, line: 216, type: !86)
!2341 = distinct !DILexicalBlock(scope: !2342, file: !616, line: 215, column: 7)
!2342 = distinct !DILexicalBlock(scope: !2324, file: !616, line: 213, column: 5)
!2343 = !DILocalVariable(name: "target", scope: !2344, file: !616, line: 223, type: !86)
!2344 = distinct !DILexicalBlock(scope: !2342, file: !616, line: 222, column: 7)
!2345 = !DILocalVariable(name: "x", scope: !2346, file: !616, line: 418, type: !86)
!2346 = distinct !DILexicalBlock(scope: !2347, file: !616, line: 417, column: 13)
!2347 = distinct !DILexicalBlock(scope: !2348, file: !616, line: 261, column: 11)
!2348 = distinct !DILexicalBlock(scope: !2342, file: !616, line: 258, column: 7)
!2349 = !DILocalVariable(name: "p", scope: !2350, file: !616, line: 426, type: !144)
!2350 = distinct !DILexicalBlock(scope: !2347, file: !616, line: 425, column: 13)
!2351 = !DILocation(line: 0, scope: !2324)
!2352 = !DILocation(line: 208, column: 3, scope: !2324)
!2353 = !DILocation(line: 208, column: 11, scope: !2324)
!2354 = !DILocation(line: 209, column: 3, scope: !2324)
!2355 = !DILocation(line: 212, column: 3, scope: !2324)
!2356 = !DILocation(line: 216, column: 22, scope: !2341)
!2357 = !DILocation(line: 0, scope: !2341)
!2358 = !DILocalVariable(name: "fd", arg: 1, scope: !2359, file: !616, line: 444, type: !86)
!2359 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD", scope: !616, file: !616, line: 444, type: !617, scopeLine: 445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !619, retainedNodes: !2360)
!2360 = !{!2358, !2361, !2362}
!2361 = !DILocalVariable(name: "target", arg: 2, scope: !2359, file: !616, line: 444, type: !86)
!2362 = !DILocalVariable(name: "result", scope: !2359, file: !616, line: 446, type: !86)
!2363 = !DILocation(line: 0, scope: !2359, inlinedAt: !2364)
!2364 = distinct !DILocation(line: 217, column: 18, scope: !2341)
!2365 = !DILocation(line: 479, column: 12, scope: !2359, inlinedAt: !2364)
!2366 = !DILocation(line: 223, column: 22, scope: !2344)
!2367 = !DILocation(line: 0, scope: !2344)
!2368 = !DILocation(line: 0, scope: !615, inlinedAt: !2369)
!2369 = distinct !DILocation(line: 224, column: 18, scope: !2344)
!2370 = !DILocation(line: 507, column: 12, scope: !2371, inlinedAt: !2369)
!2371 = distinct !DILexicalBlock(scope: !615, file: !616, line: 507, column: 7)
!2372 = !DILocation(line: 507, column: 9, scope: !2371, inlinedAt: !2369)
!2373 = !DILocation(line: 507, column: 7, scope: !615, inlinedAt: !2369)
!2374 = !DILocation(line: 509, column: 16, scope: !2375, inlinedAt: !2369)
!2375 = distinct !DILexicalBlock(scope: !2371, file: !616, line: 508, column: 5)
!2376 = !DILocation(line: 510, column: 13, scope: !2377, inlinedAt: !2369)
!2377 = distinct !DILexicalBlock(scope: !2375, file: !616, line: 510, column: 11)
!2378 = !DILocation(line: 510, column: 23, scope: !2377, inlinedAt: !2369)
!2379 = !DILocation(line: 510, column: 26, scope: !2377, inlinedAt: !2369)
!2380 = !DILocation(line: 510, column: 32, scope: !2377, inlinedAt: !2369)
!2381 = !DILocation(line: 510, column: 11, scope: !2375, inlinedAt: !2369)
!2382 = !DILocation(line: 512, column: 30, scope: !2383, inlinedAt: !2369)
!2383 = distinct !DILexicalBlock(scope: !2377, file: !616, line: 511, column: 9)
!2384 = !DILocation(line: 528, column: 19, scope: !627, inlinedAt: !2369)
!2385 = !DILocation(line: 0, scope: !2359, inlinedAt: !2386)
!2386 = distinct !DILocation(line: 520, column: 20, scope: !2387, inlinedAt: !2369)
!2387 = distinct !DILexicalBlock(scope: !2377, file: !616, line: 519, column: 9)
!2388 = !DILocation(line: 479, column: 12, scope: !2359, inlinedAt: !2386)
!2389 = !DILocation(line: 521, column: 22, scope: !2390, inlinedAt: !2369)
!2390 = distinct !DILexicalBlock(scope: !2387, file: !616, line: 521, column: 15)
!2391 = !DILocation(line: 521, column: 15, scope: !2387, inlinedAt: !2369)
!2392 = !DILocation(line: 522, column: 32, scope: !2390, inlinedAt: !2369)
!2393 = !DILocation(line: 522, column: 13, scope: !2390, inlinedAt: !2369)
!2394 = !DILocation(line: 0, scope: !2359, inlinedAt: !2395)
!2395 = distinct !DILocation(line: 527, column: 14, scope: !2371, inlinedAt: !2369)
!2396 = !DILocation(line: 479, column: 12, scope: !2359, inlinedAt: !2395)
!2397 = !DILocation(line: 0, scope: !2371, inlinedAt: !2369)
!2398 = !DILocation(line: 528, column: 9, scope: !627, inlinedAt: !2369)
!2399 = !DILocation(line: 530, column: 19, scope: !626, inlinedAt: !2369)
!2400 = !DILocation(line: 0, scope: !626, inlinedAt: !2369)
!2401 = !DILocation(line: 531, column: 17, scope: !630, inlinedAt: !2369)
!2402 = !DILocation(line: 531, column: 21, scope: !630, inlinedAt: !2369)
!2403 = !DILocation(line: 531, column: 54, scope: !630, inlinedAt: !2369)
!2404 = !DILocation(line: 531, column: 24, scope: !630, inlinedAt: !2369)
!2405 = !DILocation(line: 531, column: 68, scope: !630, inlinedAt: !2369)
!2406 = !DILocation(line: 531, column: 11, scope: !626, inlinedAt: !2369)
!2407 = !DILocation(line: 533, column: 29, scope: !629, inlinedAt: !2369)
!2408 = !DILocation(line: 0, scope: !629, inlinedAt: !2369)
!2409 = !DILocation(line: 534, column: 11, scope: !629, inlinedAt: !2369)
!2410 = !DILocation(line: 535, column: 17, scope: !629, inlinedAt: !2369)
!2411 = !DILocation(line: 537, column: 9, scope: !629, inlinedAt: !2369)
!2412 = !DILocation(line: 329, column: 22, scope: !2347)
!2413 = !DILocation(line: 330, column: 13, scope: !2347)
!2414 = !DILocation(line: 418, column: 23, scope: !2346)
!2415 = !DILocation(line: 0, scope: !2346)
!2416 = !DILocation(line: 419, column: 24, scope: !2346)
!2417 = !DILocation(line: 421, column: 13, scope: !2347)
!2418 = !DILocation(line: 426, column: 25, scope: !2350)
!2419 = !DILocation(line: 0, scope: !2350)
!2420 = !DILocation(line: 427, column: 24, scope: !2350)
!2421 = !DILocation(line: 429, column: 13, scope: !2347)
!2422 = !DILocation(line: 0, scope: !2342)
!2423 = !DILocation(line: 438, column: 3, scope: !2324)
!2424 = !DILocation(line: 441, column: 1, scope: !2324)
!2425 = !DILocation(line: 440, column: 3, scope: !2324)
!2426 = distinct !DISubprogram(name: "fpurge", scope: !895, file: !895, line: 32, type: !2427, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !894, retainedNodes: !2463)
!2427 = !DISubroutineType(types: !2428)
!2428 = !{!86, !2429}
!2429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2430, size: 64)
!2430 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !290, line: 7, baseType: !2431)
!2431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !292, line: 49, size: 1728, elements: !2432)
!2432 = !{!2433, !2434, !2435, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2444, !2445, !2446, !2448, !2449, !2450, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2459, !2460, !2461, !2462}
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2431, file: !292, line: 51, baseType: !86, size: 32)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2431, file: !292, line: 54, baseType: !88, size: 64, offset: 64)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2431, file: !292, line: 55, baseType: !88, size: 64, offset: 128)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2431, file: !292, line: 56, baseType: !88, size: 64, offset: 192)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2431, file: !292, line: 57, baseType: !88, size: 64, offset: 256)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2431, file: !292, line: 58, baseType: !88, size: 64, offset: 320)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2431, file: !292, line: 59, baseType: !88, size: 64, offset: 384)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2431, file: !292, line: 60, baseType: !88, size: 64, offset: 448)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2431, file: !292, line: 61, baseType: !88, size: 64, offset: 512)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2431, file: !292, line: 64, baseType: !88, size: 64, offset: 576)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2431, file: !292, line: 65, baseType: !88, size: 64, offset: 640)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2431, file: !292, line: 66, baseType: !88, size: 64, offset: 704)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2431, file: !292, line: 68, baseType: !307, size: 64, offset: 768)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2431, file: !292, line: 70, baseType: !2447, size: 64, offset: 832)
!2447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2431, size: 64)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2431, file: !292, line: 72, baseType: !86, size: 32, offset: 896)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2431, file: !292, line: 73, baseType: !86, size: 32, offset: 928)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2431, file: !292, line: 74, baseType: !314, size: 64, offset: 960)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2431, file: !292, line: 77, baseType: !148, size: 16, offset: 1024)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2431, file: !292, line: 78, baseType: !318, size: 8, offset: 1040)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2431, file: !292, line: 79, baseType: !199, size: 8, offset: 1048)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2431, file: !292, line: 81, baseType: !321, size: 64, offset: 1088)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2431, file: !292, line: 89, baseType: !324, size: 64, offset: 1152)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2431, file: !292, line: 91, baseType: !326, size: 64, offset: 1216)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2431, file: !292, line: 92, baseType: !329, size: 64, offset: 1280)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2431, file: !292, line: 93, baseType: !2447, size: 64, offset: 1344)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2431, file: !292, line: 94, baseType: !144, size: 64, offset: 1408)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2431, file: !292, line: 95, baseType: !149, size: 64, offset: 1472)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2431, file: !292, line: 96, baseType: !86, size: 32, offset: 1536)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2431, file: !292, line: 98, baseType: !228, size: 160, offset: 1568)
!2463 = !{!2464}
!2464 = !DILocalVariable(name: "fp", arg: 1, scope: !2426, file: !895, line: 32, type: !2429)
!2465 = !DILocation(line: 0, scope: !2426)
!2466 = !DILocation(line: 36, column: 3, scope: !2426)
!2467 = !DILocation(line: 38, column: 3, scope: !2426)
!2468 = !DISubprogram(name: "__fpurge", scope: !2469, file: !2469, line: 72, type: !2470, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !992)
!2469 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!2470 = !DISubroutineType(types: !2471)
!2471 = !{null, !2429}
!2472 = distinct !DISubprogram(name: "full_write", scope: !897, file: !897, line: 58, type: !2473, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !896, retainedNodes: !2475)
!2473 = !DISubroutineType(types: !2474)
!2474 = !{!500, !86, !1206, !500}
!2475 = !{!2476, !2477, !2478, !2479, !2480, !2481}
!2476 = !DILocalVariable(name: "fd", arg: 1, scope: !2472, file: !897, line: 58, type: !86)
!2477 = !DILocalVariable(name: "buf", arg: 2, scope: !2472, file: !897, line: 58, type: !1206)
!2478 = !DILocalVariable(name: "count", arg: 3, scope: !2472, file: !897, line: 58, type: !500)
!2479 = !DILocalVariable(name: "total", scope: !2472, file: !897, line: 60, type: !500)
!2480 = !DILocalVariable(name: "ptr", scope: !2472, file: !897, line: 61, type: !151)
!2481 = !DILocalVariable(name: "n_rw", scope: !2482, file: !897, line: 65, type: !502)
!2482 = distinct !DILexicalBlock(scope: !2472, file: !897, line: 64, column: 5)
!2483 = !DILocation(line: 0, scope: !2472)
!2484 = !DILocation(line: 63, column: 16, scope: !2472)
!2485 = !DILocation(line: 63, column: 3, scope: !2472)
!2486 = !DILocation(line: 65, column: 24, scope: !2482)
!2487 = !DILocation(line: 0, scope: !2482)
!2488 = !DILocation(line: 66, column: 16, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2482, file: !897, line: 66, column: 11)
!2490 = !DILocation(line: 66, column: 11, scope: !2482)
!2491 = !DILocation(line: 68, column: 16, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2482, file: !897, line: 68, column: 11)
!2493 = !DILocation(line: 68, column: 11, scope: !2482)
!2494 = !DILocation(line: 70, column: 11, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !2492, file: !897, line: 69, column: 9)
!2496 = !DILocation(line: 70, column: 17, scope: !2495)
!2497 = !DILocation(line: 71, column: 11, scope: !2495)
!2498 = !DILocation(line: 73, column: 13, scope: !2482)
!2499 = !DILocation(line: 74, column: 11, scope: !2482)
!2500 = !DILocation(line: 75, column: 13, scope: !2482)
!2501 = !DILocation(line: 78, column: 3, scope: !2472)
!2502 = distinct !DISubprogram(name: "getprogname", scope: !900, file: !900, line: 54, type: !2503, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !899, retainedNodes: !992)
!2503 = !DISubroutineType(types: !898)
!2504 = !DILocation(line: 58, column: 10, scope: !2502)
!2505 = !DILocation(line: 58, column: 3, scope: !2502)
!2506 = distinct !DISubprogram(name: "set_program_name", scope: !634, file: !634, line: 37, type: !1009, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !633, retainedNodes: !2507)
!2507 = !{!2508, !2509, !2510}
!2508 = !DILocalVariable(name: "argv0", arg: 1, scope: !2506, file: !634, line: 37, type: !151)
!2509 = !DILocalVariable(name: "slash", scope: !2506, file: !634, line: 44, type: !151)
!2510 = !DILocalVariable(name: "base", scope: !2506, file: !634, line: 45, type: !151)
!2511 = !DILocation(line: 0, scope: !2506)
!2512 = !DILocation(line: 44, column: 23, scope: !2506)
!2513 = !DILocation(line: 45, column: 22, scope: !2506)
!2514 = !DILocation(line: 46, column: 17, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2506, file: !634, line: 46, column: 7)
!2516 = !DILocation(line: 46, column: 9, scope: !2515)
!2517 = !DILocation(line: 46, column: 25, scope: !2515)
!2518 = !DILocation(line: 46, column: 40, scope: !2515)
!2519 = !DILocalVariable(name: "__s1", arg: 1, scope: !2520, file: !1070, line: 974, type: !1206)
!2520 = distinct !DISubprogram(name: "memeq", scope: !1070, file: !1070, line: 974, type: !2521, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !633, retainedNodes: !2523)
!2521 = !DISubroutineType(types: !2522)
!2522 = !{!145, !1206, !1206, !149}
!2523 = !{!2519, !2524, !2525}
!2524 = !DILocalVariable(name: "__s2", arg: 2, scope: !2520, file: !1070, line: 974, type: !1206)
!2525 = !DILocalVariable(name: "__n", arg: 3, scope: !2520, file: !1070, line: 974, type: !149)
!2526 = !DILocation(line: 0, scope: !2520, inlinedAt: !2527)
!2527 = distinct !DILocation(line: 46, column: 28, scope: !2515)
!2528 = !DILocation(line: 976, column: 11, scope: !2520, inlinedAt: !2527)
!2529 = !DILocation(line: 976, column: 10, scope: !2520, inlinedAt: !2527)
!2530 = !DILocation(line: 46, column: 7, scope: !2506)
!2531 = !DILocation(line: 49, column: 11, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !2533, file: !634, line: 49, column: 11)
!2533 = distinct !DILexicalBlock(scope: !2515, file: !634, line: 47, column: 5)
!2534 = !DILocation(line: 49, column: 36, scope: !2532)
!2535 = !DILocation(line: 49, column: 11, scope: !2533)
!2536 = !DILocation(line: 65, column: 16, scope: !2506)
!2537 = !DILocation(line: 71, column: 27, scope: !2506)
!2538 = !DILocation(line: 74, column: 33, scope: !2506)
!2539 = !DILocation(line: 76, column: 1, scope: !2506)
!2540 = !DISubprogram(name: "strrchr", scope: !1178, file: !1178, line: 273, type: !1193, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !992)
!2541 = !DILocation(line: 0, scope: !643)
!2542 = !DILocation(line: 40, column: 29, scope: !643)
!2543 = !DILocation(line: 41, column: 19, scope: !2544)
!2544 = distinct !DILexicalBlock(scope: !643, file: !644, line: 41, column: 7)
!2545 = !DILocation(line: 41, column: 7, scope: !643)
!2546 = !DILocation(line: 47, column: 3, scope: !643)
!2547 = !DILocation(line: 48, column: 3, scope: !643)
!2548 = !DILocation(line: 48, column: 13, scope: !643)
!2549 = !DILocalVariable(name: "ps", arg: 1, scope: !2550, file: !2551, line: 1135, type: !2554)
!2550 = distinct !DISubprogram(name: "mbszero", scope: !2551, file: !2551, line: 1135, type: !2552, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !647, retainedNodes: !2555)
!2551 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2552 = !DISubroutineType(types: !2553)
!2553 = !{null, !2554}
!2554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!2555 = !{!2549}
!2556 = !DILocation(line: 0, scope: !2550, inlinedAt: !2557)
!2557 = distinct !DILocation(line: 48, column: 18, scope: !643)
!2558 = !DILocalVariable(name: "__dest", arg: 1, scope: !2559, file: !1535, line: 57, type: !144)
!2559 = distinct !DISubprogram(name: "memset", scope: !1535, file: !1535, line: 57, type: !2560, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !647, retainedNodes: !2562)
!2560 = !DISubroutineType(types: !2561)
!2561 = !{!144, !144, !86, !149}
!2562 = !{!2558, !2563, !2564}
!2563 = !DILocalVariable(name: "__ch", arg: 2, scope: !2559, file: !1535, line: 57, type: !86)
!2564 = !DILocalVariable(name: "__len", arg: 3, scope: !2559, file: !1535, line: 57, type: !149)
!2565 = !DILocation(line: 0, scope: !2559, inlinedAt: !2566)
!2566 = distinct !DILocation(line: 1137, column: 3, scope: !2550, inlinedAt: !2557)
!2567 = !DILocation(line: 59, column: 10, scope: !2559, inlinedAt: !2566)
!2568 = !DILocation(line: 49, column: 7, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !643, file: !644, line: 49, column: 7)
!2570 = !DILocation(line: 49, column: 39, scope: !2569)
!2571 = !DILocation(line: 49, column: 44, scope: !2569)
!2572 = !DILocation(line: 54, column: 1, scope: !643)
!2573 = !DISubprogram(name: "mbrtoc32", scope: !655, file: !655, line: 57, type: !2574, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !992)
!2574 = !DISubroutineType(types: !2575)
!2575 = !{!149, !2576, !1048, !149, !2578}
!2576 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2577)
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!2578 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2554)
!2579 = distinct !DISubprogram(name: "clone_quoting_options", scope: !674, file: !674, line: 113, type: !2580, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !2583)
!2580 = !DISubroutineType(types: !2581)
!2581 = !{!2582, !2582}
!2582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!2583 = !{!2584, !2585, !2586}
!2584 = !DILocalVariable(name: "o", arg: 1, scope: !2579, file: !674, line: 113, type: !2582)
!2585 = !DILocalVariable(name: "saved_errno", scope: !2579, file: !674, line: 115, type: !86)
!2586 = !DILocalVariable(name: "p", scope: !2579, file: !674, line: 116, type: !2582)
!2587 = !DILocation(line: 0, scope: !2579)
!2588 = !DILocation(line: 115, column: 21, scope: !2579)
!2589 = !DILocation(line: 116, column: 40, scope: !2579)
!2590 = !DILocation(line: 116, column: 31, scope: !2579)
!2591 = !DILocation(line: 118, column: 9, scope: !2579)
!2592 = !DILocation(line: 119, column: 3, scope: !2579)
!2593 = distinct !DISubprogram(name: "get_quoting_style", scope: !674, file: !674, line: 124, type: !2594, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !2598)
!2594 = !DISubroutineType(types: !2595)
!2595 = !{!96, !2596}
!2596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2597, size: 64)
!2597 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !713)
!2598 = !{!2599}
!2599 = !DILocalVariable(name: "o", arg: 1, scope: !2593, file: !674, line: 124, type: !2596)
!2600 = !DILocation(line: 0, scope: !2593)
!2601 = !DILocation(line: 126, column: 11, scope: !2593)
!2602 = !DILocation(line: 126, column: 46, scope: !2593)
!2603 = !{!2604, !985, i64 0}
!2604 = !{!"quoting_options", !985, i64 0, !1058, i64 4, !985, i64 8, !984, i64 40, !984, i64 48}
!2605 = !DILocation(line: 126, column: 3, scope: !2593)
!2606 = distinct !DISubprogram(name: "set_quoting_style", scope: !674, file: !674, line: 132, type: !2607, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !2609)
!2607 = !DISubroutineType(types: !2608)
!2608 = !{null, !2582, !96}
!2609 = !{!2610, !2611}
!2610 = !DILocalVariable(name: "o", arg: 1, scope: !2606, file: !674, line: 132, type: !2582)
!2611 = !DILocalVariable(name: "s", arg: 2, scope: !2606, file: !674, line: 132, type: !96)
!2612 = !DILocation(line: 0, scope: !2606)
!2613 = !DILocation(line: 134, column: 4, scope: !2606)
!2614 = !DILocation(line: 134, column: 45, scope: !2606)
!2615 = !DILocation(line: 135, column: 1, scope: !2606)
!2616 = distinct !DISubprogram(name: "set_char_quoting", scope: !674, file: !674, line: 143, type: !2617, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !2619)
!2617 = !DISubroutineType(types: !2618)
!2618 = !{!86, !2582, !4, !86}
!2619 = !{!2620, !2621, !2622, !2623, !2624, !2626, !2627}
!2620 = !DILocalVariable(name: "o", arg: 1, scope: !2616, file: !674, line: 143, type: !2582)
!2621 = !DILocalVariable(name: "c", arg: 2, scope: !2616, file: !674, line: 143, type: !4)
!2622 = !DILocalVariable(name: "i", arg: 3, scope: !2616, file: !674, line: 143, type: !86)
!2623 = !DILocalVariable(name: "uc", scope: !2616, file: !674, line: 145, type: !153)
!2624 = !DILocalVariable(name: "p", scope: !2616, file: !674, line: 146, type: !2625)
!2625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!2626 = !DILocalVariable(name: "shift", scope: !2616, file: !674, line: 148, type: !86)
!2627 = !DILocalVariable(name: "r", scope: !2616, file: !674, line: 149, type: !98)
!2628 = !DILocation(line: 0, scope: !2616)
!2629 = !DILocation(line: 147, column: 6, scope: !2616)
!2630 = !DILocation(line: 147, column: 41, scope: !2616)
!2631 = !DILocation(line: 147, column: 62, scope: !2616)
!2632 = !DILocation(line: 147, column: 57, scope: !2616)
!2633 = !DILocation(line: 148, column: 15, scope: !2616)
!2634 = !DILocation(line: 149, column: 21, scope: !2616)
!2635 = !DILocation(line: 149, column: 24, scope: !2616)
!2636 = !DILocation(line: 149, column: 34, scope: !2616)
!2637 = !DILocation(line: 150, column: 19, scope: !2616)
!2638 = !DILocation(line: 150, column: 24, scope: !2616)
!2639 = !DILocation(line: 150, column: 6, scope: !2616)
!2640 = !DILocation(line: 151, column: 3, scope: !2616)
!2641 = distinct !DISubprogram(name: "set_quoting_flags", scope: !674, file: !674, line: 159, type: !2642, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !2644)
!2642 = !DISubroutineType(types: !2643)
!2643 = !{!86, !2582, !86}
!2644 = !{!2645, !2646, !2647}
!2645 = !DILocalVariable(name: "o", arg: 1, scope: !2641, file: !674, line: 159, type: !2582)
!2646 = !DILocalVariable(name: "i", arg: 2, scope: !2641, file: !674, line: 159, type: !86)
!2647 = !DILocalVariable(name: "r", scope: !2641, file: !674, line: 163, type: !86)
!2648 = !DILocation(line: 0, scope: !2641)
!2649 = !DILocation(line: 161, column: 8, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2641, file: !674, line: 161, column: 7)
!2651 = !DILocation(line: 161, column: 7, scope: !2641)
!2652 = !DILocation(line: 163, column: 14, scope: !2641)
!2653 = !{!2604, !1058, i64 4}
!2654 = !DILocation(line: 164, column: 12, scope: !2641)
!2655 = !DILocation(line: 165, column: 3, scope: !2641)
!2656 = distinct !DISubprogram(name: "set_custom_quoting", scope: !674, file: !674, line: 169, type: !2657, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !2659)
!2657 = !DISubroutineType(types: !2658)
!2658 = !{null, !2582, !151, !151}
!2659 = !{!2660, !2661, !2662}
!2660 = !DILocalVariable(name: "o", arg: 1, scope: !2656, file: !674, line: 169, type: !2582)
!2661 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2656, file: !674, line: 170, type: !151)
!2662 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2656, file: !674, line: 170, type: !151)
!2663 = !DILocation(line: 0, scope: !2656)
!2664 = !DILocation(line: 172, column: 8, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2656, file: !674, line: 172, column: 7)
!2666 = !DILocation(line: 172, column: 7, scope: !2656)
!2667 = !DILocation(line: 174, column: 12, scope: !2656)
!2668 = !DILocation(line: 175, column: 8, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2656, file: !674, line: 175, column: 7)
!2670 = !DILocation(line: 175, column: 19, scope: !2669)
!2671 = !DILocation(line: 176, column: 5, scope: !2669)
!2672 = !DILocation(line: 177, column: 6, scope: !2656)
!2673 = !DILocation(line: 177, column: 17, scope: !2656)
!2674 = !{!2604, !984, i64 40}
!2675 = !DILocation(line: 178, column: 6, scope: !2656)
!2676 = !DILocation(line: 178, column: 18, scope: !2656)
!2677 = !{!2604, !984, i64 48}
!2678 = !DILocation(line: 179, column: 1, scope: !2656)
!2679 = !DISubprogram(name: "abort", scope: !1182, file: !1182, line: 598, type: !611, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !992)
!2680 = distinct !DISubprogram(name: "quotearg_buffer", scope: !674, file: !674, line: 774, type: !2681, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !2683)
!2681 = !DISubroutineType(types: !2682)
!2682 = !{!149, !88, !149, !151, !149, !2596}
!2683 = !{!2684, !2685, !2686, !2687, !2688, !2689, !2690, !2691}
!2684 = !DILocalVariable(name: "buffer", arg: 1, scope: !2680, file: !674, line: 774, type: !88)
!2685 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2680, file: !674, line: 774, type: !149)
!2686 = !DILocalVariable(name: "arg", arg: 3, scope: !2680, file: !674, line: 775, type: !151)
!2687 = !DILocalVariable(name: "argsize", arg: 4, scope: !2680, file: !674, line: 775, type: !149)
!2688 = !DILocalVariable(name: "o", arg: 5, scope: !2680, file: !674, line: 776, type: !2596)
!2689 = !DILocalVariable(name: "p", scope: !2680, file: !674, line: 778, type: !2596)
!2690 = !DILocalVariable(name: "saved_errno", scope: !2680, file: !674, line: 779, type: !86)
!2691 = !DILocalVariable(name: "r", scope: !2680, file: !674, line: 780, type: !149)
!2692 = !DILocation(line: 0, scope: !2680)
!2693 = !DILocation(line: 778, column: 37, scope: !2680)
!2694 = !DILocation(line: 779, column: 21, scope: !2680)
!2695 = !DILocation(line: 781, column: 43, scope: !2680)
!2696 = !DILocation(line: 781, column: 53, scope: !2680)
!2697 = !DILocation(line: 781, column: 63, scope: !2680)
!2698 = !DILocation(line: 782, column: 43, scope: !2680)
!2699 = !DILocation(line: 782, column: 58, scope: !2680)
!2700 = !DILocation(line: 780, column: 14, scope: !2680)
!2701 = !DILocation(line: 783, column: 9, scope: !2680)
!2702 = !DILocation(line: 784, column: 3, scope: !2680)
!2703 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !674, file: !674, line: 251, type: !2704, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !2708)
!2704 = !DISubroutineType(types: !2705)
!2705 = !{!149, !88, !149, !151, !149, !96, !86, !2706, !151, !151}
!2706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2707, size: 64)
!2707 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!2708 = !{!2709, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2727, !2728, !2733, !2735, !2738, !2739, !2740, !2741, !2744, !2745, !2748, !2752, !2753, !2761, !2764, !2765, !2767, !2768, !2769, !2770}
!2709 = !DILocalVariable(name: "buffer", arg: 1, scope: !2703, file: !674, line: 251, type: !88)
!2710 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2703, file: !674, line: 251, type: !149)
!2711 = !DILocalVariable(name: "arg", arg: 3, scope: !2703, file: !674, line: 252, type: !151)
!2712 = !DILocalVariable(name: "argsize", arg: 4, scope: !2703, file: !674, line: 252, type: !149)
!2713 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2703, file: !674, line: 253, type: !96)
!2714 = !DILocalVariable(name: "flags", arg: 6, scope: !2703, file: !674, line: 253, type: !86)
!2715 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2703, file: !674, line: 254, type: !2706)
!2716 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2703, file: !674, line: 255, type: !151)
!2717 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2703, file: !674, line: 256, type: !151)
!2718 = !DILocalVariable(name: "unibyte_locale", scope: !2703, file: !674, line: 258, type: !145)
!2719 = !DILocalVariable(name: "len", scope: !2703, file: !674, line: 260, type: !149)
!2720 = !DILocalVariable(name: "orig_buffersize", scope: !2703, file: !674, line: 261, type: !149)
!2721 = !DILocalVariable(name: "quote_string", scope: !2703, file: !674, line: 262, type: !151)
!2722 = !DILocalVariable(name: "quote_string_len", scope: !2703, file: !674, line: 263, type: !149)
!2723 = !DILocalVariable(name: "backslash_escapes", scope: !2703, file: !674, line: 264, type: !145)
!2724 = !DILocalVariable(name: "elide_outer_quotes", scope: !2703, file: !674, line: 265, type: !145)
!2725 = !DILocalVariable(name: "encountered_single_quote", scope: !2703, file: !674, line: 266, type: !145)
!2726 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2703, file: !674, line: 267, type: !145)
!2727 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2703, file: !674, line: 309, type: !145)
!2728 = !DILocalVariable(name: "lq", scope: !2729, file: !674, line: 361, type: !151)
!2729 = distinct !DILexicalBlock(scope: !2730, file: !674, line: 361, column: 11)
!2730 = distinct !DILexicalBlock(scope: !2731, file: !674, line: 360, column: 13)
!2731 = distinct !DILexicalBlock(scope: !2732, file: !674, line: 333, column: 7)
!2732 = distinct !DILexicalBlock(scope: !2703, file: !674, line: 312, column: 5)
!2733 = !DILocalVariable(name: "i", scope: !2734, file: !674, line: 395, type: !149)
!2734 = distinct !DILexicalBlock(scope: !2703, file: !674, line: 395, column: 3)
!2735 = !DILocalVariable(name: "is_right_quote", scope: !2736, file: !674, line: 397, type: !145)
!2736 = distinct !DILexicalBlock(scope: !2737, file: !674, line: 396, column: 5)
!2737 = distinct !DILexicalBlock(scope: !2734, file: !674, line: 395, column: 3)
!2738 = !DILocalVariable(name: "escaping", scope: !2736, file: !674, line: 398, type: !145)
!2739 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2736, file: !674, line: 399, type: !145)
!2740 = !DILocalVariable(name: "c", scope: !2736, file: !674, line: 417, type: !153)
!2741 = !DILocalVariable(name: "m", scope: !2742, file: !674, line: 598, type: !149)
!2742 = distinct !DILexicalBlock(scope: !2743, file: !674, line: 596, column: 11)
!2743 = distinct !DILexicalBlock(scope: !2736, file: !674, line: 419, column: 9)
!2744 = !DILocalVariable(name: "printable", scope: !2742, file: !674, line: 600, type: !145)
!2745 = !DILocalVariable(name: "mbs", scope: !2746, file: !674, line: 609, type: !747)
!2746 = distinct !DILexicalBlock(scope: !2747, file: !674, line: 608, column: 15)
!2747 = distinct !DILexicalBlock(scope: !2742, file: !674, line: 602, column: 17)
!2748 = !DILocalVariable(name: "w", scope: !2749, file: !674, line: 618, type: !654)
!2749 = distinct !DILexicalBlock(scope: !2750, file: !674, line: 617, column: 19)
!2750 = distinct !DILexicalBlock(scope: !2751, file: !674, line: 616, column: 17)
!2751 = distinct !DILexicalBlock(scope: !2746, file: !674, line: 616, column: 17)
!2752 = !DILocalVariable(name: "bytes", scope: !2749, file: !674, line: 619, type: !149)
!2753 = !DILocalVariable(name: "j", scope: !2754, file: !674, line: 648, type: !149)
!2754 = distinct !DILexicalBlock(scope: !2755, file: !674, line: 648, column: 29)
!2755 = distinct !DILexicalBlock(scope: !2756, file: !674, line: 647, column: 27)
!2756 = distinct !DILexicalBlock(scope: !2757, file: !674, line: 645, column: 29)
!2757 = distinct !DILexicalBlock(scope: !2758, file: !674, line: 636, column: 23)
!2758 = distinct !DILexicalBlock(scope: !2759, file: !674, line: 628, column: 30)
!2759 = distinct !DILexicalBlock(scope: !2760, file: !674, line: 623, column: 30)
!2760 = distinct !DILexicalBlock(scope: !2749, file: !674, line: 621, column: 25)
!2761 = !DILocalVariable(name: "ilim", scope: !2762, file: !674, line: 674, type: !149)
!2762 = distinct !DILexicalBlock(scope: !2763, file: !674, line: 671, column: 15)
!2763 = distinct !DILexicalBlock(scope: !2742, file: !674, line: 670, column: 17)
!2764 = !DILabel(scope: !2703, name: "process_input", file: !674, line: 308)
!2765 = !DILabel(scope: !2766, name: "c_and_shell_escape", file: !674, line: 502)
!2766 = distinct !DILexicalBlock(scope: !2743, file: !674, line: 478, column: 9)
!2767 = !DILabel(scope: !2766, name: "c_escape", file: !674, line: 507)
!2768 = !DILabel(scope: !2736, name: "store_escape", file: !674, line: 709)
!2769 = !DILabel(scope: !2736, name: "store_c", file: !674, line: 712)
!2770 = !DILabel(scope: !2703, name: "force_outer_quoting_style", file: !674, line: 753)
!2771 = !DILocation(line: 0, scope: !2703)
!2772 = !DILocation(line: 258, column: 25, scope: !2703)
!2773 = !DILocation(line: 258, column: 36, scope: !2703)
!2774 = !DILocation(line: 265, column: 8, scope: !2703)
!2775 = !DILocation(line: 267, column: 3, scope: !2703)
!2776 = !DILocation(line: 261, column: 10, scope: !2703)
!2777 = !DILocation(line: 262, column: 15, scope: !2703)
!2778 = !DILocation(line: 263, column: 10, scope: !2703)
!2779 = !DILocation(line: 264, column: 8, scope: !2703)
!2780 = !DILocation(line: 266, column: 8, scope: !2703)
!2781 = !DILocation(line: 267, column: 8, scope: !2703)
!2782 = !DILocation(line: 308, column: 2, scope: !2703)
!2783 = !DILocation(line: 311, column: 3, scope: !2703)
!2784 = !DILocation(line: 318, column: 11, scope: !2732)
!2785 = !DILocation(line: 318, column: 12, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2732, file: !674, line: 318, column: 11)
!2787 = !DILocation(line: 319, column: 9, scope: !2788)
!2788 = distinct !DILexicalBlock(scope: !2789, file: !674, line: 319, column: 9)
!2789 = distinct !DILexicalBlock(scope: !2786, file: !674, line: 319, column: 9)
!2790 = !DILocation(line: 319, column: 9, scope: !2789)
!2791 = !DILocation(line: 0, scope: !738, inlinedAt: !2792)
!2792 = distinct !DILocation(line: 357, column: 26, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !2794, file: !674, line: 335, column: 11)
!2794 = distinct !DILexicalBlock(scope: !2731, file: !674, line: 334, column: 13)
!2795 = !DILocation(line: 199, column: 29, scope: !738, inlinedAt: !2792)
!2796 = !DILocation(line: 201, column: 19, scope: !2797, inlinedAt: !2792)
!2797 = distinct !DILexicalBlock(scope: !738, file: !674, line: 201, column: 7)
!2798 = !DILocation(line: 201, column: 7, scope: !738, inlinedAt: !2792)
!2799 = !DILocation(line: 229, column: 3, scope: !738, inlinedAt: !2792)
!2800 = !DILocation(line: 230, column: 3, scope: !738, inlinedAt: !2792)
!2801 = !DILocation(line: 230, column: 13, scope: !738, inlinedAt: !2792)
!2802 = !DILocalVariable(name: "ps", arg: 1, scope: !2803, file: !2551, line: 1135, type: !2806)
!2803 = distinct !DISubprogram(name: "mbszero", scope: !2551, file: !2551, line: 1135, type: !2804, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !2807)
!2804 = !DISubroutineType(types: !2805)
!2805 = !{null, !2806}
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!2807 = !{!2802}
!2808 = !DILocation(line: 0, scope: !2803, inlinedAt: !2809)
!2809 = distinct !DILocation(line: 230, column: 18, scope: !738, inlinedAt: !2792)
!2810 = !DILocalVariable(name: "__dest", arg: 1, scope: !2811, file: !1535, line: 57, type: !144)
!2811 = distinct !DISubprogram(name: "memset", scope: !1535, file: !1535, line: 57, type: !2560, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !2812)
!2812 = !{!2810, !2813, !2814}
!2813 = !DILocalVariable(name: "__ch", arg: 2, scope: !2811, file: !1535, line: 57, type: !86)
!2814 = !DILocalVariable(name: "__len", arg: 3, scope: !2811, file: !1535, line: 57, type: !149)
!2815 = !DILocation(line: 0, scope: !2811, inlinedAt: !2816)
!2816 = distinct !DILocation(line: 1137, column: 3, scope: !2803, inlinedAt: !2809)
!2817 = !DILocation(line: 59, column: 10, scope: !2811, inlinedAt: !2816)
!2818 = !DILocation(line: 231, column: 7, scope: !2819, inlinedAt: !2792)
!2819 = distinct !DILexicalBlock(scope: !738, file: !674, line: 231, column: 7)
!2820 = !DILocation(line: 231, column: 40, scope: !2819, inlinedAt: !2792)
!2821 = !DILocation(line: 231, column: 45, scope: !2819, inlinedAt: !2792)
!2822 = !DILocation(line: 235, column: 1, scope: !738, inlinedAt: !2792)
!2823 = !DILocation(line: 0, scope: !738, inlinedAt: !2824)
!2824 = distinct !DILocation(line: 358, column: 27, scope: !2793)
!2825 = !DILocation(line: 199, column: 29, scope: !738, inlinedAt: !2824)
!2826 = !DILocation(line: 201, column: 19, scope: !2797, inlinedAt: !2824)
!2827 = !DILocation(line: 201, column: 7, scope: !738, inlinedAt: !2824)
!2828 = !DILocation(line: 229, column: 3, scope: !738, inlinedAt: !2824)
!2829 = !DILocation(line: 230, column: 3, scope: !738, inlinedAt: !2824)
!2830 = !DILocation(line: 230, column: 13, scope: !738, inlinedAt: !2824)
!2831 = !DILocation(line: 0, scope: !2803, inlinedAt: !2832)
!2832 = distinct !DILocation(line: 230, column: 18, scope: !738, inlinedAt: !2824)
!2833 = !DILocation(line: 0, scope: !2811, inlinedAt: !2834)
!2834 = distinct !DILocation(line: 1137, column: 3, scope: !2803, inlinedAt: !2832)
!2835 = !DILocation(line: 59, column: 10, scope: !2811, inlinedAt: !2834)
!2836 = !DILocation(line: 231, column: 7, scope: !2819, inlinedAt: !2824)
!2837 = !DILocation(line: 231, column: 40, scope: !2819, inlinedAt: !2824)
!2838 = !DILocation(line: 231, column: 45, scope: !2819, inlinedAt: !2824)
!2839 = !DILocation(line: 235, column: 1, scope: !738, inlinedAt: !2824)
!2840 = !DILocation(line: 360, column: 14, scope: !2730)
!2841 = !DILocation(line: 360, column: 13, scope: !2731)
!2842 = !DILocation(line: 0, scope: !2729)
!2843 = !DILocation(line: 361, column: 45, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2729, file: !674, line: 361, column: 11)
!2845 = !DILocation(line: 361, column: 11, scope: !2729)
!2846 = !DILocation(line: 362, column: 13, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !2848, file: !674, line: 362, column: 13)
!2848 = distinct !DILexicalBlock(scope: !2844, file: !674, line: 362, column: 13)
!2849 = !DILocation(line: 362, column: 13, scope: !2848)
!2850 = !DILocation(line: 361, column: 52, scope: !2844)
!2851 = distinct !{!2851, !2845, !2852, !1104}
!2852 = !DILocation(line: 362, column: 13, scope: !2729)
!2853 = !DILocation(line: 260, column: 10, scope: !2703)
!2854 = !DILocation(line: 365, column: 28, scope: !2731)
!2855 = !DILocation(line: 367, column: 7, scope: !2732)
!2856 = !DILocation(line: 370, column: 7, scope: !2732)
!2857 = !DILocation(line: 373, column: 7, scope: !2732)
!2858 = !DILocation(line: 376, column: 12, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2732, file: !674, line: 376, column: 11)
!2860 = !DILocation(line: 376, column: 11, scope: !2732)
!2861 = !DILocation(line: 381, column: 12, scope: !2862)
!2862 = distinct !DILexicalBlock(scope: !2732, file: !674, line: 381, column: 11)
!2863 = !DILocation(line: 381, column: 11, scope: !2732)
!2864 = !DILocation(line: 382, column: 9, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2866, file: !674, line: 382, column: 9)
!2866 = distinct !DILexicalBlock(scope: !2862, file: !674, line: 382, column: 9)
!2867 = !DILocation(line: 382, column: 9, scope: !2866)
!2868 = !DILocation(line: 389, column: 7, scope: !2732)
!2869 = !DILocation(line: 392, column: 7, scope: !2732)
!2870 = !DILocation(line: 0, scope: !2734)
!2871 = !DILocation(line: 395, column: 8, scope: !2734)
!2872 = !DILocation(line: 309, column: 8, scope: !2703)
!2873 = !DILocation(line: 395, scope: !2734)
!2874 = !DILocation(line: 395, column: 34, scope: !2737)
!2875 = !DILocation(line: 395, column: 26, scope: !2737)
!2876 = !DILocation(line: 395, column: 48, scope: !2737)
!2877 = !DILocation(line: 395, column: 55, scope: !2737)
!2878 = !DILocation(line: 395, column: 3, scope: !2734)
!2879 = !DILocation(line: 395, column: 67, scope: !2737)
!2880 = !DILocation(line: 0, scope: !2736)
!2881 = !DILocation(line: 402, column: 11, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2736, file: !674, line: 401, column: 11)
!2883 = !DILocation(line: 404, column: 17, scope: !2882)
!2884 = !DILocation(line: 405, column: 39, scope: !2882)
!2885 = !DILocation(line: 409, column: 32, scope: !2882)
!2886 = !DILocation(line: 405, column: 19, scope: !2882)
!2887 = !DILocation(line: 405, column: 15, scope: !2882)
!2888 = !DILocation(line: 410, column: 11, scope: !2882)
!2889 = !DILocation(line: 410, column: 25, scope: !2882)
!2890 = !DILocalVariable(name: "__s1", arg: 1, scope: !2891, file: !1070, line: 974, type: !1206)
!2891 = distinct !DISubprogram(name: "memeq", scope: !1070, file: !1070, line: 974, type: !2521, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !2892)
!2892 = !{!2890, !2893, !2894}
!2893 = !DILocalVariable(name: "__s2", arg: 2, scope: !2891, file: !1070, line: 974, type: !1206)
!2894 = !DILocalVariable(name: "__n", arg: 3, scope: !2891, file: !1070, line: 974, type: !149)
!2895 = !DILocation(line: 0, scope: !2891, inlinedAt: !2896)
!2896 = distinct !DILocation(line: 410, column: 14, scope: !2882)
!2897 = !DILocation(line: 976, column: 11, scope: !2891, inlinedAt: !2896)
!2898 = !DILocation(line: 976, column: 10, scope: !2891, inlinedAt: !2896)
!2899 = !DILocation(line: 401, column: 11, scope: !2736)
!2900 = !DILocation(line: 417, column: 25, scope: !2736)
!2901 = !DILocation(line: 418, column: 7, scope: !2736)
!2902 = !DILocation(line: 421, column: 15, scope: !2743)
!2903 = !DILocation(line: 423, column: 15, scope: !2904)
!2904 = distinct !DILexicalBlock(scope: !2905, file: !674, line: 423, column: 15)
!2905 = distinct !DILexicalBlock(scope: !2906, file: !674, line: 422, column: 13)
!2906 = distinct !DILexicalBlock(scope: !2743, file: !674, line: 421, column: 15)
!2907 = !DILocation(line: 423, column: 15, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2904, file: !674, line: 423, column: 15)
!2909 = !DILocation(line: 423, column: 15, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2911, file: !674, line: 423, column: 15)
!2911 = distinct !DILexicalBlock(scope: !2912, file: !674, line: 423, column: 15)
!2912 = distinct !DILexicalBlock(scope: !2908, file: !674, line: 423, column: 15)
!2913 = !DILocation(line: 423, column: 15, scope: !2911)
!2914 = !DILocation(line: 423, column: 15, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2916, file: !674, line: 423, column: 15)
!2916 = distinct !DILexicalBlock(scope: !2912, file: !674, line: 423, column: 15)
!2917 = !DILocation(line: 423, column: 15, scope: !2916)
!2918 = !DILocation(line: 423, column: 15, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2920, file: !674, line: 423, column: 15)
!2920 = distinct !DILexicalBlock(scope: !2912, file: !674, line: 423, column: 15)
!2921 = !DILocation(line: 423, column: 15, scope: !2920)
!2922 = !DILocation(line: 423, column: 15, scope: !2912)
!2923 = !DILocation(line: 423, column: 15, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2925, file: !674, line: 423, column: 15)
!2925 = distinct !DILexicalBlock(scope: !2904, file: !674, line: 423, column: 15)
!2926 = !DILocation(line: 423, column: 15, scope: !2925)
!2927 = !DILocation(line: 431, column: 19, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2905, file: !674, line: 430, column: 19)
!2929 = !DILocation(line: 431, column: 24, scope: !2928)
!2930 = !DILocation(line: 431, column: 28, scope: !2928)
!2931 = !DILocation(line: 431, column: 38, scope: !2928)
!2932 = !DILocation(line: 431, column: 48, scope: !2928)
!2933 = !DILocation(line: 431, column: 59, scope: !2928)
!2934 = !DILocation(line: 433, column: 19, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2936, file: !674, line: 433, column: 19)
!2936 = distinct !DILexicalBlock(scope: !2937, file: !674, line: 433, column: 19)
!2937 = distinct !DILexicalBlock(scope: !2928, file: !674, line: 432, column: 17)
!2938 = !DILocation(line: 433, column: 19, scope: !2936)
!2939 = !DILocation(line: 434, column: 19, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2941, file: !674, line: 434, column: 19)
!2941 = distinct !DILexicalBlock(scope: !2937, file: !674, line: 434, column: 19)
!2942 = !DILocation(line: 434, column: 19, scope: !2941)
!2943 = !DILocation(line: 435, column: 17, scope: !2937)
!2944 = !DILocation(line: 442, column: 20, scope: !2906)
!2945 = !DILocation(line: 447, column: 11, scope: !2743)
!2946 = !DILocation(line: 450, column: 19, scope: !2947)
!2947 = distinct !DILexicalBlock(scope: !2743, file: !674, line: 448, column: 13)
!2948 = !DILocation(line: 456, column: 19, scope: !2949)
!2949 = distinct !DILexicalBlock(scope: !2947, file: !674, line: 455, column: 19)
!2950 = !DILocation(line: 456, column: 24, scope: !2949)
!2951 = !DILocation(line: 456, column: 28, scope: !2949)
!2952 = !DILocation(line: 456, column: 38, scope: !2949)
!2953 = !DILocation(line: 456, column: 47, scope: !2949)
!2954 = !DILocation(line: 456, column: 41, scope: !2949)
!2955 = !DILocation(line: 456, column: 52, scope: !2949)
!2956 = !DILocation(line: 455, column: 19, scope: !2947)
!2957 = !DILocation(line: 457, column: 25, scope: !2949)
!2958 = !DILocation(line: 457, column: 17, scope: !2949)
!2959 = !DILocation(line: 464, column: 25, scope: !2960)
!2960 = distinct !DILexicalBlock(scope: !2949, file: !674, line: 458, column: 19)
!2961 = !DILocation(line: 468, column: 21, scope: !2962)
!2962 = distinct !DILexicalBlock(scope: !2963, file: !674, line: 468, column: 21)
!2963 = distinct !DILexicalBlock(scope: !2960, file: !674, line: 468, column: 21)
!2964 = !DILocation(line: 468, column: 21, scope: !2963)
!2965 = !DILocation(line: 469, column: 21, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !2967, file: !674, line: 469, column: 21)
!2967 = distinct !DILexicalBlock(scope: !2960, file: !674, line: 469, column: 21)
!2968 = !DILocation(line: 469, column: 21, scope: !2967)
!2969 = !DILocation(line: 470, column: 21, scope: !2970)
!2970 = distinct !DILexicalBlock(scope: !2971, file: !674, line: 470, column: 21)
!2971 = distinct !DILexicalBlock(scope: !2960, file: !674, line: 470, column: 21)
!2972 = !DILocation(line: 470, column: 21, scope: !2971)
!2973 = !DILocation(line: 471, column: 21, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2975, file: !674, line: 471, column: 21)
!2975 = distinct !DILexicalBlock(scope: !2960, file: !674, line: 471, column: 21)
!2976 = !DILocation(line: 471, column: 21, scope: !2975)
!2977 = !DILocation(line: 472, column: 21, scope: !2960)
!2978 = !DILocation(line: 482, column: 33, scope: !2766)
!2979 = !DILocation(line: 483, column: 33, scope: !2766)
!2980 = !DILocation(line: 485, column: 33, scope: !2766)
!2981 = !DILocation(line: 486, column: 33, scope: !2766)
!2982 = !DILocation(line: 487, column: 33, scope: !2766)
!2983 = !DILocation(line: 490, column: 17, scope: !2766)
!2984 = !DILocation(line: 492, column: 21, scope: !2985)
!2985 = distinct !DILexicalBlock(scope: !2986, file: !674, line: 491, column: 15)
!2986 = distinct !DILexicalBlock(scope: !2766, file: !674, line: 490, column: 17)
!2987 = !DILocation(line: 499, column: 35, scope: !2988)
!2988 = distinct !DILexicalBlock(scope: !2766, file: !674, line: 499, column: 17)
!2989 = !DILocation(line: 499, column: 57, scope: !2988)
!2990 = !DILocation(line: 0, scope: !2766)
!2991 = !DILocation(line: 502, column: 11, scope: !2766)
!2992 = !DILocation(line: 504, column: 17, scope: !2993)
!2993 = distinct !DILexicalBlock(scope: !2766, file: !674, line: 503, column: 17)
!2994 = !DILocation(line: 507, column: 11, scope: !2766)
!2995 = !DILocation(line: 508, column: 17, scope: !2766)
!2996 = !DILocation(line: 517, column: 15, scope: !2743)
!2997 = !DILocation(line: 517, column: 40, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !2743, file: !674, line: 517, column: 15)
!2999 = !DILocation(line: 517, column: 47, scope: !2998)
!3000 = !DILocation(line: 517, column: 18, scope: !2998)
!3001 = !DILocation(line: 521, column: 17, scope: !3002)
!3002 = distinct !DILexicalBlock(scope: !2743, file: !674, line: 521, column: 15)
!3003 = !DILocation(line: 521, column: 15, scope: !2743)
!3004 = !DILocation(line: 525, column: 11, scope: !2743)
!3005 = !DILocation(line: 537, column: 15, scope: !3006)
!3006 = distinct !DILexicalBlock(scope: !2743, file: !674, line: 536, column: 15)
!3007 = !DILocation(line: 544, column: 15, scope: !2743)
!3008 = !DILocation(line: 546, column: 19, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !3010, file: !674, line: 545, column: 13)
!3010 = distinct !DILexicalBlock(scope: !2743, file: !674, line: 544, column: 15)
!3011 = !DILocation(line: 549, column: 19, scope: !3012)
!3012 = distinct !DILexicalBlock(scope: !3009, file: !674, line: 549, column: 19)
!3013 = !DILocation(line: 549, column: 30, scope: !3012)
!3014 = !DILocation(line: 558, column: 15, scope: !3015)
!3015 = distinct !DILexicalBlock(scope: !3016, file: !674, line: 558, column: 15)
!3016 = distinct !DILexicalBlock(scope: !3009, file: !674, line: 558, column: 15)
!3017 = !DILocation(line: 558, column: 15, scope: !3016)
!3018 = !DILocation(line: 559, column: 15, scope: !3019)
!3019 = distinct !DILexicalBlock(scope: !3020, file: !674, line: 559, column: 15)
!3020 = distinct !DILexicalBlock(scope: !3009, file: !674, line: 559, column: 15)
!3021 = !DILocation(line: 559, column: 15, scope: !3020)
!3022 = !DILocation(line: 560, column: 15, scope: !3023)
!3023 = distinct !DILexicalBlock(scope: !3024, file: !674, line: 560, column: 15)
!3024 = distinct !DILexicalBlock(scope: !3009, file: !674, line: 560, column: 15)
!3025 = !DILocation(line: 560, column: 15, scope: !3024)
!3026 = !DILocation(line: 562, column: 13, scope: !3009)
!3027 = !DILocation(line: 602, column: 17, scope: !2742)
!3028 = !DILocation(line: 0, scope: !2742)
!3029 = !DILocation(line: 605, column: 29, scope: !3030)
!3030 = distinct !DILexicalBlock(scope: !2747, file: !674, line: 603, column: 15)
!3031 = !DILocation(line: 605, column: 27, scope: !3030)
!3032 = !DILocation(line: 668, column: 40, scope: !2742)
!3033 = !DILocation(line: 670, column: 23, scope: !2763)
!3034 = !DILocation(line: 609, column: 17, scope: !2746)
!3035 = !DILocation(line: 609, column: 27, scope: !2746)
!3036 = !DILocation(line: 0, scope: !2803, inlinedAt: !3037)
!3037 = distinct !DILocation(line: 609, column: 32, scope: !2746)
!3038 = !DILocation(line: 0, scope: !2811, inlinedAt: !3039)
!3039 = distinct !DILocation(line: 1137, column: 3, scope: !2803, inlinedAt: !3037)
!3040 = !DILocation(line: 59, column: 10, scope: !2811, inlinedAt: !3039)
!3041 = !DILocation(line: 613, column: 29, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !2746, file: !674, line: 613, column: 21)
!3043 = !DILocation(line: 613, column: 21, scope: !2746)
!3044 = !DILocation(line: 614, column: 29, scope: !3042)
!3045 = !DILocation(line: 614, column: 19, scope: !3042)
!3046 = !DILocation(line: 618, column: 21, scope: !2749)
!3047 = !DILocation(line: 620, column: 54, scope: !2749)
!3048 = !DILocation(line: 0, scope: !2749)
!3049 = !DILocation(line: 619, column: 36, scope: !2749)
!3050 = !DILocation(line: 621, column: 25, scope: !2749)
!3051 = !DILocation(line: 631, column: 38, scope: !3052)
!3052 = distinct !DILexicalBlock(scope: !2758, file: !674, line: 629, column: 23)
!3053 = !DILocation(line: 631, column: 48, scope: !3052)
!3054 = !DILocation(line: 665, column: 19, scope: !2750)
!3055 = !DILocation(line: 666, column: 15, scope: !2747)
!3056 = !DILocation(line: 626, column: 25, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !2759, file: !674, line: 624, column: 23)
!3058 = !DILocation(line: 631, column: 51, scope: !3052)
!3059 = !DILocation(line: 631, column: 25, scope: !3052)
!3060 = !DILocation(line: 632, column: 28, scope: !3052)
!3061 = !DILocation(line: 631, column: 34, scope: !3052)
!3062 = distinct !{!3062, !3059, !3060, !1104}
!3063 = !DILocation(line: 646, column: 29, scope: !2756)
!3064 = !DILocation(line: 0, scope: !2754)
!3065 = !DILocation(line: 649, column: 49, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !2754, file: !674, line: 648, column: 29)
!3067 = !DILocation(line: 649, column: 39, scope: !3066)
!3068 = !DILocation(line: 649, column: 31, scope: !3066)
!3069 = !DILocation(line: 648, column: 60, scope: !3066)
!3070 = !DILocation(line: 648, column: 50, scope: !3066)
!3071 = !DILocation(line: 648, column: 29, scope: !2754)
!3072 = distinct !{!3072, !3071, !3073, !1104}
!3073 = !DILocation(line: 654, column: 33, scope: !2754)
!3074 = !DILocation(line: 657, column: 43, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !2757, file: !674, line: 657, column: 29)
!3076 = !DILocalVariable(name: "wc", arg: 1, scope: !3077, file: !3078, line: 865, type: !3081)
!3077 = distinct !DISubprogram(name: "c32isprint", scope: !3078, file: !3078, line: 865, type: !3079, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !3083)
!3078 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!3079 = !DISubroutineType(types: !3080)
!3080 = !{!86, !3081}
!3081 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !3082, line: 20, baseType: !98)
!3082 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!3083 = !{!3076}
!3084 = !DILocation(line: 0, scope: !3077, inlinedAt: !3085)
!3085 = distinct !DILocation(line: 657, column: 31, scope: !3075)
!3086 = !DILocation(line: 871, column: 10, scope: !3077, inlinedAt: !3085)
!3087 = !DILocation(line: 657, column: 31, scope: !3075)
!3088 = !DILocation(line: 657, column: 29, scope: !2757)
!3089 = !DILocation(line: 664, column: 23, scope: !2749)
!3090 = !DILocation(line: 670, column: 19, scope: !2763)
!3091 = !DILocation(line: 670, column: 45, scope: !2763)
!3092 = !DILocation(line: 674, column: 33, scope: !2762)
!3093 = !DILocation(line: 0, scope: !2762)
!3094 = !DILocation(line: 676, column: 17, scope: !2762)
!3095 = !DILocation(line: 398, column: 12, scope: !2736)
!3096 = !DILocation(line: 678, column: 43, scope: !3097)
!3097 = distinct !DILexicalBlock(scope: !3098, file: !674, line: 678, column: 25)
!3098 = distinct !DILexicalBlock(scope: !3099, file: !674, line: 677, column: 19)
!3099 = distinct !DILexicalBlock(scope: !3100, file: !674, line: 676, column: 17)
!3100 = distinct !DILexicalBlock(scope: !2762, file: !674, line: 676, column: 17)
!3101 = !DILocation(line: 680, column: 25, scope: !3102)
!3102 = distinct !DILexicalBlock(scope: !3103, file: !674, line: 680, column: 25)
!3103 = distinct !DILexicalBlock(scope: !3097, file: !674, line: 679, column: 23)
!3104 = !DILocation(line: 680, column: 25, scope: !3105)
!3105 = distinct !DILexicalBlock(scope: !3102, file: !674, line: 680, column: 25)
!3106 = !DILocation(line: 680, column: 25, scope: !3107)
!3107 = distinct !DILexicalBlock(scope: !3108, file: !674, line: 680, column: 25)
!3108 = distinct !DILexicalBlock(scope: !3109, file: !674, line: 680, column: 25)
!3109 = distinct !DILexicalBlock(scope: !3105, file: !674, line: 680, column: 25)
!3110 = !DILocation(line: 680, column: 25, scope: !3108)
!3111 = !DILocation(line: 680, column: 25, scope: !3112)
!3112 = distinct !DILexicalBlock(scope: !3113, file: !674, line: 680, column: 25)
!3113 = distinct !DILexicalBlock(scope: !3109, file: !674, line: 680, column: 25)
!3114 = !DILocation(line: 680, column: 25, scope: !3113)
!3115 = !DILocation(line: 680, column: 25, scope: !3116)
!3116 = distinct !DILexicalBlock(scope: !3117, file: !674, line: 680, column: 25)
!3117 = distinct !DILexicalBlock(scope: !3109, file: !674, line: 680, column: 25)
!3118 = !DILocation(line: 680, column: 25, scope: !3117)
!3119 = !DILocation(line: 680, column: 25, scope: !3109)
!3120 = !DILocation(line: 680, column: 25, scope: !3121)
!3121 = distinct !DILexicalBlock(scope: !3122, file: !674, line: 680, column: 25)
!3122 = distinct !DILexicalBlock(scope: !3102, file: !674, line: 680, column: 25)
!3123 = !DILocation(line: 680, column: 25, scope: !3122)
!3124 = !DILocation(line: 681, column: 25, scope: !3125)
!3125 = distinct !DILexicalBlock(scope: !3126, file: !674, line: 681, column: 25)
!3126 = distinct !DILexicalBlock(scope: !3103, file: !674, line: 681, column: 25)
!3127 = !DILocation(line: 681, column: 25, scope: !3126)
!3128 = !DILocation(line: 682, column: 25, scope: !3129)
!3129 = distinct !DILexicalBlock(scope: !3130, file: !674, line: 682, column: 25)
!3130 = distinct !DILexicalBlock(scope: !3103, file: !674, line: 682, column: 25)
!3131 = !DILocation(line: 682, column: 25, scope: !3130)
!3132 = !DILocation(line: 683, column: 38, scope: !3103)
!3133 = !DILocation(line: 683, column: 33, scope: !3103)
!3134 = !DILocation(line: 684, column: 23, scope: !3103)
!3135 = !DILocation(line: 685, column: 30, scope: !3136)
!3136 = distinct !DILexicalBlock(scope: !3097, file: !674, line: 685, column: 30)
!3137 = !DILocation(line: 685, column: 30, scope: !3097)
!3138 = !DILocation(line: 687, column: 25, scope: !3139)
!3139 = distinct !DILexicalBlock(scope: !3140, file: !674, line: 687, column: 25)
!3140 = distinct !DILexicalBlock(scope: !3141, file: !674, line: 687, column: 25)
!3141 = distinct !DILexicalBlock(scope: !3136, file: !674, line: 686, column: 23)
!3142 = !DILocation(line: 687, column: 25, scope: !3140)
!3143 = !DILocation(line: 689, column: 23, scope: !3141)
!3144 = !DILocation(line: 690, column: 35, scope: !3145)
!3145 = distinct !DILexicalBlock(scope: !3098, file: !674, line: 690, column: 25)
!3146 = !DILocation(line: 690, column: 30, scope: !3145)
!3147 = !DILocation(line: 690, column: 25, scope: !3098)
!3148 = !DILocation(line: 692, column: 21, scope: !3149)
!3149 = distinct !DILexicalBlock(scope: !3150, file: !674, line: 692, column: 21)
!3150 = distinct !DILexicalBlock(scope: !3098, file: !674, line: 692, column: 21)
!3151 = !DILocation(line: 692, column: 21, scope: !3152)
!3152 = distinct !DILexicalBlock(scope: !3153, file: !674, line: 692, column: 21)
!3153 = distinct !DILexicalBlock(scope: !3154, file: !674, line: 692, column: 21)
!3154 = distinct !DILexicalBlock(scope: !3149, file: !674, line: 692, column: 21)
!3155 = !DILocation(line: 692, column: 21, scope: !3153)
!3156 = !DILocation(line: 692, column: 21, scope: !3157)
!3157 = distinct !DILexicalBlock(scope: !3158, file: !674, line: 692, column: 21)
!3158 = distinct !DILexicalBlock(scope: !3154, file: !674, line: 692, column: 21)
!3159 = !DILocation(line: 692, column: 21, scope: !3158)
!3160 = !DILocation(line: 692, column: 21, scope: !3154)
!3161 = !DILocation(line: 0, scope: !3098)
!3162 = !DILocation(line: 693, column: 21, scope: !3163)
!3163 = distinct !DILexicalBlock(scope: !3164, file: !674, line: 693, column: 21)
!3164 = distinct !DILexicalBlock(scope: !3098, file: !674, line: 693, column: 21)
!3165 = !DILocation(line: 693, column: 21, scope: !3164)
!3166 = !DILocation(line: 694, column: 25, scope: !3098)
!3167 = !DILocation(line: 676, column: 17, scope: !3099)
!3168 = distinct !{!3168, !3169, !3170}
!3169 = !DILocation(line: 676, column: 17, scope: !3100)
!3170 = !DILocation(line: 695, column: 19, scope: !3100)
!3171 = !DILocation(line: 409, column: 30, scope: !2882)
!3172 = !DILocation(line: 702, column: 34, scope: !3173)
!3173 = distinct !DILexicalBlock(scope: !2736, file: !674, line: 702, column: 11)
!3174 = !DILocation(line: 704, column: 14, scope: !3173)
!3175 = !DILocation(line: 705, column: 14, scope: !3173)
!3176 = !DILocation(line: 705, column: 35, scope: !3173)
!3177 = !DILocation(line: 705, column: 17, scope: !3173)
!3178 = !DILocation(line: 705, column: 47, scope: !3173)
!3179 = !DILocation(line: 705, column: 65, scope: !3173)
!3180 = !DILocation(line: 706, column: 11, scope: !3173)
!3181 = !DILocation(line: 702, column: 11, scope: !2736)
!3182 = !DILocation(line: 395, column: 15, scope: !2734)
!3183 = !DILocation(line: 709, column: 5, scope: !2736)
!3184 = !DILocation(line: 710, column: 7, scope: !3185)
!3185 = distinct !DILexicalBlock(scope: !2736, file: !674, line: 710, column: 7)
!3186 = !DILocation(line: 710, column: 7, scope: !3187)
!3187 = distinct !DILexicalBlock(scope: !3185, file: !674, line: 710, column: 7)
!3188 = !DILocation(line: 710, column: 7, scope: !3189)
!3189 = distinct !DILexicalBlock(scope: !3190, file: !674, line: 710, column: 7)
!3190 = distinct !DILexicalBlock(scope: !3191, file: !674, line: 710, column: 7)
!3191 = distinct !DILexicalBlock(scope: !3187, file: !674, line: 710, column: 7)
!3192 = !DILocation(line: 710, column: 7, scope: !3190)
!3193 = !DILocation(line: 710, column: 7, scope: !3194)
!3194 = distinct !DILexicalBlock(scope: !3195, file: !674, line: 710, column: 7)
!3195 = distinct !DILexicalBlock(scope: !3191, file: !674, line: 710, column: 7)
!3196 = !DILocation(line: 710, column: 7, scope: !3195)
!3197 = !DILocation(line: 710, column: 7, scope: !3198)
!3198 = distinct !DILexicalBlock(scope: !3199, file: !674, line: 710, column: 7)
!3199 = distinct !DILexicalBlock(scope: !3191, file: !674, line: 710, column: 7)
!3200 = !DILocation(line: 710, column: 7, scope: !3199)
!3201 = !DILocation(line: 710, column: 7, scope: !3191)
!3202 = !DILocation(line: 710, column: 7, scope: !3203)
!3203 = distinct !DILexicalBlock(scope: !3204, file: !674, line: 710, column: 7)
!3204 = distinct !DILexicalBlock(scope: !3185, file: !674, line: 710, column: 7)
!3205 = !DILocation(line: 710, column: 7, scope: !3204)
!3206 = !DILocation(line: 712, column: 5, scope: !2736)
!3207 = !DILocation(line: 713, column: 7, scope: !3208)
!3208 = distinct !DILexicalBlock(scope: !3209, file: !674, line: 713, column: 7)
!3209 = distinct !DILexicalBlock(scope: !2736, file: !674, line: 713, column: 7)
!3210 = !DILocation(line: 417, column: 21, scope: !2736)
!3211 = !DILocation(line: 713, column: 7, scope: !3212)
!3212 = distinct !DILexicalBlock(scope: !3213, file: !674, line: 713, column: 7)
!3213 = distinct !DILexicalBlock(scope: !3214, file: !674, line: 713, column: 7)
!3214 = distinct !DILexicalBlock(scope: !3208, file: !674, line: 713, column: 7)
!3215 = !DILocation(line: 713, column: 7, scope: !3213)
!3216 = !DILocation(line: 713, column: 7, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !3218, file: !674, line: 713, column: 7)
!3218 = distinct !DILexicalBlock(scope: !3214, file: !674, line: 713, column: 7)
!3219 = !DILocation(line: 713, column: 7, scope: !3218)
!3220 = !DILocation(line: 713, column: 7, scope: !3214)
!3221 = !DILocation(line: 714, column: 7, scope: !3222)
!3222 = distinct !DILexicalBlock(scope: !3223, file: !674, line: 714, column: 7)
!3223 = distinct !DILexicalBlock(scope: !2736, file: !674, line: 714, column: 7)
!3224 = !DILocation(line: 714, column: 7, scope: !3223)
!3225 = !DILocation(line: 716, column: 13, scope: !3226)
!3226 = distinct !DILexicalBlock(scope: !2736, file: !674, line: 716, column: 11)
!3227 = !DILocation(line: 716, column: 11, scope: !2736)
!3228 = !DILocation(line: 718, column: 5, scope: !2737)
!3229 = !DILocation(line: 395, column: 82, scope: !2737)
!3230 = !DILocation(line: 395, column: 3, scope: !2737)
!3231 = distinct !{!3231, !2878, !3232, !1104}
!3232 = !DILocation(line: 718, column: 5, scope: !2734)
!3233 = !DILocation(line: 720, column: 11, scope: !3234)
!3234 = distinct !DILexicalBlock(scope: !2703, file: !674, line: 720, column: 7)
!3235 = !DILocation(line: 720, column: 16, scope: !3234)
!3236 = !DILocation(line: 728, column: 51, scope: !3237)
!3237 = distinct !DILexicalBlock(scope: !2703, file: !674, line: 728, column: 7)
!3238 = !DILocation(line: 731, column: 11, scope: !3239)
!3239 = distinct !DILexicalBlock(scope: !3240, file: !674, line: 731, column: 11)
!3240 = distinct !DILexicalBlock(scope: !3237, file: !674, line: 730, column: 5)
!3241 = !DILocation(line: 731, column: 11, scope: !3240)
!3242 = !DILocation(line: 732, column: 16, scope: !3239)
!3243 = !DILocation(line: 732, column: 9, scope: !3239)
!3244 = !DILocation(line: 736, column: 18, scope: !3245)
!3245 = distinct !DILexicalBlock(scope: !3239, file: !674, line: 736, column: 16)
!3246 = !DILocation(line: 736, column: 29, scope: !3245)
!3247 = !DILocation(line: 745, column: 7, scope: !3248)
!3248 = distinct !DILexicalBlock(scope: !2703, file: !674, line: 745, column: 7)
!3249 = !DILocation(line: 745, column: 20, scope: !3248)
!3250 = !DILocation(line: 746, column: 12, scope: !3251)
!3251 = distinct !DILexicalBlock(scope: !3252, file: !674, line: 746, column: 5)
!3252 = distinct !DILexicalBlock(scope: !3248, file: !674, line: 746, column: 5)
!3253 = !DILocation(line: 746, column: 5, scope: !3252)
!3254 = !DILocation(line: 747, column: 7, scope: !3255)
!3255 = distinct !DILexicalBlock(scope: !3256, file: !674, line: 747, column: 7)
!3256 = distinct !DILexicalBlock(scope: !3251, file: !674, line: 747, column: 7)
!3257 = !DILocation(line: 747, column: 7, scope: !3256)
!3258 = !DILocation(line: 746, column: 39, scope: !3251)
!3259 = distinct !{!3259, !3253, !3260, !1104}
!3260 = !DILocation(line: 747, column: 7, scope: !3252)
!3261 = !DILocation(line: 749, column: 11, scope: !3262)
!3262 = distinct !DILexicalBlock(scope: !2703, file: !674, line: 749, column: 7)
!3263 = !DILocation(line: 749, column: 7, scope: !2703)
!3264 = !DILocation(line: 750, column: 5, scope: !3262)
!3265 = !DILocation(line: 750, column: 17, scope: !3262)
!3266 = !DILocation(line: 753, column: 2, scope: !2703)
!3267 = !DILocation(line: 756, column: 51, scope: !3268)
!3268 = distinct !DILexicalBlock(scope: !2703, file: !674, line: 756, column: 7)
!3269 = !DILocation(line: 756, column: 21, scope: !3268)
!3270 = !DILocation(line: 760, column: 42, scope: !2703)
!3271 = !DILocation(line: 758, column: 10, scope: !2703)
!3272 = !DILocation(line: 758, column: 3, scope: !2703)
!3273 = !DILocation(line: 762, column: 1, scope: !2703)
!3274 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1182, file: !1182, line: 98, type: !3275, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !992)
!3275 = !DISubroutineType(types: !903)
!3276 = !DISubprogram(name: "strlen", scope: !1178, file: !1178, line: 407, type: !3277, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !992)
!3277 = !DISubroutineType(types: !3278)
!3278 = !{!147, !151}
!3279 = !DISubprogram(name: "iswprint", scope: !3280, file: !3280, line: 120, type: !3079, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !992)
!3280 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!3281 = distinct !DISubprogram(name: "quotearg_alloc", scope: !674, file: !674, line: 788, type: !3282, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !3284)
!3282 = !DISubroutineType(types: !3283)
!3283 = !{!88, !151, !149, !2596}
!3284 = !{!3285, !3286, !3287}
!3285 = !DILocalVariable(name: "arg", arg: 1, scope: !3281, file: !674, line: 788, type: !151)
!3286 = !DILocalVariable(name: "argsize", arg: 2, scope: !3281, file: !674, line: 788, type: !149)
!3287 = !DILocalVariable(name: "o", arg: 3, scope: !3281, file: !674, line: 789, type: !2596)
!3288 = !DILocation(line: 0, scope: !3281)
!3289 = !DILocalVariable(name: "arg", arg: 1, scope: !3290, file: !674, line: 801, type: !151)
!3290 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !674, file: !674, line: 801, type: !3291, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !3293)
!3291 = !DISubroutineType(types: !3292)
!3292 = !{!88, !151, !149, !920, !2596}
!3293 = !{!3289, !3294, !3295, !3296, !3297, !3298, !3299, !3300, !3301}
!3294 = !DILocalVariable(name: "argsize", arg: 2, scope: !3290, file: !674, line: 801, type: !149)
!3295 = !DILocalVariable(name: "size", arg: 3, scope: !3290, file: !674, line: 801, type: !920)
!3296 = !DILocalVariable(name: "o", arg: 4, scope: !3290, file: !674, line: 802, type: !2596)
!3297 = !DILocalVariable(name: "p", scope: !3290, file: !674, line: 804, type: !2596)
!3298 = !DILocalVariable(name: "saved_errno", scope: !3290, file: !674, line: 805, type: !86)
!3299 = !DILocalVariable(name: "flags", scope: !3290, file: !674, line: 807, type: !86)
!3300 = !DILocalVariable(name: "bufsize", scope: !3290, file: !674, line: 808, type: !149)
!3301 = !DILocalVariable(name: "buf", scope: !3290, file: !674, line: 812, type: !88)
!3302 = !DILocation(line: 0, scope: !3290, inlinedAt: !3303)
!3303 = distinct !DILocation(line: 791, column: 10, scope: !3281)
!3304 = !DILocation(line: 804, column: 37, scope: !3290, inlinedAt: !3303)
!3305 = !DILocation(line: 805, column: 21, scope: !3290, inlinedAt: !3303)
!3306 = !DILocation(line: 807, column: 18, scope: !3290, inlinedAt: !3303)
!3307 = !DILocation(line: 807, column: 24, scope: !3290, inlinedAt: !3303)
!3308 = !DILocation(line: 808, column: 72, scope: !3290, inlinedAt: !3303)
!3309 = !DILocation(line: 809, column: 56, scope: !3290, inlinedAt: !3303)
!3310 = !DILocation(line: 810, column: 49, scope: !3290, inlinedAt: !3303)
!3311 = !DILocation(line: 811, column: 49, scope: !3290, inlinedAt: !3303)
!3312 = !DILocation(line: 808, column: 20, scope: !3290, inlinedAt: !3303)
!3313 = !DILocation(line: 811, column: 62, scope: !3290, inlinedAt: !3303)
!3314 = !DILocation(line: 812, column: 15, scope: !3290, inlinedAt: !3303)
!3315 = !DILocation(line: 813, column: 60, scope: !3290, inlinedAt: !3303)
!3316 = !DILocation(line: 815, column: 32, scope: !3290, inlinedAt: !3303)
!3317 = !DILocation(line: 815, column: 47, scope: !3290, inlinedAt: !3303)
!3318 = !DILocation(line: 813, column: 3, scope: !3290, inlinedAt: !3303)
!3319 = !DILocation(line: 816, column: 9, scope: !3290, inlinedAt: !3303)
!3320 = !DILocation(line: 791, column: 3, scope: !3281)
!3321 = !DILocation(line: 0, scope: !3290)
!3322 = !DILocation(line: 804, column: 37, scope: !3290)
!3323 = !DILocation(line: 805, column: 21, scope: !3290)
!3324 = !DILocation(line: 807, column: 18, scope: !3290)
!3325 = !DILocation(line: 807, column: 27, scope: !3290)
!3326 = !DILocation(line: 807, column: 24, scope: !3290)
!3327 = !DILocation(line: 808, column: 72, scope: !3290)
!3328 = !DILocation(line: 809, column: 56, scope: !3290)
!3329 = !DILocation(line: 810, column: 49, scope: !3290)
!3330 = !DILocation(line: 811, column: 49, scope: !3290)
!3331 = !DILocation(line: 808, column: 20, scope: !3290)
!3332 = !DILocation(line: 811, column: 62, scope: !3290)
!3333 = !DILocation(line: 812, column: 15, scope: !3290)
!3334 = !DILocation(line: 813, column: 60, scope: !3290)
!3335 = !DILocation(line: 815, column: 32, scope: !3290)
!3336 = !DILocation(line: 815, column: 47, scope: !3290)
!3337 = !DILocation(line: 813, column: 3, scope: !3290)
!3338 = !DILocation(line: 816, column: 9, scope: !3290)
!3339 = !DILocation(line: 817, column: 7, scope: !3290)
!3340 = !DILocation(line: 818, column: 11, scope: !3341)
!3341 = distinct !DILexicalBlock(scope: !3290, file: !674, line: 817, column: 7)
!3342 = !{!1265, !1265, i64 0}
!3343 = !DILocation(line: 818, column: 5, scope: !3341)
!3344 = !DILocation(line: 819, column: 3, scope: !3290)
!3345 = distinct !DISubprogram(name: "quotearg_free", scope: !674, file: !674, line: 837, type: !611, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !3346)
!3346 = !{!3347, !3348}
!3347 = !DILocalVariable(name: "sv", scope: !3345, file: !674, line: 839, type: !761)
!3348 = !DILocalVariable(name: "i", scope: !3349, file: !674, line: 840, type: !86)
!3349 = distinct !DILexicalBlock(scope: !3345, file: !674, line: 840, column: 3)
!3350 = !DILocation(line: 839, column: 24, scope: !3345)
!3351 = !DILocation(line: 0, scope: !3345)
!3352 = !DILocation(line: 0, scope: !3349)
!3353 = !DILocation(line: 840, column: 21, scope: !3354)
!3354 = distinct !DILexicalBlock(scope: !3349, file: !674, line: 840, column: 3)
!3355 = !DILocation(line: 840, column: 3, scope: !3349)
!3356 = !DILocation(line: 842, column: 13, scope: !3357)
!3357 = distinct !DILexicalBlock(scope: !3345, file: !674, line: 842, column: 7)
!3358 = !{!3359, !984, i64 8}
!3359 = !{!"slotvec", !1265, i64 0, !984, i64 8}
!3360 = !DILocation(line: 842, column: 17, scope: !3357)
!3361 = !DILocation(line: 842, column: 7, scope: !3345)
!3362 = !DILocation(line: 841, column: 17, scope: !3354)
!3363 = !DILocation(line: 841, column: 5, scope: !3354)
!3364 = !DILocation(line: 840, column: 32, scope: !3354)
!3365 = distinct !{!3365, !3355, !3366, !1104}
!3366 = !DILocation(line: 841, column: 20, scope: !3349)
!3367 = !DILocation(line: 844, column: 7, scope: !3368)
!3368 = distinct !DILexicalBlock(scope: !3357, file: !674, line: 843, column: 5)
!3369 = !DILocation(line: 845, column: 21, scope: !3368)
!3370 = !{!3359, !1265, i64 0}
!3371 = !DILocation(line: 846, column: 20, scope: !3368)
!3372 = !DILocation(line: 847, column: 5, scope: !3368)
!3373 = !DILocation(line: 848, column: 10, scope: !3374)
!3374 = distinct !DILexicalBlock(scope: !3345, file: !674, line: 848, column: 7)
!3375 = !DILocation(line: 848, column: 7, scope: !3345)
!3376 = !DILocation(line: 850, column: 7, scope: !3377)
!3377 = distinct !DILexicalBlock(scope: !3374, file: !674, line: 849, column: 5)
!3378 = !DILocation(line: 851, column: 15, scope: !3377)
!3379 = !DILocation(line: 852, column: 5, scope: !3377)
!3380 = !DILocation(line: 853, column: 10, scope: !3345)
!3381 = !DILocation(line: 854, column: 1, scope: !3345)
!3382 = distinct !DISubprogram(name: "quotearg_n", scope: !674, file: !674, line: 919, type: !1175, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !3383)
!3383 = !{!3384, !3385}
!3384 = !DILocalVariable(name: "n", arg: 1, scope: !3382, file: !674, line: 919, type: !86)
!3385 = !DILocalVariable(name: "arg", arg: 2, scope: !3382, file: !674, line: 919, type: !151)
!3386 = !DILocation(line: 0, scope: !3382)
!3387 = !DILocation(line: 921, column: 10, scope: !3382)
!3388 = !DILocation(line: 921, column: 3, scope: !3382)
!3389 = distinct !DISubprogram(name: "quotearg_n_options", scope: !674, file: !674, line: 866, type: !3390, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !3392)
!3390 = !DISubroutineType(types: !3391)
!3391 = !{!88, !86, !151, !149, !2596}
!3392 = !{!3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3403, !3404, !3406, !3407, !3408}
!3393 = !DILocalVariable(name: "n", arg: 1, scope: !3389, file: !674, line: 866, type: !86)
!3394 = !DILocalVariable(name: "arg", arg: 2, scope: !3389, file: !674, line: 866, type: !151)
!3395 = !DILocalVariable(name: "argsize", arg: 3, scope: !3389, file: !674, line: 866, type: !149)
!3396 = !DILocalVariable(name: "options", arg: 4, scope: !3389, file: !674, line: 867, type: !2596)
!3397 = !DILocalVariable(name: "saved_errno", scope: !3389, file: !674, line: 869, type: !86)
!3398 = !DILocalVariable(name: "sv", scope: !3389, file: !674, line: 871, type: !761)
!3399 = !DILocalVariable(name: "nslots_max", scope: !3389, file: !674, line: 873, type: !86)
!3400 = !DILocalVariable(name: "preallocated", scope: !3401, file: !674, line: 879, type: !145)
!3401 = distinct !DILexicalBlock(scope: !3402, file: !674, line: 878, column: 5)
!3402 = distinct !DILexicalBlock(scope: !3389, file: !674, line: 877, column: 7)
!3403 = !DILocalVariable(name: "new_nslots", scope: !3401, file: !674, line: 880, type: !500)
!3404 = !DILocalVariable(name: "size", scope: !3405, file: !674, line: 891, type: !149)
!3405 = distinct !DILexicalBlock(scope: !3389, file: !674, line: 890, column: 3)
!3406 = !DILocalVariable(name: "val", scope: !3405, file: !674, line: 892, type: !88)
!3407 = !DILocalVariable(name: "flags", scope: !3405, file: !674, line: 894, type: !86)
!3408 = !DILocalVariable(name: "qsize", scope: !3405, file: !674, line: 895, type: !149)
!3409 = !DILocation(line: 0, scope: !3389)
!3410 = !DILocation(line: 869, column: 21, scope: !3389)
!3411 = !DILocation(line: 871, column: 24, scope: !3389)
!3412 = !DILocation(line: 874, column: 17, scope: !3413)
!3413 = distinct !DILexicalBlock(scope: !3389, file: !674, line: 874, column: 7)
!3414 = !DILocation(line: 875, column: 5, scope: !3413)
!3415 = !DILocation(line: 877, column: 7, scope: !3402)
!3416 = !DILocation(line: 877, column: 14, scope: !3402)
!3417 = !DILocation(line: 877, column: 7, scope: !3389)
!3418 = !DILocation(line: 879, column: 31, scope: !3401)
!3419 = !DILocation(line: 0, scope: !3401)
!3420 = !DILocation(line: 880, column: 7, scope: !3401)
!3421 = !DILocation(line: 880, column: 26, scope: !3401)
!3422 = !DILocation(line: 880, column: 13, scope: !3401)
!3423 = !DILocation(line: 882, column: 31, scope: !3401)
!3424 = !DILocation(line: 883, column: 33, scope: !3401)
!3425 = !DILocation(line: 883, column: 42, scope: !3401)
!3426 = !DILocation(line: 883, column: 31, scope: !3401)
!3427 = !DILocation(line: 882, column: 22, scope: !3401)
!3428 = !DILocation(line: 882, column: 15, scope: !3401)
!3429 = !DILocation(line: 884, column: 11, scope: !3401)
!3430 = !DILocation(line: 885, column: 15, scope: !3431)
!3431 = distinct !DILexicalBlock(scope: !3401, file: !674, line: 884, column: 11)
!3432 = !{i64 0, i64 8, !3342, i64 8, i64 8, !983}
!3433 = !DILocation(line: 885, column: 9, scope: !3431)
!3434 = !DILocation(line: 886, column: 20, scope: !3401)
!3435 = !DILocation(line: 886, column: 18, scope: !3401)
!3436 = !DILocation(line: 886, column: 32, scope: !3401)
!3437 = !DILocation(line: 886, column: 43, scope: !3401)
!3438 = !DILocation(line: 886, column: 53, scope: !3401)
!3439 = !DILocation(line: 0, scope: !2811, inlinedAt: !3440)
!3440 = distinct !DILocation(line: 886, column: 7, scope: !3401)
!3441 = !DILocation(line: 59, column: 10, scope: !2811, inlinedAt: !3440)
!3442 = !DILocation(line: 887, column: 16, scope: !3401)
!3443 = !DILocation(line: 887, column: 14, scope: !3401)
!3444 = !DILocation(line: 888, column: 5, scope: !3402)
!3445 = !DILocation(line: 888, column: 5, scope: !3401)
!3446 = !DILocation(line: 891, column: 19, scope: !3405)
!3447 = !DILocation(line: 891, column: 25, scope: !3405)
!3448 = !DILocation(line: 0, scope: !3405)
!3449 = !DILocation(line: 892, column: 23, scope: !3405)
!3450 = !DILocation(line: 894, column: 26, scope: !3405)
!3451 = !DILocation(line: 894, column: 32, scope: !3405)
!3452 = !DILocation(line: 896, column: 55, scope: !3405)
!3453 = !DILocation(line: 897, column: 55, scope: !3405)
!3454 = !DILocation(line: 898, column: 55, scope: !3405)
!3455 = !DILocation(line: 899, column: 55, scope: !3405)
!3456 = !DILocation(line: 895, column: 20, scope: !3405)
!3457 = !DILocation(line: 901, column: 14, scope: !3458)
!3458 = distinct !DILexicalBlock(scope: !3405, file: !674, line: 901, column: 9)
!3459 = !DILocation(line: 901, column: 9, scope: !3405)
!3460 = !DILocation(line: 903, column: 35, scope: !3461)
!3461 = distinct !DILexicalBlock(scope: !3458, file: !674, line: 902, column: 7)
!3462 = !DILocation(line: 903, column: 20, scope: !3461)
!3463 = !DILocation(line: 904, column: 17, scope: !3464)
!3464 = distinct !DILexicalBlock(scope: !3461, file: !674, line: 904, column: 13)
!3465 = !DILocation(line: 904, column: 13, scope: !3461)
!3466 = !DILocation(line: 905, column: 11, scope: !3464)
!3467 = !DILocation(line: 906, column: 27, scope: !3461)
!3468 = !DILocation(line: 906, column: 19, scope: !3461)
!3469 = !DILocation(line: 907, column: 69, scope: !3461)
!3470 = !DILocation(line: 909, column: 44, scope: !3461)
!3471 = !DILocation(line: 910, column: 44, scope: !3461)
!3472 = !DILocation(line: 907, column: 9, scope: !3461)
!3473 = !DILocation(line: 911, column: 7, scope: !3461)
!3474 = !DILocation(line: 913, column: 11, scope: !3405)
!3475 = !DILocation(line: 914, column: 5, scope: !3405)
!3476 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !674, file: !674, line: 925, type: !3477, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !3479)
!3477 = !DISubroutineType(types: !3478)
!3478 = !{!88, !86, !151, !149}
!3479 = !{!3480, !3481, !3482}
!3480 = !DILocalVariable(name: "n", arg: 1, scope: !3476, file: !674, line: 925, type: !86)
!3481 = !DILocalVariable(name: "arg", arg: 2, scope: !3476, file: !674, line: 925, type: !151)
!3482 = !DILocalVariable(name: "argsize", arg: 3, scope: !3476, file: !674, line: 925, type: !149)
!3483 = !DILocation(line: 0, scope: !3476)
!3484 = !DILocation(line: 927, column: 10, scope: !3476)
!3485 = !DILocation(line: 927, column: 3, scope: !3476)
!3486 = distinct !DISubprogram(name: "quotearg", scope: !674, file: !674, line: 931, type: !1184, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !3487)
!3487 = !{!3488}
!3488 = !DILocalVariable(name: "arg", arg: 1, scope: !3486, file: !674, line: 931, type: !151)
!3489 = !DILocation(line: 0, scope: !3486)
!3490 = !DILocation(line: 0, scope: !3382, inlinedAt: !3491)
!3491 = distinct !DILocation(line: 933, column: 10, scope: !3486)
!3492 = !DILocation(line: 921, column: 10, scope: !3382, inlinedAt: !3491)
!3493 = !DILocation(line: 933, column: 3, scope: !3486)
!3494 = distinct !DISubprogram(name: "quotearg_mem", scope: !674, file: !674, line: 937, type: !3495, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !3497)
!3495 = !DISubroutineType(types: !3496)
!3496 = !{!88, !151, !149}
!3497 = !{!3498, !3499}
!3498 = !DILocalVariable(name: "arg", arg: 1, scope: !3494, file: !674, line: 937, type: !151)
!3499 = !DILocalVariable(name: "argsize", arg: 2, scope: !3494, file: !674, line: 937, type: !149)
!3500 = !DILocation(line: 0, scope: !3494)
!3501 = !DILocation(line: 0, scope: !3476, inlinedAt: !3502)
!3502 = distinct !DILocation(line: 939, column: 10, scope: !3494)
!3503 = !DILocation(line: 927, column: 10, scope: !3476, inlinedAt: !3502)
!3504 = !DILocation(line: 939, column: 3, scope: !3494)
!3505 = distinct !DISubprogram(name: "quotearg_n_style", scope: !674, file: !674, line: 943, type: !3506, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !3508)
!3506 = !DISubroutineType(types: !3507)
!3507 = !{!88, !86, !96, !151}
!3508 = !{!3509, !3510, !3511, !3512}
!3509 = !DILocalVariable(name: "n", arg: 1, scope: !3505, file: !674, line: 943, type: !86)
!3510 = !DILocalVariable(name: "s", arg: 2, scope: !3505, file: !674, line: 943, type: !96)
!3511 = !DILocalVariable(name: "arg", arg: 3, scope: !3505, file: !674, line: 943, type: !151)
!3512 = !DILocalVariable(name: "o", scope: !3505, file: !674, line: 945, type: !2597)
!3513 = !DILocation(line: 0, scope: !3505)
!3514 = !DILocation(line: 945, column: 3, scope: !3505)
!3515 = !DILocation(line: 945, column: 32, scope: !3505)
!3516 = !{!3517}
!3517 = distinct !{!3517, !3518, !"quoting_options_from_style: argument 0"}
!3518 = distinct !{!3518, !"quoting_options_from_style"}
!3519 = !DILocation(line: 945, column: 36, scope: !3505)
!3520 = !DILocalVariable(name: "style", arg: 1, scope: !3521, file: !674, line: 183, type: !96)
!3521 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !674, file: !674, line: 183, type: !3522, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !3524)
!3522 = !DISubroutineType(types: !3523)
!3523 = !{!713, !96}
!3524 = !{!3520, !3525}
!3525 = !DILocalVariable(name: "o", scope: !3521, file: !674, line: 185, type: !713)
!3526 = !DILocation(line: 0, scope: !3521, inlinedAt: !3527)
!3527 = distinct !DILocation(line: 945, column: 36, scope: !3505)
!3528 = !DILocation(line: 185, column: 26, scope: !3521, inlinedAt: !3527)
!3529 = !DILocation(line: 186, column: 13, scope: !3530, inlinedAt: !3527)
!3530 = distinct !DILexicalBlock(scope: !3521, file: !674, line: 186, column: 7)
!3531 = !DILocation(line: 186, column: 7, scope: !3521, inlinedAt: !3527)
!3532 = !DILocation(line: 187, column: 5, scope: !3530, inlinedAt: !3527)
!3533 = !DILocation(line: 188, column: 11, scope: !3521, inlinedAt: !3527)
!3534 = !DILocation(line: 946, column: 10, scope: !3505)
!3535 = !DILocation(line: 947, column: 1, scope: !3505)
!3536 = !DILocation(line: 946, column: 3, scope: !3505)
!3537 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !674, file: !674, line: 950, type: !3538, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !3540)
!3538 = !DISubroutineType(types: !3539)
!3539 = !{!88, !86, !96, !151, !149}
!3540 = !{!3541, !3542, !3543, !3544, !3545}
!3541 = !DILocalVariable(name: "n", arg: 1, scope: !3537, file: !674, line: 950, type: !86)
!3542 = !DILocalVariable(name: "s", arg: 2, scope: !3537, file: !674, line: 950, type: !96)
!3543 = !DILocalVariable(name: "arg", arg: 3, scope: !3537, file: !674, line: 951, type: !151)
!3544 = !DILocalVariable(name: "argsize", arg: 4, scope: !3537, file: !674, line: 951, type: !149)
!3545 = !DILocalVariable(name: "o", scope: !3537, file: !674, line: 953, type: !2597)
!3546 = !DILocation(line: 0, scope: !3537)
!3547 = !DILocation(line: 953, column: 3, scope: !3537)
!3548 = !DILocation(line: 953, column: 32, scope: !3537)
!3549 = !{!3550}
!3550 = distinct !{!3550, !3551, !"quoting_options_from_style: argument 0"}
!3551 = distinct !{!3551, !"quoting_options_from_style"}
!3552 = !DILocation(line: 953, column: 36, scope: !3537)
!3553 = !DILocation(line: 0, scope: !3521, inlinedAt: !3554)
!3554 = distinct !DILocation(line: 953, column: 36, scope: !3537)
!3555 = !DILocation(line: 185, column: 26, scope: !3521, inlinedAt: !3554)
!3556 = !DILocation(line: 186, column: 13, scope: !3530, inlinedAt: !3554)
!3557 = !DILocation(line: 186, column: 7, scope: !3521, inlinedAt: !3554)
!3558 = !DILocation(line: 187, column: 5, scope: !3530, inlinedAt: !3554)
!3559 = !DILocation(line: 188, column: 11, scope: !3521, inlinedAt: !3554)
!3560 = !DILocation(line: 954, column: 10, scope: !3537)
!3561 = !DILocation(line: 955, column: 1, scope: !3537)
!3562 = !DILocation(line: 954, column: 3, scope: !3537)
!3563 = distinct !DISubprogram(name: "quotearg_style", scope: !674, file: !674, line: 958, type: !3564, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !3566)
!3564 = !DISubroutineType(types: !3565)
!3565 = !{!88, !96, !151}
!3566 = !{!3567, !3568}
!3567 = !DILocalVariable(name: "s", arg: 1, scope: !3563, file: !674, line: 958, type: !96)
!3568 = !DILocalVariable(name: "arg", arg: 2, scope: !3563, file: !674, line: 958, type: !151)
!3569 = !DILocation(line: 0, scope: !3563)
!3570 = !DILocation(line: 0, scope: !3505, inlinedAt: !3571)
!3571 = distinct !DILocation(line: 960, column: 10, scope: !3563)
!3572 = !DILocation(line: 945, column: 3, scope: !3505, inlinedAt: !3571)
!3573 = !DILocation(line: 945, column: 32, scope: !3505, inlinedAt: !3571)
!3574 = !{!3575}
!3575 = distinct !{!3575, !3576, !"quoting_options_from_style: argument 0"}
!3576 = distinct !{!3576, !"quoting_options_from_style"}
!3577 = !DILocation(line: 945, column: 36, scope: !3505, inlinedAt: !3571)
!3578 = !DILocation(line: 0, scope: !3521, inlinedAt: !3579)
!3579 = distinct !DILocation(line: 945, column: 36, scope: !3505, inlinedAt: !3571)
!3580 = !DILocation(line: 185, column: 26, scope: !3521, inlinedAt: !3579)
!3581 = !DILocation(line: 186, column: 13, scope: !3530, inlinedAt: !3579)
!3582 = !DILocation(line: 186, column: 7, scope: !3521, inlinedAt: !3579)
!3583 = !DILocation(line: 187, column: 5, scope: !3530, inlinedAt: !3579)
!3584 = !DILocation(line: 188, column: 11, scope: !3521, inlinedAt: !3579)
!3585 = !DILocation(line: 946, column: 10, scope: !3505, inlinedAt: !3571)
!3586 = !DILocation(line: 947, column: 1, scope: !3505, inlinedAt: !3571)
!3587 = !DILocation(line: 960, column: 3, scope: !3563)
!3588 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !674, file: !674, line: 964, type: !3589, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !3591)
!3589 = !DISubroutineType(types: !3590)
!3590 = !{!88, !96, !151, !149}
!3591 = !{!3592, !3593, !3594}
!3592 = !DILocalVariable(name: "s", arg: 1, scope: !3588, file: !674, line: 964, type: !96)
!3593 = !DILocalVariable(name: "arg", arg: 2, scope: !3588, file: !674, line: 964, type: !151)
!3594 = !DILocalVariable(name: "argsize", arg: 3, scope: !3588, file: !674, line: 964, type: !149)
!3595 = !DILocation(line: 0, scope: !3588)
!3596 = !DILocation(line: 0, scope: !3537, inlinedAt: !3597)
!3597 = distinct !DILocation(line: 966, column: 10, scope: !3588)
!3598 = !DILocation(line: 953, column: 3, scope: !3537, inlinedAt: !3597)
!3599 = !DILocation(line: 953, column: 32, scope: !3537, inlinedAt: !3597)
!3600 = !{!3601}
!3601 = distinct !{!3601, !3602, !"quoting_options_from_style: argument 0"}
!3602 = distinct !{!3602, !"quoting_options_from_style"}
!3603 = !DILocation(line: 953, column: 36, scope: !3537, inlinedAt: !3597)
!3604 = !DILocation(line: 0, scope: !3521, inlinedAt: !3605)
!3605 = distinct !DILocation(line: 953, column: 36, scope: !3537, inlinedAt: !3597)
!3606 = !DILocation(line: 185, column: 26, scope: !3521, inlinedAt: !3605)
!3607 = !DILocation(line: 186, column: 13, scope: !3530, inlinedAt: !3605)
!3608 = !DILocation(line: 186, column: 7, scope: !3521, inlinedAt: !3605)
!3609 = !DILocation(line: 187, column: 5, scope: !3530, inlinedAt: !3605)
!3610 = !DILocation(line: 188, column: 11, scope: !3521, inlinedAt: !3605)
!3611 = !DILocation(line: 954, column: 10, scope: !3537, inlinedAt: !3597)
!3612 = !DILocation(line: 955, column: 1, scope: !3537, inlinedAt: !3597)
!3613 = !DILocation(line: 966, column: 3, scope: !3588)
!3614 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !674, file: !674, line: 970, type: !3615, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !3617)
!3615 = !DISubroutineType(types: !3616)
!3616 = !{!88, !151, !149, !4}
!3617 = !{!3618, !3619, !3620, !3621}
!3618 = !DILocalVariable(name: "arg", arg: 1, scope: !3614, file: !674, line: 970, type: !151)
!3619 = !DILocalVariable(name: "argsize", arg: 2, scope: !3614, file: !674, line: 970, type: !149)
!3620 = !DILocalVariable(name: "ch", arg: 3, scope: !3614, file: !674, line: 970, type: !4)
!3621 = !DILocalVariable(name: "options", scope: !3614, file: !674, line: 972, type: !713)
!3622 = !DILocation(line: 0, scope: !3614)
!3623 = !DILocation(line: 972, column: 3, scope: !3614)
!3624 = !DILocation(line: 972, column: 26, scope: !3614)
!3625 = !DILocation(line: 973, column: 13, scope: !3614)
!3626 = !{i64 0, i64 4, !1066, i64 4, i64 4, !1057, i64 8, i64 32, !1066, i64 40, i64 8, !983, i64 48, i64 8, !983}
!3627 = !DILocation(line: 0, scope: !2616, inlinedAt: !3628)
!3628 = distinct !DILocation(line: 974, column: 3, scope: !3614)
!3629 = !DILocation(line: 147, column: 41, scope: !2616, inlinedAt: !3628)
!3630 = !DILocation(line: 147, column: 62, scope: !2616, inlinedAt: !3628)
!3631 = !DILocation(line: 147, column: 57, scope: !2616, inlinedAt: !3628)
!3632 = !DILocation(line: 148, column: 15, scope: !2616, inlinedAt: !3628)
!3633 = !DILocation(line: 149, column: 21, scope: !2616, inlinedAt: !3628)
!3634 = !DILocation(line: 149, column: 24, scope: !2616, inlinedAt: !3628)
!3635 = !DILocation(line: 150, column: 19, scope: !2616, inlinedAt: !3628)
!3636 = !DILocation(line: 150, column: 24, scope: !2616, inlinedAt: !3628)
!3637 = !DILocation(line: 150, column: 6, scope: !2616, inlinedAt: !3628)
!3638 = !DILocation(line: 975, column: 10, scope: !3614)
!3639 = !DILocation(line: 976, column: 1, scope: !3614)
!3640 = !DILocation(line: 975, column: 3, scope: !3614)
!3641 = distinct !DISubprogram(name: "quotearg_char", scope: !674, file: !674, line: 979, type: !3642, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !3644)
!3642 = !DISubroutineType(types: !3643)
!3643 = !{!88, !151, !4}
!3644 = !{!3645, !3646}
!3645 = !DILocalVariable(name: "arg", arg: 1, scope: !3641, file: !674, line: 979, type: !151)
!3646 = !DILocalVariable(name: "ch", arg: 2, scope: !3641, file: !674, line: 979, type: !4)
!3647 = !DILocation(line: 0, scope: !3641)
!3648 = !DILocation(line: 0, scope: !3614, inlinedAt: !3649)
!3649 = distinct !DILocation(line: 981, column: 10, scope: !3641)
!3650 = !DILocation(line: 972, column: 3, scope: !3614, inlinedAt: !3649)
!3651 = !DILocation(line: 972, column: 26, scope: !3614, inlinedAt: !3649)
!3652 = !DILocation(line: 973, column: 13, scope: !3614, inlinedAt: !3649)
!3653 = !DILocation(line: 0, scope: !2616, inlinedAt: !3654)
!3654 = distinct !DILocation(line: 974, column: 3, scope: !3614, inlinedAt: !3649)
!3655 = !DILocation(line: 147, column: 41, scope: !2616, inlinedAt: !3654)
!3656 = !DILocation(line: 147, column: 62, scope: !2616, inlinedAt: !3654)
!3657 = !DILocation(line: 147, column: 57, scope: !2616, inlinedAt: !3654)
!3658 = !DILocation(line: 148, column: 15, scope: !2616, inlinedAt: !3654)
!3659 = !DILocation(line: 149, column: 21, scope: !2616, inlinedAt: !3654)
!3660 = !DILocation(line: 149, column: 24, scope: !2616, inlinedAt: !3654)
!3661 = !DILocation(line: 150, column: 19, scope: !2616, inlinedAt: !3654)
!3662 = !DILocation(line: 150, column: 24, scope: !2616, inlinedAt: !3654)
!3663 = !DILocation(line: 150, column: 6, scope: !2616, inlinedAt: !3654)
!3664 = !DILocation(line: 975, column: 10, scope: !3614, inlinedAt: !3649)
!3665 = !DILocation(line: 976, column: 1, scope: !3614, inlinedAt: !3649)
!3666 = !DILocation(line: 981, column: 3, scope: !3641)
!3667 = distinct !DISubprogram(name: "quotearg_colon", scope: !674, file: !674, line: 985, type: !1184, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !3668)
!3668 = !{!3669}
!3669 = !DILocalVariable(name: "arg", arg: 1, scope: !3667, file: !674, line: 985, type: !151)
!3670 = !DILocation(line: 0, scope: !3667)
!3671 = !DILocation(line: 0, scope: !3641, inlinedAt: !3672)
!3672 = distinct !DILocation(line: 987, column: 10, scope: !3667)
!3673 = !DILocation(line: 0, scope: !3614, inlinedAt: !3674)
!3674 = distinct !DILocation(line: 981, column: 10, scope: !3641, inlinedAt: !3672)
!3675 = !DILocation(line: 972, column: 3, scope: !3614, inlinedAt: !3674)
!3676 = !DILocation(line: 972, column: 26, scope: !3614, inlinedAt: !3674)
!3677 = !DILocation(line: 973, column: 13, scope: !3614, inlinedAt: !3674)
!3678 = !DILocation(line: 0, scope: !2616, inlinedAt: !3679)
!3679 = distinct !DILocation(line: 974, column: 3, scope: !3614, inlinedAt: !3674)
!3680 = !DILocation(line: 147, column: 57, scope: !2616, inlinedAt: !3679)
!3681 = !DILocation(line: 149, column: 21, scope: !2616, inlinedAt: !3679)
!3682 = !DILocation(line: 150, column: 6, scope: !2616, inlinedAt: !3679)
!3683 = !DILocation(line: 975, column: 10, scope: !3614, inlinedAt: !3674)
!3684 = !DILocation(line: 976, column: 1, scope: !3614, inlinedAt: !3674)
!3685 = !DILocation(line: 987, column: 3, scope: !3667)
!3686 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !674, file: !674, line: 991, type: !3495, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !3687)
!3687 = !{!3688, !3689}
!3688 = !DILocalVariable(name: "arg", arg: 1, scope: !3686, file: !674, line: 991, type: !151)
!3689 = !DILocalVariable(name: "argsize", arg: 2, scope: !3686, file: !674, line: 991, type: !149)
!3690 = !DILocation(line: 0, scope: !3686)
!3691 = !DILocation(line: 0, scope: !3614, inlinedAt: !3692)
!3692 = distinct !DILocation(line: 993, column: 10, scope: !3686)
!3693 = !DILocation(line: 972, column: 3, scope: !3614, inlinedAt: !3692)
!3694 = !DILocation(line: 972, column: 26, scope: !3614, inlinedAt: !3692)
!3695 = !DILocation(line: 973, column: 13, scope: !3614, inlinedAt: !3692)
!3696 = !DILocation(line: 0, scope: !2616, inlinedAt: !3697)
!3697 = distinct !DILocation(line: 974, column: 3, scope: !3614, inlinedAt: !3692)
!3698 = !DILocation(line: 147, column: 57, scope: !2616, inlinedAt: !3697)
!3699 = !DILocation(line: 149, column: 21, scope: !2616, inlinedAt: !3697)
!3700 = !DILocation(line: 150, column: 6, scope: !2616, inlinedAt: !3697)
!3701 = !DILocation(line: 975, column: 10, scope: !3614, inlinedAt: !3692)
!3702 = !DILocation(line: 976, column: 1, scope: !3614, inlinedAt: !3692)
!3703 = !DILocation(line: 993, column: 3, scope: !3686)
!3704 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !674, file: !674, line: 997, type: !3506, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !3705)
!3705 = !{!3706, !3707, !3708, !3709}
!3706 = !DILocalVariable(name: "n", arg: 1, scope: !3704, file: !674, line: 997, type: !86)
!3707 = !DILocalVariable(name: "s", arg: 2, scope: !3704, file: !674, line: 997, type: !96)
!3708 = !DILocalVariable(name: "arg", arg: 3, scope: !3704, file: !674, line: 997, type: !151)
!3709 = !DILocalVariable(name: "options", scope: !3704, file: !674, line: 999, type: !713)
!3710 = !DILocation(line: 185, column: 26, scope: !3521, inlinedAt: !3711)
!3711 = distinct !DILocation(line: 1000, column: 13, scope: !3704)
!3712 = !DILocation(line: 0, scope: !3704)
!3713 = !DILocation(line: 999, column: 3, scope: !3704)
!3714 = !DILocation(line: 999, column: 26, scope: !3704)
!3715 = !DILocation(line: 0, scope: !3521, inlinedAt: !3711)
!3716 = !DILocation(line: 186, column: 13, scope: !3530, inlinedAt: !3711)
!3717 = !DILocation(line: 186, column: 7, scope: !3521, inlinedAt: !3711)
!3718 = !DILocation(line: 187, column: 5, scope: !3530, inlinedAt: !3711)
!3719 = !{!3720}
!3720 = distinct !{!3720, !3721, !"quoting_options_from_style: argument 0"}
!3721 = distinct !{!3721, !"quoting_options_from_style"}
!3722 = !DILocation(line: 1000, column: 13, scope: !3704)
!3723 = !DILocation(line: 0, scope: !2616, inlinedAt: !3724)
!3724 = distinct !DILocation(line: 1001, column: 3, scope: !3704)
!3725 = !DILocation(line: 147, column: 57, scope: !2616, inlinedAt: !3724)
!3726 = !DILocation(line: 149, column: 21, scope: !2616, inlinedAt: !3724)
!3727 = !DILocation(line: 150, column: 6, scope: !2616, inlinedAt: !3724)
!3728 = !DILocation(line: 1002, column: 10, scope: !3704)
!3729 = !DILocation(line: 1003, column: 1, scope: !3704)
!3730 = !DILocation(line: 1002, column: 3, scope: !3704)
!3731 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !674, file: !674, line: 1006, type: !3732, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !3734)
!3732 = !DISubroutineType(types: !3733)
!3733 = !{!88, !86, !151, !151, !151}
!3734 = !{!3735, !3736, !3737, !3738}
!3735 = !DILocalVariable(name: "n", arg: 1, scope: !3731, file: !674, line: 1006, type: !86)
!3736 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3731, file: !674, line: 1006, type: !151)
!3737 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3731, file: !674, line: 1007, type: !151)
!3738 = !DILocalVariable(name: "arg", arg: 4, scope: !3731, file: !674, line: 1007, type: !151)
!3739 = !DILocation(line: 0, scope: !3731)
!3740 = !DILocalVariable(name: "n", arg: 1, scope: !3741, file: !674, line: 1014, type: !86)
!3741 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !674, file: !674, line: 1014, type: !3742, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !3744)
!3742 = !DISubroutineType(types: !3743)
!3743 = !{!88, !86, !151, !151, !151, !149}
!3744 = !{!3740, !3745, !3746, !3747, !3748, !3749}
!3745 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3741, file: !674, line: 1014, type: !151)
!3746 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3741, file: !674, line: 1015, type: !151)
!3747 = !DILocalVariable(name: "arg", arg: 4, scope: !3741, file: !674, line: 1016, type: !151)
!3748 = !DILocalVariable(name: "argsize", arg: 5, scope: !3741, file: !674, line: 1016, type: !149)
!3749 = !DILocalVariable(name: "o", scope: !3741, file: !674, line: 1018, type: !713)
!3750 = !DILocation(line: 0, scope: !3741, inlinedAt: !3751)
!3751 = distinct !DILocation(line: 1009, column: 10, scope: !3731)
!3752 = !DILocation(line: 1018, column: 3, scope: !3741, inlinedAt: !3751)
!3753 = !DILocation(line: 1018, column: 26, scope: !3741, inlinedAt: !3751)
!3754 = !DILocation(line: 1018, column: 30, scope: !3741, inlinedAt: !3751)
!3755 = !DILocation(line: 0, scope: !2656, inlinedAt: !3756)
!3756 = distinct !DILocation(line: 1019, column: 3, scope: !3741, inlinedAt: !3751)
!3757 = !DILocation(line: 174, column: 12, scope: !2656, inlinedAt: !3756)
!3758 = !DILocation(line: 175, column: 8, scope: !2669, inlinedAt: !3756)
!3759 = !DILocation(line: 175, column: 19, scope: !2669, inlinedAt: !3756)
!3760 = !DILocation(line: 176, column: 5, scope: !2669, inlinedAt: !3756)
!3761 = !DILocation(line: 177, column: 6, scope: !2656, inlinedAt: !3756)
!3762 = !DILocation(line: 177, column: 17, scope: !2656, inlinedAt: !3756)
!3763 = !DILocation(line: 178, column: 6, scope: !2656, inlinedAt: !3756)
!3764 = !DILocation(line: 178, column: 18, scope: !2656, inlinedAt: !3756)
!3765 = !DILocation(line: 1020, column: 10, scope: !3741, inlinedAt: !3751)
!3766 = !DILocation(line: 1021, column: 1, scope: !3741, inlinedAt: !3751)
!3767 = !DILocation(line: 1009, column: 3, scope: !3731)
!3768 = !DILocation(line: 0, scope: !3741)
!3769 = !DILocation(line: 1018, column: 3, scope: !3741)
!3770 = !DILocation(line: 1018, column: 26, scope: !3741)
!3771 = !DILocation(line: 1018, column: 30, scope: !3741)
!3772 = !DILocation(line: 0, scope: !2656, inlinedAt: !3773)
!3773 = distinct !DILocation(line: 1019, column: 3, scope: !3741)
!3774 = !DILocation(line: 174, column: 12, scope: !2656, inlinedAt: !3773)
!3775 = !DILocation(line: 175, column: 8, scope: !2669, inlinedAt: !3773)
!3776 = !DILocation(line: 175, column: 19, scope: !2669, inlinedAt: !3773)
!3777 = !DILocation(line: 176, column: 5, scope: !2669, inlinedAt: !3773)
!3778 = !DILocation(line: 177, column: 6, scope: !2656, inlinedAt: !3773)
!3779 = !DILocation(line: 177, column: 17, scope: !2656, inlinedAt: !3773)
!3780 = !DILocation(line: 178, column: 6, scope: !2656, inlinedAt: !3773)
!3781 = !DILocation(line: 178, column: 18, scope: !2656, inlinedAt: !3773)
!3782 = !DILocation(line: 1020, column: 10, scope: !3741)
!3783 = !DILocation(line: 1021, column: 1, scope: !3741)
!3784 = !DILocation(line: 1020, column: 3, scope: !3741)
!3785 = distinct !DISubprogram(name: "quotearg_custom", scope: !674, file: !674, line: 1024, type: !3786, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !3788)
!3786 = !DISubroutineType(types: !3787)
!3787 = !{!88, !151, !151, !151}
!3788 = !{!3789, !3790, !3791}
!3789 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3785, file: !674, line: 1024, type: !151)
!3790 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3785, file: !674, line: 1024, type: !151)
!3791 = !DILocalVariable(name: "arg", arg: 3, scope: !3785, file: !674, line: 1025, type: !151)
!3792 = !DILocation(line: 0, scope: !3785)
!3793 = !DILocation(line: 0, scope: !3731, inlinedAt: !3794)
!3794 = distinct !DILocation(line: 1027, column: 10, scope: !3785)
!3795 = !DILocation(line: 0, scope: !3741, inlinedAt: !3796)
!3796 = distinct !DILocation(line: 1009, column: 10, scope: !3731, inlinedAt: !3794)
!3797 = !DILocation(line: 1018, column: 3, scope: !3741, inlinedAt: !3796)
!3798 = !DILocation(line: 1018, column: 26, scope: !3741, inlinedAt: !3796)
!3799 = !DILocation(line: 1018, column: 30, scope: !3741, inlinedAt: !3796)
!3800 = !DILocation(line: 0, scope: !2656, inlinedAt: !3801)
!3801 = distinct !DILocation(line: 1019, column: 3, scope: !3741, inlinedAt: !3796)
!3802 = !DILocation(line: 174, column: 12, scope: !2656, inlinedAt: !3801)
!3803 = !DILocation(line: 175, column: 8, scope: !2669, inlinedAt: !3801)
!3804 = !DILocation(line: 175, column: 19, scope: !2669, inlinedAt: !3801)
!3805 = !DILocation(line: 176, column: 5, scope: !2669, inlinedAt: !3801)
!3806 = !DILocation(line: 177, column: 6, scope: !2656, inlinedAt: !3801)
!3807 = !DILocation(line: 177, column: 17, scope: !2656, inlinedAt: !3801)
!3808 = !DILocation(line: 178, column: 6, scope: !2656, inlinedAt: !3801)
!3809 = !DILocation(line: 178, column: 18, scope: !2656, inlinedAt: !3801)
!3810 = !DILocation(line: 1020, column: 10, scope: !3741, inlinedAt: !3796)
!3811 = !DILocation(line: 1021, column: 1, scope: !3741, inlinedAt: !3796)
!3812 = !DILocation(line: 1027, column: 3, scope: !3785)
!3813 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !674, file: !674, line: 1031, type: !3814, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !3816)
!3814 = !DISubroutineType(types: !3815)
!3815 = !{!88, !151, !151, !151, !149}
!3816 = !{!3817, !3818, !3819, !3820}
!3817 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3813, file: !674, line: 1031, type: !151)
!3818 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3813, file: !674, line: 1031, type: !151)
!3819 = !DILocalVariable(name: "arg", arg: 3, scope: !3813, file: !674, line: 1032, type: !151)
!3820 = !DILocalVariable(name: "argsize", arg: 4, scope: !3813, file: !674, line: 1032, type: !149)
!3821 = !DILocation(line: 0, scope: !3813)
!3822 = !DILocation(line: 0, scope: !3741, inlinedAt: !3823)
!3823 = distinct !DILocation(line: 1034, column: 10, scope: !3813)
!3824 = !DILocation(line: 1018, column: 3, scope: !3741, inlinedAt: !3823)
!3825 = !DILocation(line: 1018, column: 26, scope: !3741, inlinedAt: !3823)
!3826 = !DILocation(line: 1018, column: 30, scope: !3741, inlinedAt: !3823)
!3827 = !DILocation(line: 0, scope: !2656, inlinedAt: !3828)
!3828 = distinct !DILocation(line: 1019, column: 3, scope: !3741, inlinedAt: !3823)
!3829 = !DILocation(line: 174, column: 12, scope: !2656, inlinedAt: !3828)
!3830 = !DILocation(line: 175, column: 8, scope: !2669, inlinedAt: !3828)
!3831 = !DILocation(line: 175, column: 19, scope: !2669, inlinedAt: !3828)
!3832 = !DILocation(line: 176, column: 5, scope: !2669, inlinedAt: !3828)
!3833 = !DILocation(line: 177, column: 6, scope: !2656, inlinedAt: !3828)
!3834 = !DILocation(line: 177, column: 17, scope: !2656, inlinedAt: !3828)
!3835 = !DILocation(line: 178, column: 6, scope: !2656, inlinedAt: !3828)
!3836 = !DILocation(line: 178, column: 18, scope: !2656, inlinedAt: !3828)
!3837 = !DILocation(line: 1020, column: 10, scope: !3741, inlinedAt: !3823)
!3838 = !DILocation(line: 1021, column: 1, scope: !3741, inlinedAt: !3823)
!3839 = !DILocation(line: 1034, column: 3, scope: !3813)
!3840 = distinct !DISubprogram(name: "quote_n_mem", scope: !674, file: !674, line: 1049, type: !3841, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !3843)
!3841 = !DISubroutineType(types: !3842)
!3842 = !{!151, !86, !151, !149}
!3843 = !{!3844, !3845, !3846}
!3844 = !DILocalVariable(name: "n", arg: 1, scope: !3840, file: !674, line: 1049, type: !86)
!3845 = !DILocalVariable(name: "arg", arg: 2, scope: !3840, file: !674, line: 1049, type: !151)
!3846 = !DILocalVariable(name: "argsize", arg: 3, scope: !3840, file: !674, line: 1049, type: !149)
!3847 = !DILocation(line: 0, scope: !3840)
!3848 = !DILocation(line: 1051, column: 10, scope: !3840)
!3849 = !DILocation(line: 1051, column: 3, scope: !3840)
!3850 = distinct !DISubprogram(name: "quote_mem", scope: !674, file: !674, line: 1055, type: !3851, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !3853)
!3851 = !DISubroutineType(types: !3852)
!3852 = !{!151, !151, !149}
!3853 = !{!3854, !3855}
!3854 = !DILocalVariable(name: "arg", arg: 1, scope: !3850, file: !674, line: 1055, type: !151)
!3855 = !DILocalVariable(name: "argsize", arg: 2, scope: !3850, file: !674, line: 1055, type: !149)
!3856 = !DILocation(line: 0, scope: !3850)
!3857 = !DILocation(line: 0, scope: !3840, inlinedAt: !3858)
!3858 = distinct !DILocation(line: 1057, column: 10, scope: !3850)
!3859 = !DILocation(line: 1051, column: 10, scope: !3840, inlinedAt: !3858)
!3860 = !DILocation(line: 1057, column: 3, scope: !3850)
!3861 = distinct !DISubprogram(name: "quote_n", scope: !674, file: !674, line: 1061, type: !3862, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !3864)
!3862 = !DISubroutineType(types: !3863)
!3863 = !{!151, !86, !151}
!3864 = !{!3865, !3866}
!3865 = !DILocalVariable(name: "n", arg: 1, scope: !3861, file: !674, line: 1061, type: !86)
!3866 = !DILocalVariable(name: "arg", arg: 2, scope: !3861, file: !674, line: 1061, type: !151)
!3867 = !DILocation(line: 0, scope: !3861)
!3868 = !DILocation(line: 0, scope: !3840, inlinedAt: !3869)
!3869 = distinct !DILocation(line: 1063, column: 10, scope: !3861)
!3870 = !DILocation(line: 1051, column: 10, scope: !3840, inlinedAt: !3869)
!3871 = !DILocation(line: 1063, column: 3, scope: !3861)
!3872 = distinct !DISubprogram(name: "quote", scope: !674, file: !674, line: 1067, type: !3873, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !3875)
!3873 = !DISubroutineType(types: !3874)
!3874 = !{!151, !151}
!3875 = !{!3876}
!3876 = !DILocalVariable(name: "arg", arg: 1, scope: !3872, file: !674, line: 1067, type: !151)
!3877 = !DILocation(line: 0, scope: !3872)
!3878 = !DILocation(line: 0, scope: !3861, inlinedAt: !3879)
!3879 = distinct !DILocation(line: 1069, column: 10, scope: !3872)
!3880 = !DILocation(line: 0, scope: !3840, inlinedAt: !3881)
!3881 = distinct !DILocation(line: 1063, column: 10, scope: !3861, inlinedAt: !3879)
!3882 = !DILocation(line: 1051, column: 10, scope: !3840, inlinedAt: !3881)
!3883 = !DILocation(line: 1069, column: 3, scope: !3872)
!3884 = distinct !DISubprogram(name: "safe_write", scope: !3885, file: !3885, line: 56, type: !3886, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !901, retainedNodes: !3889)
!3885 = !DIFile(filename: "./lib/safe-read.c", directory: "/src", checksumkind: CSK_MD5, checksum: "434e548fbeff241cc07e1dbcc7b4611f")
!3886 = !DISubroutineType(types: !3887)
!3887 = !{!502, !86, !3888, !500}
!3888 = !DIDerivedType(tag: DW_TAG_typedef, name: "bufptr", file: !3885, line: 45, baseType: !1206)
!3889 = !{!3890, !3891, !3892, !3893}
!3890 = !DILocalVariable(name: "fd", arg: 1, scope: !3884, file: !3885, line: 56, type: !86)
!3891 = !DILocalVariable(name: "buf", arg: 2, scope: !3884, file: !3885, line: 56, type: !3888)
!3892 = !DILocalVariable(name: "count", arg: 3, scope: !3884, file: !3885, line: 56, type: !500)
!3893 = !DILocalVariable(name: "result", scope: !3894, file: !3885, line: 60, type: !3897)
!3894 = distinct !DILexicalBlock(scope: !3895, file: !3885, line: 59, column: 5)
!3895 = distinct !DILexicalBlock(scope: !3896, file: !3885, line: 58, column: 3)
!3896 = distinct !DILexicalBlock(scope: !3884, file: !3885, line: 58, column: 3)
!3897 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !3898, line: 108, baseType: !1395)
!3898 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!3899 = !DILocation(line: 0, scope: !3884)
!3900 = !DILocation(line: 58, column: 3, scope: !3884)
!3901 = !DILocation(line: 62, column: 11, scope: !3894)
!3902 = !DILocation(line: 60, column: 24, scope: !3894)
!3903 = !DILocation(line: 0, scope: !3894)
!3904 = !DILocation(line: 62, column: 13, scope: !3905)
!3905 = distinct !DILexicalBlock(scope: !3894, file: !3885, line: 62, column: 11)
!3906 = !DILocation(line: 64, column: 16, scope: !3907)
!3907 = distinct !DILexicalBlock(scope: !3905, file: !3885, line: 64, column: 16)
!3908 = !DILocation(line: 64, column: 16, scope: !3905)
!3909 = distinct !{!3909, !3910, !3911}
!3910 = !DILocation(line: 58, column: 3, scope: !3896)
!3911 = !DILocation(line: 70, column: 5, scope: !3896)
!3912 = !DILocation(line: 66, column: 22, scope: !3913)
!3913 = distinct !DILexicalBlock(scope: !3907, file: !3885, line: 66, column: 16)
!3914 = !DILocation(line: 0, scope: !3895)
!3915 = !DILocation(line: 71, column: 1, scope: !3884)
!3916 = !DISubprogram(name: "write", scope: !1949, file: !1949, line: 378, type: !3917, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !992)
!3917 = !DISubroutineType(types: !3918)
!3918 = !{!3897, !86, !1206, !149}
!3919 = distinct !DISubprogram(name: "version_etc_arn", scope: !774, file: !774, line: 61, type: !3920, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !904, retainedNodes: !3957)
!3920 = !DISubroutineType(types: !3921)
!3921 = !{null, !3922, !151, !151, !151, !3956, !149}
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3923 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !290, line: 7, baseType: !3924)
!3924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !292, line: 49, size: 1728, elements: !3925)
!3925 = !{!3926, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !3952, !3953, !3954, !3955}
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3924, file: !292, line: 51, baseType: !86, size: 32)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3924, file: !292, line: 54, baseType: !88, size: 64, offset: 64)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3924, file: !292, line: 55, baseType: !88, size: 64, offset: 128)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3924, file: !292, line: 56, baseType: !88, size: 64, offset: 192)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3924, file: !292, line: 57, baseType: !88, size: 64, offset: 256)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3924, file: !292, line: 58, baseType: !88, size: 64, offset: 320)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3924, file: !292, line: 59, baseType: !88, size: 64, offset: 384)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3924, file: !292, line: 60, baseType: !88, size: 64, offset: 448)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3924, file: !292, line: 61, baseType: !88, size: 64, offset: 512)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3924, file: !292, line: 64, baseType: !88, size: 64, offset: 576)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3924, file: !292, line: 65, baseType: !88, size: 64, offset: 640)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3924, file: !292, line: 66, baseType: !88, size: 64, offset: 704)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3924, file: !292, line: 68, baseType: !307, size: 64, offset: 768)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3924, file: !292, line: 70, baseType: !3940, size: 64, offset: 832)
!3940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3924, size: 64)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3924, file: !292, line: 72, baseType: !86, size: 32, offset: 896)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3924, file: !292, line: 73, baseType: !86, size: 32, offset: 928)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3924, file: !292, line: 74, baseType: !314, size: 64, offset: 960)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3924, file: !292, line: 77, baseType: !148, size: 16, offset: 1024)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3924, file: !292, line: 78, baseType: !318, size: 8, offset: 1040)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3924, file: !292, line: 79, baseType: !199, size: 8, offset: 1048)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3924, file: !292, line: 81, baseType: !321, size: 64, offset: 1088)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3924, file: !292, line: 89, baseType: !324, size: 64, offset: 1152)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3924, file: !292, line: 91, baseType: !326, size: 64, offset: 1216)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3924, file: !292, line: 92, baseType: !329, size: 64, offset: 1280)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3924, file: !292, line: 93, baseType: !3940, size: 64, offset: 1344)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3924, file: !292, line: 94, baseType: !144, size: 64, offset: 1408)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3924, file: !292, line: 95, baseType: !149, size: 64, offset: 1472)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3924, file: !292, line: 96, baseType: !86, size: 32, offset: 1536)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3924, file: !292, line: 98, baseType: !228, size: 160, offset: 1568)
!3956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!3957 = !{!3958, !3959, !3960, !3961, !3962, !3963}
!3958 = !DILocalVariable(name: "stream", arg: 1, scope: !3919, file: !774, line: 61, type: !3922)
!3959 = !DILocalVariable(name: "command_name", arg: 2, scope: !3919, file: !774, line: 62, type: !151)
!3960 = !DILocalVariable(name: "package", arg: 3, scope: !3919, file: !774, line: 62, type: !151)
!3961 = !DILocalVariable(name: "version", arg: 4, scope: !3919, file: !774, line: 63, type: !151)
!3962 = !DILocalVariable(name: "authors", arg: 5, scope: !3919, file: !774, line: 64, type: !3956)
!3963 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3919, file: !774, line: 64, type: !149)
!3964 = !DILocation(line: 0, scope: !3919)
!3965 = !DILocation(line: 66, column: 7, scope: !3966)
!3966 = distinct !DILexicalBlock(scope: !3919, file: !774, line: 66, column: 7)
!3967 = !DILocation(line: 66, column: 7, scope: !3919)
!3968 = !DILocation(line: 67, column: 5, scope: !3966)
!3969 = !DILocation(line: 69, column: 5, scope: !3966)
!3970 = !DILocation(line: 83, column: 3, scope: !3919)
!3971 = !DILocation(line: 85, column: 3, scope: !3919)
!3972 = !DILocation(line: 88, column: 3, scope: !3919)
!3973 = !DILocation(line: 95, column: 3, scope: !3919)
!3974 = !DILocation(line: 97, column: 3, scope: !3919)
!3975 = !DILocation(line: 105, column: 7, scope: !3976)
!3976 = distinct !DILexicalBlock(scope: !3919, file: !774, line: 98, column: 5)
!3977 = !DILocation(line: 106, column: 7, scope: !3976)
!3978 = !DILocation(line: 109, column: 7, scope: !3976)
!3979 = !DILocation(line: 110, column: 7, scope: !3976)
!3980 = !DILocation(line: 113, column: 7, scope: !3976)
!3981 = !DILocation(line: 115, column: 7, scope: !3976)
!3982 = !DILocation(line: 120, column: 7, scope: !3976)
!3983 = !DILocation(line: 122, column: 7, scope: !3976)
!3984 = !DILocation(line: 127, column: 7, scope: !3976)
!3985 = !DILocation(line: 129, column: 7, scope: !3976)
!3986 = !DILocation(line: 134, column: 7, scope: !3976)
!3987 = !DILocation(line: 137, column: 7, scope: !3976)
!3988 = !DILocation(line: 142, column: 7, scope: !3976)
!3989 = !DILocation(line: 145, column: 7, scope: !3976)
!3990 = !DILocation(line: 150, column: 7, scope: !3976)
!3991 = !DILocation(line: 154, column: 7, scope: !3976)
!3992 = !DILocation(line: 159, column: 7, scope: !3976)
!3993 = !DILocation(line: 163, column: 7, scope: !3976)
!3994 = !DILocation(line: 170, column: 7, scope: !3976)
!3995 = !DILocation(line: 174, column: 7, scope: !3976)
!3996 = !DILocation(line: 176, column: 1, scope: !3919)
!3997 = distinct !DISubprogram(name: "version_etc_ar", scope: !774, file: !774, line: 183, type: !3998, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !904, retainedNodes: !4000)
!3998 = !DISubroutineType(types: !3999)
!3999 = !{null, !3922, !151, !151, !151, !3956}
!4000 = !{!4001, !4002, !4003, !4004, !4005, !4006}
!4001 = !DILocalVariable(name: "stream", arg: 1, scope: !3997, file: !774, line: 183, type: !3922)
!4002 = !DILocalVariable(name: "command_name", arg: 2, scope: !3997, file: !774, line: 184, type: !151)
!4003 = !DILocalVariable(name: "package", arg: 3, scope: !3997, file: !774, line: 184, type: !151)
!4004 = !DILocalVariable(name: "version", arg: 4, scope: !3997, file: !774, line: 185, type: !151)
!4005 = !DILocalVariable(name: "authors", arg: 5, scope: !3997, file: !774, line: 185, type: !3956)
!4006 = !DILocalVariable(name: "n_authors", scope: !3997, file: !774, line: 187, type: !149)
!4007 = !DILocation(line: 0, scope: !3997)
!4008 = !DILocation(line: 189, column: 8, scope: !4009)
!4009 = distinct !DILexicalBlock(scope: !3997, file: !774, line: 189, column: 3)
!4010 = !DILocation(line: 189, scope: !4009)
!4011 = !DILocation(line: 189, column: 23, scope: !4012)
!4012 = distinct !DILexicalBlock(scope: !4009, file: !774, line: 189, column: 3)
!4013 = !DILocation(line: 189, column: 3, scope: !4009)
!4014 = !DILocation(line: 189, column: 52, scope: !4012)
!4015 = distinct !{!4015, !4013, !4016, !1104}
!4016 = !DILocation(line: 190, column: 5, scope: !4009)
!4017 = !DILocation(line: 191, column: 3, scope: !3997)
!4018 = !DILocation(line: 192, column: 1, scope: !3997)
!4019 = distinct !DISubprogram(name: "version_etc_va", scope: !774, file: !774, line: 199, type: !4020, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !904, retainedNodes: !4030)
!4020 = !DISubroutineType(types: !4021)
!4021 = !{null, !3922, !151, !151, !151, !4022}
!4022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4023, size: 64)
!4023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !4024)
!4024 = !{!4025, !4027, !4028, !4029}
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4023, file: !4026, line: 192, baseType: !98, size: 32)
!4026 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4023, file: !4026, line: 192, baseType: !98, size: 32, offset: 32)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4023, file: !4026, line: 192, baseType: !144, size: 64, offset: 64)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4023, file: !4026, line: 192, baseType: !144, size: 64, offset: 128)
!4030 = !{!4031, !4032, !4033, !4034, !4035, !4036, !4037}
!4031 = !DILocalVariable(name: "stream", arg: 1, scope: !4019, file: !774, line: 199, type: !3922)
!4032 = !DILocalVariable(name: "command_name", arg: 2, scope: !4019, file: !774, line: 200, type: !151)
!4033 = !DILocalVariable(name: "package", arg: 3, scope: !4019, file: !774, line: 200, type: !151)
!4034 = !DILocalVariable(name: "version", arg: 4, scope: !4019, file: !774, line: 201, type: !151)
!4035 = !DILocalVariable(name: "authors", arg: 5, scope: !4019, file: !774, line: 201, type: !4022)
!4036 = !DILocalVariable(name: "n_authors", scope: !4019, file: !774, line: 203, type: !149)
!4037 = !DILocalVariable(name: "authtab", scope: !4019, file: !774, line: 204, type: !4038)
!4038 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 640, elements: !178)
!4039 = !DILocation(line: 0, scope: !4019)
!4040 = !DILocation(line: 204, column: 3, scope: !4019)
!4041 = !DILocation(line: 204, column: 15, scope: !4019)
!4042 = !DILocation(line: 208, column: 35, scope: !4043)
!4043 = distinct !DILexicalBlock(scope: !4044, file: !774, line: 206, column: 3)
!4044 = distinct !DILexicalBlock(scope: !4019, file: !774, line: 206, column: 3)
!4045 = !DILocation(line: 208, column: 33, scope: !4043)
!4046 = !DILocation(line: 208, column: 67, scope: !4043)
!4047 = !DILocation(line: 206, column: 3, scope: !4044)
!4048 = !DILocation(line: 208, column: 14, scope: !4043)
!4049 = !DILocation(line: 0, scope: !4044)
!4050 = !DILocation(line: 211, column: 3, scope: !4019)
!4051 = !DILocation(line: 213, column: 1, scope: !4019)
!4052 = distinct !DISubprogram(name: "version_etc", scope: !774, file: !774, line: 230, type: !4053, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !904, retainedNodes: !4055)
!4053 = !DISubroutineType(types: !4054)
!4054 = !{null, !3922, !151, !151, !151, null}
!4055 = !{!4056, !4057, !4058, !4059, !4060}
!4056 = !DILocalVariable(name: "stream", arg: 1, scope: !4052, file: !774, line: 230, type: !3922)
!4057 = !DILocalVariable(name: "command_name", arg: 2, scope: !4052, file: !774, line: 231, type: !151)
!4058 = !DILocalVariable(name: "package", arg: 3, scope: !4052, file: !774, line: 231, type: !151)
!4059 = !DILocalVariable(name: "version", arg: 4, scope: !4052, file: !774, line: 232, type: !151)
!4060 = !DILocalVariable(name: "authors", scope: !4052, file: !774, line: 234, type: !4061)
!4061 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !516, line: 52, baseType: !4062)
!4062 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2199, line: 14, baseType: !4063)
!4063 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !4026, baseType: !4064)
!4064 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4023, size: 192, elements: !200)
!4065 = !DILocation(line: 0, scope: !4052)
!4066 = !DILocation(line: 234, column: 3, scope: !4052)
!4067 = !DILocation(line: 234, column: 11, scope: !4052)
!4068 = !DILocation(line: 235, column: 3, scope: !4052)
!4069 = !DILocation(line: 236, column: 3, scope: !4052)
!4070 = !DILocation(line: 237, column: 3, scope: !4052)
!4071 = !DILocation(line: 238, column: 1, scope: !4052)
!4072 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !774, file: !774, line: 241, type: !611, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !904, retainedNodes: !992)
!4073 = !DILocation(line: 243, column: 3, scope: !4072)
!4074 = !DILocation(line: 248, column: 3, scope: !4072)
!4075 = !DILocation(line: 254, column: 3, scope: !4072)
!4076 = !DILocation(line: 259, column: 3, scope: !4072)
!4077 = !DILocation(line: 261, column: 1, scope: !4072)
!4078 = distinct !DISubprogram(name: "xalignalloc", scope: !912, file: !912, line: 27, type: !4079, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !911, retainedNodes: !4081)
!4079 = !DISubroutineType(types: !4080)
!4080 = !{!144, !500, !500}
!4081 = !{!4082, !4083, !4084}
!4082 = !DILocalVariable(name: "alignment", arg: 1, scope: !4078, file: !912, line: 27, type: !500)
!4083 = !DILocalVariable(name: "size", arg: 2, scope: !4078, file: !912, line: 27, type: !500)
!4084 = !DILocalVariable(name: "p", scope: !4078, file: !912, line: 29, type: !144)
!4085 = !DILocation(line: 0, scope: !4078)
!4086 = !DILocalVariable(name: "alignment", arg: 1, scope: !4087, file: !1873, line: 90, type: !500)
!4087 = distinct !DISubprogram(name: "alignalloc", scope: !1873, file: !1873, line: 90, type: !4079, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !911, retainedNodes: !4088)
!4088 = !{!4086, !4089}
!4089 = !DILocalVariable(name: "size", arg: 2, scope: !4087, file: !1873, line: 90, type: !500)
!4090 = !DILocation(line: 0, scope: !4087, inlinedAt: !4091)
!4091 = distinct !DILocation(line: 29, column: 13, scope: !4078)
!4092 = !DILocation(line: 98, column: 10, scope: !4087, inlinedAt: !4091)
!4093 = !DILocation(line: 30, column: 8, scope: !4094)
!4094 = distinct !DILexicalBlock(scope: !4078, file: !912, line: 30, column: 7)
!4095 = !DILocation(line: 30, column: 7, scope: !4078)
!4096 = !DILocation(line: 31, column: 5, scope: !4094)
!4097 = !DILocation(line: 32, column: 3, scope: !4078)
!4098 = !DISubprogram(name: "aligned_alloc", scope: !1182, file: !1182, line: 592, type: !4099, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !992)
!4099 = !DISubroutineType(types: !4100)
!4100 = !{!144, !149, !149}
!4101 = distinct !DISubprogram(name: "xnrealloc", scope: !4102, file: !4102, line: 147, type: !4103, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !913, retainedNodes: !4105)
!4102 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!4103 = !DISubroutineType(types: !4104)
!4104 = !{!144, !144, !149, !149}
!4105 = !{!4106, !4107, !4108}
!4106 = !DILocalVariable(name: "p", arg: 1, scope: !4101, file: !4102, line: 147, type: !144)
!4107 = !DILocalVariable(name: "n", arg: 2, scope: !4101, file: !4102, line: 147, type: !149)
!4108 = !DILocalVariable(name: "s", arg: 3, scope: !4101, file: !4102, line: 147, type: !149)
!4109 = !DILocation(line: 0, scope: !4101)
!4110 = !DILocalVariable(name: "p", arg: 1, scope: !4111, file: !914, line: 83, type: !144)
!4111 = distinct !DISubprogram(name: "xreallocarray", scope: !914, file: !914, line: 83, type: !4103, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !913, retainedNodes: !4112)
!4112 = !{!4110, !4113, !4114}
!4113 = !DILocalVariable(name: "n", arg: 2, scope: !4111, file: !914, line: 83, type: !149)
!4114 = !DILocalVariable(name: "s", arg: 3, scope: !4111, file: !914, line: 83, type: !149)
!4115 = !DILocation(line: 0, scope: !4111, inlinedAt: !4116)
!4116 = distinct !DILocation(line: 149, column: 10, scope: !4101)
!4117 = !DILocation(line: 85, column: 25, scope: !4111, inlinedAt: !4116)
!4118 = !DILocalVariable(name: "p", arg: 1, scope: !4119, file: !914, line: 37, type: !144)
!4119 = distinct !DISubprogram(name: "check_nonnull", scope: !914, file: !914, line: 37, type: !4120, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !913, retainedNodes: !4122)
!4120 = !DISubroutineType(types: !4121)
!4121 = !{!144, !144}
!4122 = !{!4118}
!4123 = !DILocation(line: 0, scope: !4119, inlinedAt: !4124)
!4124 = distinct !DILocation(line: 85, column: 10, scope: !4111, inlinedAt: !4116)
!4125 = !DILocation(line: 39, column: 8, scope: !4126, inlinedAt: !4124)
!4126 = distinct !DILexicalBlock(scope: !4119, file: !914, line: 39, column: 7)
!4127 = !DILocation(line: 39, column: 7, scope: !4119, inlinedAt: !4124)
!4128 = !DILocation(line: 40, column: 5, scope: !4126, inlinedAt: !4124)
!4129 = !DILocation(line: 149, column: 3, scope: !4101)
!4130 = !DILocation(line: 0, scope: !4111)
!4131 = !DILocation(line: 85, column: 25, scope: !4111)
!4132 = !DILocation(line: 0, scope: !4119, inlinedAt: !4133)
!4133 = distinct !DILocation(line: 85, column: 10, scope: !4111)
!4134 = !DILocation(line: 39, column: 8, scope: !4126, inlinedAt: !4133)
!4135 = !DILocation(line: 39, column: 7, scope: !4119, inlinedAt: !4133)
!4136 = !DILocation(line: 40, column: 5, scope: !4126, inlinedAt: !4133)
!4137 = !DILocation(line: 85, column: 3, scope: !4111)
!4138 = distinct !DISubprogram(name: "xmalloc", scope: !914, file: !914, line: 47, type: !4139, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !913, retainedNodes: !4141)
!4139 = !DISubroutineType(types: !4140)
!4140 = !{!144, !149}
!4141 = !{!4142}
!4142 = !DILocalVariable(name: "s", arg: 1, scope: !4138, file: !914, line: 47, type: !149)
!4143 = !DILocation(line: 0, scope: !4138)
!4144 = !DILocation(line: 49, column: 25, scope: !4138)
!4145 = !DILocation(line: 0, scope: !4119, inlinedAt: !4146)
!4146 = distinct !DILocation(line: 49, column: 10, scope: !4138)
!4147 = !DILocation(line: 39, column: 8, scope: !4126, inlinedAt: !4146)
!4148 = !DILocation(line: 39, column: 7, scope: !4119, inlinedAt: !4146)
!4149 = !DILocation(line: 40, column: 5, scope: !4126, inlinedAt: !4146)
!4150 = !DILocation(line: 49, column: 3, scope: !4138)
!4151 = !DISubprogram(name: "malloc", scope: !1182, file: !1182, line: 540, type: !4139, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !992)
!4152 = distinct !DISubprogram(name: "ximalloc", scope: !914, file: !914, line: 53, type: !4153, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !913, retainedNodes: !4155)
!4153 = !DISubroutineType(types: !4154)
!4154 = !{!144, !500}
!4155 = !{!4156}
!4156 = !DILocalVariable(name: "s", arg: 1, scope: !4152, file: !914, line: 53, type: !500)
!4157 = !DILocation(line: 0, scope: !4152)
!4158 = !DILocalVariable(name: "s", arg: 1, scope: !4159, file: !4160, line: 55, type: !500)
!4159 = distinct !DISubprogram(name: "imalloc", scope: !4160, file: !4160, line: 55, type: !4153, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !913, retainedNodes: !4161)
!4160 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4161 = !{!4158}
!4162 = !DILocation(line: 0, scope: !4159, inlinedAt: !4163)
!4163 = distinct !DILocation(line: 55, column: 25, scope: !4152)
!4164 = !DILocation(line: 57, column: 26, scope: !4159, inlinedAt: !4163)
!4165 = !DILocation(line: 0, scope: !4119, inlinedAt: !4166)
!4166 = distinct !DILocation(line: 55, column: 10, scope: !4152)
!4167 = !DILocation(line: 39, column: 8, scope: !4126, inlinedAt: !4166)
!4168 = !DILocation(line: 39, column: 7, scope: !4119, inlinedAt: !4166)
!4169 = !DILocation(line: 40, column: 5, scope: !4126, inlinedAt: !4166)
!4170 = !DILocation(line: 55, column: 3, scope: !4152)
!4171 = distinct !DISubprogram(name: "xcharalloc", scope: !914, file: !914, line: 59, type: !4172, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !913, retainedNodes: !4174)
!4172 = !DISubroutineType(types: !4173)
!4173 = !{!88, !149}
!4174 = !{!4175}
!4175 = !DILocalVariable(name: "n", arg: 1, scope: !4171, file: !914, line: 59, type: !149)
!4176 = !DILocation(line: 0, scope: !4171)
!4177 = !DILocation(line: 0, scope: !4138, inlinedAt: !4178)
!4178 = distinct !DILocation(line: 61, column: 10, scope: !4171)
!4179 = !DILocation(line: 49, column: 25, scope: !4138, inlinedAt: !4178)
!4180 = !DILocation(line: 0, scope: !4119, inlinedAt: !4181)
!4181 = distinct !DILocation(line: 49, column: 10, scope: !4138, inlinedAt: !4178)
!4182 = !DILocation(line: 39, column: 8, scope: !4126, inlinedAt: !4181)
!4183 = !DILocation(line: 39, column: 7, scope: !4119, inlinedAt: !4181)
!4184 = !DILocation(line: 40, column: 5, scope: !4126, inlinedAt: !4181)
!4185 = !DILocation(line: 61, column: 3, scope: !4171)
!4186 = distinct !DISubprogram(name: "xrealloc", scope: !914, file: !914, line: 68, type: !4187, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !913, retainedNodes: !4189)
!4187 = !DISubroutineType(types: !4188)
!4188 = !{!144, !144, !149}
!4189 = !{!4190, !4191}
!4190 = !DILocalVariable(name: "p", arg: 1, scope: !4186, file: !914, line: 68, type: !144)
!4191 = !DILocalVariable(name: "s", arg: 2, scope: !4186, file: !914, line: 68, type: !149)
!4192 = !DILocation(line: 0, scope: !4186)
!4193 = !DILocalVariable(name: "ptr", arg: 1, scope: !4194, file: !4195, line: 2057, type: !144)
!4194 = distinct !DISubprogram(name: "rpl_realloc", scope: !4195, file: !4195, line: 2057, type: !4187, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !913, retainedNodes: !4196)
!4195 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4196 = !{!4193, !4197}
!4197 = !DILocalVariable(name: "size", arg: 2, scope: !4194, file: !4195, line: 2057, type: !149)
!4198 = !DILocation(line: 0, scope: !4194, inlinedAt: !4199)
!4199 = distinct !DILocation(line: 70, column: 25, scope: !4186)
!4200 = !DILocation(line: 2059, column: 24, scope: !4194, inlinedAt: !4199)
!4201 = !DILocation(line: 2059, column: 10, scope: !4194, inlinedAt: !4199)
!4202 = !DILocation(line: 0, scope: !4119, inlinedAt: !4203)
!4203 = distinct !DILocation(line: 70, column: 10, scope: !4186)
!4204 = !DILocation(line: 39, column: 8, scope: !4126, inlinedAt: !4203)
!4205 = !DILocation(line: 39, column: 7, scope: !4119, inlinedAt: !4203)
!4206 = !DILocation(line: 40, column: 5, scope: !4126, inlinedAt: !4203)
!4207 = !DILocation(line: 70, column: 3, scope: !4186)
!4208 = !DISubprogram(name: "realloc", scope: !1182, file: !1182, line: 551, type: !4187, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !992)
!4209 = distinct !DISubprogram(name: "xirealloc", scope: !914, file: !914, line: 74, type: !4210, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !913, retainedNodes: !4212)
!4210 = !DISubroutineType(types: !4211)
!4211 = !{!144, !144, !500}
!4212 = !{!4213, !4214}
!4213 = !DILocalVariable(name: "p", arg: 1, scope: !4209, file: !914, line: 74, type: !144)
!4214 = !DILocalVariable(name: "s", arg: 2, scope: !4209, file: !914, line: 74, type: !500)
!4215 = !DILocation(line: 0, scope: !4209)
!4216 = !DILocalVariable(name: "p", arg: 1, scope: !4217, file: !4160, line: 66, type: !144)
!4217 = distinct !DISubprogram(name: "irealloc", scope: !4160, file: !4160, line: 66, type: !4210, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !913, retainedNodes: !4218)
!4218 = !{!4216, !4219}
!4219 = !DILocalVariable(name: "s", arg: 2, scope: !4217, file: !4160, line: 66, type: !500)
!4220 = !DILocation(line: 0, scope: !4217, inlinedAt: !4221)
!4221 = distinct !DILocation(line: 76, column: 25, scope: !4209)
!4222 = !DILocation(line: 0, scope: !4194, inlinedAt: !4223)
!4223 = distinct !DILocation(line: 68, column: 26, scope: !4217, inlinedAt: !4221)
!4224 = !DILocation(line: 2059, column: 24, scope: !4194, inlinedAt: !4223)
!4225 = !DILocation(line: 2059, column: 10, scope: !4194, inlinedAt: !4223)
!4226 = !DILocation(line: 0, scope: !4119, inlinedAt: !4227)
!4227 = distinct !DILocation(line: 76, column: 10, scope: !4209)
!4228 = !DILocation(line: 39, column: 8, scope: !4126, inlinedAt: !4227)
!4229 = !DILocation(line: 39, column: 7, scope: !4119, inlinedAt: !4227)
!4230 = !DILocation(line: 40, column: 5, scope: !4126, inlinedAt: !4227)
!4231 = !DILocation(line: 76, column: 3, scope: !4209)
!4232 = distinct !DISubprogram(name: "xireallocarray", scope: !914, file: !914, line: 89, type: !4233, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !913, retainedNodes: !4235)
!4233 = !DISubroutineType(types: !4234)
!4234 = !{!144, !144, !500, !500}
!4235 = !{!4236, !4237, !4238}
!4236 = !DILocalVariable(name: "p", arg: 1, scope: !4232, file: !914, line: 89, type: !144)
!4237 = !DILocalVariable(name: "n", arg: 2, scope: !4232, file: !914, line: 89, type: !500)
!4238 = !DILocalVariable(name: "s", arg: 3, scope: !4232, file: !914, line: 89, type: !500)
!4239 = !DILocation(line: 0, scope: !4232)
!4240 = !DILocalVariable(name: "p", arg: 1, scope: !4241, file: !4160, line: 98, type: !144)
!4241 = distinct !DISubprogram(name: "ireallocarray", scope: !4160, file: !4160, line: 98, type: !4233, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !913, retainedNodes: !4242)
!4242 = !{!4240, !4243, !4244}
!4243 = !DILocalVariable(name: "n", arg: 2, scope: !4241, file: !4160, line: 98, type: !500)
!4244 = !DILocalVariable(name: "s", arg: 3, scope: !4241, file: !4160, line: 98, type: !500)
!4245 = !DILocation(line: 0, scope: !4241, inlinedAt: !4246)
!4246 = distinct !DILocation(line: 91, column: 25, scope: !4232)
!4247 = !DILocation(line: 101, column: 13, scope: !4241, inlinedAt: !4246)
!4248 = !DILocation(line: 0, scope: !4119, inlinedAt: !4249)
!4249 = distinct !DILocation(line: 91, column: 10, scope: !4232)
!4250 = !DILocation(line: 39, column: 8, scope: !4126, inlinedAt: !4249)
!4251 = !DILocation(line: 39, column: 7, scope: !4119, inlinedAt: !4249)
!4252 = !DILocation(line: 40, column: 5, scope: !4126, inlinedAt: !4249)
!4253 = !DILocation(line: 91, column: 3, scope: !4232)
!4254 = distinct !DISubprogram(name: "xnmalloc", scope: !914, file: !914, line: 98, type: !4099, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !913, retainedNodes: !4255)
!4255 = !{!4256, !4257}
!4256 = !DILocalVariable(name: "n", arg: 1, scope: !4254, file: !914, line: 98, type: !149)
!4257 = !DILocalVariable(name: "s", arg: 2, scope: !4254, file: !914, line: 98, type: !149)
!4258 = !DILocation(line: 0, scope: !4254)
!4259 = !DILocation(line: 0, scope: !4111, inlinedAt: !4260)
!4260 = distinct !DILocation(line: 100, column: 10, scope: !4254)
!4261 = !DILocation(line: 85, column: 25, scope: !4111, inlinedAt: !4260)
!4262 = !DILocation(line: 0, scope: !4119, inlinedAt: !4263)
!4263 = distinct !DILocation(line: 85, column: 10, scope: !4111, inlinedAt: !4260)
!4264 = !DILocation(line: 39, column: 8, scope: !4126, inlinedAt: !4263)
!4265 = !DILocation(line: 39, column: 7, scope: !4119, inlinedAt: !4263)
!4266 = !DILocation(line: 40, column: 5, scope: !4126, inlinedAt: !4263)
!4267 = !DILocation(line: 100, column: 3, scope: !4254)
!4268 = distinct !DISubprogram(name: "xinmalloc", scope: !914, file: !914, line: 104, type: !4079, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !913, retainedNodes: !4269)
!4269 = !{!4270, !4271}
!4270 = !DILocalVariable(name: "n", arg: 1, scope: !4268, file: !914, line: 104, type: !500)
!4271 = !DILocalVariable(name: "s", arg: 2, scope: !4268, file: !914, line: 104, type: !500)
!4272 = !DILocation(line: 0, scope: !4268)
!4273 = !DILocation(line: 0, scope: !4232, inlinedAt: !4274)
!4274 = distinct !DILocation(line: 106, column: 10, scope: !4268)
!4275 = !DILocation(line: 0, scope: !4241, inlinedAt: !4276)
!4276 = distinct !DILocation(line: 91, column: 25, scope: !4232, inlinedAt: !4274)
!4277 = !DILocation(line: 101, column: 13, scope: !4241, inlinedAt: !4276)
!4278 = !DILocation(line: 0, scope: !4119, inlinedAt: !4279)
!4279 = distinct !DILocation(line: 91, column: 10, scope: !4232, inlinedAt: !4274)
!4280 = !DILocation(line: 39, column: 8, scope: !4126, inlinedAt: !4279)
!4281 = !DILocation(line: 39, column: 7, scope: !4119, inlinedAt: !4279)
!4282 = !DILocation(line: 40, column: 5, scope: !4126, inlinedAt: !4279)
!4283 = !DILocation(line: 106, column: 3, scope: !4268)
!4284 = distinct !DISubprogram(name: "x2realloc", scope: !914, file: !914, line: 116, type: !4285, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !913, retainedNodes: !4287)
!4285 = !DISubroutineType(types: !4286)
!4286 = !{!144, !144, !920}
!4287 = !{!4288, !4289}
!4288 = !DILocalVariable(name: "p", arg: 1, scope: !4284, file: !914, line: 116, type: !144)
!4289 = !DILocalVariable(name: "ps", arg: 2, scope: !4284, file: !914, line: 116, type: !920)
!4290 = !DILocation(line: 0, scope: !4284)
!4291 = !DILocation(line: 0, scope: !917, inlinedAt: !4292)
!4292 = distinct !DILocation(line: 118, column: 10, scope: !4284)
!4293 = !DILocation(line: 178, column: 14, scope: !917, inlinedAt: !4292)
!4294 = !DILocation(line: 180, column: 9, scope: !4295, inlinedAt: !4292)
!4295 = distinct !DILexicalBlock(scope: !917, file: !914, line: 180, column: 7)
!4296 = !DILocation(line: 180, column: 7, scope: !917, inlinedAt: !4292)
!4297 = !DILocation(line: 182, column: 13, scope: !4298, inlinedAt: !4292)
!4298 = distinct !DILexicalBlock(scope: !4299, file: !914, line: 182, column: 11)
!4299 = distinct !DILexicalBlock(scope: !4295, file: !914, line: 181, column: 5)
!4300 = !DILocation(line: 182, column: 11, scope: !4299, inlinedAt: !4292)
!4301 = !DILocation(line: 197, column: 11, scope: !4302, inlinedAt: !4292)
!4302 = distinct !DILexicalBlock(scope: !4303, file: !914, line: 197, column: 11)
!4303 = distinct !DILexicalBlock(scope: !4295, file: !914, line: 195, column: 5)
!4304 = !DILocation(line: 197, column: 11, scope: !4303, inlinedAt: !4292)
!4305 = !DILocation(line: 198, column: 9, scope: !4302, inlinedAt: !4292)
!4306 = !DILocation(line: 0, scope: !4111, inlinedAt: !4307)
!4307 = distinct !DILocation(line: 201, column: 7, scope: !917, inlinedAt: !4292)
!4308 = !DILocation(line: 85, column: 25, scope: !4111, inlinedAt: !4307)
!4309 = !DILocation(line: 0, scope: !4119, inlinedAt: !4310)
!4310 = distinct !DILocation(line: 85, column: 10, scope: !4111, inlinedAt: !4307)
!4311 = !DILocation(line: 39, column: 8, scope: !4126, inlinedAt: !4310)
!4312 = !DILocation(line: 39, column: 7, scope: !4119, inlinedAt: !4310)
!4313 = !DILocation(line: 40, column: 5, scope: !4126, inlinedAt: !4310)
!4314 = !DILocation(line: 202, column: 7, scope: !917, inlinedAt: !4292)
!4315 = !DILocation(line: 118, column: 3, scope: !4284)
!4316 = !DILocation(line: 0, scope: !917)
!4317 = !DILocation(line: 178, column: 14, scope: !917)
!4318 = !DILocation(line: 180, column: 9, scope: !4295)
!4319 = !DILocation(line: 180, column: 7, scope: !917)
!4320 = !DILocation(line: 182, column: 13, scope: !4298)
!4321 = !DILocation(line: 182, column: 11, scope: !4299)
!4322 = !DILocation(line: 190, column: 30, scope: !4323)
!4323 = distinct !DILexicalBlock(scope: !4298, file: !914, line: 183, column: 9)
!4324 = !DILocation(line: 191, column: 16, scope: !4323)
!4325 = !DILocation(line: 191, column: 13, scope: !4323)
!4326 = !DILocation(line: 192, column: 9, scope: !4323)
!4327 = !DILocation(line: 197, column: 11, scope: !4302)
!4328 = !DILocation(line: 197, column: 11, scope: !4303)
!4329 = !DILocation(line: 198, column: 9, scope: !4302)
!4330 = !DILocation(line: 0, scope: !4111, inlinedAt: !4331)
!4331 = distinct !DILocation(line: 201, column: 7, scope: !917)
!4332 = !DILocation(line: 85, column: 25, scope: !4111, inlinedAt: !4331)
!4333 = !DILocation(line: 0, scope: !4119, inlinedAt: !4334)
!4334 = distinct !DILocation(line: 85, column: 10, scope: !4111, inlinedAt: !4331)
!4335 = !DILocation(line: 39, column: 8, scope: !4126, inlinedAt: !4334)
!4336 = !DILocation(line: 39, column: 7, scope: !4119, inlinedAt: !4334)
!4337 = !DILocation(line: 40, column: 5, scope: !4126, inlinedAt: !4334)
!4338 = !DILocation(line: 202, column: 7, scope: !917)
!4339 = !DILocation(line: 203, column: 3, scope: !917)
!4340 = !DILocation(line: 0, scope: !929)
!4341 = !DILocation(line: 230, column: 14, scope: !929)
!4342 = !DILocation(line: 238, column: 7, scope: !4343)
!4343 = distinct !DILexicalBlock(scope: !929, file: !914, line: 238, column: 7)
!4344 = !DILocation(line: 238, column: 7, scope: !929)
!4345 = !DILocation(line: 240, column: 9, scope: !4346)
!4346 = distinct !DILexicalBlock(scope: !929, file: !914, line: 240, column: 7)
!4347 = !DILocation(line: 240, column: 18, scope: !4346)
!4348 = !DILocation(line: 253, column: 8, scope: !929)
!4349 = !DILocation(line: 258, column: 27, scope: !4350)
!4350 = distinct !DILexicalBlock(scope: !4351, file: !914, line: 257, column: 5)
!4351 = distinct !DILexicalBlock(scope: !929, file: !914, line: 256, column: 7)
!4352 = !DILocation(line: 259, column: 50, scope: !4350)
!4353 = !DILocation(line: 259, column: 32, scope: !4350)
!4354 = !DILocation(line: 260, column: 5, scope: !4350)
!4355 = !DILocation(line: 262, column: 9, scope: !4356)
!4356 = distinct !DILexicalBlock(scope: !929, file: !914, line: 262, column: 7)
!4357 = !DILocation(line: 262, column: 7, scope: !929)
!4358 = !DILocation(line: 263, column: 9, scope: !4356)
!4359 = !DILocation(line: 263, column: 5, scope: !4356)
!4360 = !DILocation(line: 264, column: 9, scope: !4361)
!4361 = distinct !DILexicalBlock(scope: !929, file: !914, line: 264, column: 7)
!4362 = !DILocation(line: 264, column: 14, scope: !4361)
!4363 = !DILocation(line: 265, column: 7, scope: !4361)
!4364 = !DILocation(line: 265, column: 11, scope: !4361)
!4365 = !DILocation(line: 266, column: 11, scope: !4361)
!4366 = !DILocation(line: 267, column: 14, scope: !4361)
!4367 = !DILocation(line: 264, column: 7, scope: !929)
!4368 = !DILocation(line: 268, column: 5, scope: !4361)
!4369 = !DILocation(line: 0, scope: !4186, inlinedAt: !4370)
!4370 = distinct !DILocation(line: 269, column: 8, scope: !929)
!4371 = !DILocation(line: 0, scope: !4194, inlinedAt: !4372)
!4372 = distinct !DILocation(line: 70, column: 25, scope: !4186, inlinedAt: !4370)
!4373 = !DILocation(line: 2059, column: 24, scope: !4194, inlinedAt: !4372)
!4374 = !DILocation(line: 2059, column: 10, scope: !4194, inlinedAt: !4372)
!4375 = !DILocation(line: 0, scope: !4119, inlinedAt: !4376)
!4376 = distinct !DILocation(line: 70, column: 10, scope: !4186, inlinedAt: !4370)
!4377 = !DILocation(line: 39, column: 8, scope: !4126, inlinedAt: !4376)
!4378 = !DILocation(line: 39, column: 7, scope: !4119, inlinedAt: !4376)
!4379 = !DILocation(line: 40, column: 5, scope: !4126, inlinedAt: !4376)
!4380 = !DILocation(line: 270, column: 7, scope: !929)
!4381 = !DILocation(line: 271, column: 3, scope: !929)
!4382 = distinct !DISubprogram(name: "xzalloc", scope: !914, file: !914, line: 279, type: !4139, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !913, retainedNodes: !4383)
!4383 = !{!4384}
!4384 = !DILocalVariable(name: "s", arg: 1, scope: !4382, file: !914, line: 279, type: !149)
!4385 = !DILocation(line: 0, scope: !4382)
!4386 = !DILocalVariable(name: "n", arg: 1, scope: !4387, file: !914, line: 294, type: !149)
!4387 = distinct !DISubprogram(name: "xcalloc", scope: !914, file: !914, line: 294, type: !4099, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !913, retainedNodes: !4388)
!4388 = !{!4386, !4389}
!4389 = !DILocalVariable(name: "s", arg: 2, scope: !4387, file: !914, line: 294, type: !149)
!4390 = !DILocation(line: 0, scope: !4387, inlinedAt: !4391)
!4391 = distinct !DILocation(line: 281, column: 10, scope: !4382)
!4392 = !DILocation(line: 296, column: 25, scope: !4387, inlinedAt: !4391)
!4393 = !DILocation(line: 0, scope: !4119, inlinedAt: !4394)
!4394 = distinct !DILocation(line: 296, column: 10, scope: !4387, inlinedAt: !4391)
!4395 = !DILocation(line: 39, column: 8, scope: !4126, inlinedAt: !4394)
!4396 = !DILocation(line: 39, column: 7, scope: !4119, inlinedAt: !4394)
!4397 = !DILocation(line: 40, column: 5, scope: !4126, inlinedAt: !4394)
!4398 = !DILocation(line: 281, column: 3, scope: !4382)
!4399 = !DISubprogram(name: "calloc", scope: !1182, file: !1182, line: 543, type: !4099, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !992)
!4400 = !DILocation(line: 0, scope: !4387)
!4401 = !DILocation(line: 296, column: 25, scope: !4387)
!4402 = !DILocation(line: 0, scope: !4119, inlinedAt: !4403)
!4403 = distinct !DILocation(line: 296, column: 10, scope: !4387)
!4404 = !DILocation(line: 39, column: 8, scope: !4126, inlinedAt: !4403)
!4405 = !DILocation(line: 39, column: 7, scope: !4119, inlinedAt: !4403)
!4406 = !DILocation(line: 40, column: 5, scope: !4126, inlinedAt: !4403)
!4407 = !DILocation(line: 296, column: 3, scope: !4387)
!4408 = distinct !DISubprogram(name: "xizalloc", scope: !914, file: !914, line: 285, type: !4153, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !913, retainedNodes: !4409)
!4409 = !{!4410}
!4410 = !DILocalVariable(name: "s", arg: 1, scope: !4408, file: !914, line: 285, type: !500)
!4411 = !DILocation(line: 0, scope: !4408)
!4412 = !DILocalVariable(name: "n", arg: 1, scope: !4413, file: !914, line: 300, type: !500)
!4413 = distinct !DISubprogram(name: "xicalloc", scope: !914, file: !914, line: 300, type: !4079, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !913, retainedNodes: !4414)
!4414 = !{!4412, !4415}
!4415 = !DILocalVariable(name: "s", arg: 2, scope: !4413, file: !914, line: 300, type: !500)
!4416 = !DILocation(line: 0, scope: !4413, inlinedAt: !4417)
!4417 = distinct !DILocation(line: 287, column: 10, scope: !4408)
!4418 = !DILocalVariable(name: "n", arg: 1, scope: !4419, file: !4160, line: 77, type: !500)
!4419 = distinct !DISubprogram(name: "icalloc", scope: !4160, file: !4160, line: 77, type: !4079, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !913, retainedNodes: !4420)
!4420 = !{!4418, !4421}
!4421 = !DILocalVariable(name: "s", arg: 2, scope: !4419, file: !4160, line: 77, type: !500)
!4422 = !DILocation(line: 0, scope: !4419, inlinedAt: !4423)
!4423 = distinct !DILocation(line: 302, column: 25, scope: !4413, inlinedAt: !4417)
!4424 = !DILocation(line: 91, column: 10, scope: !4419, inlinedAt: !4423)
!4425 = !DILocation(line: 0, scope: !4119, inlinedAt: !4426)
!4426 = distinct !DILocation(line: 302, column: 10, scope: !4413, inlinedAt: !4417)
!4427 = !DILocation(line: 39, column: 8, scope: !4126, inlinedAt: !4426)
!4428 = !DILocation(line: 39, column: 7, scope: !4119, inlinedAt: !4426)
!4429 = !DILocation(line: 40, column: 5, scope: !4126, inlinedAt: !4426)
!4430 = !DILocation(line: 287, column: 3, scope: !4408)
!4431 = !DILocation(line: 0, scope: !4413)
!4432 = !DILocation(line: 0, scope: !4419, inlinedAt: !4433)
!4433 = distinct !DILocation(line: 302, column: 25, scope: !4413)
!4434 = !DILocation(line: 91, column: 10, scope: !4419, inlinedAt: !4433)
!4435 = !DILocation(line: 0, scope: !4119, inlinedAt: !4436)
!4436 = distinct !DILocation(line: 302, column: 10, scope: !4413)
!4437 = !DILocation(line: 39, column: 8, scope: !4126, inlinedAt: !4436)
!4438 = !DILocation(line: 39, column: 7, scope: !4119, inlinedAt: !4436)
!4439 = !DILocation(line: 40, column: 5, scope: !4126, inlinedAt: !4436)
!4440 = !DILocation(line: 302, column: 3, scope: !4413)
!4441 = distinct !DISubprogram(name: "xmemdup", scope: !914, file: !914, line: 310, type: !4442, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !913, retainedNodes: !4444)
!4442 = !DISubroutineType(types: !4443)
!4443 = !{!144, !1206, !149}
!4444 = !{!4445, !4446}
!4445 = !DILocalVariable(name: "p", arg: 1, scope: !4441, file: !914, line: 310, type: !1206)
!4446 = !DILocalVariable(name: "s", arg: 2, scope: !4441, file: !914, line: 310, type: !149)
!4447 = !DILocation(line: 0, scope: !4441)
!4448 = !DILocation(line: 0, scope: !4138, inlinedAt: !4449)
!4449 = distinct !DILocation(line: 312, column: 18, scope: !4441)
!4450 = !DILocation(line: 49, column: 25, scope: !4138, inlinedAt: !4449)
!4451 = !DILocation(line: 0, scope: !4119, inlinedAt: !4452)
!4452 = distinct !DILocation(line: 49, column: 10, scope: !4138, inlinedAt: !4449)
!4453 = !DILocation(line: 39, column: 8, scope: !4126, inlinedAt: !4452)
!4454 = !DILocation(line: 39, column: 7, scope: !4119, inlinedAt: !4452)
!4455 = !DILocation(line: 40, column: 5, scope: !4126, inlinedAt: !4452)
!4456 = !DILocalVariable(name: "__dest", arg: 1, scope: !4457, file: !1535, line: 26, type: !4460)
!4457 = distinct !DISubprogram(name: "memcpy", scope: !1535, file: !1535, line: 26, type: !4458, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !913, retainedNodes: !4461)
!4458 = !DISubroutineType(types: !4459)
!4459 = !{!144, !4460, !1205, !149}
!4460 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !144)
!4461 = !{!4456, !4462, !4463}
!4462 = !DILocalVariable(name: "__src", arg: 2, scope: !4457, file: !1535, line: 26, type: !1205)
!4463 = !DILocalVariable(name: "__len", arg: 3, scope: !4457, file: !1535, line: 26, type: !149)
!4464 = !DILocation(line: 0, scope: !4457, inlinedAt: !4465)
!4465 = distinct !DILocation(line: 312, column: 10, scope: !4441)
!4466 = !DILocation(line: 29, column: 10, scope: !4457, inlinedAt: !4465)
!4467 = !DILocation(line: 312, column: 3, scope: !4441)
!4468 = distinct !DISubprogram(name: "ximemdup", scope: !914, file: !914, line: 316, type: !4469, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !913, retainedNodes: !4471)
!4469 = !DISubroutineType(types: !4470)
!4470 = !{!144, !1206, !500}
!4471 = !{!4472, !4473}
!4472 = !DILocalVariable(name: "p", arg: 1, scope: !4468, file: !914, line: 316, type: !1206)
!4473 = !DILocalVariable(name: "s", arg: 2, scope: !4468, file: !914, line: 316, type: !500)
!4474 = !DILocation(line: 0, scope: !4468)
!4475 = !DILocation(line: 0, scope: !4152, inlinedAt: !4476)
!4476 = distinct !DILocation(line: 318, column: 18, scope: !4468)
!4477 = !DILocation(line: 0, scope: !4159, inlinedAt: !4478)
!4478 = distinct !DILocation(line: 55, column: 25, scope: !4152, inlinedAt: !4476)
!4479 = !DILocation(line: 57, column: 26, scope: !4159, inlinedAt: !4478)
!4480 = !DILocation(line: 0, scope: !4119, inlinedAt: !4481)
!4481 = distinct !DILocation(line: 55, column: 10, scope: !4152, inlinedAt: !4476)
!4482 = !DILocation(line: 39, column: 8, scope: !4126, inlinedAt: !4481)
!4483 = !DILocation(line: 39, column: 7, scope: !4119, inlinedAt: !4481)
!4484 = !DILocation(line: 40, column: 5, scope: !4126, inlinedAt: !4481)
!4485 = !DILocation(line: 0, scope: !4457, inlinedAt: !4486)
!4486 = distinct !DILocation(line: 318, column: 10, scope: !4468)
!4487 = !DILocation(line: 29, column: 10, scope: !4457, inlinedAt: !4486)
!4488 = !DILocation(line: 318, column: 3, scope: !4468)
!4489 = distinct !DISubprogram(name: "ximemdup0", scope: !914, file: !914, line: 325, type: !4490, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !913, retainedNodes: !4492)
!4490 = !DISubroutineType(types: !4491)
!4491 = !{!88, !1206, !500}
!4492 = !{!4493, !4494, !4495}
!4493 = !DILocalVariable(name: "p", arg: 1, scope: !4489, file: !914, line: 325, type: !1206)
!4494 = !DILocalVariable(name: "s", arg: 2, scope: !4489, file: !914, line: 325, type: !500)
!4495 = !DILocalVariable(name: "result", scope: !4489, file: !914, line: 327, type: !88)
!4496 = !DILocation(line: 0, scope: !4489)
!4497 = !DILocation(line: 327, column: 30, scope: !4489)
!4498 = !DILocation(line: 0, scope: !4152, inlinedAt: !4499)
!4499 = distinct !DILocation(line: 327, column: 18, scope: !4489)
!4500 = !DILocation(line: 0, scope: !4159, inlinedAt: !4501)
!4501 = distinct !DILocation(line: 55, column: 25, scope: !4152, inlinedAt: !4499)
!4502 = !DILocation(line: 57, column: 26, scope: !4159, inlinedAt: !4501)
!4503 = !DILocation(line: 0, scope: !4119, inlinedAt: !4504)
!4504 = distinct !DILocation(line: 55, column: 10, scope: !4152, inlinedAt: !4499)
!4505 = !DILocation(line: 39, column: 8, scope: !4126, inlinedAt: !4504)
!4506 = !DILocation(line: 39, column: 7, scope: !4119, inlinedAt: !4504)
!4507 = !DILocation(line: 40, column: 5, scope: !4126, inlinedAt: !4504)
!4508 = !DILocation(line: 328, column: 3, scope: !4489)
!4509 = !DILocation(line: 328, column: 13, scope: !4489)
!4510 = !DILocation(line: 0, scope: !4457, inlinedAt: !4511)
!4511 = distinct !DILocation(line: 329, column: 10, scope: !4489)
!4512 = !DILocation(line: 29, column: 10, scope: !4457, inlinedAt: !4511)
!4513 = !DILocation(line: 329, column: 3, scope: !4489)
!4514 = distinct !DISubprogram(name: "xstrdup", scope: !914, file: !914, line: 335, type: !1184, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !913, retainedNodes: !4515)
!4515 = !{!4516}
!4516 = !DILocalVariable(name: "string", arg: 1, scope: !4514, file: !914, line: 335, type: !151)
!4517 = !DILocation(line: 0, scope: !4514)
!4518 = !DILocation(line: 337, column: 27, scope: !4514)
!4519 = !DILocation(line: 337, column: 43, scope: !4514)
!4520 = !DILocation(line: 0, scope: !4441, inlinedAt: !4521)
!4521 = distinct !DILocation(line: 337, column: 10, scope: !4514)
!4522 = !DILocation(line: 0, scope: !4138, inlinedAt: !4523)
!4523 = distinct !DILocation(line: 312, column: 18, scope: !4441, inlinedAt: !4521)
!4524 = !DILocation(line: 49, column: 25, scope: !4138, inlinedAt: !4523)
!4525 = !DILocation(line: 0, scope: !4119, inlinedAt: !4526)
!4526 = distinct !DILocation(line: 49, column: 10, scope: !4138, inlinedAt: !4523)
!4527 = !DILocation(line: 39, column: 8, scope: !4126, inlinedAt: !4526)
!4528 = !DILocation(line: 39, column: 7, scope: !4119, inlinedAt: !4526)
!4529 = !DILocation(line: 40, column: 5, scope: !4126, inlinedAt: !4526)
!4530 = !DILocation(line: 0, scope: !4457, inlinedAt: !4531)
!4531 = distinct !DILocation(line: 312, column: 10, scope: !4441, inlinedAt: !4521)
!4532 = !DILocation(line: 29, column: 10, scope: !4457, inlinedAt: !4531)
!4533 = !DILocation(line: 337, column: 3, scope: !4514)
!4534 = distinct !DISubprogram(name: "xalloc_die", scope: !862, file: !862, line: 32, type: !611, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !944, retainedNodes: !4535)
!4535 = !{!4536}
!4536 = !DILocalVariable(name: "__errstatus", scope: !4537, file: !862, line: 34, type: !4538)
!4537 = distinct !DILexicalBlock(scope: !4534, file: !862, line: 34, column: 3)
!4538 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !86)
!4539 = !DILocation(line: 34, column: 3, scope: !4537)
!4540 = !DILocation(line: 0, scope: !4537)
!4541 = !DILocation(line: 40, column: 3, scope: !4534)
!4542 = distinct !DISubprogram(name: "close_stream", scope: !947, file: !947, line: 55, type: !4543, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !946, retainedNodes: !4579)
!4543 = !DISubroutineType(types: !4544)
!4544 = !{!86, !4545}
!4545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4546, size: 64)
!4546 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !290, line: 7, baseType: !4547)
!4547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !292, line: 49, size: 1728, elements: !4548)
!4548 = !{!4549, !4550, !4551, !4552, !4553, !4554, !4555, !4556, !4557, !4558, !4559, !4560, !4561, !4562, !4564, !4565, !4566, !4567, !4568, !4569, !4570, !4571, !4572, !4573, !4574, !4575, !4576, !4577, !4578}
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4547, file: !292, line: 51, baseType: !86, size: 32)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4547, file: !292, line: 54, baseType: !88, size: 64, offset: 64)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4547, file: !292, line: 55, baseType: !88, size: 64, offset: 128)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4547, file: !292, line: 56, baseType: !88, size: 64, offset: 192)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4547, file: !292, line: 57, baseType: !88, size: 64, offset: 256)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4547, file: !292, line: 58, baseType: !88, size: 64, offset: 320)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4547, file: !292, line: 59, baseType: !88, size: 64, offset: 384)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4547, file: !292, line: 60, baseType: !88, size: 64, offset: 448)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4547, file: !292, line: 61, baseType: !88, size: 64, offset: 512)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4547, file: !292, line: 64, baseType: !88, size: 64, offset: 576)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4547, file: !292, line: 65, baseType: !88, size: 64, offset: 640)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4547, file: !292, line: 66, baseType: !88, size: 64, offset: 704)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4547, file: !292, line: 68, baseType: !307, size: 64, offset: 768)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4547, file: !292, line: 70, baseType: !4563, size: 64, offset: 832)
!4563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4547, size: 64)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4547, file: !292, line: 72, baseType: !86, size: 32, offset: 896)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4547, file: !292, line: 73, baseType: !86, size: 32, offset: 928)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4547, file: !292, line: 74, baseType: !314, size: 64, offset: 960)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4547, file: !292, line: 77, baseType: !148, size: 16, offset: 1024)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4547, file: !292, line: 78, baseType: !318, size: 8, offset: 1040)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4547, file: !292, line: 79, baseType: !199, size: 8, offset: 1048)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4547, file: !292, line: 81, baseType: !321, size: 64, offset: 1088)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4547, file: !292, line: 89, baseType: !324, size: 64, offset: 1152)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4547, file: !292, line: 91, baseType: !326, size: 64, offset: 1216)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4547, file: !292, line: 92, baseType: !329, size: 64, offset: 1280)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4547, file: !292, line: 93, baseType: !4563, size: 64, offset: 1344)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4547, file: !292, line: 94, baseType: !144, size: 64, offset: 1408)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4547, file: !292, line: 95, baseType: !149, size: 64, offset: 1472)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4547, file: !292, line: 96, baseType: !86, size: 32, offset: 1536)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4547, file: !292, line: 98, baseType: !228, size: 160, offset: 1568)
!4579 = !{!4580, !4581, !4583, !4584}
!4580 = !DILocalVariable(name: "stream", arg: 1, scope: !4542, file: !947, line: 55, type: !4545)
!4581 = !DILocalVariable(name: "some_pending", scope: !4542, file: !947, line: 57, type: !4582)
!4582 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !145)
!4583 = !DILocalVariable(name: "prev_fail", scope: !4542, file: !947, line: 58, type: !4582)
!4584 = !DILocalVariable(name: "fclose_fail", scope: !4542, file: !947, line: 59, type: !4582)
!4585 = !DILocation(line: 0, scope: !4542)
!4586 = !DILocation(line: 57, column: 30, scope: !4542)
!4587 = !DILocalVariable(name: "__stream", arg: 1, scope: !4588, file: !2159, line: 135, type: !4545)
!4588 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2159, file: !2159, line: 135, type: !4543, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !946, retainedNodes: !4589)
!4589 = !{!4587}
!4590 = !DILocation(line: 0, scope: !4588, inlinedAt: !4591)
!4591 = distinct !DILocation(line: 58, column: 27, scope: !4542)
!4592 = !DILocation(line: 137, column: 10, scope: !4588, inlinedAt: !4591)
!4593 = !{!2168, !1058, i64 0}
!4594 = !DILocation(line: 58, column: 43, scope: !4542)
!4595 = !DILocation(line: 59, column: 29, scope: !4542)
!4596 = !DILocation(line: 59, column: 45, scope: !4542)
!4597 = !DILocation(line: 69, column: 17, scope: !4598)
!4598 = distinct !DILexicalBlock(scope: !4542, file: !947, line: 69, column: 7)
!4599 = !DILocation(line: 57, column: 50, scope: !4542)
!4600 = !DILocation(line: 69, column: 33, scope: !4598)
!4601 = !DILocation(line: 69, column: 53, scope: !4598)
!4602 = !DILocation(line: 69, column: 59, scope: !4598)
!4603 = !DILocation(line: 69, column: 7, scope: !4542)
!4604 = !DILocation(line: 71, column: 11, scope: !4605)
!4605 = distinct !DILexicalBlock(scope: !4598, file: !947, line: 70, column: 5)
!4606 = !DILocation(line: 72, column: 9, scope: !4607)
!4607 = distinct !DILexicalBlock(scope: !4605, file: !947, line: 71, column: 11)
!4608 = !DILocation(line: 72, column: 15, scope: !4607)
!4609 = !DILocation(line: 77, column: 1, scope: !4542)
!4610 = !DISubprogram(name: "__fpending", scope: !2469, file: !2469, line: 75, type: !4611, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !992)
!4611 = !DISubroutineType(types: !4612)
!4612 = !{!149, !4545}
!4613 = distinct !DISubprogram(name: "rpl_fclose", scope: !949, file: !949, line: 58, type: !4614, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !948, retainedNodes: !4650)
!4614 = !DISubroutineType(types: !4615)
!4615 = !{!86, !4616}
!4616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4617, size: 64)
!4617 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !290, line: 7, baseType: !4618)
!4618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !292, line: 49, size: 1728, elements: !4619)
!4619 = !{!4620, !4621, !4622, !4623, !4624, !4625, !4626, !4627, !4628, !4629, !4630, !4631, !4632, !4633, !4635, !4636, !4637, !4638, !4639, !4640, !4641, !4642, !4643, !4644, !4645, !4646, !4647, !4648, !4649}
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4618, file: !292, line: 51, baseType: !86, size: 32)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4618, file: !292, line: 54, baseType: !88, size: 64, offset: 64)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4618, file: !292, line: 55, baseType: !88, size: 64, offset: 128)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4618, file: !292, line: 56, baseType: !88, size: 64, offset: 192)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4618, file: !292, line: 57, baseType: !88, size: 64, offset: 256)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4618, file: !292, line: 58, baseType: !88, size: 64, offset: 320)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4618, file: !292, line: 59, baseType: !88, size: 64, offset: 384)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4618, file: !292, line: 60, baseType: !88, size: 64, offset: 448)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4618, file: !292, line: 61, baseType: !88, size: 64, offset: 512)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4618, file: !292, line: 64, baseType: !88, size: 64, offset: 576)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4618, file: !292, line: 65, baseType: !88, size: 64, offset: 640)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4618, file: !292, line: 66, baseType: !88, size: 64, offset: 704)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4618, file: !292, line: 68, baseType: !307, size: 64, offset: 768)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4618, file: !292, line: 70, baseType: !4634, size: 64, offset: 832)
!4634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4618, size: 64)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4618, file: !292, line: 72, baseType: !86, size: 32, offset: 896)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4618, file: !292, line: 73, baseType: !86, size: 32, offset: 928)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4618, file: !292, line: 74, baseType: !314, size: 64, offset: 960)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4618, file: !292, line: 77, baseType: !148, size: 16, offset: 1024)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4618, file: !292, line: 78, baseType: !318, size: 8, offset: 1040)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4618, file: !292, line: 79, baseType: !199, size: 8, offset: 1048)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4618, file: !292, line: 81, baseType: !321, size: 64, offset: 1088)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4618, file: !292, line: 89, baseType: !324, size: 64, offset: 1152)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4618, file: !292, line: 91, baseType: !326, size: 64, offset: 1216)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4618, file: !292, line: 92, baseType: !329, size: 64, offset: 1280)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4618, file: !292, line: 93, baseType: !4634, size: 64, offset: 1344)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4618, file: !292, line: 94, baseType: !144, size: 64, offset: 1408)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4618, file: !292, line: 95, baseType: !149, size: 64, offset: 1472)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4618, file: !292, line: 96, baseType: !86, size: 32, offset: 1536)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4618, file: !292, line: 98, baseType: !228, size: 160, offset: 1568)
!4650 = !{!4651, !4652, !4653, !4654}
!4651 = !DILocalVariable(name: "fp", arg: 1, scope: !4613, file: !949, line: 58, type: !4616)
!4652 = !DILocalVariable(name: "saved_errno", scope: !4613, file: !949, line: 60, type: !86)
!4653 = !DILocalVariable(name: "fd", scope: !4613, file: !949, line: 63, type: !86)
!4654 = !DILocalVariable(name: "result", scope: !4613, file: !949, line: 74, type: !86)
!4655 = !DILocation(line: 0, scope: !4613)
!4656 = !DILocation(line: 63, column: 12, scope: !4613)
!4657 = !DILocation(line: 64, column: 10, scope: !4658)
!4658 = distinct !DILexicalBlock(scope: !4613, file: !949, line: 64, column: 7)
!4659 = !DILocation(line: 64, column: 7, scope: !4613)
!4660 = !DILocation(line: 65, column: 12, scope: !4658)
!4661 = !DILocation(line: 65, column: 5, scope: !4658)
!4662 = !DILocation(line: 70, column: 9, scope: !4663)
!4663 = distinct !DILexicalBlock(scope: !4613, file: !949, line: 70, column: 7)
!4664 = !DILocation(line: 70, column: 23, scope: !4663)
!4665 = !DILocation(line: 70, column: 33, scope: !4663)
!4666 = !DILocation(line: 70, column: 26, scope: !4663)
!4667 = !DILocation(line: 70, column: 59, scope: !4663)
!4668 = !DILocation(line: 71, column: 7, scope: !4663)
!4669 = !DILocation(line: 71, column: 10, scope: !4663)
!4670 = !DILocation(line: 70, column: 7, scope: !4613)
!4671 = !DILocation(line: 100, column: 12, scope: !4613)
!4672 = !DILocation(line: 105, column: 7, scope: !4613)
!4673 = !DILocation(line: 72, column: 19, scope: !4663)
!4674 = !DILocation(line: 105, column: 19, scope: !4675)
!4675 = distinct !DILexicalBlock(scope: !4613, file: !949, line: 105, column: 7)
!4676 = !DILocation(line: 107, column: 13, scope: !4677)
!4677 = distinct !DILexicalBlock(scope: !4675, file: !949, line: 106, column: 5)
!4678 = !DILocation(line: 109, column: 5, scope: !4677)
!4679 = !DILocation(line: 112, column: 1, scope: !4613)
!4680 = !DISubprogram(name: "fclose", scope: !516, file: !516, line: 178, type: !4614, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !992)
!4681 = !DISubprogram(name: "__freading", scope: !2469, file: !2469, line: 51, type: !4614, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !992)
!4682 = distinct !DISubprogram(name: "rpl_fflush", scope: !951, file: !951, line: 130, type: !4683, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !950, retainedNodes: !4719)
!4683 = !DISubroutineType(types: !4684)
!4684 = !{!86, !4685}
!4685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4686, size: 64)
!4686 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !290, line: 7, baseType: !4687)
!4687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !292, line: 49, size: 1728, elements: !4688)
!4688 = !{!4689, !4690, !4691, !4692, !4693, !4694, !4695, !4696, !4697, !4698, !4699, !4700, !4701, !4702, !4704, !4705, !4706, !4707, !4708, !4709, !4710, !4711, !4712, !4713, !4714, !4715, !4716, !4717, !4718}
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4687, file: !292, line: 51, baseType: !86, size: 32)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4687, file: !292, line: 54, baseType: !88, size: 64, offset: 64)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4687, file: !292, line: 55, baseType: !88, size: 64, offset: 128)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4687, file: !292, line: 56, baseType: !88, size: 64, offset: 192)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4687, file: !292, line: 57, baseType: !88, size: 64, offset: 256)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4687, file: !292, line: 58, baseType: !88, size: 64, offset: 320)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4687, file: !292, line: 59, baseType: !88, size: 64, offset: 384)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4687, file: !292, line: 60, baseType: !88, size: 64, offset: 448)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4687, file: !292, line: 61, baseType: !88, size: 64, offset: 512)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4687, file: !292, line: 64, baseType: !88, size: 64, offset: 576)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4687, file: !292, line: 65, baseType: !88, size: 64, offset: 640)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4687, file: !292, line: 66, baseType: !88, size: 64, offset: 704)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4687, file: !292, line: 68, baseType: !307, size: 64, offset: 768)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4687, file: !292, line: 70, baseType: !4703, size: 64, offset: 832)
!4703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4687, size: 64)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4687, file: !292, line: 72, baseType: !86, size: 32, offset: 896)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4687, file: !292, line: 73, baseType: !86, size: 32, offset: 928)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4687, file: !292, line: 74, baseType: !314, size: 64, offset: 960)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4687, file: !292, line: 77, baseType: !148, size: 16, offset: 1024)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4687, file: !292, line: 78, baseType: !318, size: 8, offset: 1040)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4687, file: !292, line: 79, baseType: !199, size: 8, offset: 1048)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4687, file: !292, line: 81, baseType: !321, size: 64, offset: 1088)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4687, file: !292, line: 89, baseType: !324, size: 64, offset: 1152)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4687, file: !292, line: 91, baseType: !326, size: 64, offset: 1216)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4687, file: !292, line: 92, baseType: !329, size: 64, offset: 1280)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4687, file: !292, line: 93, baseType: !4703, size: 64, offset: 1344)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4687, file: !292, line: 94, baseType: !144, size: 64, offset: 1408)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4687, file: !292, line: 95, baseType: !149, size: 64, offset: 1472)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4687, file: !292, line: 96, baseType: !86, size: 32, offset: 1536)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4687, file: !292, line: 98, baseType: !228, size: 160, offset: 1568)
!4719 = !{!4720}
!4720 = !DILocalVariable(name: "stream", arg: 1, scope: !4682, file: !951, line: 130, type: !4685)
!4721 = !DILocation(line: 0, scope: !4682)
!4722 = !DILocation(line: 151, column: 14, scope: !4723)
!4723 = distinct !DILexicalBlock(scope: !4682, file: !951, line: 151, column: 7)
!4724 = !DILocation(line: 151, column: 22, scope: !4723)
!4725 = !DILocation(line: 151, column: 27, scope: !4723)
!4726 = !DILocation(line: 151, column: 7, scope: !4682)
!4727 = !DILocation(line: 152, column: 12, scope: !4723)
!4728 = !DILocation(line: 152, column: 5, scope: !4723)
!4729 = !DILocalVariable(name: "fp", arg: 1, scope: !4730, file: !951, line: 42, type: !4685)
!4730 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !951, file: !951, line: 42, type: !4731, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !950, retainedNodes: !4733)
!4731 = !DISubroutineType(types: !4732)
!4732 = !{null, !4685}
!4733 = !{!4729}
!4734 = !DILocation(line: 0, scope: !4730, inlinedAt: !4735)
!4735 = distinct !DILocation(line: 157, column: 3, scope: !4682)
!4736 = !DILocation(line: 44, column: 12, scope: !4737, inlinedAt: !4735)
!4737 = distinct !DILexicalBlock(scope: !4730, file: !951, line: 44, column: 7)
!4738 = !DILocation(line: 44, column: 19, scope: !4737, inlinedAt: !4735)
!4739 = !DILocation(line: 44, column: 7, scope: !4730, inlinedAt: !4735)
!4740 = !DILocation(line: 46, column: 5, scope: !4737, inlinedAt: !4735)
!4741 = !DILocation(line: 159, column: 10, scope: !4682)
!4742 = !DILocation(line: 159, column: 3, scope: !4682)
!4743 = !DILocation(line: 236, column: 1, scope: !4682)
!4744 = !DISubprogram(name: "fflush", scope: !516, file: !516, line: 230, type: !4683, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !992)
!4745 = distinct !DISubprogram(name: "rpl_fseeko", scope: !953, file: !953, line: 28, type: !4746, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !952, retainedNodes: !4782)
!4746 = !DISubroutineType(types: !4747)
!4747 = !{!86, !4748, !515, !86}
!4748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4749, size: 64)
!4749 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !290, line: 7, baseType: !4750)
!4750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !292, line: 49, size: 1728, elements: !4751)
!4751 = !{!4752, !4753, !4754, !4755, !4756, !4757, !4758, !4759, !4760, !4761, !4762, !4763, !4764, !4765, !4767, !4768, !4769, !4770, !4771, !4772, !4773, !4774, !4775, !4776, !4777, !4778, !4779, !4780, !4781}
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4750, file: !292, line: 51, baseType: !86, size: 32)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4750, file: !292, line: 54, baseType: !88, size: 64, offset: 64)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4750, file: !292, line: 55, baseType: !88, size: 64, offset: 128)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4750, file: !292, line: 56, baseType: !88, size: 64, offset: 192)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4750, file: !292, line: 57, baseType: !88, size: 64, offset: 256)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4750, file: !292, line: 58, baseType: !88, size: 64, offset: 320)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4750, file: !292, line: 59, baseType: !88, size: 64, offset: 384)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4750, file: !292, line: 60, baseType: !88, size: 64, offset: 448)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4750, file: !292, line: 61, baseType: !88, size: 64, offset: 512)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4750, file: !292, line: 64, baseType: !88, size: 64, offset: 576)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4750, file: !292, line: 65, baseType: !88, size: 64, offset: 640)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4750, file: !292, line: 66, baseType: !88, size: 64, offset: 704)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4750, file: !292, line: 68, baseType: !307, size: 64, offset: 768)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4750, file: !292, line: 70, baseType: !4766, size: 64, offset: 832)
!4766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4750, size: 64)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4750, file: !292, line: 72, baseType: !86, size: 32, offset: 896)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4750, file: !292, line: 73, baseType: !86, size: 32, offset: 928)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4750, file: !292, line: 74, baseType: !314, size: 64, offset: 960)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4750, file: !292, line: 77, baseType: !148, size: 16, offset: 1024)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4750, file: !292, line: 78, baseType: !318, size: 8, offset: 1040)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4750, file: !292, line: 79, baseType: !199, size: 8, offset: 1048)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4750, file: !292, line: 81, baseType: !321, size: 64, offset: 1088)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4750, file: !292, line: 89, baseType: !324, size: 64, offset: 1152)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4750, file: !292, line: 91, baseType: !326, size: 64, offset: 1216)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4750, file: !292, line: 92, baseType: !329, size: 64, offset: 1280)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4750, file: !292, line: 93, baseType: !4766, size: 64, offset: 1344)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4750, file: !292, line: 94, baseType: !144, size: 64, offset: 1408)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4750, file: !292, line: 95, baseType: !149, size: 64, offset: 1472)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4750, file: !292, line: 96, baseType: !86, size: 32, offset: 1536)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4750, file: !292, line: 98, baseType: !228, size: 160, offset: 1568)
!4782 = !{!4783, !4784, !4785, !4786}
!4783 = !DILocalVariable(name: "fp", arg: 1, scope: !4745, file: !953, line: 28, type: !4748)
!4784 = !DILocalVariable(name: "offset", arg: 2, scope: !4745, file: !953, line: 28, type: !515)
!4785 = !DILocalVariable(name: "whence", arg: 3, scope: !4745, file: !953, line: 28, type: !86)
!4786 = !DILocalVariable(name: "pos", scope: !4787, file: !953, line: 123, type: !515)
!4787 = distinct !DILexicalBlock(scope: !4788, file: !953, line: 119, column: 5)
!4788 = distinct !DILexicalBlock(scope: !4745, file: !953, line: 55, column: 7)
!4789 = !DILocation(line: 0, scope: !4745)
!4790 = !DILocation(line: 55, column: 12, scope: !4788)
!4791 = !{!2168, !984, i64 16}
!4792 = !DILocation(line: 55, column: 33, scope: !4788)
!4793 = !{!2168, !984, i64 8}
!4794 = !DILocation(line: 55, column: 25, scope: !4788)
!4795 = !DILocation(line: 56, column: 7, scope: !4788)
!4796 = !DILocation(line: 56, column: 15, scope: !4788)
!4797 = !DILocation(line: 56, column: 37, scope: !4788)
!4798 = !{!2168, !984, i64 32}
!4799 = !DILocation(line: 56, column: 29, scope: !4788)
!4800 = !DILocation(line: 57, column: 7, scope: !4788)
!4801 = !DILocation(line: 57, column: 15, scope: !4788)
!4802 = !{!2168, !984, i64 72}
!4803 = !DILocation(line: 57, column: 29, scope: !4788)
!4804 = !DILocation(line: 55, column: 7, scope: !4745)
!4805 = !DILocation(line: 123, column: 26, scope: !4787)
!4806 = !DILocation(line: 123, column: 19, scope: !4787)
!4807 = !DILocation(line: 0, scope: !4787)
!4808 = !DILocation(line: 124, column: 15, scope: !4809)
!4809 = distinct !DILexicalBlock(scope: !4787, file: !953, line: 124, column: 11)
!4810 = !DILocation(line: 124, column: 11, scope: !4787)
!4811 = !DILocation(line: 135, column: 19, scope: !4787)
!4812 = !DILocation(line: 136, column: 12, scope: !4787)
!4813 = !DILocation(line: 136, column: 20, scope: !4787)
!4814 = !{!2168, !1265, i64 144}
!4815 = !DILocation(line: 167, column: 7, scope: !4787)
!4816 = !DILocation(line: 169, column: 10, scope: !4745)
!4817 = !DILocation(line: 169, column: 3, scope: !4745)
!4818 = !DILocation(line: 170, column: 1, scope: !4745)
!4819 = !DISubprogram(name: "fseeko", scope: !516, file: !516, line: 736, type: !4820, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !992)
!4820 = !DISubroutineType(types: !4821)
!4821 = !{!86, !4748, !314, !86}
!4822 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !869, file: !869, line: 100, type: !4823, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !872, retainedNodes: !4826)
!4823 = !DISubroutineType(types: !4824)
!4824 = !{!149, !2577, !151, !149, !4825}
!4825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!4826 = !{!4827, !4828, !4829, !4830, !4831}
!4827 = !DILocalVariable(name: "pwc", arg: 1, scope: !4822, file: !869, line: 100, type: !2577)
!4828 = !DILocalVariable(name: "s", arg: 2, scope: !4822, file: !869, line: 100, type: !151)
!4829 = !DILocalVariable(name: "n", arg: 3, scope: !4822, file: !869, line: 100, type: !149)
!4830 = !DILocalVariable(name: "ps", arg: 4, scope: !4822, file: !869, line: 100, type: !4825)
!4831 = !DILocalVariable(name: "ret", scope: !4822, file: !869, line: 130, type: !149)
!4832 = !DILocation(line: 0, scope: !4822)
!4833 = !DILocation(line: 105, column: 9, scope: !4834)
!4834 = distinct !DILexicalBlock(scope: !4822, file: !869, line: 105, column: 7)
!4835 = !DILocation(line: 105, column: 7, scope: !4822)
!4836 = !DILocation(line: 117, column: 10, scope: !4837)
!4837 = distinct !DILexicalBlock(scope: !4822, file: !869, line: 117, column: 7)
!4838 = !DILocation(line: 117, column: 7, scope: !4822)
!4839 = !DILocation(line: 130, column: 16, scope: !4822)
!4840 = !DILocation(line: 135, column: 11, scope: !4841)
!4841 = distinct !DILexicalBlock(scope: !4822, file: !869, line: 135, column: 7)
!4842 = !DILocation(line: 135, column: 25, scope: !4841)
!4843 = !DILocation(line: 135, column: 30, scope: !4841)
!4844 = !DILocation(line: 135, column: 7, scope: !4822)
!4845 = !DILocalVariable(name: "ps", arg: 1, scope: !4846, file: !2551, line: 1135, type: !4825)
!4846 = distinct !DISubprogram(name: "mbszero", scope: !2551, file: !2551, line: 1135, type: !4847, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !872, retainedNodes: !4849)
!4847 = !DISubroutineType(types: !4848)
!4848 = !{null, !4825}
!4849 = !{!4845}
!4850 = !DILocation(line: 0, scope: !4846, inlinedAt: !4851)
!4851 = distinct !DILocation(line: 137, column: 5, scope: !4841)
!4852 = !DILocalVariable(name: "__dest", arg: 1, scope: !4853, file: !1535, line: 57, type: !144)
!4853 = distinct !DISubprogram(name: "memset", scope: !1535, file: !1535, line: 57, type: !2560, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !872, retainedNodes: !4854)
!4854 = !{!4852, !4855, !4856}
!4855 = !DILocalVariable(name: "__ch", arg: 2, scope: !4853, file: !1535, line: 57, type: !86)
!4856 = !DILocalVariable(name: "__len", arg: 3, scope: !4853, file: !1535, line: 57, type: !149)
!4857 = !DILocation(line: 0, scope: !4853, inlinedAt: !4858)
!4858 = distinct !DILocation(line: 1137, column: 3, scope: !4846, inlinedAt: !4851)
!4859 = !DILocation(line: 59, column: 10, scope: !4853, inlinedAt: !4858)
!4860 = !DILocation(line: 137, column: 5, scope: !4841)
!4861 = !DILocation(line: 138, column: 11, scope: !4862)
!4862 = distinct !DILexicalBlock(scope: !4822, file: !869, line: 138, column: 7)
!4863 = !DILocation(line: 138, column: 7, scope: !4822)
!4864 = !DILocation(line: 139, column: 5, scope: !4862)
!4865 = !DILocation(line: 143, column: 26, scope: !4866)
!4866 = distinct !DILexicalBlock(scope: !4822, file: !869, line: 143, column: 7)
!4867 = !DILocation(line: 143, column: 41, scope: !4866)
!4868 = !DILocation(line: 143, column: 7, scope: !4822)
!4869 = !DILocation(line: 145, column: 15, scope: !4870)
!4870 = distinct !DILexicalBlock(scope: !4871, file: !869, line: 145, column: 11)
!4871 = distinct !DILexicalBlock(scope: !4866, file: !869, line: 144, column: 5)
!4872 = !DILocation(line: 145, column: 11, scope: !4871)
!4873 = !DILocation(line: 146, column: 32, scope: !4870)
!4874 = !DILocation(line: 146, column: 16, scope: !4870)
!4875 = !DILocation(line: 146, column: 14, scope: !4870)
!4876 = !DILocation(line: 146, column: 9, scope: !4870)
!4877 = !DILocation(line: 286, column: 1, scope: !4822)
!4878 = !DISubprogram(name: "mbsinit", scope: !4879, file: !4879, line: 293, type: !4880, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !992)
!4879 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4880 = !DISubroutineType(types: !4881)
!4881 = !{!86, !4882}
!4882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4883, size: 64)
!4883 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !875)
!4884 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !955, file: !955, line: 27, type: !4103, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !954, retainedNodes: !4885)
!4885 = !{!4886, !4887, !4888, !4889}
!4886 = !DILocalVariable(name: "ptr", arg: 1, scope: !4884, file: !955, line: 27, type: !144)
!4887 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4884, file: !955, line: 27, type: !149)
!4888 = !DILocalVariable(name: "size", arg: 3, scope: !4884, file: !955, line: 27, type: !149)
!4889 = !DILocalVariable(name: "nbytes", scope: !4884, file: !955, line: 29, type: !149)
!4890 = !DILocation(line: 0, scope: !4884)
!4891 = !DILocation(line: 30, column: 7, scope: !4892)
!4892 = distinct !DILexicalBlock(scope: !4884, file: !955, line: 30, column: 7)
!4893 = !DILocalVariable(name: "ptr", arg: 1, scope: !4894, file: !4195, line: 2057, type: !144)
!4894 = distinct !DISubprogram(name: "rpl_realloc", scope: !4195, file: !4195, line: 2057, type: !4187, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !954, retainedNodes: !4895)
!4895 = !{!4893, !4896}
!4896 = !DILocalVariable(name: "size", arg: 2, scope: !4894, file: !4195, line: 2057, type: !149)
!4897 = !DILocation(line: 0, scope: !4894, inlinedAt: !4898)
!4898 = distinct !DILocation(line: 37, column: 10, scope: !4884)
!4899 = !DILocation(line: 2059, column: 24, scope: !4894, inlinedAt: !4898)
!4900 = !DILocation(line: 2059, column: 10, scope: !4894, inlinedAt: !4898)
!4901 = !DILocation(line: 37, column: 3, scope: !4884)
!4902 = !DILocation(line: 32, column: 7, scope: !4903)
!4903 = distinct !DILexicalBlock(scope: !4892, file: !955, line: 31, column: 5)
!4904 = !DILocation(line: 32, column: 13, scope: !4903)
!4905 = !DILocation(line: 33, column: 7, scope: !4903)
!4906 = !DILocation(line: 38, column: 1, scope: !4884)
!4907 = distinct !DISubprogram(name: "hard_locale", scope: !887, file: !887, line: 28, type: !4908, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !957, retainedNodes: !4910)
!4908 = !DISubroutineType(types: !4909)
!4909 = !{!145, !86}
!4910 = !{!4911, !4912}
!4911 = !DILocalVariable(name: "category", arg: 1, scope: !4907, file: !887, line: 28, type: !86)
!4912 = !DILocalVariable(name: "locale", scope: !4907, file: !887, line: 30, type: !4913)
!4913 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4914)
!4914 = !{!4915}
!4915 = !DISubrange(count: 257)
!4916 = !DILocation(line: 0, scope: !4907)
!4917 = !DILocation(line: 30, column: 3, scope: !4907)
!4918 = !DILocation(line: 30, column: 8, scope: !4907)
!4919 = !DILocation(line: 32, column: 7, scope: !4920)
!4920 = distinct !DILexicalBlock(scope: !4907, file: !887, line: 32, column: 7)
!4921 = !DILocation(line: 32, column: 7, scope: !4907)
!4922 = !DILocalVariable(name: "__s1", arg: 1, scope: !4923, file: !1070, line: 1359, type: !151)
!4923 = distinct !DISubprogram(name: "streq", scope: !1070, file: !1070, line: 1359, type: !1071, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !957, retainedNodes: !4924)
!4924 = !{!4922, !4925}
!4925 = !DILocalVariable(name: "__s2", arg: 2, scope: !4923, file: !1070, line: 1359, type: !151)
!4926 = !DILocation(line: 0, scope: !4923, inlinedAt: !4927)
!4927 = distinct !DILocation(line: 35, column: 9, scope: !4928)
!4928 = distinct !DILexicalBlock(scope: !4907, file: !887, line: 35, column: 7)
!4929 = !DILocation(line: 1361, column: 11, scope: !4923, inlinedAt: !4927)
!4930 = !DILocation(line: 35, column: 29, scope: !4928)
!4931 = !DILocation(line: 0, scope: !4923, inlinedAt: !4932)
!4932 = distinct !DILocation(line: 35, column: 32, scope: !4928)
!4933 = !DILocation(line: 1361, column: 11, scope: !4923, inlinedAt: !4932)
!4934 = !DILocation(line: 1361, column: 10, scope: !4923, inlinedAt: !4932)
!4935 = !DILocation(line: 35, column: 7, scope: !4907)
!4936 = !DILocation(line: 46, column: 3, scope: !4907)
!4937 = !DILocation(line: 47, column: 1, scope: !4907)
!4938 = distinct !DISubprogram(name: "setlocale_null_r", scope: !962, file: !962, line: 154, type: !4939, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !4941)
!4939 = !DISubroutineType(types: !4940)
!4940 = !{!86, !86, !88, !149}
!4941 = !{!4942, !4943, !4944}
!4942 = !DILocalVariable(name: "category", arg: 1, scope: !4938, file: !962, line: 154, type: !86)
!4943 = !DILocalVariable(name: "buf", arg: 2, scope: !4938, file: !962, line: 154, type: !88)
!4944 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4938, file: !962, line: 154, type: !149)
!4945 = !DILocation(line: 0, scope: !4938)
!4946 = !DILocation(line: 159, column: 10, scope: !4938)
!4947 = !DILocation(line: 159, column: 3, scope: !4938)
!4948 = distinct !DISubprogram(name: "setlocale_null", scope: !962, file: !962, line: 186, type: !4949, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !4951)
!4949 = !DISubroutineType(types: !4950)
!4950 = !{!151, !86}
!4951 = !{!4952}
!4952 = !DILocalVariable(name: "category", arg: 1, scope: !4948, file: !962, line: 186, type: !86)
!4953 = !DILocation(line: 0, scope: !4948)
!4954 = !DILocation(line: 189, column: 10, scope: !4948)
!4955 = !DILocation(line: 189, column: 3, scope: !4948)
!4956 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !964, file: !964, line: 35, type: !4949, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !963, retainedNodes: !4957)
!4957 = !{!4958, !4959}
!4958 = !DILocalVariable(name: "category", arg: 1, scope: !4956, file: !964, line: 35, type: !86)
!4959 = !DILocalVariable(name: "result", scope: !4956, file: !964, line: 37, type: !151)
!4960 = !DILocation(line: 0, scope: !4956)
!4961 = !DILocation(line: 37, column: 24, scope: !4956)
!4962 = !DILocation(line: 62, column: 3, scope: !4956)
!4963 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !964, file: !964, line: 66, type: !4939, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !963, retainedNodes: !4964)
!4964 = !{!4965, !4966, !4967, !4968, !4969}
!4965 = !DILocalVariable(name: "category", arg: 1, scope: !4963, file: !964, line: 66, type: !86)
!4966 = !DILocalVariable(name: "buf", arg: 2, scope: !4963, file: !964, line: 66, type: !88)
!4967 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4963, file: !964, line: 66, type: !149)
!4968 = !DILocalVariable(name: "result", scope: !4963, file: !964, line: 111, type: !151)
!4969 = !DILocalVariable(name: "length", scope: !4970, file: !964, line: 125, type: !149)
!4970 = distinct !DILexicalBlock(scope: !4971, file: !964, line: 124, column: 5)
!4971 = distinct !DILexicalBlock(scope: !4963, file: !964, line: 113, column: 7)
!4972 = !DILocation(line: 0, scope: !4963)
!4973 = !DILocation(line: 0, scope: !4956, inlinedAt: !4974)
!4974 = distinct !DILocation(line: 111, column: 24, scope: !4963)
!4975 = !DILocation(line: 37, column: 24, scope: !4956, inlinedAt: !4974)
!4976 = !DILocation(line: 113, column: 14, scope: !4971)
!4977 = !DILocation(line: 113, column: 7, scope: !4963)
!4978 = !DILocation(line: 116, column: 19, scope: !4979)
!4979 = distinct !DILexicalBlock(scope: !4980, file: !964, line: 116, column: 11)
!4980 = distinct !DILexicalBlock(scope: !4971, file: !964, line: 114, column: 5)
!4981 = !DILocation(line: 116, column: 11, scope: !4980)
!4982 = !DILocation(line: 120, column: 16, scope: !4979)
!4983 = !DILocation(line: 120, column: 9, scope: !4979)
!4984 = !DILocation(line: 125, column: 23, scope: !4970)
!4985 = !DILocation(line: 0, scope: !4970)
!4986 = !DILocation(line: 126, column: 18, scope: !4987)
!4987 = distinct !DILexicalBlock(scope: !4970, file: !964, line: 126, column: 11)
!4988 = !DILocation(line: 126, column: 11, scope: !4970)
!4989 = !DILocation(line: 128, column: 39, scope: !4990)
!4990 = distinct !DILexicalBlock(scope: !4987, file: !964, line: 127, column: 9)
!4991 = !DILocalVariable(name: "__dest", arg: 1, scope: !4992, file: !1535, line: 26, type: !4460)
!4992 = distinct !DISubprogram(name: "memcpy", scope: !1535, file: !1535, line: 26, type: !4458, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !963, retainedNodes: !4993)
!4993 = !{!4991, !4994, !4995}
!4994 = !DILocalVariable(name: "__src", arg: 2, scope: !4992, file: !1535, line: 26, type: !1205)
!4995 = !DILocalVariable(name: "__len", arg: 3, scope: !4992, file: !1535, line: 26, type: !149)
!4996 = !DILocation(line: 0, scope: !4992, inlinedAt: !4997)
!4997 = distinct !DILocation(line: 128, column: 11, scope: !4990)
!4998 = !DILocation(line: 29, column: 10, scope: !4992, inlinedAt: !4997)
!4999 = !DILocation(line: 129, column: 11, scope: !4990)
!5000 = !DILocation(line: 133, column: 23, scope: !5001)
!5001 = distinct !DILexicalBlock(scope: !5002, file: !964, line: 133, column: 15)
!5002 = distinct !DILexicalBlock(scope: !4987, file: !964, line: 132, column: 9)
!5003 = !DILocation(line: 133, column: 15, scope: !5002)
!5004 = !DILocation(line: 138, column: 44, scope: !5005)
!5005 = distinct !DILexicalBlock(scope: !5001, file: !964, line: 134, column: 13)
!5006 = !DILocation(line: 0, scope: !4992, inlinedAt: !5007)
!5007 = distinct !DILocation(line: 138, column: 15, scope: !5005)
!5008 = !DILocation(line: 29, column: 10, scope: !4992, inlinedAt: !5007)
!5009 = !DILocation(line: 139, column: 15, scope: !5005)
!5010 = !DILocation(line: 139, column: 32, scope: !5005)
!5011 = !DILocation(line: 140, column: 13, scope: !5005)
!5012 = !DILocation(line: 0, scope: !4971)
!5013 = !DILocation(line: 145, column: 1, scope: !4963)
